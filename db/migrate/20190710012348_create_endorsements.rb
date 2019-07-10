class CreateEndorsements < ActiveRecord::Migration[6.0]
  def change
    create_table :endorsements do |t|
      t.string :brand
      t.text :notes
      t.integer :player_id

      t.timestamps
    end
  end
end
