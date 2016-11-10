class CreateEstoques < ActiveRecord::Migration[5.0]
  def change
    create_table :estoques do |t|
      t.float :preco
      t.string :saldo
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end
	