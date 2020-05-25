// Aura-Emily 1
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",0)~ THEN X3milyB emily-aura0
@0 //~Do you have any siblings Aura?~
DO ~SetGlobal("CrossEmilAura","LOCALS",1)~
== BC0Aura @1 // ~Oh, I do. Five. There's Luna, Juno, Eridanus, and the twins, Filo and Lita.~
== X3milyB @2 // ~Five?! How in the world do you all get along?~
== BC0Aura @3 // ~Well we had our minor scuffles. My sister Luna poked fun at me sometimes, but we always looked out for eachother.~
== X3milyB @4 // ~I have only one, and I can't say we are on the sort of terms where we'd say I love you with a straight face. Not that I don't love him, it's just...well infighting.~
== X3milyB @5 // ~But you have five, and still get along. I admire that. Maybe there's hope for me.~
== BC0Aura @6 // ~I think if you try, and talk it out from the heart, you might find things click just like two gears spinning together in synch.~
== X3milyB @7 // ~When I return home, maybe I'll try that. But I have a feeling one conversation just won't do it.~
EXIT 

// Aura-Emily 2
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",1)~ THEN X3milyB emily-aura1
@8//~Aura, your Sunshooter is the most amazing piece of fletchery I have ever seen. And your arrows... those healing arrows and... erm, the other ones, what was the word?~
DO ~SetGlobal("CrossEmilAura","LOCALS",2)~
== BC0Aura @9 //~Ehehe, you mean my lightning arrows? They're designed to release energized pulses that magnetize their targets... um, in simpler terms, it means it draws metal objects towards it.~
== X3milyB @10 //~Who would even think of those great ideas? The closest I ever got was... well, I never really got close to anything original without using a bit of magic. I'm a bit jealous.~
== BC0Aura @11 //~It's all in finding the right materials and components. I wouldn't be able to make any of my designs work without them.~
== X3milyB @12 // ~Really? Maybe you could teach me, then. And I could show you a few tips regarding archery.~
== BC0Aura @13 //~Hmm, that'd be nice... but I'm not sure, Emily. I'm still closer to a student than a teacher—I've never even tried tutoring anyone!~
== X3milyB @14 //~Oh, give it a chance. I'm usually a great student, as long as <CHARNAME> doesn't make us march until we're dead tired before we get to have a lesson.~
== BC0Aura @15 // ~You think so? I don't see the harm in trying, at least! But, um, I'd like to learn some things from *you*, too, if you don't mind. I've been trying to work on my marksmanship, and I could use some pointers.~
== X3milyB @16 //~It's a deal, then. I can't wait!~
EXIT

// Aura-Emily 3
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",2)~ THEN X3milyB emily-aura2
@17 //~Well, I think that after accidentally shocking myself, and getting the fifth bruise on my fingers... there's not much hope for me to get the hang of your craft, Aura.~
DO ~SetGlobal("CrossEmilAura","LOCALS",3)~
== BC0Aura @18 //~I was worried it'd be too difficult... I really tried, Emily, but I haven't got much experience in teaching. Maybe I'm not cut out for it.~
== X3milyB @19 //~Oh, I don't think its like that. You've been doing this for years, and have a brilliant mind at that. It's silly for me to think I can pick it up so quickly.~
== BC0Aura @20 //~I'm sorry... it makes me feel worse that you've been giving me tips on improving my aim, and I haven't been able to give you anything in return.~
== X3milyB @21 //~That's okay! At least this experience has made the two of us better friends.~
== BC0Aura @22 //~Aw, well... if that's the case, then I'm—hey! What's with the head patting?~
== X3milyB @23 //~Oh, sorry... your concern was just so cute!~
EXIT