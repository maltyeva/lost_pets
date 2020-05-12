class Pet < ApplicationRecord
  validates :name, :location, :found_on, presence: true
  validates :category, inclusion: { in: ["cat", "dog"] }
  validates :color, inclusion: { in: ["red", "black", "white", "grey"] }
end
