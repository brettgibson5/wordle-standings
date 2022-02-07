class AddAverageToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :average, :float
  end
end
