BEGIN C0SAITO

CHAIN IF ~Global("C0AuraQuest","GLOBAL",7)~ THEN C0SAITO saito
~...~
== C0AURAP ~S-saitō...-san.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",8)~
== C0SAITO ~...~
== C0AURAP ~It's... been a long time, hasn't it?~
== C0SAITO ~Konoe. Had I known that you would be brave enough to come and confront me, I would not have sacrificed so many of my subordinates to try and capture you.~
== C0AURAP ~No... I'm as craven as I have always been. But I couldn't allow my friend to suffer the price for my cowardice.~
== C0SAITO ~Of course. This must be the gaijin you have sworn subservience to. <CHARNAME> of Candlekeep... if I am not mistaken.~
END
++ ~You know my name?~ + saito.1
++ ~Don't mind me. I'm just here to watch things unfold.~ + saito.1
++ ~So you're the one who's been trying to kill us.~ + saito.1

CHAIN C0SAITO saito.1
~I have learned enough of you to recognize you as a worthy threat. Though normally the affairs of gaijin are of no concern of mine, several of my followers have fallen by your hands, and such an offense is not easily forgiven.~
= ~However... Konoe chose to meet me here alone so that you would not be harmed, and my honor demands that I stay my blade... so long as you do not give me cause to draw it. For your own sake, I hope you will value your own life and step aside. The feud between Konoe and I does not concern you.~
END
++ ~You threatened Aura. That's enough to make this concern me.~ + saito.2
++ ~Empty words, after the assassins you sent.~ + saito.2
++ ~Good to know. I'll just stand here and listen, shall I?~ + saito.2
++ ~I don't care about your feud, but you tried to kill me, and you'll pay for that.~ + saito.2

CHAIN C0SAITO saito.2
~Konoe has no doubt depicted me as a merciless killer. I do not deny it - the blood that has stained my blade is far more than you can ever comprehend.~
= ~But you are no samurai, and you have no authority to judge me, and I will not attempt to explain myself to a gaijin, with no understanding of a warrior's honor.~
== C0AURAP ~What honor, Saitō-san? The honor that led you to abandon the Way? The honor that made you draw your sword to cut down Reika-san?~
== C0SAITO ~Do you believe Reika-sama was truly an innocent? How presumptuous of you, to think that you are in the right while blinded with ignorance.~
== C0AURAP ~W-what? What do you know of Reika-san?~
== C0SAITO ~Hmph. As I thought, Reika-sama told you nothing of the truth. Very well, then. I will enlighten you.~
== C0SAITO ~Once, long ago, Amanokagami Reika walked the same path as I. Yet when our lord's need was greatest, she chose the Way above her oaths of fealty. When our lord perished, she chose to discard her warrior's pride and flee like a coward.~
== C0SAITO ~Even when I threatened her and that which she valued the most, she refused to raise her blade against me. She gave her life willingly, and in doing so, unleashed a baleful curse upon my soul. For as long as her power remains, I cannot raise a blade in violence on my native soil.~
== C0AURAP ~You- you're lying... what you're saying can't...~
== C0SAITO ~A samurai without a lord is nothing more than a sword for sale. Without even that, however... he is nothing. It is for this reason alone that I walk this filthy foreign land, while my servants continue our war against the gods in Kozakura. Only the remnants of Reika-sama's power, contained within that magatama you wear, may free us from this curse.~
== C0AURAP ~Reika-san's magatama...?~
== C0SAITO ~That is correct. Give it to me, and I swear on my honor, I will return to Kozakura to continue my war, and you will never see me again.~
== C0AURAP ~No! I can't give it to you.~
== C0SAITO ~Do not be foolish, Konoe. Do you recall what I said? I cannot raise my blade on my native soil. In this place, far away from Kozakura, the curse has no hold upon me. If you will not relinquish the magatama, then I will cut you down and claim it from your corpse.~
== C0AURAP ~Even if it is my life on the line, I can't. You would free yourself and continue your slaughter. Reika-san would never allow it!~
== C0SAITO ~...~
== C0SAITO ~Very well, then. I regret that this must happen, but I will not be deterred. Draw your weapon.~
== C0AURAP ~Stop... Saitō-san, don't take another step. Don't force my hand... please.~
== C0SAITO ~You presume to threaten me, Konoe? Perhaps you believe those at your side are a match for my retainers, but will they stand with you against this?~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0acuts2")~ EXIT
	  
CHAIN IF ~Global("C0AuraQuest","GLOBAL",8)~ THEN C0SAITO saito2
~Do you still wish for conflict? I am well prepared, as you can see. Though it will give me no shame to spill more gaijin blood in this foreign land, I know you would rather see lives spared.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",9)~
== C0AURAP ~I... I-~
END
++ ~No. Don't listen to him, Aura. We can win this battle.~ EXTERN C0AURAP saito2.1
++ ~Do you think numbers will be enough? You don't know who you're dealing with.~ EXTERN C0AURAP saito2.1
++ ~I don't care about all this, but no one threatens me and gets away with it. Time to die.~ EXTERN C0AURAP saito2.1

CHAIN C0AURAP saito2.1
~I'm sorry, Saitō-san... I see there really is no other way...~
== C0AURAP ~...Genesis, Flamma, Purgo. Igneus Blaze!~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0acuts4")~ EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",9)~ THEN C0SAITO saito3
~I see... you set up this magnificent trap for me. Very impressive, Konoe... I did not anticipate this at all. This must be the weapon your kind are renowned for... what is its name in your tongue? "Smokepowder"?~
== C0AURAP ~That's right. You've seen it now, Saitō-san... for the first and the last time.~
== C0SAITO ~But you have underestimated me. As you can see, I am still very much alive. You had but this one chance... and you failed.~
== C0AURAP ~No... not yet. I still have <CHARNAME> to stand with me. I will trust in <PRO_HIMHER>. Saitō-san... I'm sorry. It's time to end this.~
== C0SAITO ~Very well. I, Tadahashi Saitō, have never tasted defeat in combat. With this blade in hand, I am all but invincible. Come, fools, face me if you dare.~
DO ~ActionOverride("C0Aura",JoinParty())
ActionOverride("C0Aura",SetGlobal("KickedOut","LOCALS",0))
ActionOverride("cutspy",DestroySelf())
Enemy()
ActionOverride("c0aukagu",Enemy())
ActionOverride("c0auayak",Enemy())
ActionOverride("c0aumizu",Enemy())
ActionOverride("c0aukuon",Enemy())~ EXIT