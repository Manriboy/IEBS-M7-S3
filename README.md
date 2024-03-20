# IEBS-M7-S3
Repositorio para entrega de Sprint 3 en módulo de Smart Contracts

# Sprint 2

## Objetivos del proyecto

Este proyecto tiene como objetivo el crear un token nuevo llamado MomBreY 3.0 con el cuál poder invertir en proyectos medio ambientales y de solidaridad de tres (3) índoles. Se puede invertir en plantar árboles, en rescatar animales de la calle o en alimentar personas en situación de calle. El proyecto consta de dos (2) contratos. El primer contrato consiste en la creación de 1.000.000 (1M) de MomBrey tokens (MBY) que tendrán un valor de 0.001 ETH y que servirán para invertir en los tres (3) diferentes proyectos. El segiundo contrato es para comprar los tokens MBY y poder inverir en el proyecto que el usuario estime conveniente. A continuación, se presentan los códigos de ambos contratos y sus respectivas direcciones y respaldos.

## Explicación de contratos

### Contrato 1: Sprint_2_MBY-token.sol

El primero contrato tiene como objetivo la creación del token MBY. Se pide la creación de 1.000.000 de tokens y además se incluye una función que permite la creación de más tokens si es necesario. Estos códigos son obtenidos de las clases y vienen todas las funciones correspondientes a la documentación ERC20. 

<img width="528" alt="Captura de pantalla 2024-03-13 a la(s) 11 30 20" src="https://github.com/Manriboy/masterIEBS/assets/156150473/846fda31-4a77-42cb-975d-830b72b18211">

### Contrato 2: Sprint_2_Salva-vidas.sol

En este segundo contrato, como se explica en los objetivos del proyecto, se desarrolla la compra y venta de los tokens y la posibilidad de invertir en los proyectos mencionados.

<img width="445" alt="Captura de pantalla 2024-03-13 a la(s) 11 38 37" src="https://github.com/Manriboy/masterIEBS/assets/156150473/7fa95533-b706-41e5-813f-60e2ea0baf08">

En una primera instancia, se define la librería de ERC20 y se inicializa el contrato. Para comenzar, se incluye la definición de las variables públicas mby y direccion_mby, que corresponden al token y a la dirección del contrato de creación de MBY, más el precio del token respecto a ETH y su compra mínima. Estas dos (2) últimas variables son constantes definidas y públicas para el contrato.

<img width="814" alt="Captura de pantalla 2024-03-13 a la(s) 12 14 32" src="https://github.com/Manriboy/masterIEBS/assets/156150473/4ed8c4b8-2f3c-4974-9339-5da79f39dac4">

En el extracto anterior, se presentan los tres (3) proyectos diferentes (vegetal, animal y humano), se mapea el costo de los mismos y se crean los eventos de compra de tokens más la inversión en los proyectos. Este último incluye los proyectos en sí, los tokens utilizados, la cantidad y un mensaje para confirmar la misma.

<img width="664" alt="Captura de pantalla 2024-03-13 a la(s) 12 23 19" src="https://github.com/Manriboy/masterIEBS/assets/156150473/32b0a544-1453-459c-b56b-7255fa0859e7">

En la imagen de arriba se presenta el constructor que pide como argumento para desplegar el contrato, la dirección que tendrá los tokens especiales que requiere el contrato (mby_address). Se incluye el instanciamiento de la misma más los costos estipulados en tokens para cada uno de los proyectos mencionados más arriba.

<img width="489" alt="Captura de pantalla 2024-03-13 a la(s) 12 30 35" src="https://github.com/Manriboy/masterIEBS/assets/156150473/6eea9503-8dde-49cc-9cae-6238f2dda259">

La función que se muestra arriba es la función de compra mostrada en clases. Esta se modificó para entregar 1000 tokens cada 1 ETH y se incluyeron los cambios correspondientes a la nueva moneda en los mensajes

<img width="534" alt="Captura de pantalla 2024-03-13 a la(s) 12 38 28" src="https://github.com/Manriboy/masterIEBS/assets/156150473/3c686277-11d6-430a-8217-413018e5b800">

Al igual que la anterior, se muestra en esta foto la función de VentaMBY que es la misma función que se entregó en las clases, donde se le compran al usuario los MBY por ETH. Estas se compran a 1000 tokens por ETH

<img width="897" alt="Captura de pantalla 2024-03-13 a la(s) 13 30 11" src="https://github.com/Manriboy/masterIEBS/assets/156150473/631e5ac7-6850-46f5-9642-d1fd6136394d">

En la imagen anterior, se presenta la función para invertir en proyectos. Esta función requiere dos (2) inputs que son el monto a invertir y el proyecto elegido. Luego de esto están las definiciones para que el monto invertido no sea menor al costo de un proyecto, que hayan suficientes MBY para el monto solicitado y verificar el aprove del contrato para gestionar los fondos entregados. Luego se presenta el extracto donde está la instrucción de transferir los tokens el usuario al contrato nuevamente según el costo del proyecto elegido y las condiciones para escribir el mensaje (depdendiendo del proyecto elegido). Se destaca que dentro del mensaje a mostrar por consola, se sombrea la definición "uint2str" que ayuda a convertir un número en un string para el mensaje. Esta definición incluye una función que se escribe a continuación

<img width="514" alt="Captura de pantalla 2024-03-13 a la(s) 13 45 35" src="https://github.com/Manriboy/masterIEBS/assets/156150473/2b230832-d32c-4a9c-bcd8-b21c12a2afbd">


## Direcciones y transacciones involucradas

### Ambiente Sepholia Testnet

### Contrato 1: Creación de token

0xC965bCe6f7A7106C1dda3878ca1903640695437F


<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 13 51 47" src="https://github.com/Manriboy/masterIEBS/assets/156150473/afc65d23-9f44-4c03-bd7e-35bba34810f0">


<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 13 51 27" src="https://github.com/Manriboy/masterIEBS/assets/156150473/9205c35f-9397-4630-8d43-87967f350b05">


### Contrato 2: Compra, venta e inversión de token

0xAF35Fd63c4fAB18DA614FCe6d30818AF27324D7D

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 14 10 35" src="https://github.com/Manriboy/masterIEBS/assets/156150473/a2802991-39a1-4cd3-8990-66f93d7fa633">


### Despliegue de Smart Contract 1

Hash transaccion

0x9361f38b809b631723bf34355ac0e49979051fed73fc082c7a8bbe61889dd775

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 14 13 55" src="https://github.com/Manriboy/masterIEBS/assets/156150473/65e253a3-193d-4d07-9b22-fc122c4a758a">


### Address para incluir en Smart Contract 2

0x0d66bc92c8C432de0b3379068F528ED97132a194 (Smart Contract 1)

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 14 14 18" src="https://github.com/Manriboy/masterIEBS/assets/156150473/ea6985c2-fae5-4374-8724-a06cf74e88e6">


### Despliegue de Smart Contract 2

Hash transaccion

0xde5fcdaaf3f795d9579acb0e40909abb9c76a9b28e71b50ae17126bd2eab896d

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 14 15 22" src="https://github.com/Manriboy/masterIEBS/assets/156150473/f1586469-b9a5-46c1-8fa5-e0c0c59ac4b5">


### Funciones Smart Contract 1

<img width="307" alt="Captura de pantalla 2024-03-13 a la(s) 14 16 39" src="https://github.com/Manriboy/masterIEBS/assets/156150473/8ffaac6c-696d-42c6-8257-ee271c5d64c9">


### Funciones Smart Contract 2

<img width="299" alt="Captura de pantalla 2024-03-13 a la(s) 14 17 18" src="https://github.com/Manriboy/masterIEBS/assets/156150473/82b45f6b-570a-4239-8290-7d208402568f">


### Verificación Smart Contract 1

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 17 29 47" src="https://github.com/Manriboy/masterIEBS/assets/156150473/e190d613-3b0b-41c8-8b7d-f8ae5d6e16cb">


### Verificación Smart Contract 2

<img width="1440" alt="Captura de pantalla 2024-03-13 a la(s) 18 22 51" src="https://github.com/Manriboy/masterIEBS/assets/156150473/4f3da50a-03dd-4ed2-906c-afeb8cde0e0b">


## Preguntas y respuestas

¿Qué caso de uso pretenden resolver los Smart Contracts que se han programado?

El caso de uso a resolver es crear una critpomoneda que permita en invertir en estos proyectos medioambientales y solidarios a través de una plataforma segura y descentralizada donde no se de espacio para malversación de fondos. Las fundaciones adheridas a este sistema tienen total transparencia de los fondos invertidos y saben perfectamente cuanto dinero les debería llegar. Además los inversores también ganan publicidad al ser pública la inversión que están teniendo en proyectos sociales

¿Qué valor añadido aporta este caso de uso a otros existentes (análisis de competencia)?

La seguridad, descentralización y transparencia de la red de blockchain hace más atractivo para los inversionastas y para las fundaciones el participar de este proyecto. Además siendo un proyecto con tanto potencial y con su propio token, algunos inversionistas pueden empezar a involucrarse por el precio que el mismo token irá adquiriendo con el tiempo

¿Cómo puede mejorarse técnicamente este caso de uso?

Se podrían crear funciones en el smart contract que permita agregar más fundaciones y más proyectos que puedan estar participando. Además de esto se podrían declarar funciones que interactuen con las cuentas de blockchain de las fundaciones para que directamente se le depositen en ETH los valores invertidos en ellos

