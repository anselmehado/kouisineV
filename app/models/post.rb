class Post < ApplicationRecord
  validates :content, :avatar, presence: true
  belongs_to :user
  mount_uploader :avatar,  PostUploader
  # has_many :favorites, dependent: :destroy
  # has_many :favorite_users, through: :favorites, source: :user
end
