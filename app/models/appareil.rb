class Appareil < ApplicationRecord
    validates :nom, presence: true
    validates :caracteristiques, presence: true
    validates :auteur, presence: true
end
