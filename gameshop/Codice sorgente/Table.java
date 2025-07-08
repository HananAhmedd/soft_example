/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package se_proj;

import java.sql.SQLException;

/**
 *
 * @author jinzo78
 */
public abstract class Table
{
    protected Boolean initialized;
    
    public Boolean getInitialized() {
        return initialized;
    }
    
    public void setInitialized(Boolean initialized) {
        this.initialized = initialized;
    }
    
    public abstract void Finalize() throws SQLException;
}
