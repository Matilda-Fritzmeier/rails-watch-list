class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list_id, :movie_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
end
