class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{first_name} #{last_name}"
    end

    def adopt(pet)
        pet[:adopted?] = true
        pet[:adopter_id] = self.id
        pet.save
    end

    def fav_pet
        if self.pets.count == 0
            nil
        else
            species_array = self.pets.pluck(:species)
            species_array.max_by{|specie| species_array.count(specie)}

            # self.pets
            # .group_by { |pet| pet.species}
            # .max_by { |species| species.count }
            # [0]
        end
    end
end
