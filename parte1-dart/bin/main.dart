import 'models/lista_tarefas.dart';
import 'models/tarefa.dart';
import 'models/tarefa_prioritaria.dart';

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

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print(tarefa.ficha());

  print('\n===== [2] HERANÇA =====');
  print('Tarefa: ${tarefa.ficha()}');
  print('Prioritária: ${tarefaPrioritaria.ficha()}');

  print('\n===== [3] COMPOSIÇÃO =====');
  print('Lista "${lista.nome}" contém ${lista.quantidade} tarefas:');
  for (final item in lista.tarefas) {
    print('- ${item.titulo}');
  }

  print('\n===== [4] ENCAPSULAMENTO =====');
  print('Total de minutos: ${lista.totalMinutos}');

  lista.adicionar(
    Tarefa(
      titulo: 'Fazer exercícios',
      minutosEstimados: 30,
      prioridade: 2.5,
      criadaEm: agora,
    ),
  );

  print('Após adicionar "Fazer exercícios": ${lista.totalMinutos}');
}
