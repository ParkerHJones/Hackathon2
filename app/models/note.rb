class Note < ApplicationRecord
  belongs_to :job
  validates :title, :body, :picture presence: true
end
