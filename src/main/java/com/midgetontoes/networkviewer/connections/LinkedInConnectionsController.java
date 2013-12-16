package com.midgetontoes.networkviewer.connections;

import com.google.common.collect.Maps;
import org.springframework.social.linkedin.api.LinkedIn;
import org.springframework.social.linkedin.api.NetworkStatistics;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.util.Map;

@Controller
public class LinkedInConnectionsController {
    private LinkedIn linkedIn;

    @Inject
    public LinkedInConnectionsController(LinkedIn linkedIn) {
        this.linkedIn = linkedIn;
    }

    @RequestMapping(value="/connections", method= RequestMethod.GET)
    public String connections(Model model) {
        model.addAttribute("connections", linkedIn.connectionOperations().getConnections());
        return "connections";
    }
}
