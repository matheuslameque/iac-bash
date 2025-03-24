# Projeto IaC: Automação de Workspace com Script Bash

Este projeto foi proposto como um desafio pela DIO e visa automatizar a criação de um workspace simples, incluindo a criação de diretórios, grupos e usuários, além de configurar suas permissões. O script Bash foi desenvolvido para facilitar a configuração inicial de um ambiente de trabalho. 

## Requisitos do projeto

- **Todo provsionamento deve ser feito em um arquivo do tipo Bash Script;**
- **O dono de todos os diretórios criados será o usuário root;**
- **Todos os usuários terão permissão total dentro do diretório publico;**
- **Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;**
- **Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.** 

## Estrutura do Projeto

- **Diretórios**:
  - `/publico`
  - `/adm`
  - `/ven`
  - `/sec`

- **Grupos**:
  - `GRP_ADM`
  - `GRP_VEN`
  - `GRP_SEC`

- **Usuários**:
  - `carlos`, `maria`, `joao`, pertencem ao `GRP_ADM`
  - `debora`, `sebastiana`, `roberto`, pertencem ao `GRP_VEN`
  - `josefina`, `amanda`, `rogerio`, pertencem ao `GRP_SEC`

## Como Usar

1. Clone o repositório:
   ```
   git clone https://github.com/seu-usuario/seu-repositorio.git

   ```

2. Navegue até o diretório do projeto:
   ```
   cd <seu-repositorio>

   ```
3. Execute o script Bash:
   ```
   ./create_workspace.sh

   ```  
