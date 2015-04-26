# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# LOCATIONS
Location.create name: "Cafe3", description: "Dining Hall", address: "2400 Durant Ave Berkeley, CA 94701"
Location.create name: "Crossroads", description: "Dining Hall", address: "2415 Bowditch St, Berkeley, CA 94704"
Location.create name: "Clark Kerr", description: "Dining Hall", address: "2601 Warring St, Berkeley, CA 94720"
Location.create name: "Foothill", description: "Dining Hall", address: "2700 Hearst Ave, Berkeley, CA 94720"

# GROUPS
Group.create name: "House Stark", description: "Winter is Coming", time: "6:00pm", location: "Foothill"
Group.create name: "House Tyrell", description: "Growing Strong", time: "6:45pm", location: "Clark Kerr"
Group.create name: "House Lannister", description: "Hear Me Roar", time: "11:00am", location: "Clark Kerr"
Group.create name: "House Targaryen", description: "Fire and Blood", time: "5:30pm", location: "Crossroads"
Group.create name: "House Martell", description: "Unbowed, Unbent, Unbroken", time: "12:30pm", location: "Cafe3"

# USERS
User.create username: "kingslayer", password: "ilovecersei", name: "Jamie Lannister", year: 3,
	major: "swordfighting", phone: 5555555555
User.create username: "theHound", password: "amireallydead", name: "Sandor Clegane", year: 4,
	major: "bodyguarding", phone: 8888888888
User.create username: "LittleFinger", password: "comebackcatelyn", name: "Petyr Baelish", year: 4,
	major: "manipulating", phone: 4444444444
User.create username: "Khaleesi", password: "mysunandstars", name: "Daenerys Targaryen", year: 1,
	major: "dragon training", phone: 1234567890