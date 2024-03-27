package com.example.servlets;
public class AcuityCalculator {
    public static int calculateAcuityScore(Patient patient) {
        int score = 0;

        if (patient.temperatureF < 97.0 || patient.temperatureF > 99.0) {
            score += 1;
        }

        if (patient.bloodPressureSYS >= 130 || patient.bloodPressureDIA >= 80) {
            score += 2;
        }

        if ("G1".equals(patient.gender)) { // Male
            if (patient.weightLbs < 165 || patient.weightLbs > 200) {
                score += 1;
            }
        } else if ("G2".equals(patient.gender)) { // Female
            if (patient.weightLbs < 130 || patient.weightLbs > 165) {
                score += 1;
            }
        }

        if (patient.medicationField1 != null && !patient.medicationField1.isEmpty()) score += 1;
        if (patient.medicationField2 != null && !patient.medicationField2.isEmpty()) score += 1;
        if (patient.medicationField3 != null && !patient.medicationField3.isEmpty()) score += 1;

        return score;
    }
}