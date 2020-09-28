class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :business_name
      t.string :business_street
      t.string :business_city
      t.string :business_state
      t.string :business_zip
      t.string :business_phone
      t.string :email
      t.string :website
      t.string :industry

      t.timestamps
    end
  end
end
