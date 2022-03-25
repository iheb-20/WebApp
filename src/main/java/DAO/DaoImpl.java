package DAO;

import Beans.BeanException;
import Beans.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Objects;

public class DaoImpl implements DAO{
    private final DaoFactory daoFactory;

    public DaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }


    @Override
    public boolean Login(User user) throws BeanException {
        try (Connection connection = daoFactory.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("select login,password from t_users;")) {

            while (resultSet.next()) {
                String login = resultSet.getString("Login");
                String password = resultSet.getString("Password");
                if (Objects.equals(user.getLogin(), login) && Objects.equals(user.getPassword(), password)) {
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new BeanException("Invalid Login or password");
    }
}
