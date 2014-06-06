class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :drink_name
      t.string :alcohol
    end
  end
end
