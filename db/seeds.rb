# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comic.create([
  {
    img_path: '../app/assets/images/comic/leanpouches.jpg',
    title: 'Lean Pouches',
    hover_text: 'mmm mmm input'
  },
  {
    img_path: '../app/assets/images/comic/planb.jpg',
    title: 'Plan B',
    hover_text: "I'm not in the mood for trans fat right now!"
  },
  {
    img_path: '../app/assets/images/comic/redbull.jpg',
    title: 'Red Bull',
    hover_text: "Sleeping is for poor people"
  },
  {
    img_path: '../app/assets/images/comic/uno.jpg',
    title: "Things you can't do alone",
    hover_text: "#irony"
  },
  {
    img_path: '../app/assets/images/comic/thanksgiving.jpg',
    title: 'Happy Thanksgiving',
    hover_text: "everyone is too old"
  },
  {
    img_path: '../app/assets/images/comic/dnaEvidence.jpg',
    title: 'DNA Evidence',
    hover_text: "#topCop"
  },
  {
    img_path: '../app/assets/images/comic/missingDog.jpg',
    title: 'Missing Dog',
    hover_text: "There ain't no rule that says a dog can't play poker"
  },
  {
    img_path: '../app/assets/images/comic/maury.jpg',
    title: 'You ARE the Father!',
    hover_text: "these just don't smell right"
  }
])
