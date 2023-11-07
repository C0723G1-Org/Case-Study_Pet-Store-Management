package com.example.pet.repository;



import com.example.pet.dto.AccountDto;
import com.example.pet.model.Account;
import com.example.pet.model.Role;


import java.util.List;

public interface IAccountRepository {
    void insertAccount(Account account);

    Account selectAccount(int id);

    List<AccountDto> selectAllAccount();

    boolean deleteAccount(int id);

    boolean updateAccount(Account account);
    List<Role> selectRole();
    int selectIdAccount(String username);
    Account check(String username, String password);

}