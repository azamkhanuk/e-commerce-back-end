# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# Male Shoes
item1 = Item.new(name: 'HARLEM RICHELIEU', description: 'A two-tone rubber outsole and padded ankle and tongue add a practical note to the Harlem Richelieu shoes. The design takes inspiration from hiking boots with its thick laces, which complement its mixed material composition. This includes technical textile, suede calf leather and grained Epi leather, which have been combined to form an attractive exterior.', cost: 745.00, gender: 'male')
item1.save
Color.create(item_id: 1, color: 'black', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-harlem-richelieu-shoes--BH9I1PMI11_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 1, color: 'red', image: '')


item2 = Item.new(name: 'FASTLANE TRAINERS', description: 'Updated in Monogram Denim Tie and Dye, the Fastlane Trainers feature one of the major themes of the season. The shoes are distinguished by a lightweight rubber outsole and a unique V-pattern tread for extra traction. The design is finished with the iconic Louis Vuitton signature on the outsole.', cost: 720.00, gender: 'male')
item2.save
Color.create(item_id: 2, color: 'black', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-fastlane-trainers-shoes--BHLU1PDN02_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 2, color: 'red', image: '')
Color.create(item_id: 2, color: 'blue', image: '')


item3 = Item.new(name: 'RIVOLI TRAINER BOOT',  description: 'The Rivoli trainer boot is a distinctive hi-top style crafted from three different versions of iconic Monogram canvas. The Louis Vuitton signature is embossed in gold on the tongue and also features on the functional velcro strap, which can be worn on either the front or the back of the shoe.', cost: 645.00, gender: 'male')
item3.save
Color.create(item_id: 3, color: 'white', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-rivoli-trainer-boot-shoes--BFRU1PMOEB_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 3, color: 'pink', image: '')

item4 = Item.new(name: 'RUN AWAY PULSE TRAINER', description: 'This emblematic Run Away Pulse trainer is fashioned from signature Monogram canvas and other iconic House materials. LV Initials embellish the heel patch for a subtle signature touch. Other details include hiking boot-style eyelets, two-tone laces and an augmented black rubber outsole with flakes.', cost: 875.00, gender: 'male')
item4.save
Color.create(item_id: 4, color: 'gold', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-run-away-pulse-trainer-shoes--BG9U2PMI02_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 4, color: 'white', image: '')
Color.create(item_id: 4, color: 'black', image: '')
Color.create(item_id: 4, color: 'brown', image: '')


item5 = Item.new(name: 'ZIG ZAG TRAINER',  description: 'The Zig Zag trainer is a daring design showcasing myriad vivid hues. Crafted from some of Louis Vuittons most emblematic fabrics, including Monogram and Damier Graphite canvas, it is based on brown and white tones. A chunky shoe with a contemporary, street-style finish, it is named for the unmistakable cutouts on its exterior.', cost: 830.00, gender: 'male')
item5.save
Color.create(item_id: 5, color: 'pink', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-zig-zag-trainer-shoes--BG9U3PMIGR_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 5, color: 'white', image: '')
Color.create(item_id: 5, color: 'red', image: '')


item6 = Item.new(name: 'RUN AWAY PULSE TRAINER',  description: 'This emblematic Run Away Pulse trainer is fashioned from signature Monogram canvas and other iconic House materials. LV Initials embellish the heel patch for a subtle signature touch. Other details include hiking boot-style eyelets, two-tone laces and an augmented black rubber outsole with flakes.', cost: 875.00, gender: 'male')
item6.save
Color.create(item_id: 6, color: 'brown', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-run-away-trainer-shoes--BG9U1PAL02_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 6, color: 'gold', image: '')
Color.create(item_id: 6, color: 'black', image: '')
Color.create(item_id: 6, color: 'white', image: '')


item7 = Item.new(name: 'TROCADERO SLIP-ON TRAINER', description: 'Made with striking grained leather in clean lines the Trocadero slip-on trainer is crafted in three eye-catching shades. The Epi calf leather, in navy, blue and tan, is punctuated with luxurious details, such as the Houses iconic Monogram canvas on the heel. A white rubber outsole completes the shoe.', cost: 515.00, gender: 'male')
item7.save
Color.create(item_id: 7, color: 'yellow', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-trocadero-slip-on-trainer-shoes--BFTU2PEC22_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 7, color: 'blue', image: '')
Color.create(item_id: 7, color: 'red', image: '')


item8 = Item.new(name: 'RUN AWAY TRAINER',  description: 'Black alligator leather and a gold-colour LV Initials pin elevate the emblematic Run Away trainer. With a hiking boot-influenced design, the shoe is completed with metal eyelets and technical laces. A hand-finished Louis Vuitton plaque adorns the fresh white rubber outsole.', cost: 5150.00, gender: 'male')
item8.save
Color.create(item_id: 8, color: 'white', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-lv-runner-gaiter-shoes--BG9K8RMI01_PM1_Front%20view.jpg?imwidth=4096')

item9 = Item.new(name: 'V.N.R TRAINER', description: 'The innovative V.N.R trainer is a boundary-pushing shoe. The sock-like, one-piece upper is woven with a lurex thread for a delicate sheen that is magnified by the gradient metallic rubber outsole. An LV patch adorns the tongue.', cost: 995.00, gender: 'male')
item9.save
Color.create(item_id: 9, color: 'gold', image: 'https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-v-n-r-trainer-shoes--BFVU1PWF06_PM2_Front%20view.jpg?imwidth=4096')
Color.create(item_id: 9, color: 'brown', image: '')

item10 = Item.new(name: 'FASTLANE TRAINERS',  description: 'The Fastlane Trainers bear a striking V signature on the back along with a Louis Vuitton ribbon on the upper section. Their lightweight outsole is made from flexible rubber, ensuring superior comfort. This reimagining of a beloved design features a blue Damier-knit fabric complemented by vibrant orange details', cost: 625.00, gender: 'male')
item10.save
Color.create(item_id: 10, color: 'blue', image: "https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-fastlane-trainers-shoes--BGLU1PWF_PM2_Front%20view.jpg?imwidth=4096")
Color.create(item_id: 10, color: 'red', image: "")
Size.create(item_id: 10, size: 5)
Size.create(item_id: 10, size: 6)






