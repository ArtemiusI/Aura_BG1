// Aura-Emily 1
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",1)~ THEN X3milyB emily-aura1
~Aura, your Sunshooter is the most amazing piece of fletchery I have ever seen. And your arrows... those healing arrows and... erm, the other ones, what was the word?~
DO ~SetGlobal("CrossEmilAura","LOCALS",2)~
== BC0Aura ~Ehehe, you mean my lightning arrows? They're designed to release energized pulses that magnetize their targets... um, in simpler terms, it means it draws metal objects towards it.~
== X3milyB ~Who would even think of those great ideas? The closest I ever got was... well, I never really got close to anything original without using a bit of magic. I'm a bit jealous.~
== BC0Aura ~It's all in finding the right materials and components. I wouldn't be able to make any of my designs work without them.~
== X3milyB ~Really? Maybe you could teach me, then. And I could show you a few tips regarding archery.~
== BC0Aura ~Hmm, that'd be nice... but I'm not sure, Emily. I'm still closer to a student than a teacher—I've never even tried tutoring anyone!~
== X3milyB ~Oh, give it a chance. I'm usually a great student, as long as <CHARNAME> doesn't make us march until we're dead tired before we get to have a lesson.~
== BC0Aura ~You think so? I don't see the harm in trying, at least! But, um, I'd like to learn some things from *you*, too, if you don't mind. I've been trying to work on my marksmanship, and I could use some pointers.~
== X3milyB ~It's a deal, then. I can't wait!~
EXIT

// Aura-Emily 2
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",2)~ THEN X3milyB emily-aura2
~Well, I think that after accidentally shocking myself, and getting the fifth bruise on my fingers... there's not much hope for me to get the hang of your craft, Aura.~
DO ~SetGlobal("CrossEmilAura","LOCALS",3)~
== BC0Aura ~I was worried it'd be too difficult... I really tried, Emily, but I haven't got much experience in teaching. Maybe I'm not cut out for it.~
== X3milyB ~Oh, I don't think its like that. You've been doing this for years, and have a brilliant mind at that. It's silly for me to think I can pick it up so quickly.~
== BC0Aura ~I'm sorry... it makes me feel worse that you've been giving me tips on improving my aim, and I haven't been able to give you anything in return.~
== X3milyB ~That's okay! At least this experience has made the two of us better friends.~
== BC0Aura ~Aw, well... if that's the case, then I'm—hey! What's with the head patting?~
== X3milyB ~Oh, sorry... your concern was just so cute!~
EXIT