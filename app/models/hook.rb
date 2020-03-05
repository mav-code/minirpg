class Hook < ApplicationRecord
    belongs_to :job, optional: true
    serialize :result, Hash
end
