package com.laptrinhjavaweb.repository.customer;

import com.laptrinhjavaweb.dto.BuildingDTO;
import com.laptrinhjavaweb.dto.request.BuildingCreateDTO;
import com.laptrinhjavaweb.entity.BuildingEntity;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface BuildingRepositoryCustomer extends JdbcDaoCustomer<BuildingEntity> {
    List<BuildingEntity> findByCondition(BuildingDTO buildingDTO);
    List<BuildingEntity> getAllUsers(Pageable pageable, BuildingDTO buildingDTO);
    int countTotalItem(BuildingDTO buildingDTO );
    void update(BuildingCreateDTO buildingCreateDTO);
}
