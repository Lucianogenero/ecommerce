class Produto < ApplicationRecord
  belongs_to :subcategoriaproduto
  has_many :estoque

  validates_uniqueness_of :nome, message: " - nome já cadastrado"
  validates_length_of :nome, :maximum => 50
  validates_presence_of :subcategoriaproduto, message: " - deve ser preenchido"
  validates_presence_of :descricao, message: " - deve ser preenchido"
  validates_presence_of :detalhamento, message: " - deve ser preenchido"

  def self.search(query)
    where("nome like ?","%#{query}%")
  end

  do_not_validate_attachment_file_type :foto1
 	
  has_attached_file :foto1, styles:{ medium: "800x600>", thumb: "100x100>" }, 
   :path => ':rails_root/public/images/Produto/:id-:basename-:style.:extension',
   :url => '/images/Produto/:id-:basename-:style.:extension'

   do_not_validate_attachment_file_type :foto2
  has_attached_file :foto2, styles:{ medium: "800x600>", thumb: "100x100>" }, 
   :path => ':rails_root/public/images/Produto/:id-:basename-:style.:extension',
   :url => '/images/Produto/:id-:basename-:style.:extension'

   do_not_validate_attachment_file_type :foto3
  has_attached_file :foto3, styles:{ medium: "800x600>", thumb: "100x100>" }, 
   :path => ':rails_root/public/images/Produto/:id-:basename-:style.:extension',
   :url => '/images/Produto/:id-:basename-:style.:extension'

   do_not_validate_attachment_file_type :foto4
   
  has_attached_file :foto4, styles:{ medium: "800x600>", thumb: "100x100>" }, 
   :path => ':rails_root/public/images/Produto/:id-:basename-:style.:extension',
   :url => '/images/Produto/:id-:basename-:style.:extension'


  	#content_type: { content_type: ["foto/jpg", "foto/jpeg", "foto/png", "foto/gif"] }

  	scope :produto_scope, lambda { |produto_id|
  	where("produto_id = :produto_id", produto_id: produto_id)
    
    
  }
end
