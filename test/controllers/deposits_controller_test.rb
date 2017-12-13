require 'test_helper'

class DepositsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposit = deposits(:one)
  end

  test "should get index" do
    get deposits_url
    assert_response :success
  end

  test "should get new" do
    get new_deposit_url
    assert_response :success
  end

  test "should create deposit" do
    assert_difference('Deposit.count') do
      post deposits_url, params: { deposit: { alamat_penyetor: @deposit.alamat_penyetor, id_penyetor: @deposit.id_penyetor, jenis_rekening_penerima: @deposit.jenis_rekening_penerima, jenis_transaksi: @deposit.jenis_transaksi, jenis_valuta: @deposit.jenis_valuta, nama_penerima: @deposit.nama_penerima, nama_penyetor: @deposit.nama_penyetor, no_telp_penyetor: @deposit.no_telp_penyetor, rekening_penerima: @deposit.rekening_penerima } }
    end

    assert_redirected_to deposit_url(Deposit.last)
  end

  test "should show deposit" do
    get deposit_url(@deposit)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposit_url(@deposit)
    assert_response :success
  end

  test "should update deposit" do
    patch deposit_url(@deposit), params: { deposit: { alamat_penyetor: @deposit.alamat_penyetor, id_penyetor: @deposit.id_penyetor, jenis_rekening_penerima: @deposit.jenis_rekening_penerima, jenis_transaksi: @deposit.jenis_transaksi, jenis_valuta: @deposit.jenis_valuta, nama_penerima: @deposit.nama_penerima, nama_penyetor: @deposit.nama_penyetor, no_telp_penyetor: @deposit.no_telp_penyetor, rekening_penerima: @deposit.rekening_penerima } }
    assert_redirected_to deposit_url(@deposit)
  end

  test "should destroy deposit" do
    assert_difference('Deposit.count', -1) do
      delete deposit_url(@deposit)
    end

    assert_redirected_to deposits_url
  end
end
