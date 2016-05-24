class Recipe < ActiveRecord::Base
  belongs_to :culinary
  belongs_to :food_type
end
