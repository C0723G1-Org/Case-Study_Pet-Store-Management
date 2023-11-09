package com.example.pet.dto;

public class PetDTO {
    private int id;
    private String name;
    private int weight;
    private String descriptions;
    private int idTypePet;
    private int idCustomer;
    private String typePet;
    private String nameCustomer;

    public PetDTO() {
    }

    public PetDTO(int id, String name, int weight, String descriptions, int idTypePet, int idCustomer, String typePet) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.descriptions = descriptions;
        this.idTypePet = idTypePet;
        this.idCustomer = idCustomer;
        this.typePet = typePet;
    }

    public PetDTO(int id, String name, int weight, String descriptions, int idTypePet, int idCustomer, String nameCustomer, String typePet) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.descriptions = descriptions;
        this.idTypePet = idTypePet;
        this.idCustomer = idCustomer;
        this.nameCustomer  =nameCustomer;
        this.typePet = typePet;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public int getIdTypePet() {
        return idTypePet;
    }

    public void setIdTypePet(int idTypePet) {
        this.idTypePet = idTypePet;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getTypePet() {
        return typePet;
    }

    public void setTypePet(String typePet) {
        this.typePet = typePet;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }
}
