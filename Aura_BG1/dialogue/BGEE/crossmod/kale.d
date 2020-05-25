// Aura-Kale 1
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossAuraKale","LOCALS",0)~ THEN X3KaleB KaleAuraBanter1
@0 // ~Soooo. You got big sisters?~
DO ~SetGlobal("CrossAuraKale","LOCALS",1)~
== BC0Aura @1 // ~Me? Yep, I've got two. Juno and Luna.~
== X3KaleB @2 // ~They both as cute as you, or are you just particularly blessed?~
== BC0Aura @3 // ~Oh, Luna wouldn't like to hear you say that. Everyone's always called her the prettiest in her family. She's the one who gives me beauty tips.~
== X3KaleB @4 // ~And a fair job she's done. Hey, you want to hear about the time when I killed those three ogre mages with just the knife strapped to my boot?~
== BC0Aura @5 // ~You've told me that story already, Kale.~
== X3KaleB @6 // ~What about when I punched out a wyvern after jumping on its back?~
== BC0Aura @7 // ~Yes, that too. My grandmother did something like that too, only with less punching.~
== X3KaleB @8 // ~Hmm. I don't think I've told you about when I—~
== BC0Aura @9 // ~Took down a basilisk with your eyes shut after sneezing on it? That was funny.~
== X3KaleB @10 // ~Damn. Your memory's too sharp for me. I'm running out of stories to try and impress you with.~
EXIT 

// Aura-Kale 2
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossAuraKale","LOCALS",1)~ THEN X3KaleB KaleAuraBanter2
@11 // ~Hey, Aura. What about your other sister, eh? You didn't tell me about her yet.~
DO ~SetGlobal("CrossAuraKale","LOCALS",2)~
== BC0Aura @12 // ~Juno? She's the greatest big sister you could have. Strong and caring at the same time.~
== X3KaleB @13 // ~Sounds like the best kind of girl. I'd like a chance to say hello. Maybe bring some flowers.~
== BC0Aura @14 // ~I don't think you know what you're saying, Kale... I'm not sure she'd appreciate your type of humor.~
== X3KaleB @15 // ~Aww, come on. What's the worst that could happen?~
== BC0Aura @16 // ~There was this one time, one of the local craftsmen had a bit too much to drink at a party and hassled Luna and me. Juno's face didn't move at all, but she just took her bow and, um, shot him in the... rear.~
== X3KaleB @17 // ~Ouch.~
== BC0Aura @18 // ~Yep. I wouldn't like to see what she could do if you said anything she didn't like.~
== X3KaleB @19 // ~That's a either a dealbreaker or a dealmaker in my books. I'll just wait until I'm sure which one it is.~
EXIT 