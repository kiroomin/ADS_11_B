-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 03:37 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `nb_wordfrequency`
--

CREATE TABLE `nb_wordfrequency` (
  `word` text NOT NULL,
  `category` text NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nb_wordfrequency`
--

INSERT INTO `nb_wordfrequency` (`word`, `category`, `count`) VALUES
('turut', 'Netral', 1),
('jokowi', 'Netral', 5),
('industri', 'Netral', 5),
('migas', 'Netral', 1),
('paling', 'Netral', 4),
('kenal', 'Netral', 1),
('elite', 'Netral', 1),
('usaha', 'Netral', 1),
('main', 'Netral', 1),
('urus', 'Netral', 1),
('uang', 'Netral', 1),
('hitung', 'Netral', 1),
('juta', 'Netral', 1),
('miliar', 'Netral', 1),
('triliun', 'Netral', 2),
('rupiah', 'Netral', 2),
('ratus', 'Netral', 1),
('tahun', 'Netral', 7),
('pilpres', 'Netral', 1),
('gelar', 'Netral', 1),
('depan', 'Netral', 1),
('namun', 'Netral', 1),
('suhu', 'Netral', 1),
('politik', 'Netral', 6),
('tinggi', 'Netral', 1),
('bahkan', 'Netral', 3),
('kata', 'Netral', 9),
('panas', 'Netral', 1),
('bara', 'Netral', 1),
('radikalisme', 'Netral', 4),
('satu', 'Netral', 6),
('kuasa', 'Netral', 2),
('ujung', 'Netral', 1),
('hancur', 'Netral', 3),
('kalau', 'Netral', 5),
('bangsa', 'Netral', 1),
('lebur', 'Netral', 1),
('suriah', 'Netral', 1),
('jangan', 'Netral', 2),
('pilih', 'Netral', 3),
('pimpin', 'Netral', 1),
('dukung', 'Netral', 1),
('gerombol', 'Netral', 1),
('radikal', 'Netral', 2),
('bukan', 'Netral', 6),
('waktu', 'Netral', 1),
('diam', 'Netral', 2),
('kita', 'Netral', 3),
('masa', 'Netral', 1),
('orba', 'Netral', 1),
('suara', 'Netral', 2),
('tak', 'Netral', 2),
('arti', 'Netral', 1),
('jika', 'Netral', 1),
('memang', 'Netral', 2),
('demokrasi', 'Netral', 6),
('tegak', 'Netral', 1),
('dinegri', 'Netral', 1),
('indonesia', 'Netral', 9),
('jadi', 'Netral', 10),
('negara', 'Netral', 7),
('martabat', 'Netral', 1),
('sikap', 'Netral', 1),
('tepat', 'Netral', 1),
('pakai', 'Netral', 1),
('alas', 'Netral', 1),
('apa', 'Netral', 4),
('golput', 'Netral', 1),
('tindas', 'Netral', 1),
('wah', 'Netral', 1),
('gak', 'Netral', 1),
('bener', 'Netral', 1),
('biasa', 'Netral', 5),
('banjir', 'Netral', 1),
('ini', 'Netral', 4),
('sunatullah', 'Netral', 1),
('air', 'Netral', 2),
('kirim', 'Netral', 1),
('langit', 'Netral', 1),
('turun', 'Netral', 1),
('bumi', 'Netral', 2),
('nanti', 'Netral', 1),
('ilang', 'Netral', 1),
('sendiri', 'Netral', 4),
('masuk', 'Netral', 1),
('nama', 'Netral', 4),
('besar', 'Netral', 3),
('tokoh', 'Netral', 4),
('sering', 'Netral', 2),
('bikin', 'Netral', 4),
('gemetar', 'Netral', 4),
('politikus', 'Netral', 2),
('enggak', 'Netral', 2),
('tahu', 'Netral', 5),
('buka', 'Netral', 2),
('petroleum', 'Netral', 1),
('association', 'Netral', 1),
('ipa', 'Netral', 1),
('convention', 'Netral', 2),
('and', 'Netral', 1),
('exhibition', 'Netral', 1),
('jakarta', 'Netral', 3),
('centre', 'Netral', 1),
('rabu', 'Netral', 1),
('2', 'Netral', 1),
('mei', 'Netral', 1),
('2018', 'Netral', 2),
('hanya', 'Netral', 2),
('orang', 'Netral', 16),
('cerdas', 'Netral', 3),
('kurang', 'Netral', 1),
('waras', 'Netral', 3),
('mau', 'Netral', 2),
('bohong', 'Netral', 1),
('ikut', 'Netral', 1),
('faham', 'Netral', 1),
('diri', 'Netral', 1),
('khilafah', 'Netral', 3),
('mereka', 'Netral', 1),
('tdk', 'Netral', 1),
('aku', 'Netral', 3),
('dasar', 'Netral', 1),
('isis', 'Netral', 1),
('afghanistan', 'Netral', 1),
('bagai', 'Netral', 4),
('semua', 'Netral', 4),
('segi', 'Netral', 1),
('aman', 'Netral', 5),
('ekonomi', 'Netral', 1),
('iptek', 'Netral', 1),
('bangga', 'Netral', 1),
('cita', 'Netral', 2),
('makin', 'Netral', 2),
('maju', 'Netral', 1),
('misal', 'Netral', 1),
('singapore', 'Netral', 1),
('korea', 'Netral', 1),
('selatan', 'Netral', 2),
('jepang', 'Netral', 1),
('mari', 'Netral', 2),
('tanya', 'Netral', 1),
('masing', 'Netral', 2),
('salam', 'Netral', 1),
('ketika', 'Netral', 1),
('anggap', 'Netral', 3),
('potensi', 'Netral', 1),
('racun', 'Netral', 3),
('kalajengking', 'Netral', 4),
('halusinasi', 'Netral', 1),
('teliti', 'Netral', 1),
('maroko', 'Netral', 1),
('cipta', 'Netral', 1),
('alat', 'Netral', 2),
('merah', 'Netral', 2),
('sebut', 'Netral', 2),
('guna', 'Netral', 1),
('ekor', 'Netral', 1),
('harga', 'Netral', 1),
('per', 'Netral', 1),
('gram', 'Netral', 1),
('2017', 'Netral', 1),
('capai', 'Netral', 1),
('8000', 'Netral', 1),
('dolar', 'Netral', 1),
('kami', 'Netral', 1),
('harap', 'Netral', 4),
('generasi', 'Netral', 1),
('sekarang', 'Netral', 5),
('teladan', 'Netral', 1),
('kokoh', 'Netral', 1),
('iman', 'Netral', 1),
('ikhlas', 'Netral', 1),
('hati', 'Netral', 1),
('korban', 'Netral', 2),
('kuat', 'Netral', 2),
('juang', 'Netral', 2),
('sunan', 'Netral', 2),
('ampel', 'Netral', 2),
('hingga', 'Netral', 2),
('era', 'Netral', 1),
('terus', 'Netral', 5),
('beri', 'Netral', 3),
('inspirasi', 'Netral', 1),
('ziarah', 'Netral', 1),
('umat', 'Netral', 1),
('daerah', 'Netral', 1),
('puti', 'Netral', 1),
('saya', 'Netral', 3),
('sumut', 'Netral', 4),
('mental', 'Netral', 1),
('lemah', 'Netral', 1),
('mudah', 'Netral', 1),
('serah', 'Netral', 2),
('gagal', 'Netral', 1),
('cundang', 'Netral', 1),
('juara', 'Netral', 1),
('henti', 'Netral', 1),
('tikai', 'Netral', 2),
('saling', 'Netral', 2),
('sayang', 'Netral', 1),
('gandeng', 'Netral', 1),
('tangan', 'Netral', 1),
('bangun', 'Netral', 2),
('cinta', 'Netral', 1),
('ujar', 'Netral', 2),
('edy', 'Netral', 3),
('masyarakat', 'Netral', 1),
('asih', 'Netral', 1),
('kotak', 'Netral', 2),
('beda', 'Netral', 1),
('suku', 'Netral', 1),
('agama', 'Netral', 4),
('agam', 'Netral', 1),
('budaya', 'Netral', 1),
('adat', 'Netral', 1),
('istiadat', 'Netral', 1),
('', 'Netral', 3),
('selalu', 'Netral', 1),
('pesta', 'Netral', 5),
('dulu', 'Netral', 1),
('banding', 'Netral', 1),
('cenderung', 'Netral', 1),
('akan', 'Netral', 1),
('masalah', 'Netral', 3),
('suatu', 'Netral', 1),
('wajib', 'Netral', 1),
('jalan', 'Netral', 6),
('jk', 'Netral', 2),
('sambut', 'Netral', 1),
('acara', 'Netral', 1),
('apel', 'Netral', 1),
('kasatwil', 'Netral', 1),
('polri', 'Netral', 1),
('auditorium', 'Netral', 1),
('ptik', 'Netral', 1),
('tirtayasa', 'Netral', 1),
('kebayoran', 'Netral', 1),
('baru', 'Netral', 1),
('milik', 'Netral', 1),
('alam', 'Netral', 1),
('panjang', 'Netral', 1),
('salah', 'Netral', 1),
('pilkada', 'Netral', 1),
('serentak', 'Netral', 1),
('beberapa', 'Netral', 1),
('akhir', 'Netral', 1),
('syukur', 'Netral', 2),
('atur', 'Netral', 2),
('baik', 'Netral', 9),
('pihak', 'Netral', 2),
('polisi', 'Netral', 3),
('tni', 'Netral', 2),
('tetapi', 'Netral', 1),
('waspada', 'Netral', 1),
('jaga', 'Netral', 1),
('karena', 'Netral', 1),
('timbul', 'Netral', 1),
('itu', 'Netral', 1),
('lah', 'Netral', 1),
('lembaga', 'Netral', 1),
('nasional', 'Netral', 2),
('institusi', 'Netral', 1),
('lengkap', 'Netral', 1),
('layan', 'Netral', 1),
('mana', 'Netral', 1),
('seluruh', 'Netral', 2),
('ucap', 'Netral', 1),
('ya', 'Netral', 1),
('atas', 'Negatif', 1),
('nama', 'Negatif', 1),
('agama', 'Negatif', 3),
('narasi', 'Negatif', 2),
('provokasi', 'Negatif', 2),
('pilih', 'Negatif', 2),
('kata', 'Negatif', 2),
('sadis', 'Negatif', 1),
('bunuh', 'Negatif', 1),
('bakar', 'Negatif', 2),
('ringan', 'Negatif', 1),
('lontar', 'Negatif', 1),
('libas', 'Negatif', 1),
('semua', 'Negatif', 3),
('tak', 'Negatif', 2),
('jalan', 'Negatif', 2),
('label', 'Negatif', 1),
('stigma', 'Negatif', 1),
('orang', 'Negatif', 12),
('anggap', 'Negatif', 3),
('musuh', 'Negatif', 4),
('politik', 'Negatif', 4),
('demikian', 'Negatif', 1),
('rupa', 'Negatif', 1),
('bangkit', 'Negatif', 1),
('marah', 'Negatif', 1),
('pupuk', 'Negatif', 1),
('benci', 'Negatif', 2),
('radikalisme', 'Negatif', 4),
('kian', 'Negatif', 1),
('tampak', 'Negatif', 1),
('wujud', 'Negatif', 2),
('mereka', 'Negatif', 1),
('jelma', 'Negatif', 1),
('personifikasi', 'Negatif', 1),
('kelompok', 'Negatif', 2),
('masyarakat', 'Negatif', 1),
('tolak', 'Negatif', 1),
('pancasila', 'Negatif', 3),
('dasar', 'Negatif', 1),
('asas', 'Negatif', 1),
('tunggal', 'Negatif', 1),
('hidup', 'Negatif', 2),
('negara', 'Negatif', 4),
('lama', 'Negatif', 2),
('jadi', 'Negatif', 8),
('rekat', 'Negatif', 1),
('satu', 'Negatif', 4),
('bagai', 'Negatif', 2),
('budaya', 'Negatif', 1),
('etnik', 'Negatif', 1),
('bahasa', 'Negatif', 1),
('namun', 'Negatif', 1),
('ganti', 'Negatif', 2),
('khilafah', 'Negatif', 2),
('sentimen', 'Negatif', 1),
('antar', 'Negatif', 1),
('golong', 'Negatif', 2),
('bukan', 'Negatif', 4),
('redam', 'Negatif', 1),
('malah', 'Negatif', 5),
('gosok', 'Negatif', 1),
('tiada', 'Negatif', 2),
('henti', 'Negatif', 1),
('tidak', 'Negatif', 2),
('dunia', 'Negatif', 3),
('maya', 'Negatif', 1),
('rambah', 'Negatif', 1),
('nyata', 'Negatif', 1),
('nurani', 'Negatif', 1),
('empati', 'Negatif', 1),
('kasih', 'Negatif', 1),
('sayang', 'Negatif', 1),
('makin', 'Negatif', 1),
('beringas', 'Negatif', 2),
('radikal', 'Negatif', 1),
('tahu', 'Negatif', 2),
('apa', 'Negatif', 4),
('kalau', 'Negatif', 3),
('negeri', 'Negatif', 2),
('benar', 'Negatif', 3),
('terap', 'Negatif', 2),
('siap', 'Negatif', 3),
('bila', 'Negatif', 3),
('bebas', 'Negatif', 2),
('dapat', 'Negatif', 1),
('hukum', 'Negatif', 7),
('cambuk', 'Negatif', 2),
('bahkan', 'Negatif', 2),
('pancung', 'Negatif', 1),
('seluruh', 'Negatif', 2),
('juri', 'Negatif', 1),
('bagaimana', 'Negatif', 2),
('ibu', 'Negatif', 2),
('bapak', 'Negatif', 1),
('saudara', 'Negatif', 1),
('sendiri', 'Negatif', 4),
('muka', 'Negatif', 1),
('umum', 'Negatif', 1),
('tonton', 'Negatif', 1),
('anda', 'Negatif', 1),
('presiden', 'Negatif', 5),
('tahun', 'Negatif', 2),
('akhir', 'Negatif', 1),
('masa', 'Negatif', 1),
('jabat', 'Negatif', 1),
('terus', 'Negatif', 5),
('kerja', 'Negatif', 2),
('bangun', 'Negatif', 2),
('bangsa', 'Negatif', 1),
('sedang', 'Negatif', 1),
('incar', 'Negatif', 1),
('kuasa', 'Negatif', 2),
('kampanye', 'Negatif', 1),
('intimidasi', 'Negatif', 1),
('lawan', 'Negatif', 2),
('hingga', 'Negatif', 2),
('tunggang', 'Negatif', 1),
('demo', 'Negatif', 1),
('hari', 'Negatif', 1),
('buruh', 'Negatif', 1),
('rahasia', 'Negatif', 1),
('alat', 'Negatif', 1),
('raih', 'Negatif', 1),
('ayat', 'Negatif', 1),
('hilang', 'Negatif', 1),
('konteks', 'Negatif', 1),
('cocok', 'Negatif', 2),
('tindak', 'Negatif', 2),
('keras', 'Negatif', 1),
('luar', 'Negatif', 1),
('batas', 'Negatif', 1),
('manusia', 'Negatif', 1),
('perlahan', 'Negatif', 1),
('pergi', 'Negatif', 1),
('tinggal', 'Negatif', 1),
('drama', 'Negatif', 1),
('cfd', 'Negatif', 1),
('dganti', 'Negatif', 1),
('tema', 'Negatif', 1),
('kaum', 'Negatif', 2),
('dungu', 'Negatif', 1),
('percaya', 'Negatif', 1),
('yg', 'Negatif', 3),
('dindonesia', 'Negatif', 1),
('mungkin', 'Negatif', 1),
('terang', 'Negatif', 1),
('tarang', 'Negatif', 1),
('serang', 'Negatif', 1),
('bukti', 'Negatif', 2),
('ulama', 'Negatif', 1),
('kyai', 'Negatif', 1),
('dserang', 'Negatif', 1),
('dbunuh', 'Negatif', 1),
('siapa', 'Negatif', 1),
('bilang', 'Negatif', 2),
('terorism', 'Negatif', 1),
('islam', 'Negatif', 3),
('sekarang', 'Negatif', 4),
('cara', 'Negatif', 1),
('diadudomba', 'Negatif', 1),
('diprofokatori', 'Negatif', 1),
('lihat', 'Negatif', 2),
('timur', 'Negatif', 2),
('tengah', 'Negatif', 1),
('adu', 'Negatif', 1),
('domba', 'Negatif', 1),
('suni', 'Negatif', 1),
('siah', 'Negatif', 1),
('irak', 'Negatif', 1),
('siriah', 'Negatif', 1),
('teriak', 'Negatif', 2),
('terorisme', 'Negatif', 1),
('ya', 'Negatif', 1),
('teroris', 'Negatif', 3),
('habis', 'Negatif', 1),
('ada', 'Negatif', 1),
('statemen', 'Negatif', 1),
('paska', 'Negatif', 1),
('perang', 'Negatif', 1),
('dingin', 'Negatif', 1),
('amerika', 'Negatif', 2),
('serikat', 'Negatif', 2),
('barat', 'Negatif', 3),
('uni', 'Negatif', 1),
('soviet', 'Negatif', 1),
('menang', 'Negatif', 1),
('pak', 'Negatif', 5),
('ahok', 'Negatif', 9),
('terima', 'Negatif', 1),
('kalah', 'Negatif', 1),
('ketidakadilan', 'Negatif', 1),
('baik', 'Negatif', 4),
('kita', 'Negatif', 1),
('juang', 'Negatif', 1),
('beliau', 'Negatif', 3),
('beri', 'Negatif', 2),
('suara', 'Negatif', 1),
('pimpin', 'Negatif', 1),
('yangg', 'Negatif', 1),
('visi', 'Negatif', 1),
('jokowi', 'Negatif', 3),
('bawa', 'Negatif', 1),
('indonesia', 'Negatif', 3),
('tuju', 'Negatif', 1),
('maju', 'Negatif', 1),
('adil', 'Negatif', 1),
('sosial', 'Negatif', 1),
('rakyat', 'Negatif', 1),
('merdeka', 'Negatif', 1),
('soal', 'Negatif', 2),
('kampret', 'Negatif', 2),
('kecebong', 'Negatif', 1),
('dalam', 'Negatif', 1),
('harap', 'Negatif', 2),
('kadang', 'Negatif', 1),
('kala', 'Negatif', 1),
('perlu', 'Negatif', 1),
('korban', 'Negatif', 2),
('mau', 'Negatif', 1),
('sia', 'Negatif', 2),
('lagi', 'Negatif', 1),
('penjara', 'Negatif', 1),
('depan', 'Negatif', 1),
('panggung', 'Negatif', 1),
('dan', 'Negatif', 3),
('hanya', 'Negatif', 1),
('penting', 'Negatif', 1),
('sahabat', 'Negatif', 1),
('abadi', 'Negatif', 1),
('aku', 'Negatif', 3),
('ga', 'Negatif', 2),
('pernah', 'Negatif', 1),
('lupa', 'Negatif', 2),
('kelam', 'Negatif', 1),
('paksa', 'Negatif', 2),
('jerumus', 'Negatif', 1),
('salah', 'Negatif', 1),
('partai', 'Negatif', 2),
('intervensi', 'Negatif', 2),
('tanggung', 'Negatif', 1),
('pasal', 'Negatif', 1),
('tuduh', 'Negatif', 1),
('pada', 'Negatif', 1),
('tapi', 'Negatif', 1),
('ini', 'Negatif', 2),
('bikin', 'Negatif', 3),
('kagum', 'Negatif', 1),
('bangga', 'Negatif', 1),
('sosok', 'Negatif', 1),
('cina', 'Negatif', 1),
('berangus', 'Negatif', 1),
('isu', 'Negatif', 1),
('sara', 'Negatif', 1),
('gagah', 'Negatif', 1),
('berani', 'Negatif', 1),
('hadap', 'Negatif', 1),
('adalah', 'Negatif', 1),
('naif', 'Negatif', 2),
('proses', 'Negatif', 1),
('imun', 'Negatif', 1),
('rata', 'Negatif', 1),
('buat', 'Negatif', 2),
('jauh', 'Negatif', 1),
('kelas', 'Negatif', 1),
('hewan', 'Negatif', 1),
('wakil', 'Negatif', 1),
('minta', 'Negatif', 1),
('hak', 'Negatif', 1),
('kebal', 'Negatif', 1),
('asumsi', 'Negatif', 1),
('liar', 'Negatif', 1),
('hadir', 'Negatif', 1),
('acara', 'Negatif', 1),
('lalu', 'Negatif', 2),
('sibuk', 'Negatif', 1),
('sakit', 'Negatif', 1),
('hati', 'Negatif', 1),
('martir', 'Negatif', 1),
('halo', 'Negatif', 1),
('sekali', 'Negatif', 1),
('pikir', 'Negatif', 1),
('beda', 'Negatif', 1),
('ahokers', 'Negatif', 1),
('model', 'Negatif', 1),
('begini', 'Negatif', 1),
('kalian', 'Negatif', 2),
('idola', 'Negatif', 1),
('bibib', 'Negatif', 1),
('wowo', 'Negatif', 1),
('baper', 'Negatif', 1),
('kepingin', 'Negatif', 1),
('golput', 'Negatif', 1),
('cinta', 'Negatif', 1),
('nkri', 'Negatif', 2),
('rela', 'Negatif', 1),
('jatuh', 'Negatif', 1),
('tangan', 'Negatif', 1),
('pendekar', 'Negatif', 1),
('watak', 'Negatif', 1),
('jahat', 'Negatif', 1),
('sudah', 'Negatif', 1),
('antara', 'Negatif', 1),
('tokoh', 'Negatif', 1),
('tetap', 'Negatif', 1),
('de', 'Negatif', 3),
('mana', 'Negatif', 1),
('keliling', 'Negatif', 1),
('cipta', 'Negatif', 1),
('situasi', 'Negatif', 1),
('elektabilitas', 'Negatif', 1),
('turun', 'Negatif', 1),
('jangan', 'Negatif', 1),
('biar', 'Negatif', 1),
('jaga', 'Negatif', 1),
('untuk', 'Negatif', 1),
('cegah', 'Negatif', 1),
('gerombol', 'Negatif', 1),
('logo', 'Negatif', 1),
('2019', 'Negatif', 2),
('lebih', 'Negatif', 1),
('perintah', 'Negatif', 1),
('car', 'Negatif', 1),
('free', 'Negatif', 1),
('day', 'Negatif', 1),
('giat', 'Negatif', 1),
('galang', 'Negatif', 1),
('massa', 'Negatif', 1),
('pilpres', 'Negatif', 1),
('usai', 'Negatif', 1),
('sejak', 'Negatif', 1),
('insiden', 'Negatif', 1),
('leceh', 'Negatif', 1),
('belakang', 'Negatif', 1),
('begundal', 'Negatif', 1),
('kaos', 'Negatif', 1),
('sablon', 'Negatif', 1),
('aksi', 'Negatif', 1),
('balas', 'Negatif', 1),
('dukung', 'Negatif', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
