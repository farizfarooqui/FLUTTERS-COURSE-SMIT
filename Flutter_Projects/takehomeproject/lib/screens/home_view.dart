import 'package:flutter/material.dart';
import 'package:takehomeproject/data/api.dart';
import 'package:takehomeproject/screens/detail_view.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    await Api.fetchNobelPrizes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.amber,
          title: const Center(
              child: Text(
            '      Nobel Prizes',
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            IconButton(onPressed: (){
              fetchData();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeView()));
            },
             icon: const Icon(Icons.replay_rounded,
             color: Colors.black,
             ))
          ],
        ),
        body: ListView.builder(
            itemCount: Api.nobelPrizes.length,
            itemBuilder: (context, index) {
              final nobelPrize = Api.nobelPrizes[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailView(
                                nobelPrize: nobelPrize,
                              )));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 8,left: 8),
                          child: const CircleAvatar(
                            child: Icon(
                              Icons.person,
                              size: 40,
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.80,
                                child: Text(
                                  '${nobelPrize.awardYear}-${nobelPrize.category}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Positioned(
                                right: 0,
                                top: 0,
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Date Awarded:${nobelPrize.dateAwarded}',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),

                          for (var laureate in nobelPrize.laureates ?? [])
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Laureate: ${laureate.knownName}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width - 85,
                                ),
                                child: Text(
                                  'Motivation: ${laureate.motivation} \n',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}