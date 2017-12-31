BEGIN BC0AURA

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAjantis1","GLOBAL",0)~ THEN BC0AURA C0AuraAjantis1
~Um... Ajantis? May I ask you a question?~
DO ~SetGlobal("C0AuraAjantis1","GLOBAL",1)~
== BAJANT ~Certainly, miss Aura. Please ask whatever you wish.~
== BC0AURA ~I know we haven't talked much since we've met, and, um, I was wondering... is it because you don't like me very much?~
== BAJANT ~Wh- no, of course not! You have done nothing to offend me. Why would you think that?~
== BC0AURA ~Well, I know you dislike thieves and people in dishonorable professions... and while I've never considered myself as a thief, I thought, maybe, considering my skills, you... wouldn't approve of me.~
== BAJANT ~Ah, I see... if that is your concern, Aura, then worry not. 'Tis true that I dislike those that covet what is not their own, but I am not opposed to their ability, only their intent.~
== BC0AURA ~Oh. I see what you mean. But, we barely know each other. How can you be sure I'm not... you know, a dishonorable thief?~
== BAJANT ~Aye, as you say, we do not truly know each other yet. But I have watched your dedication to your craft, and 'tis difficult to associate you with the rogues I am familiar with. I only hope that my trust in you has not been misplaced.~
== BC0AURA ~It won't be, I assure you. I have my own honor, believe it or not.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAjantis2","GLOBAL",0)~ THEN BAJANT C0AuraAjantis2
~Miss Aura, you appear to be struggling with the weight of your pack. Might I share some of your load?~
DO ~SetGlobal("C0AuraAjantis2","GLOBAL",1)~
== BC0AURA ~Oh, no, it's not that heavy... well, that's untrue, it is rather heavy. But I wouldn't like to be a hassle to you...~
== BAJANT ~Nonsense. Such acts of courtesy are expected from a knight and gentleman. It would be no trouble to me.~
== BC0AURA ~Well, um, thank you, Ajantis. If you don't mind then, could you carry some of my books? I have a lot of them, and they're the one thing I don't need at arm's reach, so...~
== BAJANT ~Certainly, but... by Helm, that is a great amount of books, Aura! "History of Halruaa", "Gondegal the Lost King", "Volo's Guide to All Things Magical"... you keep a broad collection, my lady.~
== BC0AURA ~Yep, you can say that again. Reading's always been one of my favorite hobbies. There's more at the bottom of the pile you haven't gotten to yet. History, drama, philosophy... I've read them all.~
== BAJANT ~I see. Well, I must say I am humbled, miss Aura. Your mind must be a keen one indeed to have toiled through so many books.~
== BC0AURA ~What about you, Ajantis? Do you enjoy reading?~
== BAJANT ~Me? Well, I'm flattered you'd ask. In truth, a squire of the Order rarely has the chance for casual activities... though, I do certainly enjoy a good book during my pastime.~
== BC0AURA ~Well, you know what... if you think you might like some of those books, you can borrow whichever ones you want. I can't deny a fellow bookworm, after all! We could even read together when we have the chance over a pot of tea, if you would like that.~
== BAJANT ~That sounds... rather delightful, in fact. I eagerly await such a time, miss Aura!~
EXIT

// Alora
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",0)~ THEN BALORA C0AuraAlora1
~Aura! It's so nice to have another short girl in the group, don'tcha think?~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",1)~
== BC0AURA ~Mmm, I can agree with that...~
== BALORA ~We should be best buddies so long as we're together! With our size and our hair, we could almost be sisters.~
== BC0AURA ~Hee-hee, I guess. After all, my real little sister also would steal my spare parts while I wasn't looking.~
== BALORA ~H-huh? I, um, don't know what you're talking about, e-he-he...~
== BC0AURA ~Suuuure...~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora2","GLOBAL",0)~ THEN BALORA C0AuraAlora4
~Whoa... hey, this is CUTE. What sort of dress is it, Aura?~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",1)~
== BC0AURA ~It's a yukata. Kozakuran style. It's meant to be worn during the summer when it's hot.~
== BALORA ~I've never seen clothes with such a pretty flower pattern before. Where did you get it?~
== BC0AURA ~When I lived in Kozakura, my mentor, Reika-san, brought me to a Mitama harvest festival. I loved the colorful outfits that the locals wore, but there weren't any that would fit me. So Reika-san brought me to the market and asked me to pick my favorite pattern. When we returned home, she worked all night to sew this together for me.~
== BALORA ~Oh. So I guess it must mean a lot to you then... but, can I try it on anyway? I'm about as tall as you anyway.~
== BC0AURA ~Sure. It's pretty complicated to put on for the first time, though. I'll help you out when you want.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",1)~ THEN BALORA C0AuraAlora2
~Hey, hey, Aura! You're not looking very happy today! Is somethin' wrong? Can I help?~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",2)~
== BC0AURA ~I... um, maybe. I've lost something important to me, and I'm looking for it.~
== BALORA ~What did you lose? I'm great at finding lost things! I'm sure we'll find it if we look for it together!~
== BC0AURA ~My magatama. It's my necklace, the one I wear at all times. I just can't imagine how I could've lost it. It might've slipped loose during our last fight, but I know I always keep it secure...~
== BALORA ~U-um, I see... uh, I can't imagine where it would've dropped... haha... er, just slow down and try to remember, okay? Maybe I'll just go...~
== BC0AURA ~I know it was still around my neck when we were eating. I remember a bug was on my neck and I touched it while trying to get rid of it, then I stopped because you swatted it away, and then...~
== BC0AURA ~Wait, you... YOU!~
== BALORA ~Eep!~
== BC0AURA ~YOU stole it! You stole my magatama!~
== BALORA ~I- I'm sorry! Why do you look so angry, Aura? I was just-~
== BC0AURA ~*SLAP!*~
== BALORA ~Owww! *sniffle*~
== BC0AURA ~How... how dare you steal Reika-san's blessed magatama, you... you stupid thief! Give it back right now, you pickpocket! Go away and stay away!~
== BALORA ~O-okay. I didn't... *sniff* I didn't know it meant that much to you, Aura, I'll... I'll go... I'm sorry...~
EXIT

CHAIN IF ~InParty("C0Alora")
See("C0Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",2)~ THEN BC0AURA C0AuraAlora3
~Heya, Alora.~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",3)~
== BALORA ~Eek!~
== BC0AURA ~W-what's wrong?~
== BALORA ~I didn't steal anything! Not this time, I swear! See? My hands are empty! My pockets too!~
== BC0AURA ~I don't know what... oh, this is about my magatama... it's okay, Alora. Don't be scared.~
== BALORA ~Y-you're not angry about that anymore?~
== BC0AURA ~No. I'm sorry I lost my temper, and I'm sorry for slapping you, and telling you to go away, and...~
== BALORA ~S-stop! It's okay, I should be saying sorry, I wouldn't have even dreamed of stealing your necklace if I knew it was so important to you! I deserved to be slapped for being so bad. Really!~
== BC0AURA ~I just... *sigh* When I realized it was gone and I thought I lost it, lost the one thing I have to remember my mother... I mean, my mentor by, I felt like my heart stopped, and all I could think of was finding it again... so when I realized you had it I couldn't handle it and...~
== BALORA ~I-it's okay, I get it! If you say any more, I'm going to feel even more guilty!~
== BC0AURA ~Hey, you know, if you still want to look at it... here. You won't have to steal it now.~
== BALORA ~Thanks, Aura... you know, it's pretty, but I don't think I want it anymore. Not after hearing how much it means to ya. So, take it back. I promise I won't steal it again!~
== BC0AURA ~Okay, I trust you. So we're still friends, yep?~
== BALORA ~Yep!~
EXIT

// Baeloth

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBaeloth1","GLOBAL",0)~ THEN BBAELOTH C0AuraBaeloth1
~What are you staring at, you peppy, pink pygmy person?~
DO ~SetGlobal("C0AuraBaeloth1","GLOBAL",1)~
== BC0AURA ~I've just been pondering, I think I had an uncle who speaks like you do. In alliterations.~
== BBAELOTH ~Without my panache, I assume.~
== BC0AURA ~Everyone thought he was crazy in the head. He had some great tongue-twisters though. *hums* "She-sells-sea-shells-by-the-seashore..."~
EXIT

CHAIN IF ~InParty("Baeloth")
See("Baeloth")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBaeloth2","GLOBAL",0)~ THEN BC0AURA C0AuraBaeloth2
~Hey, Baeloth. Catch!~
DO ~SetGlobal("C0AuraBaeloth2","GLOBAL",1)~
== BBAELOTH ~What is this? A rock with rudimentary runic resonations?~
== BC0AURA ~It's just one of my arcane runes. They're designed so that only I can use them, but... you're probably smart enough to circumvent that, right?~
== BBAELOTH ~Is that a challenge, you crass, conceitedly cheerful chimp? Well, I can hardly concede. Behold!~
== BC0AURA ~Oh, I was right! You can activate it!~
== BBAELOTH ~Such meager mediocrity is a mere mockery of material magic. Train for another thousand years, then show me something more impressive.~
== BC0AURA ~You're awfully concerned about being the best, aren't you?~
== BBAELOTH ~Concerned? My dear, superiority is synonymous with my splendorous substance. There is hardly room for debate.~
EXIT

// Branwen
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBranwen1","GLOBAL",0)~ THEN BBRANW C0AuraBranwen1
~You are soft, and frail as a twig, Aura. I advise that you shape up, before the trials of battle become too much for you to bear.~
DO ~SetGlobal("C0AuraBranwen1","GLOBAL",1)~
== BC0AURA ~I know I'm not as good in battle as you, Branwen, but I can still use this bow. You don't have to worry about me dragging the group down.~
== BBRANW ~Fighting from a distance is a cowardly act, and what shall you do should a foe approach you in melee? You would be cut down within seconds.~
== BC0AURA ~*sigh* I know. But I'm not a fighter, and I never claimed to be. I can only offer what skills I have.~
== BBRANW ~Hmph. Tinker with your contraptions, while the warriors risk their lives. I see that your courage matches your stature.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
See("C0AUIN3")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBranwen2","GLOBAL",0)~ THEN BBRANW C0AuraBranwen2
~What honor is there in having a being of metal fight in your stead?~
DO ~SetGlobal("C0AuraBranwen2","GLOBAL",1)~
== BC0AURA ~I... I wouldn't know. Is there any honor in fighting at all, I wonder?~
== BBRANW ~Foolish girl! There are few things in life more honorable than fair combat. But hiding behind this... this 'thing'? 'Tis cowardice!~
== BC0AURA ~I've never claimed to be a fighter. But I promised to help <CHARNAME>, so... I'm giving what I can. Even if I can't fight on the frontline myself.~
== BBRANW ~You could give much more if you chose not to shy from battle.~
EXIT

// Coran
CHAIN IF ~InParty("Coran")
See("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraCoran1","GLOBAL",0)~ THEN BC0AURA C0AuraCoran1
~Hey, hey, Coran!~
DO ~SetGlobal("C0AuraCoran1","GLOBAL",1)~
== BCORAN ~Yes, little miss? I'm all ears.~
== BC0AURA ~You were on a quest to hunt wyverns when you met <CHARNAME>. So... have you seen any other extraordinary creatures in your adventures?~
== BCORAN ~Why, of course! No adventurer as seasoned as I could go without a few memorable experiences. Ah, let's see... shall I tell you of the nereids of River Valashar? What about the unicorns that roam High Forest? I can tell you many things about all creatures of beauty.~
== BC0AURA ~I don't need to hear about those. We see them in Lantan sometimes. Have you ever seen a remorhaz?~
== BCORAN ~The polar worms? Why would a small, charming creature such as yourself want to know about such a colossal, loathsome beast?~
== BC0AURA ~I've always wanted to see one! They're classified in Lantan as one of the most dangerous creatures in the north, and their bodies are supposed to be able to get as hot as a furnace! And they look pretty adorable in the drawings I've seen. I want to know if the real things look just like that.~
== BCORAN ~Er... I see.~
== BC0AURA ~Have you ever seen one, Coran?~
== BCORAN ~I... haven't had the dubious pleasure, no. What would you even do with such a creature, should one be at your disposal?~
== BC0AURA ~Well... ride it, I suppose! How many people could say they've ever rode on a giant worm in their lives?~
== BCORAN ~Ah... hahaha, you are certainly a strange little one, Aura. Though there is an endearing side to it.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraCoran2","GLOBAL",0)~ THEN BCORAN C0AuraCoran2
~There is a saying: "being married to one's work." Would you say that applies to you, Aura?~
DO ~SetGlobal("C0AuraCoran2","GLOBAL",1)~
== BC0AURA ~I wouldn't go that far. It's true that I pay more attention to my contraptions than other people, but... I'm still young.~
== BCORAN ~Would it be intrusive should I ask if there is somebody in your life already?~
== BC0AURA ~There was, once. But it's been so long... I haven't seen her since I left Lantan. And after the accident that landed me in Kozakura... my memory of her still isn't complete.~
== BCORAN ~Have you considered writing home? Perhaps familiar words may bring back your lost memories.~
== BC0AURA ~I've thought about it, but... it's hard to find the words. When I finally start my journey back home... I hope I'll see her again.~
EXIT

// Dorn
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDorn1","GLOBAL",0)~ THEN BDORN C0AuraDorn1
~Out of my way, runt.~
DO ~SetGlobal("C0AuraAura1","GLOBAL",1)~
== BC0AURA ~Eep!~
== BDORN ~If you must hang by our coattails, then at least make sure to make your presence as minor as possible. I have no patience for playing with little girls with no stomach for blood.~
== BC0AURA ~I-I don't think I like you...~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("C0AuraQuest","GLOBAL",8)
Global("C0AuraDorn2","GLOBAL",0)~ THEN BDORN C0AuraDorn2
~I was mistaken. To think that one so tiny as you had such great potential for carnage... why would you restrict yourself from such magnificent power?~
DO ~SetGlobal("C0AuraAura2","GLOBAL",1)~
== BC0AURA ~I'm not like you. I don't find thrill in destruction, I only do it because there's no alternative.~
== BDORN ~Your lack of ambition sickens me. If you made proper use of your explosive weaponry, you could conquer a kingdom! Yet you are satisfied with living such a meaningless life?~
== BC0AURA ~Only you'd think that creating would be worth less than destroying. There's no arguing with people like you.~
== BDORN ~Likewise. It's truly ironic how academic geniuses can be the greatest fools.~
EXIT

// Dynaheir
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDynaheir1","GLOBAL",0)~ THEN BDYNAH C0AuraDynaheir1
~Thy ability to use magic is unlike any other skill I hath seen, Aura. How hath you developed this ability?~
DO ~SetGlobal("C0AuraDynaheir1","GLOBAL",1)~
== BC0AURA ~My runes? It's a simple trick, really. I'm no mage. I just... taught myself a thing or two.~
== BDYNAH ~But thou hath talent, and thy interest in the arcane arts is clear. How is it that thou hath no training?~
== BC0AURA ~I wish I did... but Lantan didn't have any real academies for training in magic. There were arcanists that lived in distant parts of the island, but my family never allowed me to travel that far to study with them.~
== BDYNAH ~I see. That is a shame... though fear not, Aura. Now that we are companions, I am willing to educate thee, if that is thy desire. Perhaps in the meantime, thou wouldst educate me in the sciences of Lantan, of which I am most curious.~
== BC0AURA ~Oh, you'd really do that, miss Dynaheir? I... I'd love to! There are so many things I'd like to learn from a real mage...~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDynaheir2","GLOBAL",0)~ THEN BDYNAH C0AuraDynaheir2
~...and so did the Archwizard Karsus attempt to wrest mastery of the Weave from the goddess Mystryl, and instigated the fall of Netheril's flying cities.~
DO ~SetGlobal("C0AuraDynaheir2","GLOBAL",1)~
== BDYNAH ~Mystryl, having sacrificed herself to break the link betwixt herself and Karsus, reincarnated herself as the original Mystra to restore the Weave, but 'twas too late for Netheril. And thus did Karsus's folly lead to the destruction of an empire.~
== BC0AURA ~...and Mystra's ultimatum came to pass, restricting the access of the Weave from the hands of mortal mages.~
== BDYNAH ~Just so. T'would appear that you are already well acquainted with this part of ancient history.~
== BC0AURA ~The entire recorded history of Netheril's fall is stored within Lantan's archives. They are rarely disturbed, but... I've been there, and I've read them all.~
== BDYNAH ~Indeed? Forgive my assumptions, but 'tis unexpected to me. As I recall, the natives of Lantan place more trust within the sciences as opposed to arcana.~
== BC0AURA ~There is that, but world-changing events are a worthwhile lesson to everyone. Magic, just like science, has infinite potential, but trying to master it by force will only lead to disaster.~
== BDYNAH ~Well said. I am glad to see that thou hast such perspective. In mine own experience, those with the greatest minds are oft those who make the greatest errors.~
== BC0AURA ~It's true. Even I've learned that through my experiences, usually the hard way. I've gone too far sometimes, and I always regret those moments.~
== BDYNAH ~Heed my advice, Aura: learn from thy mistakes, but take care that thy regrets do not hinder thy potential. Much good can still come from thy talents. Shall we continue our lessons another time?~
== BC0AURA ~Yes. I'll be waiting.~
EXIT

// Edwin
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEdwin1","GLOBAL",0)~ THEN BEDWIN C0AuraEdwin1
~Your skill at inscribing runes is amusing to watch, gnome. It is reminiscent of seeing a child attempting to draw for the first time.~
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",1)~
== BC0AURA ~Well, as far as understanding magic, Edwin, I'll admit I'm little better than a child. Would you mind giving me any pointers?~
== BEDWIN ~I could, were I inclined to, but I doubt you could comprehend the intricacies of the functions of magic.~
== BC0AURA ~Maybe you're right... I could tell you everything there is to know about alchemy, botanics and engineering but when it comes to magic, I just... can't bring myself to understand how it works. It's like it doesn't follow any real rules at all.~
== BEDWIN ~Of course you may believe such a thing. After all, you are the sort to expect the same identical result through the same procedures, and no variation so long as there is no mortal error. The Weave is far beyond the comprehension of those who expect it to comform to the laws of science.~
== BC0AURA ~Okay, suppose I don't understand, then. What's so different about it?~
== BEDWIN ~What is different? What a ridiculous question! Everything is different! The Weave is not a force which can be defined into specific functions. It is a vast ocean, a fountain of power that can be shaped into whatever one desires, so long as they have the will. Your runes are nothing but a substitute, a focus to shape the Weave in absence of true control. To truly master the Weave takes years of practice and understanding! Centuries for those beneath me!~
== BC0AURA ~Hey... you know, that actually does explain a lot. Thanks, Edwin!~
== BEDWIN ~Blast! I said I would not... I demand you forget that this instant!~
== BC0AURA ~Heehee, no can do! I never forget a thing!~
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEdwin2","GLOBAL",0)~ THEN BC0AURA C0AuraEdwin2
~Hey! Hey, Edwin!~
DO ~SetGlobal("C0AuraEdwin2","GLOBAL",1)~
== BEDWIN ~Agh! What do you want now, girl? I have given you as much knowledge in the workings of magic as one such as you deserves! Find yourself a distraction and leave me be.~
== BC0AURA ~Aw. I mean, I've still a lot of questions I need to ask... but there's really no one around who's educated enough to give me the proper guidance...~
== BC0AURA IF ~IsValidForPartyDialog("Dynaheir")~ THEN ~I guess I'll go and ask Dynaheir?~
== BEDWIN ~*ahem* Not so fast. Perhaps... I may yet be persuaded to make a compromise. (Blast. How can I possibly refuse now?)~
== BC0AURA ~Okay. Well, since you've changed your mind, can you confirm a few things I've heard about Thay? Is it true that the Red Wizards recovered a mythallar and are researching it? Is the Ever-Burning Tree of Kossuth real? What about Larloch's Orb?~
== BEDWIN ~Where did you hear such ridiculous rumors. Mythallar have become all but worthless since Netheril's fall, every competent mage knows this. The Tree of Kossuth is nothing more than a myth. As for Larloch's Orb...~
== BEDWIN ~Wait. Where did you learn of that? That is a secret within the Thayan circle!~
== BC0AURA ~I really can't remember, it's been so long. Probably a rumor I heard while travelling through Aglarond years ago. Um... oh, you look mad, Edwin. I didn't realize it was a valuable secret. I'm sorry!~
== BEDWIN ~Hmph. I shall forgive and forget... if you repay me with an artifact of power worthy of the knowledge I have generously bestowed upon you.~
== BC0AURA ~Oh. I'm sorry, but I don't have any of those. All I have is this sugar cake I've been saving for supper...~
== BEDWIN ~(Cake? Hmm...) That is... adequate. But remember this, gnome, this is the last time!~
EXIT

// Eldoth
CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEldoth1","GLOBAL",0)~ THEN BC0AURA C0AuraEldoth1
~Eldoth, would you mind playing more quietly? Not to be rude, but I am trying to work here.~
DO ~SetGlobal("C0AuraEldoth1","GLOBAL",1)~
== BELDOT ~I certainly do mind. My muse can never be stifled by another's command. It would be heresy against music as an art.~
== BC0AURA ~Okay... then can you sing something that doesn't involve mocking people? Not to be rude, but that's the fifth song where someone gets humiliated for eight verses straight. It's awful.~
== BELDOT ~What would you have me sing of instead then, girl? The fruitful bounty of heroic endeavors? The romantic union of fated lovers? The joys of living a peaceful life?~
== BC0AURA ~Um... yes?~
== BELDOT ~If that's the case, then I suggest you invent yourself some better taste. It would help you grow up a little faster than those laughable toys you like to play with.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEldoth1","GLOBAL",0)~ THEN BELDOT C0AuraEldoth2
~Hmm... not bad, I can see my perfect reflection in it, when held at the correct angle. I approve.~
DO ~SetGlobal("C0AuraEldoth1","GLOBAL",1)~
== BC0AURA ~Uh, that's not what it's meant to do.~
== BELDOT ~Is it not? Pity. I suppose it will still sell for a reasonable price. At least, with the right verbal embellishment.~
== BC0AURA ~It's an optics prism. You can get them for a dime a dozen back in Lantan. And I really need it back now, please.~
== BELDOT ~Patience, dear. I'm not finished considering how much I could convince the next merchant to buy this piece of cut glass for. Being able to affect light is amusing, but impractical. Most fools will need a little more convincing.~
== BC0AURA ~Is everything's worth determined by how much you can gain to you?~
== BELDOT ~Of course. Anything, or anybody, below acceptable by my standards is objectively worthless. Have I not made that clear enough?~
== BC0AURA ~Clear as crystal. I'll be taking that back now, Eldoth. Goodbye.~
EXIT

// Faldorn
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraFaldorn1","GLOBAL",0)~ THEN BFALDO C0AuraAlora1
~Keep that metal beast away from me, gnome!~
DO ~SetGlobal("C0AuraFaldorn1","GLOBAL",1)~
== BC0AURA ~Huh? What's wrong with Muffy? Don't you like squirrels?~
== BFALDO ~That... thing is a perversion of nature. It's an insult that you would build it in the shape of one of the Mother's children. It should be destroyed!~
== BC0AURA ~Aw, but Muffy's a sweetie!~
== BFALDO ~There is no life in that, only a pale mockery. I know not what sorcery you have used to give it such a close imitation, but I will have none of it, do you understand?! None!~
== BC0AURA ~Okay, okay, I get it already, geez. Muffy won't bother you again.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
ClassLevelGT("Faldorn",PRIEST,6)
Global("C0AuraFaldorn2","GLOBAL",0)~ THEN BFALDO C0AuraAlora1
~Grr! Wretched abominations, despoilers of nature! I despise them all.~
DO ~SetGlobal("C0AuraFaldorn1","GLOBAL",1)~
== BC0AURA ~You're looking mighty angry, Faldorn. Y-you're not about to turn into a bear, are you?~
== BFALDO ~'Twould be a suitable display to put fear in the hearts of these ignorant humans! Nature has given me the gift of change, and it shall be used in her name!~
== BC0AURA ~Eep! I wasn't serious! Please, turn into anything, just not a bear!~
== BFALDO ~...~
== BFALDO ~Pfeh. These wretches are not worthy of witnessing nature in its most primal, beautiful form. I shall refrain... this time.~
== BC0AURA ~Phew...~
EXIT

// Garrick
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick1","GLOBAL",0)~ THEN BGARRI C0AuraGarrick1
~If I might ask, Aura... is it true what they say of Lantan? That it is a place of technological wonders?~
DO ~SetGlobal("C0AuraGarrick1","GLOBAL",1)~
== BC0AURA ~Well, when you put it that way... yes, I don't see how I could argue that. My homeland does take pride in our industry. Among other scientific pursuits.~
== BGARRI ~Do you practice, erm, more creative skills? Music, or artistry perhaps? Are there bard colleges in Lantan?~
== BC0AURA ~I... don't think so. We try to think of ourselves as practical people, most of the time... some Lantanese dabble in the arts as a pastime, but we don't see them as worth dedicating our lives to.~
== BGARRI ~I thought all gnomes cherished the arts. What makes the Lantanese so different?~
== BC0AURA ~We're not. The Lantanese - gnome, or human - respect art, but we don't view it in conventional eyes. To us, art is just another branch of science.~
== BGARRI ~Art as a science... hmm, interesting, I have never thought of it that way. Thank you for your time.~
EXIT

CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",0)~ THEN BC0AURA C0AuraGarrick2
~Hmm...~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",1)~
== BC0AURA ~'One arm raised aloft
Wind carries the seeds adrift
Blossoms bloom in hand'~
== BC0AURA ~Ooh, that's not bad. I'll have to write it down for later...~
== BGARRI ~Bravo, bravo!~
== BC0AURA ~Eep! Oh, were you listening, Garrick?~
== BGARRI ~Unintentionally, but, uh... I didn't expect you to be skilled at poetry, Aura. Though I can't say I recognize the style... is it a Lantanese form?~
== BC0AURA ~No, it's Kara-Turan. It's called 'haiku', I learned it during my time in Kozakura. It focuses on rhythm over rhyme. Five, seven, five.~
== BGARRI ~Sounds simple enough. May I make an attempt?~
== BGARRI ~'Today I found that
My voice was all strained from the
Constant march without drinks'~
== BGARRI ~...how's that?~
== BC0AURA ~Uh... you used six syllables in the last verse.~
== BGARRI ~Ah. I must have been lost in the rhythm. This... 'hai-koo' is harder than it appears. But I'll practice in private and impress you in my newfound mastery in no time!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",1)~ THEN BGARRI C0AuraGarrick3
~'My goodness, it is
So hard to find the right words
That also fit within such a...~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",2)~
== BGARRI ~No, that doesn't work. Deneir's eyes, this is hard!~
== BC0AURA ~Hello, Garrick. How's it going?~
== BGARRI ~Not well, miss Aura, not well at all. I find it ever so difficult to fit the necessary words within such a constraining verse. 'Tis far from any form of poetry I have studied.~
== BC0AURA ~You can't force it. Haiku's all about the feeling. What are you feeling strongly about right now? Try focusing on that.~
== BGARRI ~Alright. Let me try...~
== BGARRI ~'We're adventurers
Comrades marching side by side
Friendship through travel'~
== BC0AURA ~Ooh, not bad, not bad at all! You've got it!~
== BGARRI ~My thanks, miss Aura. This has been a truly enlightening, albeit slightly frustrating, experience. But I can confidently say that it will be nothing but smooth sailing henceforth!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",2)~ THEN BGARRI C0AuraGarrick4
~You've shown me a whole new type of verse, miss Aura, and it has only just occurred to me that I should repay in kind.~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",3)~
== BC0AURA ~Ooh, are you going to recite a poem?~
== BGARRI ~Indeed. Pray tell, what subjects entertain you?~
== BC0AURA ~Well... I'm quite fond of flowers. Tell me a poem about something pretty.~
== BGARRI ~Then, how about this piece, taught to me by a master bard in Berdusk. *ahem*~
== BGARRI ~'I wandered lonely as a cloud
That floats on high o'er vales and hills,
When all at once I saw a crowd,
A host, of golden daffodils;
Beside the lake, beneath the trees,
Fluttering and dancing in the breeze.'~
== BGARRI ~'Continuous as the stars that shine
And twinkle on the astral way,
They stretched in never-ending line
Along the margin of a bay:
Ten thousand saw I at a glance,
Tossing their heads in sprightly dance.'~
== BGARRI ~Now... how did the other parts go? Ah, yes!~
== BGARRI ~'The waves beside them danced; but they
Outdid the sparkling waves in glee:
A poet could not but be gay,
In such a jocund company:
I gazed—and gazed—but little thought
What wealth the show to me had brought:'~
== BGARRI ~For oft, when on my couch I lie
In vacant or in pensive mood,
They flash upon that inward eye
Which is the bliss of solitude;
And then my heart with pleasure fills, 
And dances with the daffodils.~
== BGARRI ~*clears throat* I... lack the technique of my teachers, but I hope that was enough.~
== BC0AURA ~*sniff* That was beautiful. Thank you, Garrick.~
== BGARRI ~I live to entertain.~
EXIT

// Imoen
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen1","GLOBAL",0)~ THEN BIMOEN C0AuraImoen1
~What's that amulet around your neck that you keep fidgetin' with? It's pretty.~
DO ~SetGlobal("C0AuraImoen1","GLOBAL",1)~
== BC0AURA ~This? It's a magatama. They're common in Kozakura.~
== BIMOEN ~Kozakura? That's in the far east, isn't it? What were you doing there?~
== BC0AURA ~Oh, you know... I'm the wandering sort. I travel places to find knowledge. The stranger the better. Sometimes I take things with me.~
== BIMOEN ~Funny, that's kinda the opposite of how them old scribes in Candlekeep do things. Reading, writing, cataloguing... no one ever thinks of going out to find out new stuff. Boring.~
== BC0AURA ~Hee hee. I know what you mean. Ancient tomes are fine, but there's only so much you can learn in one place. That's why I went on my own journey.~
== BIMOEN ~Yeah! Like me and <CHARNAME> are doin' right now. And you, of course. We'll be the world's best adventuring trio!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen2","GLOBAL",0)~ THEN BIMOEN C0AuraImoen2
~It's not naturally pink, is it? Your hair, I mean.~
DO ~SetGlobal("C0AuraImoen2","GLOBAL",1)~
== BC0AURA ~Hmm? Nah. I use a special kind of dye for that.~
== BIMOEN ~It's pretty. D'ya think my hair would look as shiny and sparkly as yours if I used the same?~
== BC0AURA ~Mmm, I dunno... it works for me because my hair's already pretty pale and shiny, but yours is a little dark. I think you'd need something a bit stronger. And it wouldn't have the nice sheen.~
== BIMOEN ~Ooh, that's too bad. I guess it's okay, though. It'd be hard to go sneakin' about with my hair glitterin' like yours!~
== BC0AURA ~Hee hee. That's true.~
EXIT

CHAIN IF ~InParty("Imoen")
See("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Class("imoen",MAGE_ALL)
Global("C0AuraImoen3","GLOBAL",0)~ THEN BC0AURA C0AuraImoen3
~You're a mage now, huh, Imoen? That must be nice.~
DO ~SetGlobal("C0AuraImoen3","GLOBAL",1)~
== BIMOEN ~Yep, it's great... wait, hang on, you're not jealous, are you?~
== BC0AURA ~What? Nah, I-- well, okay. I would really like to know what it's like. It's like it was only yesterday that you were pilfering candy from my pockets, and then suddenly- *BAM*! magic. You make it look so easy.~
== BIMOEN ~Really? Hmm. I guess it's not the same for everyone. But I thought you could use magic... can't you?~
== BC0AURA ~Not in the way you can. Rune inscription is... different. You do far more than I ever could with your bare hands alone.~
== BIMOEN ~Sure, but... so can you. I mean, you can make so many things that I can't.~
== BC0AURA ~Yeah... I guess you're right. Still... I would like to channel arcane power through my own fingers... just once.~
== BIMOEN ~I betcha you will one day. I mean, what could be impossible for you?~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(DUNGEON)
Global("C0AuraImoen4","GLOBAL",0)~ THEN BIMOEN C0AuraImoen4
~Aah! Ghost!~
DO ~SetGlobal("C0AuraImoen4","GLOBAL",1)~
== BC0AURA ~Eep! Where, where?~
== BIMOEN ~Ha ha! Gotcha!~
== BC0AURA ~Hah... nuts and bolts, Imoen! You almost scared the lights out of me!~
== BIMOEN ~Did you see how high you jumped though? That was great! I didn't even know you could jump that high.~
== BC0AURA ~Well, that's because I had to catch my soul that was about to jump right out of my body! I may have a long life, but can you not try to knock a few decades off anyway?~
== BIMOEN ~Yeah, yeah... hey, look over there. What's that?~
== BC0AURA ~What's what? I don't see anything...~
== BIMOEN ~*Aaa-whoo-oo-oo-oooo!*~
== BC0AURA ~Aiiee! Oh, you're terrible!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen5","GLOBAL",0)~ THEN BIMOEN C0AuraImoen5
~How come you're no good at sneakin' and filchin', huh? You're a thief, aren't you?~
DO ~SetGlobal("C0AuraImoen5","GLOBAL",1)~
== BC0AURA ~I'm not a thief! I'm a tinkerer.~
== BIMOEN ~So you can break locks just like me. Isn't that what thieves do?~
== BC0AURA ~No, well... yes. But it's just a skill you pick up when you work with contraptions! Where you see a lock, I see a puzzle to take apart.~
== BIMOEN ~Huh. Never thought of it that way.~
== BC0AURA ~Besides, don't you already have the sneaking and filching covered already? Not that I'm condoning it, mind. You've stolen enough candy from my pockets.~
== BIMOEN ~Hey, I only steal things from people who deserve it! And people who can live without it. And people with sweets. *wink* Anyways, how 'bout this, since we're basically one step from the same profession, you can do the tinkering...~
== BC0AURA ~...and you'll do the thieving?~
== BIMOEN ~Yep! We'll make a great pair.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
LevelGT(Myself,6)
LevelGT("C0Aura",6)
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen6","GLOBAL",0)~ THEN BIMOEN C0AuraImoen6
~Hey, Aura. Mind if I ask you something?~
DO ~SetGlobal("C0AuraImoen6","GLOBAL",1)~
== BC0AURA ~If it's about if I have any more candy, I don't.~
== BIMOEN ~Nah... it's not that. It's somethin' serious, for once. D'ya think we've gotten a little too good at... you know, at killing?~
== BC0AURA ~Oh. *sigh* I was afraid of this coming up eventually.~
== BIMOEN ~If you don't wanna talk about it, I understand. I don't really want to, either.~
== BC0AURA ~No, it's worth discussing. I'm glad you're the one who brought it up.~
== BIMOEN ~So... what do you think? Have we?~
== BC0AURA ~I guess we have. How many has it been now? Ten, fifty, a hundred? I've lost count.~
== BIMOEN ~Me too. It's so strange to think that my first kill happened not so long ago, and now it's almost becoming natural. It's easy when the person I'm shooting is monstrous and ugly and trying to hurt me, but...~
== BC0AURA ~It's never easy taking a life. I think we're the same, we'd both rather not if we can avoid it. And every time I can't... my hands won't stop shaking afterwards.~
== BIMOEN ~D'you think it ever gets easier?~
== BC0AURA ~I don't know. On one hand, I'm afraid it won't, and I'll suffer these feelings forever. But if it ever does...~
== BIMOEN ~...you'd start wondering if you were still sane?~
== BC0AURA ~*sigh* Exactly. Which prospect do you find scarier?~
== BIMOEN ~...I don't like this conversation any more. I regret ever starting it.~
== BC0AURA ~Yeah... want to discuss what flavor of candy's the best instead?~
== BIMOEN ~Oh, yes, that's much better. *whisper* It's lemon, by the way.~
EXIT

// Jaheira
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(FOREST)
Global("C0AuraJaheira1","GLOBAL",0)~ THEN BC0AURA C0AuraJaheira1
~Ow! Why'd you tap me on the head, Jaheira?~
DO ~SetGlobal("C0AuraJaheira1","GLOBAL",1)~
== BJAHEI ~To remind you to watch your surroundings. You were so occupied on that contraption you were building, you nearly stepped on that mushroom.~
== BC0AURA ~Oh... nuts and bolts, I see it now. Isn't that a...~
== BJAHEI ~Yes. Its spores would have infected your skin. Best case scenario, it would have left you with a nasty rash for a fortnight. Without apt treatment, however... amputating the limb would be preferable to the result.~
== BC0AURA ~Urgh... thank you so much for alerting me. I've only ever seen that species of mushroom in books before. I didn't realize they would grow here...~
== BJAHEI ~I would have thought one such as you would have done the appropriate research before embarking on a journey such as this.~
== BC0AURA ~You're right. I need to read up on the native flora again when I have a chance. Thank you for the reminder.~
== BJAHEI ~So long as you remember.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
ClassLevelGT("Jaheira",PRIEST,6)
Global("C0AuraJaheira2","GLOBAL",0)~ THEN BJAHEI C0AuraJaheira2
~You have become increasingly nervous in my presence, Aura. What is wrong?~
DO ~SetGlobal("C0AuraJaheira2","GLOBAL",1)~
== BC0AURA ~Um, n-nothing...~
== BJAHEI ~Honestly, girl, do you think I am so easily fooled? If there is something about my behavior that frightens you, then do tell.~
== BC0AURA ~It's just that... you can turn into a bear now, right?~
== BJAHEI ~By the powers bestowed unto me by nature, yes, I am able to take on the form of its children for a while. What about it?~
== BC0AURA ~Well, don't take this the wrong way, Jaheira... I like you a lot, but I, um...~
== BJAHEI ~Yes...?~
== BC0AURA ~I- I can't stand bears! I hate them, they scare me, I don't want to be around any. Would you mind never turning into one while I'm around?~
== BJAHEI ~Oh, honestly, I don't think I've ever heard a more ridiculous thing. Bears are simply a part of nature's commune, just as you and I. What is there to fear?~
== BC0AURA ~I know that, I just wish they'd stay as far away from me as possible.~
== BJAHEI ~*sigh* We shall have to do something about this fear of yours some day.~
EXIT

// Kagain
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKagain1","GLOBAL",0)~ THEN BKAGAI C0AuraKagain1
~Yer contraptions seem a fool's work, girl, but there be many fools out there willin' ter spend a pretty penny on such works.~
DO ~SetGlobal("C0AuraKagain1","GLOBAL",1)~
== BC0AURA ~I don't think I like what you're trying to suggest, Kagain.~
== BKAGAI ~I cannae see how I can make me point clearer, girl. Yer work could be the key to great riches, yet ye keep 'em all to yerself, satisfied to live with an empty purse. A waste, is what it is.~
== BC0AURA ~Some of us Lantanese do make a profit from selling our creations, but I don't. Not anymore. I've seen the kind of destruction they can cause when they're used the wrong way, and I don't want that.~
== BKAGAI ~Eh, what business be that o' yers, girl? A man'll find a way ter destroy his enemies with anything he owns. with or without yer toys.~
== BC0AURA ~Maybe you're right about that, but I don't want to see my works stained with blood. We're not talking about this any longer, Kagain.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKagain2","GLOBAL",0)~ THEN BKAGAI C0AuraKagain1
~That bow o' yers... dwarven tempered mithral, if me eyes don't deceive me. Would sell fer a pretty penny, melted down.~
DO ~SetGlobal("C0AuraKagain2","GLOBAL",1)~
== BC0AURA ~Hey, hands off!~
== BKAGAI ~*laugh* Just jokin' with ye, girl. It'd be worth more intact.~
== BC0AURA ~I'm an inventor, not a weapons dealer, Kagain. Besides, this bow is... important to me. It's worth more to me than gold.~
== BKAGAI ~Pah. Sentiment won't bring ye far in the mercantile world, girl. Best ye learn that before ye end up starvin' in the streets.~
EXIT

// Khalid
CHAIN IF ~InParty("Khalid")
InParty("Jaheira")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKhalid1","GLOBAL",0)~ THEN BC0AURA C0AuraKhalid1
~Where's my glow dust? I could've sworn I had some left from the last batch. Did I use it all up already?~
DO ~SetGlobal("C0AuraKhalid1","GLOBAL",1)~
== BKHALI ~N-no, Aura. I was holding it for you. Along with your electrum plates and c-chamomile tea. H-here, take it back.~
== BC0AURA ~Oh! I'm so sorry, Khalid, I forgot all about it. You've been carrying my load for ages!~
== BKHALI ~It is no t-trouble. Leave such things t-to those most suited for it, I always s-say.~
== BC0AURA ~Thank you, you're a lifesaver. I get so caught up in my work, I forget about everything else. Like this alchemy set here.~
== BKHALI ~I see you also have l-limestone and lantern oil. Are you c-concocting a potion of illumination?~
== BC0AURA ~Huh? Why, yes! I thought it would save the need for carrying torches. I didn't think you'd know about... er, I mean, given you're a warrior and all...~
== BKHALI ~Harpers are required to k-know certain skills outside of their chosen p-profession. Though I learned that p-particular recipe from Jaheira.~
== BC0AURA ~Jaheira's really the type for mentorship, isn't she? I feel like even I can learn a lot from her. Though she can be scary sometimes. Does she ever scare you?~
== BKHALI ~Often, in fact. *chuckle* B-but one comes t-to see it as charming. She means w-well, always. I know that.~
== BC0AURA ~You must really love her.~
== BKHALI ~M-more than life itself.~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKhalid2","GLOBAL",0)~ THEN BC0AURA C0AuraKhalid2
~I just wanted to tell you how brave you are, Khalid.~
DO ~SetGlobal("C0AuraKhalid2","GLOBAL",1)~
== BKHALI ~M-me? Surely not... others are all too happy to remind me that I am a craven.~
== BC0AURA ~No, really, I mean it. I'm the craven one, keeping my distance from every fight we come across. You throw yourself into battle to protect us, fears and all.~
== BKHALI ~Y-you are too kind.~
== BC0AURA ~I'm just speaking from the heart. I hope I can learn something from your example.~
EXIT

// Kivan
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKivan1","GLOBAL",0)~ THEN BKIVAN C0AuraKivan1
~From whom did you learn to wield a bow, Aura?~
DO ~SetGlobal("C0AuraKivan1","GLOBAL",1)~
== BC0AURA ~My sister, Juno, taught me the basics. I was also trained by my mentor, Reika-san, while I was in Kozakura.~
== BKIVAN ~That would explain why your technique is unlike any I have seen in the past. I have encountered few of those from the Far East.~
== BC0AURA ~I'm really not a great example of Kozakuran kyudo... I don't even have the stature or the strength to use a bow with your level of skill, Kivan. It's mostly my bow, the Sunshooter, doing the work.~
== BKIVAN ~I see... the shape is much like that of a recurve bow, and the separate limbs allow for an easier draw, reducing strain... you have created the bow to cater to your requirements. I am surprised that such a design even exists.~
== BC0AURA ~It wouldn't work if not for the special materials used. I'm not proud of having to compensate for my failings, without ever improving, but my parents did everything they could to procure what I needed, so that I could protect myself.~
== BKIVAN ~Then it is a symbol of your parents' love and desire to keep you safe. There is no shame in such a thing.~
== BC0AURA ~Perhaps... but still... I often feel too weak without this bow with me. I'm afraid I'll drag the group down.~
== BKIVAN ~If you desire it, then I would gladly train you in archery. Though I may be unfamiliar with the fundamentals that you have practiced, I will do what I can to assist.~
== BC0AURA ~Thanks, Kivan... I may take you up on that.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKivan2","GLOBAL",0)~ THEN BC0AURA C0AuraKivan2
~You're hunting someone, Kivan?~
DO ~SetGlobal("C0AuraKivan2","GLOBAL",1)~
== BKIVAN ~Tazok. A monstrous fiend who leads the bandits plaguing this land. He murdered my Deheriana.~
== BC0AURA ~Do you plan on killing him? For revenge?~
== BKIVAN ~That is my sole reason for remaining in this land.~
== BC0AURA ~I... see. I guess that means we're alike... but different, too.~
== BKIVAN ~What do you mean, Aura?~
== BC0AURA ~I am after somebody who has killed one close to me as well... but even now, I'm not sure what I'll do when I find him. Maybe I don't have your conviction.~
== BKIVAN ~No. It is because you are kinder and more innocent than I. Take pride in that... for you should never be forced onto the path I must walk.~
EXIT

// Minsc
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMinsc1","GLOBAL",0)~ THEN BMINSC C0AuraMinsc1
~Boo thinks he'd like your Muffy, Aura.~
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",1)~
== BC0AURA ~You sure? Muffy's a little bit mean to anything smaller than him.~
== BMINSC ~Fear not, for while Boo may be small, his heart is larger than... no, Boo! Stop fighting with the nice squirrel!~ [GAM_48]
== BC0AURA ~Stop that, Muffy! Be nice to little Boo! Don't be a bully!~ [GAM_48]
== BMINSC ~*squeak* *squeal*~ [GAM_48]
== BC0AURA ~Stop... stop it, Muffy, stop... there, good boy. *sigh* Sorry, Minsc, I guess they'll need to take some getting used to.~
== BMINSC ~Minsc will need to give Boo a stern telling off for this.~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMinsc1","GLOBAL",1)~ THEN BC0AURA C0AuraMinsc2
~Um... has Boo calmed down now, Minsc? Can I, um, pet him?~
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",2)~
== BMINSC ~Boo has been keeping both eyes wide open in alert for your Muffy, Aura, but Minsc thinks it is safe.~
== BC0AURA ~Okay, that's good... I'm here with a peace offering. See? It's, um... a whole bag of...~
== BMINSC ~Sunflower seeds! Look how Boo's nose twitches with anticipation!~
== BC0AURA ~Hee hee. I was hoping he'd like it. Go ahead, little Boo.~
== BMINSC ~*squeak*~ [GAM_48]
== BMINSC ~Boo says thank you.~
== BC0AURA ~You're welcome. I keep a few seeds in a box in case I ever need to plant and harvest them. My family grows the finest sunflowers in Lantan, and their seeds are tasty and nutritious.~
== BMINSC ~Ah... see how quickly Boo has eaten them all! See how his mood has lifted?~
== BC0AURA ~I wonder if it'd be safe now to bring out Muffy now... oh. Boo's fallen asleep. I'd rather not disturb him, Minsc. Maybe another time.~
EXIT

// Montaron
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMontaron1","GLOBAL",0)~ THEN BMONTA C0AuraMontaron1
~Ye've a nice pair there.~
DO ~SetGlobal("C0AuraMontaron1","GLOBAL",1)~
== BC0AURA ~W-what?~
== BMONTA ~Heh, don't ye look so horrified, girlie, I was speakin' about the pair o' tools in yer hands. Them would make some excellent torture devices.~
== BC0AURA ~Is that supposed to sound better? That's... awful! I would never use the tools of my trade like that!~
== BMONTA ~Ye wouldn't. But I've got ideas...~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMontaron2","GLOBAL",0)~ THEN BMONTA C0AuraMontaron2
~Ye've a pretty face, girl. Innocent. Doll-like. T'would be a shame to see it marked.~
DO ~SetGlobal("C0AuraMontaron2","GLOBAL",1)~
== BC0AURA ~Stay away from me... I'm not sure what you're intending, but I want nothing to do with you.~
== BMONTA ~Ease up, girlie. I ain't so far depraved. But I thought ye could do with the warning. Ye're far too soft fer the rough work.~
== BC0AURA ~That's not... I'm not here to do *those* things. The awful things that you do.~
== BMONTA ~A shame. Ye'd be a master, if ye put yer mind to it.~
== BC0AURA ~I said I won't!~
EXIT

// Neera
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera1","GLOBAL",0)~ THEN BNEERA C0AuraNeera1
~So... what's it like being super smart, Aura?~
DO ~SetGlobal("C0AuraNeera1","GLOBAL",1)~
== BC0AURA ~Um... beg pardon?~
== BNEERA ~You know. Have you always been so smart and, well... good at what you do?~
== BC0AURA ~Who can say? You could call it a gift, I suppose, but I prefer to think that I developed it from study, practice and experience. Also, sweets. It's easier to work when I have sugar in my blood.~
== BNEERA ~Oh. Well, I guess it's nothing like what I do. When it comes to wild magic, I just wave my hands in familiar motions and hope things happen. Though I do like sweets. Do you prefer cakes or cookies?~
== BC0AURA ~Cakes, definitely. Light and fluffy and sugary... wait, weren't we discussing how we learned our skills?~
== BNEERA ~Yeah, but... that's boring. I'd rather talk about sweets!~
== BC0AURA ~Hee hee. Okay.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera2","GLOBAL",0)~ THEN BNEERA C0AuraNeera2
~I thought you liked magic, Aura. Why haven't you said anything about my wild magic?~
DO ~SetGlobal("C0AuraNeera2","GLOBAL",1)~
== BC0AURA ~Well, it's true that I like researching magical theory and how it works... but your magic is... strange, you know?~
== BNEERA ~I've been told that before. Strange how?~
== BC0AURA ~Don't take it the wrong way, but your magic's not consistent. You make the same motions and say the same words, but the results are totally different when it feels like it, with no rhyme and reason.~
== BC0AURA ~Let's suppose... you were solving an equation and you kept getting different answers every time you tried. That's not helpful. It's not reliable enough to make any sort of conclusion.~
== BNEERA ~Ugh, I've always been terrible with math... but it doesn't mean you can't find some sort of thing to research, right?~
== BC0AURA ~That depends... would you be okay if I tried?~
== BNEERA ~I mean, I would like to see my magic become more reliable. As long as nothing hurts.~
== BC0AURA ~Don't worry, it won't. Well, at least it shouldn't...~
EXIT

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera2","GLOBAL",1)~ THEN BC0AURA C0AuraNeera3
~Hmm... *sigh* Nope, not enough yet. Still need more...~
DO ~SetGlobal("C0AuraNeera2","GLOBAL",2)~
== BNEERA ~Hey, what's up, Aura? Got any results yet?~
== BC0AURA ~No, not yet. There's just not enough data yet. The sample size just isn't big enough.~
== BNEERA ~You're telling me I need to cast *even more* Reckless Dweomers for your test? Another half dozen and I'll probably burst into flames. Or a swarm of bees.~
== BC0AURA ~Yeah, I know... that's why I can't ask any more of you. I think we're best dropping the whole thing.~
== BNEERA ~Wha-at? Are you giving up? That's not what an innovator's supposed to do! Look, if you need more surges, I'll do my best. Spin the wheel a few more times, take a chance, y'know?~
== BC0AURA ~Oh, well, in that case... *plonk!*~
== BNEERA ~H-hey! What's this on my head? Some sort of weird bucket? Get it off!~
== BC0AURA ~Calm down, it's just an amplifier. If you push this button, it'll let you surge at will. Hopefully the protection runes will keep you safe too.~
== BNEERA ~Seriously? I have to wear this? It doesn't even look pretty! Why couldn't you make it less disturbing to look at?~
== BC0AURA ~Sorry, what do you expect? I made this out of a box of scraps. You should pray it doesn't explode.~
== BNEERA ~Wait. Waitwaitwait. It might explode? Is that likely?~
== BC0AURA ~Maybe a one in three chance. Um... I mean, no? Hopefully not?~
== BNEERA ~*grumble* Can't believe I agreed to this...~
DO ~GiveItemCreate("c0autt03","Neera",1,0,0)~ EXIT

// Quayle
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle1","GLOBAL",0)~ THEN BQUAYL C0AuraQuayle1
~Everyone seems to believe you are exceptionally smart, Aura, but I refuse to believe your brain could possibly match up to mine! We must put this question at rest: which is the smarter gnome between us?~
DO ~SetGlobal("C0AuraQuayle1","GLOBAL",1)~
== BC0AURA ~Um, sure... how were you going to assess that, Quayle?~
== BQUAYL ~That is so simple it's not even funny! We will compose a set of questions to test each other, and whoever fails to answer the most questions will bear the shame of being the dumber gnome.~
== BC0AURA ~So, a test? I haven't taken a test since I was going through school. But, sure!~
== BQUAYL ~Ha! Good! Soon enough, these louts will have proof that the intelligence of this gnome cannot be matched by any other! You just see!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle1","GLOBAL",1)~ THEN BQUAYL C0AuraQuayle2
~Bah! You may have gotten this far, Aura, but my amazing brain won't be bested so easily! Tell me, what are the three laws of physical motion? You've got ten seconds!~
DO ~SetGlobal("C0AuraQuayle1","GLOBAL",2)~
== BC0AURA ~Oh, that's easy. An object remains in a resting state until changed by an outside force, the rate of change is proportional to the amount of force used, and every action has an equal and opposite reaction.~
== BQUAYL ~Eh... yes, that is... correct...~
== BC0AURA ~My tutors made me recite those rules for days. Well, my turn! Fourteenth principle of alchemy.~
== BQUAYL ~Oh, that's easy. Fourteenth principle... fourteen... um...~
== BC0AURA ~Waiting... still waiting...~
== BQUAYL ~Blast! I'm not an alchemist! I don't know!~
== BC0AURA ~Hee hee. Looks like I got the better of you again, Quayle. No hard feelings!~
== BQUAYL ~Gah! This isn't fair! Your questions were too hard!~
== BC0AURA ~Aw, come on, Quayle, it's not that bad. Sure, I beat you in the end, but I didn't think you'd know so many laws and theories. And you answered plenty of my own questions. I guess you're actually pretty smart after all.~
== BQUAYL ~Yes, yes, and good thing that you know it! Keep your guard up, Aura, because the next time we match each other in a battle of wits I will surely come out the winner!~
== BC0AURA ~Mm-hmm. I'll be waiting.~
EXIT

CHAIN IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle2","GLOBAL",0)~ THEN BC0AURA C0AuraQuayle3
~I've been wondering, Quayle... why do you see such a great need to prove your intelligence anyway? Isn't the fact that you have knowledge enough?~
DO ~SetGlobal("C0AuraQuayle2","GLOBAL",1)~
== BQUAYL ~What good is a mind if you don't show off how much better it is over everybody else's?~
== BC0AURA ~Can't you... you know, use it for a better purpose? To improve the lives of others?~
== BQUAYL ~What's the point? Once I'm through, everyone will be just as stupid as I left them. The only way to make things better for good is to show everyone how stupid they really are!~
== BC0AURA ~That's crazy logic.~
== BQUAYL ~*sigh* Tell me truthfully, Aura, as the, hmm, second most intelligent-est gnome in this group... haven't you ever wanted to show off your mighty brain power? Just a little?~
== BC0AURA ~Well... no, not really. I'm always driven by the fact that I know I don't understand everything, and even if I did... I don't have to show off just to prove it, you know?~
== BQUAYL ~Ha! Young, so young and naive. But admirable enough, I suppose. We'll see who's right in the end, soon enough!~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraRasaad1","GLOBAL",0)~ THEN BC0AURA C0AuraRasaad1
~*huff* *puff* Wow... travelling with a... group is so exhausting. Never had to... run so much... when it was just me. Can we slow down?~
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",1)~
== BRASAAD ~You could stand to improve upon your athleticism, my friend. There will still be much trekking ahead of us.~
== BC0AURA ~I'm... *huff* sorry, it's just that... you run so fast. I'm more used to taking my time. How do you manage it?~
== BRASAAD ~Through rigorous exercise. Just as you exercise your mind, I must push my body to its absolute through endless training.~
== BC0AURA ~Hmm... that's very interesting. There aren't many people in Lantan who have knowledge in training their bodies like you do. Would you mind if I observed your training? I might... *huff* be able to figure out the most efficient way to train myself.~
== BRASAAD ~Of course. I would be pleased to assist.~
EXIT

// Safana
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSafana1","GLOBAL",0)~ THEN BC0AURA C0AuraSafana1
~You're pretty, miss Safana.~
DO ~SetGlobal("C0AuraSafana1","GLOBAL",1)~
== BSAFAN ~Thank you for stating the obvious, my darling. Why don't you lavish me with some cleverer praise? That's what your little head does best, isn't it?~
== BC0AURA ~I, um, don't know what else to say. I just thought you were pretty.~
== BSAFAN ~I *was* pretty? You really are hopeless with people, aren't you, my dear? It looks like you're smart at everything except what counts.~
== BC0AURA ~Well... um... I'm sorry...~
== BSAFAN ~*sigh* Go away, darling.~
EXIT

// Shar-Teel
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSharTeel1","GLOBAL",0)~ THEN BSHART C0AuraSharteel1
~Grow a spine, girl. Just watching you cower beneath those larger than you makes me sick.~
DO ~SetGlobal("C0AuraSharTeel1","GLOBAL",1)~
== BC0AURA ~Well... I am a gnome. Not much I can do about being small, I'm afraid.~
== BSHART ~Your stature means nothing if you've the mien. I may not have hideous brawn, but I can still crush men beneath my heel in body and spirit.~
== BC0AURA ~I don't want to crush anyone. I want my work to be appreciated by the good, whoever they may be.~
== BSHART ~See? This is the cowardice that I speak of. You live solely for the approval of others. You make nothing of yourself!~
== BC0AURA ~You're wrong. I'm who I want to be.~
EXIT

// Skie
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSkie1","GLOBAL",0)~ THEN BSKIE C0AuraSkie1
~Your outfit is very cute, Aura. Is it typical Lantanese attire?~
DO ~SetGlobal("C0AuraSkie1","GLOBAL",1)~
== BC0AURA ~This? Nah, not really. It's just my family's style. Other people think we're a bunch of eccentrics.~
== BSKIE ~Why? What's wrong with being fashionable? Isn't it normal to try and look good?~
== BC0AURA ~Well... our land prefers to put logic first and foremost. Almost nothing's done without a great deal of thought and reasoning. Most Lantanese think fashion's nothing but vanity. That's why they don't bother with it.~
== BSKIE ~Oh, phooey! Look at you, plenty of fashion and it doesn't hold you back, does it? Those silly gnomes don't know what they're talking about.~
== BC0AURA ~I can see where they're coming from, though. I don't really think there's any real point either, from a reasonable standpoint. I just like picking my clothes and dyeing my hair. There's no real point to it.~
== BSKIE ~I guess. You think too much, Aura. Sometimes it's better to think less, you know?~
== BELDOT IF ~InParty("Eldoth")~ THEN ~Yes, you are indeed the most qualified to say such a thing, my dearest.~
== BSKIE IF ~InParty("Eldoth")~ THEN ~You're so mean, Eldoth!~
EXIT

// Tiax
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraTiax1","GLOBAL",0)~ THEN BTIAX C0AuraTiax1
~You, Aura! You and your inventions shall serve Tiax one day!~
DO ~SetGlobal("C0AuraTiax1","GLOBAL",1)~
== BC0AURA ~Uhh... sure. It's not like I wouldn't lend you my stuff if you asked nicely anyways... well, unless you were planning on seriously hurting someone. Then it stops being funny.~
== BTIAX ~Ask? ASK?! The great Tiax does not 'ask'! He orders! He commands! He expects! He, uh...~
== BC0AURA ~'Supplicates'?~
== BTIAX ~Er, yes! That one as well! And now, Tiax commands... no, no, requests... yes, that's it... that you attend to him in, ahem, other ways...~
== BC0AURA ~Um, I don't know what you're talking about, and I don't think I want to know. Later, Tiax.~
== BTIAX ~Wait! Where do you think you're going?! Tiax was not finished speaking yet!~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraTiax2","GLOBAL",0)~ THEN BTIAX C0AuraTiax2
~When the day comes when Tiax rules the world, you will find he is generous to those that served him well before his ascension. Bear that in mind, Aura! You had best make amends quickly, for the day of my reign is nigh!~
DO ~SetGlobal("C0AuraTiax2","GLOBAL",1)~
== BC0AURA ~I don't get it, Tiax. Why are you so obsessed about ruling the world? Do you know how big the world is? All that distance between one end of Toril to the other, from Faerun to Kara-Tur? I can't imagine it'd be fun.~
== BTIAX ~Worry not, for when Tiax has fulfilled Cyric's order and become the ruler of the Realms, he will surely grant Tiax the stature he needs to properly govern it! You will see. You will see!~
== BC0AURA ~What will I see?~
== BTIAX ~Heh, heh heh heh...~
== BC0AURA ~...okaaay then.~
EXIT

// Viconia
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraViconia1","GLOBAL",0)~ THEN BVICON C0AuraViconia1
~Remain out of my sight, surface yingil. Your garish attire is an eyesore.~
DO ~SetGlobal("C0AuraViconia1","GLOBAL",1)~
== BC0AURA ~Aw, that's harsh. Do you really dislike pink that much?~
== BVICON ~Were you in the Underdark, the predatory beasts would be upon you before you could scream.~
== BC0AURA ~The Underdark sounds like an awful place to live. You must be glad to be gone.~
== BVICON ~Less so with every minute of witnessing surface dwellers' lack of survival instinct. It is a wonder that you have survived so long.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraViconia2","GLOBAL",0)~ THEN BVICON C0AuraViconia2
~The svirfneblin of the Underdark are a sullen and pessimistic breed. It is jarring to see how insufferably energetic you are by contrast.~
DO ~SetGlobal("C0AuraViconia2","GLOBAL",1)~
== BC0AURA ~I've never met my underground cousins. What are they like?~
== BVICON ~I have known few from experience. Were you not of the same diminutive size, however, you could not be more different... save for the work ethic. That much I will concede.~
== BC0AURA ~Do you really mean it? That last part, I mean.~
== BVICON ~Hmph... there are some things even I cannot deny. Do not expect more praise from me than you deserve.~
EXIT

// Xan
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXan1","GLOBAL",0)~ THEN BXANNN C0AuraXan1
~Does your work never sadden you?~
DO ~SetGlobal("C0AuraXan1","GLOBAL",1)~
== BC0AURA ~What? No, never. Why would you ask that?~
== BXANNN ~You make wondrous creations that none other in this land are capable, that I cannot deny. But such things will crumble to dust just as we will one day. Is it not futile?~
== BC0AURA ~Of course not, Xan! There's always knowledge to be gained through every new innovation, every scientific endeavour, no matter how small. How could that be futile?~
== BXANNN ~Yet what good will such knowledge bring you in such a place, where our doom is close to sight? Will you not be saddened when everything you have learned fades away as you pass away?~
== BC0AURA ~You're looking at it the wrong way, Xan. I don't seek knowledge just for myself, but for other people who follow the same path as me. I'm gifted, or so I've been told, and I learn things much easier than most. If I can help others learn things they'd otherwise take months, even years to understand, then I've already done some good that'll outlive me.~
== BXANNN ~Admirable, I suppose, if hopelessly optimistic.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXan2","GLOBAL",0)~ THEN BXANNN C0AuraXan1
~You remind me of my cousin Erevain. Adventurous, optimistic, and enough curiosity to put a human child to shame.~
DO ~SetGlobal("C0AuraXan2","GLOBAL",1)~
== BC0AURA ~That sound like me. Where's this cousin of yours right now?~
== BXANNN ~In Arvandor... I pray. He ventured north into the hellish wastes of Icewind Dale years ago, and there he fell.~
== BC0AURA ~Oh... I'm so sorry, Xan. That must be hard on you.~
== BXANNN ~Perhaps. We were close enough, insofar as family relations go. But I told him his exploits would be the end of him one day. He laughed. And who was correct in the end?~
== BC0AURA ~But... we all must die some day, right? Isn't it better to live a short and fulfilling life, rather than a long and tedious one?~
== BXANNN ~I have concluded long ago that clinging to the few pleasures in life will only make the inevitable more painful. *sigh* Life is hollow. There is no denying it.~
== BC0AURA ~You keep sighing, Xan. But I think it's easier if you smile.~
EXIT

// Xzar
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXzar1","GLOBAL",0)~ THEN BXZAR C0AuraXzar1
~You have some pretty toys, little Aura. I don't suppose you have a flesh-peeler somewhere in that pack of yours, do you?~
DO ~SetGlobal("C0AuraXzar1","GLOBAL",1)~
== BC0AURA ~Umm... no?~
== BXZAR ~Hmm. Disappointing. Cutting the flesh and sinew by hand gets so tiresome at times, especially after the sample stops screaming. What about a bone marrow siphoner?~
== BC0AURA ~Nope. Never even heard of one.~
== BXZAR ~A fecal waste extractor? Surely you have one of those at least?~
== BC0AURA ~Eww! No!~
== BXZAR ~By my poor mommy's departed soul, Aura! What kind of inventor are you if you do not have such essential tools at your disposal?~
== BC0AURA ~Uh... a normal one? I dunno.~
== BXZAR ~Come on then, best get cracking! I want those tools ready before bedtime. So many experiments put on hold for lack of proper equipment, so little time...~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXzar2","GLOBAL",0)~ THEN BXZAR C0AuraXzar2
~That is a most fascinating piece of machinery you have for a pet, Aura dearest. May I take a closer look?~
DO ~SetGlobal("C0AuraXzar2","GLOBAL",1)~
== BC0AURA ~Umm... I'm not sure about this, but okay... you can have him for a little bit. While I'm watching.~
== BXZAR ~My, my, however did you do it? Completely shaped of metal, yet very lifelike. Did you bind the soul of a living rodent to this metal cage?~
== BC0AURA ~I can't tell you how. It's my biggest secret.~
== BXZAR ~Can't fault a fellow for guessing. If not binding, then... perhaps you harvested its organs, animated its corpse, and coated it in bronze?~
== BC0AURA ~That's what you would do, Xzar. And it's disgusting.~
== BXZAR ~Oh, that's right. It certainly is.~
EXIT

// Yeslick
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(DUNGEON)
Global("C0AuraYeslick1","GLOBAL",0)~ THEN BYESLI C0AuraAlora1
~Stay close, lass. Ye can ne'er be certain of what beasts lurk in the dark.~
DO ~SetGlobal("C0AuraYeslick1","GLOBAL",1)~
== BC0AURA ~I've explored plenty of dungeons before, Yeslick. I'll be okay.~
== BYESLI ~Aye, I believe ye, but ye be a youngster nonetheless. As yer elder, this is me responsibility.~
== BC0AURA ~You're caring, Yeslick, I appreciate it. You're just like my father. He even helped me build this bow so that I could keep myself safe.~
== BYESLI ~An' he was right to do so, I say. Every dwarf is raised to treasure one's family. Me own may be gone, but those values remain. Rest assured, lass, no harm will come to ye so long as I stand.~
EXIT

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
See("C0AUIN3")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraYeslick2","GLOBAL",0)~ THEN BC0AURA C0AuraYeslick2
~Yeslick? You're looking awfully distracted.~
DO ~SetGlobal("C0AuraYeslick2","GLOBAL",1)~
== BYESLI ~Eh? Me apologies, lass, I was just admirin' yer marvelous construct. Fine work ye have here.~
== BC0AURA ~It's a bit of an... unorthodox version of its usual form. I had to adapt it for battle with as few resources as possible, but I think I did my best.~
== BYESLI ~It packs a mean punch, no doubtin' that. I was just wonderin' how it'd fare with some good ol' dwarven smithwork. Imagine it, lass, yon construct shaped from dwarf-forged adamantium!~
== BC0AURA ~That'd be impressive for sure. If only I had the resources for it...~
== BYESLI ~'Tis a shame me mines were lost to the waters. We would've done fine work together.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraYeslick3","GLOBAL",0)~ THEN BYESLI C0AuraYeslick3
~Is it true that yer kin travel through the skies in flyin' ships, lass?~
DO ~SetGlobal("C0AuraYeslick3","GLOBAL",1)~
== BC0AURA ~You mean airships? Yes, they're real. Not as common as people believe, though. Mostly we make do by carriage or by foot.~
== BYESLI ~Ehh... just the thought of bein' in such a contraption is enough to make this dwarf's belly retch... eh, no offense meant to yer kin. I be too used to the underground.~
== BC0AURA ~What brought this on, anyway? I didn't think you'd even know about something like airships.~
== BYESLI ~Aye, 'tis a long story lass, but I'll give ye the short version. In me younger years, I became acquainted with a strange gnome possessin' an antique airship. Eh... 'Fiddlebender' be his name, as I recall.~
== BC0AURA ~I think I knew a Fiddlebender once... though it was a 'she', as I recall. What about this fellow, then?~
== BYESLI ~The Orothiar, bein' an underground clan an' all, had little interest in the gnome's strange machine, but a few asked questions. Some even offered 'im a great fortune fer his ship, but he refused, claimin' it ter be his inheritance, a family heirloom... we dwarves respect tradition, so we asked no more questions then.~
== BC0AURA ~That makes sense... in Lantan, even the wealthiest families only own one personal airship, and they treat it as their most valuable possessions. I recall the Fiddlebenders live in the north, though. Maybe they had distant relatives from my homeland?~
== BYESLI ~Ah, who knows, lass. Just thought this may interest ye. Perhaps ye may meet the fellow one day, and find out for yerself.~
EXIT