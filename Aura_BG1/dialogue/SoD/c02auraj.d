BEGIN C02AURAJ

CHAIN IF ~Global("C02AuraTalk","GLOBAL",2)~ THEN C0AURAJ t1
~~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",3)~ THEN C0AURAJ t2
~Can I ask you something, <CHARNAME>? Do you... feel confident in yourself as a leader?~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",6)~ THEN C0AURAJ t3
~Let's see... comfrey, elderberries, lemongrass... don't have that, a dash of ginger will have to do... oh, and I'll throw in some mint as well, why not.~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",8)~ THEN C0AURAJ t4
~I wonder how the family's doing back home. It's been years since I've seen them.~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",10)~ THEN C0AURAJ t5
~Th-this place is creepy... I'm not sure if you can see it given how dark it is, but I'm quivering in my boots here.~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",12)~ THEN C0AURAJ t6
~You know, I never thought I'd say this about war and fighting, but I'm actually... starting to have fun. A lot of fun, in fact. Isn't that strange?~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",14)~ THEN C0AURAJ t7
~I just wanted to say thanks, <CHARNAME>.~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",16)~ THEN C0AURAJ t8
~We're... we're really going to jump into that portal into the Hells, aren't we? This isn't all some big nightmare?~
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",2700)~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////INTERJECTIONS//////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// Ammon

INTERJECT BDAMMON 0 C0AuraBDAMMON0
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Those sound like components for some sort of revealing potion. I wonder what she needs it for...~
EXTERN BDAMMON 1

// Andrus

I_C_T BDANDRUS 3 C0AuraBDANDRUS
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooooh, this is bad. Residue like that can't be stabilized quickly, not without magical aid. And there's no safe way to dispose of it...~
END

// Belegarm

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",2)~ THEN BDBELEGA belegarm.trollbane
~That gnome girl... the one from Lantan, told me about the trollslayer arrows she's been making. I wager we'll be able to restock twenty of them every day or so.~
DO ~AddStoreItem("bdbelega","c0auaro4",20,6)
SetGlobal("C02AuraTrollbaneArrow","GLOBAL",3)~
= ~I've got a few alchemists concocting the trollbane poison, but you'll have to reimburse me for the expenses. They'll be three thousand gold for the lot.~
COPY_TRANS BDBELEGA 1

EXTEND_TOP BDBELEGA 1
+ ~GlobalTimerExpired("C02AuraTrollbaneTimer","GLOBAL")
PartyGoldGT(2999)~ + ~I'd like to buy twenty trollbane arrows.~ DO ~SetGlobalTimer("C02AuraTrollbaneTimer","GLOBAL",ONE_DAY) GiveItemCreate("c0auaro4",Lasttalkedtoby(Myself),20,0,0) TakePartyGold(3000)~ EXTERN BDBELEGA belegarm.trollbane2
+ ~GlobalTimerExpired("C02AuraTrollbaneTimer","GLOBAL")
!PartyGoldGT(2999)~ + ~I'd like to buy twenty trollbane arrows.~ EXTERN BDBELEGA belegarm.trollbane3
END

CHAIN BDBELEGA belegarm.trollbane2
~One score of trollbane arrows for you. That'll be three thousand gold.~
= ~Anything else you want?~
COPY_TRANS BDBELEGA 1

CHAIN BDBELEGA belegarm.trollbane3
~You haven't got three thousand gold on you at the moment. Come back when you've got the gold. Otherwise, stop wasting my time.~
COPY_TRANS BDBELEGA 1

// Bellowgulp

I_C_T BDBELLOW 2 C0AuraBDBELLOW2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hello, cousin of the deep stone! I've always wanted to meet one of my underground kin. Might I ask your name?~
END

I_C_T BDBELLOW 3 C0AuraBDBELLOW3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~The Concocter? You mean... it helps you concoct potions? How does that work?~
== BDBELLOW ~Well, you see, his spores an' inner fluids have alchemical qualities. He makes his potions WITHIN his body before he, err... 'excretes' them.~
== C02AURAJ ~Ugh! That's... disgusting... yet, fascinating. I'm almost curious enough to learn more.~
== BDBELLOW ~It's all very complicated, or so he says. You'd best ask him yourself, miss. Er... so long as you know spore-talk, that is. As for you, <SIRMAAM>, care for a potion?~
END

// Clovista

EXTEND_TOP BDCLOVIS 3 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~You look unusually interested, Aura. Got something to say?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN C02AURAJ bdclovis1
END

CHAIN C02AURAJ bdclovis1
~I'm not great at fighting close up, but I've learned from experience that aiming high with a blade isn't worth it when you're short. You'll wear yourself out too fast.~
== BDCLOVIS ~I do get fatigued pretty quickly during drills. I thought I needed more training.~
== C02AURAJ ~You'll improve faster if you take advantage of your size. Go for the legs. You'll have an easier time hitting their face once they've fallen over.~
EXTERN BDCLOVIS 5

// Dog

I_C_T BDDOGW01 0 C0AuraBDDOGW01
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*meow*~
== C02AURAJ ~Oh, no. Calm down, Koko-chan, I'm sure the dog's a nice fellow who's never chased a cat in its life...~
== BDDOGW01 ~*sniff sniff*~
== C02AURAJ ~Hey, get your nose out of my bag!~
END

I_C_T BDJAHEIJ 29 C0AuraBDJAHEIJ29
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I, uh, don't think Lantanese well-chickens are quite what you think they are, Jaheira...~
END

// Dosia

EXTEND_TOP BDDOSIA 11 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~You have some knowledge of medicine, don't you, Aura? Is there any advice you can give?~ EXTERN C02AURAJ bddosia11
END

CHAIN C02AURAJ bddosia11
~Hmm... we can try blackthorn bark. The forests nearby look like they'd be of the right climate. It's not an immediate cure, but it'll at least keep the disease from getting any worse.~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(61438,QUEST)~ EXTERN BDDOSIA 14

// Elandro

I_C_T BDELANDR 17 C0AuraBDELANDR17
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Feyr! The magic in this fort must be feeding on the emotions of the people here! This is really, really bad!~
END

// Glint

I_C_T BDGLINT 18 C0AuraBDGLINT18
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~You had a father called Gardner? I mean, Gardnerson? Nah, that's too simple. Why don't you tell us?~
END

// Gnaler and Kambolder

I_C_T BDGNALER 3 C0AuraBDGNALER3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aww, that's adorable. You two go and have good adventures now.~
END

// Discount Black Pits

I_C_T BDTCRWD2 0 C0AuraBDTCRWD20
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Zzzz... *snort* bwuh?! Did someone say squirrel?~
END

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("C0Aura_party_epilogue","global",1)~ + ~I would've never expected Aura to disappear at my time of need.~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("C0Aura_party_epilogue","global",1)~ + ~I would've never expected Aura to disappear at my time of need.~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~I thought she'd be willing to help too, but... I never found her. I heard she travelled south, but for whatever reason, I don't know. Maybe we'll catch her again.~
EXTERN BDIMOEN 119

// Irina

I_C_T2 BDIRINA 48 C0AuraBDIRINA48
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*gasp* Oh my goodness! That's wrong... but so adorable!~
END

// Rat

I_C_T BDFRAT 3 C0AuraBDFRAT3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) HasItem("c02aucat","C0Aura")~ THEN ~*meow*~ [CAT01]
== C02AURAJ ~Huh? Koko-chan?~
== C02AURAJ ~*ME-EOW*~ [FAMCAT01]
== BDFRAT ~Squeeeeek!~
== C02AURAJ ~Oh! Uh, I'd better bring him waaaay over there. Until you're done talking with the, uh, rat.~
END

// Rhonda

I_C_T BDGLINTJ 47 C0AuraBDGLINT47
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aw, this is your cousin, Glint? She's cute. Um, never mind. I didn't say anything...~
END

I_C_T BDGLINTJ 48 C0AuraBDGLINT48
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aw, this is your cousin, Glint? She's cute. Um, never mind. I didn't say anything...~
END

I_C_T BDRHONDA 1 C0AuraBDRHONDA1
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's awful! I can't believe they'd be so cruel...~
END

I_C_T BDRHONDA 2 C0AuraBDRHONDA2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's awful! I can't believe they'd be so cruel...~
END

// Takos

I_C_T BDTAKOS 0 C0AuraBDTAKOS
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Uh, with the state of that inn, I'm not even sure you even have doors left over to close...~
== BDTAKOS ~I SAID we're closed.~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~A prodigy of the Lantanese trade will surely be a valuable asset to Thrix. Yes, she will do quite nicely. What say you, Bhaalspawn?~
END
++ ~I accept your terms, devil. Say your riddle, and should I lose, I will forfeit Aura to you.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("C02AuraRomanceActive","GLOBAL",1) Global("C02AuraRomanceActive","GLOBAL",2)~ + ~Don't speak of Aura as if she's an object, fiend! She is more to me than she will ever become to you.~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
+ ~!Global("C02AuraRomanceActive","GLOBAL",1) !Global("C02AuraRomanceActive","GLOBAL",2)~ + ~You ask for too much, fiend. Aura's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN C02SIREJ ThrixWager2
~Thanks, <CHARNAME>... but... why are you even considering dealing with this beast?~
== BDTHRIX ~Hnh. Far too cruel of you to deny Thrix such a useful little mind. He would have liked to enhance upon his torture room. Oh well...~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Mmm... Thrix can see it already. Machines of destructions and conquest, bringing Thrix's enemies to heel. Come, little girl, to your new master.~
END
++ ~Sorry, Aura. I guess I wasn't smart enough to get that right.~ DO ~SetGlobal("C02_thrix_mark_Aura","global",1)~ EXTERN C02SIREJ ThrixWager5
++ ~I don't think so. The only one to be brought to heel will be you, fiend!~ EXTERN BDTHRIX 10

CHAIN C02SIREJ ThrixWager5
~No! Reika-san... kami... protect me...~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Tristian

EXTEND_BOTTOM BDTRISTI 14
+ ~IsValidForPartyDialogue("C0Aura")~ + ~Aura.~ EXTERN C02AURAJ bdtristi
END

CHAIN C02AURAJ bdtristi
~I've heard of Coroniir, but I've never played it before... but it can't be that hard, right?~
EXTERN BDTRISTI 15

// Trollbane Arrow

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",1)~ THEN C02AURAJ trollbane
~If you're going to fight trolls, <CHARNAME>, you might want to take these arrows.~
DO ~SetGlobal("C02AuraTrollbaneArrow","GLOBAL",2)
GiveItemCreate("c0auaro4",Player1,5,0,0)~
= ~I've been working on them since I was told we'd have to go through the Troll Claw Woods. They're filled with trollbane, a sort of poison for trolls. If it gets into their bloodstream, it'll stop them from regenerating.~
END
++ ~Very handy. Thank you, Aura.~ + trollbane.1
++ ~Do you have any more?~ + trollbane.1
++ ~Now this is what I keep you around for.~ + trollbane.1

CHAIN C02AURAJ trollbane.1
~I've gone through the alchemy instructions with quartermaster Belegarm. He'll stock up on them as quickly as he can. The components aren't cheap, so you'll have to pay for them.~
= ~That's all I have to say. We can keep moving now.~
EXIT

// Ulori

EXTEND_TOP BDULORI 3
+ ~PartyHasItem("c0auaro4")~ + ~See this? It's a burning arrow, and it's filled with trollbane. Make another move and I'll plunge it into your stinking flesh.~ EXTERN BDULORI C0AuraULORI
END

CHAIN BDULORI C0AuraULORI
~AAARGH! Fire, bad! Keep fire away from Ulori! Me do anything you ask!~
COPY_TRANS BDULORI 5

// Voidstone

CHAIN IF WEIGHT #-1 ~Global("C02AuraVoidstone","GLOBAL",1)~ THEN C02AURAJ voidstone
~Those stones... the shards of the negative energy spellstone. Can I take a look at them?~
END
++ ~I'm not sure why you'd want to, but go ahead.~ + voidstone.1
++ ~Sure. Knock yourself out. Erm, not literally, though.~ + voidstone.1
++ ~Make it quick. I'd rather have them out of my sight.~ + voidstone.1

CHAIN C02AURAJ voidstone.1
~So... so vile... but there's something... interesting about them. If I can just take a small sample of the residue...~
= ~Ugh. Thanks for your time, <CHARNAME>. Here, take them back. I don't need them anymore.~
END
++ ~What are you planning to do with that dust?~ + voidstone.2
++ ~Explain yourself.~ + voidstone.2
++ ~I'd ask what you're intending, but I suspect you're about to tell me anyway.~ + voidstone.2

CHAIN C02AURAJ voidstone.2
~Nothing insidious. I just thought I might be able to turn them into some sort of explosive weapon. I only need the dust, though. I can do plenty with this.~
= ~I can't make too many at once, though. It's just too draining on my resources... not to mention, it's dangerous. I'll be able to make one per alchemy session, though. It'll be powerful, that much I can guarantee.~
DO ~SetGlobal("C02AuraVoidstone","GLOBAL",2)~ EXIT

// PID

APPEND C02AURAJ

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN BEGIN pid
 SAY ~How's it going?~ [AURAf]
 + ~Gender(Player1,FEMALE)~ + ~(Flirt)~ + flirt
 + ~OR(2) Global("C02AuraBurstOrb","GLOBAL",0)
 GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~Do you have any Burst Orbs for me?~ DO ~SetGlobal("C02AuraBurstOrb","GLOBAL",1) SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 ++ ~May we talk?~ + pidtalk
 + ~Global("C0AuraStopKitty","LOCALS",0)~ + ~I'd prefer if you could talk to your cat more quietly.~ DO ~SetGlobal("C0AuraStopKitty","LOCALS",1)~ + stopkitty
 + ~!Global("C0AuraStopKitty","GLOBAL",0)~ + ~You can talk to your cat again if you want.~ DO ~SetGlobal("C0AuraStopKitty","GLOBAL",0)~ + rekitty
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I'd like you to stop talking to me for a while.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END

IF ~~ makeburstorb
SAY ~Yep. Here you go, have fun. Just be careful!~
IF ~~ EXIT
END

IF ~~ stopkitty
SAY ~Oh, have I been too loud? Sorry...~
IF ~~ EXIT
END

IF ~~ rekitty
SAY ~Okay!~
IF ~~ EXIT
END

IF ~~ notalk
SAY ~Well, that's rude. Yeesh!~
IF ~~ EXIT
END

IF ~~ retalk
SAY ~Well, alright. Only because you asked nicely.~
IF ~~ EXIT
END

IF ~~ stringfix
 SAY ~Ick. I'll have to see what I can do about that. *ahem* 'Tra-la-la-la-laaaa...'~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT 
END

// Talk

IF ~~ pidtalk
SAY ~Sure... about what?~
	+ ~Global("C02AuraPID1","GLOBAL",0) HasItem("c02aucat","C0Aura")~ + ~Where did you get that cat?~ DO ~SetGlobal("C02AuraPID1","GLOBAL",1)~ + pid1
	+ ~Global("C02AuraPID1","GLOBAL",1)~ + ~Are you fond of cats, Aura?~ + pid2
	++ ~I wanted to ask you about something else.~ + pid
	++ ~On second thought, not right now.~ + pid.end
END

IF ~~ pid.end
SAY ~If you say so.~
IF ~~ EXIT
END

IF ~~ pid1
SAY ~Oh, Koko-chan? I found him not long after I left Baldur's Gate. He was hiding in the ashes of a burned down house. Probably the work of crusaders... I saw one of the banners they left behind.~
= ~I don't know if he belonged to anyone, but it's possible that his owner abandoned him while fleeing from the crusade. Poor thing. All I did was feed him a fish, and he's stuck by me ever since. I didn't have the heart to shoo him away.~
= ~I'm not sure how long I'll keep him. It's really not safe to bring a poor kitty on a dangerous journey, after all. But where am I going to find someone willing to accept a cat in these parts?~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid2
SAY ~Yep. I mean, squirrels are still my favorites, like little Muffy-boo here, but my family didn't want one running around our house. We had a little brown tabby cat that used to keep me company at home instead. I developed a soft spot for the furry critters.~
= ~I wonder if the kitty's still wandering our home today. If he is, he'd be a pretty big cat now.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END


// Flirt

IF ~~ flirt
 SAY ~Mm-hmm?~
+ ~RandomNum(3,1)~ + ~What're you working on today? Anything interesting?~ + f1.1 
+ ~RandomNum(3,2)~ + ~What're you working on today? Anything interesting?~ + f1.2
+ ~RandomNum(3,3)~ + ~What're you working on today? Anything interesting?~ + f1.3
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,1)~ + ~(Lift her off her feet)~ + f2.1
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,2)~ + ~(Lift her off her feet)~ + f2.2
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,3)~ + ~(Lift her off her feet)~ + f2.3
+ ~RandomNum(3,1)~ + ~(Pinch her cheeks)~ + f3.1
+ ~RandomNum(3,2)~ + ~(Pinch her cheeks)~ + f3.2
+ ~RandomNum(3,3)~ + ~(Pinch her cheeks)~ + f3.3
+ ~RandomNum(3,1)~ + ~(Poke her nose)~ + f4.1
+ ~RandomNum(3,2)~ + ~(Poke her nose)~ + f4.2
+ ~RandomNum(3,3)~ + ~(Poke her nose)~ + f4.3
+ ~RandomNum(3,1)~ + ~(Wink at her)~ + f5.1
+ ~RandomNum(3,2)~ + ~(Wink at her)~ + f5.2
+ ~RandomNum(3,3)~ + ~(Wink at her)~ + f5.3
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,1)~ + ~(Impress her with a display of magic)~ + f6.1
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,2)~ + ~(Impress her with a display of magic)~ + f6.2
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,3)~ + ~(Impress her with a display of magic)~ + f6.3
+ ~RandomNum(3,1)~ + ~(Tell her a joke)~ + f7.1
+ ~RandomNum(3,2)~ + ~(Tell her a joke)~ + f7.2
+ ~RandomNum(3,3)~ + ~(Tell her a joke)~ + f7.3
+ ~RandomNum(3,1)~ + ~(Tug on her hair gently)~ + f8.1
+ ~RandomNum(3,2)~ + ~(Tug on her hair gently)~ + f8.2
+ ~RandomNum(3,3)~ + ~(Tug on her hair gently)~ + f8.3
+ ~RandomNum(3,1)~ + ~(Watch her)~ + f9.1
+ ~RandomNum(3,2)~ + ~(Watch her)~ + f9.2
+ ~RandomNum(3,3)~ + ~(Watch her)~ + f9.3
+ ~RandomNum(3,1)~ + ~(Tickle her)~ + f10.1
+ ~RandomNum(3,2)~ + ~(Tickle her)~ + f10.2
+ ~RandomNum(3,3)~ + ~(Tickle her)~ + f10.3
+ ~RandomNum(3,1)~ + ~(Pinch her cheek)~ + f11.1
+ ~RandomNum(3,2)~ + ~(Pinch her cheek)~ + f11.2
+ ~RandomNum(3,3)~ + ~(Pinch her cheek)~ + f11.3
+ ~RandomNum(3,1)~ + ~Fancy a spot of tea?~ + f12.1
+ ~RandomNum(3,2)~ + ~Fancy a spot of tea?~ + f12.2
+ ~RandomNum(3,3)~ + ~Fancy a spot of tea?~ + f12.3
+ ~RandomNum(3,1)~ + ~(Kiss her nose)~ + f13.1
+ ~RandomNum(3,2)~ + ~(Kiss her nose)~ + f13.2
+ ~RandomNum(3,3)~ + ~(Kiss her nose)~ + f13.3
++ ~It's nothing.~ EXIT
END

IF ~~ f1.1
SAY ~It's a surprise!~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~You'll see. People I like get to find out early! That, um, includes you, by the way.~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~Just wait. It'll blow your mind when I make my grand reveal! Hee hee.~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~Wh-hey! Put me down! I don't like heeeeights!~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~(She ducks from your grasp, doing a nimble roll out of reach while laughing!)~
= ~Nope!~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~(You are shocked to discover that she feels incredibly heavy for her size. As you raise her with difficulty, various tools and bits of metal spill out from her pockets and sleeves.)~
= ~Hey! My equipment! You'd better help me pick them back up, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~Ow! Easy on the cheeks, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~I wish Muffy had soft and puffy cheeks for *me* to pinch when I'm bored...~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~You're just like my big sister. She wouldn't let a day go by without giving me a pinch before leaving the house.~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~*giggle*~ [AURAu]
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~Muuh! (She sticks her tongue out in mock defiance)~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~C-c-careful... I'm about to sneeze!~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~What? Do you know some thing I don't? C'mon, tell meeee!~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~(Too occupied in examining a pair of strange copper rods, she doesn't even notice you)~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~(She winks back in response)~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~Ooh, do that again!~
IF ~~ EXIT
END

IF ~~ f6.2
SAY ~Aah, stop showing off, <CHARNAME>... you're making me envious...~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~Magic is so beautiful, but I just can't figure it out...~
IF ~~ EXIT
END

IF ~~ f7.1
SAY ~Oh, that's clever!~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~I'll remember that one for sure!~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~Eh-hehehehe!~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~H-hey-hey-hey! You'll damage the roots! Stoooop!~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~Hmm, I've been thinking of dyeing my hair another color. Blue, maybe. Or silver. Ooh, or maybe periwinkle! That'd be cute.~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~Hmph, treat my hair with some more respect! I make sure to take extra special care of it.~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~(Aura is busy painting Muffy's face with a tiny brush. Her hand moves slowly and with precision, drawing near perfect circles around the metal squirrel's eyes.)~
= ~Ooh, now you look cute as can be, don't you? Yes, you do! Now, sit on my shoulder and don't move, or you'll get paint all over the place...~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~(Aura is fiddling with her bow, the Sunshooter, using a long, thin implement to tighten a loose screw in one of the bow's jointed limbs.)~
= ~Almost had that part fall off in our last fight. Good thing it didn't... that would've been dangerous. I should take better care of my battle gear.~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~(Aura looks back with you with mild bewilderment.)~
= ~What? Did I get grease on my face again?~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~No-no-no-nononono! Stop! *giggle*~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~Ah, no! Muffy, save meee!~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~Eek, not the armpits, anywhere but- ahahaha!~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~(She pokes her tongue out while pulling down one of her eyelids.)~
= ~Nyah!~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~(She seems oddly submissive at first, before suddenly raising her arms to let her pet squirrel loose on you. The creature leaps at your face and starts tugging at your cheeks.)~
= ~Hee hee, gotcha!~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~What are you, my grandmother? 'Oh, Granny <CHARNAME>, would you like a cup of tea?'~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~Oh, always! Let me set up my teapot!~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~Okay, but we're using my blend, got it? And my teacups!~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~Mmm, well, I could sure use a break right now. Why not?~
IF ~~ EXIT
END

IF ~~ f13.1
SAY ~(She freezes in surprise, and you feel her breath on your chin as you watch her cheeks go red.)~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~(She blinks - you can sense her tension, as though she was instinctively about to step back, but instead closes her eyes to accept your affection.)~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~(Your lips press gently against the warm bridge of her nose. When you break away, Aura looks you in the eyes, lips quivering nervously.)~
IF ~~ EXIT
END
END