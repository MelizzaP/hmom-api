# user seed
Admin.create(
  {
    email: ENV["GMAIL_USERNAME"],
    password: ENV["HMOM_PW"],
    password_confirmation: ENV["HMOM_PW"]
  }
)

comics = [
  {
    id: 1,
    title: "Lean Pouches",
    hover_text: "Lean Pouches",
    image: "leanpouches.jpg"
  },
  {
    id: 2,
    title: "Plan B",
    hover_text: "Plan B",
    image: "planb.jpg"
  },
  {
    id: 3,
    title: "Red Bull",
    hover_text: "Red Bull",
    image: "redbull.jpg"
  },
  {
    id: 4,
    title: "Things you can't do alone",
    hover_text: "uno",
    image: "uno.jpg"
  },
  {
    id: 5,
    title: "Happy Thanksgiving",
    hover_text: "Creepy Uncle",
    image: "thanksgiving.jpg"
  },
  {
    id: 6,
    title: "DNA Evidence",
    hover_text: "DNA Evidence",
    image: "dnaevidence.jpg"
  },
  {
    id: 7,
    title: "Missing Dog",
    hover_text: "Missing Dog",
    image: "missingdog.jpg"
  },
  {
    id: 8,
    title: "You ARE the Father",
    hover_text: "#maury",
    image: "maury.jpg"
  },
  {
    id: 9,
    title: "Dollhouse",
    hover_text: "Dollhouse",
    image: "dollhouse.jpg"
  },
  {
    id: 10,
    title: "Chip Progression",
    hover_text: "Chip Progression",
    image: "chips.jpg"
  },
  {
    id: 11,
    title: "Remorse",
    hover_text: "#remorse",
    image: "santaremorse.png"
  },
  {
    id: 12,
    title: "He knows when you're awake",
    hover_text: "he knows...",
    image: "masterbating.png"
  },
  {
    id: 13,
    title: "Alternative Energy",
    hover_text: "Alternative Energy",
    image: "alternativeenergy.jpg"
  },
  {
    id: 14,
    title: "Inspiration",
    hover_text: "Inspiration",
    image: "inspiration.jpg"
  },
  {
    id: 15,
    title: "Christmas Spirit",
    hover_text: "Christmas Spirit",
    image: "xmasspirit.png"
  },
  {
    id: 16,
    title: "Wasabi",
    hover_text: "Wasabi",
    image: "wasabi.jpg"
  },
  {
    id: 17,
    title: "Thermostat",
    hover_text: "Thermostat",
    image: "thermostat.jpg"
  },
  {
    id: 18,
    title: "Big Break",
    hover_text: "Big Break",
    image: "ugly.jpg"
  },
  {
    id: 19,
    title: "Cover Up",
    hover_text: "Cover Up",
    image: "bug.jpg"
  },
  {
    id: 20,
    title: "Kitten Violence",
    hover_text: "#KvM",
    image: "kvm.jpg"
  },
  {
    id: 21,
    title: "Food Drive",
    hover_text: "Food Drive",
    image: "fooddrive.jpg"
  },
  {
    id: 22,
    title: "Better Late than Never",
    hover_text: "#theTalk",
    image: "sexed.jpg"
  },
  {
    id: 23,
    title: "Mirror",
    hover_text: "#ouch",
    image: "mirror.jpg"
  },
  {
    id: 24,
    title: "$5 of Regret + Tax",
    hover_text: "WHAT!?!?! I CAN'T GET TURKEY?!?!?!",
    image: "sandwich.png"
  },
  {
    id: 25,
    title: "Genesis",
    hover_text: "#catLady",
    image: "genesis.png"
  },
  {
    id: 26,
    title: "Tot to Happiness Ratio",
    hover_text: "I should probably go get some tots...",
    image: "tots.png"
  },
  {
    id: 27,
    title: "Apple Store",
    hover_text: "#macAttack",
    image: "applestore.png"
  },
  {
    id: 28,
    title: "NERF",
    hover_text: "that might be racist...",
    image: "jihad.png"
  },
  {
    id: 29,
    title: "Things that are better than Congress",
    hover_text: "#congressRage",
    image: "congressrage.png"
  },
  {
    id: 30,
    title: "Rememberal",
    hover_text: "Damnit!",
    image: "rememberal.png"
  },
  {
    id: 31,
    title: "Real Women have Curves",
    hover_text: "Real = Fat",
    image: "realwomen.png"
  },
  {
    id: 32,
    title: "Theories on how New Popes are Selected",
    hover_text: "DON'T TALK ABOUT POPE CLUB",
    image: "pope.png"
  },
  {
    id: 33,
    title: "Fitness Goals",
    hover_text: "#existentialFitness",
    image: "weightlifting.png"
  },
  {
    id: 34,
    title: "Rice Maker",
    hover_text: "Don't tell your Asian friends, they WILL make fun of you.",
    image: "ricemaker.png"
  },
  {
    id: 35,
    title: "Butt Staring Etiquette",
    hover_text: "at 10+ seconds it is best to have your mouth hanging agape",
    image: "buttstare.png"
  },
  {
    id: 36,
    title: "Doctor",
    hover_text: "SOMEONE PLEASE TELL DR OZ!!!! or, actually, maybe don't",
    image: "dr.png"
  },
  {
    id: 37,
    title: "Welcome Spring!",
    hover_text: "pollen is plant gizz",
    image: "spring.png"
  },
  {
    id: 38,
    title: "Inbox Sobriety Test",
    hover_text: "results may take up to 12 hours",
    image: "inbox.png"
  },
  {
    id: 39,
    title: "Corn",
    hover_text: "turrible, just turrible",
    image: "corn.png"
  },
  {
    id: 40,
    title: "Burrito",
    hover_text: "Burrito fatigue is almost as bad as ham fatigue",
    image: "burrito.png"
  },
  {
    id: 41,
    title: "Pool Shirts",
    hover_text: "Now available in a variety of transparent colors!",
    image: "shirt.png"
  },
  {
    id: 42,
    title: "Texas: Perception vs Reality",
    hover_text: "Go SPURS!",
    image: "alternativeenergy.jpg"
  },
  {
    id: 43,
    title: "Should I wear this shirt?",
    hover_text: "It should be noted that hamstermom is not know for being fashionable or hygiene",
    image: "cleanshirt.png"
  },
  {
    id: 44,
    title: "Aggressive Flirting",
    hover_text: "This is why hamstermom is single",
    image: "flirt.png"
  },
  {
    id: 45,
    title: "Living Frugally",
    hover_text: "Cost: Your decency",
    image: "frugal3.png"
  },
  {
    id: 46,
    title: "Things that get in the way of video games",
    hover_text: "Yelling, \"YOU'RE A FAT VIRGIN!!\" doesn't make you respawn any faster.",
    image: "videogames.png"
  },
  {
    id: 47,
    title: "Work vs Home",
    hover_text: "work is the worst",
    image: "work.png"
  },
  {
    id: 48,
    title: "Customs",
    hover_text: "...",
    image: "customs.png"
  },
  {
    id: 49,
    title: "Paycheck",
    hover_text: "This totally never happens...",
    image: "paycheck.png"
  },
  {
    id: 50,
    title: "Free Shirt",
    hover_text: "#worthIt",
    image: "freeshirt.png"
  },
  {
    id: 51,
    title: "Taco Heaven",
    hover_text: ":-)",
    image: "tacoheaven.png"
  },
  {
    id: 52,
    title: "Review",
    hover_text: "what a dick",
    image: "funeralreview.png"
  }
]

# comics seed
comics.each do |comic|
  Comic.create(
    {
      id: comic[:id],
      title: comic[:title],
      hover_text: comic[:hover_text],
      image: File.new("#{Rails.root}/app/assets/images/comic/#{comic[:image]}")
    }
  )
end
