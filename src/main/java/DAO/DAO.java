package DAO;

import Beans.BeanException;
import Beans.User;

import java.sql.SQLException;

public interface DAO {
    public boolean Login(User user) throws BeanException;
}
