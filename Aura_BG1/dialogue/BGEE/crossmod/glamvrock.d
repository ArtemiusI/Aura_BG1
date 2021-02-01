CHAIN IF ~InParty("GV#DAVE")
See("GV#DAVE")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#DaveBanter1","GLOBAL",0)~ THEN BC0Aura AURA-DAVE-1
~So Dave, let me make sure I understand this. If you blaspheme against Talos, in any way, you get struck by a lightning bolt?~
DO ~SetGlobal("C0AuraGV#DaveBanter1","GLOBAL",1)~
== BGV#DAVE ~...there’s a certain gleam in your eye that makes me not want to answer that.~
== BC0AURA ~It’s just, my last memory of Lantan, we’d been making strides towards crafting tools and vehicles powered by electricity. Imagine a wagon that can run on is own, without horses to pull it!~
== BC0AURA ~The only snag was in finding a reliable, efficient way to generate that electricity. If we were to put you in a compartment somewhere, and you started saying things like, I don’t know...”Talos is a big, dumb-”~
== BGV#DAVE ~Ah-buh-buh!~
== BC0AURA ~Oops! That was close. Thanks.~
== BC0AURA ~But you see what I’m getting at, don’t you? All we’d have to do is attach some kind of capacitive storage unit, and we’d have a source of unlimited energy!~
== BGV#DAVE ~Unlimited in the precious, fleeting moments before it kills me completely dead, you mean?~
== BC0AURA ~Oh. Right. Ha ha. You’re so casual about it, I forgot it’d actually injure you.~
== BC0AURA ~Maybe a device that administers healing potions at regular intervals...? Ah, but then cost outweighs benefit. Oh well. It was just a thought.~
== BGV#DAVE ~I wish I could say I’m sorry to disappoint you.~
== BC0AURA ~No, it’s fine. You can’t beat thermodynamics, but it’s fun to try sometimes.~
EXIT

CHAIN IF ~InParty("GV#FLAR")
See("GV#FLAR")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#FlaraBanter1","GLOBAL",0)~ THEN BC0Aura AURA-FLARA-1
~Flara, if it’s not too intrusive, would you mind letting me run some tests on you? I’d like to find out if all this dragon stuff is really true or not.~
DO ~SetGlobal("C0AuraGV#FlaraBanter1","GLOBAL",1)~
== BGV#FLAR ~It is not in question, gnome. If you intend to “run tests”, do so with an eye towards finding a cure or not at all. I’ll not be probed and prodded for your misbegotten curiosity.~
== BC0AURA ~Well...in theory, I could cut some corners, but if it turned out you really were a human-~
== BGV#FLAR ~I am NOT.~
== BC0AURA ~I know, I know, but hypothetically speaking...if I gave you something to reverse an unwanted polymorph enchantment, and you hadn’t actually been polymorphed, the effects could be disastrous. You could spend the rest of your life as an ooze, or worse.~
== BC0AURA ~So...um...from a scientific and an ethical standpoint, it’d be very, very helpful if I could confirm, with my own eyes, that...er...~
== BGV#FLAR ~...~
== BC0AURA ~Or we could just pretend I never brought this up. That also works.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#FlaraBanter2","GLOBAL",0)~ THEN BGV#FLAR AURA-FLARA-2
~You realise, gnome, that for all your drive to innovate, you’ve yet to produce anything that cannot be replicated with simple magic.~
DO ~SetGlobal("C0AuraGV#FlaraBanter2","GLOBAL",1)~
== BC0AURA ~There’s nothing simple about magic, you know. Just because you have an affinity for it...~
== BGV#FLAR ~Ah yes, you toil in the name of simpler beings than I. Very well, let us debate from your level. Yes, there are those who find magic inscrutable, who cannot manage so much as a cantrip without years of study behind them. What of it? Why should such a gift be given freely? Let the struggle cull the unworthy.~
== BC0AURA ~There are plenty of “worthy” people who still can’t learn magic, Flara. The poor who can’t afford a tutor, or the artist who thinks in shapes and colours instead of rote formulae...I don’t think anyone should be forced to live in the dark ages just because they don’t have the right aptitude.~
== BGV#FLAR ~Oh? And yet you squirrel your precious technology away, afraid of how it might be misused, and thus you have made yourself the judge of who is deserving and who is not. Who are you to decide such things, hmm?~
== BC0AURA ~I...I never said I was...~
== BGV#FLAR ~Do not quail so, girl. You are the builder, the progenitor. It is your *right* to decide. However, as I said, magic is already everything you seek to create; a tool of limitless versatility, denied to those who have neither the means nor the intellect to harness it. You reinvent the wheel, as it were.~
== BC0AURA ~There’s more to gauge a person by than means and intellect. I hope one day you’ll be able to see that.~
EXIT

CHAIN IF ~InParty("GV#LITT")
See("GV#LITT")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#LittlunBanter1","GLOBAL",0)~ THEN BC0Aura AURA-LITTLUN-1
~Littlun? Your father’s manuscript about projectiles...would it be alright if I read it sometime?~
DO ~SetGlobal("C0AuraGV#LittlunBanter1","GLOBAL",1)~
== BGV#LITT ~Huh. There’s a first. Most folks, if I promise to read ‘em a passage, they take it as a threat.~
== BC0AURA ~Their loss, I say! Anyone that dedicated to their research is worth studying from.~
== BGV#LITT ~I should warn you, he gets a bit far up his own arse sometimes. It a wonder he weren’t known as a spelunker.~
== BC0AURA ~Ha ha, not as far as some Lantanese scholars, I bet. You learn to filter out the preening, eventually.~
== BGV#LITT ~Here you go, then. Just look after it, yeah? It’s the only one in the world.~
== BC0AURA ~Don’t worry. There’s nothing on Toril I’ll take better care of than a book.~
== BC0AURA ~Yes, Muffy, except you. That goes without saying.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#LittlunBanter2","GLOBAL",0)~ THEN BGV#LITT AURA-LITTLUN-2
~Mine hits harder.~
DO ~SetGlobal("C0AuraGV#LittlunBanter2","GLOBAL",1)~
== BC0AURA ~Mine’s more versatile.~
== BGV#LITT ~Mine’s sturdier. I could use it as a club if I had to.~
== BC0AURA ~Well, mine uses a localised electrical field to magnetise the target and attract more shots. Including yours.~
== BGV#LITT ~Dunno what that means, so it don’t count. You’re just making up words now, for all I can tell. And mine’s vintage. Look at that dusky mahogany finish, the understated gold trim. Yours is all bald gimmickry. The engineering’s there, but where’s the art?~
== BC0AURA ~Engineering is art! And mine can make healing arrows.~
== BGV#LITT ~That’s grand, until you mix ‘em up with your normal arrows and start launching ‘em at the enemy.~
== BC0AURA ~That happened once! I’ve learned my lesson! Statistical outliers should be disregarded in the overall model!~
== BGV#LITT ~Yeah, yeah. Jokes aside, it’s a fine piece of work. You should be right proud of yourself.~
== BC0AURA ~Aww, thanks!~
EXIT

CHAIN IF ~InParty("GV#MOID")
See("GV#MOID")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#MoidreBanter1","GLOBAL",0)~ THEN BC0Aura AURA-MOIDRE-1
~Moidre, doesn’t that helmet get awfully stuffy sometimes?~
DO ~SetGlobal("C0AuraGV#MoidreBanter1","GLOBAL",1)~
== BGV#MOID ~“Sometimes” would be a relief.~
== BC0AURA ~If you need to breathe a bit easier, I could make some adjustments. All I’d have to do is add a few vents in key points to help the air circulate.~
== BC0AURA ~Um. It wouldn’t compromise the protection at all. So...~
== BGV#MOID ~But you’re still tiptoeing. Means you’re not sure I’d want you to do it.~
== BGV#MOID ~I’d have to take it off first. Right?~
== BC0AURA ~I...I would need to get inside it, yes. Only for an hour or so. It’s a very simple-~
== BGV#MOID ~Thanks. No.~
== BC0AURA ~Moidre...whatever it is you don’t want me to see under there, I promise I won’t-~
== BGV#MOID ~You’re a kind soul, Aura. Go find someone who deserves you.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND AURA-VYND-1
~Well well, Aura. You’ve had your fortune laid in your lap, haven’t you? Ready to penetrate the bubble of the wealthy elite?~
DO ~SetGlobal("C0AuraGV#VyndBanter1","GLOBAL",1)~
== BC0AURA ~M-me? What do you mean by that?~
== BGV#VYND ~Isn’t it obvious? Baldur’s Gate giving Amn the skunk eye, rumours of war a-bubbing in the cauldron. A war that’ll be fought by the common man, who never learned to read a scroll or pop a wand.  And here you are, ready to put fire and thunder at their grimy fingertips. You, my little pink-haired death machine, are about to be a very rich gnome.~
== BC0AURA ~I’m not about to be anything but what I already am. I don’t want this war to happen, and if it does, I certainly I don’t want my inventions to be a part of it.~
== BGV#VYND ~Is that what you really believe, or is it just what you tell people? What exactly goes through your head when you’re scratching out those runes of yours? “Okay, I know the last few dozen of these went towards turning bandits into sizzling, meaty cinders, but maybe *this* time...”~
== BC0AURA ~Bandits are robbers and murderers, and I’m not wrong to defend myself from them. The casualties of war are just men and women doing what they’re told they have to do to protect their homes, their families. They’re different things, and I know you’re smart enough to see that, so...what are you trying to prove? Why do you care if I get rich or not?~
== BGV#VYND ~Not to answer questions with questions, but why am I the crazy one for thinking competence should be rewarded?~
== BC0AURA ~I find reward in my work every day. You just don’t see it.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#VyndBanter2","GLOBAL",0)~ THEN BGV#VYND AURA-VYND-2
~Do you know the story of how the Netherese died, Aura?~
DO ~SetGlobal("C0AuraGV#VyndBanter2","GLOBAL",1)~
== BGV#VYND ~Wait, what am I saying? It exists in books. Of course you do.~
== BC0AURA ~You’re the only person I know who can call someone well-read and make it sound like an insult...~
== BGV#VYND ~Like a drop of poison in a jar of honey, right? It’s one of my many talents.~
== BGV#VYND ~Just picture it, if you can. I’m sure you’ve seen artists’ depictions of the man behind it all. Proud, reckless Karsus. Picture how his face must have looked when he stole the power of a god, blotted out the world’s magic, and brought his floating cities crashing down into the dirt. He killed millions, he ruined an empire forever, and he did it all with the tools he already had. No fancy imported technology, no groundbreaking new invention. Just blood, sweat and madness.~
== BGV#VYND ~If you think you can save people from themselves; you, alone, just by not letting anyone else play with your toys; you’ve got one hell of an ego buried under all those insecurities.~
== BC0AURA ~You and I took very different lessons from that story, Vynd.~
== BGV#VYND ~Yeah? Let’s hear it, then.~
== BC0AURA ~For better or worse, one person can change everything.~
EXIT
