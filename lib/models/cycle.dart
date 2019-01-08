class Cycle {
  int periodDays;
  int cycleDays;
  DateTime pastCycleDate;
  DateTime nextPeriod;
  DateTime ovulation;
  DateTime startOvulation;
  DateTime endOvulation;

  Cycle({
    this.periodDays,
    this.cycleDays,
    this.nextPeriod,
    this.pastCycleDate,
    this.ovulation,
    this.startOvulation,
    this.endOvulation,
  });

  Cycle.empty(){
    this.periodDays = 5;
    this.cycleDays = 26;
  }

}
