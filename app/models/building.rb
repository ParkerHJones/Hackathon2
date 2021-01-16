class Building < ApplicationRecord
  belongs_to :user
  validates :year_built, :type, :address, presence: true
end
