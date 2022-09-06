5.times do
    name = Faker::Name.unique.name
    address = Faker::Address.full_address
    Shelter.create(name: name, address: address)
end

20.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    Adopter.create(first_name: first_name, last_name: last_name)
end

pets = ["dog", "cat", "rabbit"]
booleans = [true, false]

30.times do
    name = Faker::Name.unique.name
    age = rand(1..15)
    species = pets.sample()
    adopted = booleans.sample()
    shelter_id = rand(1..Shelter.count)
    adopter_id = rand(1..Adopter.count)
    Pet.create(
        name: name,
        age: age,
        species: species,
        adopted?: adopted,
        shelter_id: shelter_id,
        adopter_id: adopter_id
    )
end