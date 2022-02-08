BEGIN C0AURAJ

// TALK 1

CHAIN IF ~Global("C0AuraTalk","GLOBAL",2)~ THEN C0AURAJ t1
~Th-thank you for letting me join you, <CHARNAME>... I'm not sure what I'd be able to do all by myself. I, um... I won't let you down.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~You sound nervous. Is this your first time travelling like this?~ + t1.1
++ ~Don't worry. I'm as new to the adventuring life as you.~ + t1.2
++ ~Make sure you don't. I don't have time to take care of weaklings.~ + t1.3

CHAIN C0AURAJ t1.1
~I, um... yes. I've went around the world a lot, but never like this. I mean... fighting for my life.~
EXTERN C0AURAJ t1.4

CHAIN C0AURAJ t1.2
~You are? Oh, I didn't know. You seem so much more skilled, more experienced than I am, so I assumed...~
EXTERN C0AURAJ t1.4

CHAIN C0AURAJ t1.3
~O-okay, I'll remember that.~
EXIT

CHAIN C0AURAJ t1.4
~If... if you don't mind me asking, where have you come from? Were you born in the Sword Coast? Or... elsewhere?~
END
++ ~Why do you ask?~ + t1.5
++ ~I'm from Candlekeep. It's not far off from Beregost, where we met.~ + t1.6
++ ~None of your business, gnome. Now I suggest moving on.~ + t1.7
++ ~I'm sorry, but I don't want to talk about it.~ + t1.8

CHAIN C0AURAJ t1.5
~I was curious. Ooh, never mind. I just... don't really know what to talk about. I'm not great with people... the things I talk to usually don't talk back to me, you know?~
= ~So, um...~
END
++ ~If you still want to know. Candlekeep was where I was raised. It's not far from here.~ + t1.6
++ ~You don't have to be so nervous. I won't eat you.~ + t1.9
++ ~There's no point in talking if you can't even find anything to talk about. Let's stop.~ + t1.7

CHAIN C0AURAJ t1.6
~Ooh, Candlekeep? The famous library? I've wanted to visit it ever since I heard about it. They say the payment for entry's huge though, and I barely have two coppers to spend on my own, so...~
= ~Um, sorry. I was about to start babbling. I hope you weren't bothered.~
END
++ ~Why don't you tell me something about yourself in return? It's only fair.~ + t1.13
++ ~It's fine. I see you're far more comfortable in your own element.~ + t1.10
+ ~Gender(Player1,FEMALE)~ + ~Not at all. I think it's quite endearing when you're confident.~ + t1.11
+ ~!Gender(Player1,FEMALE)~ + ~Not at all. I think it's quite endearing when you're confident.~ + t1.12
++ ~At least you stopped when you did. We've no time to waste on talking, let's go.~ + t1.7

CHAIN C0AURAJ t1.7
~Oh, o-okay.~
EXIT

CHAIN C0AURAJ t1.8
~Um... that's fine. I was just... trying to talk about... something. It's okay if you don't want to talk.~
EXIT

CHAIN C0AURAJ t1.9
~I- I wasn't thinking that! I, uh... oh, this isn't working at all. I'll just go somewhere else and stop wasting your time.~
EXIT

CHAIN C0AURAJ t1.10
~Well, yes! I guess I am. It's hard to find anyone in this land that I can talk to though. I hope you won't mind if I ask you more questions in the future. I've got plenty to ask.~
EXIT

CHAIN C0AURAJ t1.11
~Oh, w-well... that's nice of you to say.~
= ~Sh-shouldn't we find something to do? I think we should.~
EXIT

CHAIN C0AURAJ t1.12
~Um... thanks, <CHARNAME>.~
EXIT

CHAIN C0AURAJ t1.13
~Oh, I'd love to! Er, I mean... maybe later, once I've decided on what to tell you first. There's just so much to say... why don't we talk again later?~
EXIT

// TALK 2

CHAIN IF ~Global("C0AuraTalk","GLOBAL",4)~ THEN C0AURAJ t2
~Hey, you! where do you think you're trying to hide this time?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~Me? I'm not hiding anywhere.~ + t2.1
++ ~Who are you talking to, Aura?~ + t2.2
++ ~Are you speaking to yourself?~ + t2.1
++ ~Get a move on, you. We've got a ways left to go.~ + t2.0

CHAIN C0AURAJ t2.0
~You hear that, Muffy? Settle down! Stop! We'll be left behind!~
EXIT

CHAIN C0AURAJ t2.1
~No, not you! I'm talking about... *him*! Hey, stop moving!~
EXTERN C0AURAJ t2.2

CHAIN C0AURAJ t2.2
~Stop! Get out of the electrum jar! Hey, come out of my bag this instant! I- eeek!~
= ~M-muffy, behave! S-stop... a-haha, that tickles, stop crawling all over me!~ [GAM_48]
END
++ ~Is that... a squirrel? A metal squirrel?~ + t2.3
++ ~Uh, is there anything I can do to help?~ + t2.4
++ ~Quit fooling around. We've things to do.~ + t2.0

CHAIN C0AURAJ t2.3
~Yep, a squirrel. A very, very BAD squirrel. Stop!~
EXTERN C0AURAJ t2.4

CHAIN C0AURAJ t2.4
~Ha! Gotcha! Now, stop moving and let me open you up, you've got one of my tools in your tummy... there you go, good Muffy.~
= ~Sorry about that, <CHARNAME>. He always runs about when I need to take something out of him.~
END
+ ~IsValidForPartyDialog("Minsc")~ + ~First a space hamster and now a metal squirrel. Just wonderful.~ EXTERN MINSCJ t2.minsc
++ ~This... squirrel's your pet, I take it?~ + t2.5
++ ~I don't care. Just pack him away so we can keep moving.~ + t2.0

CHAIN MINSCJ t2.minsc
~Boo thinks he'd like your Muffy, Aura.~
== C0AURAJ ~You sure? Muffy's a little bit mean to anything smaller than him.~
== MINSCJ ~Fear not, for while Boo may be small, his heart is larger than... no, Boo! Stop fighting with the nice squirrel!~ [GAM_48]
== C0AURAJ ~Stop that, Muffy! Be nice to little Boo! Don't be a bully!~ [GAM_48]
END
++ ~*sigh*~ EXTERN C0AURAJ t2.5
++ ~Let them fight. I want to watch this!~ EXTERN C0AURAJ t2.5

CHAIN C0AURAJ t2.5
~E-hehe... Muffy's been my friend for years now. I made his body myself, out of clockwork and bronze and other metals. He's cute, isn't he?~
END
++ ~You say you made his body? Then he's not really alive, is he?~ + t2.6
++ ~How did you make it... him... so lifelike, Aura? I've never seen a construct act like this.~ + t2.6
++ ~Uh... sure. Very cute.~ + t2.7
++ ~I saw you open up his stomach and take out something. Is that all he can do?~ + t2.8
++ ~Whatever. Get a leash on the thing and fall back in line.~ + t2.0

CHAIN C0AURAJ t2.6
~Uh... that's a secret. I'm not supposed to tell you how that works. Sorry.~
EXTERN C0AURAJ t2.7

CHAIN C0AURAJ t2.7
~Look at how happy he is to see you, <CHARNAME>. He likes meeting new people. I don't suppose you've anything to feed him?~
END
++ ~Uh... feed? It eats?~ + t2.8
++ ~I have some trail nuts, but I doubt that's what you mean...~ + t2.8
++ ~Stop wasting my time. We need to get moving.~ + t2.0

CHAIN C0AURAJ t2.8
~Muffy likes having his belly filled. He loves gems especially. Put something small in him and you can be sure it'll be safe. Getting it out later might be a hassle though.~
= ~Oh no, he's trying to run away again. Stop! Get back here!~ [GAM_48]
EXIT

// TALK 3

CHAIN IF ~Global("C0AuraTalk","GLOBAL",6)~ THEN C0AURAJ t3
~<CHARNAME>, you mentioned you grew up in Candlekeep, right? The great library?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~That's right. What of it?~ + t3.1
++ ~Don't remind me of that terrible place. I'm happy without the memories.~ + t3.a
++ ~I don't want to talk about Candlekeep, Aura.~ + t3.0

CHAIN C0AURAJ t3.0
~Aw, that's too bad... I really wanted to hear about it...~
EXIT

CHAIN C0AURAJ t3.a
~Oh, come on! I'm not asking you about your deepest secrets. I just wanted to know a few details.~
EXTERN C0AURAJ t3.1

CHAIN C0AURAJ t3.1
~I just wanted to know if it's really as big and as full of knowledge as I've heard. It's supposed to be the greatest library in the Realms, isn't it?~
END
++ ~I don't know about 'greatest', but it's big alright. Plenty of dusty old tomes too.~ + t3.2
++ ~That's what they say. It could just be bragging though.~ + t3.2
++ ~Don't ask me. I've never read any of the books there.~ + t3.3
++ ~Candlekeep was a boring old dump. I'm glad to be out of there.~ + t3.3
++ ~I'm not going to talk about Candlekeep.~ + t3.0

CHAIN C0AURAJ t3.2
~Back in Lantan, the biggest institute of knowledge we had was the Wondrous Archives in Sambar, the capital city. It was the biggest library I've ever seen. There were so many books there, halls were built both over and underground.~
= ~I'd be amazed beyond words if I ever saw a library bigger than that. Do you think I'd ever have a chance to see Candlekeep for myself?~
END
++ ~They won't even let me back in. I doubt it, unless you have a book worth 10,000 gold hidden somewhere.~ + t3.4
++ ~I'll find a way to get us there, I promise.~ + t3.5
++ ~Who knows? I'm personally glad that I'm not trapped there anymore.~ + t3.6

CHAIN C0AURAJ t3.3
~*gasp!* How could you say something like that? Knowledge is the most valuable and ageless treasure there is! Oh, forget it, no point arguing about that...~
EXTERN C0AURAJ t3.2

CHAIN C0AURAJ t3.4
~*sigh* That's too bad... but I can still hope, can't I?~
EXIT

CHAIN C0AURAJ t3.5
~Oh, I hope so. But I don't want to hold you to that. I know it must be hard on you too, not to be able to go home...~
END
++ ~It is. I hope I'll be able to return one day.~ + t3.7
++ ~Not that hard, but yes, I miss it sometimes.~ + t3.7
++ ~On the contrary, I couldn't be happier. Candlekeep was boring.~ + t3.6

CHAIN C0AURAJ t3.6
~How could you? You are a very, very strange person, <CHARNAME>.~
EXIT

CHAIN C0AURAJ t3.7
~Mmm, I hope you'll be able to go back some day... and I hope even more that I can come with you!~
EXIT

// TALK 4

CHAIN IF ~Global("C0AuraTalk","GLOBAL",8)~ THEN C0AURAJ t4
~A bit of ink there, I think... no, no... that's too much. Muffy? Where's my thinner brush? There, that's better... hmm? Is something wrong, <CHARNAME>?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~What are you painting, Aura?~ + t4.1
++ ~I was just watching. Carry on by all means.~ + t4.1
++ ~Nothing. I'll leave you alone.~ + t4.0

CHAIN C0AURAJ t4.0
~Oh, okay... I'll just get back to my painting, then.~
EXIT

CHAIN C0AURAJ t4.1
~I was just trying to bring back my memories of a certain place in Kozakura... it's been some months since I left for the Sword Coast, but I can still remember how beautiful the land was as though it was yesterday.~
END
++ ~Is this painting also a Kozakuran style? It's not like any form of art I've seen.~ + t4.3
++ ~What is this place that you're painting? Some sort of valley? It looks beautiful.~ + t4.4
++ ~You mentioned that you lived in Kozakura. Why were you there?~ + t4.2

CHAIN C0AURAJ t4.2
~I don't talk about it much... even though I don't regret the three years I spent living and learning among the people of Kozakura, the way I was introduced to it was... not pleasant.~
= ~While I was still in Lantan, I used to venture across the entire island looking for secrets and lost knowledge. My peers used to call me "Aura the Explorer" as a way to make fun of me, but I liked it... I always wanted to find things that weren't catalogued in the old archives and libraries of home.~
= ~Even then, I wasn't satisfied. I always wanted to see the world. I wasn't happy with how isolated my people were, and I wanted to see and share experiences with the rest of the Realms. So when I felt I couldn't resist the urge, I begged my parents to let me join the crew of a trade ship so that I could travel.~
= ~I travelled for a few years, from Maztica to Waterdeep, learning local customs and making a living from trading my inventions. Then, when my ship was travelling by sea across the Golden Way...~
END
++ ~You looked a little scared for a second. What happened then?~ + t4.5
++ ~Go on.~ + t4.5
++ ~That's enough of your tale. I've grown bored of it.~ + t4.0

CHAIN C0AURAJ t4.3
~Yep... it's a style using ink instead of oil paint, so it needs patience and a delicate hand... in Kozakura, it's called 'sumi-e', ink painting.~
= ~It took me a lot of practice to get it right, even after all the drawing I've done while studying at the Lantanese colleges. But when it comes to capturing the Kozakuran landscape, I don't think there's any other style that matches it.~
END
++ ~What about this place that you're painting? Is it some kind of valley?~ + t4.4
++ ~Come to think of it, you never talked much about why you were in Kozakura.~ + t4.2
++ ~This is all very interesting, but I think we should stop now.~ + t4.0

CHAIN C0AURAJ t4.4
~It's a place called the Sakura Mist Valley. It's full of sakura trees, and it rains for most of the year there... and so the valley is always filled with mist.~
= ~During the time where the cherry blossoms bloom, giving the valley its name, it's the most beautiful place in Kozakura. I was lucky enough to have seen the place at the peak of its beauty, and I've slowly been reproducing that beauty for a long time with this painting, from the pink blossoms to the hills...~
END
++ ~This painting doesn't look like any other I've ever seen. Is it a Kozakuran style?~ + t4.3
++ ~Come to think of it, you never talked much about why you were in Kozakura.~ + t4.2
++ ~This is all very interesting, but I think we should stop now.~ + t4.0

CHAIN C0AURAJ t4.5
~*shiver* It scares me to even think about it. There was a storm, and... it pursued us. It was made from magic, I was certain of it at the time. We couldn't escape it.~
= ~The ship was torn to shreds. The last thing I remember before I lost consciousness was the feeling of drowning...~
= ~When I woke up... I was in a strange house in a Kozakuran village. Somehow I had ended up on a shore on one of the islands of Kozakura. It was a priestess that had taken me in and cared for me... my mentor and guardian, Reika-san.~
= ~Thanks to her, I survived, but... I had lost most of my memory from the disaster. I couldn't remember where I came from, where I'd been, or even my name...~
= ~It wasn't until two years had passed until I recovered the last of my memory, but... during that time, I had seen and learned so many new things that I didn't miss them.~
END
++ ~It sounds like you enjoyed your time there. Why did you leave?~ + t4.6
++ ~What about your former home? Your family? Didn't you ever miss them?~ + t4.7
++ ~That's enough. You've talked about your past for long enough.~ + t4.0

CHAIN C0AURAJ t4.6
~I would've lived in Kozakura for many more years if I had the choice. I felt indebted to the people for accepting and caring for me, and I loved Reika-san like a mother. It was as much home to me as Lantan was.~
= ~But... I had three things I needed to do, and so long as I stayed, none of them would be accomplished. So I left...~
END
++ ~Three things? What are they?~ + t4.8

CHAIN C0AURAJ t4.7
~I couldn't remember them until after several months, and even then I couldn't picture their faces... of course I missed them once I remembered everything, but by then... I had a happy life. I didn't want to leave, so all I could do was send a letter every year so that they knew I was safe.~
EXTERN C0AURAJ t4.6

CHAIN C0AURAJ t4.8
~You know about one of them already, <CHARNAME>. I mentioned when we met that I was looking for someone that I knew from Kozakura. But as for the other two... I'm sorry, but I can't talk about them. Not yet.~
= ~We've talked for a long time now. I hope I haven't bored you with my own tale.~
END
++ ~Not at all. You've lived a rather interesting life so far, Aura.~ + t4.9
++ ~At least it's over now. You talk far too much.~ + t4.10

CHAIN C0AURAJ t4.9
~Hee hee. I guess I have. Yours is shaping up to be just as interesting though. So... shall we see what comes next?~
EXIT

CHAIN C0AURAJ t4.10
~I guess I do... I'm sorry for wasting your time.~
EXIT

// TALK 5

CHAIN IF ~Global("C0AuraTalk","GLOBAL",10)~ THEN C0AURAJ t5
~<CHARNAME>, I... umm, I finished my painting from the last time we stopped to talk. Would you like to see it?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~I'd love to see it.~ + t5.1
++ ~I don't have the time right now, Aura.~ + t5.0

CHAIN C0AURAJ t5.0
~Oh. I'm sorry I bothered you, then... it'll always be here, you know? Just in case you change your mind.~
EXIT

CHAIN C0AURAJ t5.1
~Here it is... the Sakura Mist Valley. It's beautiful... but it's not as beautiful as the real thing. Even if I painted everything exactly as I remembered it, I still can't replicate the falling of sakura petals... or the way the mist rises... or the feel of the rain...~
= ~I- I'm sorry, I'm slipping into nostalgia again, <CHARNAME>. Would you like to see another painting I made from my memories of home? I mean... my birthplace, Lantan.~
END
++ ~Of course.~ + t5.2
++ ~I'd rather not. We've better things to do at the moment.~ + t5.0

CHAIN C0AURAJ t5.2
~This one's not a landscape painting. It's people... people very close to me. My family. I haven't seen them since I left Lantan, so I painted this in Kozakura when my memories of home returned to me. Out of all of my paintings, this one's my favorite.~
= ~That's my mother Gillian, and my father Kairos next to her. The rest are all my siblings. My two older sisters... Juno's the eldest, the one with turquoise hair. The one with purple hair's Luna... and my little brother Eridanus. The smallest ones are the twins, Filo and Lita.~
END
+ ~Global("C0AuraTalk5a","GLOBAL",0)~ + ~Looks like most of your family's got unusual-colored hair. Is there some story behind that?~ DO ~SetGlobal("C0AuraTalk5a","GLOBAL",1)~ + t5.3
+ ~Global("C0AuraTalk5b","GLOBAL",0)~ + ~Tell me about your eldest sister, Juno.~ DO ~SetGlobal("C0AuraTalk5b","GLOBAL",1)~ + t5.4
+ ~Global("C0AuraTalk5c","GLOBAL",0)~ + ~Tell me about your older sister, Luna.~ DO ~SetGlobal("C0AuraTalk5c","GLOBAL",1)~ + t5.5
+ ~Global("C0AuraTalk5d","GLOBAL",0)~ + ~Tell me about your brother, Eridanus.~ DO ~SetGlobal("C0AuraTalk5d","GLOBAL",1)~ + t5.6
+ ~Global("C0AuraTalk5e","GLOBAL",0)~ + ~Tell me about the twins.~ DO ~SetGlobal("C0AuraTalk5e","GLOBAL",1)~ + t5.7
++ ~I don't need to know about your family. Let's move on.~ + t5.9

CHAIN C0AURAJ t5.3
~I suppose, depending on what you think counts as a story... our family, the Glimmershines, have always been born with pale blonde hair. It's unusual among gnomes, so we like to dye our hair into our favorite colors to distinguish ourselves. That way, people can always tell which one of us is which just by looking at us.~
= ~It's not required, obviously, but most of us like the idea of it. The twins hadn't chosen a color yet, they're too young. Eridanus, my brother, only chose his color - blue - less than a year before I left Lantan.~
= ~Some of the other families think it's silly, since we're supposed to be a respectable family in Lantan, but it's practically a tradition by now. You're not likely to see a Glimmershine of age who's still got our natural hair color.~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.4
~Juno's brave, strong and dependable. She's just as good at fighting as she is at inventing, but when she's at home she's like a second mother to us sometimes.~
= ~Sometimes when Luna was in a bad mood she'd bully me, pinch me or pull my hair, but Juno would never let her while she was around. The both of us look up to her, but she's stationed as a mechanic away from our home, so we saw less and less of her as the years passed.~
= ~But... I miss her the most. She was always there since the day I was born, and she taught me how to write, sketch, use a bow...~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.5
~I remember Luna was always the prettiest sister. She liked to make fun of me, saying my nose wasn't big enough for a gnome and my forehead was too big for a girl. 'No-Nose Big-Brow Aura' she'd call me, when we studied at the Colleges together.~
= ~She's a very bossy person, but I think she's still very kind deep inside. When I was feeling down, she'd sometimes take me to her room to brush my hair and paint my eyebrows. I thought it was silly then, but now, I kind of miss it.~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.6
~Eri's incredible. He was born with magic at his fingertips, so even though he's small and gets ill easily, no one ever picks on him. He couldn't handle the exhausting work he'd have to go through at the Colleges, so our parents apprenticed him to my uncle Marius instead, who's one of the few trained mages in Lantan, so he could develop his magical talents instead.~
= ~I studied a little bit under my uncle myself... it's where I picked up my knowledge of how to make runes and graft them onto stone and metal. But Eri is far better than I will ever be. I'm a little envious of him sometimes.~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.7
~Hee hee, the twins... aren't they just the cutest? When we heard that our mother was bearing children again, we worked day and night to take care of her and build a room in our home for the newest members of our family. When I was leaving Lantan to travel across the Realms, they were tugging at my clothes and making me promise to bring back all kinds of gifts.~
= ~*sigh* If it weren't for that storm, I'd have been able to keep that promise. Now all I have to give them is this painting...~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.8
~Is there anything else you're curious about? Or do you think it's time to keep moving?~
END
+ ~Global("C0AuraTalk5a","GLOBAL",0)~ + ~Looks like most of your family's got unusual-colored hair. Is there some story behind that?~ DO ~SetGlobal("C0AuraTalk5a","GLOBAL",1)~ + t5.3
+ ~Global("C0AuraTalk5b","GLOBAL",0)~ + ~Tell me about your eldest sister, Juno.~ DO ~SetGlobal("C0AuraTalk5b","GLOBAL",1)~ + t5.4
+ ~Global("C0AuraTalk5c","GLOBAL",0)~ + ~Tell me about your older sister, Luna.~ DO ~SetGlobal("C0AuraTalk5c","GLOBAL",1)~ + t5.5
+ ~Global("C0AuraTalk5d","GLOBAL",0)~ + ~Tell me about your brother, Eridanus.~ DO ~SetGlobal("C0AuraTalk5d","GLOBAL",1)~ + t5.6
+ ~Global("C0AuraTalk5e","GLOBAL",0)~ + ~Tell me about the twins.~ DO ~SetGlobal("C0AuraTalk5e","GLOBAL",1)~ + t5.7
++ ~I've learned all that I've wanted to. Let's move on.~ + t5.9

CHAIN C0AURAJ t5.9
~Oh... you're right, we probably should get going. Go on ahead, I'll be right behind you in a bit.~
EXIT

// TALK 6

CHAIN IF ~Global("C0AuraTalk","GLOBAL",12)~ THEN C0AURAJ t6
~Whew, I think I've been through more adventures in the short time I've known you than for the rest of my life, <CHARNAME>.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
= ~Not that it's a bad thing, mind you! I've learned a lot here that I wouldn't have otherwise. I'm just saying, you've lived a rather blessed life.~
END
++ ~Come to think of it, how old are you exactly, Aura? You've never mentioned it.~ + t6.1
++ ~You call this blessed? Assassins, dungeons, ruins and bloodthirsty monsters around every corner?~ + t6.2
++ ~It's good to keep things positive, I suppose.~ + t6.3
++ ~The state of my life is not meant for you to muse over, Aura. Let's go.~ + t6.0

CHAIN C0AURAJ t6.0
~Okay, sure. I'm right behind you.~
EXIT

CHAIN C0AURAJ t6.1
~I haven't? No, I guess I haven't, come to think of it. I'm fifty-two this year. Though I've spent most of those years locked away in libraries and workshops, so my age doesn't really count for much.~
EXTERN C0AURAJ t6.3

CHAIN C0AURAJ t6.2
~Well... that wasn't how I was looking at it. But... okay, yeah. I guess you have a point. Still...~
EXTERN C0AURAJ t6.3

CHAIN C0AURAJ t6.3
~I'm not just trying to make things sound better, <CHARNAME>. I once thought I knew everything there is to know, until I crossed the sea from Lantan to these lands. Then I realized what I knew was barely anything at all.~
= ~It's funny, how much my perspective changed when I learned just what was out here. When I was leaving, I thought I was going to share my knowledge with a world that was still far behind in knowledge. Now, though, I think I've learned far more than I've ever taught anyone else.~
= ~I guess you can say that you've become one of my teachers, <CHARNAME>. Just following you has meant as much to me than a decade of endless toil in libraries and academies.~
END
++ ~It seems to always be about what you can learn, Aura. Is there nothing else you live for?~ + t6.4
++ ~You already know enough for several mortal lifetimes. Where does it eventually end for you?~ + t6.5
++ ~Ponder this at your own leisure. We've got business to attend to at the moment.~ + t6.0

CHAIN C0AURAJ t6.4
~It's... it's all I know, really. It's what I'm good at - what I've always been good at. And... yes, sometimes it feels like it's all I care about. Because as much as I know, as much as I can do, I know there's more, and there'll always be more.~
EXTERN C0AURAJ t6.6

CHAIN C0AURAJ t6.5
~I don't know. Maybe it never does. Knowledge is ever growing, changing, both in the creation of new knowledge and our perception of what we already know. There is no end destination. for a seeker of knowledge. There's only the journey. Even for me.~
EXTERN C0AURAJ t6.6

CHAIN C0AURAJ t6.6
~I'm good at what I do, but I'm not perfect. I'll know I'll never be. I can always do better. There's always something more to strive for, and I'm satisfied with that. It's what drives me forward. Isn't that the same for everybody?~
= ~When I was born, my parents believed my ability to learn was a talent, a gift from the gods we worship - Gond, Azuth, Oghma... and maybe they're right, but I never saw it that way. I don't want to believe my skills were born out of luck or a blessing. I want to believe everything I've gained was because of me, from pushing myself forward.~
END
++ ~So you don't believe in divine gifts. Does that mean you don't believe in the gods?~ + t6.7
++ ~That's a fair way to look at it, I suppose.~ + t6.8
++ ~I think we should move on. There's plenty of time to talk in the future.~ + t6.0

CHAIN C0AURAJ t6.7
~I do. I've seen the evidence with my own eyes. Gond the Wonderbringer walked among us during the Time of Troubles. But I've never uttered a prayer to him, or any other named god in my life.~
EXTERN C0AURAJ t6.8

CHAIN C0AURAJ t6.8
~I'm... I'm sorry, <CHARNAME>. I shouldn't start talking about gods, not now. It's not that I dislike them or that I don't appreciate what they've done for us mortals, but... it's not a way of life that I want to commit to.~
= ~We can talk again another time. Don't we have anything else to do right now?~
EXIT

// TALK 7

CHAIN IF ~Global("C0AuraTalk","GLOBAL",14)
Global("C0AuraRestTalk","GLOBAL",1)~ THEN C0AURAJ t7
~Oh, finally, a chance to relax and put our feet up. Muffy! Where are those tea biscuits? Oh, thank you. The tea's nearly ready as well.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~Looks like you're enjoying yourself.~ + t7.1
++ ~Tea and biscuits? Are we adventuring or having a picnic?~ + t7.2
++ ~Nice tea party. Mind if I join in?~ + t7.3
++ ~I'll just leave you to whatever you're doing.~ + t7.0

CHAIN C0AURAJ t7.0
~Aw, you sure, <CHARNAME>? I was about to ask you to join in too. Don't you want a snack before bed at least?~
END
++ ~I suppose I might as well.~ + t7.4
++ ~I'd really rather not. It's been a long day and all I want is to get some rest.~ + t7.x

CHAIN C0AURAJ t7.x
~Oh... okay. In that case, I think I'll just go to bed as well. It's just not as interesting being by myself...~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t7.xx
~Oh. I see.~
= ~I guess I wasted both our times then. Sorry.~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1) RestParty()~ EXIT

CHAIN C0AURAJ t7.1
~I am! Don't you feel like joining in? I've got plenty of tea and sweets for the both of us.~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.2
~Who says we can't do both? Adventuring by day, snacking by night. Come and join in, <CHARNAME>!~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.3
~No, not at all! I was just about to ask for you to join in anyway.~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.4
~Come, sit down and take your pick! There's rose tea in the pot, and plenty of snacks to choose from. Buttermilk biscuits, almond biscuits, Kara-Turan rice cakes, chocolate cakes, lemon cakes, candied fruit...~
END
++ ~That's a very large and varied selection of sweets. Where did you get all of this from?~ + t7.5
++ ~I'll take my pick, then. Thanks, Aura.~ + t7.6
++ ~I'm not too fond of sweet stuff, thanks. I'll have a cup of tea though.~ + t7.6
++ ~Not right now. I'm going to bed.~ + t7.x

CHAIN C0AURAJ t7.5
~Oh, well... I have an eye for sweets, you know. When I see anything that looks good, I buy some and keep it stored away for as long as I need to. Some of these I've had since before I came to the Sword Coast...~
= ~Don't worry, though. They're all fresh, I used a very special way of storing these sweets so they wouldn't go stale or lose their flavor. Try some if you don't believe me.~
END
++ ~I'll take my pick, then. Thanks, Aura.~ + t7.6
++ ~I'm not too fond of desserts, thanks. I'll have a cup of tea though.~ + t7.6
++ ~Not right now. I'm going to bed.~ + t7.x

CHAIN C0AURAJ t7.6
~Okay, one cup of rose tea for you... careful now, it's hot. There's sugar cubes and honey as well if it's not sweet enough for you.~
= ~Ahh... it's nice, isn't it?~
END
++ ~Are you talking about the tea, or something else?~ + t7.7
++ ~Very nice.~ + t7.7
++ ~What are you talking about?~ + t7.7

CHAIN C0AURAJ t7.7
~I was talking about the tea. But... I might've meant something else. I didn't set all this up for myself, you know.~
= ~The truth is, I've been preparing this for a while now. For you, <CHARNAME>. I feel like I owe you something for letting me stay around for this long, even though I'm not a fighter or anyone that important to you.~
= ~I didn't know what I could do for you in return, so I set up this little tea party to give you a chance to relax a little. It's not... too much or too little, is it?~
END
++ ~Not at all. I think it's just right.~ + t7.8
++ ~I'm touched. But you really didn't have to repay me for anything.~ + t7.8
++ ~*laugh* Well, whether it's too much or too little, I'll take it either way.~ + t7.8
++ ~Do you think I wanted to sit here and listen to you all day? I'm leaving now.~ + t7.xx

CHAIN C0AURAJ t7.8
~Oh.... good, that's good. I was afraid it wouldn't be enough to make you happy. I can understand a machine from inside to outside, but people... I don't know the first thing about people, really.~
= ~I guess it's my own fault in a way. Back when I was just a Lantanese inventor, people only came to me to have their questions answered and their requests fulfilled. Aside from my family, there were very few people I could talk to just for the sake of it...~
= ~Back then, it just seemed to unimportant to me. Everything aside from my work was. I was taught my whole life to trust in the sciences. Hard facts. But after all I've been through, all the places I've seen... the faith of Kozakura, and the magic here in the Sword Coast... it's hard for me to think solely as a Lantanese anymore.~
= ~If I were to go back in time one day, I don't know if the past me would even recognize me now. Hehe... I'm not sure if I'd even recognize the past me.~
= ~Is that wrong, <CHARNAME>? Is it a bad thing, all this change that's happened to me? Oh, forget it. I don't think you can answer that, if even I don't know myself anymore. I'm sorry for babbling to you.~
END
++ ~No, it's alright. I think these are good questions to ask.~ + t7.9
++ ~I think you have to decide for yourself if these changes are good or bad. No one else can decide for you.~ + t7.10
++ ~Whatever. I'm going to bed.~ + t7.13

CHAIN C0AURAJ t7.9
~You may be right, but... I don't know. A question that I have no answer for... it bothers me. But I shouldn't let it start bothering you as well.~
EXTERN C0AURAJ t7.11

CHAIN C0AURAJ t7.10
~I know. It's just that... I'm confused. I've never had trouble understanding anything before, with just a little effort, but not understanding my own self... it's ridiculous, isn't it? *sigh* Oh, forget it. I shouldn't keep you any longer.~
EXTERN C0AURAJ t7.11

CHAIN C0AURAJ t7.11
~I hope you enjoyed this evening, <CHARNAME>. And... thanks for listening to me. You're the first one that has for the longest time.~
END
IF ~Gender(Player1,FEMALE)~ + t7.12
IF ~!Gender(Player1,FEMALE)~ + t7.13

CHAIN C0AURAJ t7.12
~I wish I had known someone like you sooner. You're the strongest, wisest and... and most beautiful person I've ever seen.~
EXTERN C0AURAJ t7.13

CHAIN C0AURAJ t7.13
~Good night, <CHARNAME>.~
DO ~RestParty()~ EXIT

// TALK 8

CHAIN IF ~Global("C0AuraTalk","GLOBAL",16)~ THEN C0AURAJ t8
~I... I guess we're in trouble now, right? I mean... even more than we already were?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~Are you afraid, Aura?~ + t8.1
++ ~We'll be fine. I'm not letting anything stop me, not now.~ + t8.2
++ ~I don't recall asking you for your opinion.~ + t8.3

CHAIN C0AURAJ t8.1
~No... no, I trust that you'll get us through this, but...~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.2
~Yeah. I believe you, <CHARNAME>.~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.3
~I... I wasn't trying to give an opinion. I just wanted to help.~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.4
~It's just that... I never expected things to become this bad. To be honest, up until now I don't think I've been taking this adventure seriously enough, and for that... I'm sorry.~
= ~I don't want to be a burden to you, <CHARNAME>. If there's anything I can do... here, take this. It's an invisibility device I made to keep me safe on the road. If we're going to need to hide from the law, it might come in handy.~
DO ~GiveItemCreate("c0autt04",Player1,5,0,0)~
= ~I'm not sure how many more uses it's good for, but... it should be enough. I'd rather not kill anyone who doesn't deserve it, so... I hope it'll help avoid a few fights.~
END
++ ~Don't think of yourself as a burden. I don't think I could find anyone else to do the things you can.~ + t8.5
++ ~This will be exceedingly useful. Thank you.~ + t8.6
++ ~You've kept this for yourself all this time?~ + t8.7
++ ~I don't want another of your useless toys. ~ + t8.x

CHAIN C0AURAJ t8.5
~Haha... that makes me sound more impressive than I feel. I'm not sure I deserve it, but... thanks, <CHARNAME>.~
EXTERN C0AURAJ t8.6

CHAIN C0AURAJ t8.6
~Lead on, <CHARNAME>. No matter how tough things get, I'll do my best not to fail you.~
EXIT

CHAIN C0AURAJ t8.7
~N-no! I mean... well, yes... I haven't needed since we met. You've protected me up till now, and... I didn't want to hide anymore. I hope you'll forgive me.~
END
++ ~Fine, I forgive you. At least you're trying to help.~ + t8.6
++ ~I don't care. You're only here so long as you're useful.~ + t8.x

CHAIN C0AURAJ t8.x
~B-but... *sigh* I get it. Sorry for trying to help.~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT

// TALK 9

CHAIN IF ~Global("C0AuraTalk","GLOBAL",18)~ THEN C0AURAJ t9
~Here, <CHARNAME>. I made this for you!~ [C0BLANK]
DO ~GiveItemCreate("c0amaga2",Player1,1,0,0)
IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~It's... a necklace? Looks just like the one you wear.~ + t9.1
++ ~Thanks, Aura.~ + t9.2
++ ~That's nice, but we don't have time to talk right now. Thanks for the gift though.~ + t9.0

CHAIN C0AURAJ t9.0
~Sure... I hope it keeps you safe. I know mine does.~
EXIT

CHAIN C0AURAJ t9.1
~Yep! I couldn't get any jade for you though, so I had to use something else instead. It's pretty, though, isn't it?~
EXTERN C0AURAJ t9.3

CHAIN C0AURAJ t9.2
~You don't have to thank me. We're friends. I just wanted to keep you safe.~
EXTERN C0AURAJ t9.3

CHAIN C0AURAJ t9.3
~Mother... I mean, Reika-san gave me mine, not long after I got washed up in Kozakura. I could barely remember anything back then... so she put this around my neck so I'd be safe from evil spirits.~
= ~I know it's probably more than just spirits that are after you now, but... it might still help. I'm not Reika-san, and I can't put a blessing on it, so it might just be a carved rock, but...~
END
++ ~It's more than just a carved rock. I'm sure it'll keep me safe.~ + t9.4
++ ~Maybe, but I find that belief makes some things true in the end. Thanks, Aura.~ + t9.4
++ ~A carved rock that isn't even worth anything. I don't want this.~ + t9.5

CHAIN C0AURAJ t9.4
~If it can't keep you safe, well... I hope it'll at least make you happy.~
EXIT

CHAIN C0AURAJ t9.5
~Well, have it your way! If that's what you believe, then I don't want it back either!~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1) SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ EXIT

// TALK 10

CHAIN IF ~Global("C0AuraTalk","GLOBAL",20) Global("C0AuraRestTalk","GLOBAL",2)~ THEN C0AURAJ t10
~Heya. Come sit next to me for a bit, <CHARNAME>! It's nice and warm by the fire.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THIRTY_MINUTES)
SetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",THREE_DAYS)~
END
++ ~No tea or biscuits this time?~ + t10.1
++ ~Sure. I enjoy your company.~ + t10.2
++ ~I'd rather not. I'm too tired.~ + t10.0

CHAIN C0AURAJ t10.0
~Oh. Okay... rest well.~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.1
~No, sorry. I've got something else though, but I'll get into that later.~
EXTERN C0AURAJ t10.2

CHAIN C0AURAJ t10.2
~We've been through a lot together now, haven't we? I said before that I think of us as close friends now, but I didn't ask what you thought of me.~
= ~Have I been a good friend? Or have I been holding you back? Do you think anything of me at all?~
END
+ ~Gender(Player1,FEMALE)~ + ~I like you a lot, Aura.~ + t10.3
+ ~Gender(Player1,MALE)~ + ~I like you a lot, Aura.~ + t10.4
++ ~There's no need to even ask. I think we're as close as friends can get at this point.~ + t10.6
++ ~You're okay, but I wouldn't go farther than that. Don't get too attached.~ + t10.8
++ ~I don't feel like talking about this, Aura. I'd rather just go to bed.~ + t10.0

CHAIN C0AURAJ t10.3
~You really mean that? I... I'm really happy to hear you say that, <CHARNAME>. I... I really like you too.~
EXTERN C0AURAJ t10.7

CHAIN C0AURAJ t10.4
~Like me... in what way, <CHARNAME>? I'm sorry, I shouldn't ask. Of course, you mean as friends. You do mean that, don't you?~
END
++ ~If I said I liked you in another way, how would you react?~ + t10.5
++ ~As friends, yes. Is that okay with you?~ + t10.6

CHAIN C0AURAJ t10.5
~Oh, you do mean... like that. I... I'm sorry, <CHARNAME>, that... that's not possible. I'm... even when I was younger, I was never interested in boys. It was always my machines and... and other girls that I liked having around me.~
= ~But, I... I still like being with you though. I hope that's okay. Even if I can't see you as anything more.~
END
++ ~No, it's fine. I was just asking.~ + t10.6
++ ~I see... I guess there's nothing I can do, then. That's how things are.~ + t10.6
++ ~Well, if that's the case, I don't really think we have anything else to talk about. Good night, Aura.~ + t10.8

CHAIN C0AURAJ t10.6
~Thank you. You're as close to me as a friend could be at this point... I've never been good with people, I've said that before. So when I have someone I like, I want to do my best for them.~
EXTERN C0AURAJ t10.7

CHAIN C0AURAJ t10.7
~Um... anyways, I didn't ask for you to sit with me just so we could talk about how we feel. I did have something I wanted to share.~
= ~Here. It's 'sake', Kara-Turan wine. I've kept this small pot of it with me all this time... ever since I left Kozakura. I usually don't drink, but... it's a good thing to share with people you're close to.~
END
++ ~Why do you even have such a thing?~ + t10.9
++ ~Er... 'sa-kay'? What is it made from?~ + t10.10

CHAIN C0AURAJ t10.8
~Oh. I see... I'm sorry you feel that way. Still, I respect you more than anyone else I've met in this land. So regardless of how you see me, I... I'll still do my best for you. I promise.~
= ~Good night, <CHARNAME>. I hope I haven't bothered you.~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.9
~Reika-san loved drinking sake. It was pretty funny, actually... she was the gentlest, purest person normally, but after downing enough cups she was a whole different person. I never even knew how loudly she could laugh before she got drunk...~
= ~Um, sorry. I was about to start babbling again. I think we should use small cups for now. It's a rather acquired taste. I know I didn't like it at first, but I grew into it.~
= ~This wine was brewed in the Kozakuran village I lived in for three years. It was Reika-san's favorite, so she bought it and gave it to me as a birthday gift... after I remembered what my birthday was, that is. I've never had any, but it's apparently very good.~
== C0AURAJ IF ~InParty("C0Drake")~ THEN ~Don't tell Drake I've been hiding this secret wine from him all this time, though. *giggle* He'll never forgive me.~
END
+ ~InParty("C0Drake")~ + ~Drake won't hear a thing from me. Let's drink it all behind his back.~ + t10.11
++ ~Open it up then. Let's have a taste of this wine.~ + t10.12
++ ~I'd rather not. I don't drink.~ + t10.13

CHAIN C0AURAJ t10.10
~Fermented rice. I know, I know... it doesn't sound great, does it? But it's actually quite good.~
EXTERN C0AURAJ t10.9

CHAIN C0AURAJ t10.11
~Hee hee. I like the way you think, <CHARNAME>.~
EXTERN C0AURAJ t10.12

CHAIN C0AURAJ t10.12
~It smells good. A little sweet, like honey. And it tastes like... lime, plums, rosemary and mint. Let me just have another cup...~
= ~Ah... that's nice. You know, <CHARNAME>, I... didn't think travelling with you would be so interesting. So many things I would never have learned, and... friends I wouldn't have made...~
= ~Oh, oops... I just remembered... I'm not good with liquor. My head already feels a little faint... and I'm feeling rather tired...~
END
IF ~Gender(Player1,FEMALE)~ + t10.14
IF ~!Gender(Player1,FEMALE)~ + t10.15

CHAIN C0AURAJ t10.13
~Oh. Well, I'll have a cup anyway... now that I'm thinking of Kozakura again...~
EXTERN C0AURAJ t10.12

CHAIN C0AURAJ t10.14
~I'll just... rest on your shoulder for a while if you don't mind, <CHARNAME>... so sleepy...~
END
++ ~(Don't move)~ + t10.16
++ ~Hey, don't check out on me, Aura. Go get some rest.~ + t10.15

CHAIN C0AURAJ t10.15
~I think I should go lie down and get some sleep, <CHARNAME>... good night.~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.16
~Thanks, <CHARNAME>... you smell nice too... and you're so warm... I'm not falling asleep... really, I'm not...~
= ~Zzz...~
DO ~RestParty()~ EXIT

// CANDLEKEEP

APPEND C0AURAJ

IF ~Global("C0AuraCandlekeep","GLOBAL",1)~ candlekeep
SAY ~Ooooooh... now *this* is a real library. I don't think even the one in Sambar is half as big as this... can we stay, <CHARNAME>? At least until I've gone through every book at least once. Maybe twice!~
++ ~Ye gods, Aura, your eyes are like dinner plates! Will I need to stop you from climbing the bookshelves in a minute?~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep1
++ ~We'll all be old and senile by that point, Aura. Please spare us.~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep2
++ ~We're not here to browse. Come on, there's work to do.~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep3
END

IF ~~ candlekeep1
SAY ~Mayyyybe...?~
IF ~~ + candlekeep2
END

IF ~~ candlekeep2
SAY ~And you grew up here, <CHARNAME>? Really? Why would you ever leave?~
++ ~Why wouldn't anyone leave? It was so boring here!~ + candlekeep2.1
++ ~I didn't have a choice.~ + candlekeep2.2
++ ~Come on, Aura. Remember what we're here for?~ + candlekeep3
END

IF ~~ candlekeep2.1
SAY ~I guess one man's treasure is another man's trash. Or... however that goes. I've never really understood human sayings.~
IF ~~ EXIT
END

IF ~~ candlekeep2.2
SAY ~If it were me, I would've had to be dragged out of here kicking and screaming! Um, anyways, I know we don't have much time, but I don't suppose I could borrow a book or two before we leave? Maybe?~
IF ~~ EXIT
END

IF ~~ candlekeep3
SAY ~Aw! Can't it wait?~
++ ~No.~ + candlekeep3.1
++ ~I'm sure we'll be back once we have more time to spare.~ + candlekeep3.2
END

IF ~~ candlekeep3.1
SAY ~...*pbbt* We're not friends anymore, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ candlekeep3.2
SAY ~Okaaaay... but you better make sure of it!~
IF ~~ EXIT
END
END

// INTERJECTIONS

I_C_T2 ARCAND 2 C0AuraARCAND2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Gnomes in the Sword Coast are weird... it's kinda hard to believe that we're kin sometimes.~
== C0AURAJ ~I think he's trying to tell us something, though? Something's hidden by the seashore?~
END

I_C_T ARKION 1 C0AuraARKION1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Urgh! If there's one thing I refuse to research, it's dead body parts. *shudder* Can we not?~
END

I_C_T ALATOS 9 C0AuraALATOS9
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, Halruaan technology? Here in the city? What I wouldn't give to... no, wait, bad! Can't get tempted by thieves!~
END

I_C_T BAELOTH 0 C0AuraBAELOTH0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, my poor ears... earmuffs, where's my earmuffs? Muffy, where did you hide my earmuffs?~
END

I_C_T BASSIL 1 C0AuraBASSIL1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Uuuuuhhhh...~
== C0AURAJ ~Aah! Sorry, <CHARNAME>, that was my brain halfway though shutting down trying to compehend what I'm seeing here. Oh no, that isn't contagious, is it?~
END

INTERJECT BENTLY 1 C0AuraBENTLY1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hello, uncle Bentley!~
== BENTLY ~Who- ah. It's you, lass. Mind who ya be callin' uncle, if you've a mind. We ain't related, after all, an' it makes me feel old.~
== C0AURAJ ~Oh, I know, it's just... you're the only gnome around these parts that I've felt a kinship with. It makes me feel more familiar when I call you that, you know?~
== BENTLY ~Well, if ya please, lass. How goes yer search?~
== C0AURAJ IF ~!Dead("c0saito")~ THEN ~Still nothing, I'm sorry to say.~
== C0AURAJ IF ~Dead("c0saito")~ THEN ~I've... done what I needed to. I'll follow <CHARNAME> around until fate beckons, I suppose.~
== BENTLY ~Hmm. Well, if anythin' happens... never fear to come back to the Friendly Arm. Me and my wife will always have a space for ya. We still owe ya for fixin' that wheel, after all.~
== C0AURAJ ~Thanks, uncle Bentley. Any time.~
EXTERN BENTLY 1

I_C_T BREVLI 14 C0AuraBREVLI14
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~No! Um... sorry, didn't mean to shout... but you can't steal such a valuable artifact of my homeland. You just can't!~
== BREVLI ~Oops! I didn't say anythin', missy... hee hee. But you will consider it, yes?~
END

I_C_T BORDA 0 C0AuraBORDA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*whisper* Watch out, <CHARNAME>... I'm detecting a huge number of magical curses coming from this person's bag. I don't think anything he has is genuine... or safe.~
END

I_C_T CARSA 5 C0AuraCARSA5
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Umm... I might've had a thought or two about researching that jar if I got my hands on it, but now I've decided I absolutely *do not* want it anywhere near me.~
== C0AURAJ ~Can we... back away now, <CHARNAME>? She's giving me the creeps.~
END

I_C_T CENTEO 0 C0AuraCENTEO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, ugh... *shudder* why did we have to walk in here?~
END

I_C_T CENTEO 2 C0AuraCENTEO2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, ooh, ask her something about spider physiology! I've always been curious!~
END

I_C_T CHARLE 8 C0AuraCHARLE8
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hello! Now this sort of excavation has my name written all over it. I was accepted into the Archaologist's Guild of Lantan, after all.~
== CHARLE ~Is that so? A fellow archeologist and historian, are you? Perhaps one day we could sit down and compare notes.~
== C0AURAJ ~Ooh, I would if I wasn't presently occupied, I assure you. How about we give this pleasant fellow a hand, <CHARNAME>? Who knows what we might find in there!~
END

I_C_T CHESS 0 C0AuraCHESS0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Well, I would never refuse a game of chess... if only my opponents would stop cheating all the time!~
END

INTERJECT CORAN 4 C0AuraCORAN
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh... can we, <CHARNAME>? Pleeease? I've never seen a real living wyvern before, but they're supposed to be cute!~
END
++ ~You think wyverns are... cute?~ EXTERN C0AURAJ C0AuraCORAN2

CHAIN C0AuraJ C0AuraCORAN2
~What's that supposed to mean? You don't think they're cute?~
== CORAN ~I certainly wouldn't want to disappoint the little miss if I were you, my friend. What say you to some wyvern hunting?~
COPY_TRANS CORAN 4

I_C_T CUTCHAR 0 C0AuraCUTCHAR0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Mmm, judging from the composition of the surrounding rock and the state of the drawings on the walls - very well preserved, I might add...~
== C0AURAJ ~I'd date this place as being no older than... mmm... -3408 Dalereckoning?~
== CUTCHAR ~...Yes, that sounds accurate enough. However did you manage to deduct that so quickly, Miss Glimmershine?~
== C0AURAJ ~The Archaeologist's Guild once enrolled me in an excavation rather like this one. Although that one was larger, and a tad more... furnished.~
== CUTCHAR ~Truly? Quite fascinating! Perhaps you might tell me of your experience while we take a break?~
== C0AURAJ ~Certainly! I can almost recite my thesis on the subject word for word, just ask.~
== IMOEN2 IF ~InParty("Imoen")~ THEN ~Umm, can anyone explain to me what in Oghma's name these two are talking about?~
== QUAYLJ IF ~InParty("Quayle")~ THEN ~Hah! As if my mighty brain could not understand every word they're saying. Uh... they *are* talking about the fungus that's growing here, right?~
== VICONJ IF ~InParty("Viconia")~ THEN ~This may be a rare sentence for me, but I implore you, kivvil, speak Common.~
== KAGAIJ IF ~InParty("Kagain")~ THEN ~I don't give two damns of whatever you louts are sayin', but you'd best answer the most important question: is there any gold to be found in this stink-hole that makes this worth my time?~
== MINSCJ IF ~InParty("Minsc")~ THEN ~Boo? Would you explain to Minsc what Aura and the dusty man are saying? ...*squeak* Ah! Now Minsc understands completely! You are wise as ever, my friend!~
END

I_C_T DAERRAGH 1 C0AuraDAERRAGH
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, oh, do it again, <CHARNAME>, I need to figure out how he did that!~
== DAERRAGH ~You would not live to regret it!~
END

I_C_T DAITEL 0 C0AuraDAITEL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aaah! G-ghost!~
== DAITEL ~Is aught... amiss, Durlag...?~
END

I_C_T2 DAVAEO 0 C0AuraDAVAEO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Be careful, <CHARNAME>... I can sense a tremendous amount of arcane power from this guy. I don't think his robes are just for show.~
END

I_C_T2 DIGGER 11 C0AuraDIGGER11
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Whoa! Now this didn't happen in my last excavation!~
END

I_C_T2 DOOMSAY 1 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Creepy! This DEFINITELY didn't happen in my last excavation!~
END

I_C_T2 DOOMSAY 2 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Creepy! This DEFINITELY didn't happen in my last excavation!~
END

I_C_T2 DOOMSAY 3 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Creepy! This DEFINITELY didn't happen in my last excavation!~
END

I_C_T2 DRIENN 1 C0AuraDRIENN1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh no! Let's go, <CHARNAME>, a poor kitty's life might be at stake!~
END

I_C_T ELMIN2 0 C0AuraELMIN20
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh my... are you really Elminster himself, the oldest and greatest living mage in Faerun? Um, I, er, I mean - it's a pleasure to meet you, sir?~
== ELMIN2 ~'Greatest' may be subject to opinion, but 'oldest' I shall take in stride. But thou must pardon my rudeness, young lady, for I have precious little time to spare and must speak to young <CHARNAME>.~
END

I_C_T ELMINS4 0 C0AuraELMINS40
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Back, back, <CHARNAME>! Don't listen to these... things! They're evil to the core!~
END

CHAIN IF ~InParty("C0Aura") See("C0Aura") Global("C0AuraFriWen","GLOBAL",0)~ THEN FRIWEN wench
~Oh, look who it is, little miss miracle-worker herself. Where've you been?~
DO ~SetGlobal("C0AuraFriWen","GLOBAL",1)~
== C0AURAJ ~Hello! I've been adventuring together with <CHARNAME> for a while. Sorry I haven't had the chance to come by until now.~
== FRIWEN ~Better you than me, I say. Well, don't go getting yourself killed.~
END

I_C_T GALILE 2 C0AuraGALILE2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Well, as my venerable grand-uncle would tell me over teatime: "If it's worth checking once, it's worth checking twice, if it's worth checking thrice, it's..."~
== C0AURAJ ~Ugh, I got that wrong. How did that last part go again...?~
== GALILE ~May you find the answers to your pondering more swiftly as I do mine. Fare thee well.~
END

INTERJECT GALLOR 1 C0AuraGALLOR1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~...~
= ~*fwoosh* *THUNK!*~
== GALLOR ~Wh-WHAT was that for, you little wench?!~
== C0AURAJ ~I don't like people who get in the way of another's search for knowledge. You've got five seconds to get out of here or the next shot won't miss.~
EXTERN GALLOR 2

INTERJECT GANTOL 1 C0AuraGANTOL1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, nuts and bolts! Um... "meow"?~
== GANTOL ~...~
== C0AURAJ ~*gulp*~
EXTERN GANTOL 4

I_C_T2 GAZIB 1 C0AuraGAZIB1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh! *applauds* encore, encore! I'll figure it out on the next display!~
END

I_C_T GELLAN 0 C0AuraGELLAN0
== GELLAN IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ah, I see you've brought our little darlin' inventor with you! How are you, Aura, dear?~
== C0AURAJ ~All is well, missus Gellana. Thank you for your concern.~
== GELLAN ~Good, that's good, dearie. Now, was there something you needed?~
END

I_C_T2 GERDE 0 C0AuraGERDE0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Huh. You know, back in Lantan the Zoologist's Guild crossbred giant earthworms to do the same thing. Much safer, sure, but they're just so ugly. Those ankhegs are actually kind of cute.~
END

INTERJECT HALFTR 4 C0AuraHALFTR4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Pfft. You can fool anyone else, but you can't fool a Lantanese artificer. Get outta here, you cheat.~
EXTERN HALFTR 6

I_C_T2 JARED 0 C0AuraJARED0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Eek! Bear? Where? Oh, I hate bears... do we haaaave to deal with it, <CHARNAME>? Ugh, if we must...~
END

INTERJECT JENKAL 0 C0AuraJENKAL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Urp! It reeks of kobold pee in here! Who'd ever want to live in here... wait...~
EXTERN JENKAL 3

I_C_T2 KISSIQ 1 C0AuraKISSIQ1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh my, this is new! Come on, <CHARNAME>, I have to see this anomaly for myself!~
END

I_C_T KOVERA 0 C0AuraKOVERAS0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~There's something about this guy that creeps me out, <CHARNAME>. It's like he's looking at all of us at once...~
END

I_C_T LUCKY 0 C0AuraLUCKY0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~O-ho-ho-h... now *this* is interesting. I've never seen a collection as simultaneously worthless and dangerous at the same time! I simply have to examine these treasures!~
END

I_C_T2 MARL 0 C0AuraMARL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Eep!~
END

I_C_T2 MARL 13 C0AuraMARL13
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, good. That man was scary, but I'm glad we didn't have to fight him.~
END

I_C_T MUTAMI 0 C0AuraMUTAMI0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's... awful! You may be a gnome, but I'm not going to let you get away with this!~
== MUTAMI ~Ehehehe... and what are you going to do about it, I wonder?~
END

I_C_T NEB 2 C0AuraNEB2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That... that's sick. You're disgusting.~
== NEB ~Come now, don't be like that. You're a gnome, same as me, hee-hee. Pretty, pretty, you are, too...~
== C0AURAJ ~K... kusoyaro... GET AWAY FROM ME! Don't think I can't put an arrow through your head to make you uglier, you... you kusottare! Kutabare! Fall over and die!~
== NEB ~Break my heart, you do, even if I can't understand half the words you say, pretty, hee-hee... such a shame...~
END

I_C_T2 NEXLIT 0 C0AuraNEXLIT0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Noooo! Not a bear! Anything but a bear!~
END

I_C_T2 NIEMAI 11 C0AuraNIEMAI11
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wow. That was a good one, <CHARNAME>. You wouldn't mind if I memorize it for future use, would you?~
== NIEMAI ~Shut UP!!~
END

I_C_T NARCIL 0 C0AuraNARCIL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, experiments! Now we're talking my language.~
END

I_C_T2 NARCIL 4 C0AuraNARCIL4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Touchy! A true researcher would never keep his findings to himself. Well, this is unfortunate, but I guess we'll have to teach you a lesson!~
END

I_C_T2 OGRECO 0 C0AuraOGRECO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Erm, alright. Psst! If you want a nasty surprise set up for this, big, ugly fella, <CHARNAME>, just say the word.~
END

I_C_T OGRMBA 0 C0AuraOGRMBA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I- I think I'm going to be sick... and I thought giant earthworms were bad...~
END

ADD_TRANS_TRIGGER PALLON 0 ~!IsValidForPartyDialog("C0Aura")~ DO 0 1

EXTEND_TOP PALLON 0
+ ~IsValidForPartyDialog("C0Aura")~ + ~Pardon me, but if you do not trouble yourself with the events of the day, what purpose do your star-gazings serve?~ EXTERN C0AURAJ C0AuraPallonia1
+ ~IsValidForPartyDialog("C0Aura")~ + ~What good are your musings if they do not have practical use? Perhaps your predictions are not as accurate as you would have people believe?~ EXTERN C0AURAJ C0AuraPallonia2
END

CHAIN C0AURAJ C0AuraPallonia1
~Oh, don't say that, <CHARNAME>. The movement of stars fortell events that are far beyond our comprehension. The events we face may be great for us but on the scale of the universe they're nothing... um, sorry. Carry on.~
EXTERN PALLON 3

CHAIN C0AURAJ C0AuraPallonia2
~Oh, don't say that, <CHARNAME>. The movement of stars fortell events that are far beyond our comprehension. The events we face may be great for us but on the scale of the universe they're nothing... um, sorry. Carry on.~
EXTERN PALLON 2

I_C_T2 PALLON 4 C0AuraPALLON4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hmm, interesting... my star charts always tell me of future disasters and celestial movements, but never something like what I'm hearing now...~
== PALLON ~A new edition of events is soon to occur. Be ready.~
END

I_C_T POE 2 C0AuraPOE2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, oh, where's my pen and parchment?~
END

I_C_T2 REEVOR3 0 C0AuraREEVOR30
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, now I'm mad. No one associates me with a rat and gets away with it. Eat arrows, freak!~
END

I_C_T SHISTA 0 C0AuraSHISTA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Muffy doesn't like this person, <CHARNAME>. Can you hear him grinding his teeth? I'm getting goosebumps... let's ask this man some questions.~
END

I_C_T TAMOKO 0 C0AuraTAMOKO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~...! R-Reika...-san...?~
== TAMOKO ~...~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraTamoko","GLOBAL",2)~ THEN C0AURAJ tamoko3
~W-wait!!~ [C0BLANK]
DO ~SetGlobal("C0AuraTamoko","GLOBAL",3)~
== TAMOKO ~...~
== C0AURAJ ~O-omachi-kudasai, Tamoko-san!~
== TAMOKO ~...~
== TAMOKO ~You have five seconds.~
== C0AURAJ ~Thank you. Do you... know Amanokagami Reika?~
== TAMOKO ~...~
== TAMOKO ~That is irrelevant to your current cause, is it not? Farewell.~
== C0AURAJ ~But-~
== TAMOKO ~If you desire an answer, gnome, then follow your leader and do as I have asked. Perhaps then we may meet again.~
DO ~AddJournalEntry(@20001,QUEST)~ EXIT

INTERJECT TAMOKO 20 C0AuraTamoko1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I would like to talk to Tamoko-san for a moment... please?~
END
++ ~Go ahead.~ EXTERN C0AURAJ tamoko5
++ ~Why?~ EXTERN C0AURAJ tamoko6
++ ~There's no point. She's an enemy.~ EXTERN C0AURAJ tamoko7

CHAIN C0AURAJ tamoko5
~Thank you.~
== TAMOKO ~I said I would give you an answer, gnome. Ask your questions.~
== C0AURAJ ~Tamoko-san, you... does the name 'Amanokagami Reika' mean anything to you?~
== TAMOKO ~Yes. Amanokagami Reika-sama was my mother's kin... she was my aunt.~
== C0AURAJ ~I... I thought so.~
== TAMOKO ~You wear my aunt's magatama. For that, I will give you a chance to speak. Make it quick.~
== C0AURAJ ~Tamoko-san, I... I beg your forgiveness. Your aunt, Reika-san... died to protect me. In her last words... she asked me to find the last of her blood, and gave me these words. "One may lose the Way, but it does not lose them." I... I know they were meant for you.~
== TAMOKO ~...~
== C0AURAJ ~Your aunt... she always believed that you had the choice to return. Please, put down your weapon... this is not the right way.~
== TAMOKO ~It makes no difference. My actions under Sarevok have taken me from the Way long ago. The kami have forsaken me. To associate myself with the name of Amanokagami would a stain upon its honor.~
DO ~AddJournalEntry(@20002,QUEST_DONE) AddExperienceParty(5000)~
== C0AURAJ ~No...~
== TAMOKO ~I have given you the chance to speak. Now it is time for your leader to put this to an end, for it is Sarevok's will that I die, and I have no choice but to obey.~
COPY_TRANS TAMOKO 20

CHAIN C0AURAJ tamoko6
~I... need to make sure of something. And maybe... we don't have to fight here. Will you let me talk to her?~
END
++ ~Fine. Say what you need to.~ EXTERN C0AURAJ tamoko5
++ ~Don't bother. We're going to have to kill her.~ EXTERN C0AURAJ tamoko7

CHAIN C0AURAJ tamoko7
~But...~
== TAMOKO ~There is no more value in words. Though this brings me no pleasure, I have no choice but to stop you from facing Sarevok. Draw your weapon and end my pain, <CHARNAME>.~
COPY_TRANS TAMOKO 20

CHAIN IF ~Global("C0AuraTamoko","GLOBAL",4) Dead("Tamoko")~ THEN C0AURAJ tamoko.dead
~Why?! Why did you kill her, <CHARNAME>?~ [C0BLANK]
DO ~SetGlobal("C0AuraTamoko","GLOBAL",5)~
END
++ ~I didn't have a choice.~ + tamoko.dead.1
++ ~It's what she wanted.~ + tamoko.dead.1
++ ~Because she's an enemy. I kill my enemies.~ + tamoko.dead.1

CHAIN C0AURAJ tamoko.dead.1
~No... Reika-san, I failed you... forgive me, please forgive me...~
= ~I- I won't blame you, <CHARNAME>. But we must stop Sarevok. It's the only way... it's all I have left to make amends.~
EXIT

I_C_T2 TENYA 2 C0AuraTENYA2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Eep! We're not really going to hit a little girl, are we?~
END

I_C_T TETHTO2 2 C0AuraTETHTO22
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~'Koveras'... 'Sarevok'... ah, nuts and bolts! How could I not have noticed it?~
END

I_C_T2 ULCAST 4 C0AuraULCAST4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~So much knowledge... lost? Nothing could be worse! <CHARNAME>, we'll help, won't we?~
END

I_C_T2 ULCAST 5 C0AuraULCAST5
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I'm comforted by the thought of continuing to learn, even beyond life... I hope you find peace, master Ulcaster.~
END

I_C_T VAI 0 C0AuraVAI0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~H-hello, officer. Do you remember me?~
== VAI ~Of course, miss Glimmershine. I recall you requested our aid in searching for two Easterners that were here at the Sword Coast.~
== C0AURAJ ~And...?~
== VAI ~Nothing, I'm afraid. No one has seen or heard anything of either, as far as I know. I beg your pardon.~
== C0AURAJ ~*sigh* I thought so. Never mind me then, <CHARNAME>'s the one you want to talk to.~
END

I_C_T VOLO 0 C0AuraVOLO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, aren't you master Volo?~
== VOLO ~Indeed I am, young lady.~
== C0AURAJ ~I'm a huge fan of your work, sir! They have all of your published works in Sambar's great library. But regarding your 'Volo's Guide to All Things Magical', sir, there were a few questions I'd like to ask...~
== VOLO ~Now, now, I would be happy to answer all your queries in a more private setting one day, but let's not spoil things for our less enlightened company, shall we?~
== C0AURAJ ~Oh... right. Of course!~
END

I_C_T XAN 0 C0AuraXAN0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wow. I'm not certain if the atmosphere has affected this sourpuss's mood, of if he's the one making the atmosphere.~
== XAN ~*sigh*~
END

I_C_T XAN 1 C0AuraXAN0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wow. I'm not certain if the atmosphere has affected this sourpuss's mood, of if he's the one making the atmosphere.~
== XAN ~*sigh*~
END

I_C_T ZEKE 0 C0AuraZEKE0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Yikes! I hope this was an intended part of the entertainment... though something tells me it wasn't.~
END

EXTEND_BOTTOM RSJASPER 2
+ ~IsValidForPartyDialog("C0Aura")~ + ~Aura, do you think you could figure this out?~ DO ~SetGlobal("ohprisoner","oh3020",3)~ EXTERN C0AURAJ rs.trap1
END

CHAIN C0AURAJ rs.trap1
~It's tricky, but I think... okay. Which cage will the other prisoner tell me to open?~
== RSJASPER IF ~Global("ohjasper_trapped","oh3020",1)~ THEN ~My cage.~ [RSW114B]
== RSJASPER IF ~Global("ohjasper_trapped","oh3020",0)~ THEN ~The other cage.~ [RSW114A]
== C0AURAJ ~Hmm...~
== C0AURAJ IF ~Global("ohjasper_trapped","oh3020",1)~ THEN ~I think... yeah. This one's trapped, I'm almost sure of it.~
== C0AURAJ IF ~Global("ohjasper_trapped","oh3020",0)~ THEN ~I think... yeah. It's the other one that's trapped, I'm almost sure of it.~
EXIT

EXTEND_BOTTOM RSBASSAN 5
+ ~IsValidForPartyDialog("C0Aura")~ + ~Aura, do you think you could figure this out?~ DO ~SetGlobal("ohprisoner","oh3020",3)~ EXTERN C0AURAJ rs.trap2
END

CHAIN C0AURAJ rs.trap2
~It's tricky, but I think... okay. Which cage will the other prisoner tell me to open?~
== RSBASSAN IF ~Global("ohbassano_trapped","oh3020",1)~ THEN ~My cage.~ [RS114C]
== RSBASSAN IF ~Global("ohbassano_trapped","oh3020",0)~ THEN ~The other cage.~ [RSW114D]
== C0AURAJ ~Hmm...~
== C0AURAJ IF ~Global("ohbassano_trapped","oh3020",1)~ THEN ~I think... yeah. This one's trapped, I'm almost sure of it.~
== C0AURAJ IF ~Global("ohbassano_trapped","oh3020",0)~ THEN ~I think... yeah. It's the other one that's trapped, I'm almost sure of it.~
EXIT

// BURST ORB

CHAIN IF ~GlobalTimerExpired("C0AuraBurstOrbWait","GLOBAL")
Global("C0AuraBurstOrb","GLOBAL",1)~ THEN C0AURAJ burstorb
~Hey. <CHARNAME>! Take this. It's one of my most recent inventions.~ [C0BLANK]
DO ~GiveItemCreate("c0autt01",Player1,3,0,0)
SetGlobal("C0AuraBurstOrb","GLOBAL",2)
SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS)~
END
++ ~What is this?~ + burstorb.1

CHAIN C0AURAJ burstorb.1
~It's... wait, don't drop it! It's a Burst Orb. It's filled to the brim with power, so be careful. It wasn't easy to make... containing raw energy isn't an easy affair. I needed more practice before I was ready.~
= ~Next time we find a pack of kobolds or nasty skeletons, give it a toss. Once it comes into contact with the ground... *boom!* *zap!* It'll give them a nice shock.~
END
++ ~Very handy. Thank you, Aura.~ + burstorb.2
++ ~I suppose it may be of use.~ + burstorb.2
++ ~Do you have any more?~ + burstorb.3

CHAIN C0AURAJ burstorb.2
~Hee hee, you're very welcome. It's nice to be appreciated.~
EXTERN C0AURAJ burstorb.3

CHAIN C0AURAJ burstorb.3
~I've only got three ready-made at the moment. I can make more though, but it's not easy. Let's say... roughly one every three days. And I don't dare stockpile them, so remember to ask me at the right time. Use them sparingly. Also carefully!~
EXIT

// TELESCOPE

CHAIN IF ~Global("C0AuraTelescope","GLOBAL",1)~ THEN C0AURAJ telescope
~*sigh* I don't suppose I can talk you out of this, can I? This telescope is an artifact of my homeland, after all.~ [C0BLANK]
DO ~SetGlobal("C0AuraTelescope","GLOBAL",2)~
END
++ ~Do you have a better idea?~ + telescope.1
++ ~It's wrong, but I do need the gold.~ + telescope.1
++ ~You're right. I'm going to put it back.~ + telescope.1
++ ~Unless you have an alternative, no.~ + telescope.1

CHAIN C0AURAJ telescope.1
~Actually... I do have an idea of what we can do instead of stealing. I could make a replica of this telescope using some of my spare materials and hand that over to Brevlik instead. He'd never notice the difference. After all, there's probably no one in this land besides me that could make something like this. What do you think?~
END
++ ~That's a great idea. How long will it take?~ + telescope.2
++ ~I suppose that's a safer bet. Just be quick with it.~ + telescope.2
++ ~No. I don't care what this thing means to you, it's worth more to me.~ + telescope.x

CHAIN C0AURAJ telescope.2
~It won't take too long. I'm sure a place like this'll have a workshop for me to work in somewhere. Hang on for a while...~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT

CHAIN IF ~Global("C0AuraTelescope","GLOBAL",2)~ THEN C0AURAJ telescope.3
~Okay! That was easy. I've tinkered with plenty of these while I was training at the academy. Bet you can't even tell it's different.~ [C0BLANK]
DO ~SetGlobal("C0AuraTelescope","GLOBAL",3)~
= ~I put the real telescope somewhere. Hopefully they won't wonder too much about how it got moved. Now let's get out of here.~
DO ~AddXPObject("C0Aura",1000)~ EXIT

CHAIN C0AURAJ telescope.x
~Fine. Have it your way. I guess I've just completely misjudged you.~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT

// MAGETALKS

/*

CHAIN IF ~Global("C0AuraMageTalk","GLOBAL",2)~ THEN C0AURAJ race.elf
~~
DO ~IncrementGlobal("C0AuraMageTalk","GLOBAL",1)~
END


// RACETALKS

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.elf
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.dwarf
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.gnome
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

*/

// QUEST

CHAIN IF ~Global("C0AuraQuestLeave","GLOBAL",1)~ THEN C0AURAJ questleave
~This... this can't keep happening, <CHARNAME>. Sooner or later they'll kill me... or you. I never meant for you to get caught up in all this... argh!~ [C0BLANK]
DO ~SetGlobal("C0AuraQuestLeave","GLOBAL",2)~
= ~*sigh* I'm... I'm sorry, I didn't mean to yell like that. I'm just so tired... I think I need some rest. Preferably indoors, where I might be able to keep both eyes shut. Would that be okay, <CHARNAME>?~
EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",10)~ THEN C0AURAJ endquest
~*sigh* We did it... it's over. Thank you, <CHARNAME>... I'd like to have a moment.~ [C0BLANK]
= ~(She kneels before the ronin's corpse and clasps her hands, uttering a few Kozakuran prayers. Eventually, she lays her hand over his eyelids, closing them, and rises.)~
DO ~FadeFromColor([30.0],0)~
= ~I... guess you probably have a lot of questions to ask. I'd rather not talk here, though. Lead on, <CHARNAME>... I'll take the sword with me.~
DO ~SetGlobal("C0AuraQuest","GLOBAL",11) AddExperienceParty(10000) GiveItemCreate("c0auswfa",Myself,1,0,0) AddJournalEntry(@10008,QUEST_DONE)~ EXIT

APPEND C0AURAJ

IF ~Global("C0AuraQuest","Global",13)~ questend
SAY ~I've read through the entirety of the records that Fubuki-san gave me. Even though I'm still confused in many ways, I... understand a lot more now.~
++ ~What have you learned?~ DO ~SetGlobal("C0AuraQuest","GLOBAL",14)~ + questend.1
++ ~Don't tell me. I don't care to know.~ DO ~SetGlobal("C0AuraQuest","GLOBAL",14)~ + questend.x
END

IF ~~ questend.x
SAY ~Alright. I won't bother you... I can put all this behind me now, anyway.~
IF ~~ + questend.4
END

IF ~~ questend.1
SAY ~I... never knew about any of this. Reika-san was once a samurai, serving under the same daimyō as Saitō-san. As Fubuki-san said, they were old enemies at court. One arguing for peace, the other for war...~
= ~Years ago, the daimyō was losing a bloody war for power. Saitō-san encouraged him to seek the aid of a temple of Kwan Ying, goddess of compassion. The temple guarded a sacred pool, said to bless anyone who touches its waters. The priests denied him, for such a blessing wasn't meant to be abused for bloodshed.~
= ~The daimyō was angered, yet he dared not oppose the authority of the Way. However, Saitō-san, leading a group of warriors loyal to him, slaughtered the entire temple and claimed the pool for himself.~
= ~Eventually, they won the war, but... Saitō-san's actions were an affront to the gods. Days after the daimyō conquered his rival's lands, his entire family was struck by an incurable plague. Saitō-san and Reika-san watched as their liege and his children wasted away, powerless to stop it.~
++ ~But it was Saitō who committed the sin. Why was the lord punished?~ + questend.2
++ ~Go on.~ + questend.3
++ ~That's enough. I don't need to hear any more.~ + questend.x
END

IF ~~ questend.2
SAY ~I don't know. Maybe that's just how Kozakuran justice is in the eyes of the gods. But if this is true, then I can understand why Saitō-san despised the gods... even though I can't condone what he did.~
IF ~~ + questend.3
END

IF ~~ questend.3
SAY ~After the family perished, the daimyō's court split apart. Some, like Saitō-san, blamed it all on the gods' unfair justice and demanded vengeance by blood. Reika-san refused to take part in the violence that would follow, and she instead departed for her family's sacred shrine, choosing to set aside her sword to become a priestess of the Way, praying for the souls of the dead.~
= ~The day that Reika-san was slain was the first time the two had met since then. When Saitō-san cut down Reika-san, she left upon him a curse, preventing him and those sworn to him from ever shedding blood on Kozakuran soil again. He believed Reika-san's magatama, the last token of her power, would free him from the curse.~
= ~That's why he hunted me. I was worth nothing to him. The only thing he cared for was this talisman around my neck. He was speaking the truth on that bridge. We were never friends... I was just a gaijin... a filthy foreigner to him. He would have killed me and felt no more guilt over it than any other life he's ever taken.~
++ ~He's dead now. You don't have to fear him any longer.~ + questend.4
++ ~That was a boring story. I'm glad it's finally over.~ + questend.4
++ ~It was your mistake to trust him.~ + questend.4
END

IF ~~ questend.4
SAY ~Now that Saitō-san is dead, I'm finally, truly free... but while I feel relieved, I can't help but feel... guilty, as if I've betrayed myself.~
= ~You saw what I did in order to try and stop him. I resorted to using smokepowder, which I've hated all my life for the destruction it causes... all for my own personal revenge. Do... do you think any worse of me for it?~
++ ~I don't blame you. You felt you had no other choice.~ + questend.5
++ ~Now I understand why you speak of smokepowder with such fear and revulsion, after seeing what it can do.~ + questend.6
++ ~The only thing I blame is that you hid something so powerful from me for so long.~ + questend.7
++ ~I would have never expected you to resort to such brutal methods.~ + questend.8
END

IF ~~ questend.5
SAY ~That's what I want to believe, as well. If I felt I could stand up to him in any other way, I would have done it.~
IF ~~ + questend.9
END

IF ~~ questend.6
SAY ~And you understand why I would have never allowed something like that to fall into the hands of someone like Sait... Tadahashi Saitō.~
IF ~~ + questend.9
END

IF ~~ questend.7
SAY ~I'm sorry. You've seen how dangerous of a weapon that smokepowder is. I can't grant it to just anyone... not without my full trust.~
IF ~~ + questend.9
END

IF ~~ questend.8
SAY ~I... what worries me more is that I know I could have done more. I could have likely blasted him and all his followers to dust if I left all my morals behind... and I did consider it. But I couldn't.~
IF ~~ + questend.9
END

IF ~~ questend.9
SAY ~I won't ask you not to judge me for what I've done... everything I've done. From hiding behind others and watching them die in my stead, to betraying my own principles for revenge... but I still want to thank you. You stood by me, regardless of how you felt. I want to repay you in any way that I can.~
++ ~There's no need for that. I'm happy to help a loyal friend.~ + questend.10
++ ~As long as you don't have any more dangerous enemies you haven't mentioned.~ + questend.11
++ ~You can repay me by making smokepowder weapons in my service.~ + questend.12
END

IF ~~ questend.10
SAY ~... Ha ha... I must have been blessed to find someone like you in this land. Thank you, <CHARNAME>... my friend.~
IF ~~ + questend.13
END

IF ~~ questend.11
SAY ~No, no more... um, that I know of, anyway... that's a promise.~
IF ~~ + questend.13
END

IF ~~ questend.12
SAY ~That's... a lot to ask for, <CHARNAME>. But... fair's fair, I suppose. As long as you don't ask for me to abuse them, then I'll do it for you alone.~
IF ~~ + questend.13
END

IF ~~ questend.13
SAY ~There's just one matter left. This sword... the one I created, that began all this.~
= ~It feels so strange to have it in my hands once again. I hardly even recognize it. Perhaps it's all the blood that has stained it over the years, but just looking at it horrifies me.~
++ ~What will you do with it?~ + questend.14
END

IF ~~ questend.14
SAY ~I decided upon it long before now. I'm going to destroy it. It's the only thing to do, as the one who made it with my own hands.~
++ ~It's still a fine sword, though. Are you alright with that?~ + questend.15
++ ~Do what you will. It's your own choice to make.~ + questend.16
+ ~CheckStatGT(Player1,14,CHR)
!Alignment(Player1,MASK_EVIL)~ + ~No. I could use such a powerful weapon. Give it to me.~ + questend.17a
+ ~OR(2)
!CheckStatGT(Player1,14,CHR)
Alignment(Player1,MASK_EVIL)~ + ~No. I could use such a powerful weapon. Give it to me.~ + questend.17b
END

IF ~~ questend.15
SAY ~I can't bring back the dead. But I can make sure the blade that took their lives is destroyed, just like its owner. It may mean nothing, but... it'll still give me some small measure of peace.~
++ ~Fine. You of all people deserve to make that decision.~ + questend.16
+ ~CheckStatGT(Player1,14,CHR)~ + ~No. I could use such a powerful weapon. Give it to me.~ + questend.17a
+ ~!CheckStatGT(Player1,14,CHR)~ + ~No. I could use such a powerful weapon. Give it to me.~ + questend.17b
END

IF ~~ questend.16
SAY ~I'm glad you understand, <CHARNAME>.~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18b
END

IF ~~ questend.17a
SAY ~No, I... I can't do that, <CHARNAME>. I... I resolved to destroy this sword if I ever got my hands on it again...~
+ ~!Alignment(Player1,MASK_EVIL)~ + ~Surely I'm worthy of your trust, at least.~ + questend.17c
++ ~Did you not say you'd do anything to repay me?~ + questend.17d
++ ~Fine. Destroy it, if nothing else will please you.~ + questend.16
END

IF ~~ questend.17b
SAY ~No, I... I can't do that, <CHARNAME>. I'm sorry.~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18b
END

IF ~~ questend.17c
SAY ~I- I... *sigh* You're right. It would be wrong to distrust you, after what you've done for me.~
= ~Here... there's one more trick that I never showed Saitō-san when I gave the blade to him... hidden knives that fly from the edge. I should consider us lucky he never discovered that secret...~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18b
END

IF ~~ questend.17d
SAY ~I- I... *sigh* You're right. I did. I can't go back on that now. As long as you never turn it against the innocent... I'll trust you.~
= ~Here... there's one more trick that I never showed Saitō-san when I gave the blade to him... hidden knives that fly from the edge. I should consider us lucky he never discovered that secret...~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18b
END

IF ~~ questend.18a
SAY ~That was the last burden left on me. Well, there is one left... but I can only leave that one left to chance. Now... I really do feel free at last. Again, <CHARNAME>... thank you for everything.~
= ~From here on, I'll give everything I have for your quest. It's my turn to help you.~
IF ~~ EXIT
END

IF ~~ questend.18b
SAY ~That was the last burden left on me. Now... I really do feel free at last. Again, <CHARNAME>... thank you for everything.~
= ~From here on, I'll give everything I have for your quest. It's my turn to help you.~
IF ~~ EXIT
END

// BASILISKS

IF ~Global("C0AuraBasilisk","GLOBAL",1)~ basilisk
SAY ~Hey, um... I've heard there are basilisks in this region. I think I should scout ahead just in case.~
++ ~What? No! What if you get turned to stone?~ + basilisk.1
++ ~By all means. Just make sure to make some noise before you get petrified.~ + basilisk.1
++ ~No need. I'm fully prepared to deal with basilisks.~ + basilisk.2
END

IF ~~ basilisk.1
SAY ~Hee hee, don't worry. I've got these goggles, remember? They have protective lenses made for dealing with this sort of thing.~
= ~The Zoologist's Guild needs them for their researchers, or they'd have people get turned to stone all the time from dealing with basilisks and stuff. I'll be fine.~
IF ~~ DO ~SetGlobal("C0AuraBasilisk","GLOBAL",2)~ EXIT
END

IF ~~ basilisk.2
SAY ~Oh. Okay. I guess you have everything under control, then.~
IF ~~ DO ~SetGlobal("C0AuraBasilisk","GLOBAL",2)~ EXIT
END

// BALDURAN'S ISLE

IF ~Global("C0AuraShipwreck","GLOBAL",1)~ shipwreck
SAY ~*shiver* N-not again... not the sea again...~
++ ~Aura! Are you all right?~ + shipwreck1
++ ~Snap out of it! You're on shore. We're safe for now.~ + shipwreck1
++ ~(Ignore her)~ + shipwreck1.1
END

IF ~~ shipwreck1
SAY ~Cold... can't breathe... *gasp* <CHARNAME>, help, help me... I can't...~
++ ~I'm here, Aura. You're safe.~ + shipwreck1.1
++ ~Get up now or I'm leaving you behind!~ + shipwreck1.1
END

IF ~~ shipwreck1.1
SAY ~Ah...~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",2)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT
END

IF ~Global("C0AuraShipwreck","GLOBAL",2)~ shipwreck2
SAY ~S-sorry, <CHARNAME>. I didn't mean to fall apart like that. The shipwreck just brought back some bad memories... I'll be fine now, I think.~
++ ~Are you sure you're alright?~ + shipwreck3
++ ~Well, you're not. We don't know where we are now, so keep quiet and let's find some answers.~ + shipwreck5
END

IF ~~ shipwreck3
SAY ~No... not really. I'm still in a bit of shock... but I can promise I won't slow you down at least. We should look around this place, try and find our bearings, right? Hopefully I'll feel better when I'm dry again.~
++ ~You're right. But if you need some time to calm down, let me know.~ + shipwreck4
++ ~A bit of fresh air will do you some good, I think. Let's go.~ + shipwreck5
END

IF ~~ shipwreck4
SAY ~Sure... thanks, <CHARNAME>. It might sound a little selfish to say this given the situation we're in, but... I'm glad I'm not alone here, at least.~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",3)~ EXIT
END

IF ~~ shipwreck5
SAY ~Yeah, you're probably right... I'm right behind you.~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",3)~ EXIT
END

// LARSWOOD

IF ~Global("C0AuraLarswood","GLOBAL",1)~ larswood
SAY ~Ooh, I don't like this place, I *really* don't like this place...~
++ ~What's wrong?~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ + larswood1
++ ~Don't like nature much?~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ + larswood2
++ ~Whatever...~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ EXIT
END

IF ~~ larswood1
SAY ~See those? Those are *bear* tracks... oh, I hope we don't come across any bears in these woods...~
+ ~!Global("C0AuraHatesBears","GLOBAL",0)~ + ~Oh, that's right... you're terrified of bears...~ + larswood3
+ ~Global("C0AuraHatesBears","GLOBAL",0)~ + ~So what?~ + larswood4
++ ~Whatever...~ EXIT
END

IF ~~ larswood2
SAY ~I like nature just fine! B-but...~
IF ~~ + larswood1
END

IF ~~ larswood3
SAY ~I am *not* afraid of bears! I just... don't like them very much. Can we go somewhere else...?~
IF ~~ EXIT
END

IF ~~ larswood4
SAY ~I... I hate bears!~
IF ~~ EXIT
END

// SEES BEAR

IF ~Global("C0AuraHatesBears","GLOBAL",1)~ ihatebears
SAY ~Aaiiiee!~
++ ~What?! What's wrong?~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",2)~ + ihatebears2
END

IF ~~ ihatebears2
SAY ~B-b-BEAR! I-it's a bear! Oh, no, it's spotted us! Eek, let's run as fast as we can, <CHARNAME>!~
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~That's the quickest way of making sure the bear catches you, Aura. You're not supposed to run away from a bear, or else it'll think of you as prey.~ + ihatebears5
++ ~You're afraid of a *bear*?~ + ihatebears3
++ ~I don't like bears myself. You're right, let's run!~ + ihatebears4
END

IF ~~ ihatebears3
SAY ~D-don't joke about it. You have no idea... in Kozakura, they say there are bears in the mountains that eat people. And I'm so tiny, it'd swallow me in one gulp! Oh, curse it, why did I have to say it out loud? Now I'll be picturing it all day...~
IF ~~ + ihatebears4
END

IF ~~ ihatebears4
SAY ~Ooh, too late, I think it's coming at us. Y-you stay at the front, <CHARNAME>, I'll stand behind you. To shoot arrows at it, n-not to run away, of course!~
IF ~~ EXIT
END

IF ~~ ihatebears5
SAY ~E-easy for you to say, no bear would ever go after you! I'm sure I already look like a nice, delicious snack for any bear that sees me... *shudder*~
IF ~~ + ihatebears4
END

// SPIRIT BEAR

IF ~Global("C0AuraSummonedBears","GLOBAL",1)~ spiritbear
SAY ~Eep! Ghosts and bear were bad enough! Now it's a ghost of a bear? Couldn't you have summoned something nicer?~
IF ~~ DO ~SetGlobal("C0AuraSummonedBears","GLOBAL",2)~ EXIT
END

// HIGH HALL OF WONDERS

IF ~Global("C0AuraHighHallofWonders","GLOBAL",1)~ highhall
SAY ~Oh... for a moment there I almost thought I'd stepped in a Lantanese exhibition hall. Well, the ceiling's a lot higher than I'm used to, but, still. All these artifacts look just like the ones back home.~
++ ~How does this place compare to Lantan?~ + highhall.1
++ ~I don't suppose there's any of your creations here?~ + highhall.2
++ ~We're not here for sightseeing. Let's find what we're here for.~ + highhall.x
END

IF ~~ highhall.x
SAY ~B-but... oh, fine.~
IF ~~ DO ~SetGlobal("C0AuraHighHallofWonders","GLOBAL",2)~ EXIT
END

IF ~~ highhall.1
SAY ~It's prettier. The halls of Gond in Lantan aren't so bothered with making everything so nice and shiny. I guess the locals are more interested when things look more appealing.~
IF ~~ + highhall.3
END

IF ~~ highhall.2
SAY ~It's funny that you'd ask! I wouldn't be surprised, actually. A lot of my inventions have made it across the seas in the past. I don't see anything, though. I'd recognize my own work at a glance.~
IF ~~ + highhall.3
END

IF ~~ highhall.3
SAY ~See that Steam Dragon there? I remember making one of those when I was young. Oh, and that model of an airship looks just like the real things back home! Ooh, this is all so nostalgic!~
= ~Um. Ahem. Sorry, got carried away. We were here for something, weren't we? Don't mind me.~
IF ~~ DO ~SetGlobal("C0AuraHighHallofWonders","GLOBAL",2)~ EXIT
END

// ICE ISLAND

IF ~Global("C0AuraIceIsland","GLOBAL",1)~ iceisland
SAY ~*shiver* Ooh, chilly... I wish I'd known we'd end up in a place like this. I would've dressed better.~
= ~There's something interesting about this place, though... there's so much arcane energy around, even the air is full of it. It's definitely no ordinary island for sure.~
++ ~Interesting. Is there anything else you've noticed?~ + iceisland.1
++ ~How can you tell so easily? We've barely just arrived.~ + iceisland.2
++ ~Just stay alert. There's no telling what could be living here.~ + iceisland.3
END

IF ~~ iceisland.1
SAY ~Not much more to say... but all this power has to come from something... or somebody.~
IF ~~ + iceisland.4
END

IF ~~ iceisland.2
SAY ~My artificer credentials aren't just for show, you know... I've had enough experience with magical zones to know one when I see it... not that this one's like any I've seen up till now.~
IF ~~ + iceisland.4
END

IF ~~ iceisland.3
SAY ~Yeah, you're right, but... I can't help but wish that I could find out something more about this place, you know?~
IF ~~ + iceisland.4
END

IF ~~ iceisland.4
SAY ~Hey, just in case... if you find anything strange or interesting here, would you mind giving me a look? There's a lot I could learn from even the tiniest bit of magical residue.~
IF ~~ DO ~SetGlobal("C0AuraIceIsland","GLOBAL",2)~ EXIT
END

// AUTOMATON

IF ~Global("C0AuraAutomaton","GLOBAL",1)~ automaton
SAY ~Self-rejuvenating power core enabled... clockwork limbs and joints mobilized... yes, that's good... cognitive functions calibrated... target recognition, check... self-defense protocol, check... yep! Everything's working fine.~
= ~Hey, <CHARNAME>! Look over here!~
++ ~What is this... thing?~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
++ ~You can make golems, Aura?~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
++ ~Explain what this is. In normal words.~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
END

IF ~~ automaton1
SAY ~This is my family's trademark creation - a worker made of metals and clockwork that moves and can immediately understand basic verbal instructions! It's like a golem, but with less magic involved... well, usually. I may have used a rune or two to toughen him up.~
= ~It's a clockwork servant automaton - custom-designed by yours truly. We normally make these to help with mundane tasks around the city, like carrying heavy objects and the like - but I've finally managed to make it battle-ready. What do you think? Isn't he great?~
++ ~So it fights? How long can it last?~ + automaton2
++ ~As long as it's useful.~ + automaton2
END

IF ~~ automaton2
SAY ~Most of the time we build them out of cheap scrap metals, so they can't handle too much denting before they fall apart. This tall fellow's built of sturdier stuff, though, and should stay in one piece until he gets beaten down too hard.~
= ~Just, uh... keep in mind that he listens to *everything* I ask him to do, and only that - so if I get controlled or incapacitated, he'll either shut down or go crazy, so be careful not to stand too close in case that happens!~
IF ~~ EXIT
END

// SEWERS

IF ~Global("C0AuraSewers","GLOBAL",1)~ sewers
SAY ~K-kutobare! Oh, please excuse my language... I think I stepped in something nasty... eww...~
IF ~~ DO ~SetGlobal("C0AuraSewers","GLOBAL",2)~ EXIT
END

// IRON THRONE

IF ~Global("C0AuraIronThrone","GLOBAL",1)~ iron
SAY ~The "Iron" Throne, huh? Not a lot of iron in the making of it, is there? Plenty of marble and stained glass, though. Pretty, but not all that stable.~
IF ~~ DO ~SetGlobal("C0AuraIronThrone","GLOBAL",2)~ EXIT
END

// CATACOMBS

IF ~Global("C0AuraCatacombs","GLOBAL",1)~ iron
SAY ~Ugh, I was looking forward to spending time with the ancient knowledge of this library's scholars, not taking a walk in the resting place of the scholars themselves!~
IF ~~ DO ~SetGlobal("C0AuraCatacombs","GLOBAL",2)~ EXIT
END

// TAMOKO

IF ~Global("C0AuraTAMOKO0","GLOBAL",1)~ tamoko
SAY ~Ah... I- I'm sorry, <CHARNAME>. I thought I just saw the past flash before my eyes for a second there.~
++ ~You look stunned. What's wrong?~ DO ~SetGlobal("C0AuraTAMOKO0","GLOBAL",2)~ + tamoko1
++ ~Now's not the time for standing around, Aura. Let's get a move on.~ DO ~SetGlobal("C0AuraTAMOKO0","GLOBAL",2)~ EXIT
END

IF ~~ tamoko1
SAY ~It's nothing... I was just struck by how beautiful that lady was. She looks so much like... well, I don't think it matters. Let's just move on.~
++ ~I'm curious. Who does she remind you of?~ + tamoko2
++ ~If you say so.~ EXIT
END

IF ~~ tamoko2
SAY ~No, please don't ask. It's just a guess at the moment... listen, if we come across her again, I think you'll understand then, alright?~
IF ~~ EXIT
END

// PETRINE'S CAT

IF ~Global("C0AuraPetrineCat","GLOBAL",1)~ petrine
SAY ~Aaaah! Why?! Why would you do that? The poor kitty didn't do anything to you!~
IF ~~ DO ~SetGlobal("C0AuraPetrineCat","GLOBAL",2)~ EXIT
END

// DURLAG'S TOWER

IF ~Global("C0AuraDurlagTower","GLOBAL",1)~ durlags
SAY ~This... this place is terrifying, <CHARNAME>. It's like the restless dead are still here, feeling nothing but hate for the living...~
= ~*shiver* I wanted to see what secrets the tower of Durlag Trollkiller would be hiding, but now that I'm here... I feel like it's a terrible mistake to trespass. This... this whole feeling is wrong.~
++ ~I didn't know you were capable of sensitive to such things. What else can you feel?~ + durlags.1
++ ~Don't let a bad feeling slow you down. We're here to clear the place of anything it might have.~ + durlags.2
END

IF ~~ durlags.1
SAY ~(She tightly clasps her magatama with quivering hands) In Kozakura, it is said that spirits of the departed can remain bound to the place of their death by strong emotional ties, unfinished business or resentment towards those still alive. Whatever lingers here... has all three.~
= ~I'm beginning to understand why this place has been abandoned for so long. No one could possibly bear to live among such despair.~
IF ~~ DO ~SetGlobal("C0AuraDurlagTower","GLOBAL",2)~ EXIT
END

IF ~~ durlags.2
SAY ~I don't know, <CHARNAME>... monsters and traps, I could manage, but whatever we might find here... I'm afraid. I have a feeling it's not something we can simply get rid of so easily.~
IF ~~ DO ~SetGlobal("C0AuraDurlagTower","GLOBAL",2)~ EXIT
END

// NASHKEL CARNIVAL

IF ~Global("C0AuraCarnival","GLOBAL",1)~ petrine
SAY ~Ooh... pretty tents. Reminds me of the hot air balloons patterns back home.~
= ~I wonder if they've got any elephants. I haven't seen one since I traveled through Maztica a few years ago.~
IF ~~ DO ~SetGlobal("C0AuraCarnival","GLOBAL",2)~ EXIT
END

// GENDER CHANGE

IF ~Global("C0AuraSexChange","GLOBAL",1)~ gender
SAY ~Um.~
= ~Hmm.~
= ~You know, I'd be excited about the fact that we're in possession of an item that can cause instant metamorphosis and all, but c'mon, did I really have to be the one to test it?~
= ~Aw, no. It won't come off. Can we find a way to remove it already? It's not exactly easy to examine something that's locked tightly around your waist. And it's ugly.~
IF ~~ DO ~SetGlobal("C0AuraSexChange","GLOBAL",2)~ EXIT
END

IF ~Global("C0AuraSexChange","GLOBAL",4)~ gender2
SAY ~Oh, really, again? You're doing this on purpose, aren't you?~
= ~Ugh, this is so stupid. If you're going to trick me into wearing this, could you at least warn me beforehand so I get a chance to change into something a bit more form-fitting?~
IF ~~ DO ~SetGlobal("C0AuraSexChange","GLOBAL",5)~ EXIT
END

// FIRST CRAFTING NOTICE

IF ~Global("C0AuraCrafting","GLOBAL",2)~ crafting
SAY ~Hmm...~
++ ~You've been examining our gear for a while now, Aura. What's so interesting?~ DO ~SetGlobal("C0AuraCrafting","GLOBAL",3)~ + crafting1
END

IF ~~ crafting1
SAY ~Oh, well... I was just looking... I feel as though some of the things we've been carrying around could... use some improvements.~
IF ~PartyHasItemIdentified("sw2h03")~ DO ~SetGlobal("C0AuraImprove1","GLOBAL",2)~ + crafting1a
IF ~!PartyHasItemIdentified("sw2h03") PartyHasItemIdentified("bow07")~ DO ~SetGlobal("C0AuraImprove2","GLOBAL",2)~ + crafting1b
IF ~!PartyHasItemIdentified("sw2h03") !PartyHasItemIdentified("bow07") PartyHasItemIdentified("staf06") PartyHasItemIdentified("dagg09")~ DO ~SetGlobal("C0AuraImprove3","GLOBAL",2)~ + crafting1c
IF ~!PartyHasItemIdentified("sw2h03") !PartyHasItemIdentified("bow07") !PartyHasItemIdentified("staf06") !PartyHasItemIdentified("dagg09") PartyHasItemIdentified("misc48")~ DO ~SetGlobal("C0AuraImprove4","GLOBAL",2)~ + crafting1d
IF ~!PartyHasItemIdentified("sw2h03") !PartyHasItemIdentified("bow07") !PartyHasItemIdentified("staf06") !PartyHasItemIdentified("dagg09") !PartyHasItemIdentified("misc48") PartyHasItemIdentified("staf25")~ DO ~SetGlobal("C0AuraImprove5","GLOBAL",2)~ + crafting1e
IF ~!PartyHasItemIdentified("sw2h03") !PartyHasItemIdentified("bow07") !PartyHasItemIdentified("staf06") !PartyHasItemIdentified("dagg09") !PartyHasItemIdentified("misc48") !PartyHasItemIdentified("staf25") PartyHasItemIdentified("sw2h22")~ DO ~SetGlobal("C0AuraImprove6","GLOBAL",2)~ + crafting1f
END

IF ~~ crafting1a
SAY ~Take this big sword for example... there's a powerful curse on it, but I'm sure you already know that. I've been thinking of some way I could do something about it.~
++ ~Is that even possible? Can you do that?~ + crafting2
END

IF ~~ crafting1b
SAY ~Like... how about this monster of a bow? The one we found off the bandits in their camp? It's asking for some enhancements to give its shots a little more kick.~
++ ~Is that even possible? Can you do that?~ + crafting2
END

IF ~~ crafting1c
SAY ~We're stranded in an isle full of lycanthropes, right? Well, if we're going to fight them, I could give this staff mace we found a silver plating using that dagger as material. It wouldn't take long, and it might be an alternative in case we don't have anyone who knows how to use a knife in battle, you know?~
++ ~We'd need it quickly, Aura. Can you really do something like that so quickly?~ + crafting2
END

IF ~~ crafting1d
SAY ~Let's say... that idol there. It's pretty useless as it is. Maybe I can get a little power out of it if I took the time to tinker on it.~
++ ~That thing is extremely dangerous and probably cursed. Are you sure you want to work on it?~ + crafting2
END

IF ~~ crafting1e
SAY ~Like that heavy stone staff you bought at the discount store, for example. I have a feeling it might not be as useless as it appears to be. It just needs a bit of... work.~
++ ~Is that even possible? Can you do that?~ + crafting2
END

IF ~~ crafting1f
SAY ~Maybe that golden sword that somehow takes power from draining your purse? I've never seen anything like it before. There might be a thing or two I can do to make it a bit more efficient.~
++ ~Is that even possible? Can you do that?~ + crafting2
END

IF ~~ crafting2
SAY ~I'm an artificer, remember? It's my line of work to handle strange and wondrous items.~
= ~Tell you what, if there's anything I might be able to work with, I'll let you know after I've had the time to examine it. And if you're interested in how I might improve it, just give a holler, got it?~
IF ~~ EXIT
END

// Low reputation; unhappy

IF ~Global("C0AuraUnhappy","GLOBAL",1)~ unhappy
SAY ~I've got something I need to say to you, <CHARNAME>.~
++ ~Go ahead.~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.1
++ ~Speak if you must, but make it quick.~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.1
++ ~Not right now.~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.2
END

IF ~~ unhappy.1
SAY ~I just wanted to say that I don't think what you're doing is right. I didn't join you to use my skills to hurt people that don't deserve it. I don't know if that's what you've been meaning to do, but...~
= ~You're not... really doing all these things on purpose... are you?~
++ ~Some of my actions were necessary, but I don't find pleasure in harming others, no.~ + unhappy.3
++ ~I may be making a few mistakes. I hope I'll be able to make up for them.~ + unhappy.3
++ ~Of course I am. I enjoy making others fear me.~ + unhappy.4
++ ~I don't believe I ever asked for your opinion.~ + unhappy.4
END

IF ~~ unhappy.2
SAY ~No, I really think I ought to say it before things get any worse.~
IF ~~ + unhappy.1
END

IF ~~ unhappy.3
SAY ~Oh... well, that makes me feel a little better, at least. I'd hate to find out that the person I'm putting my trust into is, well... forget it.~
= ~I hope things will get better soon, at least a little bit. I'd still like to trust you, you know.~
IF ~~ EXIT
END

IF ~~ unhappy.4
SAY ~You're not the person I hoped you would be. I'm beginning to wonder if I was right to join you.~
= ~I'll stay for now... but if this keeps up, we'll both regret it.~
IF ~~ DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT
END

// Low reputation; angry, leaves (does not occur after Chapter 6)

IF ~GlobalLT("Chapter","GLOBAL",5) Global("C0AuraLeaves","GLOBAL",1)~ angry
SAY ~Are you happy with what you're doing, <CHARNAME>? With all these... terrible things you're forcing us to do?~
++ ~If you don't like it, you're welcome to leave.~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.1
++ ~What we're doing isn't so terrible.~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.2
++ ~It's all for the greater good. Just wait and see.~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.3
++ ~I don't care to know your opinion, gnome. You're here to be useful.~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.4
END

IF ~~ angry.1
SAY ~You're right about that. But I've one last thing to say before I go.~
IF ~~ + angry.5
END

IF ~~ angry.2
SAY ~If you really believe that, then I guess there's no point arguing with you at all.~
IF ~~ + angry.5
END

IF ~~ angry.3
SAY ~I don't believe you. Nothing could justify all these evil things you're doing.~
IF ~~ + angry.5
END

IF ~~ angry.4
SAY ~Don't like my opinion? That's fine. You won't need to hear them for much longer.~
IF ~~ + angry.5
END

IF ~~ angry.5
SAY ~You're awful. You're cruel. You're vile. And I can't stand it anymore.~
= ~I'd just walk away, but you'd probably try and kill me too. That's why...~
IF ~~ DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0aangry")~ EXIT
END

// PID

IF ~GlobalGT("C0AuraInsulted","GLOBAL",1)~ THEN BEGIN pidangry
 SAY ~What do you want?~ [C0BLANK]
 + ~!Global("C0AuraForgive","GLOBAL",1)~ + ~I'm sorry about offending you. Can we move past this?~ DO ~SetGlobal("C0AuraForgive","GLOBAL",1) SetGlobal("C0AuraInsulted","GLOBAL",0)~ + forgiveonce
 + ~Global("C0AuraForgive","GLOBAL",1)~ + ~I'm sorry about offending you. Can we move past this?~ + noforgive
 + ~Global("C0AuraWontCraft","GLOBAL",0)~ + ~Can you work on something for me?~ DO ~SetGlobal("C0AuraWontCraft","GLOBAL",1)~ + wontcraft
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END
 
IF ~~ forgiveonce
SAY ~Well, I hope you understand just how hurtful your words were. I never forget anything, and I definitely won't forget them.~
= ~But... I want to believe you mean what you're saying, so... okay, I'll forgive you.~
IF ~~ EXIT
END

IF ~~ noforgive
SAY ~You said that before. Why should I believe you a second time?~
IF ~~ EXIT
END

IF ~~ wontcraft
SAY ~I could. But I won't. Why should I, when you clearly don't have any respect for the things I make for you? So no, I won't.~
IF ~~ EXIT
END
 
IF ~Global("EndofBG1","GLOBAL",0) IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN BEGIN pid
 SAY ~How's it going?~ [C0BLANK]
 + ~Gender(Player1,FEMALE)
	!Alignment(Player1,MASK_EVIL)
	CheckStatGT(Player1,9,CHR)
	CheckStatGT(Player1,11,INT)
	GlobalGT("C0AuraTalk","GLOBAL",6)~ + ~(Flirt)~ + flirt
 + ~!Global("C0AuraBurstOrb","GLOBAL",0)
	GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~Do you have any Burst Orbs for me?~ DO ~SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 + ~PartyHasItem("c0agem1")~ + ~I'd like for you to take a look at this crystal.~ + crystal
 + ~Global("C0AuraCrafting","GLOBAL",3) Global("C0AuraAtWork","GLOBAL",0)~ + ~Do you have time to work on something for me?~ + craft1
 + ~Global("C0AuraCrafting","GLOBAL",3) !Global("C0AuraAtWork","GLOBAL",0)~ + ~Do you have time to work on something for me?~ + craft2
 + ~!Global("C0AuraHatesBears","GLOBAL",0) 
 Global("C0AuraAskBears","GLOBAL",0)~ + ~So... why are you afraid of bears?~ DO ~SetGlobal("C0AuraAskBears","GLOBAL",1)~ + bears
 + ~Global("C0AuraAskRunes","GLOBAL",0)~ + ~Where did you learn your ability to inscribe magical runes from?~ DO ~SetGlobal("C0AuraAskRunes","GLOBAL",1)~ + runes
 ++ ~I'd like to ask you a few things about Lantan.~ + lantan
 + ~GlobalGT("C0AuraTalk","GLOBAL",8)~ + ~I'd like to ask you a few things about Kara-Tur.~ + karatur
 + ~GlobalGT("C0AuraQuest","GLOBAL",8)
	Global("C0AuraAskExplosives","GLOBAL",0)~ + ~You know how to make explosive weapons, right? Could you create some to help us in our battles?~ DO ~SetGlobal("C0AuraAskExplosives","GLOBAL",1)~ + explosives
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I'd like you to stop talking to me for a while.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END

IF ~~ pid2
 SAY ~Sure. What else do you need?~
 + ~Gender(Player1,FEMALE)
	!Alignment(Player1,MASK_EVIL)
	CheckStatGT(Player1,9,CHR)
	CheckStatGT(Player1,11,INT)
	GlobalGT("C0AuraTalk","GLOBAL",6)~ + ~(Flirt)~ + flirt
 + ~!Global("C0AuraBurstOrb","GLOBAL",0)
	GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~Do you have any Burst Orbs for me?~ DO ~SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 + ~PartyHasItem("c0agem1")~ + ~I'd like for you to take a look at this crystal.~ + crystal
 + ~Global("C0AuraCrafting","GLOBAL",3) Global("C0AuraAtWork","GLOBAL",0)~ + ~Do you have time to work on something for me?~ + craft1
 + ~Global("C0AuraCrafting","GLOBAL",3) !Global("C0AuraAtWork","GLOBAL",0)~ + ~Do you have time to work on something for me?~ + craft2
 + ~!Global("C0AuraHatesBears","GLOBAL",0) 
 Global("C0AuraAskBears","GLOBAL",0)~ + ~So... why are you afraid of bears?~ DO ~SetGlobal("C0AuraAskBears","GLOBAL",1)~ + bears
 + ~Global("C0AuraAskRunes","GLOBAL",0)~ + ~Where did you learn your ability to inscribe magical runes from?~ DO ~SetGlobal("C0AuraAskRunes","GLOBAL",1)~ + runes
 ++ ~I'd like to ask you a few things about Lantan.~ + lantan
 + ~GlobalGT("C0AuraTalk","GLOBAL",8)~ + ~I'd like to ask you a few things about Kara-Tur.~ + karatur
 + ~GlobalGT("C0AuraQuest","GLOBAL",8)
	Global("C0AuraAskExplosives","GLOBAL",0)~ + ~You know how to make explosive weapons, right? Could you create some to help us in our battles?~ DO ~SetGlobal("C0AuraAskExplosives","GLOBAL",1)~ + explosives
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I'd like you to stop talking to me for a while.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
END

IF ~~ end
SAY ~Alright. We'll talk later.~
IF ~~ EXIT
END

IF ~~ makeburstorb
SAY ~Yep. Here you go, have fun. Just be careful!~
IF ~~ EXIT
END

IF ~~ crystal
SAY ~Oh, interesting! There's magic practically radiating off its surface... give me a moment to examine it.~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",1)
TakePartyItem("c0agem1") DestroyItem("c0agem1") GiveItemCreate("c0autt02",Player1,1,0,0)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT
END

IF ~Global("C0AuraCrystal","GLOBAL",1)~ THEN BEGIN crystal2
SAY ~I ran some experiments on the ice crystal you found, and the results match up with what I've studied about extraplanar powers.~
= ~The crystal that you found was an essence of ice, from the Para-Elemental Plane of Ice. I'm not sure how it ended up in this plane, but it likely has something to do with the magic that affects that ice island.~
= ~It's not very useful on its own, though. I wish I had the resources to make something more interesting out of it, but this is what I could put together with what I had. Here, take it.~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",2)~ EXIT
END

IF ~~ runes
SAY ~My uncle Marius - have I told you about him? He's one of the few master arcanists who calls Lantan home.~
= ~When I visited my younger brother, who studies at his tower, I used to peek at my uncle's spellbook when he wasn't looking. Well... I've always had a good memory, so I tried inscribing what I saw on magical runes and trying to use magic myself.~
= ~I got caught before I could cast a single spell, but my uncle was delighted at seeing how quickly I picked up on the skill, just by observing. So he taught me how to do it properly, and it's been a skill I've been developing since.~
+ ~Class("C0Aura",MAGE_ALL)~ + ~You're capable of casting spells normally as well. Is it somehow different?~ + runes.2
+ ~!Class("C0Aura",MAGE_ALL)~ + ~Would you be interested in becoming a proper mage?~ + runes.1
++ ~Let's talk about something else.~ + pid2
++ ~That's all I wanted to ask.~ + end
END

IF ~~ runes.1
SAY ~Well... I've considered it. It's a nice thought, but... my talents are in creation. I know that. I wouldn't abandon my current skills, even for magic.~
= ~If I had been born under different circumstances, that may have been a path I would've taken, but... that's not me. I'm happy with what I do, so... I don't think it'll ever happen. Though I still like to imagine it sometimes.~
++ ~Let's talk about something else.~ + pid2
++ ~That's all I wanted to ask.~ + end
END

IF ~~ runes.2
SAY ~Well... the difference is in the method, I suppose. Like two formulae that result in the same answer... that sort of thing.~
= ~Rune magic is... different. I can reshape the energies, and turn them into magic of my own making. But it is... limited, in what it's capable of. I can understand why most mages don't practice it, but... for those like me, it's a skill worth having.~
++ ~Let's talk about something else.~ + pid2
++ ~That's all I wanted to ask.~ + end
END


IF ~~ lantan
SAY ~Okay, I'll do my best to answer. Shoot.~
++ ~I hear Lantan has most advanced technology in the realms. Is that true?~ + lantan.tech
++ ~I've heard that smokepowder originated from Lantan.~ + lantan.smokepowder
++ ~Why haven't the Lantanese expanded outside of their islands?~ + lantan.islands
++ ~Is your family prominent in Lantan?~ + lantan.family
+ ~PartyHasItem("c0abadge")~ + ~I noticed that your insignia says "Aurelia M. Glimmershine". Is that your real name?~ + lantan.name
++ ~Let's talk about something else.~ + pid2
++ ~We're done for now.~ + end
END

IF ~~ lantan.tech
SAY ~'Most advanced' is pushing it a little. We're not the precursors to all the world's creations. We're just more interested in the sciences and inner workings of the multiverse than everyone else.~
= ~And... operating purely on logic can only bring us so far. We can't fully understand the mysteries of the Weave, for example, so we try to achieve results through other means instead.~
= ~That's not to say we're completely ignorant to magic and how it works. The Island of Orlil is inhabited by our mages and sorcerers, who spend their lives practicing and researching their magical talents.~
++ ~Have you been to the Island of Orlil?~ + orlil
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ orlil
SAY ~Of course! I travelled there often to consult the arcanists there. Magic has always been the one wonder I've never been able to find all the answers I wanted.~
= ~Also... my uncle, Marius Lightwinder, lives in a wizard's tower there, with my brother Eridanus, who studies under him. I visited them often.~
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.smokepowder
SAY ~Smokepowder... it was Gond the Wonderbringer who gave us the knowledge, when he walked among us during the Time of Troubles. I was only a child then, but... I remember seeing it for the first time... and what it could do.~
++ ~Why have the Lantanese kept the secret of smokepowder to themselves?~ + lantan.smokepowder2
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.smokepowder2
SAY ~You wouldn't understand, <CHARNAME>, unless you saw what it could do for yourself. Smokepowder is a dangerous fusion of magic and alchemy, a weapon designed to explode and reduce everything to dust. We could never share such dangerous knowledge with anyone.~
= ~Even in Lantan, its creation is restricted to the clergymen of Gond, and sanctioned to few. It's simply that dangerous. If the wrong group got a hold of the secret, it... well, the end of the world would not be out of the question, let me just put it that way.~
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.islands
SAY ~We have, just not... openly. Our people have settled in other places, like Chult, for example. It's just that we don't really see the need to expand our nation across the realm.~
++ ~Why not?~ + lantan.islands2
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.islands2
SAY ~Well... the truth is, despite our advancements, we're not as powerful as you might believe. We're few in number, and most aren't skilled at politics or warfare. The majority of Lantanese are happy staying in their workshops for all their lives.~
= ~I guess you could say that our seclusiveness is one of the things keeping us safe. If we tried expanding past the Trackless Sea, other nations may find us a threat. Lantan doesn't want war with the rest of the world. It's better for everyone involved if we keep to ourselves.~
= ~The outside world considers us a bunch of harmless eccentrics, and so they leave us to our own devices. Peaceful coexistence and all that.~
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.family
SAY ~Well... yes, I suppose. The Glimmershine name is old. It doesn't count for much, since Lantan's not big on station, but we're respected, and my father's got a place on the Gondar council. We make our voices heard, as far as it goes.~
++ ~What other families of note are there?~ + lantan.family2
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.family2
SAY ~There's our cousins, the Mideveningwalkers... they pioneered the technique of lightning and steam-powered technology. There's also the Lightwinders, who have more magical talents in their bloodline than all the other families combined.~
= ~Besides that, there's other noteworthy names like the Dinelstrands, Spindlers and Glinkles... but I'm not all too familiar with them.~
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.name
SAY ~Ehh... yep, it is. I'd prefer it if you didn't call me that, though. I personally find it rather silly.~
+ ~CheckStatGT(Player1,14,INT)~ + ~"Aurelia" means "golden", doesn't it? Is there a story behind that?~ + lantan.name1
++ ~What does your middle initial stand for?~ + lantan.name2
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ lantan.name1
SAY ~My mother was convinced I was a lucky child. I was the only one of my siblings to have gold-colored eyes, and she took it as a good omen.~
= ~I couldn't get it right at first, though. I guess 'Aurelia' was a bit too hard for a toddler to say. My mother said I kept repeating "Aura" over and over again and she thought it was cute. Eventually it stuck.~
++ ~What does your middle initial stand for?~ + lantan.name2
END

IF ~~ lantan.name2
SAY ~"Minerva". That was my grandmother's name. She was heralded as the greatest mind of the Glimmershine family during her time.~
= ~I wish I could've known her. She left Lantan to explore other lands before I was born, and no one's heard from her since the Time of Troubles. It's like she just... disappeared entirely.~
= ~My father gave me the name in her memory. I think he knew her well, and he misses her greatly... he says I have eyes just like hers. I've made an effort to find her whereabouts since I left on my own journey, but... no luck yet.~
++ ~I see. There's something else I'd like to ask.~ + lantan
++ ~That's all for now.~ + end
END

IF ~~ karatur
SAY ~Sure, ask away. I'll tell you what I can.~
++ ~Tell me the basic geography of Kara-Tur.~ + karatur.geography
++ ~What was it like living in Kozakura?~ + karatur.living
+ ~Class("C0Aura",CLERIC_ALL)~ + ~You're capable of using divine magic, but you don't invoke a god's name. How is that possible?~ + karatur.priestess
+ ~Global("C0AuraKaraLanguage","GLOBAL",0)~ + ~Can you speak the Kara-Turan language?~ DO ~SetGlobal("C0AuraKaraLanguage","GLOBAL",1)~ + karatur.language
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,1)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb1
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,2)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb2
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,3)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb3
+ ~GlobalGT("C0AuraQuest","GLOBAL",12) Global("C0AuraAskReika","GLOBAL",0)~ + ~Who is Amanokagami Reika?~ DO ~SetGlobal("C0AuraAskReika","GLOBAL",1)~ + reika
+ ~GlobalGT("C0AuraQuest","GLOBAL",12) Global("C0AuraAskTheWay","GLOBAL",0)~ + ~Do you follow the Way?~ DO ~SetGlobal("C0AuraAskTheWay","GLOBAL",1)~ + theway
+ ~GlobalGT("C0AuraTamoko","GLOBAL",3) Global("C0AuraAskTamoko","GLOBAL",0)~ + ~Did you know about Tamoko being Reika's niece?~ + reika.tamoko
++ ~Let's talk about something else.~ + pid2
++ ~We're done for now.~ + end
END

IF ~~ karatur.priestess
SAY ~Well... it's complicated. The deities in Kozakura aren't quite like those we're more familiar with. It's more... akin to following a particular ideal rather than a named entity. I know it sounds strange, but... it's more akin to asking the natural forces of the world to heal, or protect, or hurt. There's no specific deity to call on.~
= ~What's strange to me is that... even after leaving Kozakura, the prayers I learned from Reika-san are still answered, and they haven't diminished at all, even though it's different outside of Kara-Tur...~
= ~I can't really explain that. I'm not a true priestess, I'm just someone who learned the right prayers and became familiar with the voices. Only an educated follower of the Way might know.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.geography
SAY ~Kara-Tur lies in the far east. You might know some of the countries that fall under it. Shou Lung, Tabot, Malatra, Wa, Kozakura... and that's just a few.~
= ~Kozakura's a little different from the other countries. It's composed of large islands, much like Lantan. I lived in Mikedono, one of the four major islands, located in the south.~
= ~It's not as large or as wealthy as Dojyu, the capital, but it's still a beautiful place with endless forests and mist-filled valleys.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.living
SAY ~It... well, it wasn't as easy as I may have made it sound in my recollections. Outsiders, or 'gaijin' as they are called, are seldom welcomed with open arms... and non-humans, especially so.~
= ~I was lucky that the lower castes tended to be less suspicious, and many took pity on me for my... condition at the time. It helps that those skilled in crafts, even foreigners, are treated with more respect. I was able to earn myself a place, at least.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.language
SAY ~Well, first you need to keep in mind there's more than just one language. I lived in southern province of Kozakura, and learned how to speak the Kozakuran dialect. I've also picked up a bit of High Shou, but... I'm barely conversational in it.~
= ~From what I've learned though, the Kozakura and Wa languages are closely related. Actually, Kozakuran and Wa-an are technically just different dialects of the Han language. It's... slightly complicated.~
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,1)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb1
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,2)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb2
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,3)~ + ~Can you say something in Kozakuran?~ + karatur.language.proverb3
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.language.proverb1
SAY ~Okay... this one's a Kozakuran proverb, and one of my favorites: "I no naka no kawazu, taikai wo sirazu." It means: "A frog in the well knows not the great ocean."~
= ~It's a lesson in humility and enlightenment. A frog in a well may think it's the biggest and strongest, but if you bring him to the ocean, he'll realize just how small he is.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.language.proverb2
SAY ~You might be familiar with this phrase's meaning: "Isseki-nichō". It means "two birds with one stone."~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ karatur.language.proverb3
SAY ~"Neko ni koban" - "gold coins to a cat." It's a lesson in giving treasures to those who don't value it. There's another phrase with the same meaning: "Buta ni sinjyu". It means "pearls before swine". I just like cats better.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ reika
SAY ~Reika-san was a priestess at a shrine on Mikedono, the Kozakuran island that I washed ashore on. I was a lost child when I first came to on a foreign land, confused, with most of my memory gone... but Reika-san treated me kindly, taught me the Kara-Turan language and acted like a mother to me.~
= ~She was a solitary sort, who lived alone and spent her days taking care of her shrine and following the Way of Enlightenment, unlike most Kozakurans I knew, who prayed to the Eight Million Gods. Before she died, she asked that I act as a messenger to her niece, who abandoned the Way...~
+ ~GlobalGT("C0AuraTamoko","GLOBAL",1) Global("C0AuraAskTamoko","GLOBAL",0)~ + ~Did you know Tamoko was her niece?~ + reika.tamoko
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ reika.tamoko
SAY ~No, I had no idea. Tamoko-san's name was completely unfamiliar to me when I heard it. She must have chosen it after she left Kozakura, as a way of distancing it from her past self... I only knew that Reika-san's niece had abandoned the Way, and she wanted to guide her back.~
= ~I never would have thought Tamoko-san would be that person, or that she would be connected to your enemy somehow.~
++ ~I see. There's something else I'd like to ask.~ DO ~SetGlobal("C0AuraAskTamoko","GLOBAL",1)~ + karatur
++ ~That's all for now.~ DO ~SetGlobal("C0AuraAskTamoko","GLOBAL",1)~ + end
END

IF ~~ theway
SAY ~Well... insofar as someone can claim to follow a faith they barely understand, then... yes, I suppose I do. The Way is not the same as worshipping a named deity. It's a philosophy, a belief that all things exist in harmony.~
= ~It's... not incompatible with belief in logic and reason. The Way dictates that there is a natural balance that should be preserved. The Lantanese, too, believe there is an equilibrium to the science of the realms. The Lantanese, too, believe that all things exist in equilibrium and disrupting that leads to chaos. They're far from identical, but it's possible to believe in one without contradicting the other.~
= ~If you want a complex answer as to whether or not I really follow the Way... the best I can put it is that I have adapted certain ideas from the Way into my own personal philosophy. I hope that's enough to satisfy you.~
++ ~I see. There's something else I'd like to ask.~ + karatur
++ ~That's all for now.~ + end
END

IF ~~ notalk
SAY ~Well, that's rude. Yeesh!~
IF ~~ EXIT
END

IF ~~ retalk
SAY ~Well, alright. Only because you asked nicely.~
IF ~~ EXIT
END

IF ~~ bears
SAY ~I. Am. Not. Afraid. Of. Bears.~
++ ~Okay... why do you not like bears, then?~ + bears1
++ ~Suuuure.~ + bears1
++ ~Alright then. Forget I asked.~ EXIT
END

IF ~~ bears1
SAY ~I just... don't like them. We don't have them in Lantan, and the first time I saw one up close, it was horrifying. They're so... big, and yet they run so fast, and when they open their huge mouths to roar or make a yawn... yeesh...~
= ~Well, there was this one time... while I was living in Kozakura, I was out in the forests collecting materials when a bear leapt out at me. I couldn't fight my way out of a rabbit hole back then... if it weren't for kindly locals scaring it off, I might've been eaten alive right there.~
= ~Anyways, I've never liked bears, but ever since then I can't even look at one without panicking. That's the gist of it. Now can we stop talking about bears?~
IF ~~ EXIT
END

IF ~~ explosives
SAY ~I- yes, I suppose I could. I wouldn't be able to make something as powerful as the trap I used before anytime soon, but handheld explosives... that's easy enough for me.~
= ~I'm not fond of making weapons. Explosive weapons, especially so. But I trust you, <CHARNAME>, not to abuse what they can do... you've helped me, after all, and you already know a few of my secrets.~
= ~So... okay. If you want me to craft any explosives, just tell me and I'll get to work. But I only have my alchemical gear to work with, so I can't make as many as I would with a proper laboratory kit... two or three a day at most, I think. Less than the number of potions I could make using that time.~
= ~Just... just remember, this stuff is meant to destroy things. Buildings, monsters, people... it doesn't make a difference. I don't want to make more than I have to.~
IF ~~ EXIT
END

// FLIRTS

// Flirt

IF ~~ flirt
 SAY ~Mm-hmm?~
+ ~RandomNum(3,1)~ + ~What're you working on today? Anything interesting?~ + f1.1 
+ ~RandomNum(3,2)~ + ~What're you working on today? Anything interesting?~ + f1.2
+ ~RandomNum(3,3)~ + ~What're you working on today? Anything interesting?~ + f1.3
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,1)~ + ~(Lift her off her feet)~ + f2.1
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,2)~ + ~(Lift her off her feet)~ + f2.2
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,3)~ + ~(Lift her off her feet)~ + f2.3
+ ~RandomNum(3,1)~ + ~(Pinch her cheeks)~ + f3.1
+ ~RandomNum(3,2)~ + ~(Pinch her cheeks)~ + f3.2
+ ~RandomNum(3,3)~ + ~(Pinch her cheeks)~ + f3.3
+ ~RandomNum(3,1)~ + ~(Poke her nose)~ + f4.1
+ ~RandomNum(3,2)~ + ~(Poke her nose)~ + f4.2
+ ~RandomNum(3,3)~ + ~(Poke her nose)~ + f4.3
+ ~RandomNum(3,1)~ + ~(Wink at her)~ + f5.1
+ ~RandomNum(3,2)~ + ~(Wink at her)~ + f5.2
+ ~RandomNum(3,3)~ + ~(Wink at her)~ + f5.3
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,1)~ + ~(Impress her with a display of magic)~ + f6.1
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,2)~ + ~(Impress her with a display of magic)~ + f6.2
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,3)~ + ~(Impress her with a display of magic)~ + f6.3
+ ~RandomNum(3,1)~ + ~(Tell her a joke)~ + f7.1
+ ~RandomNum(3,2)~ + ~(Tell her a joke)~ + f7.2
+ ~RandomNum(3,3)~ + ~(Tell her a joke)~ + f7.3
+ ~RandomNum(3,1)~ + ~(Tug on her hair gently)~ + f8.1
+ ~RandomNum(3,2)~ + ~(Tug on her hair gently)~ + f8.2
+ ~RandomNum(3,3)~ + ~(Tug on her hair gently)~ + f8.3
+ ~RandomNum(3,1)~ + ~(Watch her)~ + f9.1
+ ~RandomNum(3,2)~ + ~(Watch her)~ + f9.2
+ ~RandomNum(3,3)~ + ~(Watch her)~ + f9.3
+ ~RandomNum(3,1)~ + ~(Tickle her)~ + f10.1
+ ~RandomNum(3,2)~ + ~(Tickle her)~ + f10.2
+ ~RandomNum(3,3)~ + ~(Tickle her)~ + f10.3
+ ~RandomNum(3,1)~ + ~You've got such pretty eyes.~ + f11.1
+ ~RandomNum(3,2)~ + ~You've got such pretty eyes.~ + f11.2
+ ~RandomNum(3,3)~ + ~You've got such pretty eyes.~ + f11.3
+ ~RandomNum(3,1)~ + ~Fancy a spot of tea?~ + f12.1
+ ~RandomNum(3,2)~ + ~Fancy a spot of tea?~ + f12.2
+ ~RandomNum(3,3)~ + ~Fancy a spot of tea?~ + f12.3
+ ~RandomNum(3,1)~ + ~(Kiss her nose)~ + f13.1
+ ~RandomNum(3,2)~ + ~(Kiss her nose)~ + f13.2
+ ~RandomNum(3,3)~ + ~(Kiss her nose)~ + f13.3
++ ~It's nothing.~ EXIT
END

IF ~~ f1.1
SAY ~It's a surprise!~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~You'll see. People I like get to find out early! That, um, includes you, by the way.~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~Just wait. It'll blow your mind when I make my grand reveal! Hee hee.~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~Wh-hey! Put me down! I don't like heeeeights!~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~(She ducks from your grasp, doing a nimble roll out of reach while laughing!)~
= ~Nope!~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~(You are shocked to discover that she feels incredibly heavy for her size. As you raise her with difficulty, various tools and bits of metal spill out from her pockets and sleeves.)~
= ~Hey! My equipment! You'd better help me pick them back up, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~Ow! Easy on the cheeks, <CHARNAME>!~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~I wish Muffy had soft and puffy cheeks for *me* to pinch when I'm bored...~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~You're just like my big sister. She wouldn't let a day go by without giving me a pinch before leaving the house.~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~*giggle*~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~Muuh! (She sticks her tongue out in mock defiance)~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~C-c-careful... I'm about to sneeze!~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~What? Do you know some thing I don't? C'mon, tell meeee!~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~(Too occupied in examining a pair of strange copper rods, she doesn't even notice you)~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~(She winks back in response)~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~Ooh, do that again!~
IF ~~ EXIT
END

IF ~~ f6.2
SAY ~Aah, stop showing off, <CHARNAME>... you're making me envious...~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~Magic is so beautiful, but I just can't figure it out...~
IF ~~ EXIT
END

IF ~~ f7.1
SAY ~Oh, that's clever!~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~I'll remember that one for sure!~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~Eh-hehehehe!~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~H-hey-hey-hey! You'll damage the roots! Stoooop!~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~Hmm, I've been thinking of dyeing my hair another color. Blue, maybe. Or silver. Ooh, or maybe periwinkle! That'd be cute.~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~Hmph, treat my hair with some more respect! I make sure to take extra special care of it.~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~(Aura is busy painting Muffy's face with a tiny brush. Her hand moves slowly and with precision, drawing near perfect circles around the metal squirrel's eyes.)~
= ~Ooh, now you look cute as can be, don't you? Yes, you do! Now, sit on my shoulder and don't move, or you'll get paint all over the place...~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~(Aura is fiddling with her bow, the Sunshooter, using a long, thin implement to tighten a loose screw in one of the bow's jointed limbs.)~
= ~Almost had that part fall off in our last fight. Good thing it didn't... that would've been dangerous. I should take better care of my battle gear.~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~(Aura looks back with you with mild bewilderment.)~
= ~What? Did I get grease on my face again?~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~No-no-no-nononono! Stop! *giggle*~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~Ah, no! Muffy, save meee!~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~Eek, not the armpits, anywhere but- ahahaha!~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~My parents did say gold-colored eyes are a lucky omen for the family...~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~Oh—! That's very sweet of you to say, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~Sometimes I'm afraid it clashes with my pink hair. I guess I don't have to worry.~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~Oh, always! Let me set up my teapot!~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~Okay, but we're using my blend, got it? And my teacups!~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~Mmm, well, I could sure use a break right now. Why not?~
IF ~~ EXIT
END

IF ~~ f13.1
SAY ~(She freezes in surprise, and you feel her breath on your chin as you watch her cheeks go red.)~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~(She blinks - you can sense her tension, as though she was instinctively about to step back, but instead closes her eyes to accept your affection.)~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~(Your lips press gently against the warm bridge of her nose. When you break away, Aura looks you in the eyes, lips quivering nervously.)~
IF ~~ EXIT
END

IF ~~ craft1
SAY ~Sure, I've got the time for a commission. What needs upgrading?~
+ ~Global("C0AuraImprove1","GLOBAL",2) PartyHasItemIdentified("sw2h03")~ + ~\[Cursed Berserking Sword +3\] Can you do something about the curse on this two-handed sword?~ + ragesword
+ ~Global("C0AuraImprove2","GLOBAL",2) PartyHasItemIdentified("bow07")~ + ~\[The Dead Shot +2\] Can you add any enhancements onto this magical longbow?~ + deadshot
+ ~Global("C0AuraImprove3","GLOBAL",2) PartyHasItemIdentified("staf06") PartyHasItem("dagg09")~ + ~\[Staff Mace +2 + Silver Dagger\] What is it about the Staff Mace that interests you?~ + staffmace
+ ~Global("C0AuraImprove4","GLOBAL",2) PartyHasItemIdentified("misc48")~ + ~\[Idol\] The idol doesn't seem to do much. Have you discovered some secret to it?~ + idol
+ ~Global("C0AuraImprove5","GLOBAL",2) PartyHasItemIdentified("staf25")~ + ~\[Ossifier\] Can you somehow make this useless stone staff less useless?~ + ossifier
+ ~Global("C0AuraImprove6","GLOBAL",2) PartyHasItemIdentified("sw2h22")~ + ~\[Gold Digger +1\] Is there any way to make this sword create gold rather than destroy it?~ + golddigger
++ ~On second thought, there's nothing I need worked on right now.~ + pid2
END

IF ~~ craft2
SAY ~I'm still busy working on your other commission at the moment. I'll give you a nudge when it's ready!~
IF ~~ EXIT
END

IF ~~ craft3
SAY ~Anything else you need looking at?~
+ ~Global("C0AuraImprove1","GLOBAL",2) PartyHasItemIdentified("sw2h03")~ + ~\[Cursed Berserking Sword +3\] Can you do something about the curse on this two-handed sword?~ + ragesword
+ ~Global("C0AuraImprove2","GLOBAL",2) PartyHasItemIdentified("bow07")~ + ~\[The Dead Shot +2\] Can you add any enhancements onto this magical longbow?~ + deadshot
+ ~Global("C0AuraImprove3","GLOBAL",2) PartyHasItemIdentified("staf06") PartyHasItem("dagg09")~ + ~\[Staff Mace +2\] What is it about the Staff Mace that interests you?~ + staffmace
+ ~Global("C0AuraImprove4","GLOBAL",2) PartyHasItemIdentified("misc48")~ + ~\[Idol\] The idol doesn't seem to do much. Have you discovered some secret to it?~ + idol
+ ~Global("C0AuraImprove5","GLOBAL",2) PartyHasItemIdentified("staf25")~ + ~\[Ossifier\] Can you somehow make this useless stone staff less useless?~ + ossifier
+ ~Global("C0AuraImprove6","GLOBAL",2) PartyHasItemIdentified("sw2h22")~ + ~\[Gold Digger +1\] Is there any way to make this sword create gold rather than destroy it?~ + golddigger
++ ~On second thought, there's nothing I need worked on right now.~ + pid2
END

IF ~~ craft4
SAY ~I'll get to it as soon as I'm able. Oh, and I should remind you that I only have time for one commission at a time, so... you should be patient if you want something else done in the meantime.~
IF ~~ EXIT
END

IF ~~ ragesword
SAY ~Mmm, curses are tricky. I don't think I'd be able to remove it... well, I could, but not without stripping all the power from the blade with the curse.~
= ~Now, if I attached the right rune to it, on the other hand... I might have a few things I can try to make the risk a bit more manageable for the user.~
++ ~How manageable are we talking here?~ + ragesword2
END

IF ~~ ragesword0
SAY ~Mmm, probably for the best. That thing gives me the creeps anyway.~
IF ~~ + craft3
END

IF ~~ ragesword2
SAY ~Well, let's put it this way. If you're healthy, it should work just like a normal, powerful sword. But I can only suppress the rage... so if the person swinging gets too badly hurt, well...~
= ~All that bottled up power has to be released somehow, you know? You'd probably become inhumanly strong, but... that sort of thing can't be good for your body tissue. It'll hurt.~
++ ~In other words, the wielder will be fine if they stay healthy, but they'll go into an even more suicidal rage if they get hurt?~ + ragesword3
++ ~I don't think I like the sound of that. Never mind.~ + ragesword0
END

IF ~~ ragesword3
SAY ~You got it right. I can't say it'll be safe... or cheap, for that matter. But it'd be more controllable this way.~
++ ~Let's do it. How long will it take?~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",1) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("sw2h03") DestroyItem("sw2h03")~ + ragesword4
++ ~I don't think so. Let's leave it as it is.~ + ragesword0
END

IF ~~ ragesword4
SAY ~Mmm... it won't be simple. I'll have to try a few things just to make sure the strain doesn't just rip the user's muscles apart. I'd say... give me a week at least just to be safe.~
IF ~~ + craft4
END

IF ~~ deadshot
SAY ~Ooh, I like that bow. It's a little too big and unwieldy for me, but I'm just itching to do some work on it...~
++ ~What sort of work were you thinking of?~ + deadshot1
END

IF ~~ deadshot0
SAY ~Alright. It'd be a poor enhancement if you couldn't even draw it afterwards, I suppose. If you think you can handle it, though, just ask again.~
IF ~~ + craft3
END

IF ~~ deadshot1
SAY ~Mmm... well, it's a pretty strong weapon already. It's got incredible force behind its shots, but it still has its limits... but if I fortified the limbs with the right material, well...~
= ~It'd be heavier, slower, but stronger... more accurate, too. It'd be more like a miniature ballista than anything else. If you don't mind losing speed for more power, then let me work on it. I'd imagine you'd need a strong arm to be able to draw it once I'm done.~
++ ~More power sounds good - I'll trust in my own strength. Get to work.~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",2) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",THREE_DAYS) TakePartyItem("bow07") DestroyItem("bow07")~ + deadshot2
++ ~I'd rather not. It's a strong enough weapon as it is.~ + deadshot0
END

IF ~~ deadshot2
SAY ~In that case, I'll need to scavenge together some material. Give me three days and I'll make you a weapon to behold, just wait!~
IF ~~ + craft4
END

IF ~~ staffmace
SAY ~Oh, well... It's an interesting weapon already, as a staff that can transmute into a mace. I've been thinking, though...~
= ~I could, maybe, use the silver from that dagger we found to add a plating to the weapon so that we might have a decent weapon to use against lycanthropes. I'd have to melt down the dagger, of course, but if no one knows how to use it well to begin with...~
= ~It's an idea, anyway. I thought perhaps it might be helpful to us... and it wouldn't take long at all.~
++ ~I'd rather a blunt weapon over a dagger for fighting lycanthropes. How long would the process take?~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",3) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",EIGHT_HOURS) TakePartyItem("staf06") DestroyItem("staf06") TakePartyItem("dagg09") DestroyItem("dagg09")~ + staffmace1
++ ~No need. A dagger suits me fine.~ + staffmace0
END

IF ~~ staffmace0
SAY ~Fair enough. Like I said, it's just an idea. If you're fine with the weapons as they are, it's your call.~
IF ~~ + craft3
END

IF ~~ staffmace1
SAY ~Not long. I've done this many times before, and I have the tools I need right now, fortunately. If we take a few hours to rest, I'm sure I'll have a shiny, improved weapon ready for you.~
IF ~~ + craft4
END

IF ~~ idol
SAY ~The idol of Kozah? Oh, yep. I can't help but think that there's more to it than just a unique carving. There's definitely some magic in it somewhere, it just needs to be awakened.~
= ~Dangerous, though. It could cause thunderbolts to rain down on us if I mess with it too much. Still, I think I could at least squeeze a bit of power out of it.~
++ ~It could be worth it. How long do you think it'll take?~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",4) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("misc48") DestroyItem("misc48")~ + idol1
++ ~Sounds dangerous. Best leave it for now.~ + idol0
END

IF ~~ idol0
SAY ~Yeah, you're probably right.~
IF ~~ + craft3
END

IF ~~ idol1
SAY ~Who knows? I've never tested anything like this before. It could take a day or two. Maybe a week, maybe even months. However long it takes before the thing starts to crack.~
IF ~~ + craft4
END

IF ~~ ossifier
SAY ~It's a funny thing, isn't it? I'm almost reluctant to change it, but I'm curious if there's not... more to it.~
= ~I can't say what my tinkering would do with the staff, but it's mostly sitting around gathering dust as it is, right? You might as well let me see if I can't squeeze a bit of magic out of it.~
++ ~Sure. Do whatever you like with it.~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",5) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",TWENTY_DAYS) TakePartyItem("staf25") DestroyItem("staf25")~ + ossifier1
++ ~Nah. Just leave it be. It's not worth the effort.~ + ossifier0
END

IF ~~ ossifier0
SAY ~Aww... and there you had me excited when you asked me about it.~
IF ~~ + craft3
END

IF ~~ ossifier1
SAY ~Alrighty! Uh, though... I can't say how long I'll be spending on the thing. But once I'm happy with the results, I'll give you a holler.~
IF ~~ + craft4
END

IF ~~ golddigger
SAY ~Hmm... maybe. I'd have to take a look at how the magic works if I want to reverse the effect. It might be possible... but I dunno how strong I can make it. Even if I could make it spew thousands of gold coins with each swing, it'd kill the value of gold pretty fast.~
= ~It's worth a try though. If you want me to see what I can do with the sword, then just give me a couple of weeks to work it.~
++ ~It's worthless to me as it is. Do what you can with it.~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",6) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",FOURTEEN_DAYS) TakePartyItem("sw2h22") DestroyItem("sw2h22")~ + golddigger1
++ ~Never mind. Let's just leave it as it is.~ + golddigger0
END

IF ~~ golddigger0
SAY ~Okay. It's your choice.~
IF ~~ + craft3
END

IF ~~ golddigger1
SAY ~Okay. Like I said, a couple of weeks. I'll need to figure out exactly how the enchantment works, where all the gold goes, if I can somehow reverse-engineer the effect, you know. I'll get to work as quickly as I can.~
IF ~~ + craft4
END

IF WEIGHT #-1 ~Global("C0AuraAtWork","GLOBAL",4)
Global("C0AuraKozah","GLOBAL",1)~ craftdone4.1
SAY ~Uh, that wasn't supposed to happen... I think.~
= ~Actually, on second thought... maybe the thunderbolt helped activate the idol's powers. It's practically buzzing with energy now!~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim04",Player1,3,1,0)~ EXIT
END

IF WEIGHT #-1 ~!Global("C0AuraAtWork","GLOBAL",0)
	GlobalTimerExpired("C0AuraCraftTimer","GLOBAL")~ craftdone
SAY ~Eureka! I think I've done it! Hey, hey, <CHARNAME>! I've finished with that commission you had me work on. Take a look!~
IF ~Global("C0AuraAtWork","GLOBAL",1)~ + craftdone1
IF ~Global("C0AuraAtWork","GLOBAL",2)~ + craftdone2
IF ~Global("C0AuraAtWork","GLOBAL",3)~ + craftdone3
IF ~Global("C0AuraAtWork","GLOBAL",4)~ + craftdone4
IF ~Global("C0AuraAtWork","GLOBAL",5)~ + craftdone5
IF ~Global("C0AuraAtWork","GLOBAL",6)~ + craftdone6
END

IF ~~ craftdone1
SAY ~Working with cursed items is always a challenge, and a huge risk at that, but... well, I think I've managed to restrain it a little.~
= ~Remember - if you're going to use it, try to stay healthy in battle, or else it'll put you in even greater danger than before. Unless you really know what you're doing, of course.~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim01",Player1,0,0,0)~ EXIT
END

IF ~~ craftdone2
SAY ~Isn't it impressive! Oof, heavy, though... it's not really my type of weapon, and I already have my Sunshooter, but it should suit anyone with stronger muscles just fine.~
= ~It can't fire as fast anymore... but believe me, it'll make every shot count.~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim02",Player1,0,0,0)~ EXIT
END

IF ~~ craftdone3
SAY ~Mmm, I've never added a metal plating to a weapon before, especially one that changes its shape, but... I think I've managed it. Shiny, isn't it?~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim03",Player1,0,0,0)~ EXIT
END

IF ~~ craftdone4
SAY ~I think I tried everything to get some reaction out of the idol. Rune magic, electric charges, diamond dust, random ominous gibberish, poking it with various metal probes...~
= ~Um, anyways, I think I know how to get its power to awaken now. There's a strange line of symbols on the base that I managed to transcribe, so here goes... *clears throat* "A malum ta'kah cal'ak se Kozah"... whoa!~
IF ~~ DO ~SetGlobal("C0AuraKozah","GLOBAL",1) ApplySpell(Myself,RESTORE_FULL_HEALTH) ClearAllActions() StartCutsceneMode() StartCutscene("c0acuts3")~ EXIT
END

IF ~~ craftdone5
SAY ~Meh. The staff was a lot more interesting to research than to work on, to be honest. It's not quite so useless anymore... but it's just so boring now! Anyways, go ahead and take it. Maybe you'll have a plan for what to do with the thing.~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim05",Player1,0,0,0)~ EXIT
END

IF ~~ craftdone6
SAY ~Uh... bad news. I couldn't stop the sword from eating your gold. But I did manage to force it to give a little bit back, kind of. Just use it and you'll see what I mean.~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim06",Player1,0,0,0)~ EXIT
END

IF ~~ stringfix
 SAY ~Ick. I'll have to see what I can do about that. *ahem* 'La, la...'~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT 
END

END