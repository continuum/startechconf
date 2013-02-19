class CreatePreregistros < ActiveRecord::Migration
  def change
    create_table :preregistros do |t|
      t.string :mail

      t.timestamps
    end
  end
end
