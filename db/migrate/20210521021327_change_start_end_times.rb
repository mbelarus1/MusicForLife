class ChangeStartEndTimes < ActiveRecord::Migration[6.0]
  def change
    change_table(:bookings) do |t|
       t.remove :start_date
       t.remove :end_date
       t.remove :price
        t.column :start_date, :date
        t.column :end_date, :date
    end
  end
end
