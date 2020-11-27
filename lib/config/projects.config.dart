import 'package:flutter/material.dart';
import 'package:portfolio/brand_icons/brand_icons_icons.dart';

class ProjectConfig {
  static const List<ProjectData> projects = [
    ProjectData(
      title: "Tag My Knowledge",
      description: "This app is your personal knowledge feed.\n\n"
          "With note taking apps like Google Keep, you're mostly archiving your knowledge. "
          "Important pieces of advice get buried and are lost forever "
          "as soon as they're pushed below your average scroll threshold. \n\n"
          "So, instead of sorting your notes in chronological order, "
          "Tag My Knowledge generates a daily feed. By reading just a few random notes every day, "
          "your brain doesn't get the chance to fully forget them. "
          "Then, when it actually matters, you'll remember the advice "
          "instead of not even knowing where to look. It even has a Twitter bot:\n\n"
          "##### Twitter bot \n"
          "Quickly save interesting tweets by replying like this:\n"
          "> @TagMyKnowledge save Some Title #yourtag\n\n"
          "The bot will then automatically save this tweet in your collection "
          "and match #yourtag to your closest actual tag.\n\n"
          "Tag My Knowledge available for Android & web (PWA, beta).<br>"
          "*(Note that the Twitter bot can only be set up on Android for now.)*",
      learningsTldr: "UX, web design, static website generators, analytics",
      learnings:
          "A big learning was definitely how to make everything more production-ready. \n"
          "**This means (among other things):**\n"
          "- Unit & integration tests\n"
          "- Serverside database migration for old versions of the app\n\n"
          "##### Tech stack:\n"
          "- **Flutter:** Mobile & web app UI\n"
          "- **Firebase:** Auth, Firestore, Functions, Hosting, Remote Config, Analytics\n"
          "- **Twitter Api:** For writing the Twitter bot via webhooks\n"
          "- **Google Play IAP:** Monetization\n"
          "- **Publii:** Static site cms\n"
          "- **TailwindCss & Handlebars:** For building the Publii page template\n"
          "- **Google Analytics & Google Optimize**: Page & app insights\n",
      urlWebsite: "https://tagmyknowledge.com/",
      urlPlaystore:
          "https://play.google.com/store/apps/details?id=com.tagmyknowledge",
      // Aug 2020
      timestamp: 1596924000000,
      tags: [
        Tags.flutter,
        Tags.firebase,
        Tags.tailwind,
        Tags.googletagmanager,
        Tags.googleanalytics,
      ],
      icon: "tagmyknowledge.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googleplay,
        BrandIcons.googlechrome,
      ],
    ),
    ProjectData(
      title: "AlgoDat GUI",
      description:
          "This is a simple, yet beautiful GUI that I built during a group project "
          "where we had to showcase our datastructure implementations. "
          "Now, following semesters can clone this repository to skip the tedious and ugly console applications "
          "and focus on their datastructure implementations (which is the only thing they're graded on). "
          "Who knows, maybe the design and the simplicity behind it inspires some "
          "of them to build something great in their free time :)",
      learningsTldr: "datastructures, wpf",
      learnings:
          "- **Various datastructures:** We had to implement those during the project\n"
          "- **WPF:** Build Windows GUI applications in C#",
      githubName: "algodat_gui",
      // Aug 2020
      timestamp: 1596751200000,
      tags: [
        Tags.csharp,
      ],
      icon: "algodat_gui.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.windows,
      ],
    ),

    ProjectData(
      title: "Website Redesign for Switchboard Live",
      description:
          "Switchboard Live is a multistreaming service to stream one input to multiple platforms at once. "
          "As a freelancer, my job was (among other things) to completely redesign "
          "their website to make the most out of the rising covid 19 traffic. "
          "I had pretty much full control over everything (layout, graphics, text) "
          "except for the video, which already existed. \n\n"
          "**Here's the comparison:**<br>"
          "[snapshot before the relaunch](https://web.archive.org/web/20200314094119/https://switchboard.live/)<br>"
          "[snapshot right before my contract ended](https://web.archive.org/web/20200909094059/https://switchboard.live/)\n"
          "The current website is also linked below, "
          "although keep in mind that it might look different by now.",
      learningsTldr: "tailwindcss, ejs, webpack, netlify, google tag manager",
      learnings: "- **Netlify:** Deploy directly from the git repository\n"
          "- **TailwindCss:** Styling exclusively via utility classes instead of \"real\" css\n"
          "- **Webpack:** Build pipeline, in this case for a static website\n"
          "- **Embedded Javascript Templating:** Build .html out of .ejs templates (which can contain js to parse Markdown etc.)\n"
          "- **Frontmatter + Markdown:** The \"data structure\" of the blog posts.\n"
          "\nAside from these technical details, I also improved my copywriting skills.",
      // 20th Mar 2020
      timestamp: 1584658800000,
      urlWebsite: "https://switchboard.live/",
      tags: [
        Tags.tailwind,
        Tags.googletagmanager,
        Tags.webpack,
        Tags.ejs,
      ],
      icon: "switchboard.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googlechrome,
      ],
    ),
//
//

    ProjectData(
      title: "Star Clock",
      description:
          "This was my entry for the [Flutter Clock Face Contest.](https://flutter.dev/clock)"
          "The goal was to create a clock face for upcoming Lenovo Smart clocks.\n\n"
          "**Features:**\n"
          "- Day/night transition\n"
          "- 7 weather conditions complete with animations\n"
          "- Night-only mode\n\n"
          "**Result:** I got a top 25 placement & won a Lenovo Smart clock :)\n\n"
          "Click on \"Demo\" to watch the 30 sec demo video on YouTube!",
      urlDemo: "https://www.youtube.com/watch?v=ZuHLtdbaXqc",
      learningsTldr: "animation, adobe after effects",
      learnings:
          "- **Animations:** These were created using Flare (now called Rive)\n"
          "- **Bugfixing:** I ran into some incredibly strange bugs during this project."
          "In the future, I'll check open flutter & rive issues more thoroughly :)\n"
          "- **Adobe After Effects:** Creating the 30 sec demo video\n",
      githubName: "star_clock",
      // Dec 2019
      timestamp: 1577055600000,
      tags: [
        Tags.flutter,
        Tags.adobeaftereffects,
      ],
      icon: "starclock.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.android,
      ],
    ),
    ProjectData(
      title: "Friday Night Survival",
      description:
          "This game is a round-based, 2D-RPG with a top-down overworld map. "
          "It was developed during a group project at the \"Technische Hochschule Nuremberg\" "
          "(German university of applied science).\n"
          "**If I had to describe it in one sentence:**\n"
          "> Pokémon, but in a night club setting, with crude humor, multiple dialog options and interesting battle mechanics.\n\n"
          "The battle system is unique because you essentially have to balance "
          "your health points with your honor level (= damage multiplier) to survive fights. "
          "**Example moves:**\n"
          "- Crush a beer bottle with your bare hands to boost honor at the expense of hp\n"
          "- Call your mum for emotional support to heal at the expense of honor\n"
          "- Land \"honorable\" punches to slowly build honor at the expense of time\n"
          "- Throw a beer bottle for high damage at the expense of honor\n"
          "- Sometimes your only option is to drink your opponent under the table in a minigame\n\n"
          "After each fight, you replace one of your moves with one you \"learn\" from your opponent. "
          "All in all, even though the playtime is relatively short, the 13 enemies, 40+ moves and multiple "
          "hilarious dialog options give this game great replay value. \n\n"
          "Sadly, there's no way to directly translate the humor into English, "
          "but if you're German or know someone who is, we highly recommend you give it a shot. "
          "Since this game was developed in Unity, it runs in your browser, no account required. \n\n"
          "=> Unless you get offended easily, you'll have a blast, so try it out!",
      learningsTldr:
          "game development, pixel art, game balance, team management",
      learnings:
          "- Create pixel art for everything that's not an in-battle character\n"
          "- Set up lighting to create a realistic atmosphere\n"
          "- Write scripts to animate the overworld\n"
          "- **Game balance:** Balance the difficulty curve for 40+ moves across 14 unique characters\n\n"
          "##### About game balance:\n\n"
          "This was difficult since gut feeling isn't accurate. "
          "To solve it, I wrote a C# program to rank all moves "
          "on a percentage scale based on their actual strength. "
          "This strength was calculated by a complicated formula for a few chosen reference points. "
          "The reference points were the weakest/strongest moves and a few \"alternative moves\" "
          " that an accurate formula should rank as equal. The result is still not truly objective, "
          "but probably as close as you can get without using AI to figure out the game meta programmatically. \n\n"
          "---\n"
          "Aside from these technological aspects, I also managed our Trello and organized meetings.",
      urlWebsite: "https://ciriousjoker.github.io/fridaynightsurvival/",
      // Nov 2019
      timestamp: 1572735600000,
      tags: [
        Tags.unity,
        Tags.csharp,
      ],
      icon: "fridaynightsurvival.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googlechrome,
        BrandIcons.windows,
        BrandIcons.linux,
        BrandIcons.apple,
      ],
    ),
    ProjectData(
      title: "ShadyVault",
      description: "This app provides an encrypted filesystem for Chrome OS. \n"
          "After creating a vault and linking a real folder, a new device shows up next to the external drives. "
          "This vault only exists in-memory, so reading/writing works like any other folder, "
          "but behind the scenes it's accessing the encrypted content of the linked folder. \n\n"
          "Sadly, Google decided to deprecate Chrome Apps for chromebooks as well "
          "and I doubt that Android apps can properly fill the gap anytime soon.\n\n"
          "Until then, enjoy!\n",
      learningsTldr: "encryption, file systems, animation",
      learnings:
          "- **Encryption**, specifically [AES-256 GCM](https://en.wikipedia.org/wiki/Galois/Counter_Mode)\n"
          "- **Animations**\n\n"
          "Animations might be a surprise, given that the software is about encrypting data, "
          "but I really liked how the UI turned out and just had to include them.\n\n"
          "I'm particularly proud of the transition when clicking the \"add vault\" button.\n\n"
          "=> If I had to pick one project to submit to a design contest or something, this would be it ;)\n",
      urlWebsite: "https://shadyvault.web.app/",
      // Apr 2019
      timestamp: 1555538400000,
      tags: [
        Tags.typescript,
        Tags.aurelia,
        Tags.material_design_components,
      ],
      icon: "shadyvault.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googlechrome,
      ],
    ),
    ProjectData(
      title: "Perfect Decision Finder",
      description: "Make the perfect decision"
          "TODO: ...",
      urlPlaystore:
          "https://play.google.com/store/apps/details?id=com.ciriousjoker.perfect_decision_finder",
      // Aug 2019
      timestamp: 1567202400000,
      tags: [
        Tags.flutter,
      ],
      icon: "perfectdecisionfinder.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googleplay,
      ],
    ),
    ProjectData(
      title: "Pokeroute",
      description:
          "This was a small project to evaluate how stable and usable Flutter Web was at the time. "
          "The app allows you to optimize your route through a list of GPS coordinates. "
          "It's intended for Pokémon GO spoofers to minimize their server timeout (soft ban) when teleporting.",
      learningsTldr: "rest api, gps calculations",
      learnings: "- **REST api:** The pokeapi was used to load Pokémon data\n"
          "- GPS distance calculation\n"
          "- Recursion to calculate the optimal route",
      githubName: "pokeroute",
      urlWebsite: "https://pokeroute.web.app/",
      // Aug 2019
      timestamp: 1566770400000,
      tags: [
        Tags.flutter,
      ],
      icon: "pokeroute.png",
      // screenshots: [
      //   "TODO:",
      // ],
      platforms: [
        BrandIcons.googlechrome,
      ],
    ),
    ProjectData(
      title: "Am I Done Yet",
      description:
          "This was my submission for the [Flutter Create challenge.](https://flutter.dev/create)\n"
          "> Flutter Create is a contest that challenges you to build something interesting, "
          "inspiring, and beautiful with Flutter using 5KB or less of Dart code.\n\n"
          "The app itself is a simple todo app, but with a twist.\n\n"
          "**Features:**\n"
          "- Add a new item (pinned)\n"
          "- Swipe to set priority (unpins it)\n"
          "- Long press to delete\n\n"
          "It doesn't get much simpler than that, but it works surprisingly well, especially for "
          "lists of loosely prioritized todos with no exact due time.\n\n"
          "I couldn't fit a local database within the 5120 character limit, so the app required an account to "
          "store the data in the cloud via Firestore (which is kind of ridiculous if you think about it).\n\n"
          "I've since rewritten the app to use a local database instead.",
      learningsTldr: "firebase, sembast (local database), animations",
      learnings: "Originally: \n"
          "- Flutter (first project with flutter)\n"
          "- Firebase (Auth, Firestore)\n"
          "\n**During the rewrite:**\n"
          "- **Sembast:** Local database\n"
          "- **Flutter:** Animations & SliverLists\n"
          "- Restructuring and modularizing code properly\n",
      githubName: "am-i-done-yet",
      urlPlaystore:
          "https://play.google.com/store/apps/details?id=com.ciriousjoker.amidoneyet",
      // Mar 2019
      timestamp: 1552604400000,
      icon: "amidoneyet.png",
      tags: [
        Tags.flutter,
        Tags.firebase,
      ],
      // TODO:
      // screenshots: [
      //   "assets/screenshots/projects/sidenote/1.png",
      // ],
      platforms: [
        BrandIcons.googleplay,
      ],
    ),
    ProjectData(
      title: "Didactduell",
      description:
          "Didactduell is an app for medical students I developed for a startup called Didactylus. "
          "The goal was to make learning interesting and replace expensive flash cards. "
          "Students could not only learn with the app via training mode but also challenge each other, "
          "chat, and improve their ranking among other features.\n\n"
          "Sadly, the startup ultimately failed before it launched, but the app is still available as a browser version. "
          "It probably still has a few bugs and only a few demo questions are available, "
          "but apart from that, this demo contains all the functionality planned for the launch.\n"
          "Just create a new account (email verification is turned off) and play around with it.\n\n"
          "There's also an admin panel where the team could add questions, upload images, review them, "
          "and ultimately publish them. This admin panel is not part of the demo for obvious reasons ;)",
      learningsTldr: "App development using Aurelia, Cordova & Firebase.",
      learnings:
          "This was a huge project, especially since I was the only developer working on it. "
          "Here are all the different frameworks and technologies I learned how to use during development. "
          "I used all of these for the first time during this project, so I can't say I did everything perfectly. "
          "However, I still think I did a pretty good job and I learned a lot for future projects, "
          "especially regarding code quality.\n\n"
          "**Technologies used:**\n"
          "- **Aurelia:** Alternative to Angular/React/Vue to build the interface in a modular way\n"
          "- **Typescript:** Basically javascript, but objectively much better\n"
          "- **Material Design Components for Web:** Successor to Material Design Lite\n"
          "- **Firebase:** Auth, Firestore, Firebase Cloud Messaging, Storage, Hosting\n"
          "- **Webpack:** Compile typescript & do the packaging\n"
          "- **Cordova:** Wrap the web app and provide native functionality via plugins\n"
          "- Writing custom plugins for mobile to add specific push notification functionality\n"
          "- Writing well organized, modular and maintainable code",
      urlDemo: "https://didactduell.web.app/",
      // 31st Aug. 2018
      timestamp: 1535666400000,
      icon: "didactduell.png",
      tags: [
        Tags.firebase,
        Tags.typescript,
        Tags.aurelia,
        Tags.webpack,
        Tags.java,
        Tags.material_design_components,
      ],
      // screenshots: [
      // TODO:
      //   "assets/screenshots/projects/sidenote/1.png",
      // ],
      platforms: [
        BrandIcons.googlechrome,
        BrandIcons.googleplay,
        BrandIcons.apple,
      ],
    ),
    ProjectData(
      title: "ShufflePaper",
      description: "ShufflePaper is a wallpaper manager for your Chromebook.\n"
          "Chrome OS does come with a way to change the current wallpaper, "
          "but it's pretty limited in it's functionality, even years later.\n"
          "**Features:**\n"
          "- Pick a folder and shuffle through it (manually or automatically)\n"
          "- Set an interval to update the wallpaper automatically\n"
          "- Pick the next wallpaper alphanumerically or at random\n\n"
          "Chrome apps will be discontinued in the future, but this app bridged a functionality "
          "gap during a time where Android apps weren't available yet.",
      learningsTldr: "javascript, html, css, Material Design Lite",
      learnings:
          "This was my first real project with web technologies using html, css and vanilla js. "
          "Originally I didn't even use Promises, since the async/await syntax wasn't widespread yet. \n"
          "In 2019, I decided to rewrite large parts of the app clean up the code, "
          "fix bugs, add functionality, and completely change the UI. \n"
          "The new UI was written using Material Design Lite and parts of its successor, "
          "Material Design Components for Web.",
      urlWebsite: "https://shufflepaper.web.app/",
      githubName: "shufflepaper",
      // Mar 2017
      timestamp: 1488668400000,
      tags: [
        Tags.javascript,
        Tags.material_design_lite,
      ],
      icon: "shufflepaper.png",
      // screenshots: [
      // TODO:
      // "assets/screenshots/projects/sidenote/1.png",
      // ],
      platforms: [
        BrandIcons.googlechrome,
      ],
    ),
    ProjectData(
      title: "Legacy Manager & Uploader",
      description:
          "A mod manager for [Super Smash Bros. Brawl Legacy XP.](http://www.smashbroslegacy.com/)\n"
          "- [**Legacy Manager:**](https://github.com/CiriousJoker/legacymanager) To download & update the game\n"
          "- [**Legacy Uploader:**](https://github.com/CiriousJoker/legacyuploader) For the mod team to upload new releases\n\n"
          "Sadly, the tool didn't catch on in the community and the game was now taken down eventually "
          "(most likely by Nintendo, but that's just speculation).",
      learningsTldr: "google drive api, oauth, electron, nodejs",
      learnings: "- **Google Drive Api:** Upload the game files to the cloud\n"
          "- **OAuth:** Authorize the upload for the correct account\n"
          "- **Electron:** Package the app for cross platform\n"
          "- **NodeJS:** Native file system access via javascript\n\n"
          "The cross platform functionality was never implemented, "
          "but it would have been relatively straight forward with the technologies used.",
      githubName: "legacymanager",
      urlDownload:
          "https://github.com/CiriousJoker/legacymanager/releases/latest",
      // Aug. 2017
      timestamp: 1502143200000,
      icon: "legacyxp.png",
      tags: [
        Tags.csharp,
        Tags.react,
        Tags.electron,
        Tags.nodejs,
      ],
      // screenshots: [
      // TODO:
      //   "assets/screenshots/projects/sidenote/1.png",
      // ],
      platforms: [
        BrandIcons.windows,
      ],
    ),
    ProjectData(
      title: "NXTProject",
      description:
          "This project consists of two parts, the NXTBurner (Windows) & the NXTPlayer (Lego + Java)."
          "NXTBurner is used to create disks. Once you printed them & glued them onto cardboard,"
          "you can play them back using the NXTPlayer."
          "You create a special disk using the NXTBurner, print it"
          "and glue it onto cardboard. Then, you can play it back using the NXTPlayer."
          ""
          "This was created as part of a school project where we got to create robots with the Lego NXT."
          "Most chose to build one of the suggested project ideas,"
          "but I always wanted one as a kid and never got it,"
          "so I used this opportunity to catch up a lot of things :)",
      githubName: "nxtburner.png",
      // 27th May 2017
      timestamp: 1495843200000,
      tags: [
        Tags.csharp,
        Tags.java,
      ],
      icon: "nxtburner.png",
      platforms: [
        BrandIcons.windows,
        Icons.developer_board_outlined,
      ],
      // screenshots: [
      //   "assets/screenshots/projects/sidenote/1.png",
      // ],
    ),
    ProjectData(
      title: "Homing Compass",
      description:
          "A homescreen widget that always points towards home (or any other location you specify). "
          "You can switch between multiple locations and the widget displays the direction and distance.\n\n"
          "Was a parting gift for a friend who travelled abroad :)",
      learningsTldr: "Android, widgets, GPS, threads",
      learnings: "- Using GPS & the Maps api\n"
          "- Creating widgets\n"
          "- Update the widget from a background thread\n"
          "- Calculating orientation & distance on a sphere\n",
      githubName: "HomingCompass",
      urlPlaystore:
          "https://play.google.com/store/apps/details?id=com.ciriousjoker.homingcompass",
      // 23rd Sept. 2016
      timestamp: 1474636718000,
      tags: [
        Tags.java,
      ],
      platforms: [BrandIcons.googleplay],
      icon: "homingcompass.png",
      // screenshots: [
      //   "assets/screenshots/projects/sidenote/1.png",
      // ],
    ),
    ProjectData(
        title: "SideNote",
        description:
            "This program was my first attempt at C#/.NET + WPF, after being fascinated by the UI "
            "of a tool called Curse Voice, "
            "which was written in it (at least according to their open hiring positions at the time).\n"
            "**Features:**\n"
            "- Note is automatically saved\n"
            "- shift+tab: Slide in/out from the right screen edge\n"
            "- Settings: font family, font size & color theme",
        learningsTldr:
            "Introduction to C#, .NET, WPF, animations & state management",
        learnings: "- C# .NET development for Windows\n"
            "- Designing a GUI in WPF\n"
            "- Basic animations, concept of easing & animation curves\n"
            "- Basic state management to reflect settings changes "
            "like color themes immediately without restarting",
        githubName: "SideNote",
        urlDownload: "https://github.com/CiriousJoker/SideNote/releases/latest",
        // Nov. 2015
        timestamp: 1446332400000,
        tags: [
          Tags.csharp,
        ],
        icon: "sidenote.png",
        // screenshots: [
        //   "TODO:",
        // ],
        platforms: [BrandIcons.windows]),
    ProjectData(
        title: "nTradeAdvanced",
        description:
            "A program for the Ti-Nspire CAS calculator, which allows you to trade Pokémon between two third gen Pokémon games. "
            "Once you've rooted your device using Ndless, you can install a GBA emulator and play Pokémon. "
            "There is no link functionality available, but with this tool, you can trade Pokémon anyway. "
            "Just transfer the .sav files, run this tool, and trade Pokémon between them. "
            "I also included a little tool to fix corrupted save states, which could be caused by cheating."
            "**Supported games:** Firered/Leafgreen, Ruby/Sapphire, Emerald",
        learningsTldr: "c, pointer arithmetic, checksums",
        learnings: """
- Developed in c
- Basics of embedded programming with tight hardware constraints
- Understanding inofficial reverse-engineered documentation about save formats
- Pointer arithmetic to modify the savestates in-memory
- Recalculating checksums to repair a corrupted save file
""",
        githubName: "nTradeAdvanced",
        urlDownload:
            "https://github.com/CiriousJoker/nTradeAdvanced/releases/latest",
        // 25th July 2014
        timestamp: 1406246400000,
        tags: [
          Tags.c,
        ],
        icon: "ntradeadvanced.png",
        platforms: [
          Icons.calculate,
        ]
        // screenshots: [
        //   "TODO:",
        // ],
        ),
//     ProjectData(
//       title: "nTradeAdvanced",
//       description: """
// Test
// - asd
// """,
//       githubName: "nTradeAdvanced",
//       urlDownload:
//           "https://github.com/CiriousJoker/nTradeAdvanced/releases/latest",
//       year: 2014,
//       tags: [
//         Tag(colorHex: "#ff0000", label: "C"),
//       ],
//     ),
  ];
}

class ProjectData {
  final String title;
  final String githubName;
  final String description;
  final String learningsTldr;
  final String learnings;
  final String urlImage;
  final String urlDownload;
  final String urlDemo;
  final String urlPlaystore;
  final String urlWebsite;

  // filename in assets/icons/*
  final String icon;

  /// Unix epoch timestamp
  final int timestamp;
  final List<Tag> tags;
  final List<String> screenshots;
  final List<IconData> platforms;

  const ProjectData({
    @required this.title,
    @required this.timestamp,
    @required this.icon,
    this.githubName,
    this.description = "",
    this.learningsTldr = "",
    this.learnings = "",
    this.urlImage,
    this.urlDemo,
    this.urlPlaystore,
    this.urlDownload,
    this.urlWebsite,
    this.platforms = const [],
    this.tags = const [],
    this.screenshots = const [],
  });
}

class Tags {
  static const Tag aurelia = Tag(
    label: "Aurelia",
    colorHex: "#ED2B88",
    icon: BrandIcons.aurelia,
  );
  static const Tag typescript = Tag(
    label: "Typescript",
    icon: BrandIcons.typescript,
    colorHex: "#F7DF1E",
  );
  static const Tag javascript = Tag(
    label: "Javascript",
    icon: BrandIcons.javascript,
    colorHex: "#F7DF1E",
  );
  static const Tag css = Tag(
    label: "CSS3",
    icon: BrandIcons.css3,
    colorHex: "#1572B6",
  );
  static const Tag html = Tag(
    label: "html",
    icon: BrandIcons.html5,
    colorHex: "#E34F26",
  );

  static const Tag webpack = Tag(
    label: "Webpack",
    icon: BrandIcons.webpack,
    colorHex: "#1389FD",
  );

  static const Tag flutter = Tag(
    label: "Flutter",
    icon: BrandIcons.flutter,
    colorHex: "#1389FD",
  );

  static const Tag googletagmanager = Tag(
    label: "Google Tag Manager",
    icon: BrandIcons.googletagmanager,
    colorHex: "#246FDB",
  );

  static const Tag googleanalytics = Tag(
    label: "Analytics",
    icon: BrandIcons.googleanalytics,
    colorHex: "#E8710A",
  );

  static const Tag firebase = Tag(
    label: "Firebase",
    icon: BrandIcons.firebase,
    colorHex: "#FFA000",
  );

  static const Tag react = Tag(
    colorHex: "#20232a",
    icon: BrandIcons.react,
    label: "React",
  );
  static const Tag csharp = Tag(
    label: "C#",
    icon: BrandIcons.csharp,
    colorHex: "#3A0091",
  );

  static const Tag electron = Tag(
    label: "Electron",
    icon: BrandIcons.electron,
    colorHex: "#2b2e3b",
  );

  static const Tag nodejs = Tag(
    label: "NodeJS",
    icon: BrandIcons.node_dot_js,
    colorHex: "#026e00",
  );

  static const Tag unity = Tag(
    label: "Unity",
    icon: BrandIcons.unity,
    colorHex: "#000000",
  );

  static const Tag c = Tag(
    label: "c",
    icon: BrandIcons.c,
    colorHex: "#00599C",
  );
  static const Tag java = Tag(
    label: "Java",
    colorHex: "#ED8B00",
    icon: BrandIcons.java,
  );

  static const Tag material_design_lite = Tag(
    label: "Material Design Lite",
    colorHex: "#2E2E2E",
    icon: BrandIcons.materialdesign,
  );

  static const Tag material_design_components = Tag(
    label: "Material Design Components",
    colorHex: "#6200EE",
    icon: BrandIcons.materialdesign,
  );

  static const Tag tailwind = Tag(
    label: "Tailwind",
    colorHex: "#06B6D4",
    icon: BrandIcons.tailwindcss,
  );

  static const Tag ejs = Tag(
    label: "Embedded Javascript Templating",
    colorHex: "#90a93a",
    icon: BrandIcons.javascript,
  );

  static const Tag sqlite = Tag(
    label: "SQLite",
    icon: BrandIcons.sqlite,
    colorHex: "#044a64",
  );

  static const Tag adobeaftereffects = Tag(
    label: "After Effects",
    icon: BrandIcons.adobeaftereffects,
    colorHex: "#00005b",
  );

// Tag(colorHex: "#ff0000", label: "Java")
  // Tag(label: "C#", logo: "c-sharp"),
}

class Tag {
  final String label;

  /// Fallback color if the technology doesn't exist in Github.
  final String colorHex;

  /// Github language name (to retrieve color).
  /// Only necessary if different from label.
  // final String github;

  /// shields.io logo name. Only necessary if different from label.
  /// https://github.com/Ileriayo/markdown-badges
  final IconData icon;

  const Tag({
    @required this.label,
    @required this.colorHex,
    @required this.icon,
  });
}
