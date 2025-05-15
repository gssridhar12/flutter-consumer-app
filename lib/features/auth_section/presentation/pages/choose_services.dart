import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';

//
// class ChooseService extends StatefulWidget {
//   const ChooseService({super.key});
//
//   @override
//   State<ChooseService> createState() => _ChooseServiceState();
// }
//
// class _ChooseServiceState extends State<ChooseService> {
//   int? _value;
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//
//     return ColoredSafeArea(
//       color: bggray,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(60),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: padding, vertical: padding),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: const Icon(
//                     (Icons.arrow_circle_left_outlined),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(10.0),
//                   child: Text(
//                     'What are you looking for?',
//                     style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: Stack(
//           children: [
//             SingleChildScrollView(
//               physics: const BouncingScrollPhysics(),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'You can select multiple services',
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                         color: colorblack.withOpacity(0.5)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padding15),
//                     child: GridView.builder(
//                       physics: const NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                       ),
//                       itemCount: 8,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Padding(
//                           padding: const EdgeInsets.all(padding5),
//                           child: CustomChip(
//                             borderRadius: 12,
//                             fontSize: 16,
//                             image: 'assets/images/layer1.png',
//                             label: 'Make up artists',
//                             width: width * 0.25,
//                             height: width * 0.25,
//                             color: colorred.withOpacity(0),
//                             selected: _value == index,
//                             isShadow: true,
//                             onSelect: (string) {
//                               setState(
//                                 () {
//                                   _value = (string ? index : null)!;
//                                   isSelected = true;
//                                 },
//                               );
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: width * 0.3,
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: width * 0.05,
//               bottom: 0,
//               right: width * 0.05,
//               child: ButtonWidget(
//                   onPressed: () {
//                     if (isSelected) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const ThreeOptionsPage()),
//                       );
//                     }
//                   },
//
//                 color: isSelected == false ? colorgrey : colorred,
//                 text: 'Continue',
//                 isPushreplacement: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



class ChooseService extends StatefulWidget {
  const ChooseService({super.key});

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  List<String> selectedServices = [];

  final List<Map<String, String>> services = [
    {'name': 'Pet groomers', 'icon': 'assets/images/services/groomer.png'},
    {'name': 'Walkers', 'icon': 'assets/images/services/walkers.png'},
    {'name': 'Veterinarians', 'icon': 'assets/images/services/vets.png'},
    {'name': 'Pet Parks', 'icon': 'assets/images/services/parks.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        backgroundColor: bggray,
        appBar: AppBar(
          backgroundColor: bggray,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: colorblack),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            'Who are you looking for?',
            style: TextStyle(
              color: colorblack,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding15),
          child: Column(
            children: [
              sbox5,
              const Text(
                'You can select multiple services',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              sbox20,
              Expanded(
                child: GridView.builder(
                  itemCount: services.length + 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    if (index == services.length) {
                      return _buildSkipCard(context);
                    }

                    final service = services[index];
                    final isSelected = selectedServices.contains(service['name']);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected
                              ? selectedServices.remove(service['name'])
                              : selectedServices.add(service['name']!);
                        });
                      },
                      child: _buildServiceCard(service, isSelected),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: padding15),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedServices.isEmpty
                          ? colorgrey.withOpacity(0.5)
                          : colorred,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: selectedServices.isEmpty
                        ? null
                        : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ThreeOptionsPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCard(Map<String, String> service, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorwhite,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
        border: Border.all(
          color: isSelected ? colorred : Colors.transparent,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            service['icon']!,
            height: 40,
            width: 40,
            color: colorred,
          ),
          sbox,
          Text(
            service['name']!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: colorblack,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkipCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const ThreeOptionsPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorgrey.withOpacity(0.2),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Skip  →',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
