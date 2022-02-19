class AddLastScoretoPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :last_score, :string
  end
end
