class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.timestamp :get_at
      t.float :usd
      t.float :cad
      t.float :jpy
      t.float :eur

      t.timestamps
    end
  end
end
