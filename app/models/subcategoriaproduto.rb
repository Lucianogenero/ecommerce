class Subcategoriaproduto < ApplicationRecord
  belongs_to :categoriaproduto
  has_many :produto

  validates_presence_of :categoriaproduto, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"
  validates_length_of :nome, :maximum => 25
end
