#!/bin/bash
echo "What are you going to do?"
read action
start_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "Started at $start_time"
echo "Press Enter when you've completed the task..."
read
end_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "Ended at $end_time"

# Calculate duration in seconds
start_seconds=$(date -d "$start_time" "+%s")
end_seconds=$(date -d "$end_time" "+%s")
duration_seconds=$((end_seconds - start_seconds))

# Format duration as HH:MM:SS
hours=$((duration_seconds / 3600))
minutes=$(( (duration_seconds % 3600) / 60 ))
seconds=$((duration_seconds % 60))
duration=$(printf '%02d:%02d:%02d' $hours $minutes $seconds)

echo "You spent $duration on '$action'."
echo "Reflect on the task you just completed:"
read reflection
echo "How can you improve as you embark on your next task?"
read improvement

log_entry="----------------------------------------
Date: $(date +"%Y-%m-%d %H:%M:%S")
Action: $action
Start Time: $start_time
End Time: $end_time
Duration: $duration
Reflection: $reflection
Improvement: $improvement
----------------------------------------"

echo "$log_entry" >> ~/ari_log.txt
echo "Reflection saved in 'ari_log.txt'. Ready for the next task."
