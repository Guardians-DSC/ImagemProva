# Atividade 1 - Gerência de Usuários

### Objetivo:
Aprender os básicos de gerência de usuários: pra quê serve, como editar, como categorizar usuários em grupos, como bloquear usuários, como controlar permissões e como excluir usuários e grupos.

### Comandos utilizados:
```
useradd
userdel
usermod

groupadd
groupdel
groupmod

passwd
```
### Links úteis
[Gerenciamento de Usuários e Grupos no Linux](https://ricardo-reis.medium.com/gerenciamento-de-usu%C3%A1rios-e-grupos-no-linux-ef0c6cb95880)

[How to Manage Users and Groups in Linux](https://www.redhat.com/sysadmin/linux-user-group-management)

## Exercícios - Parte 1

O senhor José Gota é uma figura notória do ramo da saúde, e está abrindo uma nova policlínica. Ele contratou um time de TI para fazer as instalações dos computadores, e um dos passos é cadastrar todos os funcionários nas máquinas para que possam fazer login e utilizar.
O time de TI é muito competente, e consegue fazer isso rapidamente com poucas linhas de código, num piscar de olhos :D 

Faça um script bash que crie os usuários seguindo as especificações:

1) No total, são 66 funcionários, numerados de 1000 até 1066. 
- O usuário 5000 é o José Gota
- Os usuários 1001-1015 são da administração, nomeados como admXX, sendo XX números 01 até 15.
- Os usuários 2001-2030 são enfermeiros, nomeados enfermeiroXX, sendo XX números 01 até 30.
- Os usuários 3001-3020 são médicos, nomeados medXX, sendo XX números 01 até 20.

2) Cada usuário pertencerá a um grupo.
- Usuários da faixa de ID 1001-1015 farão parte do grupo administracao, com ID 1000
- Usuários da faixa de ID 2001-2030 farão parte do grupo enfermeiros, com ID 2000
- Usuários da faixa de ID 3001-3020 farão parte do grupo medicos, com ID 3000
- José Gota participará de todos os grupos.

3) No primeiro login, todos os usuários tem que cadastrar sua senha, isso tem que ser garantido no script.
