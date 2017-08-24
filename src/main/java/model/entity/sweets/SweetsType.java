package model.entity.sweets;

public enum SweetsType {
    CANDY("Цукерка"), OTHER("Інше");

    String description;

    SweetsType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public static SweetsType parseSweetsType(String name){
        for(SweetsType type : SweetsType.values()){
            if(name.equals(type.toString())){
                return type;
            }
        }
        throw new RuntimeException("Not correct type name");
    }
}
