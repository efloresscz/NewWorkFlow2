
----------------------------------------------------------------------------
--                        Mantenimiento de Acta
----------------------------------------------------------------------------

create table ecact -- Mantenimiento de Acta
  (
   ecactnact   integer not null,    -- Nro. Acta
   ecactfreg   date not null,       -- Fecha de registro
   ecactagen   integer not null,    -- Agencia * gbofi=
   ecactglos   char(300),           -- Glosa
   ecactmrcb   smallint not null,   -- Marca Baja 0=Alta 9=Baja
   ecactuser   char(3) not null,    -- Usuario
   ecacthora   char(8),             -- Hora
   ecactfpro   date,                -- Fecha de Proceso
   ecacttcom   smallint,            -- Tipo de comite
   ecactacta   integer,             -- Nro de acta
   ecactfact   date                 -- Fecha de acta
  );

 create unique index ecact_00 on ecact  (ecactnact);
 create index ecact_01 on ecact  (ecactagen);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecage -- *** SIN DESCRIPCION ***
  (
   ecagecage   integer not null,    -- Definicion
   ecagetper   smallint,            -- Definicion
   ecagenomb   char(90) not null,   -- Definicion
   ecagenom1   char(30),            -- Definicion
   ecagenom2   char(30),            -- Definicion
   ecageape1   char(30),            -- Definicion
   ecageape2   char(30),            -- Definicion
   ecageape3   char(30),            -- Definicion
   ecagefnac   date,                -- Definicion
   ecagesexo   smallint,            -- Definicion
   ecageeciv   smallint,            -- Definicion
   ecagenaci   char(30),            -- Definicion
   ecageprof   integer,             -- Definicion
   ecagenive   integer,             -- Definicion
   ecagecand   smallint,            -- Definicion
   ecagemail   char(50),            -- Definicion
   ecagetdid   smallint,            -- Definicion
   ecagendid   char(20),            -- Definicion
   ecagefvid   date,                -- Definicion
   ecagenruc   char(20),            -- Definicion
   ecagefvru   date,                -- Definicion
   ecagecelu   char(20),            -- Definicion
   ecagetlfd   char(20),            -- Definicion
   ecagedird   char(150),           -- Definicion
   ecagepaid   integer,             -- Definicion
   ecagedptd   integer,             -- Definicion
   ecagecprd   integer,             -- Definicion
   ecageciud   integer,             -- Definicion
   ecagezond   integer,             -- Definicion
   ecagemund   integer,             -- Definicion
   ecagenemp   char(60),            -- Definicion
   ecageaemp   smallint,            -- Definicion
   ecagetcar   smallint,            -- Definicion
   ecagedcar   char(60),            -- Definicion
   ecagensal   smallint,            -- Definicion
   ecagetlfo   char(20),            -- Definicion
   ecagediro   char(150),           -- Definicion
   ecagepaio   integer,             -- Definicion
   ecagedpto   integer,             -- Definicion
   ecagecpro   integer,             -- Definicion
   ecageciuo   integer,             -- Definicion
   ecagezono   integer,             -- Definicion
   ecagemuno   integer,             -- Definicion
   ecagerefp   char(90),            -- Definicion
   ecagedepe   char(1),             -- Definicion
   ecageactv   char(1),             -- Definicion
   ecageciiu   dec(6,0),            -- Definicion
   ecageacti   char(60),            -- Definicion
   ecageuser   char(20),            -- Definicion
   ecagehora   char(8),             -- Definicion
   ecagefpro   date                 -- Definicion
  );

 create unique index ecage_01 on ecage  (ecagecage);
 create index ecage_02 on ecage  (ecagenomb);
 create index ecage_03 on ecage  (ecagendid);
 create index ecage_04 on ecage  (ecagenruc);


----------------------------------------------------------------------------
--                  Restriccion de proceso por Agencia
----------------------------------------------------------------------------

create table ecagre -- Restriccion de proceso por Agencia
  (
   ecagrenagen integer,             -- Codigo Agencia * adagnagen=
   ecagrecproc integer              -- Codigo proceso * ecconcorr=20
  );

 create index ecagre_01 on ecagre  (ecagrecproc);
 create index ecagre_02 on ecagre  (ecagrenagen);


----------------------------------------------------------------------------
--                             Alternativas
----------------------------------------------------------------------------

create table ecalt -- Alternativas
  (
   ecaltcalt   integer not null,    -- Codigo de alternativa
   ecaltcelm   integer not null,    -- Codigo de elemento
   ecaltccri   integer not null,    -- Codigo de criterio
   ecaltdesc   char(40) not null,   -- Descripcion
   ecaltexpl   char(90),            -- Explicacion
   ecaltncam   char(30),            -- Nombre del campo para display
   ecaltrmin   dec(14,3),           -- Ramgo Minimo
   ecaltrmax   dec(14,3)            -- Rango MAximo
  );

 create unique index eccal_00 on ecalt  (ecaltcalt,ecaltcelm,ecaltccri);
 create index eccal_01 on ecalt  (ecaltcelm,ecaltccri);


----------------------------------------------------------------------------
--                            NO SE UTILIZA
----------------------------------------------------------------------------

create table ecamb -- NO SE UTILIZA
  (
   ecambnpso   integer,             -- 
   ecambares   integer,             -- 
   ecambnres   integer,             -- 
   ecambmrcb   smallint,            -- 
   ecambnota   char(200),           -- 
   ecambfpro   date,                -- 
   ecambfreg   date                 -- 
  );



----------------------------------------------------------------------------
--                    Autorizacion de modifiaciones
----------------------------------------------------------------------------

create table ecaut -- Autorizacion de modifiaciones
  (
   ecautnuat   serial,              -- Numero de Autorizacion
   ecautnopr   integer,             -- Nro de Operaciones
   ecautnprg   char(20),            -- Nombrte de Programa
   ecautuser   char(6),             -- Usuario
   ecauthora   char(8),             -- Hora
   ecautfpro   date                 -- Fecha
  );

 create unique index eccaut_00 on ecaut  (ecautnuat);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecbec -- *** SIN DESCRIPCION ***
  (
   ecbeccenv   integer not null,    -- Definicion
   ecbecccmp   smallint not null,   -- Definicion
   ecbecrequ   char(1) not null,    -- Definicion
   ecbecval1   char(20),            -- Definicion
   ecbecval2   char(300)            -- Definicion
  );

 create index ecbec_00 on ecbec  (ecbeccenv);
 create index ecbec_01 on ecbec  (ecbecccmp);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecben -- *** SIN DESCRIPCION ***
  (
   ecbencenv   serial,              -- Definicion
   ecbenfreg   date not null,       -- Definicion
   ecbencbur   smallint not null,   -- Definicion
   ecbentipo   smallint not null,   -- Definicion
   ecbennsol   integer not null,    -- Definicion
   ecbencorr   integer not null,    -- Definicion
   ecbencage   integer not null,    -- Definicion
   ecbentdid   smallint not null,   -- Definicion
   ecbenndid   char(20) not null,   -- Definicion
   ecbennomb   char(90),            -- Definicion
   ecbenuser   char(3),             -- Definicion
   ecbenhora   char(8),             -- Definicion
   ecbenfpro   date                 -- Definicion
  );



----------------------------------------------------------------------------
--                     Tipo garantia Boleta de Pago
----------------------------------------------------------------------------

create table ecblta -- Tipo garantia Boleta de Pago
  (
   ecbltansol  integer not null,    -- Nro. Solicitud
   ecbltacorr  integer not null,    -- Correlativo
   ecbltatbol  smallint,            -- Tipo de Boleta
   ecbltanbol  char(20),            -- Nro. Boleta
   ecbltaempr  char(100),           -- Empresa
   ecbltanomb  char(90),            -- Duenio de la Boleta
   ecbltacarg  char(90),            -- Cargo
   ecbltaantg  smallint,            -- Antiguedad
   ecbltating  dec(14,2),           -- Total Ingresos
   ecbltatliq  dec(14,2)            -- Liquido pagable
  );

 create unique index ecblta_00 on ecblta  (ecbltansol,ecbltacorr);
 create index ecblta_01 on ecblta  (ecbltansol);


----------------------------------------------------------------------------
--                       Detalle Motivos Rechazo
----------------------------------------------------------------------------

create table ecbrd -- Detalle Motivos Rechazo
  (
   ecbrdcrsp   integer,             -- Codigo Respuesta MDI
   ecbrdcrch   integer,             -- Codigo Motivo Rechazo
   ecbrdmrch   char(90),            -- Descripcion Motivo Rechazo
   ecbrdcexc   integer              -- Codigo Excepcion
  );

 create index ecbrd_00 on ecbrd  (ecbrdcrsp,ecbrdcrch);


----------------------------------------------------------------------------
--                      Respuesta del Web Service
----------------------------------------------------------------------------

create table ecbrs -- Respuesta del Web Service
  (
   ecbrscrsp   serial,              -- Codigo Respuesta Serial
   ecbrsfreg   date,                -- Fecha de Registro
   ecbrscbur   smallint,            -- Codigo Buro
   ecbrstipo   smallint,            -- Tipo 1=Presolicitud 2=Solicitud
   ecbrsnsol   integer,             -- Numero Solicitud o Presolicitud
   ecbrscorr   integer,             -- Correlativo Deudor
   ecbrscage   integer,             -- Codigo Agenda
   ecbrstdid   smallint,            -- Tipo de Documento
   ecbrsndid   char(20),            -- Numero de Documento
   ecbrsnomb   char(90),            -- Nombre
   ecbrsstat   smallint,            -- Estado 1=Error 0=OK
   ecbrsplzo   integer,             -- Plazo
   ecbrsmmax   dec(14,2),           -- Monto Maximo
   ecbrsapoi   dec(14,2),           -- Aporte Inicial Porcentaje
   ecbrsbono   dec(14,2),           -- Bono
   ecbrscapa   dec(14,2),           -- Capacidad de Pago
   ecbrsplzm   integer,             -- Plazo Meses Maximo
   ecbrstasa   float,               -- Tasa
   ecbrsspre   float,               -- Spread
   ecbrssegm   char(5),             -- Segmento
   ecbrsflag   smallint,            -- Flag Conexion Web Service 1=Error 0=OK
   ecbrscews   smallint,            -- Codigo Error
   ecbrsmews   char(90),            -- Mensaje Error
   ecbrsuser   char(3),             -- Usuario
   ecbrshora   char(8),             -- Hora
   ecbrsfpro   date,                -- Fecha Proceso
   ecbrscenv   integer              -- 
  );

 create index ecbrs_00 on ecbrs  (ecbrscrsp);


----------------------------------------------------------------------------
--                        Relacion Buro x Campos
----------------------------------------------------------------------------

create table ecbuc -- Relacion Buro x Campos
  (
   ecbuccodi   integer,             -- Codigo ecbup
   ecbucccmp   smallint             -- Codigo Campo
  );

 create unique index ecbuc_00 on ecbuc  (ecbuccodi,ecbucccmp);


----------------------------------------------------------------------------
--                     Relacion Buro Tipo Prestamo
----------------------------------------------------------------------------

create table ecbup -- Relacion Buro Tipo Prestamo
  (
   ecbupcodi   serial,              -- Codigo
   ecbupcbur   smallint,            -- Codigo Buro
   ecbuptcre   smallint,            -- Tipo Prestamo
   ecbupccfl   smallint,            -- Categoria Calificacion
   ecbupapli   char(1),             -- Aplicable P=Presol S=Solicitud
   ecbuptper   smallint,            -- Tipo Persona
   ecbuptdeu   smallint             -- Tipo Deudor
  );

 create unique index ix2183_1 on ecbup  (ecbupcodi);
 create index ecbup_00 on ecbup  (ecbupcbur,ecbuptcre,ecbupccfl);


----------------------------------------------------------------------------
--                          Mantenimiento Buro
----------------------------------------------------------------------------

create table ecbur -- Mantenimiento Buro
  (
   ecburcbur   smallint,            -- Codigo Buro
   ecburnomb   char(60),            -- Nombre Buro
   ecburwsdi   char(100),           -- Direccion Web Service
   ecburname   char(100),           -- Nombre de Espacio
   ecburfunc   char(30),            -- Funcion a Ejecutar
   ecburuser   char(20),            -- Usuario
   ecburclav   char(30),            -- Clave
   ecburwsdl   char(1),             -- S=Con Descripcion WSDL N=Sin Descripcion
   ecburactu   char(1)              -- Actualizar Campos Netbank
  );

 create unique index ecbur_00 on ecbur  (ecburcbur);


----------------------------------------------------------------------------
--                           CUOTA ADICIONAL
----------------------------------------------------------------------------

create table eccad -- CUOTA ADICIONAL
  (
   eccadnsol   integer not null,    -- Nro. Solicitud
   eccadnmes   smallint not null,   -- Mes
   eccadncuo   smallint not null    -- Cantidad de cuotas
  );

 create unique index eccad_00 on eccad  (eccadnsol,eccadnmes);


----------------------------------------------------------------------------
--                               Campania
----------------------------------------------------------------------------

create table eccam -- Campania
  (
   eccamncam   integer not null,    -- Numero de Campania
   eccamfreg   date not null,       -- Fecha de Registro
   eccamnmod   smallint,            -- Modulo
   eccamprod   smallint,            -- Producto
   eccamfini   date,                -- Fecha Inicial
   eccamffin   date,                -- Fecha Final
   eccamdesc   char(500),           -- Descripcion
   eccammrcb   smallint,            -- Marca 0 y 9
   eccamplaz   smallint,            -- Plaza
   eccamagen   smallint,            -- Agencia
   eccamuser   char(3),             -- Usuario
   eccamhora   char(8),             -- Hora
   eccamfpro   date                 -- Fecha de proceso
  );

 create index ix2352_1 on eccam  (eccamncam);


----------------------------------------------------------------------------
--                             NO UTILIZAR
----------------------------------------------------------------------------

create table eccas -- NO UTILIZAR
  (
   eccascorr   smallint not null,   -- 
   eccasncam   smallint not null,   -- 
   eccasstat   smallint not null    -- 
  );

 create unique index eccas_00 on eccas  (eccascorr,eccasncam,eccasstat);


----------------------------------------------------------------------------
--                           Control de Flujo
----------------------------------------------------------------------------

create table eccfl -- Control de Flujo
  (
   eccflnpro   integer,             -- Nro de proceso
   eccflntar   integer,             -- Nro de tarea
   eccfltime   integer,             -- Tiempo permitido en la tarea
   eccflusco   integer,             -- Habiltacion de correo 0: Desh, 1: Hab.
   eccfluser   char(15),            -- Usuario
   eccflfpro   date,                -- Fecha de proceso
   eccflhora   char(8)              -- Hora de Proceso
  );

 create unique index eccfl_01 on eccfl  (eccflnpro,eccflntar);


----------------------------------------------------------------------------
--                          Comite por Agencia
----------------------------------------------------------------------------

create table eccma -- Comite por Agencia
  (
   eccmanact   integer not null,    -- Codigo de Comite
   eccmaagen   integer not null     -- Codigo de Agencia
  );

 create unique index eccma_00 on eccma  (eccmanact,eccmaagen);


----------------------------------------------------------------------------
--                         Definicion de Campos
----------------------------------------------------------------------------

create table eccmp -- Definicion de Campos
  (
   eccmpccmp   smallint,            -- Codigo de Campo
   eccmptipc   smallint,            -- Tipo de Campo
   eccmpdesc   char(100),           -- Descripcion Campo
   eccmpcamw   char(30),            -- Descripcion Web Service
   eccmpvalo   char(60),            -- Valor
   eccmpcref   char(10)             -- Campo Netbank de Referencia
  );



----------------------------------------------------------------------------
--                         Comite de Aprobacion
----------------------------------------------------------------------------

create table eccmt -- Comite de Aprobacion
  (
   eccmtnsol   integer,             -- Nro. Solicitud
   eccmtcfun   integer,             -- Funcionario gbfircfun
   eccmtfreg   date,                -- Fecha de registro
   eccmtmrcb   smallint,            -- Marca 0=Alta 9=Baja
   eccmtuser   char(3),             -- Usuario
   eccmtfpro   date,                -- Fecha de Proceso
   eccmthora   char(8),             -- Hora de Proceso
   eccmtniva   smallint             -- Nivel del Comite
  );

 create index eccmt_00 on eccmt  (eccmtnsol);
 create index eccmt_01 on eccmt  (eccmtcfun);


----------------------------------------------------------------------------
--                              Conceptos
----------------------------------------------------------------------------

create table eccon -- Conceptos
  (
   ecconpref   smallint not null,   -- Prefijo
   ecconcorr   smallint not null,   -- Correlativo
   eccondesc   char(200),           -- Descripcion
   ecconabre   char(5),             -- Abreviacion
   ecconmmod   char(1),             -- Codigo del Modulo
   ecconmrcb   smallint             -- Marca de Baja
  );

 create unique index eccon_00 on eccon  (ecconpref,ecconcorr);


----------------------------------------------------------------------------
--                 Campania por Estado de Presolicitud
----------------------------------------------------------------------------

create table eccps -- Campania por Estado de Presolicitud
  (
   eccpsnsec   smallint not null,   -- Nro de Secuencia
   eccpsncam   integer not null,    -- Codigo de Camapania
   eccpsstat   smallint not null    -- Codigo de Estado * eccon=37
  );

 create index eccps_00 on eccps  (eccpsnsec,eccpsncam,eccpsstat);


----------------------------------------------------------------------------
--                              Criterios
----------------------------------------------------------------------------

create table eccri -- Criterios
  (
   eccriccri   integer not null,    -- Codigo de criterio
   eccridesc   char(40) not null,   -- Descripcion
   eccritcri   integer not null,    -- Tipo de criterio
   eccriexpl   char(120),           -- Explicacion
   eccrincam   char(15)             -- Nombre del campo
  );

 create unique index eccri_00 on eccri  (eccriccri);


----------------------------------------------------------------------------
--                        Paremetros de Control
----------------------------------------------------------------------------

create table ecctl -- Paremetros de Control
  (
   ecctlfcie   date,                -- Fecha de Cierre
   ecctlping   dec(6,3),            -- Porcentaje Ingreso
   ecctlcopr   integer not null,    -- Contador de Operadores
   ecctlcpro   integer not null,    -- Contador de Productos
   ecctlnres   integer not null,    -- Contador de Respuestas
   ecctlnsol   integer not null,    -- Contador de Solicitud
   ecctlcest   integer,             -- Contador de Cambio Estado
   ecctlnctr   integer,             -- Contador de Contrato
   ecctlccri   integer,             -- Criterio
   ecctlcelm   integer,             -- Elemento
   ecctlvgar   dec(7,3),            -- Variacion Garantias
   ecctldepr   dec(7,3),            -- Depreciacion
   ecctluser   char(20),            -- Usuario
   ecctlpasw   char(20),            -- Password
   ecctlfact   float,               -- Factor a aplicar calculo de cuota
   ecctlpuso   smallint,            -- Parametro Uso
   ecctlmaut   smallint             -- modulo autorizador
  );



----------------------------------------------------------------------------
--                            CAMBIO DE TASA
----------------------------------------------------------------------------

create table eccts -- CAMBIO DE TASA
  (
   ecctsnsol   integer not null,    -- Numero de Solicitud
   ecctsftra   date not null,       -- Fecha de transaccion
   ecctsplzo   integer,             -- Plazo
   ecctsfcam   date not null,       -- Fecha de Cambio
   ecctstsex   smallint,            -- Tasa Externa
   ecctssprd   float not null,      -- Spread
   ecctsstat   smallint,            -- Estado 0=Sin Proceso 9=Procesado
   ecctsfsta   date,                -- Fecha de Estado
   ecctstpro   char(1),             -- Tipo de Proceso
   ecctsmrcb   smallint,            -- Marca Baja
   ecctsuser   char(3),             -- Usuario
   ecctshora   char(8),             -- Hora
   ecctsfpro   date,                -- Fecha de Proceso
   ecctstcta   smallint             -- Tipo de Cambio de Tasa prconpref=54
  );

 create index eccts_00 on eccts  (ecctsnsol,ecctsftra);


----------------------------------------------------------------------------
--                           Detalle de Acta
----------------------------------------------------------------------------

create table ecdac -- Detalle de Acta
  (
   ecdacnact   integer not null,    -- Nro. Acta * ecact=
   ecdaccfun   integer not null,    -- Cod. Funcionario * gbfir=
   ecdacapro   char(1)              -- Marca de Aprobacion(S/N)
  );

 create unique index ecdac_00 on ecdac  (ecdacnact,ecdaccfun);
 create index ecdac_01 on ecdac  (ecdaccfun);


----------------------------------------------------------------------------
--                                   
----------------------------------------------------------------------------

create table ecdea -- 
  (
   ecdeansol   integer not null,    -- Nro de Solicitud
   ecdeadest   smallint not null,   -- Codigo del destino de la sol.
   ecdeaddes   char(60)             -- Descripcion del destino de la sol.
  );

 create index ecdea_00 on ecdea  (ecdeansol);


----------------------------------------------------------------------------
--                         Registro de Deudores
----------------------------------------------------------------------------

create table ecdep -- Registro de Deudores
  (
   ecdepnpso   integer,             -- Codigo Presolicitud
   ecdepcorr   smallint,            -- Correlativo
   ecdeptage   smallint,            -- Tipo de Agenda 1=Agenda
   ecdepcage   integer,             -- Codigo Cliente gbagecage
   ecdeptdeu   smallint,            -- Tipo Deudor
   ecdeptper   smallint,            -- Tipo Persona
   ecdeptdid   smallint,            -- Tipo Documento
   ecdepndid   char(20),            -- Numero de Documento
   ecdepnomb   char(90),            -- Nombre
   ecdepnom1   char(30),            -- Primer Nombre
   ecdepnom2   char(30),            -- Segundo Nombre
   ecdepape1   char(30),            -- Primer Apellido
   ecdepape2   char(30),            -- Segundo Apellido
   ecdepape3   char(30),            -- Apellido de Casada
   ecdepingr   dec(14,2),           -- Ingresos
   ecdepoing   dec(14,2),           -- Otros Ingresos
   ecdepcmon   smallint,            -- Moneda
   ecdepantl   date,                -- Antiguedad Laboral
   ecdepconl   smallint,            -- Condicion Laboral
   ecdepsitl   smallint,            -- Situacion Laboral
   ecdepstat   smallint             -- Estado 0=Aprobado 1=Rechazado
  );



----------------------------------------------------------------------------
--                          Garantes/Deudores
----------------------------------------------------------------------------

create table ecdeu -- Garantes/Deudores
  (
   ecdeunsol   integer not null,    -- Nro. Solicitud
   ecdeucage   integer not null,    -- Cliente gbagecage
   ecdeutres   smallint not null,   -- Tipo Resp.
   ecdeumrcb   smallint,            -- Marca 0=Alta 9=Rechazado
   ecdeuuser   char(3),             -- Usuario de Registro
   ecdeuhora   char(8),             -- Hora de Registro
   ecdeufpro   date,                -- Fecha de Registro
   ecdeuclas   char(1)              -- Tipo de Cliente
  );

 create unique index ecdeu_00 on ecdeu  (ecdeunsol,ecdeucage);
 create index ecdeu_01 on ecdeu  (ecdeucage);
 create index ecdeu_02 on ecdeu  (ecdeunsol);


----------------------------------------------------------------------------
--                           Garantias reales
----------------------------------------------------------------------------

create table ecdga -- Garantias reales
  (
   ecdgansol   integer not null,    -- Nro solicitud
   ecdgaitem   smallint not null,   -- Item
   ecdgaghip   smallint not null,   -- Grado Hipoteca
   ecdgatgar   smallint not null,   -- Tipo de Garantia
   ecdgausog   smallint not null,   -- Uso garantia
   ecdgaesta   smallint not null,   -- Estado de la garantia
   ecdgavmer   dec(14,2) not null,  -- Valor mercado
   ecdgavgar   dec(14,2) not null,  -- Valor de garantia
   ecdgavact   dec(14,2) not null,  -- Valor de acrtivo
   ecdgadesc   char(100) not null,  -- Descripcion
   ecdgarela   float not null,      -- Relacion
   ecdgacmon   smallint not null,   -- Moneda
   ecdgandoc   char(13) not null    -- Nro Documento
  );

 create unique index ecdga_00 on ecdga  (ecdgansol,ecdgatgar,ecdgaitem);
 create unique index ecdga_01 on ecdga  (ecdgansol,ecdgaitem);


----------------------------------------------------------------------------
--                             NO UTILIZAR
----------------------------------------------------------------------------

create table ecdms -- NO UTILIZAR
  (
   ecdmsnsol   integer not null,    -- 
   ecdmscact   integer not null,    -- 
   ecdmscdes   integer not null,    -- 
   ecdmsdeta   char(100) not null,  -- 
   ecdmscant   dec(14,2) not null,  -- 
   ecdmsunid   smallint not null,   -- 
   ecdmsmasi   dec(14,2) not null,  -- 
   ecdmsfuti   date not null        -- 
  );

 create unique index ecdms_01 on ecdms  (ecdmsnsol,ecdmscact,ecdmscdes);


----------------------------------------------------------------------------
--                   Dcoumentos adjuntos a solicitud
----------------------------------------------------------------------------

create table ecdoc -- Dcoumentos adjuntos a solicitud
  (
   ecdocndoc   integer not null,    -- Nro de documento
   ecdocnsol   integer not null,    -- Nro de Solicitud
   ecdoctitu   char(90),            -- Titulo
   ecdocautr   char(90),            -- Autor
   ecdoctdoc   smallint not null,   -- Tipo de documentos (ver conceptos)
   ecdoclink   char(100),           -- Direccion/ Nombre del documento
   ecdocmrcb   smallint not null,   -- Marca baja
   ecdocuser   char(15) not null,   -- Usuario
   ecdocfpro   date,                -- Fecha
   ecdochora   char(8) not null,    -- Hora
   ecdocfile   char(50),            -- Nombre del Archivo
   ecdocfreg   date,                -- Fecha REgistro
   ecdocfemi   date,                -- Fecha de Emision
   ecdocngar   integer,             -- Numero de Garantia
   ecdocnref   char(60),            -- Numero de Referencia
   ecdocitem   integer,             -- Item ecdsoitem
   ecdocntar   integer              -- Numero de Tarea
  );

 create index ecdoc_02 on ecdoc  (ecdocnsol,ecdocndoc);
 create index ecdoc_00 on ecdoc  (ecdocnsol,ecdocndoc,ecdocitem);


----------------------------------------------------------------------------
--                     Tipo de credito por producto
----------------------------------------------------------------------------

create table ecdpr -- Tipo de credito por producto
  (
   ecdprtcre   integer not null,    -- Tipo de credito * prtcrtcre=
   ecdprcdoc   integer not null,    -- Codigo de documento * ecconcorr=5
   ecdprccop   integer,             -- Cantidad de copias
   ecdprrequ   smallint,            -- Documento requerido 0=No 1=Si
   ecdprmrcb   smallint,            -- Marca 0=Alta 9=Baja
   ecdprfpro   date,                -- Fecha de proceso
   ecdprhora   char(8),             -- Hora de proceso
   ecdpruser   char(3),             -- Usuario
   ecdprfmrc   date,                -- Fecha de Marca Baja
   ecdprumrc   char(3),             -- Usuario Marca Baja
   ecdprtper   integer,             -- Tipo de Persona 1=Natural 2=Juridica
   ecdprnmod   smallint not null    -- Modulo
  );

 create unique index ecdpr_01 on ecdpr  (ecdprnmod,ecdprtcre,ecdprcdoc,ecdprtper);


----------------------------------------------------------------------------
--                         Documentos/Solicitud
----------------------------------------------------------------------------

create table ecdso -- Documentos/Solicitud
  (
   ecdsonsol   integer,             -- Numero de solicitud
   ecdsocdoc   smallint,            -- Codigo de documento
   ecdsontar   smallint,            -- Numero de Tarea
   ecdsofecha  date,                -- Fecha
   ecdsohor    char(8),             -- Hora
   ecdsotdoc   smallint,            -- 1=Original 0=Copia
   ecdsoitem   integer              -- Item ecdocitem
  );

 create index ecdso_00 on ecdso  (ecdsoitem);


----------------------------------------------------------------------------
--                    Registro de documento x tarea
----------------------------------------------------------------------------

create table ecdta -- Registro de documento x tarea
  (
   ecdtanpro   integer,             -- Cod. de proceso
   ecdtantar   integer,             -- Cod. de tarea
   ecdtacdoc   integer,             -- Cod. de documento
   ecdtauser   char(3),             -- Usuario
   ecdtahora   char(8),             -- Hora
   ecdtafpro   date                 -- Fecha de proceso
  );



----------------------------------------------------------------------------
--                   Evaluacion Agricola y Fruticola
----------------------------------------------------------------------------

create table eceag -- Evaluacion Agricola y Fruticola
  (
   eceagnsol   integer not null,    -- Nro. Solicitud * ecmsonsol=
   eceagcorr   integer not null,    -- Correlativo
   eceagcage   integer not null,    -- Codigo de Cliente * gbagecage=
   eceagtipo   smallint not null,   -- Tipo de Evaluacion (ecconpref=17)
   eceagfech   date not null,       -- Fecha de Registro
   eceagitem   smallint not null,   -- Item
   eceagfund   char(40),            -- Fundo
   eceagtext   smallint,            -- Tipo extencion (gbconpfij=134)
   eceagexct   dec(14,2),           -- Extension
   eceagsleg   smallint,            -- Estado Legal (gbconpfij = 135)
   eceagtcul   smallint,            -- Tipo Cultivo (gbconpfij=136)
   eceagmsie   smallint,            -- Mes siembra (gbconpfij=36)
   eceagmcoi   smallint,            -- Mes de Cosecha inicial (gbconpfij=36)
   eceagmcof   smallint,            -- Mes de Cosecha Final (gbconpfij=36)
   eceagpven   char(1),             -- Para venta (S/N)
   eceagmvei   smallint,            -- Mes de venta inicial(gbconpfij=36)
   eceagmvef   smallint,            -- Mes de venta final (gbconpfij=36)
   eceagctot   dec(14,2) not null,  -- Costo Total Inversion
   eceagvact   dec(14,2) not null,  -- Valor actual Inversion
   eceagrtot   dec(14,2) not null,  -- Rendimiento Total
   eceagumed   smallint,            -- Unidad de Medida (gbconpfij = 92)
   eceagpve1   dec(14,2) not null,  --  Precio de Venta Unit. Estimado uno
   eceagpve2   dec(14,2) not null,  --  Precio de Venta Unit. Estimado dos
   eceagrpv1   dec(14,2) not null,  -- Rentabilidad Inversion Precio uno
   eceagrpv2   dec(14,2) not null,  -- Rentabilidad Inversion Precio dos
   eceagmrcb   smallint,            -- Marca de Baja
   eceagglos   char(40),            -- Glosa
   eceagusrn   char(3),             -- usuario
   eceaghora   char(8),             -- hora
   eceagfpro   date,                -- fecha de proceso
   eceagasie   integer,             -- Definicion
   eceagacoi   integer,             -- Definicion
   eceagacof   integer,             -- Definicion
   eceagavei   integer,             -- Definicion
   eceagavef   integer              -- Definicion
  );

 create unique index eceag_00 on eceag  (eceagnsol,eceagcorr,eceagitem);


----------------------------------------------------------------------------
--                       Evaluacion Comercial Dos
----------------------------------------------------------------------------

create table ececd --  Evaluacion Comercial Dos
  (
   ececdnsol   integer not null,    -- Nro. Solicitud
   ececdcorr   integer not null,    -- Correlativo
   ececdcage   integer not null,    -- Codigo de Cliente * gbagecage=
   ececdftra   date not null,       -- Fecha de Transaccion
   ececdgneg   char(40) not null,   -- Giro de Negocio
   ececdvpdi   dec(14,2) not null,  -- Venta Promedio Diaria
   ececddial   smallint not null,   -- Dias Laborales
   ececdgmob   dec(14,2) not null,  --  Gastos Mano de Obra
   ececdgins   dec(14,2) not null,  -- Gastos de Insumo
   ececdotro   dec(14,2) not null,  -- Otros Gastos
   ececdctra   dec(14,2) not null,  -- Capital de trabajo
   ececdibru   dec(14,2) not null,  -- Ingreso Bruto
   ececdinet   dec(14,2) not null,  -- Ingreso Neto
   ececdglos   char(40),            -- Glosa
   ececdmrcb   smallint,            -- Marca de baja
   ececdusrn   char(3),             -- Usuario
   ececdhora   char(8),             -- Hora
   ececdfpro   date,                -- Fecha de Proceso
   ececdcvdi   dec(14,2),           -- Cantidad Venta diaria
   ececdarpd   char(40),            -- Definicion
   ececdarpc   dec(14,2),           -- Definicion
   ececdargv   dec(14,2),           -- Definicion
   ececdarct   dec(14,2),           -- Definicion
   ececdarpv   dec(14,2),           -- Definicion
   ececdarre   dec(7,2),            -- Definicion
   ececdargl   char(40),            -- Definicion
   ececdmgpd   char(40),            -- Definicion
   ececdmgpc   dec(14,2),           -- Definicion
   ececdmggv   dec(14,2),           -- Definicion
   ececdmgct   dec(14,2),           -- Definicion
   ececdmgpv   dec(14,2),           -- Definicion
   ececdmgre   dec(7,2),            -- Definicion
   ececdmggl   char(40),            -- Definicion
   ececdegpd   char(40),            -- Definicion
   ececdegpc   dec(14,2),           -- Definicion
   ececdeggv   dec(14,2),           -- Definicion
   ececdegct   dec(14,2),           -- Definicion
   ececdegpv   dec(14,2),           -- Definicion
   ececdegre   dec(7,2),            -- Definicion
   ececdeggl   char(40)             -- Definicion
  );

 create unique index ececd_00 on ececd  (ececdnsol,ececdcorr);


----------------------------------------------------------------------------
--                          Evaluacion Ganadera
----------------------------------------------------------------------------

create table ececg --  Evaluacion Ganadera
  (
   ececgnsol   integer not null,    -- Nro. Solicitud
   ececgcorr   integer not null,    -- Correlativo
   ececgcage   integer not null,    -- Codigo de Cliente * gbagecage=
   ececgftra   date not null,       -- Fecha de Transaccion
   ececggneg   smallint not null,   -- Tipo de Ganado (ecconpref = 18)
   ececgraza   char(40) not null,   -- Raza (Brown, gallinas ponedoras)
   ececgcana   integer not null,    -- Cantidad Actual
   ececgvala   dec(14,2) not null,  -- Valor Actual
   ececgcest   integer,             -- Crianza Estabulado
   ececgcpas   integer,             -- Crianza Pastoreo
   ececgncad   integer not null,    --  Nro. de Cabezas a Adquirir
   ececgprec   dec(14,2) not null,  -- Precio de compra del lote
   ececgcman   dec(14,2) not null,  -- Costo de Mantenimiento
   ececgctot   dec(14,2) not null,  -- Costo toal (prec + cman)
   ececgncav   integer not null,    -- Nro de cabezas a vender
   ececgprvu   dec(14,2) not null,  -- Precio de venta por cabeza uno
   ececgprvd   dec(14,2) not null,  -- Precio de venta por cabeza dos
   ececgfven   smallint,            -- Fecha de Venta del Lote
   ececgmobr   dec(14,2),           -- Costo Mano de Obra
   ececginsu   dec(14,2),           -- Costo de Insumos
   ececgrinu   dec(14,2) not null,  -- Rentabilidad Precio uno
   ececgrind   dec(14,2) not null,  -- Rentabilidad Precio dos
   ececgglos   char(40),            -- glosa
   ececgmrcb   smallint,            -- Marca de Baja
   ececgusrn   char(3),             -- Usuario
   ececghora   char(8),             -- Hora
   ececgfpro   date,                -- Fecha de Proceso
   ececgaven   integer              -- Definicion
  );

 create unique index ececg_00 on ececg  (ececgnsol,ececgcorr);


----------------------------------------------------------------------------
--                       Evaluacion Comercial Uno
----------------------------------------------------------------------------

create table ececu -- Evaluacion Comercial Uno
  (
   ececunsol   integer not null,    -- Nro. Solicitud
   ececucorr   integer not null,    -- Correlativo de Evaluacion Comercial
   ececucage   integer not null,    -- Codigo de Cliente
   ececutipo   smallint not null,   -- Tipo de Ganancia de Negocio
   ececuftra   date not null,       -- Fecha de registro
   ececuprod   char(40) not null,   -- Producto
   ececuprec   dec(14,2) not null,  -- Precio de Compra
   ececugasv   dec(14,2) not null,  -- Gastos de Ventas
   ececutotc   dec(14,2) not null,  -- Costo Total
   ececuprev   dec(14,2) not null,  -- Precio de Venta
   ececupren   dec(7,2) not null,   -- Porcentaje de Rentabilidad
   ececuglos   char(40),            -- Glosa
   ececumrcb   smallint,            -- Marca de Baja
   ececuusrn   char(3),             -- Usuario
   ececuhora   char(8),             -- Hora de la operacion
   ececufpro   date                 -- Fecha de proceso
  );

 create unique index ececu_00 on ececu  (ececunsol,ececucorr,ececutipo);


----------------------------------------------------------------------------
--                              Elementos
----------------------------------------------------------------------------

create table ecelm -- Elementos
  (
   ecelmcelm   integer not null,    -- Codigo de elemento
   ecelmccri   integer not null,    -- Codigo de criterio
   ecelmdesc   char(40) not null,   -- Descripcion
   ecelmexpl   char(90),            -- Explicacion elemento
   ecelmncam   char(15),            -- Nombre de campo para display
   ecelmtent   integer              -- Tipo de Entrada
  );

 create unique index ecelm_00 on ecelm  (ecelmcelm,ecelmccri);
 create index ecelm_01 on ecelm  (ecelmccri);


----------------------------------------------------------------------------
--                        EVALUACION SOLICITUDES
----------------------------------------------------------------------------

create table eceva -- EVALUACION SOLICITUDES
  (
   ecevafreg   date,                -- fecha de registro
   ecevansol   integer,             -- numerod e solicitud
   ecevacmon   smallint,            -- moneda de evaluacion
   ecevamcaj   integer,             -- Monto en Bancos
   ecevambco   integer,             -- Monto en Caja
   ecevamctc   integer,             -- Monto Cuentas por Cobrar
   ecevamacc   integer,             -- Total Activo Corriente
   ecevammpp   integer,             -- Inventario Materia Prima
   ecevamppr   integer,             -- Inventario de Productos en Pro
   ecevampte   integer,             -- Inventario de Productos Termin
   ecevammeq   integer,             -- Maquinarias y Equipos
   ecevamher   integer,             -- Herramientas
   ecevamacf   integer,             -- Total Activo fijo
   ecevamact   integer,             -- Total Activo
   ecevamctp   integer,             -- Cuentas por Pagar a Proveedore
   ecevamced   integer,             -- Cuentas por Pagar con la Insti
   ecevamocc   integer,             -- Otras Cuentas por Pagar
   ecevampac   integer,             -- Pasivo Corriente
   ecevamplp   integer,             -- Pasivo a Largo Plazo
   ecevampas   integer,             -- Total Pasivo
   ecevampat   integer,             -- Patrimonio
   ecevamctr   integer,             -- Capital de Trabajo
   ecevammp1   integer,             -- Materia Prima Princ. Prod. 1
   ecevammp2   integer,             -- Materia Prima Princ. Prod. 2
   ecevammp3   integer,             -- Materia Prima Princ. Prod. 3
   ecevamms1   integer,             -- Materia Prima Sec. Prod1
   ecevamms2   integer,             -- Materia Prima Sec. Prod2
   ecevamms3   integer,             -- Materia Prima Sec. Prod3
   ecevammc1   integer,             -- Materia Prima Comp. Prod. 1
   ecevammc2   integer,             -- Materia Prima Comp. Prod. 2
   ecevammc3   integer,             -- Materia Prima Comp. Prod. 3
   ecevamm11   integer,             -- Mano de Obra 1 Prod. 1
   ecevamm12   integer,             -- Mano de Obra 2 Prod. 2
   ecevamm13   integer,             -- Mano de Obra 3 Prod. 3
   ecevamm21   integer,             -- Mano de Obra 2 Prod. 1
   ecevamm22   integer,             -- Mano de Obra 2 Prod. 2
   ecevamm23   integer,             -- Mano de Obra 2 Prod. 3
   ecevamcu1   integer,             -- Costo Unitario Prod. 1
   ecevamcu2   integer,             -- Costo Unitario Prod. 2
   ecevamcu3   integer,             -- Costo Unitario Prod. 3
   ecevampm1   integer,             -- Promedio Mensual Prod. 1
   ecevampm2   integer,             -- Promedio Mensual Prod. 2
   ecevampm3   integer,             -- Promedio Mensual Prod. 3
   ecevampu1   float,               -- Precio unitario Prod. 1
   ecevampu2   float,               -- Precio unitario Prod. 2
   ecevampu3   float,               -- Precio unitario Prod. 3
   ecevatcpm   integer,             -- Total Costo Primo Mensual
   ecevatinm   integer,             -- Total Ingreso Mensual
   ecevapmve   float,               -- Porcentaje Margen de ventas
   ecevanop1   char(10),            -- Nombre del Prodcuto 1
   ecevanop2   char(10),            -- Nombre del PRoducto 2
   ecevanop3   char(10),            -- Nombre del Producto 3
   ecevaump1   char(10),            -- Unidad de Medida Prod 1
   ecevaump2   char(10),            -- Unidad de Medida Prod 2
   ecevaump3   char(10),            -- Unidad de Medida Prod 3
   ecevamcf1   integer,             -- Costo Fijo Servicios Basico
   ecevamcf2   integer,             -- Costo Fijo Adm. y ventas
   ecevamcf3   integer,             -- Costo Fijo Impuesto
   ecevatcfj   integer,             -- Total Costo Fijo
   ecevatutn   integer,             -- Utilidad Neta
   ecevamoin   integer,             -- Otros Ingresos
   ecevamoeg   integer,             -- Otros Egresos
   ecevamcfa   integer,             -- Canasta Familiar
   ecevatudi   integer,             -- Utilidad Disponible
   ecevamgfi   integer,             -- Gastos Financeirso
   ecevapren   float,               -- Porcentaje de Rentabilidad
   ecevaprot   float,               -- Porcentaje de Rotacion
   ecevapliq   float,               -- Porcentaje de Liquidez
   ecevapcen   float,               -- Porcentaje de Endeudamiento
   ecevapcpa   float,               -- Porcentaje de Capacidad de Pag
   ecevapict   float,               -- Porc. Ingremento capital Traba
   ecevarepu   smallint,            -- Rentabilidad Puntaje
   ecevarvpu   smallint,            -- Rotacion de Ventas Puntaje
   ecevalipu   smallint,            -- Liquidez Puntaje
   ecevaenpu   smallint,            -- Endeudamiento Puntaje
   ecevacppu   smallint,            -- Capacidad de Pago Puntaje
   ecevaictp   smallint,            -- Incremento Capital Trabajo
   ecevatpcu   smallint,            -- Total Puntaje Cualitativo
   ecevavecr   smallint,            -- Ventas al Credito
   ecevaiv01   smallint,            -- Inc. Mensual Ventas Mes 01
   ecevaiv02   smallint,            -- Inc. Mensual Ventas Mes 02
   ecevaiv03   smallint,            -- Inc. Mensual Ventas Mes 03
   ecevaiv04   smallint,            -- Inc. Mensual Ventas Mes 04
   ecevaiv05   smallint,            -- Inc. Mensual Ventas Mes 05
   ecevaiv06   smallint,            -- Inc. Mensual Ventas Mes 06
   ecevaiv07   smallint,            -- Inc. Mensual Ventas Mes 07
   ecevaiv08   smallint,            -- Inc. Mensual Ventas Mes 08
   ecevaiv09   smallint,            -- Inc. Mensual Ventas Mes 09
   ecevaiv10   smallint,            -- Inc. Mensual Ventas Mes 10
   ecevaiv11   smallint,            -- Inc. Mensual Ventas Mes 11
   ecevaiv12   smallint,            -- Inc. Mensual Ventas Mes 12
   ecevacf01   integer,             -- Canasta Familiar Mes 01
   ecevacf02   integer,             -- Canasta Familiar Mes 02
   ecevacf03   integer,             -- Canasta Familiar Mes 03
   ecevacf04   integer,             -- Canasta Familiar Mes 04
   ecevacf05   integer,             -- Canasta Familiar Mes 05
   ecevacf06   integer,             -- Canasta Familiar Mes 06
   ecevacf07   integer,             -- Canasta Familiar Mes 07
   ecevacf08   integer,             -- Canasta Familiar Mes 08
   ecevacf09   integer,             -- Canasta Familiar Mes 09
   ecevacf10   integer,             -- Canasta Familiar Mes 10
   ecevacf11   integer,             -- Canasta Familiar Mes 11
   ecevacf12   integer,             -- Canasta Familiar Mes 12
   ecevamdep   smallint,            -- Marca depreciacion
   ecevatoga   integer,             -- Total garantias
   ecevatopu   integer,             -- Total Puntaje
   ecevaim01   smallint,            -- inc vta normal mes 01
   ecevaim02   smallint,            -- inc vta normal mes 02
   ecevaim03   smallint,            -- inc vta normal mes 03
   ecevaim04   smallint,            -- inc vta normal mes 04
   ecevaim05   smallint,            -- inc vta normal mes 05
   ecevaim06   smallint,            -- inc vta normal mes 06
   ecevaim07   smallint,            -- inc vta normal mes 07
   ecevaim08   smallint,            -- inc vta normal mes 08
   ecevaim09   smallint,            -- inc vta normal mes 09
   ecevaim10   smallint,            -- inc vta normal mes 10
   ecevaim11   smallint,            -- inc vta normal mes 11
   ecevaim12   smallint,            -- inc vta normal mes 12
   ecevaflne   char(1),             -- Controla Flujo Negativo
   ecevastat   smallint,            -- Estado de Evaluacion
   ecevauser   char(3),             -- Usuario
   ecevahora   char(8),             -- Fecha
   ecevafpro   date                 -- Hora
  );

 create unique index eceva_00 on eceva  (ecevansol);


----------------------------------------------------------------------------
--                      Excepciones por solicitud
----------------------------------------------------------------------------

create table ecexc -- Excepciones por solicitud
  (
   ecexcnsol   integer,             -- Nro de Solicitud
   ecexccodi   integer,             -- Codigo de excepcion
   ecexcdesc   char(200),           -- Breve descripcion de la misma
   ecexcauto   char(1)              -- Excepcion S=Automatico N=Manual
  );

 create unique index ecexc_00 on ecexc  (ecexcnsol,ecexccodi);


----------------------------------------------------------------------------
--                       Registro de Excepciones
----------------------------------------------------------------------------

create table ecexp -- Registro de Excepciones
  (
   ecexpcodi   integer not null,    -- Cod. Excepcion
   ecexpdesc   char(60) not null,   -- Descripcion
   ecexptipo   char(1) not null,    -- Tipo Excep. T=Cuantitativo L=Cualitativo
   ecexpacti   char(1) not null,    -- S=Activado  N=Desactivado
   ecexptper   char(1),             -- Tipo Persona N=Natural J=Juridico T=*
   ecexpcome   char(200),           -- Comentario
   ecexpuser   char(3) not null,    -- Usuario
   ecexpfpro   date not null,       -- Fecha de Proceso
   ecexphora   char(8) not null     -- Hora
  );

 create unique index ecexp_00 on ecexp  (ecexpcodi);


----------------------------------------------------------------------------
--                        Excepciones Realizadas
----------------------------------------------------------------------------

create table ecext -- Excepciones Realizadas
  (
   ecextnsol   integer not null,    -- Numero Solicitud
   ecextntar   integer not null,    -- Codigo Tarea
   ecextcage   integer not null,    -- Codigo Cliente
   ecextcexc   integer not null,    -- Codigo Excepcion
   ecextstat   smallint not null,   -- Estado 0=Vigente 9=Cancelado
   ecextfecv   date,                -- Fecha Registro Vigencia
   ecextfecc   date,                -- Fecha Registro Cancelado
   ecextuser   char(3),             -- Usuario
   ecexthora   char(8),             -- Hora
   ecextfpro   date                 -- Fecha Proceso
  );

 create index ecext_00 on ecext  (ecextnsol);
 create index ecext_01 on ecext  (ecextnsol,ecextntar);


----------------------------------------------------------------------------
--                         Flujo por Solicitud
----------------------------------------------------------------------------

create table ecfcj -- Flujo por Solicitud
  (
   ecfcjnsol   integer not null,    -- Nro de Solicitud
   ecfcjtipo   smallint not null,   -- 1=Ing.F;2=Ing.V;3=GastosF.;4=GastosV
   ecfcjisec   smallint not null,   -- Secuencia de la fila
   ecfcjnmes   smallint not null,   -- Mes
   ecfcjanio   integer not null,    -- Anio
   ecfcjiper   smallint not null,   -- Periodo a cargar cantidad
   ecfcjperc   smallint not null,   -- Periodo a cargar tipo mes, dias,..
   ecfcjcpag   smallint not null,   -- Cantidad de Paginas
   ecfcjnpag   smallint not null,   -- Nro de Paginas
   ecfcjprea   smallint not null,   -- Prefijo A
   ecfcjcora   smallint not null,   -- Correlativo A
   ecfcjcona   smallint not null,   -- Naturaleza de la cuenta A
   ecfcjpreb   smallint not null,   -- Prefijo B, dependiente de A
   ecfcjcorb   smallint not null,   -- Correlativo B,dependiente de B
   ecfcjconb   smallint not null,   -- Naturaleza de la cuenta B, depen. de B
   ecfcjp000   dec(14,2) not null,  -- Periodo 0
   ecfcjp001   dec(14,2) not null,  -- Periodo 1
   ecfcjp002   dec(14,2) not null,  -- Periodo 2
   ecfcjp003   dec(14,2) not null,  -- Periodo 3
   ecfcjp004   dec(14,2) not null,  -- Periodo 4
   ecfcjp005   dec(14,2) not null,  -- Periodo 5
   ecfcjp006   dec(14,2) not null,  -- Periodo 6
   ecfcjp007   dec(14,2) not null,  -- Periodo 7
   ecfcjp008   dec(14,2) not null,  -- Periodo 8
   ecfcjp009   dec(14,2) not null,  -- Periodo 9
   ecfcjp010   dec(14,2) not null,  -- Periodo 10
   ecfcjp011   dec(14,2) not null,  -- Periodo 11
   ecfcjp012   dec(14,2) not null,  -- Periodo 12
   ecfcja001   dec(14,2) not null,  -- Anio 1
   ecfcja002   dec(14,2) not null,  -- Anio 2
   ecfcja003   dec(14,2) not null,  -- Anio 3
   ecfcja004   dec(14,2) not null,  -- Anio 4
   ecfcja005   dec(14,2) not null   -- Anio 5
  );

 create unique index ecfcj_00 on ecfcj  (ecfcjnsol,ecfcjtipo,ecfcjisec,ecfcjnmes,ecfcjanio,ecfcjnpag);


----------------------------------------------------------------------------
--                     Control de Flujo de proceso
----------------------------------------------------------------------------

create table ecflu -- Control de Flujo de proceso
  (
   ecflunpro   smallint,            -- Cod. Proceso Workflow
   ecfluntar   integer,             -- Cod. Tarea * ectar=
   ecfluptar   integer,             -- Prox. Tarea * ectar=
   ecflutipot  char(2)              -- Tipo a=aceptada r=rechazo rs=rech sol.
  );

 create index ecflu_00 on ecflu  (ecflunpro);
 create index ecflu_01 on ecflu  (ecfluntar);


----------------------------------------------------------------------------
--                         Fusion de Prestamos
----------------------------------------------------------------------------

create table ecfus -- Fusion de Prestamos
  (
   ecfusnsol   integer not null,    -- Nro. solicitud
   ecfusnpre   integer not null,    -- Nro. prestamo
   ecfussald   dec(14,2) not null,  -- Saldo
   ecfuscmon   smallint not null,   -- Moneda
   ecfussalv   dec(14,2) not null,  -- Saldo Conv.
   ecfuscmov   smallint not null,   -- Moneda Conv
   ecfusrefe   smallint not null    -- Prestamo 1=referecial 0=no referecial
  );

 create unique index ecfus_00 on ecfus  (ecfusnsol,ecfusnpre);
 create index ecfus_01 on ecfus  (ecfusnsol);
 create index ecfus_02 on ecfus  (ecfusnpre);
 create index ecfus_03 on ecfus  (ecfusrefe);


----------------------------------------------------------------------------
--                              Garantias
----------------------------------------------------------------------------

create table ecgar -- Garantias
  (
   ecgarnsol   integer not null,    -- Numero de solicitud
   ecgarcorr   integer not null,    -- Correlativo
   ecgarngar   dec(10,0),           -- Numero de garantia
   ecgartgar   smallint not null,   -- Tipo de garantia gbtgactga
   ecgarndoc   char(16),            -- Numero de documento
   ecgarfreg   date,                -- Fecha de registro
   ecgarmont   dec(14,2),           -- Monto
   ecgarcmon   smallint not null,   -- Moneda
   ecgargrav   dec(14,2) not null,  -- Gravamen
   ecgargfin   dec(14,2) not null,  -- Gravamen Institucion
   ecgarnpar   char(16),            -- Nro. Partida
   ecgarfpar   date,                -- Fecha Partida
   ecgarnhip   char(16),            -- Nro Asiento Gravamen Hipoteca
   ecgarfhip   date,                -- Fecha de Asiento Gravamen
   ecgardesc   char(300),           -- Descripcion
   ecgarpais   integer,             -- Pais * gbpai=
   ecgardpto   integer,             -- Departamento * gbdpt=
   ecgarcprv   integer,             -- Provincia * gbprv=
   ecgarciud   integer,             -- Ciudad * gbciu=
   ecgarzona   integer,             -- Zona * gbzon=
   ecgarcmun   integer,             -- Municipio * gbmun=
   ecgarambg   smallint,            -- Ambito Geografico * gbcon=17
   ecgarugps   smallint,            -- GPS * gbcon=57
   ecgarlong   dec(20,10),          -- Longitud
   ecgarlati   dec(20,10),          -- Latitud
   ecgaragen   integer,             -- Agencia
   ecgarplaz   integer,             -- Plaza
   ecgarmrcb   smallint,            -- Marca 0=Alta 9=Baja
   ecgarfmrc   date,                -- Fecha Marca Baja
   ecgaruser   char(3),             -- Usuario
   ecgarhora   char(8),             -- Hora
   ecgarfpro   date,                -- Fecha de proceso
   ecgardire   char(300)            -- Direccion
  );

 create unique index ecgar_00 on ecgar  (ecgarnsol,ecgarcorr);
 create index ecgar_01 on ecgar  (ecgartgar);
 create index ecgar_02 on ecgar  (ecgarnpar);
 create index ecgar_03 on ecgar  (ecgarnpar,ecgarnsol);


----------------------------------------------------------------------------
--                          Garantia Inmuebles
----------------------------------------------------------------------------

create table echim -- Garantia Inmuebles
  (
   echimnsol   integer not null,    -- Nro. Socilitud * ecmso=
   echimcorr   integer not null,    -- Correlativo
   echimtinm   smallint not null,   -- Tipo de inmueble * gbcon=65
   echimstat   smallint not null,   -- Estado * gbcon=113
   echimflio   char(20),            -- Folio
   echimnpar   char(20),            -- Nro. Partida
   echimfins   date,                -- Fecha de Inscripcion
   echimtest   char(20),            -- Testimonio
   echimagra   char(20),            -- Asiento Gravamen
   echimfgra   date,                -- Fecha Asiento Grav.
   echimtgra   char(20),            -- Testimonio Grav..
   echimcato   char(20),            -- Catastro
   echimipto   dec(14,2),           -- Impueto
   echimimon   smallint,            -- Moneda
   echimanio   smallint,            -- Anio
   echimplan   char(20),            -- Plano Ubicacion
   echimunid   smallint,            -- Unidad de medida * gbcon=92
   echimdimt   dec(10,2),           -- Dimension del terreno
   echimdime   dec(10,2),           -- Dimension del edificio
   echimvter   dec(14,2),           -- Valor Avaluo Terreno
   echimvedi   dec(14,2),           -- Valor Avaluo Edidificio
   echimvalo   dec(14,2),           -- Valor Total Avaluo
   echimvcte   dec(14,2),           -- Valor Catastral del Terreno
   echimvced   dec(14,2),           -- Valor Catastral del Edificio
   echimvcat   dec(14,2),           -- Valor Total Catastral
   echimvven   dec(14,2),           -- Valor de Venta Rapida
   echimubn1   integer,             -- Distrito
   echimubn2   integer,             -- Barrio
   echimubn3   char(120),           -- Calle o Avenida
   echimubn4   char(10),            -- Manzana
   echimubn5   char(10),            -- Unidad Vecinal
   echimndom   char(10),            -- Nro. Domicilio
   echimnedi   char(90),            -- Nombre Edificio
   echimndep   char(10),            -- Nro. Departamento
   echimdire   char(300),           -- Direccion
   echimdirr   char(300)            -- Direccion referencia
  );

 create unique index echim_00 on echim  (echimnsol,echimcorr);


----------------------------------------------------------------------------
--                          Garantia Vehiculo
----------------------------------------------------------------------------

create table echvn -- Garantia Vehiculo
  (
   echvnnsol   integer not null,    -- Nro Solicitud * ecmso=
   echvncorr   integer not null,    -- Correlativo
   echvntveh   smallint not null,   -- Tipo de Vehiculo * gbcon=114
   echvnstat   smallint not null,   -- Estado del inmueble * gbcon=113
   echvnmarc   smallint not null,   -- Marca del Vehiculo * gbcon=115
   echvnmdlo   char(20),            -- Modelo
   echvncolo   smallint not null,   -- Color * gbcon=116
   echvnanof   char(4),             -- Anio de Fabricacion
   echvnproc   integer,             -- Pais de procedencia
   echvnmuni   char(60),            -- Municipio
   echvnnpta   char(20),            -- Nro. PTA
   echvnfemi   date,                -- Fecha emision pta
   echvnnmot   char(50),            -- Nro. Motor
   echvnncha   char(50),            -- Nro. Chasis
   echvnnprt   smallint,            -- Nro. Puertas
   echvncili   integer,             -- Cilindradas
   echvntrac   smallint,            -- Traccion * gbcon=117
   echvncapa   integer,             -- Capacidad Toneladas
   echvnturb   char(1),             -- Turbo (S/N)
   echvncarr   char(1),             -- Carroceria (S/N)
   echvntsvc   smallint,            -- Tipo de servicio * gbcon=118
   echvncomb   smallint,            -- Tipo de combustible * gbcon=203
   echvnlcir   smallint,            -- Lugar de circulacion * gbcon=119
   echvnipto   dec(14,2),           -- Impuesto pagado
   echvnimon   smallint,            -- Moneda Impuesto
   echvnanio   smallint,            -- Anio de impuestos pagados
   echvnvalo   dec(14,2),           -- Valor Avaluo
   echvnvalc   dec(14,2),           -- Valor Comercial
   echvnnpol   char(30)             -- No de Poliza
  );

 create unique index echvn_00 on echvn  (echvnnsol,echvncorr);


----------------------------------------------------------------------------
--                            Informe Legal
----------------------------------------------------------------------------

create table ecleg -- Informe Legal
  (
   eclegnleg   integer not null,    -- Numero de Informe Legal (ecsrl)
   eclegcsgt   integer not null,    -- Codigo de Seguimiento WorkFlow
   eclegnsol   integer not null,    -- Numero de Solicitud
   eclegstat   smallint,            -- Estado 0=Activo 1=Caducado
   eclegfreg   date,                -- Fecha de Registro
   ecleguser   char(3),             -- Usuario
   eclegfpro   date,                -- Fecha de Proceso
   ecleghora   char(8)              -- Hora
  );

 create unique index ecleg_00 on ecleg  (eclegnleg);


----------------------------------------------------------------------------
--                    Carga Masiva de Presolicitudes
----------------------------------------------------------------------------

create table ecmcm -- Carga Masiva de Presolicitudes
  (
   ecmcmitem   integer,             -- Item
   ecmcmfreg   date,                -- Fecha de Registro
   ecmcmtdid   smallint,            -- Tipo de Did
   ecmcmndid   char(20),            -- Nro. de Did
   ecmcmcage   integer,             -- Cod. Cliente
   ecmcmnomb   char(90),            -- Nombre del Cliente
   ecmcmtper   smallint,            -- Tipo de Persona
   ecmcmfnac   date,                -- Fecha de Nacimiento
   ecmcmsexo   smallint,            -- Sexo
   ecmcmeciv   smallint,            -- Estado Civil
   ecmcmnnit   char(20),            -- Nro Nit
   ecmcmdird   char(60),            -- Direccion
   ecmcmtlfd   char(20),            -- Telefono Domicilio
   ecmcmtlfo   char(20),            -- Telefono Oficina
   ecmcmncel   char(20),            -- Telefono Celular
   ecmcmimpo   dec(14,2),           -- Importe
   ecmcmcmon   smallint,            -- Cod. Moneda
   ecmcmarch   char(50),            -- Nombre del Archivo
   ecmcmuser   char(3),             -- Usuario
   ecmcmfpro   date,                -- Fecha de proceso
   ecmcmhora   char(10),            -- Hora de proceso
   ecmcmnpso   integer,             -- Nro. de la presolicitud
   ecmcmcven   integer,             -- Cod. del Vendedor
   ecmcmresp   integer,             -- Cod. del Responsable
   ecmcmagen   integer,             -- Cod. de Agencia
   ecmcmncam   integer,             -- Cod. de Campania
   ecmcmtasa   float,               -- Tasa
   ecmcmplzo   integer,             -- Plazo
   ecmcmuplz   smallint,            -- Unidad de Plazo
   ecmcmfpag   smallint,            -- Fecha pagi
   ecmcmfpri   date,                -- Fecha de primera cuota
   ecmcmtcre   integer,             -- Tipo de Credito
   ecmcmppgk   integer,             -- Periodo pago Capital
   ecmcmppgi   integer,             -- Periodo pago Interes
   ecmcmuppg   smallint,            -- Unidad de perido de pago
   ecmcmfdes   date                 -- Fecha de Desembolso
  );

 create unique index ecmcm_01 on ecmcm  (ecmcmitem,ecmcmarch);


----------------------------------------------------------------------------
--                          Tipo de Inversion
----------------------------------------------------------------------------

create table ecmdi -- Tipo de Inversion
  (
   ecmdinsol   integer not null,    -- Nro. solicitud
   ecmdiisec   smallint not null,   -- Secuencia
   ecmditinv   smallint not null,   -- Tipo de inversion * gbcon=132
   ecmdietap   smallint not null,   -- Etapa
   ecmdiporc   dec(20,10) not null, -- Porcentaje
   ecmdimont   dec(14,2) not null,  -- Monto
   ecmdidesc   char(200),           -- Descripcion de la Inversion
   ecmdifinv   date,                -- Definicion
   ecmdiusrn   char(3),             -- Usuario
   ecmdihora   char(8),             -- Hora
   ecmdifpro   date                 -- Fecha de Proceso
  );

 create unique index ecmdi_00 on ecmdi  (ecmdinsol,ecmdiisec);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecmfl -- *** SIN DESCRIPCION ***
  (
   ecmflnpro   integer not null,    -- Definicion
   ecmflntar   integer not null,    -- Definicion
   ecmflusrn   char(15) not null,   -- Definicion
   ecmfluser   char(15),            -- Definicion
   ecmflfpro   date,                -- Definicion
   ecmflhora   char(8)              -- Definicion
  );



----------------------------------------------------------------------------
--                    Opciones por usuario Workflow
----------------------------------------------------------------------------

create table ecmop -- Opciones por usuario Workflow
  (
   ecmopusrn   char(3) not null,    -- Usuario
   ecmopopci   smallint not null    -- Opcion
  );

 create unique index ecmop_00 on ecmop  (ecmopusrn);


----------------------------------------------------------------------------
--                           REGISTRO DE MORA
----------------------------------------------------------------------------

create table ecmor -- REGISTRO DE MORA
  (
   ecmornsol   integer not null,    -- Numero de Solicitud
   ecmorcage   integer not null,    -- Codigo Cliente
   ecmorinte   char(1),             -- Mora Interna
   ecmorsbef   char(1),             -- Mora Sistema Financiero
   ecmorotro   char(1),             -- Mora Otros
   ecmorpunt   char(300),           -- Puntualidad
   ecmorfreg   date,                -- Fecha de Registro
   ecmormrcb   smallint,            -- Marca Baja
   ecmoruser   char(3),             -- Usuario
   ecmorhora   char(8),             -- Hora
   ecmorfpro   date                 -- Fecha de Proceso
  );

 create index ecmor_00 on ecmor  (ecmornsol);


----------------------------------------------------------------------------
--                     Seguimiento de Presolicitud
----------------------------------------------------------------------------

create table ecmph -- Seguimiento de Presolicitud
  (
   ecmphncod   integer,             -- Correlativo
   ecmphnpso   integer,             -- Cod. Presolicitud
   ecmphfreg   date,                -- Fecha de Registro
   ecmphpseg   integer,             -- Oficial de Credito * gbfir=
   ecmphstat   smallint,            -- Estado de la Presolicitud
   ecmphdesc   char(500),           -- Descripcion del Seguimiento
   ecmphuser   char(3) not null,    -- Usuario
   ecmphhpro   char(8) not null,    -- Hora
   ecmphfpro   date                 -- Fecha de Proceso
  );

 create index ix2499_1 on ecmph  (ecmphncod);


----------------------------------------------------------------------------
--                     Registro de PPI x Solicitud
----------------------------------------------------------------------------

create table ecmpi -- Registro de PPI x Solicitud
  (
   ecmpinsol   integer,             -- Nro. Solicitud
   ecmpindtl   integer,             -- Cod. Encuesta * pifor=
   ecmpifndt   date                 -- Fecha Encuesta
  );

 create unique index ecmpi_00 on ecmpi  (ecmpinsol,ecmpindtl);


----------------------------------------------------------------------------
--                              Productos
----------------------------------------------------------------------------

create table ecmpr -- Productos
  (
   ecmprcpro   integer not null,    -- Codigo de producto
   ecmprdesc   char(40) not null,   -- Descripcion
   ecmprcalm   integer not null,    -- Calificacion minima
   ecmprcrev   integer,             -- Calificacion minima para revis
   ecmprnmod   smallint,            -- Nro del Modulo
   ecmprcmon   smallint,            -- Moneda del producto
   ecmprmmax   dec(14,2),           -- Monto Maximo a Prestar
   ecmprtcre   smallint,            -- Tipo de Credito en
   ecmprorgr   smallint,            -- Origen de los Recursos
   ecmprrubr   smallint,            -- Rubro
   ecmprciiu   integer,             -- Ciiu
   ecmprdest   smallint,            -- Destino de los Fondos
   ecmprplzo   smallint,            -- Plazo
   ecmpruplz   smallint,            -- Unidad del Plazo
   ecmprtasa   float,               -- Tasa
   ecmprtase   float,               -- Tasa Externa
   ecmprcudb   char(1),             -- Cuota doble?
   ecmprfpag   smallint,            -- Forma de Pago
   ecmprppgk   integer,             -- Periodo de Pago Capital
   ecmprppgi   integer,             -- Periodo de PAgo Interes
   ecmprgrac   integer,             -- Periodo de Gracia
   ecmpruppg   smallint,            -- Unidad Pago Capital
   ecmprfprv   char(1),             -- Forma de Calf. Prevision
   ecmprviac   smallint,            -- Via Cuenta Cobro
   ecmprctac   char(13),            -- Cta de Cobro
   ecmprrepr   smallint,            -- Reprogrmaciones
   ecmprnctr   integer,             -- Nro. de Contrato
   ecmprcprg   integer,             -- Producto para garantia
   ecmprcpag   dec(6,3),            -- Capacidad de pago
   ecmprvind   smallint,            -- Marca de Verificacion indice
   ecmprpgar   dec(6,3),            -- Porcentaje Garantia adminitida
   ecmprmflu   dec(14,2),           -- Marca verifcacion flujo de Caja
   ecmprmrcb   smallint,            -- Marca Baja
   ecmpruser   char(3),             -- Usuario
   ecmprhora   char(8),             -- Hora
   ecmprfpro   date                 -- Fecha Proceso
  );



----------------------------------------------------------------------------
--                             Presolicitud
----------------------------------------------------------------------------

create table ecmps -- Presolicitud
  (
   ecmpsnpso   integer,             -- No. Pre Solicitud
   ecmpsfreg   date,                -- Fecha de Registro
   ecmpstdid   smallint,            -- Tipo de Documento
   ecmpsndid   char(20),            -- Nro. de Documento
   ecmpscage   integer,             -- Codigo de Agenda
   ecmpsnomb   char(90),            -- Nombre o Razon Social
   ecmpstper   smallint,            -- Tipo de Persona
   ecmpsfnac   date,                -- Fecha de Nacimiento
   ecmpssexo   smallint,            -- Sexo
   ecmpseciv   smallint,            -- Estado Civil
   ecmpsnnit   char(20),            -- Numero NIT
   ecmpstipo   smallint,            -- Tipo gbconpfij=43
   ecmpsnive   integer,             -- Nivel de Educacion
   ecmpscand   smallint,            -- Cantidad de Dependientes
   ecmpsprof   smallint,            -- Profesion
   ecmpsrubr   smallint,            -- Rubro
   ecmpsactv   smallint,            -- Actividad
   ecmpsdact   char(90),            -- Actividad1
   ecmpsdird   char(150),           -- Direccion Domicilio
   ecmpstlfd   char(20),            -- Numero de Telefono Domicilio
   ecmpscelu   char(20),            -- Numero de Telefono Celular
   ecmpsciud   integer,             -- Ciudad
   ecmpszond   integer,             -- Zona
   ecmpsnemp   char(90),            -- Nombre Empresa
   ecmpsdiro   char(150),           -- Direccion de Empresa
   ecmpsciuo   integer,             -- Ciudad
   ecmpszono   integer,             -- Zona Oficina
   ecmpstlfo   char(20),            -- Numero Telefono Oficina
   ecmpsinte   char(10),            -- Numero Interno
   ecmpstcar   smallint,            -- Tipo de Cargo
   ecmpsdcar   char(60),            -- Descripcion del Cargo
   ecmpsnsal   smallint,            -- Nivel Salarial
   ecmpsning   smallint,            -- Nivel de Ingresos
   ecmpstcre   integer not null,    -- Tipo de Prestamo
   ecmpscmon   smallint not null,   -- Moneda
   ecmpsimpt   dec(14,2) not null,  -- Importe Solicitado
   ecmpsplzo   integer not null,    -- Plazo
   ecmpsuplz   smallint not null,   -- Unidad del Plazo
   ecmpstasa   float not null,      -- Tasa
   ecmpsfpag   smallint,            -- Forma de Pago
   ecmpsppgk   integer,             -- Periodo de Pago Capital
   ecmpsppgi   integer,             -- Periodo de Pago Interes
   ecmpsgrac   integer,             -- Periodo de Gracia
   ecmpsuppg   smallint,            -- Unidad Periodo Pago
   ecmpsdiap   smallint,            -- Dia de Pago
   ecmpsmcuo   dec(14,2),           -- Monto De Cuota
   ecmpscpag   dec(14,2),           -- Capacidad de Pago
   ecmpsnota   char(200),           -- Nota
   ecmpsstat   smallint,            -- Estado Pre-Solicitud
   ecmpsfsta   date,                -- Fecha de Estado
   ecmpspevc   integer,             -- Puntaje de Evaluacion Cualitativa
   ecmpsresp   integer,             -- Oficial Responsable
   ecmpsresa   integer,             -- Oficial Responsable Anterior
   ecmpsnsol   integer,             -- Numero de Solicitud WorkFlow
   ecmpsplaz   smallint,            -- Plaza
   ecmpsagen   smallint,            -- Agencia
   ecmpsuser   char(10),            -- Usuario
   ecmpsncam   integer,             -- Campania
   ecmpsncuo   smallint,            -- Nro. de Cuota
   ecmpsfdes   date,                -- Fecha de Desembolso
   ecmpsfpri   date,                -- Fecha de Primer Pago
   ecmpsspre   float,               -- Spread
   ecmpstase   float,               -- Tasa
   ecmpsiupg   float,               -- Importe Ultimo Pago
   ecmpscomp   char(3),             -- Complemento de Documento
   ecmpsnori   char(3),             -- Origen Documento
   ecmpsfpro   date,                -- Fecha de Proceso
   ecmpscven   integer,             -- Cod. Vendedor
   ecmpscpro   smallint,            -- Codigo del Producto
   ecmpstage   smallint,            -- Tipo 1=gbage 2=uiage 3=ecage Prospecto
   ecmpsinsv   dec(14,2),           -- 
   ecmpsegsv   dec(14,2),           -- 
   ecmpsgtia   char(300),           -- 
   ecmpscapp   dec(14,2),           -- 
   ecmpsstus   smallint,            -- 
   ecmpscpdr   smallint,            -- 
   ecmpsvdes   dec(14,2),           -- Valor Destino Credito
   ecmpscmov   smallint,            -- Moneda del Valor
   ecmpscclf   smallint,            -- Tipo de Credito
   ecmpsdest   smallint,            -- Destino
   ecmpsnom1   char(30),            -- Primer Nombre
   ecmpsnom2   char(30),            -- Segundo Nombre
   ecmpsape1   char(30),            -- Primer Apellido
   ecmpsape2   char(30),            -- Segundo Apellido
   ecmpsape3   char(30),            -- Apellido Casada
   ecmpsapo1   dec(14,2),           -- Aporte Inicial
   ecmpsapo2   dec(14,2),           -- Bono
   ecmpsmmax   dec(14,2),           -- Monto Maximo MDI
   ecmpspmax   smallint,            -- Plazo Maximo MDI
   ecmpspmia   float,               -- Porcentaje Minimo Aporte Inicial
   ecmpscrws   integer              -- Definicion
  );

 create index ix2506_1 on ecmps  (ecmpsnpso);


----------------------------------------------------------------------------
--                        Maestro de solicitudes
----------------------------------------------------------------------------

create table ecmso -- Maestro de solicitudes
  (
   ecmsonsol   integer not null,    -- Numero de solicitud
   ecmsotipo   smallint not null,   -- Tipo de solicitud (Nuevo,Repr,Fusion)
   ecmsonpro   smallint,            -- Id Proceso Solicitud(Workflow)
   ecmsonpre   integer,             -- Nro Prestamo
   ecmsofsol   date not null,       -- Fecha de solicitud
   ecmsohsol   char(8),             -- Hora de solicitud
   ecmsocsol   integer not null,    -- Codigo de solicitante gbagecage
   ecmsostat   integer not null,    -- Estado de solicitud
   ecmsocalf   dec(9,3),            -- Calificacion obtenida
   ecmsopmin   dec(9,3) not null,   -- Calificacion minima
   ecmsocrev   dec(9,3),            -- Calificacion a Revision
   ecmsofevl   date,                -- Fecha de evaluacion
   ecmsohevl   char(8),             -- Hora de evaluacion
   ecmsoimpt   dec(14,2) not null,  -- Importe Solicitado
   ecmsocmon   smallint not null,   -- Moneda del Importe
   ecmsorseg   integer,             -- Responsable de Seguimiento
   ecmsorse2   integer,             -- Autorizador o Aprobador
   ecmsonctr   integer,             -- Numero de Contrato
   ecmsomapr   dec(14,2),           -- Monto Aprobado por el Sistema
   ecmsotcam   dec(7,3),            -- Tipo de Cambio
   ecmsotcre   smallint,            -- Tipo de Credito
   ecmsocclf   smallint,            -- Categoria de calificacion
   ecmsoorgr   smallint,            -- Origen de los recursos
   ecmsorubr   smallint,            -- Rubro
   ecmsonlex   integer,             -- Linea financiamiento
   ecmsociiu   integer,             -- Ciiu
   ecmsodest   smallint,            -- Destino de los fondos
   ecmsoddes   char(90),            -- Destino
   ecmsonrlc   integer,             -- Numero Linea de Credito
   ecmsoplzo   integer not null,    -- Plazo
   ecmsouplz   smallint not null,   -- Unidad del Plazo
   ecmsottas   smallint,            -- Tipo de tasa (fija,variable)
   ecmsotsex   smallint,            -- Codigo Tasa Externa(prmprtsex)
   ecmsotasa   float not null,      -- Tasa=ecmsotase+ecmsospre
   ecmsotase   float not null,      -- Tasa Externa
   ecmsospre   float not null,      -- Spread
   ecmsofpag   smallint,            -- Forma de Pago
   ecmsoppgk   integer,             -- Periodo de Pago Capital
   ecmsoppgi   integer,             -- Periodo de Pago Interes
   ecmsograc   integer,             -- Periodo de Gracia
   ecmsouppg   smallint,            -- Unidad Perido Pago CApital
   ecmsodiap   smallint,            -- Dia de pago
   ecmsoiupg   dec(14,2),           -- Importe Ultimo Pago
   ecmsocuot   dec(14,2),           -- Cuota mes referencial
   ecmsofapr   date,                -- Fecha de aprobacion
   ecmsofdes   date,                -- Fecha de desembolso
   ecmsofpri   date,                -- Fecha de primer pago
   ecmsoviac   smallint,            -- Via de la Cuenta
   ecmsoctac   char(13),            -- Cuenta a Debitar
   ecmsodeba   char(1),             -- Debito automatico
   ecmsonmod   smallint,            -- ID Modulo Prestamo
   ecmsoglos   char(500),           -- Glosa
   ecmsoglo2   char(500),           -- Glosa
   ecmsoprio   smallint,            -- Prioridad
   ecmsocpdr   smallint,            -- Codigo Producto
   ecmsopais   integer,             -- Pais
   ecmsodpto   integer,             -- Departamento
   ecmsocprv   integer,             -- Provincia
   ecmsociud   integer,             -- Ciudad
   ecmsozona   integer,             -- Zona
   ecmsocmun   integer,             -- Municipio
   ecmsoambg   smallint,            -- Ambito Geografico
   ecmsougps   smallint,            -- GPS
   ecmsolong   dec(20,10),          -- Longitud
   ecmsolati   dec(20,10),          -- Latitud
   ecmsotdid   smallint,            -- Tipo Identificacion
   ecmsondid   char(10),            -- CI
   ecmsocapt   dec(14,2),           -- Capital de Trabajo
   ecmsoequi   dec(14,2),           -- Equipo
   ecmsoapor   dec(14,2),           -- Aporte propio
   ecmsosupe   dec(14,2),           -- Superficie
   ecmsomrcb   smallint,            -- Marca Baja
   ecmsoplaz   smallint not null,   -- Plaza
   ecmsoagen   smallint not null,   -- Agencia
   ecmsouser   char(3) not null,    -- Usuario Modificacion
   ecmsohora   char(8) not null,    -- Hora Modificacion
   ecmsofpro   date,                -- Fecha de Modificacion
   ecmsosald   dec(14,2),           -- Saldo prestamo a refinanciar ecmsonpre
   ecmsocamp   integer,             -- Numero de Campania
   ecmsomanj   smallint,            -- Manejo
   ecmsofini   date,                -- Fecha Inicio Linea
   ecmsofven   date,                -- Fecha Vencimiento Linea
   ecmsopres   integer,             -- NULL
   ecmsocapn   integer,             -- Capacidad de Pago
   ecmsoimec   char(1),             -- Impacto Ecologico
   ecmsocome   char(600),           -- Comentario
   ecmsodire   char(200),           -- Ubicacion Inversion del Monto Solicitado
   ecmsopcsn   char(1),             -- Primer credito Sistema Financiero
   ecmsocven   integer,             -- Codigo Promotor
   ecmsofdju   date,                -- Fecha Declaracion Jurada
   ecmsoupfc   smallint,            -- Unidad periodo flujo de caja
   ecmsoteva   integer,             -- Tipo de Evaluacion
   ecmsoapo2   dec(14,2),           -- Aporte Propio o Inicial
   ecmsovdes   dec(14,2),           -- Valor del Bien
   ecmsocmov   smallint,            -- Moneda del Valor del Bien
   ecmsoetec   char(15),            -- Entidad Tecnica
   ecmsommax   dec(14,2),           -- Monto Maximo Credito (MDI)
   ecmsopmax   smallint,            -- Plazo Maximo Credito Dias
   ecmsopmia   float,               -- Definicion
   ecmsocrws   integer              -- Definicion
  );

 create unique index ecmso_00 on ecmso  (ecmsonsol);
 create index ecmso_01 on ecmso  (ecmsofsol);
 create index ecmso_02 on ecmso  (ecmsocsol);


----------------------------------------------------------------------------
--                            NO SE UTILIZA
----------------------------------------------------------------------------

create table ecmso1 -- NO SE UTILIZA
  (
   ecmsonsol   integer not null,    -- Numero de solicitud
   ecmsorepr   smallint not null,   -- Marca de Reprogramacion
   ecmsonpre   integer,             -- Nro Prestamo
   ecmsotcli   smallint,            -- Tipo de Cliente
   ecmsofsol   date not null,       -- Fecha de solicitud
   ecmsocpro   integer not null,    -- Codigo de producto
   ecmsocopr   integer,             -- Codigo de operador
   ecmsocsol   integer not null,    -- Codigo de solicitante gbagecage
   ecmsostat   integer not null,    -- Estado de solicitud
   ecmsocalf   dec(9,3),            -- Calificacion obtenida
   ecmsopmin   dec(9,3) not null,   -- Calificacion minima
   ecmsocrev   dec(9,3),            -- Calificacion a Revision
   ecmsoimpt   dec(14,2) not null,  -- Importe Solicitado
   ecmsocmon   smallint not null,   -- Moneda del Importe
   ecmsoimp1   dec(14,2),           -- Importe solicitado 1
   ecmsocmo1   smallint,            -- Moneda del improte 1
   ecmsodctr   dec(14,2),           -- Destino Capital de Trabajo
   ecmsofevl   date,                -- Fecha de evaluacion
   ecmsohevl   char(8),             -- Hora de evaluacion
   ecmsorseg   integer not null,    -- Responsable de Seguimiento
   ecmsorse2   integer,             -- Autorizador o Aprobador
   ecmsonctr   integer,             -- Numero de Contrato
   ecmsocmap   smallint,            -- Codigo Moneda Aprobado
   ecmsomapr   dec(14,2),           -- Monto Aprobado por el Sistema
   ecmsoplza   integer,             -- Plazo Aprobado
   ecmsotcam   dec(7,3),            -- Tipo de Cambio
   ecmsoflat   dec(14,2),           -- Comision Flat
   ecmsotcre   smallint,            -- Tipo de Credito
   ecmsoorgr   smallint,            -- Origen de los recursos
   ecmsorubr   smallint,            -- Rubro
   ecmsociiu   integer,             -- Ciiu
   ecmsodest   smallint,            -- Destino de los fondos
   ecmsoplzo   integer not null,    -- Plazo
   ecmsouplz   smallint not null,   -- Unidad del Plazo
   ecmsotasa   float not null,      -- Tasa=ecmsotase+ecmsospre
   ecmsotase   float not null,      -- Tasa Externa
   ecmsotsex   smallint,            -- Codigo Tasa Externa(prmprtsex)
   ecmsocudb   char(1),             -- Cuota Doble
   ecmsofpag   smallint,            -- Forma de Pago
   ecmsoppgk   integer,             -- Periodo de Pago Capital
   ecmsoppgi   integer,             -- Periodo de Pago Interes
   ecmsograc   integer,             -- Periodo de Gracia
   ecmsouppg   smallint,            -- Unidad Perido Pago CApital
   ecmsofprv   char(1),             -- Forma de Prev. Calif.
   ecmsoclas   smallint,            -- Clasificacion de Tipo de Credito
   ecmsoviac   smallint,            -- Via de la Cuenta
   ecmsoctac   char(13),            -- Cuenta a Debitar
   ecmsodeba   char(1),             -- Debito automatico
   ecmsonmod   smallint,            -- ID Modulo Prestamo
   ecmsomrso   smallint,            -- 0=Garante, 1=Solicitud
   ecmsomrcb   smallint,            -- Marca Baja
   ecmsoplaz   smallint not null,   -- Plaza
   ecmsoagen   smallint not null,   -- Agencia
   ecmsouser   char(3) not null,    -- Usuario Modificacion
   ecmsohora   char(8) not null,    -- Hora Modificacion
   ecmsofpro   date,                -- Fecha de Modificacion
   ecmsonrlc   integer,             -- Numero Linea de Credito
   ecmsonprr   integer,             -- Numero Prestamo Reprogramacion
   ecmsotprr   float not null,      -- Tasa Prestamo Reprogramacion
   ecmsopcta   smallint,            -- Periodo cambio de Tasa
   ecmsopr01   smallint,            -- Deuda en Central de Riesgo
   ecmsopr02   smallint,            -- Deuda Morosa
   ecmsopr03   smallint,            -- Credito otras instituciones
   ecmsodp03   char(20),            -- Descripcion Institucion
   ecmsoiupg   dec(14,2),           -- Importe Ultimo Pago
   ecmsoupct   smallint,            -- Unidad Periodo cambio tasa
   ecmsodpgf   smallint,            -- Dia fijo de Pago
   ecmsocfla   smallint,            -- Comision Flat
   ecmsotpre   smallint,            -- Tipo de Prestamo
   ecmsospre   float,               -- Spread
   ecmsospct   float,               -- spread cambio tasa
   ecmsoglos   char(500),           -- Glosa
   ecmsoglo2   char(250),           -- Glosa
   ecmsoglo3   char(100),           -- Glosa
   ecmsoglo4   char(150),           -- Glosa
   ecmsoglo5   char(50),            -- Glosa
   ecmsoglo6   char(100),           -- Glosa
   ecmsoglo7   char(50),            -- Glosa
   ecmsogtaa   char(30),            -- Glosa Tasa ptmo.Anterior
   ecmsoaleg   char(40),            -- Apoderado Legal
   ecmsorex1   integer,             -- Codigo Abogado
   ecmsorex2   integer,             -- Codigo Notaria
   ecmsonpro   smallint,            -- Id Proceso Solicitud(Workflow)
   ecmsontar   integer,             -- Tarea Actual
   ecmsontaa   integer,             -- Tarea Anterior
   ecmsoftar   date,                -- Fecha Tarea Actual
   ecmsoftaa   date,                -- Fecha Tarea Anterior
   ecmsoreac   char(6),             -- Responsable Actual
   ecmsorean   char(6),             -- Responsable Anterior
   ecmsomdes   smallint,            -- Marca desembolso (0=N 1=S)
   ecmsoprio   smallint,            -- Prioridad
   ecmsomaut   smallint,            -- Marca Autorizacion
   ecmsocpdr   smallint,            -- Codigo Producto
   ecmsoccli   smallint,            -- Clasificacion del Cliente
   ecmsotban   smallint,            -- Tipo de Banca
   ecmsoseco   smallint,            -- Sector economico
   ecmsopais   integer,             -- Pais
   ecmsodpto   integer,             -- Departamento
   ecmsocprv   integer,             -- Provincia
   ecmsociud   integer,             -- Ciudad
   ecmsozona   integer,             -- Zona
   ecmsocmun   integer,             -- Municipio
   ecmsoambg   smallint,            -- Ambito Geografico
   ecmsougps   smallint,            -- GPS
   ecmsolong   dec(20,10),          -- Longitud
   ecmsolati   dec(20,10),          -- Latitud
   ecmsotdid   smallint,            -- Tipo Identificacion
   ecmsondid   char(10),            -- CI
   ecmsolend   char(3),             -- 
   ecmsonruc   char(10),            -- 
   ecmsonomc   char(60),            -- 
   ecmsotper   smallint,            -- 
   ecmsofnac   date,                -- 
   ecmsosexo   smallint,            -- 
   ecmsoeciv   smallint,            -- 
   ecmsonive   smallint,            -- 
   ecmsoprof   smallint,            -- 
   ecmsoddom   char(100),           -- 
   ecmsocdom   integer,             -- 
   ecmsozdom   integer,             -- 
   ecmsotdom   char(20),            -- 
   ecmsotcel   char(20),            -- 
   ecmsonemp   char(60),            -- 
   ecmsorubc   integer,             -- 
   ecmsoacti   smallint,            -- 
   ecmsodact   char(100),           -- 
   ecmsodemp   char(100),           -- 
   ecmsocemp   integer,             -- 
   ecmsozemp   integer,             -- 
   ecmsotemp   char(20),            -- 
   ecmsointe   char(10),            -- 
   ecmsocarg   smallint,            -- 
   ecmsotfax   char(20),            -- 
   ecmsomail   char(100),           -- 
   ecmsotpro   smallint,            -- 
   ecmsoflle   smallint             -- 
  );



----------------------------------------------------------------------------
--                         Maquinario y Equipo
----------------------------------------------------------------------------

create table ecmye -- Maquinario y Equipo
  (
   ecmyensol   integer not null,    -- Nro. solicitud
   ecmyecorr   integer not null,    -- Correlativo
   ecmyeitem   smallint,            -- Item
   ecmyetmaq   smallint,            -- Tipo Maquinaria o Mueble * gbcon=125
   ecmyecant   smallint,            -- Cantidad
   ecmyemarc   char(20),            -- Marca
   ecmyeseri   char(20),            -- Serie
   ecmyevalo   dec(14,2),           -- Valor
   ecmyevalc   dec(14,2)            -- Valor Comercial
  );

 create unique index ecmye_00 on ecmye  (ecmyensol,ecmyecorr,ecmyeitem);


----------------------------------------------------------------------------
--                 Registro de Aprobaciones x Solicitud
----------------------------------------------------------------------------

create table ecnaa -- Registro de Aprobaciones x Solicitud
  (
   ecnaansol   integer not null,    -- Nro. solicitud
   ecnaaniva   smallint not null,   -- Nivel comite aprobacion
   ecnaacomt   integer not null,    -- Cod. comite * ecact=
   ecnaanact   integer not null,    -- Nro. acta
   ecnaafreg   date not null,       -- Fecha de registro
   ecnaantar   integer not null,    -- Cod. tarea
   ecnaaautp   integer,             -- Autorizador
   ecnaastat   smallint             -- 2=Aprobado 3=Rechazado 4=Pase 9=Baja
  );

 create index ecnaa_00 on ecnaa  (ecnaansol,ecnaaniva,ecnaanact);


----------------------------------------------------------------------------
--                       Niveles de Autorizacion
----------------------------------------------------------------------------

create table ecnap -- Niveles de Autorizacion
  (
   ecnapnpro   smallint not null,   -- Cod. Proceso * eccon=20
   ecnapniva   smallint not null,   -- Nivel
   ecnapcmon   smallint not null,   -- Cod. Moneda
   ecnaptcom   smallint not null,   -- Tipo de Comite
   ecnaprani   dec(14,2) not null,  -- Rango Inicial
   ecnapranf   dec(14,2) not null,  -- Rango Final
   ecnapcexc   smallint not null,   -- Cantidad de Excepciones
   ecnapmrcb   smallint not null,   -- Marca 0=Alta 9=Baja
   ecnapuser   char(3) not null,    -- Usuario
   ecnaphora   char(8),             -- Hora
   ecnapfpro   date                 -- Fecha de Proceso
  );

 create index ecnap_00 on ecnap  (ecnapnpro,ecnapniva,ecnapcmon);


----------------------------------------------------------------------------
--                           Notas/Solicitud
----------------------------------------------------------------------------

create table ecnot -- Notas/Solicitud
  (
   ecnotnsol   integer not null,    -- Numero de solicitud
   ecnotcnot   integer not null,    -- Codigo de nota
   ecnotfech   date,                -- Fecha
   ecnotcome   char(250),           -- Comentario
   ecnotplaz   integer,             -- Plaza
   ecnotagen   integer,             -- Agencia
   ecnotuser   char(3),             -- Usuario
   ecnotfpro   date                 -- Fecha de proceso
  );

 create unique index ecnot_00 on ecnot  (ecnotnsol,ecnotcnot);


----------------------------------------------------------------------------
--                              Operadores
----------------------------------------------------------------------------

create table ecopr -- Operadores
  (
   ecoprcopr   integer not null,    -- Codigo de operador
   ecoprnomb   char(40),            -- Nombre del operador
   ecoprtcom   integer,             -- Tipo de comision
   ecoprpcom   dec(9,3),            -- Comision
   ecoprplaz   integer,             -- Plaza
   ecopragen   integer,             -- Agencia
   ecopruser   char(3),             -- Usuario
   ecoprfpro   date                 -- Fecha de proceso
  );

 create unique index ecopr_00 on ecopr  (ecoprcopr);


----------------------------------------------------------------------------
--                       Tipo garantia semoviente
----------------------------------------------------------------------------

create table ecot1 -- Tipo garantia semoviente
  (
   ecot1nsol   integer not null,    -- Nro. Solicitud
   ecot1corr   integer not null,    -- Correlativo
   ecot1item   smallint,            -- Item
   ecot1tesp   smallint not null,   -- Tipo de Especie * gbcon=120
   ecot1raza   smallint not null,   -- Tipo de Raza * gbcon=121
   ecot1cant   smallint not null,   -- Cantidad
   ecot1edad   smallint not null,   -- Edad
   ecot1ueda   smallint not null,   -- Unidad de la edad 1=Meses 2=Anio
   ecot1valo   dec(14,2),           -- Valor
   ecot1valc   dec(14,2)            -- Valor comercial
  );

 create unique index ecot1_00 on ecot1  (ecot1nsol,ecot1corr,ecot1item);


----------------------------------------------------------------------------
--                  Tipo de garantia linea telefonica
----------------------------------------------------------------------------

create table ecot2 -- Tipo de garantia linea telefonica
  (
   ecot2nsol   integer not null,    -- Nro. Solicitud
   ecot2corr   integer not null,    -- Correlativo
   ecot2line   char(20),            -- Nro. Linea telefonica
   ecot2fadq   date,                -- Fecha de Adquisicion Linea
   ecot2ngra   char(20),            -- Nro. Gravameno o Hipoteca
   ecot2fgra   date,                -- Fecha Hipoteca
   ecot2acci   char(20),            -- Nro. Accion telefonica
   ecot2tjta   char(20),            -- Nro. Tarjeta Aportacion
   ecot2cont   char(20),            -- Nro. Contrato
   ecot2duen   char(90),            -- Dueno Linea
   ecot2ulfa   char(10),            -- Ultima Factura Vigente
   ecot2valo   dec(14,2),           -- Valor
   ecot2nser   char(15)             -- Numero de Serie
  );

 create unique index ecot2_00 on ecot2  (ecot2nsol,ecot2corr);


----------------------------------------------------------------------------
--                           Otras garantias
----------------------------------------------------------------------------

create table ecotr -- Otras garantias
  (
   ecotrnsol   integer,             -- Nro. solicitud * ecmso=
   ecotrcorr   integer,             -- Correlativo * ecgar=
   ecotritem   smallint,            -- Item
   ecotrdesc   char(200),           -- Descripcion
   ecotrvalo   dec(14,2),           -- Valor declarado
   ecotrvalc   dec(14,2)            -- Valor consignado
  );

 create unique index ecotr_00 on ecotr  (ecotrnsol,ecotrcorr,ecotritem);


----------------------------------------------------------------------------
--                     Resultado Matriz Alternativa
----------------------------------------------------------------------------

create table ecpal -- Resultado Matriz Alternativa
  (
   ecpalcalt   integer not null,    -- Codigo alternativa
   ecpalcelm   integer not null,    -- Codigo elemento
   ecpalccri   integer not null,    -- Codigo Criterio
   ecpalcpro   integer not null,    -- Codigo Producto
   ecpalpond   dec(8,2),            -- Ponderacion obtenida
   ecpalrmin   dec(14,3),           -- Rango minimo
   ecpalrmax   dec(14,3),           -- Rango MAximo
   ecpaluser   char(3),             -- Usuario
   ecpalhora   char(8),             -- Hora
   ecpalfpro   date                 -- Fecha Proceso
  );

 create unique index ecpal_00 on ecpal  (ecpalcelm,ecpalccri,ecpalcpro,ecpalcalt);
 create index ecpal_01 on ecpal  (ecpalcelm,ecpalccri,ecpalcpro);


----------------------------------------------------------------------------
--                    Productos/Criterios Def. Matri
----------------------------------------------------------------------------

create table ecpcr -- Productos/Criterios Def. Matri
  (
   ecpcrccri   integer not null,    -- Codigo de criterio
   ecpcrcpro   integer not null,    -- Codigo de producto
   ecpcrpond   dec(8,3),            -- Ponderacion
   ecpcrpeso   dec(8,2),            -- Peso
   ecpcrcalf   dec(8,3)             -- No usado
  );

 create unique index ecpcr_00 on ecpcr  (ecpcrccri,ecpcrcpro);
 create index ecpcr_01 on ecpcr  (ecpcrccri);
 create index ecpcr_02 on ecpcr  (ecpcrcpro);


----------------------------------------------------------------------------
--                    Resultado Def. Matriz Elemento
----------------------------------------------------------------------------

create table ecpel -- Resultado Def. Matriz Elemento
  (
   ecpelcelm   integer not null,    -- Codigo elemento
   ecpelccri   integer not null,    -- Codigo Criterio
   ecpelcpro   integer not null,    -- Codigo producto
   ecpelpond   dec(8,3),            -- Ponderacion
   ecpelpeso   dec(8,2),            -- Peso obtenido
   ecpelcalf   dec(8,3)             -- No usado
  );

 create unique index ecpel_01 on ecpel  (ecpelccri,ecpelcpro,ecpelcelm);
 create index ecpel_02 on ecpel  (ecpelccri,ecpelcpro);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecpex -- *** SIN DESCRIPCION ***
  (
   ecpexnpso   integer,             -- Definicion
   ecpexcodi   integer,             -- Definicion
   ecpexdesc   char(200),           -- Definicion
   ecpexauto   char(1)              -- Definicion
  );

 create unique index ecpex_00 on ecpex  (ecpexnpso,ecpexcodi);


----------------------------------------------------------------------------
--                  Tipo garantia plantas permanentes
----------------------------------------------------------------------------

create table ecplan -- Tipo garantia plantas permanentes
  (
   ecplannsol  integer not null,    -- Nro. Solicitud
   ecplancorr  integer not null,    -- Correlativo
   ecplanitem  smallint,            -- Item
   ecplantpla  smallint,            -- Tipo de Plantacion * gbcon=122
   ecplanedad  smallint,            -- Edad de la plantaccion
   ecplanueda  smallint,            -- 1=Meses 2=Anios
   ecplansupe  dec(10,2),           -- Superficie
   ecplanunid  smallint,            -- Unidad de la Superficie * gbcon=92
   ecplanvalo  dec(14,2),           -- Valor
   ecplanvalc  dec(14,2)            -- Valor comercial
  );

 create unique index ecplan_00 on ecplan  (ecplannsol,ecplancorr,ecplanitem);


----------------------------------------------------------------------------
--                     Relacion Proceso y Producto
----------------------------------------------------------------------------

create table ecpmp -- Relacion Proceso y Producto
  (
   ecpmpnpro   smallint,            -- Cod. Proceso
   ecpmpnmod   smallint,            -- Cod. Modulo
   ecpmptcre   smallint,            -- Tipo Producto
   ecpmpuser   char(3) not null,    -- Usuario
   ecpmphora   char(8) not null,    -- Hora
   ecpmpfpro   date                 -- Fecha de Proceso
  );

 create unique index ecpmp_00 on ecpmp  (ecpmpnpro,ecpmpnmod,ecpmptcre);
 create index ecpmp_01 on ecpmp  (ecpmpnpro);


----------------------------------------------------------------------------
--                            NO SE UTILIZA
----------------------------------------------------------------------------

create table ecpon -- NO SE UTILIZA
  (
   ecponnpon   integer,             -- 
   ecponcate   char(10),            -- 
   ecpondesc   char(100),           -- 
   ecponries   integer,             -- 
   ecponuser   char(3),             -- 
   ecponfpro   date,                -- 
   ecponhora   char(8)              -- 
  );



----------------------------------------------------------------------------
--                       Tipo garantia prendarias
----------------------------------------------------------------------------

create table ecpren -- Tipo garantia prendarias
  (
   ecprennsol  integer not null,    -- Nro. solicitud
   ecprencorr  integer not null,    -- Correlativo
   ecprenitem  smallint,            -- Item
   ecprentmer  smallint,            -- Tipo de Mercaderia * gbcon=124
   ecprencant  dec(6,2),            -- Cantidad
   ecprenunid  smallint,            -- Unidad Medida
   ecprenvalu  dec(14,2),           -- Valor Unitario
   ecprenvalo  dec(14,2),           -- Valor
   ecprenvalc  dec(14,2)            -- Valor comercial
  );

 create unique index ecpren_00 on ecpren  (ecprennsol,ecprencorr,ecprenitem);


----------------------------------------------------------------------------
--                            NO SE UTILIZA
----------------------------------------------------------------------------

create table ecpro -- NO SE UTILIZA
  (
   ecpronpro   integer not null,    -- 
   ecprofreg   date not null,       -- 
   ecpronmod   smallint not null,   -- 
   ecproprod   smallint not null,   -- 
   ecprofini   date not null,       -- 
   ecproffin   date not null,       -- 
   ecprodesc   char(500),           -- 
   ecpromrcb   smallint,            -- 
   ecproplaz   smallint not null,   -- 
   ecproagen   smallint not null,   -- 
   ecprouser   char(3) not null,    -- 
   ecprohora   char(8) not null,    -- 
   ecprofpro   date                 -- 
  );

 create unique index ecpro_00 on ecpro  (ecpronpro);


----------------------------------------------------------------------------
--                             Propietarios
----------------------------------------------------------------------------

create table ecprt -- Propietarios
  (
   ecprtnsol   integer not null,    -- Solicitud * ecmso=
   ecprtcorr   integer not null,    -- Correlativo * ecgar=
   ecprtcage   integer not null     -- Cliente * gbage=
  );

 create unique index ecprt_01 on ecprt  (ecprtnsol,ecprtcorr,ecprtcage);


----------------------------------------------------------------------------
--                     Nro proximos (Correlativos)
----------------------------------------------------------------------------

create table ecprx -- Nro proximos (Correlativos)
  (
   ecprxndoc   integer not null     -- Correlativos de documentos digitales
  );



----------------------------------------------------------------------------
--                        PARTICIPACION DE SEGUO
----------------------------------------------------------------------------

create table ecpse -- PARTICIPACION DE SEGUO
  (
   ecpsensol   integer,             -- Codigo de Solicitud
   ecpsecage   integer,             -- Codigo Codeudor Directo
   ecpseedad   smallint,            -- Edad
   ecpsefdju   date,                -- Fecha Declaracion Jurada
   ecpseingr   dec(14,2),           -- Total Ingreso
   ecpsepcob   dec(14,6),           -- Porcentaje Cobertura
   ecpsepsob   dec(14,6),           -- Porcentaje Sobre Prima
   ecpseppri   dec(14,6),           -- Porcentaje Prima Total
   ecpsessdg   smallint             -- Estado Seguro Desgravamen 0=Aprob 9=Rech
  );

 create index ecpse_00 on ecpse  (ecpsensol);
 create index ecpse_01 on ecpse  (ecpsecage);


----------------------------------------------------------------------------
--                      Tipo garantia Puesto Venta
----------------------------------------------------------------------------

create table ecpvta -- Tipo garantia Puesto Venta
  (
   ecpvtansol  integer not null,    -- Nro. Solicitud
   ecpvtacorr  integer not null,    -- Correlativo
   ecpvtapsto  char(10),            -- Nro. Puesto
   ecpvtadire  char(200),           -- Direccion
   ecpvtaasoc  char(100),           -- Nombre Asociacion
   ecpvtaafil  date,                -- Fecha Afiliacion
   ecpvtaupat  char(20),            -- Ultima Patente
   ecpvtavalo  dec(14,2)            -- Valor
  );

 create unique index ecpvta_00 on ecpvta  (ecpvtansol,ecpvtacorr);


----------------------------------------------------------------------------
--                          Motivo de rechazo
----------------------------------------------------------------------------

create table ecrch -- Motivo de rechazo
  (
   ecrchnsol   integer,             -- Solicitud * ecmso=
   ecrchconc   smallint,            -- Concepto * eccon=15
   ecrchdesc   char(1000),          -- Glosa
   ecrchfreg   date,                -- Fecha de registro
   ecrchuser   char(3),             -- Usuario
   ecrchfpro   date,                -- Fecha de proceso
   ecrchhora   char(8)              -- Hora
  );



----------------------------------------------------------------------------
--                              Respuestas
----------------------------------------------------------------------------

create table ecres -- Respuestas
  (
   ecresnres   integer not null,    -- Numero de respuesta
   ecresnsol   integer not null,    -- Numero de solicitud
   ecrescelm   integer not null,    -- Codigo de elemento
   ecresccri   integer not null,    -- Codigo de criterio
   ecrescpro   integer not null,    -- Codigo de producto
   ecrescalt   integer not null,    -- Codigo de alternativas
   ecresvres   dec(14,2),           -- Valor de respuesta
   ecrescalf   dec(9,3)             -- Calificacion
  );

 create unique index ecres_00 on ecres  (ecresnres,ecrescpro,ecrescalt,ecrescelm,ecresccri,ecresnsol);
 create index ecres_01 on ecres  (ecresnres);
 create index ecres_02 on ecres  (ecrescalt,ecrescelm,ecresccri);


----------------------------------------------------------------------------
--                          RECURSOS EXTERNOS
----------------------------------------------------------------------------

create table ecrex -- RECURSOS EXTERNOS
  (
   ecrexcage   integer,             -- Cod. Agenda
   ecrexnomb   char(90),            -- Nombre
   ecrexdire   char(60),            -- Direccion
   ecrextdom   char(20),            -- Telefono Domicilio
   ecrextofi   char(20),            -- Telefono Oficina
   ecrextcel   char(20),            -- Telefono Celular
   ecrexmail   char(40),            -- Correo electronico
   ecrexmrcb   smallint,            -- Marca Baja
   ecrexuser   char(3),             -- Usuario
   ecrexhora   char(8),             -- Hora
   ecrexfpro   date,                -- Fecha Proceso
   ecrexumrc   char(3),             -- Usuario Marca Baja
   ecrexfmrc   date                 -- Fecha Marca Baja
  );



----------------------------------------------------------------------------
--                            NO SE UTILIZA
----------------------------------------------------------------------------

create table ecscr -- NO SE UTILIZA
  (
   ecscrnsol   integer,             -- 
   ecscrcexc   smallint,            -- 
   ecscrtban   smallint,            -- 
   ecscrseco   smallint,            -- 
   ecscrnpon   integer              -- 
  );



----------------------------------------------------------------------------
--                    SEGURO DESGRAVAMEN E INCENDIO
----------------------------------------------------------------------------

create table ecseg -- SEGURO DESGRAVAMEN E INCENDIO
  (
   ecsegnsol   integer,             -- Codigo de Solicitud
   ecsegcsdg   smallint,            -- Cargo seguro desgravamen
   ecsegppri   dec(14,6),           -- Porcentaje prima general
   ecsegmpri   dec(14,6),           -- Monto prima general
   ecsegpprc   dec(14,6),           -- Porcentaje prima calculado
   ecsegmprc   dec(14,6),           -- Monto prima calculado
   ecsegcsob   smallint,            -- Definicion
   ecsegpsob   dec(14,6),           -- Definicion
   ecsegmsob   dec(14,6),           -- Definicion
   ecsegcsin   smallint,            -- Cargo seguro incendio
   ecseguser   char(3),             -- Usuario
   ecseghora   char(8),             -- Hora
   ecsegfpro   date                 -- Fecha de Proceso
  );

 create index ecseg_00 on ecseg  (ecsegnsol);


----------------------------------------------------------------------------
--                   Solicitud aprobacion electronica
----------------------------------------------------------------------------

create table ecses -- Solicitud aprobacion electronica
  (
   ecsesuser   char(3),             -- Usuario destino
   ecsesguid   char(36),            -- Clave unica de la solicitud - GUIID
   ecsesstat   smallint,            -- Estado de la aprobacion
   ecsesusrs   char(3),             -- Usuario solicitante
   ecsesnsol   integer              -- Nro de solicitud a aprobar
  );



----------------------------------------------------------------------------
--                     Seguimiento Tareas Solicitud
----------------------------------------------------------------------------

create table ecsgt -- Seguimiento Tareas Solicitud
  (
   ecsgtntar   integer,             -- Cod. Tarea
   ecsgtnpro   smallint,            -- Cod. Proceso
   ecsgtnsol   integer,             -- Cod. Solicitud
   ecsgtfreg   date,                -- Fecha Registro
   ecsgtresp   char(6),             -- Responsable
   ecsgtobse   char(2000),          -- Observaciones
   ecsgtfini   date,                -- Fecha inicio
   ecsgthori   char(8),             -- Hora de Inicio
   ecsgtffin   date,                -- Fecha Fin
   ecsgthorf   char(8),             -- Hora Final
   ecsgtstat   smallint,            -- Estado
   ecsgtrex1   integer,             -- Recurso Externo
   ecsgtprio   smallint,            -- Prioridad
   ecsgtuser   char(6),             -- Usuario
   ecsgtfpro   date,                -- Fecha Proceso
   ecsgtfape   date,                -- Fecha Apertura de Tarea
   ecsgthora   char(8),             -- Hora
   ecsgttesp   integer,             -- Tipo cambio especial
   ecsgtnesp   integer,             -- Cod. Tarea
   ecsgtcsgt   integer              -- Codigo de Seguimiento ecsrl
  );

 create index ecsgt_01 on ecsgt  (ecsgtnsol,ecsgtntar,ecsgtnpro,ecsgtfreg,ecsgtuser);
 create index ecsgt_02 on ecsgt  (ecsgtntar,ecsgtresp);


----------------------------------------------------------------------------
--                         Prestamos Generados
----------------------------------------------------------------------------

create table ecspr -- Prestamos Generados
  (
   ecsprnsol   integer,             -- Numero de solicitud * ecmsonsol=
   ecsprnpre   integer              -- Numero de prestamo * prmprconv=
  );

 create unique index ecspr_00 on ecspr  (ecsprnsol,ecsprnpre);
 create index ecspr_01 on ecspr  (ecsprnsol);


----------------------------------------------------------------------------
--                     SQL de las Excepciones ecexp
----------------------------------------------------------------------------

create table ecsql -- SQL de las Excepciones ecexp
  (
   ecsqlcodi   integer not null,    -- Cod. Excepcion * ecexp=
   ecsqlnsql   char(3000),          -- SQL
   ecsqlpar1   char(10),            -- Parametro Entrada 1
   ecsqlpar2   char(10),            -- Parametro Entrada 2
   ecsqlpar3   char(10),            -- Parametro Entrada 3
   ecsqlpar4   char(10),            -- Parametro Entrada 4
   ecsqlpar5   char(10),            -- Parametro Entrada 5
   ecsqloper   smallint,            -- Operado de Comparacion ( >,>=,<,<=,= )
   ecsqlvalo   varchar(20),         -- Valor
   ecsqltipo   char(1)              -- Tipo de Dato
  );

 create index ecsql_00 on ecsql  (ecsqlcodi);


----------------------------------------------------------------------------
--                          Tabla de seriales
----------------------------------------------------------------------------

create table ecsrl -- Tabla de seriales
  (
   ecsrltabl   char(5) not null,    -- Nombre tabla
   ecsrlcorr   dec(20,0) not null   -- Correlativo
  );

 create unique index ecsrl_00 on ecsrl  (ecsrltabl);


----------------------------------------------------------------------------
--                       Definicion Flujo Tareas
----------------------------------------------------------------------------

create table ectaf -- Definicion Flujo Tareas
  (
   ectafnpro   smallint,            -- Id Proceso Solicitud * ecmsonsol=
   ectafntar   integer,             -- Id Tarea * ectarntar=
   ectafmfav   smallint,            -- Tipo de tarea (Inicial,Final,Eval.Apro) * ecconcorr=10
   ectafobli   smallint,            -- Tarea obligatoria 0=No  1=Si
   ectafmdoc   smallint             -- Revisar Documento 0=No 1=Si
  );

 create index ectaf_00 on ectaf  (ectafnpro);
 create index ectaf_01 on ectaf  (ectafntar);


----------------------------------------------------------------------------
--                                Tareas
----------------------------------------------------------------------------

create table ectar -- Tareas
  (
   ectarntar   integer,             -- Id Tarea
   ectardesc   char(60),            -- Descripcion
   ectarcres   smallint,            -- Cargo Responsable
   ectarcest   smallint,            -- Permite Cambio Estado
   ectarcana   smallint,            -- Recurso externo 1(Abogado)
   ectarrext   smallint,            -- Recurso externo 2(Notaria)
   ectarract   smallint,            -- Permite Registro Acta
   ectartdur   float,               -- Tiempo Duracion
   ectarmaut   dec(14,2),           -- Monto de la condicion tarea de Riesgo
   ectartipo   smallint             -- Tipo condicion para la tarea de Riesgo
  );

 create unique index ectar_00 on ectar  (ectarntar);


----------------------------------------------------------------------------
--                              TASA BASE
----------------------------------------------------------------------------

create table ectba -- TASA BASE
  (
   ectbatasa   float,               -- Tasa Base
   ectbauser   char(3),             -- Usuario modificacion
   ectbafpro   date,                -- Fecha de proceso
   ectbahora   char(8)              -- Hora de proceso
  );



----------------------------------------------------------------------------
--                          TRAJETA DE CREDITO
----------------------------------------------------------------------------

create table ectcr -- TRAJETA DE CREDITO
  (
   ectcrnsol   integer,             -- Numero de Solicitud
   ectcrtipo   smallint,            -- Tipo de Tarjeta
   ectcrmont   dec(14,2),           -- Monto
   ectcrcmon   smallint,            -- Moneda
   ectcrplaz   char(20),            -- Plaza
   ectcrtasa   dec(9,3),            -- Tasa
   ectcrboni   smallint,            -- Bonificada
   ectcrplbo   char(20)             -- Plazo de bonificacion
  );



----------------------------------------------------------------------------
--                        Usuarios Funcionarios
----------------------------------------------------------------------------

create table ecusf -- Usuarios Funcionarios
  (
   ecusfuser   char(3) not null,    -- Codigo Usuario SFI * adusrusrn=
   ecusfnpro   smallint,            -- Id Proceso Solicitud * ecconcorr=20
   ecusfntar   integer,             -- Id Tarea * ectarntar=
   ecusfgrup   smallint             -- Grupo
  );

 create index ecusf_00 on ecusf  (ecusfuser);
 create index ecusf_01 on ecusf  (ecusfnpro);
 create index ecusf_02 on ecusf  (ecusfntar);


----------------------------------------------------------------------------
--                       Datos adiconales usuario
----------------------------------------------------------------------------

create table ecusr -- Datos adiconales usuario
  (
   ecusrusrn   char(3) not null,    -- Codigo de usuario
   ecusrmail   char(80),            -- Correo electronico
   ecusriapr   dec(14,2),           -- Importe autonomia a Aprobar
   ecusrmapr   smallint,            -- Moneda Importe autonomia a Aprobar
   ecusrisol   dec(14,2),           -- Importe autonomia a Solicitar
   ecusrmsol   smallint             -- Moneda Importe autonomia a Solicitar
  );

 create unique index ecusr_00 on ecusr  (ecusrusrn);


----------------------------------------------------------------------------
--                       *** SIN DESCRIPCION ***
----------------------------------------------------------------------------

create table ecven -- *** SIN DESCRIPCION ***
  (
   ecvennsol   integer not null,    -- Definicion
   ecvencage   integer not null,    -- Definicion
   ecvenmrcb   smallint,            -- Definicion
   ecvenuser   char(3),             -- Definicion
   ecvenhora   char(8),             -- Definicion
   ecvenfpro   date                 -- Definicion
  );

 create unique index ecven_00 on ecven  (ecvennsol,ecvencage);

