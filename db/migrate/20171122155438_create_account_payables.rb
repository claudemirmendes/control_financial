class CreateAccountPayables < ActiveRecord::Migration[5.0]
  def change
    create_table :account_payables do |t|
      t.text :description
      t.integer :account_payable__id
      t.boolean :payed
      t.integer :user_id
      t.boolean :parcel

      t.timestamps
    end
  end
end
