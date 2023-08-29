select concat(a.first_name, ' ', a.last_name) as actor, round(sum(p.amount)) as total_film_rental_amount
	from actor a
join film_actor fa
	on a.actor_id=fa.actor_id
join inventory i
	on fa.film_id=i.film_id
join rental r
	on i.inventory_id=r.inventory_id
join payment p
	on r.rental_id=p.rental_id
group by actor
order by total_film_rental_amount desc
limit 10