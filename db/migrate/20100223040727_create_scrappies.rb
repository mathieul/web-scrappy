class CreateScrappies < ActiveRecord::Migration
  def self.up
    create_table :scrappies do |t|
      t.string :name
      t.string :label

      t.timestamps
    end
  end

  def self.down
    drop_table :scrappies
  end
end
