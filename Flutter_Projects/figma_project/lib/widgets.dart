import 'package:flutter/material.dart';
import 'colors.dart';


SearchBarr ( HintText ) {
  return 
  TextField(cursorColor: AppColors.black_1,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.blueShade_2,
                prefixIcon: Icon(Icons.search, color: AppColors.black_10),
                contentPadding: const EdgeInsets.all(18),
                hintText: HintText ,
                hintStyle: const TextStyle(color: Color.fromARGB(255, 154, 152, 152)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              style: TextStyle(
                color: AppColors.black_1,
              ),
            );

}

class CustomButton extends StatelessWidget {
  final  onPressed;
  final String text;
 const CustomButton({super.key, required this.onPressed, required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))) ,
                    backgroundColor: MaterialStatePropertyAll(AppColors.black_1)//white color
                  ),
                  onPressed: onPressed,
                  child:  Row(
                     children: [
                       const Padding(padding: EdgeInsets.only(left: 40)),
                       Text( text ,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                       const Spacer(),
                       const Icon(Icons.arrow_forward_sharp,
                       color:  Colors.black,
                      ),
                      const Spacer(),
                    ],
                   ),
                  );
  }
}
class TileWidget extends StatelessWidget {

final String text;
  const TileWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return 
            ListTile(
              tileColor: AppColors.black_1,
              leading: Title(
                color: AppColors.black_100,
                child: Text( text,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),),
                ),
            );
  }
}
