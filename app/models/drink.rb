class Drink < ApplicationRecord
  has_many :photos, dependent: :destroy
end
