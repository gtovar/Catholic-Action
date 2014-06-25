class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :seo
      t.text :content
      t.string :ancestry
      t.string :slug

      t.timestamps
    end
    add_index :pages, :ancestry
    add_index :pages, :slug, unique: true 
  end
end
