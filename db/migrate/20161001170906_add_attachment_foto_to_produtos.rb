class AddAttachmentFotoToProdutos < ActiveRecord::Migration
  def self.up
    change_table :produtos do |t|
      t.attachment :foto1
      t.attachment :foto2
      t.attachment :foto3
      t.attachment :foto4
    end
  end

  def self.down
    remove_attachment :produtos, :foto
  end
end
