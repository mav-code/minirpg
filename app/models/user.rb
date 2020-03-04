class User < ApplicationRecord
    has_many :characters









  has_many :votes

  validates_presence_of :username
  validates_uniqueness_of :username

  def remaining_votes
    5 - self.votes.count
  end

  def can_vote
    self.remaining_votes > 0
  end

  has_secure_password

end
