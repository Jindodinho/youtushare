class UserAction < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  enum action: %i[vote unvote]

  scope :voted, -> { where(status: :vote) }
  scope :unvoted, -> { where(status: :unvote) }
end
