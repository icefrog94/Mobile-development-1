
package programming1;

import java.util.Arrays;

public class Array {
    
    public static void main(String[] args) { 
        int[] numbers = {1, 2, 3, 4};
        reverse(numbers);
    }
    
    public static void reverse(int[] input) { 
        System.out.println("original array : " + Arrays.toString(input));
    
    
    if(input == null || input.length <= 1){ 
    return;
  }
    
    for (int i = 0; i < input.length / 2; i++) { 
    int temp = input[i];
            input[i] = input[input.length - 1 - i]; 
            input[input.length - 1 - i] = temp; 
} 
    System.out.println("reversed array : " + Arrays.toString(input));

    }
}


