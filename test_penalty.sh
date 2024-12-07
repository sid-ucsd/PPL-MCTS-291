#!/bin/bash

# Array of penalty values to test
penalty_values=(1.2)

# Iterate over each penalty value
for penalty in "${penalty_values[@]}"; do
    log_file="penalty_${penalty}.log"
    echo "Running with penalty=${penalty}... Output will be saved to ${log_file}"
    python mcts_rollout_emotion.py --temperature 1.2 --penalty "${penalty}" --c 8 --num_it 1 --batch_size 4 > "${log_file}" 2>&1
done

echo "All runs completed. Logs are saved in the current directory."
