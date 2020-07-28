class Pet < ApplicationRecord
  BREED = %w(dog cat)
  validates :breed, :gender, :location, :reward, presence: true
  validates :breed, inclusion: {in: BREED}
  validates :cuteness, inclusion: {in: (0..10)}


end
