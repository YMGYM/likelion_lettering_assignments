class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :teachertitle
      t.string :yourname
      t.string :myname
      t.text :greet
      t.string :pasthappen
      t.text :pastdo
      t.text :nowchange
      t.text :nowhappen
      t.text :addition
      t.text :thanks
      t.string :studenttite
      t.string :pass
      t.text :finishword
      t.string :whatdo
      t.timestamps null: false
    end
  end
end
