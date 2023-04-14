package com.laptrinhjavaweb.api.admin;

import com.laptrinhjavaweb.dto.request.AssignmentRequestDTO;
import com.laptrinhjavaweb.dto.request.BuildingCreateDTO;
import com.laptrinhjavaweb.dto.request.BuildingDeleteDTO;
import com.laptrinhjavaweb.dto.response.ResponseDTO;
import com.laptrinhjavaweb.dto.response.StaffResponseDTO;
import com.laptrinhjavaweb.service.impl.AssignmentBuildingService;
import com.laptrinhjavaweb.service.impl.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;
    @Autowired
    private AssignmentBuildingService assignmentBuildingService;

    @PostMapping
    public BuildingCreateDTO createBuilding(@RequestBody BuildingCreateDTO buildingCreateDTO){
        buildingService.save(buildingCreateDTO);
        return buildingCreateDTO;
    }

    @PutMapping
    public BuildingCreateDTO updateBuilding(@RequestBody BuildingCreateDTO buildingCreateDTO){
        buildingService.save(buildingCreateDTO);
        return buildingCreateDTO;
    }

//    @GetMapping("/{buildingid}/staffs")
    @GetMapping("/staffs")
    public ResponseDTO loadStaff(@RequestParam(value = "buildingid") Long buildingId){
        ResponseDTO responseDTO = new ResponseDTO();
        List<StaffResponseDTO> staffResponseDTOS = assignmentBuildingService.findStaffByBuildingId(buildingId);//
        responseDTO.setData(staffResponseDTOS);
        responseDTO.setMessage("success");
        return  responseDTO;
    }

    @PostMapping("/user-assignment")
    public AssignmentRequestDTO handOverBuilding(@RequestBody AssignmentRequestDTO assignmentRequestDTO) {
//        String staffIdOlds = assignmentBuildingService.converterToString(assignmentBuildingService.findStaffIdByBuildingId(assignmentRequestDTO.getBuildingId()));
//        String staffIdNews = assignmentBuildingService.converterToString(assignmentRequestDTO.getStaffId());
//        assignmentBuildingService.handOverBuilding(assignmentRequestDTO.getBuildingId(), staffIdOlds, staffIdNews);
        assignmentBuildingService.handOverBuilding(assignmentRequestDTO);
        return assignmentRequestDTO;
    }

    @DeleteMapping
    public void deleteBuilding (@RequestBody BuildingDeleteDTO buildingDeleteDTO){
        List<Long> buildingIds = buildingDeleteDTO.getBuildingIds();
        buildingService.delete(buildingIds);
    }
}

