package persistencia.exceptions;

public class MenuDelDiaException extends RuntimeException {
    public MenuDelDiaException() {
        super("Error al obtener el menú del día");
    }
}
