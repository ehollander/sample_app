class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :user_id, presence: true

  default_scope older: 'microposts.created_at DESC'
end
