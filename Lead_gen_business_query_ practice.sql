select sum(amount), charged_datetime
from billing
where month(charged_datetime) = 3 and year(charged_datetime) = 2012;


select clients.first_name, clients.last_name, clients.client_id, sum(billing.amount)
from clients
join billing
on clients.client_id = billing.client_id
where clients.client_id = 2;

select clients.first_name, clients.last_name, sites.domain_name
from clients
join sites
on clients.client_id = sites.client_id
where clients.client_id = 10;

select concat(clients.first_name, clients.last_name) as client, year(sites.created_datetime) as year, month(sites.created_datetime) as month, count(sites.site_id) as total
from sites
join clients
on clients.client_id = sites.client_id
where clients.client_id = 20
group by year(sites.created_datetime), month(sites.created_datetime);

select count(sites.domain_name) as leads, leads.registered_datetime
from leads
join sites
on sites.site_id = leads.site_id
where leads.registered_datetime between '2011/1/1' and '2011/2/15';

select concat(clients.first_name , clients.last_name) as client, count(leads.leads_id) as leads
from leads
join sites
on leads.leads_id = sites.site_id
join clients
on sites.site_id = clients.client_id
where leads.registered_datetime between '2011/1/1' and '2011/12/31'
group by clients.client_id;

select concat(clients.first_name , clients.last_name) as client, count(leads.leads_id) as leads, leads.registered_datetime
from leads
join sites
on leads.leads_id = sites.site_id
join clients
on sites.site_id = clients.client_id
where  month(leads.registered_datetime) between 1 and 6 and year(leads.registered_datetime) = 2011
group by clients.client_id;


select clients.client_id, concat(clients.first_name , clients.last_name) as client, sites.domain_name, leads.registered_datetime, count(leads.leads_id) as leads
from leads
join sites
on leads.leads_id = sites.site_id
join clients
on sites.site_id = clients.client_id
where leads.registered_datetime between '2011/1/1' and '2011/12/31'
group by clients.client_id;


select clients.client_id, concat(clients.first_name , clients.last_name) as client, sites.domain_name, leads.registered_datetime, count(leads.leads_id) as leads
from leads
join sites
on leads.leads_id = sites.site_id
join clients
on sites.site_id = clients.client_id
group by clients.client_id;

select sum(billing.amount) as total, concat(clients.first_name , clients.last_name) as client, month(charged_datetime) as month, year(charged_datetime) as year
from billing
join clients
on billing.client_id = clients.client_id
group by clients.client_id
order by clients.client_id;

select concat(clients.first_name , clients.last_name) as client, group_concat(" ", sites.domain_name, " ") as sites
from clients
join sites
on sites.client_id = clients.client_id
group by clients.client_id;



