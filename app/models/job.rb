class Job < ApplicationRecord
    has_many :character_jobs
    has_many :characters, through: :character_jobs
    belongs_to :parent, class_name: "Job"
    has_many :children, class_name: "Job", foreign_key: "parent_id"
end
