class AddStatusColumnToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :status, :integer, default: 0, null: false
  end
end
