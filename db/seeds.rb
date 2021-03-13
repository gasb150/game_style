# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(
  name: 'Action',
  priority: 1
)

Category.create!(
  name: 'Adventure',
  priority: 5
)

Category.create!(
  name: 'Role-playing',
  priority: 3
)

Category.create!(
  name: 'Simulation',
  priority: 4
)

Category.create!(
  name: 'Strategy',
  priority: 7
)

Category.create!(
  name: 'Sports',
  priority: 6
)

Category.create!(
  name: 'MMO',
  priority: 2
)

user1= User.create(
  email:'gustave@email.com',
  password: 'password1',
  name: 'Gustave',
  username: 'Tave'
)

user2= User.create(
  email:'gustavo@email.com',
  password: 'password2',
  name: 'Gustavo',
  username: 'Tavo'
)

user3= User.create(
  email:'adolfito@email.com',
  password: 'password3',
  name: 'Adolfo',
  username: 'Fito'
)

cat1 = Article.create!(
  title: 'Yakuza 0',
  text: 'Once you have made it through the probably longest intro sequence and are free to roam as you please, Yakuza becomes the next best thing to visiting Japan yourself.

  Protagonists Kiryu Kazuma and Goro Majima seem scary, but don’t be fooled: Yakuza 0 is both as dramatic as a good gangster film and absurdly funny.
  
  Nearly everything in Yakuza 0 is so over-the-top you can’t help but be roused by it. You’ll learn a lot about Japan and its people, many of which you’ll meet in sprawling sidequests, each a self-contained little story.
  
  ',
  user_id: 2,
  image_url: 'yakuza-0.jpg',
  category_ids: [1, 3]
)

cat2 = Article.create!(
  title: 'Grim fandango',
  text: "There is a long-standing idea that no game should receive a perfect score because no game is perfect. There are those who might nitpick and say that Grim Fandango's wonky controls or blocky character models should prevent it from being considered perfect. Well, fine. Tim Schafer’s magnum opus may not be perfect, but it's as close as any game in the genre has ever come. Landing at the tail-end of the Golden Age of adventure gaming (by 1998 adventure games were far, far away from the limelight), this epic tale of skeletal travel agent Manny Calavera's four-year journey through the Land of the Dead infuses the mythos of the Mexican Día de Muertos with film noir atmosphere and archetypes, bebop and jazz, beat culture, and even hot-rod fetishism, all glued together with the best of the best of LucasArts' trademark wit and humour. It sounds absurd, and it sometimes is, but it works beautifully, as if there were no more natural mash-up of influences.",
  user_id: 1,
  image_url: 'Grim_Fandango.jpg',
  category_ids: [1, 2]
)

cat3 = Article.create!(
  title: 'Final Fantasy 14',
  text: "Though we heartily recommend every entry in this list, if we had to choose just one MMO to recommend in 2021, it would be Final Fantasy 14. Few MMOs check every box, but FF14 comes close with its gorgeous graphics, captivating story, robust features, excellent dungeons, and consistently great updates. And there's never been a better time to jump in, either.",
  user_id: 2,
  image_url: 'final_fantasy.jpg',
  category_ids: 1
)

cat4 = Article.create!(
  title: "Assassin's Creed",
  text: "Assassin's Creed is an open-world action-adventure stealth video game franchise published by Ubisoft and developed mainly by its studio Ubisoft Montreal using the game engine Anvil and its more advanced derivatives. Created by Patrice Désilets, Jade Raymond, and Corey May, the Assassin's Creed series depicts a fictional millennia-old struggle between the Assassins, who fight for peace with free will, and the Templars, who desire peace through order and control. The series features historical fiction, science fiction and fictional characters intertwined with real-world historical events and figures. For the majority of time players control an Assassin in the past history, while also playing as Desmond Miles or an Assassin Initiate in the present day, who hunt down their Templar targets. The series took inspiration from the novel Alamut by the Slovenian writer Vladimir Bartol, based on the historical Hashashin sect of the medieval Middle East, while building upon concepts from the Prince of Persia series.",
  user_id: 3,
  image_url: 'Assasins_creed.jpg',
  category_ids: 1
)


cat2 = Article.create!(
  title: 'The Longest Journey',
  text: "The new millennium kicked off in fine fashion, as Funcom's Ragnar Tørnquist crafted a vivid tale of two worlds in The Longest Journey: a world of fantasy and a world of science, each tied together by an unforgettable protagonist, April Ryan. A budding artist, April’s just an ordinary girl just trying to live her life – an ordinary girl who happens to have the ability to “shift” between magical Arcadia and scientific Stark. With no knowledge of these powers at first, or even the existence of another world, April begins both a personal journey to discover who she really is and a literal journey as she attempts to understand her role in the increasing imbalance between chaos and order. The game takes time to tell its story and establish rich characterizations, with long, edgy, and at times very adult dialogues with a vast cast of characters, from the mysterious Cortez to April’s lesbian landlady to the nefarious wizard Roper Klacks. And when you’re not immersed in deep conversation, you’ll be grappling with nearly Rube Goldberg-esque inventory puzzles.",
  user_id: 2,
  image_url: 'longest-journey.jpg',
  category_ids: 2
)

cat3 = Article.create!(
  title: 'Machinarium',
  text: "Machinarium is a graphic adventure the stads out due to its graphic quality and its environment.

  The action takes place on a faraway planet, where a spaceship places several metal pieces in a scrap dump.
  
  Among those pieces, there are several parts of the main character's body parts, a small robot that will need your help to keep going level to level.
  
  We'll have to solve some puzzles to beat this level. Like in those old games, we'll have to use the pieces we find in the scenario to do actions and pass the levels.

  In short, if you miss some good adventure game action, Machinarium is a great choice to enjoy them all over again.
  ",
  user_id: 2,
  image_url: 'machinarium.jpg',
  category_ids: [2, 5]
)

cat4 = Article.create!(
  title: 'Professor Layton and the Curious Village',
  text: "Level-5’s Professor Layton and the Curious Village is a game full of puzzles – lots and lots of logic puzzles.  Sound boring? It’s not!  Already popular in Japan but virtually unknown around the world before its 2008 release, the game is ideally suited to the portable Nintendo DS and brief rounds of on-the-go gaming. And yet it’s addictively easy to become obsessed with overcoming  devious wordplay, deceptive riddles, and puzzles that have you manically (or strategically, if you’re patient enough) sliding pieces around. There are even puzzles that convince you that you’re doing math when you’re really not. The challenges are confounding, surprising, and full of “aha!” moments – the kind that fill you with elation because you were sure you’d never be able to solve that one on your own… though there are always hints if you really can’t.",
  user_id: 1,
  image_url: 'curious_village.jpg',
  category_ids: [2, 5]
)

cat1 = Article.create!(
  title: 'The Elder Scrolls V: Skyrim',
  text: 'The Elder Scrolls 5: Skyrim has become the quintessential western RPG, having been released on nearly every platform under the sun since its original release in 2011, the most recent of which sees it grace Nintendo Switch. ',
  user_id: 3,
  image_url: 'ElderScroll.jpg',
  category_ids: 3
)

cat2 = Article.create!(
  title: 'Dragon Age: Inquisition',
  text: 'Like its predecessors, Dragon Age: Inquisition, the third part of the Dragon Age series, is a sweeping adventure that is all about relationships. It’s another title that may not win prizes for its looks, but like other BioWare games, it’s the writing that draws you in and doesn’t let you go.
  
  Each of the characters that joins you in your quest to both end a war and save the world of Thedas has their own story you slowly need to uncover. With their unique quirks many of them are bound to grow on you quite a bit.',
  user_id: 1,
  image_url: 'dragon-age.jpg',
  category_ids: 3
)

cat3 = Article.create!(
  title: 'World of Warcraft',
  text: 'Similar to other MMORPGs, the game allows players to create a character avatar and explore an open game world in third- or first-person view, exploring the landscape, fighting various monsters, completing quests, and interacting with non-player characters (NPCs) or other players. The game encourages players to work together to complete quests, enter dungeons and engage in player versus player (PvP) combat, however the game can also be played solo without interacting with others. The game primarily focuses on character progression, in which players earn experience points to level up their character to make them more powerful and buy and sell items using in-game currency to acquire better equipment, among other game systems.',
  user_id: 3,
  image_url: 'wow.jpg',
  category_ids: [3, 7]
)


cat1 = Article.create!(
  title: 'Sims 4',
  text: 'Unleash your imagination and create a world of Sims that’s wholly unique. Explore and customize every detail from Sims to homes–and much more. Choose how Sims look, act, and dress. Determine how they’ll live out each day. Design and build incredible homes for every family, then decorate with your favorite furnishings and décor. Travel to different neighborhoods where you can meet other Sims and learn about their lives. Discover beautiful locations with distinctive environments, and go on spontaneous adventures. Manage the ups and downs of Sims’ everyday lives and see what happens when you play out realistic or fantastical scenarios. Tell your stories your way while developing relationships, pursuing careers and life aspirations, and immersing yourself in an extraordinary game where the possibilities are endless. ',
  user_id: 2,
  image_url: 'sims_4.jpg',
  category_ids: 4
)
cat2 = Article.create!(
  title: 'Stardew Valley',
  text: 'Are you ready to start a new life down south in Stardew Valley? Take up residency at your grandfather’s old farm, and get to work. Grow, maintain, and harvest the crops as you rehabilitate the farm and develop your small enterprise. There’s always something more to do in Stardew Valley, and you’re encouraged to explore it all. The best part? The developers recently released co-op mode, making it one of the best simulator games w/ online multiplayer around.',
  user_id: 3,
  image_url: 'stardew_valley.jpg',
  category_ids: 4
)
cat3 = Article.create!(
  title: 'Total War: Warhammer 2',
  text: "The first Total War: Warhammer showed that Games Workshop's fantasy universe was a perfect match for Creative Assembly's massive battles and impressively detailed units. Total War: Warhammer 2 makes a whole host of improvements, in interface, tweaks to heroes, rogue armies that mix factions together and more. The game's four factions, Skaven, High Elves, Dark Elves and Lizardmen are all meaningfully different from one another, delving deeper into the odd corners of old Warhammer fantasy lore. If you're looking for a starting point with CA's Warhammer games, this is now the game to get—and if you already own the excellent original, too, the mortal empires campaign will unite both games into one giant map. ",
  user_id: 1,
  image_url: 'total_war.jpg',
  category_ids: [4, 5]
)
cat4 = Article.create!(
  title: 'Jurassic World Evolution',
  text: 'Jurassic World Evolution is a business and theme park simulation game that has the player, you guessed it, build their own Jurassic Park! Assume responsibility for the whole project, from development, to execution, to everyday maintenance and affairs. Keep things running smoothly and it’s certain to be all fun and games. But– one wrong move could spell disaster for your guests and your reputation. Care for the dinos, collect admission fares, and run the business with a steady hand… and you’re sure to be just fine.',
  user_id: 3,
  image_url: 'jurassic-world.jpg',
  category_ids: 4
)

cat1 = Article.create!(
  title: 'FIFA 21',
  text: "Ultimate Team features 100 icon players, including 11 new names. Eric Cantona, Petr Čech, Ashley Cole, Samuel Eto'o, Philipp Lahm, Ferenc Puskás, Bastian Schweinsteiger, Davor Šuker, Fernando Torres, Nemanja Vidić, and Xavi all feature as icons for the first time. Jens Lehmann will not be an icon in FUT 21.

  Ultimate Team will see the addition of a co-op gameplay feature in the form of Division Rivals, Squad Battles and Friendlies with a friend online to unlock objectives and rewards. FUT was surrounded by controversy due to it being classified as a loot box and a source of online gambling. In January 2019, EA agreed to stop selling FIFA points in Belgium, following government pressure.Petitions to ban the points elsewhere began in June 2020, with the points' legality being debated in the US and UK, the latter via the UK's Department of Digital, Culture, Media and Sport. Similarly, a Dutch judge decided that EA should be fined €0.5 million per week until the loot boxes were removed. The players can customize their own FUT stadium with tifos, pyrotechnics, trophies, music, statues and stands as their FUT club grows. In-game stats can now be upgraded individually for special cards (the example given is if Trent Alexander-Arnold scored a free-kick for a TOTW in-form item, the free-kick accuracy can be much higher than his other in-form items). Live FUT friendlies combines house rules with squad rules to create different match types that change throughout the year. Redesigned menus allow the access to their squad and stadium directly from anywhere in the main menu. In new FUT events, the players can pick sides and compete against the FUT community to unlock packs, coins, club items or players in Team Event Objectives. The players can work together with the entire community and earn shared rewards by completing objectives as a collective.",
  user_id: 3,
  image_url: 'fifa_21.png',
  category_ids: 6
)
cat2 = Article.create!(
  title: 'Madden NFL 20',
  text: 'There aren’t many sports games with a legacy as recognizable and impressive as Madden NFL’s, as the series continues to advance every year. Madden NFL 20 sees the comeback of the American football/management sim’s dynamic gameplay along with a bunch of new game-changing features that make it stand out from prior entries.

  A brand-new QB1 story mode allows you to create your own quarterback to dominate the College Football Playoff before getting drafted into the NFL where you’ll have to make tough calls on and off the field that will affect your athletic career.',
  user_id: 1,
  image_url: 'NFL.jpg',
  category_ids: 6
)

cat3 = Article.create!(
  title: 'UFC 3',
  text: 'UFC 3 plays like no other MMA sports game before, featuring over 5,000 new fighting animations powered by EA SPORTS’ proprietary RPM technology. This makes matches feel more fluid and realistic, an absolute must for a sport as robust and technical as MMA.

  However, the improvements don’t stop there, with UFC 3 introducing its own version of Ultimate Team and letting players compete as real, customizable UFC fighters with an arsenal of signature moves.',
  user_id: 3,
  image_url: 'UFC_3.png',
  category_ids: 6
)

cat4 = Article.create!(
  title: 'MLB The Show 19',
  text: 'MLB The Show 19 comes packed with an abundance of game modes that are sure to keep even the biggest of baseball fans busy. This includes a new Moments mode in which players can recreate and even alter the greatest moments in baseball history as they control iconic athletes like Willie Mays, Lou Gehrig, and Ty Cobb.',
  user_id: 2,
  image_url: 'MLB_19.jpg',
  category_ids: 6
)

cat2 = Article.create!(
  title: 'Dofus',
  text: 'DOFUS is a massively multiplayer online role playing game (MMORPG) to download. Head out on a quest to obtain powerful dragon eggs, the Dofus, in a universe of heroic fantasy and offbeat humor. Create your own hero in one of the 18 character classes available. The gameplay of each class is unique - which can come in handy when you join forces in a Guild.',
  user_id: 3,
  image_url: 'dofus.jpg',
  category_ids: 7
)
cat3 = Article.create!(
  title: 'Metin2',
  text: 'YOUR SWORD FOR THE DRAGON GOD
  The appearance of the Metin stones has torn deep rifts through the once flourishing world of the Dragon God. War has erupted between the kingdoms – wild animals have transformed into fearsome beasts and the dead have arisen to bloodthirsty, demonic life.
  
  Defend your kingdom and hurl yourself into incredible battles full of action and magic. Raise your weapons against the forces of evil and become a living legend in one of Europe’s biggest MMORPGs!',
  user_id: 1,
  image_url: 'metin2.jpg',
  category_ids: 7
)

cat4 = Article.create!(
  title: 'League of Legends',
  text: "League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre. Since its release in October 2009, the game has been free-to-play, and is monetized through purchasable character customization. The game is available for Microsoft Windows and macOS.",
  user_id: 3,
  image_url: 'lol.jpg',
  category_ids: 7
)

vote1 = Vote.create!(
  user_id: 1,
  article_id: 1,
  category_id: 1
)

vote2 = Vote.create!(
  user_id: 1,
  article_id: 2,
  category_id: 1
)

vote3 = Vote.create!(
  user_id: 1,
  article_id: 3,
  category_id: 1
)

vote4 = Vote.create!(
  user_id: 1,
  article_id: 4,
  category_id: 1
)

vote5 = Vote.create!(
  user_id: 1,
  article_id: 5,
  category_id: 2
)

vote6 = Vote.create!(
  user_id: 1,
  article_id: 6,
  category_id: 2
)

vote7 = Vote.create!(
  user_id: 1,
  article_id: 7,
  category_id: 2
)

vote8 = Vote.create!(
  user_id: 1,
  article_id: 8,
  category_id: 2
)

vote9 = Vote.create!(
  user_id: 2,
  article_id: 8,
  category_id: 2
)


