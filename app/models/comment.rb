class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 2000,
    too_long: "%{count} characters is the maximum allowed" }

  belongs_to :user
end
