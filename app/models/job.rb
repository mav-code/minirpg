class Job < ApplicationRecord
    has_many :character_jobs
    has_many :characters, through: :character_jobs
    has_many :children, class_name: "Job", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Job", optional: true
    has_many :hooks
end
