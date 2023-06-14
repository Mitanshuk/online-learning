class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
      t.references :tutor, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
