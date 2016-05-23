-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 23 Mei 2016 pada 13.21
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_webservice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_daftar`
--

CREATE TABLE IF NOT EXISTS `t_daftar` (
  `Daftar_id` int(11) NOT NULL AUTO_INCREMENT,
  `Daftar_No_Ktp` varchar(50) NOT NULL,
  `Daftar_Nama_Lengkap` varchar(50) NOT NULL,
  `Daftar_Jenis_Kelamin` varchar(20) NOT NULL,
  `Daftar_Tempat_Lahir` varchar(50) NOT NULL,
  `Daftar_Tanggal_Lahir` date NOT NULL,
  `Daftar_Alamat` varchar(50) NOT NULL,
  `Daftar_Id_Paket` int(11) NOT NULL,
  `Daftar_Email` varchar(50) NOT NULL,
  `Daftar_Password` varchar(30) NOT NULL,
  `Daftar_Telepon` varchar(13) NOT NULL,
  `Daftar_Foto` varchar(100) NOT NULL,
  PRIMARY KEY (`Daftar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_paket`
--

CREATE TABLE IF NOT EXISTS `t_paket` (
  `Id_Paket` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_Paket` int(50) NOT NULL,
  `Jenis_Program` varchar(50) NOT NULL,
  `Periode` varchar(50) NOT NULL,
  `Harga` varchar(50) NOT NULL,
  `Hotel` varchar(50) NOT NULL,
  `Keterangan` text NOT NULL,
  PRIMARY KEY (`Id_Paket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transaksi`
--

CREATE TABLE IF NOT EXISTS `t_transaksi` (
  `Transaksi_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Daftar_Id` int(11) NOT NULL,
  `Transaksi_tanggal` date NOT NULL,
  `Transaksi_bukti` varchar(50) NOT NULL,
  `Transaksi_Keterangan` text NOT NULL,
  `Transaksi_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Transaksi_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
