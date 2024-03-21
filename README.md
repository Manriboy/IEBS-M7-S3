# Sprint 3
Repositorio para entrega de Sprint 3 en módulo de Smart Contracts

## Objetivos del proyecto

Este proyecto tiene como objetivo de crear tres (3) contratos inteligentes. El primer contrato servirá para crear tokens con estándar ERC-721, el segundo igual, pero con estándar ERC-1155, y un tercer contrato que interactue con los dos anteriores. Además, los dos primeros contratos deben tener una función personalizada para hacerlos diferentes a un código estándar de NFT

## Explicación de contratos

### Contrato 1: NFT_ERC-721.sol

<img width="848" alt="Captura de pantalla 2024-03-21 a la(s) 00 07 39" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/77981de1-e5dc-42f8-b334-662d65b1278e">

El primero contrato tiene como objetivo la creación del NFT estándar ERC-721 con el nombre de MomBreY_NFT (con la sigla MBY_NFT). Es un contrato de creación simple, pero con el objetivo de ocultar las estáfas, el contrato no permite crear un segundo NFT para la misma direccion (address) en menos de 1 hora

<img width="422" alt="Captura de pantalla 2024-03-20 a la(s) 21 34 08" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/b95ea154-c1ca-4465-8919-91cb19da3071">

Primero se especifíca la licencia MIT
Se usa la versión 8 de solidity
Se importa el contrato de tokens con estándar ERC y luego la función de Counters para llevar el contrador de los NFT creados

<img width="421" alt="Captura de pantalla 2024-03-20 a la(s) 21 35 37" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/7dcd9978-0867-4dd5-b725-c8a132e75713">

En estás lineas se inicializa el contrato con el nombre MBY_NFT y se herada las condiciones del contrato ERC721.
Se llama la función Counters recién importada y se crean dos (2) variables nuevas para restringir la creación de más de 1 NFT en una hora para la misma cuenta. Estás serán ultima_creacion y tiempo_min.

<img width="379" alt="Captura de pantalla 2024-03-20 a la(s) 21 37 59" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/d4e75098-6883-4538-9812-9b206b65c2a6">

Constructor con el nombre y símbolo del NFT

<img width="821" alt="Captura de pantalla 2024-03-20 a la(s) 21 38 27" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/5caad181-2315-47ef-8433-fb23430a88e0">

Y por último la función que, revisando que la última creación no haya sido hace menos de una (1) hora, devuelve el NFT en la dirección solicitada en los argumentos. Esta función crea el item y se lo transfiere directamente a la address entregada

### Contrato 2: SFT_ERC-1155.sol

<img width="811" alt="Captura de pantalla 2024-03-21 a la(s) 00 08 09" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/a3f06827-1831-4c44-bb12-7e4aa7928593">

Este segundo contrato es básicamente igual al primero, pero ahora con el estándar ERC-1155 y con un mínimo de 5 horas entre creación

<img width="807" alt="Captura de pantalla 2024-03-20 a la(s) 21 43 21" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/bf93281c-5c5e-4c38-838c-17966b9b98e6">

### Contrato 3: SM_relacion.sol

<img width="662" alt="Captura de pantalla 2024-03-21 a la(s) 00 08 45" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/e2c735b3-9a36-4931-871e-cb5c20c84060">

Este último contrato se presenta el contrato que interactua con la creación de NFT ERC-721 del contrato MBY_NFT. Este requiera la address del contrato MBY_NFT para deployarse y una vez hecho esto tiene una sola función con el nombre de Envia_NFT. Esta segunda función nos pide un address para enviar un token NFT a la misma. Como el contrato 1 tiene restricción para crear NFT, este último contrato no podrá enviar NFT a la misma dirección en un periodo menor a 1 hora entre envío y envío

<img width="429" alt="Captura de pantalla 2024-03-20 a la(s) 23 31 41" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/15f93f8a-5467-473b-8111-734556c2f193">

Al igual que los primeros contratos, primero viene la definición de licencia, la versión de solidity y la importación de otros contratos, en este caso el ERC-721

<img width="217" alt="Captura de pantalla 2024-03-20 a la(s) 23 32 40" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/60c6a679-b82f-4d2c-a013-08b580ecc7ca">

Luego viene la definición del contrato con su nombre "distribución_nft" y con la definición de que irá a llamar un contrato privado con el nombre de MBY_NFT

<img width="248" alt="Captura de pantalla 2024-03-20 a la(s) 23 34 14" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/de6a7674-18b8-401a-908c-6186fe5b0fe8">

En el constructor se especifíca que para ejecutrase este contrato, se quieriere la dirección del contrato que se define como esa al llamar nuevamente la variable privada IERC721 / MBY_NFT

<img width="513" alt="Captura de pantalla 2024-03-20 a la(s) 23 35 50" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/459dc7fc-53c2-41e5-9a83-992e9a49b854">

En esta primera función se define que se puede transferir a un arreglo [] de direcciones para enviar, utilizará la función trae_nft (explicada más adelante) para validar que el token existe y lo envié el último token creado a todas las direcciones ingresadas utilizando transferFrom del contrato MBY_NFT

<img width="527" alt="Captura de pantalla 2024-03-20 a la(s) 23 40 18" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/35d7d947-d8fd-45eb-baa6-a12e9e858496">

Finalmente la función trae_nft es la que revisa el último token creado por el contrato MBY_NFT y lo trae al contrato actual para ser enviado

## Direcciones y transacciones involucradas

### Ambiente Sepholia Testnet

### Contrato 1: Creación de token ERC-721

0xCFA50549e5c0dC835Ed70e9b22A0dEa7daf2B3A4

<img width="1433" alt="Captura de pantalla 2024-03-20 a la(s) 23 42 58" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/3fd619bf-e815-4efe-abd4-ab8fc1cebf51">

### Contrato 2: Creación de token ERC-1155

0x006dfDA545448D9Db7248513E8D88312724437C5

<img width="1440" alt="Captura de pantalla 2024-03-21 a la(s) 00 01 48" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/22317697-6a9d-4fc9-8e0f-723d49cfdc51">

### Contrato 3: Creación de smart contract SM_relacion.sol

0x4AcEb4B5975b6C3e3d3e50C931426f0CB6672471

<img width="1438" alt="Captura de pantalla 2024-03-21 a la(s) 00 04 50" src="https://github.com/Manriboy/IEBS-M7-S3/assets/156150473/ee2280a6-807b-4f98-9514-5eb26fd97483">
