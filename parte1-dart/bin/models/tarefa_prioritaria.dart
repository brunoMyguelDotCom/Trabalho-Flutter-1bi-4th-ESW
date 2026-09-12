import 'tarefa.dart';

class TarefaPrioritaria extends Tarefa {
  final String motivo;
  final bool urgente;

  TarefaPrioritaria({
    required super.titulo,
    required super.minutosEstimados,
    required super.prioridade,
    required super.criadaEm,
    required this.motivo,
    this.urgente = false,
  });

  @override
  String ficha() {
    return '${super.ficha()} | motivo: $motivo | urgente: $urgente';
  }
}
