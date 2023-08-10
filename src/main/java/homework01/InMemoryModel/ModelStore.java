package homework01.InMemoryModel;

import homework01.ModelEliments.Camera;
import homework01.ModelEliments.Flash;
import homework01.ModelEliments.PoligonalModel;
import homework01.ModelEliments.Scene;

import java.util.ArrayList;
import java.util.List;

public class ModelStore implements IModelChanger {
    public List<PoligonalModel> Models;
    public List<Scene> Scenes;
    public List<Flash> Flashes;
    public List<Camera> Cameras;
    private List<IModelChangeObserver> changeObservers;

    public ModelStore(List<IModelChangeObserver> changeObservers) {
        this.changeObservers = changeObservers;
        this.Models = new ArrayList<>();
        this.Scenes = new ArrayList<>();
        this.Flashes = new ArrayList<>();
        this.Cameras = new ArrayList<>();
    }

    public Scene GetScena(int scene) {
        return null;
    }

    @Override
    public void NotifyChange(IModelChanger sender) {

    }
}
