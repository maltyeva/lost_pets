Pet.destroy_all if Rails.env.development?

puts "Deleted old pets"

20.times do
  Pet.create!(breed: Pet::BREED.sample,
              cuteness: rand(0..10),
              location:Faker::Address.full_address,
              reward: "100,000RMB",
              gender: ["M", "F", "dunno"].sample)
end

puts "Created #{Pet.count} pets"
