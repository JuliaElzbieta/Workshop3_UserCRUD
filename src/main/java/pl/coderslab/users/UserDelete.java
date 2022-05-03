package pl.coderslab.users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserDelete", value = "/user/delete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestParameter = request.getParameter("user");
        int userId = Integer.valueOf(requestParameter);
        UserDao userDao = new UserDao();
        User userToDelete = userDao.read(userId);
        request.setAttribute("userToDelete", userToDelete);
        getServletContext().getRequestDispatcher("/users/delete.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String requestParameter = request.getParameter("id");
        int userId = Integer.valueOf(requestParameter);

        UserDao userdao = new UserDao();
        userdao.delete(userId);
        response.sendRedirect(request.getContextPath() + "/user/list");

    }
}
