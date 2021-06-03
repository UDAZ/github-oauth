class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    # uidとproviderの組み合わせを一意にする
    add_index :users, [:uid, :provider], unique: true
  end
end
