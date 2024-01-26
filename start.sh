if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone auto-filter-bot/auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /auto-filter-bot
fi
cd /auto-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
