class Coach < ApplicationRecord
  belongs_to :team


  def name
    firstname + " " + lastname
  end
end
