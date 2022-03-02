# DevOps Engineer

## Process

* Fork this repository to your personal GitHub account. If you prefer, you may create your own private repository instead.
* Complete your project and push your code to your repository.
* Send a link to your public repo or invite @joeles and @ShawnConn as collaborators if it is private.

## Requirements

* Build a three-tiered hit counter app in the language(s) of your choice
* Frontend service
    Should fetch current count from Backend service and display to visitor
    Should have a button to execute a request to Backend to increment total count
* Backend service
    Should have a URL for retrieving current total count
    Should have a URL for incrementing total count
    Should persist data to DB service
* DB service
    Should run database of your choice
    Should use schema of your choice
* All tiers should run as Docker containers
    * Frontend and Backend services should each have separate Dockerfile to build
    * DB service should use or be derived from a community maintained Docker image
* Use your choice of CI/CD solution or other tools to build
* Use your choice of Free tier AWS infrastructure to run
* Use Terraform to manage AWS resources
* We are more interested in the IaC to build and deploy, not the details of the app

## Interview

* You will walk through your solution
* We will discuss solutions and challenges of implementation
* Additional technical questions and discussion
