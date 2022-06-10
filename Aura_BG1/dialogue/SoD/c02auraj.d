BEGIN C02AURAJ

CHAIN IF ~!Global("C02AuraWasInBG1","GLOBAL",1)
Global("C02AuraTalk","GLOBAL",2)~ THEN C02AURAJ t1a
~You were very kind to take me under your wing, <CHARNAME>, even though I'm not a fighter. I hope that I'm not dragging you down.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~It's fine. I allowed you to join because you needed protection.~ + t1a.1
++ ~You're not incapable of defending yourself. What are you afraid of?~ + t1a.2
++ ~Just make sure to pull your weight, or you're out. Understand?~ + t1a.3

CHAIN C02AURAJ t1a.1
~That's generous of you, <CHARNAME>. I almost didn't expect it considering, well...~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.2
~It's true, I've been able to overcome the threats I couldn't avoid, but...~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.3
~Y–yes, I understand clearly. It— it's just that...~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.4
~I've heard... all sorts of things about you, from my time at Baldur's Gate. About you and your... relation to that villain, Sarevok. I wasn't sure what to expect after learning just who you were, but... you seem like a kind person, and you were willing to accept me so quickly...~
EXTERN C02AURAJ t1a.6

CHAIN C02AURAJ t1a.5
~I've heard... all sorts of things about you, from my time at Baldur's Gate. About you and your... relation to that villain, Sarevok. I wasn't sure what to expect after learning just who you were, but... considering you were willing to accept me, then you can't be all that bad...~
EXTERN C02AURAJ t1a.6

CHAIN C02AURAJ t1a.6
~I just... didn't want to give you any cause to distrust me, or consider me a burden. If I'm to follow your lead, I want to be worthy of your trust.~
END
++ ~You're thinking too much into this. It should be a natural thing for companions to trust each other.~ + t1a.7
++ ~There's no need to consider such things. I don't judge others solely based on their worth to me.~ + t1a.7
++ ~We'll see. You'll have plenty of chances to prove yourself.~ + t1a.8
++ ~Give me a reason to distrust you, and I will make you regret it.~ + t1a.9

CHAIN C02AURAJ t1a.7
~Hearing that makes me feel a lot more confident. Thank you, <CHARNAME>. I hope we'll get along well together.~
EXIT

CHAIN C02AURAJ t1a.8
~Yeah... I'll do my best not to disappoint.~
EXIT

CHAIN C02AURAJ t1a.9
~T–there's no need for that. I may not be as competent as you might require me to be, but I'll do my best regardless.~
EXIT

CHAIN IF ~Global("C02AuraWasInBG1","GLOBAL",1)
Global("C02AuraTalk","GLOBAL",2)~ THEN C02AURAJ t1b
~Haha... I can't believe I'm travelling with you again so soon after we parted, <CHARNAME>. Even though the circumstances are different this time, I'm glad to be back.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~I'm glad to have you back. Tea parties just aren't as interesting without you.~ + t1b.1
++ ~Why did you leave to begin with? I thought you were happy travelling at my side.~ + t1b.2
++ ~I didn't bring you along for old times' sake. You're here to be useful, not talk.~ + t1b.x

CHAIN C02AURAJ t1b.x
~Right... I understand.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t1b.1
~Hee hee, I'm glad I left that impression on you. Well, now that I'm back, we can... well, now's probably not the time for a party. But there's still tea, if you're ever interested.~
EXTERN C02AURAJ t1b.2

CHAIN C02AURAJ t1b.2
~I'm sorry for leaving you behind at Baldur's Gate. But you seemed happy to stay, and I couldn't ask you to travel north with me if you weren't interested.~
= ~I wanted to go to Waterdeep, to meet with the local merchant guilds who have dealt with my homeland in the past, and possibly meet Lord Khelben Blackstaff if I got lucky. After that, I likely would have started travelling home, unless some fascinating rumor drew me to the road again.~
= ~Guess none of that is happening any time soon, now that the crusade is in the way. Though I'd have come to help regardless, if I had learned you would be fighting against them.~
END
++ ~Imoen would have been happy to see you again too, I think.~ + t1b.3
++ ~Well, I'm glad we have this chance to travel together, while it lasts.~ + t1b.4
++ ~Don't get sentimental. You're just an ally of convenience.~ + t1b.x

CHAIN C02AURAJ t1b.3
~I've... been meaning to ask. Whatever happened to Imoen? She would never have left you on this journey willingly.~
END
++ ~The crusaders poisoned her in the Ducal Palace. She's still there, recovering.~ + t1b.5
++ ~We were... attacked, by Caelar Argent's assassins.~ + t1b.5
++ ~None of your business. Now if we're done here, let's move.~ + t1b.8

CHAIN C02AURAJ t1b.4
~Yeah. My thoughts exactly.~
EXTERN C02AURAJ t1b.3

CHAIN C02AURAJ t1b.5
~Wh— what? So—sonna, that... that's awful. I... I would never have expected it, given the Shining Lady's reputation... I mean, she's our enemy right now, but...~
= ~Now I'm even more sorry for leaving. You could have used my help, still. I thought you'd be safe, but I was wrong.~
END
++ ~Nowhere's safe for a Bhaalspawn.~ + t1b.6
++ ~What's done is done. What matters is that we've joined forces now.~ + t1b.7
++ ~That's enough. We've got more important things to do than talk.~ + t1b.8

CHAIN C02AURAJ t1b.6
~Yeah... you're right. It must be terrible, now that it's not just those close to you that know... but if it's any comfort, I still see you as my friend.~
EXTERN C02AURAJ t1b.7

CHAIN C02AURAJ t1b.7
~If the crusade threatens you, <CHARNAME>, then I'll do everything that I can to help you end it. I owe you that much.~
EXIT

CHAIN C02AURAJ t1b.8
~Okay... I know we've got precious little time to stand around idly. Lead on, <CHARNAME>. I'll give you the best that I can.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",4)~ THEN C02AURAJ t2
~Th–this place is creepy... I'm not sure if you can see it given how dark it is, but I'm quivering in my boots here.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~Calm down. I'm right here with you.~ + t2.1
++ ~I'm not so keen on the darkness, myself.~ + t2.2
++ ~If you're too cowardly to handle this, then go.~ + t2.3
++ ~There's no time for your fears. Try and deal with it.~ + t2.x

CHAIN C02AURAJ t2.x
~O–okay... I'll try...~
EXIT

CHAIN C02AURAJ t2.1
~I know, but...! It's still terrifying. Who knows what could be hiding in the corners?~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.2
~It— it does? I, um, don't know if that's supposed to be reassuring. I mean, if something scares you, how am I supposed to feel?~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.3
~I— I'm not THAT scared, <CHARNAME>, but I can't help but be a little twitchy in dark places such as this.~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.4
~Look at that monstrous shadow there— aah! It moved!~
END
++ ~It was probably just a rat or something.~ + t2.5
++ ~Where? Where?~ + t2.6
++ ~Quiet down! You'll attract something truly dangerous.~ + t2.7
++ ~*sigh* Whatever...~ + t2.8

CHAIN C02AURAJ t2.5
~R–really? Maybe you're right.~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.6
~T–there! Don't you see... oh. It's gone. It's gone!~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.7
~Oh... you have a point there. Eep...~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.8
~...~
= ~*giggle*~
END
++ ~What's so funny now?~ + t2.9
++ ~Is something wrong with you?~ + t2.9
++ ~Oh no! Did you get possessed?~ + t2.10

CHAIN C02AURAJ t2.9
~It's nothing. I was just thinking... it's kind of strange that I'm frightened of shadows on the wall, when I've lived through far worse. Makes no sense, does it?~
= ~Well, it makes a little sense. After all, I'd rather these shadows be the worst thing I could worry about than... well, no point talking about what's already passed.~
END
+ ~Global("C02AuraWasInBG1","GLOBAL",1)~ + ~You're still thinking about your encounter with Saito from before?~ + t2.11
++ ~It's strange, but I can sort of understand.~ + t2.12
++ ~As long as you don't let these childish fears get in our way.~ + t2.13
++ ~Are you done talking yet? It's time to move.~ + t2.14

CHAIN C02AURAJ t2.10
~No... no! I'm fine. It's just...~
EXTERN C02AURAJ t2.9

CHAIN C02AURAJ t2.11
~Yeah... it's strange to think that the meeting I dreaded for so long ended not so long ago... I still have you to thank for that, by the way. I'd likely not be here if not for you.~
EXTERN C02AURAJ t2.12

CHAIN C02AURAJ t2.12
~Still, I can't let these childish fears hold me back from pressing onward. Especially if you're depending on me, <CHARNAME>.~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t2.15
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t2.13
~Don't worry. I wouldn't let that happen.~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t2.15
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t2.14
~Oh... right, of course. I'll be right behind you.~
EXIT

CHAIN C02AURAJ t2.15
~Actually... just being near you is enough to give me more confidence. If you can face anything, regardless of your fears... then I feel inspired to do the same.~
= ~I'm glad for that, <CHARNAME>, truly. You've got so many qualities that I... admire in a woman.~
END
++ ~Is that all you feel towards me?~ + t2.16
++ ~Aww, that's sweet of you. But you really don't have to put me on a pedestal like that.~ + t2.17
++ ~That's nice, but we really do have to get going.~ + t2.14
++ ~Whatever. I'm not interested in your praise, or anything else you have to say.~ + t2.18

CHAIN C02AURAJ t2.16
~You— you mean... *blush* what exactly do you mean, <CHARNAME>?~
END
++ ~I mean what I asked. Is it mere admiration you feel, or something else?~ + t2.19
++ ~What else do you like about me? Be honest now.~ + t2.19
++ ~Aww, now you're going all red. How adorable.~ + t2.19

CHAIN C02AURAJ t2.17
~Okay, okay. I get it, less hero-worship. I do mean everything I said though.~
EXIT

CHAIN C02AURAJ t2.18
~Oh... I— I see.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t2.19
~...oh, I don't even know what to say. Way to knock me off guard with your teasing, <CHARNAME>... let's not rush things right now, okay? Also, totally inappropriate, considering where we are.~
= ~Let's just go. We can talk about this later.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",6)~ THEN C02AURAJ t3
~Can I ask you something, <CHARNAME>? Do you... feel confident in yourself as a leader?~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~What brought this up?~ + t3.1
++ ~Of course I do. Why wouldn't I be?~ + t3.2
++ ~Not always, but I do what I must. Why do you ask?~ + t3.1
++ ~If I have any doubts, I'll not share them with you.~ + t3.x

CHAIN C02AURAJ t3.1
~I was just thinking about the last time we talked, and how I went into my own fears, and called you brave... yet the more I think about it, the more I wonder, do you ever suffer from fears or doubts? Even a little?~
END
++ ~It's only mortal to fear. Why would I be different?~ + t3.3
++ ~Perhaps I do. I'm as prone to doubts as everyone else.~ + t3.3
+ ~Gender(Player1,MALE)~ + ~Doubts and fears are for lesser men. I'm above them.~ + t3.4
+ ~Gender(Player1,FEMALE)~ + ~Doubts and fears are for lesser women. I'm above them.~ + t3.4
++ ~If I did, I wouldn't discuss it with an outsider like you.~ + t3.x

CHAIN C02AURAJ t3.2
~Well, that was a quick affirmative. Not sure what I was expecting.~
EXTERN C02AURAJ t3.1

CHAIN C02AURAJ t3.3
~But you're diff— no, that's not what I mean to say. You're not quite... mortal, right? Or does that not make a difference?~
END
++ ~I've believed myself to be an ordinary <PRO_RACE> for most of my life. My divine blood didn't change that.~ + t3.5
++ ~Yes, it does. It does give me a sense of confidence that others lack.~ + t3.4
++ ~I don't know. Maybe it does. I don't let my feelings dictate how I act.~ + t3.4
++ ~My personal feelings are none of your affair.~ + t3.x

CHAIN C02AURAJ t3.4
~There's strength in that, I suppose. I can't say I understand... but I can still respect it, in a way. Even if it sounds a little haughty... I can't really blame you.~
EXTERN C02AURAJ t3.6

CHAIN C02AURAJ t3.5
~Hee hee... do you really think that, or are you just trying to be humble? Well, either way... it's an interesting to think that you're not so different, no matter the blood in your veins.~
EXTERN C02AURAJ t3.6

CHAIN C02AURAJ t3.6
~Thanks for your time, <CHARNAME>. You weren't obligated to stand here and respond to my questioning, but you did so anyway. I appreciate it.~
EXIT

CHAIN C02AURAJ t3.x
~Fair enough. Pretend I didn't say anything.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",8)~ THEN C02AURAJ t4
~Let's see... comfrey, elderberries, lemon balm, and... don't have that, a dash of ginger will have to do... oh, and I'll throw in some honey as well, why not.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~What are you doing, Aura?~ + t4.1
+ ~OR(3)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
CheckStatGT(Player1,14,INT)~ + ~That sounds like some sort of medicinal tea. What's it for?~ + t4.2
++ ~Whatever you're brewing over there, keep it quiet.~ + t4.0

CHAIN C02AURAJ t4.0
~Sorry, <CHARNAME>. I didn't mean to bother you.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t4.1
~Eep! Oh, it's just you, <CHARNAME>. Sorry for jumping, I was too distracted with what I was writing. I hope I wasn't bothering you.~
END
++ ~Not at all. I was just curious. Are you writing down a recipe for tea?~ + t4.2
+ ~OR(3)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
CheckStatGT(Player1,14,INT)~ + ~Most of those ingredients have medicinal properties, if I'm not mistaken.~ + t4.2
++ ~This looks like some sort of checklist for herbs. What are you preparing?~ + t4.2
++ ~Just keep it down. We don't need other people hearing us.~ + t4.0

CHAIN C02AURAJ t4.2
~I'm writing down ingredients that I can acquire for a special kind of tea. I've had to make some changes to account for ingredients I can't find here, but it should still be effective...~
END
++ ~Effective for what? What do you need this tea for?~ + t4.3
++ ~This isn't something you're preparing for the group, is it?~ + t4.3
++ ~Is it really suitable to prepare for a tea party at a time like this?~ + t4.4
++ ~I don't care. Just keep it to yourself.~ + t4.0

CHAIN C02AURAJ t4.3
~This isn't a recipe. It's a prescription. For... me, specifically. It's not meant for anyone else.~
END
++ ~Prescription? As in, for an ailment?~ + t4.5
++ ~I didn't know you suffered from an illness.~ + t4.5
++ ~I don't want to know.~ + t4.0

CHAIN C02AURAJ t4.4
~No, I... well, I do enjoy tea breaks, but I haven't even thought about having one ever since I joined up. This isn't about that.~
EXTERN C02AURAJ t4.3

CHAIN C02AURAJ t4.5
~Don't worry, <CHARNAME>, it's not so bad as that. This prescription isn't meant to treat any sickness, it's just a... precaution.~
= ~I don't like discussing it, but my family's had a... history, let's just say, of suffering from poor health. Perhaps it's hereditary, but I've known many relatives who've been frail since birth. Migraines, weak bodies, difficult breathing...~
= ~My brother, Eridanus, got the worst of it... he was born as a sorcerer, and had frequent fainting spells when he was young from overusing his magic... even as an adult, he's still rather delicate.~
= ~When I was young, I was rather sickly as well, but thanks to early attention from my family and the priests of Gond, I was able to mostly recover, though I've never been as strong or hardy as my sisters. My parents wrote this prescription for me, hoping it may improve my health.~
= ~I'm still missing something crucial, though—sunflower petals. I can find substitutes for everything else, but without sunflowers, I'm not sure how useful this tea will be at all.~
END
++ ~Why sunflowers? What's so special about them?~ + t4.6
++ ~Perhaps I can help you somehow.~ + t4.7
++ ~Good luck with that.~ + t4.7

CHAIN C02AURAJ t4.6
~I'm not sure. If I knew more about my family's hereditary ailment, I might be able to explain it, but all I know is that something about sunflowers help in both curing it and keeping it at bay. It's why my family's developed a tradition of growing sunflowers, and why we chose it as our sigil.~
EXTERN C02AURAJ t4.7

CHAIN C02AURAJ t4.7
~It might be asking for a bit much, but... I have a bag of my family's special sunflower seeds. If you could ever find someone that can make them grow quickly, I'd be ever so grateful.~
END
+ ~CheckStatGT(Player1,15,WIS)
!Class(Player1,SHAMAN)
Class(Player1,DRUID_ALL)~ + ~I can call upon nature's aid to develop these seeds magically. It'll only take a while.~ + t4.10
+ ~InParty("Jaheira")~ + ~Jaheira, do you think you could develop these seeds with your magic?~ EXTERN BDJAHEIJ t4.jah1
+ ~!Dead("Jaheira")
Global("bd_jaheira_join","global",1)~ + ~Perhaps Jaheira may be able to help. I'll ask her.~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.8
++ ~I'll do what I can.~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.8
++ ~Don't count on it.~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.9

CHAIN C02AURAJ t4.8
~Thank you, <CHARNAME>.~
EXIT

CHAIN BDJAHEIJ t4.jah1
~Growing these seeds with nature's will is simple enough. Give me but a moment.~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
== C02AURAJ ~It— it worked! You're amazing, Jaheira! And you too, <CHARNAME>! Thank you, thank you so much!~
END
++ ~You're welcome.~ EXTERN C02AURAJ t4.11
++ ~Now you can add them to your medicine, right?~ EXTERN C02AURAJ t4.11
++ ~Don't look so excited. This is nothing.~ EXTERN C02AURAJ t4.11

CHAIN C02AURAJ t4.9
~Still, if we come across anybody, I hope it'll cross your mind to ask. Thanks in advance, <CHARNAME>.~
EXIT

CHAIN C02AURAJ t4.10
~You can? Oh, that's wonderful! Here, take the seeds. I want to watch the magic happen!~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~It— it worked! You're amazing, <CHARNAME>! Thank you, thank you so much!~
END
++ ~You're welcome.~ + t4.11
++ ~Now you can add them to your medicine, right?~ + t4.11
++ ~Don't look so excited. This is nothing to me.~ + t4.11

CHAIN C02AURAJ t4.11
~They— they're perfect. I'll just take a moment to add them to my medicine...~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",10)~ THEN C02AURAJ t5
~Thank you for the sunflowers, <CHARNAME>. I'll be able to make enough medicinal tea to last me for the rest of the expedition now.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1) TakePartyItem("c02asunf") DestroyItem("c02asunf")~
= ~Umm... there were a few flowers left over from the brewing process, and I wasn't sure what to do with them... so I put them in a glass jar. Even in their condition... I still think they're beautiful. I'd like to give them to you, as my way of saying thanks.~
END
++ ~They are quite lovely. Thank you, Aura.~ + t5.1
++ ~You seem to really like sunflowers.~ + t5.2
++ ~A jar of dead plants? No thanks.~ + t5.x

CHAIN C02AURAJ t5.x
~Oh. I see... so that's how you feel. Alright, then. I'm sorry I bothered you.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t5.1
~You're welcome. They might not be as important to you as they are to me, but I hope they'll at least bring you some joy.~
EXTERN C02AURAJ t5.2

CHAIN C02AURAJ t5.2
~I love sunflowers. Their petals can make tea, their leaves and stems have medicinal properties, their seeds are nutritious snacks... but more than anything, I just think they're beautiful. Something about their bright colors and warmth just... makes me happy.~
= ~Oh— what am I saying? You must think I'm being really foolish here, talking about flowers when we've got a war to fight.~
END
++ ~I don't think it's foolish at all. These flowers obviously carry a great meaning to you.~ + t5.3
++ ~It is rather silly, but I don't mind it.~ + t5.4
++ ~Maybe a little. Let's get back to business.~ + t5.5
++ ~That's enough of your nonsense. I'm sick of wasting time listening.~ + t5.x

CHAIN C02AURAJ t5.3
~Yeah... they do. I've always associated them with what I care about. Home, family, friends... just looking at those flowers reminds me of everything good in my life.~
EXTERN C02AURAJ t5.4

CHAIN C02AURAJ t5.4
~I just wanted to... share some of my happiness with you, I suppose, in the form of those sunflowers. It's good to see them again.~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t5.6
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t5.7

CHAIN C02AURAJ t5.5
~Mmm, you're probably right. I shouldn't keep you occupied any longer than I already have. Let's go, <CHARNAME>.~
EXIT

CHAIN C02AURAJ t5.6
~And... well, by giving those flowers to you, I hope that one day if we separate, you might think of me when you look at them... it might be wishful thinking, but the thought does comfort me.~
EXTERN C02AURAJ t5.7

CHAIN C02AURAJ t5.7
~Hehe... I think you've listened to me long enough. I shouldn't keep you from whatever we need to do next. Let's go, <CHARNAME>.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",12)~ THEN C02AURAJ t6
~I wonder how the family's doing back home. It's been years since I've seen them.~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~You must really miss them.~ + t6.1
++ ~How many years has it been, exactly?~ + t6.2
++ ~Don't expect any sympathy from me.~ + t6.3
++ ~I'm not interested in your musings at the moment, Aura.~ + t6.x

CHAIN C02AURAJ t6.x
~Oh... I was just talking to myself, <CHARNAME>. Don't mind me.~
EXIT

CHAIN C02AURAJ t6.1
~I do. I miss them so much, it hurts.~
EXTERN C02AURAJ t6.4

CHAIN C02AURAJ t6.2
~Nearly five years now... two years spent travelling the world, and nearly three living in Kozakura. Even though I'm long-lived, being apart from those you care for the most makes five years feel like an eternity.~
EXTERN C02AURAJ t6.1

CHAIN C02AURAJ t6.3
~Ah, I— I forgot about your situation with your own family. I guess talking about mine comes across as insensitive.~
= ~If you'd rather I stop talking, I won't begrudge you.~
END
++ ~No, continue. I apologize for the harsh words.~ + t6.4
++ ~I would prefer that.~ + t6.3a
++ ~Just stop talking. Forever.~ + t6.3b

CHAIN C02AURAJ t6.3a
~Okay. Just forget that I mentioned anything. I'm sorry.~
EXIT

CHAIN C02AURAJ t6.3b
~...~
= ~I get it. I just... thought we could be friends.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t6.4
~After you brought me those sunflowers, I thought about my old home, and everyone in my family. I think something about their scent provoked it. It's just so familiar.~
= ~When I washed up in Kozakura, without most of my memories... I truly felt like I was nothing but an empty shell. I couldn't laugh, or cry, or even smile... it's like my emotions didn't exist without the memories of what I valued.~
= ~The sheer joy I felt when I first remembered something... when Reika-san prodded my nose like my sisters used to... it was like being reborn again. I cried in her arms until I couldn't cry any more, but... as soon as I got that feeling, I just couldn't let it go.~
END
++ ~It must be awful to live like that, though. Like an incomplete puzzle that's missing something crucial, yet not knowing what.~ + t6.5
++ ~Will you return to Lantan and see them once we've brought down the crusade?~ + t6.6
++ ~At least you've got more than memories to hold on to.~ + t6.7
++ ~I'd rather you stop there. This is... uncomfortable for me to listen to.~ + t6.3a
++ ~Enough. I don't want to hear any more words from you. Ever.~ + t6.3b

CHAIN C02AURAJ t6.5
~It's a bittersweet feeling, regaining your memories piece by piece. I'm not sure how else to explain it... but I'd never want you to experience something like that. It's too cruel.~
EXTERN C02AURAJ t6.7

CHAIN C02AURAJ t6.6
~I— now that we've talked about it, I really do want to. Perhaps I'd even be able to live in peace awhile, with my family and my inventions... I'd like nothing more.~
EXTERN C02AURAJ t6.7

CHAIN C02AURAJ t6.7
~You've never told me anything about Gorion. I can understand if the wounds are still fresh, but perhaps you could at least tell me... was he good to you? Do you miss him?~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Very much so, on both accounts.~ + t6.8
+ ~!Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Very much so, on both accounts.~ + t6.9
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Not until after he was gone. It's one of those relationships I regret ending the way it did.~ + t6.8
+ ~!Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Not until after he was gone. It's one of those relationships I regret ending the way it did.~ + t6.9
++ ~I hated Gorion. I'm glad he's gone.~ + t6.10
++ ~I don't have strong feelings towards him either way.~ + t6.10
++ ~You're right about the wound being fresh. I don't want to talk about it.~ + t6.3a
++ ~I'm not discussing this with you. Not today, not ever.~ + t6.3b

CHAIN C02AURAJ t6.8
~...I'm so sorry. I— (she hugs you tightly)~
END
++ ~Hey... hey, that's too much, Aura.~ + t6.8a
++ ~Thank you.~ + t6.8b
++ ~Don't touch me!~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8c

CHAIN C02AURAJ t6.8a
~I— I'm sorry. I think I must have felt your sadness, and I was overwhelmed. I can still tell it hurts, but... still. I shouldn't do that.~
END
++ ~It's okay. Just don't surprise me like that.~ + t6.8d
++ ~You meant well. I just don't feel comfortable with that sort of attention.~ + t6.8d
++ ~I appreciate your friendship, Aura, but... I'd rather we kept it at that.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8d
++ ~Never do that again.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8d

CHAIN C02AURAJ t6.8b
~You— *sniff* you don't need to thank me, <CHARNAME>. Not for trying to comfort someone I care about.~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.8c
~Oh... I get it, that was wrong...~
EXTERN C02AURAJ t6.8a

CHAIN C02AURAJ t6.8d
~Yeah... you've made it clear enough. I understand.~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.9
~I'm sorry. I can tell it must still hurt.~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.10
~Why— no. I shouldn't ask. You probably have your reasons.~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.11
~Before I lost Reika-san, the closest I had to a mother in the last five years... the only loss I've ever known was my uncle Aelius. I've never known the pain of losing someone who's been there all your life. So, regardless of how you feel about Gorion, I'm... still sorry.~
END
++ ~How did you lose your uncle?~ + t6.12
++ ~Why are you telling me this?~ + t6.13
++ ~Enough. I'm done talking about this.~ + t6.14

CHAIN C02AURAJ t6.12
~Smokepowder accident. It was not long after Gond gifted us with the knowledge, and mistakes were expected... it's too gruesome. I don't want to talk about it.~
EXTERN C02AURAJ t6.13

CHAIN C02AURAJ t6.13
~I... don't know why I'm saying any of this. Perhaps it's just my way of trying to bond, by finding common ground... it may not be effective, but it's all I know.~
= ~Perhaps we should leave it here. Talking about our losses only brings us so far. Either way... thanks for listening.~
EXIT

CHAIN C02AURAJ t6.14
~A–alright, <CHARNAME>. Thanks for keeping this conversation going for this long.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",14)~ THEN C02AURAJ t7
~You know, I never thought I'd say this about war and fighting, but I'm actually... starting to have fun. A lot of fun, in fact. Isn't that strange?~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~I'm glad to hear it.~ + t7.1
++ ~I thought you hated conflict. What changed?~ + t7.2
++ ~Very strange indeed. I'm not finding any fun in this.~ + t7.3
++ ~Stop talking. I don't need to hear it.~ + t7.x

CHAIN C02AURAJ t7.x
~Oh... sorry.~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t7.1
~I'm not sure if it's your influence, or... just you, but I'm finding peace with myself. I can forgive myself more easily, and I take comfort in every joy life can still bring.~
= ~So... thank you, <CHARNAME>. For taking me on this journey with you, for listening and supporting me all the way. Thank you for being a true friend.~
END
++ ~Just a friend? Nothing more?~ + t7.6
++ ~You're welcome.~ + t7.4
++ ~Is this a pre-emptive farewell?~ + t7.5
++ ~Whatever. Just keep a lid on it.~ + t7.x

CHAIN C02AURAJ t7.2
~It's shocking, I know... I still don't like it, but perhaps I've grown numb to it, or... I've learned to take comfort in the good parts.~
EXTERN C02AURAJ t7.1

CHAIN C02AURAJ t7.3
~None at all? I can understand if the bloodshed and death is getting to you, but... even then, one can take comfort in their friends.~
EXTERN C02AURAJ t7.1

CHAIN C02AURAJ t7.4
~I don't know when this will end, but when we part, I'll miss you most of all. And if we meet again after that, I hope I'll have become someone even more worthy of your friendship.~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~You're already more than worthy of being my friend... and more.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",2)~ + t7.6
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~That's good enough for me, then.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Stow it. You've already said enough.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t7.5
~No— well, maybe if the our adventure reaches its end sooner than I expect, or if one of us doesn't make it... though I probably shouldn't be mentioning that possibility...~
EXTERN C02AURAJ t7.4

CHAIN C02AURAJ t7.6
~I— um, I didn't think you thought of me that way...~
= ~No, that's a lie. I think part of me always knew. That's why I've become so attached to you... I just didn't dare to admit it. Not to you, nor to myself...~
= ~Before this day, I would've considered myself too meek and unworthy of you, but since I've learned to accept the blessings that fate gives me... haha, I have no reason to pretend any longer.~
= ~I really, really like you, <CHARNAME>. You're not just beautiful, you're strong, brave, passionate... everything I wish I were.~
END
++ ~You're already those things, Aura. Just accept that.~ + t7.7
++ ~You don't need any of those things. I already like you as you are.~ + t7.7
++ ~There's no more need for words. Come here.~ + t7.8

CHAIN C02AURAJ t7.7
~No, surely not! Haha... but I guess you wouldn't lie to me.~
EXTERN C02AURAJ t7.8

CHAIN C02AURAJ t7.8
~...*giggle*~
= ~It's strange. Our battles become harder than ever, and yet right now... I couldn't be any happier.~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",16)~ THEN C02AURAJ t8
~We're... we're really going to jump into that portal into the Hells, aren't we? This isn't all some big nightmare?~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~I'm afraid not.~ + t8.1
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~I'm afraid not.~ + t8.2
++ ~Are you scared?~ + t8.3
++ ~(Pinch her)~ + t8.4
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~That's right. Best get to it.~ + t8.1
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~That's right. Best get to it.~ + t8.2
++ ~Not right now, Aura.~ + t8.0

CHAIN C02AURAJ t8.0
~Alright, then. I'll save it for after we survive all this. Assuming we will, of course... um, I mean, of course we will!~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.9
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.10

CHAIN C02AURAJ t8.1
~Hehe... yeah, you're right. If it was a nightmare, you wouldn't be here to face it with me.~
EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.2
~You know, it's strange, but... even now, literally staring into the Hells, I'm not afraid, not anymore. Not when you're here.~
= ~What do you think, <CHARNAME>? Do you think I've become stronger? Can you depend on me now, when it matters the most?~
END
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~I'd trust you with my life.~ + t8.5
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~I'd trust you with my life... and more.~ + t8.5
++ ~You're far above the person you were when we met. Why, you even look taller.~ + t8.6
++ ~As long as you can depend on me as your leader.~ + t8.7
++ ~I doubt it, but it hardly appears like I have a choice, do I?~ + t8.x

CHAIN C02AURAJ t8.3
~Well...~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.1
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.4
~Ow!~
= ~...I guess it isn't. *sigh*~
EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.5
~That's good. Where we're going, it's only going to be the few of us. You might just have to. *giggle*~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.6
~Hee hee, that can't be true. Or... could it? I do feel like I've grown, figuratively and literally. Regardless, it's a sweet thought.~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.7
~Of course I can. I always will.~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.8
~I'm glad I met you, <CHARNAME>. Now that I know you, I'd rather be nowhere else. Uh, even if it does mean leaping into a hellish pit with no guarantee of returning...~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~And I'd rather have no one else at my side.~ + t8.9
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~And I'd rather have no one else at my side.~ + t8.10
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~Thank you for your support. That makes this a whole lot easier.~ + t8.9
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~Thank you for your support. That makes this a whole lot easier.~ + t8.10
++ ~Whatever. You're just here as backup. Don't get in the way.~ + t8.x

CHAIN C02AURAJ t8.9
~Mm, maybe it's the heat, but my face feels all flushed... hee hee. I almost want to kiss you, but it seems kind of inappropriate for the moment, doesn't it?~
EXTERN C02AURAJ t8.10

CHAIN C02AURAJ t8.10
~Well, no sense holding off the inevitable any longer, right? Let's get to it!~
EXIT

CHAIN C02AURAJ t8.x
~Oh. So that's how it is... well, I won't bother you anymore, then. But I'll still follow you, for everything I owe you regardless. Let's go, <CHARNAME>.~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT

EXTEND_TOP BDJAHEIR 86
+ ~Global("C02AuraTalk","GLOBAL",9)
PartyHasItem("c02asack")~ + ~I got these sunflower seeds from Aura. She needs sunflower petals to make a medicinal tea for her health. Can you help out?~ + jaheira.sunflower1
END

CHAIN BDJAHEIR jaheira.sunflower1
~Hmph. It would have made more sense for her to come to me herself, but... I suspect she is likely still frightened of me for my ability to shapeshift. Very well, I will use druidic magic to grow and nurture these seeds quickly. This will only take a moment...~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~...there. It is done. They are in a slightly withered state from the process, but they will serve for medical needs.~
EXIT

EXTEND_TOP BDONORO 0
+ ~Global("C02AuraTalk","GLOBAL",9)
PartyHasItem("c02asack")~ + ~You appear to be a druid. Can you help me magically grow these sunflower seeds?~ + onoroth.sunflower1
END

CHAIN BDONORO onoroth.sunflower1
~Sunflower seeds, you say? Let me see them.~
= ~Hmm... yes, they appear to be healthy. I can do this, but such magic requires much of me. Provide me with two thousand gold and I will nurture these seeds for you.~
END
+ ~PartyGoldGT(1999)~ + ~Here's the gold.~ DO ~TakePartyGold(2000)~ + onoroth.sunflower2
+ ~!PartyGoldGT(1999)~ + ~I do not have that much gold on me at the moment.~ + 2
++ ~Two thousand gold?! I'll find someone else. Goodbye.~ + 2

CHAIN BDONORO onoroth.sunflower2
~Fine. This will not take very long.~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~Here. With nature's blessing, your sunflower seeds have bloomed into maturity. Take them and go. I must rest.~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////INTERJECTIONS//////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// Ammon

INTERJECT BDAMMON 0 C0AuraBDAMMON0
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Those sound like components for some sort of divination potion. I wonder what she needs it for...~
EXTERN BDAMMON 1

// Andrus

I_C_T BDANDRUS 3 C0AuraBDANDRUS
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooooh, this is bad. Residue like that can't be stabilized quickly, not without magical aid. And there's no safe way to dispose of it...~
END

// Barghest

I_C_T2 BDBARGHE 8 C0AuraBDBARGHE8
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Was that supposed to be inspiring? That was creepy.~
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

// Bridgefort

I_C_T BDBF1 1 C0AuraBDBF11
== C02AURAJ IF ~IsValidForPartyDialogue("C0Aura")~ THEN ~N–negative energy... whatever the crusaders threw at us, it's draining our life force. This is bad...~
END

EXTEND_TOP BDWYNAN 7 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~Aura. Can you suggest anything that might be helpful?~ EXTERN C02AURAJ bdwynan7
END

CHAIN C02AURAJ bdwynan7
~Negative energy doesn't belong in this plane... it'll affect everyone here adversely, first the wounded, then the healthy. We need to banish the source, fast.~
= ~It has to have been drawn through force by arcane magic. We'll need the original spell scroll to reverse-engineer the effects.~
COPY_TRANS BDWYNAN 8

EXTEND_BOTTOM BDWYNAN 14
+ ~IsValidForPartyDialogue("C0Aura") Class("C0Aura",MAGE_ALL)~ + ~That's right. Would you do the honors, Aura?~ EXTERN C02AURAJ bdwynan14
END

CHAIN C02AURAJ bdwynan14
~I'll do my best. Stand back, everyone! You never know what could happen when evil magic is dispelled...~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_c0aura","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("c0cutgl1",FALSE)~ EXIT

// Clovista

EXTEND_TOP BDCLOVIS 3 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~You look unusually interested, Aura. Got something to say?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN C02AURAJ bdclovis1
END

CHAIN C02AURAJ bdclovis1
~I'm not great at fighting close up, but I've learned from experience that aiming high with a blade isn't worth it when you're short. You'll wear yourself out too fast.~
== BDCLOVIS ~I do get fatigued pretty quickly during drills. I thought I needed more training.~
== C02AURAJ ~You'll improve faster if you take advantage of your size. Go for the legs. You'll have an easier time hitting their face once they've fallen over.~
EXTERN BDCLOVIS 5
/*
// Coldhearth Lair

CHAIN IF WEIGHT #-1 ~Global("C02AuraColdhearthLair","bd1200",1)~ THEN C02AURAJ coldhearth
~Nngh... something's strange... almost familiar...~ [C0BLANK]
DO ~SetGlobal("C02AuraColdhearthLair","bd1200",2)~
END
++ ~What's wrong, Aura?~ + coldhearth.1
++ ~Are you okay? Were you hurt badly somewhere?~ + coldhearth.1
++ ~Don't you fall down on me right now.~ + coldhearth.1

CHAIN C02AURAJ coldhearth.1
~No... I'm fine, <CHARNAME>. I just had a sudden sharp pain in my head... as though I've trying to remember something important...~
= ~I'm not sure why, but... those tubes, those notes... it's like I've seen this place before, or some place just like it... just as horrifying. But I can't put my finger on it.~
END
+ ~Global("C02AuraWasInBG1","GLOBAL",1) CheckStatGT(Player1,9,INT)~ + ~Come to think of it, you mentioned losing your memory when you were shipwrecked and ended up in Kozakura. Is it possible you're still missing some memories?~ + coldhearth.2
+ ~OR(2)
!Global("C02AuraWasInBG1","GLOBAL",1)
!CheckStatGT(Player1,9,INT)~ + ~Could it be that you've forgotten about something important from your past?~ + coldhearth.2
++ ~Whatever. Just don't let a little headache get in the way.~ + coldhearth.3
++ ~Recover quickly, or I'm leaving you behind.~ + coldhearth.3

CHAIN C02AURAJ coldhearth.2
~It's possible, but... even when I previously lost my memory, anything relevant from the past sparked a response from my mind, yet this time, I... can't quite... make it out...~
= ~Ugh, it's no use. Maybe it's just the foul air, but I can't bring myself to focus at all. Hopefully it'll come with time.~
EXIT

CHAIN C02AURAJ coldhearth.3
~S–sorry, <CHARNAME>, I'll be with you shortly.~
EXIT
*/
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

EXTEND_TOP BDDOSIA 13 #4
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

// Ettin

ADD_TRANS_TRIGGER BDETTIN 8 ~!IsValidForPartyDialog("C0Aura")~

EXTEND_TOP BDETTIN 8
+ ~IsValidForPartyDialog("C0Aura")~ + ~Uh, I don't really want your loincloth. Thank you though. No, please. Leave it on.~ EXTERN C02AURAJ bdettin1
+ ~IsValidForPartyDialog("C0Aura")~ + ~What are you doing... no, NO. I do NOT need to see this.~ EXTERN C02AURAJ bdettin2
+ ~IsValidForPartyDialog("C0Aura")~ + ~Cover yourself, monster! I think I'm going to be sick.~ EXTERN C02AURAJ bdettin1
END

CHAIN C02AURAJ bdettin1
~...Oh. Eww.~
END
IF ~IsValidForPartyDialogue("SAFANA")~ EXTERN BDSAFANJ 206
IF ~!IsValidForPartyDialogue("SAFANA")~ EXTERN BDETTIN 9

CHAIN C02AURAJ bdettin2
~...Oh. Eww.~
END
IF ~IsValidForPartyDialogue("GLINT")~ EXTERN BDGLINTJ 79
IF ~!IsValidForPartyDialogue("GLINT")~ EXTERN BDETTIN 9

// Floss & Gurgle

I_C_T2 BDFLOSS 27 C0AuraBDFLOSS27
== BDFLOSS ~Also take this, <PRO_RACE>. It's small fish, very tasty snack. Floss is always hungry after talking a lot. You must be hungry too.~
DO ~GiveItemCreate("c02afish",Player1,1,0,0)~
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

// Isabel

I_C_T BDISABEL 35 C0AuraBDISABEL35
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*giggle* It kind of is...~
END

// Kruntur

I_C_T BDKRUNTU 8 C0AuraBDKRUNTU8
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Whoa! Sentient armor? That's a new one.~
END

// Ladle

I_C_T BDLADLE 5 C0AuraBDLADLE5
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ladle? It's not every day you meet a gnome with a name like that. How'd you get it?~
== BDLADLE ~Well, you see, my old ma worked at an eatery, and... er, it's an embarrassing story. Don't ask.~
END

// Map Guard

I_C_T BDMAPGUA 2 C0AuraBDMAPGUA2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*psst* I managed to sketch a copy of the map while the guard was distracted. We can leave it alone now.~
DO ~SetGlobal("bd_map_fence","global",3)
GiveItemCreate("bdmisc24","C0Aura",1,0,0)
TriggerActivation("map_table",FALSE)~
END

// Phossey

I_C_T2 BDPHOSSE 3 C0AuraBDPHOSSE3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~... ... *shifts uncomfortably*~
END

// Poisoned Crusader

EXTEND_BOTTOM BDPCRUS 3 #6
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~Aura? Do you think you can take a look?~ EXTERN BDPCRUS bdpcrus
END

EXTEND_BOTTOM BDPCRUS 7 #5
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~Aura? Do you think you can take a look?~ EXTERN BDPCRUS bdpcrus
END

CHAIN BDPCRUS bdpcrus
~Uh huh. I'm already on it.~
= ~Oh... this... isn't good. Whatever the poison is, it's already become one with their blood flow. There's nothing I can do. We'd need a specific cure for this.~
EXTERN BDPCRUS 6

// Potion of Sleep

ADD_TRANS_TRIGGER BDBELT 10 ~Global("C02AuraPoisonedSupplies","GLOBAL",0)~ DO 2

EXTEND_TOP BDBELT 10 #3
+ ~Global("bd_poison","bd0035",1)
Global("bd_MDD1001_morale","global",1)
GlobalGT("C02AuraPoisonedSupplies","GLOBAL",0)~ + ~I was asked to poison the crusaders' supplies at Dragonspear Castle. Instead, I opted to sedate them using a painless sleeping potion in order to spare lives on both sides. I act with mercy towards my allies and my enemies.~ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_poison","bd0035",2)~ EXTERN BDBELT 11
END

CHAIN IF WEIGHT #-1 ~Global("C02AuraPoison","GLOBAL",1)~ THEN C02AURAJ poison
~<CHARNAME>... about that poison... I didn't want to say anything when mister de Lancie was around, but I've got an idea if you'd rather incapacitate the crusaders without seriously hurting them.~ [C0BLANK]
DO ~SetGlobal("C02AuraPoison","GLOBAL",2)~
END
++ ~You've got my attention. Go ahead.~ + poison.1
+ ~PartyHasItem("bdpotn01")~ + ~No need. I couldn't care less if our enemies suffer.~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~I'm not planning on winning the war through tricks, Aura.~ + poison.3

CHAIN C02AURAJ poison.0
~I... I don't like the sound of that, but... it's your call, I guess.~
EXIT

CHAIN C02AURAJ poison.1
~Well, here's what I was thinking... rather than using poison, I could create a sleeping potion that we can use on the crusaders' supplies instead. So when the time comes for the real battle, they'll hopefully fall unconscious and stop fighting.~
= ~The fight will be easier, and there'll be less blood spilled on both sides. Wouldn't that be a better alternative?~
END
++ ~That's actually a great idea. We'll do it your way.~ + poison.2
+ ~PartyHasItem("bdpotn01")~ + ~I think that's more merciful than the crusaders deserve. I'm using the poison.~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~No. We'll fight the crusaders fairly and honorably.~ + poison.3

CHAIN C02AURAJ poison.2
~I'll just take a few moments to run to the alchemist tent, then. Be right back.~
DO ~FadeFromColor([30.0],0) TakePartyItem("bdpotn01") DestroyItem("bdpotn01") GiveItemCreate("c02apotn",Player1,1,0,0) SetGlobal("bd_MDD1001_morale","global",1)~
= ~Here. I think I've got the concentration right, so it's very, very strong. Even a few drops diluted in water should put someone to rest for a good hour or so.~
EXIT

CHAIN C02AURAJ poison.3
~Okay... you know best, I suppose.~
EXIT

// Rat

I_C_T BDFRAT 3 C0AuraBDFRAT3
== C02AKOKO IF ~See("c02akoko")~ THEN ~*meow*~ [CAT01]
== C02AURAJ IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Huh? Koko-chan?~
== C02AURA IF ~!IsValidForPartyDialog("C0Aura")~ THEN ~Huh? Koko-chan?~
== C02AKOKO ~*me-eow!*~ [FAMCAT01]
== BDFRAT ~Squeeeeek!~
== C02AURAJ IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Oh! Uh, I'd better bring him waaaay over there. Until you're done talking with the, uh, rat.~
== C02AURA IF ~!IsValidForPartyDialog("C0Aura")~ THEN ~Oh! Uh, I'd better bring him waaaay over there. Until you're done talking with the, uh, rat.~
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

// Rhino beetle

I_C_T BDJAHEIJ 27 C0AuraBDJAHEIJ27
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oooh! Look at how big it is! Isn't it cute?~
END

CHAIN IF ~AreaCheck("BD0114")
Global("BD_POINT6","BD0114",2)~ THEN C02AURAJ rhinobeetle
~Oooh! Look at how big it is! Isn't it cute?~ [C0BLANK]
COPY_TRANS BDJAHEIJ 27

// Schael

EXTEND_TOP BDSCHAEL 40 #4
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0Aura")
Global("C02AuraSchael","GLOBAL",0)~ + ~What about Aura? She can't be hard to find.~ DO ~SetGlobal("C02AuraSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschael
END

CHAIN BDSCHAEL bdschael
~Hmm... my last reports mentioned the Lantanese gnome and her machine bodyguard leaving Baldur's Gate... heading north, oddly enough. As I recall, the islands of Lantan lie in the south.~
== BDSCHAEL ~Perhaps she is travelling towards Waterdeep, in which case the expedition is likely to encounter her en route given our plans to join forces with the Waterdhavian troops. She may be willing to rejoin you once we find her.~
COPY_TRANS BDSCHAEL 40

// Scrying Pool

I_C_T BDSCRY 0 C0AuraBDSCRY
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~A scrying pool... it's rare to find one this powerful. The mage who built this place must have been skilled.~
== BDSCRY ~...~ 
END

// Strunk

INTERJECT BDSTRUNK 3 C0AuraBDSTRUNK3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Th–that's cruel! You've forcibly drawn elemental spirits from their home plane and bound them here? They despise that!~
EXTERN BDSTRUNK 5

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
+ ~OR(2) Global("C02AuraRomanceActive","GLOBAL",1) Global("C02AuraRomanceActive","GLOBAL",2)~ + ~Don't speak of Aura as if she's an object, fiend! She is more to me than she will ever become to you.~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02AURAJ ThrixWager2
+ ~!Global("C02AuraRomanceActive","GLOBAL",1) !Global("C02AuraRomanceActive","GLOBAL",2)~ + ~You ask for too much, fiend. Aura's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02AURAJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN C02AURAJ ThrixWager2
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
++ ~Sorry, Aura. I guess I wasn't smart enough to get that right.~ DO ~SetGlobal("C02_thrix_mark_Aura","global",1)~ EXTERN C02AURAJ ThrixWager5
++ ~I don't think so. The only one to be brought to heel will be you, fiend!~ EXTERN BDTHRIX 10

CHAIN C02AURAJ ThrixWager5
~No! Magatama... spirits above... protect me...~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Tristian

EXTEND_BOTTOM BDTRISTI 14
+ ~IsValidForPartyDialogue("C0Aura")~ + ~Aura.~ EXTERN C02AURAJ bdtristi
END

CHAIN C02AURAJ bdtristi
~I've heard of Coroniir, but I've never played it before... though if it's anything like regular chess, then it can't be that hard, right?~
EXTERN BDTRISTI 15

// Trollbane Arrow

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",1)~ THEN C02AURAJ trollbane
~If you're going to fight trolls, <CHARNAME>, you might want to take these arrows.~ [C0BLANK]
DO ~SetGlobal("C02AuraTrollbaneArrow","GLOBAL",2)
GiveItemCreate("c0auaro4",Player1,5,0,0)~
= ~I've been working on them since I was told we'd have to go through the Troll Claw Woods. They're filled with trollbane, a sort of poison for trolls. If it gets into their bloodstream, it'll stop them from regenerating.~
END
++ ~Very handy. Thank you, Aura.~ + trollbane.1
++ ~Do you have any more?~ + trollbane.1
++ ~Now this is what I keep you around for.~ + trollbane.1

CHAIN C02AURAJ trollbane.1
~I've gone through the alchemy instructions with quartermaster Belegarm. He'll stock up on them as quickly as he can. The components aren't cheap, though, so you'll have to pay for them.~
= ~That's all I have to say. We can keep moving now.~
EXIT

// Vichand

EXTEND_TOP BDVICHAN 8 #5
+ ~IsValidForPartyDialogue("C0Aura")~ + ~Aura, do you think you can persuade him?~ EXTERN C02AURAJ bdvichan
END

CHAIN C02AURAJ bdvichan
~Hello, sir. Um... you see, I'm an artificer from Lantan who's been studying magic for several years now, and... I was wondering if you could offer me a chance to study the spell you used? Perhaps I could use it to create some sort of thaumaturgical invention to further the crusade's efforts. I'd be ever so grateful.~
== BDVICHAN ~Hmm.~
== C02AURAJ ~Please?~
EXTERN BDVICHAN 10

// Vidyadhar

EXTEND_TOP BDVIDYAD 9 #5
+ ~IsValidForPartyDialogue("C0Aura")~ + ~Aura, any ideas?~ EXTERN C02AURAJ bdvidyad
END

CHAIN C02AURAJ bdvidyad
~Bees, of course. Isn't it simple?~
EXTERN BDVIDYAD 10

// Voidstone

CHAIN IF WEIGHT #-1 ~Global("C02AuraVoidstone","GLOBAL",1)~ THEN C02AURAJ voidstone
~Those stones... the shards of the negative energy spellstone. Can I take a look at them?~ [C0BLANK]
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
= ~I can't make too many at once. It's just too draining on my resources... not to mention, it's dangerous. I'll only be able to make one per alchemy session. It'll be powerful, though, that much I can guarantee.~
DO ~SetGlobal("C02AuraVoidstone","GLOBAL",2) AddXPObject("C0Aura",500)~ EXIT

// Wilhelmina

I_C_T BDWILHEL 0 C0AuraBDWILHEL0
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Turnip juice? Now there's an acquired taste...~
== BDWILHEL ~What do you say? One turnip juice for you?~
END

I_C_T BDWILHEL 1 C0AuraBDWILHEL1
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I... uh, thought this was turnips we were talking about here, not ambrosia. Unless there's something about the miraculous curative properties of turnip extract that I've never read about...~
END

// Ulori

EXTEND_TOP BDULORI 3
+ ~PartyHasItem("c0auaro4")~ + ~See this? It's a burning arrow, and it's filled with trollbane. Make another move and I'll plunge it into your stinking flesh.~ EXTERN BDULORI C0AuraULORI
END

CHAIN BDULORI C0AuraULORI
~AAARGH! Fire, bad! Keep fire away from Ulori! Me do anything you ask!~
COPY_TRANS BDULORI 5

// "Koko-chan"

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("C0_koko_coaliton_camp","bd3000",1)~ THEN C02AKOKO koko
~*meow*~ [CAT01]
DO ~SetGlobal("C0_koko_coaliton_camp","bd3000",2)~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C02AURAJ koko.inparty
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C02AURA koko.notinparty

CHAIN C02AURAJ koko.inparty
~Huh? Koko-chan? You wanna get out? Okay, here you go.~
== C02AURAJ ~This is probably a great place to let him stay for the time being anyway. The camp will be around until the siege against Dragonspear Castle's over. And look at all the rats!~
END
++ ~I'm sure some of the soldiers will appreciate having him around too.~ EXTERN C02AURAJ koko.1
++ ~Looks like he'll be safe here.~ EXTERN C02AURAJ koko.1
++ ~You sure he wants to stick around?~ EXTERN C02AURAJ koko.2
++ ~Thank goodness. The two of you were insufferable.~ EXTERN C02AURAJ koko.3

CHAIN C02AURAJ koko.1
~Yeah, probably. I have a feeling the places we're going are going to be more dangerous than ever now. Not that the previous places weren't dangerous too.~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.2
~Well... I don't know. If he decides it's time, he'll leave. But it's up to him. I don't think he will, really. There's food and shelter here, why would he want to leave?~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.3
~Bleh. Cat-hater. Meanie.~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.4
~You be good now, Koko-chan, okay? Don't wander off unless you know where you're going. I'll still come around and see you, okay? Okay, bye!~
== C02AKOKO ~*meow*~ [CAT01]
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("C0_koko_coaliton_camp","bd3000",2)~ THEN C02AKOKO koko2
~*meow*~ [CAT01]
END
IF ~IsValidForPartyDialog("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ EXTERN C02AURAJ koko2.2 
IF ~!IsValidForPartyDialog("C0Aura") See("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ EXTERN C02AURA koko2.3
IF ~!See("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ + koko2.4
IF ~!PartyHasItem("c02afish")~ EXIT
+ ~PartyHasItem("c02afish")~ + ~(Give Koko the sardine)~ DO ~SetGlobalTimer("C02_koko_gift_timer","GLOBAL",ONE_DAY)
TakePartyItem("c02afish") DestroyItem("c02afish")~ + koko2.1

CHAIN C02AKOKO koko2.1
~*sniff sniff*~
= ~(The cat gobbles the sardine down. It purrs and rubs itself against your legs affectionately.)~
EXIT

CHAIN C02AURAJ koko2.2
~What have you got there, Koko-chan? Hey, he's giving it to you, <CHARNAME>!~
EXTERN C02AKOKO koko2.4

CHAIN C02AURA koko2.3
~What have you got there, Koko-chan? Hey, he's giving it to you, <CHARNAME>!~
EXTERN C02AKOKO koko2.4

CHAIN C02AKOKO koko2.4
~(The cat drops something shiny from its mouth at your feet. It appears to want you to have it.)~
DO ~SetGlobal("C02_koko_give_gift","GLOBAL",2) GiveItemCreate("c02aring",Player1,1,0,0)~ EXIT

CHAIN C02AURA koko.notinparty
~Huh? Koko-chan? You wanna get out? Okay, here you go.~
== C02AURA ~This is probably a great place to let him stay for the time being anyway. The camp will be around until the siege against Dragonspear Castle's over. And look at all the rats!~
END
++ ~I'm sure some of the soldiers will appreciate having him around too.~ EXTERN C02AURA koko.a1
++ ~Looks like he'll be safe here.~ EXTERN C02AURA koko.a1
++ ~You sure he wants to stick around?~ EXTERN C02AURA koko.a2
++ ~Thank goodness. The two of you were insufferable.~ EXTERN C02AURA koko.a3

CHAIN C02AURA koko.a1
~Yeah, probably. I have a feeling the places we're going are going to be more dangerous than ever now. Not that the previous places weren't dangerous too.~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a2
~Well... I don't know. If he decides it's time, he'll leave. But it's up to him. I don't think he will, really. There's food and shelter here, why would he want to leave?~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a3
~Bleh. Cat-hater. Meanie.~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a4
~You be good now, Koko-chan, okay?  Don't wander off too far from me now. Have fun!~
== C02AKOKO ~*meow*~ [CAT01]
EXIT

APPEND C02AURAJ

// SEES BEAR

IF ~Global("C0AuraHatesBears","GLOBAL",1)~ ihatebears
SAY ~Aaiiiee!~
++ ~What?! What's wrong?~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",3)~ + ihatebears2
END

IF ~~ ihatebears2
SAY ~B–b—BEAR! I–it's a bear! Oh, no, it's spotted us! Eek, let's run as fast as we can, <CHARNAME>!~
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~That's the quickest way of making sure the bear catches you, Aura. You're not supposed to run away from a bear, or else it'll think of you as prey.~ + ihatebears5
++ ~You're afraid of a *bear*?~ + ihatebears3
++ ~I don't like bears myself. You're right, let's run!~ + ihatebears4
END

IF ~~ ihatebears3
SAY ~D–don't joke about it. You have no idea... in Kozakura, they say there are bears in the mountains that eat people. And I'm so tiny, it'd swallow me in one gulp! Oh, curse it, why did I have to say it out loud? Now I'll be picturing it all day...~
IF ~~ + ihatebears4
END

IF ~~ ihatebears4
SAY ~Ooh, too late, I think it's coming at us. Y–you stay at the front, <CHARNAME>, I'll stand behind you. To shoot arrows at it, n–not to run away, of course!~
IF ~~ EXIT
END

IF ~~ ihatebears5
SAY ~E–easy for you to say, no bear would ever go after you! I'm sure I already look like a nice, delicious snack for any bear that sees me... *shudder*~
IF ~~ + ihatebears4
END

IF ~Global("C0AuraHatesBears","GLOBAL",2)~ ihatebearsagain
SAY ~Aaiiiee!~
++ ~What?! What's wrong?~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",3)~ + ihatebearsagain2
END

IF ~~ ihatebearsagain2
SAY ~B–b–b... it's a b—~
++ ~Bear?~ + ihatebearsagain3
++ ~Don't tell me you're STILL afraid of bears?!~ + ihatebearsagain3
++ ~*sigh*~ + ihatebearsagain3
END

IF ~~ ihatebearsagain3
SAY ~W–why must there always be big, scary bears wherever we go?!~
IF ~~ EXIT
END

// SPIRIT BEAR

IF ~Global("C0AuraSummonedBears","GLOBAL",1)~ spiritbear
SAY ~Eep! Ghosts and bear were bad enough! Now it's a ghost of a bear? Couldn't you have summoned something nicer?~
IF ~~ DO ~SetGlobal("C0AuraSummonedBears","GLOBAL",2)~ EXIT
END

// DRAGON

IF ~Global("C02AuraMorenthene","GLOBAL",2)~ dragontalk
SAY ~Phew! That dragon was way, way, waaaay scarier than Ceri. Oh, I miss her...~
++ ~Ceri?~ DO ~SetGlobal("C02AuraMorenthene","GLOBAL",3)~ + dragontalk1
++ ~Whatever...~ EXIT
END

IF ~~ dragontalk1
SAY ~Oh, Ceri's a copper dragon. Her full name was Ce'rithalairixen—we all called her Ceri for short. She was one of my best friends back in Lantan. We went to school together!~
++ ~You went to school with a dragon?~ + dragontalk2
+ ~!CheckStatGT(Player1,16,INT)~ + ~Ce-ri-tha... what?~ + dragontalk3
+ ~CheckStatGT(Player1,16,INT)~ + ~"Shining Light of Stars and Flame"?~ + dragontalk4
++ ~I'm not even going to try and pronounce that.~ + dragontalk5
END

IF ~~ dragontalk2
SAY ~Actually, we first met outside of school. I came across her home one day, and if you know how copper dragons keep their homes... well, anyway, I told her about the academy, and she thought it'd be fun to join.~
IF ~~ + dragontalk6
END

IF ~~ dragontalk3
SAY ~Ce'rithalairixen! It's a little hard to say at first, but once you get the hang of it, it rolls off the tongue quite nicely.~
IF ~~ + dragontalk6
END

IF ~~ dragontalk4
SAY ~That's right! I guess you must know your Draconic really well, <CHARNAME>.~
IF ~~ + dragontalk6
END

IF ~~ dragontalk5
SAY ~I don't blame you. But I like saying it. It's just such an exquisite name!~
IF ~~ EXIT
END

IF ~~ dragontalk6
SAY ~I really wonder how Ceri's been doing over the years. Considering how clever she is, I bet she's completely remodeled her home using the skills she learned at the academy. I don't think I'll be able to get through her puzzles without help the next time I visit her...~
= ~Oops, I think I talked for a bit too long there. This isn't really the time or place for me to reminisce, is it?~
IF ~~ EXIT
END

// THRIX

IF ~Global("C02AuraSacrifice","bd4500",1)~ ThrixTalk0
SAY ~You... you... I believed in you! And... and you use me for your own purposes like that?~
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~I was bluffing. I didn't really intend to give you to that devil.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~I was bluffing. I didn't really intend to give you to that devil.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~I'm sorry, Aura.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~I'm sorry, Aura.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~My soul is worth far more than your own, gnome. Remember that.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~My soul is worth far more than your own, gnome. Remember that.~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~I... I'm not just going to let him take me. Not ever. I trust in the blessings that Reika-san and the spirits have given me. But you... I'll never trust you again.~
IF ~OR(2)
Global("C02AuraRomanceActive","GLOBAL",1)
Global("C02AuraRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)
!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~Well... you did manage to solve the riddle. Maybe you just believed in yourself that much, but... I never thought you'd take such a risk.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~Are you really? I... I want to believe you. I really do. Never would I have imagined that you would do something like that to anyone, never mind me...~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~Yes, I'll remember. I'll always remember.~
IF ~OR(2)
Global("C02AuraRomanceActive","GLOBAL",1)
Global("C02AuraRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)
!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY ~Whatever we had... no, whatever I thought we had... it's over.~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~Let's... go. Maybe I'm just too shaken right now, but I just want to forget this ever happened.~
IF ~~ EXIT
END

// Reputation warning

IF ~Global("C02AuraReputationWarning","GLOBAL",1)~ reputation
 SAY ~I... I just wanted to say I don't like the way you're leading, <CHARNAME>. I know some things are different during war, but surely you can try and be a little bit... kinder?~
 ++ ~You're right. I may need to reconsider my actions from now on. Thank you for sharing your opinion.~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.1
 ++ ~There is no place in kindness when it comes to war. Best you learn that quickly.~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.2
 ++ ~Don't mistake me for being a benevolent person. You made the choice to follow me.~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.3
 ++ ~No, I can't. And don't call me Shirley.~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.4
END

IF ~~ reputation.1
SAY ~Oh, I... didn't think it'd be that easy. I'm glad you're listening, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ reputation.2
SAY ~Maybe you're right, but... it doesn't make it any easier to stand by and watch things happen. Maybe we're just not suited to travel together, and if so, we'll have to part ways soon. I'm hoping it won't come to that.~
IF ~~ EXIT
END

IF ~~ reputation.3
SAY ~You have a point, but... if I've made a mistake, then sooner or later I must own up to it. If that happens, I'll have no choice but to part ways with you.~
IF ~~ EXIT
END

IF ~~ reputation.4
SAY ~Fine. Just... keep this up and I'll not be here long. I felt like I needed to make that clear.~
IF ~~ EXIT
END

// PID

IF ~GlobalGT("bd_plot","global",0)
!AreaCheck("BD0120")
!AreaCheck("BD0130")
IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~How's it going?~ [C0BLANK]
 + ~Global("C02AuraTalk","GLOBAL",9) PartyHasItem("c02asunf")~ + ~I got you the sunflowers you wanted.~ DO ~SetGlobal("C02AuraTalk","GLOBAL",10) RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",TWELVE_HOURS)~ + sunflowers
 + ~OR(2)
 Global("C02AuraRomanceActive","GLOBAL",1)
 Global("C02AuraRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirt
 + ~OR(2) Global("C02AuraBurstOrb","GLOBAL",0)
 GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~Do you have any Burst Orbs for me?~ DO ~SetGlobal("C02AuraBurstOrb","GLOBAL",1) SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 ++ ~May we talk?~ + pidtalk
 + ~HasItem("c02aucat","c0aura")
 Global("C0AuraStopKitty","LOCALS",0)~ + ~I'd prefer if you could talk to your cat more quietly.~ DO ~SetGlobal("C0AuraStopKitty","LOCALS",1)~ + stopkitty
 + ~HasItem("c02aucat","c0aura")
 !Global("C0AuraStopKitty","GLOBAL",0)~ + ~You can talk to your cat again if you want.~ DO ~SetGlobal("C0AuraStopKitty","GLOBAL",0)~ + rekitty
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I'd like you to stop talking to me for a while.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END

IF ~~ pid.2
 SAY ~Okay. What else?~
 + ~Global("C02AuraTalk","GLOBAL",9) PartyHasItem("c02asunf")~ + ~I got you the sunflowers you wanted.~ DO ~SetGlobal("C02AuraTalk","GLOBAL",10) RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",TWELVE_HOURS)~ + sunflowers
 + ~OR(2)
 Global("C02AuraRomanceActive","GLOBAL",1)
 Global("C02AuraRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirt
 + ~OR(2) Global("C02AuraBurstOrb","GLOBAL",0)
 GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~Do you have any Burst Orbs for me?~ DO ~SetGlobal("C02AuraBurstOrb","GLOBAL",1) SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 ++ ~May we talk?~ + pidtalk
 + ~HasItem("c02aucat","c0aura")
 Global("C0AuraStopKitty","LOCALS",0)~ + ~I'd prefer if you could talk to your cat more quietly.~ DO ~SetGlobal("C0AuraStopKitty","LOCALS",1)~ + stopkitty
 + ~HasItem("c02aucat","c0aura")
 !Global("C0AuraStopKitty","GLOBAL",0)~ + ~You can talk to your cat again if you want.~ DO ~SetGlobal("C0AuraStopKitty","GLOBAL",0)~ + rekitty
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I'd like you to stop talking to me for a while.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END

IF ~~ sunflowers
SAY ~Oh... thank you! They— they're perfect. I'll just take a moment to add them to my medicine...~
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT
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
	+ ~Global("C02AuraPID1","GLOBAL",1)~ + ~Are you fond of cats, Aura?~ DO ~SetGlobal("C02AuraPID1","GLOBAL",2)~ + pid1.1
	+ ~Global("C02AuraPID2","GLOBAL",0)~ + ~Your bow is an interesting weapon. Did you design it?~ DO ~SetGlobal("C02AuraPID2","GLOBAL",1)~ + pid2
	+ ~Global("C02AuraPID2","GLOBAL",1)~ + ~Why is your bow called the 'Sunshooter'?~ DO ~SetGlobal("C02AuraPID2","GLOBAL",2)~ + pid2.1
	++ ~What are your thoughts on the situation right now?~ + pid3
	+ ~NumInPartyAliveGT(2)~ + ~Can I ask you about one of our companions?~ + pid4
	+ ~GlobalGT("C02AuraTalk","GLOBAL",0)
	   Global("C0AuraStartRomance","GLOBAL",0)
	   Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I have to ask, Aura... are you interested in me?~ + pid5
	+ ~Global("C02AuraRomanceActive","GLOBAL",1)
	   Global("C02AuraLovePoem","GLOBAL",1)
	   PartyHasItem("c02apoem")~ + ~Did you write this poem, Aura?~ DO ~SetGlobal("C02AuraLovePoem","GLOBAL",2)~ + pid6
	+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~Aura, I'm not interested in the attention you're giving me. I value our friendship, but I'd prefer it remain at that.~ + pid.breakrom1
	+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~Aura, I want to end our relationship.~ + pid.breakrom2
	++ ~I wanted to ask you about something else.~ + pid.2
	++ ~On second thought, not right now.~ + pid.end
END

IF ~~ pid.breakrom1
SAY ~I— okay, if you're sure. You mean what you say... right?~
++ ~Yes. I mean it.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + pid.breakrom1.1
++ ~No, never mind. I don't know what I was thinking.~ + pid.nobreakrom
END

IF ~~ pid.breakrom1.1
SAY ~Just friends, then. Nothing more.~
IF ~~ EXIT
END

IF ~~ pid.breakrom2
SAY ~You— even after everything you said?~
++ ~Yes. I mean it.~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + pid.breakrom2.1
++ ~No... I've changed my mind. I can't.~ + pid.nobreakrom
END

IF ~~ pid.breakrom2.1
SAY ~...~
= ~F–fine. Your... your happiness comes first.~
IF ~~ EXIT
END

IF ~~ pid.nobreakrom
SAY ~D–don't scare me by saying stuff like that, <CHARNAME>.~
IF ~~ EXIT
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

IF ~~ pid1.1
SAY ~Yep. I mean, squirrels are still my favorites, like little Muffy-boo here, but my family didn't want one running around our house. We had a little brown tabby cat that used to keep me company at home instead. I developed a soft spot for the furry critters.~
= ~I wonder if the kitty's still wandering our home today. If he is, he'd be a pretty big cat now.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid2
SAY ~The Sunshooter? Yep— well, it was a collaborative effort more than anything. I sketched the original design, but my parents helped me with most of the more complex parts.~
= ~See this little ring around eye level? That's to help me focus on the target. And the separate joints reduce the strain on my arm when drawing and allow me to fold the bow into something a little easier to carry when I'm not fighting.~
= ~In Lantan, we call it a mechanical compound bow. It's usually not a very practical weapon on the field because having so many parts makes it fragile and more likely for your shots to go wrong, but the flexibility and toughness of mithral circumvents that. Mithral's not cheap, though, so building this bow was costly.~
= ~My parents gave a lot to make sure I'd be safe... so I practice with this bow every day, until I can make every shot count.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid2.1
SAY ~There's a folk tale in Kara-Tur... once upon a time, the sky was ruled by not one, but ten suns, whose scorching light and heat burned the lands and scorched the fields. Drought and famine claimed the earth, and man had all but lost hope.~
= ~A heroic archer, seeking to end the tyranny, took his god-slaying bow and raised it to the skies, shooting down all but one of the suns, returning the world to its natural order. As punishment for slaying nine of her children, the goddess of Heaven took the hero's beloved and imprisoned her on the moon, cursing her with a lonely eternity as its goddess.~
= ~Out of grief, the hero sought the highest mountain in the world and stood vigil atop it for the rest of his life. For every night of every year, he launched an arrow of light into the evening sky, hoping that his message would one day reach his beloved and lead her back home.~
= ~That tale was the source of my name for this bow... the Sunshooter. There's something about the tale I was told... the love and devotion, that inspired it.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3
SAY ~You mean, regarding our fight against the crusade? Let me think...~
IF ~GlobalGT("bd_plot","global",0)
GlobalLT("bd_plot","global",65)~ + pid3.1
IF ~GlobalGT("bd_plot","global",64)
GlobalLT("bd_plot","global",199)~ + pid3.2
IF ~GlobalGT("bd_plot","global",198)
GlobalLT("bd_plot","global",390)~ + pid3.3
IF ~GlobalGT("bd_plot","global",389)
GlobalLT("bd_plot","global",405)~ + pid3.4
IF ~GlobalGT("bd_plot","global",404)
GlobalLT("bd_plot","global",480)~ + pid3.5
IF ~GlobalGT("bd_plot","global",479)
GlobalLT("bd_plot","global",592)~ + pid3.6
END

IF ~~ pid3.1
SAY ~I mean, I've only joined you for a short while, but... I guess the best thing to do is to press on?~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3.2
SAY ~If the crusade had caught me, I'd probably have been forced to build weapons to bring down Bridgefort. I'm glad you found me first.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3.3
SAY ~I feel a little out of place against so many experienced soldiers... but I'll do my best.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3.4
SAY ~We're almost to the end, aren't we? If we've gotten this far, I have faith you'll get us to the end.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3.5
SAY ~Avernus is just as terrifying as I expected it to be... but I'll still face it if you need me.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid3.6
SAY ~What is there to say? We've won. Let's celebrate!~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4
SAY ~Sure... which one?~
+ ~InParty("Baeloth")~ + ~What do you think about Baeloth?~ + pid4.baeloth
+ ~InParty("Corwin")~ + ~What do you think about Corwin?~ + pid4.corwin
+ ~InParty("Dorn")~ + ~What do you think about Dorn?~ + pid4.dorn
+ ~InParty("C0Drake")~ + ~What do you think about Drake?~ + pid4.drake
+ ~InParty("Dynaheir")~ + ~What do you think about Dynaheir?~ + pid4.dynaheir
+ ~InParty("Edwin")~ + ~What do you think about Edwin?~ + pid4.edwin
+ ~InParty("X3Emily")~ + ~What do you think about Emily?~ + pid4.emily
+ ~InParty("Glint")~ + ~What do you think about Glint?~ + pid4.glint
+ ~InParty("X3Helga")~ + ~What do you think about Helga?~ + pid4.helga
+ ~InParty("Jaheira")~ + ~What do you think about Jaheira?~ + pid4.jaheira
+ ~InParty("X3Kale")~ + ~What do you think about Kale?~ + pid4.kale
+ ~InParty("Khalid")~ + ~What do you think about Khalid?~ + pid4.khalid
+ ~InParty("Mkhiin")~ + ~What do you think about M'khiin?~ + pid4.mkhiin
+ ~InParty("Minsc")~ + ~What do you think about Minsc?~ + pid4.minsc
+ ~InParty("Neera")~ + ~What do you think about Neera?~ + pid4.neera
+ ~InParty("Rasaad")~ + ~What do you think about Rasaad?~ + pid4.rasaad
+ ~InParty("X3Rec")~ + ~What do you think about Recorder?~ + pid4.recorder
+ ~InParty("Safana")~ + ~What do you think about Safana?~ + pid4.safana
+ ~InParty("C0Sirene")~ + ~What do you think about Sirene?~ + pid4.sirene
+ ~InParty("L#1DVER")~ + ~What do you think about Verr'Sza?~ + pid4.verr
+ ~InParty("Viconia")~ + ~What do you think about Viconia?~ + pid4.viconia
+ ~InParty("X3Vien")~ + ~What do you think about Vienxay?~ + pid4.vienxay
+ ~InParty("Voghiln")~ + ~What do you think about Voghiln?~ + pid4.voghiln
++ ~Actually, there's something else I wanted to talk about.~ + pidtalk
++ ~Never mind. Let's get moving.~ EXIT
END

IF ~~ pid4.baeloth
SAY ~Hee hee... he's weird, but talking to him is so entertaining. I get lots of great alliterations from just listening.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.corwin
SAY ~Captain Corwin's been more than fair to me ever since I joined up... but she's very stern and hard to speak to. I can't help but be nervous around her.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.dorn
SAY ~I... I don't like him, <CHARNAME>... do we really need him around to fight for us?~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.drake
SAY ~He's a lot more well-read than I expected. I wonder just where he learned half of his knowledge from...~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.dynaheir
SAY ~Lady Dynaheir's a great teacher and strong role model. I've got a lot of respect for her.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.edwin
SAY ~Hehe, he's sour on the outside, but I can get a lot of magical tidbits out of him with a few compliments and the right look.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.emily
SAY ~~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.glint
SAY ~Ooh, I like his sense of fashion. Blue hair reminds me of my adorable younger brother. Oh, and he's a nice guy, too, of course.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.helga
SAY ~~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.jaheira
SAY ~I— I respect her, but I have trouble approaching her because... well, you know... she turns into a bear.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.kale
SAY ~~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.khalid
SAY ~Khalid's saved me more times than I can count ever since I met him. I wouldn't have anyone else in his place.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.mkhiin
SAY ~I— I'm sorry, but she creeps me out a little. It's not because she's a goblin, it's her ability to talk with spirits. It unnerves me.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.minsc
SAY ~Minsc is really gentle for someone so big. I think Boo still smells Koko-chan's scent on me, though, since he won't even let me pet him anymore... *sigh*~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.neera
SAY ~I like her. Her style's a little too unpredictable for my tastes, though. It bugs me that it follows no conventional laws of magic or reality...~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.rasaad
SAY ~I have a lot of respect for him. He's trained his body with just as much drive as I've trained my mind.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.recorder
SAY ~~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.safana
SAY ~She's pretty, but she'll never look at me as an equal. I know that.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.sirene
SAY ~I owe a lot to her. Both from the number of times she's defended me in battle, and her support for me outside of it.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.verr
SAY ~He's one big, mean cat. I'm not sure if he even sees me as an equal.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.viconia
SAY ~I'd really like to see her be happy for once. She's actually very beautiful when she smiles... at least, as far as I can imagine it.~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.vienxay
SAY ~~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid4.voghiln
SAY ~Um, he's a little strange, but I guess he's nice enough. I can't figure out what he wants though...~
++ ~I see. There's something else I wanted to ask.~ + pidtalk
++ ~That's all for now.~ + pid.end
END

IF ~~ pid5
SAY ~W... what? Th— that's... that's a hard question to answer, <CHARNAME>, especially when you spring it on me like that...~
++ ~I don't hear a 'no'...~ + pid5.1
++ ~So I guess you do like me?~ + pid5.1
++ ~I have no patience for this. If you aren't confident in your feelings, then I'm not interested.~ + pid5.x
END

IF ~~ pid5.x
SAY ~Oh. Well... I guess you have a point. I'm sorry.~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid5.1
SAY ~*sigh* You're really laying it thick on me, aren't you, <CHARNAME>...~
= ~I suppose there's no point trying to deny it entirely, if it's so obvious that you'd ask me like this. But...~
= ~Th— the question I'd ask in return is... what if I were? Would you be interested in me?~
++ ~Of course. I really like you, Aura.~ + pid5.2
++ ~I'm sorry, but... I'm not. I'd still have your friendship, though.~ + pid5.3
++ ~You think I'd be interested in someone like you? Don't flatter yourself.~ + pid5.x
END

IF ~~ pid5.2
SAY ~Hee hee... you know, hearing that... it's overwhelming, but it makes me happy. If you mean what you say, then... we should talk soon. That'd make me even happier.~
IF ~~ EXIT
END

IF ~~ pid5.3
SAY ~It's okay, <CHARNAME>. If you see me as a friend, then that's what I'll be. Nothing more, nothing less.~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid6
SAY ~I— wait, what? *gasp*~
= ~Oh my— I must have dropped it... eep!~
= ~You weren't meant to see that! It's terrible, I scribbled it on a whim while we were travelling, and... um, I usually write way better than that, I swear.~
++ ~Calm down, I liked it. I didn't think you had it in you.~ + pid6.1
++ ~So you did write this love poem for me? I'm flattered.~ + pid6.2
++ ~It could use some work, but it's the effort that counts.~ + pid6.1
++ ~Take it back. I don't want to see something like this from you again.~ + pid6.x
END

IF ~~ pid6.x
SAY ~I— okay. I apologize.~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid6.1
SAY ~I'm an amateur when it comes to haiku, it's definitely not something I'm proud of. I'd rather you never saw—~
IF ~~ + pid6.3
END

IF ~~ pid6.2
SAY ~I— it's not a love poem, who said—~
IF ~~ + pid6.3
END

IF ~~ pid6.3
SAY ~—ooh, this is embarrassing. Give it here!~
++ ~Nope. I'm going to frame it and put it on my wall.~ + pid6.4
++ ~I'll keep it, if you don't mind. It's a sweet reminder of your thoughts towards me.~ + pid6.4
++ ~Okay, here you go.~ DO ~TakePartyItem("c02apoem") DestroyItem("c02apoem")~ + pid6.5
++ ~Take it and go away. I don't want this sort of attention from you.~ + pid6.x
END

IF ~~ pid6.4
SAY ~Ugh, now you're teasing me, and I feel my face getting all warm. You're terrible!~
IF ~~ EXIT
END

IF ~~ pid6.5
SAY ~*crumple* *crush* Let's forget you ever saw that, I'm going to write one that's far better for you to make up for it. Okay?~
++ ~Sure. I'll be waiting in anticipation.~ + pid6.6
++ ~Whatever.~ + pid6.6
END

IF ~~ pid6.6
SAY ~Okay. Pen, parchment. Time to get the creative juices flowing...~
IF ~~ EXIT
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
+ ~RandomNum(3,1)~ + ~You've got such pretty eyes.~ + f11.1
+ ~RandomNum(3,2)~ + ~You've got such pretty eyes.~ + f11.2
+ ~RandomNum(3,3)~ + ~You've got such pretty eyes.~ + f11.3
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
SAY ~Wh–hey! Put me down! I don't like heeeeights!~
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
SAY ~C–c–careful... I'm about to sneeze!~
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
SAY ~H–hey–hey–hey! You'll damage the roots! Stoooop!~
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
SAY ~No–no–no–nononono! Stop! *giggle*~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~Ah, no! Muffy, save meee!~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~Eek, not the armpits, anywhere but—ahahaha!~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~My parents did say gold-colored eyes are a lucky omen for the family...~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~Oh—! That's very sweet of you to say, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~Sometimes I'm afraid it clashes with my pink hair. I guess I don't have to worry.~
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
SAY ~(She blinks—you can sense her tension, as though she was instinctively about to step back, but instead closes her eyes to accept your affection.)~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~(Your lips press gently against the warm bridge of her nose. When you break away, Aura looks you in the eyes, lips quivering nervously.)~
IF ~~ EXIT
END
END