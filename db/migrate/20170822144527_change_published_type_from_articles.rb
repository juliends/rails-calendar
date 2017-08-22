class ChangePublishedTypeFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :published
    add_column :articles, :published, :integer, default: 0
  end
end
