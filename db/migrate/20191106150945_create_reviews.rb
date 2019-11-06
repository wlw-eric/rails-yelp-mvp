class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

# class CreateRestaurants < ActiveRecord::Migration[5.2]
#   def change
#     create_table :restaurants do |t|
#       t.string :name
#       t.string :address
#       t.integer :phone
#       t.string :category  #OK

#       t.timestamps
#     end
#   end
# end
# #Timestamp modified manually
