package br.com.caelum.mvc.filtro;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter("/*")
public class MeuFiltro implements Filter {

	@Override
	public void destroy() {
	// TODO Auto-generated method stub
	
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	// TODO Auto-generated method stub
	
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
	throws IOException, ServletException {
		System.out.println("Entrei no filtro");
		chain.doFilter(req, resp);
		System.out.println("Sai do filtro");
	}
	
}