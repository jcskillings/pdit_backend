class Bill < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, presence: true
  validates :user_name, presence: true
end
