package com.laptrinhjavaweb.repository.customer;

import java.util.List;

public interface JdbcDaoCustomer<T> {
    List<T> findByCondition(String sql);
    public StringBuilder sqlSearch(Object object);
    void update(Object object);
}
