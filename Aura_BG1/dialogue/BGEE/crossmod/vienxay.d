
// Drake 
CHAIN IF ~InParty("X3Vien")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossAuraVien","LOCALS",0)~ THEN X3VienB VienAura1
@0 // ~Don't know that I don't see what you are trying to do.~
DO ~SetGlobal("CrossAuraVien","LOCALS",1)~
== BC0Aura @1 // ~Um, are you talking to me?~
== X3VienB @2 // ~You are trying to be special. I suppose it is...interesting, but compared to my great talents, well, <CHARNAME> already has a clear favorite.~
== BC0Aura @3 // ~What are you talking about?~
== X3VienB @4 // ~Playing dumb now? All these impressive creations you are working on. You're smart, but I'm afraid you have a long way to go to catch up to my beauty and intelligence.~
== BC0Aura @5 // ~Erm...did I do something to offend you?~
== X3VienB @6 // ~Of course you offended me. You act so weak and feeble, it sickens me.~
== BC0Aura @7 // ~I think I am just going to walk at the back of the group.~
== X3VienB @8 // ~Gods, you are so boring. You won't push back on anything. I'll have to find my fun elsewhere.~
EXIT 