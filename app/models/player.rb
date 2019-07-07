class Player < ApplicationRecord
  belong_to :team
  has_many :stats
end
