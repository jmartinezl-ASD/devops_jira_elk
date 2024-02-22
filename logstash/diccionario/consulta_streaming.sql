SELECT
    d.id_director,
    d.nombre,
    d.apellido,
    d.nacionalidad,
    p.id_p,
    p.titulo_p,
    p.sinopsis_p,
    p.festreno,
    g.id_genero,
    g.nombre_genero,
    s.id_s,
    s.titulo_s,
    s.anio_inicio,
    s.anio_fin,
    s.sinopsis_s
FROM
    streaming.directores d
    JOIN streaming.peliculas p ON d.id_director = p.id_director
    JOIN streaming.generos g ON p.id_genero = g.id_genero
    JOIN streaming.series s ON s.id_director = d.id_director