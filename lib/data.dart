
import 'dart:convert';

class Food {
 final String name, price,category,imageUrl;
 final bool Soffer;

  Food({required this.name, required this.price, required this.category, required this.imageUrl,required this.Soffer});

}
List<Map<String,dynamic>> foodListJson=[
 {"name": 'Hot sandwich', "price": '10 \$', "category": 'Sandwich', "imageUrl": 'images/hot-sandwiches.jpg', "Soffer": true  ,   },
 {"name": 'Bacon sandwich', "price": '7 \$', "category": 'Sandwich', "imageUrl": 'images/bacon-sandwich.jpg', "Soffer": false  ,   },
 {"name": 'Blt sandwich', "price": '3 \$', "category": 'Sandwich', "imageUrl": 'images/blt-sandwich.jpg', "Soffer": false  ,   },
 {"name": 'Chicken sandwich', "price": '11\$', "category": 'Sandwich', "imageUrl": 'images/chicken-sandwich.jpg', "Soffer": false   ,  },
 {"name": 'Hot dog', "price": '4 \$', "category": 'Sandwich', "imageUrl": 'images/hot-dog.jpg', "Soffer": false   ,  },
 {"name": 'Open sandwich', "price": '9.99 \$', "category": 'Sandwich', "imageUrl": 'images/open-cold-sandwich.jpg', "Soffer": true   ,  },
 {"name": 'Submarine sandwich', "price": '8 \$', "category": 'Sandwich', "imageUrl": 'images/submarine-sandwich.jpg', "Soffer": false   ,  },
 {"name": 'Thin crusts pizza', "price": '7 \$', "category": 'Pizza', "imageUrl": 'images/thin-crusts-pizza.jpg',"Soffer":false    ,  },
 {"name": 'Thick crusts pizza', "price": '7 \$', "category": 'Pizza', "imageUrl": 'images/thick-crusts-pizza.jpg',"Soffer":false    ,  },
 {"name": 'Tavern pizza', "price": '3 \$', "category": 'Pizza', "imageUrl": 'images/tavern-pizza.jpg',"Soffer":false    ,  },
 {"name": 'Stuffed pizza', "price": '16 \$', "category": 'Pizza', "imageUrl": 'images/stuffed-pizza.jpg',"Soffer":false    ,  },
 {"name": 'Pan pizza', "price": '13 \$', "category": 'Pizza', "imageUrl": 'images/pan-pizza.jpg',"Soffer":false    ,  },
 {"name": 'New York pizza', "price": '13 \$', "category": 'Pizza', "imageUrl": 'images/new-york-pizza.jpg',"Soffer":true    ,  },
 {"name": 'Neapolitan pizza', "price": '11 \$', "category": 'Pizza', "imageUrl": 'images/neapolitan-pizza.jpg',"Soffer":true    ,  },
 {"name": 'Detroit pizza', "price": '9 \$', "category": 'Pizza', "imageUrl": 'images/detroit-pizza.jpg',"Soffer":false    ,  },
 {"name": 'Chicago pizza', "price": '13 \$', "category": 'Pizza', "imageUrl": 'images/chicago-pizza.jpg',"Soffer":false   ,  },
 {"name": 'California pizza', "price": '14 \$', "category": 'Pizza', "imageUrl": 'images/california-pizza.jpg',"Soffer":false   ,  },
 {"name": 'Bagel pizza', "price": '5 \$', "category": 'Pizza', "imageUrl": 'images/bagel-pizza.jpg',"Soffer":false   ,  },
];
List<Food> foodList=[
 Food(name: 'Hot sandwich', price: '10 \$', category: 'Sandwich', imageUrl: 'images/hot-sandwiches.jpg', Soffer: true ),
 Food(name: 'Bacon sandwich', price: '07 \$', category: 'Sandwich', imageUrl: 'images/bacon-sandwich.jpg', Soffer: false ),
 Food(name: 'Blt sandwich', price: '03 \$', category: 'Sandwich', imageUrl: 'images/blt-sandwich.jpg', Soffer: false ),
 Food(name: 'Chicken sandwich', price: '11\$', category: 'Sandwich', imageUrl: 'images/chicken-sandwich.jpg', Soffer: false ),
 Food(name: 'Hot dog', price: '04 \$', category: 'Sandwich', imageUrl: 'images/hot-dog.jpg', Soffer: false ),
 Food(name: 'Open sandwich', price: '9 \$', category: 'Sandwich', imageUrl: 'images/open-cold-sandwich.jpg', Soffer: true ),
 Food(name: 'Submarine sandwich', price: '08 \$', category: 'Sandwich', imageUrl: 'images/submarine-sandwich.jpg', Soffer: false ),
 Food(name: 'Thin crusts pizza', price: '07 \$', category: 'Pizza', imageUrl: 'images/thin-crusts-pizza.jpg',Soffer:false ),
 Food(name: 'Thick crusts pizza', price: '07 \$', category: 'Pizza', imageUrl: 'images/thick-crusts-pizza.jpg',Soffer:false  ),
 Food(name: 'Tavern pizza', price: '03 \$', category: 'Pizza', imageUrl: 'images/tavern-pizza.jpg',Soffer:false  ),
 Food(name: 'Stuffed pizza', price: '16 \$', category: 'Pizza', imageUrl: 'images/stuffed-pizza.jpg',Soffer:false  ),
 Food(name: 'Pan pizza', price: '13 \$', category: 'Pizza', imageUrl: 'images/pan-pizza.jpg',Soffer:false ),
 Food(name: 'New York pizza', price: '13 \$', category: 'Pizza', imageUrl: 'images/new-york-pizza.jpg',Soffer:true  ),
 Food(name: 'Neapolitan pizza', price: '11 \$', category: 'Pizza', imageUrl: 'images/neapolitan-pizza.jpg',Soffer:true  ),
 Food(name: 'Detroit pizza', price: '09 \$', category: 'Pizza', imageUrl: 'images/detroit-pizza.jpg',Soffer:false   ),
 Food(name: 'Chicago pizza', price: '13 \$', category: 'Pizza', imageUrl: 'images/chicago-pizza.jpg',Soffer:false  ),
 Food(name: 'California pizza', price: '14 \$', category: 'Pizza', imageUrl: 'images/california-pizza.jpg',Soffer:false  ),
 Food(name: 'Bagel pizza', price: '05 \$', category: 'Pizza', imageUrl: 'images/bagel-pizza.jpg',Soffer:false  ),
];


class categories{
final String name;

 final int i;

  categories({required this.name,required this.i, });

}
List <categories> categoryList=[
  categories(name: 'Pizza',i:1),
  categories(name: 'Sandwiches',i:2),
  categories(name: 'Mexican',i:3),
  categories(name: 'Korean',i:4),
  categories(name: 'Arabian',i:5),
  categories(name: 'Italian',i:6),
];