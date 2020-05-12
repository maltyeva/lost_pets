class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.datetime :found_on
      t.string :location
      t.string :color
      t.boolean :found, default: false

      t.timestamps
    end
  end
end
