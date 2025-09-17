enum checkStatus { initial, checkin, checkout }

class CheckInOutState {
  final checkStatus status;
  final String? checkInTime;
  final String? checkOutTime;

  CheckInOutState({
    this.status = checkStatus.initial,
    this.checkInTime,
    this.checkOutTime,
  });

  CheckInOutState copyWith({
    checkStatus? status,
    String? checkInTime,
    String? checkOutTime,
  }) {
    return CheckInOutState(
      status: status ?? this.status,
      checkInTime: checkInTime ?? this.checkInTime,
      checkOutTime: checkOutTime ?? this.checkOutTime,
    );
  }
}
