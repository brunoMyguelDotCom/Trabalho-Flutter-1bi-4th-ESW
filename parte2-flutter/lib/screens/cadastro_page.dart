import 'package:flutter/material.dart';

import '../models/tarefa.dart';

class CadastroPage extends StatefulWidget {
  final ValueChanged<Tarefa> onSalvar;

  const CadastroPage({
    super.key,
    required this.onSalvar,
  });

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _tituloController = TextEditingController();
  final _minutosController = TextEditingController();

  @override
  void dispose() {
    _tituloController.dispose();
    _minutosController.dispose();
    super.dispose();
  }

  void _salvar() {
    final titulo = _tituloController.text.trim();
    final minutos = int.tryParse(_minutosController.text.trim());

    if (titulo.isEmpty || minutos == null || minutos <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Informe um título e minutos válidos.'),
        ),
      );
      return;
    }

    final tarefa = Tarefa(
      titulo: titulo,
      minutosEstimados: minutos,
      prioridade: 3.0,
      criadaEm: DateTime.now(),
    );

    widget.onSalvar(tarefa);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova tarefa'),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            TextFormField(
              controller: _tituloController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Título',
                prefixIcon: const Icon(Icons.task_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _minutosController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Minutos estimados',
                prefixIcon: const Icon(Icons.timer_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: _salvar,
              icon: const Icon(Icons.check),
              label: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
