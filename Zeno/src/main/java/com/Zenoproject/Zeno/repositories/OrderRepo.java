package com.Zenoproject.Zeno.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Zenoproject.Zeno.models.Order;

@Repository
public interface OrderRepo extends CrudRepository<Order, Long> {

}
