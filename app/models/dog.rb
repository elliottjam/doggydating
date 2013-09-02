class Dog < ActiveRecord::Base
  belongs_to :user

  attr_accessible :age, :breed_id, :dog_image, :gender, :name, :owner_id, :size, :toy

  validates :name, presence: true
  validates :size, presence: true

end
