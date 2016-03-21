package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
@NamedQueries(value={
	@NamedQuery(name="rechercherUtilisateurParMailEtMdp", query="select u.nom from Utilisateur u where u.mail like :mail and u.mdp like :mdp")
})

public class Utilisateur implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5304351969161437813L;

	@Id
	@Column(name = "ID_USER")
	private int id;

	@Column(name = "LOGIN")
	private String login;

	@Column(name = "PASSWORD")
	private String mdp;
	
	@Column(name = "FIRSTNAME")
	private String prenom;
	
	@Column(name = "LASTNAME")
	private String nom;

	@Column(name = "MAILADRESS")
	private String mail;

	@Column(name = "BIRTHDATE")
	private Date dateNaiss;
	
	@Column(name = "SEX")
	private int sexe;

	public int getId() {
		return id;
	}

	public String getLogin() {
		return login;
	}

	public String getMdp() {
		return mdp;
	}

	public String getPrenom() {
		return prenom;
	}

	public String getNom() {
		return nom;
	}

	public String getMail() {
		return mail;
	}

	public Date getDateNaiss() {
		return dateNaiss;
	}

	public int getSexe() {
		return sexe;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setDateNaiss(Date dateNaiss) {
		this.dateNaiss = dateNaiss;
	}

	public void setSexe(int sexe) {
		this.sexe = sexe;
	}

	
}