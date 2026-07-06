package com.noemi.modelos;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "canciones")
public class Cancion {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Size(min=5, message= "Debe terner al menos 5 caracteres de longitud")
	private String titulo;
	@Size(min=3, message= "Debe terner al menos 3 caracteres de longitud")
	private String artista;
	@Size(min=3, message= "Debe terner al menos 3 caracteres de longitud")
	private String album;
	@Size(min=3, message= "Debe terner al menos 3 caracteres de longitud")
	private String genero;
	@Size(min=3, message= "Debe terner al menos 3 caracteres de longitud")
	private String idioma;
	
	@CreationTimestamp
	@Column(name = "fecha_creacion", updatable = false)
	private LocalDateTime fechaCreacion;
	
	@UpdateTimestamp
	@Column(name = "fecha_actualizacion")
	private LocalDateTime fechaActualizacion;

	public Cancion() {
		
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getArtista() {
		return artista;
	}

	public void setArtista(String artista) {
		this.artista = artista;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public LocalDateTime getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(LocalDateTime fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public LocalDateTime getFechaActualizacion() {
		return fechaActualizacion;
	}

	public void setFechaActualizacion(LocalDateTime fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}
	
	import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "canciones")
public class Cancion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "El titulo no puede estar vacio")
    @Size(min = 2, max = 100, message = "El titulo debe tener entre 2 y 100 caracteres")
    private String titulo;

    @NotBlank(message = "El artista no puede estar vacio")
    private String artista;

    @NotBlank(message = "El álbum no puede estar vacio")
    private String album;

    @NotBlank(message = "El genero no puede estar vacio")
    private String genero;

    @NotBlank(message = "El idioma no puede estar vacio")
    private String idioma;

    @Column(updatable = false)
    private Date fechaCreacion;
    private Date fechaActualizacion;
}

@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "El titulo no puede estar vacio")
    private String titulo;

    @NotBlank(message = "El album no puede estar vacio")
    private String album;

    @NotBlank(message = "El genero no puede estar vacio")
    private String genero;

    @NotBlank(message = "El idioma no puede estar vacio")
    private String idioma;

    @Column(updatable = false)
    private Date fechaCreacion;
    private Date fechaActualizacion;

    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "artista_id")
    private Artista artista;

    public Cancion() {}

    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = new Date();
        this.fechaActualizacion = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.fechaActualizacion = new Date();
    }

    
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getTitulo() { return titulo; }
    public void setTitulo(String titulo) { this.titulo = titulo; }

    public String getAlbum() { return album; }
    public void setAlbum(String album) { this.album = album; }

    public String getGenero() { return genero; }
    public void setGenero(String genero) { this.genero = genero; }

    public String getIdioma() { return idioma; }
    public void setIdioma(String idioma) { this.idioma = idioma; }

    public Date getFechaCreacion() { return fechaCreacion; }
    public void setFechaCreacion(Date fechaCreacion) { this.fechaCreacion = fechaCreacion; }

    public Date getFechaActualizacion() { return fechaActualizacion; }
    public void setFechaActualizacion(Date fechaActualizacion) { this.fechaActualizacion = fechaActualizacion; }

    public Artista getArtista() { return artista; }
    public void setArtista(Artista artista) { this.artista = artista; }