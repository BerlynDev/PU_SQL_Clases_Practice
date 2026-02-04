Sentencia SELECT: 
    Sentencia de seleccion. Me permite consultar los datos de una tabla. 

Sentencia DISTINCT:
    Nos trae los resultados distintos al de la coincidencia indicada. Coincidencias que no se repiten

Sentencia WHERE:
    Estamos limitando cual es el criterio de los datos que queremos recuperar.
    Nos da los datos que solo contengan el criterio deseado. 
    Igual a: =
    Distinto de: != o <>
    Mayor, menor, mayor o igual, menor o
    igual: >, <, >=, <=
    Otros operadores como AND, OR, IN, BETWEEN o LIKE que aprenderemos más adelante

sentencia ORDER BY:
    Ordena en base a la coincidencia puesta.
    ORDER BY columna: orden ascendente por defecto.
    ORDER BY columna ASC: orden ascendente explícito.
    ORDER BY columna DESC: orden descendente.
    También puedes combinarlo con modificadores como WHERE, DISTINCT, y más (que aprenderás en lecciones futuras).

Sentencia LIKE:
    Nos busca la mejor coincidencia deacuerdo a los datos escritos.

    Caracteres comodín (wildcards):
    % representa cualquier secuencia de caracteres, incluso vacía.
    _ representa un solo carácter.
    
    ¿Cuándo usar LIKE?
    Para buscar nombres, correos o descripciones que contengan una palabra clave (por ejemplo).
    Para encontrar patrones en textos.
    Para realizar filtros más flexibles que los que permite el operador =.

Sentencias NOT:
    Busca elementos que no contengan la coincidencia

Sentencia AND:
    Busca elementos con mas coincidencia

Sentencia OR: 
    Busca un elemento u otro, dependiendo de la coincidencia

Sentencia Limit:
    Limita la cantidad de elementos para mosntrar dependiendo de la coincidencia.

    ¿Cuándo usar LIMIT?
    Para probar consultas sin saturar la pantalla de resultados.
    Para mostrar solo una muestra o resumen.
    Para paginar resultados en aplicaciones (por ejemplo: mostrar 10 elementos por página).

    