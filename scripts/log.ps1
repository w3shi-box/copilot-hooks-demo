# MUST read stdin (CRITICAL)
$inputData = [Console]::In.ReadToEnd()

# Ensure logs dir exists
if (!(Test-Path "logs")) {
    New-Item -ItemType Directory -Path "logs" | Out-Null
}

# Parse JSON safely
try {
    $json = $inputData | ConvertFrom-Json
    $prompt = $json.prompt
} catch {
    $prompt = "FAILED_TO_PARSE"
}

# Write log
Add-Content logs\test.log "HOOK TRIGGERED"
Add-Content logs\test.log "Prompt: $prompt"
Add-Content logs\test.log "Time: $(Get-Date)"
Add-Content logs\test.log "------"
