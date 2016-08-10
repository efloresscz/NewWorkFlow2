create table wfmso						-- SOLICITUDES REGISTRADAS PARA WF DATOS GENERALES
(
	wfmsonsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud PK
	wfmsoprod	SMALLINT NOT NULL,		-- Producto (netbank,sai) --> gbcon
	wfmsonmod	SMALLINT NOT NULL,		-- Modulo
	wfmsonope	DECIMAL(20,0) NOT NULL,	-- Nro. Operacion
	wfmsofreg	DATE NOT NULL,          -- Fecha de Registro 
	wfmsonpro	SMALLINT NOT NULL,		-- Proceso o Flujo
	wfmsocage	INTEGER NOT NULL,		-- Nro. Solicitud
	wfmsomsol	DEC(14,2) NOT NULL,		-- Importe Solicitado
	wfmsomapr	DEC(14,2) NOT NULL,		-- Importe Aprobado
	wfmsocmon   SMALLINT NOT NULL,		-- Moneda
	wfmsostat   SMALLINT NOT NULL,		-- Estado 1=Proceso 2=Concluido 3=Rechazado
	wfmsoresp	INTEGER,		        -- Responsable
	wfmsoglos   CHAR(500),		        -- Observacion    
	wfmsomrcb   SMALLINT NOT NULL,		-- Marca 0=Alta 9=Baja
	wfmsouser	CHAR(3) NOT NULL,		-- Usuario
	wfmsohora	CHAR(8) NOT NULL,		-- Hora
	wfmsofpro   DATE NOT NULL,			-- Fecha
)

create table wfsop						-- SOLICITUDES MATERIALIZADAS EN OPERACION
(	
	wfsopnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 
	wfsopnope	DECIMAL(20,0) NOT NULL	-- Nro. Operacion Creada	
)

create table wfrch						-- SOLICITUDES RECHAZADAS
(
	wfrchnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud 	
	wfrchnpro	INTEGER NOT NULL, 		-- Proceso o Flujo
	wfrchntar	INTEGER NOT NULL, 		-- Tarea
	wfrchcrch	SMALLINT NOT NULL,		-- Codigo de Rechazo
	wfrchdesc	CHAR(1000),				-- Glosa o Descripcion del Rechazo
	wfrchfreg   DATE NOT NULL,			-- Fecha de Registro
	wfrchuser   CHAR(3) NOT NULL,		-- Usuario
	wfrchhora	CHAR(8) NOT NULL,		-- Hora
	wfrchfpro   DATE NOT NULL,			-- Fecha
	
)

create table wfsgt                      -- SEGUIMIENTO DE SOLICITUDES FECHAS DE INICIO FECHA DE ASIGNACION
(
	wfsgtcsgt	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento PK
    wfsgtnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud
    wfsgtnpro   INTEGER NOT NULL,       -- Proceso o Flujo
	wfsgtntar   INTEGER NOT NULL,       -- Tarea
	wfsgtacci   SMALLINT NOT NULL,      -- Accion Realizada (1=Retorno 2=Aceptacion 3=Rechazo)
	wfsgtstat   SMALLINT NOT NULL,      -- Estado 1=Pendiente 2=Realizado	
	wfsgtresp   INTEGER NOT NULL,       -- Responsable de la Tarea	
	wfsgtfreg   DATE NOT NULL,          -- Fecha Registro
	wfsgthreg   DATE NOT NULL,          -- Hora Registro
	wfsgtfini   DATE NOT NULL,          -- Fecha Inicio de la Tarea  (Ingresa a la Opcion Seguimiento)
	wfsgthini   CHAR(8) NOT NULL,       -- Hora Inicio de la Tarea   (Ingresa a la Opcion Seguimiento)
	wfsgtffin   DATE NOT NULL,          -- Fecha Finalizacion de la Tarea
	wfsgthfin   CHAR(8) NOT NULL,       -- Hora Finalizacion de la Tarea
	wfsgtuser   CHAR(3) NOT NULL,		-- Usuario
	wfsgthora	CHAR(8) NOT NULL,		-- Hora
	wfsgtfpro   DATE NOT NULL,			-- Fecha
)

create table wfsgt                      -- SEGUIMIENTO X GLOSA
(
	wfsgtcsgt	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento PK
	wfsgttopi	SMALLINT NOT NULL,      -- Tipo Opinion
	wfsgtglos	CHAR(2000)              -- Glosa
)

create table wfsgt                      -- SEGUIMIENTO X GLOSA
(
	wfsgtcsgt	DECIMAL(20,0) NOT NULL, -- Nro. Seguimiento PK
	wfsgttopi	SMALLINT NOT NULL,      -- Tipo Opinion
	wfsgtglos	CHAR(2000)              -- Glosa
)

SE CREARA NUEVAS TABLAS

