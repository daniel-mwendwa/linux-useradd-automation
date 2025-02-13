# Linux User Automation
 
## Overview
This script automates the creation of Linux users with strong, yet relatable passwords. It ensures efficiency and security by generating passwords based on a structured pattern while keeping track of user credentials.

## Features
- Reads usernames from a file (`users.txt`)
- Generates strong, semi-memorable passwords
- Creates new users and assigns passwords securely
- Stores credentials in a secure file (`user_credentials.txt`)
- Saves sysadmins time by automating repetitive user creation tasks

## Why Automate User Creation?
Manually adding users can be time-consuming, error-prone, and inconsistent. This script helps system administrators:
- Maintain uniform security policies
- Quickly provision multiple users
- Reduce manual effort and potential mistakes

## Add Usernames
Create a users.txt file and add usernames (one per line):
## Run the Script
Execute the script with sudo privileges
sudo bash create_users.sh
##  Check the Generated Credentials
User credentials will be saved in user_credentials.txt
## Security Considerations
Store user_credentials.txt securely or delete it after distributing passwords.
Modify the password generation logic if you need stronger security.
Ensure the script is executed with appropriate permissions.
