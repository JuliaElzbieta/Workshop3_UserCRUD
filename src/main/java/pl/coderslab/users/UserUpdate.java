package pl.coderslab.users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserUpdate", value = "/user/edit")
public class UserUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestParameter =request.getParameter("user");
        int userId = Integer.valueOf(requestParameter);

        UserDao userDao = new UserDao();
        User user = userDao.read(userId);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/update.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setUsername(name);
        user.setEmail(email);
        user.setPassword(password);
        UserDao userDao = new UserDao();
        userDao.upload(user);
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
