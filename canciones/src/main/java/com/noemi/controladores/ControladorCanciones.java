package com.noemi.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.noemi.modelos.Cancion;
import com.noemi.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import java.util.List;
import com.noemi.modelos.Artista;
import com.noemi.servicios.ServicioArtistas;

@Controller
public class ControladorCanciones {

	@Autowired
	private ServicioCanciones servicio;
	
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model model ) {
		model.addAttribute("listaCanciones", servicio.ObtenerTodasLasCanciones());
		
		return "canciones.jsp";
		
		}
	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable("idCancion")Long idCancion,Model model) {
		Cancion cancion = servicio.obtenerCancionPorId(idCancion);
		
		model.addAttribute("cancion",cancion);
		return "detalleCancion.jsp";
	}
	//Agregar canciones
	@GetMapping("/canciones/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute("cancion")Cancion cancion) {
		return "agregarCancion.jsp";
	}
	
	@PostMapping("/canciones/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute("cancion")Cancion cancion, BindingResult result) {
		
		
		if (result.hasErrors()) {
			return "agregarCancion.jsp";
		}
	
		servicio.agregarCancion(cancion);
		return "redirect:/canciones";
	}




@GetMapping("/canciones/formulario/editar/{idCancion}")
public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion, Model model) {
    Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);
    if (cancion == null) {
        return "redirect:/canciones";
    }
    model.addAttribute("cancion", cancion);
    return "editarCancion.jsp";
}

@PostMapping("/canciones/procesa/editar/{idCancion}")
public String procesarEditarCancion(
        @Valid @ModelAttribute("cancion") Cancion cancion, 
        BindingResult result, 
        @PathVariable("idCancion") Long idCancion) {
        
    if (result.hasErrors()) {
        return "editarCancion.jsp";
    }
    cancion.setId(idCancion); 
    servicioCanciones.actualizaCancion(cancion);
    return "redirect:/canciones";
}


import org.springframework.web.bind.annotation.DeleteMapping;


@DeleteMapping("/canciones/eliminar/{idCancion}")
public String procesarEliminarCancion(@PathVariable("idCancion") Long idCancion) {
    servicioCanciones.eliminaCancion(idCancion);
    return "redirect:/canciones";
}

@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicioCanciones;

    @Autowired
    private ServicioArtistas servicioArtistas;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        model.addAttribute("listaCanciones", servicioCanciones.obtenerTodasLasCanciones());
        return "canciones.jsp";
    }

    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(@ModelAttribute("cancion") Cancion cancion, Model model) {
        List<Artista> artistas = servicioArtistas.obtenerTodosLosArtistas();
        model.addAttribute("listaArtistas", artistas);
        return "agregarCancion.jsp";
    }

    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listaArtistas", servicioArtistas.obtenerTodosLosArtistas());
            return "agregarCancion.jsp";
        }
        servicioCanciones.actualizaCancion(cancion); 
        return "redirect:/canciones";
    }
}