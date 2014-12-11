class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :unit_id
      t.string :nickname
      t.boolean :active
      t.integer :role
      t.string :name
      t.string :surname
      t.string :email                     ,default: "", null: false
      t.integer :telephone
      t.string :note
      t.string :encrypted_password        ,default: "", null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at  ,default: 0, null: false
      t.datetime :remember_created_at
      t.integer :sign_in_count
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
      t.integer :failed_attempts          ,default: 0, null: false
      t.string :unlock_token
      t.datetime :locked_at

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token, unique: true
    add_index :users, :unlock_token, unique: true
  end
end
