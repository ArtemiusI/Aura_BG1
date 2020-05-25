// Helga-Aura 
CHAIN IF ~InParty("X3Helga")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossAuraHelga","LOCALS",0)~ THEN X3HelgaB HelgaAura1
~Bloody hell lass, why are you constantly doing all of that tinkering? A proper fight is done up close and personal with a lot of blood, not...what even is that?.~
DO ~SetGlobal("CrossAuraHelga","LOCALS",1)~
== BC0Aura ~Oh, this contraption? This is something new I'm experimenting with. It captures a sonic pulse and-~
== X3HelgaB ~None of that gibberish now, girl. You've got the smarts, but it got no place in the battlefield. You may as well be bringing in a cooking ladle to swing at an ogre's behind.~
== BC0Aura ~It may seem a bit unusual to you, but this is how I contribute best.~
== X3HelgaB ~You're a smart lass, and a fine one too. Got as good of a heart as my children. But I'll say I'll never get quite comfortable with yer way of doing things.~
== BC0Aura ~Wait, don't the dwarves have runemasters, those who can turn essence into workable magic?~
== X3HelgaB ~Aye. Golem crafters too, in the larger halls, and ruins...Pah, I suppose it be more respectable than I give it credit for. Forgive me, maybe I'm set in my ways.~
== BC0Aura ~You are just trying to look out for me. I appreciate it.~
EXIT