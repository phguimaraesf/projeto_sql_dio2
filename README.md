\# Sistema de Controle de Ordens de Serviço para Oficina Mecânica



Este é um sistema para gerenciar a execução de ordens de serviço em uma oficina mecânica. O sistema permite registrar clientes, veículos, mecânicos, ordens de serviço e os serviços executados.



\## Funcionalidades:

\- Cadastro de clientes e veículos.

\- Criação de ordens de serviço (OS).

\- Atribuição de mecânicos a ordens de serviço.

\- Registro de serviços realizados e peças utilizadas.

\- Controle de valores e status das ordens de serviço.



\## Estrutura do Banco de Dados:

1\. \*\*Clientes\*\*: Contém as informações dos clientes.

2\. \*\*Veículos\*\*: Informações sobre os veículos.

3\. \*\*Mecânicos\*\*: Dados dos mecânicos da oficina.

4\. \*\*Ordem de Serviço (OS)\*\*: Dados de cada OS, incluindo número, data de emissão, status, etc.

5\. \*\*Serviços\*\*: Cada serviço executado em uma OS.

6\. \*\*Peças\*\*: Peças utilizadas nos serviços.

7\. \*\*Tabela de Referência de Mão-de-Obra\*\*: Valores dos serviços realizados.



\## Como rodar o projeto:

1\. Clone este repositório.

2\. Execute o script `criar\_tabelas.sql` no seu banco de dados MySQL.

3\. (Opcional) Execute o script `inserir\_dados.sql` para popular as tabelas com dados de exemplo.



\## Licença:

Este projeto é para fins educacionais.



