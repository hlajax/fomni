class AddOmniauthToAuteurs < ActiveRecord::Migration[6.0]
  def change
    add_column :auteurs, :provider, :string
    add_column :auteurs, :uid, :string
  end
end
