## Lab 1 — Jenkins Basics & Pipelines

## 📌 Objectives

- Install jenkins with docker image
- Install role based authorization plugin
- Create new user
- Create read role and assign it to the new user
- Create free style pipeline and link it to private git repo(inside it create directory and create file with "hello world")
- Create declarative in jenkins GUI pipeline for your own repo to do "ls"
- Create scripted in jenkins GUI pipeline for your own repo to do "ls"
- Create the same with jenkinsfile in your branches as multibranch pipeline

## Lab 2 — Jenkins Pipelines

## 📌 Objectives

- Configure Jenkins image to run docker commands on your host docker daemon
- Create CI/CD for this repo https://github.com/mahmoud254/jenkins_nodejs_example.git
- Create ec2 in aws and configure it as Jenkins slave
- Integrate slack with jenkins
- Send slack message when stage in your pipeline is successful or failed
- Install audit logs plugin and test it
- Fork the following repo https://github.com/mahmoud254/Booster_CI_CD_Project and add dockerfile to run this django app and use github actions to build the docker image and push it to your Dockerhub
- Create infrastructure pipeline to run terraform with Jenkins Task
