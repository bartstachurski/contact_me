class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :from
      t.string :to
      t.string :source
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
