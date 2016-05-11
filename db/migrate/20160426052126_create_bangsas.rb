class CreateBangsas < ActiveRecord::Migration
  def change
    create_table :bangsas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
