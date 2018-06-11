# This file should contain all the record creation needed to seed the database with its default values.
require 'byebug'
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
Review.destroy_all

User.create({username: 'DemoUser', password: 'password'})
User.create({username: 'Marshall', password: 'password'})

GAME_NAMES = [
  "Fortnite",
  "League of Legends",
  "PLAYERUNKNOWN'S BATTLEGROUNDS",
  "Hearthstone",
  "Counter-Strike: Global Offensive",
  "Grand Theft Auto V",
  "Dota 2",
  "Vampyr",
  "Overwatch",
  "World of Warcraft",
  "The Witcher 3: Wild Hunt",
  "Path of Exile",
  "FIFA 18",
  "Realm Royale",
  "FINAL FANTASY XIV Online",
  "Dead by Daylight",
  "Destiny 2",
  "Dark Souls",
  "Minecraft",
  "Tom Clancy's Rainbow Six: Siege",
  "Moonlighter",
  "StarCraft II",
  "Black Desert Online",
  "DayZ",
  "Heroes of the Storm",
  "World of Tanks",
  "Detroit: Become Human",
  "Oxygen Not Included",
  "Far Cry 5",
  "Magic: The Gathering Online",
  "My Summer Car",
  "Human: Fall Flat",
  "Stardew Valley",
  "Arma 3",
  "Lineage II: The Chaotic Chronicle",
  "Fallout 4",
  "Bless Online",
  "Call of Duty: WWII",
  "Slay the Spire",
  "TrackMania² Stadium",
  "Yakuza 0",
  "Rocket League",
  "The Elder Scrolls: Legends",
  "Bloodborne",
  "World of Warships",
  "Gwent: The Witcher Card Game",
  "Football Manager 2018",
  "Dauntless",
  "Warframe",
  "Smite",
  "H1Z1",
  "Cities: Skylines",
  "Pokémon Quest",
  "Escape From Tarkov",
  "Tibia",
  "Knights of Pen & Paper II",
  "Dark Souls III",
  "ARK",
  "Warhammer 40,000: Inquisitor Martyr",
  "Warcraft III: The Frozen Throne",
  "The Legend of Zelda: Breath of the Wild",
  "Conan Exiles",
  "Quake Champions",
  "Dofus",
  "Raft",
  "Arena of Valor",
  "Super Mario Maker",
  "The Elder Scrolls Online",
  "Super Mario Odyssey",
  "Battlerite",
  "Super Mario World",
  "Final Fantasy VII",
  "The Jackbox Party Pack",
  "Paper Mario: The Thousand-Year Door",
  "Dragon Ball FighterZ",
  "Super Smash Bros. Melee",
  "What Remains of Edith Finch",
  "Infectonator 3: Apocalypse",
  "Persona 5",
  "Paladins"
]
GAME_IMAGES = [
  "https://static-cdn.jtvnw.net/ttv-boxart/Fortnite-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/League%20of%20Legends-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/PLAYERUNKNOWN%27S%20BATTLEGROUNDS-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Hearthstone-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Counter-Strike:%20Global%20Offensive-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Grand%20Theft%20Auto%20V-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dota%202-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Vampyr-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Overwatch-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/World%20of%20Warcraft-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/The%20Witcher%203:%20Wild%20Hunt-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Path%20of%20Exile-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/FIFA%2018-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Realm%20Royale-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/FINAL%20FANTASY%20XIV%20Online-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dead%20by%20Daylight-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Destiny%202-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dark%20Souls-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Minecraft-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Tom%20Clancy%27s%20Rainbow%20Six:%20Siege-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Moonlighter-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/StarCraft%20II-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Black%20Desert%20Online-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/DayZ-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Heroes%20of%20the%20Storm-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/World%20of%20Tanks-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Detroit:%20Become%20Human-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Oxygen%20Not%20Included-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Far%20Cry%205-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Magic:%20The%20Gathering-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/My%20Summer%20Car-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Human:%20Fall%20Flat-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Stardew%20Valley-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Arma%203-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Lineage%20II:%20The%20Chaotic%20Chronicle-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Fallout%204-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Bless%20Online-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Call%20of%20Duty:%20WWII-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Slay%20the%20Spire-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/TrackMania%C2%B2%20Stadium-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Yakuza%200-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Rocket%20League-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/The%20Elder%20Scrolls:%20Legends-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Bloodborne-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/World%20of%20Warships-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Gwent:%20The%20Witcher%20Card%20Game-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Football%20Manager%202018-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dauntless-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Warframe-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Smite-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/H1Z1-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Cities:%20Skylines-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Pok%C3%A9mon%20Quest-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Escape%20From%20Tarkov-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Tibia-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Knights%20of%20Pen%20&%20Paper%20II-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dark%20Souls%20III-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/ARK-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Total%20War:%20Warhammer%20II-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Warcraft%20III:%20The%20Frozen%20Throne-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/The%20Legend%20of%20Zelda:%20Breath%20of%20the%20Wild-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Conan%20Exiles-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Quake%20Champions-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dofus-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Raft-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Arena%20of%20Valor-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Super%20Mario%20Maker-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/The%20Elder%20Scrolls%20Online-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Super%20Mario%20Odyssey-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Battlerite-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Super%20Mario%20World-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Final%20Fantasy%20VII-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/The%20Jackbox%20Party%20Pack-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Paper%20Mario:%20The%20Thousand-Year%20Door-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Dragon%20Ball%20FighterZ-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Super%20Smash%20Bros.%20Melee-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/What%20Remains%20of%20Edith%20Finch-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Infectonator%203:%20Apocalypse-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Persona%205-285x380.jpg",
  "https://static-cdn.jtvnw.net/ttv-boxart/Paladins-285x380.jpg"
]
GAME_GENRES = [
  ["Shooter"],
  ["MOBA"],
  ["Shooter"],
  ["Card Game", "Strategy"],
  ["Shooter"],
  ["Action","Adventure"],
  ["MOBA"],
  ["RPG"],
  ["Shooter"],
  ["MMORPG"],
  ["RPG", "Action", "Adventure"],
  ["Action", "MMORPG"],
  ["Sports"],
  ["Shooter", "Action"],
  ["MMORPG"],
  ["Action"],
  ["Shooter"],
  ["RPG", "Action", "Adventure"],
  ["Action", "Adventure"],
  ["Shooter"],
  ["Action", "RPG"],
  ["RTS"],
  ["MMORPG"],
  ["RPG", "Shooter"],
  ["MOBA"],
  ["Simulation", "Vehicular Combat"],
  ["Adventure"],
  ["Simulation"],
  ["Adventure", "shooter"],
  ["Card Game"],
  ["Simulation", "Driving"],
  ["Puzzle"],
  ["Simulation", "RPG"],
  ["Shooter"],
  ["MMORPG"],
  ["RPG", "Shooter"],
  ["MMORPG"],
  ["Shooter"],
  ["Card Game", "Strategy"],
  ["Driving"],
  ["RPG", "Adventure"],
  ["Sports", "Driving"],
  ["Card Game"],
  ["RPG", "Adventure"],
  ["Action", "Vehicular Combat"],
  ["Card Game"],
  ["Sports", "Simulation"],
  ["Action", "RPG"],
  ["Action", "Shooter"],
  ["MOBA"],
  ["Shooter"],
  ["Simulation"],
  ["Action"],
  ["Shooter"],
  ["Adventure", "MMO"],
  ["Action", "Strategy"],
  ["Action", "Adventure"],
  ["Adventure", "Survival"],
  ["RPG", "Adventure"],
  ["RTS"],
  ["Adventure", "RPG"],
  ["Action", "RPG"],
  ["Shooter"],
  ["MMORPG"],
  ["Adventure"],
  ["MOBA"],
  ["Platformer"],
  ["MMORPG"],
  ["Adventure", "Platformer"],
  ["MOBA"],
  ["Platformer"],
  ["RPG"],
  ["Minigames"],
  ["Adventure", "RPG"],
  ["Fighting"],
  ["Action", "Fighting"],
  ["Adventure", "Puzzle"],
  ["Action", "Simulation"],
  ["RPG"],
  ["MOBA"]
]
GAME_RATINGS = [
  "T",
  "T",
  "T",
  "T",
  "M",
  "M",
  "T",
  "M",
  "T",
  "T",
  "M",
  "M",
  "T",
  "T",
  "T",
  "M",
  "T",
  "M",
  "T",
  "M",
  "T",
  "T",
  "M",
  "M",
  "T",
  "T",
  "M",
  "T",
  "M",
  "T",
  "T",
  "E",
  "E",
  "M",
  "T",
  "M",
  "T",
  "M",
  "T",
  "G",
  "M",
  "E",
  "T",
  "M",
  "T",
  "T",
  "E",
  "T",
  "T",
  "T",
  "M",
  "E",
  "E",
  "M",
  "E",
  "T",
  "M",
  "M",
  "M",
  "T",
  "T",
  "M",
  "M",
  "E",
  "T",
  "T",
  "E",
  "T",
  "E",
  "T",
  "E",
  "T",
  "T",
  "E",
  "T",
  "T",
  "M",
  "T",
  "T",
  "T"
]
GAME_RELEASE_DATES = [
  "July 25, 2017",
  "October 27, 2009",
  "December 21, 2007",
  "March 11, 2014",
  "August 21, 2012",
  "September 17, 2013",
  "July 9, 2013",
  "June 5, 2018",
  "May 23, 2016",
  "November 23, 2004",
  "May 19, 2015",
  "October 23, 2013",
  "September 29, 2017",
  "June 7, 2018",
  "September 22, 2010",
  "June 14, 2016",
  "September 6, 2017",
  "September 22, 2011",
  "November 18, 2011",
  "December 1, 2015",
  "May 29, 2018",
  "July 27, 2010",
  "March 3, 2016",
  "January 21, 2012",
  "June 2, 2015",
  "Apr 12, 2011",
  "May 28, 2018",
  "May 18, 2017",
  "March 27, 2018",
  "June 24, 2002",
  "October 24, 2016",
  "July 22, 2016",
  "February 26, 2016",
  "September 12, 2013",
  "April 27, 2004",
  "November 10, 2015",
  "May 30, 2018",
  "November 3, 2017",
  "November 15, 2017",
  "June 20, 2013",
  "March 12, 2015",
  "July 7, 2015",
  "March 10, 2017",
  "March 24, 2015",
  "September 17, 2015",
  "2016",
  "November 9, 2017",
  "2018",
  "March 25, 2013",
  "March 25, 2014",
  "February 18, 2016",
  "March 10, 2015",
  "May 29, 2018",
  "2016",
  "January 1, 1997",
  "May 14, 2015",
  "March 24, 2016",
  "August 29, 2017",
  "May 1, 2018",
  "July 1, 2003",
  "March 3, 2017",
  "May 8, 2018",
  "TBD",
  "September 1, 2005",
  "May 23, 2018",
  "August 10, 2017",
  "September 11, 2015",
  "April 4, 2014",
  "October 27, 2017",
  "September 20, 2016",
  "November 21, 1990",
  "January 31, 1997",
  "November 18, 2014",
  "October 11, 2004",
  "January 26, 2018",
  "November 21, 2001",
  "April 25, 2017",
  "May 10, 2018",
  "September 15, 2016",
  "May 8, 2018"
]
GAME_DESCRIPTIONS = [
  "One day, 98% of Earth's human population suddenly disappeared, and the remaining humans found the skies covered in dense clouds, creating chaotic storms that dropped husks, humanoid zombie-like creatures, that attacked the living. The survivors found ways to construct 'storm shields', a field that cleared the storm clouds from immediately overhead and reduced the attacks from husks, and used these to set up survivor bases across the globe.",
  "League of Legends is a fast-paced, competitive online game that blends the speed and intensity of an RTS with RPG elements. Two teams of powerful champions, each with a unique design and playstyle, battle head-to-head across multiple battlefields and game modes.",
  "PlayerUnknown's Battlegrounds (PUBG) is an online multiplayer battle royale game developed and published by PUBG Corporation, a subsidiary of publisher Bluehole. ... The available safe area of the game's map decreases in size over time, directing surviving players into tighter areas to force encounters.",
  "Hearthstone. Hearthstone, originally Hearthstone: Heroes of Warcraft, is a free-to-play online collectible card video game developed and published by Blizzard Entertainment.",
  "Counter-Strike: Global Offensive (CS:GO) expands upon the team-based action gameplay that the franchise pioneered when it was launched 12 years ago. CS:GO features new maps, characters, and weapons and delivers updated versions of the classic CS content (de_dust, etc.).",
  "Grand Theft Auto V (also known as Grand Theft Auto Five, GTA 5 or GTA V) is a video game developed by Rockstar North. It is the fifteenth instalment in the Grand Theft Auto series and the successor of Grand Theft Auto IV. The original edition was released on September 17th, 2013 for the Xbox 360 and PlayStation 3.",
  "Dota 2 is a multiplayer online battle arena (MOBA) video game in which two teams of five players compete to collectively destroy a large structure defended by the opposing team known as the 'Ancient', whilst defending their own.",
  "Vampyr is an action role-playing video game developed by Dontnod Entertainment and published by Focus Home Interactive. It was released for Microsoft Windows, PlayStation 4, and Xbox One in June 2018. The plot relates how Jonathan Reid, a doctor who has turned into a vampire, comes to terms with his undead condition as he is torn between the Hippocratic Oath and his newfound bloodthirsty nature. ",
  "In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world: OVERWATCH. It ended the crisis and helped to maintain peace in the decades that followed, inspiring an era of exploration, innovation, and discovery.",
  "World of Warcraft. World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) released in 2004 by Blizzard Entertainment. It is the fourth released game set in the Warcraft fantasy universe.",
  "The Witcher® 3: Wild Hunt is a story-driven, next-generation open world role-playing game, set in a visually stunning fantasy universe, full of meaningful choices and impactful consequences. You play as Geralt of Rivia, a monster hunter tasked with finding a child from an ancient prophecy.",
  "You are an Exile, struggling to survive on the dark continent of Wraeclast, as you fight to earn power that will allow you to exact your revenge against those who wronged you. Created by hardcore gamers, Path of Exile is an online Action RPG set in a dark fantasy world.",
  "FIFA 18 is a football simulation video game in the FIFA series of video games, developed and published by Electronic Arts and was released worldwide on 29 September 2017 for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One and Nintendo Switch. It is the 25th instalment in the FIFA series. ",
  "Be the last Champion standing in Realm Royale! Choose a class, then loot deadly weapons and powerful abilities to create your own Champion. Explore a fantasy world from horseback, and craft game-changing legendary gear. Can you survive the first 100-person fantasy Battle Royale?",
  "Take part in an epic and ever-changing FINAL FANTASY as you adventure and explore with friends from around the world.",
  "Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught, tortured and killed.",
  "Similar to its predecessor, Destiny 2 is a first-person shooter game that incorporates role-playing and massively multiplayer online game (MMO) elements. The original Destiny included on-the-fly matchmaking that allowed players to communicate only with other players with whom they were 'matched' by the game.",
  "Dark Souls is an action role-playing game developed by FromSoftware and published by Namco Bandai Games. A spiritual successor to FromSoftware's Demon's Souls, the game is the second installment in the Souls series.",
  "Minecraft is a sandbox video game created by Swedish game designer Markus Persson, better known as Notch, and later fully developed and published by Mojang, a company that he founded.",
  "Tom Clancy's Rainbow Six Siege is a first-person shooter game, in which players control an operator from the Rainbow team. Different operators have different nationalities, weapons, and gadgets. The game features an asymmetrical structure whereby the teams are not always balanced in their ability choices.",
  "Moonlighter is an Action RPG with rogue-lite elements following the everyday routines of Will, an adventurous shopkeeper that dreams of becoming a hero. ... Moonlighter is developed by Digital Sun Games and published by 11 bit studios.",
  "StarCraft II: Wings of Liberty is a military science fiction real-time strategy video game developed and published by Blizzard Entertainment. It was released worldwide in July 2010 for Microsoft Windows and Mac OS X.",
  "Black Desert Online. Black Desert Online (Korean: 검은사막) is a sandbox-oriented massively multiplayer online role-playing game by Korean video game developer Pearl Abyss. The game has been in development since 2010, and entered closed beta testing (CBT) in October 2013.",
  "DayZ is a multiplayer open world survival third-person shooter modification designed by Dean Hall for the 2009 tactical shooter video game ARMA 2 and its 2010 expansion pack, ARMA 2: Operation Arrowhead. ... DayZ has been praised for its innovative design elements.",
  "Heroes of the Storm (HotS) is a multiplayer online battle arena video game developed and published by Blizzard Entertainment for Microsoft Windows and macOS that was released on June 2, 2015. The game features heroes from Blizzard's franchises including Warcraft, Diablo, StarCraft, The Lost Vikings, and Overwatch.",
  "World of Tanks. World of Tanks (WoT) is a massively multiplayer online game developed by the Belarusian-Cypriot company Wargaming, featuring mid-20th century (1930s-1960s) era combat vehicles.",
  "Detroit: Become Human is an adventure game developed by Quantic Dream and published by Sony Interactive Entertainment for the PlayStation 4, released worldwide on 25 May 2018. The plot revolves around three androids.",
  "Oxygen Not Included is a space-colony simulation game. Deep inside an alien space rock your industrious crew will need to master science, overcome strange new lifeforms, and harness incredible space tech to survive, and possibly, thrive.",
  "Welcome to Hope County, Montana, land of the free and the brave, but also home to a fanatical doomsday cult—known as The Project at Eden’s Gate—that is threatening the community's freedom. Stand up to the cult’s leaders, Joseph Seed and the Heralds, as you spark the fires of resistance that will liberate the besieged community.",
  "Magic: The Gathering. Magic: The Gathering is a both a trading card and digital collectible card game created by Richard Garfield. Released in 1993 by Wizards of the Coast, Magic was the first trading card game created and it continues to thrive, with approximately twenty million players as of 2015.",
  "My Summer Car is the ultimate car owning, building, fixing, tuning, maintenance AND permadeath life survival simulator. You start the game with hundreds of loose parts and assemble both car and engine.",
  "Human:Fall Flat is a quirky, open-ended physics-based puzzle and exploration game set in floating dreamscapes. Your goal is to escape these surreal dreams by solving puzzles with nothing but your wits and physics. Bob is just a normal human with no superpowers, but given the right tools he can do a lot.",
  "You've inherited your grandfather's old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?",
  "ARMA 3. ARMA 3 is an open-world, realism-based, military tactical shooter video game developed and published by Bohemia Interactive. ... ARMA 3 takes place on the Aegean islands of Altis and Stratis of Greece, and Tanoa of the South Pacific. The islands feature photo-realistic terrain and water environments.",
  "Lineage II is a massive multiplayer online role-playing game (MMORPG) for Microsoft Windows, the second game in the Lineage series. It is a prequel to Lineage, and is set 150 years before the earlier game.",
  "Fallout 4 is a post-apocalyptic action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. ... The player explores the game's dilapidated world, complete various quests, help out factions, and acquire experience points to level up and increase the abilities of their character.",
  "The evolution of high fantasy MMO Dive into the beautiful world of Bless with breathtaking experiences that feels surreal. Bless offers variety of contents such as RvR battles, field PvP, dungeon exploration, field raids, monster taming, and much more.",
  "Call of Duty® returns to its roots with Call of Duty®: WWII - a breathtaking experience that redefines World War II for a new gaming generation.",
  "Fused card games and roguelikes together to make the best single player deckbuilder we could. Craft a unique deck, encounter bizarre creatures, discover relics of immense power, and Slay the Spire!",
  "TrackMania² Stadium is the return of the popular Stadium environment enjoyed by millions of players with TrackMania Nations Forever. Now part of the ManiaPlanet environment, Stadium allows for improved services around the game, better graphics and a powerful track editor.",
  "Yakuza 0 is an action-adventure video game developed and published by Sega. It is a prequel to the Yakuza series. The game takes place in December 1988 in Kamurocho, a fictionalized recreation of Tokyo's Kabukicho, and Sotenbori, a fictionalized recreation of Osaka's Dotonbori.",
  "Rocket League is a vehicular soccer video game developed and published by Psyonix. ... Rocket League is a sequel to Psyonix's Supersonic Acrobatic Rocket-Powered Battle-Cars, a 2008 video game for the PlayStation 3. Battle-Cars received mixed reviews and was not a major success, but gained a loyal fan base.",
  "The Elder Scrolls: Legends is a competitive strategy card game set in the Elder Scrolls universe. Craft decks featuring intimidating abilities and powerful allies from across all of Tamriel as you take on story-rich campaigns as well as other players.",
  "Bloodborne is an action role-playing game played from a third-person perspective and features elements similar to those found in the Souls series of games, particularly Demon's Souls and Dark Souls.",
  "World of Warships is a free-to-play naval action-themed massively multiplayer online game produced by international game developer and publisher Wargaming. The game features aspects similar to World of Tanks and World of Warplanes, having several classes of warships fulfilling different roles within teamed player versus player battles.",
  "Gwent is a turn-based card game between two players, with each game taking three rounds. Each player must play one card each turn from a deck of twenty-five to forty cards. ... Rounds end when either both players pass to the next round, or when both players run out of cards.",
  "Football Manager 2018 is the latest release in the best-selling, smash-hit series. Putting you in the hot seat of any soccer club in more than 50 countries across the world, Football Manager 2018 is the closest thing to doing the job for real.",
  "Dauntless takes place in a fantasy setting, where a cataclysmic event has torn the world apart, releasing monster-like Behemoths that prey on the surviving humans. Players take on the role of Slayers to take down Behemoths, collecting loot that they used to craft and upgrade weapons and equipment as to take down larger and more powerful Behemoths. ",
  "Warframe is a cooperative free-to-play third person online action game set in an evolving sci-fi world.",
  "In Smite, players control a god, goddess, or other mythological figure and take part in team based combat, using abilities and tactics against other player-controlled gods and non-player-controlled minions.",
  "H1Z1 is a battle royale game in which up to 150 players compete against each other in a last man standing deathmatch. ... The game also features a crafting system that allows players to create makeshift tools, such as deconstructing scavenged items into functional bandages or body armor.",
  "Cities: Skylines is a modern take on the classic city simulation. The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience.",
  "Set off for adventure in the Pokémon™ Quest game. Venture out with your Pokémon buddies on expeditions across Tumblecube Island in search of loot in this free-to-start action-adventure for the Nintendo Switch™ system. Modify your Pokémon buddies with discovered Power Stones to make your ultimate expedition team.",
  "In the current test build, players can choose to play as two of three factions available in the game, with the ultimate goal of gathering and extracting loot littered around the fictional city of Tarkov. A skill tree is included, which grants the player various perks and skills.",
  "Tibia is a massively multiplayer online role-playing game (MMORPG) created by CipSoft. It is one of the oldest MMORPGs and was considered most noteworthy in its early years; however, with the development of MMORPGs, its popularity has grown much slower than other MMORPGs.",
  "Prepare to inhabit a world of chivalry, class warfare and off-beat pop references. Knights of Pen & Paper 2 is a turn-based, retro style, pixel-art adventure full of danger, intrigue, death, and saving throws!",
  "Dark Souls III is an action role-playing game played in a third-person perspective, similar to previous games in the series. According to lead director and series creator Hidetaka Miyazaki, the game's gameplay design followed 'closely from Dark Souls II'.",
  "Ark: Survival Evolved is an action-adventure survival game set in an open world environment and played either from a third-person or first-person perspective. ... Players can also craft items in the game, such as weapons, by collecting the resources and technology required for crafting.",
  "Warhammer 40,000 (informally known as Warhammer 40K, WH40K or simply 40K) is a tabletop miniature wargame produced by Games Workshop, set in a dystopian science fantasy universe. ... Each player brings a roughly equal complement of units to a tabletop battlefield with handmade or purchased terrain.",
  "Warcraft III: Reign of Chaos is a high fantasy real-time strategy video game developed and published by Blizzard Entertainment, and was released in July 2002. It is the second sequel to Warcraft: Orcs & Humans, and it is the third game set in the Warcraft fictional universe.",
  "The story follows Link, who awakens from a hundred-year slumber to a mysterious voice that guides him to defeat Calamity Ganon before it can destroy the kingdom of Hyrule. The game is played in an open world environment. Breath of the Wild's world is unstructured, designed to reward experimentation and allows the story to be completed in a nonlinear fashion.",
  "An open world survival game set in the lands of Conan the Barbarian. Survive in a vast and seamless world, build a home and kingdom, dominate your enemies in single and multiplayer.",
  "Quake® Champions is a fast-paced Arena shooter, a genre established by the original Quake 20 years ago. Mixing the dark mythos of Quake with the innovative multiplayer of Quake III Arena, the game adds a modern twist – Champions, each with unique attributes and abilities for players to master.",
  "DOFUS is a massively multiplayer online role playing game (MMORPG) to download or play in your browser. Head out on a quest to obtain powerful dragon eggs, the Dofus, in a universe of heroic fantasy and offbeat humor. ... This free online game offers tactical turn-based combats.",
  "Raft throws you and your friends into an epic oceanic adventure! Alone or together, players battle to survive a perilous voyage across a vast sea! Gather debris, scavenge reefs and build your own floating home, but be wary of the man-eating sharks!",
  "Experience Arena of Valor, an epic new 5v5 multiplayer online battle arena (MOBA) designed by Tencent Games! Call on your teammates to join you in the jungle! Crush your enemies in classic 5v5 combat in real time! Draw first blood, carry your team, and become legendary in the arena!",
  "In Super Mario Maker, Players are able to create and play their own custom courses, based on Super Mario Bros., Super Mario Bros. 3, Super Mario World and New Super Mario Bros. U, share them online, and download and play courses designed by other players.",
  "As in previous The Elder Scrolls titles, gameplay is mostly nonlinear, with a mixture of quests, random events, and free-roaming exploration of the world. The game does not provide a mode for single-player offline play, although the developers stated that there would be 'plenty of content' designed to accommodate players who prefer to play solo.",
  "Super Mario Odyssey is a 3D platform video game developed and published by Nintendo for the Nintendo Switch. It is a Super Mario game that follows Mario and Cappy, a spirit that turns into Mario's hat and allows him to possess other characters and objects, as they journey across various worlds to save Princess Peach",
  "Battlerite is a free-to-play team-based action game based on multiplayer online battle arena (MOBA) gameplay developed and published by Stunlock Studios. The game is considered a spiritual successor to Bloodline Champions and is created by the same developers.",
  "Super Mario World is a 1990 side-scrolling platform game developed and published by Nintendo for the Super Nintendo Entertainment System (SNES). ... Super Mario World introduces Yoshi, a dinosaur who can eat enemies",
  "In Midgar, a city controlled by the mega-conglomerate Shinra Inc., the No. 1 Mako Reactor has been blown up by a rebel group, AVALANCHE.AVALANCHE was secretly formed to wage a rebellion against Shinra Inc., an organisation which is absorbing Mako energy, destroying the natural resources of the planet.",
  "The team behind YOU DON’T KNOW JACK presents FIVE guffaw-inducing party games in one pack! You’re gonna need more than one party for this. Your phones or tablets are your controllers! For 1-100 players!",
  "Time passes, the pages turn...and a new chapter unfolds in an unfamiliar land! Get ready for a two-dimensional role-playing adventure for the ages as Mario returns to paper form in pursuit of a threat unlike any he's ever faced.",
  "DRAGON BALL FighterZ is born from what makes the DRAGON BALL series so loved and famous: endless spectacular fights with its all-powerful fighters.",
  "The most unique fighting game out there, with air dodges; various items that include range weapons, projectiles, and healing; advanced techniques, including infinites; more mobility than the average fighting game; the need for altering strategies depending on character damage; and much more. ",
  "What Remains of Edith Finch. What Remains of Edith Finch is a mystery adventure and walking simulator video game developed by Giant Sparrow and published by Annapurna Interactive for Microsoft Windows, PlayStation 4 and Xbox One. It is a story-focused drama with first-person gameplay.",
  "Infectonator 3: Apocalypse is a zombie apocalypse simulation-strategy game where you play as the zombies and your goal is to destroy humanity. Spread your virus, infect people, turn them into zombies, and destroy the world!",
  "Persona 5 takes place in modern-day Tokyo, and follows a player-named protagonist after his transfer to the fictional Shujin Academy after being put on probation for an assault of which he was falsely accused. During the course of a school year, he and other students awaken to their Persona powers.",
  "Paladins is a first-person shooter video game developed by Hi-Rez Studios, the developers of the MOBA SMITE. The game is rooted in a colorful sci-fi fantasy setting featuring Champions, playable characters that have their own unique fire-function and skills."
]

GAME_NAMES.each_with_index do |game_name, idx|
  Game.create({title: game_name, image_url: GAME_IMAGES[idx], description: GAME_DESCRIPTIONS[idx],
    genres: GAME_GENRES[idx], rating: GAME_RATINGS[idx], release_date: GAME_RELEASE_DATES[idx]})
end

USERNAME_FIRST_HALF = [
  "Deranged",
  "Silly",
  "Gullible",
  "Ridiculous",
  "Hungry",
  "Weak",
  "Strong",
  "Smart",
  "Delusional",
  "Orange",
  "Cheating",
  "Sneaky",
  "Subtle",
  "Superb",
  "Supreme",
  "Puzzled",
  "Confused",
  "Charming",
  "Cool",
  "Cantering",
  "Angry",
  "Envious",
  "Fierce",
  "Embarassed",
  "Creepy",
  "Cruel",
  "Annoyed",
  "Anxious",
  "Miniature",
  "Gigantic",
  "Lively",
  "Perfect",
  "Proud",
  "Pleasant",
  "Thoughtful",
  "Delightful",
  "Cheerful",
  "Brave",
  "Agreeable",
  "Naive"
]
USERNAME_SECOND_HALF = [
  "Orange",
  "Lion",
  "Hippo",
  "Giraffe",
  "Pizza",
  "Pie",
  "Cake",
  "Gamer",
  "Dragonslayer",
  "Magician",
  "Child",
  "Joe",
  "Dinosaur",
  "Kappa",
  "Capybara",
  "Insect",
  "Mantis",
  "Reptile",
  "Arthropod",
  "Mollusk",
  "Wolf",
  "Tardigrade",
  "Waterbear",
  "Urchin",
  "Orphan",
  "Chief",
  "Koala",
  "Sheep",
  "Ram",
  "Geyser",
  "Bear",
  "Crow",
  "Bison",
  "Buffao",
  "Condor",
  "Eagle",
  "Canadian",
  "American",
  "Unicorn",
  "Manticore"
]

200.times do
  username = USERNAME_FIRST_HALF.sample.concat(USERNAME_SECOND_HALF.sample)
  User.create({username: username, password: 'password'})
end

REVIEW_BODY = {
  5 => "%{game} broke a lot of records in the history of gaming. By that, I mean it is most likely impossible to find one thing wrong with this game. It's like the King of Gaming took the best classic game ever and modernize it to make it look like this game over here. This is why %{game} will forever remain in my heart no matter where it all goes. I'm telling you this, this game has everything... yes, every... single... thing. This is the lost child of gaming and the true successor. Just go buy this game, it wants your money so bad, it wants you to play it so bad, it wants to be your local friend literally bad. I'll be waiting until you get this game." ,
  4 => "Fun, beautiful, and has plenty of new gimmicks. The game is aimed at younger players as most adults with gaming experience will beat the main story without dying more than a handful of times. The first half of the game is that painstakingly easy. The second half adds some challenge though. Not for me though, I am very very very GOOD at games. Don't expect to find any sort of spectacular story here. Conclusion: Good, charming game, but a little overrated.",
  3 => "Completely and disappointingly underwhelming. I sat down this morning for some good old-fashioned %{game} and by the middle of the afternoon it was over with the credits rolling. What started off as a fresh and new adventure turned very quickly into an unwelcome slog through more and more eye searingly bright graphics that had more frustrating moments than fun. The movement felt clunky and unresponsive, the button combos for doing some of the more advanced movement was the opposite of enjoyable, and when there were ice physics... just no... stop. ",
  2 => "The characters/enemies are boring/repetitive, they don't really make sense in the context of the %{game} Universe or the game on a grand scale. I never cared about any of the 'story' arcs of the various charcters and the game overall didn't keep my interest because everything was the same - get strong and beat a boss you don't care about. This game feels like a bunch of little games jammed into one, with highly inconsistent and unsatisfying puzzles.",
  1 => "Gosh this game is so bad. %{game} or whatever you call it has no good decisions or anything. I'm 12 and I have a lot of ideas for how they could make %{game} better. The people who made this game are so silly, why didn't they just make the game better? If this game was better I would've liked it more. If I made %{game}, making the game more fun would be my first job. I am so sad because of this game not being good.",
  0 => "%{game} was by far the worst game I have ever played, the game was a huge disappointment and did not live up to the hype at all. The game tries to innovate but ends up being a lackluster experience, why can't you punch and kick like you can in Knack 2? Should have followed in Knack's footsteps. Why couldn't there be a first-person shooter mode where you could become Knack and punch and kick like Knack can? That would've made for a good game. Knack 2 is the greatest game of all time and this game should be ashamed that it's not more like Knack 2.",
}

Game.all.each do |game|
  3.times do
    rating = rand(0..5)
    body = REVIEW_BODY[rating]
    user_id = User.all.sample.id
    Review.create({
      user_id: user_id,
      game_id: game.id,
      rating: rating,
      body: (body % {
        game: game.title
        }
      )
    })
  end
end
