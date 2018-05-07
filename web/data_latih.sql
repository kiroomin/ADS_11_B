-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 03:38 PM
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
-- Table structure for table `data_latih`
--

CREATE TABLE `data_latih` (
  `data` text NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_latih`
--

INSERT INTO `data_latih` (`data`, `kategori`) VALUES
('Menurut Jokowi industri migas adalah industri yang paling terkenal dan paling elite Pengusaha yang bermain di industri ini tidak lagi berurusan dengan uang dalam hitungan jutaan miliaran atau triliunan rupiah melainkan ratusan triliun rupiah setiap tahun', 'Netral'),
('Pilpres akan digelar tahun depan Namun suhu politik sudah tinggi bahkan bisa dikatakan panas membara', 'Netral'),
('Radikalisme ketika bersatu dengan kekuasaan hanya akan berujung kehancuran Kalau tidak ingin bangsa kita hancur lebur seperti Suriah jangan pilih pemimpin yang didukung oleh gerombolan radikalis', 'Netral'),
('Bukan waktunya diam Kita bukan lagi dimasa orba dimana suara kita tak berarti Jika kita memang ingin demokrasi ditegakkan dinegri ini dan kita memang ingin Indonesia jadi negara bermartabat mari bersikap dengan tepat Jangan pakai alasan apapun untuk golput Bersuaralah dari pada hanya diam ditindas', 'Netral'),
('Wah kalau menurut Gak bener ini hal biasa bukan banjir Ini hanya sunatullah air dikirim dari langit turun ke bumi Nanti airnya juga ilang sendiri masuk ke dalam bumi', 'Netral'),
('Inilah industri dengan nama nama besar  dengan tokoh tokohnya yang sering membikin gemetar para politikus Enggak tahu kenapa mereka gemetar tapi untuk saya ya biasa biasa saja kata Jokowi saat membuka Indonesia Petroleum Association IPA Convention and Exhibition di Jakarta Convention Centre Jakarta Rabu 2 Mei 2018', 'Netral'),
('Hanya Orang orang tidak cerdas dan kurang waras yang mau dibohongi dan mengikuti faham radikal untuk mendirikan negara khilafah di Indonesia Mereka tdk tahu tidak mau tahu kalau negara yang mengaku berdasarkan khilafah ISIS Afghanistan dan sebagainya semuanya hancur dari segi keamanan ekonomi dan IPTEK tidak ada yang bisa dibanggakan Orang cerdas dan waras tentu bercita cita menjadikan negaranya semakin maju misalnya seperti Singapore Korea Selatan Jepang dan sebagainya Mari kita tanyakan kecerdasan dan kewarasan kita masing masing Salam', 'Netral'),
('Ketika orang Indonesia masih menganggap potensi racun kalajengking sebagai halusinasi peneliti Maroko sudah menciptakan alat pemerah kalajengking Alat tersebut digunakan untuk memerah racun dari ekor kalajengking Harga per satu gram racun kalajengking di tahun 2017 mencapai 8000 dolar', 'Netral'),
('Kami berharap para generasi sekarang dapat meneladani kokohnya keimanan keikhlasan hati pengorbanan dan kuatnya perjuangan Sunan Ampel Hingga era sekarang Sunan Ampel terus memberikan inspirasi dan diziarahi umat dari berbagai daerah kata Puti', 'Netral'),
('Saya ingin Sumut ini tidak ada orang yang bermental lemah dan mudah menyerah Hanya ada dua pilihan menyerah gagal seperti pecundang atau berjuang seperti para juara Marilah kita hentikan pertikaian pertikaian yang ada dan saling menyayangi bergandengan tangan untuk membangun Sumut yang kita cintai ini ujar Edy', 'Netral'),
('Edy berharap bahwa masyarakat Sumut saling mengasihi dan tidak terkotak kotak hanya karena perbedaan suku dan agama Bahkan seharusnya dengan keberagaman budaya adat istiadat dan agama menurut Edy seharusnya menjadikan Sumut semakin kuat?', 'Netral'),
('Saya juga selalu mengatakan pesta demokrasi seperti dulu dibanding tahun politik Tahun politik cenderung seakan akan ada masalah Pesta demokrasi adalah suatu kewajiban yang berjalan ujar JK saat memberi sambutan di acara Apel Kasatwil Polri 2018 di Auditorium PTIK Jalan Tirtayasa Kebayoran Baru Jakarta Selatan JK mengatakan Indonesia sudah memiliki pengalaman yang panjang dalam pengamanan pesta demokrasi Salah satunya pengamanan Pilkada serentak yang sudah berjalan dalam beberapa tahun terakhir', 'Netral'),
('Kita bersyukur karena aturan yang baik dan pengamanan yang baik dari pihak kepolisian dan TNI sehingga pesta demokrasi berjalan dengan baik katanya Kita bersyukur karena aturan yang baik dan pengamanan yang baik dari pihak kepolisian dan TNI sehingga pesta demokrasi berjalan dengan baik katanya', 'Netral'),
('Tetapi tentu kita waspada dan tentu harus dijaga Karena tanpa hal tersebut maka juga akan menimbulkan masalah masalah yang besar Itu lah harapan kita semua karena lembaga nasional atau institusi nasional yang paling lengkap dan paling melayani di mana pun di seluruh Indonesia hanya polisi ucapnya?', 'Netral'),
('Inilah industri dengan nama nama besar dengan tokoh tokohnya yang sering membikin gemetar para politikus Enggak tahu kenapa mereka gemetar tapi untuk saya?ya biasa biasa saja kata Jokowi saat membuka Indonesia', 'Netral'),
('Atas nama agama narasi narasi provokasi dengan pilihan kata yang sadis seperti Bunuh Bakar begitu ringan terlontar Melibas semua yang tak sejalan Melabeli dan menstigma orang yang dianggap sebagai musuh politik sedemikian rupa untuk membangkitkan kemarahan dan memupuk kebencian', 'Negatif'),
('Radikalisme kian menampakkan wujudnya Mereka ada di sekitar kita menjelma dalam personifikasi dan juga kelompok masyarakat yang menolak Pancasila sebagai dasar dan asas tunggal kehidupan bernegara Pancasila selama ini menjadi perekat kehidupan kita Pancasila menyatukan berbagai agama budaya etnik dan bahasa Namun mereka ingin menggantinya dengan khilafah', 'Negatif'),
('Sentimen antar golongan bukan diredam malah digosok tiada hentinya Tidak hanya di dunia maya namun telah merambah dunia nyata Nurani empati dan kasih sayang terbakar oleh kebencian Orang orang pun menjadi makin beringas dan radikal', 'Negatif'),
('Orang orang diprovokasi tanpa mengetahui apa jadinya kalau negeri ini benar benar menerapkan khilafah Siapkah orang orang bila tak ada lagi kebebasan berpendapat Siapkah hukum cambuk bahkan pancung diterapkan di seluruh penjuri negeri ini Bagaimana bila ibu kita bapak kita saudara kita atau kita sendiri yang dihukum cambuk di muka umum dan dijadikan tontonan Anda siap', 'Negatif'),
('Presiden di tahun terakhir masa jabatan masih terus bekerja membangun bangsa Sedangkan kelompok yang mengincar kekuasaan sudah berkampanye mengintimidasi yang dianggap berlawanan hingga menunggangi demo di Hari Buruh', 'Negatif'),
('Bukan rahasia lagi agama telah dijadikan sebagai alat untuk meraih kekuasaan Ayat dipilih dihilangkan konteksnya dan dicocok cocokkan untuk membenarkan berbagai tindakan kekerasan bahkan yang di luar batas kemanusiaan', 'Negatif'),
('Perlahan mereka pergi meninggalkan drama cfd dganti dengan tema Radikalisme Kaum dungu pun percaya akan Radikalisme yg ada dindonesia Kalau pun ada kaum radikalisme mungkin mereka akan terang tarangan menyerang Bukti tidak Malah ulama kyai kita yg dserang dbunuh', 'Negatif'),
('Siapa bilang ada terorism sebab orang islam sekarang ini malah dimusuhi dengan cara diadudomba dan diprofokatori lihat timur tengah sekarang adu domba antara suni siah di irak di siriah maka kalau ada yang teriak teriak terorisme Ya dia sendiri yang teroris akan menghabisi orang islam Ada statemen paska perang dingin antara Amerika Serikat BARAT melawan Uni soviet TIMUR yang dimenangkan Amerika Serikat Barat maka sekarang musuh BARAT didunia ini adalah ISLAM', 'Negatif'),
('bagi saya Pak Ahok menerima hukumannya untuk mengalahkan ketidakadilan dan untuk kebaikan negara kita jadi sekarang kitalah yang harus meneruskan perjuangan beliau yaitu dengan memberikan suara kita untuk pemimpin yangg sevisi dengan beliau yaitu pak Jokowi untuk dapat terus membawa Indonesia menuju kemajuan dalam keadilan sosial bagi seluruh rakyat Indonesia MERDEKA', 'Negatif'),
('indonesia bukan soal Ahok atau Jokowi Bukan soal kampret atau kecebong Dalam mewujudkan satu harapan kadang kala perlu pengorbanan Terus apa kita mau sia siakan pengorbanan Ahok Lagian Ahok tidak selamanya dalam penjara Tahun depan dia akan bebas dan bisa jadi kembali lagi kepanggung politik Dan seperti kita tahu politik itu yang ada hanyalah kepentingan Tidak ada sahabat dan musuh abadi ', 'Negatif'),
('Aku sendiri juga ga akan pernah lupa bagaimana kelamnya ketika Ahok dengan paksa dijerumuskan bersalah Dan tidak ada satu orang pun atau partai atau golongan yang bisa intervensi Ahok terpaksa harus menanggung pasal yang dituduhkan padanya Tapi inilah yang bikin aku kagum Ini yang bikin aku bangga Ahok sosok yang dicinakan diberangus dengan isu sara malah dengan gagah berani menghadapi semuanya', 'Negatif'),
('Adalah naif jika kita berharap presiden akan intervensi Negara kita negara hukum Dan dengan diprosesnya ahok maka membuktikan ga ada itu yg imun hukum Hukum rata buat semua Jauh kelas dengan hewan yang katanya wakil kita malah minta diberi hak kebal hukum', 'Negatif'),
('Berasumsi liar tentang kehadiran presiden diacara dua satu dua lalu melihat presiden terus sibuk bekerja hingga saat ini lalu kita sakit hati dan beranggapan ahok martir dan dilupakan Halo Naif sekali pikiran seperti itu Apa bedanya ahokers model begini dengan mereka yang kalian kampreti yang kalian bilang mengidolakan bibib dan wowo', 'Negatif'),
('bikin baper kepingin golput tapi saya masih cinta NKRI dan tidak rela apa bila jatuh ke tangan pendekar berwatak jahat tapi sudahlah diantara tokoh politik tetap pak de masih terbaik bagi saya tapi kemanakah orang orang baik disekeliling pak de kenapa seperti ada tercipta situasi yang bisa membuat elektabilitas beliau turun Jangan biarkan pak de berjalan sendirian membangun dan menjaga NKRI ini ', 'Negatif'),
('Untuk mencegah gerombolan teroris berlogo 2019 ganti presiden bertindak lebih beringas ada baiknya pemerintah meniadakan Car Free Day dan kegiatan penggalangan massa sampai pilpres 2019 usai Sejak insiden ibu dilecehkan para teroris itu dan dibelakangnya ada begundal Partai Kaos Sablon aksi balasan dari pendukung Jokowi bisa saja terjadi', 'Negatif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
