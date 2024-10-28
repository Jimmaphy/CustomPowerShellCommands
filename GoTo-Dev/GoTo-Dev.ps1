### Title:          GoTo-Dev [SubFolder]
### Description:    GoTo-Dev allows you to navigate to the development folder.
###                 When the SubFolder parameter is specified, that folder will be opened.
### Author:         Jimmaphy
### Version:        1.0 (2024-10-28)


param([string]$SubFolder)

# Define the base path and valid subfolders
# If provided, check whether the specified subfolder is valid
$basePath = "D:\"
$validSubFolders = @("Archive", "External", "Resources", "Source", "Temporary");
$selectedFolder = $validSubFolders 
    | Where-Object { $_ -ieq $SubFolder }
    | Select-Object -First 1

# If no subfolder is specified, navigate to the base path
# If the specified subfolder is valid, go there
# If not, display an error message and navigate to the base path
if ($SubFolder -eq $null -or $SubFolder.Length -eq 0) {
    Set-Location -Path $basePath
} elseif ($null -ne $selectedFolder) {
    Set-Location -Path "$basePath$selectedFolder\"
} else {
    Set-Location -Path $basePath
    Write-Error "Invalid SubFolder. Valid SubFolders: $($validSubFolders -join ', ')"
    Write-Information "Navigated to the base path instead"
}