//
//  main.m
//  BubbleSort
//
//  Created by Xiulan Shi on 6/15/15.
//  Copyright (c) 2015 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // allow user to input the size of the array...
        int n;
        printf("Enter the total amount of numbers that you would like to sort.\n");
        scanf("%d", &n);
        
        int arr[n];
        // use For Loop to allow user to input the numbers in the array...
        int m;
        for (; n > 0; n--){
            printf("Enter the %d number (input one number and press enter to store it): ", n);
            scanf("%d", &m);
            arr[n-1] = m;
        }
        
        //print out the initial array...
        printf("\n\n Initial Array:");
        for (int i = 0; i < sizeof(arr) / sizeof(int); i++) {
            printf("%d, ", arr[i]);
        }
        //initial boolean set to NO...
        BOOL isSorted = NO;
        //if the Array is not sorted, run While loop...
        while (!isSorted) {
            //be opmistic, set the BOOL to yes...
            isSorted = YES;
            //run the For loop for the array...
            for (int i = 0; i < sizeof(arr) / sizeof(int); i++) {
                //if arr[i] is larger than arr[i+1] and arr[i] is not the last number, swap the position...
                if (arr[i] > arr[i+1] && i!= sizeof(arr) / sizeof(int) - 1){
                    int temp = arr[i+1];
                    arr[i+1] = arr[i];
                    arr[i] = temp;
                    //print out array after each swap
                    isSorted = NO;
                    printf("\n\n Iteration %d:", i);
                    for (int j = 0; j < sizeof(arr) / sizeof(int); j++) {
                        printf("%d, ", arr[j]);
                    }
                }
            }
        }
        
        //print out array when finished
        printf("\n\n Sorted Array:");
        for (int i = 0; i < sizeof(arr) / sizeof(int); i++) {
            printf("%d, ", arr[i]);
        }

    }
    return 0;
}
