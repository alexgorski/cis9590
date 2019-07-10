class AddSocialMediaToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :twitter_handle, :string
    add_column :players, :twitter_num_followers, :string
    add_column :players, :instagram_handle, :string
    add_column :players, :instagram_num_followers, :string
  end
end
