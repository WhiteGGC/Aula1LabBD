package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pessoa;

@WebServlet("/pessoa")
public class PessoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PessoaServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("Deu certo!");
		String idParam = request.getParameter("id");
		String nomeParam = request.getParameter("nome");
		String dataParam = request.getParameter("dataNasc");
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		
		List<Pessoa> pessoas = new ArrayList<Pessoa>();
		
		Pessoa pessoa = new Pessoa();
		pessoa.setId(Integer.parseInt(idParam));
		pessoa.setNome(nomeParam);
		pessoa.setData(dataParam);
		pessoas.add(pessoa);
		
		
//		Map<String, String[]> parameterMap = request.getParameterMap();
//		Set<String> keySet = parameterMap.keySet();
//		for(String key:keySet) {
//			String[] param = parameterMap.get(key);
//			System.out.println(param);
//		}
//		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		request.setAttribute("pessoa", pessoa);
		request.setAttribute("pessoas", pessoas);
		rd.forward(request, response);
		
		
		System.out.println(pessoa);
	}

}
