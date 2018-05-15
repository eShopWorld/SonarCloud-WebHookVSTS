#
# ServiceFabricUpdaterTests.ps1
#

Import-Module ..\ps_modules\VstsTaskSdk

$input_SonarCloudWebHookAPI = "http://40.68.212.247:8420/api/hook"
$input_TimeoutInSeconds = "100"
$input_BuildNumber = "93ddf827-fa03-48aa-9a0d-8fa53da51bca"

Invoke-VstsTaskScript -ScriptBlock { . ..\SonarCloudQualityGate\SonarCloudQualityGateKeeper.ps1 }