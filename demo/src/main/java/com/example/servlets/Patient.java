package com.example.servlets;

public class Patient {
    String firstName;
    String lastName;
    int age;
    String gender; // "G1" for Male, "G2" for Female
    double weightLbs;
    double temperatureF; 
    int bloodPressureSYS; 
    int bloodPressureDIA; 
    String medicationField1;
    String medicationField2;
    String medicationField3;

    public Patient(String firstName, String lastName, int age, String gender, double weightLbs, double temperatureF, int bloodPressureSYS, int bloodPressureDIA, String medicationField1, String medicationField2, String medicationField3) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.gender = gender;
        this.weightLbs = weightLbs;
        this.temperatureF = temperatureF;
        this.bloodPressureSYS = bloodPressureSYS;
        this.bloodPressureDIA = bloodPressureDIA;
        this.medicationField1 = medicationField1;
        this.medicationField2 = medicationField2;
        this.medicationField3 = medicationField3;
    }
}
