package edu.csuci.comp420term.utils;

import java.time.Duration;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

public class EntityCache<K, V> {
    public static final Duration DEFAULT_CACHE_LIFE = Duration.ofMinutes(30);

    private final Map<K, CachedEntity<V>> cache;

    public EntityCache() {
        this.cache = new HashMap<>();
    }

    public synchronized void cache(K key, V entity, Duration lifespan) {
        final CachedEntity<V> cachedEntity = new CachedEntity<>(entity, lifespan);
        this.cache.put(key, cachedEntity);
    }

    public synchronized void cache(K key, V entity) {
        final CachedEntity<V> cachedEntity = new CachedEntity<>(entity);
        this.cache.put(key, cachedEntity);
    }

    public synchronized Optional<V> get(K key) {
        return this.cache.containsKey(key) ? getEntityFromCache(key) : Optional.empty();
    }

    public synchronized void removeFromCache(K key) {
        this.cache.remove(key);
    }

    public synchronized void clearCache() {
        this.cache.clear();
    }

    private Optional<V> getEntityFromCache(K key) {
        final CachedEntity<V> cachedEntity = this.cache.get(key);
        return cachedEntity.isExpired() ? Optional.empty() : Optional.of(cachedEntity.get());
    }

    private static class CachedEntity<E> {

        private final E cachedEntity;
        private final Instant cachedTime;
        private final Duration lifeSpan;

        public CachedEntity(E cachedEntity, Duration lifeSpan) {
            Objects.requireNonNull(cachedEntity);
            Objects.requireNonNull(lifeSpan);
            this.cachedEntity = cachedEntity;
            this.lifeSpan = lifeSpan;
            this.cachedTime = Instant.now();
        }

        public CachedEntity(E cachedEntity) {
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

}
