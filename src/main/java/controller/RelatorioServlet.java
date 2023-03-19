package controller;

import java.io.IOException;
import java.sql.SQLException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Relatorio;
import persistence.RelatorioDao;
import persistence.GenericDao;

@WebServlet("/relatorio")
public class RelatorioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RelatorioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Relatorio r = new Relatorio();
		
		String atividade = request.getParameter("atividade");
		String vencido = request.getParameter("vencido");
		String d0 =request.getParameter("d0");
		String d1 = request.getParameter("d1");
		String d2 =request.getParameter("d2");
		String d3 =request.getParameter("d3");
		
		
		r = validaRelatorio (atividade, vencido, d0, d1, d2, d3);
		String erro = "";
		String saida = "";
		try {
			if(r == null) {
				erro = "preencha os campos corretamente";
			}else {
				GenericDao gDao = new GenericDao();
				RelatorioDao rDao = new RelatorioDao(gDao);
				saida = rDao.insereRelatorio(r);
			}
			
		}catch(SQLException | ClassNotFoundException e) {
			erro = e.getMessage();
			
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			request.setAttribute("saida", saida);
			request.setAttribute("erro", erro );
			rd.forward(request, response);
			
		}
	}

	private Relatorio validaRelatorio(String tarefa, String vencido, String d0, String d1, String d2, String d3) {
		Relatorio r = new Relatorio();
		
		if(tarefa.equals("") || (vencido.equals("")) || (d0.equals("")) || (d1.equals("")) || (d2.equals("")) || (d3.equals(""))) {
			r = null;
		}else {
			r.setTarefa(tarefa);
			r.setVencido(Integer.parseInt(vencido));
			r.setD0(Integer.parseInt(d0));
			r.setD1(Integer.parseInt(d1));
			r.setD2(Integer.parseInt(d2));
			r.setD3(Integer.parseInt(d3));
				
	}
	
	return r;

	}

}
