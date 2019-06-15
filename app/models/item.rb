class Item < ApplicationRecord

  has_many :colors, dependent: :destroy
  has_many :sizes, dependent: :destroy

end


