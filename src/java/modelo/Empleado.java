/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.util.HashMap;

/**
 *
 * @author José Arévalo
 */
public class Empleado extends Persona{
    private String codigo;
    private int id_puesto;
    private Conexion cn;
    
    public Empleado(){}
    public Empleado(String codigo, int id_puesto) {
        this.codigo = codigo;
        this.id_puesto = id_puesto;
    }

    public Empleado(String codigo, int id_puesto, int id, String nombres, String apellidos, String direccion, String telefono, String fechanacimiento) {
        super(id, nombres, apellidos, direccion, telefono, fechanacimiento);
        this.codigo = codigo;
        this.id_puesto = id_puesto;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
    public HashMap drop_sangre(){
    HashMap<String,String> drop = new HashMap();
    try{
        cn = new Conexion();
        String query = "SELECT idPuestos as id,puesto FROM puestos;";
        cn.abrir_conexion();
        ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
        while (consulta.next()){
            drop.put(consulta.getString("id"), consulta.getString("puesto"));
        }
        cn.cerrar_conexion();
    } catch(Exception ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
    public void agregar(){}
}
