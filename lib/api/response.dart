enum Status { LOADING, COMPLETED, ERROR }

class Responses<T> {
  Status status;
  late T data;
  late String message;
  Responses.loading(this.message) : status = Status.LOADING;
  Responses.completed(this.data) : status = Status.COMPLETED;
  Responses.error(this.message) : status = Status.ERROR;
  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}
