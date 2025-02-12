#!/bin/bash

USER_LIST="users.txt"  # File containing usernames (one per line)
PASSWORD_FILE="user_credentials.txt"

# Ensure the password file is empty before writing
> $PASSWORD_FILE

while IFS= read -r USERNAME; do
    # Generate a password (Example: first 3 letters + random numbers + special character)
    PASSWORD="${USERNAME:0:3}$(openssl rand -hex 3)!"

    # Create user and set password
    sudo useradd -m "$USERNAME"
    echo "$USERNAME:$PASSWORD" | sudo chpasswd

    # Save credentials
    echo "$USERNAME : $PASSWORD" >> $PASSWORD_FILE
done < "$USER_LIST"

echo "User creation complete. Credentials saved in $PASSWORD_FILE."
