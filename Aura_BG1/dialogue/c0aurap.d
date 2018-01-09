BEGIN C0AURAP

// Quest

IF ~Global("C0AuraQuest","GLOBAL",7)~ quest
SAY ~<CHARNAME>? Y-you came to find me?~
++ ~I couldn't let you face certain death by yourself.~ + quest.1
++ ~Of course I did. It's my responsibility as your leader.~ + quest.1
++ ~I came to see just how you planned on dealing with this enemy of yours.~ + quest.1
END

IF ~~ quest.1
SAY ~I- no, stay away! Don't get any closer!~
++ ~What-~ + quest.2
++ ~Don't be afr-~ + quest.2
++ ~Fine-~ + quest.2
END

IF ~~ quest.2
SAY ~You don't understand... take a few steps back... I'll explain in a moment-~
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acuts1")~ EXIT
END

IF ~OR(2)
HappinessLT(Myself,-299)
GlobalGT("C0AuraInsulted","GLOBAL",1)~ THEN BEGIN unhappy
SAY ~You're no better than that man. I hope we never meet again.~
IF ~~ DO ~EscapeArea() ActionOverride("C0AUIN3",EscapeArea())~ EXIT
END

IF ~!Dead("C0Saito") Global("KickedOut","LOCALS",0)~ THEN BEGIN kicked.1
SAY ~Oh, come on, really? What's a girl to do all by herself? Well, if you change your mind... I'll be back at the Friendly Arm Inn. Uncle Bentley will rent out a free room if he has one.~
++ ~Go, then. I'll meet you there if I need you again.~ + kicked.2
++ ~Just stay here for now. I'll be back for you.~ + kicked.0
++ ~Actually, I've changed my mind.~ + kicked.3
END

IF ~~ kicked.0
SAY ~If you say so.~
IF ~~ DO ~LeaveParty() SetGlobal("KickedOut","LOCALS",1) ActionOverride("C0AUIN3",MoveGlobalObject(Myself,"C0Aura"))~ EXIT
END

IF ~~ kicked.2
SAY ~Alright. See you around, I guess.~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) LeaveParty() EscapeAreaMove("AR2301",664,960,E) ActionOverride("c0auin3",EscapeAreaMove("AR2301",621,921,SE))~ EXIT
END

IF ~~ kicked.3
SAY ~Oh? Alright, can't complain about that.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Dead("C0Saito") Global("KickedOut","LOCALS",0)~ THEN BEGIN kicked.4
SAY ~Aw, you sure? Well, I still owe you one for what you've done for me, but I guess I can't argue if I'm unwelcome. Listen, if you ever need my help again, I'll be at the Friendly Arm Inn. Drop by if you're ever in need of me.~
+ ~!PartyHasItem("c0ausw01")~ + ~Alright. See you there, Aura.~ + kicked.2
+ ~PartyHasItem("c0ausw01")~ + ~Alright. See you there, Aura.~ + kicked.5
+ ~!PartyHasItem("c0ausw01")~ + ~Just stay here for now. I'll be back for you.~ + kicked.0
+ ~PartyHasItem("c0ausw01")~ + ~Just stay here for now. I'll be back for you.~ + kicked.6
++ ~Never mind. Stay in the party.~ + kicked.3
END

IF ~~ kicked.5
SAY ~There's still the matter of that sword, though. I'll be taking that with me. Sorry, but I can't afford to leave it in someone else's hands a second time, even if it's you... anyways, see you around.~
IF ~~ DO ~TakePartyItem("c0ausw01") LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR2301",664,960,E) ActionOverride("c0auin3",EscapeAreaMove("AR2301",621,921,SE))~ EXIT
END

IF ~~ kicked.6
SAY ~There's still the matter of that sword, though. I'll be taking that with me. Sorry, but I can't afford to leave it in someone else's hands a second time, even if it's you...~
IF ~~ DO ~TakePartyItem("c0ausw01") LeaveParty() SetGlobal("KickedOut","LOCALS",1) ActionOverride("C0AUIN3",MoveGlobalObject(Myself,"C0Aura"))~ EXIT
END

// Re-recruiting

IF ~Global("KickedOut","LOCALS",1)~ rejoin
SAY ~Hey there! I was hoping you'd come by, <CHARNAME>. Maybe you'd like to see what I'm working on right now...? Actually, never mind. Too unrefined at the moment. Best to keep it a surprise.~
IF ~~ + rejoin.0
END

IF ~~ rejoin.0
SAY ~Anyways, what can I do for you?~
+ ~PartyHasItem("c0agem1")~ + ~I'd like for you to take a look at this crystal.~ + crystal
++ ~Would you like to join me again, Aura?~ + rejoin.1
++ ~Nothing. I'll be going now.~ EXIT
END

IF ~~ rejoin.1
SAY ~Sure thing! Just give me a sec... Muffy? Hey, where do you think you're... ha, gotcha! Come on, quit fooling around, it's time to go!~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ crystal
SAY ~Oh, interesting! There's magic practically radiating off its surface... give me a moment to examine it.~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",1)
TakePartyItem("c0agem1") DestroyItem("c0agem1") GiveItemCreate("c0autt02",Player1,1,0,0)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT
END

IF WEIGHT #-1 ~Global("C0AuraCrystal","GLOBAL",1)~ THEN BEGIN crystal2
SAY ~I ran some experiments on the ice crystal you found, and the results match up with what I've studied about extraplanar powers.~
= ~The crystal that you found was an essence of ice, from the Para-Elemental Plane of Ice. I'm not sure how it ended up in this plane, but it likely has something to do with the magic that affects that ice island.~
= ~It's not very useful on its own, though. I wish I had the resources to make something more interesting out of it, but this is what I could put together with what I had. Here, take it.~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",2)~ + rejoin.0
END