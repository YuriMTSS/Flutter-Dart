// ignore_for_file: file_names, duplicate_ignore

class ChatModel {
  String nome;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;

  ChatModel(
      {required this.nome,
      required this.icon,
      required this.isGroup,
      required this.time,
      required this.currentMessage});
}
