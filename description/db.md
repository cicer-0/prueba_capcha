### Entidades:
1. **Área:**
   - ID (Identificador único)
   - Nombre (Texto, por ejemplo: "Área de leones", "Área de monos", etc.)
   - Capacidad (Número entero, representando la cantidad máxima de visitantes que pueden estar en el área)
   - Descripción (Texto breve describiendo el tipo de animales y ambiente del área)

2. **Reserva:**
   - ID (Identificador único)
   - Fecha (Fecha y hora de la reserva)
   - Duración (Duración en horas de la visita)
   - Estado (Texto, por ejemplo: "Pendiente", "Confirmada", "Cancelada", etc.)
   - IDÁrea (Clave foránea referenciando el ID del Área)
   - IDVisitante (Clave foránea referenciando el ID del Visitante)

3. **Visitante:**
   - ID (Identificador único)
   - Nombre (Texto, nombre completo del visitante)
   - Edad (Número entero, edad del visitante)
   - Email (Texto, dirección de correo electrónico del visitante)
   - Teléfono (Texto, número de teléfono del visitante)

### Relaciones:
- **Área - Reserva:**
  - Un Área puede estar asociada con muchas Reservas.
  - Una Reserva está vinculada a un solo Área.
  - Relación: Uno a muchos (1:N)
  - Clave foránea en Reserva: IDÁrea -> Área.ID

- **Visitante - Reserva:**
  - Un Visitante puede realizar muchas Reservas.
  - Una Reserva está asociada con un solo Visitante.
  - Relación: Uno a muchos (1:N)
  - Clave foránea en Reserva: IDVisitante -> Visitante.ID

### Ejemplo de Datos para un Zoológico:
#### Entidad Área:
| ID | Nombre             | Capacidad | Descripción                               |
|----|--------------------|-----------|-------------------------------------------|
| 1  | Área de leones     | 30        | Grandes felinos en su hábitat natural      |
| 2  | Área de monos      | 20        | Área interactiva donde los monos juegan    |
| 3  | Área de reptiles   | 15        | Terrarios con diversas especies de reptiles|

#### Entidad Reserva:
| ID | Fecha                | Duración | Estado     | IDÁrea | IDVisitante |
|----|----------------------|----------|------------|--------|-------------|
| 1  | 2024-03-10 10:00:00  | 2        | Confirmada | 1      | 101         |
| 2  | 2024-03-15 11:30:00  | 1        | Pendiente  | 2      | 102         |
| 3  | 2024-03-20 09:00:00  | 3        | Confirmada | 1      | 103         |

#### Entidad Visitante:
| ID  | Nombre           | Edad | Email                        | Teléfono      |
|-----|------------------|------|------------------------------|---------------|
| 101 | Ana Martínez     | 25   | anamartinez@example.com      | 555-1234      |
| 102 | Luis García      | 30   | luisgarcia@example.com       | 555-5678      |
| 103 | Sofia Rodríguez  | 22   | sofiarodriguez@example.com   | 555-9876      |
