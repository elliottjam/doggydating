class ContactRequest < ActiveRecord::Base
  belongs_to :from, class_name: "User"
  belongs_to :to, class_name: "User"
  attr_accessible :status, :from_id, :to_id
end
