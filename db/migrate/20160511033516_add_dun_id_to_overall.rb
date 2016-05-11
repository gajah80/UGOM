class AddDunIdToOverall < ActiveRecord::Migration
  def change
    add_column :overalls, :dun_id, :integer
  end
end
