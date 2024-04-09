import 'package:festivalpost_app/utils/headers.dart';
import 'package:flutter/cupertino.dart';

Align addText({
  required Function() getSetState,
}) {
  return Align(
    alignment: Alignment.center,
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Globals.instance.t_on = !Globals.instance.t_on;
            getSetState();
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: const Color(0xffFFF3C7),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(
                  color: Color(0xfffabba5),
                  blurRadius: 3,
                  offset: Offset(3, 3),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  blurRadius: 3,
                  offset: const Offset(-3, -3),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Globals.instance.t_on
                    ? const Icon(CupertinoIcons.minus_circle, size: 30)
                    : const Icon(CupertinoIcons.plus_circle, size: 30),
                Text(
                  Globals.instance.t_on ? 'Remove Slogan' : 'Add Slogan',
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: Globals.instance.t_on,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Text Size',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: Globals.instance.t_on,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xfffabba5),
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 3,
                      offset: const Offset(-3, -3),
                    )
                  ],
                ),
                child: FilledButton(
                  onPressed: () {
                    Globals.instance.fsize <= 14
                        ? null
                        : Globals.instance.fsize--;
                    getSetState();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffFFF3C7),
                    ),
                  ),
                  child: const Icon(Icons.remove, color: Colors.black),
                ),
              ),
              const SizedBox(width: 10),
              Text(Globals.instance.fsize.toString()),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xfffabba5),
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 3,
                      offset: const Offset(-3, -3),
                    )
                  ],
                ),
                child: FilledButton(
                  onPressed: () {
                    Globals.instance.fsize >= 35
                        ? null
                        : Globals.instance.fsize++;
                    getSetState();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffFFF3C7),
                    ),
                  ),
                  child: const Icon(Icons.add, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
