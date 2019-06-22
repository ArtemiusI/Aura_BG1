BEGIN C0AUIN3

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AUIN3 a0
~The automaton stands at attention.~
END 
++ ~Imbue Rune.~ DO ~RemoveFamiliar()~ + a0.1 
++ ~Open inventory.~ DO ~StartStore("C0AUTINV",Lasttalkedtoby(Myself))~ EXIT
+ ~Global("Standby","LOCALS",0)~ + ~Standby.~ DO ~SetGlobal("Standby","LOCALS",1) RemoveFamiliar()~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~Follow.~ DO ~SetGlobal("Standby","LOCALS",0) AddFamiliar()~ EXIT
++ ~Dismantle.~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~Disable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~Enable self-defense protocol.~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~Exit~ EXIT

CHAIN C0AUIN3 disableAI
~Self-defense protocol deactivated. The automaton will no longer take action of its own accord except for following and protecting its creator.~
EXIT

CHAIN C0AUIN3 enableAI
~Self-defense protocol activated. The automaton will defend itself and its creator from all hostiles.~
EXIT

CHAIN C0AUIN3 a0.1
~The automaton may have its abilities enhanced by imbuing an arcane rune upon it. Imbuing a second rune while the first is still active will remove its effects.~
END
+ ~OR(5)
HasItem("c0rune1a",Lasttalkedtoby(Myself))
HasItem("c0rune2a",Lasttalkedtoby(Myself))
HasItem("c0rune2e",Lasttalkedtoby(Myself))
HasItem("c0rune3a",Lasttalkedtoby(Myself))
HasItem("c0rune4a",Lasttalkedtoby(Myself))~ + ~Insert a Fire Rune.~ + a1
+ ~OR(2)
HasItem("c0rune1b",Lasttalkedtoby(Myself))
HasItem("c0rune4b",Lasttalkedtoby(Myself))~ + ~Insert an Ice Rune.~ + a2
+ ~OR(3)
HasItem("c0rune1c",Lasttalkedtoby(Myself))
HasItem("c0rune3c",Lasttalkedtoby(Myself))
HasItem("c0rune4c",Lasttalkedtoby(Myself))~ + ~Insert an Arcane Rune.~ + a3
+ ~OR(4)
HasItem("c0rune1d",Lasttalkedtoby(Myself))
HasItem("c0rune2c",Lasttalkedtoby(Myself))
HasItem("c0rune2h",Lasttalkedtoby(Myself))
HasItem("c0rune3d",Lasttalkedtoby(Myself))~ + ~Insert an Illusion Rune.~ + a4
+ ~HasItem("c0rune3b",Lasttalkedtoby(Myself))~ + ~Insert an Earth Rune.~ + a5
+ ~HasItem("c0rune2g",Lasttalkedtoby(Myself))~ + ~Insert a Time Rune.~ + a6
+ ~HasItem("c0rune2b",Lasttalkedtoby(Myself))~ + ~Insert a Strength Rune.~ + a7
+ ~OR(2)
HasItem("c0rune1e",Lasttalkedtoby(Myself))
HasItem("c0rune2f",Lasttalkedtoby(Myself))~ + ~Insert a Lightning Rune.~ + a8
+ ~OR(3)
HasItem("c0rune1f",Lasttalkedtoby(Myself))
HasItem("c0rune3f",Lasttalkedtoby(Myself))
HasItem("c0rune4e",Lasttalkedtoby(Myself))~ + ~Insert a Shield Rune.~ + a9
+ ~HasItem("c0rune2d",Lasttalkedtoby(Myself))~ + ~Insert a Dust Rune.~ + a10
+ ~OR(2)
HasItem("c0rune3e",Lasttalkedtoby(Myself))
HasItem("c0rune4d",Lasttalkedtoby(Myself))~ + ~Insert a Scrying Rune.~ + a11
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a1
~Fire Runes enhance the automaton with heat and flame, providing it with immunity to fire damage. Additionally, the automaton's attacks become enchanted weapons and deal bonus fire damage on hit. Duration: 1 turn

Which Fire Rune shall be inserted?~
END
+ ~HasItem("c0rune1a",Lasttalkedtoby(Myself))~ + ~Minor Fire Rune: +1d2 fire damage, +1 enchantment bonus~ DO ~TakePartyItemNum("c0rune1a",1) DestroyItem("c0rune1a") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0afire1",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune2a",Lasttalkedtoby(Myself))~ + ~Lesser Fire Rune: +1d4 fire damage, +2 enchantment bonus~ DO ~TakePartyItemNum("c0rune2a",1) DestroyItem("c0rune2a") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0afire2",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune2e",Lasttalkedtoby(Myself))~ + ~Fire Rune: +1d6 fire damage, +3 enchantment bonus~ DO ~TakePartyItemNum("c0rune3a",1) DestroyItem("c0rune3a") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0afire3",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune3a",Lasttalkedtoby(Myself))~ + ~Greater Fire Rune: +1d8 fire damage, +4 enchantment bonus~ DO ~TakePartyItemNum("c0rune4a",1) DestroyItem("c0rune4a") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0afire4",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune4a",Lasttalkedtoby(Myself))~ + ~Perfect Fire Rune: +1d10 fire damage, +5 enchantment bonus~ DO ~TakePartyItemNum("c0rune5a",1) DestroyItem("c0rune5a") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0afire5",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a2
~Ice Runes enhance the automaton with extreme cold, providing it with immunity to cold damage and causing it to emanate a cold aura that affects all nearby creatures. Duration: 1 turn

Which Ice Rune shall be inserted?~
END
+ ~HasItem("c0rune1b",Lasttalkedtoby(Myself))~ + ~Minor Ice Rune: -1 to Armor Class, THAC0 and damage~ DO ~TakePartyItemNum("c0rune1b",1) DestroyItem("c0rune1b") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0acold1",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune4b",Lasttalkedtoby(Myself))~ + ~Perfect Ice Rune: -3 to Armor Class, THAC0 and damage, Slow~ DO ~TakePartyItemNum("c0rune4b",1) DestroyItem("c0rune4b") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0acold2",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a3
~Arcane Runes enhance the automaton with resistance to magic and provides it with immunity to a limited number spells below a certain level. Duration: 1 turn

Which Arcane Rune shall be inserted?~
END
+ ~HasItem("c0rune1c",Lasttalkedtoby(Myself))~ + ~Minor Arcane Rune: Minor Spell Deflection~ DO ~TakePartyItemNum("c0rune1c",1) DestroyItem("c0rune1c") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi318",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune3c",Lasttalkedtoby(Myself))~ + ~Greater Arcane Rune: Minor Spell Turning~ DO ~TakePartyItemNum("c0rune3c",1) DestroyItem("c0rune3c") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi522",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune4c",Lasttalkedtoby(Myself))~ + ~Perfect Arcane Rune: Spell Deflection~ DO ~TakePartyItemNum("c0rune4c",1) DestroyItem("c0rune4c") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi618",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a4
~Illusion Runes enhance the automaton with magical illusions, providing it with various illusory effects. Duration: Special

Which Illusion Rune shall be inserted?~
END
+ ~HasItem("c0rune1d",Lasttalkedtoby(Myself))~ + ~Minor Illusion Rune: Reflected Image~ DO ~TakePartyItemNum("c0rune1d",1) DestroyItem("c0rune1d") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi120",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune2c",Lasttalkedtoby(Myself))~ + ~Lesser Illusion Rune: Blur~ DO ~TakePartyItemNum("c0rune2c",1) DestroyItem("c0rune2c") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi201",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune2h",Lasttalkedtoby(Myself))~ + ~Illusion Rune: Mirror Image~ DO ~TakePartyItemNum("c0rune2h",1) DestroyItem("c0rune2h") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi212",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune3d",Lasttalkedtoby(Myself))~ + ~Greater Illusion Rune: Improved Invisibility~ DO ~TakePartyItemNum("c0rune3d",1) DestroyItem("c0rune3d") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("spwi405",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a5
~Earth Runes bolster the automaton's durability, increasing its resistance to all physical damage. Duration: 1 turn

Which Earth Rune shall be inserted?~
END
+ ~HasItem("c0rune3b",Lasttalkedtoby(Myself))~ + ~Greater Earth Rune: +30% resistance to crushing, slashing, piercing and missile damage.~ DO ~TakePartyItemNum("c0rune3b",1) DestroyItem("c0rune3b") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0aearth",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a6
~Time Runes enhance the automaton with increased speed, allowing it to act with greater celerity. Duration: 1 turn

Which Time Rune shall be inserted?~
END
+ ~HasItem("c0rune2g",Lasttalkedtoby(Myself))~ + ~Time Rune: Haste (self only)~ DO ~TakePartyItemNum("c0rune2g",1) DestroyItem("c0rune2g") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0atime1",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a7
~Strength Runes enhance the automaton's physical prowess, allowing to strike harder and more accurately. Duration: 1 turn

Which Strength Rune shall be inserted?~
END
+ ~HasItem("c0rune2b",Lasttalkedtoby(Myself))~ + ~Strength Rune: +2 bonus to THAC0 and damage~ DO ~TakePartyItemNum("c0rune2b",1) DestroyItem("c0rune2b") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0astre1",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a8
~Lightning Runes charge the automaton, healing it and allowing it to launch bolts of lightning. Duration: Permanent

Which Lightning Rune shall be inserted?~
END
+ ~HasItem("c0rune1e",Lasttalkedtoby(Myself))~ + ~Minor Lightning Rune: Restore 30% of maximum hit points, next attack launches a lightning bolt dealing 3d6+3 electrical damage to all targets in a line~ DO ~TakePartyItemNum("c0rune1e",1) DestroyItem("c0rune1e") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0aligh1",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune2f",Lasttalkedtoby(Myself))~ + ~Lightning Rune: Restore 50% of maximum hit points, next three attacks launch a lightning bolt dealing 3d6+3 electrical damage to all targets in a line~ DO ~TakePartyItemNum("c0rune2f",1) DestroyItem("c0rune2f") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0aligh2",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a9
~Shield Runes enhance the automaton's defenses, increasing its armor class. Duration: 1 turn

Which Shield Rune shall be inserted?~
END
+ ~HasItem("c0rune1f",Lasttalkedtoby(Myself))~ + ~Minor Shield Rune: +2 to Armor Class~ DO ~TakePartyItemNum("c0rune1f",1) DestroyItem("c0rune1f") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0ashie1",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune3f",Lasttalkedtoby(Myself))~ + ~Greater Shield Rune: +4 to Armor Class~ DO ~TakePartyItemNum("c0rune3f",1) DestroyItem("c0rune3f") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0ashie2",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune4e",Lasttalkedtoby(Myself))~ + ~Perfect Shield Rune: +8 to Armor Class~ DO ~TakePartyItemNum("c0rune4e",1) DestroyItem("c0rune4e") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0ashie3",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a10
~Dust Runes enhance the automaton's breath attack, allowing it to release a cloud of dust that blinds all creatures around it. Duration: Permanent until cast

Which Dust Rune shall be inserted?~
END
+ ~HasItem("c0rune2d",Lasttalkedtoby(Myself))~ + ~Lesser Dust Rune: Blindness (-4 penalty to AC and THAC0) for 5 rounds~ DO ~TakePartyItemNum("c0rune2d",1) DestroyItem("c0rune2d") ReallyForceSpellRES("c0adust1",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN C0AUIN3 a11
~Scrying Runes enhance the automaton's sight radius and ability to see through illusions. Duration: 1 turn

Which Scrying Rune shall be inserted?~
END
+ ~HasItem("c0rune3e",Lasttalkedtoby(Myself))~ + ~Greater Scrying Rune: Increased visual range, can attack invisible creatures~ DO ~TakePartyItemNum("c0rune3e",1) DestroyItem("c0rune3e") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0ascry1",Myself) AddFamiliar()~ EXIT
+ ~HasItem("c0rune4d",Lasttalkedtoby(Myself))~ + ~Perfect Scrying Rune: Increased visual range, can attack invisible creatures, dispels illusions on successful hit (save vs. spell to avoid)~ DO ~TakePartyItemNum("c0rune4d",1) DestroyItem("c0rune4d") ApplySpellRES("c0aclear",Myself) ReallyForceSpellRES("c0ascry2",Myself) AddFamiliar()~ EXIT
++ ~Go back.~ + a0.1
++ ~Don't insert any runes.~ DO ~AddFamiliar()~ EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0Aura")~ THEN C0AUIN3 b0
~The automaton ignores you.~
EXIT