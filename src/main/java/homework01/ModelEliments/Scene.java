package homework01.ModelEliments;

import homework01.Stuff.Type;

import java.util.ArrayList;
import java.util.List;

public class Scene {
    public int Id;
    public List<PoligonalModel> Models;
    public List<Flash> Flashes;

    public Scene(int id, List<PoligonalModel> models, List<Flash> flashes, List<Camera> cameras) {
        this.Models = models;
        this.Flashes = flashes;
    }

    public Type method1(Type flash) {
        return flash;
    }

    public Type method2(Type model, Type Flash) {
        return model;
    }
}
