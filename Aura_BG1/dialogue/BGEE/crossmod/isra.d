CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("rh#Isra")
See("rh#Isra")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura1","GLOBAL",0)~ THEN BC0AURA isra-aura1
~Is that Calishite cerise that you’re wearing, Isra? It’s a popular cosmetic in Lantan, too.~
DO ~IncrementGlobal("rh#IsraAura1","GLOBAL",1)~
== BRH#ISRA ~Aye, it is. ‘Tis an overt sign of vanity, mayhap, but it has always been one of my favorites.~
== BC0AURA ~I think it looks lovely on your eyes. I’ve tried it myself, but the color’s too deep for me, and it smudges so easily compared to the type I use.~
== BRH#ISRA ~Truly, Aura, I dare say that lavender is a better color for you regardless... that is of eastern origin, if I recall?~
== BC0AURA ~It’s Shou. Actually, I was told the color is orchid—“lanzi-cai”... oh, I probably mangled the pronunciation. It’s nothing elegant, though. I bargained for it with a trader while travelling back along the Golden Way. It was hard when I barely knew how to count to ten in her language.~
== BRH#ISRA ~'Tis a humble enough color, but you wear it well. Given your complexion, I would say that it's quite the flawless choice, really.~
== BC0AURA ~Is it? I always thought I was just smearing it on so I could seem a little more ladylike. It’s rather pretentious, I know, but I can’t help it!~
== BRH#ISRA ~I could use many words to describe you, Aura, but never ‘pretentious’. If you wish to appear more ladylike, however, I think I could assist in that—your features are rather elegant, so it would not be difficult.~
== BC0AURA ~Oh, you would? I was too afraid to ask, but... yes, absolutely!~
EXIT

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura2","GLOBAL",0)~ THEN BRH#ISRA isra-aura2
~The wonders of Lantanese artisans never ceases to amaze... I'm often left curious as to what other gifts they have to offer. Truly, ‘tis a pity that your folk have chosen to isolate themselves.~
DO ~IncrementGlobal("rh#IsraAura2","GLOBAL",1)~
== BC0AURA ~I wish it could be otherwise... but our elders decided long ago that sharing our knowledge would only cause more conflict in the Realms. Nobody would want that on their hands... I don't like it, but I understand.~
== BRH#ISRA ~And yet there is much good that could be accomplished as well with such talent, when it comes from a pure heart like yours.~
== BC0AURA ~Aw, you’re making me blush, Isra... everyone back home has always expected great things from me, but it’s embarrassing for me to think that I could have that much influence over the world.~
== BRH#ISRA ~There is no shame in striving for a better world, Aura, and truly, I believe that is what you desire.~
== BC0AURA ~*giggle* Maybe you know me better than I do. I tend to be confused by my own feelings sometimes. Thank you for encouraging me.~
EXIT

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura3","GLOBAL",0)~ THEN BRH#ISRA isra-aura3
~Aura, if I may... there is one small thing that concerns me, though I'm not certain my question is entirely tactful.~
DO ~IncrementGlobal("rh#IsraAura3","GLOBAL",1)~
== BC0AURA ~I don’t mind if you ask, Isra. I know you’re not the type to upset anyone.~
== BRH#ISRA ~'Tis clear enough that glory and wealth don't attract you overmuch, and yet... forgive me for saying so, but I was curious as to what drove you to adventure instead of a safer life.~
== BC0AURA ~I might have inherited a bit of my grandmother’s wanderlust. The world across the Trackless Sea seemed so full of mystery... I wanted to find the knowledge I couldn’t learn simply through studying in Lantan.~
== BRH#ISRA ~There is nothing wrong in that, I suppose. Still, I find it somewhat troubling for one of your nation’s most brilliant minds to actively choose such a dangerous life.~
== BC0AURA ~I do seem a little irresponsible when you put it that way, don’t I?~
== BRH#ISRA ~No, that is not what I—~
== BC0AURA ~It’s okay. I’ve thought about it too, what would happen if I died before I returned home and shared everything I’ve learned... but I guess it’s just a weakness of mine.~
== BRH#ISRA ~A weakness?~
== BC0AURA ~I’ve always jumped at a chance to learn more, no matter how risky it can be. Sometimes I go a little too far, and I make some dangerous mistakes along the way. It’s just... I can’t ever stand the feeling of being a burden. I’m already not the strongest person, and the last thing I want is to be helpless to support anybody from a lack of knowledge.~
== BRH#ISRA ~I... see. ‘Twould be insensitive of me to discourage you in any way, then, now that I understand you better.~
== BC0AURA ~I don’t mind, Isra. It’s kind of your to be concerned, even though I’ve caused you no end of trouble for having to take care me all the time.~
== BRH#ISRA ~*laugh* Not at all. I am more than happy to be of service, whenever it is needed.~
EXIT