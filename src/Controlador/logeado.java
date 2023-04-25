package Controlador;

public class logeado {
    private int idUsuario,idEmpleado;
    private String nombre, acceso, telefono, correo;
    public logeado(String nombre,String acceso,String telefono,String correo,int idUsuario,int idEmpleado){
        this.acceso=acceso;
        this.telefono=telefono;
        this.correo=correo;
        this.idUsuario=idUsuario;
        this.idEmpleado=idEmpleado;
        this.nombre=nombre;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAcceso() {
        return acceso;
    }

    public void setAcceso(String acceso) {
        this.acceso = acceso;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
}
