class AddSourceToEndorsement < ActiveRecord::Migration[6.0]
  def change
    add_column :endorsements, :source, :string
  end
end
