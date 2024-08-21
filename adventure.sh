#!/bin/bash

play_again="yes"

while [ "$play_again" == "yes" ]; do
    # Introduction
    echo "Welcome to your Adventure! To begin, you wake up in a forest with no memory of how you got there…"

    # First Choice: Left or Right
    while true; do
        echo "Do you get up and go left or right? (Left/Right)"
        read direction
        direction=$(echo "$direction" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

        if [ "$direction" == "left" ]; then
            echo "You see a river!"
            break
        elif [ "$direction" == "right" ]; then
            echo "You see a fruit tree!"
            break
        else
            echo "Invalid choice. Please choose 'Left' or 'Right'."
        fi
    done

    if [ "$direction" == "left" ]; then
        # Second Choice at River: Swim or Drink
        while true; do
            echo "Do you dive in and swim or take a big cold drink? (Swim/Drink)"
            read river_choice
            river_choice=$(echo "$river_choice" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

            if [ "$river_choice" == "swim" ]; then
                echo "Oh no, a shark has appeared! What do you do?!"
                while true; do
                    echo "Do you Stay Still or Swim Away? (Stay Still/Swim Away)"
                    read shark_choice
                    shark_choice=$(echo "$shark_choice" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

                    if [ "$shark_choice" == "stay still" ]; then
                        echo "Good news! The shark swam away! But the bad news is when you happily went the opposite direction you ended up getting lost forever, never to be found again… Sorry! Try Again!"
                        break
                    elif [ "$shark_choice" == "swim away" ]; then
                        echo "Nice Choice! After all your swimming and screaming, you attracted the attention of some campers who help you get home safely. Thanks for playing!"
                        break
                    else
                        echo "Invalid choice. Please choose 'Stay Still' or 'Swim Away'."
                    fi
                done
                break
            elif [ "$river_choice" == "drink" ]; then
                echo "Oh No! The water was riddled with bacteria. After fighting stomach pains all night you pass away peacefully in your sleep… Sorry! Try Again!"
                break
            else
                echo "Invalid choice. Please choose 'Swim' or 'Drink'."
            fi
        done

    elif [ "$direction" == "right" ]; then
        # Second Choice at Fruit Tree: Sit or Eat
        while true; do
            echo "What would you like to do, sit in the shade, or eat its fruit? (Sit/Eat)"
            read tree_choice
            tree_choice=$(echo "$tree_choice" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

            if [ "$tree_choice" == "sit" ]; then
                echo "Ahhhh.. You take a load off your feet and sit down in the cool shade."
                while true; do
                    echo "What happens next? (Meditate/Fall Asleep)"
                    read shade_choice
                    shade_choice=$(echo "$shade_choice" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

                    if [ "$shade_choice" == "meditate" ]; then
                        echo "A wandering group of forest people come across your perfectly still and peaceful posture and immediately start worshipping you. Congrats, you’re the leader of a forest tribe now! You win!"
                        break
                    elif [ "$shade_choice" == "fall asleep" ]; then
                        echo "Uh oh…you fell asleep in the shade but still got a terrible sunburn. Now every forest person and regular camper you come across runs away screaming before you can ask for help… Better luck next time, Sorry!"
                        break
                    else
                        echo "Invalid choice. Please choose 'Meditate' or 'Fall Asleep'."
                    fi
                done
                break
            elif [ "$tree_choice" == "eat" ]; then
                echo "Oh no! That fruit is poisonous to humans! After fighting stomach pains all night you pass away peacefully in your sleep… Sorry! Try Again!"
                break
            else
                echo "Invalid choice. Please choose 'Sit' or 'Eat'."
            fi
        done
    fi

    # Ask if the player wants to play again
    echo "Do you want to play again? (yes/no)"
    read play_again
    play_again=$(echo "$play_again" | tr '[:upper:]' '[:lower:]')  # Convert input to lowercase

    if [ "$play_again" != "yes" ]; then
        play_again="no"
        echo "Thank you for playing!"
    fi
done
