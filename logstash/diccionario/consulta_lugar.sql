SELECT
    U.id_lv,
    LV.Zona,
    LV.Departamento,
    LV.Municipio,
    U.cedula,
    U.nombre_completo,
    MV.id_mv,
    MV.numero_mesa
FROM
    lugar_de_votacion as LV
    inner Join usuario_votante as U on U.id_lv = LV.id_lv
    inner join mesa_votacion as MV on LV.id_lv = MV.id_lv