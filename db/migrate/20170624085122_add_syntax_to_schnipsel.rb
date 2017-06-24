class AddSyntaxToSchnipsel < ActiveRecord::Migration[5.1]
  def change
    add_column :schnipsels, :syntax, :string
  end
end
