class Post < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  # has_many :liked_users, through: :likes, source: :user
  has_many :posttags,  dependent: :destroy
  has_many :tags, through: :posttags 
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
