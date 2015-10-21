class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.timestamps
    end
    add_index :users, :session_token, unique: true
    add_index :users, [:password_digest, :username]
    add_index :cats, :name, unique: true
  end
end
