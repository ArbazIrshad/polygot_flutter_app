import 'package:flutter/material.dart';

class ExpansionTileElement {
  final String leadingText;
  final String trailingText;

  const ExpansionTileElement(
      {required this.leadingText, required this.trailingText});
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF2B2E5D), Color(0xFF282F54)])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
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
                              e.trailingText,
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
                elementList: tileElementsList
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
                            Text(
                              e.trailingText,
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
                icon: Icons.menu_book,
                // isExpanded: isExpanded,
                // elementList: tileElementsList,
                onExpansionChanged: (isOpen) {
                  setState(() {
                    isExpanded = isOpen;
                  });
                },
                panelHeading: 'Exercise',
                elementList: tileElementsList
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
                            Text(
                              e.trailingText,
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
              color: Colors.white.withOpacity(0.05)
              // gradient: LinearGradient(
              //   colors: [Colors.white, Colors.white.withOpacity(0.0)],
              // ),
              )
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
            children: widget.elementList
            // elementList
            //     .map((e) => Container(
            //         margin: const EdgeInsets.only(bottom: 4.0),
            //         child: ExpansionTileChildWidget(
            //           leadingText: e.leadingText,
            //           trailingText: e.trailingText,
            //           children: children,
            //         )))
            //     .toList()
            ),
      ),
    );
  }
}

class ExpandedSettingTileWidget extends StatelessWidget {
  final List<Widget> children;
  const ExpandedSettingTileWidget({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.white10),
          color: Colors.white.withOpacity(0.05)
          // gradient: LinearGradient(
          //   colors: [Colors.white, Colors.white.withOpacity(0.0)],
          // ),
          ),
      height: 38.0,
      child: Row(
        children: children,
      ),
    );
  }
}
