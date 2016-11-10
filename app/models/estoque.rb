class Estoque < ApplicationRecord
  belongs_to :produto

  validates_presence_of :saldo, message: " - deve ser preenchido"
  validates_presence_of :produto, message: " - deve ser preenchido"
  validates_presence_of :preco, message: " - deve ser preenchido"

  scope :estoque_scope, lambda { |produto_id|
   where("produto_id = :produto_id", produto_id: produto_id) }

end
