class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :no_tel
      t.boolean :validation
      t.integer :voter_id

      t.timestamps null: false
    end
  end
end
