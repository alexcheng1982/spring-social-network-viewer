package com.midgetontoes.networkviewer.signup;

import javax.inject.Inject;
import javax.validation.Valid;

import com.midgetontoes.networkviewer.account.Account;
import com.midgetontoes.networkviewer.account.AccountRepository;
import com.midgetontoes.networkviewer.account.UsernameAlreadyInUseException;
import com.midgetontoes.networkviewer.signin.SignInUtils;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.web.ProviderSignInUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignupController {

	private final AccountRepository accountRepository;

	@Inject
	public SignupController(AccountRepository accountRepository) {
		this.accountRepository = accountRepository;
	}

	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public ModelAndView signupForm(WebRequest request) {
		Connection<?> connection = ProviderSignInUtils.getConnection(request);
        SignupForm signupForm = null;
		if (connection != null) {
			request.setAttribute("message", "Your " + StringUtils.capitalize(connection.getKey().getProviderId()) + " account is not associated with a Spring Social Showcase account. If you're new, please sign up.", WebRequest.SCOPE_REQUEST);
            signupForm = SignupForm.fromProviderUser(connection.fetchUserProfile());
		} else {
            signupForm = new SignupForm();
		}
        return new ModelAndView("signup", "signup", signupForm);
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@Valid @ModelAttribute("signup") SignupForm form, BindingResult formBinding, WebRequest request) {
		if (formBinding.hasErrors()) {
			return null;
		}
		Account account = createAccount(form, formBinding);
		if (account != null) {
			SignInUtils.signin(account.getUsername());
			ProviderSignInUtils.handlePostSignUp(account.getUsername(), request);
			return "redirect:/";
		}
		return null;
	}

	private Account createAccount(SignupForm form, BindingResult formBinding) {
		try {
			Account account = new Account(form.getUsername(), form.getPassword(), form.getFirstName(), form.getLastName());
			accountRepository.createAccount(account);
			return account;
		} catch (UsernameAlreadyInUseException e) {
			formBinding.rejectValue("username", "user.duplicateUsername", "already in use");
			return null;
		}
	}

}
