class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end

    add_index :companies, :name
  end
end
