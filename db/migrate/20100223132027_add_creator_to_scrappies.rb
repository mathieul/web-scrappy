class AddCreatorToScrappies < ActiveRecord::Migration
  def self.up
    add_column :scrappies, :creator_id, :integer
    add_index :scrappies, :creator_id
  end

  def self.down
    remove_index :scrappies, :creator_id
    remove_column :scrappies, :creator_id
  end
end
