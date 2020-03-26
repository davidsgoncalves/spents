class CreateSpent < ActiveRecord::Migration[5.2]
  def change
    create_table :spents do |t|
      t.string :name

      t.references :wallet
      t.references :category

      t.timestamps
    end
  end
end
