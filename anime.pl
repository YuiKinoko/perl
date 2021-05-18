while(true) {
	open MOJALISTAANIME, "<anime.txt";
	chomp (@anime = <MOJALISTAANIME>);
	close MOJALISTAANIME;

	print "Jakie anime obejrzalas?\n";
	$anime = <STDIN>;
	chomp $anime;
	while ($anime =~ /^ +$/ or $anime eq ""){
		print "Niepoprawna nazwa. Wpisz ponownie.\n";
		$anime = <STDIN>;
		chomp $anime;
	}
	$znaleziono = 0;
	print "\n";

	foreach (@anime) {
		print "Aktualnie analizuje anime: $_\n";
		
		if ($_ eq "$anime") {
			print "$anime, jest na liscie obejrzanych!\n";
			$znaleziono = 1;
		}
	}

	if($znaleziono eq 0) {
		print "Nowo obejrzane anime to: $anime\n";

		open NEWINANIME, ">>anime.txt"; 
		foreach (@anime){
			print NEWINANIME "$anime\n";
		}
		close NEWINANIME;
	}
	
	print "\n=========";
	print "\n\n";
}

