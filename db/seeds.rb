# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(:email => 'nnn@gmail.com', :password => 'foobar', :password_confirmation => 'foobar', :first_name => 'nn', :last_name => 'yy', username: "foobar")


User.destroy_all
Breed.destroy_all
Dog.destroy_all

users = User.create!([
  {
    first_name: "James", last_name: "Elliott", email: "elliottjam@gmail.com", username: "dogdaddy", password: "password", password_confirmation: "password"
  },
  {
    first_name: "Joe", last_name: "Blow", email: "joeblow@gmail.com", username: "jb", password: "password", password_confirmation: "password"
  },
  {
    first_name: "Snoop", last_name: "Dog", email: "snoopdogg@gmail.com", username: "dogfather", password: "password", password_confirmation: "password"
  },
{
    first_name: "Jim", last_name: "Dashwood", email: "jimdashwood1@gmail.com", username: "JD", password: "password", password_confirmation: "password"
  },
{
    first_name: "Michael", last_name: "Pavling", email: "michael@gmail.com", username: "dogfather", password: "password", password_confirmation: "password"
  },
 ])

# dogs = Dog.create([
#   {name: "bruno", owner: users[0], breed: aidi }
#   ])

require 'csv'

file = File.join(Rails.root, 'db', "dogs.csv")
CSV.foreach(file, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  Breed.create! name: row[:breed]
end

dogs = Dog.create! ([
{
  name: "Barley", breed_id: Breed.first.id, size: "medium", gender: "female", age: 4, toy: "Pig Ear", user_id: users[0].id  , avatar: File.new("db/fixtures/britbulldog.jpeg")
  },
{
  name: "Borris", breed_id: Breed.first.id, size: "medium", gender: "male", age: 3, toy: "Chewy Carrot", user_id: users[1].id, avatar: File.new("db/fixtures/coolbru.jpg")
  },
  {
  name: "Sir Pepper", breed_id: Breed.first.id, size: "medium", gender: "male", age: 2, toy: "Daily Growl", user_id: users[2].id, avatar:  File.new("db/fixtures/monocledog.jpg")
  },
  {
  name: "Bruce", breed_id: Breed.first.id, size: "medium", gender: "female", age: 4, toy: "Daily Growl", user_id: users[3].id, avatar: File.new("db/fixtures/husky.jpg")
  },
  {
  name: "Pugwash", breed_id: Breed.first.id, size: "medium", gender: "female", age: 4, toy: "Daily Growl", user_id: users[4].id, avatar: File.new("db/fixtures/wassup.jpeg")
  },
])

# breeds = Breed.create! ([
# { name: "Affenpinscher" }, { name: "Afghan Hound" }
#   ])


# Breed.create! name: "Affenpinscher"
# Breed.create! name: "Afghan Hound"
# Breed.create! name: "Afghan Hound"
# Breed.create! name: "Aidi"
# Breed.create! name: "Airedale Terrier"
# Breed.create! name: "Akbash"
# Breed.create! name: "Akita Inu"
# Breed.create! name: "Alano Español"
# Breed.create! name: "Alaskan Klee Kai"
# Breed.create! name: "Alaskan Malamute"
# Breed.create! name: "Alpine Dachsbracke"
# Breed.create! name: "Alpine Spaniel"
# Breed.create! name: "American Akita"
# Breed.create! name: "American Bulldog"
# Breed.create! name: "American Cocker Spaniel"
# Breed.create! name: "American Eskimo Dog"
# Breed.create! name: "American Foxhound"
# Breed.create! name: "American Hairless Terrier"
# Breed.create! name: "American Pit Bull Terrier"
# Breed.create! name: "American Staffordshire Terrier"
# Breed.create! name: "American Water Spaniel"
# Breed.create! name: "Anatolian Shepherd Dog"
# Breed.create! name: "Anglo-Français de Petite Vénerie"
# Breed.create! name: "Appenzeller Sennenhund"
# Breed.create! name: "Ariege Pointer"
# Breed.create! name: "Ariegeois"
# Breed.create! name: "Armant"
# Breed.create! name: "Armenian Gampr dog"
# Breed.create! name: "Artois Hound"
# Breed.create! name: "Australian Cattle Dog"
# Breed.create! name: "Australian Kelpie"
# Breed.create! name: "Australian Shepherd"
# Breed.create! name: "Australian Silky Terrier"
# Breed.create! name: "Australian Stumpy Tail Cattle Dog[10]"
# Breed.create! name: "Australian Terrier"
# Breed.create! name: "Austrian Black and Tan Hound"
# Breed.create! name: "Austrian Pinscher"
# Breed.create! name: "Azawakh"
# Breed.create! name: "Bakharwal Dog"
# Breed.create! name: "Barbet"
# Breed.create! name: "Basenji"
# Breed.create! name: "Basque Shepherd Dog"
# Breed.create! name: "Basset Artésien Normand"
# Breed.create! name: "Basset Bleu de Gascogne"
# Breed.create! name: "Basset Fauve de Bretagne"
# Breed.create! name: "Basset Griffon Vendéen, Grand"
# Breed.create! name: "Basset Griffon Vendéen, Petit"
# Breed.create! name: "Basset Hound"
# Breed.create! name: "Bavarian Mountain Hound"
# Breed.create! name: "Beagle"
# Breed.create! name: "Beagle-Harrier"
# Breed.create! name: "Bearded Collie"
# Breed.create! name: "Beauceron"
# Breed.create! name: "Bedlington Terrier"
# Breed.create! name: "Belgian Shepherd Dog (Groenendael)"
# Breed.create! name: "Belgian Shepherd Dog (Laekenois)"
# Breed.create! name: "Belgian Shepherd Dog (Malinois)"
# Breed.create! name: "Belgian Shepherd (Tervuren)"
# Breed.create! name: "Bergamasco Shepherd"
# Breed.create! name: "Berger Blanc Suisse"
# Breed.create! name: "Berger Picard"
# Breed.create! name: "Berner Laufhund"
# Breed.create! name: "Bernese Mountain Dog"
# Breed.create! name: "Bichon Frisé"
# Breed.create! name: "Billy"
# Breed.create! name: "Black and Tan Coonhound"
# Breed.create! name: "Black and Tan Virginia Foxhound"
# Breed.create! name: "Bullenbeisser"
# Breed.create! name: "Black Norwegian Elkhound"
# Breed.create! name: "Black Russian Terrier"
# Breed.create! name: "Blackmouth Cur"
# Breed.create! name: "Bleu de Gascogne, Grand"
# Breed.create! name: "Bleu de Gascogne, Petit"
# Breed.create! name: "Bloodhound"
# Breed.create! name: "Blue Lacy"
# Breed.create! name: "Blue Paul Terrier"
# Breed.create! name: "Bluetick Coonhound"
# Breed.create! name: "Boerboel"
# Breed.create! name: "Bohemian Shepherd"
# Breed.create! name: "Bolognese"
# Breed.create! name: "Border Collie"
# Breed.create! name: "Border Terrier"
# Breed.create! name: "Borzoi"
# Breed.create! name: "Bosnian Coarse-haired Hound"
# Breed.create! name: "Boston Terrier"
# Breed.create! name: "Bouvier des Ardennes"
# Breed.create! name: "Bouvier des Flandres"
# Breed.create! name: "Boxer"
# Breed.create! name: "Boykin Spaniel"
# Breed.create! name: "Bracco Italiano"
# Breed.create! name: "Braque d'Auvergne"
# Breed.create! name: "Braque du Bourbonnais"
# Breed.create! name: "Braque du Puy"
# Breed.create! name: "Braque Francais"
# Breed.create! name: "Braque Saint-Germain"
# Breed.create! name: "Brazilian Terrier"
# Breed.create! name: "Briard"
# Breed.create! name: "Briquet Griffon Vendéen"
# Breed.create! name: "Brittany"
# Breed.create! name: "Broholmer"
# Breed.create! name: "Bruno Jura Hound"
# Breed.create! name: "Bucovina Shepherd Dog"
# Breed.create! name: "Bull and Terrier"
# Breed.create! name: "Bull Terrier"
# Breed.create! name: "Bull Terrier (Miniature)"
# Breed.create! name: "Bulldog"
# Breed.create! name: "Bullmastiff"
# Breed.create! name: "Bully Kutta"
# Breed.create! name: "Burgos Pointer"
# Breed.create! name: "Cairn Terrier"
# Breed.create! name: "Canaan Dog"
# Breed.create! name: "Canadian Eskimo Dog"
# Breed.create! name: "Cane Corso"
# Breed.create! name: "Cão da Serra de Aires"
# Breed.create! name: "Cão de Castro Laboreiro"
# Breed.create! name: "Cão Fila de São Miguel"
# Breed.create! name: "Carolina Dog"
# Breed.create! name: "Carpathian Shepherd Dog"
# Breed.create! name: "Catahoula Cur"
# Breed.create! name: "Catalan Sheepdog"
# Breed.create! name: "Caucasian Shepherd Dog"
# Breed.create! name: "Cavalier King Charles Spaniel"
# Breed.create! name: "Central Asian Shepherd Dog"
# Breed.create! name: "Cesky Fousek"
# Breed.create! name: "Cesky Terrier"
# Breed.create! name: "Chesapeake Bay Retriever"
# Breed.create! name: "Chien Français Blanc et Noir"
# Breed.create! name: "Chien Français Blanc et Orange"
# Breed.create! name: "Chien Français Tricolore"
# Breed.create! name: "Chien-gris"
# Breed.create! name: "Chihuahua"
# Breed.create! name: "Chilean Fox Terrier"
# Breed.create! name: "Chinese Chongqing Dog"
# Breed.create! name: "Chinese Crested Dog"
# Breed.create! name: "Chinese Imperial Dog"
# Breed.create! name: "Chinook"
# Breed.create! name: "Chippiparai"
# Breed.create! name: "Chow Chow"
# Breed.create! name: "Cierny Sery"
# Breed.create! name: "Cimarrón Uruguayo"
# Breed.create! name: "Cirneco dell'Etna"
# Breed.create! name: "Clumber Spaniel"
# Breed.create! name: "Collie, Rough"
# Breed.create! name: "Collie, Smooth"
# Breed.create! name: "Combai"
# Breed.create! name: "Cordoba Fighting Dog"
# Breed.create! name: "Coton de Tulear"
# Breed.create! name: "Cretan Hound"
# Breed.create! name: "Croatian Sheepdog"
# Breed.create! name: "Cumberland Sheepdog"
# Breed.create! name: "Curly Coated Retriever"
# Breed.create! name: "Cursinu"
# Breed.create! name: "Czechoslovak Wolfdog"
# Breed.create! name: "Dachshund"
# Breed.create! name: "Dalmatian"
# Breed.create! name: "Dandie Dinmont Terrier"
# Breed.create! name: "Danish Swedish Farmdog"
# Breed.create! name: "Deutsche Bracke"
# Breed.create! name: "Doberman Pinscher"
# Breed.create! name: "Dogo Argentino"
# Breed.create! name: "Dogo Cubano"
# Breed.create! name: "Dogue de Bordeaux"
# Breed.create! name: "Drentse Patrijshond"
# Breed.create! name: "Drever"
# Breed.create! name: "Dunker"
# Breed.create! name: "Dutch Shepherd Dog"
# Breed.create! name: "Dutch Smoushond"
# Breed.create! name: "East Siberian Laika"
# Breed.create! name: "East-European Shepherd"
# Breed.create! name: "Elo"
# Breed.create! name: "English Cocker Spaniel"
# Breed.create! name: "English Coonhound"
# Breed.create! name: "English Foxhound"
# Breed.create! name: "English Mastiff"
# Breed.create! name: "English Setter"
# Breed.create! name: "English Shepherd"
# Breed.create! name: "English Springer Spaniel"
# Breed.create! name: "English Toy Terrier (Black & Tan)"
# Breed.create! name: "English Water Spaniel"
# Breed.create! name: "English White Terrier"
# Breed.create! name: "Entlebucher Mountain Dog"
# Breed.create! name: "Épagneul Bleu de Picardie"
# Breed.create! name: "Estonian Hound"
# Breed.create! name: "Estrela Mountain Dog"
# Breed.create! name: "Eurasier"
# Breed.create! name: "Field Spaniel"
# Breed.create! name: "Fila Brasileiro"
# Breed.create! name: "Finnish Hound"
# Breed.create! name: "Finnish Lapphund"
# Breed.create! name: "Finnish Spitz"
# Breed.create! name: "Flat-Coated Retriever"
# Breed.create! name: "Formosan Mountain Dog"
# Breed.create! name: "Fox Terrier (Smooth)"
# Breed.create! name: "Fox Terrier, Wire"
# Breed.create! name: "French Brittany"
# Breed.create! name: "French Bulldog"
# Breed.create! name: "French Spaniel"
# Breed.create! name: "Galgo Español"
# Breed.create! name: "Gascon Saintongeois"
# Breed.create! name: "Georgian shepherd"
# Breed.create! name: "German Longhaired Pointer"
# Breed.create! name: "German Pinscher"
# Breed.create! name: "German Rough-haired Pointer"
# Breed.create! name: "German Shepherd Dog"
# Breed.create! name: "German Shorthaired Pointer"
# Breed.create! name: "German Spaniel"
# Breed.create! name: "German Spitz"
# Breed.create! name: "German Wirehaired Pointer"
# Breed.create! name: "Giant Schnauzer"
# Breed.create! name: "Glen of Imaal Terrier"
# Breed.create! name: "Golden Retriever"
# Breed.create! name: "Gordon Setter"
# Breed.create! name: "Gran Mastín de Borínquen"
# Breed.create! name: "Grand Anglo-Français Blanc et Noir"
# Breed.create! name: "Grand Anglo-Français Blanc et Orange"
# Breed.create! name: "Grand Anglo-Français Tricolore"
# Breed.create! name: "Grand Griffon Vendéen"
# Breed.create! name: "Great Dane"
# Breed.create! name: "Great Pyrenees"
# Breed.create! name: "Greater Swiss Mountain Dog"
# Breed.create! name: "Greek Harehound"
# Breed.create! name: "Greenland Dog"
# Breed.create! name: "Greyhound"
# Breed.create! name: "Griffon Bleu de Gascogne"
# Breed.create! name: "Griffon Bruxellois"
# Breed.create! name: "Griffon Fauve de Bretagne"
# Breed.create! name: "Griffon Nivernais"
# Breed.create! name: "Hamiltonstövare"
# Breed.create! name: "Hanover Hound"
# Breed.create! name: "Hare Indian Dog"
# Breed.create! name: "Harrier"
# Breed.create! name: "Havanese"
# Breed.create! name: "Hawaiian Poi Dog"
# Breed.create! name: "Himalayan Sheepdog"
# Breed.create! name: "Hokkaido"
# Breed.create! name: "Hortaya Borzaya"
# Breed.create! name: "Hovawart"
# Breed.create! name: "Huntaway"
# Breed.create! name: "Hygenhund"
# Breed.create! name: "Ibizan Hound"
# Breed.create! name: "Icelandic Sheepdog"
# Breed.create! name: "Indian Spitz"
# Breed.create! name: "Irish Red and White Setter"
# Breed.create! name: "Irish Setter"
# Breed.create! name: "Irish Terrier"
# Breed.create! name: "Irish Water Spaniel"
# Breed.create! name: "Irish Wolfhound"
# Breed.create! name: "Istrian Coarse-haired Hound"
# Breed.create! name: "Istrian Shorthaired Hound"
# Breed.create! name: "Italian Greyhound"
# Breed.create! name: "Jack Russell Terrier"
# Breed.create! name: "Jagdterrier"
# Breed.create! name: "Jämthund"
# Breed.create! name: "Japanese Chin"
# Breed.create! name: "Japanese Spitz"
# Breed.create! name: "Japanese Terrier"
# Breed.create! name: "Kaikadi"
# Breed.create! name: "Kai Ken"
# Breed.create! name: "Kangal Dog"
# Breed.create! name: "Kanni"
# Breed.create! name: "Karakachan Dog"
# Breed.create! name: "Karelian Bear Dog"
# Breed.create! name: "Karst Shepherd"
# Breed.create! name: "Keeshond"
# Breed.create! name: "Kerry Beagle"
# Breed.create! name: "Kerry Blue Terrier"
# Breed.create! name: "King Charles Spaniel"
# Breed.create! name: "King Shepherd"
# Breed.create! name: "Kintamani"
# Breed.create! name: "Kishu"
# Breed.create! name: "Komondor"
# Breed.create! name: "Kooikerhondje"
# Breed.create! name: "Koolie"
# Breed.create! name: "Korean Jindo Dog"
# Breed.create! name: "Kromfohrländer"
# Breed.create! name: "Kunming Wolfdog"
# Breed.create! name: "Kurī"
# Breed.create! name: "Kuvasz"
# Breed.create! name: "Kyi-Leo"
# Breed.create! name: "Labrador Husky"
# Breed.create! name: "Labrador Retriever"
# Breed.create! name: "Lagotto Romagnolo"
# Breed.create! name: "Lakeland Terrier"
# Breed.create! name: "Lancashire Heeler"
# Breed.create! name: "Landseer"
# Breed.create! name: "Lapponian Herder"
# Breed.create! name: "Leonberger"
# Breed.create! name: "Lhasa Apso"
# Breed.create! name: "Lithuanian Hound"
# Breed.create! name: "Longhaired Whippet"
# Breed.create! name: "Löwchen"
# Breed.create! name: "Magyar Agár"
# Breed.create! name: "Maltese"
# Breed.create! name: "Manchester Terrier"
# Breed.create! name: "Maremma Sheepdog"
# Breed.create! name: "McNab"
# Breed.create! name: "Mexican Hairless Dog"
# Breed.create! name: "Miniature Australian Shepherd"
# Breed.create! name: "Miniature American Shepherd"
# Breed.create! name: "Miniature Fox Terrier"
# Breed.create! name: "Miniature Pinscher"
# Breed.create! name: "Miniature Schnauzer"
# Breed.create! name: "Miniature Shar Pei"
# Breed.create! name: "Mioritic"
# Breed.create! name: "Molossus"
# Breed.create! name: "Montenegrin Mountain Hound"
# Breed.create! name: "Moscow Watchdog"
# Breed.create! name: "Moscow Water Dog"
# Breed.create! name: "Mountain Cur"
# Breed.create! name: "Mucuchies"
# Breed.create! name: "Mudhol Hound"
# Breed.create! name: "Mudi"
# Breed.create! name: "Münsterländer, Large"
# Breed.create! name: "Münsterländer, Small"
# Breed.create! name: "Neapolitan Mastiff"
# Breed.create! name: "Newfoundland"
# Breed.create! name: "New Zealand Heading Dog"
# Breed.create! name: "Norfolk Spaniel"
# Breed.create! name: "Norfolk Terrier"
# Breed.create! name: "Norrbottenspets"
# Breed.create! name: "North Country Beagle"
# Breed.create! name: "Northern Inuit Dog"
# Breed.create! name: "Norwegian Buhund"
# Breed.create! name: "Norwegian Elkhound"
# Breed.create! name: "Norwegian Lundehund"
# Breed.create! name: "Norwich Terrier"
# Breed.create! name: "Nova Scotia Duck-Tolling Retriever"
# Breed.create! name: "Old Croatian Sighthound"
# Breed.create! name: "Old Danish Pointer"
# Breed.create! name: "Old English Sheepdog"
# Breed.create! name: "Old English Terrier"
# Breed.create! name: "Old German Shepherd Dog"
# Breed.create! name: "Old Time Farm Shepherd"
# Breed.create! name: "Olde English Bulldogge"
# Breed.create! name: "Otterhound"
# Breed.create! name: "Pachon Navarro"
# Breed.create! name: "Paisley Terrier"
# Breed.create! name: "Papillon"
# Breed.create! name: "Parson Russell Terrier"
# Breed.create! name: "Patterdale Terrier"
# Breed.create! name: "Pekingese"
# Breed.create! name: "Perro de Presa Canario"
# Breed.create! name: "Perro de Presa Mallorquin"
# Breed.create! name: "Peruvian Hairless Dog"
# Breed.create! name: "Phalène"
# Breed.create! name: "Pharaoh Hound"
# Breed.create! name: "Phu Quoc ridgeback dog"
# Breed.create! name: "Picardy Spaniel"
# Breed.create! name: "Plott Hound"
# Breed.create! name: "Podenco Canario"
# Breed.create! name: "Pointer"
# Breed.create! name: "Polish Greyhound"
# Breed.create! name: "Polish Hound"
# Breed.create! name: "Polish Hunting Dog"
# Breed.create! name: "Polish Lowland Sheepdog"
# Breed.create! name: "Polish Tatra Sheepdog"
# Breed.create! name: "Pomeranian"
# Breed.create! name: "Pont-Audemer Spaniel"
# Breed.create! name: "Poodle"
# Breed.create! name: "Porcelaine"
# Breed.create! name: "Portuguese Podengo"
# Breed.create! name: "Portuguese Pointer"
# Breed.create! name: "Portuguese Water Dog"
# Breed.create! name: "Posavac Hound"
# Breed.create! name: "Pražský Krysařík"
# Breed.create! name: "Pudelpointer"
# Breed.create! name: "Pug"
# Breed.create! name: "Puli"
# Breed.create! name: "Pumi"
# Breed.create! name: "Pungsan Dog"
# Breed.create! name: "Pyrenean Mastiff"
# Breed.create! name: "Pyrenean Shepherd"
# Breed.create! name: "Rafeiro do Alentejo"
# Breed.create! name: "Rajapalayam"
# Breed.create! name: "Rampur Greyhound"
# Breed.create! name: "Rastreador Brasileiro"
# Breed.create! name: "Ratonero Bodeguero Andaluz"
# Breed.create! name: "Ratonero Valenciano"
# Breed.create! name: "Rat Terrier"
# Breed.create! name: "Redbone Coonhound"
# Breed.create! name: "Rhodesian Ridgeback"
# Breed.create! name: "Rottweiler"
# Breed.create! name: "Russian Spaniel"
# Breed.create! name: "Russian Toy"
# Breed.create! name: "Russian tracker"
# Breed.create! name: "Russo-European Laika"
# Breed.create! name: "Russell Terrier"
# Breed.create! name: "Saarlooswolfhond"
# Breed.create! name: "Sabueso Español"
# Breed.create! name: "Saint-Usuge Spaniel"
# Breed.create! name: "Sakhalin Husky"
# Breed.create! name: "Saluki"
# Breed.create! name: "Samoyed"
# Breed.create! name: "Sapsali"
# Breed.create! name: "Šarplaninac"
# Breed.create! name: "Schapendoes"
# Breed.create! name: "Schillerstövare"
# Breed.create! name: "Schipperke"
# Breed.create! name: "Standard Schnauzer"
# Breed.create! name: "Schweizer Laufhund"
# Breed.create! name: "Schweizerischer Niederlaufhund"
# Breed.create! name: "Scotch Collie"
# Breed.create! name: "Scottish Deerhound"
# Breed.create! name: "Scottish Terrier"
# Breed.create! name: "Sealyham Terrier"
# Breed.create! name: "Segugio Italiano"
# Breed.create! name: "Seppala Siberian Sleddog"
# Breed.create! name: "Serbian Hound"
# Breed.create! name: "Serbian Tricolour Hound"
# Breed.create! name: "Shar Pei"
# Breed.create! name: "Shetland Sheepdog"
# Breed.create! name: "Shiba Inu"
# Breed.create! name: "Shih Tzu"
# Breed.create! name: "Shikoku"
# Breed.create! name: "Shiloh Shepherd Dog"
# Breed.create! name: "Siberian Husky"
# Breed.create! name: "Silken Windhound"
# Breed.create! name: "Sinhala Hound"
# Breed.create! name: "Skye Terrier"
# Breed.create! name: "Sloughi"
# Breed.create! name: "Slovak Cuvac"
# Breed.create! name: "Slovakian Rough-haired Pointer"
# Breed.create! name: "Slovenský Kopov"
# Breed.create! name: "Smålandsstövare"
# Breed.create! name: "Small Greek Domestic Dog"
# Breed.create! name: "Soft-Coated Wheaten Terrier"
# Breed.create! name: "South Russian Ovcharka"
# Breed.create! name: "Southern Hound"
# Breed.create! name: "Spanish Mastiff"
# Breed.create! name: "Spanish Water Dog"
# Breed.create! name: "Spinone Italiano"
# Breed.create! name: "Sporting Lucas Terrier"
# Breed.create! name: "St. Bernard"
# Breed.create! name: "St. John's water dog"
# Breed.create! name: "Stabyhoun"
# Breed.create! name: "Staffordshire Bull Terrier"
# Breed.create! name: "Stephens Cur"
# Breed.create! name: "Styrian Coarse-haired Hound"
# Breed.create! name: "Sussex Spaniel"
# Breed.create! name: "Swedish Lapphund"
# Breed.create! name: "Swedish Vallhund"
# Breed.create! name: "Tahltan Bear Dog"
# Breed.create! name: "Taigan"
# Breed.create! name: "Talbot"
# Breed.create! name: "Tamaskan Dog"
# Breed.create! name: "Teddy Roosevelt Terrier"
# Breed.create! name: "Telomian"
# Breed.create! name: "Tennessee Treeing Brindle"
# Breed.create! name: "Tenterfield Terrier"
# Breed.create! name: "Thai Bangkaew Dog"
# Breed.create! name: "Thai Ridgeback"
# Breed.create! name: "Tibetan Mastiff"
# Breed.create! name: "Tibetan Spaniel"
# Breed.create! name: "Tibetan Terrier"
# Breed.create! name: "Tornjak"
# Breed.create! name: "Tosa"
# Breed.create! name: "Toy Bulldog"
# Breed.create! name: "Toy Fox Terrier"
# Breed.create! name: "Toy Manchester Terrier"
# Breed.create! name: "Toy Trawler Spaniel"
# Breed.create! name: "Transylvanian Hound"
# Breed.create! name: "Treeing Cur"
# Breed.create! name: "Treeing Walker Coonhound"
# Breed.create! name: "Trigg Hound"
# Breed.create! name: "Tweed Water Spaniel"
# Breed.create! name: "Tyrolean Hound"
# Breed.create! name: "Vizsla"
# Breed.create! name: "Volpino Italiano"
# Breed.create! name: "Weimaraner"
# Breed.create! name: "Welsh Corgi, Cardigan"
# Breed.create! name: "Welsh Corgi, Pembroke"
# Breed.create! name: "Welsh Sheepdog"
# Breed.create! name: "Welsh Springer Spaniel"
# Breed.create! name: "Welsh Terrier"
# Breed.create! name: "West Highland White Terrier"
# Breed.create! name: "West Siberian Laika"
# Breed.create! name: "Westphalian Dachsbracke"
# Breed.create! name: "Wetterhoun"
# Breed.create! name: "Whippet"
# Breed.create! name: "White Shepherd"
# Breed.create! name: "Wirehaired Pointing Griffon"
# Breed.create! name: "Wirehaired Vizsla"
# Breed.create! name: "Yorkshire Terrier"




# Affenpinscher
# Afghan Hound
# Aidi
# Airedale Terrier
# Akbash
# Akita Inu
# Alano Español
# Alaskan Klee Kai
# Alaskan Malamute
# Alpine Dachsbracke
# Alpine Spaniel
# American Akita
# American Bulldog
# American Cocker Spaniel
# American Eskimo Dog
# American Foxhound
# American Hairless Terrier
# American Pit Bull Terrier
# American Staffordshire Terrier
# American Water Spaniel
# Anatolian Shepherd Dog
# Anglo-Français de Petite Vénerie
# Appenzeller Sennenhund
# Ariege Pointer
# Ariegeois
# Armant
# Armenian Gampr dog
# Artois Hound
# Australian Cattle Dog
# Australian Kelpie
# Australian Shepherd
# Australian Silky Terrier
# Australian Stumpy Tail Cattle Dog[10]
# Australian Terrier
# Austrian Black and Tan Hound
# Austrian Pinscher
# Azawakh
# Bakharwal Dog
# Barbet
# Basenji
# Basque Shepherd Dog
# Basset Artésien Normand
# Basset Bleu de Gascogne
# Basset Fauve de Bretagne
# Basset Griffon Vendéen, Grand
# Basset Griffon Vendéen, Petit
# Basset Hound
# Bavarian Mountain Hound
# Beagle
# Beagle-Harrier
# Bearded Collie
# Beauceron
# Bedlington Terrier
# Belgian Shepherd Dog (Groenendael)
# Belgian Shepherd Dog (Laekenois)
# Belgian Shepherd Dog (Malinois)
# Belgian Shepherd (Tervuren)
# Bergamasco Shepherd
# Berger Blanc Suisse
# Berger Picard
# Berner Laufhund
# Bernese Mountain Dog
# Bichon Frisé
# Billy
# Black and Tan Coonhound
# Black and Tan Virginia Foxhound
# Bullenbeisser
# Black Norwegian Elkhound
# Black Russian Terrier
# Blackmouth Cur
# Bleu de Gascogne, Grand
# Bleu de Gascogne, Petit
# Bloodhound
# Blue Lacy
# Blue Paul Terrier
# Bluetick Coonhound
# Boerboel
# Bohemian Shepherd
# Bolognese
# Border Collie
# Border Terrier
# Borzoi
# Bosnian Coarse-haired Hound
# Boston Terrier
# Bouvier des Ardennes
# Bouvier des Flandres
# Boxer
# Boykin Spaniel
# Bracco Italiano
# Braque d'Auvergne
# Braque du Bourbonnais
# Braque du Puy
# Braque Francais
# Braque Saint-Germain
# Brazilian Terrier
# Briard
# Briquet Griffon Vendéen
# Brittany
# Broholmer
# Bruno Jura Hound
# Bucovina Shepherd Dog
# Bull and Terrier
# Bull Terrier
# Bull Terrier (Miniature)
# Bulldog
# Bullmastiff
# Bully Kutta
# Burgos Pointer
# Cairn Terrier
# Canaan Dog
# Canadian Eskimo Dog
# Cane Corso
# Cão da Serra de Aires
# Cão de Castro Laboreiro
# Cão Fila de São Miguel
# Carolina Dog
# Carpathian Shepherd Dog
# Catahoula Cur
# Catalan Sheepdog
# Caucasian Shepherd Dog
# Cavalier King Charles Spaniel
# Central Asian Shepherd Dog
# Cesky Fousek
# Cesky Terrier
# Chesapeake Bay Retriever
# Chien Français Blanc et Noir
# Chien Français Blanc et Orange
# Chien Français Tricolore
# Chien-gris
# Chihuahua
# Chilean Fox Terrier
# Chinese Chongqing Dog
# Chinese Crested Dog
# Chinese Imperial Dog
# Chinook
# Chippiparai
# Chow Chow
# Cierny Sery
# Cimarrón Uruguayo
# Cirneco dell'Etna
# Clumber Spaniel
# Collie, Rough
# Collie, Smooth
# Combai
# Cordoba Fighting Dog
# Coton de Tulear
# Cretan Hound
# Croatian Sheepdog
# Cumberland Sheepdog
# Curly Coated Retriever
# Cursinu
# Czechoslovak Wolfdog
# Dachshund
# Dalmatian
# Dandie Dinmont Terrier
# Danish Swedish Farmdog
# Deutsche Bracke
# Doberman Pinscher
# Dogo Argentino
# Dogo Cubano
# Dogue de Bordeaux
# Drentse Patrijshond
# Drever
# Dunker
# Dutch Shepherd Dog
# Dutch Smoushond
# East Siberian Laika
# East-European Shepherd
# Elo
# English Cocker Spaniel
# English Coonhound
# English Foxhound
# English Mastiff
# English Setter
# English Shepherd
# English Springer Spaniel
# English Toy Terrier (Black & Tan)
# English Water Spaniel
# English White Terrier
# Entlebucher Mountain Dog
# Épagneul Bleu de Picardie
# Estonian Hound
# Estrela Mountain Dog
# Eurasier
# Field Spaniel
# Fila Brasileiro
# Finnish Hound
# Finnish Lapphund
# Finnish Spitz
# Flat-Coated Retriever
# Formosan Mountain Dog
# Fox Terrier (Smooth)
# Fox Terrier, Wire
# French Brittany
# French Bulldog
# French Spaniel
# Galgo Español
# Gascon Saintongeois
# Georgian shepherd
# German Longhaired Pointer
# German Pinscher
# German Rough-haired Pointer
# German Shepherd Dog
# German Shorthaired Pointer
# German Spaniel
# German Spitz
# German Wirehaired Pointer
# Giant Schnauzer
# Glen of Imaal Terrier
# Golden Retriever
# Gordon Setter
# Gran Mastín de Borínquen
# Grand Anglo-Français Blanc et Noir
# Grand Anglo-Français Blanc et Orange
# Grand Anglo-Français Tricolore
# Grand Griffon Vendéen
# Great Dane
# Great Pyrenees
# Greater Swiss Mountain Dog
# Greek Harehound
# Greenland Dog
# Greyhound
# Griffon Bleu de Gascogne
# Griffon Bruxellois
# Griffon Fauve de Bretagne
# Griffon Nivernais
# Hamiltonstövare
# Hanover Hound
# Hare Indian Dog
# Harrier
# Havanese
# Hawaiian Poi Dog
# Himalayan Sheepdog
# Hokkaido
# Hortaya Borzaya
# Hovawart
# Huntaway
# Hygenhund
# Ibizan Hound
# Icelandic Sheepdog
# Indian Spitz
# Irish Red and White Setter
# Irish Setter
# Irish Terrier
# Irish Water Spaniel
# Irish Wolfhound
# Istrian Coarse-haired Hound
# Istrian Shorthaired Hound
# Italian Greyhound
# Jack Russell Terrier
# Jagdterrier
# Jämthund
# Japanese Chin
# Japanese Spitz
# Japanese Terrier
# Kaikadi
# Kai Ken
# Kangal Dog
# Kanni
# Karakachan Dog
# Karelian Bear Dog
# Karst Shepherd
# Keeshond
# Kerry Beagle
# Kerry Blue Terrier
# King Charles Spaniel
# King Shepherd
# Kintamani
# Kishu
# Komondor
# Kooikerhondje
# Koolie
# Korean Jindo Dog
# Kromfohrländer
# Kunming Wolfdog
# Kurī
# Kuvasz
# Kyi-Leo
# Labrador Husky
# Labrador Retriever
# Lagotto Romagnolo
# Lakeland Terrier
# Lancashire Heeler
# Landseer
# Lapponian Herder
# Leonberger
# Lhasa Apso
# Lithuanian Hound
# Longhaired Whippet
# Löwchen
# Magyar Agár
# Maltese
# Manchester Terrier
# Maremma Sheepdog
# McNab
# Mexican Hairless Dog
# Miniature Australian Shepherd
# Miniature American Shepherd
# Miniature Fox Terrier
# Miniature Pinscher
# Miniature Schnauzer
# Miniature Shar Pei
# Mioritic
# Molossus
# Montenegrin Mountain Hound
# Moscow Watchdog
# Moscow Water Dog
# Mountain Cur
# Mucuchies
# Mudhol Hound
# Mudi
# Münsterländer, Large
# Münsterländer, Small
# Neapolitan Mastiff
# Newfoundland
# New Zealand Heading Dog
# Norfolk Spaniel
# Norfolk Terrier
# Norrbottenspets
# North Country Beagle
# Northern Inuit Dog
# Norwegian Buhund
# Norwegian Elkhound
# Norwegian Lundehund
# Norwich Terrier
# Nova Scotia Duck-Tolling Retriever
# Old Croatian Sighthound
# Old Danish Pointer
# Old English Sheepdog
# Old English Terrier
# Old German Shepherd Dog
# Old Time Farm Shepherd
# Olde English Bulldogge
# Otterhound
# Pachon Navarro
# Paisley Terrier
# Papillon
# Parson Russell Terrier
# Patterdale Terrier
# Pekingese
# Perro de Presa Canario
# Perro de Presa Mallorquin
# Peruvian Hairless Dog
# Phalène
# Pharaoh Hound
# Phu Quoc ridgeback dog
# Picardy Spaniel
# Plott Hound
# Podenco Canario
# Pointer
# Polish Greyhound
# Polish Hound
# Polish Hunting Dog
# Polish Lowland Sheepdog
# Polish Tatra Sheepdog
# Pomeranian
# Pont-Audemer Spaniel
# Poodle
# Porcelaine
# Portuguese Podengo
# Portuguese Pointer
# Portuguese Water Dog
# Posavac Hound
# Pražský Krysařík
# Pudelpointer
# Pug
# Puli
# Pumi
# Pungsan Dog
# Pyrenean Mastiff
# Pyrenean Shepherd
# Rafeiro do Alentejo
# Rajapalayam
# Rampur Greyhound
# Rastreador Brasileiro
# Ratonero Bodeguero Andaluz
# Ratonero Valenciano
# Rat Terrier
# Redbone Coonhound
# Rhodesian Ridgeback
# Rottweiler
# Russian Spaniel
# Russian Toy
# Russian tracker
# Russo-European Laika
# Russell Terrier
# Saarlooswolfhond
# Sabueso Español
# Saint-Usuge Spaniel
# Sakhalin Husky
# Saluki
# Samoyed
# Sapsali
# Šarplaninac
# Schapendoes
# Schillerstövare
# Schipperke
# Standard Schnauzer
# Schweizer Laufhund
# Schweizerischer Niederlaufhund
# Scotch Collie
# Scottish Deerhound
# Scottish Terrier
# Sealyham Terrier
# Segugio Italiano
# Seppala Siberian Sleddog
# Serbian Hound
# Serbian Tricolour Hound
# Shar Pei
# Shetland Sheepdog
# Shiba Inu
# Shih Tzu
# Shikoku
# Shiloh Shepherd Dog
# Siberian Husky
# Silken Windhound
# Sinhala Hound
# Skye Terrier
# Sloughi
# Slovak Cuvac
# Slovakian Rough-haired Pointer
# Slovenský Kopov
# Smålandsstövare
# Small Greek Domestic Dog
# Soft-Coated Wheaten Terrier
# South Russian Ovcharka
# Southern Hound
# Spanish Mastiff
# Spanish Water Dog
# Spinone Italiano
# Sporting Lucas Terrier
# St. Bernard
# St. John's water dog
# Stabyhoun
# Staffordshire Bull Terrier
# Stephens Cur
# Styrian Coarse-haired Hound
# Sussex Spaniel
# Swedish Lapphund
# Swedish Vallhund
# Tahltan Bear Dog
# Taigan
# Talbot
# Tamaskan Dog
# Teddy Roosevelt Terrier
# Telomian
# Tennessee Treeing Brindle
# Tenterfield Terrier
# Thai Bangkaew Dog
# Thai Ridgeback
# Tibetan Mastiff
# Tibetan Spaniel
# Tibetan Terrier
# Tornjak
# Tosa
# Toy Bulldog
# Toy Fox Terrier
# Toy Manchester Terrier
# Toy Trawler Spaniel
# Transylvanian Hound
# Treeing Cur
# Treeing Walker Coonhound
# Trigg Hound
# Tweed Water Spaniel
# Tyrolean Hound
# Vizsla
# Volpino Italiano
# Weimaraner
# Welsh Corgi, Cardigan
# Welsh Corgi, Pembroke
# Welsh Sheepdog
# Welsh Springer Spaniel
# Welsh Terrier
# West Highland White Terrier
# West Siberian Laika
# Westphalian Dachsbracke
# Wetterhoun
# Whippet
# White Shepherd
# Wirehaired Pointing Griffon
# Wirehaired Vizsla
# Yorkshire Terrier


