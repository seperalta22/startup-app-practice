class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.jsonb :settings, null: false, default: {}

      t.timestamps
    end
    add_index :accounts, :settings, using: :gin # Add GIN index for jsonb column
  end
end
