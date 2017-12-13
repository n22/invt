json.extract! deposit, :id, :jenis_transaksi, :nama_penyetor, :id_penyetor, :alamat_penyetor, :no_telp_penyetor, :nama_penerima, :rekening_penerima, :jenis_rekening_penerima, :jenis_valuta, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)
