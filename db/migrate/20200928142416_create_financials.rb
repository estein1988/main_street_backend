class CreateFinancials < ActiveRecord::Migration[6.0]
  def change
    create_table :financials do |t|
      t.string :year
      t.integer :sales_revenue
      t.integer :service_revenue
      t.integer :advertising
      t.integer :cogs
      t.integer :employee_benefits
      t.integer :equipment
      t.integer :insurance
      t.integer :maintenance
      t.integer :office_supplies
      t.integer :rent
      t.integer :r_and_d
      t.integer :salaries
      t.integer :software
      t.integer :travel
      t.integer :utilities
      t.integer :website
      t.integer :other_expense
      t.integer :interest
      t.integer :taxes
      t.integer :ammoritization
      t.integer :depreciation
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
