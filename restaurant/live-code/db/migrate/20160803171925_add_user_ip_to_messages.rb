class AddUserIpToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_ip, :string
  end
end
