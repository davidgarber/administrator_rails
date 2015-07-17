class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.column :name, :string
      t.column :phone, :string

      t.timestamps
    end
  end
end
