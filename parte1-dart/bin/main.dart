import 'lista_tarefas.dart';
import 'tarefa.dart';
import 'tarefa_prioritaria.dart';

void main() {
  final agora = DateTime.now();

  final tarefa = Tarefa(
    titulo: 'Estudar Dart',
    minutosEstimados: 60,
    prioridade: 2.0,
    criadaEm: agora,
  );

  final tarefaPrioritaria = TarefaPrioritaria(
    titulo: 'Entregar trabalho',
    minutosEstimados: 90,
    prioridade: 5.0,
    criadaEm: agora,
    motivo: 'Prazo próximo',
    urgente: true,
  );

  final lista = ListaTarefas(
    nome: 'Estudos',
    tarefas: [
      tarefa,
      tarefaPrioritaria,
      Tarefa(
        titulo: 'Revisar Flutter',
        minutosEstimados: 45,
        prioridade: 3.0,
        criadaEm: agora,
      ),
    ],
  );

  lista.adicionar(
    Tarefa(
      titulo: 'Fazer exercícios',
      minutosEstimados: 30,
      prioridade: 2.5,
      criadaEm: agora,
    ),
  );
}
