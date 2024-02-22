SELECT
    c.id_cita,
    c.fecha_cita,
    c.hora_cita,
    c.cedula_usuario,
    d.codigo_diagnostico,
    d.sintomas,
    d.fecha_diagnostico,
    m.cedula_medico,
    m.nombre_medico,
    m.correo_medico,
    m.especialidad,
    u.nombre_usuario,
    u.direccion_usuario,
    u.direccion_usuario,
    u.correo_usuario
FROM
    usuario as u
    inner join citas as c on u.cedula_usuario = c.cedula_usuario
    inner join medico as m on c.id_cita = m.id_cita
    inner join diagnostico as d on m.cedula_medico = d.cedula_medico