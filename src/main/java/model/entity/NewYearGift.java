package model.entity;

import model.entity.sweets.Sweets;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class NewYearGift {
    private List<Sweets> sweets = new ArrayList<Sweets>();
    private int weightInGrams = 0;
    private static volatile NewYearGift instance;

    public static NewYearGift getInstance() {
        if(instance == null){
            synchronized (NewYearGift.class){
                if (instance == null){
                    instance = new NewYearGift();
                }
            }
        }
        return instance;
    }

    private NewYearGift(){}

    public void addToGift(Sweets sweets){
        this.sweets.add(sweets);
        weightInGrams += sweets.getWeightInGrams();
    }

    public List<Sweets> findSweetsWithSuchSugarWarehouse(int minSugarWarehouseInPercent, int maxSugarWarehouseInPercent){
        List<Sweets> result = new ArrayList<Sweets>();
        for(Sweets sweets : this.sweets){
            if(sweets.getSugarWarehouseInPercent() >= minSugarWarehouseInPercent &&
                    sweets.getSugarWarehouseInPercent() <= maxSugarWarehouseInPercent){
                result.add(sweets);
            }
        }
        return result;
    }

    public void sortByType(){
        Collections.sort(sweets, Sweets.COMPARE_BY_TYPE);
        //Collections.sort(sweets, Collections.reverseOrder(Sweets.COMPARE_BY_TYPE));
    }

    public void sortByName(){
        Collections.sort(sweets, Sweets.COMPARE_BY_NAME);
        //Collections.sort(sweets, Collections.reverseOrder(Sweets.COMPARE_BY_NAME));
    }

    public void sortByWeight(){
        Collections.sort(sweets, Sweets.COMPARE_BY_WEIGHT);
        //Collections.sort(sweets, Collections.reverseOrder(Sweets.COMPARE_BY_WEIGHT));
    }

    public void sortBySugarWarehouse(){
        Collections.sort(sweets, Sweets.COMPARE_BY_SUGAR_WAREHOUSE);
        //Collections.sort(sweets, Collections.reverseOrder(Sweets.COMPARE_BY_SUGAR_WAREHOUSE));
    }

    public List<Sweets> getSweets() {
        return sweets;
    }

    public int getWeightInGrams() {
        return weightInGrams;
    }

    public double getWeightInKilograms(){
        return (double)weightInGrams/1000;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for(Sweets sweets : this.sweets){
            sb.append(sweets.toString()).append('\n');
        }
        sb.append("загальна вага: " + this.weightInGrams);
        return sb.toString();
    }
}
