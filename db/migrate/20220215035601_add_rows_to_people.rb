class AddRowsToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :row1, :integer, :null => false, :default => 0
    add_column :people, :row2, :integer, :null => false, :default => 0
    add_column :people, :row3, :integer, :null => false, :default => 0
    add_column :people, :row4, :integer, :null => false, :default => 0
    add_column :people, :row5, :integer, :null => false, :default => 0
    add_column :people, :row6, :integer, :null => false, :default => 0
    add_column :people, :rowFail, :integer, :null => false, :default => 0
  end
end
