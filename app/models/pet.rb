class Pet < ApplicationRecord
  COLORS = ["red", "black", "white", "grey"]
  validates :name, :location, :found_on, presence: true
  validates :category, inclusion: { in: ["cat", "dog"] }
  validates :color, inclusion: { in: COLORS }

  def clean_date
    self.found_on.strftime("%A, %b %d")
  end
end
