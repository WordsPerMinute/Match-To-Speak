# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Match.destroy_all
Account.destroy_all

acc1 = Account.create(name: "Tissi", zip: 23508, learning: "German", teaching: "Swahili", bio: "Just a chill chick doing my thing in the USA", email: "tissi@email.com", photo_url: "assets/user_photo/tissi.jpeg")
acc2 = Account.create(name: "Aaron", zip: 23503, learning: "Japanese", teaching: "German", bio: "Helping all my cohortmates!", email: "aaron@email.com", photo_url: "assets/user_photo/aaron.jpeg")
acc3 = Account.create(name: "Doug", zip: 23508, learning: "Swahili", teaching: "Japanese", bio: "My laptop stand is the ish!", email: "doug@email.com", photo_url: "assets/user_photo/doug.png")
acc4 = Account.create(name: "Lillian", zip: 23508, learning: "Arabic", teaching: "French", bio: "I'm a dangerous lady in red", email: "lillian@email.com", photo_url: "assets/user_photo/lillian.png")
acc5 = Account.create(name: "Jorge", zip: 23504, learning: "Arabic", teaching: "Japanese", bio: "I got moves!", email: "jorge@email.com", photo_url: "assets/user_photo/jorge.jpeg")
acc6 = Account.create(name: "Mike", zip: 23511, learning: "Spanish", teaching: "Arabic", bio: "I'm very mysterious... want to know more?", email: "mike@email.com", photo_url: "assets/user_photo/mike.jpeg")
acc7 = Account.create(name: "Adam", zip: 23509, learning: "French", teaching: "Spanish", bio: "I like to arch", email: "adam@email.com", photo_url: "assets/user_photo/adam.jpeg")
acc8 = Account.create(name: "Zach", zip: 23508, learning: "Swahili", teaching: "Spanish", bio: "I'm zesty AND zig-zag all in one", email: "zach@email.com", photo_url: "assets/user_photo/zach.png")
acc9 = Account.create(name: "Brad", zip: 23511, learning: "French", teaching: "Japanese", bio: "I like to sleep with a supportive pillow under my belly. Also, I love bananas", email: "brad@email.com", photo_url: "assets/user_photo/brad.png")
acc10 = Account.create(name: "Miwha", zip: 23503, learning: "Spanish", teaching: "Arabic", bio: "I am always up to something", email: "miwha@email.com", photo_url: "assets/user_photo/miwha.png")
acc11 = Account.create(name: "Alice", zip: 23508, learning: "Japanese", teaching: "French", bio: "I am wonderful", email: "alice@email.com", photo_url: "assets/user_photo/alice.jpeg")
acc11 = Account.create(name: "Jeremy", zip: 23511, learning: "German", teaching: "Swahili", bio: "Some call me jolly, you can call me Jeremy", email: "jeremy@email.com", photo_url: "assets/user_photo/jeremy.jpeg")
acc11 = Account.create(name: "AJ", zip: 23508, learning: "German", teaching: "French", bio: "Catch me flying high like an albatross, fool", email: "aj@email.com", photo_url: "assets/user_photo/aj.jpeg")
acc11 = Account.create(name: "Josh", zip: 23503, learning: "Hindi", teaching: "German", bio: "I'm new to the cohort, but I'm gooooood at what I do.", email: "josh@email.com", photo_url: "assets/user_photo/josh.png")
acc11 = Account.create(name: "Jared", zip: 23508, learning: "Chinese (Mandarin)", teaching: "Hindi", bio: "I have an Eskimo suit that I made.", email: "jared@email.com", photo_url: "assets/user_photo/jared.png")
acc11 = Account.create(name: "Rachel", zip: 23511, learning: "Chinese (Mandarin)", teaching: "Hindi", bio: "I love to run... Wanna race?", email: "rachel@email.com", photo_url: "assets/user_photo/rachel.jpeg")
acc11 = Account.create(name: "Ben", zip: 23504, learning: "Swahili", teaching: "Chinese (Mandarin)", bio: "Be careful, I write code so sharp you'll get cut", email: "ben@email.com", photo_url: "assets/user_photo/ben.jpeg")
acc11 = Account.create(name: "Corey", zip: 23505, learning: "Punjabi", teaching: "English", bio: "Just a simple person looking for the best cortados and breakfast burritos.", email: "doug@email.com", photo_url: "assets/user_photo/corey.jpeg")

match1 = Match.create(learner: acc3, teacher: acc1, language: "Swahili")
match2 = Match.create(learner: acc1, teacher: acc2, language: "German")
match3 = Match.create(learner: acc2, teacher: acc3, language: "Japanese")
