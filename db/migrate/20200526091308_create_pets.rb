class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.string :species
      t.datetime :found_on
      t.boolean :recovered, default: false

      t.timestamps
    end
  end
end
