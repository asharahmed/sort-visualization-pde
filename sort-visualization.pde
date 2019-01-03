import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

int[] values;
int i = 0;

/**
*
* in-Place swap method, that swaps arr[i] and arr[j]
*
**/

void swap(int[] arr, int first, int second) {
  int a = arr[first];
  arr[first] = arr[second];
  arr[second] = a;
}

/**
* An in-place Fischer Yates Shuffle, that swaps the element at arr[i]
* with a random element.
* Complexity is O(n).
**/
void inPlaceFischerYatesShuffle(int[] arr) {
  Random rnd = ThreadLocalRandom.current();
   for (int i = arr.length - 1; i > 0; i--)
    {
      int index = rnd.nextInt(i + 1);
      swap(arr, index, i);
      
    }
}

void setup() {
  values = new int[width];
  for(int i = 0; i < values.length; i++) {
    values[i] = i;
  }
  inPlaceFischerYatesShuffle(values);
  size(1000,1000); // 1000 numbers to sort.
  
}

void draw() {
  background(0);
  int n = values.length;
  // A standard selection sort algorithm
  // Complexity is O(n^2)
  if(i < values.length) {
    int min = i; 
    for (int j = i+1; j < n; j++) {
      if (values[j] < values[min]) min = j;
    }
    swap(values, min, i);
  } else {
    noLoop();
  }
  i++;
  // TODO: Replace the lines with rectangles, and make them different colours
  
  for(int k = 0; k < values.length; k++) {
        stroke(255);
        line(k, 0, k, height - values[k]);
    }
  
      
  
  
}
