#!/bin/bash

while true; do

nome=""
telefone=""
email=""


if(whiptail --title "Teste Vocacional" --yesno "Faça um teste vocacional e descubra se você tem perfil para ser um aluno de Computação do IFRS - Ibirubá!!" --fb 15 40)then
	echo "realizando teste..."
else
	echo "saindo do sistema de teste vocacional"	
	exit
fi

############################################################
#Dados pessoais

nome=$(whiptail --title "Teste Vocacional" --inputbox "Digite seu nome:" --fb 10 60 3>&1 1>&2 2>&3)
resp1=$?

telefone=$(whiptail --title "Teste Vocacional" --inputbox "Digite seu telefone:" --fb 10 60 3>&1 1>&2 2>&3)
resp1=$?

if(whiptail --title "Teste Vocacional" --yesno "Você tem e-mail?" 10 60)then
	email=$(whiptail --title "Teste Vocacional" --inputbox "Qual o seu e-mail:" --fb 10 60 3>&1 1>&2 2>&3)
	resp1=$?			
fi

############################################################
#Questões do teste...

q1=$(whiptail --title "Teste Vocacional" --radiolist \
	"1- Você tem vontade de aprofundar seus estudos em quais disciplinas?" 15 60 5 \
	"1" "Educação Física e Biologia" ON \
	"2" "Física, Biologia e Química" OFF \
	"3" "Português, História, Geografia e Inglês" OFF \
	"4" "Matemática, Física e História" OFF \
	"5" "Matemática, Física e Química" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q2=$(whiptail --title "Teste Vocacional" --radiolist \
	"2- Como é seu relacionamento com computadores e notebooks?" 15 90 5  \
	"1" "Sou curioso e me arrisco tentando montar meu própriio computador" ON \
	"2" "Gosto de navegar em sites de notícias e uso principalmente e-mail" OFF \
	"3" "Tenho vários blogs, participo de fóruns de discussão e passo horas jogando" OFF \
	"4" "Estou sempre online. Baixo filmes e me arrisco a tentar programar" OFF \
	"5" "Nenhuma das anteriores" OFF 3>&1 1>&2 2>&3) 
resp1=$?

##########

q3=$(whiptail --title "Teste Vocacional" --radiolist \
	"3- Você gosta de enigmas e charadas?" 15 70 5 \
	"1" "Adoro!" ON \
	"2" "Gosto, mas tenho muita dificuldade em resolvê-los" OFF \
	"3" "Tenho preguiça de charadas" OFF \
	"4" "Odeio!" OFF \
	"5" "Não gosto muito" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q4=$(whiptail --title "Teste Vocacional" --radiolist \
	"4- O que pensa de continuar estudando depois de terminar o curso de Ciência da Computação?" 15 100 5 \
	"1" "Especialização" ON \
	"2" "Mestrado" OFF \
	"3" "Quero trabalhar" OFF \
	"4" "Trabalhar um tempo antes de buscar uma pós-graduação" OFF \
	"5" "Penso em continuar estudando sempre... pós-graduação.. mestrado.. doutorado" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q5=$(whiptail --title "Teste Vocacional" --radiolist \
	"5- O que é desenvolvido por um profissional de Ciência da Computação?" 15 60 5 \
	"1" "Jogos de videogame" ON \
	"2" "Sistemas operacionais como Windows e Linux" OFF \
	"3" "Hardware" OFF \
	"4" "As alternativas A e B estão corretas" OFF \
	"5" "Todas incorretas" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q6=$(whiptail --title "Teste Vocacional" --radiolist \
	"6- Uma das seguintes alternativas mostra as habilidades fundamentais para o curso de Ciência da Computação. Quais são elas?" 15 80 5 \
	"1" "Raciocínio lógico, ser curioso, criatividade e determinação" ON \
	"2" "Gostar de escrever, ser aventureiro e ter racioncínio lógico" OFF \
	"3" "Ser curioso, paciente e ter determinação" OFF \
	"4" "Ser perfeccionista, aventureiro e determinado" OFF \
	"5" "Raciocínio lógico, ser perfeccionista e gostar de escrever" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q7=$(whiptail --title "Teste Vocacional" --radiolist \
	"7- Você acha que línguas estrangeiras são importantes para um profissional de Ciência da Computação?" 15 90 5 \
	"1" "Aprender outros idiomas não faz muita diferença" ON \
	"2" "Pode até ser importante, mas tenho muita dificuldade com outras línguas" OFF \
	"3" "Considero importante saber falar inglês e ter interesse em outras línguas" OFF \
	"4" "Acho que qualquer profissional precisa saber inglês hoje em dia" OFF \
	"5" "Nenhuma das antereiores" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q8=$(whiptail --title "Teste Vocacional" --radiolist \
	"8- O pai de Maria tem cinco filhas. A primeira é Lalá, depois Lelé, Lili, Loló e..." 15 40 5 \
	"1" "... Lulu" ON \
	"2" "... Luiza" OFF \
	"3" "... Lão" OFF \
	"4" "... Maria" OFF \
	"5" "Nenhuma das anteriores" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q9=$(whiptail --title "Teste Vocacional" --radiolist \
	"9- Quanto você considera um bom salário para o início de carreira em Ciência da Computação?" 15 40 5 \
	"1" "R$ 2.500" ON \
	"2" "R$ 1.000" OFF \
	"3" "R$ 500" OFF \
	"4" "R$ 5.000" OFF \
	"5" "R$ 10.000" OFF 3>&1 1>&2 2>&3)
resp1=$?

##########

q10=$(whiptail --title "Teste Vocacional" --radiolist \
	"10- Um cientista da computação pode trabalhar desenvolvendo programas para outras áreas. Você se considera versátil para pensar em soluções fora da área de exatas?" 15 90 5 \
	"1" "Nunca pensei nisso" ON \
	"2" "Vejo soluções matemáticas/lógicas para diversas coisas, independente da área" OFF \
	"3" "Odeio e quero distância das áreas de humanas e biológicas" OFF \
	"4" "Me interesso mesmo é por computadores" OFF \
	"5" "Não tenho certeza se exatas é mesmo a minha praia" OFF 3>&1 1>&2 2>&3)
resp1=$?


############################################################
#Atribuindo pesos as respostas


case "$q1" in
1) pq1=1 ;;
2) pq1=1 ;;
3) pq1=1 ;;
4) pq1=3 ;;
5) pq1=2 ;;
esac

case "$q2" in
1) pq2=3 ;;
2) pq2=2 ;;
3) pq2=2 ;;
4) pq2=3 ;;
5) pq2=1 ;;
esac

case "$q3" in
1) pq3=3 ;;
2) pq3=3 ;;
3) pq3=2 ;;
4) pq3=1 ;;
5) pq3=1 ;;
esac

case "$q4" in
1) pq4=3 ;;
2) pq4=3 ;;
3) pq4=2 ;;
4) pq4=3 ;;
5) pq4=3 ;;
esac

case "$q5" in
1) pq5=3 ;;
2) pq5=3 ;;
3) pq5=2 ;;
4) pq5=3 ;;
5) pq5=1 ;;
esac

case "$q6" in
1) pq6=3 ;;
2) pq6=2 ;;
3) pq6=3 ;;
4) pq6=2 ;;
5) pq6=1 ;;
esac

case "$q7" in
1) pq7=1 ;;
2) pq7=1 ;;
3) pq7=3 ;;
4) pq7=3 ;;
5) pq7=1 ;;
esac

case "$q8" in
1) pq8=1 ;;
2) pq8=1 ;;
3) pq8=1 ;;
4) pq8=3 ;;
5) pq8=1 ;;
esac

case "$q9" in
1) pq9=3 ;;
2) pq9=1 ;;
3) pq9=1 ;;
4) pq9=2 ;;
5) pq9=1 ;;
esac

case "$q10" in
1) pq10=1 ;;
2) pq10=3 ;;
3) pq10=2 ;;
4) pq10=2 ;;
5) pq10=1 ;;
esac

############################################################
#calculando e exibindo o resultado

media = ($pq1+$pq2+$pq3+$pq4+$pq5+$pq6+$pq7+$pq8+$pq9+$pq10)/10

if [ $media -eq 1 ] ; then #menor que 1.5
whiptail --title "Você não tem Vocação para o Curso de Ciência da Computação" --msgbox "Você não tem a vocação para ciência da computação e está fantasiando muito sobre esta profissão. Muitas vezes amigos e familiares tem o costume de nos indicar uma profissão para seguir, eles não fazem isso por mau, estão pensando no seu futuro. Você não precisa seguir esta indicação dos seus amigos e familiares. Para sermos felizes em nossa vida pessoal é essencial que sejamos realizados em nossa profissão. Procure se informar sobre os outros cursos do IFRS e siga a sua verdadeira vocação.." --fb 15 70
fi

if [ $media -ge 1 ] && [ $media -le 2 ] ; then #maior ou igual a 1.5 && menor ou igual a 2
whiptail --title "O Curso de Ciência da Computação é uma Boa Opção para Você" --msgbox "Além de gostar do Curso de Ciência da Computação, você tem uma boa idéia sobre o dia a dia dos desenvolvedores e programadores. Você tem todos os atributos necessários para seguir a carreira de ciência da computação e conseguir um bom sucesso na profissão, no entanto, vale a pena pesquisar melhor e procurar conhecer também algumas profissões relacionadas." --fb 15 70
fi

if [ $media -gt 2 ] ; then #maior que 2
whiptail --title "O Curso de Ciência da Computação é a escolha ideal para você" --msgbox "Você adora jogar videogame e vive navegando na internet. E, no Natal, a família e os amigos pedem sua opinião na hora de decidir qual é o melhor modelo de uma nova câmera digital, por considerar seu parecer importante. Venha cursar Ciência da Computação no IFRS - Ibirubá!!!" --fb 15 70
fi

############################################################
#mensagem final

whiptail --title "O que faz o cientista da computação?" --msgbox "O bacharel da Ciência da Computação trabalha, fundamentalmente, na elaboração de programas de informática, para computadores ou dispositivos móveis, como celulares e tablets. Analisa as necessidades dos usuários, desenvolve softwares e aplicativos, gerencia equipes de criação e instala sistemas de computação. Cria ferramentas de informática, dos softwares mais básicos, como os usados para controle de estoques, até os mais complexos sistemas de processamento de informações. Também dá assistência aos usuários, manutenção a redes de computadores e a conexões com a internet. Pode, ainda, implantar e gerenciar bancos de dados e instalar sistemas de segurança para as operações de compra e venda pela rede." --fb 15 70


############################################################
#salvando respostas em um arquivo

echo "$nome;$telefone;$email;$q1;$q2;$q3;$q4;$q5;$q6;$q7;$q8;$q9;$q10;$media" >> respostas_teste.txt

done





