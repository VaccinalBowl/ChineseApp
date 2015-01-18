class CreateListsAndWords < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.text   :description
    end
    
    
    create_table :words do |t|
      t.string :chinese
      t.string :pinyin
      t.string :translation
    end


    create_table :lists_words, id: false do |t|
      t.belongs_to :list, index: true
      t.belongs_to :word, index: true
      
    end
  end



end
