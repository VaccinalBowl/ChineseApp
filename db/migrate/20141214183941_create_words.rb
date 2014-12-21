class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :chinese
      t.string :pinyin
      t.string :translation
      t.references :list, index: true

      t.timestamps
    end
  end
end
