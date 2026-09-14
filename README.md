# Trabalho do 1º Bimestre — Gerenciador de Tarefas

## Integrante

- Bruno Myguel Marçal

## Domínio escolhido

**Gerenciador de tarefas pessoais**

O domínio possui duas entidades principais:

- `Tarefa`: representa uma tarefa individual.
- `ListaTarefas`: representa um agrupador que contém várias tarefas.

A relação entre elas é de composição porque uma `ListaTarefas` tem várias `Tarefa`

A classe `TarefaPrioritaria` se vincula a `Tarefa` por herança, pois uma tarefa prioritaria **é uma** tarefa.

## Tabela de rastreio

| # | Exercício | Arquivo e linha | O que aparece na tela |
|---|---|---|---|
| 1 | Entidade principal | parte1-dart/bin/models/tarefa.dart:1 | Bloco [1] do relatório |
| 2 | Herança | parte1-dart/bin/models/tarefa_prioritaria.dart:3 | Bloco [2] do relatório |
| 3 | Composição | parte1-dart/bin/models/lista_tarefas.dart:6 | Bloco [3] do relatório |
| 4 | Encapsulamento | parte1-dart/bin/models/lista_tarefas.dart:6 | Bloco [4] do relatório e o total no topo da tela de lista |
| 5 | Estrutura de tela | parte2-flutter/lib/screens/home_page.dart:46 | AppBar e corpo da tela inicial |
| 6 | Cartão | parte2-flutter/lib/screens/widgets/cartao_tarefa.dart:5 | Cada item da lista |
| 7 | Lista | parte2-flutter/lib/screens/home_page.dart:68 | Lista rolável com itens |
| 8 | Navegação | parte2-flutter/lib/screens/home_page.dart:36 | Toque no item abre o detalhe |
| 9 | Formulário | parte2-flutter/lib/screens/cadastro_page.dart:58 | Tela de cadastro |
| 10 | Estado | parte2-flutter/lib/screens/home_page.dart:27 | Item novo na lista e total atualizado |
