class AddUserNameToUsers < ActiveRecord::Migration
  def change # anythink inside  of this method will be translated to SQL code and modified a DB (currently, SQLITE) 
  	add_column :users, :username, :string #add a new column to table users called username of type "string"
  	add_index :users, :username, unique: true
  end
end
