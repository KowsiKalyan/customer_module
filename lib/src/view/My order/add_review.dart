import 'dart:io';

import 'package:customermodule/all_packages.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  var iconList = [Icon(Icons.camera_alt), Icon(Icons.photo_album)];
  var selectedindex;
  File? imageFile;
  var imageFiles = [];
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState(() {});
  }

  shoudi() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Stack(
              children: [
                Container(
                  height: 50.0.hp,
                  child: Image.asset(
                    'assets/images/glitters.gif',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: 50.0.hp,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Review product',
                            style: toptitleStyle,
                          ),
                          Container(
                            height: 15.0.hp,
                            width: 60.0.wp,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: appcolor,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/thanks1.png'))),
                          ),
                          SizedBox(
                            height: 1.0.hp,
                          ),
                          Text(
                            'Thank you',
                            style: toptitleStyle,
                          ),
                          SizedBox(
                            height: 1.0.hp,
                          ),
                          Text(
                            'Thanks for spending your valuable time',
                            style: orderdetails,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 3.0.hp,
                  bottom: 6.0.hp,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: (() {
                          Get.back();
                        }),
                        child: Text(
                          'cancel',
                          style: orderdetailsblue,
                        ),
                      ),
                      SizedBox(
                        width: 6.0.wp,
                      ),
                      TextButton(
                        onPressed: (() {
                          Get.back();
                        }),
                        child: Text(
                          'submit',
                          style: orderdetailsblue,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  _showAlertDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Container(
          height: 40.0.hp,
          child: Dialog(
            child: Column(
              children: [],
            ),
          ),
        );
      },
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        imageFiles.add(imageFile);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(backgroundColor: appcolor, title: Text('Review Product')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(children: [
                Container(
                  height: 15.0.hp,
                  width: 25.0.wp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/dress1.jpg',
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 60.0.wp,
                            child: Text(
                              'Trends branded Avaasa kurtis for womens and girls',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: subtitleStyleappcolor,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Container(
                            height: 5.0.hp,
                            width: 50.0.wp,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: ((context, value) {
                                  return Icon(
                                    Icons.star,
                                    size: 20,
                                    color: orange,
                                  );
                                })),
                          ),
                        ),
                      ]),
                )
              ]),
            ),
            Divider(),
            SizedBox(
              height: 1.0.hp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Container(
                height: 4.0.hp,
                width: 20.0.wp,
                decoration: BoxDecoration(
                    color: buttoncolor,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Add Photo',
                    style: buttonprice,
                  ),
                ),
              ),
            ),
            Container(
              height: 10.0.hp,
              width: 50.0.wp,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2.0,
                      childAspectRatio: 4 / 3),
                  itemCount: 2,
                  itemBuilder: (contex, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 10),
                      child: InkWell(
                        onTap: (() {
                          //_getFromGallery();
                          setState(() {
                            selectedindex = index;
                          });
                          selectedindex == 0
                              ? _getFromCamera()
                              : selectImages();
                        }),
                        child: Container(
                          height: 20.0.hp,
                          width: 30.0.wp,
                          decoration: BoxDecoration(
                              color: screenbackground,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            iconList[index].icon,
                            color: appcolor,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            selectedindex == 0 || selectedindex == 1
                ? Padding(
                    padding: const EdgeInsets.only(
                      left: 28.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'capture the camera',
                          style: orderdetails,
                        ),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Container(
                            height: 10.0.hp,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imageFiles.length,
                                itemBuilder: ((context, e) {
                                  return Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Image.file(File(
                                            imageFiles[e].path.toString())),
                                      ),
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                              backgroundColor: appcolor,
                                              radius: 10,
                                              child: InkWell(
                                                  onTap: (() {
                                                    setState(() {
                                                      imageFiles.removeAt(e);
                                                    });
                                                  }),
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 12,
                                                    color: screenbackground,
                                                  ))))
                                    ],
                                  );
                                }))),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'pick Gallery images',
                                style: orderdetails,
                              ),
                              SizedBox(
                                height: 1.0.hp,
                              ),
                              Container(
                                  height: 8.0.hp,
                                  width: 100.0.wp,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imageFileList!.length,
                                      itemBuilder: ((context, index) {
                                        return Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Image.file(File(
                                                  imageFileList![index].path)),
                                            ),
                                            Positioned(
                                                top: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                    backgroundColor: appcolor,
                                                    radius: 10,
                                                    child: InkWell(
                                                        onTap: (() {
                                                          setState(() {
                                                            imageFileList!
                                                                .removeAt(
                                                                    index);
                                                          });
                                                        }),
                                                        child: Icon(
                                                          Icons.close,
                                                          size: 12,
                                                          color:
                                                              screenbackground,
                                                        ))))
                                          ],
                                        );
                                      }))),
                            ])
                      ],
                    ),
                  )
                : Container(),
            imageFile == null
                ? Padding(
                    padding: const EdgeInsets.only(left: 28.0, top: 20),
                    child: Text(
                      'upload photos related to he product like unboxing installation product usage etc...',
                      style: orderdetailshint,
                    ),
                  )
                : Container(),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Container(
                height: 4.0.hp,
                width: 25.0.wp,
                decoration: BoxDecoration(
                    color: buttoncolor,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Write a Review',
                    style: buttonprice,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 10),
              child: Container(
                height: 16.00.hp,
                width: 90.00.wp,
                decoration: BoxDecoration(
                    color: screenbackground,
                    border: Border.all(color: formhintcolor),
                    borderRadius: BorderRadius.circular(5.0)),
                child: TextFormField(
                  minLines:
                      6, // any number you need (It works as the rows for the textarea)
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText:
                        'How is the product? What do you like? What do you hate?',
                    hintStyle: orderdetailshint,
                    hintMaxLines: 2,
                    border: InputBorder.none,
                  ),
                  style: subtitleStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: (() {
                    //_showAlertDialog();
                    shoudi();
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 30.0.wp,
                    color: appcolor,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: buttontext,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
