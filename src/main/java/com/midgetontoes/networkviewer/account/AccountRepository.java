package com.midgetontoes.networkviewer.account;

public interface AccountRepository {
    void createAccount(Account account) throws UsernameAlreadyInUseException;

    Account findAccountByUsername(String username);
}
