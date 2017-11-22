class AddAttributesToAuthToken < ActiveRecord::Migration[5.0]
  def change
    add_column :auth_tokens, :user_id, :integer
    add_column :auth_tokens, :token, :text
    add_column :auth_tokens, :expired, :boolean
    add_column :auth_tokens, :date_expired, :date
  end
end
