package DATOS;

import java.sql.*;
import java.util.ArrayList;

public class Usuario {
    int ID;
    String Nombre, Apellido, Direccion;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }
    
    
    public ArrayList<Usuario> getListUsuarios() throws SQLException, ClassNotFoundException{
        Usuario ObjUsu;
        ArrayList<Usuario> ListUser=new ArrayList<>();
        
        Conexion objCon = new Conexion();
        Connection Con = objCon.obtener();
        ResultSet resultado;
        resultado = Con.createStatement().executeQuery("Select ID,Nombre,Apellido,Direccion from persona");
        while(resultado.next()){
            ObjUsu = new Usuario();
            ObjUsu.ID = Integer.parseInt(resultado.getString("ID"));
            ObjUsu.setNombre(resultado.getString("Nombre"));
            ObjUsu.setApellido(resultado.getString("Apellido"));
            ObjUsu.setDireccion(resultado.getString("Direccion"));
            ListUser.add(ObjUsu);
        }
        return ListUser;
        
    }
    
     public boolean addNewUser(Usuario Obj) throws SQLException, ClassNotFoundException{
      
        Conexion objCon = new Conexion();
        Connection Con = objCon.obtener();
        String query="Insert into persona values (?,?,?,?)";
        PreparedStatement ps = Con.prepareStatement(query);
        ps.setInt(1, Obj.getID());
        ps.setString(2, Obj.getNombre());
        ps.setString(3, Obj.getApellido());
        ps.setString(4, Obj.getDireccion());
        
        return ps.executeUpdate()>0;
    }
     
         public boolean deleteUser(Usuario Obj) throws SQLException, ClassNotFoundException{
      
        Conexion objCon = new Conexion();
        Connection Con = objCon.obtener();
        String query="delete from persona where id = (?)";
        PreparedStatement ps = Con.prepareStatement(query);
        ps.setInt(1, Obj.getID());
        
        return ps.executeUpdate()>0;
    }    
}

