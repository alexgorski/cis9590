class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :shortname
      t.string :city
      t.integer :conference_id

      t.timestamps
    end
  end
end
