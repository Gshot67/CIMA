class AddMotivoToSegnalazione < ActiveRecord::Migration[7.0]
  def change
    add_column :segnalaziones, :motivo, :text
  end
end
