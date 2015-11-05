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
    title: "Lean Pouches",
    hover_text: "Lean Pouches",
    image: "leanpouches.jpg"
  },
  {
    title: "Plan B",
    hover_text: "Plan B",
    image: "planb.jpg"
  },
  {
    title: "Red Bull",
    hover_text: "Red Bull",
    image: "redbull.jpg"
  },
  {
    title: "Things you can't do alone",
    hover_text: "uno",
    image: "uno.jpg"
  },
  {
    title: "Happy Thanksgiving",
    hover_text: "Creepy Uncle",
    image: "thanksgiving.jpg"
  },
  {
    title: "DNA Evidence",
    hover_text: "DNA Evidence",
    image: "dnaevidence.jpg"
  },
  {
    title: "Missing Dog",
    hover_text: "Missing Dog",
    image: "missingdog.jpg"
  },
  {
    title: "You ARE the Father",
    hover_text: "#maury",
    image: "maury.jpg"
  },
  {
    title: "Dollhouse",
    hover_text: "Dollhouse",
    image: "dollhouse.jpg"
  },
  {
    title: "Chip Progression",
    hover_text: "Chip Progression",
    image: "chips.jpg"
  },
  {
    title: "Remorse",
    hover_text: "#remorse",
    image: "santaremorse.png"
  },
  {
    title: "He knows when you're awake",
    hover_text: "he knows...",
    image: "masterbating.png"
  },
  {
    title: "Alternative Energy",
    hover_text: "Alternative Energy",
    image: "alternativeenergy.jpg"
  },
  {
    title: "Inspiration",
    hover_text: "Inspiration",
    image: "inspiration.jpg"
  },
  {
    title: "Christmas Spirit",
    hover_text: "Christmas Spirit",
    image: "xmasspirit.png"
  },
  {
    title: "Wasabi",
    hover_text: "Wasabi",
    image: "wasabi.jpg"
  },
  {
    title: "Thermostat",
    hover_text: "Thermostat",
    image: "thermostat.jpg"
  },
  {
    title: "Big Break",
    hover_text: "Big Break",
    image: "ugly.jpg"
  },
  {
    title: "Cover Up",
    hover_text: "Cover Up",
    image: "bug.jpg"
  },
  {
    title: "Kitten Violence",
    hover_text: "#KvM",
    image: "kvm.jpg"
  },
  {
    title: "Food Drive",
    hover_text: "Food Drive",
    image: "fooddrive.jpg"
  },
  {
    title: "Better Late than Never",
    hover_text: "#theTalk",
    image: "sexed.jpg"
  },
  {
    title: "Mirror",
    hover_text: "#ouch",
    image: "mirror.jpg"
  },
  {
    title: "$5 of Regret + Tax",
    hover_text: "WHAT!?!?! I CAN'T GET TURKEY?!?!?!",
    image: "sandwich.png"
  },
  {
    title: "Genesis",
    hover_text: "#catLady",
    image: "genesis.png"
  },
  {
    title: "Tot to Happiness Ratio",
    hover_text: "I should probably go get some tots...",
    image: "tots.png"
  },
  {
    title: "Apple Store",
    hover_text: "#macAttack",
    image: "applestore.png"
  },
  {
    title: "NERF",
    hover_text: "that might be racist...",
    image: "jihad.png"
  },
  {
    title: "Things that are better than Congress",
    hover_text: "#congressRage",
    image: "congressrage.png"
  },
  {
    title: "Rememberal",
    hover_text: "Damnit!",
    image: "rememberal.png"
  },
  {
    title: "Real Women have Curves",
    hover_text: "Real = Fat",
    image: "realwomen.png"
  },
  {
    title: "Theories on how New Popes are Selected",
    hover_text: "DON'T TALK ABOUT POPE CLUB",
    image: "pope.png"
  },
  {
    title: "Fitness Goals",
    hover_text: "#existentialFitness",
    image: "weightlifting.png"
  },
  {
    title: "Rice Maker",
    hover_text: "Don't tell your Asian friends, they WILL make fun of you.",
    image: "ricemaker.png"
  },
  {
    title: "Butt Staring Etiquette",
    hover_text: "at 10+ seconds it is best to have your mouth hanging agape",
    image: "buttstare.png"
  },
  {
    title: "Doctor",
    hover_text: "SOMEONE PLEASE TELL DR OZ!!!! or, actually, maybe don't",
    image: "dr.png"
  },
  {
    title: "Welcome Spring!",
    hover_text: "pollen is plant gizz",
    image: "spring.png"
  },
  {
    title: "Inbox Sobriety Test",
    hover_text: "results may take up to 12 hours",
    image: "inbox.png"
  },
  {
    title: "Corn",
    hover_text: "turrible, just turrible",
    image: "corn.png"
  },
  {
    title: "Burrito",
    hover_text: "Burrito fatigue is almost as bad as ham fatigue",
    image: "burrito.png"
  },
  {
    title: "Pool Shirts",
    hover_text: "Now available in a variety of transparent colors!",
    image: "shirt.png"
  },
  {
    title: "Texas: Perception vs Reality",
    hover_text: "Go SPURS!",
    image: "alternativeenergy.jpg"
  },
  {
    title: "Should I wear this shirt?",
    hover_text: "It should be noted that hamstermom is not know for being fashionable or hygiene",
    image: "cleanshirt.png"
  },
  {
    title: "Aggressive Flirting",
    hover_text: "This is why hamstermom is single",
    image: "flirt.png"
  },
  {
    title: "Living Frugally",
    hover_text: "Cost: Your decency",
    image: "frugal3.png"
  },
  {
    title: "Things that get in the way of video games",
    hover_text: "Yelling, \"YOU'RE A FAT VIRGIN!!\" doesn't make you respawn any faster.",
    image: "videogames.png"
  },
  {
    title: "Work vs Home",
    hover_text: "work is the worst",
    image: "work.png"
  },
  {
    title: "Customs",
    hover_text: "...",
    image: "customs.png"
  },
  {
    title: "Free Shirt",
    hover_text: "#worthIt",
    image: "freeshirt.png"
  },
  {
    title: "Taco Heaven",
    hover_text: ":-)",
    image: "tacoheaven.png"
  },
  {
    title: "Review",
    hover_text: "what a dick",
    image: "funeralreview.png"
  }
]

# comics seed
# comics.each do |comic|
#   Comic.create(
#     {
#       title: comic[:title],
#       hover_text: comic[:hover_text],
#       image: File.new("#{Rails.root}/app/assets/images/comic/#{comic[:image]}")
#     }
#   )
# end
