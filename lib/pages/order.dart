import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPage createState() => _OrderPage();
}

class _OrderPage extends State<OrderPage> with TickerProviderStateMixin {
  bool _isExpanded = false;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void setIndexState(index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF9F9F9),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                child: TabBar(
                  dividerHeight: 0,
                  controller: _tabController,
                  labelStyle: TextStyle(color: ColorMain.primary),
                  onTap: (index) {
                    _tabController.animateTo(index);
                    setIndexState(index);
                  },
                  unselectedLabelColor:
                      Colors.grey, // Color of the inactive tab labels
                  // Color of the line under the active tab
                  tabs: const [
                    Tab(
                      child: Button(
                        child: Text(
                          "Deliver",
                          style: TextStyle(
                              color: ColorMain.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Tab(
                      child: Button(
                        child: Text(
                          "Deliver",
                          style: TextStyle(
                              color: ColorMain.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(
              //     child: TabBarView(
              //   controller: _tabController,
              //   children: const [
              //     Center(child: Text("Car Tab Content")),
              //     Center(child: Text("Transit Tab Content")),
              //   ],
              // ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: Container(
          color: ColorMain.white,
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    isExpanded: _isExpanded,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppSVG.wallet(color: ColorMain.primary),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cash/Wallet',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorMain.third,
                                ),
                              ),
                              Text(
                                '\$ 4.53',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorMain.primary,
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                    body: const ListTile(
                      title: Text('Order details go here'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Button(
                borderRadius: BorderRadius.circular(16),
                width: double.maxFinite,
                child: const Text(
                  'Order',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorMain.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
