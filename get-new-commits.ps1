param(
  [string]$RepositoryPath,
  [string]$TargetDate,
  [string]$InternalPath
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

VerifyPathExistence $RepositoryPath


$CompletePath = "$RepositoryPath/$InternalPath"
Write-Output "$CompletePath"

VerifyPathExistence $CompletePath

Set-Location -Path $RepositoryPath

# gc de git command
# $gcLogs = 'git log --since="2024-11-19" --name-only --pretty=format:"" -- book/'
# $listLogs = Invoke-Expression $gcLogs # No se recomienda usar Invoke-Expression


#ga de git arguments
$gaLogs = @('log', "--since=$TargetDate", '--name-only', '--pretty=format:""', "$path/")


$logs = git $gaLogs

$filteredLogs = $logs | Where-Object { $_ -ne "" -and $_ -ne '""'} | Sort-Object -Unique

Write-Host "Archivos modificados desde $TargetDate en $CompletePath :" -ForegroundColor Green
$filteredLogs

# Devuelve al directorio original
Set-Location $PSScriptRoot
