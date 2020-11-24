class CreateHistoires < ActiveRecord::Migration[6.0]
  def change
    create_table :histoires do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end
