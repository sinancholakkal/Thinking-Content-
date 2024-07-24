import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week_four/screens/screen_login.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final List<Map<String, String>> users = [
    {
      "text":
          "three interconnected thinking  heads on solid white background. Facing same way. Feel like a transition from despair to transformation and freedom. Bold, vibrant colors, reds, corals, deep, blues, yellows. Intricate pattern. Inner workings of the mind.",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2446852233/display_1500/stock-photo-three-interconnected-thinking-heads-on-solid-white-background-facing-same-way-feel-like-a-2446852233.jpg"
    },
    {
      "text":
          "robot typing on keyboard, digital art, cgi rendering, contemporary era, high dynamic range, predominantly dark hues with neon green highlights.",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2430457137/display_1500/stock-photo-robot-typing-on-keyboard-digital-art-cgi-rendering-contemporary-era-high-dynamic-range-2430457137.jpg"
    },
    {
      "text":
          "Mature business man executive manager looking at laptop computer watching online webinar training or having virtual meeting video conference taking notes, doing market research working in office.",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2066562665/display_1500/stock-photo-mature-business-man-executive-manager-looking-at-laptop-computer-watching-online-webinar-training-2066562665.jpg"
    },
    {
      "text":
          "Art nouveau artistic image of 3/4 image of a boy slouching and walking with his hands in his pockets. he is sad. he is wearing a hat that wraps around his head. it has rabbit ears on it. only his face is visible",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2384430987/display_1500/stock-photo-art-nouveau-artistic-image-of-image-of-a-boy-slouching-and-walking-with-his-hands-in-his-2384430987.jpg"
    },
    {
      "text":
          " an image that incorporates technology and creative thinking outside the box, and a minimalist and futuristic image.using max 4 colors",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2445299809/display_1500/stock-photo--an-image-that-incorporates-technology-and-creative-thinking-outside-the-box-and-a-minimalist-and-2445299809.jpg"
    },
    {
      "text":
          "Indoor photo of  full view of teen boxing fight ending ko, white floor, 18 year old turkish and 16 year old blond german boxer, slim body, slim muscles, very short hair, red letters on the wall ",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2460873103/display_1500/stock-photo-indoor-photo-of-full-view-of-teen-boxing-fight-ending-ko-white-floor-year-old-turkish-and-2460873103.jpg"
    },
    {
      "text": "TV out of order, 3D cartoon style",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2461680959/display_1500/stock-photo-tv-out-of-order-d-cartoon-style-2461680959.jpg"
    },
    {
      "text":
          "3D Realistic, boy, 15 years old, smiling, cute, short black hair, Thai, Cyan shirt, white cargo pants, Cyan and white sneakers, standing next to a modern robot, made from high quality matte white plastic.",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2420769839/display_1500/stock-photo--d-realistic-boy-years-old-smiling-cute-short-black-hair-thai-cyan-shirt-white-cargo-2420769839.jpg"
    },
    {
      "text":
          "Abstract art on paper cut out a PLANETARIUM in the center, using a palette of red, blue, green, orange, yellow, black and purple, with simple but colorful illustrations symbolizing art, entertainment and commerce and very detailed on a dark background,",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2448389741/display_1500/stock-photo-abstract-art-on-paper-cut-out-a-planetarium-in-the-center-using-a-palette-of-red-blue-green-2448389741.jpg"
    },
    {
      "text": "Art nouveau artistic image of rabbit full body in nature ",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2406067873/display_1500/stock-photo-art-nouveau-artistic-image-of-rabbit-full-body-in-nature-2406067873.jpg"
    },
    {
      "text":
          "Cartoon lemon with sweatband around its forehead running a marathon in the street",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2448771247/display_1500/stock-photo-cartoon-lemon-with-sweatband-around-its-forehead-running-a-marathon-in-the-street-2448771247.jpg"
    },
    {
      "text":
          "Advertising - testimonial photo of profile person, thinking and innovating technological ideas ",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2472099537/display_1500/stock-photo-advertising-testimonial-photo-of-profile-person-thinking-and-innovating-technological-ideas-2472099537.jpg"
    },
    {
      "text":
          "Photo of a heavily pregnant, attractive teenage boy with a sizable belly wearing a flannel maternity shirt, t-shirt, sweatpants, in a hospital room, filled with medical equipment, receiving an ultrasound from a doctor, standing with his boyfriend, shocked",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2406727271/display_1500/stock-photo-photo-of-a-heavily-pregnant-attractive-teenage-boy-with-a-sizable-belly-wearing-a-flannel-2406727271.jpg"
    },
    {
      "text": "photo realistic style, holstein calf and cow, white background",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2474933137/display_1500/stock-photo-photo-realistic-style-holstein-calf-and-cow-white-background-2474933137.jpg"
    },
    {
      "text":
          "Bokeh photo of whispers of the ancestors flowing through cherry point, wa and the san juan islands. enchanting, spiritual, lummi nation",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2452856469/display_1500/stock-photo-bokeh-photo-of-whispers-of-the-ancestors-flowing-through-cherry-point-wa-and-the-san-juan-islands-2452856469.jpg"
    },
    {
      "text":
          "Advertising - testimonial photo of boy with black balloons standing in a destroyed city ",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2363425365/display_1500/stock-photo-advertising-testimonial-photo-of-boy-with-black-balloons-standing-in-a-destroyed-city-2363425365.jpg"
    },
    {
      "text":
          "Outdoor photo of photography of futuristic manufactory , desert in riyadh commercial photography, canon rf 16mm f:2.8 stm lens, blue hue, blue pastel colors, hyperrealistic 4k --ar 16:9 --s 200--style raw",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2486124765/display_1500/stock-photo-outdoor-photo-of-photography-of-futuristic-manufactory-desert-in-riyadh-commercial-photography-2486124765.jpg"
    },
    {
      "text":
          "Close up photo of wizard with long white beard opening car door in forest",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2316392509/display_1500/stock-photo-close-up-photo-of-wizard-with-long-white-beard-opening-car-door-in-forest-2316392509.jpg"
    },
    {
      "text": "thought leadership image with a man in front of an audience with many conceptual ideas",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2439979125/display_1500/stock-photo-thought-leadership-image-with-a-man-in-front-of-an-audience-with-many-conceptual-ideas-2439979125.jpg"
    },
    {
      "text":
          "Black and white photo of reconstruction of a cover of a vintage magazine, top cover title vogue (slightly hidden letters), luxurious background of jewelry and luxury t-shirt with swarovski, elegant woman with jewels, seen from the front caressing a",
      "image":
          "https://www.shutterstock.com/shutterstock/photos/2440607331/display_1500/stock-photo-black-and-white-photo-of-reconstruction-of-a-cover-of-a-vintage-magazine-top-cover-title-vogue-2440607331.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
        actions: [
          //Longout button
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, index) {
          //Squire image property
          if (index % 2 != 0) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Card(  //card squir image
                elevation: 20,
                child: Column(
                  children: [
                    Image.network(users[index]["image"]!),  //Squire image text
                    const SizedBox(
                        height: 10), // Add some space between image and text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(users[index]["text"]!,  //squire image text
                          style: const TextStyle(
                              fontSize: 16, fontStyle: FontStyle.italic)),
                    ),
                  ],
                ),
              ),
            );
          } else {
            //Round images property
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Card(  //Card for rounded
                elevation: 20,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 160,
                      backgroundImage: NetworkImage(
                        users[index]["image"]!, //Round image
                      ),
                    ),
                    const SizedBox(
                        height: 10), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(users[index]["text"]!, //round image text
                          style: const TextStyle(
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

//longout function
  void logout(ctx) {
    showDialog(
      context: ctx,
      builder: (ctx1) {
        return AlertDialog(      //alert box for longout
          title: const Text("Logout"),
          content: const Text("Are you sure?"),
          actions: [
            TextButton(    // AlertDialog No button
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text("No"),    
            ),
            TextButton(          //Yes button for longout
              onPressed: () async {
                final sharedPrefs = await SharedPreferences.getInstance();
                sharedPrefs.clear();
                Navigator.of(ctx).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (ctx1) => const ScreenLogin()),
                  (_) => false,
                );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}
