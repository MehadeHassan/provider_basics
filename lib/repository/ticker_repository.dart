class TickerRepository {
  Stream<int> ticks([int ticks = 60]) =>
      Stream.periodic(Duration(seconds: 1), (t) => ticks - t).take(ticks);
}
