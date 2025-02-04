import 'package:flutter/material.dart';

import '../style/style.dart';

class UserVideoTable extends StatelessWidget {
  const UserVideoTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: ColorPlate.back1,
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _PointSelectTextButton(true, '作品'),
              _PointSelectTextButton(false, '關注'),
              _PointSelectTextButton(false, '喜歡'),
            ],
          ),
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
        const Row(
          children: <Widget>[
            _SmallVideo(),
            _SmallVideo(),
            _SmallVideo(),
          ],
        ),
      ],
    );
  }
}

class _PointSelectTextButton extends StatelessWidget {
  final bool isSelect;
  final String title;
  final Function? onTap;

  const _PointSelectTextButton(
      this.isSelect,
      this.title, {
        Key? key,
        this.onTap,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          isSelect
              ? Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: ColorPlate.orange,
              borderRadius: BorderRadius.circular(3),
            ),
          )
              : Container(),
          Container(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              title,
              style: isSelect
                  ? StandardTextStyle.small
                  : StandardTextStyle.smallWithOpacity,
            ),
          )
        ],
      ),
    );
  }
}

class _SmallVideo extends StatelessWidget {
  const _SmallVideo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 3 / 4.0,
        child: Container(
          decoration: BoxDecoration(
            color: ColorPlate.darkGray,
            border: Border.all(color: Colors.black),
          ),
          alignment: Alignment.center,
          child: Text(
            '作品',
            style: TextStyle(
              color: Colors.white.withOpacity(0.1),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}