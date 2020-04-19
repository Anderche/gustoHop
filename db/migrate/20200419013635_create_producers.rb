class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :producer_name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :postal_code
      t.string :city
      t.string :country
      t.references :island, null: false, foreign_key: true

      t.timestamps
    end
  end
end
