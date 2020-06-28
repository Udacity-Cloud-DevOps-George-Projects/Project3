# Jenkins Pipelines on AWS (Project3)
## 1) Created AWS User which has below policies associated to it:
- AmazonEC2FullAccess
- AmazonVPCFullAccess
- AmazonS3FullAccess

![Screenshot1](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-01.PNG)

## 2) Created AWS t2.micro EC2 instance running Ubuntu 18.04

![Screenshot2](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-02.PNG)


## 3) Installed Jenkins 

![Screenshot3](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-03.PNG)


## 4) Installed Blue Ocean plugin for Jenkins 

![Screenshot4](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-04.PNG)


## 5) Created the GitHub Repository then uploaded the Jenkinfiles

### The Jenkinfiles includes below stages:
- Lint HTML: Validates HTML files for compliance against the W3C standards 
- Upload to AWS: Uploads the HTML code to AWS S3 Bucket configured for static WebSite hosting 
- Check WebSite is Up: Runs script to verify the WebSite is running by checking the HTTP response code 

![Screenshot-09-CheckWebSite](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-09-CheckWebSite.PNG)

### Note: GitHub Webhook is configured to automatically trigger the build of the Jenkins project upon a commit pushed in a Git repository

![Screenshot-10-GitHubRepoWebhook](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-10-GitHubRepoWebhook.PNG)


- POST was sent to Jenkins from Gitub after commit changes in the project repository

![Screenshot-11-GitHubRepoWebhookPOST](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-11-GitHubRepoWebhookPOST.PNG)


- Jenkins Project build was triggered automatically after the GitHub POST 

![Screenshot-12-JenkinsPipelineTriggered](https://github.com/Udacity-Cloud-DevOps-George-Projects/Project3/blob/master/Screenshots/screenshot-12-JenkinsPipelineTriggered.PNG)

