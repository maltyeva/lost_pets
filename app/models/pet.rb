class Pet < ApplicationRecord
  SPECIES = ["Dog", "Cat"]

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES }
  validates :age, inclusion: {in: (1..10)}
end
