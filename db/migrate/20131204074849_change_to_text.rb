class ChangeToText < ActiveRecord::Migration
  def up
  	change_column :texts, :contents, :text, :limit => nil
  	change_column :programs, :contents, :text, :limit => nil
  	change_column :pictures, :contents, :text, :limit => nil
  	change_column :musics, :contents, :text, :limit => nil
  end

  def down
  end
end
