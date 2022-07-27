class AddColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles , :user_id , :integar
  end
end
