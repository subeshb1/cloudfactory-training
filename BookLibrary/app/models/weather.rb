class Weather < ApplicationRecord
  validates :temp1, presence: true
  validates :temp2, presence: true, uniqueness: { scope: [:temp1] }
  validates :average, presence: true
end
