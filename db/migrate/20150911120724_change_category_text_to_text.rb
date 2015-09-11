class ChangeCategoryTextToText < ActiveRecord::Migration
  def up
    change_column :categories, :text, :text, :limit => nil
  end
  
  def down
    change_column :categories, :text, :string
  end
end
