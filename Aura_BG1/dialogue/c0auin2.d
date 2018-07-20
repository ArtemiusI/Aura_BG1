// Runecrafting

BEGIN C0AUIN2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a0
SAY ~The artificer may craft a limited number of arcane runes per resting cycle. The artificer has a number of charges equal to <HISHER> level, and spends more charges corresponding with the level of rune crafted.~
IF ~~ + b0
END

IF ~!NumTimesTalkedTo(0)
GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ THEN BEGIN b0
SAY ~Choose a level of rune to craft:

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Level Rune~ + b1
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2) LevelGT(Lastsummonerof(Myself),4) !LevelGT(Lastsummonerof(Myself),8)~ + ~Lesser Level Rune~ + b2
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2) LevelGT(Lastsummonerof(Myself),8)~ + ~Lesser + Moderate Level Rune~ + b2
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7) LevelGT(Lastsummonerof(Myself),12)~ + ~Greater Level Rune~ + b3
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11) LevelGT(Lastsummonerof(Myself),20)~ + ~Perfect Level Rune~ + b4
END

IF ~~ b1
SAY ~Choose an element of rune to craft:

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Fire Rune (-1 charge, casts Burning Hands)~ + c0rune1a
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Ice Rune (-1 charge, casts Chill Touch)~ + c0rune1b
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Arcane Rune (-1 charge, casts Magic Missile)~ + c0rune1c
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Illusion Rune (-1 charge, casts Reflected Image)~ + c0rune1d
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Lightning Rune (-1 charge, casts Shocking Grasp)~ + c0rune1e
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Shield Rune (-1 charge, casts Shield)~ + c0rune1f
++ ~Go back~ + b0
END

IF ~~ c0rune1a
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune1b
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune1c
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune1d
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune1e
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune1f
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~1 (-1 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",1)~ + ~2 (-2 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-2) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~3 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",3)~ + ~4 (-4 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-4) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~5 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ b2
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Fire Rune (-3 charge, casts Agannazar's Scorcher)~ + c0rune2a
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Strength Rune (-3 charge, casts Strength)~ + c0rune2b
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Illusion Rune (-3 charge, casts Blur)~ + c0rune2c
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Dust Rune (-3 charge, casts Glitterdust)~ + c0rune2d
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Fire Rune (-5 charge, casts Fireball)~ + c0rune2e
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Lightning Rune (-5 charge, casts Lightning Bolt)~ + c0rune2f
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Time Rune (-5 charge, casts Slow)~ + c0rune2g
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Illusion Rune (-5 charge, casts Invisibility, 10' radius)~ + c0rune2h
++ ~Go back~ + b0
END

IF ~~ c0rune2a
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~1 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",5)~ + ~2 (-6 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-6) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",8)~ + ~3 (-9 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-9) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~4 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~5 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2b
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~1 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",5)~ + ~2 (-6 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-6) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",8)~ + ~3 (-9 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-9) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~4 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~5 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2c
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~1 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",5)~ + ~2 (-6 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-6) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",8)~ + ~3 (-9 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-9) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~4 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~5 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2d
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~1 (-3 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",5)~ + ~2 (-6 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-6) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",8)~ + ~3 (-9 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-9) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~4 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~5 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2e
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~1 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",9)~ + ~2 (-10 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-10) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~3 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",19)~ + ~4 (-20 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-20) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",24)~ + ~5 (-25 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-25) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2f
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~1 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",9)~ + ~2 (-10 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-10) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~3 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",19)~ + ~4 (-20 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-20) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",24)~ + ~5 (-25 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-25) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2g
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~1 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",9)~ + ~2 (-10 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-10) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~3 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",19)~ + ~4 (-20 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-20) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",24)~ + ~5 (-25 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-25) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune2h
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~1 (-5 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",9)~ + ~2 (-10 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-10) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",14)~ + ~3 (-15 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-15) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",19)~ + ~4 (-20 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-20) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",24)~ + ~5 (-25 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-25) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ b3
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Fire Rune (-8 charge, casts Fireshield: Red)~ + c0rune3a
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Earth Rune (-8 charge, casts Stoneskin)~ + c0rune3b
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Arcane Rune (-8 charge, casts Minor Globe of Invulnerability)~ + c0rune3c
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Illusion Rune (-8 charge, casts Improved Invisibility)~ + c0rune3d
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Scrying Rune (-8 charge, casts Farsight)~ + c0rune3e
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Shield Rune (-8 charge, casts Spirit Armor)~ + c0rune3f
++ ~Go back~ + b0
END

IF ~~ c0rune3a
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune3b
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune3c
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune3d
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune3e
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune3f
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~1 (-8 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",15)~ + ~2 (-16 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-16) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~3 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",31)~ + ~4 (-32 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-32) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",39)~ + ~5 (-40 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-40) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),5,5,5) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ b4
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Fire Rune (-12 charge, casts Sunfire)~ + c0rune4a
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Ice Rune (-12 charge, casts Cone of Cold)~ + c0rune4b
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Arcane Rune (-12 charge, casts Breach)~ + c0rune4c
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Scrying Rune (-12 charge, casts Oracle)~ + c0rune4d
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Shield Rune (-12 charge, casts Spell Immunity)~ + c0rune4e
++ ~Go back~ + b0
END

IF ~~ c0rune4a
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~1 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~2 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune4a",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",35)~ + ~3 (-36 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-36) GiveItemCreate("c0rune4a",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",47)~ + ~4 (-48 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-48) GiveItemCreate("c0rune4a",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune4b
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~1 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~2 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune4b",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",35)~ + ~3 (-36 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-36) GiveItemCreate("c0rune4b",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",47)~ + ~4 (-48 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-48) GiveItemCreate("c0rune4b",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune4c
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~1 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~2 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune4c",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",35)~ + ~3 (-36 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-36) GiveItemCreate("c0rune4c",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",47)~ + ~4 (-48 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-48) GiveItemCreate("c0rune4c",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune4d
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~1 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~2 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune4d",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",35)~ + ~3 (-36 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-36) GiveItemCreate("c0rune4d",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",47)~ + ~4 (-48 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-48) GiveItemCreate("c0rune4d",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END

IF ~~ c0rune4e
SAY ~How many?

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~1 (-12 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",23)~ + ~2 (-24 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-24) GiveItemCreate("c0rune4e",Lastsummonerof(Myself),2,2,2) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",35)~ + ~3 (-36 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-36) GiveItemCreate("c0rune4e",Lastsummonerof(Myself),3,3,3) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",47)~ + ~4 (-48 charge)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-48) GiveItemCreate("c0rune4e",Lastsummonerof(Myself),4,4,4) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE") StartDialogueNoSet(Lastsummonerof(Myself))~ EXIT
END
