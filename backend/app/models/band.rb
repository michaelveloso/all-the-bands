class Band < ActiveRecord::Base
  validates :name, presence: true
  validates :year_formed, presence: true
  validates :year_formed, numericality: { only_integer: true }
  validates :year_formed, length: { is: 4 }
  validates :year_formed, uniqueness: { scope: :year_formed }
end
