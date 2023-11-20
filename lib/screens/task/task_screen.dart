import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
    const TaskScreen({super.key});
    
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
				constraints: BoxConstraints.expand(),
				color: Color(0xFFFFFFFF),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Expanded(
							child: Container(
								color: Color(0xFF86c19a),
								width: double.infinity,
								height: double.infinity,
								child: SingleChildScrollView(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											IntrinsicHeight(
												child: Container(
													margin: EdgeInsets.only( bottom: 34),
													width: double.infinity,
													child: Stack(
														children: [
															Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.circular(10),
																				gradient: LinearGradient(
																					begin: Alignment(0, -1),
																					end: Alignment(0, 0.9999999999999998),
																					colors: [
																						Color(0x08ffffff),
																						Color(0x12ffffff),
																					],
																				),
																			),
																			width: double.infinity,
																			child: SizedBox(),
																		),
																	),
																]
															),
															Positioned(
																top: 0,
																left: 0,
																width: 277,
																height: 277,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(10),
																		gradient: LinearGradient(
																			begin: Alignment(0, -1),
																			end: Alignment(0, 0.9999999999999998),
																			colors: [
																				Color(0x08ffffff),
																				Color(0x12ffffff),
																			],
																		),
																	),
																	padding: EdgeInsets.only( left: 25, right: 25),
																	width: 277,
																	height: 277,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 17, bottom: 41),
																				child: Text(
																					'9:41',
																					style: TextStyle(
																						color: Color(0xFFffffff),
																						fontSize: 15,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			Container(
																				margin: EdgeInsets.only( bottom: 39),
																				width: 20,
																				height: 14,
																				child: Image.network(
																					'https://i.imgur.com/1tMFzp8.png',
																					fit: BoxFit.fill,
																				)
																			),
																			Container(
																				width: double.infinity,
																				child: Text(
																					'Type your\nTitle',
																					style: TextStyle(
																						color: Color(0xFFffffff),
																						fontSize: 23,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 228.099853515625,
																left: 25.1845703125,
																width: 70,
																height: 98,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(8),
																		color: Color(0xFFffffff),
																	),
																	padding: EdgeInsets.only( left: 22, right: 22),
																	width: 70,
																	height: 98,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 31, bottom: 6),
																				child: Text(
																					'10',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 20,
																					),
																				),
																			),
																			Text(
																				'Sun',
																				style: TextStyle(
																					color: Color(0xFF303030),
																					fontSize: 14,
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 219.099853515625,
																left: 103.1845703125,
																width: 76,
																height: 111,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(8),
																		color: Color(0xFF9bd3b0),
																		boxShadow: [
																			BoxShadow(
																				color: Color(0xFF52a06e),
																				blurRadius: 58,
																				offset: Offset(0, 12),
																			),
																		],
																	),
																	padding: EdgeInsets.only( left: 24, right: 24),
																	width: 76,
																	height: 111,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 31, bottom: 5),
																				child: Text(
																					'11',
																					style: TextStyle(
																						color: Color(0xFFffffff),
																						fontSize: 23,
																					),
																				),
																			),
																			Text(
																				'Dec',
																				style: TextStyle(
																					color: Color(0xFFffffff),
																					fontSize: 15,
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 0,
																left: 105.1025390625,
																width: 277,
																height: 277,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(10),
																		gradient: LinearGradient(
																			begin: Alignment(0, -1),
																			end: Alignment(0, 0.9999999999999998),
																			colors: [
																				Color(0x08ffffff),
																				Color(0x12ffffff),
																			],
																		),
																	),
																	width: 277,
																	height: 277,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			IntrinsicHeight(
																				child: Container(
																					margin: EdgeInsets.only( top: 17, bottom: 41, left: 21, right: 21),
																					width: double.infinity,
																					child: Row(
																						mainAxisAlignment: MainAxisAlignment.spaceBetween,
																						children: [
																							Container(
																								width: 17,
																								height: 10,
																								child: Image.network(
																									'https://i.imgur.com/1tMFzp8.png',
																									fit: BoxFit.fill,
																								)
																							),
																							Container(
																								width: 15,
																								height: 11,
																								child: Image.network(
																									'https://i.imgur.com/1tMFzp8.png',
																									fit: BoxFit.fill,
																								)
																							),
																							IntrinsicHeight(
																								child: Container(
																									width: 24,
																									decoration: BoxDecoration(
																										image: DecorationImage(
																											image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																											fit: BoxFit.cover
																										),
																									),
																									child: Column(
																										children: [
																											IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(1.600000023841858),
																														color: Color(0xFFffffff),
																													),
																													margin: EdgeInsets.only( top: 1),
																													width: double.infinity,
																													child: SizedBox(),
																												),
																											),
																										]
																									),
																								),
																							),
																						]
																					),
																				),
																			),
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( bottom: 42, left: 34, right: 34),
																					height: 20,
																					width: double.infinity,
																					child: Image.network(
																						'https://i.imgur.com/1tMFzp8.png',
																						fit: BoxFit.fill,
																					)
																				),
																			),
																			Container(
																				margin: EdgeInsets.symmetric(horizontal: 36),
																				child: Text(
																					'11 Dec, 2020',
																					style: TextStyle(
																						color: Color(0xFFffffff),
																						fontSize: 14,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 225.099853515625,
																left: 187.1845703125,
																width: 70,
																height: 98,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(8),
																		color: Color(0xFFffffff),
																	),
																	padding: EdgeInsets.only( left: 22, right: 22),
																	width: 70,
																	height: 98,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 31, bottom: 6),
																				child: Text(
																					'12',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 20,
																					),
																				),
																			),
																			Text(
																				'Tue',
																				style: TextStyle(
																					color: Color(0xFF303030),
																					fontSize: 14,
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 225.099853515625,
																left: 265.1845703125,
																width: 70,
																height: 98,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(8),
																		color: Color(0xFFffffff),
																	),
																	padding: EdgeInsets.only( left: 19, right: 19),
																	width: 70,
																	height: 98,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 31, bottom: 6),
																				child: Text(
																					'13',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 20,
																					),
																				),
																			),
																			Text(
																				'Wed',
																				style: TextStyle(
																					color: Color(0xFF303030),
																					fontSize: 14,
																				),
																			),
																		]
																	),
																),
															),
															Positioned(
																top: 225.099853515625,
																left: 343.1845703125,
																width: 70,
																height: 98,
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(8),
																		color: Color(0xFFffffff),
																	),
																	padding: EdgeInsets.only( left: 19, right: 19),
																	width: 70,
																	height: 98,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.only( top: 31, bottom: 5),
																				child: Text(
																					'14',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 20,
																					),
																				),
																			),
																			Text(
																				'Thur',
																				style: TextStyle(
																					color: Color(0xFF303030),
																					fontSize: 14,
																				),
																			),
																		]
																	),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													decoration: BoxDecoration(
														border: Border.all(
															color: Color(0xFF5E27FD),
															width: 1,
														),
														color: Color(0xFFffffff),
													),
													padding: EdgeInsets.only( top: 37),
													width: double.infinity,
													child: Column(
														crossAxisAlignment: CrossAxisAlignment.start,
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( bottom: 40, left: 25, right: 25),
																	width: double.infinity,
																	child: Stack(
																		children: [
																			Row(
																				mainAxisAlignment: MainAxisAlignment.spaceBetween,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							width: 38,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: EdgeInsets.only( bottom: 40),
																										child: Text(
																											'09:00',
																											style: TextStyle(
																												color: Color(0xFF303030),
																												fontSize: 14,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									),
																									Text(
																										'10:00',
																										style: TextStyle(
																											color: Color(0xFF303030),
																											fontSize: 14,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							width: 259,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											color: Color(0xFF303030),
																											margin: EdgeInsets.only( bottom: 53),
																											width: double.infinity,
																											child: SizedBox(),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											color: Color(0xFF303030),
																											width: double.infinity,
																											child: SizedBox(),
																										),
																									),
																								]
																							),
																						),
																					),
																				]
																			),
																			Positioned(
																				top: 4.0411376953125,
																				left: 62.6884765625,
																				width: 259,
																				height: 65,
																				child: Container(
																					decoration: BoxDecoration(
																						borderRadius: BorderRadius.circular(10),
																						color: Color(0x1A87c19b),
																					),
																					padding: EdgeInsets.only( left: 18, right: 18),
																					width: 259,
																					height: 65,
																					child: Column(
																						crossAxisAlignment: CrossAxisAlignment.start,
																						children: [
																							IntrinsicHeight(
																								child: Container(
																									margin: EdgeInsets.only( top: 16),
																									width: double.infinity,
																									child: Row(
																										children: [
																											Container(
																												margin: EdgeInsets.only( right: 17),
																												width: 3,
																												height: 32,
																												child: Image.network(
																													'https://i.imgur.com/1tMFzp8.png',
																													fit: BoxFit.fill,
																												)
																											),
																											Expanded(
																												child: IntrinsicHeight(
																													child: Container(
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: EdgeInsets.only( bottom: 6),
																																	child: Text(
																																		'Meeting With Client',
																																		style: TextStyle(
																																			color: Color(0xFF303030),
																																			fontSize: 14,
																																			fontWeight: FontWeight.bold,
																																		),
																																	),
																																),
																																Text(
																																	'09:00 - 10:15',
																																	style: TextStyle(
																																		color: Color(0xFF303030),
																																		fontSize: 14,
																																		fontWeight: FontWeight.bold,
																																	),
																																),
																															]
																														),
																													),
																												),
																											),
																										]
																									),
																								),
																							),
																						]
																					),
																				),
																			),
																		]
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( bottom: 40, left: 25, right: 25),
																	width: double.infinity,
																	child: Row(
																		mainAxisAlignment: MainAxisAlignment.spaceBetween,
																		children: [
																			IntrinsicHeight(
																				child: Text(
																					'11:00',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 14,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					color: Color(0xFF303030),
																					width: 259,
																					child: SizedBox(),
																				),
																			),
																		]
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( bottom: 40, left: 25, right: 25),
																	width: double.infinity,
																	child: Row(
																		mainAxisAlignment: MainAxisAlignment.spaceBetween,
																		children: [
																			IntrinsicHeight(
																				child: Text(
																					'12:00',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 14,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					color: Color(0xFF303030),
																					width: 259,
																					child: SizedBox(),
																				),
																			),
																		]
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( bottom: 40, left: 25, right: 25),
																	width: double.infinity,
																	child: Row(
																		mainAxisAlignment: MainAxisAlignment.spaceBetween,
																		children: [
																			IntrinsicHeight(
																				child: Text(
																					'01:00',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 14,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					color: Color(0xFF303030),
																					width: 259,
																					child: SizedBox(),
																				),
																			),
																		]
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( bottom: 43, left: 25, right: 25),
																	width: double.infinity,
																	child: Row(
																		mainAxisAlignment: MainAxisAlignment.spaceBetween,
																		children: [
																			IntrinsicHeight(
																				child: Text(
																					'02:00',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 14,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					color: Color(0xFF303030),
																					width: 259,
																					child: SizedBox(),
																				),
																			),
																		]
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		color: Color(0xFFffffff),
																		boxShadow: [
																			BoxShadow(
																				color: Color(0x0c303030),
																				blurRadius: 50,
																				offset: Offset(0, 4),
																			),
																		],
																	),
																	padding: EdgeInsets.symmetric(vertical: 12),
																	width: double.infinity,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			IntrinsicHeight(
																				child: Container(
																					margin: EdgeInsets.only( bottom: 3, left: 61, right: 61),
																					width: double.infinity,
																					child: Stack(
																						children: [
																							Row(
																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																								children: [
																									Container(
																										width: 18,
																										height: 20,
																										child: Image.network(
																											'https://i.imgur.com/1tMFzp8.png',
																											fit: BoxFit.fill,
																										)
																									),
																									Container(
																										width: 20,
																										height: 18,
																										child: Image.network(
																											'https://i.imgur.com/1tMFzp8.png',
																											fit: BoxFit.fill,
																										)
																									),
																									IntrinsicHeight(
																										child: Container(
																											width: 16,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Expanded(
																														child: Container(
																															margin: EdgeInsets.only( bottom: 4, left: 4, right: 4),
																															height: 8,
																															width: double.infinity,
																															child: Image.network(
																																'https://i.imgur.com/1tMFzp8.png',
																																fit: BoxFit.fill,
																															)
																														),
																													),
																													Expanded(
																														child: Container(
																															height: 6,
																															width: double.infinity,
																															child: Image.network(
																																'https://i.imgur.com/1tMFzp8.png',
																																fit: BoxFit.fill,
																															)
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(10),
																												color: Color(0x66f26950),
																											),
																											width: 40,
																											child: SizedBox(),
																										),
																									),
																								]
																							),
																							Positioned(
																								top: 0,
																								left: 203.62890625,
																								width: 46,
																								height: 46,
																								child: Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(10),
																										color: Color(0xFFf26950),
																									),
																									padding: EdgeInsets.only( left: 16, right: 16),
																									width: 46,
																									height: 46,
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											IntrinsicHeight(
																												child: Container(
																													margin: EdgeInsets.only( top: 16),
																													width: double.infinity,
																													child: Stack(
																														children: [
																															Column(
																																children: [
																																	Expanded(
																																		child: Container(
																																			margin: EdgeInsets.symmetric(horizontal: 6),
																																			height: 14,
																																			width: double.infinity,
																																			child: Image.network(
																																				'https://i.imgur.com/1tMFzp8.png',
																																				fit: BoxFit.fill,
																																			)
																																		),
																																	),
																																]
																															),
																															Positioned(
																																top: 7,
																																left: 0,
																																width: 14,
																																height: 1,
																																child: Container(
																																	width: 14,
																																	height: 1,
																																	child: Image.network(
																																		'https://i.imgur.com/1tMFzp8.png',
																																		fit: BoxFit.fill,
																																	)
																																),
																															),
																														]
																													),
																												),
																											),
																										]
																									),
																								),
																							),
																						]
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					decoration: BoxDecoration(
																						borderRadius: BorderRadius.circular(100),
																						color: Color(0xCC303030),
																					),
																					margin: EdgeInsets.symmetric(horizontal: 120),
																					width: double.infinity,
																					child: SizedBox(),
																				),
																			),
																		]
																	),
																),
															),
														]
													),
												),
											),
										],
									)
								),
							),
						),
					],
				),
			),
			
        );
    }
}
