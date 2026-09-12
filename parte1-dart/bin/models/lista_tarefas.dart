import 'tarefa.dart';

class ListaTarefas {
  final String nome;

  final List<Tarefa> _tarefas;

  ListaTarefas({
    required this.nome,
    List<Tarefa>? tarefas,
  }) : _tarefas = tarefas ?? [];

  void adicionar(Tarefa tarefa) {
    _tarefas.add(tarefa);
  }

  List<Tarefa> get tarefas => List.unmodifiable(_tarefas);
  int get quantidade => _tarefas.length;

  int get totalMinutos {
    return _tarefas.fold(0, (total, tarefa) => total + tarefa.minutosEstimados);
  }
}
