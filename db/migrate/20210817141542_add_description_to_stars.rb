class AddDescriptionToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :decription, :string
  end
end
