BEGIN C0FUBUKI

CHAIN IF ~IsValidForPartyDialog("C0Aura")
Global("C0AuraQuest","GLOBAL",1)~ THEN C0FUBUKI a1
~Stop.~
END
++ ~Who are you?~ + a1.1
++ ~I stop when I please, not when some stranger orders it.~ + a1.1
++ ~You have five seconds to explain yourself before I cut you down.~ + a1.1

CHAIN C0FUBUKI a1.1
~My words are for your companion to hear. Do you recall me, Konoe-sama?~
== C0AURAJ ~'Konoe'...? No one has called me that since... wait! You... you look familiar. You were there, at Reika-san's shrine. What are you doing here?~
== C0FUBUKI ~I am Fubuki. I come with a warning - you are being hunted. The enemy's eyes have been upon you since you entered this city.~
END
++ ~Hunted? By whom?~ EXTERN C0FUBUKI a1.2
++ ~What has this got to do with me?~ EXTERN C0FUBUKI a1.2
++ ~Explain yourself, Aura. What haven't you told me?~ EXTERN C0AURAJ a1.3

CHAIN C0FUBUKI a1.2
~Not here. There are too many eyes and ears in this city. Seek me out within the underground den that the local rogues call the Undercellar.~
== C0FUBUKI ~Farewell.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",2)
AddJournalEntry(@10002,QUEST)
Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN C0AURAJ a1.3
~I- I didn't know anything about this. If I did, I would've told you, I swear! Please, explain yourself.~
EXTERN C0FUBUKI a1.2

CHAIN IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraQuest","GLOBAL",2)~ THEN C0FUBUKI a2
~You are here. Good.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",3)~
== C0AURAJ ~This... place is awful. Why did you ask to meet us here?~
== C0FUBUKI ~Forgive me. I abhor this place, but there are fewer positions where Tadahashi Saitō's assassins may strike from here.~
== C0AURAJ ~So it's true that Saitō-san's hunting me? I... was afraid of that ever since you showed up.~
END
++ ~Slow down. Who is this person you're talking about, and why is he after Aura?~ + a2.1
++ ~I'm going to need the whole story if I'm expected to help anyone here.~ EXTERN C0AURAJ a2.2

CHAIN C0FUBUKI a2.1
~Tadahashi Saitō is a ronin of Kozakura, a samurai without a sworn liege. Several years ago, he met Konoe-sama in Mikedono, where she lived with my deceased master, Reika-sama.~
== C0AURAJ ~I told you when we met that I was seeking someone who left Kozakura. That person was Saitō-san. He heard of my skills and came to the Amanokagami shrine where I lived. I believed him to be honorable and just.~
== C0AURAJ ~Eventually, I trusted him enough to craft him a blade using my skills as a craftswoman and Kozakuran swordsmithing. The first weapon I ever made for another. But I didn't know what his goals were...~
== C0FUBUKI ~Tadahashi Saitō is more than just a samurai. He is a heretic. He seeks wage a war against the gods of Kara-Tur, who he believes to be the true enemy of mortals. After he gained Konoe-sama's gift, he and his followers destroyed temples, slaughtered the priests and monks within, as well as anyone who dared oppose them.~
== C0AURAJ ~I... I had no idea that was what his idea of 'justice' was. If only I had known... I would have sooner killed him than placed a blade in his hands.~
END
++ ~But why is he after you? If he got what he wanted, shouldn't he still be in Kozakura, fighting his war?~ EXTERN C0AURAJ a2.3
++ ~And what do you think he wants from you now?~ EXTERN C0AURAJ a2.3
++ ~Go on.~ EXTERN C0AURAJ a2.3

CHAIN C0AURAJ a2.2
~You're right. I... I think it's time to tell you everything, like I should have long before now.~
EXTERN C0FUBUKI a2.1

CHAIN C0AURAJ a2.3
~I can only assume what he wants. The day I gave him his blade wasn't the last I saw of him. Some time later, he returned, offering me the chance to help him 'free Kozakura', as he said.~
== C0AURAJ ~By that point, I already heard of what he had done, but I didn't want to believe it. But he wanted me to join him, to make more weapons - more than just simple blades. He knew exactly what I was capable of. He wanted the most powerful weapon I could ever make - smokepowder.~
== C0AURAJ ~I refused. And once he knew that he would never change my mind... he drew his sword, ready to kill me. I suppose he didn't want me alive to oppose him.~
== C0AURAJ ~I managed to flee to the Amanokagami shrine, but he knew I would return there. Reika-san was there too, and she stood in his way, and...~
END
++ ~I see. So he killed her?~ + a2.4
++ ~How did you survive that day? I would've expected him to kill you as well.~ + a2.5
++ ~You hid behind your mother figure and let her die in your stead?~ + a2.6

CHAIN C0AURAJ a2.4
~It was my fault! I... I shouldn't have gone back there, I knew I shouldn't have, but I didn't know where else I would be safe... and because of me, Reika-san... she...~
EXTERN C0AURAJ a2.6

CHAIN C0AURAJ a2.5
~I... I don't know. I still wonder why to this day... he could have killed me. Perhaps he had some honor left, and spared me after seeing Reika-san die in my stead... or, perhaps he thought I was too pitiful to kill.~
EXTERN C0AURAJ a2.6

CHAIN C0AURAJ a2.6
~I blame myself for it all, every day. I couldn't bear to stay in Kozakura, not after what I had done. I left, and soon after heard rumors that Saitō-san had left Kara-Tur as well... and I knew it was to find me.~
= ~At first, I feared for my life, but now... I want to find him. I don't want to fight, but... this will never end if I keep running away.~
END
++ ~You're not going to kill him? Even after he betrayed your trust?~ + a2.7
++ ~We'll find him together. Do you know where he is, Fubuki?~ EXTERN C0FUBUKI a2.8
++ ~This is your problem to deal with, Aura, not mine. If you're going to seek this enemy of yours, you can do it on your own.~ + a2.9

CHAIN C0AURAJ a2.7
~That's not what I meant. If... if it must come to death, then it will. But the only person I hate for everything that happened is myself. That's why... I need to put this to a close. Fubuki-san... where is Saitō-san?~
EXTERN C0FUBUKI a2.8

CHAIN C0FUBUKI a2.8
~Tadahashi Saitō's followers are cunning. I have tracked several of their spies, but they have not betrayed his location. I will need more time before I can...~
= ~...Wait.~
= ~They have found us. Beware, they will strike from the shadows!~
DO ~ChangeEnemyAlly(Myself,ALLY)~ EXIT

CHAIN C0AURAJ a2.9
~I... I wouldn't have asked you to put yourself at risk for me either way, <CHARNAME>. I'll do what I must. Fubuki-san... where is Saitō-san?~
EXTERN C0FUBUKI a2.8

CHAIN IF ~Global("C0AuraQuest","GLOBAL",4)~ THEN C0FUBUKI a3
~That is all of them. At least... those that remained. Some were able to escape, no doubt to inform their master.~
DO ~ChangeEnemyAlly(Myself,NEUTRAL) SetGlobal("C0AuraQuest","GLOBAL",5)~
== C0FUBUKI ~There will be more. Remain alert, Konoe-sama. I will return to you once I have tracked down Tadahashi Saitō's location.~
DO ~AddJournalEntry(@10003,QUEST)
PlaySound("ACT_07")
DisplayString(Myself,%*hides in shadows*%)
DestroySelf()~
== C0AURAJ ~I- I can't believe there were this many... I've put you in far too great of a danger, <CHARNAME>.~
END
++ ~Don't worry, Aura. You're safe as long as you're with me.~ EXTERN C0AURAJ a3.1
++ ~It's fine. Plenty of people already try to kill me every day.~ EXTERN C0AURAJ a3.2
++ ~You're more trouble than you're worth.~ EXTERN C0AURAJ a3.3

CHAIN C0AURAJ a3.1
~I... thank you, but I can't let you come to harm because of me, <CHARNAME>.~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.2
~I know, but... this isn't your threat to face.~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.3
~You... you're right. If you think it'd be safer if I left, just say so. I won't blame you.~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.4
~We don't know where Saitō-san is right now, or when his ninja will attack again... we'll just have to keep our eyes open.~
EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",6)~ THEN C0FUBUKI a4
~I've found you, <CHARNAME>-sama.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",7)~
END
++ ~Why are you here?~ + a4.1
++ ~Where's Aura? She disappeared this morning.~ + a4.1
++ ~I have a bad feeling about this...~ + a4.1

CHAIN C0FUBUKI a4.1
~I fear Konoe-sama must have gone to confront Tadahashi Saitō alone. She was gone before you awoke, and her belongings were gone save for this letter.~
DO ~GiveItemCreate("c0ascrl2",Player1,1,0,0)~
END
++ ~She's going to get herself killed. Where did she go?~ + a4.2
++ ~I need to find her. Can you help me?~ + a4.2
++ ~Good riddance. She's more trouble than she's worth.~ + a4.2

CHAIN C0FUBUKI a4.2
~I was able to capture one of Tadahashi Saitō's followers. He carried this letter, which I have translated into the Common tongue. If Konoe-sama has left by herself, then it is likely that she knows how to find him.~
DO ~GiveItemCreate("c0ascrl1",Player1,1,0,0)~
= ~Though you do not know me, <CHARNAME>-sama... I plead of you, aid her. She is the successor of Reika-sama's will... and for that, she must live. Farewell.~
DO ~AddJournalEntry(@10007,QUEST)
Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN IF ~IsValidForPartyDialog("C0Aura")
Global("C0AuraQuest","GLOBAL",11)~ THEN C0FUBUKI a5
~You have achieved victory... the gods weep at the blood that have been shed, but if fate is kind, then may their next lives be more peaceful.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",12) SetGlobalTimer("C0AuraQuestLastTimer","GLOBAL",EIGHT_HOURS)~
== C0AURAJ ~I still don't understand... what is the history between Saitō-san and Reika-san? Do you know anything?~
== C0FUBUKI ~They are old enemies who once served under a single master. These records of what I have learned over the years will explain more than my words will. I no longer need them.~
DO ~GiveItemCreate("c0ascrl3","c0aura",1,0,0)~
== C0AURAJ ~What of you, Fubuki-san? Why are you so concerned with this conflict?~
== C0FUBUKI ~I was once of the Clan of Fuuma. Many of my kin supported Tadahashi Saitō's rebellion against the holy temples of Kozakura. Few of us opposed him, but it was enough to lead our clan to war against itself.~
== C0FUBUKI ~My brothers and sisters slaughtered each other. Those who survived followed Tadahashi Saitō... among them was my brother, Ayakashi, whom you slew at the battle. I was the sole survivor to follow Reika-sama's path of peace instead.~
== C0AURAJ ~And you helped me against Saitō-san... was it for revenge?~
== C0FUBUKI ~No. Reika-sama convinced me that revenge against Tadahashi Saitō would destroy me as quickly as him. My purpose for assisting was to protect you, the successor of Reika-sama's will.~
== C0FUBUKI ~I will now return to Kozakura and serve at the Amanokagami shrine. This was to be my final task, and it is now complete. It is time for me to continue following Reika-sama's teachings in my own way.~
== C0AURAJ ~Thank you... arigato, Fubuki-san... for all of your help. I'm glad to know the sacred shrine will be in good hands.~
== C0FUBUKI ~Farewell, Konoe-sama. May you find peace under the Way.~
DO ~Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN IF ~!IsValidForPartyDialog("C0Aura")~ THEN C0FUBUKI b1
~I must speak with Konoe-sama. Please bring her to me.~
EXIT