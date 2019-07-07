class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :games_played
      t.float :ppg
      t.float :apg
      t.float :rpg
      t.float :mpg
      t.float :per
      t.float :gf
      t.float :ft
      t.integer :player_id

      t.timestamps
    end
  end
end
