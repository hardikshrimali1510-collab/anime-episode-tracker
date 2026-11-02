#!/bin/bash
# main.sh – L12 Anime Episode Tracker
# Menu-driven shell script (while loop + case)
cd "$(dirname "$0")" || exit 1
source lib/functions.sh

case "$1" in
    --help)   show_help; exit 0 ;;
    --backup) do_backup; exit 0 ;;
    --cron)   cron_task; exit 0 ;;
esac

while true; do
    echo
    echo '========== ANIME EPISODE TRACKER =========='
    echo '1) Update episodes watched'
    echo '2) Show % complete with a text progress bar (printf)'
    echo '3) List completed and dropped series'
    echo '4) Estimate remaining binge time (24 min per episode, bc)'
    echo '5) Sort series by progress'
    echo "6) View data"
    echo "7) Backup data (tar.gz)"
    echo "8) View activity log"
    echo "0) Exit"
    read -p "Choose an option: " ch
    case "$ch" in
        1) feature_1 ;;
        2) feature_2 ;;
        3) feature_3 ;;
        4) feature_4 ;;
        5) feature_5 ;;
        6) view_data ;;
        7) do_backup ;;
        8) view_log ;;
        0) echo "Bye!"; break ;;
        *) echo "Invalid choice, try again." ;;
    esac
done
