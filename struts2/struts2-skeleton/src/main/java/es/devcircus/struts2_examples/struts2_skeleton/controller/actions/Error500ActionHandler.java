/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package es.devcircus.acl.controller.actions;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author adriannovegiltoledo
 */
public class Error500ActionHandler extends ActionSupport {
    
    public Error500ActionHandler() {
    }
    
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
}
