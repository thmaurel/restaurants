class AddStarToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :star, :integer
  end
end
