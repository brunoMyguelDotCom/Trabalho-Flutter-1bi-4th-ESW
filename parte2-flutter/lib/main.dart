import 'package:flutter/material.dart';

import 'models/lista_tarefas.dart';
import 'models/tarefa.dart';
import 'models/tarefa_prioritaria.dart';
import 'screens/home_page.dart';

void main() {
  final agora = DateTime.now();

  final lista = ListaTarefas(
    nome: 'Minhas tarefas',
    tarefas: [
      Tarefa(
        titulo: 'Estudar Dart',
        minutosEstimados: 60,
        prioridade: 2.0,
        criadaEm: agora,
      ),
      TarefaPrioritaria(
        titulo: 'Entregar trabalho',
        minutosEstimados: 90,
        prioridade: 5.0,
        criadaEm: agora,
        motivo: 'Prazo próximo',
        urgente: true,
      ),
      Tarefa(
        titulo: 'Revisar Flutter',
        minutosEstimados: 45,
        prioridade: 3.0,
        criadaEm: agora,
      ),
      Tarefa(
        titulo: 'Organizar projeto',
        minutosEstimados: 30,
        prioridade: 2.5,
        criadaEm: agora,
      ),
      Tarefa(
        titulo: 'Praticar orientação a objetos',
        minutosEstimados: 50,
        prioridade: 4.0,
        criadaEm: agora,
      ),
      Tarefa(
        titulo: 'Ler documentação',
        minutosEstimados: 25,
        prioridade: 1.5,
        criadaEm: agora,
      ),
    ],
  );

  runApp(TaskApp(lista: lista));
}

class TaskApp extends StatelessWidget {
  final ListaTarefas lista;

  const TaskApp({super.key, required this.lista});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerenciador de Tarefas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: HomePage(lista: lista),
    );
  }
}
