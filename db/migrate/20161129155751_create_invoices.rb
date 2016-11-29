class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_no
      t.string :payment_terms
      t.string :date_due
      t.string :sub_total
      t.string :vat
      t.string :total

      t.timestamps
    end
  end
end
