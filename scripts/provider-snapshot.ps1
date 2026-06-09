$skillRoot = "C:\Users\jv921\.codex\skills\coding-provider-usage-monitor"
$scriptPath = Join-Path $skillRoot "scripts\provider_snapshot.py"

if (-not (Test-Path $scriptPath)) {
  Write-Error "Skill script not found: $scriptPath"
  exit 1
}

python $scriptPath @args
