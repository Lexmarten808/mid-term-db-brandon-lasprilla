INSERT INTO tipo_usuario (user_type_id, nombre_tipo_usuario) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente'),
(4, 'Supervisor'),
(5, 'Gerente'),
(6, 'Técnico'),
(7, 'Recepcionista'),
(8, 'Vendedor'),
(9, 'Contador'),
(10, 'Soporte');

INSERT INTO ciudad (ciudad_id, nombre, codigo_postal) VALUES
(1, 'Cali', '760001'),
(2, 'Bogotá', '110111'),
(3, 'Medellín', '050001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Pereira', '660001'),
(8, 'Manizales', '170001'),
(9, 'Popayán', '190001'),
(10, 'Santa Marta', '470001');

INSERT INTO usuario (usuario_id, nombre, apellido, user_type_id, condicion_especial, ciudad_id) VALUES
(1, 'Andrés', 'Pérez', 1, 'Ninguna', 1),
(2, 'María', 'Gómez', 2, 'Discapacidad visual', 2),
(3, 'Camilo', 'Rojas', 3, 'Ninguna', 3),
(4, 'Valentina', 'Torres', 4, 'Embarazo', 4),
(5, 'Sebastián', 'López', 5, 'Ninguna', 5),
(6, 'Paula', 'Martínez', 6, 'Ninguna', 6),
(7, 'Diego', 'Ramírez', 7, 'Ninguna', 7),
(8, 'Natalia', 'Cruz', 8, 'Ninguna', 8),
(9, 'Julián', 'Mejía', 9, 'Ninguna', 9),
(10, 'Laura', 'Ortiz', 10, 'Ninguna', 10);

INSERT INTO empleado (empleado_id, id_usuario, cargo) VALUES
(1, 2, 'Asistente'),
(2, 4, 'Supervisor'),
(3, 5, 'Gerente'),
(4, 6, 'Técnico'),
(5, 7, 'Recepcionista'),
(6, 8, 'Vendedor'),
(7, 9, 'Contador'),
(8, 10, 'Soporte'),
(9, 1, 'Administrador'),
(10, 3, 'Consultor');

INSERT INTO departamento (id_departamento, nombre) VALUES
(1, 'Recursos Humanos'),
(2, 'Ventas'),
(3, 'Finanzas'),
(4, 'Soporte Técnico'),
(5, 'Marketing'),
(6, 'Operaciones'),
(7, 'Desarrollo'),
(8, 'Atención al Cliente'),
(9, 'Gerencia'),
(10, 'Mantenimiento');

INSERT INTO empleado_departamento (empleado_id, id_departamento) VALUES
(1, 1),
(2, 2),
(3, 9),
(4, 4),
(5, 8),
(6, 2),
(7, 3),
(8, 4),
(9, 9),
(10, 5);

INSERT INTO contacto (id_contacto, id_usuario, tipo_contacto, contacto) VALUES
(1, 1, 'Correo', 'andres.perez@mail.com'),
(2, 2, 'Teléfono', '3001234567'),
(3, 3, 'Correo', 'camilo.rojas@mail.com'),
(4, 4, 'Teléfono', '3012345678'),
(5, 5, 'Correo', 'sebastian.lopez@mail.com'),
(6, 6, 'Teléfono', '3023456789'),
(7, 7, 'Correo', 'diego.ramirez@mail.com'),
(8, 8, 'Teléfono', '3034567890'),
(9, 9, 'Correo', 'julian.mejia@mail.com'),
(10, 10, 'Teléfono', '3045678901');

INSERT INTO notificacion (id_notificacion, id_usuario, id_contacto, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Bienvenido al sistema', '2025-10-19', 'Enviado'),
(2, 2, 2, 'Recordatorio de cita', '2025-10-18', 'Pendiente'),
(3, 3, 3, 'Actualización de datos', '2025-10-17', 'Enviado'),
(4, 4, 4, 'Nueva política', '2025-10-16', 'Leído'),
(5, 5, 5, 'Promoción especial', '2025-10-15', 'Enviado'),
(6, 6, 6, 'Confirmación de pago', '2025-10-14', 'Enviado'),
(7, 7, 7, 'Cambio de horario', '2025-10-13', 'Pendiente'),
(8, 8, 8, 'Actualización de seguridad', '2025-10-12', 'Enviado'),
(9, 9, 9, 'Notificación general', '2025-10-11', 'Enviado'),
(10, 10, 10, 'Feliz cumpleaños', '2025-10-10', 'Leído');

INSERT INTO servicio (id_servicio, nombre, descripcion) VALUES
(1, 'Mantenimiento', 'Revisión y arreglo de equipos'),
(2, 'Limpieza', 'Limpieza general de instalaciones'),
(3, 'Consultoría', 'Asesorías empresariales'),
(4, 'Soporte Técnico', 'Solución de problemas tecnológicos'),
(5, 'Capacitación', 'Entrenamiento al personal'),
(6, 'Transporte', 'Servicio de traslado de personal'),
(7, 'Diseño', 'Diseño gráfico y de marca'),
(8, 'Publicidad', 'Gestión de campañas publicitarias'),
(9, 'Contabilidad', 'Gestión financiera y contable'),
(10, 'Seguridad', 'Monitoreo y vigilancia');

INSERT INTO servicio_ofrecido (id_servicio_ofrecido, id_servicio, id_usuario, estado) VALUES
(1, 1, 3, 'Activo'),
(2, 2, 5, 'Activo'),
(3, 3, 6, 'Activo'),
(4, 4, 7, 'Suspendido'),
(5, 5, 8, 'Activo'),
(6, 6, 9, 'Activo'),
(7, 7, 10, 'Activo'),
(8, 8, 1, 'Pendiente'),
(9, 9, 2, 'Activo'),
(10, 10, 4, 'Activo');

INSERT INTO turno (id_turno, usuario_id, empleado_id, id_servicio, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 3, 1, 1, '2025-10-20', '08:00:00', '10:00:00', 'Pendiente'),
(2, 4, 2, 2, '2025-10-20', '10:00:00', '12:00:00', 'Activo'),
(3, 5, 3, 3, '2025-10-21', '09:00:00', '11:00:00', 'Activo'),
(4, 6, 4, 4, '2025-10-21', '11:00:00', '13:00:00', 'Completado'),
(5, 7, 5, 5, '2025-10-22', '07:00:00', '09:00:00', 'Pendiente'),
(6, 8, 6, 6, '2025-10-22', '13:00:00', '15:00:00', 'Activo'),
(7, 9, 7, 7, '2025-10-23', '14:00:00', '16:00:00', 'Pendiente'),
(8, 10, 8, 8, '2025-10-23', '08:30:00', '10:30:00', 'Activo'),
(9, 1, 9, 9, '2025-10-24', '10:30:00', '12:30:00', 'Pendiente'),
(10, 2, 10, 10, '2025-10-24', '09:00:00', '11:00:00', 'Completado');
