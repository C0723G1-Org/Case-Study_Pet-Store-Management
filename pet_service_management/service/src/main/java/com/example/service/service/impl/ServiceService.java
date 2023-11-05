package com.example.service.service.impl;

import com.example.service.model.Service;
import com.example.service.repository.IServiceRepository;
import com.example.service.repository.impl.ServiceRepository;
import com.example.service.service.IServiceService;

import java.sql.SQLException;
import java.util.List;

public class ServiceService implements IServiceService {
    private final IServiceRepository serviceRepository= new ServiceRepository();

    @Override
    public void insertService(Service service) throws SQLException {
        serviceRepository.insertService(service);
    }

    @Override
    public Service selectService(int id) {
        return serviceRepository.selectService(id);
    }

    @Override
    public List<Service> selectAllService() {
        return serviceRepository.selectAllService();
    }

    @Override
    public boolean deleteService(int id) throws SQLException {
        return serviceRepository.deleteService(id);
    }

    @Override
    public boolean updateService(Service service) throws SQLException {
        return serviceRepository.updateService(service);
    }

    @Override
    public List<Service> searchByName(String name) {
        return serviceRepository.searchByName(name);
    }



}
