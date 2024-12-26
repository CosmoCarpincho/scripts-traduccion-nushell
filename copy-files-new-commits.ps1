<#
.PARAMETER RepositoryPath
  Ruta del repositorio de Git.

.PARAMETER TargetDate
  Fecha objetivo para filtrar los registros de Git.

.PARAMETER InternalPath
  Ruta interna dentro del repositorio para filtrar los archivos.

.EXAMPLE
  \get-new-commits.ps1 '.\repo\' -InternalPath 'book' -TargetDate '2024-11-19' -DestiantionFolder '.\folder'
#>
param(
  [Parameter(Mandatory=$true)]
  [ValidateNotNullOrEmpty()]
  [string]
  $RepositoryPath,

  [Parameter(Mandatory=$true)]
  [ValidateNotNullOrEmpty()]
  [string]
  $TargetDate,

  [Parameter(Mandatory=$true)]
  [ValidateNotNullOrEmpty()]
  [string]
  $InternalPath,

  [Parameter(Mandatory=$true)]
  [ValidateNotNullOrEmpty()]
  [string]
  $DestiantionFolder
)


function VerifyPathExistence {
  param(
    $Path
  )
  if (-not (Test-Path $Path)) {
    Write-Host "La ruta no existe: $Path" -ForegroundColor Red
    exit 1
  }
}

VerifyPathExistence($RepositoryPath)
VerifyPathExistence($DestiantionFolder)

$completePath = Join-Path -Path $RepositoryPath -ChildPath $InternalPath
VerifyPathExistence $completePath

Write-Output "$completePath"


Set-Location -Path $RepositoryPath

Write-Host $InternalPath

#ga de git ar"guments
$gaLogs = @('log', "--since=$TargetDate", '--name-only', '--pretty=format:""')

$logs = git $gaLogs -- $InternalPath

$filteredLogs = $logs | Where-Object { $_ -ne "" -and $_ -ne '""'} | Sort-Object -Unique

Write-Host "Archivos modificados desde $TargetDate en $completePath :" -ForegroundColor Green
$filteredLogs


Write-Host "$RepositoryPath => $DestiantionFolder"
foreach( $file in $filteredLogs ){
  $pathRepository = Join-Path -Path $RepositoryPath -ChildPath $file
  $pathDestination = Join-Path -Path $DestiantionFolder -ChildPath $file

  Write-Host "$pathRepository => $DestiantionFolder"
  Copy-Item $pathRepository -Destination $pathDestination -Force
}

# Devuelve al directorio original
Set-Location $PSScriptRoot
