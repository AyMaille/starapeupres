class AddPerformerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :performer, :boolean, default: false
  end
end
