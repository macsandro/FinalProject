class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :contact
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
