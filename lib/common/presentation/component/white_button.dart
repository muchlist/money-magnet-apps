import 'package:flutter/material.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

class ButtonW extends StatelessWidget {
  const ButtonW(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.disabled = false})
      : super(key: key);
  final String title;
  final GestureTapCallback onPressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 0, height: 48),
      child: ElevatedButton(
        onPressed: !disabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          primary: !disabled ? kPrimaryColor : Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: const Size.fromHeight(55),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonWLoading extends StatelessWidget {
  const ButtonWLoading({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 0, height: 48),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: kBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          // minimumSize: const Size.fromHeight(46),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 24),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
