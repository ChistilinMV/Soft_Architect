package homework02;

public class GemGenerator extends ItemFabric {
    @Override
    public iGameItem createItem() {
        return new GemReward();
    }
}
