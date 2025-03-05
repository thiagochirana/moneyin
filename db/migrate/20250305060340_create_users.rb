class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :document_type
      t.string :document_number
      t.string :telephone
      t.string :role
      t.string :email_address, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :users, :email_address, unique: true
  end
end
