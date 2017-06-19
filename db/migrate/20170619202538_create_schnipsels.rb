class CreateSchnipsels < ActiveRecord::Migration[5.1]
  def change
    create_table :schnipsels do |t|
      t.string :titel
      t.text :code

      t.timestamps
    end
  end
end
