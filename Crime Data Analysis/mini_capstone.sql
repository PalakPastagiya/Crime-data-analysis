select * from crime_dataset;

select distinct DR_NO from crime_dataset;
select distinct AREA_NAME from crime_dataset;
select distinct Crm_Cd from crime_dataset;
select distinct crm_cd,Crm_Cd_Desc from crime_dataset;
select distinct Vict_Age from crime_dataset;
select *  from crime_dataset where Vict_Age=0;
select distinct Vict_Sex from crime_dataset;
select distinct  Premis_Desc from crime_dataset;
select distinct Status from crime_dataset;
select distinct  Location from crime_dataset;
select distinct LAT from crime_dataset;
select distinct LON from crime_dataset;
select distinct Date_Rptd from crime_dataset;
select distinct DATE_OCC from crime_dataset;


select year(Date_Rptd) from crime_dataset;
select distinct Vict_Age from crime_dataset; 
select Premis_Desc from crime_dataset;
select  year(DATE_OCC),crm_cd from crime_dataset;
select count(Premis_Desc),Premis_Desc from crime_dataset
group by Premis_Desc
having count(Premis_Desc)>1;


(select count(Premis_Desc),Premis_Desc from crime_dataset
group by Premis_Desc
having count(Premis_Desc)>1);
 

select count(Premis_Desc),Premis_Desc from crime_dataset
group by Premis_Desc
having count(Premis_Desc)=1;


select Date_Rptd,Crm_Cd_Desc, Status from crime_dataset;


select status,Crm_Cd_Desc from crime_dataset 
group by status,Crm_Cd_Desc;
select * from crime_dataset;


select distinct Status from crime_dataset;
select Date_Rptd,Crm_Cd_Desc, Status from crime_dataset where status ='AO';
select Date_Rptd,Crm_Cd_Desc, Status from crime_dataset where status='IC';
select Date_Rptd,Crm_Cd_Desc, Status from crime_dataset where status='AA';
select Date_Rptd,Crm_Cd_Desc, Status from crime_dataset where status='JO';
select count(Status) ,Status from crime_dataset 
group by Status;

-- DR_NO,Date_Rptd,DATE_OCC,AREA_NAME,Crm_Cd,Crm_Cd_Desc,Vict_Age,Vict_Sex,Premis_Desc,Status,Location,LAT,LON
select distinct crm_cd,Crm_Cd_Desc from crime_dataset;

select Vict_Age from crime_dataset where Vict_Age=0;
select distinct(year(DATE_OCC)) from crime_dataset;
select count(*),monthname(DATE_OCC) from crime_dataset
group by monthname(DATE_OCC);

select count(*),monthname(Date_Rptd) from crime_datasetselect group by monthname(Date_Rptd);
select distinct Crm_Cd,count(*) as c, DATE_OCC from crime_dataset
group by  Crm_Cd,DATE_OCC order by c desc;
select distinct Crm_Cd,count(*) as c, Date_Rptd from crime_dataset
group by  Crm_Cd,Date_Rptd order by c desc;


select * from crime_dataset;

select count(*),dayname(Date_Rptd) from crime_dataset
group by dayname(Date_Rptd);

select count(*) ,Vict_Age from crime_dataset
group by Vict_Age order by Vict_Age;
select count(*) , Vict_Age from crime_dataset
group by Vict_Age order by Vict_Age;


select * from crime_dataset where Vict_Age=0;



select * from crime_dataset where Crm_Cd=330;

select distinct Premis_Desc,count(*) as c from crime_dataset
group by  Premis_Desc order by c desc;


select count(*)as count ,Vict_Sex from crime_dataset
group by Vict_Sex order by count desc;

select count(*),day_delay from (select 
case when Date_Rptd=DATE_OCC then 'Same day reported'
else "Late reported"
end
as day_delay,Date_Rptd from crime_dataset) a
group by day_delay;
select distinct (year(Date_Rptd)) from crime_dataset;
select distinct (year(DATE_OCC)) from crime_dataset;
select count(*) as crime_count,LAT,LON,AREA_NAME from crime_dataset where LAT=LAT and LON=LON
group by LAT,LON,AREA_NAME order by crime_count desc;

select Location from crime_dataset where AREA_NAME='Central';
select count(*) from crime_dataset where Date_Rptd=DATE_OCC;
select * from crime_dataset;

select  count(*) from crime_dataset where Date_Rptd=DATE_OCC;
select count(*) c,dayname(Date_Rptd) from crime_dataset
group by dayname(Date_Rptd) order by c desc ;
select count(*) c ,dayname(DATE_OCC) from crime_dataset
group by dayname(DATE_OCC) order by c desc;
select count(*) as count ,Vict_Age from crime_dataset group by Vict_Age order by count desc;
select count(*) as count ,Location from crime_dataset group by Location order by count desc;
select count(*) as count ,Premis_Desc from crime_dataset group by Premis_Desc order by count desc;


select count( status),status from crime_dataset
group by  status;


select * from crime_dataset;
select count(*) as No_of_crime,monthname(DATE_OCC) month ,year( DATE_OCC)as year from crime_dataset
 group by monthname(DATE_OCC) ,year( DATE_OCC) order by no_of_crime desc

 