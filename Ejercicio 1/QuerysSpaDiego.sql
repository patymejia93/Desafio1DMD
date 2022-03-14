-- Querys para Spa Diego

-- Segmentar clientes por edad
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaCentro where Edad >=20 and Edad <30
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaCentro where Edad >=30 and Edad <60
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaCentro where Edad >=60

select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaEscalon where Edad >=20 and Edad <30
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaEscalon where Edad >=30 and Edad <60
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaEscalon where Edad >=60

select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaSantaTecla where Edad >=20 and Edad <30
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaSantaTecla where Edad >=30 and Edad <60
select count(*) as SumatoriaJovenes, sum(Ingresos) as Ingresos, sum(PromVisit) as Visitas from dbo.SpaSantaTecla where Edad >=60

-- Segmentar clientes por sexo
select count(*) as Sexo1 from dbo.SpaCentro where Sexo = 0
select count(*) as Sexo1 from dbo.SpaCentro where Sexo = 1

-- Segmentar clientes por servicios utilizados
select count(*) as Sauna from dbo.SpaCentro where Sauna = 1
select count(*) as Masaje from dbo.SpaCentro where Masaje = 1
select count(*) as Hidro from dbo.SpaCentro where Hidro = 1
select count(*) as Yoga from dbo.SpaCentro where Yoga = 1

select count(*) as Sauna from dbo.SpaEscalon where Sauna = 1
select count(*) as Masaje from dbo.SpaEscalon where Masaje = 1
select count(*) as Hidro from dbo.SpaEscalon where Hidro = 1
select count(*) as Yoga from dbo.SpaEscalon where Yoga = 1

select count(*) as Sauna from dbo.SpaSantaTecla where Sauna = 1
select count(*) as Masaje from dbo.SpaSantaTecla where Masaje = 1
select count(*) as Hidro from dbo.SpaSantaTecla where Hidro = 1
select count(*) as Yoga from dbo.SpaSantaTecla where Yoga = 1

-- Segmentar servicios utilizados para el grupo de clientes que mas consumen
select count(*) as Sauna from dbo.SpaCentro where Sauna = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Masaje from dbo.SpaCentro where Masaje = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Hidro from dbo.SpaCentro where Hidro = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Yoga from dbo.SpaCentro where Yoga = 1 and (Edad >= 30 and Edad < 60)

select count(*) as Sauna from dbo.SpaEscalon where Sauna = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Masaje from dbo.SpaEscalon where Masaje = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Hidro from dbo.SpaEscalon where Hidro = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Yoga from dbo.SpaEscalon where Yoga = 1 and (Edad >= 30 and Edad < 60)

select count(*) as Sauna from dbo.SpaSantaTecla where Sauna = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Masaje from dbo.SpaSantaTecla where Masaje = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Hidro from dbo.SpaSantaTecla where Hidro = 1 and (Edad >= 30 and Edad < 60)
select count(*) as Yoga from dbo.SpaSantaTecla where Yoga = 1 and (Edad >= 30 and Edad < 60)