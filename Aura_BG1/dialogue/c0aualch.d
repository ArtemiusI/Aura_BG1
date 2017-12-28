// Alchemy / Crafting
BEGIN C0AUALCH

IF ~True()~ THEN BEGIN alchemy
SAY ~What do you wish to create?~
+ ~!Global("C0AUIN5","GLOBAL",1)~ + ~Potions~ + potions
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","GLOBAL",1)~ + ~Standard Potions~ + potions
+ ~Global("C0AUIN5","GLOBAL",1) Global("C0AdvancedAlchemy","LOCALS",0)~ + ~Advanced Potions~ + hlapotions
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1)
OR(2)
GlobalGT("Chapter","GLOBAL",7)
GlobalGT("C0AuraQuest","GLOBAL",4)~ + ~Explosives~ + explosives
END

// POTIONS

IF ~~ potions
SAY ~Choose the type of potion to create:~
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) !LevelGT(Lastsummonerof(Myself),9)~ + ~Potion of Healing~ + potn08
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)
!LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Extra Healing~ + potn52
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Superior Healing~ + potn55
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Antidote~ + potn20
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Potion of Invisibility~ + potn10
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Potion of Fire Resistance~ + potn02
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Potion of Cold Resistance~ + potn22
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)~ + ~Potion of Perception~ + potn39
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)~ + ~Oil of Speed~ + potn14
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)~ + ~Potion of Clarity~ + potn21
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)~ + ~Potion of Defense~ + potn24
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),9)~ + ~Potion of Magic Blocking~ + potn33
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Invulnerability~ + potn11
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Magic Resistance~ + potn34
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Power~ + potn41
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Magic Shielding~ + potn35
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Frost Giant Strength (Rogues)~ + potn56
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0) LevelGT(Lastsummonerof(Myself),19)~ + ~Potion of Frost Giant Strength (Warriors)~ + potn04
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Go back~ + alchemy
++ ~End~ DO ~DestroySelf()~ EXIT
END

IF ~~ potn08
SAY ~How many Potions of Healing?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn08",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn08",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn08",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn52
SAY ~How many Potions of Extra Healing?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn52",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn52",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn52",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn55
SAY ~How many Potions of Superior Healing?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn55",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn55",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn55",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn20
SAY ~How many Antidotes?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn20",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn20",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn20",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn10
SAY ~How many Potions of Invisibility?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn10",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn10",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn10",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn02
SAY ~How many Potions of Fire Resistance?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn02",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn02",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn02",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn22
SAY ~How many Potions of Cold Resistance?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn22",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn22",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn22",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn39
SAY ~How many Potions of Perception?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn39",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn39",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn39",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn14
SAY ~How many Oils of Speed?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn14",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn14",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn14",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn21
SAY ~How many Potions of Clarity?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn21",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn21",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn21",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn24
SAY ~How many Potions of Defense?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn24",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn24",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn24",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn33
SAY ~How many Potions of Magic Blocking?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn33",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn33",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn33",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn11
SAY ~How many Potions of Invulnerability?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn11",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn11",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn11",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn34
SAY ~How many Potions of Magic Resistance?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn34",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn34",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn34",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn41
SAY ~How many Potions of Power?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn41",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn41",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn41",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn35
SAY ~How many Potions of Magic Shielding?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn35",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn35",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn35",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn56
SAY ~How many Potions of Frost Giant Strength (Rogue)?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn56",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn56",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn56",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ potn04
SAY ~How many Potions of Frost Giant Strength (Warrior)?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-1) GiveItemCreate("potn04",Lastsummonerof(Myself),1,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",2)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-3) GiveItemCreate("potn04",Lastsummonerof(Myself),3,0,0)~ + done
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) GiveItemCreate("potn04",Lastsummonerof(Myself),5,0,0)~ + done
++ ~Go back~ + potions
END

IF ~~ done
SAY ~Potion created.~
IF ~~ + potions
END

// EXPLOSIVES

IF ~~ explosives
SAY ~Choose the type of explosive to create:

(Note: Explosives take twice as many resources as potions):~
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1)~ + ~Green Flaming Oil~ + c0abomb1
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1)~ + ~White Flashbomb~ + c0abomb2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1)~ + ~Spiked Bomb~ + c0abomb3
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),11)~ + ~Sulphur Bomb~ + c0abomb4
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),13)~ + ~Crimson Smoke Canister~ + c0abomb5
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),15)~ + ~Adhesive Bomb~ + c0abomb6
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),17)~ + ~Corrosive Bomb~ + c0abomb7
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),19)~ + ~Dread Flame Bomb~ + c0abomb8
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",1) LevelGT(Lastsummonerof(Myself),21)~ + ~Yin-Yang Bomb~ + c0abomb9
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",3) GlobalGT("C02AuraVoidstone","GLOBAL",0) !Global("Specialized","LOCALS",1)~ + ~Specialized: Screaming Void~ + c0abomba
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Go back~ + alchemy
++ ~End~ DO ~DestroySelf()~ EXIT
END

IF ~~ c0abomb1
SAY ~How many flasks of Green Flaming Oil?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb1",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb1",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb1",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb2
SAY ~How many White Flashbombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb2",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb2",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb2",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb3
SAY ~How many Spiked Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb3",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb3",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb3",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb4
SAY ~How many Sulphur Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb4",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb4",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb4",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb5
SAY ~How many Crimson Smoke Canisters?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb5",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb5",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb5",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb6
SAY ~How many Adhesive Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb6",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb6",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb6",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb7
SAY ~How many Corrosive Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb7",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb7",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb7",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb8
SAY ~How many Dread Flame Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb8",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb8",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb8",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomb9
SAY ~How many Yin-Yang Bombs?~
++ ~One~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-2) GiveItemCreate("c0abomb9",Lastsummonerof(Myself),1,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",5)~ + ~Three~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-6) GiveItemCreate("c0abomb9",Lastsummonerof(Myself),3,0,0)~ + done2
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",9)~ + ~Five~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-10) GiveItemCreate("c0abomb9",Lastsummonerof(Myself),5,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ c0abomba
SAY ~Only one Specialized Explosive may be crafted per session.

(Note: Specialized Explosives take four times as many resources as potions)~
++ ~Craft Screaming Void.~ DO ~SetGlobal("Specialized","LOCALS",1) IncrementGlobal("C0ArtificerAlchemy","LOCALS",-4) GiveItemCreate("c0abomba",Lastsummonerof(Myself),1,0,0)~ + done2
++ ~Go back~ + explosives
END

IF ~~ done2
SAY ~Explosive created.~
IF ~~ + explosives
END

// HLA POTIONS

IF ~~ hlapotions
SAY ~Choose the type of potion to create. Advanced Potions:
   - Require five times as many resources to craft.
   - Can only be crafted once per session.~
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","LOCALS",1)~ + ~Potion of Divine Might~ + c0potn01
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","LOCALS",1)~ + ~Potion of Complete Healing~ + c0potn02
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","LOCALS",1)~ + ~Potion of True Sight~ + c0potn03
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","LOCALS",1)~ + ~Potion of Hardiness~ + c0potn04
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",4) Global("C0AUIN5","LOCALS",1) Global("C0ArtificerMastery","GLOBAL",0)~ + ~Potion of Ultimate Mastery (only once)~ + c0potn05
+ ~GlobalGT("C0ArtificerAlchemy","LOCALS",0)~ + ~Go back~ + alchemy
++ ~End~ DO ~DestroySelf()~ EXIT
END

IF ~~ c0potn01
SAY ~Potions of Divine Might increase the imbiber's Strength, Dexterity and Constitution by four points each for ten rounds.~
++ ~Craft potion.~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) SetGlobal("C0AdvancedAlchemy","LOCALS",1) GiveItemCreate("c0potn01",Lastsummonerof(Myself),1,0,0)~ + done3
++ ~Go back~ + hlapotions
END

IF ~~ c0potn02
SAY ~Potions of Complete Healing are the ultimate healing potion, fully restoring the imbiber's hit points and curing all diseases, poisons and mental injuries.~
++ ~Craft potion.~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) SetGlobal("C0AdvancedAlchemy","LOCALS",1) GiveItemCreate("c0potn02",Lastsummonerof(Myself),1,0,0)~ + done3
++ ~Go back~ + hlapotions
END

IF ~~ c0potn03
SAY ~Potions of True Sight allow the imbiber to see through and dispel all illusions in their line of sight for ten rounds.~
++ ~Craft potion.~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) SetGlobal("C0AdvancedAlchemy","LOCALS",1) GiveItemCreate("c0potn03",Lastsummonerof(Myself),1,0,0)~ + done3
++ ~Go back~ + hlapotions
END

IF ~~ c0potn04
SAY ~Potions of Hardiness toughen the imbiber's skin to the hardness of steel, providing 40% resistance to physical damage for ten rounds.~
++ ~Craft potion.~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) SetGlobal("C0AdvancedAlchemy","LOCALS",1) GiveItemCreate("c0potn04",Lastsummonerof(Myself),1,0,0)~ + done3
++ ~Go back~ + hlapotions
END

IF ~~ c0potn05
SAY ~A Potion of Ultimate Mastery permanently enhances the imbiber's skills in their chosen profession.
   - Mages and Bards gain +1 to Intelligence.
   - Clerics and Druids gain +1 to Wisdom.
   - Thieves and Monks gain +1 to Dexterity.
   - Fighters, Rangers and Paladins gain +1 to Strength.
   - Sorcerers and Shamans gain +1 to Constitution.
   - Spellcasting classes take precedence over other classes.
   - Arcane classes take precedence over divine classes.
   
This potion can only ever be crafted once.~
++ ~Craft potion.~ DO ~IncrementGlobal("C0ArtificerAlchemy","LOCALS",-5) SetGlobal("C0ArtificerMastery","GLOBAL",1) GiveItemCreate("c0potn05",Lastsummonerof(Myself),1,0,0)~ + done3
++ ~Go back~ + hlapotions
END

IF ~~ done3
SAY ~Potion created.~
IF ~~ + hlapotions
END