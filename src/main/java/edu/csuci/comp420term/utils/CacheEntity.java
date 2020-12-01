package edu.csuci.comp420term.utils;

import java.time.Duration;
import java.time.Instant;
import java.util.Objects;

public class CacheEntity<E> {

    public static final Duration DEFAULT_CACHE_LIFE = Duration.ofMinutes(30);
    private final E cachedEntity;
    private final Instant cachedTime;
    private final Duration lifeSpan;

    public CacheEntity(E cachedEntity, Duration lifeSpan) {
        Objects.requireNonNull(cachedEntity);
        Objects.requireNonNull(lifeSpan);
        this.cachedEntity = cachedEntity;
        this.lifeSpan = lifeSpan;
        this.cachedTime = Instant.now();
    }

    public CacheEntity(E cachedEntity) {
        this(cachedEntity, DEFAULT_CACHE_LIFE);
    }

    public boolean isExpired() {
        final Duration timeSinceCache = Duration.between(this.cachedTime, Instant.now());
        return timeSinceCache.compareTo(lifeSpan) >= 0;
    }

    public E get() {
        if (isExpired()) throw new IllegalStateException("The cache for this entity is expired");
        return cachedEntity;
    }

}
