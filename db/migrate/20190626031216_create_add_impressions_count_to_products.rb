class CreateAddImpressionsCountToProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :add_impressions_count_to_products do |t|
      t.integer :impressions_count

      t.timestamps
    end
  end
end
