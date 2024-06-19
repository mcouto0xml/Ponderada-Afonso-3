## Documentação Modelo Físico e Relacional do Banco de Dados

- **Projeto:** Abandono Zero

- **Autor:** Murilo Couto Oliveira

- **Objetivo:** Apresentar um modelo relacional e físico de um banco de dados

## Entidades
### Users
Nessa entidade é guardada as informações do usuário como nome, email e senha.

- **name:** Nome do usuário
- **email:** Email do usuário
- **password:** Senha do usuário

### General Forms
Armazena informações gerais do usuário, como idade, residentes na casa, tipo de moradia, país etc.

- **age:** Idade do usuário
- **house_type:** Tipo de moradia
- **familiar_constitution:** Constituição familiar residindo na mesma casa
- **home_income:** Faixa de renda familiar mensal
- **residents:** Residentes na casa
- **country:** País que o usuário reside
- **state:** Estado que o usuário reside
- **city:** Cidade que o usuário reside
- **district:** Bairro que o usuário reside
- **forms_type:** Tipo de formulário

### Had Forms
Guarda as informações da opção de formulário had, que representa o caso do usuário já ter tido um cão

- **dog_name:** Nome do cachorro
- **belongs_to:** A quem ele pertenceu?
- **dog_personality:** Como você descreve a personalidade desse cão?
- **dog_age:** Ele esteve com você durante quanto tempo?
- **first_dog:** Foi seu primeiro cão?
- **have_other_pets:** Quantos outros pets tinham na casa?
- **dog_age_house:** Quantos anos seu pet tinha quando ele foi íncluido na sua casa?
- **castrated:** Ele era castrado?
- **when_castrated:** Se sim, qual a idada dele ao ser castratado?
- **have_breed:** Seu pet tinha raça definida?
- **dog_breed:** Se sim, qual raça?
- **where_come_from:** De onde veio o cachorro?
- **dog_price:** Qual valor pago pelo pet?
- **why_have:** Por que você tinha esse cão?
- **dog-characteristics:** Quais características que o Pet tinha que o levaram a selecioná-lo ou concordar em mantê-lo?
- **name_motive:** Quem esteve envolvido na decisão do nome do cachorro?
- **dog_like:** Pensando nas primeiras semanas depois da inclusão o que você gostava mais nele/ela?
- **dog_dont_like:** O que você não gostava nele(a)
- **went_vet:** O Pet foi ao veterinário enquanto esteve com você?
- **vet_motives:** Quais os motivos?
- **stopped_living:** A quanto tempo você deixou de conviver com ele?
- **dog_age_time:** Qual idade ele tinha na época?
- **stop_living:** Por quais motivos você deixou de conviver com ele?
- **new_dog:** Você conviveria com um novo cão? Porque?

### Have Forms
Nessa tabela é guardada as informações respectivas do formulário have, que representa o usuário ter um cachorro no presente.

- **dog_name:** Nome do cachorro
- **dog_gender:** Gênero do cão
- **who_belongs:** Pertence a você ou a outro membro da família?
- **castrated:** Ele é castrado?
- **when_castrated:** Quando?
- **years_with_dog:** O seu cão está com você a quantos anos?
- **first_dog:** É o seu primeiro cão?
- **other_pets:** Quantos pets você tem na sua casa?
- **dog_age:** Idade do cão
- **dog_breed:** Seu cachorro possui raça? Se sim qual?
- **where_come_from:** Onde você conseguiu seu cão?
- **paid_to_get:** Você pagou para adquirir seu cão?
- **dog_age_house:** Com quantos anos ele chegou na sua casa?
- **dog_personality:** Como você descreve a personalidade do seu cão?
- **why_have:** Porque você tem esse cão?
- **dog_characteristics:** Quais características ele tem que o agradaram?
- **had_dog:** Você teve algum cão que não pode manter em casa? Por favor, descreva.
- **times_vet:** Quantas vezes você leva ele no veterinário por ano?
- **dog_about:** Se outra pessoa fosse adotar o seu cachorro, o que você diria sobre ele?

### Want Forms
Armazena dados das respostas do formulário wants, que representa o usuário querer um cachorro futuramente.

- **dog_size:** Porte do cão.
- **dog_coat:** Tamanho da pelagem do cão.
- **dog_color:** Cor do cachorro.
- **dog_gender:** Gênero do cachorro.
- **want_breed:** Deseja alguma raça específica de cachorro?
- **dog_breed:** Selecione a raça.
- **why_live_dog:** Por que você gostaria de conviver com um cão?
- **name_idea:** Já pensou em um nome?
- **dog_name:** Qual o nome?
- **name_motive:** Qual o motivo da escolha do nome?
- **buy_or_adopt:** Você pretende comprar ou adotar?
- **when_house:** Já sabe quando irá incluir ele/ela em sua casa?
- **dog_personality:** Gostaria que ele tivesse qual tipo de personalidade/comportamento?
- **dog_expenses:** Você já pesquisou a média de despesas mensais com o pet? Se sim, qual foi o valor encontrado?

### Null Forms
Nessa tabela é armazenada os dados respondidos no Null Forms.

- **why_dont:** Por que você não deseja conviver com cães?

## Relacionamentos

### user : general_forms
Essa relação representa um 1:1, pois um usuário pode ter apenas um formulário geral.

### user : forms_have_dogs
Essa relação representa um 1:N, pois o usuário pode ter vários formulários de vários cães que possui

### user : forms_had_dogs
Essa relação representa um 1:N, pois o usuário pode ter vários formulários de vários cães que possui

### user : forms_want_dogs
Essa relação representa um 1:N, pois o usuário pode ter vários formulários de vários cães que possui

### user : forms_null
Essa relação representa um 1:N, pois o usuário pode ter vários formulários de vários cães que possui

## Regra de negócios
 - Todos os campos obrigatórios devem ser preenchidos

 - Os dados inseridos só podem ser acessados por "staffs" da aplicação

 - Depois de enviado as respostas, não será possível a alteração dos dados enviados

 - Informações pessoais dos usuários são confidenciais

 ## Diagrama

![Diagrama](/assets/diagrama.png)

 ## Conclusão

Em resumo, o modelo relacional simplificado e a arquitetura de banco de dados desenvolvidos para o projeto Abandono Zero proporcionam uma base sólida e eficiente para o gerenciamento das informações dos usuários e suas respostas nos formulários. As entidades, seus atributos e os relacionamentos descritos garantem uma organização clara e estruturada dos dados, enquanto as regras de negócio e diretrizes operacionais asseguram a integridade, consistência e confiabilidade das informações. Assim, o sistema do projeto Abandono Zero está bem equipado para atender aos seus requisitos, promovendo uma administração eficaz e segura dos dados essenciais para a iniciativa.
