package edu.csuci.comp420term.utils;

import java.util.Objects;

public class OrderedPair<T> {

    public final T first;
    public final T second;

    public OrderedPair(T first, T second) {
        Objects.requireNonNull(first);
        Objects.requireNonNull(second);
        this.first = first;
        this.second = second;
    }

    @Override
    public boolean equals(Object obj) {
        boolean result = obj == this;
        if (!result) {
            if (obj == null || obj.getClass() != this.getClass()) {
                result = false;
            } else {
                OrderedPair<?> other = (OrderedPair<?>) obj;
                result = this.first.equals(other.first) && this.second.equals(other.second);
            }
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(first, second);
    }
}
