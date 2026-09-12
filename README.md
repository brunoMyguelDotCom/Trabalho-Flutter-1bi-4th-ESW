# Trabalho do 1º Bimestre — Gerenciador de Tarefas

## Integrante

- Bruno Myguel Marçal

## Domínio escolhido

**Gerenciador de tarefas pessoais**

O domínio possui duas entidades principais:

- `Tarefa`: representa uma tarefa individual.
- `ListaTarefas`: representa um agrupador que contém várias tarefas.

A relação entre elas é de composição porque uma `ListaTarefas` tem várias `Tarefa`

A classe `TarefaPrioritaria` se vincula a `Tarefa` por herança, pois uma tarefa prioritária **é uma** tarefa.
