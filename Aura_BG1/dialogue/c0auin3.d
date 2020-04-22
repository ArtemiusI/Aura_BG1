BEGIN C0AUIN3

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AUIN3 a0
~The automaton stands at attention.~
END 
+ ~OR(2)
AreaCheck("c0au01")
AreaCheck("ar4500")~ + ~Upgrades.~ DO ~RemoveFamiliar()~ + upgrades
+ ~CombatCounter(0)
HPPercentLT(Myself,100)~ + ~Repair.~ + repair
++ ~Open inventory.~ DO ~StartStore("C0AUTINV",Lasttalkedtoby(Myself))~ EXIT
+ ~Global("Standby","LOCALS",0)~ + ~Standby.~ DO ~SetGlobal("Standby","LOCALS",1)~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~Follow.~ DO ~SetGlobal("Standby","LOCALS",0)~ EXIT
++ ~Dismantle.~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~Disable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~Enable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~Exit~ EXIT

CHAIN C0AUIN3 repair
~Repairing damage...~
DO ~FadeFromColor([30.0],0)~
= ~The automaton has been fully repaired.~
DO ~ApplySpellRES("c0repair",Myself)~ EXIT

CHAIN C0AUIN3 upgrades
~The automaton may be upgraded given the necessary experience and resources. What do you wish to do?~
END
+ ~OR(3)
!Global("C0AutoUpgradeOffense1","GLOBAL",3)
!Global("C0AutoUpgradeOffense2","GLOBAL",3)
!Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~Upgrade offenses.~ + UPGRADE-OFFENSE
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",3)
Global("C0AutoUpgradeOffense2","GLOBAL",3)
Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~Upgrade offenses.~ + UPGRADE-OFFENSE-ALL
+ ~OR(3)
!Global("C0AutoUpgradeDefense1","GLOBAL",3)
!Global("C0AutoUpgradeDefense2","GLOBAL",3)
!Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~Upgrade defenses.~ + UPGRADE-DEFENSE
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",3)
Global("C0AutoUpgradeDefense2","GLOBAL",3)
Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~Upgrade defenses.~ + UPGRADE-DEFENSE-ALL
+ ~Global("C0AuraHasBooks","GLOBAL",2)
OR(4)
!Global("C0AutoUpgradeSpecial1","GLOBAL",1)
!Global("C0AutoUpgradeSpecial2","GLOBAL",1)
!Global("C0AutoUpgradeSpecial3","GLOBAL",1)
!Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~Special upgrades.~ + UPGRADE-SPECIAL
+ ~Global("C0AuraHasBooks","GLOBAL",2)
Global("C0AutoUpgradeSpecial1","GLOBAL",1)
Global("C0AutoUpgradeSpecial2","GLOBAL",1)
Global("C0AutoUpgradeSpecial3","GLOBAL",1)
Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~Special upgrades.~ + UPGRADE-SPECIAL-ALL
++ ~Check current upgrades.~ + CHECK-UPGRADES
++ ~Do nothing.~ DO ~SetGlobal("Upgraded","LOCALS",1)~ EXIT

CHAIN C0AUIN3 upgrades2
~What else do you wish to do?~
END
+ ~OR(3)
!Global("C0AutoUpgradeOffense1","GLOBAL",3)
!Global("C0AutoUpgradeOffense2","GLOBAL",3)
!Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~Upgrade offenses.~ + UPGRADE-OFFENSE
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",3)
Global("C0AutoUpgradeOffense2","GLOBAL",3)
Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~Upgrade offenses.~ + UPGRADE-OFFENSE-ALL
+ ~OR(3)
!Global("C0AutoUpgradeDefense1","GLOBAL",3)
!Global("C0AutoUpgradeDefense2","GLOBAL",3)
!Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~Upgrade defenses.~ + UPGRADE-DEFENSE
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",3)
Global("C0AutoUpgradeDefense2","GLOBAL",3)
Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~Upgrade defenses.~ + UPGRADE-DEFENSE-ALL
+ ~Global("C0AuraHasBooks","GLOBAL",2)
OR(4)
!Global("C0AutoUpgradeSpecial1","GLOBAL",1)
!Global("C0AutoUpgradeSpecial2","GLOBAL",1)
!Global("C0AutoUpgradeSpecial3","GLOBAL",1)
!Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~Special upgrades.~ + UPGRADE-SPECIAL
+ ~Global("C0AuraHasBooks","GLOBAL",2)
Global("C0AutoUpgradeSpecial1","GLOBAL",1)
Global("C0AutoUpgradeSpecial2","GLOBAL",1)
Global("C0AutoUpgradeSpecial3","GLOBAL",1)
Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~Special upgrades.~ + UPGRADE-SPECIAL-ALL
++ ~Check current upgrades.~ + CHECK-UPGRADES
++ ~Do nothing.~ DO ~SetGlobal("Upgraded","LOCALS",1)~ EXIT

CHAIN C0AUIN3 UPGRADE-OFFENSE-ALL
~This unit's offenses have already been fully optimized.~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-DEFENSE-ALL
~This unit's defenses have already been fully optimized.~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-SPECIAL-ALL
~This unit has already received all special upgrades.~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-OFFENSE
~This unit may acquire the following offensive upgrades:~
END
+ ~GlobalLT("C0AutoUpgradeOffense1","GLOBAL",1)~ + ~Augmented Blade II~ + UPGRADE-AUGMENTED-BLADE-1
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",1)~ + ~Augmented Blade III~ + UPGRADE-AUGMENTED-BLADE-2
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",2)~ + ~Augmented Blade IV~ + UPGRADE-AUGMENTED-BLADE-3
+ ~GlobalLT("C0AutoUpgradeOffense2","GLOBAL",1)~ + ~Weapon of Impact I~ + UPGRADE-WEAPON-IMPACT-1
+ ~Global("C0AutoUpgradeOffense2","GLOBAL",1)~ + ~Weapon of Impact II~ + UPGRADE-WEAPON-IMPACT-2
+ ~Global("C0AutoUpgradeOffense2","GLOBAL",2)~ + ~Weapon of Impact III~ + UPGRADE-WEAPON-IMPACT-3
+ ~GlobalLT("C0AutoUpgradeOffense3","GLOBAL",1)~ + ~Keen Edge I~ + UPGRADE-KEEN-EDGE-1
+ ~Global("C0AutoUpgradeOffense3","GLOBAL",1)~ + ~Keen Edge II~ + UPGRADE-KEEN-EDGE-2
+ ~Global("C0AutoUpgradeOffense3","GLOBAL",2)~ + ~Keen Edge III~ + UPGRADE-KEEN-EDGE-3
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-DEFENSE
~This unit may acquire the following defensive upgrades:~
END
+ ~GlobalLT("C0AutoUpgradeDefense1","GLOBAL",1)~ + ~Reinforced Plating I~ + UPGRADE-REINFORCED-PLATING-1
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",1)~ + ~Reinforced Plating II~ + UPGRADE-REINFORCED-PLATING-2
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",2)~ + ~Reinforced Plating III~ + UPGRADE-REINFORCED-PLATING-3
+ ~GlobalLT("C0AutoUpgradeDefense2","GLOBAL",1)~ + ~Anti-Magic Shielding I~ + UPGRADE-ANTIMAGIC-SHIELDING-1
+ ~Global("C0AutoUpgradeDefense2","GLOBAL",1)~ + ~Anti-Magic Shielding II~ + UPGRADE-ANTIMAGIC-SHIELDING-2
+ ~Global("C0AutoUpgradeDefense2","GLOBAL",2)~ + ~Anti-Magic Shielding III~ + UPGRADE-ANTIMAGIC-SHIELDING-3
+ ~GlobalLT("C0AutoUpgradeDefense3","GLOBAL",1)~ + ~Self-Repairing Thaumaturgy I~ + UPGRADE-SELFREPAIRING-THAUMATURGY-1
+ ~Global("C0AutoUpgradeDefense3","GLOBAL",1)~ + ~Self-Repairing Thaumaturgy II~ + UPGRADE-SELFREPAIRING-THAUMATURGY-2
+ ~Global("C0AutoUpgradeDefense3","GLOBAL",2)~ + ~Self-Repairing Thaumaturgy III~ + UPGRADE-SELFREPAIRING-THAUMATURGY-3
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SPECIAL
~This unit may acquire the following offensive upgrades:~
END
+ ~GlobalLT("C0AutoUpgradeSpecial1","GLOBAL",1)~ + ~Teleportation~ + UPGRADE-TELEPORT
+ ~GlobalLT("C0AutoUpgradeSpecial2","GLOBAL",1)~ + ~Golem Slow~ + UPGRADE-SLOW
+ ~GlobalLT("C0AutoUpgradeSpecial3","GLOBAL",1)~ + ~Golem Haste~ + UPGRADE-HASTE
+ ~GlobalLT("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~Gas Cloud~ + UPGRADE-GASCLOUD
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-1
~Augmented Blade II: This unit's attacks will strike as a +2 weapon in terms of enemies it can damage.

Requirements: 12th level artificer, one basic melee weapon of +2 enchantment value, one Scroll of Enchanted Weapon, 5,000 gold.~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw2h11")~ + ~\[Two-handed Sword +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw2h11")
DestroyItem("sw2h11")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h55")~ + ~\[Scimitar +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h55")
DestroyItem("ohsw1h55")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h53")~ + ~\[Ninjatō +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h53")
DestroyItem("ohsw1h53")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h41")~ + ~\[Long Sword +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h41")
DestroyItem("sw1h41")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h55")~ + ~\[Katana +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h55")
DestroyItem("sw1h55")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h42")~ + ~\[Bastard Sword +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h42")
DestroyItem("sw1h42")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("staf18")~ + ~\[Quarterstaff +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("staf18")
DestroyItem("staf18")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h51")~ + ~\[Wakizashi +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h51")
DestroyItem("ohsw1h51")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
!PartyHasItem("sw1h09")
PartyHasItem("sw1h29")~ + ~\[Short Sword +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h29")
DestroyItem("sw1h29")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h09")~ + ~\[Short Sword +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h09")
DestroyItem("sw1h09")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
!PartyHasItem("ohblun51")
PartyHasItem("blun15")~ + ~\[Morning Star +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun15")
DestroyItem("blun15")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohblun51")~ + ~\[Club +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohblun51")
DestroyItem("ohblun51")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("blun21")~ + ~\[Mace +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun21")
DestroyItem("blun21")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("hamm08")~ + ~\[War Hammer +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("hamm08")
DestroyItem("hamm08")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("halb17")~ + ~\[Halberd +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("halb17")
DestroyItem("halb17")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("blun13")~ + ~\[Flail +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun13")
DestroyItem("blun13")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("dagg15")~ + ~\[Dagger +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("dagg15")
DestroyItem("dagg15")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ax1h11")~ + ~\[Battle Axe +2\] Upgrade to Augmented Blade II.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ax1h11")
DestroyItem("ax1h11")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-2
~Augmented Blade III: This unit's attacks will strike as a +3 weapon in terms of enemies it can damage.

Requirements: 16th level artificer, one Adamantine Dust, two Diamonds, one Scroll of Enchanted Weapon, 7,500 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("scrl6m")
PartyHasItem("dwdust")
PartyGoldGT(7499)
NumItemsPartyGT("misc42",1)~ + ~Upgrade to Augmented Blade III.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",2)
TakePartyItem("dwdust")
DestroyItem("dwdust")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyItemNum("misc42",2)
DestroyItem("misc42")
TakePartyGold(7500)
DestroyGold(7500)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-3
~Augmented Blade IV: This unit's attacks will strike as a +4 weapon in terms of enemies it can damage.

Requirements: 24th level artificer, one Mithril Alloy, two Rogue Stones, one Scroll of Enchanted Weapon, 10,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,23)
PartyHasItem("scrl6m")
PartyHasItem("c0amith")
PartyGoldGT(9999)
NumItemsPartyGT("misc45",1)~ + ~Upgrade to Augmented Blade IV.~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",3)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1d",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-1
~Weapon of Impact I: This unit's attacks deal +5% additional crushing damage and its crushing attacks have a 30% chance to stun on a failed save vs. death at -3.

Requirements: 9th level artificer, one War Hammer +1, one Scroll of Knock, 5,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("scrl91")
PartyHasItem("hamm02")
PartyGoldGT(4999)~ + ~Upgrade to Weapon of Impact I.~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",1)
TakePartyItem("hamm02")
DestroyItem("hamm02")
TakePartyItemNum("scrl91",1)
DestroyItem("scrl91")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2a",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-2
~Weapon of Impact II: This unit's attacks deal +15% additional crushing damage and its crushing attacks have a 35% chance to stun on a failed save vs. death at -4.

Requirements: 13th level artificer, one War Hammer +2, one Diamond, 8,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("misc42")
PartyHasItem("hamm08")
PartyGoldGT(7999)~ + ~Upgrade to Weapon of Impact II.~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",2)
TakePartyItem("hamm08")
DestroyItem("hamm08")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-3
~Weapon of Impact III: This unit's attacks deal +15% additional crushing damage and its crushing attacks have a 40% chance to stun on a failed save vs. death at -5.

Requirements: 18th level artificer, one War Hammer +3, one Scroll of Bigby's Crushing Hand, 12,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,17)
PartyHasItem("scrlb2")
PartyHasItem("hamm12")
PartyGoldGT(11999)~ + ~Upgrade to Weapon of Impact III.~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",3)
TakePartyItem("hamm12")
DestroyItem("hamm12")
TakePartyItemNum("scrlb2",1)
DestroyItem("scrlb2")
TakePartyGold(12000)
DestroyGold(12000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-1
~Keen Edge I: This unit's attacks deal +5% additional slashing damage and its slashing attacks have +5% critical hit chance.

Requirements: 9th level artificer, one Bastard Sword +1, one Long Sword +1, 4,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("sw1h02")
PartyHasItem("sw1h05")
PartyGoldGT(3999)~ + ~Upgrade to Keen Edge I.~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",1)
TakePartyItem("sw1h02")
DestroyItem("sw1h02")
TakePartyItem("sw1h05")
TakePartyGold(4000)
DestroyGold(4000)
DestroyItem("sw1h05")
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3a",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-2
~Keen Edge II: This unit's attacks deal +10% additional slashing damage and its slashing attacks have +10% critical hit chance.

Requirements: 13th level artificer, one Long Sword +2, one Diamond, 8,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("sw1h41")
PartyHasItem("misc42")
PartyGoldGT(7999)~ + ~Upgrade to Keen Edge II.~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",2)
TakePartyItem("sw1h41")
DestroyItem("sw1h41")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-3
~Keen Edge III: This unit's attacks deal +15% additional slashing damage and its slashing attacks have +15% critical hit chance.

Requirements: 18th level artificer, one Long Sword +3, one Scroll of Black Blade of Disaster, 12,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,17)
PartyHasItem("sw1h73")
PartyHasItem("scrl9x")
PartyGoldGT(11999)~ + ~Upgrade to Keen Edge III.~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",3)
TakePartyItem("sw1h73")
DestroyItem("sw1h73")
TakePartyItemNum("scrl9x",1)
DestroyItem("scrl9x")
TakePartyGold(12000)
DestroyGold(12000)
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-1
~Reinforced Plating I: This unit gains +2 increased armor class and +5% resistance to all damage types.

Requirements: 9th level artificer, one Full Plate Mail, one Scroll of Armor, 2,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("plat04")
PartyHasItem("scrl67")
PartyGoldGT(1999)~ + ~Upgrade to Reinforced Plating I.~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",1)
TakePartyItem("plat04")
DestroyItem("plat04")
TakePartyItemNum("scrl67",1)
DestroyItem("scrl67")
TakePartyGold(2000)
DestroyGold(2000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4a",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-2
~Reinforced Plating II: This unit gains +4 increased armor class and +10% resistance to all damage types.

Requirements: 12th level artificer, one Full Plate Mail +1, one Scroll of Protection from Normal Weapons, 6,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("plat14")
PartyHasItem("scrl6t")
PartyGoldGT(5999)~ + ~Upgrade to Reinforced Plating II.~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",2)
TakePartyItem("plat14")
DestroyItem("plat14")
TakePartyItemNum("scrl6t",1)
DestroyItem("scrl6t")
TakePartyGold(6000)
DestroyGold(6000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-3
~Reinforced Plating III: This unit gains +6 increased armor class and +15% resistance to all damage types.

Requirements: 16th level artificer, one Full Plate Mail +2, one Scroll of Absolute Immunity, 10,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("plat23")
PartyHasItem("scrl9p")
PartyGoldGT(9999)~ + ~Upgrade to Reinforced Plating III.~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",3)
TakePartyItem("plat23")
DestroyItem("plat23")
TakePartyItemNum("scrl9p",1)
DestroyItem("scrl9p")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
!PartyHasItem("plat23")
PartyHasItem("plat19")
PartyHasItem("scrl9p")
PartyGoldGT(9999)~ + ~Upgrade to Reinforced Plating III.~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",3)
TakePartyItem("plat19")
DestroyItem("plat19")
TakePartyItemNum("scrl9p",1)
DestroyItem("scrl9p")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-1
~Anti-Magic Shielding I: This unit gains +1 to all Saving Throws and +10% magic resistance.

Requirements: 12th level artificer, one Potion of Magic Protection, 4,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("potn34")
PartyGoldGT(3999)~ + ~Upgrade to Anti-Magic Shielding I.~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",1)
TakePartyItemNum("potn34",1)
DestroyItem("potn34")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5a",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-2
~Anti-Magic Shielding II: This unit gains +2 to all Saving Throws and +20% magic resistance.

Requirements: 17th level artificer, one Star Sapphire, one Scroll of Spell Deflection, 8,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,16)
PartyHasItem("scrl7v")
PartyHasItem("misc41")
PartyGoldGT(7999)~ + ~Upgrade to Anti-Magic Shielding II.~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",2)
TakePartyItemNum("scrl7v",1)
DestroyItem("scrl7v")
TakePartyItemNum("misc41",1)
DestroyItem("misc41")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-3
~Anti-Magic Shielding III: This unit gains +3 to all Saving Throws and +30% magic resistance.

Requirements: 23rd level artificer, two Star Sapphires, one Scroll of Protection from Magic, one Scroll of Spell Trap, 10,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,22)
PartyHasItem("scrl07")
PartyHasItem("scrl9l")
NumItemsPartyGT("misc41",1)
PartyGoldGT(9999)~ + ~Upgrade to Anti-Magic Shielding III.~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",3)
TakePartyItemNum("misc41",2)
DestroyItem("misc41")
TakePartyItemNum("scrl07",1)
DestroyItem("scrl07")
TakePartyItemNum("scrl9l",1)
DestroyItem("scrl9l")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-1
~Self-Repairing Thaumaturgy I: This unit gains +10 maximum hit points and regenerates 1 hit point per 2 rounds.

Requirements: 13th level artificer, one Emerald, one Potion of Regeneration, 3,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("misc43")
PartyHasItem("potn42")
PartyGoldGT(2999)~ + ~Upgrade to Self-Repairing Thaumaturgy I.~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",1)
TakePartyItemNum("misc43",1)
DestroyItem("misc43")
TakePartyItemNum("potn42",1)
DestroyItem("potn42")
TakePartyGold(3000)
DestroyGold(3000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6a",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-2
~Self-Repairing Thaumaturgy II: This unit gains +20 maximum hit points and regenerates 1 hit point per round.

Requirements: 17th level artificer, one Emerald, two Scrolls of Cure Critical Wounds, 5,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,16)
PartyHasItem("misc43")
NumItemsPartyGT("scrl61",1)
PartyGoldGT(4999)~ + ~Upgrade to Self-Repairing Thaumaturgy II.~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",2)
TakePartyItemNum("scrl61",2)
DestroyItem("scrl61")
TakePartyItemNum("misc43",1)
DestroyItem("misc43")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6b",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-3
~Self-Repairing Thaumaturgy III: This unit gains +30 maximum hit points and regenerates 2 hit points per round.

Requirements: 22nd level artificer, one Pearly White Ioun Stone, one Ring of Regeneration, 8,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,21)
PartyHasItem("ring31")
PartyHasItem("helm18")
PartyGoldGT(7999)~ + ~Upgrade to Self-Repairing Thaumaturgy III.~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",3)
TakePartyItem("ring31")
DestroyItem("misc45")
TakePartyItem("helm18")
DestroyItem("helm18")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6c",Myself)
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-TELEPORT
~Teleportation: This unit may teleport to any place within its vision range at will.

Requirements: 14th level artificer, one Rogue Stone, 2,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,13)
PartyHasItem("misc45")
PartyGoldGT(1999)~ + ~Upgrade.~ DO ~SetGlobal("C0AutoUpgradeSpecial1","GLOBAL",1)
TakePartyItemNum("misc45",1)
DestroyItem("misc45")
TakePartyGold(2000)
DestroyGold(2000)
SetGlobal("Teleportation","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto7a")
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SLOW
~Golem Slow: This unit may cast Golem Slow twice per day.

Requirements: 12th level artificer, two Scrolls of Slow, 4,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl1o")
PartyGoldGT(3999)~ + ~Upgrade.~ DO ~SetGlobal("C0AutoUpgradeSpecial2","GLOBAL",1)
TakePartyItemNum("scrl1o",2)
DestroyItem("scrl1o")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("GolemSlow","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto8a")
AddSpecialAbility("c0auto8a")
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-HASTE
~Golem Haste: This unit may cast Golem Haste twice per day.

Requirements: 12th level artificer, two Scrolls of Haste, 4,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl1h")
PartyGoldGT(3999)~ + ~Upgrade.~ DO ~SetGlobal("C0AutoUpgradeSpecial3","GLOBAL",1)
TakePartyItemNum("scrl1h",2)
DestroyItem("scrl1h")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("GolemHaste","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto9a")
AddSpecialAbility("c0auto9a")
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 UPGRADE-GASCLOUD
~Gas Cloud: This unit may cast Gas Cloud once per day.

Requirements: 16th level artificer, one Scroll of Death Fog, one Scroll of Cloudkill, 6,000 gold~
END
+ ~ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("scrl7r")
PartyHasItem("scrl2e")
PartyGoldGT(5999)~ + ~Upgrade.~ DO ~SetGlobal("C0AutoUpgradeSpecial4","GLOBAL",1)
TakePartyItemNum("scrl7r",1)
DestroyItem("scrl7r")
TakePartyItemNum("scrl2e",1)
DestroyItem("scrl2e")
TakePartyGold(6000)
DestroyGold(6000)
SetGlobal("GasCloud","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto0a")
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~Go back.~ + upgrades2

CHAIN C0AUIN3 CHECK-UPGRADES
~This unit currently has the following upgrades:~
== C0AUIN3 IF ~GlobalLT("C0AutoUpgradeOffense1","GLOBAL",1)~ THEN ~Augmented Blade I: Attacks strike as a +1 weapon.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",1)~ THEN ~Augmented Blade II: Attacks strike as a +2 weapon.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",2)~ THEN ~Augmented Blade III: Attacks strike as a +3 weapon.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",3)~ THEN ~Augmented Blade IV: Attacks strike as a +4 weapon.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",1)~ THEN ~Weapon of Impact I: +5% crushing damage. Crushing attacks have a 30% chance to stun on a failed save vs. death at -3.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",2)~ THEN ~Weapon of Impact II: +10% crushing damage. Crushing attacks have a 35% chance to stun on a failed save vs. death at -4.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",3)~ THEN ~Weapon of Impact III: +15% crushing damage. Crushing attacks have a 40% chance to stun on a failed save vs. death at -5.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",1)~ THEN ~Keen Edge I: +5% slashing damage. Slashing attacks have +5% critical hit chance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",2)~ THEN ~Keen Edge II: +10% slashing damage. Slashing attacks have +10% critical hit chance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",3)~ THEN ~Keen Edge III: +15% slashing damage. Slashing attacks have +15% critical hit chance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",1)~ THEN ~Reinforced Plating I: +2 armor class. +5% damage resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",2)~ THEN ~Reinforced Plating II: +4 armor class. +10% damage resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",3)~ THEN ~Reinforced Plating III: +6 armor class. +15% damage resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",1)~ THEN ~Anti-Magic Shielding I: +1 saving throws. +10% magic resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",2)~ THEN ~Anti-Magic Shielding II: +2 saving throws. +20% magic resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",3)~ THEN ~Anti-Magic Shielding III: +3 saving throws. +30% magic resistance.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",1)~ THEN ~Self-Repairing Thaumaturgy I: +10 maximum hit points. Regenerate 1 hit point per 2 rounds.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",2)~ THEN ~Self-Repairing Thaumaturgy I: +20 maximum hit points. Regenerate 1 hit point per round.~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",3)~ THEN ~Self-Repairing Thaumaturgy I: +30 maximum hit points. Regenerate 2 hit points per round.~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial1","GLOBAL",1)~ THEN ~Teleportation: This unit may teleport to any place within its vision range at will.~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial2","GLOBAL",1)~ THEN ~Golem Slow: This unit may cast Golem Slow twice per day.~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial3","GLOBAL",1)~ THEN ~Golem Haste: This unit may cast Golem Haste twice per day.~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ THEN ~Gas Cloud: This unit may cast Gas Cloud once per day.~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 disableAI
~Self-defense protocol deactivated. The automaton will no longer take action of its own accord except for following and protecting its creator.~
EXIT

CHAIN C0AUIN3 enableAI
~Self-defense protocol activated. The automaton will defend itself and its creator from all hostiles.~
EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0Aura")~ THEN C0AUIN3 b0
~The automaton ignores you.~
EXIT