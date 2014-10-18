class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :mobile
      t.string :location
      t.string :job
      t.boolean :assigned

      t.timestamps
    end
  end
end
