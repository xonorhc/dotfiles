#!/usr/bin/env bash

DATA_DIR="dotfiles"
BACKUP_DIR="$HOME/Dropbox/dotfiles/binas"

datestamp=$(date +'%Y-%m-%d')
timestamp=$(date +'%H%M')

function perform_backups() {
  SUFFIX=$1
  FINAL_BACKUP_DIR="$BACKUP_DIR/$datestamp$SUFFIX"

  if ! mkdir -p "$FINAL_BACKUP_DIR"; then
    exit 1
  fi

  tar --exclude=".git" -cv -J -f "$FINAL_BACKUP_DIR"/"$DATA_DIR"_"$datestamp"_"$timestamp".tar.xz "$HOME/.$DATA_DIR"
}

DAY_OF_WEEK_TO_KEEP=5
DAYS_TO_KEEP=3
WEEKS_TO_KEEP=3

# MONTHLY BACKUPS
DAY_OF_MONTH=$(date +%d)

if [ "$DAY_OF_MONTH" -eq 1 ]; then
  find "$BACKUP_DIR" -maxdepth 1 -mtime +1 -name "*-monthly" -exec rm -rf '{}' ';'
  perform_backups "-monthly"
  exit 0
fi

# WEEKLY BACKUPS
DAY_OF_WEEK_TO_KEEP=5
DAY_OF_WEEK=$(date +%u) #1-7 (Monday-Sunday)

if [ "$DAY_OF_WEEK" = $DAY_OF_WEEK_TO_KEEP ]; then
  find "$BACKUP_DIR" -maxdepth 1 -mtime +1 -name "*-weekly" -exec rm -rf '{}' ';'
  perform_backups "-weekly"
  exit 0
fi

# DAILY BACKUPS
find "$BACKUP_DIR" -maxdepth 1 -mtime +1 -name "*-daily" -exec rm -rf '{}' ';'
perform_backups "-daily"
