class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :customer_id 
      t.integer :service_id 
      t.boolean :annual
    end
  end
end
