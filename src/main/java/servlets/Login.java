package servlets;

import Beans.BeanException;
import Beans.User;
import DAO.DAO;
import DAO.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    private DAO daoUser;

    @Override
    public void init() throws ServletException {
        //Getting a DaoFactory instance
        DaoFactory daoFactory = DaoFactory.getInstance();
        //Getting an implementation instance
        this.daoUser = daoFactory.getUtilisateurDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Creation of a new user to compare to database
        User user = new User();

        //Setting login
        try {
            user.setLogin(request.getParameter("Username"));
        } catch (BeanException LoginLengthException) {
            request.setAttribute("LoginLengthException", LoginLengthException.getMessage());
        }

        //Setting password
        user.setPassword(request.getParameter("Password"));

        try {
            //Sign in user
            if (daoUser.Login(user) && user.getLogin().equals("admin")){
                this.getServletContext().getRequestDispatcher("/Administrator.jsp").forward(request, response);
                //if it's a normal user
            }else if (daoUser.Login(user)){
                this.getServletContext().getRequestDispatcher("/UserHomePage.jsp").forward(request, response);
            }
        } catch (BeanException LoginError) {
            //If infos are not found in the database reload and display error message
            request.setAttribute("LoginInfoError", LoginError.getMessage());
            request.setAttribute("User",user);
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}
