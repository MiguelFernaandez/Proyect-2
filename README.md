# Credit Card India

En este proyecto me centré en el análisis y gestión de datos sobre transacciones en India.

Primero, como en cualquier otro proyecto, exploré el conjunto de datos para determinar qué información teníamos disponible y cómo podíamos utilizarla para extraer ideas. Todo este trabajo fue realizado desde Python. Posteriormente, conecté SQL y Python utilizando la librería 'pymysql'. Desde Python, creé la nueva base de datos e inserté los datos en las tablas.

Obtuve como resultado tres tablas relacionadas por identificadores únicos: 'Transacciones', 'Tipos de Gastos' y 'Tipos de Tarjetas'.

Estas tablas las relacioné mediante las 'primary keys' y las 'foreign keys'. Aquí dejo un ejemplo:

```sql

ALTER TABLE trans
ADD CONSTRAINT exp_id
FOREIGN KEY (Exp_id) REFERENCES expense(Exp_id);

```

### Obtuve las siguientes tablas:


### Tabla de transferencias:


<img src="https://github.com/MiguelFernaandez/Proyect-2/assets/156945355/0a7f3def-4b3d-4639-8e06-32a7f388e65c" alt="Descripción de la imagen" width="600">


### Tabla de tipos de gastos:


<img src="https://github.com/MiguelFernaandez/Proyect-2/assets/156945355/c81a44dc-43f8-4940-8dab-4bfdd4a7513f" alt="Descripción de la imagen" width="150">


### Tabla de tipos de tarjetas:

<img src="https://github.com/MiguelFernaandez/Proyect-2/assets/156945355/f6a4e9b4-97e4-4998-a114-b4516f1ca4c3" alt="Descripción de la imagen" width="150">


La estructura de la base de datos es la siguiente:

<img src="https://github.com/MiguelFernaandez/Proyect-2/assets/156945355/65c560a5-21c4-438f-9394-d038a714b1fd" alt="Descripción de la imagen" width="300">

## Análisis y visualización

Comencé el análisis examinando los gastos, filtrándolos por género, cantidad acumulada, separándolos por ciudades y tipos de tarjetas de crédito.

Curiosamente, observé que en India las mujeres, en promedio, tienen más gastos que los hombres, especialmente en la categoría de facturas, lo cual me sorprendió mucho. Las tarjetas que registraban los mayores gastos eran las de categoría "silver" para las mujeres, mientras que para los hombres eran las "platinum". La diferencia de gastos entre las tarjetas con mayor gasto de ambos géneros es de 475.698.790 rupias, lo cual es una diferencia más que notable.

También noté que los indios gastan menos en viajes, ya que representaba menos del 10% del gasto total de los indios.

Pero no te estoy diciendo que me creas, ¡explora el conjunto de datos por ti mismo!

[Tableau Public](https://public.tableau.com/app/profile/miguelz.fern.ndez/viz/Project2ccIndiafinal/Historia1?publish=yes)







