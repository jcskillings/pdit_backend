class User < ActiveRecord::Base
    has_many :bills
    has_many :reminders, through: :bills
end
