import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/card_already_added.dart';
import 'package:flutter_application_1/widgets/card_tile.dart';

class GooglePayScreen extends StatefulWidget {
  const GooglePayScreen({super.key});

  @override
  State<GooglePayScreen> createState() => _GooglePayScreenState();
}

class _GooglePayScreenState extends State<GooglePayScreen> {
  final ScrollController _scrollController = ScrollController();
  String? selectedImage;

  void _showCardAlreadyAddedBottomSheet() {
    if (selectedImage == null) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => CardAlreadyAddedBottomSheet(
            cardImage: selectedImage!,
            onOkayPressed: () {
              Navigator.pop(context);
            },
          ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF211A2E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Add to Google Pay",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: Colors.grey),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      width: 88,
                      height: 45.42,
                      margin: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/image 1264.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48),
                    child: Text(
                      "Say hello to effortless and secure payments",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 46),
                    child: Text(
                      "Add your Alaan card to Google Pay and enjoy quick, secure payments wherever you go.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  RawScrollbar(
                    controller: _scrollController,
                    thumbVisibility: true,
                    trackVisibility: true,
                    interactive: true,
                    radius: const Radius.circular(5),
                    thickness: 8,
                    scrollbarOrientation: ScrollbarOrientation.right,
                    child: SizedBox(
                      height: 300,
                      child: ListView(
                        controller: _scrollController,
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          CardTile(
                            type: "Seminar expenses",
                            number: "Physical ...3443",
                            image: 'assets/Small Cards.png',
                            isSelected:
                                selectedImage == 'assets/Small Cards.png',
                            onTap: () {
                              setState(() {
                                selectedImage = 'assets/Small Cards.png';
                              });
                            },
                          ),
                          const SizedBox(width: 15),
                          CardTile(
                            type: "Work related expense",
                            number: "Virtual ...3443",
                            image: 'assets/Small Cards pink.png',
                            isSelected:
                                selectedImage == 'assets/Small Cards pink.png',
                            onTap: () {
                              setState(() {
                                selectedImage = 'assets/Small Cards pink.png';
                              });
                            },
                          ),
                          const SizedBox(width: 15),
                          CardTile(
                            type: "Product Team",
                            number: "Virtual ...3443",
                            image: 'assets/Small Cards pink.png',
                            isSelected:
                                selectedImage == 'assets/Small Cards.png pink',
                            onTap: () {
                              setState(() {
                                selectedImage = 'assets/Small Cards.png pink';
                              });
                            },
                          ),
                          const SizedBox(width: 15),
                          CardTile(
                            type: "Seminar expenses",
                            number: "Virtual ...3443",
                            image: 'assets/Small Cards pink.png',
                            onTap: () {
                              setState(() {
                                selectedImage = 'assets/Small Cards pink.png';
                              });
                            },
                          ),
                          CardTile(
                            type: "Seminar expenses",
                            number: "Virtual ...3443",
                            image: 'assets/Small Cards pink.png',
                            onTap: () {
                              setState(() {
                                selectedImage = 'assets/Small Cards pink.png';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: _showCardAlreadyAddedBottomSheet,
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Add to ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 62,
                                height: 24,
                                margin: const EdgeInsets.only(right: 5),
                                child: Image.asset('assets/Logo.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        "Maybe Later",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
