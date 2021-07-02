#!/bin/bash
#By Matthew Archer (03/07/2020)
printf "First Name: "
read firstname #first name
if [[ $firstname =~ [A-Z][a-z,-,A-Z]+ ]]; then #validate first name
        #echo "Your first name is: $firstname"
        printf "Last Name: "
        read lstname #last name
        if [[ $lstname =~ [A-Z][a-z,-,A-Z]+ ]]; then #validate last name
                #echo "Your last name is: $lstname"
                printf "Zip code: "
                read zipcode #zip code
                if [[ $zipcode =~ [0-9][0-9][0-9][0-9][0-9] ]]; then #validate zip
                        #echo "Your zip code is: $zipcode"
                        printf "Email address: "
                        read email #e-mail address
                        if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]; then #checking email address
                                echo "Validated!" #All inputs valid!
                        else
                                echo "Email address must be USER@DOMAIN, where both USER and DOMAIN must be only letters, numbers, dots, underscores, and hyphens!" #Invalid email
                        fi
                else
                        echo "Zip Code must be exactly 5 digits!" #invalid zip code
                fi
        else
                echo "Last name must start with a capital latterand only contain letters and hyphens." #invalid last name
        fi
else
        echo "First name must start with a capital letter and only contain only letters and hyphens!" #invalid first name
fi
