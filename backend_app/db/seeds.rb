# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Match.destroy_all
Account.destroy_all

acc1 = Account.create(name: "Tissi", zip: 23508, learning: "DE", teaching: "SW", bio: "Just a chill chick doing my thing in the USA", email: "tissi@mail.com", photo_url: "assets/user_photo/tissi.jpeg")
acc2 = Account.create(name: "Aaron", zip: 23503, learning: "JA", teaching: "DE", bio: "Helping all my cohortmates!", email: "aaron@mail.com", photo_url: "assets/user_photo/aaron.jpeg")
acc3 = Account.create(name: "Doug", zip: 23508, learning: "SW", teaching: "JA", bio: "My laptop stand is the shit!", email: "doug@mail.com", photo_url: "assets/user_photo/doug.png")
acc4 = Account.create(name: "Lillian", zip: 23508, learning: "AR", teaching: "FR", bio: "I'm a dangerous lady in red", email: "lillian@mail.com", photo_url: "assets/user_photo/lillian.png")
acc5 = Account.create(name: "Jorge", zip: 23504, learning: "AR", teaching: "JA", bio: "I got moves!", email: "email@email.com", photo_url: "assets/user_photo/jorge.jpeg")
acc6 = Account.create(name: "Mike", zip: 23511, learning: "ES", teaching: "AR", bio: "I'm very mysterious... want to know more?", email: "email@email.com", photo_url: "assets/user_photo/mike.jpeg")
acc7 = Account.create(name: "Adam", zip: 23509, learning: "FR", teaching: "ES", bio: "I like to arch", email: "email@email.com", photo_url: "assets/user_photo/adam.jpeg")
acc8 = Account.create(name: "Zach", zip: 23508, learning: "SW", teaching: "ES", bio: "I'm zesty AND zig-zag all in one", email: "email@email.com", photo_url: "assets/user_photo/zach.png")
acc9 = Account.create(name: "Brad", zip: 23511, learning: "FR", teaching: "JA", bio: "I love bananas", email: "email@email.com", photo_url: "assets/user_photo/brad.png")
acc10 = Account.create(name: "Miwha", zip: 23503, learning: "ES", teaching: "AR", bio: "I am always up to something", email: "email@email.com", photo_url: "assets/user_photo/miwha.png")
acc11 = Account.create(name: "Alice", zip: 23508, learning: "JA", teaching: "FR", bio: "I am wonderful", email: "email@email.com", photo_url: "assets/user_photo/alice.jpeg")
acc11 = Account.create(name: "Jeremy", zip: 23511, learning: "DE", teaching: "SW", bio: "Some call me jolly, you can call me Jeremy", email: "email@email.com", photo_url: "assets/user_photo/jeremy.jpeg")
acc11 = Account.create(name: "AJ", zip: 23508, learning: "DE", teaching: "FR", bio: "Catch me flying high like an albatross, fool", email: "email@email.com", photo_url: "assets/user_photo/aj.jpeg")
acc11 = Account.create(name: "Josh", zip: 23503, learning: "HI", teaching: "DE", bio: "I'm new to the cohort, but I'm gooooood at what I do.", email: "email@email.com", photo_url: "assets/user_photo/josh.png")
acc11 = Account.create(name: "Jared", zip: 23508, learning: "ZH", teaching: "HI", bio: "I have an Eskimo suit that I made.", email: "doug@mail.com", photo_url: "assets/user_photo/jared.png")
acc11 = Account.create(name: "Rachel", zip: 23511, learning: "ZH", teaching: "HI", bio: "I love to run... Wanna race?", email: "doug@mail.com", photo_url: "assets/user_photo/rachel.jpeg")
acc11 = Account.create(name: "Ben", zip: 23504, learning: "SW", teaching: "ZH", bio: "Be careful, I write code so sharp you'll get cut", email: "doug@mail.com", photo_url: "assets/user_photo/ben.jpeg")

match1 = Match.create(learner: acc3, teacher: acc1, language: "SW")
match2 = Match.create(learner: acc1, teacher: acc2, language: "DE")
match3 = Match.create(learner: acc2, teacher: acc3, language: "JA")
