class Book {
  String title;
  String author;
  int pages;
  String publisher;
  String resume;
  double rating;
  String image;

  Book(
      {required this.title,
      required this.author,
      required this.pages,
      required this.publisher,
      required this.resume,
      required this.rating,
      required this.image});
}

var bookList = [
  Book(
      title: 'Laskar Pelangi',
      author: 'Andrea Hirata',
      pages: 529,
      publisher: 'Bentang Pustaka, Yogyakarta',
      resume:
          'Laskar pelangi merupakan novel fiksi yang ditulis oleh Andrea Hirata. Novel tersebut mengisahkan tentang kehidupan 10 anak di Pulau Belitung, Provinsi Bangka Belitung yang saling bersahabat. Orang tua mereka memiliki profesi yang sama, yaitu penambang timah. Meskipun hidup di tengah kemiskinan, namun mereka tetap bersekolah untuk menimba ilmu. \n\nKeadaan sekolah mereka cukup memprihatinkan dan tidak layak huni. Hal ini mendapat teguran dari pemerintah untuk menutup sekolah tersebut karena jumlah muridnya yang sedikit, yaitu hanya 10 orang. Waktu itu, sekolah nyaris ditutup karena pada saat penerimaan peserta didik baru hanya ada 9 orang siswa. Lalu, harun datang sehingga sekolah tidak jadi ditutup. \n\nIbu Muslimah merupakan sosok guru yang penyabar dalam mendidik para siswa. Meskipun beliau hanyalah lulusan SMP, namun beliau memiliki tekad yang kuat untuk mendedikasikan diri di dunia pendidikan.',
      rating: 4.5,
      image:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1489732961i/1362193.jpg'),
  Book(
      title: 'Tentang Kamu',
      author: 'Tere Liye',
      pages: 524,
      publisher: 'Republika Penerbit, Jakarta',
      resume:
          'Tentang Kamu, merupakan novel karya Tere Liye. Novel tersebut menceritakan kisah hidup wanita dari keluarga miskin yang tinggal di Pulau Bungin, Kepulauan Sumbawa, Provinsi Nusa Tenggara Barat. Wanita itu adalah Sri Ningsih. \n\nPerjalanan dimulai dari Zaman yang datang ke tempat Sri Ningsih kecil. Zaman menceritakan masa kecil Sri Ningsih yang tinggal bersama ibu tirinya. Bapaknya melaut tidak pulang-pulang sehingga ibu tirinya menjadi galak dan sering memukuli Sri Ningsih. Suatu hari terjadi kebakaran yang membuat ibu tirinya meninggal. Ia dan adiknya tinggal di pondok pesantren di Surakarta. \n\nSri Ningsih adalah wanita pekerja keras. Ia pernah menjadi pedagang kaki lima, membuka rental mobil hingga membuka pabrik sabun sendiri di Jakarta. Lalu, Ia memutuskan untuk ke London. Perjalanan hidupnya berakhir di Paris. Ia tinggal di panti jompo sebelum meninggal. Ia meninggalkkan surat wasiat yang unik sehingga jejak hidupnya dapat ditelusuri oleh Zaman.',
      rating: 4.5,
      image:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1475659479l/32467509.jpg'),
  Book(
      title: '5 Cm',
      author: 'Dhonny Dhirgantoro',
      pages: 381,
      publisher: 'PT. Grasindo, Yogyakarta',
      resume:
          '5 Cm, merupakan novel yang mengisahkan tentang lima sahabat bernama Zafran, Arial, Ian, Genta dan seorang wanita bernama Riani. Riani bercita-cita bekerja di stasiun televisi. Arial paling tampan diantara lainnya. Zafran mempunyai mimpi menjadi picisan. Genta adalah leader diantara mereka. Ian seorang yang fanatik dengan bola dan merupakan penggemar Happy Salma. \n\nKelima orang tersebut telah bersahabat selama 7 tahun. Mereka merasa jenuh dengan aktivitasnya, lalu memutuskan untuk tidak berkomunikasi selama 3 bulan lalu setelah itu bertemu lagi. Selama 3 bulan, mereka mengejar impian masing-masing. Setelah 3 bulan mereka bertemu dan melakukan perjalanan panjang. \n\nPerjalanan mereka diakhiri di puncak tertinggi di Pulau Jawa, yaitu puncak Mahameru. Kini mereka menemukan arti kehidupan yang sebenarnya. Pada akhirnya mereka dapat mewujudkan impian masing-masing.',
      rating: 3.9,
      image:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1355438074l/16636871.jpg'),
  Book(
      title: 'Sangkuriang',
      author: 'Yuliadi Soekardi',
      pages: 104,
      publisher: 'CV. Putaka Setia',
      resume:
          'Buku ini mengisahkan tentang seorang anak yang mencintai ibunya. Namun, cinta tersebut berwujud cinta antara pria kepada seorang wanita. Cerita ini dimulai dari Sangkuriang yang diusir oleh ibunya yang bernama Dayang Sumbi. Hal ini dikarenakan Sangkuriang membunuh anjing kesayangan Dayang Sumbi yang merupakan jelmaan ayah Sangkuriang. \n\nSuatu hari, Sangkuriang kembali ke desanya dan jatuh cinta dengan Dayang Sumbi yang merupakan ibunya. Namun, keduanya tidak saling mengenal karena Dayang Sumbi begitu cantik. Namun, suatu hari kebenaran terungkap bahwa Sangkuriang adalah anaknya. Kisah cinta ibu dan anak ini menjadi asal mula adanya Gunung Tangkuban Perahu di Jawa Barat.',
      rating: 3.9,
      image:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1231565426l/6075697.jpg'),
  Book(
      title: 'Milea: Suara dari Dilan',
      author: 'Pidi Baiq',
      pages: 360,
      publisher: 'Pastel Books',
      resume:
          'Novel ini merupakan kelanjutan dari dua novel sebelumnya yang berjudul Dilan, Dia Dilanku Tahun 1990 dan Dilan, Dia Dilanku Tahun 1991. Novel Milea ini menjawab keresahan pembaca pada kedua novel Dilan sebelumnya. \n\nSudut pandang novel ini diambil dari Dilan. Ceritanya mengklarifikasi cerita dari Milea. Novel ini menjawab pertanyaan mengapa Dilan berada di kantor polisi, kisah penyebab meninggalnya Akew dan lain-lain. \n\nDilan merupakan teman sekaligus pacar yang baik. Dia juga merupakan murid yang baik. Anak-anak seperti Dilan tidak perlu dihukum, namun perlu dimengerti dan diberi perhatian lebih. Di dalam buku ini juga menceritakan tentang percintaan Dilan dan Milea serta persahabatan, keluarga sampai kisah sedih semua ada di dalam buku ini.',
      rating: 4.1,
      image:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1470475859l/31359829.jpg'),
  Book(
      title: 'Ayah',
      author: 'Andrea Hirata',
      pages: 412,
      publisher: 'Bentang Pustaka, Yogyakarta',
      resume:
          'Novel karya Andrea Hirata ini merupakan trilogi dari novel karya beliau yang berjudul Laskar Pelangi. Latar cerita tersebut di Belitong. Novel ini menceritakan kisah 4 orang sahabat yaitu Sabari, Ukun, Tamat dan Toharun. Di dalam novel ini, Andrea Hirata mencoba mengisahkan kehidupan sehari-hari keempat sahabat tersebut. \n\nTokoh di dalam novel Ayah ini memiliki sifat yang unik seperti pada Laskar Pelangi. Mereka naif dan polos namun juga cerdas. Di dalam novel itu, Sabari mencintai gadis bernama Lena. Namun, gadis itu tidak peduli dengannya. Ia sering menuliskan puisi di mading sekolah dan Lena pun sering membalasnya. \n\nSaat Sabari dewasa, Ia mendengar kabar bahwa Lena hamil di luar nikah. Ia pun rela menikahinya untuk menjaga nama baik keluarga Markoni, tempat Ia bekerja. Setelah anaknya lahir, Ia memberikan nama Zorro. Ia sangat menyayangi anaknya dan selalu memikirkan rencana yang akan dilakukan saat anaknya sudah dewasa. \n\nNamun, Lena tidak ingin tinggal bersama Sabari dan Zorro anaknya. Lalu, Lenna bercerai dan menikah sampai tiga kali. Suatu hari, Zorro diambil oleh Lena. Hal ini menyebabkan Sabari seperti orang gila.',
      rating: 4.3,
      image:
          'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1602300563/smysuqq6ioww9pjnzzgz.jpg'),
  Book(
      title: 'Koala Kumal',
      author: 'Raditya Dika',
      pages: 250,
      publisher: 'Gagas Media',
      resume:
          'Novel remaja berjudul Koala Kumal ini bercerita mengenai pahit manisnya cinta yang dikemas dalam drama cinta komedi. Di dalam novel ini Raditya Dika menceritakan tentang patah hati. \n\nPatah hati adalah sebuah proses menuju kedewasaan. Saat patah hati, janganlah Anda mudah putus asa untuk mengejar cinta. Hal ini dikarenakan untuk mendapatkan suatu impian itu membutuhkan suatu perjuangan. Jadi, apabila Anda sedang memperjuangkan cinta maka Anda harus mampu mempertahankan rasa nyaman satu sama lain.',
      rating: 3.9,
      image:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1417492522i/23645640.jpg'),
];
