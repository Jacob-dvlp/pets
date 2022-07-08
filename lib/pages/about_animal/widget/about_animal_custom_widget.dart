import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_imports_page.dart';
import '../about_animal_controller.dart';

class AboutAnimalCustomWidget extends StatelessWidget {
  const AboutAnimalCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutAnimalController>(
        init: AboutAnimalController(),
        builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.withAlpha(20),
                    maxRadius: 150,
                    child: CircleAvatar(
                      maxRadius: 100,
                      backgroundColor: Colors.blue.withAlpha(40),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                    controller.argument[5]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFffffff),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          controller.argument[0] == null
                              ? Container()
                              : Text(
                                  controller.argument[0],
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.room),
                              const SizedBox(
                                width: 05,
                              ),
                              controller.argument[1] == null
                                  ? Container()
                                  : Text(
                                      controller.argument[1],
                                      style: const TextStyle(fontSize: 15),
                                    ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                clipBehavior: Clip.hardEdge,
                                elevation: 20,
                                child: SizedBox(
                                  width: 90,
                                  height: 40,
                                  child: Column(
                                    children: const [
                                      Text(
                                        '4 Mês',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Idade',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.hardEdge,
                                elevation: 20,
                                child: SizedBox(
                                  width: 90,
                                  height: 40,
                                  child: Column(
                                    children: [
                                      controller.argument[4] == null
                                          ? Container()
                                          : Flexible(
                                            child: Text(
                                                controller.argument[4],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                          ),
                                      const Text(
                                        'Grupo',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.hardEdge,
                                elevation: 20,
                                child: SizedBox(
                                  width: 90,
                                  height: 40,
                                  child: Column(
                                    children: [
                                      controller.argument[2] == null
                                          ? Container()
                                          : Text(
                                              '${controller.argument[2]} Kg',
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                      const Text(
                                        'Peso',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Temperamento',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: controller.argument[1] == null
                                ? Container()
                                : Text(
                                    controller.argument[3],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
