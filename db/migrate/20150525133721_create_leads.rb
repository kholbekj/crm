class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.integer :progress
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
