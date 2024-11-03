package persistencia.exceptions;

public class RutaNotFoundException extends RuntimeException {

    public RutaNotFoundException(String message) {
      super(message);
    }

    public RutaNotFoundException(String message, Throwable cause) {
      super(message, cause);
    }
}
