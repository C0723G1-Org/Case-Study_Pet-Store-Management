package com.example.pet.service.impl;


import com.example.pet.dto.AccountDto;
import com.example.pet.model.Account;
import com.example.pet.model.Role;
import com.example.pet.repository.IAccountRepository;
import com.example.pet.repository.impl.AccountRepository;
import com.example.pet.service.IAccountService;


import java.util.List;

public class AccountService implements IAccountService {
    private final IAccountRepository accountRepository = (IAccountRepository) new AccountRepository();
    @Override
    public void insertAccount(Account account) {
        accountRepository.insertAccount(account);
    }

    @Override
    public Account selectAccount(int id) {
        return accountRepository.selectAccount(id);
    }

    @Override
    public List<AccountDto> selectAllAccount() {
        return accountRepository.selectAllAccount();
    }

    @Override
    public boolean deleteAccount(int id) {
        return accountRepository.deleteAccount(id);
    }

    @Override
    public boolean updateAccount(Account account) {
        return accountRepository.updateAccount(account);
    }

    @Override
    public List<Role> selectRole() {
        return accountRepository.selectRole();
    }

    @Override
    public int selectIdAccount(String username) {
        return accountRepository.selectIdAccount(username);
    }

    @Override
    public Account check(String username, String password) {
        return accountRepository.check(username,password);
    }
}