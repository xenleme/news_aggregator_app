class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, presence: true, uniqueness: true
  validates :username, length: { maximum: 150 }
  validates :password, length: { in: 6..50 }

  has_many :links

  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "20x20>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
