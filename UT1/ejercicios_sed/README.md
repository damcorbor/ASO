# Resumen de Comandos Básicos y Ejercicios con `sed`

## 1️⃣ Qué es `sed`

`sed` (stream editor) es un editor de texto que procesa texto de manera **no interactiva**: no abre un editor visual, sino que aplica transformaciones directamente sobre el flujo de datos o archivos.  

Se usa para:

- Buscar texto  
- Reemplazar palabras o patrones  
- Eliminar líneas  
- Mostrar solo ciertas líneas  

Ideal para scripts y automatizaciones.

---

## 2️⃣ Opciones más comunes de `sed`

| Opción | Descripción | Ejemplo |
|--------|------------|---------|
| `-n` | Modo silencioso. No imprime nada salvo que se indique explícitamente con `p` | sed -n '1p' archivo.txt → imprime solo la primera línea |
| `-i` | Modifica el archivo directamente (in-place) | sed -i 's/antiguo/nuevo/g' archivo.txt |
| `-E` | Expresiones regulares extendidas (permiten +, ?, \|, () sin escapar) | sed -E 's/(perro|gato)/animal/g' archivo.txt |

**Nota:** Para expresiones regulares simples no necesitas `-E`, pero para patrones complejos sí.

---

## 3️⃣ Comandos básicos de `sed`

| Comando | Descripción | Ejemplo |
|---------|------------|---------|
| sed -n 'Np' archivo | Imprime solo la línea N | sed -n '3p' archivo.txt → imprime línea 3 |
| sed 'Nd' archivo | Elimina la línea N | sed '2d' archivo.txt → elimina línea 2 |
| sed -i 's/patrón/reemplazo/' archivo | Reemplaza la **primera coincidencia** en cada línea y modifica el archivo | sed -i 's/usuario/admin/' archivo.txt |
| sed -i 's/patrón/reemplazo/g' archivo | Reemplaza **todas las coincidencias** en cada línea y modifica el archivo | sed -i 's/usuario/admin/g' archivo.txt |
| sed '/patrón/p' archivo | Imprime solo las líneas que contienen el patrón | sed -n '/error/p' log.txt |
| sed '/patrón/d' archivo | Elimina todas las líneas que contienen el patrón | sed '/debug/d' log.txt |

---

## 4️⃣ Ejemplos prácticos

### Mostrar líneas específicas

sed -n '5p' archivo.txt → imprime solo la línea 5

### Eliminar líneas

sed '3d' archivo.txt → elimina la línea 3  
sed '/temp/d' archivo.txt → elimina todas las líneas que contengan "temp"

### Reemplazos de texto

sed -i 's/root/admin/' archivo.txt → reemplaza "root" por "admin" (primera coincidencia)  
sed -i 's/error/fallo/g' archivo.txt → reemplaza todas las ocurrencias de "error" por "fallo"  
sed -E 's/(perro|gato)/animal/g' archivo.txt → reemplaza "perro" o "gato" por "animal"

### Filtrado de líneas

sed -n '/\/bin\/bash/p' /etc/passwd → mostrar líneas que contengan "/bin/bash"  
sed -i '/^$/d' /etc/services → eliminar líneas vacías del archivo

---

## 5️⃣ Ejercicios sugeridos

1. **Mostrar la tercera y quinta línea de un archivo**  
sed -n -e '3p' -e '5p' archivo.txt

2. **Eliminar todas las líneas que contienen "localhost"**  
sed -i '/localhost/d' archivo.txt

3. **Reemplazar "error" o "fail" por "problema"**  
sed -E -i 's/(error|fail)/problema/g' archivo.txt

4. **Duplicar líneas que contienen "IMPORTANT"**  
sed '/IMPORTANT/p' archivo.txt

5. **Mostrar líneas del 10 al 20**  
sed -n '10,20p' archivo.txt
