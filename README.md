
# Act, Reflect, Improve (ARI) - Simple BASH Script

## Overview
The **Act, Reflect, Improve (ARI)** script is a lightweight BASH tool that helps you be more mindful and productive by logging your tasks, reflections, and improvements in a plain text file (`ari_log.txt`).

## How It Works
1. **Act**: Define the task you are going to do and log the start time.
2. **Reflect**: When the task is completed, log the end time, and reflect on how it went.
3. **Improve**: Note one way to improve for the future.
4. **Review**: All actions, reflections, and improvements are saved in `ari_log.txt` for later review.

## Installation
1. **Download the Script**: 
   ```bash
   curl -O https://raw.githubusercontent.com/itsjameszhao/ari/main/ari.sh
   ```
2. **Make it Executable**:
   ```bash
   chmod +x ari.sh
   ```
3. **Run the Script**:
   ```bash
   ./ari.sh
   ```

## Usage Example
```bash
$ ./ari.sh
What are you going to do?
Write the project proposal
Started at 2023-10-20 14:00:00
Press Enter when you've completed the task...

[You complete the task]

Ended at 2023-10-20 15:45:30
You spent 01:45:30 on 'Write the project proposal'.
Reflect on the task you just completed:
I was able to draft the main sections but got distracted by emails.
How can you improve as you embark on your next task?
I will turn off email notifications during focused work.
Reflection saved in 'ari_log.txt'. Ready for the next task.
```

## Log File
All entries are saved in `ari_log.txt` located in your home directory. A typical log entry looks like this:

```
----------------------------------------
Date: 2023-10-20 15:45:30
Action: Write the project proposal
Start Time: 2023-10-20 14:00:00
End Time: 2023-10-20 15:45:30
Duration: 01:45:30
Reflection: I was able to draft the main sections but got distracted by emails.
Improvement: I will turn off email notifications during focused work.
----------------------------------------
```

## Customization
- Change the log file location by editing the line that writes to `ari_log.txt` in the script.
- Add extra prompts, such as focus levels or mood.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
