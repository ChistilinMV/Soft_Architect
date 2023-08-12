package homework01.ModelEliments;

import homework01.Stuff.Point3D;

import java.util.ArrayList;
import java.util.List;

public class PoligonalModel {
    public List<Poligon> Poligons;
    public List<Texture> Textures;

    public PoligonalModel(List<Texture> Textures) {
        this.Textures = Textures;
        Poligons = new ArrayList<>();
        List<Point3D> Result = new ArrayList();
        Poligons.add(new Poligon(Result));
    }
}
