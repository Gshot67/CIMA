class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.string :follower, foreign_key: { to_table: :infos}
      t.string :seguito, foreign_key: { to_table: :infos}

      t.timestamps
    end
  end
end
