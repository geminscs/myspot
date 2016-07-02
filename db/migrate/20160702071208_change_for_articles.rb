class ChangeForArticles < ActiveRecord::Migration
  def change
      add_column :articles, :lat, :string
      add_column :articles, :lng, :string
  end
end
