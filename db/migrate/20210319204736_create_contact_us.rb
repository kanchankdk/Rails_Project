class CreateContactUs < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_us do |t|

      t.timestamps
    end
  end
end
