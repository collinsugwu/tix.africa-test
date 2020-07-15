class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.references :owner, references: :users, foreign_key: { to_table: :users}
      t.text :description
      t.string :event_type
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps
    end
  end
end
