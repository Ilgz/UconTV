import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_ucon/views/channel_play_page.dart';

import '../blocs/home/home_bloc.dart';
import '../data/channels.dart';
import '../data/constants.dart';
import '../utils/actionHandler.dart';
class ChannelItem extends StatelessWidget {
  ChannelItem({Key? key,required this.channel,required this.index,required this.focusNode,required this.row,required this.focusList}) : super(key: key);
  ChannelItemModel channel;
  int index;
  FocusNode focusNode;
  int row;
  List<FocusNode> focusList;
  @override
  Widget build(BuildContext context) {
    return ClickRemoteActionWidget(
      enter: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChannelPlay(channelName:channel.name)));
      },
       up: () {
        if (row == 1) {
          HomeClass.channelIndex = index;
          BlocProvider.of<HomeBloc>(context).add(ActionRowOneRowTwoEvent());
        } else {
          HomeClass.channelIndex = index;
          BlocProvider.of<HomeBloc>(context).add(ActionMovieOneRowOneEvent());
            HomeClass.pageController.animateTo(270,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
        }
      },
      right: () {
        if (row == 0) {
          if ((focusList.length - 1) != index) {
            BlocProvider.of<HomeBloc>(context).add(ActionRowOneRightEvent(index));

          }
        } else {
          if ((focusList.length - 1) != index) {
            BlocProvider.of<HomeBloc>(context).add(ActionRowTwoRightEvent(index));
          }
        }
      },
      down: () {
        if (row == 0) {
          HomeClass.channelIndex = index;
          BlocProvider.of<HomeBloc>(context).add(ActionRowOneRowTwoEvent());
        } else {
         HomeClass.channelIndex = index;
         BlocProvider.of<HomeBloc>(context).add(ActionRowTwoCategoryTwoEvent());
          HomeClass.pageController.animateTo(610,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn);
        }
      },
      left: () {
        if (index != 0) {
          if (row == 0) {
            BlocProvider.of<HomeBloc>(context).add(ActionRowOneLeftEvent(index));
          } else {
            BlocProvider.of<HomeBloc>(context).add(ActionRowTwoLeftEvent(index));
          }
        }
      },
      child: Focus(
        focusNode: focusNode,
        child: SizedBox(
          width: 160,
          child: Card(
            elevation: 5.0,
            clipBehavior: Clip.antiAlias,
            // margin: focusNode.hasFocus
            //     ? const EdgeInsets.symmetric(horizontal: 7, vertical: 3)
            //     : const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  border: focusNode.hasFocus
                      ? Border.all(color: Colors.yellow, width: 5)
                      : null),
              child: Image.network(
                channel.imageLink,
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
