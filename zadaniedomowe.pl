open METAFORY, "<lista_metafor4.txt";
chomp (@metafory = <METAFORY>);
close METAFORY;

open RESULTS, ">zadaniedomowe.txt";
foreach (@metafory) {
	@tekst = split(/\t/, $_); # Dzieli napis na części oddzielone tabem

	if ($tekst[2]) { # Wyciąga 2-gi element listy
		print RESULTS "$tekst[2]\n";
	}
}
close RESULTS;

system 'C:\MeCab\bin\mecab < D:\Dokumenty\perl\zadaniedomowe.txt > zadaniedomowe_mecab.txt';
