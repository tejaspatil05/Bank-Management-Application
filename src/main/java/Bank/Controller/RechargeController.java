 package Bank.Controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Bank.Dao.BankInterface;
import Bank.Dao.BankInterfaceImplementation;
import Bank.Model.Recharge;

/**
 * Servlet implementation class RechargeController
 */
@WebServlet("/RechargeController")
public class RechargeController extends HttpServlet {
//	List<Recharge> lst;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RechargeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
//    	lst=new LinkedList<Recharge>();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		int bal = 0;
		Recharge r1;
		HttpSession session = request.getSession();
		List<Recharge> lst = new LinkedList<Recharge>();
		int i = 0;
		BankInterfaceImplementation bdao = new BankInterfaceImplementation();
		String number = (request.getParameter("contactNo"));
		String card = request.getParameter("card");
		double amount = Double.parseDouble(request.getParameter("amt"));
		int acc_num = (int) session.getAttribute("AccNo");
		
		session.setAttribute("nom", number);
		session.setAttribute("amt", amount);

		double recharge_amt=(double)session.getAttribute("amt");
	
		int ac_no=(int) session.getAttribute("AccNo");
		double balance=bdao.GetBalance(ac_no);
		System.out.println(balance+"  BAlance ");
		if(amount<balance)
		{
		
		r1 = new Recharge(number, card, amount, acc_num);

		i = bdao.Recharge(r1,ac_no);

		
		if (i > 0) {
			
			response.sendRedirect("SuccessfullyRecharge.jsp");
		} 
		
		
		
		
		else {
			response.sendRedirect("RechargeError.jsp");

		}
		}
		else {
			response.sendRedirect("NoBalance.jsp");

		}
	}

}
