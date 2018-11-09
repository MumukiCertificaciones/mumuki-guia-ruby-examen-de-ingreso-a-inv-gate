Dada la siguiente tabla:

<div class='mu-erd'
  data-entities='{
    "clientes": {
      "cliente": {
        "type": "Text"
      },
      "ciudad": {
        "type": "Text"
      },
      "monto": {
        "type": "Integer"
      }
    }
  }'>
</div>

> Escribí una consulta SQL que te permita obtener el cliente con mayor monto para cada ciudad. Si hay más de uno, solo dar el primero ordenando los nombres de manera alfabética. La salida debe estar ordenada por nombre de ciudad.

Algunos ejemplos:

_Ejemplo 1:_

Dados los siguientes datos:

<div
  class='mu-sql-table'
  data-name='clientes'
  data-columns='["cliente", "ciudad", "monto"]'
  data-rows='[
    ["pepe", "olivos", 10], 
    ["pepe", "quilmes", 15],
    ["tito", "olivos", 14],
    ["fede", "quilmes", 6],
    ["carlos", "lanus", 3]
  ]'>
</div>

La respuesta será:

``` 
lanus carlos
quilmes pepe
olivos tito
```

_Ejemplo 2:_

Dados los siguientes datos:

<div
  class='mu-sql-table'
  data-name='clientes'
  data-columns='["cliente", "ciudad", "monto"]'
  data-rows='[
    ["pepe", "olivos", 10], 
    ["pepe", "quilmes", 15],
    ["tito", "olivos", 14],
    ["fede", "quilmes", 15],
    ["carlos", "lanus", 3]
  ]'>
</div>

La respuesta será:

``` 
lanus carlos
quilmes fede (porque fede es anterior a pepe alfabeticamente)
olivos tito
```

_Ejemplo 3:_

Dados los siguientes datos:

<div
  class='mu-sql-table'
  data-name='clientes'
  data-columns='["cliente", "ciudad", "monto"]'
  data-rows='[
    ["toto", "olivos", 8],
    ["pepe", "olivos", 10],
    ["fede", "quilmes", 6],
    ["pepe", "quilmes", 15],
    ["tito", "olivos", 14],
    ["fede", "quilmes", 6],
    ["carlos", "lanus", 3],
    ["fede", "quilmes", 6],
    ["toto", "olivos", 7]
  ]'>
</div>

La respuesta será:

``` 
lanus carlos
quilmes fede
olivos toto
```
