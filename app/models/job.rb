class Job < ApplicationRecord
  belongs_to :building
  validates :completed, :title, :pay, :description, :priority, presence: true
  validates :pay, numericality: true
end
