
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Truong Tien Dat",
	email: "ti3ndat363@gmail.com",
	password: "dat363363",
	password_confirmation: "dat363363")

Review.create!(title: "THE BENEFITS OF SWITCHING TO A SILENT STAGE",
	content: "One of the topics we hear come up time and time again is the idea of a “silent stage.”  This idea isn’t new by any means but has shown to be more prevalen...",
	user_id: 1)
Review.create!(title: "CORRECTING THE RECORD",
	content: "Dear valued 64 Audio™ customers, It has recently come to our attention that our previous business partner, Asius Technologies, LLC has been publicizing misinfor...",
	user_id: 1)
Review.create!(title: "U18 TZAR AND TIA FOURTÉ SHIPPING ANNOUNCEMENT",
	content: "Here They Come!Back in November 2016, we publicized the release of three new models – the A18 Tzar, U18 Tzar, and tia Fourté.The A18 Tzars have been shippin...",
	user_id: 1)
Review.create!(title: "FROM 1964 EARS TO 64 AUDIO: A COMPANY TIMELINE",
	content: "This year, we are celebrating our 7th anniversary! Some of you have been with us since the very start, but for those who are more recent additions to the 64 Aud...",
	user_id: 1)
Review.create!(title: "TRADE SHOWS: 64 AUDIO’S LIFELINE",
	content: "We often don’t get as many chances as we would like to meet our customers in person. Customers we like to call our 64 Family. We are typically up to our ears i...",
	user_id: 1)
Review.create!(title: "WHAT IS AN IN-EAR MONITOR (IEM)?",
	content: "Over the last four decades, innovations in technology have changed the way we experience music. One of the biggest changes was the introduction of in-ear monit...",
	user_id: 1)
Review.create!(title: "IN-EAR MONITOR, EARPHONE, HEADPHONE, EARBUD…WHAT’S THE DIFFERENCE?",
	content: "We at 64 Audio frequently hear many different terms when customers refer to their personal listening equipment. Headphones, earphones, in-ear monitors, earbuds...",
	user_id: 1)
Review.create!(title: "64 AUDIO WINS IMPORTANT VICTORY AT THE U.S. PATENT OFFICE",
	content: "VANCOUVER, WA, July 20, 2017 – 64 Audio (formerly 1964 Ears) is pleased to announce that on July 19, 2017, the U.S. Patent Trial & Appeal Board (PTAB) ruled...",
	user_id: 1)
Review.create!(title: "TIPS & TRICKS FOR YOUR IEMS",
	content: "So, you've purchased a pair of in-ear monitors (or maybe you are thinking about it). They fit well, the seal is just right, you're getting the isolation you de...",
	user_id: 1)
Review.create!(title: "THE BENEFITS OF SWITCHING TO A SILENT STAGE",
	content: "One of the topics we hear come up time and time again is the idea of a “silent stage.”  This idea isn’t new by any means but has shown to be more prevalen...",
	user_id: 1)
# Create a main sample user.
User.create!(name: "Example User",
email: "example@railstutorial.org",
password: "foobar",
password_confirmation: "foobar")
>>>>>>> new product
