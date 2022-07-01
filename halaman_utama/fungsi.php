<?php
 class crud extends Database
 {
 	function query($data){
 		$perintah=$this->koneksi->query($data);
 		if(!$perintah) die("Gagal melakukan query :".$this->koneksi->error);
 		return $perintah;
 	}
 	function insertMultiple($nama_keahlian, $keterangan){
 		$sql="INSERT INTO keahlian (nama_keahlian,keterangan) VALUES('$nama_keahlian','$keterangan')";
 		$perintah=$this->query($sql);
 		return $perintah;
 	}
 }

?>