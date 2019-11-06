class ChangeCategoryasArray < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :category, :array
  end
end
#NOT OK
