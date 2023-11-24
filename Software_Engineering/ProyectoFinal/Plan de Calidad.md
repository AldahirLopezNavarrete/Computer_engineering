# Título: Plan de Calidad

## Objetos de prueba

1. Inicio de sesión para usuario final y administrador.
2. Funcionamiento correcto del registro de usuarios.
3. Conexiones entre la personalización de bebida y el cálculo del producto final.
4. Objetos de prueba:
   - Ventanas de la página web.
   - Conexión a la base de datos.
   - Seguridad en el pago de los productos.
   - API.

## Funcionalidades a probar

**Usuario Final:**
1. Registrar un usuario con los datos necesarios.
2. Verificar que el usuario pueda acceder después de registrarse.
3. Personalizar una bebida en la ventana.

**Administrador:**
1. Gestionar las bebidas subidas en la plataforma.

## Funcionalidades que no se probarán

**Usuario Final:**
1. Parte del método de pago.

**Administrador:**
1. Visualización del dashboard.

## Pruebas

1. Pruebas unitarias:
   - Detectar problemas de conectividad entre la API y la base de datos.
2. Pruebas de clases principales de la página web.
3. Evaluación del comportamiento de los botones de las componentes de la página.
4. Pruebas integrales solo si los componentes individuales funcionan correctamente, especialmente en el pago de las bebidas.
5. Garantizar la integridad de datos y prevenir ataques de inyección SQL.

## Pruebas entregables

1. Capturas de pantalla de las vistas.
2. Videos presentando la funcionalidad.

## Criterios para la aprobación del plan

Se aplicará una calificación discreta del 1 al 3 para cada funcionalidad, considerando rapidez, ejecución correcta y atención a casos extremos.

**Interacción del Usuario Final:**
- **Inicio de Sesión:**
  - Calificación 3: Acceso rápido y mensajes adecuados en caso de usuario inválido o contraseña incorrecta.
- **Registro de Usuario:**
  - Calificación 3: Creación rápida del usuario, posibilidad de agregar elementos y descripción.
- **Personalizar Bebida:**
  - *Ventana de interacción no especificada, por lo que no se asigna una calificación.*

**Interacción del Administrador:**
- **Gestionar Bebidas:**
  - *Ventana de interacción no especificada, por lo que no se asigna una calificación.*

## Aprobaciones

Para aprobar el proceso de pruebas, se requiere la autorización de al menos 3 integrantes que confirmen el correcto funcionamiento.

