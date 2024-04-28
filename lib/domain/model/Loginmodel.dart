import 'dart:convert';

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMmI1ZTcyYjM2ZGMxMjZhYjQ3ODZiOTBjZDk3ZTk5MzdiYWNmM2Q0ZjVkOGNjYTY4OTU1OTlkOTI4NDg0Nzk2YmJhMGRmYWIzNGU1N2EyMTgiLCJpYXQiOjE3MTQxNjcyNDUuMTI5MDcyLCJuYmYiOjE3MTQxNjcyNDUuMTI5MDc5LCJleHAiOjE3NDU3MDMyNDUuMDc5Nzc0LCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.KUNVhxkIB6RKmET-a4F62a9Eoa3GhzsZjU6PAxCaPsBq402qmaL7Uh-xVsMaDy_M7gXjh5QQnua9g5UKi8fEVj9wO1kv4VN3ms3KM8HeWNLPI2WmCTU4fzHhqMcBEVoLGfe-gdfdpjA3U8vfywhmvt3LtHBwT4TTbHJZrm5GeMKL32oGyP4pnQXAOsQbfog-GoPCAqxfRIXGU3lanzgR2rqCkwuARz6VP3SL1t7HJL3SX7oSf2vdBUIhkSkee6xFrrfpVNMjgKdI6M8zxZYiln98dE3oQRtlXlHCclXMUCgkIrIJNqkQq8goLO-TsEdNxhDnP4W3bn-Lg44yQawvTZFpyqpgjE-emYNBpcj6SvChp-HiuX3vZPJxLBDseAZLrAogpjVuF19rFM7GCHIvaQC0zqYam3yEPdX5d-UikP3_JY8g7wtZLX6RDGHrMpkDaUJjpPrOp4MZqalCVtmoy0jjrRwRoxLcSJg0L2D-O4GhBAsLiBYY3lw7KYH3nG2WTSA9d0ZCB2RpPhBUkiE0eykLitNFl7qrtqTIlWjzFpJaJrOXUaTOpMn60aA9g6HdF5wAbouhfrp2jn6UtKh4QodtaodGwWuc7X7niObLkDTTw7TiCZBZvSzLZwg8REDt3d1t8238NddtG7-1W8Hv44s98a-ISvEfZHDzqMRJ9NQ"

Loginmodel loginmodelFromJson(String str) => Loginmodel.fromJson(json.decode(str));
String loginmodelToJson(Loginmodel data) => json.encode(data.toJson());
class Loginmodel {
  Loginmodel({
      this.token,});

  Loginmodel.fromJson(dynamic json) {
    token = json['token'];
  }
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }

}