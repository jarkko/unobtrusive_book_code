class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.column :description, :string
      t.column :done, :boolean, :default => false
      t.column :updated_at, :datetime
      
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
