class CreateDestroys < ActiveRecord::Migration[5.0]
  def change
    create_table :destroys do |t|
      t.string :Clientes
      t.string :nome
      t.string :cep

      t.timestamps
    end
  end
end
