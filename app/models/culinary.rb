class Culinary < ActiveRecord::Base
  has_many :recipes

  validates :name, presence: true
end
