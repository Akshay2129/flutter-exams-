import 'package:app/cubit/get_api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<GetApiCubit>().getapi();
    super.initState();
  }

  // Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<GetApiCubit, GetApiState>(
            builder: (context, state) {
              if (state is GetApiLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is GetApiError) {
                return Center(child: Text(state.message.toString()));
              } else if (state is GetApiSuccess) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.getApiModel?.data?.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "name:${state.getApiModel?.data?.items?[index].name ?? "nuLL"}"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "icon:${state.getApiModel?.data?.items?[index].icon ?? "nuLL"}"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "badges:${state.getApiModel?.data?.items?[index].badges ?? "nuLL"}"),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              // Uri _url = Uri.parse(
                              //     '${state.getApiModel?.data?.items?[index].url ?? "nuLL"}');
                              // Uri.file("${state.getApiModel?.data?.items?[index].url ?? "nuLL"}");
                              launch(state.getApiModel?.data?.items?[index].url ?? "nuLL");
                              
                            },
                            child: Text(
                                "url:${state.getApiModel?.data?.items?[index].url ?? "nuLL"}"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                );
              }
              return const Text("Home Screen");
            },
          )
        ],
      ),
    );
  }
}
