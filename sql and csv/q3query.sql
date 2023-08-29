
select  sum(p.amount), cy.country from payment p
join customer c on p.customer_id=c.customer_id
join address a on a.address_id=c.address_id
join city ct on ct.city_id=a.city_id
join country cy on ct.country_id=cy.country_id
group by cy.country
order by sum(p.amount) desc
--check the total payment amount by country 