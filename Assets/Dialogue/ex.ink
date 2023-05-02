// Set up the starting variables
VAR player_name = "Georgi"

-> START
// Start the story
=== START ===
Welcome to the story! What is your name? #background:forest #left:twitty #right:spongebob

Enter your name boy
* [Enter your name.] -> SET_NAME

=== SET_NAME ===
Nice to meet you, {player_name}! You are about to embark on an adventure that will test your trust and loyalty. Are you ready? #background:lake #left:phoeneas #center:spongebob #right:twitty
* Yes, I'm ready. -> STORY_POINT_1
* No, I'm not ready. -> END

=== STORY_POINT_1 ===
You've just met a stranger in a park who seems friendly. They ask if you want to join them for a picnic.
* Join the stranger for a picnic. -> STORY_POINT_2A
* Politely decline and leave the park. -> STORY_POINT_2B

=== STORY_POINT_2A ===
The stranger is very kind and shares their food with you. They ask if you can hold onto their bag for a minute while they go to the bathroom.
* Agree to hold onto the stranger's bag. -> STORY_POINT_3A
* Refuse to hold onto the stranger's bag. -> STORY_POINT_3B

=== STORY_POINT_2B ===
You leave the park and go home. Nothing eventful happens, but you wonder what could have happened if you had accepted the stranger's invitation.
-> DONE

=== STORY_POINT_3A ===
While holding onto the stranger's bag, you notice that it's very heavy and smells strange. The stranger doesn't come back, and you start to feel uneasy.
* Open the bag to see what's inside. -> STORY_POINT_4A
* Wait for the stranger to come back. -> STORY_POINT_4B

=== STORY_POINT_3B ===
The stranger seems offended and leaves without saying anything else to you. You continue your day, but feel a little guilty about your decision.
-> DONE

=== STORY_POINT_4A ===
You open the bag and find a large sum of money, along with a note that says "Please deliver this to the address on the back of this note." You realize that the stranger must be a criminal and decide what to do.
* Deliver the money to the address on the note. -> END_GOOD
* Turn the money in to the police. -> END_BAD

=== STORY_POINT_4B ===
You wait for a while, but the stranger never comes back. Eventually, you get nervous and leave the bag where you found it. You never see the stranger again.
-> DONE

=== END_GOOD ===
You deliver the money to the address on the note and feel proud of yourself for doing the right thing. Congratulations, {player_name}! You have earned a high level of trust.
-> DONE

=== END_BAD ===
You turn the money in to the police and are commended for your honesty. However, you feel sad that you didn't get to keep the money. Your level of trust is low.
-> DONE
