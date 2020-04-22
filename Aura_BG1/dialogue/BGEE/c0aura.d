// First meeting

BEGIN C0AURA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a0
SAY ~Oh, h-hello... is there something you need? Wait... you're not a local, are you? There's something... different about you.~ [C0BLANK]
++ ~Yes, I am. I've only come to Beregost recently. My name's <CHARNAME>.~ + a1
++ ~Whatever you're selling, I'm not buying.~ + a2
++ ~Who might you be?~ + a3
++ ~I've no time to talk to strange gnomes on the street. Goodbye.~ EXIT
END

IF ~~ a1
SAY ~Um... it's nice to meet you. If you're not from around here, I was wondering if I could ask... have you, by chance, seen a man? Tall, foreign and carrying a katana?~
++ ~No, I haven't seen anyone of the sort. Are you looking for this person?~ + a4
++ ~I don't share things with complete strangers. Perhaps you could tell me who you are first.~ + a3
++ ~I apologize, but I have no time to talk with you at the moment.~ EXIT
END

IF ~~ a2
SAY ~Oh! N-no, I would never- I don't do that kind of thing. Er, I mean- I'm not a merchant. I don't sell anything.~
IF ~~ + a1
END

IF ~~ a3
SAY ~I'm, um... Aura Glimmershine of Lantan. I'm sorry for being so rude as to not introduce myself. I'm an inventor and artificer.~
+ ~CheckStatGT(Player1,14,INT)~ + ~Lantan? The name is familiar... isn't that the island nation full of Gond worshippers and inventors?~ + a5
++ ~I see. And what brings a Lantanese here to the Sword Coast?~ + a6
++ ~You're an artificer? What skills does an artificer generally have?~ + a7
++ ~This is very interesting, but I'm afraid I have to go now. Goodbye.~ EXIT
END

IF ~~ a4
SAY ~Yes. Well, no... actually, I don't know. I just thought maybe you'd have seen him, that's all. I heard a rumor that someone like him was here. As in, in the Sword Coast.~
IF ~~ + a3
END

IF ~~ a5
SAY ~Yes, you're right... I'm surprised you know about us, actually. We don't interact with the outside world much, except for a few trade colonies. I wasn't expecting anyone in this part of the world to have heard of the name.~
++ ~Candlekeep had many books on geography and foreign lands. I read about Lantan in one of them.~ + a8
++ ~You said you were an artificer? I'm not familiar with what skills such a profession would entail.~ + a7
++ ~What brings a Lantanese to the Sword Coast, anyway? It's a long way from home.~ + a6
++ ~I think we've talked long enough. Goodbye.~ EXIT
END

IF ~~ a6
SAY ~I... actually, I didn't come from Lantan. It's a complicated story, but I actually travelled here from Kozakura... that is, a nation in Kara-Tur in the east. The man I was looking for came from there as well, but... I've lost all trace of him.~
+ ~CheckStatGT(Player1,14,INT)~ + ~Kara-Tur's a long way east of here. Why would you have come from there?~ + a6.1
++ ~Where is Kara-Tur, exactly?~ + a6.2
++ ~Back to what I was going to ask before. What skills does an artificer usually have?~ + a7
++ ~I think we've talked for long enough. Goodbye.~ EXIT
END

IF ~~ a6.1
SAY ~I... lived there, not long ago, for three years. As for why... it's a long story. I was travelling the world a few years ago, and there... was a disaster that happened to me. I ended up in Kozakura as a result of that.~
IF ~~ + a6.3
END

IF ~~ a6.2
SAY ~It's a land far east of here. I travelled along the Golden Way for months to get here. As for why...~
IF ~~ + a6.1
END

IF ~~ a6.3
SAY ~It was a home to me, but I eventually had to leave. I travelled to the Sword Coast after hearing a rumor that others from Kozakura were here, but... I haven't heard anything in a long time. I'm not sure where to go.~
++ ~Perhaps you could join my party. I've a long journey ahead of me, and we might find these people you're looking for along the way.~ + a11
++ ~Tell me more about your skills. You said you were an artificer. What does that mean?~ + a7
++ ~We've talked enough. Goodbye.~ EXIT
END

IF ~~ a7
SAY ~We all have different skills depending on our area of study. My work focuses on engineering, alchemy and wondrous crafting. I've also studied a little bit of magic on the side, but... that's not a common field for us Lantanese.~
+ ~CheckStatGT(Player1,14,INT)~ + ~Aren't people from your land usually Gond worshippers and inventors?~ + a5
+ ~!Class("C0Aura",MAGE_ALL)~ + ~Magic? Are you some sort of spellcaster, then?~ + a9a
+ ~Class("C0Aura",MAGE_ALL)~ + ~Magic? Are you some sort of spellcaster, then?~ + a9b
++ ~What brings a Lantanese to the Sword Coast, anyway? It's a long way from home.~ + a6
++ ~I think we've talked for long enough. Goodbye.~ EXIT
END

IF ~~ a8
SAY ~You're from Candlekeep? Wow... I've heard of the immense amount of knowledge and history that's stored in that library. I've always wanted to visit it for myself. What brought you to leave the place?~
++ ~It wasn't by choice. I left with my foster father, who was killed in an ambush not long ago.~ + a12
++ ~Candlekeep was a boring place. I've always wanted to leave and explore the world.~ + a13
++ ~That's none of your business.~ + a14
END

IF ~~ a9a
SAY ~No, I'm no mage. Lantan doesn't have any academies for magic users and private tutors aren't easy to find either. What little skill I have in working with magic is self-taught.~
IF ~~ + a10
END

IF ~~ a9b
SAY ~Well... yes, I suppose you could call me that. I've studied arcane magic in many forms, and picked up a few skills in the way. Though Lantan doesn't have any true academies for magic users, so what little skill I have is self-taught.~
IF ~~ + a10
END

IF ~~ a10
SAY ~I have some other skills too, in working with traps, breaking locks and the like... and I can use a bow. I'm no expert, but it's helpful if I'm going to travel and face danger a lot.~
++ ~Perhaps you could join me. I could use such skills, and you sound like you could use some company on the road.~ + a11
++ ~That sounds interesting, but I think I should go now. Goodbye.~ EXIT
END

IF ~~ a11
SAY ~You... you'd really let me join you? I mean... I suppose that'd be a good idea. Maybe I could even find the person I'm looking for one day...~
= ~Alright, I'm in. If you'll have me, then I'll do my best for you for as long as you need me, I promise.~
IF ~~ DO ~AddJournalEntry(@10001,USER)
JoinParty()~ EXIT
END

IF ~~ a12
SAY ~Oh, I- I'm so sorry. I shouldn't have asked.~
IF ~~ + a15
END

IF ~~ a13
SAY ~That's... fair enough, I suppose. Though I would love nothing more than to see if the stories about its wealth of knowledge are true.~
IF ~~ + a15
END

IF ~~ a14
SAY ~Y-yes, of course. I'm sorry for asking.~
IF ~~ + a15
END

IF ~~ a15
SAY ~But I suppose you this means you don't have a home to return to in this land either, then. If so, then I'd like to ask... could I join you? I'm a stranger here, and I've nowhere to go to find anything I'm looking for.~
++ ~I could always use another companion. I accept.~ + a11
++ ~I'm not sure. What skills could you offer me?~ + a16
++ ~Not right now. Perhaps another time.~ EXIT
END

IF ~~ a16
SAY ~Well, I'm not particularly good at combat... I've only ever fought as much as I've needed to in order to survive, and I've run from my share of battles... but I've skills that I'm willing to bet no one else in this land will have!~
= ~I'm an artificer. I've designed my own traps and weapons that I can use to help you with, and I have... a special skill I've developed from my study of magic in the past.~
IF ~~ + a10
END

// POST-INITIAL MEETING

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN b0
SAY ~Oh, hello! It's nice to see a familiar face again... well, relatively speaking. Is there something I can do for you?~ [C0BLANK]
++ ~Refresh my memory on who you are exactly.~ + b1
++ ~I'm looking for allies. Would you like to join me, Aura?~ + a11
++ ~Nothing much. Goodbye.~ EXIT
END

IF ~~ b1
SAY ~Sure. I'm Aura, a Lantanese artificer from the Glimmershine family. I've travelled here from Kozakura... in Kara-Tur, far east of here.~
+ ~CheckStatGT(Player1,14,INT)~ + ~Lantan? The name is familiar... isn't that the island nation full of Gond worshippers and inventors?~ + a5
++ ~Kara-Tur? Why would you have come from such a faraway place?~ + a6.1
++ ~I see. And what brings a Lantanese here to the Sword Coast?~ + a6
++ ~You're an artificer? What skills does an artificer generally have?~ + a7
++ ~This is very interesting, but I'm afraid I have to go now. Goodbye.~ EXIT
END