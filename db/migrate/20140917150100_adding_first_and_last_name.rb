class AddingFirstAndLastName < ActiveRecord::Migration
  add_column :users, :first_name, :string
  add_column :users, :last_name, :string
end
