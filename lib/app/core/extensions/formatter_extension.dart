import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: r'RS',
    );
    return currencyFormat.format(this);
  }
}
