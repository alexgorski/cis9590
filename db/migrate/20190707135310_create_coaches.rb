class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :firstname
      t.string :lastname
      t.integer :yearstart
      t.integer :team_id

      t.timestamps
    end
  end
end
