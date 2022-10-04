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
    cityImage: "https://img.freepik.com/premium-photo/big-ben-clock-tower-thames-river-london_79295-6837.jpg", 
    description: ""
  )
  Data(cityName: "Paris", 
    cityImage: "", 
    description: ""
  )
  Data(cityName: "New York", 
    cityImage: "", 
    description: ""
  )

]