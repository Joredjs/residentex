-- Propiedades
SELECT tpr.tipo,tdo.tipo AS tipoDocumento,pr.documento,pr.nombre,pr.direccion,pr.correo
 FROM propiedades AS pr
inner JOIN tiposPropiedades AS tpr
ON pr.idTipoPropiedad = tpr.id
inner JOIN tiposDocumentos AS tdo
ON pr.idTipoDocumento = tdo.id;

-- Grupos residenciales
SELECT gr.id,gr.idGrupoResidencialPadre AS idPadre,concat(tgr.tipo,' ',gr.nombre) AS nombre,
(
	SELECT concat(tgr1.tipo,' ',gr1.nombre)
	FROM gruposResidenciales AS gr1
	INNER JOIN tiposGruposResidenciales AS tgr1
	ON tgr1.id = gr1.idTipoGrupoResidencial
	WHERE gr1.id = gr.idGrupoResidencialPadre
)  AS padre
FROM tiposGruposResidenciales AS tgr
inner JOIN gruposResidenciales as gr 
ON tgr.id = gr.idTipoGrupoResidencial
WHERE gr.idPropiedad = 1

