package j2ee.projet.web.controller;
import java.security.SecureRandom;
import java.math.BigInteger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import j2ee.projet.domaine.Campaign;
import j2ee.projet.web.bean.UtilisateurBean;

@Controller
public class HomeController {

	final static Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletResponse response) throws IOException{
		logger.info("Affichage de home.jsp");
		return "home";
	}
	
	@RequestMapping(value="/connexion", method=RequestMethod.GET)
	public ModelAndView connexion(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de connexion");
		return new ModelAndView("connexion","command",new UtilisateurBean());
	}

	@RequestMapping(value="/inscription")
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de inscription");
		return new ModelAndView("inscription");
	}
	
	@RequestMapping(value="/nouveau")
	public ModelAndView nouveau(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de création de projet");
		return new ModelAndView("nouveau");
	}
	
	@RequestMapping(value="/projets")
	public ModelAndView projets(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page de création de projet");
		List<Campaign> list = getList();
		
		ModelAndView model = new ModelAndView("projets");
		model.addObject("lists", list);
		return model;
	}
	
	@RequestMapping(value="/projet")
	public ModelAndView projet1(HttpServletResponse response) throws IOException{
		logger.info("Affichage de la page du projet");
		Campaign c =  getProject();
		
		ModelAndView model = new ModelAndView("projet");
		model.addObject("projet", c);
		return model;
	}
	
	private List<Campaign> getList() {
		SecureRandom random = new SecureRandom();
		
		List<Campaign> list = new ArrayList<Campaign>();
		for(int i = 0; i < 20; i++)
		{
			Campaign c = new Campaign();
			c.setTitle(new BigInteger(130, random).toString(10));
			c.setDescription(new BigInteger(130, random).toString(255));
			c.setExpectedamount(Double.parseDouble(new BigInteger(10, random).toString()) );

			c.setDeadline(new java.sql.Date(11,01,1991));
			list.add(c);
		}

		return list;

	}
	
	private Campaign getProject() {
		SecureRandom random = new SecureRandom();
		
		Campaign c = new Campaign();
		c.setTitle("Mon super titre");
		c.setDescription("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae diam turpis. Aenean ornare hendrerit ."
				+ "Cras non nisi commodo, tempus lorem ac, lacinia turpis. Donec consequat tristique  at convallis. Mauris dolor "
				+ "purus, blandit ut magna convallis, varius posuere lorem. Ut sit amet gravida felis. Vestibulum rutrum tortor vestibulum "
				+ "rhoncus viverra.Cras sapien enim, vulputate a fringilla in, vehicula at ligula. Duis fermentum, mauris id " 
				+ " tempor accumsan, elit quam dapibus sapien, at vestibulum dolor metus sed arcu. Etiam ipsum leo, posuere nec laoreet a, "
				+"faucibus vitae nisi. Proin varius tortor vitae urna sodales ullamcorper sit amet vel arcu. Maecenas vulputate nisl odio,"
				+ "quis suscipit enim malesuada a. Donec nec erat viverra, iaculis leo quis, efficitur nisl. Pellentesque sed sagittis"
				+ "lectus. Phasellus tempor orci non viverra finibus. Aenean ac magna fringilla felis tincidunt vestibulum. Nam viverra"
				 + "condimentum risus mollis maximus. Donec finibus tortor nunc, id placerat quam mollis sit amet. Nullam sed  ex."
				 + "Maecenas id nulla ac justo pellentesque dapibus. Duis fringilla malesuada purus, pharetra suscipit felis  id. Aliquam "
				 + "quis faucibus justo. In semper nulla non mattis laoreet. Cum sociis natoque penatibus et magnis dis parturient montes,"
				 + "nascetur ridiculus mus. Praesent mattis pellentesque ex, id venenatis lorem tincidunt et. In gravida dui tortor,"
				 + "ut ultrices justo fermentum non. Morbi vel dui tincidunt, dapibus massa vel, feugiat dui. Vestibulum ante ipsum primis"
				 + "in faucibus orci luctus et ultrices posuere cubilia Curae;");
				
		c.setExpectedamount(500000);

		c.setDeadline(new java.sql.Date(11,01,1991));

		return c;

	}

}
