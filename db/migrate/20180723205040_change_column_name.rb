class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :url, :link
  end
end
