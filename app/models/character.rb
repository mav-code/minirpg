class Character < ApplicationRecord
    has_many :character_jobs
    has_many :character_junks
    has_many :jobs, through: :character_jobs
    has_many :junks, through: :character_junks
    belongs_to :user
end
