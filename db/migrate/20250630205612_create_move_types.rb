class CreateMoveTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :move_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
