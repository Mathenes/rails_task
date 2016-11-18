# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

manufacturers = [
  {name:"Fiat"},
  {name:"Chevrolet"},
  {name:"Toyota"},
  {name:"Renault"},
  {name:"Ferrari"},
  {name:"McLaren"},
  {name:"Hyundai"}
]

Manufacturer.create(manufacturers)

cars = [
  { image: File.open(Rails.root + "public/images_seed/uno.png") ,
    engine_size: 1,
    speed: 81,
    acceleration: 16,
    model: Model.new(name:"Uno", manufacturer_id: Manufacturer.find_by_name("Fiat").id)
  },
  { image: File.open(Rails.root + "public/images_seed/corsa.jpg") ,
    engine_size: 1,
    speed: 89,
    acceleration: 13,
    model: Model.new(name:"Corsa", manufacturer_id: Manufacturer.find_by_name("Chevrolet").id)
  },
  { image: File.open(Rails.root + "public/images_seed/corolla.png") ,
    engine_size: 2,
    speed: 124,
    acceleration: 8,
    model: Model.new(name:"Corolla", manufacturer_id: Manufacturer.find_by_name("Toyota").id)
  },
  { image: File.open(Rails.root + "public/images_seed/logan.jpg") ,
    engine_size: 2,
    speed: 93,
    acceleration: 8,
    model: Model.new(name:"Logan", manufacturer_id: Manufacturer.find_by_name("Renault").id)
  },
  { image: File.open(Rails.root + "public/images_seed/enzo.jpg") ,
    engine_size: 6,
    speed: 220,
    acceleration: 3.14,
    model: Model.new(name:"Enzo", manufacturer_id: Manufacturer.find_by_name("Ferrari").id)
  },
  { image: File.open(Rails.root + "public/images_seed/mc_p1.jpg") ,
    engine_size: 4,
    speed: 239,
    acceleration: 2.8,
    model: Model.new(name:"P1", manufacturer_id: Manufacturer.find_by_name("McLaren").id)
  },
  { image: File.open(Rails.root + "public/images_seed/hb20.png") ,
    engine_size: 2,
    speed: 99,
    acceleration: 10.4,
    model: Model.new(name:"HB20", manufacturer_id: Manufacturer.find_by_name("Hyundai").id)
  }
]

Car.create(cars)
