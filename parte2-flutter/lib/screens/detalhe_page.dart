import 'package:flutter/material.dart';

import '../models/tarefa.dart';
import '../models/tarefa_prioritaria.dart';

class DetalhePage extends StatelessWidget {
  final Tarefa tarefa;

  const DetalhePage({
    super.key,
    required this.tarefa,
  });

  @override
  Widget build(BuildContext context) {
    final prioritaria = tarefa is TarefaPrioritaria
        ? tarefa as TarefaPrioritaria
        : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe da tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tarefa.titulo,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text('Minutos estimados: ${tarefa.minutosEstimados}'),
            Text('Prioridade: ${tarefa.prioridade}'),
            Text(
              'Criada em: ${tarefa.criadaEm.day.toString().padLeft(2, '0')}/${tarefa.criadaEm.month.toString().padLeft(2, '0')}/${tarefa.criadaEm.year}',
            ),
            if (prioritaria != null) ...[
              const SizedBox(height: 12),
              Text('Motivo: ${prioritaria.motivo}'),
              Text('Urgente: ${prioritaria.urgente ? 'Sim' : 'Não'}'),
            ],
          ],
        ),
      ),
    );
  }
}
