# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  sex                    :integer
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :build_user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:login]

  has_one   :measurement
  has_one   :shipping_address
  has_one   :billing_address
  has_many  :orders
  has_many  :order_objects

  accepts_nested_attributes_for :shipping_address
  accepts_nested_attributes_for :billing_address

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validate :validate_username

  validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create

  enum sex: { male: 0, female: 1, other: 2}

  attr_accessor :login

  def formatted_shipping_address
    shipping_address.street + ", " +
    shipping_address.suburb + ", " +
    shipping_address.state + ", " +
    shipping_address.postcode + ", " +
    shipping_address.country
  end

  private

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).
      where(["lower(username) = :value OR lower(email) = :value",
        { value: login.downcase}]).first
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

  def build_user
    build_shipping_address.save!(validate: false)
    build_billing_address.save!(validate: false)
    build_measurement.save!(validate: false)
  end
end
