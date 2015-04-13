class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #include BCrypt
    has_many :bills
    has_many :reminders, through: :bills
    
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true
    validates :username, presence: true, uniqueness: true
    
    validates :password, length: { minimum: 8 }
    
    
    
end
