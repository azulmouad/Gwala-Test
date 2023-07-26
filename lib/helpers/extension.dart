part of 'helpers.dart';

extension QueryApp on BuildContext {
  Size get getSize => MediaQuery.of(this).size;

  EdgeInsets get getPadding => MediaQuery.of(this).padding;
}
