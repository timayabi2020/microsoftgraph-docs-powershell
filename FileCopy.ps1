# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
Param(
    $ModulesToGenerate = @(),
    [string] $ModuleMappingConfigPath = ("C:\Projects\msgraph-sdk-powershell\config\ModulesMapping.jsonc"),
	[string] $SDKDocsPath = ("C:\Projects\msgraph-sdk-powershell\src"),
	[string] $WorkLoadDocsPath = ("C:\Projects\microsoftgraph-docs-powershell\microsoftgraph")
)
function Get-GraphMapping {
    $graphMapping = @{}
    $graphMapping.Add("v1.0", "v1.0")
    $graphMapping.Add("v1.0-beta", "v1.0-beta")
    return $graphMapping
}

function Start-Copy {
    Param(
        $ModulesToGenerate = @()
    )

    $ModulePrefix = "Microsoft.Graph"
    $GraphMapping = Get-GraphMapping 
    $GraphMapping.Keys | ForEach-Object {
        $graphProfile = $_
		$profilePath = "graph-powershell-1.0"
		if($graphProfile -eq "v1.0-beta"){
			$profilePath = "graph-powershell-beta"
		}
        Get-FilesByProfile -GraphProfile $graphProfile -GraphProfilePath $profilePath -ModulePrefix $ModulePrefix -ModulesToGenerate $ModulesToGenerate 
    }
}
function Get-FilesByProfile{
 Param(
        [ValidateSet("v1.0-beta", "v1.0")]
        [string] $GraphProfile = "v1.0",
        [ValidateNotNullOrEmpty()]
        [string] $GraphProfilePath = "graph-powershell-1.0",
        [ValidateNotNullOrEmpty()]
        [string] $ModulePrefix = "Microsoft.Graph",
        [ValidateNotNullOrEmpty()]
        $ModulesToGenerate = @()
    )

    $ModulesToGenerate | ForEach-Object {
        $ModuleName = $_
		$docs = Join-Path $SDKDocsPath $ModuleName $ModuleName "docs" $GraphProfile
        Copy-Files -DocPath $docs -GraphProfilePath $GraphProfilePath -Module $ModuleName -ModulePrefix $ModulePrefix
    }

}
function Copy-Files{
    param(
        [ValidateSet("v1.0-beta", "v1.0")]
        [string] $GraphProfile = "v1.0",
        [ValidateNotNullOrEmpty()]
        [string] $GraphProfilePath = "graph-powershell-1.0",
        [ValidateNotNullOrEmpty()]
        [string] $Module = "Users",
        [ValidateNotNullOrEmpty()]
        [string] $ModulePrefix = "Microsoft.Graph",
		[ValidateNotNullOrEmpty()]
        [string] $DocPath = "C:\Projects\msgraph-sdk-powershell\src\Users\Users\docs\v1.0"
    )
	$moduleImportName = "$ModulePrefix.$ModuleName"
     $destination = Join-Path $WorkLoadDocsPath $GraphProfilePath $moduleImportName
	 $source = Join-Path $DocPath "\*"
	
	if ((Test-Path $DocPath)) {
		 Write-Host -ForegroundColor DarkYellow "Copying markdown files to " $destination
		Copy-Item $source -Destination $destination
	}
      
}


if (-not (Test-Path $ModuleMappingConfigPath)) {
    Write-Error "Module mapping file not be found: $ModuleMappingConfigPath."
}
if ($ModulesToGenerate.Count -eq 0) {
    [HashTable] $ModuleMapping = Get-Content $ModuleMappingConfigPath | ConvertFrom-Json -AsHashTable
    $ModulesToGenerate = $ModuleMapping.Keys
}
Start-Copy -ModulesToGenerate $ModulesToGenerate
Write-Host -ForegroundColor Green "-------------Done-------------"