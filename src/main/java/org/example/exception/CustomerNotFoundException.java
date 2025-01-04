package org.example.exception;

public class CustomerNotFoundException extends RuntimeException
{
    public CustomerNotFoundException (int customertableId) {
        super("customertableId Not Found " + customertableId);
    }
}
