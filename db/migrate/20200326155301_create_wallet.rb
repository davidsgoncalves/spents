class CreateWallet < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :name

      t.timestamps
    end
  end
end
