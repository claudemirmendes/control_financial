class CreateAccountReceivables < ActiveRecord::Migration[5.0]
  def change
    create_table :account_receivables do |t|
      t.text :description
      t.integer :account_receivable_id
      t.boolean :received
      t.integer :user_id

      t.timestamps
    end
  end
end
