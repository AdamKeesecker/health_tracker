class AddingGoalsToUser < ActiveRecord::Migration
  def change
    add_column :users, :goals, :string
    add_column :users, :goal_number, :integer
  end
end
