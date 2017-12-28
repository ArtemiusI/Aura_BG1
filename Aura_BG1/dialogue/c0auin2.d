// Runecrafting

BEGIN C0AUIN2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a0
SAY ~The artificer may craft a limited number of arcane runes per resting cycle. The artificer has a number of charges equal to <HISHER> level, and spends more charges corresponding with the level of rune crafted.~
IF ~~ + b0
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN b0
SAY ~Choose a level of rune to craft:

Remaining charges: <C0AU_RUNE>~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Level Rune~ + b1
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2) LevelGT(Lastsummonerof(Myself),4) !LevelGT(Lastsummonerof(Myself),8)~ + ~Lesser Level Rune~ + b2
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2) LevelGT(Lastsummonerof(Myself),8)~ + ~Lesser + Moderate Level Rune~ + b2
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7) LevelGT(Lastsummonerof(Myself),12)~ + ~Greater Level Rune~ + b3
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11) LevelGT(Lastsummonerof(Myself),20)~ + ~Perfect Level Rune~ + b4
END

IF ~~ b1
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Fire Rune (-1 charge, casts Burning Hands)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Ice Rune (-1 charge, casts Chill Touch)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Arcane Rune (-1 charge, casts Magic Missile)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Illusion Rune (-1 charge, casts Reflected Image)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Lightning Rune (-1 charge, casts Shocking Grasp)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",0)~ + ~Minor Shield Rune (-1 charge, casts Shield)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-1) GiveItemCreate("c0rune1f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
++ ~Go back~ + b0
END

IF ~~ b2
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Fire Rune (-3 charge, casts Agannazar's Scorcher)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Strength Rune (-3 charge, casts Strength)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Illusion Rune (-3 charge, casts Blur)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",2)~ + ~Lesser Dust Rune (-3 charge, casts Glitterdust)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-3) GiveItemCreate("c0rune2d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Fire Rune (-5 charge, casts Fireball)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Lightning Rune (-5 charge, casts Lightning Bolt)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Time Rune (-5 charge, casts Slow)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2g",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~LevelGT(Lastsummonerof(Myself),8) GlobalGT("C0ArtificerRuneCount","LOCALS",4)~ + ~Illusion Rune (-5 charge, casts Invisibility, 10' radius)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-5) GiveItemCreate("c0rune2h",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
++ ~Go back~ + b0
END

IF ~~ b3
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Fire Rune (-8 charge, casts Fireshield: Red)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Earth Rune (-8 charge, casts Stoneskin)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Arcane Rune (-8 charge, casts Minor Globe of Invulnerability)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Illusion Rune (-8 charge, casts Improved Invisibility)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Scrying Rune (-8 charge, casts Farsight)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",7)~ + ~Greater Shield Rune (-8 charge, casts Spirit Armor)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-8) GiveItemCreate("c0rune3f",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
++ ~Go back~ + b0
END

IF ~~ b4
SAY ~Choose an element of rune to craft:~
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Fire Rune (-12 charge, casts Sunfire)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4a",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Ice Rune (-12 charge, casts Cone of Cold)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4b",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Arcane Rune (-12 charge, casts Breach)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4c",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Scrying Rune (-12 charge, casts Oracle)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4d",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
+ ~GlobalGT("C0ArtificerRuneCount","LOCALS",11)~ + ~Perfect Shield Rune (-12 charge, casts Spell Immunity)~ DO ~IncrementGlobal("C0ArtificerRuneCount","LOCALS",-12) GiveItemCreate("c0rune4e",Lastsummonerof(Myself),1,1,1) SetTokenGlobal("C0ArtificerRuneCount", "LOCALS", "C0AU_RUNE")~ EXIT
++ ~Go back~ + b0
END