package model.entity.sweets;

import java.util.Comparator;

public class Sweets {
    private SweetsType sweetsType = SweetsType.CANDY;
    private String name;
    private int weightInGrams;
    private int sugarWarehouseInPercent;


    public Sweets(SweetsType sweetsType, String name, int weightInGrams, int sugarWarehouseInPercent) {
        this.sweetsType = sweetsType;
        this.name = name;
        this.weightInGrams = weightInGrams;
        this.sugarWarehouseInPercent = sugarWarehouseInPercent;
    }

    public SweetsType getSweetsType() {
        return sweetsType;
    }

    public String getName() {
        return name;
    }

    public int getWeightInGrams() {
        return weightInGrams;
    }

    public int getSugarWarehouseInPercent() {
        return sugarWarehouseInPercent;
    }

    public static final Comparator<Sweets> COMPARE_BY_TYPE = new Comparator<Sweets>() {
        public int compare(Sweets o1, Sweets o2) {
            return o1.getSweetsType().ordinal() - o2.getSweetsType().ordinal();
        }
    };

    public static final Comparator<Sweets> COMPARE_BY_NAME = new Comparator<Sweets>() {
        public int compare(Sweets o1, Sweets o2) {
            return o1.getName().compareTo(o2.getName());
        }
    };

    public static final Comparator<Sweets> COMPARE_BY_WEIGHT = new Comparator<Sweets>() {
        public int compare(Sweets o1, Sweets o2) {
            return o1.getWeightInGrams() - o2.getWeightInGrams();
        }
    };

    public static final Comparator<Sweets> COMPARE_BY_SUGAR_WAREHOUSE = new Comparator<Sweets>() {
        public int compare(Sweets o1, Sweets o2) {
            return o1.getSugarWarehouseInPercent() - o2.getSugarWarehouseInPercent();
        }
    };

    @Override
    public String toString() {
        return sweetsType.toString().toLowerCase() + " " + name +
                " (вага: " + weightInGrams + " грам, цукор: " + sugarWarehouseInPercent + "%);";
    }
}
