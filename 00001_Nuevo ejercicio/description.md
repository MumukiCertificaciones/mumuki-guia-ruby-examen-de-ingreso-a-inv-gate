Se tiene un arbol de categorias, donde una categoría puede tener uno o más hijos, que a su
vez pueden tener uno o más hijos y así sucesivamente:

<img src="https://raw.githubusercontent.com/MumukiCertificaciones/mumuki-guia-ruby-examen-de-ingreso-a-inv-gate/master/assets/Screen%20Shot%202018-11-07%20at%2015_1541615227596.26.56.png" alt="Screen Shot 2018-11-07 at 15_1541615227596.26.56.png" width="100%" height="auto">

Aquí la categoría género tiene dos categorías hijas: Rock y Jazz. Rock tiene dos hijas: Nacional
y Extranjero. Nacional, tiene 2 subcategorías Viejito y Moderno.
Se pide obtener todos los caminos de las categorías hoja (es decir, las que no tienen ninguna
categoría hija) hasta las categorías raices, ordenados alfabéticamente.
En este ejemplo, se espera que se devuelvan
Extranjero Rock Genero
Jazz Genero
Moderno Nacional Rock Género
Viejito Nacional Rock Género

Su programa debe recibir por parámetro el nombre de un file que tendrá una línea por cada
relación padre hijo, es decir que el árbol anterior vendría en un archivo de la siguiente manera:

```
Genero Rock
Genero Jazz
Rock Nacional
Rock Extranjero
Nacional Viejito
Nacional Moderno
```

Puede asumir que las palabras no tienen espacios y que hay por lo menos una línea:

Otro ejemplo
A -> X
  -> B -> C
  -> D -> E
       -> F -> G

podría venir en un archivo como:
A B
B C
A D
D E
D F
F G
A X
y la salida esperada es:
C B A
E D A
G F D A
X A

> Defina en ruby la función `procesar_archivo(url)` que reciba la url del archivo, lo procese y retorne la salida correspondiente.