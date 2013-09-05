class Dog < ActiveRecord::Base
  belongs_to :user
  belongs_to :breed



  attr_accessible :age, :breed_id, :dog_image, :gender, :name, :user_id, :size, :toy, :avatar
  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  validates :size, presence: true

end
