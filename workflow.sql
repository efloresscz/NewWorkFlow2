create table wfmso						-- SOLICITUDES REGISTRADAS PARA WF DATOS GENERALES
(
	wfmsonsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud PK
	wfmsofsol	SMALLINT NOT NULL,		-- Forma de Solicitud wfcon(Formal,Informal)
	wfmsoprod	SMALLINT NOT NULL,		-- Producto (netbank,sai) --> wfcon(wfconpref = 1)
	wfmsonmod	SMALLINT NOT NULL,		-- Modulo
	wfmsotsol	SMALLINT NOT NULL,		-- Tipo de Solicitud wfcon (Solicitud Nuevo Prestamo,Refinanciamiento,Solicitud Banca)
	wfmsonope	DECIMAL(20,0) NOT NULL,	-- Nro. Operacion
	wfmsofreg	DATE NOT NULL,          -- Fecha de Registro 
	wfmsofent	DATE NOT NULL,          -- Fecha de Estimada Entrega
	wfmsonpro	SMALLINT NOT NULL,		-- Proceso o Flujo
	wfmsocage	INTEGER NOT NULL,		-- Nro. Solicitud
	wfmsomsol	DEC(14,2) NOT NULL,		-- Importe Solicitado
	wfmsomapr	DEC(14,2) NOT NULL,		-- Importe Aprobado
	wfmsocmon   SMALLINT NOT NULL,		-- Moneda
	
	wfmsotinc	SMALLINT NOT NULL,		-- Tipo de Incidencia wfcon (Requerimiento Servicio,Solucion Problema)
	wfmsoprio	SMALLINT NOT NULL,		-- Prioridad wfcon (Alta Normal Baja)
	wfmsostat   SMALLINT NOT NULL,		-- Estado 1=Por Hacer 2=En curso 3=Terminado
	wfmsoures	CHAR(20),		        -- Usuario Responsable de la Solicitud
	wfmsouaut	CHAR(20),		        -- Usuario Autorizador de la Solicitud
	wfmsoresp	INTEGER,		        -- Responsable
	wfmsoautp	INTEGER,		        -- Autorizado
	wfmsoresu   CHAR(100),		        -- Resumen o Titulo de la Solicitud(Ejplo:Solicitud de Nuevo Prestamo )
	wfmsodesc   CHAR(500),		        -- Descripcion de la Solicitud (Ejplo: Solicitud de Nuevo Prestamo para la Empresa BIBOSI)
	wfmsomrcb   SMALLINT NOT NULL,		-- Marca 0=Alta 9=Baja
	wfmsouser	CHAR(20) NOT NULL,		-- Usuario
	wfmsohora	CHAR(8) NOT NULL,		-- Hora
	wfmsofpro   DATE NOT NULL			-- Fecha
)

create table wfres  					-- RESOLUCION DE SOLICITUD
(	
	wfresnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 
	wfresreso	SMALLINT NOT NULL	    -- Tipo de Resolucion (1=Listo Terminado 2=Rechazado 3=Duplicado 4=Etc. )
	wfresfreg	DATE NOT NULL	    	-- Fecha de Resolucion
	wfresuser	CHAR(20) NOT NULL,		-- Usuario
	wfreshora	CHAR(8) NOT NULL,		-- Hora
	wfresfpro   DATE NOT NULL			-- Fecha	
)

create table wftac  					-- TAREA ACTUAL DE LA SOLICITUD
(	
	wftacnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 
	wftacntar	INTEGER NOT NULL	    -- Tarea Actual
)

create table wfsop						-- SOLICITUDES MATERIALIZADAS EN OPERACION
(	
	wfsopnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 
	wfsopnope	DECIMAL(20,0) NOT NULL	-- Nro. Operacion Creada Modulo Correspondiente	
)

create table wfrch						-- SOLICITUDES RECHAZADAS
(
	wfrchnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 	
	wfrchnpro	INTEGER NOT NULL, 		-- Proceso o Flujo
	wfrchntar	INTEGER NOT NULL, 		-- Tarea donde fue Rechazada
	wfrchcrch	SMALLINT NOT NULL,		-- Codigo de Rechazo
	wfrchdesc	CHAR(1000),				-- Glosa o Descripcion del Rechazo
	wfrchfreg   DATE NOT NULL,			-- Fecha de Registro
	wfrchuser   CHAR(20) NOT NULL,		-- Usuario
	wfrchhora	CHAR(8) NOT NULL,		-- Hora
	wfrchfpro   DATE NOT NULL			-- Fecha
	
)

create table wfsgt                      -- SEGUIMIENTO DE SOLICITUDES FECHAS DE INICIO FECHA DE ASIGNACION
(
	wfsgtcsgt	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento PK
    wfsgtnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud
    wfsgtnpro   INTEGER NOT NULL,       -- Proceso o Flujo
	wfsgtntar   INTEGER NOT NULL,       -- Tarea
	wfsgtacci   SMALLINT NOT NULL,      -- Accion Realizada (1=Retorno 2=Aceptacion 3=Rechazo)
	wfsgtstat   SMALLINT NOT NULL,      -- Estado 1=Pendiente 2=Realizado 	
	wfsgtures   CHAR(20) NOT NULL,      -- Usuario Responsable de la Tarea	
	wfsgtfreg   DATE NOT NULL,          -- Fecha Registro
	wfsgthreg   CHAR(8) NOT NULL,       -- Hora Registro
	wfsgtfini   DATE,                   -- Fecha Inicio de la Tarea  (Ingresa a la Opcion Seguimiento)
	wfsgthini   CHAR(8) NOT NULL,       -- Hora Inicio Registro
	wfsgtffin   DATE,                   -- Fecha Finalizacion de la Tarea
	wfsgthfin   CHAR(8) NOT NULL,       -- Hora Finalizacion de la Tarea
	wfsgtuser   CHAR(20) NOT NULL,		-- Usuario
	wfsgthora	CHAR(8) NOT NULL,		-- Hora
	wfsgtfpro   DATE NOT NULL			-- Fecha
)

create table wfcsg                      -- CREACION SEGUIMIENTO 
(
	wfsgtcsga	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento Actual
    wfsgtcsgn	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento Nuevo
	wfsgttcre	DECIMAL(20,0) NOT NULL, -- Tipo Creacion wfcon(1=Normal 2=Especial)
	wfsgtuser   CHAR(20) NOT NULL,		-- Usuario
	wfsgthora	CHAR(8) NOT NULL,		-- Hora
	wfsgtfpro   DATE NOT NULL			-- Fecha
)

create table wfsco                      -- SEGUIMIENTO X COMENTARIO
(
	wfscocsgt	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento PK
	wfscoitem	INTEGER NOT NULL,       -- Item Comentario
	wfscotopi	SMALLINT NOT NULL,      -- Tipo Opinion wfcon(Favorable,Desfavorable,Vetado)
	wfscotcom	SMALLINT NOT NULL,      -- Tipo Comentario wfcon(Interno,Externo)
	wfscodesc	CHAR(2000),             -- Descripcion
	wfscofreg	DATE NOT NULL,          -- Fecha Registro
	wfsgtuser   CHAR(20) NOT NULL,		-- Usuario
	wfsgthora	CHAR(8) NOT NULL,		-- Hora
	wfsgtfpro   DATE NOT NULL			-- Fecha	
)





