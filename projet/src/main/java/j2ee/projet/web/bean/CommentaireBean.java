package j2ee.projet.web.bean;

import java.sql.Date;

import j2ee.projet.domaine.Utilisateur;

public class CommentaireBean {
	
	private int id;
	
	private String title;
	
	private String message;
	
	private Date published;
	
	private int id_campaign;
	
	private Utilisateur utilisateur;

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(UtilisateurBean utilisateur) {
		Utilisateur user = new Utilisateur();
		user.setId(utilisateur.getId());
		user.setMail(utilisateur.getEmail());
		user.setLogin(utilisateur.getLogin());
		user.setMdp(utilisateur.getPwd());
		this.utilisateur = user;
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getMessage() {
		return message;
	}

	public Date getPublished() {
		return published;
	}

	public int getId_campaign() {
		return id_campaign;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setPublished(Date published) {
		this.published = published;
	}

	public void setId_campaign(int id_campaign) {
		this.id_campaign = id_campaign;
	}
}
