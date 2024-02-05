import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
showCustomSnackbar(contex)=> showTopSnackBar(
    Overlay.of(contex),
const CustomSnackBar.error(
    message:"Something Went Wrong,Please Check Your Credential "));