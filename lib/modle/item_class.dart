class Item {
  //String title;
  String imgPath;
  double price;
  String location;
  String moreDetails;
  bool isNew;
  int numberStar;
  Item({required this.imgPath, required this.price ,required this.location,required this.isNew,required this.numberStar,required this.moreDetails
      //,required this.title
      });
}
final List<Item> items = [
    Item(imgPath: "assest/img/(1).jpg", price: 32.5,location:'AliBaba store',isNew:true,numberStar:4 ,moreDetails:'Name:Leather top handle bag\nColor is black\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(2).jpg", price: 19.5,location:'Amazon store',isNew:true,numberStar:5 ,moreDetails:'Name:Leather top handle bag\nColor is brown\nBag dimensions:20L m 12H x 8W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(3).jpg", price: 25.0,location:'AliBaba store',isNew:false,numberStar:3 ,moreDetails:'Name:Leather top handle bag\nColor is green with white\nBag dimensions:20L x 12H x 7W cm\nFashion Section is poten\n'),
    Item(imgPath: "assest/img/(4).jpg", price: 30.6,location:'Amazon store',isNew:true,numberStar:4 ,moreDetails:'Name:Leather top handle bag\nColor is white\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(5).jpg", price: 15.5,location:'Amazon store',isNew:true,numberStar:4 , moreDetails:'Name:Leather top handle bag\nColor is orange\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(6).jpg", price: 20.5,location:'AliBaba store',isNew:false,numberStar:3 ,
    moreDetails:'Name:Leather top handle bag\nColor is ovil\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(7).jpg", price: 34.5,location:'AliBaba store',isNew:true,numberStar:5 ,
    moreDetails:'Name:Leather top handle bag\nColor is purple\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(8).jpg", price: 30.50,location:'Amazone store',isNew:false,numberStar:4 ,
    moreDetails:'Name:Leather top handle bag\nColor is orange\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(9).jpg", price: 18.0,location:'Amazon store',isNew:true,numberStar:2 ,
    moreDetails:'Name:Leather top handle bag\nColor is white\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
    Item(imgPath: "assest/img/(10).jpg", price: 26.9,location:'Amazon store',isNew:false,numberStar:4 ,
    moreDetails:'Name:Leather top handle bag\nColor is black with white\nBag dimensions:20L x 12H x 7W cm\nFashion Section is Value\n'),
  ];
