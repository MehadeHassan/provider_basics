import 'package:todo/repository/repository.dart';

class TickerViewModel {
  TickerViewModel({
    required TickerRepository tickerRepository,
  }) : _tickerRepository = tickerRepository;

  final TickerRepository _tickerRepository;

  Stream<int> fetchTicker() {
    return _tickerRepository.ticks();
  }
}
