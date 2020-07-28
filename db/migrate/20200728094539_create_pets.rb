class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :breed
      t.string :gender
      t.integer :cuteness
      t.string :location
      t.string :reward
      t.boolean :recovered, default: false, null: false

      t.timestamps
    end
  end
end
