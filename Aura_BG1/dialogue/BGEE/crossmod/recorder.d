CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter1
~You visited Kozakura, Aura? Is it true they write their words in symbols?~
DO ~SetGlobal("CrossAuraRec","LOCALS",1)~
== BC0Aura ~Yep... actually, it's a bit more than that. Sometimes words can be expressed within single symbol... or they can be in a group of syllables known as the 'kana'. Then you get into all the different styles and dialects and... it's all very complicated. I've only really mastered the Seinai dialect, myself.~
== X3RecB ~It sounds like such an unusual language. All the other languages I know, Elven, Celestial, Draconic, seem to follow more normal language conventions.~
== BC0Aura ~Ooh, Draconic? I'm still picking up the basics on that one. My elven's a little rusty, but my dwarven isn't bad.~
== X3RecB ~There were never any writings on the Dwarven language from the books father re-binded. Maybe we could swap what we know and learn a bit from each other sometime?~
== X3RecB ~If um, that is all right? I know you're always busy doing your tinkering.~
== BC0Aura ~Oh, not at all! I mean, I do spend a lot of time on my work, but I'm sure I can find some time for a learning session with you. It'll be fun and exciting.~
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter2
~What was the music like in Kozakura, Aura? I've heard a story, even read a song scroll about it, but um, I've never had an eye-witness to verify what I've learned.~
DO ~SetGlobal("CrossAuraRec","LOCALS",2)~
== BC0Aura ~It's very, very... hmm... 'unique' would be the best way to put it. Even instruments that looks similar to ones in these lands are used differently. I've seen a festival where a performer was playing a 'shakuhachi'—a bamboo flute—but vertically, rather than horizontally like yours.~
== BC0Aura ~Kozakuran music is really closely intertwined with their culture and faith, so the flutist I saw was a monk wearing a straw hood... which was like a basket that you wore over your face.~
== X3RecB ~Um, they walked around while wearing a basket on their head? That's odd.~
== BC0Aura ~Yeah. I thought some of the customs were bizarre too at first, but... I didn't have much of my memory at that time, so I grew accustomed to them. I was so happy the day Reika-san sewed me a ceremonial kimono that was just my size.~
== X3RecB ~I'd love to play from this song scroll that I have. I just need a little more practice so as to not embarrass myself...~
== BC0Aura ~Heehee, I'm sure you'll master it quickly. I can't wait to hear it.~
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter3
~Um, Aura? Do you still want to hear the song? I think it seems safe enough, and I can play and move at the same time.~
DO ~SetGlobal("CrossAuraRec","LOCALS",3)~
== BC0Aura ~Yes, absolutely! Go on, Recorder!~
== X3RecB ~...~ [X3RFL4]
== BC0Aura ~*applauds* How lovely! It's quite different from the style I remembered in Mikedono, but maybe you studied a version that came from another region.~
== X3RecB ~Oh? I didn't think to consider that. I'll make a note before writing it down in the records. Thank you for listening, Aura.~
EXIT 