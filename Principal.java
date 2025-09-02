/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package codigo;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author gema
 */
public class Principal {

    /**
     * @param args the command line arguments
     */
    
     public static void main(String[] args) throws Exception {
        String ruta1 = "/home/gema/NetBeansProjects/maquina/src/codigo/Lexer.flex";
        String ruta2 = "/home/gema/NetBeansProjects/maquina/src/codigo/LexerCup";
        String[] rutaS = {"-parser", "Sintax", "/home/gema/NetBeansProjects/maquina/src/codigo/Sintax.cup"};
        generar(ruta1, ruta2, rutaS);
    }
    public static void generar(String ruta1, String ruta2, String[] rutaS) throws IOException, Exception{
        File archivo;
        archivo = new File(ruta1);
        JFlex.Main.generate(archivo);
        archivo = new File(ruta2);
        JFlex.Main.generate(archivo);
        java_cup.Main.main(rutaS);
        
        Path rutaSym = Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        Files.move(
                Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/sym.java"), 
                Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/sym.java")
        );
        Path rutaSin = Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/Sintax.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/Sintax.java"), 
                Paths.get("/home/gema/NetBeansProjects/maquina/src/codigo/Sintax.java")
        );
    }
}
