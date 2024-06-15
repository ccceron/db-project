

-- Inserts para la tabla cliente
INSERT INTO cliente (clientid, nombre, dirección, teléfono, email, ciudad, tipo) VALUES
(1, 'Juan Pérez', 'Calle 5 #10-15', '1234567890', 'juan.perez@example.com', 'Cali', 'Regular'),
(2, 'Ana Gómez', 'Carrera 25 #30-45', '0987654321', 'ana.gomez@example.com', 'Cali', 'Premium'),
(3, 'Luis Martínez', 'Avenida 6N #14-23', '2345678901', 'luis.martinez@example.com', 'Cali', 'Regular'),
(4, 'María Rodríguez', 'Diagonal 23 #45-67', '3456789012', 'maria.rodriguez@example.com', 'Cali', 'Premium'),
(5, 'Pedro Hernández', 'Transversal 18 #67-89', '4567890123', 'pedro.hernandez@example.com', 'Cali', 'Regular');

-- Inserts para la tabla mensajero (antes courier)
INSERT INTO mensajero (mensajeroid, nombre, dirección, teléfono, email) VALUES
(1, 'Mensajero 1', 'Calle 1 #1-1', '5551112220', 'mensajero1@example.com'),
(2, 'Mensajero 2', 'Calle 2 #2-2', '5552223331', 'mensajero2@example.com'),
(3, 'Mensajero 3', 'Calle 3 #3-3', '5553334442', 'mensajero3@example.com'),
(4, 'Mensajero 4', 'Calle 4 #4-4', '5554445553', 'mensajero4@example.com'),
(5, 'Mensajero 5', 'Calle 5 #5-5', '5555556664', 'mensajero5@example.com');

-- Inserts para la tabla contacta (antes contacts)
INSERT INTO contacta (mensajeroid, clientid) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserts para la tabla sucursal
INSERT INTO sucursal (sucursalid, nombre, dirección, clientid, teléfono) VALUES
(1, 'Sucursal Norte', 'Calle 50N #1-20', 1, '6661112220'),
(2, 'Sucursal Sur', 'Calle 80S #2-30', 2, '6662223331'),
(3, 'Sucursal Este', 'Calle 100E #3-40', 3, '6663334442'),
(4, 'Sucursal Oeste', 'Calle 120O #4-50', 4, '6664445553'),
(5, 'Sucursal Centro', 'Calle 140C #5-60', 5, '6665556664');

-- Inserts para la tabla usuario
INSERT INTO usuario (cemail, dirección, teléfono, contraseña) VALUES
('juan.perez@example.com', 'Calle 5 #10-15', '1234567890', 'pass123'),
('ana.gomez@example.com', 'Carrera 25 #30-45', '0987654321', 'pass456'),
('luis.martinez@example.com', 'Avenida 6N #14-23', '2345678901', 'pass789'),
('maria.rodriguez@example.com', 'Diagonal 23 #45-67', '3456789012', 'pass101'),
('pedro.hernandez@example.com', 'Transversal 18 #67-89', '4567890123', 'pass202');

-- Inserts para la tabla servicio
INSERT INTO servicio (scode, fecha, hora, origen, destino, cantidadpaquetes, tipotransporte, cemail) VALUES
(1, '2023-05-01', '08:00:00', 'Cali', 'Palmira', 10, 'Terrestre', 'juan.perez@example.com'),
(2, '2023-05-02', '09:00:00', 'Cali', 'Jamundí', 5, 'Aéreo', 'ana.gomez@example.com'),
(3, '2023-05-03', '10:00:00', 'Cali', 'Yumbo', 15, 'Terrestre', 'luis.martinez@example.com'),
(4, '2023-05-04', '11:00:00', 'Cali', 'Tuluá', 20, 'Aéreo', 'maria.rodriguez@example.com'),
(5, '2023-05-05', '12:00:00', 'Cali', 'Buga', 25, 'Terrestre', 'pedro.hernandez@example.com');

-- Inserts para la tabla estado
INSERT INTO estado (scode, fecha, foto) VALUES
(1, '2023-05-01', 'imagen1.jpg'),
(2, '2024-05-05', 'imagen2.jpg'),
(3, '2023-05-07', 'imagen3.jpg');


