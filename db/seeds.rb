require 'faker'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Hacker.noun,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: "chinese"
  )
  restaurant.save!
end

