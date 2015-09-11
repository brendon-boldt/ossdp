class ChangeArticleTextToText < ActiveRecord::Migration
  def up
    change_column :articles, :text, :text, :limit => nil
  end
  
  def down
    change_column :articles, :text, :string
  end
end
