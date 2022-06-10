BEGIN C02AKOKO
BEGIN C02AURA

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ THEN C02AURA end
~I— I won't back down, <CHARNAME>, not now!~
DO ~SetGlobal("bd_c0aura_kicked_mdd1330","global",1)
SetGlobal("bd_joined","locals",0)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C02AuraBegin","GLOBAL",0)~ THEN C02AURA j
~You okay, Koko-chan? They didn't get close enough to hurt you, did they?~
DO ~SetGlobal("C02AuraBegin","GLOBAL",1)~
== C02AKOKO ~*meow*~ [CAT01]
== C02AURA ~Phew. I'm glad you're okay. I'll fix up the unit and then we'll pack up and... huh?~
END
++ ~Hello, Aura. How's it been?~ DO ~SetGlobal("C02AuraWasInBG1","GLOBAL",1)~ + j.1
++ ~I didn't think I'd ever see you again, gnome.~ DO ~SetGlobal("C02AuraWasInBG1","GLOBAL",1)~ + j.1
+ ~!BeenInParty("C0Aura")~ + ~Have we met before?~ + k

CHAIN C02AURA j.0
~Oh... alright. I was planning on going to this camp anyway. It's too dangerous for me to travel alone. So... um, catch you later.~
= ~Come on, Koko-chan. We're leaving.~
DO ~GiveItemCreate("c02aucat","C0Aura",1,0,0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",RACE)
ActionOverride("c02akoko",EscapeArea())
ActionOverride("c02auto",EscapeArea())
AddJournalEntry(@100000,INFO)~ EXIT

CHAIN C02AURA j.1
~<CHARNAME>?~
= ~Hey, it really is you! I thought you were still living it up at the Ducal Palace!~
END
++ ~The Flaming Fist are marching north to fend off Caelar Argent's crusade. I'm here with them.~ + j.2
++ ~I wish. It'd be preferable to this irksome quest.~ + j.3
++ ~You first. Why are you going north instead of back to Lantan?~ + j.4
++ ~I'm afraid I have no time to reminisce now. We can talk at the Flaming Fist camp if you can find your way there.~ + j.0

CHAIN C02AURA j.2
~Caelar Argent? You mean, the Shining Lady? You're really going to war against them? I... that makes things a lot easier for me, at least!~
EXTERN C02AURA j.5

CHAIN C02AURA j.3
~Hee hee... sounds like you've had a rather rough time. That makes two of us.~
EXTERN C02AURA j.5

CHAIN C02AURA j.4
~Oh, well... the truth is, I wasn't planning on directly heading home to begin with. I was making my way north towards Waterdeep, where the merchant guilds have contact with my homeland, while hoping to perhaps meet the Blackstaff while I was there, but...~
EXTERN C02AURA j.5

CHAIN C02AURA j.5
~Ever since we parted ways, I've only had this automaton to keep me safe from danger, but honestly, it attracts about as much attention as it deters. I can handle orcs and goblins and the like, but...~
= ~The worst was when I first ran into soldiers from the crusade. They saw what I could make and wanted to conscript me into their army so I could build siege weapons for them. Well... if you know me, then you can imagine how I decided to respond to that.~
= ~I didn't want to kill them, but I had to let my automaton beat them down a bit. Ever since then I've been staying off the road, hoping to avoid conflict... but it hasn't been easy. You saw what happened earlier... that's been happening a lot. I'm not sure what to do.~
END
+ ~PartyHasItem("c0autt04")~ + ~Come to think of it, I still have your invisibility device from before.~ + j.6
++ ~Why don't you join me? We've travelled together before, and you can trust me to keep you safe from anyone, whether it be crusaders or anything else.~ + j.7
++ ~Go east of here, and you'll find the Flaming Fist camp. You can travel with us until we've defeated the crusade.~ + j.0

CHAIN C02AURA j.6
~Oh! Nuts and bolts, I forgot all about that thing. Ugh, it would have been a lifesaver, even if it wouldn't get me all the way to Waterdeep...~
= ~Oh, well. I don't think it'd have lasted long enough to get me past Dragonspear Castle, anyhow. You can keep it.~
END
++ ~Why don't you join me? We've travelled together before, and you can trust me to keep you safe from anyone, whether it be crusaders or anything else.~ + j.7
++ ~Go east of here, and you'll find the Flaming Fist camp. You can travel with us until we've defeated the crusade.~ + j.0

CHAIN C02AURA j.7
~Hey... that's a good idea. I'll be honest, I missed adventuring with you, even if it means I have to participate in battle rather than hide from it.~
= ~Though to be honest, I'm not looking forward to having to fight the crusade, but sometimes you've got to grab the bulls by the horns, right? Hee hee... okay. I'm in.~
= ~Come here, Koko-chan! It's time to go!~
END
++ ~Uh... what's with the cat?~ + j.8
++ ~You're not seriously bringing that thing with us, are you?~ + j.9
++ ~Aww, looks like you've found yourself a new friend. Where'd you find him?~ + j.8

CHAIN C02AURA j.8
~I'll tell you all about it later. Just give me a moment to pack up, and I'll be ready to go!~
DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")
ActionOverride("C02AUTO",DestroySelf())
ActionOverride("c02akoko",DestroySelf())
GiveItemCreate("c02aucat","C0Aura",1,0,0)
AddJournalEntry(@100001,INFO)
JoinParty()~ EXIT

CHAIN C02AURA j.9
~Uh... of course? He's been my travelling companion since... actually, you know what?~
EXTERN C02AURA j.8

CHAIN C02AURA k
~Have we? Hmm... did I run into you at Beregost, by any chance? Sorry, I'm not great with faces.~
= ~I'm Aura, by the way. Aura Glimmershine. I'm an artificer from Lantan. Umm... it's a pleasure to meet you, whoever you might be.~
END
++ ~I'm <CHARNAME>. Most recently of Baldur's Gate.~ + k.1
++ ~My name is none of your concern.~ + k.2
++ ~I don't have time to speak with strange gnomes on the road. Goodbye.~ + k.3

CHAIN C02AURA k.1
~No, really? I knew I recognized you from somewhere! You're the Hero of Baldur's Gate... aren't you?~
END
++ ~I'd rather not be known as that, but yes.~ + k.4
++ ~My reputation precedes me, I see.~ + k.4
++ ~No, no, I'm not *that* <CHARNAME>. You must've had me confused with someone else.~ + k.5
++ ~I think we've talked long enough, I've got places to be.~ + k.3

CHAIN C02AURA k.2
~That's, uh... fair enough, I suppose. You can never be too careful in a place like this, I guess.~
EXTERN C02AURA k.6

CHAIN C02AURA k.3
~Oh... I see. I was about to head off towards that Flaming Fist camp not far from here... I'm not sure where they're going, but it'd be safer than travelling alone in any case.~
= ~Maybe we'll meet again? Well, in any case... goodbye. Come on, Koko-chan. We're leaving.~
DO ~GiveItemCreate("c02aucat","C0Aura",1,0,0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",RACE)
ActionOverride("c02akoko",EscapeArea())
ActionOverride("c02auto",EscapeArea())
AddJournalEntry(@100000,INFO)~ EXIT

CHAIN C02AURA k.4
~Wow... I remember hearing your name spoken throughout the entire city while I was there. I can't believe I'm actually getting to meet you in person! It's such an honor!~
EXTERN C02AURA k.6

CHAIN C02AURA k.5
~Oh... my mistake, I guess. Though you do really resemble the drawings on those wanted pamphlets they discarded a while ago... but maybe I'm remembering it wrong.~
EXTERN C02AURA k.6

CHAIN C02AURA k.6
~Umm... this might be a bit sudden, but... could I possibly tag along with your group for a while? I'm not much of a fighter, you see, and... I've been accosted by bandits, monsters and those awful crusaders from the Shining Lady's army ever since I left Baldur's Gate.~
= ~I'll never make it anywhere at this rate, even if I go off the road and have this automaton protecting me... I know it's asking a lot, but you look skilled enough to depend upon, and if you'd accept me, I'd be ever so grateful.~
END
++ ~We'll be facing our share of danger. Do you think you can keep up?~ + k.7
++ ~Sure. I'd be happy to have your company.~ + k.8
++ ~I'm sorry, but I'm not looking for companions right now.~ + k.3
++ ~I don't think so. Beat it, gnome.~ + k.3

CHAIN C02AURA k.7
~I'm not that great at fighting, like I said. I have other useful skills, though. There's no one in Faerun who can beat a Lantanese artificer at alchemy or invention.~
= IF ~!Class(Myself,MAGE_ALL) !Class(Myself,CLERIC_ALL)~ THEN ~I'm also good with locks and traps, and I've a slight grasp on arcane magic, even if I'm not a mage myself.~
= IF ~Class(Myself,MAGE_ALL)~ THEN ~I'm also good with locks and traps, and I've got a slight grasp on arcane magic too. I'm not an expert, but I know enough to get by!~
= IF ~Class(Myself,CLERIC_ALL)~ THEN ~I'm also good with locks and traps, and I'm... a priestess-in-training of sorts. Well, I was, anyway. I know a few healing chants that are useful in a pinch.~
= ~I can also concoct... weapons. Explosive weapons, to be precise. I'm not too fond of doing so, but when faced with danger, it's something I've had to resort to. If you allow me to join you, I'll offer that to you as well, so long as you don't abuse them.~
END
++ ~Very well, then, you've convinced me. Welcome aboard.~ + k.8
++ ~I'm sorry, but I'm not looking for companions right now.~ + k.3
++ ~I don't think you're what I'm looking for.~ + k.3

CHAIN C02AURA k.8
~Y–you'll let me join! Thank you! I won't let you down.~
= ~Just give me a moment to pack up here and I'll be ready to leave. Come on, Koko-chan! It's time to go!~
DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")
ActionOverride("C02AUTO",DestroySelf())
ActionOverride("c02akoko",DestroySelf())
GiveItemCreate("c02aucat","C0Aura",1,0,0)
AddJournalEntry(@100001,INFO)
JoinParty()~ EXIT

CHAIN IF ~Global("C02AuraBegin","GLOBAL",1)~ THEN C02AURA l
~Heya. I, um... I made my way here to the camp. The Flaming Fist allowed me to stay under their protection as long as I can contribute my skills.~
DO ~SetGlobal("C02AuraBegin","GLOBAL",2)~
EXTERN C02AURA m

CHAIN IF ~Global("C02AuraBegin","GLOBAL",2)~ THEN C02AURA m
~Do you need something, <CHARNAME>?~
END
++ ~I would like for you to join my group.~ DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)~ + m.1
++ ~Just wanted to say hello.~ + m.2
++ ~Nothing. Carry on as you will.~ + m.2

CHAIN C02AURA m.1
~Huh? Oh, um... sure. I'll join you.~
DO ~JoinParty()~ EXIT

CHAIN C02AURA m.2
~Oh. Well, if you ever need anything... I'll be right here.~
EXIT

// Sleeping Potion

CHAIN IF WEIGHT #-1 ~Global("C02AuraPoison","GLOBAL",1)~ THEN C02AURA poison
~<CHARNAME>... I heard mister de Lancie talking to you about the poison... I didn't want to say anything when he was around, but I've got an idea if you'd rather incapacitate the crusaders without seriously hurting them.~
DO ~SetGlobal("C02AuraPoison","GLOBAL",2)~
END
++ ~You've got my attention. Go ahead.~ + poison.1
+ ~PartyHasItem("bdpotn01")~ + ~No need. I couldn't care less if our enemies suffer.~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~I'm not planning on winning the war through tricks, Aura.~ + poison.3

CHAIN C02AURA poison.0
~I... I don't like the sound of that, but... it's your call, I guess.~
EXIT

CHAIN C02AURA poison.1
~Well, here's what I was thinking... rather than using poison, I could create a sleeping potion that we can use on the crusaders' supplies instead. So when the time comes for the real battle, they'll hopefully fall unconscious and stop fighting.~
= ~The fight will be easier, and there'll be less blood spilled on both sides. Wouldn't that be a better alternative?~
END
++ ~That's actually a great idea. We'll do it your way.~ + poison.2
+ ~PartyHasItem("bdpotn01")~ + ~I think that's more merciful than the crusaders deserve. I'm using the poison.~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~No. We'll fight the crusaders fairly and honorably.~ + poison.3

CHAIN C02AURA poison.2
~I'll just take a few moments to run to the alchemist tent, then. Be right back.~
DO ~FadeFromColor([30.0],0) TakePartyItem("bdpotn01") DestroyItem("bdpotn01") GiveItemCreate("c02apotn",Player1,1,0,0) SetGlobal("bd_MDD1001_morale","global",1)~
= ~Here. I think I've got the concentration right, so it's very, very strong. Even a few drops diluted in water should put someone to rest for a good hour or so.~
EXIT

CHAIN C02AURA poison.3
~Okay... you know best, I suppose.~
EXIT


// Trollbane Arrows

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",1)~ THEN C02AURA trollbane
~If you're going to fight trolls, <CHARNAME>, you might want to take these arrows.~
DO ~SetGlobal("C02AuraTrollbaneArrow","GLOBAL",2)
GiveItemCreate("c0auaro4",Player1,5,0,0)~
= ~I've been working on them since I was told we'd have to go through the Troll Claw Woods. They're filled with trollbane, a sort of poison for trolls. If it gets into their bloodstream, it'll stop them from regenerating.~
END
++ ~Very handy. Thank you, Aura.~ + trollbane.1
++ ~Do you have any more?~ + trollbane.1
++ ~Now this is what I keep you around for.~ + trollbane.1

CHAIN C02AURA trollbane.1
~I've gone through the alchemy instructions with quartermaster Belegarm. He'll stock up on them as quickly as he can. The components aren't cheap, though, so you'll have to pay for them.~
= ~Okay, that's all for now. I'll tell you again when I have something else for you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C02AuraVoidstone","GLOBAL",1)~ THEN C02AURA voidstone
~Those stones... the shards of the negative energy spellstone. Can I take a look at them?~
END
++ ~I'm not sure why you'd want to, but go ahead.~ + voidstone.1
++ ~Sure. Knock yourself out. Erm, not literally, though.~ + voidstone.1
++ ~Make it quick. I'd rather have them out of my sight.~ + voidstone.1

CHAIN C02AURA voidstone.1
~So... so vile... but there's something... interesting about them. If I can just take a small sample of the residue...~
= ~Ugh. Thanks for your time, <CHARNAME>. Here, take them back. I don't need them anymore.~
END
++ ~What are you planning to do with that dust?~ + voidstone.2
++ ~Explain yourself.~ + voidstone.2
++ ~I'd ask what you're intending, but I suspect you're about to tell me anyway.~ + voidstone.2

CHAIN C02AURA voidstone.2
~Nothing insidious. I just thought I might be able to turn them into some sort of explosive weapon. I only need the dust, though. I can do plenty with this.~
= ~I can't make too many at once. It's just too draining on my resources... not to mention, it's dangerous. I'll only be able to make one per alchemy session. It'll be powerful, though, that much I can guarantee.~
DO ~SetGlobal("C02AuraVoidstone","GLOBAL",2) AddXPObject("C0Aura",500)~ EXIT

// Kicked Out

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4300")
GlobalGT("bd_plot","global",585)~ THEN C02AURA endgame
~I'm glad all the fighting's over.~
EXIT


CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN C02AURA rep.break
~Forgive me, <CHARNAME>. I said I'd follow you, and I've done so for as long as I can, but... I can't stand it anymore. These acts you're committing are... they're just too much. I'm leaving.~
END
++ ~That's too bad. I'll miss you.~ + rep.break.1
++ ~Some people just aren't compatible with each other. I won't blame you.~ + rep.break.2
++ ~You're a coward. I have no need of you if you have no stomach for the things we do. Begone.~ + rep.break.3
++ ~Fine. You were a liability anyway.~ + rep.break.3

CHAIN C02AURA rep.break.1
~I really am sorry.~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.2
~You're right.~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.3
~I'm sorry I mistook you for someone you weren't.~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.4
~Maybe you'll change one day, and if so, I hope we'll meet again. Goodbye.~
DO ~ActionOverride("C0AUIN3",EscapeArea())
DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN C02AURA o
~Nuts and bolts, <CHARNAME>! You're seriously leaving me alone in this place?~
END
++ ~I'm going ahead first. Wait here until I come back.~ + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~Go back to the entrance. You'll be safe there.~ + o.2
++ ~You misunderstood. Stay with me.~ + n.3

CHAIN C02AURA o.1
~Ugh, fine. Make it quick, won't you?~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA o.2
~Okay... I guess I'll just go back the way we came. Stay safe...~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN C02AURA o.3
~Oh, finally you're back! Do you have any idea how cold and dusty it is here? Not to mention I'm seeing... ghosts... or something, everywhere! Please tell me we're going!~
END
++ ~Fear not. I've come to take you back.~ + o.4
++ ~Just a little longer, I promise.~ + o.5
++ ~Not yet. Stay here and be brave.~ + o.5

CHAIN C02AURA o.4
~Oh, thank you! Let's get out of here. I didn't like the way that light over there flickered.~
DO ~JoinParty()~ EXIT

CHAIN C02AURA o.5
~Stay here, <PRO_HESHE> says... it'll be fine, <PRO_HESHE> says... who's the one who staring at creepy shadows on the walls, huh? *sigh*~
EXIT

CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN C02AURA n
~Aww. You sure you want me to go, <CHARNAME>?~
END
+ ~PartyHasItem("c02akoko")
GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~Go back to camp. Your skills will be put to better use there.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1a
+ ~!PartyHasItem("c02akoko")
GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~Go back to camp. Your skills will be put to better use there.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1b
++ ~Wait here for the moment. I will return for you promptly.~ + n.2
++ ~Actually, never mind. Stay with me.~ + n.3

CHAIN C02AURA n.1a
~If you say so. Come on, Koko-chan. We're going back.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.1b
~If you say so. See you around, <CHARNAME>.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.2
~Ooh, I'd feel much safer being with you, but okay... come back soon, won't you?~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.3
~Phew... you don't have to ask me twice.~
DO ~JoinParty()~ EXIT

CHAIN IF ~Global("bd_joined","LOCALS",0)~ THEN C02AURA p
~Heya. How're things going? Not so well here, I'm so busy concocting potions and making medicine for the wounded that I've barely had time to work on anything.~
= ~Anyway, what's up? Do you need my help for something?~
END
++ ~Could you make some potions for me?~ + potions
++ ~If you're looking for more exciting work, I've got room in the party.~ + p.0
++ ~I'm in need of your skills, Aura. Join me and let's go.~ + p.0
++ ~Sound like you've got plenty on your hands already. I'll leave you to it.~ + p.1
++ ~Not right now. I'll be leaving.~ + p.1

CHAIN C02AURA potions
~Of course! Just give me a moment to prepare my alchemy set.~
DO ~ReallyForceSpellRES("c0aualc",Myself)~ EXIT

CHAIN C02AURA p.0
~Yeah, sure. Plenty more things to do out there than here, right? Give me a moment to clean up and we'll go.~
DO ~JoinParty()~ EXIT

CHAIN C02AURA p.1
~So soon? That's a shame. Bye, then.~
EXIT

APPEND C02AURA

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("C02AuraRomanceActive","global",2)~ postgame
SAY ~H–hey there, <CHARNAME>.~
+ ~Global("bd_player_exiled","global",0)~ + ~Hey there, Aura.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Hey there, Aura.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Aura. You've got to get me out of here.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Aura. You've got to get me out of here.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + ~Go away. I don't want to talk to you.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~Go away. I don't want to talk to you.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY ~I knew coming here was a mistake. It's killing me inside just hearing us talk.~
= ~...bye, <CHARNAME>. I don't know if we'll meet again.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad
SAY ~I... I didn't go to the trial. I couldn't bring myself to. You won't hate me for that, will you?~
++ ~Don't tell me that you think I did it too?~ + postgamebad.1
++ ~I did not kill Skie. Don't believe their lies.~ + postgamebad.1
++ ~Go away. You're the last person I want to see right now.~ + postgamebad1
END

IF ~~ postgamebad.1
SAY ~I don't want to believe that you did it. But it's impossible to forget what I've seen with my own eyes.~
= ~I just came here to tell you, <CHARNAME>. I... I don't hate you, regardless of whatever really happened. But... I won't be staying. I'm sorry.~
= ~Goodbye. I'm not sure if we'll meet again.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood.x
SAY ~I... I wish I could do more. Or, at least... I wish we could've had longer. Goodbye, <CHARNAME>...~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood1
SAY ~W–wait, <CHARNAME>! I didn't come to admonish you like everyone else, I promise. Would I do that to you?~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~I... I can't. I mean, I could, if I tried. The enchantments on this door aren't anything special, and I've broken tougher locks in the past, it's just that... it'd be wrong. Even if it's you.~
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY ~I, um, brought you gifts. See? Warmer blankets, slippers, cakes, some books, a nice soft pillow... anything that might make your time here easier...~
= ~Oh, who am I kidding? This isn't going to make anything better. I– I didn't want to see you like this, <CHARNAME>. This hurts...~
++ ~Your eyes are all red. Have you been crying?~ + postgamegood.1
++ ~Gods, Aura, don't break down on me right now. I don't think I can stand it.~ + postgamegood.2
++ ~Thank you. I'm glad you care, at least.~ + postgamegood.3
++ ~If you're not planning on breaking me out of here, then go away.~ + postgamegood.x
END

IF ~~ postgamegood.1
SAY ~I... *sniff* no... why would you ask that?~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY ~I'm... I'm sorry, <CHARNAME>, but I just can't keep it together, not when you're in here, cold and alone...~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY ~Of course I care! You're the best thing that's happened to me in this part of Faerun, why would you ever think I didn't care?~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY ~... *sob*~
= ~I... I know you didn't do it. Why would you? The person who's been so good to me would never have... if only everyone else saw you the way I do, they'd never have locked you in here. You don't deserve this...~
= ~What will you do, <CHARNAME>? They... they wouldn't leave you in here forever, would they?~
++ ~I know I'm innocent. The truth will come out somehow, one way or another.~ + postgamegood.5
++ ~You could get me out of here. We'll leave this city together.~ + postgamegood.6
++ ~Who knows. They just might do that.~ + postgamegood.6
++ ~Go away, Aura. I don't want to listen to you weep and prattle.~ + postgamegood.x
END

IF ~~ postgamegood.5
SAY ~I... I hope so. The Grand Dukes wouldn't accept anything besides the truth. They owe you so much, they couldn't possibly give less... right?~
IF ~~ + postgamegood.6
END

IF ~~ postgamegood.6
SAY ~I... I want to try and free you, <CHARNAME>, I do. But I'm scared... ever since they took you, I feel like all the courage and confidence I gained from you was gone in an instant.~
= ~Just by being here, I feel like I can't hold myself together... it's like I'm back to being the scared little girl I once was. Pathetic, isn't it? I guess I depended on you to much, from start to end... I haven't changed at all.~
= ~I've... decided that... it's time to move on. I don't want to abandon you, but... every moment I stay inside this city hurts. I... I'm sorry.~
IF ~~ + postgamegood.x
END
END