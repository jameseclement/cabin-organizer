# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ first_name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cabin.destroy_all
Kid.destroy_all

b = Cabin.create(name: 'Blue', leader_last: 'Smith', assistant_last: 'Timler', gender: "Boys", capacity: 6, year:1)
g = Cabin.create(name: 'Green', leader_last: 'Maloney', assistant_last: 'Dusenbury', gender: "Boys", capacity: 5, year:2)
y = Cabin.create(name: 'Yellow', leader_last: 'Niklason', assistant_last: 'Barry', gender: "Boys", capacity: 3, year:3)
r = Cabin.create(name: 'Red', leader_last: 'Rhodes', assistant_last: 'Rhodes', gender: "Girls", capacity: 4, year:4)



Kid.create(first_name: 'James', last_name: 'Clement', gender: "Male", year: 1, sport: "ballsport", emergency_contact: "Mom", cabin: b)
Kid.create(first_name: 'Brandon', last_name: 'Tolman', gender: "Male", year: 4, sport: "ballsport", emergency_contact: "Mom", cabin: r)
Kid.create(first_name: 'Mollie', last_name: 'Tolman', gender: "Female", year: 4, sport: "ballsport", emergency_contact: "Mom", cabin: r)
Kid.create(first_name: 'Lee', last_name: 'Clement', gender: "Male", year: 3, sport: "ballsport", emergency_contact: "Mom", cabin: y)
Kid.create(first_name: 'Jackson', last_name: 'Clement', gender: "Male", year: 2, sport: "ballsport", emergency_contact: "Mom", cabin: g)
