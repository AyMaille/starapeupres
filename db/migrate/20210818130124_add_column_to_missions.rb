class AddColumnToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :name, :string
    add_column :missions, :address, :string
    add_column :missions, :booking, :string
  end
end
