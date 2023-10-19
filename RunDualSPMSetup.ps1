if (-not (Test-Path 'repos')) {
    Write-Output "repos directory missing -- please run install script"
    exit
}

function RunInNewTab($command) {
    Start-Process -FilePath 'powershell.exe' -ArgumentList "-NoExit","-Command & {$command}"
}

RunInNewTab {
    . .\repos\spm-venv\Scripts\Activate.ps1
    Set-Location -Path 'repos/solvent_dispenser_ui'
    python main.py 5000
}

RunInNewTab {
    . .\repos\spm-venv\Scripts\Activate.ps1
    Set-Location -Path 'repos/solvent_dispenser_ui'
    python main.py 5003
}

RunInNewTab {
    . .\repos\spm-venv\Scripts\Activate.ps1
    Set-Location -Path 'repos/xy-python'
    python app.py
}