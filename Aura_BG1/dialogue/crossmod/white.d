CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraWhite1","GLOBAL",0)~ THEN V#1WHIB C0AuraWhite1
~I have to ask, why do you spend so much time setting up traps just to take out our enemies? Wouldn't it be easier to just whack them with something heavy?~
DO ~SetGlobal("C0AuraWhite1","GLOBAL",1)~
== BC0Aura ~Er, I'm not exactly the strongest girl around, you know. Besides, that's more your thing, isn't it, White?~
== V#1WHIB ~Couldn't you just train? It can't be harder than all this... tinkering business you're into.~
== BC0Aura ~Well, I guess if I wanted to, I could just drop rocks and anvils on people instead, but I don't do what I do to hurt people. It's only because <CHARNAME> needs all this from me that I...~
== V#1WHIB ~Then why follow <PRO_HIMHER>? You know all we do is go around fighting and killing. You don't have to stay around doing something you hate. You always have the choice to leave.~
== BC0Aura ~I can't. I have a task or two to accomplish here on the Sword Coast. Besides... I trust <CHARNAME>. I wouldn't use my skills to hurt others if I didn't believe it was for a good cause.~
== V#1WHIB ~Well, all right. I just think you're missing out on the good fights by keeping your distance all the time, but I'm not going to tell you how to live your life.~
EXIT