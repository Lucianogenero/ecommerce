class CreateCategoriaprodutos < ActiveRecord::Migration[5.0]
  def change
    create_table :categoriaprodutos do |t|
      t.string :nome, :limit => 30

      t.timestamps
    end
  end
end
