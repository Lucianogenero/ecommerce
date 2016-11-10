class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome, :limit => 30
      t.string :descricao
      t.text :detalhamento
      t.references :subcategoriaproduto, foreign_key: true


      t.timestamps
    end
  end
end
