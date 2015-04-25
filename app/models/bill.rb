class Bill < ActiveRecord::Base
  #has_many :notif_types
  belongs_to :user
  validates :user, :presence => true
end


