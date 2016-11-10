class CreateSubcategoriaprodutos < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategoriaprodutos do |t|
      t.string :nome
      t.references :categoriaproduto, foreign_key: true

      t.timestamps
    end
  end
end
