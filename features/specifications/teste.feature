#encoding: utf-8
#language: pt

Funcionalidade: Realizar uma busca de passagem no Maxmilhas

@iniciando_busca
Cenario: Fazer uma pesquisa no Maxmilhas
  Quando clico no botao pesquisar
  Então eu recebo o resultado dessa busca

@iniciando_busca
Cenario: Selecionar mais um passageiro
  Quando adiciono mais um passageiro
  E clico no botao pesquisar
  Então eu verifico se o passageiro foi adicionado

@iniciando_busca
Cenario: Selecionar classe executiva
  Quando seleciono a classe executiva
  E clico no botao pesquisar
  Então eu verifico se a classe foi selecionada

@iniciando_busca
Cenario: Refinar busca com alguns filtros
  Quando clico no botao pesquisar
  E refino a busca atraves de alguns filtros
  Então eu verifico se os filtros estão funcionando