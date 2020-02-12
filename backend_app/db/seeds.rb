# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Match.destroy_all
Account.destroy_all

acc1 = Account.create(name: "Tissi", zip: 23508, learning: "German", teaching: "Swahili", bio: "Just a chill chick doing my thing in the USA", email: "tissi@mail.com")
acc2 = Account.create(name: "Aaron", zip: 23451, learning: "Japanese", teaching: "German", bio: "Helping all my cohort-mates!", email: "aaron@mail.com")
acc3 = Account.create(name: "Doug", zip: 23508, learning: "Swahili", teaching: "Japanese", bio: "My laptop stand is the shit!", email: "doug@mail.com")

match1 = Match.create(learner: acc3, teacher: acc1, language: "Swahili")
match2 = Match.create(learner: acc1, teacher: acc2, language: "German")
match3 = Match.create(learner: acc2, teacher: acc3, language: "Japanese")
