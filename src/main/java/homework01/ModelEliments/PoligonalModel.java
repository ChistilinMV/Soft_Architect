package homework01.ModelEliments;

import java.util.ArrayList;
import java.util.List;

public class PoligonalModel {
    public List<Poligon> Poligons;
    public List<Texture> Textures;

    public PoligonalModel(List<Texture> Textures) {
        this.Textures = Textures;
        this.Poligons = new ArrayList<>();
    }
}
