SELECT
    U.id_lv,
    LV.Zona,
    LV.Departamento,
    LV.Municipio,
    U.cedula,
    U.nombre_completo,
    MV.id_mv,
    MV.numero_mesa,
    e.Registro,
    e.id_codigoE11,
    e.estado_proceso
FROM
    lugar_de_votacion as LV
    inner join usuario_votante as U on U.id_lv = LV.id_lv
    inner join mesa_votacion as MV on LV.id_lv = MV.id_lv
    inner join e11 as e on MV.id_mv = e.id_mv
where
(
        Registro > :sql_last_value
        and Registro < NOW()
    )
ORDER BY
    Registro