class Circuit < ApplicationRecord
  has_many :races, foreign_key: :circuit_id
end
