package info.windigital.resume.exception;

public class CantCompleteClientRequestException extends RuntimeException {
    public CantCompleteClientRequestException(String s) {
        super(s);
    }

    public CantCompleteClientRequestException(String message, Throwable cause) {
        super(message, cause);
    }

    public CantCompleteClientRequestException(Throwable cause) {
        super(cause);
    }
}
