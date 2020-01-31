class Park < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
