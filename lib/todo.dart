class Todo {
  int? id;
  final String nama;
  final String deskripsi;
  bool done;

  Todo(this.nama, this.deskripsi, {this.done = false, this.id});

  static List<Todo> dummyData = [
    Todo("Latihan Menggambar", "Latihan lomba menggambar"),
    Todo("Makan Malam", "Makan malam bersama", done: true),
    Todo("Bernyanyi Bersama", "Bernyanyi bersama-sama"),
  ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama' : nama,
      'deskripsi' : deskripsi,
      'done' : done
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      map['nama'] as String, 
      map['deskripsi'] as String,
      done: map['done'] == 0 ? false : true,
      id: map['id'],
    );
  }

}