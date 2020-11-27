class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, uniqueness: { scope: :ingredient,
  message: 'do not repeat ingredient twice la!' }
  validates :description, presence: true
end
