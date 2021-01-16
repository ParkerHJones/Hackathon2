class User < ActiveRecord::Base
  extend Devise::Models
  has_many :buildings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
