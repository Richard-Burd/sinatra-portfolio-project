Author.create(name: "Rashi", subjects: "Biblical & Talmudic Commentaries", birth_date: 1040, death_date: 1105, user_id: 1)
Location.create(city: "Troyes", region: "Champagne", polity: "Holy Roman Empire", today_part_of: "France")
AuthorLocation.create(author_id: 1, location_id: 1)

Author.create(name: "Rambam", subjects: "Halakah & Medieval Philosophy", birth_date: 1135, death_date: 1204, user_id: 1)
Location.create(city: "Cordoba", region: "Andalusia", polity: "Almoravid Empire", today_part_of: "Spain")
Location.create(city: "Fustat", polity: "Ayyubid Sultanate", today_part_of: "Egypt")
AuthorLocation.create(author_id: 2, location_id: 2)
AuthorLocation.create(author_id: 2, location_id: 3)

Author.create(name: "Ovadia of Bartenura", subjects: "Mishnaic Commentary", birth_date: 1445, death_date: 1515)
Location.create(city: "Bertinoro", polity: "Papal States", today_part_of: "Itlay")
Location.create(city: "Jerusalem", region: "Syria-Palestine", polity: "Ottoman Empire", today_part_of: "Israel")
AuthorLocation.create(author_id: 3, location_id: 4)
AuthorLocation.create(author_id: 3, location_id: 5)

Author.create(name: "Thomas Aquinas", subjects: "Scholasticism & Medieval Realism", birth_date: 1225, death_date: 1274)
Location.create(city: "Roccasecca", region: "Lazio", polity: "Kingdom of Sicily", today_part_of: "Itlay")
Location.create(city: "Fossanova", region: "Latina", polity: "Papal States", today_part_of: "Itlay")
AuthorLocation.create(author_id: 4, location_id: 6)
AuthorLocation.create(author_id: 4, location_id: 7)

Author.create(name: "Origen of Alexandria", subjects: "Biblical Exegesis & Hermeneutics", birth_date: 184, death_date: 253)
Location.create(city: "Alexandria", polity: "Aegyptus (provincia Romana)", today_part_of: "Egypt")
AuthorLocation.create(author_id: 5, location_id: 8)

Author.create(name: "Aristotle", subjects: "Biology, Physics, Rhetoric, Politics, & Logic", birth_date: -384, death_date: -322)
Location.create(city: "Stagira", region: "Chalkidiki", polity: "Chalcidian League", today_part_of: "Greece")
AuthorLocation.create(author_id: 6, location_id: 9)

Author.create(name: "At-Tabari", subjects: "Qur'anic Commentary", birth_date: 839, death_date: 923, user_id: 2)
Location.create(city: "Amol", region: "Tabaristan", polity: "Abbasid Caliphate", today_part_of: "Iran")
Location.create(city: "Baghdad", polity: "Abbasid Caliphate", today_part_of: "Iraq")
AuthorLocation.create(author_id: 7, location_id: 10)
AuthorLocation.create(author_id: 7, location_id: 11)

Author.create(name: "Jalal Ad-Din Rumi", subjects: "Sufic Poetry & Hanafi Fiqh", birth_date: 1207, death_date: 1273, user_id: 2)
Location.create(city: "Balkh", polity: "Khwarazmian Empire", today_part_of: "Afghanistan")
Location.create(city: "Konya", region: "Central Anatolia", polity: "Sultanate of Rum", today_part_of: "Turkey")
AuthorLocation.create(author_id: 8, location_id: 12)
AuthorLocation.create(author_id: 8, location_id: 13)


Author.create(name: "Unknown", birth_date: 1, death_date: 350)
Location.create(region: "Palestine", polity: "Roman Empire", today_part_of: "Israel")
AuthorLocation.create(author_id: 9, location_id: 14)

Author.create(name: "Unknown", birth_date: 400, death_date: 600)
Location.create(region: "Palestine", polity: "Byzantine Empire", today_part_of: "Israel")
AuthorLocation.create(author_id: 10, location_id: 15)

Author.create(name: "Unknown", birth_date: -100, death_date: 100)
AuthorLocation.create(author_id: 11, location_id: 14)

Author.create(name: "Erasmus Roterodamus", subjects: "Humanities, Classics, Greek Language, & Renaissance philosophy ", birth_date: 1466, death_date: 1536, user_id: 1)
Location.create(city: "Gouda", region: "Low Countries", polity: "Burgundian Netherlands", today_part_of: "Europe")
AuthorLocation.create(author_id: 12, location_id: 16)

Author.create(name: "Baruch Spinoza", subjects: "Groundwork for the 18th-century Enlightenment, biblical criticism & including conceptions of the self and the universe", birth_date: 1632, death_date: 1677, user_id: 1)
Location.create(city: "Amsterdam", region: "Low Countries", polity: "Dutch Republic", today_part_of: "Holland")
AuthorLocation.create(author_id: 13, location_id: 17)
Location.create(city: "The Hague", region: "Low Countries", polity: "Dutch Republic", today_part_of: "Holland")
AuthorLocation.create(author_id: 13, location_id: 18)

Author.create(name: "Rene Descartes", subjects: "Metaphysics, epistemology, mathematics, physics, cosmology", birth_date: 1596, death_date: 1650, user_id: 1)
Location.create(city: "Amsterdam", region: "Centre-Val de Loire", polity: "Dutch Republic", today_part_of: "Holland")
AuthorLocation.create(author_id: 14, location_id: 19)
Location.create(city: "Stockholm", region: "Södermanland", polity: "Swedish Empire", today_part_of: "Sweden")
AuthorLocation.create(author_id: 14, location_id: 20)

# /////////////////////////////

Genre.create(name: "Greek Classics")
Genre.create(name: "Logic")
Genre.create(name: "Philosophy")
Genre.create(name: "Rhetoric")
Genre.create(name: "Jewish")
Genre.create(name: "Christian")
Genre.create(name: "Islam")
Genre.create(name: "Rabbinic Literature")
Genre.create(name: "Church Fathers")
Genre.create(name: "Sufism")
Genre.create(name: "Tafsir & Fiqh")
Genre.create(name: "Exegesis")
Genre.create(name: "Apologetics")
Genre.create(name: "Mysticism")
Genre.create(name: "Text Translations")
Genre.create(name: "Comedy")
Genre.create(name: "Linguistics & Grammar")
Genre.create(name: "Politics")

BookGenre.create(book_id: 1, genre_id: 7)
BookGenre.create(book_id: 1, genre_id: 10)
BookGenre.create(book_id: 1, genre_id: 14)

BookGenre.create(book_id: 2, genre_id: 7)
BookGenre.create(book_id: 2, genre_id: 10)
BookGenre.create(book_id: 2, genre_id: 14)

BookGenre.create(book_id: 3, genre_id: 7)
BookGenre.create(book_id: 3, genre_id: 10)
BookGenre.create(book_id: 3, genre_id: 11)
BookGenre.create(book_id: 3, genre_id: 14)

BookGenre.create(book_id: 4, genre_id: 7)
BookGenre.create(book_id: 4, genre_id: 11)
BookGenre.create(book_id: 4, genre_id: 12)

BookGenre.create(book_id: 5, genre_id: 1)
BookGenre.create(book_id: 5, genre_id: 2)
BookGenre.create(book_id: 5, genre_id: 3)

BookGenre.create(book_id: 6, genre_id: 1)
BookGenre.create(book_id: 6, genre_id: 2)
BookGenre.create(book_id: 6, genre_id: 3)
BookGenre.create(book_id: 6, genre_id: 4)

BookGenre.create(book_id: 7, genre_id: 1)
BookGenre.create(book_id: 7, genre_id: 2)
BookGenre.create(book_id: 7, genre_id: 3)

BookGenre.create(book_id: 8, genre_id: 1)
BookGenre.create(book_id: 8, genre_id: 2)
BookGenre.create(book_id: 8, genre_id: 3)
BookGenre.create(book_id: 8, genre_id: 4)

BookGenre.create(book_id: 9, genre_id: 6)
BookGenre.create(book_id: 9, genre_id: 9)
BookGenre.create(book_id: 9, genre_id: 15)

BookGenre.create(book_id: 10, genre_id: 3)
BookGenre.create(book_id: 10, genre_id: 6)
BookGenre.create(book_id: 10, genre_id: 9)

BookGenre.create(book_id: 11, genre_id: 6)
BookGenre.create(book_id: 11, genre_id: 9)
BookGenre.create(book_id: 11, genre_id: 13)

BookGenre.create(book_id: 12, genre_id: 3)
BookGenre.create(book_id: 12, genre_id: 6)
BookGenre.create(book_id: 12, genre_id: 9)
BookGenre.create(book_id: 12, genre_id: 13)

BookGenre.create(book_id: 13, genre_id: 3)
BookGenre.create(book_id: 13, genre_id: 6)
BookGenre.create(book_id: 13, genre_id: 9)
BookGenre.create(book_id: 13, genre_id: 13)

BookGenre.create(book_id: 14, genre_id: 3)
BookGenre.create(book_id: 14, genre_id: 6)
BookGenre.create(book_id: 14, genre_id: 9)

BookGenre.create(book_id: 15, genre_id: 3)
BookGenre.create(book_id: 15, genre_id: 6)
BookGenre.create(book_id: 15, genre_id: 9)

BookGenre.create(book_id: 16, genre_id: 5)
BookGenre.create(book_id: 16, genre_id: 8)
BookGenre.create(book_id: 16, genre_id: 12)

BookGenre.create(book_id: 17, genre_id: 3)
BookGenre.create(book_id: 17, genre_id: 5)
BookGenre.create(book_id: 17, genre_id: 8)

BookGenre.create(book_id: 18, genre_id: 2)
BookGenre.create(book_id: 18, genre_id: 3)
BookGenre.create(book_id: 18, genre_id: 4)
BookGenre.create(book_id: 18, genre_id: 5)
BookGenre.create(book_id: 18, genre_id: 8)
BookGenre.create(book_id: 18, genre_id: 14)

BookGenre.create(book_id: 19, genre_id: 5)
BookGenre.create(book_id: 19, genre_id: 8)
BookGenre.create(book_id: 19, genre_id: 14)

BookGenre.create(book_id: 20, genre_id: 5)
BookGenre.create(book_id: 20, genre_id: 8)
BookGenre.create(book_id: 20, genre_id: 13)

BookGenre.create(book_id: 21, genre_id: 5)
BookGenre.create(book_id: 21, genre_id: 8)
BookGenre.create(book_id: 21, genre_id: 12)

BookGenre.create(book_id: 22, genre_id: 2)
BookGenre.create(book_id: 22, genre_id: 5)
BookGenre.create(book_id: 22, genre_id: 8)
BookGenre.create(book_id: 22, genre_id: 12)

BookGenre.create(book_id: 23, genre_id: 5)
BookGenre.create(book_id: 23, genre_id: 8)
BookGenre.create(book_id: 23, genre_id: 14)

BookGenre.create(book_id: 24, genre_id: 5)
BookGenre.create(book_id: 24, genre_id: 8)
BookGenre.create(book_id: 24, genre_id: 12)
BookGenre.create(book_id: 24, genre_id: 14)

BookGenre.create(book_id: 25, genre_id: 5)
BookGenre.create(book_id: 25, genre_id: 8)
BookGenre.create(book_id: 25, genre_id: 12)

BookGenre.create(book_id: 26, genre_id: 5)
BookGenre.create(book_id: 26, genre_id: 8)
BookGenre.create(book_id: 26, genre_id: 15)

BookGenre.create(book_id: 27, genre_id: 16)

BookGenre.create(book_id: 28, genre_id: 16)

BookGenre.create(book_id: 29, genre_id: 3)
BookGenre.create(book_id: 29, genre_id: 2)

BookGenre.create(book_id: 30, genre_id: 17)

BookGenre.create(book_id: 31, genre_id: 2)
BookGenre.create(book_id: 31, genre_id: 3)
BookGenre.create(book_id: 31, genre_id: 18)

Book.create(title: "Matnawiye Ma'nawi", topics: "A series of six books of poetry that together amount to around 25,000 verses.", author_id: 8)
Book.create(title: "Diwan-e-Kabir", topics: "A collection of lyric poems that contains more than 40,000 verses.", author_id: 8, user_id: 1)
Book.create(title: "Mazheles-e-Sab'a", topics: "Sermons that give a commentary on the deeper meaning of Qur'an and Hadith.", author_id: 8)
Book.create(title: "Tafsir At-Tabari", topics: "Collection of statements on interpretation of verses of the Qur'an.", author_id: 7)
Book.create(title: "Categoriae", topics: "Enumerates all the possible kinds of things that can be the subject or the predicate of a proposition.", author_id: 6)
Book.create(title: "Physica", topics: "A collection of surviving manuscripts known as the Corpus Aristotelicum", author_id: 6, user_id: 1)
Book.create(title: "De Anima", topics: "A work in what might best be described as biopsychology.", author_id: 6, user_id: 1)
Book.create(title: "De Longitudine et Brevitate Vitae", topics: "A collection that discusses natural phenomena involving the body and the soul.", author_id: 6)
Book.create(title: "Hexapla", topics: "A critical edition of the Hebrew Bible in six versions, four of them translated into Greek, preserved only in fragments.", author_id: 5)
Book.create(title: "Philokalia", topics: "is an anthology of Origen's texts, probably compiled by Basil the Great and Gregory of Nazianzus.", author_id: 5)
Book.create(title: "Commentary on Romans", author_id: 5, user_id: 2)
Book.create(title: "Summa Theologiae", topics: "One of the classics of the history of philosophy and one of the most influential works of Western literature.", author_id: 4, year_published: 1273)
Book.create(title: "Summa contra Gentiles", topics: "Guide for (Christian) missionaries in explaining the Christian religion to and defending it against dissenting points of doctrine in Islam and Judaism.", author_id: 4, year_published: 1263)
Book.create(title: "De enta et essentia", author_id: 4, year_published: 1256, user_id: 2)
Book.create(title: "In libros De anima expositio", topics: "Cum Triplici Textus Translatione, Antiqua, Argyropyli, Et Michaelis Sophiani, Nuper Addite. Accedunt ... Quæstiones ... Dominici de Flandria, Etc", author_id: 4, year_published: 1268)
Book.create(title: "Bartenura on the Mishnah", topics: "Detailed discussion of Mishnayous with summaries from the Gemarrah", author_id: 3)
Book.create(title: "Mishneh Torah", topics: "Fourteen books, subdivided into sections, chapters, and paragraphs. It is the only Medieval-era work that details all of Jewish observance, including those laws that are only applicable when the Holy Temple is in existence.", author_id: 2, year_published: 1180)
Book.create(title: "Moreh Nevuckhim", topics: "Seeks to reconcile Aristotelian philosophy with Hebrew Bible theology, by finding rational explanations for many events in the text.", author_id: 2, year_published: 1190)
Book.create(title: "Pirush Ha-Mishnayout", topics: "Fu uno dei primi commentari per il grande pubblico: condensa i dibattiti talmudici e offre le sue soluzioni in svariati casi dubbi.", author_id: 2)
Book.create(title: "Iggeret Teyman", topics: "Arose because of religious persecution and heresy in 12th century Yemen.", author_id: 2)
Book.create(title: "Chumash Rashi", topics: "Most influential commentary on the Bible", author_id: 1)
Book.create(title: "Talmud Bavli Rashi", topics: "Most influential commentary on the Talmud", author_id: 1)
Book.create(title: "Siddur Rashi", topics: "Compiled by an unknown student, also contains Rashi's responsa on tefellos.", author_id: 1, user_id: 2)
Book.create(title: "Mekhilta D'Rebbe Yishmael", topics: "A collection of rules of interpretation and a halakhic midrash to the Book of Exodus.", author_id: 9)
Book.create(title: "Tanchuma", topics: "Three different collections of Pentateuch aggadot; two are extant, while the third is known only through citations. These midrashim, although bearing the name of R. Tanḥuma, must not be regarded as having been written or edited by him.", author_id: 10, user_id: 1)
Book.create(title: "Targum Neofiti", topics: "The largest of the Western Targumim on the Torah, or Palestinian Targumim. It consists of 450 folios covering all books of the Torah, with only a few damaged verses.", author_id: 11, user_id: 1)

Language.create(name: "Hebrew")
Language.create(name: "Aramaic")
Language.create(name: "Arabic")
Language.create(name: "Greek")
Language.create(name: "Latin")
Language.create(name: "Persian")

BookLanguage.create(book_id: 1, language_id: 6)
BookLanguage.create(book_id: 1, language_id: 3)
BookLanguage.create(book_id: 2, language_id: 6)
BookLanguage.create(book_id: 2, language_id: 3)
BookLanguage.create(book_id: 3, language_id: 6)
BookLanguage.create(book_id: 4, language_id: 3)
BookLanguage.create(book_id: 5, language_id: 4)
BookLanguage.create(book_id: 6, language_id: 4)
BookLanguage.create(book_id: 7, language_id: 4)
BookLanguage.create(book_id: 8, language_id: 4)
BookLanguage.create(book_id: 9, language_id: 1)
BookLanguage.create(book_id: 9, language_id: 2)
BookLanguage.create(book_id: 9, language_id: 4)
BookLanguage.create(book_id: 10, language_id: 4)
BookLanguage.create(book_id: 11, language_id: 4)
BookLanguage.create(book_id: 12, language_id: 5)
BookLanguage.create(book_id: 13, language_id: 5)
BookLanguage.create(book_id: 14, language_id: 5)
BookLanguage.create(book_id: 15, language_id: 5)
BookLanguage.create(book_id: 16, language_id: 2)
BookLanguage.create(book_id: 17, language_id: 3)
BookLanguage.create(book_id: 17, language_id: 1)
BookLanguage.create(book_id: 17, language_id: 2)
BookLanguage.create(book_id: 18, language_id: 3)
BookLanguage.create(book_id: 19, language_id: 3)
BookLanguage.create(book_id: 20, language_id: 3)
BookLanguage.create(book_id: 20, language_id: 2)
BookLanguage.create(book_id: 20, language_id: 1)
BookLanguage.create(book_id: 21, language_id: 1)
BookLanguage.create(book_id: 22, language_id: 2)
BookLanguage.create(book_id: 22, language_id: 1)
BookLanguage.create(book_id: 23, language_id: 1)
BookLanguage.create(book_id: 24, language_id: 1)
BookLanguage.create(book_id: 25, language_id: 1)
BookLanguage.create(book_id: 26, language_id: 2)
BookLanguage.create(book_id: 27, language_id: 2)
BookLanguage.create(book_id: 27, language_id: 5)
BookLanguage.create(book_id: 28, language_id: 4)
BookLanguage.create(book_id: 29, language_id: 5)
BookLanguage.create(book_id: 30, language_id: 1)
BookLanguage.create(book_id: 30, language_id: 5)
BookLanguage.create(book_id: 31, language_id: 5)

Period.create(name: "Archaic Period", start_date: -776, end_date: -612)
Period.create(name: "Pre-Classical Period", start_date: -612, end_date: -480)
Period.create(name: "Classical Greece", start_date: -480, end_date: -399)
Period.create(name: "Macedonian era", start_date: -399, end_date: -323)
Period.create(name: "Hellenistic Era", start_date: -323, end_date: -147)
Period.create(name: "Late Roman Republic", start_date: -147, end_date: 27)
Period.create(name: "Principate of the Roman Empire", start_date: -27, end_date: 284)
Period.create(name: "Late Antiquity", start_date: 284, end_date: 500)
Period.create(name: "Early Middle Ages", start_date: 500, end_date: 1066)
Period.create(name: "High Middle Ages", start_date: 1066, end_date: 1300)
Period.create(name: "Late Middle Ages", start_date: 1300, end_date: 1453)
Period.create(name: "The Renaissance", start_date: 1453, end_date: 1600)
Period.create(name: "Early Modern Period", start_date: 1600, end_date: 1900)
Period.create(name: "Modern Period", start_date: 1900, end_date: 3000)

Author.create(name: "Brian Cohen", subjects: "First Century Humor", birth_date: -40, death_date: 60, user_id: 2)
Book.create(title: "Life of Brian (Original Autobiography)", topics: "This book was created in the database in order to test the 'hypothetical_date_of_publication' located in the 'Book' class model", author_id: 15, user_id: 2)
Book.create(title: "The Lost & Ancient Book on Comedy", topics: "The Philosopher wrote this and the Benedictine Monks sought to keep it a secret for they hated laughter ", author_id: 6, user_id: 2)

User.create(username: "Tom", email: "tom@yahoo.com", password: "secret")
User.create(username: "Nancy", email: "nancy@yahoo.com", password: "asdf")

Book.all.each do |book|
  book.unknown_author
end

Author.create(name: "Unknown", birth_date: -34, death_date: 27) # this needs to be deleted after you have the ability to create a new author

Book.create(title: "Ethica", year_published: 1677, topics: "A philosophical treatise & attempt to apply the method of Euclid in philosophy", author_id: 13, user_id: 1)
Book.create(title: "Compendium grammatices linguae hebraeae", year_published: 1677, topics: "Hebrew grammar for readers of Latin", author_id: 13, user_id: 1)
Book.create(title: "Tractatus Politicus", year_published: 1675, topics: "In quo demonstratur, quomodo Societas, ubi Imperium Monarchicum locum habet, sicut et ea, ubi Optimi imperant, debet institui, ne in Tyrannidem labatur, et ut Pax, Libertasque civium inviolata maneat", author_id: 13, user_id: 1)

Author.find(1).assign_period
Author.find(2).assign_period
Author.find(3).assign_period
Author.find(4).assign_period
Author.find(5).assign_period
Author.find(6).assign_period
Author.find(7).assign_period
Author.find(8).assign_period
Author.find(9).assign_period
Author.find(10).assign_period
Author.find(11).assign_period
Author.find(12).assign_period
Author.find(13).assign_period
Author.find(14).assign_period
Author.find(15).assign_period
Author.find(16).assign_period
