class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :country
      t.string :city
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
