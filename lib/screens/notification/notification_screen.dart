import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
    const NotificationScreen({super.key});
    
    
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
								color: Color(0xFFffffff),
								padding: EdgeInsets.symmetric(vertical: 17),
								width: double.infinity,
								height: double.infinity,
								child: SingleChildScrollView(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											IntrinsicHeight(
												child: Container(
													margin: EdgeInsets.only( bottom: 25, left: 14, right: 14),
													width: double.infinity,
													child: Row(
														children: [
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Text(
																			'9:41',
																			style: TextStyle(
																				color: Color(0xFF252729),
																				fontSize: 15,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	),
																),
															),
															Container(
																margin: EdgeInsets.only( right: 5),
																width: 17,
																height: 10,
																child: Image.network(
																	'https://i.imgur.com/1tMFzp8.png',
																	fit: BoxFit.fill,
																)
															),
															Container(
																margin: EdgeInsets.only( right: 5),
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
																						color: Color(0xFF252729),
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
											IntrinsicHeight(
												child: Container(
													decoration: BoxDecoration(
														borderRadius: BorderRadius.circular(10),
														color: Color(0xFFfafafa),
													),
													margin: EdgeInsets.only( bottom: 14, left: 24, right: 24),
													width: double.infinity,
													child: Column(
														children: [
															Expanded(
																child: Container(
																	margin: EdgeInsets.only( top: 16),
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
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 22, bottom: 22, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( right: 34),
																	width: 20,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 6),
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
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 7),
																					child: Text(
																						'Create New Features',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Completed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( right: 35),
																	width: 20,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 6),
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
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 8),
																					child: Text(
																						'Interview User Flow',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Completed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( right: 35),
																	width: 20,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 6),
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
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 8),
																					child: Text(
																						'Meeting With Client',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Completed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															Container(
																margin: EdgeInsets.only( right: 33),
																width: 20,
																height: 20,
																child: Image.network(
																	'https://i.imgur.com/1tMFzp8.png',
																	fit: BoxFit.fill,
																)
															),
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 7),
																					child: Text(
																						'Go to Supermarket',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Container(
																					margin: EdgeInsets.symmetric(horizontal: 1),
																					child: Text(
																						'Failed',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 13,
																						),
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( right: 35),
																	width: 20,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 6),
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
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 8),
																					child: Text(
																						'Meeting With Team',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Completed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													width: double.infinity,
													child: Row(
														children: [
															Container(
																margin: EdgeInsets.only( right: 34),
																width: 20,
																height: 20,
																child: Image.network(
																	'https://i.imgur.com/1tMFzp8.png',
																	fit: BoxFit.fill,
																)
															),
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 7),
																					child: Text(
																						'Update Trello',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Failed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
																	child: SizedBox(),
																),
															),
														]
													),
												),
											),
											IntrinsicHeight(
												child: Container(
													color: Color(0xFFffffff),
													padding: EdgeInsets.only( top: 21, bottom: 21, left: 37, right: 37),
													margin: EdgeInsets.only( bottom: 158),
													width: double.infinity,
													child: Row(
														children: [
															IntrinsicHeight(
																child: Container(
																	margin: EdgeInsets.only( right: 35),
																	width: 20,
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																			fit: BoxFit.cover
																		),
																	),
																	child: Column(
																		children: [
																			Expanded(
																				child: Container(
																					margin: EdgeInsets.only( top: 6),
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
															Expanded(
																child: IntrinsicHeight(
																	child: Container(
																		margin: EdgeInsets.only( right: 4),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: EdgeInsets.only( bottom: 8),
																					child: Text(
																						'Find Best Feature',
																						style: TextStyle(
																							color: Color(0xFF303030),
																							fontSize: 15,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				Text(
																					'Completed',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 13,
																					),
																				),
																			]
																		),
																	),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	margin: EdgeInsets.only( right: 5),
																	width: 2,
																	child: SizedBox(),
																),
															),
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		border: Border.all(
																			color: Color(0xFF000000),
																			width: 2,
																		),
																	),
																	width: 2,
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
														borderRadius: BorderRadius.circular(100),
														color: Color(0xCC303030),
													),
													margin: EdgeInsets.symmetric(horizontal: 120),
													width: double.infinity,
													child: SizedBox(),
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
