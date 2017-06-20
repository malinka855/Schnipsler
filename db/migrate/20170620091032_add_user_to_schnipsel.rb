class AddUserToSchnipsel < ActiveRecord::Migration[5.1]
  def change
    add_reference :schnipsels, :user, foreign_key: true
  end
end
