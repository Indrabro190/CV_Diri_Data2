<?php
function koneksi()
{
  // Koneksi ke DB & Pilih Database
  return mysqli_connect('localhost', 'root', '', 'biodata_diri');
}
function query($query)
{
  $conn = koneksi();

  $result = mysqli_query($conn, $query);

  // jika hasilnya hanya 1 data
  if (mysqli_num_rows($result) == 1) {
    return mysqli_fetch_assoc($result);
  }

  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  return $rows;
}

function tambah($data)
{
  $conn = koneksi();

  $Nama = htmlspecialchars($data['Nama']);
  $Tempat = htmlspecialchars($data['Tempat']);
  $Tgl_lahir = htmlspecialchars($data['Tgl_lahir']);
  $Jenis_Kelamin = htmlspecialchars($data['Jenis_Kelamin']);
  $Gol_Darah = htmlspecialchars($data['Gol_Darah']);
  $Alamat = htmlspecialchars($data['Alamat']);
  $RT_RW = htmlspecialchars($data['RT_RW']);
  $Kel_Desa = htmlspecialchars($data['Kel_Desa']);
  $Kecamatan = htmlspecialchars($data['Kecamatan']);
  $Agama = htmlspecialchars($data['Agama']);
  $Status_Perkawinan = htmlspecialchars($data['Status_Perkawinan']);
  $Pekerjaan = htmlspecialchars($data['Pekerjaan']);
  $Kewarganegaraan = htmlspecialchars($data['Kewarganegaraan']);
  $kolomAhli = htmlspecialchars($data['nama_keahlian1']);
  $kolomAhli = htmlspecialchars($data['nama_keahlian2']);
  $kolomAhli = htmlspecialchars($data['nama_keahlian3']);
  $kolomAhli2 = htmlspecialchars($data['keterangan1']);
  $kolomAhli2 = htmlspecialchars($data['keterangan2']);
  $kolomAhli2 = htmlspecialchars($data['keterangan3']);
  // $nama_keahlian1 = htmlspecialchars($data['nama_keahlian1']);
  // $nama_keahlian2 = htmlspecialchars($data['nama_keahlian2']);
  // $nama_keahlian3 = htmlspecialchars($data['nama_keahlian3']);
  // $keterangan1 = htmlspecialchars($data['keterangan1']);
  // $keterangan2 = htmlspecialchars($data['keterangan2']);
  // $keterangan3 = htmlspecialchars($data['keterangan3']);
  $kolomPendidik1 = htmlspecialchars($data['riwayat_pendidikan1']);
  $kolomPendidik1 = htmlspecialchars($data['riwayat_pendidikan2']);
  $kolomPendidik1 = htmlspecialchars($data['riwayat_pendidikan3']);
  $kolomPendidik1 = htmlspecialchars($data['riwayat_pendidikan4']);
  $kolomPendidik1 = htmlspecialchars($data['riwayat_pendidikan5']);
  $kolomPendidik2 = htmlspecialchars($data['nama_pendidikan1']);
  $kolomPendidik2 = htmlspecialchars($data['nama_pendidikan2']);
  $kolomPendidik2 = htmlspecialchars($data['nama_pendidikan3']);
  $kolomPendidik2 = htmlspecialchars($data['nama_pendidikan4']);
  $kolomPendidik2 = htmlspecialchars($data['nama_pendidikan5']);


  $query1 = "INSERT INTO data_diri VALUES (null,'$Nama','$Tempat','$Tgl_lahir','$Jenis_Kelamin','$Gol_Darah','$Alamat',
  '$RT_RW','$Kel_Desa','$Kecamatan','$Agama','$Status_Perkawinan','$Pekerjaan','$Kewarganegaraan')";

  if ($conn->query($query1) == true) {
    $last_id = $conn->insert_id;
    for ($i = 1; $i < 4; $i++) {
      $kolomAhli = 'nama_keahlian' . $i;
      $kolomAhli2 = 'keterangan' . $i;
      // $keterangan = 'keterangan';
      $query2 = "INSERT INTO keahlian VALUES(null,'$last_id','$kolomAhli','$kolomAhli2')";
      mysqli_query($conn, $query2);
    }
    for ($i = 0; $i < 5; $i++) {
      $kolomPendidik1 = 'riwayat_pendidikan' . $i;
      $kolomPendidik2 = 'nama_pendidikan' . $i;
      $query3 = "INSERT INTO pendidikan VALUES(null,'$last_id','$kolomPendidik1','$kolomPendidik2')";
      mysqli_query($conn, $query3);
    }
  }
  echo mysqli_error($conn);
  return mysqli_affected_rows($conn);
  $conn->close();
}




function hapus($id)
{
  $conn = koneksi();

  mysqli_query($conn, "DELETE data_diri,keahlian,pendidikan FROM data_diri 
  INNER JOIN keahlian ON data_diri.id_utama = keahlian.id_utama
  INNER JOIN pendidikan ON data_diri.id_utama = pendidikan.id_utama AND data_diri.id_utama = $id;")
    or die(mysqli_error($conn));
  return mysqli_affected_rows($conn);
}

function ubah($data, $id)
{
  $conn = koneksi();
  $id_utama = $data['id_utama'];
  $Nama = $data['Nama'];
  $Tempat = $data['Tempat'];
  $Tgl_lahir = $data['Tgl_lahir'];
  $Jenis_Kelamin = $data['Jenis_Kelamin'];
  $Gol_Darah = $data['Gol_Darah'];
  $Alamat = $data['Alamat'];
  $RT_RW = $data['RT_RW'];
  $Kel_Desa = $data['Kel_Desa'];
  $Kecamatan = $data['Kecamatan'];
  $Agama = $data['Agama'];
  $Status_Perkawinan = $data['Status_Perkawinan'];
  $Pekerjaan = $data['Pekerjaan'];
  $Kewarganegaraan = $data['Kewarganegaraan'];
  // $nama_keahlian1 = $data['nama_keahlian1'];
  // $nama_keahlian2 = $data['nama_keahlian2'];
  // $nama_keahlian3 = $data['nama_keahlian3'];
  // $keterangan1 = $data['keterangan1'];
  // $keterangan2 = $data['keterangan2'];
  // $keterangan3 = $data['keterangan3'];
  $kolomAhli = $data['nama_keahlian1'];
  $kolomAhli = $data['nama_keahlian2'];
  $kolomAhli = $data['nama_keahlian3'];
  $kolomAhli2 = $data['keterangan1'];
  $kolomAhli2 = $data['keterangan2'];
  $kolomAhli2 = $data['keterangan3'];
  $id_keahlian = $data['id_keahlian'];
  // $riwayat_pendidikan1 = $data['riwayat_pendidikan1'];
  // $riwayat_pendidikan2 = $data['riwayat_pendidikan2'];
  // $riwayat_pendidikan3 = $data['riwayat_pendidikan3'];
  // $riwayat_pendidikan4 = $data['riwayat_pendidikan4'];
  // $riwayat_pendidikan5 = $data['riwayat_pendidikan5'];
  // $nama_pendidikan1 = $data['nama_pendidikan1'];
  // $nama_pendidikan2 = $data['nama_pendidikan2'];
  // $nama_pendidikan3 = $data['nama_pendidikan3'];
  // $nama_pendidikan4 = $data['nama_pendidikan4'];
  // $nama_pendidikan5 = $data['nama_pendidikan5'];
  $kolomPendidik1 = $data['riwayat_pendidikan1'];
  $kolomPendidik1 = $data['riwayat_pendidikan2'];
  $kolomPendidik1 = $data['riwayat_pendidikan3'];
  $kolomPendidik1 = $data['riwayat_pendidikan4'];
  $kolomPendidik1 = $data['riwayat_pendidikan5'];
  $kolomPendidik2 = $data['nama_pendidikan1'];
  $kolomPendidik2 = $data['nama_pendidikan2'];
  $kolomPendidik2 = $data['nama_pendidikan3'];
  $kolomPendidik2 = $data['nama_pendidikan4'];
  $kolomPendidik2 = $data['nama_pendidikan5'];
  $id_pendidikan = $data['id_pendidikan'];

  $query1 = "UPDATE data_diri,keahlian,pendidikan SET 
              Nama = '$Nama',
              Tempat = '$Tempat',
              Tgl_lahir = '$Tgl_lahir',
              Jenis_Kelamin = '$Jenis_Kelamin',
              Gol_Darah = '$Gol_Darah',
              Alamat = '$Alamat',
              RT_RW = '$RT_RW',
              Kel_Desa = '$Kel_Desa',
              Kecamatan = '$Kecamatan',
              Agama = '$Agama',
              Status_Perkawinan = '$Status_Perkawinan',
              Pekerjaan = '$Pekerjaan',
              Kewarganegaraan = '$Kewarganegaraan'

            WHERE data_diri.id_utama = $id";

  if ($conn->query($query1) == true) {
    for ($i = 0; $i <$kolomAhli; $i++) {
      $query2 = "UPDATE keahlian SET
            nama_keahlian1 = '$kolomAhli',
            nama_keahlian2 = '$kolomAhli',
            nama_keahlian3 = '$kolomAhli',
            keterangan1 = '$kolomAhli2',
            keterangan2 = '$kolomAhli2',
            keterangan3 = '$kolomAhli2'
            WHERE keahlian.id_keahlian = $id_keahlian";
            var_dump($id_keahlian);
      mysqli_query($conn, $query2);
    }
    for ($i = 0; $i <$kolomPendidik1; $i++) {
      $query3 = "UPDATE pendidikan SET
            riwayat_pendidikan1 = '$kolomPendidik1',
            riwayat_pendidikan2 = '$kolomPendidik1',
            riwayat_pendidikan3 = '$kolomPendidik1',
            riwayat_pendidikan4 = '$kolomPendidik1',
            riwayat_pendidikan5 = '$kolomPendidik1',
            nama_pendidikan1 = '$kolomPendidik2',
            nama_pendidikan2 = '$kolomPendidik2',
            nama_pendidikan3 = '$kolomPendidik2',
            nama_pendidikan4 = '$kolomPendidik2',
            nama_pendidikan5 = '$kolomPendidik2'
            WHERE pendidikan.id_pendidikan = $id_pendidikan";
            mysqli_query($conn, $query3);
  }
}
echo mysqli_error($conn);
return mysqli_affected_rows($conn);
$conn->close();
  // mysqli_query($conn, $query);
  // echo mysqli_error($conn);
  // return mysqli_affected_rows($conn);
}

function Search2($keyword)
{
  $conn = koneksi();
  $query = "SELECT * FROM data_diri WHERE Nama like '%$keyword%'";
  $result = mysqli_query($conn, $query);
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  return $rows;
}
