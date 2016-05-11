class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :branch_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
