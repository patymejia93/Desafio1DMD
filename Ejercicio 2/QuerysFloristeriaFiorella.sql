-- Querys para Floristeria Fiorella

-- Segmentar productos mas comprados por depto
select count(Rosas) as Rosas from dbo.SanMiguel where Rosas = 1 
select count(Claveles) as Claveles from dbo.SanMiguel where Claveles = 1 
select count(Girasoles) as Girasoles from dbo.SanMiguel where Girasoles = 1 
select count(Hortensia) as Hortensias from dbo.SanMiguel where Hortensia = 1 
select count(Orquideas) as Orquideas from dbo.SanMiguel where Orquideas = 1 
select count(Carmesi) as Carmesi from dbo.SanMiguel where Carmesi = 1 
select count(Lirios) as Lirios from dbo.SanMiguel where Lirios = 1 
select count(Aurora) as Aurora from dbo.SanMiguel where Aurora = 1 
select count(Tulipanes) as Tulipanes from dbo.SanMiguel where Tulipanes = 1 
select count(Macetas) as Macetas from dbo.SanMiguel where Macetas = 1 
select count(Tierra) as Tierra from dbo.SanMiguel where Tierra = 1 
select count(Globos) as Globos from dbo.SanMiguel where Globos = 1 
select count(Tarjetas) as Tarjetas from dbo.SanMiguel where Tarjetas = 1
select count(Liston) as Liston from dbo.SanMiguel where Liston = 1 

select count(Rosas) as Rosas from dbo.SanSalvador where Rosas = 1 
select count(Claveles) as Claveles from dbo.SanSalvador where Claveles = 1 
select count(Girasoles) as Girasoles from dbo.SanSalvador where Girasoles = 1 
select count(Hortensia) as Hortensias from dbo.SanSalvador where Hortensia = 1 
select count(Orquideas) as Orquideas from dbo.SanSalvador where Orquideas = 1 
select count(Carmesi) as Carmesi from dbo.SanSalvador where Carmesi = 1 
select count(Lirios) as Lirios from dbo.SanSalvador where Lirios = 1 
select count(Aurora) as Aurora from dbo.SanSalvador where Aurora = 1 
select count(Tulipanes) as Tulipanes from dbo.SanSalvador where Tulipanes = 1 
select count(Macetas) as Macetas from dbo.SanSalvador where Macetas = 1 
select count(Tierra) as Tierra from dbo.SanSalvador where Tierra = 1 
select count(Globos) as Globos from dbo.SanSalvador where Globos = 1 
select count(Tarjetas) as Tarjetas from dbo.SanSalvador where Tarjetas = 1
select count(Liston) as Liston from dbo.SanSalvador where Liston = 1 

select count(Rosas) as Rosas from dbo.SantaAna where Rosas = 1 
select count(Claveles) as Claveles from dbo.SantaAna where Claveles = 1 
select count(Girasoles) as Girasoles from dbo.SantaAna where Girasoles = 1 
select count(Hortensia) as Hortensias from dbo.SantaAna where Hortensia = 1 
select count(Orquideas) as Orquideas from dbo.SantaAna where Orquideas = 1 
select count(Carmesi) as Carmesi from dbo.SantaAna where Carmesi = 1 
select count(Lirios) as Lirios from dbo.SantaAna where Lirios = 1 
select count(Aurora) as Aurora from dbo.SantaAna where Aurora = 1 
select count(Tulipanes) as Tulipanes from dbo.SantaAna where Tulipanes = 1 
select count(Macetas) as Macetas from dbo.SantaAna where Macetas = 1 
select count(Tierra) as Tierra from dbo.SantaAna where Tierra = 1 
select count(Globos) as Globos from dbo.SantaAna where Globos = 1 
select count(Tarjetas) as Tarjetas from dbo.SantaAna where Tarjetas = 1
select count(Liston) as Liston from dbo.SantaAna where Liston = 1 

-- Segmentar combinaciones mas repetidas por depto
SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  FROM [FloristeriaFiorella].[dbo].[SanMiguel]
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 1

 SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  FROM [FloristeriaFiorella].[dbo].SanSalvador
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 1

 SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  FROM [FloristeriaFiorella].[dbo].[SantaAna]
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 1

-- Segmentar productos mas comprados por pais
select count(ventasSV.Rosas) as Rosas
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Rosas = 1 group by ventasSV.Rosas

select count(ventasSV.Claveles) as Claveles
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Claveles = 1 group by ventasSV.Claveles

select count(ventasSV.Girasoles) as Girasoles
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Girasoles = 1 group by ventasSV.Girasoles

select count(ventasSV.Hortensia) as Hortensias
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Hortensia = 1 group by ventasSV.Hortensia

select count(ventasSV.Orquideas) as Orquideas
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Orquideas = 1 group by ventasSV.Orquideas

select count(ventasSV.Carmesi) as Carmesi
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Carmesi = 1 group by ventasSV.Carmesi

select count(ventasSV.Lirios) as Lirios
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Lirios = 1 group by ventasSV.Lirios

select count(ventasSV.Aurora) as Auroras
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Aurora = 1 group by ventasSV.Aurora

select count(ventasSV.Tulipanes) as Tulipanes
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Tulipanes = 1 group by ventasSV.Tulipanes

select count(ventasSV.Macetas) as Macetas
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Macetas = 1 group by ventasSV.Macetas

select count(ventasSV.Tierra) as Tierra
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Tierra = 1 group by ventasSV.Tierra

select count(ventasSV.Globos) as Globos
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Globos = 1 group by ventasSV.Globos

select count(ventasSV.Tarjetas) as Tarjetas
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Tarjetas = 1 group by ventasSV.Tarjetas

select count(ventasSV.Liston) as Liston
from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
where ventasSV.Liston = 1 group by ventasSV.Liston

--Segmentar combinaciones mas repetidas por pais.
 SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 1

  SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 2

 SELECT [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
  from (select * from dbo.SanMiguel union all select * from dbo.SanSalvador union all select * from dbo.SantaAna) as ventasSV
  group by [Rosas],[Claveles],[Macetas],[Tierra],[Girasoles],[Hortensia],[Globos],[Tarjetas],
		[Orquideas],[Carmesi],[Lirios],[Aurora],[Tulipanes],[Liston]
 having count(*) > 3
