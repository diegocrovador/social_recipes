class Recipe < ActiveRecord::Base
  belongs_to :culinary
  belongs_to :food_type
  belongs_to :food_preference

  validates :name, :ingredients, :description, :culinary_id, :food_type_id,
            :food_preference_id, presence: true

  def self.recents
    order(created_at: :desc).limit 20
  end
end
