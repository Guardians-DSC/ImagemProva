# Gerenciamento de Usuários

## Arquivos de configuração

### /etc/passwd

- Lista dos usuários do sistema
- Antigamente, era utilizado como arquivo de senhas
- Legível por qualquer um no sistema
- Pode ser editado com editores de texto; porém é recomendado que seja alterado a partir do comando: usermod (/usr/sbin/usermod)
- julio:x:1000:1000:julio,,,:/home/julio:/bin/bash
  1   2   3    4      5           6          7

1. Nome de usuário (1-32 caracteres) | sem números;
2. Senha (senhas shadow) ;
3. UID (ID do usuário) (0-65,535) | Entre 0 e 999, são do sistema. | root - UID0000;
4. GID (ID do grupo) (primário); 
5. Comentários - informações extras sobre o usuário (Nome completo/ número do telefone);
- GECOS - General Electric Compreensive Operating Supervisor;
6. Diretório Home Padrão;
7. Shell padrão do usuário.
- root:x:0000:0000:/root:/bin/bash

### /etc/group e /etc/gshadow
 
#### /etc/group 
- Define os grupos aos quais os usuários pertencem.
- São usados para aplicar permissões de acesso a recursos do sistema.


- cdrom:x:24:julio
- julio:x:1000:
    1   2  3   4

1. Nome do Grupo;
2. Senha do Grupo;
3. GID do Grupo;
4. Lista de Membros separados por vírgulas.

- /etc/gshadow - possui as senhas criptografadas do grupo.
- sambashare:!::julio
       1     2 3  4
1. Nome do Grupo;
2. Senha Criptografada(caso haja); ! = usuários de fora do grupo não podem acessar(! = símbolo de negação);
3. Administradores do Grupo;
4. Membros do Grupo.

- groups - descobrir quais grupos um usuário é membro
```bash 
groups [username]
```
- id - ID's de grupos e usuário && grupos que ele pertence.

```bash 
id [options] [username]
```
1. options:
- -g [GID] (--gid) | GID do grupo primário do usuário 
- -G -> Todos os GID's do grupo do usuário
- -n -> Mostra os nomes do grupos invés dos GIDs 
# Gerenciamento de Usuários

## Arquivos de configuração

### /etc/passwd

- Lista dos usuários do sistema
- Antigamente, era utilizado como arquivo de senhas
- Legível por qualquer um no sistema
- Pode ser editado com editores de texto; porém é recomendado que seja alterado a partir do comando: usermod (/usr/sbin/usermod)
- julio:x:1000:1000:julio,,,:/home/julio:/bin/bash
  1   2   3    4      5           6          7

1. Nome de usuário (1-32 caracteres) | sem números;
2. Senha (senhas shadow) ;
3. UID (ID do usuário) (0-65,535) | Entre 0 e 999, são do sistema. | root - UID0000;
4. GID (ID do grupo) (primário); 
5. Comentários - informações extras sobre o usuário (Nome completo/ número do telefone);
- GECOS - General Electric Compreensive Operating Supervisor;
6. Diretório Home Padrão;
7. Shell padrão do usuário.
- root:x:0000:0000:/root:/bin/bash

### /etc/group e /etc/gshadow
 
#### /etc/group 
- Define os grupos aos quais os usuários pertencem.
- São usados para aplicar permissões de acesso a recursos do sistema.


- cdrom:x:24:julio
- julio:x:1000:
    1   2  3   4

1. Nome do Grupo;
2. Senha do Grupo;
3. GID do Grupo;
4. Lista de Membros separados por vírgulas.

- /etc/gshadow - possui as senhas criptografadas do grupo.
- sambashare:!::julio
       1     2 3  4
1. Nome do Grupo;
2. Senha Criptografada(caso haja); ! = usuários de fora do grupo não podem acessar(! = símbolo de negação);
3. Administradores do Grupo;
4. Membros do Grupo.

- groups - descobrir quais grupos um usuário é membro
```bash 
groups [username]
```
### ~$ useradd [opcoes] [groupname]

- opcoes: 
- -c [comment] (--comment)-> Define o campo comentário(nome_usuario, telefone...)
- -d [dir_home] (--home-dir) |definir o diretório home do usuário
- -m (--create-home) cria e preenche o diretório home
- -s [shell] | bash zsh fish ...
- -e (--expiredate) | YYYY-MM-DD 
- -u [UID] | UID que vai ser acessada
