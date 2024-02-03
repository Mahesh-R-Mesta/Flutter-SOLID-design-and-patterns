class JsonDataProvider {
  final _data = {
    "users": [
      {
        "name": "Sachin",
        "email": "sachinvernekar@gamil.com",
        "phoneNumber": "879334343"
      },
      {
        "name": "Vikas",
        "email": "vikasvernekar@gamil.com",
        "phoneNumber": "567787878"
      },
      {
        "name": "mahesh",
        "email": "maheshmesta@gamil.com",
        "phoneNumber": "996778877"
      },
      {
        "name": "vijay",
        "email": "vijaybandari@gamil.com",
        "phoneNumber": "3245465656"
      },
      {
        "name": "Ganapati",
        "email": "ganapatimarati@gamil.com",
        "phoneNumber": "9876767676"
      },
    ]
  };

  Map<String, dynamic> getData() => _data;
}
