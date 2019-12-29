class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :phone,                null: false
      t.string :email,              null: false
      t.string :name              
      t.string :referencer
      t.string :password_digest
      t.integer :role
      t.timestamps
    end
  end
end
