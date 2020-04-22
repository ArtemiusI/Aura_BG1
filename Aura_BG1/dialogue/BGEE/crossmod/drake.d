CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",0)~ THEN BC0Drake C0AuraDrake1
~A question for you, little lady of miracles. Do you believe in the theory of life beyond our world? Not the planes, I mean literal worlds.~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",1)~
== BC0Aura ~Life in the stars, you mean? I didn't think you'd know about such theories, Drake. You must have studied.~
== BC0Drake ~Not studied, per se. Rather, I came across the topic while doing some light reading in the holy libraries of home. 'A Study of Celestial Visions and Ventures'... I believe it was called, or something like that. Written by some astrologist a little less than a hundred years ago. Are you familiar with the text?~
== BC0Aura ~Oh, yes. It was someone from my homeland that wrote it. That was before I was born, though. The facts we've found have changed our perspective greatly since then.~
== BC0Drake ~So do you believe it? The parts about beings in the stars, living in worlds parallel to ours? I must admit, it was a little too fantastical for me to believe, especially for such a scholarly work.~
== BC0Aura ~Mmm, I'd say it's definitely possible... but we've no way to be certain so far. The only way to know for sure would be to find those worlds and see for ourselves, you know? *sigh* But that'll be long past our lifetimes, I'm sure.~
== BC0Drake ~Perhaps. Though with a mind like yours...~
== BC0Aura ~Hahaha, no. I'm not that good... not yet, anyway. Besides, I've got a thousand other things I want to do in my life first, and those won't take a lifetime to accomplish.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",1)~ THEN BC0Aura C0AuraDrake2
~I was wondering, Drake, does your god ever speak to you? I mean... have you ever heard his voice?~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",2)~
== BC0Drake ~Tyr's voice? Can't say I have.~
== BC0Aura ~You haven't? Then... how do you know he really exists? Do you have any proof?~
== BC0Drake ~I don't, no. But I do believe he exists. It's hard to explain. I can... feel it, in a way.~
== BC0Aura ~Feel it? What do you mean?~
== BC0Drake ~When you become a servant of the gods like I am, you just... know. I don't know about anyone else, but to me it's like... like a presence looming over me, every time I whisper a prayer.~
== BC0Drake ~But what brought this question to your mind? Do you not believe in the gods?~
== BC0Aura ~I do. I just... don't understand the gods in this land at all. When I lived in Kozakura, what the people knew as gods were... different.~
== BC0Aura ~Sometimes I thought I could see them, even though they don't seem to care about us mortals at all. They were more like spirits of nature, acting as they pleased. Would you call them gods as well?~
== BC0Drake ~Maybe. I don't know what a god is. I don't think anyone who lives and dies on this earth does, really.~
== BC0Drake ~Anything greater than us that we don't understand could be called a god by somebody. The sky above and the wind around us - are those gods? I've met those who claimed it, and I couldn't argue with them.~
== BC0Drake ~It could be that there's no real meaning to the word, only beings that we choose to attach it to. Who knows?~
== BC0Aura ~You're probably right. I've sought and solved many mysteries, but the gods... I doubt I'll ever be able to solve that one.~
EXIT