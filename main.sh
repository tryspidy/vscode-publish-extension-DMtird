#so first you'll have to create azure DevOps account and create and organizatoin
#https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/create-organization?view=azure-devops
#Then you'll have to create a publisher here: https://marketplace.visualstudio.com/manage 

#you'll then need an access token from azure devops to publish your plugin
#sign in to azure devOps (https://go.microsoft.com/fwlink/?LinkId=307137) 
#click the person icon (top right) - > personal access token -> create a new one
#for organization "All Accessible Organizations" and scopes "Full Access"
#then from your plugin folder
vsce login nameofyourplugin
vsce package
vsce publish

#optionally bump version number in package.json if needed