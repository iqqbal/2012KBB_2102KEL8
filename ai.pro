DOMAINS 
  kondisi = cond*
  cond = string
  
FACTS
  nondeterm pertanyaangajah(integer,symbol)
  nondeterm pertanyaanbadak(integer,symbol)
  nondeterm pertanyaankangguru(integer,symbol)
  nondeterm pertanyaanzebra(integer,symbol)
  nondeterm pertanyaanbuaya(integer,symbol)

  nondeterm jawabg(integer,symbol)
  nondeterm jawabb(integer,symbol)
  nondeterm jawabk(integer,symbol)
  nondeterm jawabz(integer,symbol)
  nondeterm jawabu(integer,symbol)

  nama(kondisi)
  false(cond)

PREDICATES
   nondeterm gajah
   nondeterm badak_bercula
   nondeterm kangguru
   nondeterm zebra  
   nondeterm buaya 
   nondeterm menu
   nondeterm maingajah(integer,integer,symbol,symbol,symbol)
   nondeterm mainbadak(integer,integer,symbol,symbol,symbol)
   nondeterm mainkangguru(integer,integer,symbol,symbol,symbol)
   nondeterm mainzebra(integer,integer,symbol,symbol,symbol)
   nondeterm mainbuaya(integer,integer,symbol,symbol,symbol)
   nondeterm datab
   nondeterm hasil(char)
   nondeterm hasill(char)
   nondeterm hasilll(char)
   nondeterm hasillll(char)
   nondeterm hasilllll(char)
   nondeterm pilih(char)
   nondeterm pilihhh(char)
   nondeterm info
   nondeterm masuk
   nondeterm keluar
   nondeterm nim(kondisi)
   aa(char,char)
   bb(char,char)
   cc(char,char)
   dd(char,char)
   ee(char,char)
  

CLAUSES

  nama(["Muhammad Iqbal. 1515015077"]).
  nama(["Muhammad Yahya Akbar 15150151085"]).
  nama(["Aris Munandar 1515015086"]).
  nama(["Rahmat Hidayat 1515015100"]).
  
   info:-
  	write("\n\n\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
  	write("\t==============================  Tahukah Kamu ?  ============================="),nl,
  	write("\t============================  Seputar Dunia Hewan  ==========================="),nl,
  	write("\t                                          -----------------------------------------------------------------"),nl,
  	write("\t=========================== Nama Anggota Kelompok 8 ========================="),nl,
  	write("\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
  	write("\t================================"),nl, 
  	write("\t"),nama(Nama), nim(Nama),
	write("\t================================"),nl,
	write("\t"),fail.
  info.
  	
  	nim([H|T]):-
		not(false(H)),
		write(H),nl,
		nim(T).
		
	nim([H|_]):-
		assertz(false(H)).

  menu:- 
  	datab,
  	write("\n\n\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
  	write("\t==============================  Tahukah Kamu ?  ============================="),nl,
  	write("\t============================  Seputar Dunia Hewan  ==========================="),nl,
  	write("\t                                          -----------------------------------------------------------------"),nl,
  	write("\t============================= Kelompok B 8 2015 ============================="),nl,
  	write("\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
  	write("\t\t[1] Anggota Kelompok"),nl,
  	write("\t\t[2] Ayo MULAI"),nl,
  	write("\t\t[3] Keluar"),nl,nl,
  	write("\t\t<< Pilih Angka 1-3 >>\n"),
  	write("\t\tMasukkan Pilihan: \n\t"),
  
  	readchar(A), pilih(A).

	pilih(A):- 
		A='1',info,menu.
	pilih(A):- 
		A='2',masuk.
	pilih(A):- 
		A='3',keluar.
	pilih(A):-
		A<>'1',A<>'2',A<>'3',write("\n\t\t\t  ** Mohon maaf pilihan yang anda inginkan tidak tersedia **"),nl,
		menu.
  	
  masuk:-
  	write("\n\n\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
  	write("\t==============================  Tahukah Kamu ?  ============================="),nl,
  	write("\t============================  Seputar Dunia Hewan  ==========================="),nl,
  	write("\t                                          -----------------------------------------------------------------"),nl,
  	write("\t================================  Pilih Hewan  ==============================="),nl,
  	write("\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
  	write("\t\t[1] Gajah\n"),
  	write("\t\t[2] Badak Bercula Satu\n"),
  	write("\t\t[3] Kangguru\n"),
  	write("\t\t[4] Zebra\n"),
  	write("\t\t[5] Buaya\n"),
  	write("\t\t[0] Kembali ke menu \n\n"),
  	write("\t\tMasukkan Pilihan: \n\t"),
  	
  	readchar(A), pilihhh(A).

	pilihhh(A):- 
		A='1',gajah.
	pilihhh(A):- 
		A='2',badak_bercula.
	pilihhh(A):- 
		A='3',kangguru.
  	pilihhh(A):- 
		A='4',zebra.
	pilihhh(A):- 
		A='5',buaya.
  	pilihhh(A):-
  		A='0',menu.
  	pilihhh(A):-
		A<>'1',A<>'2',A<>'3',A<>'4',A<>'5',write("\n\t\t\t  ** Mohon maaf pilihan yang anda inginkan tidak tersedia **"),nl,
		masuk.
  		
  datab:-
	consult("kelompok.mtr").


/*******************************************gajah****************************************/ 


  aa(Y,Y):-!.
  aa(_,_):-fail.
  hasil(A):- aa(A,'y'),menu.
  hasil(A):- aa(A,'Y'),menu.
  hasil(_):-masuk.
  
  gajah:-	
	pertanyaangajah(Nomor,Soal),
	write("\n\t",Soal),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabg(Nomor,Kode),
	maingajah(Nomor,0,Soal,Kode,Jawaban).
  gajah.
  
  maingajah(5,Score,_,Jawab,Jawaban):-
  		Jawab<>Jawaban,
  		write("\tSALAH!!! Jawaban yang tepat adalah : ",Jawab),nl,Scores=Score*20,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  maingajah(5,Score,_,Jawab,Jawaban):-
		Jawab=Jawaban,
		Counts=Score+1,
		Scores=Counts*20,
  		write("\tJawaban Anda Tepat "),nl,
  		write("\t\tScore Akhir : ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  maingajah(Nomor,Count,Soal,Kode,Jawab):-
	Kode=Jawab,Counts=Count+1,	
	Score=Counts*20,	
	write("\tJawaban Anda Tepat "),nl,
	write("\t\tScore Sementara: ",Score),nl,nl,
	Nomorr=Nomor+1,
	pertanyaangajah(Nomorr,Soalg),
	write("\n\t",Soalg),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabg(Nomorr,Kodeg),
	maingajah(Nomorr,Counts,Soalg,Kodeg,Jawaban);
	
		Kode<>Jawab,
		Score=Count*20,
		write("\tSALAH!!! Jawaban yang tepat adalah : ",Kode),nl,
		Nomorr=Nomor+1,
		write("\t\tScore Sementara: ",Score),nl,nl,
		pertanyaangajah(Nomorr,Soalg),
		write("\n\t",Soalg),nl,
		write("\tJawab: "),	
		readln(Jawaban),
		jawabg(Nomorr,Kodeg),
		maingajah(Nomorr,Count,Soalg,Kodeg,Jawaban).
		
		
/*******************************************************badak*********************************/  	


  bb(Y,Y):-!.
  bb(_,_):-fail.
  hasill(A):- bb(A,'y'),menu.
  hasill(A):- bb(A,'Y'),menu.
  hasill(_):-masuk.
	
  badak_bercula:-
  	pertanyaanbadak(Nomor,Soal),
	write("\n\t",Soal),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabb(Nomor,Kode),
	mainbadak(Nomor,0,Soal,Kode,Jawaban).
  badak_bercula.
  
  mainbadak(5,Score,_,Jawab,Jawaban):-
  		Jawab<>Jawaban,
  		write("\tSALAH!!! Jawaban yang tepat adalah : ",Jawab),nl,Scores=Score*20,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainbadak(5,Score,_,Jawab,Jawaban):-
		Jawab=Jawaban,
		Counts=Score+1,
		Scores=Counts*20,
  		write("\tJawaban Anda Tepat "),nl,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainbadak(Nomor,Count,Soal,Kode,Jawab):-
	Kode=Jawab,Counts=Count+1,	
	Score=Counts*20,	
	write("\tJawaban Anda Tepat "),nl,
	write("\t\tScore Sementara: ",Score),nl,nl,
	Nomorr=Nomor+1,
	pertanyaanbadak(Nomorr,Soalg),
	write("\n\t",Soalg),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabb(Nomorr,Kodeg),
	mainbadak(Nomorr,Counts,Soalg,Kodeg,Jawaban);
	
		Kode<>Jawab,
		Score=Count*20,
		write("\tSALAH!!! Jawaban yang tepat adalah : ",Kode),nl,
		Nomorr=Nomor+1,
		write("\t\tScore Sementara: ",Score),nl,nl,
		pertanyaanbadak(Nomorr,Soalg),
		write("\n\t",Soalg),nl,
		write("\tJawab: "),
		readln(Jawaban),
		jawabb(Nomorr,Kodeg),
		mainbadak(Nomorr,Count,Soalg,Kodeg,Jawaban). 
			
		
/******************************************kangguru**************************************/  


  cc(Y,Y):-!.
  cc(_,_):-fail.
  hasilll(A):- aa(A,'y'),menu.
  hasilll(A):- aa(A,'Y'),menu.
  hasilll(_):-masuk.		
		
  kangguru:-
  	pertanyaankangguru(Nomor,Soal),
	write("\n\t",Soal),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabk(Nomor,Kode),
	mainkangguru(Nomor,0,Soal,Kode,Jawaban).
  kangguru.
  
  mainkangguru(5,Score,_,Jawab,Jawaban):-
  		Jawab<>Jawaban,
  		write("\tSALAH!!! Jawaban yang tepat adalah : ",Jawab),nl,Scores=Score*20,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainkangguru(5,Score,_,Jawab,Jawaban):-
		Jawab=Jawaban,
		Counts=Score+1,
		Scores=Counts*20,
  		write("\tJawaban Anda Tepat "),nl,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainkangguru(Nomor,Count,Soal,Kode,Jawab):-
	Kode=Jawab,Counts=Count+1,	
	Score=Counts*20,	
	write("\tJawaban Anda Tepat "),nl,
	write("\t\tScore Sementara: ",Score),nl,nl,
	Nomorr=Nomor+1,
	pertanyaankangguru(Nomorr,Soalg),
	write("\n\t",Soalg),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabk(Nomorr,Kodeg),
	mainkangguru(Nomorr,Counts,Soalg,Kodeg,Jawaban);
	
		Kode<>Jawab,
		Score=Count*20,
		write("\tSALAH!!! Jawaban yang tepat adalah : ",Kode),nl,
		Nomorr=Nomor+1,
		write("\t\tScore Sementara: ",Score),nl,nl,
		pertanyaankangguru(Nomorr,Soalg),
		write("\n\t",Soalg),nl,
		write("\tJawab: "),
		readln(Jawaban),
		jawabk(Nomorr,Kodeg),
		mainkangguru(Nomorr,Count,Soalg,Kodeg,Jawaban). 	


/***********************************************zebra****************************************/  			


  dd(Y,Y):-!.
  dd(_,_):-fail.
  hasillll(A):- dd(A,'y'),menu.
  hasillll(A):- dd(A,'Y'),menu.
  hasillll(_):-masuk.
  
  zebra:-
  	pertanyaanzebra(Nomor,Soal),
	write("\n\t",Soal),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabz(Nomor,Kode),
	mainzebra(Nomor,0,Soal,Kode,Jawaban).
  zebra.
  
  mainzebra(5,Score,_,Jawab,Jawaban):-
  		Jawab<>Jawaban,
  		write("\tSALAH!!! Jawaban yang tepat adalah : ",Jawab),nl,Scores=Score*20,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainzebra(5,Score,_,Jawab,Jawaban):-
		Jawab=Jawaban,
		Counts=Score+1,
		Scores=Counts*20,
  		write("\tJawaban Anda Tepat "),nl,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainzebra(Nomor,Count,Soal,Kode,Jawab):-
	Kode=Jawab,Counts=Count+1,	
	Score=Counts*20,	
	write("\tJawaban Anda Tepat "),nl,
	write("\t\tScore Sementara: ",Score),nl,nl,
	Nomorr=Nomor+1,
	pertanyaanzebra(Nomorr,Soalg),
	write("\n\t",Soalg),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabz(Nomorr,Kodeg),
	mainzebra(Nomorr,Counts,Soalg,Kodeg,Jawaban);
	
		Kode<>Jawab,
		Score=Count*20,
		write("\tSALAH!!! Jawaban yang tepat adalah : ",Kode),nl,
		Nomorr=Nomor+1,
		write("\t\tScore Sementara: ",Score),nl,nl,
		pertanyaanzebra(Nomorr,Soalg),
		write("\n\t",Soalg),nl,
		write("\tJawab: "),	
		readln(Jawaban),
		jawabz(Nomorr,Kodeg),
		mainzebra(Nomorr,Count,Soalg,Kodeg,Jawaban).
		
		
/***************************************************buaya************************************/  					


  ee(Y,Y):-!.
  ee(_,_):-fail.
  hasilllll(A):- ee(A,'y'),menu.
  hasilllll(A):- ee(A,'Y'),menu.
  hasilllll(_):-masuk.
  
  buaya:-
  	pertanyaanbuaya(Nomor,Soal),
	write("\n\t",Soal),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabu(Nomor,Kode),
	mainbuaya(Nomor,0,Soal,Kode,Jawaban).
  buaya.
  
  mainbuaya(5,Score,_,Jawab,Jawaban):-
  		Jawab<>Jawaban,
  		write("\tSALAH!!! Jawaban yang tepat adalah : ",Jawab),nl,Scores=Score*20,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainbuaya(5,Score,_,Jawab,Jawaban):-
		Jawab=Jawaban,
		Counts=Score+1,
		Scores=Counts*20,
  		write("\tJawaban Anda Tepat "),nl,
  		write("\t\tScore Akhir: ",Scores),nl,nl,
		write("\tKembali Ke Menu << tekan y >> ?[y/n]"),nl,
		readchar(X),hasil(X).
		
  mainbuaya(Nomor,Count,Soal,Kode,Jawab):-
	Kode=Jawab,Counts=Count+1,	
	Score=Counts*20,	
	write("\tJawaban Anda Tepat "),nl,
	write("\t\tScore Sementara: ",Score),nl,nl,
	Nomorr=Nomor+1,
	pertanyaanbuaya(Nomorr,Soalg),
	write("\n\t",Soalg),nl,
	write("\tJawab: "),
	readln(Jawaban),
	jawabu(Nomorr,Kodeg),
	mainbuaya(Nomorr,Counts,Soalg,Kodeg,Jawaban);
	
		Kode<>Jawab,
		Score=Count*20,
		write("\tSALAH!!! Jawaban yang tepat adalah : ",Kode),nl,
		Nomorr=Nomor+1,
		write("\t\tScore Sementara: ",Score),nl,nl,
		pertanyaanbuaya(Nomorr,Soalg),
		write("\n\t",Soalg),nl,
		write("\tJawab: "),	
		readln(Jawaban),
		jawabu(Nomorr,Kodeg),
		mainbuaya(Nomorr,Count,Soalg,Kodeg,Jawaban).
  
  keluar:-
  	write("\n\n\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
  	write("\t===============================  Terima Kasih  ==============================="),nl,
  	write("\t                                          -----------------------------------------------------------------"),nl,
  	write("\t============================ Semoga Bermanfaat ============================="),nl,
  	write("\t------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl.
  	  	
GOAL
  menu.