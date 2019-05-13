class ChangeColumnTypePlans < ActiveRecord::Migration[5.2]
  def change
    change_column :plans, :price, :float
  end
end
