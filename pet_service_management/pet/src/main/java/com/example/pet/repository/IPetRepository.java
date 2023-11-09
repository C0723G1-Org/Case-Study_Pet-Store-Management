package com.example.pet.repository;

import com.example.pet.dto.PetDTO;
import com.example.pet.model.Pet;

import java.sql.SQLException;
import java.util.List;

public interface IPetRepository {
    public void insertPet(Pet pet) throws SQLException;

    public Pet selectPet(int id) throws SQLException;

//    public List<PetDTOselectAllPet>();

    List<PetDTO> selectAllPet();

    public boolean deletePet(int id) throws SQLException;

    public boolean updatePet(Pet pet) throws SQLException;
    List<Pet> searchByName(String name);
}
