class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.float :price
      t.string :special_request
      t.references :user, null: false, foreign_key: true
      t.references :star, null: false, foreign_key: true

      t.timestamps
    end
  end
end
