class AddSourceToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :source, :string
  end
end
