package com.example.pet.service.impl;

import com.example.pet.model.Pet;
import com.example.pet.repository.IPetRepository;
import com.example.pet.repository.impl.PetRepository;
import com.example.pet.service.IPetService;

import java.sql.SQLException;
import java.util.List;

public class PetService implements IPetService {
    private final IPetRepository petRepository= new PetRepository();

    @Override
    public void insertPet(Pet pet) throws SQLException {
        petRepository.insertPet(pet);
    }

    @Override
    public Pet selectPet(int id) throws SQLException {
        return petRepository.selectPet(id);
    }

    @Override
    public List<Pet> selectAllPet() {
        return petRepository.selectAllPet();
    }

    @Override
    public boolean deletePet(int id) throws SQLException {
        return petRepository.deletePet(id);
    }

    @Override
    public boolean updatePet(Pet pet) throws SQLException {
        return petRepository.updatePet(pet);
    }

    @Override
    public List<Pet> searchByName(String name) {
        return petRepository.searchByName(name);
    }


}
