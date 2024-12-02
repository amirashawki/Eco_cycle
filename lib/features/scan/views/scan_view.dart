import 'dart:io';

import 'package:ecocycle_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ScanView extends StatefulWidget {
  const ScanView({super.key});

  @override
  State<ScanView> createState() => _ScanViewState();
}

File? selectedImage;

class _ScanViewState extends State<ScanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/Group 124 (1).png',
              height: 30,
            ),
            SizedBox(
              height: 120,
            ),
            GestureDetector(
              onTap: () {
                pickImageFromCamera();
                GoRouter.of(context).push(AppRouter.kScanProductView);
              },
              child: Center(
                child: Image.asset(
                  'assets/images/Group 125.png',
                  height: 290,
                  width: 230,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (selectedImage == null) return;
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }

  Future pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (selectedImage == null) return;
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}































// import 'package:flutter/material.dart';

// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScannerPage extends StatefulWidget {
//   @override
//   _QRScannerPageState createState() => _QRScannerPageState();
// }

// class _QRScannerPageState extends State<QRScannerPage> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   Barcode? result;
//   QRViewController? controller;

//   @override
//   void reassemble() {
//     super.reassemble();
//     if (controller != null) {
//       controller!.pauseCamera();
//       controller!.resumeCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Scanner'),
//         backgroundColor: Colors.green,
//       ),
//       body: Stack(
//         children: [
//           _buildQrView(context),
//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: ElevatedButton(
//                 onPressed: () async {
//                   await controller?.toggleFlash();
//                 },
//                 child: Text('Toggle Flash'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQrView(BuildContext context) {
//     var scanArea =
//         MediaQuery.of(context).size.width * 0.7; // Adjust the scan area

//     return QRView(
//       key: qrKey,
//       onQRViewCreated: _onQRViewCreated,
//       overlay: QrScannerOverlayShape(
//         borderColor: Colors.green,
//         borderRadius: 10,
//         borderLength: 30,
//         borderWidth: 10,
//         cutOutSize: scanArea,
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });

//       if (result != null) {
//         controller.pauseCamera(); // Pause camera after scanning
//         // Handle scanned result
//         print("Scanned: ${result!.code}");
//       }
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }
