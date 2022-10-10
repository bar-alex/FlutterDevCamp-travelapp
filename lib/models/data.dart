class Data{
  String cityName; 
  String cityImage; 
  String description;
  String greetNativeLang;
  List<Attraction> attractions;

  // Data({cityName, cityImage, description})
  Data({
    required this.cityName, 
    required this.cityImage,
    required this.description,
    required this.attractions,
    this.greetNativeLang = "",
  });
}


class Attraction{
  String attractionName;
  String attractionDescr;
  String attractionImage;

  Attraction({
    required this.attractionName,
    required this.attractionDescr,
    required this.attractionImage,
  });
}


List<Data> dataList = [
  Data(cityName: "London", 
    cityImage: "https://img.freepik.com/premium-photo/big-ben-clock-tower-thames-river-london_79295-6837.jpg?w=2000", 
    description: "London is the capital and largest city of England and the United Kingdom, with a population of just over 9 million. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea, and has been a major settlement for two millennia.",
    greetNativeLang: "Welcome!",
    attractions: [
      Attraction(
        attractionName: "London Eye",
        attractionImage: "https://img.freepik.com/free-photo/london-eye-with-river-thames_1147-356.jpg?w=900",
        attractionDescr: "The London Eye, or the Millennium Wheel, is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel, and is the most popular paid tourist attraction in the United Kingdom with over 3 million visitors annually. It has made many appearances in popular culture.",
      ),
      Attraction(
        attractionName: "Big Ben",
        attractionImage: "https://img.freepik.com/free-photo/big-ben-houses-parliament-london-uk_268835-1400.jpg?w=900",
        attractionDescr: "Big Ben is the nickname for the Great Bell of the striking clock at the north end of the Palace of Westminster in London, England, and the name is frequently extended to refer also to the clock and the clock tower. The official name of the tower in which Big Ben is located was originally the Clock Tower, but it was renamed Elizabeth Tower in 2012 to mark the Diamond Jubilee of Elizabeth II. The tower was designed by Augustus Pugin in a neo-Gothic style. When completed in 1859, its clock was the largest and most accurate four-faced striking and chiming clock in the world. The tower stands 316 feet tall, and the climb from ground level to the belfry is 334 steps. Its base is square, measuring 40 feet on each side. Dials of the clock are 22.5 feet in diameter. All four nations of the UK are represented on the tower on shields featuring a rose for England, thistle for Scotland, shamrock for Ireland, and leek for Wales. On 31 May 2009, celebrations were held to mark the tower's 150th anniversary. Big Ben is the largest of the tower's five bells and weighs 13.5 long tons. It was the largest bell in the United Kingdom for 23 years.",
      ),
      Attraction(
        attractionName: "Tower Bridge",
        attractionImage: "https://img.freepik.com/free-photo/famous-tower-bridge-evening-london-england_268835-1105.jpg?w=900",
        attractionDescr: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry with the help of Henry Marc Brunel. It crosses the River Thames close to the Tower of London and is one of five London bridges owned and maintained by the Bridge House Estates, a charitable trust founded in 1282. The bridge was constructed to give better access to the East End of London, which had expanded its commercial potential in the 19th century. The bridge was opened by Edward, Prince of Wales and Alexandra, Princess of Wales in 1894. The bridge is 800 feet in length and consists of two 213-foot bridge towers connected at the upper level by two horizontal walkways, and a central pair of bascules that can open to allow shipping. Originally hydraulically powered, the operating mechanism was converted to an electro-hydraulic system in 1972. The bridge is part of the London Inner Ring Road and thus the boundary of the London congestion charge zone, and remains an important traffic route with 40,000 crossings every day.",
      ),
      Attraction(
        attractionName: "St. Paul's Cathedral",
        attractionImage: "https://img.freepik.com/premium-photo/st-pauls-cathedral-london_255553-3930.jpg?w=900",
        attractionDescr: "St Paul's Cathedral is an Anglican cathedral in London and is the seat of the Bishop of London. The cathedral serves as the mother church of the Diocese of London. It is on Ludgate Hill at the highest point of the City of London and is a Grade I listed building. Its dedication to Paul the Apostle dates back to the original church on this site, founded in AD 604. The present structure, dating from the late 17th century, was designed in the English Baroque style by Sir Christopher Wren. Its construction, completed in Wren's lifetime, was part of a major rebuilding programme in the city after the Great Fire of London. The earlier Gothic cathedral, largely destroyed in the Great Fire, was a central focus for medieval and early modern London, including Paul's walk and St Paul's Churchyard, being the site of St Paul's Cross. The cathedral is one of the most famous and recognisable sights of London. Its dome, surrounded by the spires of Wren's City churches, has dominated the skyline for over 300 years. At 365 ft high, it was the tallest building in London from 1710 to 1963. The dome is still one of the highest in the world.",
      ),
    ]
  ),
  Data(cityName: "Paris", 
    cityImage: "https://img.freepik.com/premium-photo/seine-paris-with-eiffel-tower-autumn-season-paris-france_73503-527.jpg?w=2000", 
    description: "Paris is the capital and most populous city of France, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 km² (41 sq mi),[4] making it the 34th most densely populated city in the world in 2020.[5] Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, fashion, gastronomy, and science. For its leading role in the arts and sciences, as well as its very early system of street lighting, in the 19th century it became known as \"the City of Light\".[6] Like London, prior to the Second World War, it was also sometimes called the capital of the world.",
    greetNativeLang: "Bienvenue",
    attractions: [
      Attraction(
        attractionName: "Eiffel Tower",
        attractionImage: "https://img.freepik.com/premium-photo/sunrise-eiffel-tower-paris-france_73503-265.jpg?w=900",
        attractionDescr: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed \"La dame de fer\", it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair. Although initially criticised by some of France's leading artists and intellectuals for its design, it has since become a global cultural icon of France and one of the most recognisable structures in the world. The Eiffel Tower is the most visited monument with an entrance fee in the world; 6.91 million people ascended it in 2015. It was designated a monument historique in 1964, and was named part of a UNESCO World Heritage Site in 1991. The tower is 330 metres tall, about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest human-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930.",
      ),
      Attraction(
        attractionName: "Arc de Triomphe",
        attractionImage: "https://img.freepik.com/free-photo/orange-sunset-arc-de-triomphe-beautiful-european-city-paris-france_242111-17791.jpg?w=900",
        attractionDescr: "The Arc de Triomphe de l'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l'Étoile—the étoile or \"star\" of the juncture formed by its twelve radiating avenues. The location of the arc and the plaza is shared between three arrondissements, 16th, 17th, and 8th. The Arc de Triomphe honours those who fought and died for France in the French Revolutionary and Napoleonic Wars, with the names of all French victories and generals inscribed on its inner and outer surfaces. Beneath its vault lies the Tomb of the Unknown Soldier from World War I. The central cohesive element of the Axe historique, the Arc de Triomphe was designed by Jean Chalgrin in 1806; its iconographic programme pits heroically nude French youths against bearded Germanic warriors in chain mail. It set the tone for public monuments with triumphant patriotic messages. Inspired by the Arch of Titus in Rome, Italy, the Arc de Triomphe has an overall height of 50 metres, width of 45 m and depth of 22 m, while its large vault is 29.19 m high and 14.62 m wide.",
      ),
      Attraction(
        attractionName: "Louvre Museum",
        attractionImage: "https://img.freepik.com/premium-photo/louvre-museum-paris_63253-7424.jpg?w=900",
        attractionDescr: "The Louvre, or the Louvre Museum, is the world's most-visited museum, and a historic landmark in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement. At any given point in time, approximately 38,000 objects from prehistory to the 21st century are being exhibited over an area of 72,735 square meters. Attendance in 2021 was 2.8 million due to the COVID-19 pandemic, up five percent from 2020, but far below pre-COVID attendance. Nonetheless, the Louvre still topped the list of most-visited art museums in the world in 2021. The museum is housed in the Louvre Palace, originally built in the late 12th to 13th century under Philip II. Remnants of the Medieval Louvre fortress are visible in the basement of the museum. Due to urban expansion, the fortress eventually lost its defensive function, and in 1546 Francis I converted it into the primary residence of the French Kings. The building was extended many times to form the present Louvre Palace.",
      ),
    ],
  ),
  Data(cityName: "New York", 
    cityImage: "https://img.freepik.com/premium-photo/sunsegt-manhattan_110488-1459.jpg?w=2000", 
    description: "New York, often called New York City (NYC) to distinguish it from the State of New York, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States.",
    greetNativeLang: "Welcome",
    attractions: [
      Attraction(
        attractionName: "Statue of Liberty",
        attractionImage: "https://img.freepik.com/premium-photo/statue-liberty-with-one-world-trade-building-center-hudson-river-new-york-cityscape-background-landmarks-lower-manhattan-new-york-city_1439-235.jpg?w=900",
        attractionDescr: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. The statue was dedicated on October 28, 1886. The statue is a figure of Libertas, a robed Roman liberty goddess. She holds a torch above her head with her right hand, and in her left hand carries a tabula ansata inscribed JULY IV MDCCLXXVI, the date of the U.S. Declaration of Independence. A broken shackle and chain lie at her feet as she walks forward, commemorating the recent national abolition of slavery. After its dedication, the statue became an icon of freedom and of the United States, seen as a symbol of welcome to immigrants arriving by sea. Bartholdi was inspired by a French law professor and politician, Édouard René de Laboulaye, who is said to have commented in 1865 that any monument raised to U.S. independence would properly be a joint project of the French and American peoples.",
      ),
      Attraction(
        attractionName: "Central Park",
        attractionImage: "https://img.freepik.com/free-photo/central-park-manhattan-new-york-huge-beautiful-park-surrounded-by-skyscraper-with-pond_181624-50335.jpg?w=996",
        attractionDescr: "Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan. It is the fifth-largest park in the city, covering 843 acres. It is the most visited urban park in the United States, with an estimated 42 million visitors annually as of 2016, and is the most filmed location in the world. After proposals for a large park in Manhattan during the 1840s, it was approved in 1853 to cover 778 acres. In 1857, landscape architects Frederick Law Olmsted and Calvert Vaux won a design competition for the park with their \"Greensward Plan\". Construction began the same year; existing structures, including a majority-Black settlement named Seneca Village, were seized through eminent domain and razed. The park's first areas were opened to the public in late 1858. Additional land at the northern end of Central Park was purchased in 1859, and the park was completed in 1876. After a period of decline in the early 20th century, New York City parks commissioner Robert Moses started a program to clean up Central Park in the 1930s.",
      ),
    ],
  ),
  Data(cityName: "Singapore", 
    cityImage: "https://img.freepik.com/premium-photo/singapore-cityscape-twilight_335224-686.jpg?w=2000", 
    description: "Singapore, city-state located at theSingapore, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) north of the Equator. It consists of the diamond-shaped Singapore Island and some 60 small islets; the main island occupies all but about 18 square miles of this combined area.",
    greetNativeLang: "Selamat Datang",
    attractions: [
      Attraction(
        attractionName: "Marina Bay Sands",
        attractionImage: "https://img.freepik.com/free-photo/marina-bay-sand-building_1203-7125.jpg?w=900",
        attractionDescr: "Marina Bay Sands is an integrated resort fronting Marina Bay in Singapore. The resort is owned by the Las Vegas Sands Corporation and at its opening in 2010, it was deemed the world's most expensive standalone casino property at \$8 billion. The resort includes a 2,561-room hotel, a 120,000-square-metre convention-exhibition centre, the 74,000-square-metre The Shoppes at Marina Bay Sands mall, a museum, a large theatre, \"celebrity chef\" restaurants, two floating crystal pavilions, art-science exhibits, and the world's largest atrium casino with 500 tables and 1,600 slot machines. The complex includes three towers topped by a connecting 340-metre-long SkyPark with a capacity of 3,902 people and a 150 m infinity swimming pool, set on top of the world's largest public cantilevered platform, which overhangs the north tower by 66.5 m. The 20-hectare resort was designed by Moshe Safdie architects. Marina Bay Sands was originally set to open in 2009, but its construction faced delays caused by escalating costs of material and labour shortages from the outset.",
      ),
      Attraction(
        attractionName: "Gardens by the Bay",
        attractionImage: "https://img.freepik.com/free-photo/garden-by-bay_1203-7108.jpg?w=900",
        attractionDescr: "The Gardens by the Bay is a nature park spanning 101 hectares in the Central Region of Singapore, adjacent to the Marina Reservoir. The park consists of three waterfront gardens: Bay South Garden, Bay East Garden and Bay Central Garden. The largest of the gardens is the Bay South Garden at 54 hectares designed by Grant Associates. Its Flower Dome is the largest glass greenhouse in the world. Gardens by the Bay was part of the nation's plans to transform its \"Garden City\" to a \"City in a Garden\", with the aim of raising the quality of life by enhancing greenery and flora in the city. First announced by Prime Minister Lee Hsien Loong at Singapore's National Day Rally in 2005, Gardens by the Bay was intended to be Singapore's premier urban outdoor recreation space and a national icon. Being a popular tourist attraction in Singapore, the park received 6.4 million visitors in 2014, while topping its 20 millionth visitor mark in November 2015 and over 50 million in 2018.",
      ),

    ],
  ),
  Data(cityName: "Kyoto", 
    cityImage: "https://img.freepik.com/free-photo/golden-pavilion-kinkakuji-temple-kyoto-japan_335224-19.jpg?w=2000", 
    description: "Kyoto officially Kyoto City is the capital city of Kyoto Prefecture in Japan. Located in the Kansai region on the island of Honshu, Kyoto forms a part of the Keihanshin metropolitan area along with Osaka and Kobe. As of 2020, the city had a population of 1.46 million. The city is the cultural anchor of a substantially larger metropolitan area known as Greater Kyoto, a metropolitan statistical area (MSA) home to a census-estimated 3.8 million people.",
    greetNativeLang: "ようこそ\n(Yōkoso)",
    attractions: [
      Attraction(
        attractionName: "Kinkaku-ji",
        attractionImage: "https://img.freepik.com/premium-photo/kinkakuji-temple_64030-95.jpg?w=900",
        attractionDescr: "Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyoto, Japan. It is one of the most popular buildings in Kyoto, attracting many visitors annually. It is designated as a National Special Historic Site, a National Special Landscape and is one of 17 locations making up the Historic Monuments of Ancient Kyoto which are World Heritage Sites.",
      ),
      Attraction(
        attractionName: "Arashiyama",
        attractionImage: "https://img.freepik.com/free-photo/bamboo-grove-panorama-arashiyama-kyoto-japan_649448-2678.jpg?w=1060",
        attractionDescr: "Arashiyama is a district on the western outskirts of Kyoto, Japan. It also refers to the mountain across the Ōi River, which forms a backdrop to the district. Arashiyama is a nationally designated Historic Site and Place of Scenic Beauty.",
      ),
      Attraction(
        attractionName: "Higashiyama Jisho-ji",
        attractionImage: "https://img.freepik.com/free-photo/yasaka-pagoda-sannen-zaka-street-kyoto-japan_335224-119.jpg?w=900",
        attractionDescr: "Ginkaku-ji, officially named Jishō-ji, is a Zen temple in the Sakyo ward of Kyoto, Japan. It is one of the constructions that represents the Higashiyama Culture of the Muromachi period.",
      ),
      Attraction(
        attractionName: "Fushimi Inari Taisha",
        attractionImage: "https://img.freepik.com/free-photo/asian-women-traditional-japanese-kimonos-fushimi-inari-shrine-kyoto-japan_335224-128.jpg?w=900",
        attractionDescr: "Fushimi Inari-taisha is the head shrine of the kami Inari, located in Fushimi-ku, Kyoto, Kyoto Prefecture, Japan. The shrine sits at the base of a mountain also named Inari which is 233 metres above sea level, and includes trails up the mountain to many smaller shrines which span 4 kilometres and take approximately 2 hours to walk up. Inari was originally and remains primarily the kami of rice and agriculture, but merchants and manufacturers also worship Inari as the patron of business. Each of Fushimi Inari-taisha's roughly thousand torii was donated by a Japanese business. Owing to the popularity of Inari's division and re-enshrinement, this shrine is said to have as many as 32,000 sub-shrines throughout Japan.",
      ),

    ],
  ),
  Data(cityName: "Amsterdam", 
    cityImage: "https://img.freepik.com/premium-photo/canal-sunset-amsterdam-is-capital_146671-11289.jpg?w=2000", 
    description: "Amsterdam is the capital and most populous city of the Netherlands; with a population of 907,976[11] within the city proper, 1,558,755 in the urban area and 2,480,394 in the metropolitan area. Found within the Dutch province of North Holland, Amsterdam is colloquially referred to as the \"Venice of the North\", due to the large number of canals which form a UNESCO World Heritage Site.",
    greetNativeLang: "Welkom",
    attractions: [
      Attraction(
        attractionName: "De Wallen",
        attractionImage: "https://img.freepik.com/premium-photo/night-red-light-district-de-wallen-canal-oudezijds-voorburgwal-bridge-basilica-saint-nicholas-its-mirror-reflection-amsterdam-holland-netherlands-used-toning_218319-5495.jpg?w=900",
        attractionDescr: "De Wallen or De Walletjes is the largest and best known red-light district in Amsterdam. It consists of a network of alleys containing approximately 300 one-room cabins rented by prostitutes who offer their sexual services from behind a window or glass door, typically illuminated with red lights and blacklight. Window prostitution is the most visible and typical kind of red-light district sex work in Amsterdam. De Wallen, together with the prostitution areas Singelgebied and Ruysdaelkade, form the Rosse Buurt of Amsterdam. Of these De Wallen is the oldest and largest area. It is one of the city's major tourist attractions and the government of Amsterdam is examining ways to limit tourist numbers. The area also has a number of sex shops, sex theatres, peep shows, a sex museum, a cannabis museum, and a number of coffee shops that sell cannabis.",
      ),
      Attraction(
        attractionName: "Bloemenmarkt",
        attractionImage: "https://img.freepik.com/free-photo/cheerful-female-florist-carrying-crate-with-flowers-plant-nursery-garden-greenhouse_342744-21.jpg?w=900",
        attractionDescr: "The Bloemenmarkt is the world's only floating flower market. Founded in 1862, it is sited in Amsterdam, Netherlands, on the Singel canal between Muntplein and Koningsplein in the city's southern canal belt. It has 15 souvenir and gift shops, with only a few still selling fresh flowers. Today, the market is one of the main suppliers of flower bulbs and tulip paraphernalia to tourists visiting Amsterdam.",
      ),

    ],
  ),

  Data(cityName: "Rome", 
    cityImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Sant%27Angelo_bridge%2C_dusk%2C_Rome%2C_Italy.jpg/1280px-Sant%27Angelo_bridge%2C_dusk%2C_Rome%2C_Italy.jpg", 
    description: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy.",
    greetNativeLang: "Benvenuto",
    attractions: [
      Attraction(
        attractionName: "Trevi Fountain",
        attractionImage: "https://img.freepik.com/premium-photo/trevi-fountain-rome-latin-inscription-fountain-pays-homage-pope-clement-xii-his-embellishment-work_101045-1121.jpg?w=900",
        attractionDescr: "The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world. The fountain has appeared in several films, including Roman Holiday; Three Coins in the Fountain; Federico Fellini's classic, La Dolce Vita; Sabrina Goes to Rome; and The Lizzie McGuire Movie.",
      ),
      Attraction(
        attractionName: "Colosseum",
        attractionImage: "https://img.freepik.com/premium-photo/view-colosseo-romano-roman-coliseum-roma-lazio-italy_137125-2982.jpg?w=900",
        attractionDescr: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age. Construction began under the emperor Vespasian in 72 and was completed in 80 AD under his successor and heir, Titus. Further modifications were made during the reign of Domitian. The three emperors that were patrons of the work are known as the Flavian dynasty, and the amphitheatre was named the Flavian Amphitheatre by later classicists and archaeologists for its association with their family name. The Colosseum is built of travertine limestone, tuff, and brick-faced concrete. It could hold an estimated 50,000 to 80,000 spectators at various points in its history, having an average audience of some 65,000; it was used for gladiatorial contests and public spectacles including animal hunts, executions, re-enactments of famous battles, and dramas based on Roman mythology, and briefly mock sea battles. The building ceased to be used for entertainment in the early medieval era.",
      ),
      Attraction(
        attractionName: "Pantheon",
        attractionImage: "https://img.freepik.com/premium-photo/ancient-pantheon-rome-cloudy-sunrise-italy_219717-4725.jpg?w=826",
        attractionDescr: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus. It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down. The building is cylindrical with a portico of large granite Corinthian columns under a pediment. A rectangular vestibule links the porch to the rotunda, which is under a coffered concrete dome, with a central opening to the sky. Almost two thousand years after it was built, the Pantheon's dome is still the world's largest unreinforced concrete dome. The height to the oculus and the diameter of the interior circle are the same, 43 metres. It is one of the best-preserved of all Ancient Roman buildings, in large part because it has been in continuous use throughout its history: since the 7th century, it has been a church dedicated to St. Mary and the Martyrs but informally known as \"Santa Maria Rotonda\".",
      ),

    ],
  ),
  Data(cityName: "Rio de Janeiro", 
    // cityImage: "https://img.freepik.com/premium-photo/we-are-here-entertain-you-cropped-shot-beautiful-samba-dancers-performing-carnival-with-their-band_590464-9351.jpg?w=900", 
    cityImage: "https://img.freepik.com/premium-photo/rio-de-janeiro-principal-ponto-turistico-brasil-com-lindas-praias-copacabana-beach-ipanema_538646-3220.jpg?w=900", 
    description: "Rio de Janeiro is one of the most visited cities in the Southern Hemisphere and is known for its natural settings, carnival, samba, bossa nova, and balneario beaches such as Barra da Tijuca, Copacabana, Ipanema, and Leblon. In addition to the beaches, some of the most famous landmarks include the giant statue of Christ the Redeemer atop Corcovado mountain, named one of the New Seven Wonders of the World; Sugarloaf Mountain with its cable car; the Sambódromo (Sambadrome), a permanent grandstand-lined parade avenue which is used during Carnival; and Maracanã Stadium, one of the world's largest football stadiums.",
    greetNativeLang: "Bem-vindos",
    attractions: [
      Attraction(
        attractionName: "Christ the Redeemer",
        attractionImage: "https://img.freepik.com/premium-photo/beautiful-panorama-rio-de-janeiro-twilight-brazil-corcovado_620810-2252.jpg?w=900",
        attractionDescr: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face. Constructed between 1922 and 1931, the statue is 30 metres high, excluding its 8-metre pedestal. The arms stretch 28 metres wide. It is made of reinforced concrete and soapstone. The Christ the Redeemer differs considerably from its original design. The initial plan was a large Christ with a globe in one hand and a cross in the other. Although the project organisers originally accepted the design, it later changed to the statue of today, with the arms spread out wide. The statue weighs 635 metric tons, and is located at the peak of the 700-metre Corcovado mountain in the Tijuca National Park overlooking the city of Rio de Janeiro. A symbol of Christianity around the world, the statue has also become a cultural icon of both Rio de Janeiro and Brazil and was voted one of the New Seven Wonders of the World.",
      ),
      Attraction(
        attractionName: "Escadaria Selarón",
        // attractionImage: "https://img.freepik.com/free-photo/mosaic-ceramic-tiled-stairs_657883-547.jpg?w=900",
        attractionImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQCvnWYE0S2QD8AMp-4FjoUiUVGr8QyxyOrHqvuoEbAhEKiegx8Owt9BV2L6-tVDnWdSJkecOj4T5BPA-L3_cQiw",
        attractionDescr: "Escadaria Selarón, also known as the 'Selaron Steps', is a set of world-famous steps in Rio de Janeiro, Brazil. They are the work of Chilean-born artist Jorge Selarón who claimed it as \"my tribute to the Brazilian people\".",
      ),
      Attraction(
        attractionName: "Portuguese Reading Room",
        attractionImage: "https://img.freepik.com/premium-photo/beautiful-vintage-old-library-with-books-stairs-literature-science-learning_338491-17370.jpg?w=900",
        attractionDescr: "The Royal Portuguese Cabinet of Reading is a library and lusophone cultural institution, is located in Luís de Camões Street, number 30, in the center of the city of Rio de Janeiro, Brazil. It is listed by the State Institute of Cultural Heritage. Elected the fourth most beautiful library in the world by Time magazine, the Cabinet has the largest collection of Portuguese literature outside Portugal.",
      ),

    ],
  ),

];