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

Item.delete_all
Item.create! id: 1, marque: "BALDESSARINI", description: "Costume Baldessarini Singapur", prix: 609, tailles: [48,50,52], photos:["veste1", "veste1_1", "veste1_2", "veste1_3"], category_id: 1
Item.create! id: 2, marque: "LANIFICIO F.LLI CERRUTI", description: "Costume Lanificio F.lli Cerruti", prix: 369.99, tailles: [46,48,52,54,56,60,62], photos:["veste2"], category_id: 1
Item.create! id: 3, marque: "LANIFICIO F.LLI CERRUTI", description: "Costume Lanificio F.lli Cerruti", prix: 309.99, tailles: [46,48,50,52,54,56,58,60,62], photos:["veste3"], category_id: 1
Item.create! id: 4, marque: "DEVRED", description: "Veste homme pure laine unie", prix: 159.99, tailles: [46,48,50,52,54,56,58,60,62], photos:["veste4"], category_id: 1


