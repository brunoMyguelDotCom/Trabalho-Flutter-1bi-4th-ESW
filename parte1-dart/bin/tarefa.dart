class Tarefa {
  final String titulo;
  final int minutosEstimados;
  final double prioridade;
  final DateTime criadaEm;

  Tarefa({
    required this.titulo,
    required this.minutosEstimados,
    required this.prioridade,
    required this.criadaEm,
  });

  String ficha() {
    return '$titulo | $minutosEstimados min | prioridade $prioridade | ${criadaEm.day.toString().padLeft(2, '0')}/${criadaEm.month.toString().padLeft(2, '0')}/${criadaEm.year}';
  }
}
