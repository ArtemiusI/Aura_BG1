// Craft Wand

BEGIN C0AUIN4

IF ~True()~ THEN BEGIN a0
SAY ~Choose the type of wand to craft:~
++ ~Wand of Fire (5 charges)~ DO ~GiveItemCreate("wand05",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Frost (5 charges)~ DO ~GiveItemCreate("wand06",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Lightning (5 charges)~ DO ~GiveItemCreate("wand07",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Paralyzation (5 charges)~ DO ~GiveItemCreate("wand04",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Polymorphing (5 charges)~ DO ~GiveItemCreate("wand09",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of the Heavens (5 charges)~ DO ~GiveItemCreate("wand11",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Cloudkill (5 charges)~ DO ~GiveItemCreate("wand13",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Spell Striking (2 charges)~ DO ~GiveItemCreate("wand18",Lastsummonerof(Myself),5,5,5) DestroySelf()~ EXIT
++ ~Wand of Cursing (2 charges)~ DO ~GiveItemCreate("wand19",Lastsummonerof(Myself),2,2,2) DestroySelf()~ EXIT
++ ~Wand of Wonder (2 charges)~ DO ~GiveItemCreate("wand12",Lastsummonerof(Myself),2,2,2) DestroySelf()~ EXIT
++ ~Rod of Resurrection (1 charge)~ DO ~GiveItemCreate("rods03",Lastsummonerof(Myself),1,1,1) DestroySelf()~ EXIT
END