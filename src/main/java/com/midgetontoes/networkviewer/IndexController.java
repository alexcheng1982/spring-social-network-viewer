package com.midgetontoes.networkviewer;

import com.midgetontoes.networkviewer.account.AccountRepository;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import javax.inject.Provider;
import java.security.Principal;

@Controller
public class IndexController {
    private final Provider<ConnectionRepository> connectionRepositoryProvider;

    private final AccountRepository accountRepository;

    @Inject
    public IndexController(Provider<ConnectionRepository> connectionRepositoryProvider, AccountRepository accountRepository) {
        this.connectionRepositoryProvider = connectionRepositoryProvider;
        this.accountRepository = accountRepository;
    }

    @RequestMapping("/")
    public String home(Principal currentUser, Model model) {
        model.addAttribute("connectionsToProviders", getConnectionRepository().findAllConnections());
        model.addAttribute(accountRepository.findAccountByUsername(currentUser.getName()));
        return "index";
    }

    private ConnectionRepository getConnectionRepository() {
        return connectionRepositoryProvider.get();
    }
}
