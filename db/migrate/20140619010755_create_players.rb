class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player
      t.references :user, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
