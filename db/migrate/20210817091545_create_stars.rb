class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email_address
      t.string :performer_name
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
