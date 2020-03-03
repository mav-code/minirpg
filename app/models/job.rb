class Job < ApplicationRecord
    has_many :character_jobs
    has_many :characters through: :character_jobs
end
