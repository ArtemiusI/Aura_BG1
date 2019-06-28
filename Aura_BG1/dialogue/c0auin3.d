BEGIN C0AUIN3

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AUIN3 a0
~The automaton stands at attention.~
END 
+ ~CombatCounter(0)
HPPercentLT(Myself,100)~ + ~Repair.~ + repair
++ ~Open inventory.~ DO ~StartStore("C0AUTINV",Lasttalkedtoby(Myself))~ EXIT
+ ~Global("Standby","LOCALS",0)~ + ~Standby.~ DO ~SetGlobal("Standby","LOCALS",1) RemoveFamiliar()~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~Follow.~ DO ~SetGlobal("Standby","LOCALS",0) AddFamiliar()~ EXIT
++ ~Dismantle.~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~Disable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~Enable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~Exit~ EXIT

CHAIN C0AUIN3 repair
~Repairing damage...~
DO ~FadeFromColor([30.0],0)~
= ~The automaton has been fully repaired.~
DO ~ApplySpellRES("c0repair",Myself)~ EXIT

CHAIN C0AUIN3 disableAI
~Self-defense protocol deactivated. The automaton will no longer take action of its own accord except for following and protecting its creator.~
EXIT

CHAIN C0AUIN3 enableAI
~Self-defense protocol activated. The automaton will defend itself and its creator from all hostiles.~
EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0Aura")~ THEN C0AUIN3 b0
~The automaton ignores you.~
EXIT