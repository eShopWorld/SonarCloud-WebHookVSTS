# VSTS wrapper for quality gate 

This repository contains project artefacts for SonarCloud driven Quality Gate VSTS custom task.

This extension is already being published on the marketplace - https://marketplace.visualstudio.com/items?itemName=eshopworld.SonarCloudQualityGate

For backend documentation and typical build set up, see https://github.com/eShopWorld/SonarCloud-WebHook/blob/master/README.md

If the criteria is not met, the task will error and thus break the build ( unless you override Continue on error generic VSTS task setting )

## Configuration

Three configuration items are required

 - **URL to webhook API** - this is prepopulated with http://40.68.212.247:8420/api/hook and the URL points to active deployment of the API
 - **polling timeout** - in seconds - prepopulated to 10 seconds, this item drives how long is the task going to run for and poll the webhook api to retrieve the quality gate status - there is a certain delay between when the sonar cloud has completed an analysis and when the data is pushed to the webhook api. Generally the delay is negligible but configuring higher values should not have negative effect on your build and may prevent build failure in case of unexpected delay.
 - **build identifier** - this usually points to a build variable (see backend readme.md to see how to generate and pass build identifier). Following the how to there, a typical value would be `$(sonarBuildIdentifier)`

