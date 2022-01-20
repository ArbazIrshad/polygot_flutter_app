import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../dashboard/presentation/views/profile_view.dart';
import 'premium_view.dart';

import '../widgets/expansion_setting_tile_widget.dart';

class ExpansionTileElement {
  final String leadingText;
  final String? trailingText;
  final Widget? trailingWidget;

  const ExpansionTileElement(
      {required this.leadingText, this.trailingWidget, this.trailingText});
}

const tileElementsList = [
  ExpansionTileElement(
    leadingText: 'Profile Picture',
    trailingText: 'Add/Change',
  ),
  ExpansionTileElement(
    leadingText: 'Informations',
    trailingText: '>',
  ),
  ExpansionTileElement(
    leadingText: 'Reset Password',
    trailingText: '>',
  ),
  ExpansionTileElement(
    leadingText: 'Facebook',
    trailingText: 'Connected',
  ),
  ExpansionTileElement(
    leadingText: 'Gmail',
    trailingText: 'Connected',
  ),
  ExpansionTileElement(
    leadingText: 'Apple',
    trailingText: 'Connected',
  ),
];

var settingsElementsList = [
  ExpansionTileElement(
    leadingText: 'Theme',
    trailingWidget: Switch(
      value: true, onChanged: (value) {}, activeColor: Color(0xA65ADFFC),
      // trackColor: Color(0xFF03111B),
    ),
    // trailingText: 'Add/Change',
  ),
  ExpansionTileElement(
    leadingText: 'App Language',
    trailingText: 'Change',
  ),
  ExpansionTileElement(
    leadingText: 'Notifications',
    trailingText: '>',
  ),
  ExpansionTileElement(
    leadingText: 'Daily Goal',
    trailingText: '>',
  ),
  ExpansionTileElement(
    leadingText: 'Practice Reminder',
    trailingWidget: Switch(
      value: false, onChanged: (value) {}, activeColor: Color(0xA65ADFFC),
      // trackColor: Color(0xFF03111B),
    ),
  ),
  ExpansionTileElement(
    leadingText: 'Time of Reminder',
    trailingText: '',
  ),
];

const accountSettingsList = [
  'Feedback',
  'Help',
  'Logout',
  'Reset All Progress',
  'Logout',
  'Delete Account'
];

const privacySettingsList = [
  'Terms of Use',
  'Privacy Policy',
];

const permiumSettingsList = [
  'Restore Purchase',
  'Refunds',
];

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2B2E5D),
              Color(0xFF282F54),
            ],
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 26.0,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 26.0,
              ),
              ExpandedSettingPanel(
                icon: Icons.account_circle_outlined,

                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'Account',
                elementList: tileElementsList
                    .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: ExpandedSettingTileWidget(
                          onTap: () {
                            Get.to(() => ProfileView());
                          },
                          children: [
                            Text(
                              e.leadingText,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              e.trailingText ?? '',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        )))
                    .toList(),
              ),
              const SizedBox(height: 8.0),
              ExpandedSettingPanel(
                icon: Icons.app_settings_alt_rounded,
                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'General',
                elementList: accountSettingsList
                    .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: ExpandedSettingTileWidget(
                          children: [
                            Spacer(),
                            Text(
                              e,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Spacer(),
                          ],
                        )))
                    .toList(),
              ),
              const SizedBox(height: 8.0),
              ExpandedSettingPanel(
                icon: Icons.settings,
                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'Settings',
                elementList: settingsElementsList
                    .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: ExpandedSettingTileWidget(
                          children: [
                            Text(
                              e.leadingText,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            e.trailingText != null
                                ? Text(
                                    e.trailingText ?? '',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Colors.white),
                                  )
                                : Container(child: e.trailingWidget),
                          ],
                        )))
                    .toList(),
              ),
              const SizedBox(height: 8.0),
              ExpandedSettingPanel(
                  icon: Icons.menu_book,
                  // isExpanded: isExpanded,
                  // elementList: tileElementsList,
                  onExpansionChanged: (isOpen) {
                    setState(() {
                      isExpanded = isOpen;
                    });
                  },
                  panelHeading: 'Exercise',
                  elementList: [
                    ExpandedSettingTileWidget(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Native Subtitle',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              'See words in native language',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                          trackColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.white;
                            }
                          }),
                          activeColor: Color(0xFFB0BEC5),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    ExpandedSettingTileWidget(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Roman Assitant',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              'See pronunciation in native alphabet',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                          trackColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.white;
                            }
                          }),
                          activeColor: Color(0xFFB0BEC5),
                        )
                      ],
                    ),
                  ]
                  //  tileElementsList
                  //     .map((e) => Container(
                  //         margin: const EdgeInsets.only(bottom: 4.0),
                  //         child: ExpandedSettingTileWidget(
                  //           children: [
                  //             Text(
                  //               e.leadingText,
                  //               style: TextStyle(
                  //                   fontFamily: 'Roboto',
                  //                   fontWeight: FontWeight.w500,
                  //                   fontSize: 14,
                  //                   color: Colors.white),
                  //             ),
                  //             Spacer(),
                  //             Text(
                  //               e.trailingText ?? '',
                  //               style: TextStyle(
                  //                   fontFamily: 'Roboto',
                  //                   fontWeight: FontWeight.w300,
                  //                   fontSize: 12,
                  //                   color: Colors.white),
                  //             ),
                  //           ],
                  //         )))
                  //     .toList(),
                  ),
              const SizedBox(height: 8.0),
              ExpandedSettingPanel(
                icon: Icons.privacy_tip_outlined,
                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'Privacy',
                elementList: privacySettingsList
                    .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: ExpandedSettingTileWidget(
                          children: [
                            Spacer(),
                            Text(
                              e,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Spacer(),
                          ],
                        )))
                    .toList(),
              ),
              const SizedBox(height: 8.0),
              ExpandedSettingPanel(
                icon: Icons.star_border,

                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'Premium',
                elementList: permiumSettingsList
                    .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 4.0),
                        child: ExpandedSettingTileWidget(
                          onTap: () {
                            Get.to(() => PremiumView());
                          },
                          children: [
                            Spacer(),
                            Text(
                              e,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Spacer(),
                          ],
                        )))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandedSettingPanel extends StatefulWidget {
  final void Function(bool) onExpansionChanged;
  final String panelHeading;
  final IconData icon;
  // final List<Widget> children;
  final List<Widget> elementList;

  const ExpandedSettingPanel({
    Key? key,
    // required this.isExpanded,
    required this.onExpansionChanged,
    required this.panelHeading,
    // required this.children,
    required this.elementList,
    required this.icon,
  }) : super(key: key);

  // final bool isExpanded;

  @override
  State<ExpandedSettingPanel> createState() => _ExpandedSettingPanelState();
}

class _ExpandedSettingPanelState extends State<ExpandedSettingPanel> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 48,

      decoration: !isExpanded
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Colors.white10),
              color: Colors.white.withOpacity(0.05))
          : null,
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            // backgroundColor: Colors.white,
            // maintainState: ,
            initiallyExpanded: isExpanded,
            onExpansionChanged: (isOpen) {
              // widget.onExpansionChanged,
              setState(() {
                isExpanded = isOpen;
              });
            },
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(
              widget.icon,
              color: Colors.white,
            ),
            title: Text(
              widget.panelHeading,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            children: widget.elementList),
      ),
    );
  }
}
