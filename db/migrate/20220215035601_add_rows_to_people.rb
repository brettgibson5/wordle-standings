class AddRowsToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :row1, :integer
    add_column :people, :row2, :integer
    add_column :people, :row3, :integer
    add_column :people, :row4, :integer
    add_column :people, :row5, :integer
    add_column :people, :row6, :integer
    add_column :people, :rowFail, :integer
  end
end
