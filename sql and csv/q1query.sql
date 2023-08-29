select  date(p.payment_date) as payment_date, cy.country, sum(p.amount) from payment p
join customer c on p.customer_id=c.customer_id
join address a on a.address_id=c.address_id
join city ct on ct.city_id=a.city_id
join country cy on ct.country_id=cy.country_id
where cy.country = 'France' or cy.country='India' or cy.country='United States'
group by cy.country,date(p.payment_date)
order by date(p.payment_date)
--find the daily sum of payment of 3target countries
