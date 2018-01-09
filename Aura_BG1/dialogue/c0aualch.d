// Alchemy / Crafting
BEGIN C0AUALCH

IF ~True()~ THEN BEGIN alchemy
SAY ~What do you wish to create?

(Note: Alchemy is significantly more expensive in the wild!)~
+ ~!Global("C0AUIN5","GLOBAL",1)~ + ~Potions~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aualc1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1)~ + ~Standard Potions~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aualc1",LastTalkedToBy(Myself))~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1) Global("C0AdvancedAlchemy","LOCALS",0)~ + ~Advanced Potions~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aualc3",LastTalkedToBy(Myself))~ EXIT
+ ~OR(2)
GlobalGT("Chapter","GLOBAL",7)
GlobalGT("C0AuraQuest","GLOBAL",8)~ + ~Explosives~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aualc2",LastTalkedToBy(Myself))~ EXIT
END