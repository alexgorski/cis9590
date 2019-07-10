class Player < ApplicationRecord
  belongs_to :team
  has_many :stats
  has_many :endorsements
end
