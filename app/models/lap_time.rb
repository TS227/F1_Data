class LapTime < ApplicationRecord
  belongs_to :race, foreign_key: :race_id
end
