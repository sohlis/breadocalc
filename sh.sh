#!/bin/bash

# Ask the user for the amount of flour and hydration percentage
read -p "Enter the amount of flour in grams: " flour
read -p "Enter the hydration percentage: " hydration

# Calculate the typical proportions of salt and yeast
salt=$(echo "0.03 * $flour" | bc -l)
yeast=$(echo "0.0075 * $flour" | bc -l)

# Calculate the amount of water needed
water=$(echo "$flour * $hydration / 100" | bc -l)

# Round the values to 1 decimal place
flour=$(printf "%.1f" $flour)
water=$(printf "%.1f" $water)
salt=$(printf "%.1f" $salt)
yeast=$(printf "%.1f" $yeast)

# Output the recipe
echo "\n"
echo "Bread Recipe:"
echo "============="
echo "Flour: $flour grams"
echo "Water: $water grams"
echo "Salt: $salt grams"
echo "Yeast: $yeast grams"
echo "\n"
