class ChangeTitleLengthOnCategories < ActiveRecord::Migration[6.0]
  def up
    change_column :categories, :title, :string, limit: 100
  end

  def down
    change_column :categories, :title, :string
  end
end
