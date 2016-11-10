class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :fone
      t.string :cep
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :numero

      t.timestamps
    end
  end
end
