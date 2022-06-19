class UserAction < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  enum action: %i[vote unvote]

  counter_culture :movie, column_name: proc {|model| model.vote? ? 'votes_count' : nil }
  counter_culture :movie, column_name: proc {|model| model.unvote? ? 'unvotes_count' : nil }

  scope :voted, -> { where(status: :vote) }
  scope :unvoted, -> { where(status: :unvote) }
end
