public class AcuityCalculator {

    public static int calculateAcuity(int age, int painLevel, String condition, String dietaryVariable, boolean fallRisk) {
        int acuityScore = 0;

        if (age >= 65) {
            acuityScore += 2;
        } else if (age <= 12) {
            acuityScore += 1;
        }

        if (fallRisk) {
            acuityScore += 1; 
        }

        acuityScore += getConditionScore(condition);

        acuityScore += getDietaryScore(dietaryVariable);

        acuityScore += getPainScore (painLevel);


        return acuityScore;
    }

    private static int getConditionScore(String condition) {
        if (condition == null) return 0;

        return switch (condition) {
            case "Flu" -> 1;
            case "Allergy" -> 1;
            case "Migraine" -> 1;
            case "Broken Arm" -> 2;
            case "Broken Bone" -> 2;
            case "Low Blood Pressure" -> 2;
            case "UTI" ->2;
            case "Asthma" -> 2;
            case "Bronchitis" -> 2;
            case "Diabetes" -> 3;
            case "Upper respiratory Infection" -> 3;
            case "Hypertension" -> 3;
            case "Seizure"->4;
            case "Stroke" -> 4;
            case "Pneumonia" -> 4;
            case "Respiratory failure" -> 5;
            case "Heart Failure" -> 5;
            case "Cancer" -> 5;
            default -> 0; 


            
        };
    }

    private static int getDietaryScore(String dietaryVariable) {
        if (dietaryVariable == null) return 0;

        return switch (dietaryVariable) {
            case "None" -> 0;
            case "Moderate" -> 1;
            case "Severe" -> 2;
            default -> 0;
        };

    }

    private static int getPainScore (int painLevel) {

        if (painLevel >= 8) {
            return 5; // Severe pain
        } else if (painLevel >= 6) {
            return 4; // Moderate to severe pain
        } else if (painLevel >= 4) {
            return 3; // Moderate pain
        } else if (painLevel >= 2) {
            return 2; // Mild to moderate pain
        } else if (painLevel >= 1) {
            return 1; // Mild pain
        } else {
            return 0; // No pain
        }
    }

}

// Things to add ->  more condition cases, option for multiple conditions
/*  
 * Added a new method getDietaryScore to calculate the score based upon dietary variables.
 * Added a new metjod getPainScore to calculate the score assuming pain level is on a 0-10 scale.
 * (Pain levels 8-10 are severe, resulting in an acuity score of 5.)
 * Added new parameter boolen fallrisk to represent fall risk based upon true or false ( is true = 1)
 * added more condition cases to the condition score. (1/1/24)
 * ------------
 * 
 */