#!/bin/bash
echo "Displaying the Jobs in the Jenkins server"



java -jar "/h/DevOps_Softwares/Installed_files/Jenkins_cli/jenkins-cli.jar" \
-s http://192.168.29.199:8080/ \
-auth Jenkins:112e8f239773ea69dc480703b0ff1ba4ec list-jobs


echo "Please emter the job name from the list above"

read jobName

java -jar "/h/DevOps_Softwares/Installed_files/Jenkins_cli/jenkins-cli.jar" \
-s http://192.168.29.199:8080/ \
-auth Jenkins:112e8f239773ea69dc480703b0ff1ba4ec build $jobName

echo "Building the $jobName Job" 

echo " Done"

