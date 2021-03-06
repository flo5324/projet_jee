package j2ee.projet.domaine;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "NEWS")
@NamedQuery(name="rechercherNewsParCampagne", query="select n from News n where n.id_campaign like :id_campaign")
public class News implements Serializable{
private static final long serialVersionUID = -5116225850894993173L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_NEWS")
	private int id;
	
	@Column(name = "TITLE")
	private String title;
	
	@Column(name = "MESSAGE")
	private String message;
	
	@Column(name = "PUBLISHED")
	private Date published;
	
	@Column(name = "ID_USER")
	private int id_user;
	
	@Column(name = "ID_CAMPAIGN")
	private int id_campaign;

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

	public int getId_user() {
		return id_user;
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

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public void setId_campaign(int id_campaign) {
		this.id_campaign = id_campaign;
	}
}
