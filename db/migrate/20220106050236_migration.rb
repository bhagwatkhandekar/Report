class Migration < ActiveRecord::Migration
  def change
    add_column :mfi_reports, :refer_number, :string
  end
end
