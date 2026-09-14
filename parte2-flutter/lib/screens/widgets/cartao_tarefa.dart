import 'package:flutter/material.dart';

import '../../models/tarefa.dart';

class CartaoTarefa extends StatelessWidget {
  final Tarefa tarefa;
  final VoidCallback? onTap;

  const CartaoTarefa({
    super.key,
    required this.tarefa,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 2),
            color: Color(0x22000000),
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: CircleAvatar(
          child: Text(tarefa.prioridade.toStringAsFixed(0)),
        ),
        title: Text(
          tarefa.titulo,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text('${tarefa.minutosEstimados} minutos estimados'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
