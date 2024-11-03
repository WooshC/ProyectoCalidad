package persistencia.exceptions;

import java.util.ArrayList;
import java.util.List;

public class IllegalOrphanException extends Exception {
    private final List<String> messages; // Hacer el campo final

    public IllegalOrphanException(List<String> messages) {
        super((messages != null && !messages.isEmpty() ? messages.get(0) : null));
        if (messages == null) {
            this.messages = new ArrayList<>();
        } else {
            this.messages = new ArrayList<>(messages); // Hacer una copia de la lista proporcionada
        }
    }

    public List<String> getMessages() {
        return messages;
    }
}
