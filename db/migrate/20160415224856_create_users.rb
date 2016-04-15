class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :access_token
      t.string :access_secret

      t.timestamps null: false
    end
  end
end
