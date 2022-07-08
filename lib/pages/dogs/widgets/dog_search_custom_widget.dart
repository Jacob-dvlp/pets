import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../infra/models/dogs/model_response_dog.dart';
import '../../../routes/app_imports_page.dart';
import '../dogs_controller.dart';

class DogSearchCustomWidget extends StatelessWidget {
  const DogSearchCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DogsController>(
      init: DogsController(Get.find()),
      builder: (controller) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.searchDogs.length,
            itemBuilder: (context, index) {
              final ResponseModelDog model = controller.searchDogs[index];
              return GestureDetector(
                onTap: () => Get.toNamed(
                  AboutAnimalPage.routName,
                  arguments: [
                    model.name,
                    model.origin,
                    model.weight!.imperial,
                    model.temperament,
                    model.breedGroup,
                    model.image!.url
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Card(
                      elevation: 20,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      model.image!.url!,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.blueAccent.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: 70,
                                    height: 20,
                                    child: const Center(
                                      child: Text('Nome'),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      model.name == null
                                          ? Container()
                                          : Text(
                                              model.name!,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                            ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.room,
                                            color: Colors.blueAccent
                                                .withOpacity(0.5),
                                            size: 18,
                                          ),
                                          const SizedBox(
                                            width: 05,
                                          ),
                                          model.origin == null
                                              ? Container()
                                              : Text(model.origin!)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
