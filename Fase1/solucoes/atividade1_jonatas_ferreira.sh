#!/bin/bash

function create_groups() {
	groupadd -g 1000 administracao
	groupadd -g 2000 enfermeiros
	groupadd -g 3000 medicos
}

function create_user_jose_gota() {
	useradd -u 1000 -m /home/jose_gota -s /bin/bash -G administracao,enfermeiros,medicos jose_gota
}

function get_postfix() {
	uid=$1
	echo $uid | cut -c 3,4
}

function create_administracao() {
	uid=$1
	postfix=$(get_postfix $uid)
	username="adm$postfix"

	useradd -u $uid -g administracao $username
	passwd -e $username
}

function create_enfermeiro() {
	uid=$1
	postfix=$(get_postfix $uid)
	username="enfermeiro$postfix"

	useradd -u $uid -g enfermeiros $username
	passwd -e $username
}

function create_medico() {
	uid=$1
	postfix=$(get_postfix $uid)
	username="medico$postfix"

	useradd -u $uid -g medicos $username
	passwd -e $username
}

create_groups && create_user_jose_gota

for uid in `seq 1001 1015`; do
	create_administracao $uid
done

for uid in `seq 2001 2030`; do
	create_enfermeiro $uid
done

for uid in `seq 3001 3020`; do
	create_medico $uid
done
