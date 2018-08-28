#!/bin/bash

media=1.91212


if [ $(echo "$media < 1.5" | bc) -eq 1 ] ; then #menor que 1.5
	whiptail --title "Você não tem Vocação para o Curso de Ciência da Computação" --msgbox "Você não tem a vocação para ciência da computação e está fantasiando muito sobre esta profissão. Muitas vezes amigos e familiares tem o costume de nos indicar uma profissão para seguir, eles não fazem isso por mau, estão pensando no seu futuro. Você não precisa seguir esta indicação dos seus amigos e familiares. Para sermos felizes em nossa vida pessoal é essencial que sejamos realizados em nossa profissão. Procure se informar sobre os outros cursos do IFRS e siga a sua verdadeira vocação.." --fb 15 70
fi

if [ $(echo "$media >= 1.5" | bc) -eq 1 ] ; then #maior ou igual a 1.5 && menor que 2
	if [ $(echo "$media < 2" | bc) -eq 1 ] ; then
		whiptail --title "O Curso de Ciência da Computação é uma Boa Opção para Você" --msgbox "Além de gostar do Curso de Ciência da Computação, você tem uma boa idéia sobre o dia a dia dos desenvolvedores e programadores. Você tem todos os atributos necessários para seguir a carreira de ciência da computação e conseguir um bom sucesso na profissão, no entanto, vale a pena pesquisar melhor e procurar conhecer também algumas profissões relacionadas." --fb 15 70
	fi
fi

if [ $(echo "$media >= 2" | bc) -eq 1 ] ; then #maior ou igual a 2
	whiptail --title "O Curso de Ciência da Computação é a escolha ideal para você" --msgbox "Você adora jogar videogame e vive navegando na internet. E, no Natal, a família e os amigos pedem sua opinião na hora de decidir qual é o melhor modelo de uma nova câmera digital, por considerar seu parecer importante. Venha cursar Ciência da Computação no IFRS - Ibirubá!!!" --fb 15 70
fi

