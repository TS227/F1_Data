class Race < ApplicationRecord
  belongs_to :circuit, foreign_key: :circuit_id
  has_many :lap_times, foreign_key: :race_id
end
