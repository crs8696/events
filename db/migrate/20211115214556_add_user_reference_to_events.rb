class AddUserReferenceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :events, :users, column: :host
    add_index :events, :host
    change_column_null :events, :host, false
  end
end
