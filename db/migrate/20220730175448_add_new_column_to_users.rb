class AddNewColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users , :admin , :boolean , defaulf: false
  end
end
