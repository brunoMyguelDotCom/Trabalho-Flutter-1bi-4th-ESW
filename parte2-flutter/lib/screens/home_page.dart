import 'package:flutter/material.dart';

import '../models/lista_tarefas.dart';
import '../models/tarefa.dart';
import 'cadastro_page.dart';
import 'detalhe_page.dart';
import 'widgets/cartao_tarefa.dart';

class HomePage extends StatefulWidget {
  final ListaTarefas lista;

  const HomePage({
    super.key,
    required this.lista,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _abrirCadastro() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CadastroPage(
          onSalvar: (tarefa) {
            setState(() {
              widget.lista.adicionar(tarefa);
            });
          },
        ),
      ),
    );
  }

  void _abrirDetalhe(Tarefa tarefa) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => DetalhePage(tarefa: tarefa),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciador de Tarefas'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Total estimado: ${widget.lista.totalMinutos / 60} horas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 90),
              itemCount: widget.lista.tarefas.length,
              itemBuilder: (context, index) {
                final tarefa = widget.lista.tarefas[index];

                return CartaoTarefa(
                  tarefa: tarefa,
                  onTap: () => _abrirDetalhe(tarefa),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _abrirCadastro,
        icon: const Icon(Icons.add),
        label: const Text('Nova tarefa'),
      ),
    );
  }
}
