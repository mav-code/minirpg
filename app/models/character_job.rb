class CharacterJob < ApplicationRecord
    belongs_to :job
    belongs_to :character
end
