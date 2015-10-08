# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create! id: 1, name: "Veste"
Category.create! id: 2, name: "Chemise"
Category.create! id: 3, name: "Jean"
Category.create! id: 4, name: "Chaussure"
Category.create! id: 5, name: "Promotions"


Item.delete_all
Item.create! id: 1, marque: "BALDESSARINI", description: "Costume Baldessarini Singapur", prix: 609, tailles: [48,50,52], photos:["veste1", "veste1_1", "veste1_2", "veste1_3"], category_id: 1
Item.create! id: 2, marque: "LANIFICIO F.LLI CERRUTI", description: "Costume Lanificio F lli Cerruti Marron", prix: 369.99, tailles: [46,48,52,54,56,60,62], photos:["veste2"], category_id: 1
Item.create! id: 3, marque: "LANIFICIO F.LLI CERRUTI", description: "Costume Lanificio F lli Cerruti Bleu", prix: 309.99, tailles: [46,48,50,52,54,56,58,60,62], photos:["veste3"], category_id: 1
Item.create! id: 4, marque: "DEVRED", description: "Veste homme pure laine unie", prix: 159.99, tailles: [46,48,50,52,54,56,58,60,62], photos:["veste4"], category_id: 1
Item.create! id: 5, marque: "EVISU", description: "Jeans MEN'S MAIN STRAIGHT ADAM JEANS", prix: 269, tailles: ["w29"], photos:["jean1", "jean1_1", "jean1_2", "jean1_3"], category_id: 3
Item.create! id: 6, marque: "DIESEL", description: "Chemise Ml Wearny Diesel Marine", prix: 149, tailles: ["L", "XL"], photos:["chemise1"], category_id: 2
Item.create! id: 7, marque: "MOMA", description: "Chaussures A Lacets MOMA Mustang Cuir Homme ", prix: 350, prix_after: 315, promotion: 10, tailles: [40,43,44], photos:["chaussure1", "chaussure1_1", "chaussure1_2", "chaussure1_3"], category_id: 4
Item.create! id: 8, marque: "LEVIS", description: "Jean Levis 501", prix: 69.30, tailles: [30,31,32,33,34,35,36], photos:["jean2"], category_id: 3
Item.create! id: 9, marque: "LEVIS", description: "Jean Levis 504 coupe tapered", prix: 110, prix_after: 71.5, promotion: 35, tailles: [29,30,31,32,33], photos:["jean3", "jean3_1", "jean3_2", "jean3_3"], category_id: 3
Item.create! id: 10, marque: "DIESEL", description: "Chemise Ml Malichina", prix: 169, tailles: ["S", "M", "L"], photos:["chemise2", "chemise2_1", "chemise2_2", "chemise2_3"], category_id: 2
Item.create! id: 11, marque: "BILLTORNADE", description: "Chemise Ml Rix Billtornade ", prix: 149, tailles: ["S", "M", "XL"], photos:["chemise3", "chemise3_1", "chemise3_2", "chemise3_3"], category_id: 2
Item.create! id: 12, marque: "SOFT GREY", description: "Veste de blazer, col faux cuir", prix: 99.99, prix_after: 49.99, promotion: 50, tailles: [42,48,50,52,54,56], photos:["veste5", "veste5_1", "veste5_2", "veste5_3"], category_id: 1
Item.create! id: 13, marque: "CELIO", description: "Chemise BEDFORD, coupe regular", prix: 23.99, tailles: ["S", "M", "L", "XL"], photos:["chemise4", "chemise4_1"], category_id: 2
Item.create! id: 14, marque: "KAPORAL", description: "Jean ROMY coupe droite", prix: 79.20, tailles: [28,29,30,31,32,33], photos:["jean4", "jean4_1", "jean4_2", "jean4_3"], category_id: 3

