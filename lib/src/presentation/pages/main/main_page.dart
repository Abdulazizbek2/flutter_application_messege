import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/home_bloc/home_bloc.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/app_bar_component.dart';
import 'package:flutter_application_messege/src/presentation/pages/main/widgets/custom_profile_item.dart';
import 'package:flutter_application_messege/src/presentation/routes/routes.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Style.white,
      appBar: const AppBarComponent(
        title: "Чаты",
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        {
          print(state.chats?[0].lastMessaage?.dateTime);
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    itemCount: state.chats?.length ?? 0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomProfileItem(
                        chatModel: state.chats?[index],
                        onTap: () {
                          Navigator.of(context)
                              .push(AppRoutes.chats(
                                  chatModel: state.chats?[index],
                                  context: context))
                              .then((value) => setState(() {
                                    context
                                        .read<HomeBloc>()
                                        .add(const HomeEvent.getChats());
                                  }));
                        },
                      );
                    }),
              ],
            ),
          );
        }
      }),
    );
  }
}
