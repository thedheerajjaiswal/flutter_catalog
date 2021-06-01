class CatalogModal {
  static final items = [
    Item(
      id: 01,
      name: 'Apple iPhone11',
      desc: 'The smartphone comes with a 6.1 inches Liquid Retina IPS LCD',
      price: 699.00,
      color: 'white',
      image:
          'https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-1-500x500.jpg',
    ),
    Item(
      id: 02,
      name: 'Apple iPhoneSE (2020)',
      desc: 'The smartphone comes with a 5.1 inches Liquid Retina IPS LCD',
      price: 399.00,
      color: 'White',
      image:
          'https://media.wired.com/photos/5e9f56f143e5800008514457/1:1/w_1277,h_1277,c_limit/Gear-Feature-Apple_new-iphone-se-white_04152020.jpg',
    ),
    Item(
      id: 03,
      name: 'Apple iPhone7',
      desc: 'The smartphone comes with a 4.7 inches Liquid Retina IPS LCD',
      price: 349.00,
      color: 'Rose Gold',
      image:
          'https://images-na.ssl-images-amazon.com/images/I/71x3e0x%2BM2L._AC_SL1382_.jpg',
    ),
    Item(
      id: 04,
      name: 'Apple iPhone12 Mini',
      desc:
          'The phone is powered by the new Apple A14 Bionic processor and supports Next‑generation Neural',
      price: 699.00,
      color: 'Blue',
      image:
          'https://www.gizmochina.com/wp-content/uploads/2020/10/Apple-iPhone-12-Mini-500x500.jpg',
    ),
    Item(
      id: 05,
      name: 'Apple iPhonex',
      desc:
          ' Phone is loaded with 3 GB RAM, 64 GB Internal storage and 2716 battery',
      price: 305.00,
      color: 'White',
      image:
          'https://static.digit.in/default/f0120c64aeeba5e126ae1711b0e2e64e7f6e40de.jpeg?tr=w-1200',
    ),
    Item(
      id: 06,
      name: 'Apple iPhoneXR',
      desc:
          ' Phone is loaded with 4 GB RAM, 128 GB Internal storage and 3206 battery',
      price: 599.00,
      color: 'Yellow',
      image:
          'https://media.wired.com/photos/5bcea2642eea7906bba84c67/master/w_2560%2Cc_limit/iphonexr.jpg',
    ),
    Item(
      id: 07,
      name: 'OnePlus 9',
      desc:
          ' Phone is loaded with 8 GB RAM, 128 GB Internal storage and 5500 battery',
      price: 499.00,
      color: 'Silver',
      image:
          'https://i.gadgets360cdn.com/large/oneplus_9_pro_image_1616073743295.jpg',
    ),
    Item(
      id: 08,
      name: 'OnePlus 8',
      desc:
          ' Phone is loaded with 6 GB RAM, 128 GB Internal storage and 5000 battery',
      price: 399.00,
      color: 'Ocean Blue',
      image:
          'https://i.gadgets360cdn.com/large/oneplus_8_pro_image_1586870065108.jpg?downsize=950:*&output-quality=80',
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}