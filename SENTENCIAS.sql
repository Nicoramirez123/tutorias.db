SELECT * FROM solicitudtutorias WHERE fecha BETWEEN "2025-09-02 00:00:00" AND "2025-09-02 23:59:59";

SELECT primerNombre, primerApellido FROM tutorias.estudiante WHERE planEstudio = "Economia";

SELECT primerNombre, correo FROM tutorias.estudiante;

SELECT * FROM tutorias.estudiante where primerApellido like "R%"
order by primerNombre asc
limit 50;

SELECT COUNT(*) FROM tutorias.solicitudTutorias;

SELECT * FROM tutorias.estudiante GROUP BY planEstudio;

