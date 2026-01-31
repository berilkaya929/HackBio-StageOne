# Mini Essay

To solve the protein molecular weight calculation task in R, I first identified the core requirement of the problem: calculating the total molecular weight of a protein sequence using predefined amino acid weights, while ensuring the function is robust to invalid inputs.

As a first step, I created a lookup table for amino acid molecular weights using a named numeric vector in R. In this structure, each amino acid’s one-letter code serves as the name, and its corresponding molecular weight in Dalton is the value. This choice allows efficient and readable access to molecular weights through vector indexing.

Next, I defined a custom function that accepts a protein sequence as input, with a default value set to my name, “Beril,” as required by the task. To ensure consistency, the input sequence is converted to uppercase so that differences in letter case do not affect the calculation.

The protein sequence is then split into individual amino acids using the strsplit() function, transforming the string into a character vector. This step enables element-wise validation and weight calculation.

To handle invalid inputs, I implemented a validation step that checks whether every character in the sequence corresponds to a valid amino acid present in the lookup table. If any non-protein character (such as “B”) is detected, the function immediately returns 0, in accordance with the task instructions. This ensures the function behaves predictably and avoids partial or misleading calculations.

If all characters are valid, the molecular weights of the amino acids are summed to obtain the total protein weight in Dalton. Finally, the result is converted to kiloDalton by dividing by 1000, and the value is returned as the output.

This step-by-step approach results in a clear, robust, and reusable function that accurately calculates protein molecular weight while handling edge cases appropriately.