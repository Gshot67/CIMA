class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :username, null: false, index: {unique: true}
      t.string :nome
      t.string :foto
      t.text :bio
      t.string :certificazione
      t.integer :tipo, null: false, default: 0

      t.timestamps
    end
  end
end
