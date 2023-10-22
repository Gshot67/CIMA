class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :tag
      t.string :topic
      t.text :content
      t.string :titolo
      t.string :fonte_esterna
      t.string :lingua
      t.string :editoriale

      t.timestamps
    end
  end
end
