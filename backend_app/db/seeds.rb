# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Match.destroy_all
Account.destroy_all

acc1 = Account.create(name: "Tissi", zip: 23508, learning: "DE", teaching: "SW", bio: "Just a chill chick doing my thing in the USA", email: "tissi@mail.com")
acc2 = Account.create(name: "Aaron", zip: 23503, learning: "JA", teaching: "DE", bio: "Helping all my cohortmates!", email: "aaron@mail.com")
acc3 = Account.create(name: "Doug", zip: 23508, learning: "SW", teaching: "JA", bio: "My laptop stand is the shit!", email: "doug@mail.com")
acc4 = Account.create(name: "Lillian", zip: 23508, learning: "AR", teaching: "FR", bio: "I'm a dangerous lady in red", email: "doug@mail.com")
acc5 = Account.create(name: "Jorge", zip: 23504, learning: "AR", teaching: "JA", bio: "I got moves!", email: "doug@mail.com")
acc6 = Account.create(name: "Mike", zip: 23511, learning: "ES", teaching: "AR", bio: "I'm very mysterious... want to know more?", email: "doug@mail.com")
acc7 = Account.create(name: "Adam", zip: 23509, learning: "FR", teaching: "ES", bio: "I like to arch", email: "doug@mail.com")
acc8 = Account.create(name: "Zach", zip: 23508, learning: "SW", teaching: "ES", bio: "I'm zesty AND zig-zag all in one", email: "doug@mail.com")
acc9 = Account.create(name: "Brad", zip: 23511, learning: "FR", teaching: "JA", bio: "I love bananas", email: "doug@mail.com")
acc10 = Account.create(name: "Miwha", zip: 23503, learning: "ES", teaching: "AR", bio: "I am always up to something", email: "doug@mail.com")
acc11 = Account.create(name: "Alice", zip: 23508, learning: "JA", teaching: "FR", bio: "I am wonderful", email: "doug@mail.com")
acc11 = Account.create(name: "Jeremy", zip: 23508, learning: "DE", teaching: "SW", bio: "Some call me jolly, you can call me Jeremy", email: "doug@mail.com")
acc11 = Account.create(name: "AJ", zip: 23508, learning: "DE", teaching: "FR", bio: "Catch me flying high like an albatross, fool", email: "doug@mail.com")
acc11 = Account.create(name: "Josh", zip: 23508, learning: "SW", teaching: "DE", bio: "I'm new to the cohort, but I'm gooooood at what I do.", email: "doug@mail.com")

match1 = Match.create(learner: acc3, teacher: acc1, language: "SW")
match2 = Match.create(learner: acc1, teacher: acc2, language: "DE")
match3 = Match.create(learner: acc2, teacher: acc3, language: "JA")
