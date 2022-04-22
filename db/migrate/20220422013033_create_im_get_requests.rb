class CreateImGetRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :im_get_requests do |t|
      t.string :username
      t.string :pwd
      t.string :prodID
      t.string :tokenID

      t.timestamps
    end
  end
end
