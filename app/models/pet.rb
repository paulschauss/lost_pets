class Pet < ApplicationRecord
  SPECIES = ['turtle', 'cat', 'dog', 'licorn']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES,
    message: "%{value} is not a valid specie" }
end
