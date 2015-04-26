class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    #include BCrypt
    attr_accessor :login
    #attr_accessible :username, :email, :password, :password_confirmation
    
    has_many :bills
    has_many :reminders, through: :bills
    has_many :notif_types
    
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create } #uniqueness: true
    validates :username, presence: true #uniqueness: true
    
    validates :password, length: { minimum: 8 }
    
    def login=(login)
      @login = login
    end

    def login
      @login || self.username || self.email
    end
    
    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions.to_hash).first
      end
    end
    
    after_create :send_admin_mail
    def send_admin_mail
      UserMailer.welcome_email(self).deliver
      easy = SMSEasy::Client.new

      # Deliver a simple message.
      easy.deliver(self.phone, self.provider, "welcome to paidit!" + "https://paidit-kyleschenk1.c9.io")
    end
end
