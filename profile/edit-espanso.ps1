function edit-espanso {
    <#
    .SYNOPSIS
    Opens the Espanso websites package configuration file in VS Code.
    #>
    
    # Define the dynamic path to the file
    $espansoPath = Join-Path -Path $env:APPDATA -ChildPath "espanso\match\packages\websites\package.yml"

    # Define the editor
    $espansoEditor = "code"

    # Check if the file actually exists before trying to open it
    if (Test-Path -Path $espansoPath) {
        Write-Host "Opening Espanso websites config..." -ForegroundColor Cyan
        
        # Open the file (using & to execute the command)
        & $espansoEditor $espansoPath
    }
    else {
        Write-Warning "File not found at: $espansoPath"
        Write-Warning "Please check that Espanso is installed and the 'websites' package exists."
    }
}
