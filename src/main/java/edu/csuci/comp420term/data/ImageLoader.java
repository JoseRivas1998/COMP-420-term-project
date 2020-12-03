package edu.csuci.comp420term.data;

import edu.csuci.comp420term.utils.EntityCache;
import javafx.scene.image.Image;

import java.util.Optional;

public class ImageLoader {

    private final EntityCache<String, Image> images;

    public ImageLoader() {
        images = new EntityCache<>();
    }

    public Image loadImage(String url) {
        final Optional<Image> cachedImage = images.get(url);
        if (cachedImage.isPresent()) {
            return cachedImage.get();
        }
        final Image image = new Image(url, true);
        images.cache(url, image);
        return image;
    }

}
