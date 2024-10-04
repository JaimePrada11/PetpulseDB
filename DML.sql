USE petpulsedb;

INSERT INTO Pais (Nombre_Pais) VALUES
('Colombia'),
('Argentina'),
('Perú'),
('Ecuador'),
('Brasil');
 
INSERT INTO Ciudad (Nombre_Ciudad, ID_Pais) VALUES
('Bogotá', 1),
('Medellín', 1),
('Bucaramanga',1),
('Buenos Aires', 2),
('Córdoba', 2),
('Lima', 3),
('Quito', 4),
('Guayaquil', 4),
('Río de Janeiro', 5),
('São Paulo', 5);

INSERT INTO Veterinarias (Nombre, Correo, Telefono, Hora_Apertura, Horra_Cierre) VALUES 
('Los Ángeles Veterinaria', 'info@losangelesvet.com', '3004567890', '08:00:00', '17:00:00'),
('El Buen Pastor', 'contacto@buenpastorvet.com', '3012345678', '09:00:00', '18:00:00'),
('PetCare', 'info@petcare.com', '3029876543', '08:30:00', '17:30:00'),
('Animalia', 'contacto@animalia.com', '3031234567', '07:30:00', '16:30:00'),
('Vida Animal', 'contacto@vidanimal.com', '3049876543', '09:00:00', '18:00:00'),
('Amigos Peludos', 'info@amigospeludos.com', '3052345678', '08:00:00', '17:00:00'),
('Huellas Vet', 'info@huellasvet.com', '3061234567', '07:00:00', '16:00:00'),
('Mundo Animal', 'contacto@mundoanimal.com', '3079876543', '09:00:00', '18:00:00'),
('Animed', 'info@animedvet.com', '3082345678', '08:30:00', '17:30:00'),
('VetPlus', 'info@vetplus.com', '3099876543', '08:00:00', '17:00:00'),
('Salud Animal', 'contacto@saludanimal.com', '3102345678', '09:00:00', '18:00:00'),
('Happy Pets', 'info@happypets.com', '3119876543', '08:30:00', '17:30:00'),
('Cuidado Canino', 'contacto@cuidadocanino.com', '3122345678', '07:30:00', '16:30:00'),
('Vets4Pets', 'info@vets4pets.com', '3139876543', '08:00:00', '17:00:00'),
('Animal Care', 'contacto@animalcare.com', '3142345678', '09:00:00', '18:00:00'),
('Mascota Feliz', 'info@mascotafeliz.com', '3159876543', '08:30:00', '17:30:00'),
('VetLife', 'contacto@vetlife.com', '3162345678', '07:30:00', '16:30:00'),
('Pet House', 'info@pethouse.com', '3179876543', '08:00:00', '17:00:00'),
('VeterSol', 'contacto@vetersol.com', '3182345678', '09:00:00', '18:00:00'),
('Veterinaria Central', 'info@vetcentral.com', '3199876543', '08:30:00', '17:30:00');

INSERT INTO CiudadVeterinaria (ciudad_ID_Ciudad, veterinarias_ID_Veterinario, Direccion) VALUES
(1, 1, 'Calle 1 #10-20'), 
(1, 4, 'Avenida Siempre Viva #50'), 
(1, 20, 'Carrera 5 #15-30'), 
(2, 2, 'Transversal 7 #3-45'), 
(2, 3, 'Calle 2 #25-60'), 
(3, 5, 'Calle del Sol #14-15'),  
(3, 6, 'Calle 10 #30-50'),
(4, 7, 'Avenida del Río #22-33'),  
(4, 8, 'Calle 5 #75-80'),  
(5, 9, 'Calle 9 #90-10'),  
(5, 10, 'Calle de la Esperanza #11-44'),
(5, 16, 'Avenida Libertad #2-33'), 
(6, 11, 'Carrera 15 #15-10'), 
(6, 12, 'Calle 20 #5-25'),
(7, 13, 'Calle 3 #30-40'), 
(7, 14, 'Avenida 1 #8-19'), 
(8, 15, 'Calle 4 #77-29'), 
(8, 17, 'Carrera 6 #32-41'),
(9, 18, 'Calle del Norte #19-55'), 
(10, 19, 'Calle 8 #12-23'), 
(1, 2, 'Avenida Principal #8-10'),
(1, 5, 'Calle 7 #18-20'),  
(4, 11, 'Calle de los Ángeles #14-12'),
(2, 20, 'Calle 11 #22-11'),  
(3, 15, 'Calle 12 #25-25'), 
(9, 1, 'Avenida 2 #35-18'),
(1, 18, 'Calle 6 #8-17'), 
(6, 3, 'Calle 9 #44-30'),  
(3, 20, 'Calle 13 #5-5'), 
(7, 2, 'Avenida de los Héroes #1-5');  



INSERT INTO Usuarios (Nombre, Direccion, Telefono, Correo, ID_Ciudad) VALUES 
('Juan Pérez', 'Calle 123', '3101234567', 'juan.perez@gmail.com', 1),
('María González', 'Carrera 45', '3201234567', 'maria.gonzalez@yahoo.com', 2),
('Carlos Rodríguez', 'Av. Siempre Viva 742', '3111234567', 'carlos.rodriguez@hotmail.com', 3),
('Ana Martínez', 'Calle 100', '3129876543', 'ana.martinez@gmail.com', 4),
('Luis Fernández', 'Carrera 15', '3138765432', 'luis.fernandez@yahoo.com', 5),
('Laura García', 'Calle 50', '3142345678', 'laura.garcia@hotmail.com', 6),
('Jorge Ramírez', 'Carrera 7', '3153456789', 'jorge.ramirez@gmail.com', 7),
('Camila López', 'Calle 70', '3164567890', 'camila.lopez@yahoo.com', 8),
('Andrés Sánchez', 'Av. Principal', '3175678901', 'andres.sanchez@hotmail.com', 9),
('Sofía Torres', 'Carrera 9', '3186789012', 'sofia.torres@gmail.com', 10),
('Mateo Castro', 'Calle 10', '3197890123', 'mateo.castro@yahoo.com', 1),
('Paula Suárez', 'Carrera 12', '3208901234', 'paula.suarez@hotmail.com', 2),
('Diego Rivas', 'Calle 8', '3219012345', 'diego.rivas@gmail.com', 3),
('Valentina Morales', 'Carrera 22', '3220123456', 'valentina.morales@yahoo.com', 4),
('Daniel Vargas', 'Calle 28', '3231234567', 'daniel.vargas@hotmail.com', 5),
('Natalia Díaz', 'Carrera 11', '3242345678', 'natalia.diaz@gmail.com', 6),
('David Ortiz', 'Calle 30', '3253456789', 'david.ortiz@yahoo.com', 7),
('Isabella Cárdenas', 'Carrera 16', '3264567890', 'isabella.cardenas@hotmail.com', 8),
('Alejandro Mendoza', 'Av. Central', '3275678901', 'alejandro.mendoza@gmail.com', 9),
('Manuela Reyes', 'Carrera 18', '3286789012', 'manuela.reyes@yahoo.com', 10)
;

INSERT INTO Razas (Nombre_Raza) VALUES
('Labrador Retriever'),
('Bulldog'),
('Beagle'),
('Poodle'),
('Rottweiler'),
('German Shepherd');

INSERT INTO Mascotas (Nombre, ID_Raza, Fecha_Nacimiento, Peso, Genero, ID_Usuario) VALUES
('Firulais', 1, '2020-03-15', 25.5, 'Macho', 1),
('Miel', 2, '2019-07-10', 8.0, 'Hembra', 1),
('Rocky', 3, '2018-02-20', 30.0, 'Macho', 2),
('Luna', 4, '2021-04-01', 7.5, 'Hembra', 2),
('Bobby', 5, '2017-11-30', 12.0, 'Macho', 3),
('Sasha', 1, '2018-06-05', 22.0, 'Hembra', 3),
('Simba', 2, '2022-08-15', 10.0, 'Macho', 4),
('Coco', 3, '2020-09-25', 9.5, 'Hembra', 4),
('Max', 4, '2019-12-12', 20.0, 'Macho', 5),
('Chloe', 5, '2020-05-18', 6.0, 'Hembra', 6),
('Toby', 1, '2017-10-14', 28.0, 'Macho', 7),
('Nina', 2, '2021-01-21', 5.0, 'Hembra', 8),
('Leo', 3, '2022-03-30', 11.0, 'Macho', 9),
('Bella', 4, '2020-04-17', 7.8, 'Hembra', 10),
('Duke', 5, '2018-12-01', 35.0, 'Macho', 11),
('Lola', 6, '2019-02-14', 9.0, 'Hembra', 12),
('Chester', 4, '2020-11-29', 27.0, 'Macho', 13),
('Daisy', 1, '2021-03-14', 6.5, 'Hembra', 14),
('Gizmo', 2, '2018-08-05', 8.5, 'Macho', 15),
('Shadow', 3, '2020-05-22', 15.0, 'Macho', 16),
('Maggie', 4, '2017-07-30', 9.2, 'Hembra', 17),
('Jack', 5, '2019-09-14', 10.0, 'Macho', 18),
('Pepper', 6, '2022-01-01', 7.0, 'Hembra', 19),
('Oscar', 2, '2020-06-30', 12.0, 'Macho', 20),
('Lucy', 1, '2018-02-12', 5.0, 'Hembra', 5),
('Buddy', 2, '2019-12-28', 23.0, 'Macho', 13),
('Zoe', 3, '2021-03-03', 6.0, 'Hembra', 2),
('Rusty', 4, '2019-05-15', 18.0, 'Macho', 17),
('Nala', 5, '2020-10-11', 9.0, 'Hembra', 20),
('Scooby', 6, '2020-01-05', 20.0, 'Macho', 6),
('Ella', 1, '2021-02-20', 5.5, 'Hembra', 11),
('Rocky Jr.', 1, '2021-11-11', 15.0, 'Macho', 19),
('Mochi', 2, '2022-02-14', 8.0, 'Hembra', 7),
('Biscuit', 3, '2020-03-05', 10.5, 'Macho', 9),
('Penny', 4, '2021-07-20', 6.5, 'Hembra', 13),
('Chester II', 5, '2020-12-31', 5.0, 'Macho', 14),
('Winston', 6, '2021-08-01', 22.0, 'Macho', 16);

INSERT IGNORE INTO Historial_Medico (Fecha, Titulo, Descripcion, ID_Mascota) VALUES
('2024-01-16', 'Consulta Inicial', 'Examen físico y evaluación general.', 3),
('2023-11-18', 'Vacunación', 'Se administró vacuna contra la rabia.', 18),
('2023-11-16', 'Chequeo de Salud', 'Estado general bueno, seguimiento en un mes.', 9),
('2024-02-10', 'Consulta por Tos', 'Diagnóstico de alergia, se prescriben antihistamínicos.', 2),
('2024-08-20', 'Control de Peso', 'Peso bajo, se recomienda aumentar ración de comida.', 8),
('2024-03-17', 'Revisión Dental', 'Limpieza dental necesaria, se programará cita.', 1),
('2024-08-23', 'Consulta General', 'Revisión completa, sin problemas encontrados.', 17),
('2023-11-20', 'Chequeo de Piel', 'Se observan parásitos, tratamiento recomendado.', 5),
('2024-04-07', 'Vacunación Anual', 'Vacuna contra parvovirus administrada.', 20),
('2024-03-07', 'Consulta por Diarrea', 'Diarrea leve, se recomienda dieta blanda.', 10),
('2024-08-27', 'Revisión Post-operatoria', 'Recuperación de cirugía dental, en buen estado.', 9),
('2024-07-11', 'Chequeo de Ojos', 'Se recomienda tratamiento para conjuntivitis.', 4),
('2024-08-05', 'Consulta de Emergencia', 'Ingesta de un objeto extraño, se necesita cirugía.', 2),
('2024-04-09', 'Seguimiento Post-operatorio', 'Estado general bueno, sin complicaciones.', 5),
('2024-01-04', 'Consulta por Cojera', 'Diagnóstico de esguince, reposo recomendado.', 14),
('2024-06-11', 'Revisión de Vacunas', 'Vacunas actualizadas, próximo chequeo en seis meses.', 3),
('2024-09-20', 'Chequeo de Salud', 'Estado general excelente, energía alta.', 8),
('2024-09-01', 'Consulta por Alergias', 'Se presentan síntomas de alergia, se prescribe tratamiento.', 5),
('2023-10-11', 'Control de Peso', 'Peso adecuado, mantener dieta balanceada.', 8),
('2024-04-20', 'Consulta por Pérdida de Pelo', 'Diagnóstico de dermatitis, se recomienda tratamiento.', 9);

INSERT INTO Vacunas (Vacuna) VALUES
('Vacuna contra la rabia'),
('Vacuna de moquillo canino'),
('Vacuna de parvovirus canino'),
('Vacuna de leptospirosis'),
('Vacuna de Bordetella (tos de las perreras)');

INSERT IGNORE INTO Historial_Vacunas (Fecha, ID_Vacuna, Descripcion, ID_Mascota) VALUES
('2024-01-12', 1, 'Vacuna administrada sin reacciones adversas.', 15),
('2024-02-20', 2, 'Primera dosis administrada, seguimiento en un mes.', 7),
('2024-03-10', 3, 'Segunda dosis administrada, excelente tolerancia.', 12),
('2024-04-15', 4, 'Vacuna administrada, observando comportamiento.', 8),
('2024-05-10', 5, 'Vacuna administrada antes de la exposición a otros perros.', 3),
('2024-06-15', 1, 'Refuerzo de vacunas anteriores.', 20),
('2024-07-10', 3, 'Segunda dosis administrada, buen estado de salud.', 14),
('2024-08-20', 6, 'Vacuna administrada, sin reacciones adversas.', 11),
('2024-09-25', 4, 'Segunda dosis administrada, buena tolerancia.', 9),
('2024-10-01', 5, 'Vacuna de refuerzo aplicada exitosamente.', 2),
('2023-12-15', 2, 'Primera dosis aplicada, seguimiento necesario.', 16),
('2023-11-10', 1, 'Vacuna contra la rabia aplicada, sin incidentes.', 18),
('2023-10-05', 3, 'Segunda dosis de parvovirus administrada.', 5),
('2023-09-12', 6, 'Vacuna de leptospirosis aplicada, en observación.', 10),
('2023-08-25', 4, 'Vacuna de bordetella aplicada, bien tolerada.', 4),
('2023-07-05', 2, 'Polivalente administrada, control en un mes.', 19),
('2023-06-01', 5, 'Refuerzo de vacuna bordetella aplicada.', 6),
('2023-05-15', 1, 'Rabia vacuna administrada, sin complicaciones.', 13),
('2023-04-10', 3, 'Parvovirus administrada sin reacciones.', 7),
('2023-03-20', 4, 'Leptospirosis administrada, observación activa.', 17),
('2023-02-28', 5, 'Refuerzo de vacunas anteriores, buen estado general.', 12),
('2023-01-12', 6, 'Vacuna administrada antes de la exposición a otros perros.', 15),
('2022-12-15', 1, 'Rabia vacuna administrada sin reacciones adversas.', 8),
('2022-11-20', 2, 'Polivalente aplicada, seguimiento recomendado.', 1),
('2022-10-30', 3, 'Segunda dosis de parvovirus administrada.', 10);

INSERT INTO Medicamentos (Mecicamento, Frecuencia) VALUES
('Amoxicilina', 'Cada 12 horas'),
('Ibuprofeno', 'Cada 8 horas'),
('Paracetamol', 'Cada 6 horas'),
('Dexametasona', 'Una vez al día'),
('Clindamicina', 'Cada 12 horas');

INSERT INTO Registro_Medicamentos (Fecha, ID_TipoMedicamento, ID_Mascota) VALUES
('2023-01-10', 1, 1),  -- Amoxicilina para Mascota 1
('2023-01-12', 1, 1),  -- Amoxicilina para Mascota 1
('2023-01-15', 2, 1),  -- Ibuprofeno para Mascota 1
('2023-01-20', 3, 2),  -- Paracetamol para Mascota 2
('2023-02-01', 4, 2),  -- Dexametasona para Mascota 2
('2023-02-05', 5, 3),  -- Clindamicina para Mascota 3
('2023-02-10', 1, 4),  -- Amoxicilina para Mascota 4
('2023-02-15', 2, 5),  -- Ibuprofeno para Mascota 5
('2023-03-05', 3, 1),  -- Paracetamol para Mascota 1
('2023-03-10', 4, 6),  -- Dexametasona para Mascota 6
('2023-03-15', 5, 7),  -- Clindamicina para Mascota 7
('2023-04-05', 1, 8),  -- Amoxicilina para Mascota 8
('2023-04-10', 2, 9),  -- Ibuprofeno para Mascota 9
('2023-04-15', 3, 10), -- Paracetamol para Mascota 10
('2023-04-20', 4, 2),  -- Dexametasona para Mascota 2
('2023-04-25', 5, 11), -- Clindamicina para Mascota 11
('2023-05-05', 1, 12), -- Amoxicilina para Mascota 12
('2023-05-15', 2, 13), -- Ibuprofeno para Mascota 13
('2023-06-01', 4, 14), -- Dexametasona para Mascota 14
('2023-06-05', 1, 15), -- Amoxicilina para Mascota 15
('2023-06-10', 5, 16), -- Clindamicina para Mascota 16
('2023-06-15', 3, 17), -- Paracetamol para Mascota 17
('2023-06-20', 2, 18), -- Ibuprofeno para Mascota 18
('2023-07-01', 4, 19), -- Dexametasona para Mascota 19
('2023-07-10', 5, 20); -- Clindamicina para Mascota 20

INSERT INTO Registros_Cardiacos (Registro, Fecha, ID_Mascota) VALUES
(75.0, '2024-01-10 09:00:00', 3),
(90.0, '2024-01-15 10:30:00', 6),
(115.0, '2024-01-20 11:15:00', 2),
(82.0, '2024-02-05 14:45:00', 1),
(99.0, '2024-02-20 08:30:00', 5),
(68.0, '2024-03-01 12:00:00', 10),
(85.0, '2024-03-15 10:15:00', 20),
(130.0, '2024-03-20 13:00:00', 4),
(72.0, '2024-04-05 09:45:00', 15),
(140.0, '2024-04-15 14:00:00', 17),
(65.0, '2024-05-01 11:30:00', 8),
(92.0, '2024-05-10 15:15:00', 9),
(88.0, '2024-06-01 09:30:00', 19),
(80.0, '2024-06-15 10:45:00', 13),
(78.0, '2024-07-01 12:30:00', 12),
(120.0, '2024-07-10 14:20:00', 14),
(100.0, '2024-07-15 08:50:00', 18),
(95.0, '2024-08-05 11:00:00', 11),
(87.0, '2024-08-15 14:10:00', 16),
(70.0, '2024-09-01 10:30:00', 7),
(83.0, '2024-09-10 12:45:00', 8),
(77.0, '2024-09-20 13:50:00', 5),
(89.0, '2024-09-25 10:30:00', 3),
(115.0, '2024-10-01 09:00:00', 1),
(73.0, '2024-10-02 11:30:00', 4),
(60.0, '2024-10-02 15:00:00', 9),
(110.0, '2024-10-03 09:30:00', 20),
(66.0, '2024-10-03 11:00:00', 18),
(80.0, '2024-10-03 13:00:00', 2);

-- Inserciones en la tabla Registros_Oxigeno
INSERT INTO Registros_Oxigeno (Registro, Fecha, ID_Mascota) VALUES 
(97.4, '2024-09-15 10:30:00', 1),
(98.1, '2024-09-16 11:00:00', 1),
(96.5, '2024-09-17 12:15:00', 1),
(95.8, '2024-09-18 09:45:00', 2),
(94.6, '2024-09-19 08:30:00', 3),
(98.7, '2024-09-20 14:00:00', 3),
(97.5, '2024-09-21 15:00:00', 4),
(92.4, '2024-09-22 09:00:00', 5),
(99.2, '2024-09-23 10:15:00', 6),
(93.1, '2024-09-24 11:45:00', 6),
(96.0, '2024-09-25 12:00:00', 7),
(98.4, '2024-09-26 13:30:00', 8),
(95.7, '2024-09-27 14:00:00', 9),
(94.0, '2024-09-28 15:30:00', 10),
(97.6, '2024-09-29 09:15:00', 10),
(91.8, '2024-09-30 10:45:00', 11),
(89.5, '2024-10-01 11:30:00', 12),
(93.3, '2024-10-02 14:00:00', 13),
(95.4, '2024-10-03 12:15:00', 14),
(96.1, '2024-10-04 10:00:00', 15),
(99.0, '2024-10-05 08:30:00', 16),
(97.2, '2024-10-06 10:00:00', 17),
(98.6, '2024-10-07 09:30:00', 18),
(94.3, '2024-10-08 14:00:00', 19),
(95.1, '2024-10-09 11:45:00', 20),
(92.8, '2024-10-10 10:30:00', 11),
(96.7, '2024-10-11 12:00:00', 1),
(97.0, '2024-10-12 14:30:00', 16),
(94.2, '2024-10-13 09:15:00', 13),
(93.9, '2024-10-14 10:45:00', 11),
(95.5, '2024-10-15 11:15:00', 9),
(96.4, '2024-10-16 12:30:00', 14),
(91.4, '2024-10-17 08:45:00', 19),
(88.9, '2024-10-18 13:00:00', 20),
(90.6, '2024-10-19 10:30:00', 20),
(99.3, '2024-10-20 09:00:00', 5),
(97.7, '2024-10-21 14:00:00', 2),
(95.2, '2024-10-22 12:00:00', 8),
(94.1, '2024-10-23 10:15:00', 17),
(93.8, '2024-10-24 11:45:00', 6),
(98.5, '2024-10-25 09:30:00', 12),
(96.9, '2024-10-26 14:15:00', 10),
(92.5, '2024-10-27 10:00:00', 10),
(99.1, '2024-10-28 11:00:00', 12),
(97.1, '2024-10-29 12:45:00', 2),
(88.8, '2024-10-30 09:30:00', 20),
(90.2, '2024-10-31 14:30:00', 19);


INSERT INTO Registros_Sueno (Registro, Fecha, ID_Mascota) VALUES
(12.5, '2024-01-10 08:00:00', 3),
(8.0, '2024-01-12 22:30:00', 6),
(10.0, '2024-01-15 07:00:00', 2),
(14.5, '2024-02-05 09:30:00', 1),
(9.0, '2024-02-10 23:00:00', 5),
(11.5, '2024-02-15 21:30:00', 4),
(7.5, '2024-03-01 20:15:00', 10),
(6.0, '2024-03-05 18:45:00', 8),
(15.0, '2024-03-10 19:00:00', 12),
(13.0, '2024-03-15 06:00:00', 9),
(4.0, '2024-03-20 22:30:00', 19),
(9.5, '2024-04-01 10:00:00', 11),
(8.5, '2024-04-05 12:00:00', 15),
(14.0, '2024-04-15 05:30:00', 7),
(10.5, '2024-05-01 08:30:00', 14),
(12.0, '2024-05-10 09:45:00', 20),
(5.0, '2024-05-15 21:15:00', 17),
(11.0, '2024-06-01 10:15:00', 16),
(3.5, '2024-06-10 23:30:00', 13),
(10.0, '2024-06-20 22:00:00', 18),
(7.0, '2024-07-01 20:30:00', 2),
(8.0, '2024-07-05 07:30:00', 1),
(12.5, '2024-08-10 21:00:00', 15),
(6.0, '2024-08-15 19:45:00', 10),
(11.5, '2024-09-01 05:15:00', 3),
(14.0, '2024-09-05 23:30:00', 4),
(9.0, '2024-09-15 09:00:00', 5),
(8.5, '2024-09-20 08:00:00', 20),
(10.0, '2024-09-25 18:30:00', 9),
(7.0, '2024-10-01 14:00:00', 12),
(5.5, '2024-10-02 22:30:00', 6);

INSERT INTO Registros_Pasos (Registro, Fecha, ID_Mascota) VALUES
(2500.5, '2024-10-01 08:00:00', 1),
(1500.0, '2024-10-01 09:00:00', 2),
(3200.3, '2024-10-02 10:00:00', 3),
(1800.7, '2024-09-30 11:00:00', 4),
(2900.2, '2024-09-29 12:00:00', 5),
(3000.8, '2024-09-28 08:30:00', 6),
(1400.1, '2024-10-01 09:15:00', 7),
(2500.0, '2024-10-02 10:45:00', 8),
(3600.9, '2024-10-02 11:30:00', 9),
(2200.6, '2024-09-29 13:00:00', 10),
(2800.4, '2024-09-28 07:45:00', 11),
(1700.3, '2024-10-01 09:30:00', 12),
(3000.2, '2024-10-03 10:15:00', 13),
(1900.8, '2024-10-03 11:00:00', 14),
(2400.7, '2024-10-01 12:30:00', 15),
(3100.1, '2024-10-02 08:00:00', 16),
(1500.5, '2024-09-30 09:00:00', 17),
(2000.4, '2024-10-03 10:00:00', 18),
(2800.9, '2024-10-02 11:00:00', 19),
(3300.2, '2024-09-29 12:00:00', 20),
(2200.0, '2024-10-02 13:00:00', 1),
(2500.5, '2024-10-01 08:00:00', 2),
(3500.3, '2024-10-02 09:00:00', 3),
(1800.7, '2024-10-01 10:00:00', 4),
(2900.2, '2024-09-30 11:00:00', 5),
(3000.8, '2024-10-01 08:30:00', 6),
(1400.1, '2024-09-29 09:15:00', 7),
(2500.0, '2024-10-01 10:45:00', 8),
(3600.9, '2024-10-01 11:30:00', 9),
(2200.6, '2024-09-28 13:00:00', 10),
(2800.4, '2024-10-01 07:45:00', 11),
(1700.3, '2024-10-02 09:30:00', 12),
(3000.2, '2024-10-03 10:15:00', 13),
(1900.8, '2024-10-03 11:00:00', 14),
(2400.7, '2024-10-01 12:30:00', 15),
(3100.1, '2024-10-02 08:00:00', 16),
(1500.5, '2024-10-02 09:00:00', 17),
(2000.4, '2024-10-03 10:00:00', 18),
(2800.9, '2024-10-02 11:00:00', 19),
(3300.2, '2024-10-02 12:00:00', 20);


INSERT INTO Calificaciones (Nombre) VALUES
('Mala'),
('Regular'),
('Buena'),
('Excelente'),
('Satisfactoria');

INSERT INTO Valoraciones(Titulo, Contenido, Fecha, ID_Calificacion, ID_Usuario) VALUES
('Valoración de Salud', 'La mascota se ve saludable y activa.', '2024-08-30', 3, 2),
('Cuidado y Atención', 'Se recomienda aumentar la atención y cuidado.', '2024-08-29', 2, 3),
('Excelente Estado', 'La mascota está en un estado excelente.', '2024-09-28', 1, 11),
('Necesita Revisión', 'Es necesario realizar una revisión médica.', '2024-07-27', 4, 1),
('Valoración Regular', 'La mascota se encuentra en un estado regular.', '2024-08-26', 4, 12),
('Satisfacción General', 'La atención ha sido satisfactoria.', '2024-09-25', 5, 3),
('Requiere Vacunas', 'Se debe administrar las vacunas necesarias.', '2024-09-24', 2, 1),
('Estado de Ánimo', 'La mascota parece estar feliz y enérgica.', '2024-09-23', 1, 20),
('Control de Peso', 'Es importante controlar su peso.', '2024-09-22', 3, 11),
('Dieta Adecuada', 'Se recomienda una dieta adecuada.', '2024-09-21', 5, 2),
('Atención Veterinaria', 'La atención veterinaria fue adecuada.', '2024-10-2', 1, 19),
('Buena Condición', 'La mascota está en buena condición física.', '2024-08-19', 1, 15),
('Falta de Ejercicio', 'Se sugiere aumentar el ejercicio.', '2024-09-18', 4, 16),
('Comportamiento Extraño', 'Se ha notado un comportamiento extraño.', '2024-05-17', 2, 13),
('Interacción Social', 'La mascota interactúa bien con otros.', '2024-01-16', 1, 2),
('Necesidad de Entrenamiento', 'Se requiere más entrenamiento.', '2024-08-15', 4, 14),
('Revisión Periódica', 'Es importante una revisión periódica.', '2024-09-14', 3, 11),
('Valoración Positiva', 'Valoración positiva en general.', '2024-09-13', 5, 10),
('Cambio de Comida', 'Se recomienda cambiar la comida.', '2024-09-12', 2, 1),
('Atención a Detalles', 'Se debe prestar atención a los detalles.', '2024-09-11', 3, 20),
('Valoración Final', 'La valoración final es satisfactoria.', '2024-09-10', 1, 19),
('Condición Crítica', 'La mascota está en condición crítica.', '2024-09-09', 4, 2),
('Revisión Completa', 'Se sugiere una revisión completa.', '2024-08-08', 3, 2),
('Estado General', 'El estado general es bueno.', '2024-08-07', 5, 3);

INSERT INTO Metodo_Pago (Nombre) VALUES
('Efectivo'),
('Tarjeta de Crédito'),
('Transferencia Bancaria'),
('PayPal');

INSERT INTO Ventas (Fecha, ID_Metodo_Pago, ID_Usuario) VALUES 
('2024-07-01', 1, 1),   
('2024-07-24', 2, 3),   
('2024-08-03', 3, 1),   
('2024-08-04', 4, 5),   
('2024-08-15', 1, 6),   
('2024-08-22', 2, 4),   
('2024-08-27', 3, 2),   
('2024-08-30', 4, 7),   
('2024-09-01', 1, 8),   
('2024-09-10', 2, 1),   
('2024-09-15', 3, 9),   
('2024-09-20', 4, 10),  
('2024-09-20', 1, 11),  
('2024-09-24', 2, 12),  
('2024-09-27', 3, 5),   
('2024-09-28', 4, 13),  
('2024-09-29', 1, 14),  
('2024-10-01', 2, 15),  
('2024-10-02', 3, 19),  
('2024-10-03', 4, 18);  

INSERT INTO TiposProductos (Nombre) VALUES
('Juguetes'),
('Camas y Accesorios'),
('Collares y Paseo'),
('Alimentos'),
('Higiene y Cuidado');
INSERT INTO Productos (Nombre, Descripcion, ID_TipoProducto, Costo, Precio_Venta) VALUES
-- Tipo: Juguetes
('Juguetes Interactivos', 'Juguetes para estimular la mente de tu mascota.', 1, 7000, 18000),
('Juguetes de Squeak', 'Juguetes de goma con sonido para mayor diversión.', 1, 6000, 15000),
('Juguetes de Peluche', 'Peluches suaves y seguros para mascotas.', 1, 5000, 13000),
('Juguetes Mordedores', 'Juguetes resistentes para perros que disfrutan morder.', 1, 3000, 8000),
('Pelotas con Luz', 'Pelotas interactivas con luz para juegos nocturnos.', 1, 4000, 10000),

-- Tipo: Camas y Accesorios
('Camas Acolchadas', 'Camas cómodas y acolchadas para un buen descanso.', 2, 20000, 50000),
('Camas Elevadas', 'Camas elevadas para evitar el contacto con el suelo.', 2, 22000, 55000),
('Cuchas de Exterior', 'Cuchas resistentes para uso en exteriores.', 2, 25000, 60000),
('Alfombras para Mascotas', 'Alfombras suaves para que tu mascota se relaje.', 2, 12000, 30000),
('Rascadores para Gatos', 'Accesorios para que los gatos puedan rascar.', 2, 8000, 20000),

-- Tipo: Collares y Paseo
('Collares con GPS', 'Collares inteligentes con seguimiento por GPS.', 3, 15000, 35000),
('Collares Reflectantes', 'Collares seguros y visibles para paseos nocturnos.', 3, 8000, 20000),
('Botellas de Agua', 'Botellas de agua portátiles para paseos.', 3, 3000, 8000),
('Accesorios para Viaje', 'Accesorios prácticos para viajar con tu mascota.', 3, 12000, 30000),
('Correas Extensibles', 'Correas con longitud ajustable para mayor libertad.', 3, 9000, 22000),

-- Tipo: Alimentos
('Alimentos Naturales', 'Comida natural y orgánica para mascotas.', 4, 15000, 40000),
('Comida para Cachorros', 'Alimento especializado para el crecimiento de cachorros.', 4, 12000, 28000),
('Golosinas Saludables', 'Golosinas saludables y deliciosas para mascotas.', 4, 2000, 5000),
('Alimentos para Gatos', 'Comida balanceada para gatos de todas las edades.', 4, 10000, 25000),
('Snacks para Perros', 'Snacks nutritivos para perros en entrenamiento.', 4, 5000, 12000),

-- Tipo: Higiene y Cuidado
('Shampoo para Mascotas', 'Shampoo especial para el cuidado del pelaje.', 5, 5000, 15000),
('Cuchillas para Cepillado', 'Cepillos de alta calidad para el cuidado del pelaje.', 5, 4000, 12000),
('Ropa Impermeable', 'Ropa para mascotas resistente al agua.', 5, 15000, 35000),
('Ropa de Invierno', 'Abrigos y chaquetas para el clima frío.', 5, 18000, 45000),
('Cortauñas', 'Herramienta de corte segura para las uñas de las mascotas.', 5, 3000, 9000);

INSERT INTO Inventario (Cantidad, ID_Producto) VALUES
(50, 1),
(30, 2),
(20, 3),
(40, 4),
(20, 5),
(75, 6),
(50, 7),
(10, 8),
(60, 9),
(25, 10),
(35, 11),
(45, 12),
(80, 13),
(15, 14),
(55, 15),
(30, 16),
(5, 17),
(12, 18),
(20, 19),
(14, 20);

INSERT INTO Ventas_Producto (ID_Venta, ID_Producto, Cantidad) VALUES
(1, 1, 2),
(1, 4, 1),
(2, 2, 3),
(2, 5, 1),
(3, 3, 2),
(4, 7, 4),
(5, 6, 1),
(6, 8, 2),
(7, 9, 1),
(8, 10, 3),
(9, 11, 2),
(10, 12, 1),
(11, 13, 1),
(12, 14, 2),
(13, 15, 1),
(14, 16, 3),
(15, 17, 4),
(16, 18, 2),
(17, 19, 5),
(18, 20, 1),
(19, 1, 2);

INSERT INTO Proveedores (Nombre, Direccion, Telefono, Correo) VALUES
('Proveedores de Collares S.A.', 'Calle 1 #10-20', '3001234567', 'info@proveedorcollares.com'),
('Distribuciones de Ropa Ltda.', 'Calle 2 #15-30', '3002345678', 'contacto@distribucionropa.com'),
('Alimentos Mascota S.A.S.', 'Calle 3 #20-40', '3003456789', 'ventas@alimentosmascota.com'),
('Accesorios para Mascotas', 'Calle 4 #25-50', '3004567890', 'info@accesoriosmascotas.com'),
('Carcasas Móviles S.A.', 'Calle 5 #30-60', '3005678901', 'contacto@carcasasmoviles.com'),
('Suscripciones Digitales', 'Calle 6 #35-70', '3006789012', 'soporte@suscripcionesdigitales.com'),
('Comida Saludable S.A.', 'Calle 7 #40-80', '3007890123', 'consultas@comidasaludable.com'),
('Ropa para Mascotas Ltda.', 'Calle 8 #45-90', '3008901234', 'ventas@ropamascotas.com'),
('Juguetes para Mascotas', 'Calle 9 #50-100', '3009012345', 'info@juguetesmascotas.com'),
('Artículos de Cuidado', 'Calle 10 #55-110', '3000123456', 'contacto@articulosdecuidado.com'),
('Suplementos Nutricionales', 'Calle 11 #60-120', '3001234568', 'ventas@suplementosnutricionales.com'),
('Juguetes Interactivos', 'Calle 12 #65-130', '3002345679', 'info@juguetesinteractivos.com'),
('Accesorios para Mascotas', 'Calle 13 #70-140', '3003456780', 'soporte@accesoriosmascotas.com'),
('Ropa Casual para Mascotas', 'Calle 14 #75-150', '3004567891', 'contacto@ropacasual.com'),
('Collares Personalizados', 'Calle 15 #80-160', '3005678902', 'info@collarespersonalizados.com'),
('Suministros de Alimentación', 'Calle 16 #85-170', '3006789013', 'ventas@suministrosalimentos.com'),
('Accesorios de Cuidado Personal', 'Calle 17 #90-180', '3007890124', 'soporte@accesorioscuidado.com'),
('Carcasas Personalizadas', 'Calle 18 #95-190', '3008901235', 'contacto@carcasaspersonalizadas.com'),
('Servicios de Suscripción', 'Calle 19 #100-200', '3009012346', 'info@serviciossuscripcion.com'),
('Muebles para Mascotas', 'Calle 20 #105-210', '3000123457', 'ventas@mueblesmascotas.com');

INSERT INTO ProveedoresProductos (proveedores_ID_Proveedor, productos_ID_Producto) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10);

INSERT INTO Departamentos (Nombre) VALUES
('Ventas'),
('Marketing'),
('Finanzas'),
('Atencion al cliente'),
('Soporte Técnico');

INSERT INTO Puestos (Nombre, Precio_Base, ID_Departamento) VALUES
-- Departamento: Ventas (ID_Departamento = 1)
('Gerente de Ventas', 5000.00, 1),
('Representante de Ventas', 2800.00, 1),
('Supervisor de Ventas', 4000.00, 1),

-- Departamento: Marketing (ID_Departamento = 2)
('Analista de Marketing', 3000.00, 2),
('Coordinador de Eventos', 2900.00, 2),
('Jefe de Publicidad', 4200.00, 2),

-- Departamento: Finanzas (ID_Departamento = 3)
('Contador', 4000.00, 3),
('Auditor Interno', 4500.00, 3),
('Tesorero', 4200.00, 3),

-- Departamento: Atención al Cliente (ID_Departamento = 4)
('Gestor de Quejas y Reclamos', 2500.00, 4),
('Representante de Atención al Cliente', 2200.00, 4),
('Asistente de Servicio al Cliente', 2000.00, 4),
('Supervisor de Atención al Cliente', 3200.00, 4),
('Coordinador de Servicio al Cliente', 3500.00, 4),

-- Departamento: Soporte Técnico (ID_Departamento = 5)
('Técnico de Soporte', 2800.00, 5),
('Ingeniero de Soporte', 4000.00, 5),
('Administrador de Sistemas', 4500.00, 5),
('Especialista en Redes', 3800.00, 5),
('Jefe de Soporte Técnico', 4800.00, 5);


-- Inserciones para la tabla Empleados
INSERT INTO Empleados (Nombre, Telefono, Correo, Fecha_Contratacion, Estado, ID_Puesto) VALUES
-- Ventas
('Carlos Pérez', '3123456789', 'carlos.perez@empresa.com', '2023-01-15', 1, 1),
('Laura Gómez', '3124567890', 'laura.gomez@empresa.com', '2023-02-10', 0, 2),

-- Marketing
('Marta Rodríguez', '3112345678', 'marta.rodriguez@empresa.com', '2022-09-10', 1, 4),

-- Finanzas
('Andrés Gómez', '3109876543', 'andres.gomez@empresa.com', '2021-11-25', 0, 7),

-- Atención al Cliente (mayor cantidad)
('Lucía Fernández', '3156784321', 'lucia.fernandez@empresa.com', '2020-06-30', 1, 10),
('Sofía González', '3165432198', 'sofia.gonzalez@empresa.com', '2023-03-12', 1, 11),
('Raúl Sánchez', '3198765432', 'raul.sanchez@empresa.com', '2022-05-14', 1, 12),
('Fernando Ruiz', '3121098765', 'fernando.ruiz@empresa.com', '2021-07-30', 1, 13),
('Ana Morales', '3154321098', 'ana.morales@empresa.com', '2022-01-11', 0, 14),
('Diego Torres', '3125432189', 'diego.torres@empresa.com', '2023-04-08', 1, 10),
('Sara Jiménez', '3198765433', 'sara.jimenez@empresa.com', '2023-02-20', 1, 11),

-- Soporte Técnico (mayor cantidad)
('Pedro Martínez', '3145678901', 'pedro.martinez@empresa.com', '2022-03-20', 1, 15),
('Jorge Herrera', '3129087654', 'jorge.herrera@empresa.com', '2021-10-15', 1, 16),
('Esteban Pardo', '3115432109', 'esteban.pardo@empresa.com', '2022-12-18', 1, 17),
('Natalia Vargas', '3148765432', 'natalia.vargas@empresa.com', '2023-05-07', 1, 18),
('Ricardo Velásquez', '3154321987', 'ricardo.velasquez@empresa.com', '2021-07-20', 1, 19),
('María López', '3190123456', 'maria.lopez@empresa.com', '2023-01-25', 1, 15),
('Lucas Fernández', '3101234567', 'lucas.fernandez@empresa.com', '2023-03-15', 1, 15),
('Julián Romero', '3123456788', 'julian.romero@empresa.com', '2023-06-20', 1, 19);


INSERT INTO Prioridades (Nivel) VALUES
('Baja'),
('Media'),
('Alta'),
('Urgente');

INSERT INTO Estados (Nombre_Estado) VALUES
('Abierto'),
('En Progreso'),
('Cerrado'),
('Pendiente');

INSERT INTO Tickets (Titulo, Descripcion, Fecha_Creacion, ID_Estado, ID_Prioridad, ID_Usuario, Fecha_Cierre) VALUES
('Problema de inicio de sesión', 'No puedo acceder a mi cuenta', '2023-01-10', 2, 3, 6, '2023-01-12'),
('Error en la aplicación', 'La aplicación se cierra inesperadamente', '2023-01-12', 2, 2, 7, NULL),
('Falla de conexión', 'No se puede conectar a la red', '2023-01-15', 2, 1, 8, '2023-01-20'),
('Requerimiento de función', 'Solicito una nueva función para la app', '2023-01-20', 1, 2, 6, NULL),
('Problema de pago', 'No puedo realizar un pago', '2023-01-22', 2, 3, 7, '2023-01-25'),
('Feedback sobre el producto', 'Me gustaría dar mi opinión sobre el producto', '2023-02-01', 2, 1, 4, NULL),
('Problema de compatibilidad', 'La app no funciona en mi dispositivo', '2023-02-03', 1, 2, 4, NULL),
('Solicitud de reembolso', 'Solicito un reembolso por el producto', '2023-02-05', 2, 3, 5, '2023-02-10'),
('Duda sobre la suscripción', 'Tengo dudas sobre mi suscripción', '2023-02-10', 1, 1, 6, NULL),
('Error en la actualización', 'La actualización no se realiza correctamente', '2023-02-15', 2, 2, 7, '2023-02-20'),
('Fallo en el sistema de tickets', 'El sistema de tickets no me permite abrir nuevos tickets', '2023-02-20', 1, 3, 8, NULL),
('Sugerencia de mejora', 'Propuesta para mejorar la interfaz', '2023-03-01', 1, 1, 9, NULL),
('Problema con la cuenta', 'No puedo cambiar mi contraseña', '2023-03-05', 1, 2, 10, NULL),
('Error de facturación', 'Recibí una factura incorrecta', '2023-03-10', 2, 3, 11, '2023-03-15'),
('Consulta sobre productos', '¿Cuándo estarán disponibles los nuevos productos?', '2023-03-15', 1, 1, 12, NULL),
('Problema con la entrega', 'No he recibido mi pedido', '2023-03-20', 2, 2, 1, '2023-03-25'),
('Inconvenientes en la instalación', 'No puedo instalar la aplicación', '2023-03-25', 1, 3, 2, NULL),
('Problema en el carrito de compras', 'El carrito no muestra los productos', '2023-04-01', 1, 1, 3, NULL),
('Falla en la sincronización', 'No se sincronizan mis datos entre dispositivos', '2023-04-05', 1, 2, 4, NULL),
('Consulta sobre la política de devolución', 'Quisiera más información sobre devoluciones', '2023-04-10', 1, 1, 5, NULL),
('Problema con la notificación', 'No recibo notificaciones de la app', '2023-04-15', 1, 3, 6, NULL);

INSERT INTO EmpleadosTickets (empleados_ID_Empleado, tickets_ID_Ticket) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(6, 10),
(7, 11),
(7, 12),
(8, 13),
(9, 14),
(9, 15),
(10, 16),
(10, 17),
(11, 18),
(12, 19),
(13, 20);

INSERT INTO Servicios_Mantenimiento (Nombre) VALUES
('Actualización de software del collar'),
('Reemplazo de batería del collar'),
('Chequeo de sensores de salud'),
('Mantenimiento del sistema de monitoreo'),
('Limpieza del collar y accesorios'),
('Verificación de conectividad del collar');

INSERT INTO Mantenimiento (Fecha_Mantenimiento, ID_Ticket, ID_Servicio, ID_Estado_Mantenimiento) VALUES
('2023-01-13', 1, 1, 3),
('2023-01-21', 3, 2, 2),
('2023-01-26', 5, 3, 1),
('2023-02-01', 8, 4, 4),
('2023-02-10', 12, 5, 1),
('2023-02-15', 14, 1, 2),
('2023-03-10', 16, 2, 3),
('2023-03-15', 7, 3, 3),
('2023-03-20', 13, 4, 4),
('2023-03-25', 9, 5, 2),
('2023-04-01', 15, 1, 1),
('2023-04-05', 6, 2, 1),
('2023-04-10', 2, 3, 2),
('2023-04-15', 4, 4, 3),
('2023-04-20', 11, 5, 4),
('2023-04-25', 17, 1, 2),
('2023-05-01', 18, 2, 1),
('2023-05-05', 19, 3, 3),
('2023-05-10', 20, 4, 4),
('2023-05-15', 8, 5, 3);

INSERT INTO empleadosmantenimiento(empleados_ID_Empleado,mantenimiento_ID_Mantenimiento) VALUES
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(6, 10),
(7, 11),
(7, 12);

INSERT INTO Pagos (Fecha_Pago, ID_Empleado) VALUES
('2023-01-04', 3),
('2023-01-16', 8),
('2023-02-20', 7),
('2023-02-28', 12),
('2023-03-10', 14),
('2023-03-18', 5),
('2023-04-15', 2),  
('2023-05-20', 9),    
('2023-06-12', 1),   
('2023-07-09', 6)