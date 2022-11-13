import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_ucon/constants.dart';
import 'package:new_ucon/utils/actionHandler.dart';

import '../model/film.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  final FocusNode _cancelButFocus = FocusNode();
  final FocusNode _searchBarFocus = FocusNode();
  ScrollController listScrollController = ScrollController();
  int lastElement = 0;
  List<FocusNode> allFocusList =
      List.generate(Repository.allElements.length, (index) => FocusNode());
  List<Film> allElements = Repository.allElements;

  @override
  void dispose() {
    allFocusList.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HandleRemoteActionsWidget(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset('assets/images/background_home.jpg').image,
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: buildAppBar(context),
                body: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6, childAspectRatio: 135 / 200),
                  controller: listScrollController,
                  scrollDirection: Axis.vertical,
                  itemCount: allElements.length,
                  itemBuilder: (context, index) {
                    return buildMovieItem(
                        allElements[index], index, allFocusList!);
                  },
                ))));
  }

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff00001c),
        title: searchBar(),
        actions: [
          ClickRemoteActionWidget(
              left: () {
                _changeFocus(context, _searchBarFocus);
              },
              enter: () {
                Navigator.pop(context);
              },
              down: () {
                _changeFocus(context, allFocusList?[lastElement]);
              },
              child: Focus(
                focusNode: _cancelButFocus,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.cancel_outlined,
                    color: _cancelButFocus.hasFocus ? Colors.yellow : null,
                  ),
                ),
              ))
        ]);
  }

  void _searching(String value) {
    List<Film> searchLocationList = [];
    if (value.isNotEmpty) {
      for (var i = 0; i < Repository.allElements.length; i++) {
        if (Repository.allElements[i].name
            .toLowerCase()
            .contains(value.toLowerCase())) {
          searchLocationList.add(Repository.allElements[i]);
        }
      }
      allElements = searchLocationList;
    } else {
      allElements = Repository.allElements;
    }
    allFocusList.forEach((element) {
      element.dispose();
    });
    allFocusList.clear();
    allFocusList = List.generate(allElements.length, (index) => FocusNode());
    setState(() {});
  }

  Widget searchBar() {
    return ClickRemoteActionWidget(
        down: () {
          _changeFocus(context, allFocusList?[0]);
        },
        child: TextField(
            focusNode: _searchBarFocus,
            onChanged: (value) {
              _searching(value);
            },
            onSubmitted: (value) {
              _changeFocus(context, allFocusList!.first);
            },
            decoration: InputDecoration(
                hintText: "Поиск...",
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
            autofocus: true,
            style: TextStyle(fontSize: 16, color: Colors.white)));
  }

  _changeFocus(BuildContext context, FocusNode? node) {
    FocusScope.of(context).requestFocus(node);
    setState(() {});
  }

  Widget buildMovieItem(Film item, int index, List<FocusNode> focusList) {
    return ClickRemoteActionWidget(
      up: () {
        if (index < 6) {
          _changeFocus(context, _cancelButFocus);
          lastElement = index;
        } else {
          if (index < (Repository.allElements.length - 6)) {
            _changeFocus(context, focusList[index - 6]);
            int group = 1;
            while (true) {
              if ((index + 1) - (6 * group) <= 0) {
                break;
              } else {
                group++;
              }
            }
            group -= 2;
            listScrollController.animateTo(group * (200 + 30),
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          }
        }
      },
      right: () {
        if (focusList != null && (focusList.length - 1) != index) {
          _changeFocus(context, focusList[index + 1]);
          if (((index + 1) % 6) == 0) {
            int group = 1;
            while (true) {
              if ((index + 1) - (6 * group) <= 0) {
                break;
              } else {
                group++;
              }
            }
            listScrollController.animateTo(group * (200 + 30),
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          }
        }
      },
      down: () {
        if (index < (Repository.allElements.length - 6)) {
          _changeFocus(context, focusList[index + 6]);
          int group = 1;
          while (true) {
            if ((index + 1) - (6 * group) <= 0) {
              break;
            } else {
              group++;
            }
          }
          listScrollController.animateTo(group * (200 + 30),
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn);
        }
      },
      left: () {
        if (focusList != null && index != 0) {
          _changeFocus(context, focusList[index - 1]);
          if (((index) % 6) == 0) {
            int group = 1;
            while (true) {
              if ((index + 1) - (6 * group) <= 0) {
                break;
              } else {
                group++;
              }
            }
            group -= 2;
            listScrollController.animateTo(group * (200 + 30),
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          }
        }
      },
      child: Focus(
        focusNode: focusList?[index],
        child: Container(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          child: Card(
            elevation: 5.0,
            clipBehavior: Clip.antiAlias,
            margin: (focusList != null && focusList![index].hasFocus)
                ? const EdgeInsets.symmetric(horizontal: 7, vertical: 3)
                : const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  border: (focusList != null && focusList![index].hasFocus)
                      ? Border.all(color: Colors.yellow, width: 3)
                      : null),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    item.imageLink,
                    fit: BoxFit.fill,
                    height: 160,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      item.name,
                      style: TextStyle(color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
