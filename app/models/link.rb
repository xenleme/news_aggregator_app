class Link < ApplicationRecord
  validates :title, :url, presence: true
  validates :title, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }

  acts_as_votable

  belongs_to :user
  has_many :comments
end
