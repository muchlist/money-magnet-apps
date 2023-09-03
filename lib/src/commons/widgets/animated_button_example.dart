import 'package:flutter/material.dart';

class ProgressButton extends StatefulWidget {
  const ProgressButton({Key? key}) : super(key: key);

  @override
  State<ProgressButton> createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (isLoading) return;
        setState(() {
          isLoading = true;
        });
        await Future.delayed(const Duration(seconds: 5));
        setState(() {
          isLoading = false;
        });
      },
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 24),
        minimumSize: const Size.fromHeight(24),
        shape: const StadiumBorder(),
      ),
      child: isLoading
          ? const Row(
              children: [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(width: 24),
                Text('Harap Tunggu...')
              ],
            )
          : const Text('Login'),
    );
  }
}

enum ButtonState { init, loading, done }

class AnimatedProgressBtn extends StatefulWidget {
  const AnimatedProgressBtn({Key? key}) : super(key: key);

  @override
  State<AnimatedProgressBtn> createState() => _AnimatedProgressBtnState();
}

class _AnimatedProgressBtnState extends State<AnimatedProgressBtn> {
  ButtonState state = ButtonState.init;
  bool isAnimating = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    bool isDone = state == ButtonState.done;
    bool isStretched = isAnimating || state == ButtonState.init;

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        width: state == ButtonState.init ? width : 70,
        onEnd: () => setState(() {
          isAnimating = !isAnimating;
        }),
        height: 70,
        child: isStretched ? buildButton() : buildSmallButton(isDone),
      ),
    );
  }

  Widget buildButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(width: 2, color: Colors.indigo)),
      child: const FittedBox(
        child: Text(
          'SUBMIT',
          style: TextStyle(
              fontSize: 24,
              color: Colors.indigo,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600),
        ),
      ),
      onPressed: () async {
        setState(() {
          state = ButtonState.loading;
        });

        await Future.delayed(const Duration(seconds: 3));

        setState(() {
          state = ButtonState.done;
        });

        await Future.delayed(const Duration(seconds: 3));

        setState(() {
          state = ButtonState.init;
        });
      },
    );
  }

  Widget buildSmallButton(bool isDone) {
    final color = isDone ? Colors.green : Colors.indigo;
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: isDone
            ? const Icon(
                Icons.done,
                size: 52,
                color: Colors.white,
              )
            : const CircularProgressIndicator(
                color: Colors.white,
              ),
      ),
    );
  }
}
