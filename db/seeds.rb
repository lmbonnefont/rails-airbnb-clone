require 'faker'

User.destroy_all
Product.destroy_all

  hash = {
    surname: "Jean",
    name: "Bonbeur",
    password: "123456",
    email: "jeanb@gmail.com",
    age: 23,
    profil_picture: "http://images.wisegeek.com/nerdy-man-in-checkered-shirt-with-computer.jpg",
    company_name: "Thalasso de Paris",
    failure_history: "En vrai j'ai merdé grave ... Franchement je ne mérite que l'opprobe public",
  }

  a = User.create!(hash)

  hash = {
    title: "MacBook pourri",
    quick_description: "Plus de clavier, écran sympa",
    price: 12,
    description: "Vieille edition de 2014, quand on croyait qu'on allait lever",
    availability: true,
    address: "12 rue de Tocqueville",
    photo: "http://img.macg.co/2009/06/macbook-air-bus-20091127-203134.jpg",
    user: a,
  }

  Product.create!(hash)

  hash = {
    title: "Lot de 102 imprimantes 3D",
    quick_description: "N'imprime que sur des feuilles A4",
    price: 110,
    description: "La base du business initiaement prévu. J'en ai achaté 3 containers.",
    availability: true,
    address: "124 rue de la Chatière",
    photo: "http://annonces-gratuites.index-net.org/images/90402_16345az5NaYaQxoO.jpg",
    user: a,
  }

  Product.create!(hash)

  hash = {
    title: "Scooter de livraison",
    quick_description: "Roule, freiner avec les pieds",
    price: 159,
    description: "Une belle bouse qui fait ses kilomètres malgré une odeur permanente de fumier",
    availability: true,
    address: "12 rue de Tocqueville",
    photo: "http://www.lapizz-foix.com/medias/album/images/scooter-livraison.jpg",
    user: a,
  }

  Product.create!(hash)

  hash = {
    title: "Canapé de burau (ou pas)",
    quick_description: "Canapé chill",
    price: 110,
    description: "Canapé idéal pour chiller au boulot.",
    availability: true,
    address: "124 rue de la Chatière",
    photo: "http://www.francecanape.com/images/canape/canape-design-maguelone/canape-design-maguelone-demo.jpg",
    user: a,
  }

  Product.create!(hash)

#########

  hash = {
    surname: "Pierre",
    name: "Dubrulle",
    password: "123456",
    email: "pierred@gmail.com",
    age: 25,
    profil_picture: "https://static1.jeanlouisdavid.com/articles/1/29/61/@/5411-homme-comment-entretenir-sa-barbe-article_full-2.jpg",
    company_name: "DVD Land",
    failure_history: "Rien à dire, je touche le fond mais creuse toujours. Besoin urgent de pépettes.",
  }

  a = User.create!(hash)

  hash = {
    title: "Super bureau",
    quick_description: "Classe, vrai bois aggloméré",
    price: 45,
    description: "La moitié de mon capital y est passé, prenez en soin.",
    availability: true,
    address: "10 rue de la Pompe",
    photo: "http://www.royaledeco.com/78877/bureau-design-en-bois-et-gris-laque-1-porte-5-tiroirs-waki.jpg",
    user: a,
  }

  Product.create!(hash)

#########

  hash = {
    surname: "Luc",
    name: "Levaultour",
    password: "123456",
    email: "lucv@gmail.com",
    age: 25,
    profil_picture: "https://archzine.fr/wp-content/uploads/2017/08/vetement-homme-inspiration-film-suits-homme-d-affaire-costume-cravate-bleu-fonce%CC%81.jpg",
    company_name: "Vault, Tour & Associés",
    failure_history: "Besoin de matos pour mes 15 stagiaires de l'été",
  }

  a = User.create!(hash)
