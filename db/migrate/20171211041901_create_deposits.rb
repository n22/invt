class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|
      t.string :jenis_transaksi
      t.string :nama_penyetor
      t.string :id_penyetor
      t.string :alamat_penyetor
      t.string :no_telp_penyetor
      t.string :nama_penerima
      t.string :rekening_penerima
      t.string :jenis_rekening_penerima
      t.string :jenis_valuta

      t.timestamps
    end
  end
end
