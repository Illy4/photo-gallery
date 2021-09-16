import 'package:flutter/material.dart';
import 'package:flutter_application_1/picture_detail.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application_1/picture_detail.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: PhotoGalleryApp()));
}

class PhotoGalleryApp extends StatefulWidget {
  const PhotoGalleryApp({Key? key}) : super(key: key);

  @override
  _PhotoGalleryAppState createState() => _PhotoGalleryAppState();
}

class _PhotoGalleryAppState extends State<PhotoGalleryApp> {
  //Images data source
  List img = [
    "https://images.unsplash.com/photo-1628191136850-215d7b0e663e?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1631548980582-3daa3b503ce6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1631214953530-0ae0277ccf7f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1631311915775-e8f4250a7d4e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://scontent.facc6-1.fna.fbcdn.net/v/t39.30808-6/236752731_102953265431893_5441022302024326774_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_eui2=AeF8OrZWMjCAFidmeU-cSGkbdblmHm8uOKt1uWYeby44q9iBOsueiV4XPZMsQWttvJCkhNmi59RAlKIaJ-ht-Z7P&_nc_ohc=keYnFNNyx1oAX99Y9K2&_nc_ht=scontent.facc6-1.fna&oh=3a123ef6e40ef5ee649fc3e5db844640&oe=6145ED22",
    "https://scontent.facc6-1.fna.fbcdn.net/v/t39.30808-6/241364906_115663037494249_8531332664689713729_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEecZFDnYsbGOXoaykZQr4V3UEC67NKKwTdQQLrs0orBOSI_RBbFfE9MrBTTaB8CPk5GBDofACeRGGSQFxNd35S&_nc_ohc=UuseuE6m07EAX9Hwl5H&_nc_ht=scontent.facc6-1.fna&oh=9ee0c0eb681af7abe6c43523f1387249&oe=61463F28",
    "https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/120054158_1002885463491184_1602417323691464254_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=19026a&_nc_eui2=AeFKV3AOT2nPDBu2VKhmYkN9fd3ZJXRlxrl93dkldGXGuYLw8ib45opmvhswbHLMQSz7NiGqcAlvoVBMRTupkuC9&_nc_ohc=N-ZZXQxQ398AX8zkpFm&tn=mou1q3pqp4JMbfiR&_nc_ht=scontent.facc1-1.fna&oh=e8fb9fab168182169fb7022080a35cdb&oe=6168F79B",
    "https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/97121198_903763443403387_1064791438572650496_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_eui2=AeEIELOcGdpcHwwjmQ4Cg-JmckTYxcSC-q5yRNjFxIL6rtk_7Wv5AxhYAOydoOlM4DFzu8qsQ2i0FSz-y3f4dn3T&_nc_ohc=y0IwaJ93wH8AX9pp3Qe&_nc_ht=scontent.facc1-1.fna&oh=20670d2f1cd212b817f02c22205d6ab5&oe=61665286",
    "https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/91461844_872774933168905_6799867350595141632_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeELTXj-_f6AHLoWYszpNp67dP1pluiTV2J0_WmW6JNXYppGMNgCtCKVVAIM1AzX3jywPXdmvukLihjExCbYV3H8&_nc_ohc=F2A8geYYet0AX906wVU&_nc_ht=scontent.facc1-1.fna&oh=a9c963f6ed9e96f75e79e4a2b88f2685&oe=61661896",
    "https://scontent.facc1-1.fna.fbcdn.net/v/t1.6435-9/169345098_1138393753273687_3433132273020027727_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGHS-G_ulGRyEQSliFaE5fe-k2CwiFBQxP6TYLCIUFDE5hXhRew_mpk8UFjraq2UkFlMKE9RE8zxCQZ8p7XRSSj&_nc_ohc=6vL8EzZRe8oAX-cTDYr&_nc_ht=scontent.facc1-1.fna&oh=519b329df86f7ded072b42980b67bf51&oe=6167A342",
    "https://scontent.facc6-1.fna.fbcdn.net/v/t1.6435-9/186459743_1162037427575986_8505837089001979997_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeELbtvidZuGt5_uiRKxCf2wuJB-APjNlj24kH4A-M2WPQOyvvSXkgpOkVfN6o3DQj2rB62QhC2tTczoxFAmL4Nq&_nc_ohc=ETeCclF_5NsAX_g-EnO&_nc_ht=scontent.facc6-1.fna&oh=20cb58195077a35720a7a5dcb5056e17&oe=6165E528",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ilham Gallery App",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.amber,
                      ),
                      hintText: "Search for Image",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)))),
              SizedBox(
                height: 24.4,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    itemCount: img.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PictureDetailScreen(img[index])));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Image.network(
                              img[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return new StaggeredTile.count(1, index.isEven ? 1.2 : 2);
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
