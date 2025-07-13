enum TaskStatus {init , todo, inProgress, done}

class StatusState {
  final TaskStatus status;

  const StatusState({
    this.status = TaskStatus.init,
  });

  StatusState copyWith({
    TaskStatus? status,
  }) {
    return StatusState(
      status: status ?? this.status,
    );
  }
}