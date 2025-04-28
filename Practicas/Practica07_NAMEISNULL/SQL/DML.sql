-- Tabla Bazar:

insert into gatitaemprendedora.bazar (idbazar, nombrebazar, calle, numerointerior, numeroexterior, colonia, estado, modalidad, fechainicio, fechafin) values (1, 'Music', 'calle4', 870, 572, 'La Paz', 'Querétaro', 'Interno', '2025-01-06', '2025-03-21');
insert into gatitaemprendedora.bazar (idbazar, nombrebazar, calle, numerointerior, numeroexterior, colonia, estado, modalidad, fechainicio, fechafin) values (2, 'Outdoors', 'calle5', 606, 362, 'Juarez', 'Querétaro', 'Aire libre', '2025-01-19', '2025-04-07');
insert into gatitaemprendedora.bazar (idbazar, nombrebazar, calle, numerointerior, numeroexterior, colonia, estado, modalidad, fechainicio, fechafin) values (3, 'Electronics', 'calle5', 242, 723, 'La Paz', 'Chiapas', 'Aire libre', '2025-01-13', '2025-04-22');
insert into gatitaemprendedora.bazar (idbazar, nombrebazar, calle, numerointerior, numeroexterior, colonia, estado, modalidad, fechainicio, fechafin) values (4, 'Beauty', 'calle5', 939, 683, 'Reforma', 'Chiapas', 'Aire libre', '2025-01-06', '2025-02-13');
insert into gatitaemprendedora.bazar (idbazar, nombrebazar, calle, numerointerior, numeroexterior, colonia, estado, modalidad, fechainicio, fechafin) values (5, 'Industrial', 'calle1', 853, 56, 'Juarez', 'Yucatán', 'Interno', '2025-01-28', '2025-02-03');

-- Tabla Personal organizador:

insert into gatitaemprendedora.personalorganizador (rfc, nombrepersonalorganizador, apaternopersonalorganizador, amaternopersonalorganizador, calle, numeroexterior, numerointerior, colonia, estado, salario, esseguridad, eslimpieza, esmedico) values ('KRN5860CY2283', 'Jeffy', 'Boddie', 'Chalcraft', 'boulevard', 776, 80, 'Condesa', 'Guanajuato', '$1152.22', true, false, false);
insert into gatitaemprendedora.personalorganizador (rfc, nombrepersonalorganizador, apaternopersonalorganizador, amaternopersonalorganizador, calle, numeroexterior, numerointerior, colonia, estado, salario, esseguridad, eslimpieza, esmedico) values ('KUL5297AW5179', 'Morissa', 'Rump', 'Clatworthy', 'boulevard', 338, 51, 'Coyoacan', 'Yucatán', '$5949.14', true, false, false);
insert into gatitaemprendedora.personalorganizador (rfc, nombrepersonalorganizador, apaternopersonalorganizador, amaternopersonalorganizador, calle, numeroexterior, numerointerior, colonia, estado, salario, esseguridad, eslimpieza, esmedico) values ('HKF0587WI5209', 'Tadio', 'Penley', 'Bickerdike', 'boulevard', 960, 5, 'Polanco', 'Jalisco', '$5302.94', true, false, false);
insert into gatitaemprendedora.personalorganizador (rfc, nombrepersonalorganizador, apaternopersonalorganizador, amaternopersonalorganizador, calle, numeroexterior, numerointerior, colonia, estado, salario, esseguridad, eslimpieza, esmedico) values ('YMI1497LT3748', 'Jasmina', 'Prover', 'Butler', 'street', 790, 67, 'Polanco', 'Yucatán', '$2105.62', true, false, false);
insert into gatitaemprendedora.personalorganizador (rfc, nombrepersonalorganizador, apaternopersonalorganizador, amaternopersonalorganizador, calle, numeroexterior, numerointerior, colonia, estado, salario, esseguridad, eslimpieza, esmedico) values ('BNF2628CT9452', 'Remington', 'Privett', 'Fullalove', 'street', 560, 71, 'Polanco', 'Guanajuato', '$1742.97', true, false, false);

-- Tabla Trabajar:

insert into gatitaemprendedora.trabajar (idbazar, rfc, fechaasistencia) values (3, 'HKF0587WI5209', '2025-01-01');
insert into gatitaemprendedora.trabajar (idbazar, rfc, fechaasistencia) values (1, 'KRN5860CY2283', '2025-04-24');
insert into gatitaemprendedora.trabajar (idbazar, rfc, fechaasistencia) values (3, 'KUL5297AW5179', '2025-03-16');
insert into gatitaemprendedora.trabajar (idbazar, rfc, fechaasistencia) values (4, 'YMI1497LT3748', '2025-02-09');
insert into gatitaemprendedora.trabajar (idbazar, rfc, fechaasistencia) values (1, 'BNF2628CT9452', '2025-03-17');

-- Tabla Negocio:

insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (1, 'Treeflex', 'Major Pharmaceuticals', 2682.91, 8067.86);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (2, 'Flexidy', 'Commercial Banks', 2478.71, 8435.66);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (3, 'Mat Lam Tam', 'n/a', 1677.26, 8387.85);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (4, 'Sonair', 'Computer Software: Prepackaged Software', 891.51, 9617.8);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (5, 'Fix San', 'Biotechnology: Biological Products (No Diagnostic Substances)', 3264.0, 9421.61);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (6, 'Biodex', 'Industrial Machinery/Components', 2081.23, 6270.74);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (7, 'Quo Lux', 'EDP Services', 395.89, 9352.52);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (8, 'Flowdesk', 'Major Banks', 3558.05, 8338.71);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (9, 'Trippledex', 'n/a', 4780.7, 8547.62);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (10, 'Viva', 'Industrial Machinery/Components', 999.59, 8965.23);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (11, 'Sub-Ex', 'Finance: Consumer Services', 497.07, 7820.35);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (12, 'Cookley', 'Property-Casualty Insurers', 739.05, 9304.73);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (13, 'Stronghold', 'Steel/Iron Ore', 3255.93, 9234.78);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (14, 'Konklab', 'Precious Metals', 4845.43, 9237.68);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (15, 'Home Ing', 'Major Pharmaceuticals', 406.9, 5152.07);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (16, 'Bitwolf', 'Telecommunications Equipment', 2745.0, 8725.48);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (17, 'Opela', 'Real Estate', 1026.1, 8140.09);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (18, 'Holdlamis', 'Major Chemicals', 1431.44, 9981.7);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (19, 'Y-find', 'Oil & Gas Production', 1861.09, 8813.21);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (20, 'Flexidy', 'Major Banks', 2900.42, 7999.71);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (21, 'Keylex', 'n/a', 1776.97, 9601.07);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (22, 'Tempsoft', 'Railroads', 2972.69, 8927.99);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (23, 'Duobam', 'EDP Services', 140.39, 9861.23);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (24, 'Tres-Zap', 'Medical/Dental Instruments', 1014.46, 6436.48);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (25, 'Mat Lam Tam', 'Other Consumer Services', 1210.57, 8447.74);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (26, 'Cardguard', 'Telecommunications Equipment', 541.47, 6746.31);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (27, 'Stim', 'Biotechnology: Electromedical & Electrotherapeutic Apparatus', 917.53, 6411.07);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (28, 'Regrant', 'Investment Bankers/Brokers/Service', 4532.79, 6393.98);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (29, 'Subin', 'n/a', 2094.82, 6025.64);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (30, 'Veribet', 'Real Estate Investment Trusts', 3965.89, 9215.27);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (31, 'Fixflex', 'Business Services', 1501.76, 9222.86);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (32, 'Zontrax', 'Major Pharmaceuticals', 2848.13, 5823.05);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (33, 'Treeflex', 'Industrial Specialties', 4450.58, 9432.51);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (34, 'Trippledex', 'Containers/Packaging', 3647.9, 7846.08);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (35, 'Sub-Ex', 'Computer Software: Prepackaged Software', 3709.0, 8525.46);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (36, 'Holdlamis', 'Oil & Gas Production', 3510.48, 8939.0);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (37, 'Gembucket', 'Professional Services', 1224.86, 7652.46);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (38, 'Cookley', 'Industrial Specialties', 711.29, 7172.87);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (39, 'Zamit', 'n/a', 4587.21, 8949.29);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (40, 'Duobam', 'n/a', 1952.2, 9589.37);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (41, 'Cardguard', 'n/a', 988.33, 7570.8);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (42, 'Holdlamis', 'n/a', 4914.82, 5701.56);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (43, 'Aerified', 'Oilfield Services/Equipment', 588.73, 9817.49);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (44, 'Konklab', 'Major Banks', 2855.44, 7197.41);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (45, 'Job', 'n/a', 55.45, 6457.2);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (46, 'Namfix', 'Restaurants', 2643.15, 8145.07);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (47, 'Pannier', 'Major Pharmaceuticals', 4371.15, 7012.02);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (48, 'Opela', 'Finance: Consumer Services', 3024.51, 8305.89);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (49, 'Alpha', 'Oil Refining/Marketing', 2283.39, 9440.56);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (50, 'Vagram', 'Department/Specialty Retail Stores', 2054.23, 8231.19);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (51, 'Treeflex', 'Business Services', 3093.12, 5727.28);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (52, 'Zontrax', 'Industrial Specialties', 4453.31, 8719.23);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (53, 'Kanlam', 'Major Chemicals', 1049.21, 5439.41);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (54, 'Y-Solowarm', 'n/a', 3135.85, 7963.82);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (55, 'Stronghold', 'Finance: Consumer Services', 3827.75, 5079.72);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (56, 'Bitchip', 'n/a', 3395.69, 9225.71);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (57, 'Y-find', 'Accident &Health Insurance', 3301.91, 7191.05);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (58, 'Zaam-Dox', 'Precious Metals', 702.16, 5488.35);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (59, 'Pannier', 'Commercial Banks', 478.45, 6690.58);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (60, 'Andalax', 'n/a', 1723.67, 9442.76);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (61, 'Holdlamis', 'n/a', 3411.7, 8096.23);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (62, 'Tempsoft', 'Movies/Entertainment', 1135.56, 5086.87);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (63, 'Zoolab', 'Major Pharmaceuticals', 3470.05, 5653.79);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (64, 'Otcom', 'Television Services', 1959.79, 6684.85);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (65, 'Veribet', 'Real Estate Investment Trusts', 3220.38, 9933.94);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (66, 'Sub-Ex', 'Major Chemicals', 14.12, 6784.25);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (67, 'Redhold', 'Real Estate Investment Trusts', 2630.4, 7213.6);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (68, 'It', 'n/a', 367.18, 5315.69);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (69, 'Namfix', 'Steel/Iron Ore', 4498.57, 8637.56);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (70, 'Daltfresh', 'Biotechnology: Biological Products (No Diagnostic Substances)', 2157.34, 9129.54);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (71, 'Tampflex', 'Oil & Gas Production', 1896.04, 6059.54);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (72, 'Stronghold', 'Semiconductors', 2939.57, 9046.7);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (73, 'Alpha', 'n/a', 2495.53, 6124.18);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (74, 'Solarbreeze', 'n/a', 1759.73, 8393.3);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (75, 'Rank', 'n/a', 3204.11, 5017.49);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (76, 'Solarbreeze', 'Other Consumer Services', 2405.47, 9681.69);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (77, 'Zontrax', 'Other Specialty Stores', 3793.59, 5876.39);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (78, 'Rank', 'Semiconductors', 388.42, 5086.44);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (79, 'Tres-Zap', 'Professional Services', 538.89, 7210.12);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (80, 'Holdlamis', 'Natural Gas Distribution', 2910.68, 8776.34);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (81, 'Domainer', 'Semiconductors', 1101.62, 7264.44);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (82, 'Wrapsafe', 'Auto Parts:O.E.M.', 3482.37, 7092.4);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (83, 'Biodex', 'Oil & Gas Production', 3488.92, 5979.16);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (84, 'Namfix', 'Movies/Entertainment', 4085.42, 5354.22);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (85, 'Greenlam', 'Finance: Consumer Services', 4055.32, 9750.78);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (86, 'Tres-Zap', 'Real Estate Investment Trusts', 4325.95, 8124.82);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (87, 'Ronstring', 'Newspapers/Magazines', 3828.64, 5986.28);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (88, 'Biodex', 'Industrial Machinery/Components', 685.58, 5343.04);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (89, 'Viva', 'Food Chains', 2985.67, 7334.34);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (90, 'Toughjoyfax', 'Oil & Gas Production', 3.53, 8499.04);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (91, 'Asoka', 'Radio And Television Broadcasting And Communications Equipment', 4747.15, 5351.19);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (92, 'Opela', 'Metal Fabrications', 2150.14, 5348.94);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (93, 'Subin', 'Life Insurance', 4295.62, 5081.1);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (94, 'Konklab', 'Medical/Dental Instruments', 1057.87, 5586.74);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (95, 'Sonair', 'Auto Parts:O.E.M.', 765.11, 8628.17);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (96, 'Keylex', 'Medical/Dental Instruments', 3319.73, 9811.87);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (97, 'Cookley', 'Major Pharmaceuticals', 2788.99, 9744.16);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (98, 'Veribet', 'Coal Mining', 535.51, 9086.07);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (99, 'Konklux', 'Electric Utilities: Central', 2735.11, 6367.14);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (100, 'Y-Solowarm', 'Property-Casualty Insurers', 1100.33, 8737.3);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (101, 'Viva', 'Oil & Gas Production', 1946.98, 5789.88);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (102, 'Lotlux', 'n/a', 2670.38, 8637.87);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (103, 'Zaam-Dox', 'Computer Software: Prepackaged Software', 4695.77, 7902.2);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (104, 'Vagram', 'Major Pharmaceuticals', 4769.45, 8350.71);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (105, 'Fix San', 'n/a', 3664.73, 7670.17);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (106, 'Namfix', 'Biotechnology: Biological Products (No Diagnostic Substances)', 2942.96, 6700.06);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (107, 'Span', 'Consumer Electronics/Appliances', 4538.77, 8280.86);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (108, 'Ventosanzap', 'Packaged Foods', 694.81, 7368.26);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (109, 'Hatity', 'Medical/Nursing Services', 4001.6, 6013.55);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (110, 'Regrant', 'Services-Misc. Amusement & Recreation', 2223.63, 8760.93);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (111, 'Konklab', 'Consumer Electronics/Video Chains', 1523.69, 8327.39);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (112, 'Stim', 'n/a', 3020.81, 8582.56);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (113, 'Bigtax', 'n/a', 788.4, 9594.5);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (114, 'Opela', 'Trucking Freight/Courier Services', 2776.02, 5030.18);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (115, 'Namfix', 'Beverages (Production/Distribution)', 2882.83, 7359.0);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (116, 'Sonsing', 'Major Banks', 1364.38, 5572.61);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (117, 'Bytecard', 'Trucking Freight/Courier Services', 1539.92, 5818.49);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (118, 'Ventosanzap', 'Other Consumer Services', 4897.91, 7840.21);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (119, 'Cardguard', 'Finance: Consumer Services', 4881.57, 6806.78);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (120, 'Tresom', 'Business Services', 4925.59, 9269.03);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (121, 'Overhold', 'Restaurants', 1021.66, 9909.79);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (122, 'Konklab', 'Industrial Machinery/Components', 1197.95, 7574.41);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (123, 'Span', 'n/a', 3607.87, 5872.95);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (124, 'Zaam-Dox', 'Military/Government/Technical', 4286.78, 7090.67);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (125, 'Sub-Ex', 'n/a', 2732.32, 8038.06);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (126, 'Span', 'Major Pharmaceuticals', 4375.19, 5397.09);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (127, 'Vagram', 'Computer peripheral equipment', 3356.75, 9119.29);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (128, 'Tres-Zap', 'Semiconductors', 2455.24, 7993.63);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (129, 'Overhold', 'Coal Mining', 1663.03, 8189.28);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (130, 'Mat Lam Tam', 'Metal Fabrications', 3954.56, 8654.34);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (131, 'Prodder', 'Railroads', 3342.27, 5535.39);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (132, 'Andalax', 'n/a', 427.3, 8308.76);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (133, 'Redhold', 'Power Generation', 3584.12, 8206.52);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (134, 'Flowdesk', 'Medical/Dental Instruments', 2995.67, 7237.22);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (135, 'Bamity', 'Electric Utilities: Central', 4522.35, 9719.17);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (136, 'Span', 'Finance Companies', 3250.57, 5122.01);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (137, 'Mat Lam Tam', 'Pollution Control Equipment', 1607.89, 9698.72);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (138, 'Keylex', 'Marine Transportation', 1897.39, 5623.98);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (139, 'Alphazap', 'Recreational Products/Toys', 4864.15, 7759.44);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (140, 'Konklab', 'Multi-Sector Companies', 970.34, 7487.34);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (141, 'Ventosanzap', 'Radio And Television Broadcasting And Communications Equipment', 575.0, 7756.06);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (142, 'Opela', 'n/a', 1323.82, 5415.22);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (143, 'Wrapsafe', 'Home Furnishings', 1745.06, 9562.1);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (144, 'Voltsillam', 'n/a', 2813.52, 9635.58);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (145, 'Kanlam', 'Computer Communications Equipment', 4120.88, 6912.42);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (146, 'Bitwolf', 'Biotechnology: Laboratory Analytical Instruments', 4729.26, 5445.47);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (147, 'Cardguard', 'Marine Transportation', 3371.38, 7656.32);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (148, 'Fixflex', 'Hotels/Resorts', 1425.35, 6643.42);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (149, 'Konklux', 'Integrated oil Companies', 240.51, 9123.98);
insert into gatitaemprendedora.negocio (idnegocio, nombrenegocio, descripcion, preciominimo, preciomaximo) values (150, 'Lotlux', 'Real Estate', 4760.27, 5136.92);


-- Tabla Emprendedor:

insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('RISE8K9HL7895', 'Ashia', 'Isaaksohn', 'Grzelczak', 'calle3', null, 148, 'Reforma', 'Nuevo León', 'F', 109);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('2897PN1FZ25B9', 'Adolpho', 'Farry', 'Plett', 'calle1', '50', 90, 'Centro', 'Yucatán', 'M', 6);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5SK4B3SP01V87', 'Emmye', 'Hurdedge', 'Poe', 'calle1', '0', 118, 'La Paz', 'Jalisco', 'F', 150);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('06WG3US8BL3G0', 'Immanuel', 'Sheard', 'O'' Reagan', 'calle2', '10', 106, 'Reforma', 'Nuevo León', 'M', 24);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('LS72215UVD13L', 'Hagen', 'Regardsoe', 'Furmage', 'calle2', '9097', 144, 'La Paz', 'Guanajuato', 'M', 110);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('F9623R07194HG', 'Pascal', 'Grindley', 'Bricknell', 'calle1', '23', 38, 'Centro', 'Yucatán', 'M', 93);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Z2R22843O5UZB', 'Derrick', 'Gloucester', 'Veneur', 'calle5', '10', 124, 'Santa Fe', 'Guanajuato', 'M', 26);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('R5F9Z058FP3WU', 'Catharine', 'Smitten', 'Creevy', 'calle4', '101', 53, 'La Paz', 'Jalisco', 'F', 132);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('LD91NT05OBQHX', 'Marty', 'Burr', 'MacEvilly', 'calle4', '1673', 43, 'Santa Fe', 'Yucatán', 'F', 52);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('1Q2V7XY642NMO', 'Bianka', 'Rodrigues', 'Wordsworth', 'calle1', '3400', 134, 'Centro', 'Nuevo León', 'F', 22);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('BVXR8CZD3LN0F', 'Ellery', 'Bernadot', 'Tisun', 'calle1', null, 145, 'La Paz', 'Guanajuato', 'M', 25);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('37327P0Z4JFT2', 'Thia', 'McFall', 'Bearns', 'calle1', '160', 113, 'Santa Fe', 'Yucatán', 'F', 108);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('ZIWD5Y3Z18428', 'Oralia', 'Haggard', 'Caughte', 'calle3', '7', 27, 'San Miguel', 'Veracruz', 'F', 148);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('ZUZ6V0BG9635G', 'Delila', 'Cuschieri', 'Fowlie', 'calle2', null, 106, 'Reforma', 'Jalisco', 'F', 110);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('6V7A75J2Y0PI8', 'Huberto', 'Quincee', 'Goney', 'calle5', '297', 74, 'La Paz', 'Veracruz', 'M', 118);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5KHFOG95GYS64', 'Alberta', 'Breache', 'Cashley', 'calle5', '178', 37, 'La Paz', 'Guanajuato', 'F', 106);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('1X35ASQ05U8P3', 'Edy', 'Nial', 'Crandon', 'calle1', '5', 25, 'Reforma', 'Guanajuato', 'F', 147);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('016NEIDSM59A0', 'Pebrook', 'Mougenel', 'Kerans', 'calle4', '1286', 73, 'La Paz', 'Guanajuato', 'M', 27);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('3WHUH24PAOK53', 'Horton', 'Davet', 'Kayes', 'calle3', '402', 145, 'San Miguel', 'Guanajuato', 'M', 97);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('YMI7U9347T9QO', 'Simonne', 'Caraher', 'Schirach', 'calle3', '27', 3, 'Reforma', 'Veracruz', 'F', 84);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Q53IA2KDR3727', 'Baxie', 'Hawsby', 'Manderson', 'calle1', '30', 66, 'La Paz', 'Nuevo León', 'M', 48);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('6FYNDJIWPX2B1', 'Caspar', 'Crosen', 'Teece', 'calle5', '4950', 56, 'Santa Fe', 'Yucatán', 'M', 96);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('L9J7HO9I03IA8', 'Barbra', 'Schroder', 'Tarling', 'calle4', '15', 20, 'La Paz', 'Nuevo León', 'F', 128);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Q38Q01F6809W1', 'Heath', 'Lomax', 'Ghest', 'calle1', '5000', 58, 'San Miguel', 'Nuevo León', 'F', 120);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('06FA7R3TF5L41', 'Linoel', 'Agronski', 'Aloshechkin', 'calle2', '377', 98, 'San Miguel', 'Jalisco', 'M', 5);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('767EN54NB8T3S', 'Nobie', 'Varey', 'Shewring', 'calle2', null, 117, 'Santa Fe', 'Jalisco', 'M', 49);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('2C7853A6MLT40', 'Bonita', 'Pain', 'Brownbridge', 'calle3', '4600', 19, 'La Paz', 'Veracruz', 'F', 37);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8G23N4975649O', 'Barty', 'Keysall', 'MacBrearty', 'calle4', '724', 63, 'La Paz', 'Jalisco', 'M', 103);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('M79E3VS6G9DJC', 'Gasper', 'Deluze', 'Antonelli', 'calle4', '28', 126, 'Santa Fe', 'Nuevo León', 'M', 43);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('R1383L305MA17', 'Carmelia', 'Vader', 'Midlane', 'calle5', '1136', 6, 'La Paz', 'Guanajuato', 'F', 109);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('NPMJG51N9SFY5', 'Billy', 'Ducker', 'Yole', 'calle2', '1363', 92, 'Centro', 'Veracruz', 'F', 79);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('13FACGBKAB9LH', 'Patrice', 'Collopy', 'Lofthouse', 'calle2', '478', 136, 'Santa Fe', 'Guanajuato', 'F', 25);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('OQ0G99DZFV951', 'Marty', 'Gonnely', 'Liverseege', 'calle4', '56', 99, 'Santa Fe', 'Nuevo León', 'M', 103);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('75V8JDS6T1LY3', 'Nathan', 'Challis', 'Chaikovski', 'calle4', '2936', 70, 'Reforma', 'Nuevo León', 'M', 121);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('A67XH9GMORIM1', 'Antonella', 'Bettanay', 'Binnion', 'calle4', '4250', 1, 'La Paz', 'Nuevo León', 'F', 90);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('QG0GZ57A79I08', 'Marty', 'Kardos-Stowe', 'Sterzaker', 'calle3', '16', 148, 'La Paz', 'Jalisco', 'F', 35);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5OD405W25IFTE', 'Erwin', 'Davison', 'Tesdale', 'calle3', '4678', 142, 'San Miguel', 'Nuevo León', 'M', 135);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('J99E2H5QO6GLD', 'Vivi', 'Claasen', 'Lambot', 'calle3', '6723', 25, 'Centro', 'Yucatán', 'F', 84);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('IY9376GLZK73Q', 'Terri', 'Glasner', 'McCawley', 'calle5', '148', 50, 'San Miguel', 'Nuevo León', 'M', 17);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S25CH68X3OMXF', 'Nat', 'Hannam', 'Grivori', 'calle1', '745', 91, 'San Miguel', 'Veracruz', 'M', 58);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('771261GD5Z639', 'Meyer', 'Andreutti', 'Livingstone', 'calle2', '209', 103, 'Reforma', 'Guanajuato', 'M', 25);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('YMU7M8U5G6W9E', 'Earl', 'Rivard', 'Jirsa', 'calle5', '13', 122, 'Reforma', 'Jalisco', 'M', 78);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('3H09HX75F6Y8S', 'Crystal', 'Misk', 'Hannaford', 'calle3', '33', 100, 'La Paz', 'Guanajuato', 'F', 61);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('86Z410O1UO447', 'Maison', 'Jumel', 'Belz', 'calle2', '22', 47, 'Reforma', 'Jalisco', 'M', 101);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('WO0X04PK26W8R', 'Levon', 'Malletratt', 'Padberry', 'calle2', '3970', 66, 'Centro', 'Nuevo León', 'M', 103);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('9A6I20HC6G0V6', 'Freemon', 'Doud', 'Dewen', 'calle3', '76', 111, 'Centro', 'Jalisco', 'M', 70);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('UZKWBHNBLG28F', 'Ramona', 'Purvis', 'Beardmore', 'calle2', '2464', 102, 'La Paz', 'Jalisco', 'F', 20);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('4B2690RJ4MN54', 'Finley', 'Jandl', 'Georgeon', 'calle3', '4550', 44, 'San Miguel', 'Nuevo León', 'M', 89);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('IWDD4V8B1936W', 'Reinold', 'Curado', 'Edmeads', 'calle3', '105', 62, 'Centro', 'Yucatán', 'M', 77);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S7TW89CCQY265', 'Gaspar', 'Pablos', 'Skewis', 'calle2', '104', 109, 'San Miguel', 'Yucatán', 'M', 128);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('M62DCLO54GGHR', 'Rhea', 'Gartshore', 'Chastel', 'calle2', '607', 31, 'Santa Fe', 'Yucatán', 'F', 129);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('06H1Z9MXTPI08', 'Elia', 'Petrus', 'Larsen', 'calle5', '2492', 140, 'Centro', 'Yucatán', 'M', 88);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('03MVH6F6518SI', 'Silvanus', 'Hasnip', 'Dronsfield', 'calle3', '2450', 7, 'Centro', 'Yucatán', 'M', 38);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('SP9UWD496335L', 'Cyndie', 'Samwell', 'Cromblehome', 'calle5', '48', 147, 'La Paz', 'Yucatán', 'F', 119);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7K7Z6YORL4CQ1', 'Trisha', 'Bavister', 'Poulgreen', 'calle5', '146', 69, 'Reforma', 'Guanajuato', 'F', 90);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S0G9AJ8TW9941', 'Wiley', 'Prenty', 'Kinsett', 'calle1', null, 17, 'La Paz', 'Yucatán', 'M', 48);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('0NZ86F322BO0B', 'Bobine', 'Badini', 'Mingame', 'calle1', '4148', 121, 'Reforma', 'Jalisco', 'F', 78);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5W1AF1U1HT1S9', 'Nikaniki', 'Romer', 'Callander', 'calle2', '1337', 47, 'San Miguel', 'Guanajuato', 'F', 87);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('XMX6HW7D69N23', 'Siusan', 'Doctor', 'Sneath', 'calle2', '69', 109, 'Santa Fe', 'Guanajuato', 'F', 124);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('KW0GJQ9RSE95R', 'Lorettalorna', 'Munnery', 'Rubinov', 'calle1', '1260', 88, 'Centro', 'Yucatán', 'F', 86);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('SO82OFS136801', 'Emily', 'Murty', 'Lipsett', 'calle3', '5785', 81, 'San Miguel', 'Yucatán', 'F', 96);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('K58752T4H7D7V', 'Edd', 'Hawken', 'Iacopetti', 'calle1', '600', 75, 'Reforma', 'Veracruz', 'M', 24);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('T5866S4GF4777', 'Reilly', 'Agent', 'Jira', 'calle1', '1017', 31, 'La Paz', 'Nuevo León', 'M', 63);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('23U05XOD14ADT', 'Talia', 'Pollak', 'Huggon', 'calle3', '1953', 150, 'San Miguel', 'Jalisco', 'F', 142);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('KD599J8U6FH94', 'Bobbe', 'Dottrell', 'Faithfull', 'calle3', '426', 131, 'La Paz', 'Jalisco', 'F', 118);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('BKKKU29482CO5', 'Mirabelle', 'Simmonite', 'Nurden', 'calle1', '4163', 12, 'Reforma', 'Veracruz', 'F', 113);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('0J2Y0IR0082VV', 'Ambrosius', 'Spurdon', 'Gauge', 'calle5', '1148', 58, 'Centro', 'Nuevo León', 'M', 75);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8R6CKN7RD2942', 'Kristos', 'MacGee', 'Simmell', 'calle3', '30', 109, 'Centro', 'Jalisco', 'M', 143);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('C3801H0QN3AWU', 'Bayard', 'Gerssam', 'Coning', 'calle5', '24', 61, 'San Miguel', 'Guanajuato', 'M', 99);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('JP6P01LJ8EC90', 'Ethelbert', 'Odda', 'Nelm', 'calle2', '663', 16, 'San Miguel', 'Veracruz', 'M', 75);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('3Y3L569BZ9929', 'Sile', 'Hosby', 'Zanuciolii', 'calle2', '716', 101, 'Reforma', 'Yucatán', 'F', 53);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5BTG8K0J8D8UR', 'Colan', 'Delahunt', 'Le Maitre', 'calle4', '2533', 110, 'San Miguel', 'Guanajuato', 'M', 108);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8NZJUTB5BQ82R', 'Lorrie', 'Cearley', 'Hatton', 'calle5', '25', 32, 'Centro', 'Veracruz', 'F', 36);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Q75R85IKWC24S', 'Editha', 'Pettie', 'Burndred', 'calle4', '49', 62, 'Santa Fe', 'Guanajuato', 'F', 41);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('98F5T6VEDS27U', 'Hale', 'Bickerstaffe', 'Zecchinii', 'calle2', null, 89, 'San Miguel', 'Guanajuato', 'M', 126);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('258B6GD4O0AQ0', 'Oswell', 'Inchley', 'Hoggan', 'calle2', '730', 95, 'Santa Fe', 'Jalisco', 'M', 69);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('O5I1T642H6O1H', 'Jenni', 'Prestage', 'Orthmann', 'calle3', '205', 72, 'San Miguel', 'Guanajuato', 'F', 122);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('54U2466448IJ4', 'Helga', 'Jakolevitch', 'Eliyahu', 'calle5', '412', 75, 'Centro', 'Nuevo León', 'F', 56);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('1XZLKATB3RU1E', 'Melly', 'Brambell', 'McKiddin', 'calle5', '66', 16, 'La Paz', 'Yucatán', 'F', 14);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('199AJB7957E0X', 'Neil', 'Prestney', 'Mahody', 'calle1', '1271', 8, 'Centro', 'Yucatán', 'M', 17);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('771R0NGVEYMFC', 'Stevie', 'Gamwell', 'MacRannell', 'calle5', '135', 30, 'Reforma', 'Yucatán', 'M', 147);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('O1JMRG65IZ306', 'Farrand', 'Duce', 'Bummfrey', 'calle3', '1709', 59, 'Santa Fe', 'Veracruz', 'F', 98);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7C4T15GAQS2Z4', 'Barnabas', 'Berryann', 'Dradey', 'calle1', '7700', 93, 'Santa Fe', 'Guanajuato', 'M', 35);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('952922VJDU9H6', 'Iormina', 'Sans', 'McGairl', 'calle5', '1175', 83, 'San Miguel', 'Veracruz', 'F', 138);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('INUFHPM5X3X12', 'Collen', 'MacArthur', 'Woolatt', 'calle2', '8', 49, 'Santa Fe', 'Jalisco', 'F', 104);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5050X9CGBEU08', 'Nickolaus', 'Hanscomb', 'Grimes', 'calle5', '364', 26, 'Reforma', 'Yucatán', 'M', 42);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('C4ZQ061UI4Q0J', 'Quinta', 'Bevan', 'Jobke', 'calle2', '602', 23, 'Reforma', 'Veracruz', 'F', 109);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('QNQJ90TZ9245V', 'Dana', 'Slayton', 'Benditt', 'calle4', '236', 90, 'San Miguel', 'Nuevo León', 'M', 129);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('39P88IYE0123Z', 'Adolphus', 'Sugge', 'Terrazzo', 'calle4', '285', 135, 'Centro', 'Jalisco', 'M', 111);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7LH2586343CZ6', 'Carolin', 'Happer', 'Nibley', 'calle4', '180', 116, 'Reforma', 'Veracruz', 'F', 19);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('GY5YFV3M00M01', 'Davida', 'Levesque', 'Ladyman', 'calle3', '739', 5, 'San Miguel', 'Yucatán', 'F', 125);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('2NM64YZ6B609N', 'Cosmo', 'Schutter', 'Munroe', 'calle1', null, 13, 'Reforma', 'Guanajuato', 'M', 86);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('ING48RPZ3276Q', 'Barbie', 'Jefferd', 'Gasking', 'calle2', '703', 57, 'Reforma', 'Jalisco', 'F', 123);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('V0YH764Q99119', 'Frederich', 'Hassent', 'Kirvell', 'calle5', '4563', 135, 'Reforma', 'Veracruz', 'M', 85);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('P77OU6JAZQI0D', 'Elisabet', 'Itzakovitz', 'Banbrook', 'calle4', '1352', 50, 'La Paz', 'Guanajuato', 'F', 135);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('SPDG08H14QF1B', 'Vin', 'Sellick', 'Landsberg', 'calle3', '499', 83, 'La Paz', 'Veracruz', 'F', 62);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('GQ7LD575CE73E', 'Adah', 'Suatt', 'Cains', 'calle3', '4311', 132, 'Reforma', 'Veracruz', 'F', 60);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('PJ6IBVJQ7KORW', 'Shoshanna', 'Abell', 'Nutter', 'calle3', '100', 123, 'Centro', 'Jalisco', 'F', 7);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S1OWELHC78GI9', 'Johnna', 'Oldnall', 'Goldstein', 'calle1', '2930', 33, 'Santa Fe', 'Yucatán', 'F', 22);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('32P45C1G4ZL3T', 'Patsy', 'Tees', 'Cejka', 'calle4', '878', 65, 'San Miguel', 'Yucatán', 'M', 140);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('08Y4YHL88M72J', 'Mellie', 'Insko', 'Shellibeer', 'calle4', '574', 3, 'La Paz', 'Jalisco', 'F', 13);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('43CDE88N7MOYZ', 'Franklin', 'Reinard', 'Kays', 'calle4', '7200', 80, 'Reforma', 'Nuevo León', 'M', 132);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('NUS39YHBGT8Y1', 'Brigida', 'Jinks', 'Burkwood', 'calle2', '13', 102, 'Centro', 'Nuevo León', 'F', 113);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7A68P4YCTS7G6', 'Gerrard', 'Cristoforo', 'Olsen', 'calle1', '54', 34, 'La Paz', 'Jalisco', 'M', 70);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Z3155DCXV15DO', 'Ermina', 'Russan', 'Deas', 'calle1', '2036', 107, 'Reforma', 'Veracruz', 'F', 116);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('W0MH502C5IMG2', 'Bambi', 'Gellibrand', 'Blamires', 'calle4', '360', 52, 'Centro', 'Nuevo León', 'F', 1);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('PI9B1V294335W', 'Sloan', 'Kingett', 'Chestnutt', 'calle3', '441', 44, 'Santa Fe', 'Veracruz', 'M', 149);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('U73XZF733VA3P', 'Marsh', 'Fomichkin', 'MacCaughan', 'calle5', null, 19, 'San Miguel', 'Jalisco', 'M', 41);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('UZHDL8847077O', 'Wat', 'Matkin', 'Gianilli', 'calle5', '1014', 90, 'Centro', 'Guanajuato', 'M', 89);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('PYA275FK7FP4S', 'Anissa', 'Hauch', 'Callow', 'calle2', '2631', 6, 'San Miguel', 'Veracruz', 'F', 67);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('82O1O8NYWT94M', 'Sonny', 'Jaynes', 'Belhome', 'calle3', '1291', 26, 'La Paz', 'Nuevo León', 'F', 83);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('F2ZB5FTC84N99', 'Leese', 'Plenderleith', 'Jaggli', 'calle4', '340', 10, 'La Paz', 'Veracruz', 'F', 141);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('17B0VP4M82GDQ', 'Bertie', 'McQuorkel', 'Skatcher', 'calle5', '389', 106, 'San Miguel', 'Jalisco', 'M', 88);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('MW7HXB8XTG2OL', 'Nola', 'Blare', 'Scolts', 'calle2', '86', 142, 'Centro', 'Nuevo León', 'F', 145);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('238K96EY5MUQ2', 'Berne', 'Simyson', 'MacClancey', 'calle3', '7348', 9, 'La Paz', 'Jalisco', 'M', 106);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('79V31759A3137', 'Rance', 'Sugge', 'Fatharly', 'calle2', '1350', 51, 'San Miguel', 'Veracruz', 'M', 126);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('Z2BZOE85DRN71', 'Neils', 'Crownshaw', 'O'' Loughran', 'calle3', '1305', 79, 'La Paz', 'Yucatán', 'M', 141);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('2YBDQ0PY3S14O', 'Ervin', 'Page', 'Lesslie', 'calle1', '4021', 88, 'Reforma', 'Nuevo León', 'M', 66);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('79F7P29UVGBX4', 'Alverta', 'Enser', 'Wiggins', 'calle3', '10', 51, 'San Miguel', 'Guanajuato', 'F', 107);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S3PJ3BAD6SM02', 'Gasparo', 'Chang', 'Friberg', 'calle5', '246', 34, 'La Paz', 'Guanajuato', 'M', 88);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('B514K6OCYB0F5', 'Charline', 'Slowcock', 'Guinn', 'calle5', '825', 119, 'Centro', 'Guanajuato', 'F', 15);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('776WNQ50S9U33', 'Rozalin', 'Cotterill', 'Sherrock', 'calle1', '633', 114, 'Santa Fe', 'Jalisco', 'F', 62);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('HCB8683805ODU', 'Arlen', 'Eliez', 'Slides', 'calle5', '1720', 20, 'La Paz', 'Nuevo León', 'M', 97);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('HUK82X10L6W60', 'Maud', 'Josephy', 'Cantos', 'calle4', '1017', 15, 'San Miguel', 'Yucatán', 'F', 126);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('D61BY8639UARP', 'Goran', 'Whitwood', 'Whebell', 'calle2', '470', 144, 'Reforma', 'Yucatán', 'M', 139);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('4P7EL8YP9453W', 'Nels', 'Chimes', 'Skowcraft', 'calle1', '5', 17, 'Centro', 'Yucatán', 'M', 116);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('9TH985C3SUT53', 'Netty', 'Capoun', 'Braams', 'calle1', '225', 68, 'San Miguel', 'Nuevo León', 'F', 3);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('EYT2F4N7Y093P', 'Annabell', 'Cudihy', 'Matteau', 'calle5', '1165', 100, 'Centro', 'Veracruz', 'F', 72);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7832YYP6KJ758', 'Meier', 'Toothill', 'Dawidowitsch', 'calle3', '281', 139, 'Centro', 'Veracruz', 'M', 94);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('XY2A8IU76PEB2', 'Errick', 'Allingham', 'Obern', 'calle4', '119', 111, 'La Paz', 'Yucatán', 'M', 41);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('T1J8173W93UI7', 'Arney', 'Doudney', 'Ramsay', 'calle2', '2690', 107, 'La Paz', 'Jalisco', 'M', 40);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('LKGZG5P25I4BP', 'Lawrence', 'Mustill', 'Cordero', 'calle4', '468', 110, 'La Paz', 'Guanajuato', 'M', 14);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('2U7N22C5ZA2Y7', 'Johnny', 'Nias', 'Heisman', 'calle3', '1', 125, 'Reforma', 'Yucatán', 'M', 140);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('TKYYG7G589ZQZ', 'Malinda', 'Hiorn', 'Stammer', 'calle3', '1330', 3, 'Centro', 'Yucatán', 'F', 30);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('F3J2ZJ98E4ET1', 'Zach', 'Caws', 'Coopper', 'calle3', '0', 69, 'Centro', 'Guanajuato', 'M', 73);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('TY1843YF0U22B', 'Justino', 'Smedmoor', 'Redding', 'calle4', '164', 138, 'La Paz', 'Nuevo León', 'M', 93);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('D2ERL2P7TH206', 'Jaye', 'Demageard', 'Rutigliano', 'calle2', '127', 85, 'Centro', 'Nuevo León', 'M', 25);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('63SU4DW1N585L', 'Gwendolin', 'Slemming', 'Milington', 'calle2', '3', 25, 'Centro', 'Yucatán', 'F', 114);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8X90H99GR0ZQ8', 'Homerus', 'Gillon', 'Flanner', 'calle3', '2076', 31, 'Reforma', 'Veracruz', 'M', 138);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('S5H14151TG4Q5', 'Trumaine', 'Learmonth', 'Jagielski', 'calle1', '6', 82, 'La Paz', 'Veracruz', 'M', 86);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('ASX312UB2FK12', 'Alexandr', 'Bramstom', 'Stook', 'calle3', '96', 83, 'Centro', 'Yucatán', 'M', 141);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('4YH0DAF0K200W', 'Gusty', 'Powton', 'O'' Shea', 'calle2', '1148', 144, 'Reforma', 'Nuevo León', 'F', 71);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('6R76BS8GM72K5', 'Nicolina', 'Housecraft', 'Fairchild', 'calle5', '1572', 17, 'San Miguel', 'Guanajuato', 'F', 9);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('BJ2Q43RZ9371I', 'Peggy', 'Garstang', 'St. Queintain', 'calle1', '247', 54, 'La Paz', 'Jalisco', 'F', 35);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('5141CRI41D0HF', 'Benjamen', 'Broadhurst', 'Iliffe', 'calle4', '2240', 112, 'La Paz', 'Yucatán', 'M', 2);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('K20S2G6X9HQUB', 'Karlotte', 'Laxson', 'Lugsdin', 'calle5', '1055', 79, 'San Miguel', 'Nuevo León', 'F', 5);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('NLDZA406FN5FZ', 'Ellynn', 'Garz', 'Bernet', 'calle2', '1545', 29, 'Santa Fe', 'Veracruz', 'F', 126);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8C14PMY647SSR', 'Kaylil', 'Clayton', 'McAughtrie', 'calle5', '2001', 34, 'Centro', 'Guanajuato', 'F', 135);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('7C3C702V5KN83', 'Arthur', 'Latter', 'Toffel', 'calle1', '5', 117, 'Centro', 'Yucatán', 'M', 90);
insert into gatitaemprendedora.emprendedor (rfc, nombreemprendedor, apaternoemprendedor, amaternoemprendedor, calle, numeroexterior, numerointerior, colonia, estado, genero, idnegocio) values ('8372RE9E1WU0J', 'Danny', 'Celez', 'Smoth', 'calle2', '55', 140, 'Reforma', 'Nuevo León', 'F', 142);


-- Tabla Servicio

INSERT INTO GatitaEmprendedora.Servicio (IdNegocio, NombreServicio, Descripcion, Tipo, PrecioServicio, Duracion) VALUES
(1, 'Corte de Cabello Básico', 'Corte sencillo para caballeros', 'Belleza', 150.00, '00:30:00'),
(2, 'Manicure Express', 'Manicure rápido y eficiente', 'Belleza', 200.00, '00:20:00'),
(3, 'Asesoría Legal Inicial', 'Consulta básica de 30 minutos', 'Consultoría', 500.00, '00:30:00'),
(4, 'Mantenimiento de Laptop', 'Limpieza y optimización de software', 'Tecnología', 750.00, '01:30:00'),
(5, 'Clases de Yoga', 'Sesión grupal de yoga', 'Deporte', 100.00, '01:00:00'),
(6, 'Masaje Relajante', 'Terapia de masaje de cuerpo completo', 'Salud', 450.00, '01:15:00'),
(7, 'Pastel Personalizado', 'Pastel decorado al gusto', 'Gastronomía', 1200.00, '04:00:00'),
(8, 'Curso de Fotografía', 'Introducción a la fotografía digital', 'Educación', 800.00, '02:00:00'),
(9, 'Diseño de Logotipo', 'Creación de logotipo empresarial', 'Diseño', 950.00, '03:00:00'),
(10, 'Reparación de Bicicletas', 'Servicio completo de bicicleta', 'Mecánica', 300.00, '02:30:00'),
(11, 'Clases de Inglés', 'Nivel básico de inglés conversacional', 'Educación', 600.00, '01:30:00'),
(12, 'Fotografía de Productos', 'Sesión fotográfica para catálogos', 'Fotografía', 1100.00, '02:00:00'),
(13, 'Spa Facial', 'Limpieza facial profunda', 'Belleza', 350.00, '00:50:00'),
(14, 'Corte de Césped', 'Mantenimiento de jardines', 'Servicios Generales', 250.00, '01:00:00'),
(15, 'Entrenamiento Personal', 'Rutina personalizada de ejercicio', 'Deporte', 700.00, '01:00:00'),
(16, 'Clases de Pintura', 'Técnicas básicas de pintura', 'Educación', 400.00, '01:30:00'),
(17, 'Plan de Redes Sociales', 'Estrategia digital para empresas', 'Marketing', 1500.00, '03:00:00'),
(18, 'Servicio de Catering', 'Servicio de comida para eventos', 'Gastronomía', 5000.00, '05:00:00'),
(19, 'Reparación de Celulares', 'Cambio de pantalla y batería', 'Tecnología', 1200.00, '01:00:00'),
(20, 'Sesión de Fotos Familiar', 'Fotos profesionales familiares', 'Fotografía', 2000.00, '02:30:00'),
(21, 'Consultoría Financiera', 'Asesoría en inversiones personales', 'Consultoría', 1800.00, '02:00:00'),
(22, 'Curso de Programación', 'Introducción a Python', 'Educación', 1000.00, '02:30:00'),
(23, 'Servicio de Mudanza', 'Mudanza residencial', 'Servicios Generales', 4500.00, '06:00:00'),
(24, 'Aplicación de Uñas Acrílicas', 'Aplicación de uñas personalizadas', 'Belleza', 600.00, '01:20:00'),
(25, 'Venta de Galletas Artesanales', 'Caja de galletas variadas', 'Gastronomía', 300.00, '02:00:00'),
(26, 'Alquiler de Proyector', 'Proyector HD para eventos', 'Tecnología', 800.00, '01:00:00'),
(27, 'Asesoría de Imagen', 'Consultoría de estilo personal', 'Consultoría', 900.00, '01:30:00'),
(28, 'Mantenimiento de Aires Acondicionados', 'Servicio preventivo', 'Mecánica', 1300.00, '03:00:00'),
(29, 'Desarrollo de Página Web', 'Página básica empresarial', 'Tecnología', 4000.00, '05:00:00'),
(30, 'Taller de Cocina Internacional', 'Cocina italiana y japonesa', 'Educación', 1200.00, '04:00:00'),
(31, 'Servicio de Traducción', 'Traducción inglés-español', 'Consultoría', 600.00, '01:00:00'),
(32, 'Clases de Natación', 'Curso para principiantes', 'Deporte', 500.00, '01:00:00'),
(33, 'Clases de Ballet', 'Clases para niños y adolescentes', 'Educación', 400.00, '01:00:00'),
(34, 'Paseo de Perros', 'Caminata de 1 hora', 'Servicios Generales', 150.00, '01:00:00'),
(35, 'Fotografía para Bodas', 'Cobertura de bodas', 'Fotografía', 8500.00, '08:00:00'),
(36, 'Organización de Eventos', 'Planificación de bodas y fiestas', 'Servicios Generales', 5000.00, '05:00:00'),
(37, 'Diseño de Interiores', 'Asesoría de decoración', 'Diseño', 3000.00, '04:00:00'),
(38, 'Servicio de Niñera', 'Cuidado de niños por hora', 'Servicios Generales', 200.00, '02:00:00'),
(39, 'Clases de Guitarra', 'Curso básico de guitarra', 'Educación', 500.00, '01:30:00'),
(40, 'Sesión de Meditación', 'Meditación guiada', 'Salud', 250.00, '00:45:00'),
(41, 'Terapia Psicológica', 'Sesión individual de terapia', 'Salud', 700.00, '01:00:00'),
(42, 'Lavado de Autos', 'Lavado exterior e interior', 'Servicios Generales', 250.00, '01:30:00'),
(43, 'Entrenamiento Funcional', 'Rutina de alta intensidad', 'Deporte', 600.00, '01:00:00'),
(44, 'Venta de Cupcakes', 'Docena de cupcakes variados', 'Gastronomía', 350.00, '02:00:00'),
(45, 'Mantenimiento de Computadoras', 'Revisión y formateo', 'Tecnología', 700.00, '02:00:00'),
(46, 'Clases de Photoshop', 'Edición básica de imágenes', 'Educación', 800.00, '01:30:00'),
(47, 'Tratamiento Capilar', 'Reconstrucción de cabello', 'Belleza', 500.00, '01:00:00'),
(48, 'Servicio de Bordado Personalizado', 'Bordados en ropa y accesorios', 'Diseño', 450.00, '02:30:00'),
(49, 'Servicio de Doblaje', 'Grabación de voz en off', 'Tecnología', 1200.00, '02:00:00'),
(50, 'Alquiler de Salón de Fiestas', 'Espacio para eventos pequeños', 'Servicios Generales', 3500.00, '06:00:00'),
(51, 'Clases de Francés', 'Nivel básico de francés', 'Educación', 700.00, '01:30:00'),
(52, 'Decoración de Eventos', 'Decoración temática personalizada', 'Diseño', 2000.00, '04:00:00'),
(53, 'Aromaterapia', 'Sesión relajante de aromaterapia', 'Salud', 300.00, '01:00:00'),
(54, 'Creación de Tienda en Línea', 'Sitio web para ventas', 'Tecnología', 5000.00, '05:00:00'),
(55, 'Producción de Podcast', 'Grabación y edición profesional', 'Tecnología', 2500.00, '03:00:00'),
(56, 'Venta de Jabones Artesanales', 'Jabones naturales personalizados', 'Gastronomía', 400.00, '02:00:00'),
(57, 'Renta de Sillas y Mesas', 'Mobiliario para eventos', 'Servicios Generales', 1000.00, '01:00:00'),
(58, 'Clases de Baile Urbano', 'Aprende reggaetón y hip-hop', 'Deporte', 500.00, '01:30:00'),
(59, 'Diseño de Publicidad', 'Flyers y carteles digitales', 'Diseño', 700.00, '01:30:00'),
(60, 'Fotografía de Mascotas', 'Sesión para tu mascota', 'Fotografía', 1200.00, '02:00:00'),
(61, 'Mantenimiento de Redes Sociales', 'Gestión de Instagram y Facebook', 'Marketing', 1800.00, '03:00:00'),
(62, 'Reparación de Electrodomésticos', 'Arreglo de licuadoras y microondas', 'Mecánica', 800.00, '02:00:00'),
(63, 'Sesión de Reiki', 'Sanación energética', 'Salud', 350.00, '00:45:00'),
(64, 'Servicio de Traducción Técnica', 'Traducción especializada', 'Consultoría', 900.00, '01:30:00'),
(65, 'Taller de Escritura Creativa', 'Aprende a escribir cuentos', 'Educación', 600.00, '02:00:00'),
(66, 'Peluquería Canina', 'Baño y corte para perros', 'Servicios Generales', 500.00, '02:00:00'),
(67, 'Plan de Marketing Digital', 'Estrategia completa de marketing', 'Marketing', 4500.00, '04:00:00'),
(68, 'Creación de Identidad Corporativa', 'Diseño de imagen de empresa', 'Diseño', 6000.00, '05:00:00'),
(69, 'Servicio de Grabación de Videos', 'Videos publicitarios y personales', 'Fotografía', 3000.00, '03:00:00'),
(70, 'Alquiler de Casa de Vacaciones', 'Renta de fin de semana', 'Servicios Generales', 8000.00, '48:00:00'),
(71, 'Servicio de Catering Vegano', 'Comidas 100% veganas', 'Gastronomía', 4500.00, '05:00:00'),
(72, 'Clases de Programación Web', 'HTML, CSS y JavaScript', 'Educación', 1200.00, '03:00:00'),
(73, 'Fotografía para Redes Sociales', 'Fotos para Instagram y Facebook', 'Fotografía', 1500.00, '02:00:00'),
(74, 'Servicio de Limpieza de Hogar', 'Limpieza profunda de casa', 'Servicios Generales', 1000.00, '04:00:00'),
(75, 'Reparación de Consolas de Videojuego', 'Diagnóstico y reparación', 'Tecnología', 1300.00, '02:30:00'),
(76, 'Clases de Canto', 'Lecciones para principiantes', 'Educación', 900.00, '01:30:00'),
(77, 'Mantenimiento de Sitios Web', 'Actualizaciones y backups', 'Tecnología', 1000.00, '02:00:00'),
(78, 'Venta de Pan Artesanal', 'Pan de masa madre', 'Gastronomía', 300.00, '03:00:00'),
(79, 'Servicio de Maquillaje Profesional', 'Maquillaje para eventos', 'Belleza', 800.00, '01:30:00'),
(80, 'Gestión de Campañas de Anuncios', 'Publicidad en redes', 'Marketing', 2500.00, '03:00:00'),
(81, 'Servicio de DJ para Fiestas', 'Ambientación musical', 'Servicios Generales', 5000.00, '05:00:00'),
(82, 'Diseño de Presentaciones Profesionales', 'Presentaciones en PowerPoint', 'Diseño', 900.00, '01:30:00'),
(83, 'Clases de Cocina Saludable', 'Recetas prácticas y sanas', 'Educación', 1000.00, '02:00:00'),
(84, 'Sesión de Coaching Personal', 'Motivación y objetivos', 'Consultoría', 2000.00, '01:30:00'),
(85, 'Instalación de Sistemas de Seguridad', 'Cámaras y alarmas', 'Tecnología', 6000.00, '04:00:00'),
(86, 'Lavandería a Domicilio', 'Recolecta y entrega de ropa', 'Servicios Generales', 500.00, '01:00:00'),
(87, 'Venta de Mermeladas Artesanales', 'Sabores naturales variados', 'Gastronomía', 400.00, '02:00:00'),
(88, 'Taller de Fotografía de Naturaleza', 'Fotografía de exteriores', 'Educación', 1200.00, '03:00:00'),
(89, 'Servicio de Arquitectura de Interiores', 'Diseño de espacios', 'Diseño', 7000.00, '05:00:00'),
(90, 'Taller de Robótica para Niños', 'Curso de introducción a la robótica', 'Educación', 1500.00, '02:30:00'),
(91, 'Asesoría Financiera Personal', 'Planificación de finanzas personales', 'Consultoría', 2500.00, '02:00:00'),
(92, 'Servicio de Ilustración Personalizada', 'Retratos y arte digital', 'Diseño', 2000.00, '03:00:00'),
(93, 'Paseo de Perros', 'Servicio de paseo diario', 'Servicios Generales', 400.00, '01:00:00'),
(94, 'Clases de Yoga para Embarazadas', 'Sesiones especiales de yoga', 'Deporte', 600.00, '01:30:00'),
(95, 'Servicio de Carpintería a Medida', 'Muebles personalizados', 'Servicios Generales', 7000.00, '05:00:00'),
(96, 'Creación de Apps Móviles', 'Aplicaciones Android y iOS', 'Tecnología', 15000.00, '08:00:00'),
(97, 'Planificación de Eventos Corporativos', 'Organización de reuniones y congresos', 'Consultoría', 5000.00, '06:00:00'),
(98, 'Servicio de Costura', 'Arreglos y confección de ropa', 'Diseño', 600.00, '02:00:00'),
(99, 'Clases de Fotografía para Principiantes', 'Manejo de cámara y composición', 'Educación', 1200.00, '03:00:00'),
(100, 'Servicio de Redacción de Contenidos', 'Artículos y blogs', 'Marketing', 1500.00, '02:30:00'),
(101, 'Servicio de Cuidado de Niños', 'Niñera por horas', 'Servicios Generales', 800.00, '04:00:00'),
(102, 'Clases de Piano', 'Nivel básico y medio', 'Educación', 1200.00, '01:30:00'),
(103, 'Fotografía de Producto', 'Fotos profesionales para catálogos', 'Fotografía', 2000.00, '02:30:00'),
(104, 'Reparación de Bicicletas', 'Mantenimiento general', 'Mecánica', 500.00, '01:30:00'),
(105, 'Renta de Disfraces', 'Disfraces para fiestas y eventos', 'Servicios Generales', 700.00, '01:00:00'),
(106, 'Clases de Meditación', 'Técnicas de relajación', 'Salud', 400.00, '01:00:00'),
(107, 'Venta de Velas Artesanales', 'Velas aromáticas hechas a mano', 'Gastronomía', 300.00, '02:00:00'),
(108, 'Instalación de Paneles Solares', 'Servicio residencial', 'Tecnología', 20000.00, '06:00:00'),
(109, 'Asesoría en Imagen Personal', 'Estilo y moda', 'Consultoría', 3500.00, '02:00:00'),
(110, 'Servicio de Bartender para Eventos', 'Coctelería profesional', 'Servicios Generales', 4500.00, '05:00:00'),
(111, 'Organización de Bodas', 'Planeación completa de bodas', 'Consultoría', 15000.00, '08:00:00'),
(112, 'Venta de Chocolates Artesanales', 'Chocolates gourmet variados', 'Gastronomía', 500.00, '02:00:00'),
(113, 'Diseño de Moda', 'Creación de colecciones exclusivas', 'Diseño', 7000.00, '06:00:00'),
(114, 'Servicio de Comida para Oficinas', 'Menús ejecutivos a domicilio', 'Gastronomía', 3000.00, '04:00:00'),
(115, 'Clases de Defensa Personal', 'Técnicas básicas de defensa', 'Deporte', 700.00, '01:30:00'),
(116, 'Mantenimiento de Aires Acondicionados', 'Servicio de limpieza y revisión', 'Servicios Generales', 1500.00, '02:00:00'),
(117, 'Consultoría Ambiental', 'Asesoría en sostenibilidad', 'Consultoría', 5000.00, '03:00:00'),
(118, 'Clases de Teatro', 'Actuación para principiantes', 'Educación', 1200.00, '02:00:00'),
(119, 'Servicio de Elaboración de Curriculum', 'CV profesional y optimizado', 'Consultoría', 1000.00, '01:30:00'),
(120, 'Diseño de Tiendas Virtuales', 'E-commerce en plataformas populares', 'Tecnología', 6000.00, '04:00:00'),
(121, 'Venta de Pizzas Artesanales', 'Pizzas de masa madre', 'Gastronomía', 250.00, '01:30:00'),
(122, 'Alquiler de Brincolines', 'Diversión para fiestas infantiles', 'Servicios Generales', 1000.00, '05:00:00'),
(123, 'Sesión de Fotografía Familiar', 'Fotos en locaciones especiales', 'Fotografía', 3000.00, '03:00:00'),
(124, 'Servicio de Traducción Jurada', 'Documentos oficiales certificados', 'Consultoría', 3000.00, '02:30:00'),
(125, 'Edición de Videos para YouTube', 'Edición profesional de contenido', 'Tecnología', 2500.00, '03:00:00'),
(126, 'Servicio de Banquetes', 'Comida para eventos grandes', 'Gastronomía', 7000.00, '06:00:00'),
(127, 'Clases de Dibujo', 'Técnicas de lápiz y carboncillo', 'Educación', 900.00, '02:00:00'),
(128, 'Reparación de Teléfonos Celulares', 'Cambio de pantalla y batería', 'Tecnología', 1500.00, '02:00:00'),
(129, 'Mantenimiento de Jardines', 'Corte de césped y diseño floral', 'Servicios Generales', 1200.00, '03:00:00'),
(130, 'Taller de Escritura Académica', 'Cómo escribir tesis y artículos', 'Educación', 1800.00, '03:00:00'),
(131, 'Servicio de Traducción de Libros', 'Traducción literaria profesional', 'Consultoría', 7000.00, '06:00:00'),
(132, 'Venta de Pasteles Personalizados', 'Pasteles temáticos por encargo', 'Gastronomía', 1200.00, '02:00:00'),
(133, 'Sesión de Retrato Profesional', 'Fotografía de perfil profesional', 'Fotografía', 2000.00, '02:00:00'),
(134, 'Alquiler de Equipo de Sonido', 'Para eventos grandes', 'Servicios Generales', 4000.00, '06:00:00'),
(135, 'Clases de Escalada Deportiva', 'Entrenamiento en muro de escalada', 'Deporte', 1000.00, '02:00:00'),
(136, 'Diseño de Logos', 'Logo profesional para marcas', 'Diseño', 3000.00, '02:00:00'),
(137, 'Edición de Manuscritos', 'Corrección de estilo y ortografía', 'Consultoría', 2500.00, '03:00:00'),
(138, 'Servicio de Caricaturas en Vivo', 'Caricaturas para eventos', 'Diseño', 3500.00, '04:00:00'),
(139, 'Curso de Excel', 'De básico a avanzado', 'Educación', 1000.00, '03:00:00'),
(140, 'Instalación de Redes Domésticas', 'Configuración de internet en casa', 'Tecnología', 3000.00, '03:00:00'),
(141, 'Servicio de Catering Vegano', 'Alimentos veganos para eventos', 'Gastronomía', 6500.00, '05:00:00'),
(142, 'Curso de Programación Básica', 'Introducción a la programación', 'Educación', 2000.00, '04:00:00'),
(143, 'Renta de Mobiliario para Eventos', 'Mesas, sillas y carpas', 'Servicios Generales', 5000.00, '06:00:00'),
(144, 'Servicio de Estética Canina', 'Baño y corte de pelo para mascotas', 'Servicios Generales', 800.00, '02:00:00'),
(145, 'Taller de Fotografía de Producto', 'Enfocado a ventas online', 'Educación', 2500.00, '03:00:00'),
(146, 'Consultoría en Redes Sociales', 'Estrategias de contenido', 'Consultoría', 4000.00, '02:30:00'),
(147, 'Venta de Joyería Artesanal', 'Accesorios hechos a mano', 'Diseño', 1500.00, '02:00:00'),
(148, 'Alquiler de Trajes para Eventos', 'Renta de trajes de gala', 'Servicios Generales', 2000.00, '04:00:00'),
(149, 'Curso de Cocina Internacional', 'Recetas de distintos países', 'Gastronomía', 3500.00, '04:00:00'),
(150, 'Servicio de Lavado de Autos a Domicilio', 'Lavado y encerado profesional', 'Servicios Generales', 1200.00, '02:00:00');

-- Tabla 4


-- Tabla 5

