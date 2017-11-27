require 'faker'

User.destroy_all
Product.destroy_all

email = ["louis", "marie", "thierry", "jacques", "rene", "aurelie", "jacquie", "aurel", "guillaume", "charles"]

email.each do |email|
  hash = {
    surname: Faker::LordOfTheRings.character,
    name: Faker::Pokemon.name,
    password: "123456",
    email: "#{email}@gmail.com" }
  a = User.create!(hash)
  hash = {
    price: 12,
    description: "yo le rap yo le rap",
    availability: true,
    address: "12 rue de Tocqueville",
    photo: "Perlimpimpin",
    user: a,
  }
  Product.create!(hash)
end
