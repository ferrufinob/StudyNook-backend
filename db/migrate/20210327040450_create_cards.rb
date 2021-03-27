class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :front
      t.string :back
      t.belongs_to :deck

      t.timestamps
    end
  end
end
