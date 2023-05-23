VAR barrier = "on"
->start1

===start1===
West of the city the hills rise wild, and there are valleys with deep woods that no axe has ever <color=\#FF0000>cut</color> and no sunlight reaches through. Thin brooks run through it in the darkness, the water blackened with mud. #background:woods #voice:dl
The water splashes up and leaves black stains on his skin and clothes as NPC's running footsteps disturb it. Even though the stream is only small, the resistance is powerful. The water is pulling him down, slowing him down and seems to whisper "don't leave, don't leave..." #background:woods 
NPC wriggles himself from its grip and continues running. He has to get out! Navigating through the dark trees becomes harder and harder, as the forest gets more dense and the branches seem to be closing in on him, gripping onto his clothes and hair and making him trip. They hook into his skin and lock him in a horrible embrace he can't escape from. He screams, but the only audible sound is the ever present wind rustling through the leaves, as if the forest is laughing at him. #background: woods #left: NPC (temporary) 
+ [Continue] -> wakesup

===wakesup===
He wakes up with the sound still echoing in his ears and drenched in sweat. Bewildered, he sits up and sees his wife still peacefully asleep lying next to him. #background: inside #left: NPC (temporary)
Another nightmare, then...
He carefully gets off the bed and looks out the window, into the dark forest. It should be around sunrise, but because NPC and his family live on the outskirts of the village, right next to the forest, it is always dark. #background: house
+ [Knock over glass] ->knockoverglass
+ {knockoverglass} [Knock over glass] ->knockoverglass2
+ [Do nothing] -> introfamily

===knockoverglass===
Suddenly, the glass of water standing on the bedside table shatters into thousands of tiny pieces, startling him. #background: inside
Clearly, his daughter heard the noise as well, as she sleepily walked into the room.
Daughter: "Hm? You're awake too, papa?"
She looks at his pale, startled face. 
-> introfamily

===knockoverglass2===
NPC turns to step back into his bed, when he steps into something liquid on the ground. #background: inside 2
He looks down and sees that the glass of water has fallen from the bedside table and shattered into pieces. #background: inside 2
When did that happen? Yesterday evening the glass had just been standing there and surely he would have heard it falling? #background: inside 2
->introfamily

===introfamily===
Daughter: "Did you dream again, papa?" #background: inside #right: daughter
He nods in response as his daughter walks up towards him. #background: inside #left: NPC (temporary) #right: daughter
NPC: "I think it's a sign that perhaps we really should make the move to the bigger city. It will be good for us, and you can go to a real school!" #background: inside #right: daughter #left: NPC (temporary)
Daughter: "Hehe, it will be an adventure!" she replies excitedly and then grabs onto his hand. "But we're happy here in the village too, aren't we?" #background: inside #left: NPC (temporary) #right: daughter
+ [Go to the village] -> gotovillage1

===gotovillage1===
Later that day, he makes his way to the other side of the village, where the vegetable field is located. He's out of food, but it seems the village crops are not in abundance this year. There are only a few carrots, pale and weirdly shaped, and lettuce, half eaten by maggots and other vermin, on display at the food stall. #background: veggie field 1 #left: NPC (temporary)
He sighs and gets the things he needs. 
+ [Do nothing] -> requestforwood
+ {accept1 > 2} [Influence field] ->veggie1

===requestforwood===
Plower: "Now, don't look so disappointing. I tried to save what I could, otherwise we would have nothing." #background: veggie field 1 #right: plower #left: NPC (temporary)
He crosses his arms, which are covered in dirt, showing he clearly harvested the field only this morning. 
Plower: "When the well is completed and we have fresh water again, I'm telling you it will be better!" #background: veggie field 1 #right: plower #left: NPC (temporary)
In the old days, the village had had a well as well for their water supply, but it has long since fallen to ruins and for now, the village is dependent on the muddy creeks for their water supply. However, recently the villagers started on the project to rebuild the old thing. It is tedious work, but it finally seems like it's getting closer to completion. #background: veggie field 1
Plower: "Speaking of it, I heard you want to leave the village", he continues. A hint of displeasure leaks through his casual demeanor. #background: veggie field 1 #right: plower #left: NPC (temporary)
+ [Nod] ->nod1

===nod1===
NPC nods. #background: veggie field #left: NPC (temporary) #right: plower
Plower: "Well, what ever for? We have everything we need in this community, no? And everyone's a vital pillar for it as well. That's truly a happy place, isn't it?" he says and smiles. #background: veggie field #left: NPC (temporary) #right: plower
NPC: "Yeah, I guess", NPC complies, but in his head the desire to leave only grows stronger. #background: veggie field #left: NPC (temporary) #right: plower
A proper school for his kid and ample new opportunities for his wife and himself. Compared to that, the redundant life in the village sounds slightly oppressive. Yes, they will seek their chance elsewhere. #background: veggie field #left: NPC (temporary)
+ [Continue] ->question1

===question1===
Plower: "Oh, by the way, could I ask a job of you? My crates for storing vegetables are getting weary and old. Can you get me some fresh wood to repair them?" #background: veggie field 1 #left: NPC (temporary) #right: plower
+ [Accept] ->accept1
+ {accept1} [Accept] -> accept2
+ [Decline] ->decline1

===accept1===
NPC: "Ofcourse, I will get to it", NPC replies. Taking on jobs for his fellow villagers will be a great way to earn money, which he will surely need if he is to leave this place. #background: veggie field 1 #left: NPC (temporary) #right: plower
Plower: "Great. Thank you!" #background: veggie field 1 #left: NPC (temporary) #right: plower
NPC makes his way through the village back to his home to collect his axe to cut some wood in the forest. #background: village #left: NPC (temporary) 
"NPC?" #background: village
He turns around at hearing his name and sees another villager. She clearly just returned from the hunt, as a bow is slung around her shoulder and she's holding a handful of freshly killed birds and rabbits. #background: village #left: NPC (temporary) #right: hunter
NPC: "Hello Jennifer." #background: village #left: NPC (temporary) #right: hunter
Jennifer: "The field doesn't bring us much these days, but the woods are prosperous and provide us with all we need. It would be a shame to leave such a place behind. Right?" #background: village #left: NPC (temporary) #right: hunter
NPC: "Surely." #background: village #left: NPC (temporary) #right: hunter
She sits down and grabs her knife, starting to skillfully remove the skin and innards of the first catch. The blood drips down into a bucket by her side, the steady sound cutting through the silence after his response. #background: village #left: NPC (temporary) #right: hunter
Drip. Drip. Drip. #background: village #left: NPC (temporary) #right: hunter
She looks up at NPC and smiles again, but her eyes look cold.  #background: village #left: NPC (temporary) #right: hunter
Jennifer: "Let's all remain happy here." With a sharp sound, she cuts off the head of the pheasant in one fell swoop. It lands at her feet and the glazy, hollow eyes seem to stare at NPC. #background: village #left: NPC (temporary) #right: hunter
He can't help but feel uneasy. Why do all the other villagers seem so opposed to him leaving? #background: village #left: NPC (temporary)
+ [Go back to village] ->coincidence1

===accept2===
NPC: "Ofcourse, I will get to it", NPC replies. Taking on jobs for his fellow villagers will be a great way to earn money, which he will surely need if he is to leave this place. #background: veggie field 1 #left: NPC (temporary) #right: plower
Plower: "Great. Thank you!" #background: veggie field 1 #left: NPC (temporary) #right: plower
NPC makes his way through the village back to his home to collect his axe to cut some wood in the forest. #background: village #left: NPC (temporary) 
"NPC?" #background: village
He turns around at hearing his name and sees Jennifer. She clearly just returned from the hunt, as a bow is slung around her shoulder and she's holding a handful of freshly killed birds and rabbits. #background: village #left: NPC (temporary) #right: hunter
NPC: "Hello again, Jennifer, seems you caught a lot again." #background: village #left: NPC (temporary) #right: hunter
Jennifer: "Yeah, the last few hunts went terrible and we haven't seen eachother in days", she replies frowning.
Huh? He could swear he saw her only yesterday, carrying a similar catch to the one she has now. 
She sits down and grabs her knife, starting to skillfully remove the skin and innards of the first catch. The blood drips down into a bucket by her side, the steady sound cutting through the silence after his response. #background: village #left: NPC (temporary) #right: hunter
Drip. Drip. Drip. #background: village #left: NPC (temporary) #right: hunter
NPC can't shake the feeling that this whole scene seems familiar to him and can't help but feel uneasy.
+ [Go back to village] ->coincidence1

===veggie1===
Suddenly, he sees something moving from the corner of his eye. He turns to look.. #background: veggie field 4 #left: NPC (temporary) 
In the vegetable bed next to him, the earth in some places is moving, like something is moving underneath. The lettuce was eaten by vermin, so maybe it's rats? Still, it is best to know for sure. #background: veggie field 4 #left: NPC (temporary) 
NPC leans over the vegetable bed and reaches for the place where the soil is moving, ready to expose what's beneath it. #background: veggie field 4 #left: NPC (temporary) 
As soon as he does so, a withered hand emerges from the ground and locks his wrist in a tight grip. NPC yells out in surprise, but the hunter is already gone again and there's no one to see what's going on. #background: veggie field 4 #left: NPC (temporary) 
The hand is immensely strong and NPC can't do anything as it slowly pulls his arm into the ground. With his other hand, NPC tries to stop it, but the dry earth forms little resistance and he sinks deeper into it. #background: veggie field 4 #left: NPC (temporary) 
What is going on?! #background: veggie field 4 #left: NPC (temporary) 
He screams for help until his mouth starts filling with earth and his yells are muffled. Before long, his eyes were submerged as well and he was completely dragged into the ground. #background: veggie field 4 
->END

===decline1===
NPC: "I'm sorry, I have other engagements." #background: village #left: NPC (temporary) #right: hunter
A few houses further, a villager is repairing her roof, her two children eagerly helping. The eldest child is standing on the ladder, while the youngest is holding it in place. #background: village
Then, the youngest gets distracted by a grasshopper, letting go of the ladder, the little child chases after it. Immediately, the ladder starts wobbling. The older child loses balance and falls to the ground. #background: village
NPC jumps forward and tries to catch him. #background: village #left: NPC (temporary)
NPC: "Are you hurt?" #background: village #left: NPC (temporary)
Luckily, the fall wasn't too bad. #background: village #left: NPC (temporary)
Boy: "NPC! Thank you so much, you saved me!" #background: village #left: NPC (temporary) #right: boy
Mother: "Thank you! I'm glad we all look after eachother and ensure the safety of everyone in the village. Such communities are hard to find, you know." #background: village #left: NPC (temporary) #right: woman
+ [Continue] ->coincidence1

===coincidence1===
Then, two of the village hunters enter the village, a bewildered look on both their faces. #background: village #right: hunter #center: hunter
NPC: "What is it?" #background: village #right: hunter #center: hunter #left: NPC (temporary)
Hunter1: "The western creek is flooded!" #background: village #right: hunter #center: hunter #left: NPC (temporary)
NPC: "What? That little thing?" #background: village #right: hunter #center: hunter #left: NPC (temporary)
There was barely any water running through it on most days, so this is unexpected.
Hunter2: "Yeah, we tried crossing it, but it's just no good!" #background: village #right: hunter #center: hunter #left: NPC (temporary)
+ {not coincidence2} [Take a look at flooded creek] ->look1
+ {not coincidence2} [Get wood] ->getwood1
+ {not stay1} [Stay in village] ->stay1
+ [Go back home] ->supplies1

===stay1===
NPC: "Well, just get some dry clothes for now, okay?" #background: village #right: hunter #center: hunter #left: NPC (temporary)
NPC walks off and knocks on the door of the village leader. #background: leader house #left: NPC (temporary)
Leader: "Good day! What can I help you with today?" #background: leader house #left: NPC (temporary) #right: leader
NPC: "I wanted to talk about leaving the village. I know you've been to other places and travelled, so I would like some advice." #background: leader house #left: NPC (temporary) #right: leader
Leader: "Certainly! I've been to many places. What would you like to know?" #background: leader house #left: NPC (temporary) #right: leader
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place1===
NPC: "How was the western town?" #background: leader house #left: NPC (temporary) #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?" #background: leader house #left: NPC (temporary) #right: leader
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place2===
NPC: "What is the village in the mountains like? It seems such a mysterious place." #background: leader house #left: NPC (temporary) #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?" #background: leader house #left: NPC (temporary) #right: leader
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===place3===
NPC: "And the capital, what is that like? I can hardly imagine it!" #background: leader house #left: NPC (temporary) #right: leader
Leader: "Oh, such a splendid place! Good food and friendly people is all you need, right?" #background: leader house #left: NPC (temporary) #right: leader
+ {not place1} [Western town] ->place1
+ {not place2} [Village in the mountains] ->place2
+ {not place3} [Capital] ->place3
+ {place1 && place2 && place3} [Hmmm... strange] -> strange1

===strange1===
Huh? Is the village leader not acting rather strange? He's saying the exact same thing again, like a broken record or a rehersed response. How odd. #background: leader house #left: NPC (temporary) #right: leader
Leader: "But, I think this village is the most wonderful of all. It is a good place to call home." #background: leader house #left: NPC (temporary) #right: leader
NPC: "Yeah, I'll be back later to talk more." #background: leader house #left: NPC (temporary) #right: leader
Then NPC hurriedly walks off, feeling slightly unsettled by the leader's behaviour. #background: leader house #left: NPC (temporary)  
+ {not coincidence2} [Take a look] ->look1
+ {not coincidence2} [Get wood] ->getwood1
+ {not stay1} [Stay in village] ->stay1
+ {not strange2} [Visit leader again] ->strange2

===strange2===
A few hours have passed and NPC decides to try talking to the leader again. The strangeness of their previous encounter is starting to leave his mind. The leader simply is just a very enthousiastic man, so that's why he was just happy about all the places they talked about. #background: leader house #left: NPC (temporary) 
He knocks again. #background: leader house #left: NPC (temporary) 
Leader: "Good day! What can I help you with today?" #background: leader house #left: NPC (temporary) #right: leader
Again? Word for word, it is the same greeting as before. Such a thing is unnatural, right? #background: leader house #left: NPC (temporary) #right: leader
Without saying anything more, NPC walks off. #background: leader house #left: NPC (temporary) #right: leader
+ {not coincidence2} [Take a look at flooded creek] ->look1
+ {not coincidence2} [Get wood] ->getwood1
+ [Go back home] ->supplies1

===look1===
"Here, we'll show you", the other one says and NPC follows them back into the forest. #background: woods
The creek is not far from the village and soon they reach its beds. Like they said, the water stands high and a strong current rushes through it. Clearly, it would be dangerous to try to cross it, so going west is impossible for now. #background: creek #right: hunter #center: hunter #left: NPC (temporary)
+ [Continue] ->coincidence2

===getwood1===
So going west seems impossible now. A shame, NPC thinks, since he knows a town should not be too far that way. #background: village #left: NPC (temporary)
Well, for now he has his job to do. He walks away into the forest to get some wood. #background: woods #left: NPC (temporary)
+ [Continue] ->woodglitching
+ [Go back to village] ->stay1
+ [Go home] ->supplies1

===woodglitching===
He stops in front of a big, sturdy tree and gets out his axe. Swinging it above his head, he forcefully lets it down against the trunk. #background: woods
Nothing happens.
Again, he swings the axe with as much force as he can. Still, the tree doesn't budge or break.
Confused, he takes a closer look at the tree. There is no indication he even tried to cut it down at all, not even a single mark on the bark. 
What is going on?
-> gamecrashes

===gamecrashes===
->END 

===coincidence2===
Suddenly a loud creaking sound disturbs the singing of birds in the forest and a large tree comes falling down, blocking the road before him. #background: fallen tree #left: NPC (temporary)
What is this?! #background: fallen tree #left: NPC (temporary)
Being a lumberjack, NPC is fairly knowledgable on trees. Surely, he would have noticed if such an unsteady tree had been standing so close to the village? 
He sighs and walks closer. It's a big oak and will probably take days to clean up, which means this road is out of order for now too. #background: fallen tree #left: NPC (temporary)
At this rate, it seems he can never leave this village. #background: fallen tree #left: NPC (temporary)
+ {not stay1} [Stay in village] ->stay1
+ [Go back home] ->supplies1

===supplies1===
He tries to shrug off the weird events of the day and sets his mind on his goal; leaving this village. He grabs his cart and makes up a list of supplies they need to create the life they want, one by one gathering all the things. #background: village #left: NPC (temporary)
Food he already got this morning. Sufficient clothes, maps, light cooking utensils, and that's only the start of everything they would need. #background: village #left: NPC (temporary)
+ [Continue]->SickDaughter

===SickDaughter===

A bead of sweat rolls down NPC's face. Even in the chilly autumn air he is working up a sweat. The cart seems much too heavy for the supplies he is carrying, dragging behind him like a lead weight. However, as he crests the hill, house coming into view. He knows it is all worth it to see the smiles on his families faces when they can finally set out to start a better life. #background: house #left: NPC (temporary)
A smile is not what greets him as he steps foot over the door treshold. A silence almost pressing in its urgency, followed by the sight of his daughter in bed. Sick with fever. #background: inside #right: daughter
NPC: "How did this happen? Just this morning when I left she looked fine!" #background: inside #right: daughter #left: NPC (temporary)
His wife, replacing the wet compress on their daughter's head, shakes her own. A sight of defeat and cluelessness. #background: inside #left: NPC (temporary) #right: woman
This wasn't right! He cannot just lets his kid wither away! Determined he squared his shoulders and set out. #background: inside #left: NPC (temporary)
+ [Set out to get medicine] -> GetMedicine


===GetMedicine===
His experience with the woods and their layout was what gave NPC hope. He knew he had seen a clustering of white willow trees, somewhere, at some point... Their bark could be used to brew a tea to reduce fever. Searching ferferently he combed the woods, but to no avail. Having combed the part of the woods he frequented there were only to options left. Either go deeper, into uncharted territory. Or return home, his wife would have called the doctor by now. Maybe he could provide some insight. #background: woods #left: NPC (temporary)
+ [Go home]-> Home
+ [Go deeper]-> GoDeeper1

= GoDeeper1
NPC decided to go deeper into the woods and took a couple steps. But... what if he got lost, what if he encountered a wild animal? He hard heard tales of them roaming this space. Maybe it would be best not to chance it. Rely on the expertise of the doctor. #background: dark woods #left: NPC (temporary)
+ [GO HOME]-> Home
+ [Go Deeper anyway]-> GoDeeper2

= GoDeeper2
NPC steeled his nerves and took another step. and another. and... another. and... and.. and. stopped. #background: dark woods #left: NPC (temporary)
+ [go home]-> Home
+ [NPC]-> Comment1

= Comment1
NPC: "I can't go further than this" #background: woods #left: NPC (temporary)
+ [go home]-> Home
+ [NPC]-> Comment2

= Comment2
NPC: "I CAN'T go further than this" #background: woods #left: NPC (temporary)
+ [go home]-> Home
+ [NPC]-> Comment3

= Comment3
NPC: "I CAN'T GO FURTHER THAN THIS" #background: woods #left: NPC (temporary)
+ [go home]-> Home
+ [NPC]-> CommentUS

= CommentUS
... We're really stubborn aren't we. Well no matter. Going further in would never work anyway. There is nothing else out there. If we really want to see, just change the rules of the game. Set the barrier to  "off".  We know we can. #background: woods
+ [Continue when It is done]-> BarrierOption

= BarrierOption
...Make your choice
+ [go home]-> Home
+ {barrier == "off" || barrier == "Off" || barrier == "of"|| barrier == ""|| barrier == "delete" || barrier == "Delete"} [GO. DEEPER. INTO. THE. WOODS.]-> GetHerbs

===GetHerbs===
...Very well then. #background: woods #left: NPC (temporary)

NPC wondered why he had been standing here so long, doubting. There was no reason to. He was gonna get that bark to cure his daughter! Confidentely he stepped on. Despite having never been here he knew he could trust on his navigational skills. Luckily he came upon a cluster of white willows almost immediately. Now just to get this to his daughter. #background: woods #left: NPC (temporary)
+ [go home] -> Home

===Home===
Stepping foot into his abode NPC luckily saw the doctor standing there. {GetHerbs: He quickly handed the willow bark over to his wife so she could start brewing the medicinal tea. However, before she could start the doctor stopped her.}The man told him that it was likely due to the poluted water that his daughter got sick. {GetHerbs: To brew the tea properly the water would need to be clean.}The new well should be done by now. It will provide fresh water and hopefully make sure she gets better. #background: inside #left: NPC (temporary) #right: doctor #center: woman
+ [Fetch some water from the well] -> Well

===Well===
Making the journey back again all the way to the village was tiring and NPC started thinking about how lucky he was that the well was done now. Although. The well didn't seem done when he passed by it just earlier this morning. #background: village #left: NPC (temporary)
{strange1 && strange2 && coincidence2 } ->Realisation
-> NoRealisation

===Realisation==
Something fishy was going on here. The well could never have been completed in such a short time, the strange coincedences and not to speak of how strange the villagers were acting. He was going to find out what was going on and he was going to find out NOW. marching up to the leaders house he banged on the door. #background: village #left: NPC (temporary)
Leader: "Good day! What can I help you with today?" #background: leader house #left: NPC (temporary) #right: leader
NPC: "Again? You keep saying that! I want answers about what is going on here!" #background: leader house #left: NPC (temporary) #right: leader
The leader seemed taken aback a bit at his brusk manners but the shook his head and seemed to reset himself. #background: leader house #left: NPC (temporary) #right: leader
Leader: "Answers? what do you mean? Are you quite alright? If your not well you shouldn't be up and about working yourself into such a state. You're certainly not in a state to travel" #background: leader house #left: NPC (temporary) #right: leader
NPC narrowed his eyes at the man and scoffed. #background: leader house #left: NPC (temporary) #right: leader
NPC: "So that's what this is all about then? Everyone is keeping us from leaving. Well! I am taking my family and going! I am sure the bigger city will have better medicine for my daughter anyway!" #background: leader house #left: NPC (temporary) #right: leader
He turned on his heel and walked of. The leader watching him with narrowed eyes. #background: leader house #left: NPC (temporary) #right: leader
+ [Continue] -> HomeCreepy

===HomeCreepy===
NPC, opening the door to his house, was intercepted by the doctor. #background: house #left: NPC (temporary) #right: doctor
Doctor: "I am afraid your daughter is not well enough to travell" #background: inside #left: NPC (temporary) #right: doctor
NPC, hesitantly: "How did you know I was planning on leaving right now?" #background: inside #left: NPC (temporary) #right: doctor
At that point his wife looked up hearing the commotion. #background: inside #left: NPC (temporary) #right: doctor #center: woman
Wife: "I am afraid our daughter is not well enough to travell, dear" #background: inside #left: NPC (temporary) #right: doctor #center: woman
Daughter: "I am afraid I am not well enough to travell, father" #background: inside #left: NPC (temporary) #right: daughter #center: woman
Realizing that something was very wrong, not only with the town but also his own family. NPC turned heel and ran into the forest. He was going to get out of here! No matter what. #background: inside #left: NPC (temporary)
+ [Continue] -> ForestStay
//barrier need to be down
+ {barrier == "off" || barrier == "Off" || barrier == "of"|| barrier == ""|| barrier == "delete" || barrier == "Delete"} [Continue] -> ForestLeave

===ForestStay===
He ran on deeper and deeper into the forest. The trees grew more dense, blocking out more of the sunlight and it seemed to grow darker with every step. He still pushed on. Just about as he was to cross the treshold of the part of the forest that he knew, he realized that he was running, but he was not moving. Panicked he pushed even harder, even further, but no matter what he stayed in the same place. #background: dark woods #left: NPC (temporary) 
Daughter: "Come on dad, your not just gonna leave us behind are you?" #background: dark woods #left: NPC (temporary) #right: daughter
Turning around he saw his daughter. Standing, completely fine. But it wasn't his daughter. None of this was right. In a fit of desperation he turned around and ran at her. Almost when he had reached her, he seemed to trip on nothing. and fall. #background: dark woods #left: NPC (temporary) #right: daughter
-> NormalReset

===ForestLeave===
He ran on deeper and deeper into the forest. The trees grew more dense, blocking out more of the sunlight and it seemed to grow darker with every step. He still pushed on. Beyond where he had ever been before. Deeper and deep3r. The b4@!) grew thinner and longer, (*+ves became ever %$!@ dense. Deeper and D%ep-^. *$&%@ was !%gin*^ng t) f4&*. D&%p3^ %)& @%)!-^. +&%(3^ %)& @%)!-^. +&%3^%)@%)!-^. +&     %  %)@%  ) !      - #background: dark woods
->END

===NoRealisation===
Either way, No matter the reason he was glad he would be able to help his daughter now. #background: village #left: NPC (temporary)
Walking into town square NPC saw that the well was indeed done. Quickly he ran up to it was his bucket, leaning on the edge to grab the rope. #background: well #left: NPC (temporary)
A low rumble. #background: well #left: NPC (temporary)
The ledge gave way and. #background: well #left: NPC (temporary)
He fell. #background: well
-> NormalReset

===NormalReset===
Deep down and down. Into darkness, hair whipping his face. Landing on his back with a crack. #background: well
-> END
