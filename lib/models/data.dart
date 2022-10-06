class Data{
  String cityName; 
  String cityImage; 
  String description;

  Data({
    required this.cityName, 
    required this.cityImage,
    required this.description,
  });
}

List<Data> dataList = [
  Data(cityName: "London", 
    cityImage: "https://img.freepik.com/premium-photo/big-ben-clock-tower-thames-river-london_79295-6837.jpg?w=2000", 
    description: "London is the capital and largest city of England and the United Kingdom, with a population of just over 9 million. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea, and has been a major settlement for two millennia."
  ),
  Data(cityName: "Paris", 
    cityImage: "https://img.freepik.com/premium-photo/seine-paris-with-eiffel-tower-autumn-season-paris-france_73503-527.jpg?w=2000", 
    description: "Paris is the capital and most populous city of France, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 km² (41 sq mi),[4] making it the 34th most densely populated city in the world in 2020.[5] Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, fashion, gastronomy, and science. For its leading role in the arts and sciences, as well as its very early system of street lighting, in the 19th century it became known as \"the City of Light\".[6] Like London, prior to the Second World War, it was also sometimes called the capital of the world."
  ),
  Data(cityName: "New York", 
    cityImage: "https://img.freepik.com/premium-photo/sunsegt-manhattan_110488-1459.jpg?w=2000", 
    description: "New York, often called New York City (NYC) to distinguish it from the State of New York, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States."
  ),
  Data(cityName: "Singapore", 
    cityImage: "https://img.freepik.com/premium-photo/singapore-cityscape-twilight_335224-686.jpg?w=2000", 
    description: "Singapore, city-state located at theSingapore, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) north of the Equator. It consists of the diamond-shaped Singapore Island and some 60 small islets; the main island occupies all but about 18 square miles of this combined area."
  ),
  Data(cityName: "Kyoto", 
    cityImage: "https://img.freepik.com/free-photo/golden-pavilion-kinkakuji-temple-kyoto-japan_335224-19.jpg?w=2000", 
    description: "Kyoto officially Kyoto City is the capital city of Kyoto Prefecture in Japan. Located in the Kansai region on the island of Honshu, Kyoto forms a part of the Keihanshin metropolitan area along with Osaka and Kobe. As of 2020, the city had a population of 1.46 million. The city is the cultural anchor of a substantially larger metropolitan area known as Greater Kyoto, a metropolitan statistical area (MSA) home to a census-estimated 3.8 million people."
  ),
  Data(cityName: "Amsterdam", 
    cityImage: "https://img.freepik.com/premium-photo/canal-sunset-amsterdam-is-capital_146671-11289.jpg?w=2000", 
    description: "Amsterdam is the capital and most populous city of the Netherlands; with a population of 907,976[11] within the city proper, 1,558,755 in the urban area and 2,480,394 in the metropolitan area. Found within the Dutch province of North Holland, Amsterdam is colloquially referred to as the \"Venice of the North\", due to the large number of canals which form a UNESCO World Heritage Site."
  ),

];