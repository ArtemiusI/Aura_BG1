CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraVerr1","GLOBAL",0)~ THEN BC0Aura C0AuraVerr1
~Hey, hey, Verr'Sza, I have something to ask you.~
DO ~SetGlobal("C0AuraVerr1","GLOBAL",1)~
== L#1VerrB ~It'd better be something interesting. I don't answer boring questions.~
== BC0Aura ~How much like a cat are you exactly? Do you groom your own fur? Drink milk? Play with balls of yarn?~
== L#1VerrB ~Don't be absurd. I bathe like everyone else does. I drink milk when I have to. And I do *not* play with yarn.~
== BC0Aura ~Okaaay... do you thermoregulate normally, then?~
== L#1VerrB ~'Thermo'... what? Speak Common.~
== BC0Aura ~Sweating. You know, because your skin's covered in fur and all... where do you sweat from? Your paws? Ears? Tongue?~
== L#1VerrB ~This line of questioning is making no sense. I said I don't answer boring questions, gnome.~
== BC0Aura ~Hmf. If you're not going to answer, then I'll just have to figure it out myself. And you won't like that!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraVerr2","GLOBAL",1)~ THEN L#1VerrB C0AuraVerr2
~W-w-WHAT do you think you're doing?!~
DO ~SetGlobal("C0AuraVerr2","GLOBAL",2)~
== BC0Aura ~Eep! You're supposed to hold still!~
== L#1VerrB ~You'd better have a good explanation for why you were trying to shove that metal stick into my ear, and quickly!~
== BC0Aura ~Well, *you* said you weren't going to answer my questions, and then *I* replied that I'd find out myself. I was just probing for results, that's all.~
== L#1VerrB ~So that wasn't an attempt to murder me in my sleep? I don't believe you. That was far too suspicious.~
== BC0Aura ~Oh, don't be silly. The worst my probe would've given you was a huge earache, and that's only if I stuck it in too far...~
== L#1VerrB ~You are *not* putting that thing into my ear again.~
== BC0Aura ~But I've only gotten half of the results I needed! Come here and let me finish!~
== L#1VerrB ~I swear, I will kill you, gnome!~
== BC0Aura ~Yikes! I get it, I get it! Calm down and go take a nap already. I'll work with what I've already got.~
DO ~RestParty()~ EXIT