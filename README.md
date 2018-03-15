<h1>Estrutura do projeto</h1>

*features
* pages - pasta dos page objects;
* specifications - pasta das features; 
* step_definitions - pasta onde ficam as implementações das features;
* support - pasta onde ficam as configurações gerais do projeto;
-------------------------

<h3>Como rodar o projeto</h3>
------------------------------------------------------------

*	Pré-requisitos
  - Ruby >= 2.3.0;
  - DevKit (https://rubyinstaller.org/add-ons/devkit.html);
  - Chromedriver (https://sites.google.com/a/chromium.org/chromedriver/downloads);
  - Bundler (http://bundler.io/);
  - CMDER (http://cmder.net/) ou outro terminal de sua preferência;

* No terminal, navegue até ao diretório raiz do projeto, e digite o seguinte comando para baixar as dependências do projeto:

```bash
bundle install
```

* Após baixar todas as dependências do projeto, e rodar todos os testes da feature, basta executar o comando:

```bash
cucumber
```

Para a automação de testes algumas gems do Ruby são essenciais, segue as gems utilizadas no meu projeto:
*	Cucumber
*	Capybara
* RSpec
*	Selenium-webdriver
* Site Prism
* Pry

