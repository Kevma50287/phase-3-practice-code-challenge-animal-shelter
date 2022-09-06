class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
    end

    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.boolean :adopted?
      t.integer :shelter_id
      t.integer :adopter_id
    end

    create_table :adopters do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
