class Categoriaproduto < ApplicationRecord
	has_many :subcategoriaproduto

	validates_uniqueness_of :nome, message: " - nome já cadastrado"
	validates_length_of :nome, :maximum => 25
end
