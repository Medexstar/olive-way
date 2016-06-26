class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  has_one :measurements
  has_one :shipping_addresses
  has_one :billing_addresses
  has_many :orders
  
  validate :validate_username
  validate :password_complexity
  attr_accessor :login
  
  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_hash).first
      end
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
  
  def password_complexity
    if password.present? and not password.match(/^(?=.*\d). /)
      errors.add :password, "must include at least one digit"
    end
  end
end
