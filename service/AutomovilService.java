package service;

import java.util.*;
import model.Automovil;

public class AutomovilService {
    private Map<String, Automovil> hashMap = new HashMap<>();
    private Map<String, Automovil> linkedHashMap = new LinkedHashMap<>();
    private Map<String, Automovil> treeMap = new TreeMap<>();

    public AutomovilService() {
        // Datos de ejemplo
        Automovil a1 = new Automovil("Mazda", "Mazda3", "Rojo");
        Automovil a2 = new Automovil("Toyota", "Corolla", "Blanco");
        Automovil a3 = new Automovil("Chevrolet", "Spark", "Azul");

        // Llenar HashMap (Orden aleatorio/hash)
        hashMap.put(a1.getModelo(), a1);
        hashMap.put(a2.getModelo(), a2);
        hashMap.put(a3.getModelo(), a3);

        // Llenar LinkedHashMap (Orden de inserción)
        linkedHashMap.put(a1.getModelo(), a1);
        linkedHashMap.put(a2.getModelo(), a2);
        linkedHashMap.put(a3.getModelo(), a3);

        // Llenar TreeMap (Orden alfabético por clave: Corolla, Mazda3, Spark)
        treeMap.put(a1.getModelo(), a1);
        treeMap.put(a2.getModelo(), a2);
        treeMap.put(a3.getModelo(), a3);
    }

    public Map<String, Automovil> getHashMap() { return hashMap; }
    public Map<String, Automovil> getLinkedHashMap() { return linkedHashMap; }
    public Map<String, Automovil> getTreeMap() { return treeMap; }
}