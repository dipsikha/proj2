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
Location.create name: "CKC", description: "Dining Hall", address: "2601 Warring St, Berkeley, CA 94720"
Location.create name: "Foothill", description: "Dining Hall", address: "2700 Hearst Ave, Berkeley, CA 94720"

# GROUPS
Group.create name: "The Starks", description: "Winter is Coming", time: Time.new(2015,4,19,18,30,0, "-08:00")
Group.create name: "The Lannisters", description: "Hear Me Roar!", time: Time.new(2015,4,19,8,0,0, "-08:00")

# USERS
User.create username: "kingslayer", password: "ilovecersei", name: "Jamie Lannister", year: 3,
	major: "swordfighting", phone: 5555555555
User.create username: "theHound", password: "amireallydead", name: "Sandor Clegane", year: 4,
	major: "bodyguarding", phone: 8888888888
User.create username: "LittleFinger", password: "comebackcatelyn", name: "Petyr Baelish", year: 4,
	major: "manipulating", phone: 4444444444