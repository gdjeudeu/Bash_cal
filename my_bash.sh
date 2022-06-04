#!/bin/bash

echo ""
echo =============" Time to have some fun "==================
echo ""
echo "Let me get to know you"
echo ""
echo "How may I call you?"
read name
echo ""
echo "Hi $name, nice to meet you"
echo ""
read -p "Do you want to see all buckets in your account? (yes/no) " yn

case $yn in 
	yes ) echo Ok, retrieving your buckets...
		sleep 2
		aws s3 ls;;
	no ) echo No problem. Let try something else;
		sleep 2
		;;
	* ) echo invalid response;
		;;
esac

echo ""
read -p "Do you want to see all iam users? (yes/no) " yn

case $yn in
        yes ) echo Ok, retrieving your users...
                sleep 2
                aws iam list-users;;
        no ) echo NO problem, let try something else;
                sleep 2
                ;;
        * ) echo invalid response;
                ;;
esac
echo ""
read -p "Now, do you want to create a new VPC? (yes/no) " yn

case $yn in
        yes ) echo I was hoping you would say no! I am not at that level yet
                sleep 2
                ;;
        no ) echo Good!! because I was not ready for that anyways;
                sleep 2
                exit;;
        * ) echo invalid response;
                exit 1;;
esac
echo ""

echo Thank you $name, see you next time 

