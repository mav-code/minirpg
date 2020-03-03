class Character < ApplicationRecord
    has_many :character_jobs
    has_many :jobs, through: :character_jobs
    belongs_to :user
end
