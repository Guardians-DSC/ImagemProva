# !/bin/bash

# @author Júlio Alcantara - 122110504
# Script em bash que cria grupos divididos por setores de saúde.

# Criação inicial dos grupos com o GID setado a partir do 2000, diferentemente da requisição inicial que foi o 1000, pois o GID 1000 já é utilizado pelo grupo do usuário.
sudo groupadd administracao --gid 2000
sudo groupadd enfermeiros --gid 3000
sudo groupadd medicos --gid 4000

# Criacao do Usuário José Gota com ID 5000, ele participa de todos os grupos

# -s -> --shell 
# -m -> --create-home 
# -u -> --uid


# laço que percorre os números de id criando um novo usuario com as condições requisitadas.

# -G -> GID's
# -d -> --lastday
# a flag -d serve para determinar o tempo limite de 0 dias para a definição de uma senha, logo, cada vez que entrar no login, será pedido que uma senha seja cadastrada

for i in {2001..2015}; do
	nome="adm"
	id_fachada=$((i - 2000))
	nome+=$id_fachada
	sudo useradd -m -u $i -s /bin/bash -G administracao $nome 
	sudo chage -d 0 $nome
done

for i in {3001..3030}; do
	nome="enfermeiro"
	id_fachada=$((i - 3000))
	nome+=$id_fachada
	sudo useradd -m -u $i -s /bin/bash -G enfermeiros $nome 
	sudo chage -d 0 $nome
done

for i in {4001..4020}; do
	nome="med"
	id_fachada=$((i - 4000))
	nome+=$id_fachada
	sudo useradd -m -u $i -s /bin/bash -G medicos $nome 
	sudo chage -d 0 $nome
done

# criacao do José Gota e a inserção dele nos grupos já existentes
sudo useradd -s /bin/bash -m -u 5000 -G administracao,enfermeiros,medicos josegota
