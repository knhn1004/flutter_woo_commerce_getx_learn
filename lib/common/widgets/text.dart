import 'package:flutter/material.dart';

/// 文字组件
class TextWidget extends StatelessWidget {
  /// 文字字符串
  final String text;

  /// 样式
  final TextStyle? style;

  /// 颜色
  final Color? color;

  /// 大小
  final double? size;

  /// 重量
  final FontWeight? weight;

  /// 行数
  final int? maxLines;

  /// 自动换行
  final bool? softWrap;

  /// 溢出
  final TextOverflow? overflow;

  /// 对齐方式
  final TextAlign? textAlign;

  const TextWidget({
    Key? key,
    required this.text,
    this.style,
    this.maxLines = 1,
    this.softWrap = false,
    this.overflow = TextOverflow.clip,
    this.color,
    this.size,
    this.weight,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == "") {
      return const SizedBox();
    }
    return Text(
      text,
      style: style?.copyWith(
            color: color,
            fontSize: size,
            fontWeight: weight,
          ) ??
          TextStyle(
            color: color,
            fontSize: size,
            fontWeight: weight,
          ),
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
    );
  }
}
