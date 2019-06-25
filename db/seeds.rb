# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def generate_string(n, capitalize)
	vow = "aeiouy"
	con = "bcdfghjklmnpqrstvxzw"
	name = ""
	surname = ""
	(0..(rand(n) + 1)).each do |i|
		name += con.split('').shuffle.join[0] + vow.split('').shuffle.join[0]
	end

	if capitalize == true
		name = name.capitalize
	end

	name
end

def generate_book_title(min, max)
	words = ["społeczne", "bez", "fejsie,", "i", "rolników", "na", "pod", "ostatnie", "zamiast", "tylko", "braku", "na", "i", "jest,", "coraz", "w", "z", "rzecz", "pierwsze", "ważne,", "co", "to,", "to", "problemu", "ją", "utrata", "tuj", "następny", "tu", "przyrody,", "bełkot", "komputer", "publicznych.", "bardziej", "polsce", "czyli", "richard", "siedzieć", "coraz", "oglądać", "babrać", "że", "pożytecznego,", "ludzi", "budowanie", "kariery", "rozrywkowym", "zdaniem,", "są", "z", "sprawy.", "możemy", "choć", "właściwie", "obserwacji", "i", "w", "w", "klas", "kłopotliwy", "będą", "i", "z", "kształtowane", "umiejętności", "i", "napędzany", "skromnym", "uwagę,", "łączce", "książce", "się", "prostej", "przecież", "dwie", "i", "a", "z", "może", "mogą", "kim", "the", "zdolności", "i", "szerszego", "młodsze", "zbadał", "w", "ekologicznym", "będzie", "bezpośrednim", "już", "lęk,", "z", "bloków,", "z", "tj.", "uprzywilejowanych", "coraz", "z", "przypadeczki.", "bajdurzeniem", "jutjubie.", "durne", "wnioskowania.", "starbaksie", "po", "takich", "jak", "jest", "grać", "kolejna", "że", "do", "oswojonych", "to", "samochód", "pocieszać,", "parkingu", "i", "pod", "rozrywkowość,", "na", "montowaniu", "to", "zaburzenia", "się", "adhd,", "refleksji.", "ci", "światem", "nierównościami", "filmiki", "się", "pierwsza", "skalę,", "nie", "w", "rodos", "kontaktu", "na", "samodzielnego", "miałbym", "wsiadasz", "problem.", "zabaw", "w", "podłogą,", "zachodzie", "ameryce,", "i", "na", "miastem,", "wirtualnego", "coś", "niewidzenia", "bo", "bronić", "tam", "prawdziwym", "np.", "takie", "zaangażowania.", "przyrodą:", "ja", "zaraz", "wszędzie", "pisał", "sprawa", "trzecia", "zmiany", "na", "bierze?", "teraz", "te", "wypaczone", "już", "przestrzeni", "kryzysem", "zetknięciu", "będzie", "i", "bardziej", "bodźce,", "skąd", "miast", "na", "czasie", "trzy.", "blokami,", "last", "za", "której", "problem", "nikt", "albo", "wszechobecny", "domy", "towarzyszem,", "monitoringu,", "astma.", "po", "wartość", "tak,", "ładnie", "sprawa,", "nie", "–", "z", "wystarczą.", "a", "samowystarczalność", "zwłaszcza", "zmartwień?", "tektoniczne,", "a", "pierwszy.", "płotem", "twórczością,", "się", "co?", "drugie", "prawie", "w", "rozwoju", "telewizyjny", "koncentracji,", "wielką", "atrakcyjniejsze", "niby", "otyłość,", "zna", "w", "a", "z", "krótkowzroczna", "tym", "wyjątkową", "ew.", "bardziej", "wymagała", "może", "nikt", "na", "nie", "ekranu,", "w", "błocie", "do", "przestrzeni", "rządkiem", "umiastowienie", "biznesmeni.", "to", "fortepianie", "ty.", "oczywiście,", "także", "trawnikiem,", "się", "o", "a", "hm,", "medialnym", "o", "czy", "będzie", "dacze", "jej", "rozwój", "kłopot", "wielkim", "na", "jeśli", "w", "plac", "zza", "w", "zaraz", "świata", "jest", "radość", "spotykasz", "prywatnej", "właśnie", "kilka", "druga", "kamer", "i", "dziecka", "społecznymi.", "życiowej", "ma(m)", "siedzisz", "równiutkim", "znajdujący", "przypadki,", "jak", "i", "podziemnym,", "a", "kwestie,", "z", "dziecko.", "tego", "rosnącymi", "wsi.", "nie", "–", "który", "podgrzewaną", "zerwaniem", "to", "poznawcze.", "serfujesz", "między", "coraz", "nie", "nowych", "przestrzeni", "moim", "większego", "nawet", "tylko", "parking,", "malutkie", "w", "jednak", "louv", "z", "i", "(a", "ma,", "grodzeniu", "wygląda", "swojej", "walka", "na", "in", "robić", "i", "tu", "wygradzaniu", "tylko", "apartamentowce.", "doświadczenia?", "zasadzie", "chłodzie", "którą", "tam", "tym", "wiąże", "się", "nie", "problem,", "i", "lub", "jest", "weźmiemy", "przesunięcia", "woods,", "powodu", "bo", "ma", "się", "się", "bawić", "tam", "rzecz,", "zostali", "odpowiedzi,", "się", "zrozumieć", "wiąże", "to", "osoby,", "siatką", "są", "osobistego", "społecznych.", "child", "w", "to", "zdolnością", "jak", "bawił", "działkach", "i", "od", "wyraz", "polsce,", "ogrodzili", "nauczycielskim", "to", "otoczony", "uczysz", "widzę", "okna.", "i", "szkole,", "wywołane"]
	title = words.sample.capitalize

	(0..100).each do |i|
		title += " " + words.sample
	end

	title += "."
	title_end = rand(min..max) - 1
	title[0..title_end]
end

User.create(name: "admin", password: "00000000", email: "admin@admin.pl", address: "adminowo", phone: "123456789", is_admin: true, super_admin: true)

('a'..'m').each do |l|
	username = generate_string(3, true) + " " + generate_string(3, true)
	password = "00000000"
	email = l*3 + "@" + l*3 + ".pl"
	address = generate_string(5, true)
	phone = rand(10000000..999999999)
	# 
	User.create(name: username, password: password, email: email, address: address, phone: phone)
end

(0..15).each do |i|
	title = generate_book_title(13, 100)
	description = generate_book_title(30, 500)
	author = generate_string(3, true) + " " + generate_string(3, true)
	isbn = rand(1000000000000..9999999999999)
	is_deleted = false
	is_deleted = true if i%8 == 0

	Book.create(title: title, description: description, author: author, isbn: isbn, is_deleted: is_deleted)
end

(0..20).each do |i|
	isbn = rand(1000000000000..9999999999999)
	title = generate_book_title(13, 100)
	description = generate_book_title(30, 500)
	author = generate_string(3, true) + " " + generate_string(3, true)

	Search.create(isbn: isbn, title: title, description: description, author: author)
end
