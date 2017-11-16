class Area < ApplicationRecord
  belongs_to  :catalogue
  has_many    :items

  validates   :name, presence: true
end
