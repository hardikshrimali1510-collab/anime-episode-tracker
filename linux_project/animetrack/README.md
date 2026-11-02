# L12 – Anime Episode Tracker

**Student:** HARDIK SHRIMALI | **Roll:** D57 | **Division:** G | **Enrollment:** 24004501210420

## Problem
Build an episode progress tracker that shows progress bars and estimates binge time.

## Who will use it
Anime fans tracking long-running series.

## Folder structure
- main.sh – menu (run with ./main.sh)
- lib/functions.sh – all functions
- data/ – data files
- reports/ – reports created by the script
- backups/ – tar.gz backups
- logs/ – activity.log and cron.log

## Features
1. Update episodes watched
2. Show % complete with a text progress bar (printf)
3. List completed and dropped series
4. Estimate remaining binge time (24 min per episode, bc)
5. Sort series by progress

## How to run
    cd ~/linux_project/animetrack
    ./main.sh
    ./main.sh --help

## Crontab task
Every day at 9 PM, append today's anime progress summary to progress.log

    0 21 * * * /bin/bash $HOME/linux_project/animetrack/main.sh --cron >> $HOME/linux_project/animetrack/logs/cron.log 2>&1

## Commands used
printf, bc, awk, sed, sort

## What I learned
- Learned to write and execute Bash shell scripts in Linux.
- Practiced reading and updating CSV data using shell commands.
- Used functions, loops, conditions, and input validation.
- Learned to calculate episode progress and remaining viewing time.
- Practiced cron scheduling, activity logging, and tar.gz backups.
