class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.boolean :Free
      t.integer :Price_level
      t.text :Title
      t.text :Text
      t.string :Author
      t.datetime :Publication_datetime

      t.timestamps
    end
  end
end
