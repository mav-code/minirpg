class Junk < ApplicationRecord
    has_many :character_junks
    has_many :characters, through: :character_junks
end
