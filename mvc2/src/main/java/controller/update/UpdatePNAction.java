package controller.update;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.action.Action;
import model.dao.UserDAO;
import model.dto.UserDTO;

public class UpdatePNAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();
		
		// 값 받아오기
		String id = request.getSession().getAttribute("LOG").toString();
		UserDTO user = dao.findId(id);
		
		String PN = request.getParameter("PN");
		
		user.setPN(PN);
		if(dao.update(id)) {
			request.setAttribute("msg_update", "success");
			String url="mypageForm";
			request.getRequestDispatcher(url).forward(request, response);
		}else {
			System.out.println("번호수정 실패");
		}
	}
}
