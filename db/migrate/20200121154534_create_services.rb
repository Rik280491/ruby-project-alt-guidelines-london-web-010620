class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name 
      t.integer :category_id
      t.float :annual_price
      t.float :monthly_price  

    end 
  
  
  
  end
end
