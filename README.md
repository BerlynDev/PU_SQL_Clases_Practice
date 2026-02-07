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

________

Sentencias de tipo NULL: 
    Si quisieramos realizar algun filtrato con un coamndo tipo null, se filtran usando IS NULL, o IS NOT NULL

    ¿Por qué es importante entender el NULL?
    Aparece con frecuencia en datos del mundo real.
    Afecta el comportamiento de consultas y comparaciones.
    Requiere un tratamiento especial (no puedes usar = NULL o != NULL, sino IS NULL o IS NOT NULL).

Sentencia MIN(), MAX(): 
    
    ¿Cuándo usar MIN y MAX?
    Para conocer el valor más bajo o más alto de un conjunto de datos.
    Para obtener referencias o rangos de edad, precios, fechas, etc.
    Para combinarlos más adelante con filtros (WHERE) o agrupaciones (GROUP BY).

Sentencia COUNT():
    Cuenta el numero de filas.
    ¿Cuándo usar COUNT()?
    Para obtener totales rápidos de registros.
    Para verificar cuántos valores existen en una columna específica.
    Para usar junto con filtros (WHERE) y agrupar resultados (GROUP BY).

Sentencia SUM(): 
    Suma el total de una columna numerica.

    ¿Cuándo usar SUM()?
    Para calcular totales (como ingresos, puntuaciones, edades, cantidades, etc.).
    Para generar informes y estadísticas.
    Para combinar con filtros (WHERE) o agrupaciones (GROUP BY) y obtener totales por categoría.

Sentencia AVG():
    Calcula la media de los valores de una columna numerica.

    ¿Cuándo usar AVG()?
    Para analizar datos estadísticos (como media de edad, ingresos, calificaciones, etc.).
    Para tomar decisiones basadas en valores medios.
    Para combinar con filtros (WHERE) o agrupaciones (GROUP BY) y obtener promedios por categoría.

Sentencia IN():
    La sentencia IN nos permite comprobar si un valor está dentro de un conjunto de opciones específicas, sin tener que escribir múltiples condiciones con OR.

    ¿Cuándo usar IN?
    Cuando necesitas comparar un campo con una lista de valores.
    Para hacer filtros compactos y más legibles.
    Al usar subconsultas que devuelven una lista de resultados.

Sentencia BETWEEN:
    Enceuntra resultados que se encuentran entre 2 valores

    ¿Cuándo usar BETWEEN?
    Para buscar valores dentro de un rango numérico (edades, precios, puntuaciones…).
    Para filtrar por rangos de fechas (por ejemplo: entre dos días específicos).
    Para simplificar comparaciones que de otro modo requerirían varias condiciones.

 Sentencia alias AS:
    Nombra temporalmente a un dato dentro de una tabla.   
    
    ¿Cuándo usar un alias?
    Para mejorar la presentación de los resultados.
    Para hacer que las columnas calculadas o renombradas tengan títulos más claros.
    Para facilitar la lectura en consultas complejas.

Sentencia CONCAT():
    Sire para concatenar varios valores de texto en uno solo.

    ¿Cuándo usar CONCAT()?
    Para combinar columnas como nombre y apellido, dirección y número, etc.
    Para generar mensajes personalizados en informes.
    Para hacer que los resultados sean más legibles y útiles.

Sentencia GROUP BY: 
    Organiza los resultanos sengun los valores de una o mas columnas, aplicando funciones de agregacion a cada grupo.

    ¿Cuándo usar GROUP BY?
    Para contar, sumar o promediar valores dentro de categorías.
    Para generar reportes agrupados (como usuarios por país, ventas por mes, etc.)
    Siempre que uses funciones de agregación y quieras agrupar los resultados.

Sentencia HAVING:
    Cuando aplicamos funciones de agregación como COUNT(), SUM(), AVG(), etc., a veces queremos filtrar los resultados finales basándonos en esas funciones.
    
    Aquí es donde entra en juego la cláusula HAVING.
    
    HAVING funciona como un filtro, pero aplicado después de agrupar los datos. A diferencia de WHERE, que filtra filas antes de agrupar, HAVING filtra grupos ya formados. Es esencial para hacer análisis más avanzados en SQL, ya que permite aplicar condiciones sobre resultados resumidos o agrupados.
    
Sentencia CASE:
    A veces, cuando consultamos datos, queremos mostrar resultados diferentes según ciertas condiciones. Por ejemplo: mostrar si una persona es mayor de edad según su edad, o traducir valores numéricos a textos descriptivos.
    
    Para este tipo de lógica condicional, en SQL usamos la sentencia CASE.
    
    El comando CASE funciona como una especie de “if-else” (si… entonces…) que permite devolver diferentes valores en una columna según una condición específica.
    
    
    
    ¿Cuándo usar CASE?
    Para clasificar o traducir valores directamente en los resultados.
    Para mostrar información más clara o interpretable.
    Para evitar usar muchas consultas separadas cuando con una sola puede adaptarse.
    CASE nos permite aplicar lógica condicional (como en un lenguaje de programación) sin salirnos del entorno de consulta.

Sentencia IFNULL():
    Remplaza los valores NULL por un valor como un nuemro o un texto.

    ¿Qué hace IFNULL()?
    IFNULL(valor, valor_por_defecto) devuelve:
    
    El valor si no es nulo.
    El valor_por_defecto si es nulo.
    
    ¿Cuándo usar IFNULL()?
    Para reemplazar valores nulos por algo más claro o útil.
    Para evitar errores o problemas en cálculos con columnas que pueden tener NULL.
    Para mejorar la presentación de los datos en informes o aplicaciones.
    IFNULL() es una herramienta sencilla pero muy útil para trabajar con datos incompletos de forma controlada y presentable.

_______________________________________________________________________________________________________________________________________________

Sentencia INSERT INTO:
    INSERT INTO nos permite añadir nuevos registros (filas) a una tabla.

    ¿Cuándo usar INSERT INTO?
    Para agregar datos nuevos a una tabla existente.
    Para poblar una base de datos manualmente o desde un formulario.
    Como parte de procesos de carga de datos (ETL, scripts, etc.).

Sentencia UPDATE:
    sirve para modificar uno o más campos de uno o más registros dentro de una tabla.

    ¿Cuándo usar UPDATE?
    Para corregir errores en los datos.
    Para mantener actualizada información dinámica (como edad, estado, fecha, etc.).
    Para realizar ajustes en masa (con filtros adecuados para seleccionar correctamente los registros afectados).

Sentencia DELETE: 
    DELETE permite borrar una o más filas de una tabla, dependiendo de las condiciones que especifiquemos.

    ¿Cuándo usar DELETE?
    Para eliminar registros incorrectos, desactualizados o no deseados.
    Para depurar datos duplicados.
    Para automatizar limpieza de datos bajo ciertas reglas.