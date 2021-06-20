class Memogaki < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :plans
end
