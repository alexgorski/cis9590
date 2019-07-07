class RenameFg < ActiveRecord::Migration[6.0]
  def change
    rename_column :stats, :gf, :fg
  end
end
