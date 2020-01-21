class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :customer_id 
      t.integer :streaming_service_id 
    end
  end
end
