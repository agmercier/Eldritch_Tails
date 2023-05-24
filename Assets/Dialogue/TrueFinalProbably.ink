VAR barrier = "on"
VAR NPC_Name = "Geralt"
VAR well = "off"
VAR VeggieLush = 0
VAR GetWood = "false"
->gotovillage2

===start1===
West of the city the hills rise wild, and there are valleys with deep woods that no axe has ever <color=\#FF0000>cut</color> and no sunlight reaches through. Thin brooks run through it in the darkness, the water blackened with mud. #background:forest blank  #voice:dl
The water splashes up and leaves black stains on his skin and clothes as {NPC_Name}'s running footsteps disturb it. Even though the stream is only small, the resistance is powerful. The water is pulling him down, slowing him down and seems to whisper "don't leave, don't leave..." #background:forest blank 
{NPC_Name} wriggles himself from its grip and continues running. He has to get out! Navigating through the dark trees becomes harder and harder, as the forest gets more dense and the branches seem to be closing in on him, gripping onto his clothes and hair and making him trip. They hook into his skin and lock him in a horrible embrace he can't escape from. He screams, but the only audible sound is the ever present wind rustling through the leaves, as if the forest is laughing at him. #background: forest blank #left: NPC
+ [Continue] -> wakesup

===wakesup===
~GetWood = "false"
He wakes up with the sound still echoing in his ears and drenched in sweat. Bewildered, he sits up and sees his wife still peacefully asleep lying next to him. #background: inside 1 #left: NPC 
Another nightmare, then...
He carefully gets off the bed and looks out the window, into the dark forest. It should be around sunrise, but because {NPC_Name} and his family live on the outskirts of the village, right next to the forest, it is always dark.
???: Notice that rune over that glass of water? Click on it and see what happens. #runeX_0:-29 #runeY_0:-11
+ {not knockoverglass} [Knock over glass] ->knockoverglass
+ {knockoverglass} [Knock over glass] ->knockoverglass2
+ [Do nothing] -> introfamily

===knockoverglass===
Suddenly, the glass of water standing on the bedside table shatters into thousands of tiny pieces, startling him. #background: inside blank #left: NPC 
Clearly, his daughter heard the noise as well, as she sleepily walked into the room. #background: inside blank #left: NPC #right: daughter
Daughter: "Hm? You're awake too, papa?"
She looks at his pale, startled face. 
-> introfamily

===knockoverglass2===
{NPC_Name} turns to step back into his bed, when he steps into something liquid on the ground. #background: inside blank #left: NPC
He looks down and sees that the glass of water has fallen from the bedside table and shattered into pieces. 
When did that happen? Yesterday evening the glass had just been standing there and surely he would have heard it falling? 
->introfamily

===introfamily===
Daughter: "Did you dream again, papa?" #background: inside blank #left: NPC #right: daughter
He nods in response as his daughter walks up towards him. #background: inside blank #left: NPC #right: daughter
{NPC_Name}: "I think it's a sign that perhaps we really should make the move to the bigger city. It will be good for us, and you can go to a real school!" 
Daughter: "Hehe, it will be an adventure!" she replies excitedly and then grabs onto his hand. "But we're happy here in the village too, aren't we?" 
+ {wakesup == 1} [Go to the village] -> gotovillage1
+ {wakesup == 2} [Go to the village] -> gotovillage2
+ {wakesup == 3} [Go to the village] -> gotovillage3
+ {wakesup == 4} [Go to the village] -> gotovillage4
+ {wakesup == 5} [Go to the village] -> gotovillage5
+ {wakesup > 6} [Go to the village] -> gotovillage6

===gotovillage1===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.1 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie1

===gotovillage2===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.2 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie1

===gotovillage3===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.3 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie1

===gotovillage4===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.4 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie2

===gotovillage5===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.5 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie3

===gotovillage6===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1.6 #left: NPC
He sighs and gets the things he needs. #runeX_1:0 #runeY_1:-347
+ [Do nothing] -> requestforwood
+ {coincidence1 > 2} [Influence field] ->veggie4

===requestforwood===
Plower: "Now, don't look so disappointing. I tried to save what I could, otherwise we would have nothing." #right: plower #left: NPC
He crosses his arms, which are covered in dirt, showing he clearly harvested the field only this morning. 
Plower: "When the well is completed and we have fresh water again, I'm telling you it will be better!" 
In the old days, the village had had a well as well for their water supply, but it has long since fallen to ruins and for now, the village is dependent on the muddy creeks for their water supply. However, recently the villagers started on the project to rebuild the old thing. It is tedious work, but it finally seems like it's getting closer to completion. 
Plower: "Speaking of it, I heard you want to leave the village", he continues. A hint of displeasure leaks through his casual demeanor. #right: plower #left: NPC
+ [Nod] ->nod1

===nod1===
{NPC_Name} nods. #left: NPC #right: plower
Plower: "Well, what ever for? We have everything we need in this community, no? And everyone's a vital pillar for it as well. That's truly a happy place, isn't it?" he says and smiles. 
{NPC_Name}: "Yeah, I guess", {NPC_Name} complies, but in his head the desire to leave only grows stronger. 
A proper school for his kid and ample new opportunities for his wife and himself. Compared to that, the redundant life in the village sounds slightly oppressive. Yes, they will seek their chance elsewhere. 
+ [Continue] ->question1

===question1===
Plower: "Oh, by the way, could I ask a job of you? My crates for storing vegetables are getting weary and old. Can you get me some fresh wood to repair them?" #left: NPC #right: plower
+ {not accept1} [Accept] ->accept1
+ {accept1} [Accept] -> accept2
+ [Decline] ->decline1

===accept1===
~GetWood = "true"
No sooner had the words left the plower's mouth, did one of his crates collapse under its own weight with a loud crack. Wincing and feeling sorry for the plower he decides to help. #left: NPC #right: plower
{NPC_Name}: "Ofcourse, I will get to it", {NPC_Name} replies. Taking on jobs for his fellow villagers will be a great way to earn money, which he will surely need if he is to leave this place. 
Plower: "Great. Thank you!" 
{NPC_Name} makes his way through the village back to his home to collect his axe to cut some wood in the forest. #background: village blank #left: NPC  
"{NPC_Name}?" #background: village blank
He turns around at hearing his name and sees another villager. She clearly just returned from the hunt, as a bow is slung around her shoulder and she's holding a handful of freshly killed birds and rabbits. #background: village blank #left: NPC #right: Jennifer
{NPC_Name}: "Hello Jennifer." 
Jennifer: "The field doesn't bring us much these days, but the woods are prosperous and provide us with all we need. It would be a shame to leave such a place behind. Right?" 
{NPC_Name}: "Surely." 
She sits down and grabs her knife, starting to skillfully remove the skin and innards of the first catch. The blood drips down into a bucket by her side, the steady sound cutting through the silence after his response. 
Drip. Drip. Drip. 
She looks up at {NPC_Name} and smiles again, but her eyes look cold.  
Jennifer: "Let's all remain happy here." With a sharp sound, she cuts off the head of the pheasant in one fell swoop. It lands at her feet and the glazy, hollow eyes seem to stare at {NPC_Name}. 
He can't help but feel uneasy. Why do all the other villagers seem so opposed to him leaving? #background: village blank #left: NPC 
+ [Go back to village] ->coincidence1

===accept2===
~GetWood = "true"
No sooner had the words left the plower's mouth, did one of his crates collapse under its own weight with a loud crack. Wincing and feeling sorry for the plower he decides to help. #background: veggie field 1.1 #left: NPC #right: plower
{NPC_Name}: "Ofcourse, I will get to it", {NPC_Name} replies. Taking on jobs for his fellow villagers will be a great way to earn money, which he will surely need if he is to leave this place. 
Plower: "Great. Thank you!" 
{NPC_Name} makes his way through the village back to his home to collect his axe to cut some wood in the forest. #background: village blank #left: NPC 
"{NPC_Name}?" #background: village blank
He turns around at hearing his name and sees Jennifer. She clearly just returned from the hunt, as a bow is slung around her shoulder and she's holding a handful of freshly killed birds and rabbits. #background: village blank #left: NPC #right: Jennifer
{NPC_Name}: "Hello again, Jennifer, seems you caught a lot again." 
Jennifer: "Yeah, the last few hunts went terrible and we haven't seen eachother in days", she replies frowning.
Huh? He could swear he saw her only yesterday, carrying a similar catch to the one she has now. 
She sits down and grabs her knife, starting to skillfully remove the skin and innards of the first catch. The blood drips down into a bucket by her side, the steady sound cutting through the silence after his response. 
Drip. Drip. Drip. 
{NPC_Name} can't shake the feeling that this whole scene seems familiar to him and can't help but feel uneasy. #background: village blank #left: NPC
+ [Go back to village] ->coincidence1

===veggie1===
Suddenly, he sees something moving from the corner of his eye. He turns to look.. #background: veggie field 2.1 #left: NPC
In the vegetable bed next to him, the earth in some places is moving, like something is moving underneath. The lettuce was eaten by vermin, so maybe it's rats? Still, it is best to know for sure. 
{NPC_Name} leans over the vegetable bed and reaches for the place where the soil is moving, ready to expose what's beneath it. 
As soon as he does so, a withered hand emerges from the ground and locks his wrist in a tight grip. {NPC_Name} yells out in shock, but the hunter is already gone again and there's no one to see what's going on. 
The hand is immensely strong and {NPC_Name} can't do anything as it slowly pulls his arm into the ground. With his other hand, {NPC_Name} tries to stop it, but the dry earth forms little resistance and he sinks deeper into it. As he shifts around the sand struggeling desperately, he can see himself. staring back. 
What is going on?! 
He screams for help, trying to pull his arm away from his own grip. Sinking further into the ground, until his mouth starts filling with earth and his yells are muffled. Before long, his eyes were submerged as well and he was completely dragged into the ground. 
->wakesup

===veggie2===
Suddenly, he sees something moving from the corner of his eye. He turns to look.. #background: veggie field 2.2 #left: NPC
In the vegetable bed next to him, the earth in some places is moving, like something is moving underneath. The lettuce was eaten by vermin, so maybe it's rats? Still, it is best to know for sure. 
{NPC_Name} leans over the vegetable bed and reaches for the place where the soil is moving, ready to expose what's beneath it. 
As soon as he does so, a withered hand emerges from the ground and locks his wrist in a tight grip. {NPC_Name} yells out in shock, but the hunter is already gone again and there's no one to see what's going on. 
The hand is immensely strong and {NPC_Name} can't do anything as it slowly pulls his arm into the ground. With his other hand, {NPC_Name} tries to stop it, but the dry earth forms little resistance and he sinks deeper into it. As he shifts around the sand struggeling desperately, he can see himself. staring back. 
What is going on?! 
He screams for help, trying to pull his arm away from his own grip. Sinking further into the ground, until his mouth starts filling with earth and his yells are muffled. Before long, his eyes were submerged as well and he was completely dragged into the ground. 
->wakesup

===veggie3===
Suddenly, he sees something moving from the corner of his eye. He turns to look.. #background: veggie field 2.3 #left: NPC
In the vegetable bed next to him, the earth in some places is moving, like something is moving underneath. The lettuce was eaten by vermin, so maybe it's rats? Still, it is best to know for sure. 
{NPC_Name} leans over the vegetable bed and reaches for the place where the soil is moving, ready to expose what's beneath it. 
As soon as he does so, a withered hand emerges from the ground and locks his wrist in a tight grip. {NPC_Name} yells out in shock, but the hunter is already gone again and there's no one to see what's going on. 
The hand is immensely strong and {NPC_Name} can't do anything as it slowly pulls his arm into the ground. With his other hand, {NPC_Name} tries to stop it, but the dry earth forms little resistance and he sinks deeper into it. As he shifts around the sand struggeling desperately, he can see himself. staring back. 
What is going on?! 
He screams for help, trying to pull his arm away from his own grip. Sinking further into the ground, until his mouth starts filling with earth and his yells are muffled. Before long, his eyes were submerged as well and he was completely dragged into the ground. 
->wakesup

===veggie4===
Suddenly, he sees something moving from the corner of his eye. He turns to look.. #background: veggie field 2.4 #left: NPC
In the vegetable bed next to him, the earth in some places is moving, like something is moving underneath. The lettuce was eaten by vermin, so maybe it's rats? Still, it is best to know for sure. 
{NPC_Name} leans over the vegetable bed and reaches for the place where the soil is moving, ready to expose what's beneath it. 
As soon as he does so, a withered hand emerges from the ground and locks his wrist in a tight grip. {NPC_Name} yells out in shock, but the hunter is already gone again and there's no one to see what's going on. 
The hand is immensely strong and {NPC_Name} can't do anything as it slowly pulls his arm into the ground. With his other hand, {NPC_Name} tries to stop it, but the dry earth forms little resistance and he sinks deeper into it. As he shifts around the sand struggeling desperately, he can see himself. staring back. 
What is going on?! 
He screams for help, trying to pull his arm away from his own grip. Sinking further into the ground, until his mouth starts filling with earth and his yells are muffled. Before long, his eyes were submerged as well and he was completely dragged into the ground. 
->wakesup

===decline1===
{NPC_Name}: "I'm sorry, I have other engagements." #left: NPC #right: plower
A few houses further, a villager is repairing her roof, her two children eagerly helping. The eldest child is standing on the ladder, while the youngest is holding it in place. #background: village blank
Then, the youngest gets distracted by a grasshopper, letting go of the ladder, the little child chases after it. Immediately, the ladder starts wobbling. The older child loses balance and falls to the ground. #background: village blank
{NPC_Name} jumps forward and tries to catch him. #background: village blank #left: NPC 
{NPC_Name}: "Are you hurt?" 
Luckily, the fall wasn't too bad.  
Boy: "{NPC_Name}! Thank you so much, you saved me!" #background: village blank #left: NPC #right: boy
Mother: "Thank you! I'm glad we all look after eachother and ensure the safety of everyone in the village. Such communities are hard to find, you know." #background: village blank #left: NPC #right: mother boy
+ [Continue] ->coincidence1

===coincidence1===
Then, two of the village hunters enter the village, a bewildered look on both their faces, one of them absolutely drenched in water. #background: village 1 #right: hunter 2 #center: hunter 1
{NPC_Name}: "What happened to you both?!"  #background: village 1 #right: hunter 2 #center: hunter 1 #left: NPC
Hunter1: "The western creek is flooded!" 
{NPC_Name}: "What? That little thing?" 
There was barely any water running through it on most days, so this is unexpected. 
Hunter2: "Yeah, we tried crossing it, but it's just no good!" #runeX_1:-338 #runeY_1:11 #runeX_2:280 #runeY_2:258
+ [Go back home] ->supplies1
+ [Take a look at flooded creek] ->look1
+ {GetWood == "true"} [Get wood] ->getwood1
+ [Stay in village] ->stay1

===stay1===
A cold breeze went through town and the soaking hunter shivered before letting out a loud sneeze from the cold. #background: village blank #left: NPC #center: hunter 1
{NPC_Name}: "Well, just get some dry clothes for now, okay?" 
{NPC_Name} walks off and knocks on the door of the village leader. #background: leader house blank #left: NPC #center: hunter 1
Leader: "Good day! What can I help you with today?" #background: leader house blank #left: NPC #center: hunter 1 #right: leader
{NPC_Name}: "One of the hunters came back soaked after the river flooded, can he warm up here? Also, I wanted to talk about leaving the village. I know you've been to other places and travelled, so I would like some advice." 
Leader: "Certainly! I've been to many places. What would you like to know?" #background: leader house blank #left: NPC #right: leader
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place1===
{NPC_Name}: "How was the western town?" #background: leader house blank #left: NPC  #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?"
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place2===
{NPC_Name}: "What is the village in the mountains like? It seems such a mysterious place." #background: leader house blank #left: NPC  #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?" 
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place3===
{NPC_Name}: "And the capital, what is that like? I can hardly imagine it!" #background: leader house blank #left: NPC  #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?" 
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===strange1===
Huh? Is the village leader not acting rather strange? He's saying the exact same thing again, like a broken record or a rehersed response. How odd. #background: leader house blank #left: NPC  #right: leader
Leader: "But, I think this village is the most wonderful of all. It is a good place to call home." 
{NPC_Name}: "Yeah, I'll be back later to talk more." 
Then {NPC_Name} hurriedly walks off, feeling slightly unsettled by the leader's behaviour. #background: leader house blank #left: NPC 
 ->strange2

===strange2===
A few hours have passed and {NPC_Name} decides to try talking to the leader again. The strangeness of their previous encounter is starting to leave his mind. The leader simply is just a very enthousiastic man, so that's why he was just happy about all the places they talked about. #background: leader house blank #left: NPC 
He knocks again. 
Leader: "Good day! What can I help you with today?" #background: leader house blank #left: NPC #right: leader
Again? Word for word, it is the same greeting as before. Such a thing is unnatural, right? 
Without saying anything more, {NPC_Name} walks off. 
+ {not look1} [Take a look at flooded creek] ->look1
+ {not getwood1} {GetWood == "true"} [Get wood] ->getwood1
+ [Go back home] ->supplies1

===look1===
"Here, we'll show you", the other one says as he grabs {NPC_Name}'s arm and drags him behind, both trudging back to the forest. #background: forest blank
The creek is not far from the village and soon they reach its beds. Like they said, the water stands high and a strong current rushes through it. Clearly, it would be dangerous to try to cross it, so going west is impossible for now. #background: creek blank #right: hunter 2 #center: hunter 1 #left: NPC 
+ [Continue] ->coincidence2

===getwood1===
So going west seems impossible now due to the flooded river. A shame, {NPC_Name} thinks, since he knows a town should not be too far that way. #background: village blank #left: NPC 
As one of the hunters leans on {NPC_Name}'s cart to take a breather, he nearly falls to the ground as the wooden handlebar snaps of and breaks. Well, for now {NPC_Name} has his job to do. It seems he'll be gathering wood not only for the plower but for himself aswell. He walks away into the forest to get some wood. #background: village blank #left: NPC #right: hunter 2
+ [Get some wood] ->woodglitching
+ [Go back home] ->supplies1

===woodglitching===
He stops in front of a big, sturdy tree and gets out his axe. Swinging it above his head, he forcefully lets it down against the trunk. #background: forest blank #left: NPC
Nothing happens.
Again, he swings the axe with as much force as he can. Still, the tree doesn't budge or break.
Confused, he takes a closer look at the tree. There is no indication he even tried to cut it down at all, not even a single mark on the bark. 
What is going on?
-> gamecrashes

===gamecrashes===
->END 

===coincidence2===
Suddenly a loud creaking sound disturbs the singing of birds in the forest and a large tree comes falling down, blocking the road before him. #background: fallen tree blank #left: NPC 
What is this?! 
Being a lumberjack, {NPC_Name} is fairly knowledgable on trees. Surely, he would have noticed if such an unsteady tree had been standing so close to the village? 
He sighs and walks closer. It's a big oak and will probably take days to clean up, which means this road is out of order for now too. 
At this rate, it seems he can never leave this village. 
+ {not stay1} [Stay in village] ->stay1
+ {not getwood1} {GetWood == "true"} [Get wood] ->getwood1
+ [Go back home] ->supplies1

===supplies1===
He tries to shrug off the weird events of the day and sets his mind on his goal; leaving this village. He grabs his cart and makes up a list of supplies they need to create the life they want, one by one gathering all the things. #background: village blank #left: NPC
Food he already got this morning. Sufficient clothes, maps, light cooking utensils, and that's only the start of everything they would need. 
+ [Continue]->SickDaughter

===SickDaughter===

A bead of sweat rolls down {NPC_Name}'s face. Even in the chilly autumn air he is working up a sweat. The cart seems much too heavy for the supplies he is carrying, dragging behind him like a lead weight. However, as he crests the hill, house coming into view. He knows it is all worth it to see the smiles on his families faces when they can finally set out to start a better life. #background: house blank #left: NPC
A smile is not what greets him as he steps foot over the door treshold. A silence almost pressing in its urgency, followed by the sight of his daughter in bed. Sick with fever. #background: inside blank #right: daughter
{NPC_Name}: "How did this happen? Just this morning when I left she looked fine!" #background: inside blank #right: daughter #left: NPC
His wife, replacing the wet compress on their daughter's head, shakes her own. A sight of defeat and cluelessness. #background: inside blank #left: NPC #right: daughter #center: wife
This wasn't right! He cannot just lets his kid wither away! Determined he squared his shoulders and set out. #background: inside blank #left: NPC 
+ [Set out to get medicine] -> GetMedicine


===GetMedicine===
His experience with the woods and their layout was what gave {NPC_Name} hope. He knew he had seen a clustering of white willow trees, somewhere, at some point... Their bark could be used to brew a tea to reduce fever. Searching ferferently he combed the woods, but to no avail. Having combed the part of the woods he frequented there were only two options left. Either go deeper, into uncharted territory. Or return home, his wife would have called the doctor by now. Maybe he could provide some insight. #background: forest 1 #runeX_1:-274 #runeY_1:-224 #left: NPC
+ [Go back home]-> Home
+ [Go deeper, his daughter needs that medicine!]-> GoDeeper1

= GoDeeper1
Shivering {NPC_Name} decided to go deeper into the woods. If he's already cold, than how vulnerable will his daughter be if the weather turns? Confident het takes a couple steps. But... what if he got lost, what if he encountered a wild animal? He hard heard tales of them roaming this space. Maybe it would be best not to chance it. Rely on the expertise of the doctor. #background: forest 2 #runeX_1:534 #runeY_1:-105 #left: NPC
+ [GO HOME]-> Home
+ [Go Deeper anyway, the forest has never really been that dangerous]-> GoDeeper2

= GoDeeper2
{NPC_Name} steeled his nerves and rationalized. The forest does not seem that dangerous. He took another step. and another. and... another. and... and.. and. stopped. #background: forest blank #left: NPC 
+ [go back home]-> Home
+ [Comment]-> Comment1

= Comment1
{NPC_Name}: "I can't go further than this" #background: forest blank #left: NPC 
+ [go back home]-> Home
+ [Comment]-> Comment2

= Comment2
{NPC_Name}: "I CAN'T go further than this" #background: forest blank #left: NPC 
+ [go back home]-> Home
+ [Comment]-> Comment3

= Comment3
{NPC_Name}: "I CAN'T GO FURTHER THAN THIS" #background: forest blank #left: NPC 
+ [go back home]-> Home
+ [Comment]-> CommentUS

= CommentUS
???: We're really stubborn aren't we. Well no matter. Going further in would never work anyway. There is nothing else out there. If we really want to see, just change the rules of the game. Set the barrier to  "off".  We know we can. #background: forest blank
+ [Continue when It is done]-> BarrierOption

= BarrierOption
...Make your choice #background: forest blank
+ [go back home]-> Home
+ {barrier == "off" || barrier == "Off" || barrier == "of"|| barrier == ""|| barrier == "delete" || barrier == "Delete"} [GO. DEEPER. INTO. THE. WOODS.]-> GetHerbs

===GetHerbs===
...Very well then. #background: forest blank #left: NPC 

{NPC_Name} wondered why he had been standing here so long, doubting. There was no reason to. He was gonna get that bark to cure his daughter! Confidentely he stepped on. Despite having never been here he knew he could trust on his navigational skills. Luckily he came upon a cluster of white willows almost immediately. Now just to get this to his daughter. 
+ [go back home] -> Home

===Home===
Stepping foot into his abode {NPC_Name} luckily saw the doctor standing there. {GetHerbs: He quickly handed the willow bark over to his wife so she could start brewing the medicinal tea. However, before she could start the doctor stopped her.}The man told him that it was likely due to the poluted water that his daughter got sick. {GetHerbs: To brew the tea properly the water would need to be clean.}The new well should be done by now. It will provide fresh water and hopefully make sure she gets better. #background: inside blank #left: NPC #right: doctor #center: wife
+ [Fetch some water from the well] -> Well

===Well===
Making the journey back again all the way to the village was tiring and {NPC_Name} started thinking about how lucky he was that the well was done now. Although. The well didn't seem done when he passed by it just earlier this morning. #background: village blank #left: NPC
+ {(knockoverglass2 && decline1 && coincidence2 && strange2) || (knockoverglass2 && decline1 && coincidence2) || (knockoverglass2 && decline1 && strange2) || (knockoverglass2 && coincidence2 && strange2) || (decline1 && coincidence2 && strange2)} [Realise]->Realisation
+ {FirstWell}[Continue to well]-> NoRealisation
+ {not FirstWell} [Continue to well]-> FirstWell

===FirstWell===
???: Good job for making it this far, we've done the tutorial. Well, almost. First we need to make sure there is actually a well for our dear {NPC_Name}. Right now that file is turned off and we can't actually continue the story. To continue it really is simple. Just go to the game file, find the folder labeled "well", open it, and change it to "on" easy as that. Chop Chop, get to it. We don't have all day. Just make sure you have changed the file before you click to continue.#background: village blank
+ [Continue when It is done]-> WellOption


===WellOption===
...
+ {well != "off"} [Continue]-> TutorialEnd
+ {well == "off"}[Continue] -> FirstWell


===TutorialEnd===
Seeing that the well was done {NPC_Name} quickly ran up to it was his bucket, leaning on the edge to grab the rope. #background: well #left: NPC
A low rumble. 
The ledge gave way and. 
He fell. #background: well
->NormalReset

===Realisation==
Something fishy was going on here. The well could never have been completed in such a short time, the strange coincedences and not to speak of how strange the villagers were acting. He was going to find out what was going on and he was going to find out NOW. marching up to the leaders house he banged on the door. #background: leader house blank #left: NPC
Leader: "Good day! What can I help you with today?" #background: leader house blank #left: NPC #right: leader
{NPC_Name}: "Again? You keep saying that! I want answers about what is going on here!" 
The leader seemed taken aback a bit at his brusk manners but the shook his head and seemed to reset himself. 
Leader: "Answers? what do you mean? Are you quite alright? If your not well you shouldn't be up and about working yourself into such a state. You're certainly not in a state to travel" 
{NPC_Name} narrowed his eyes at the man and scoffed. 
{NPC_Name}: "So that's what this is all about then? Everyone is keeping us from leaving. Well! I am taking my family and going! I am sure the bigger city will have better medicine for my daughter anyway!" 
He turned on his heel and walked of. The leader watching him with narrowed eyes. 
+ [Continue] -> HomeCreepy

===HomeCreepy===
{NPC_Name}, opening the door to his house, was intercepted by the doctor. #background: house blank #left: NPC #right: doctor
Doctor: "I am afraid your daughter is not well enough to travel." 
{NPC_Name}, hesitantly: "How did you know I was planning on leaving right now?" 
At that point his wife looked up hearing the commotion. #background: house blank #left: NPC #right: doctor #center: wife
Wife: "I am afraid our daughter is not well enough to travell, dear." 
Daughter: "I am afraid I am not well enough to travell, father." #background: house blank #left: NPC #right: daughter #center: wife
Realizing that something was very wrong, not only with the town but also his own family. {NPC_Name} turned heel and ran into the forest. He was going to get out of here! No matter what. #background: house blank #left: NPC 
+ [Continue] -> ForestStay
//barrier need to be down
+ {barrier == "off" || barrier == "Off" || barrier == "of"|| barrier == ""|| barrier == "delete" || barrier == "Delete"} [Continue] -> ForestLeave

===ForestStay===
He ran on deeper and deeper into the forest. The trees grew more dense, blocking out more of the sunlight and it seemed to grow darker with every step. He still pushed on. Just about as he was to cross the treshold of the part of the forest that he knew, he realized that he was running, but he was not moving. Panicked he pushed even harder, even further, but no matter what he stayed in the same place. #background: dark forest blank #left: NPC
Daughter: "Come on dad, your not just gonna leave us behind are you?" #background: dark forest blank #left: NPC #right: daughter
Turning around he saw his daughter. Standing, completely fine. But it wasn't his daughter. None of this was right. In a fit of desperation he turned around and ran at her. Almost when he had reached her, he seemed to trip on nothing. and fall. 
-> NormalReset

===ForestLeave===
He ran on deeper and deeper into the forest. The trees grew more dense, blocking out more of the sunlight and it seemed to grow darker with every step. He still pushed on. Beyond where he had ever been before. Deeper and deep3r. The b4@!) grew thinner and longer, (*+ves became ever %$!@ dense. Deeper and D%ep-^. *$&%@ was !%gin*^ng t) f4&*. D&%p3^ %)& @%)!-^. +&%(3^ %)& @%)!-^. +&%3^%)@%)!-^. +&     %  %)@%  ) !      - #background: dark forest blank
->END

===NoRealisation===
Either way, No matter the reason he was glad he would be able to help his daughter now. #background: village blank #left: NPC
Walking into town square {NPC_Name} saw that the well was indeed done. Quickly he ran up to it was his bucket, leaning on the edge to grab the rope. #background: well #left: NPC
A low rumble. 
The ledge gave way and. 
He fell. #background: well
-> NormalReset 

===NormalReset===
Deep down and down. Into darkness, hair whipping his face. Landing on his back with a crack. #background: well
-> wakesup


