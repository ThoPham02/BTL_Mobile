import 'package:flutter/material.dart';

class ForgotpwdScreen extends StatelessWidget {
    const ForgotpwdScreen({super.key});
    
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
				constraints: const BoxConstraints.expand(),
				color: const Color(0xFFFFFFFF),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Expanded(
							child: Container(
								color: const Color(0xFFfafafa),
								width: double.infinity,
								height: double.infinity,
								child: SingleChildScrollView(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											IntrinsicHeight(
												child: Container(
													color: const Color(0x33303030),
													width: double.infinity,
													child: Column(
														children: [
															IntrinsicHeight(
																child: Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(15),
																		color: const Color(0xFFffffff),
																	),
																	padding: const EdgeInsets.only( top: 34, bottom: 22, left: 19, right: 19),
																	margin: const EdgeInsets.only( top: 231),
																	width: double.infinity,
																	child: Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: const EdgeInsets.only( bottom: 22),
																				child: const Text(
																					'New Password',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 15,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					decoration: BoxDecoration(
																						borderRadius: BorderRadius.circular(10),
																						color: const Color(0xFFf8f8f8),
																					),
																					padding: const EdgeInsets.only( top: 18, bottom: 18, left: 24, right: 24),
																					margin: const EdgeInsets.only( bottom: 33),
																					width: double.infinity,
																					child: Row(
																						children: [
																							Expanded(
																								child: IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 4),
																										width: double.infinity,
																										child: const Text(
																											'Enter your new password',
																											style: TextStyle(
																												color: Color(0xFF303030),
																												fontSize: 14,
																											),
																										),
																									),
																								),
																							),
																							IntrinsicHeight(
																								child: Container(
																									width: 22,
																									decoration: const BoxDecoration(
																										image: DecorationImage(
																											image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																											fit: BoxFit.cover
																										),
																									),
																									child: Column(
																										children: [
																											Expanded(
																												child: Container(
																													margin: const EdgeInsets.only( top: 5),
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
																						]
																					),
																				),
																			),
																			Container(
																				margin: const EdgeInsets.only( bottom: 22),
																				child: const Text(
																					'Repeat Password',
																					style: TextStyle(
																						color: Color(0xFF303030),
																						fontSize: 15,
																						fontWeight: FontWeight.bold,
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: Container(
																					decoration: BoxDecoration(
																						borderRadius: BorderRadius.circular(10),
																						color: const Color(0xFFf8f8f8),
																					),
																					padding: const EdgeInsets.only( top: 19, bottom: 19, left: 24, right: 24),
																					margin: const EdgeInsets.only( bottom: 27),
																					width: double.infinity,
																					child: Row(
																						children: [
																							Expanded(
																								child: IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 4),
																										width: double.infinity,
																										child: const Text(
																											'Enter your new password',
																											style: TextStyle(
																												color: Color(0xFF303030),
																												fontSize: 14,
																											),
																										),
																									),
																								),
																							),
																							IntrinsicHeight(
																								child: Container(
																									width: 22,
																									decoration: const BoxDecoration(
																										image: DecorationImage(
																											image: NetworkImage("https://i.imgur.com/1tMFzp8.png"),
																											fit: BoxFit.cover
																										),
																									),
																									child: Column(
																										children: [
																											Expanded(
																												child: Container(
																													margin: const EdgeInsets.only( top: 5),
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
																						]
																					),
																				),
																			),
																			IntrinsicHeight(
																				child: SizedBox(
																					width: double.infinity,
																					child: Row(
																						children: [
																							Expanded(
																								child: IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 4),
																										width: double.infinity,
																										child: const Text(
																											'Close',
																											style: TextStyle(
																												color: Color(0xFFf26950),
																												fontSize: 14,
																											),
																										),
																									),
																								),
																							),
																							IntrinsicHeight(
																								child: Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(10),
																										color: const Color(0xFFf26950),
																									),
																									width: 46,
																									child: Stack(
																										children: [
																											Padding(
																												padding: const EdgeInsets.symmetric(vertical: 16),
																												child: Column(
																													children: [
																														Expanded(
																															child: Container(
																																margin: const EdgeInsets.only( top: 7),
																																height: 1,
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
																											Positioned(
																												top: 0,
																												left: 10.849365234375,
																												width: 7,
																												height: 14,
																												child: SizedBox(
																													width: 7,
																													height: 14,
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
