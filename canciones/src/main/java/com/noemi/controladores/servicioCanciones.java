package com.noemi.controladores;

/**
 * servicioCanciones
 */
public class servicioCanciones {



public void eliminaCancion(Long id) {
    repositorioCanciones.deleteById(id);
}
}