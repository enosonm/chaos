echo "enter "
read host
wget "https://chaos-data.projectdiscovery.io/$host.zip" && 
cat $host.zip && rm -rf $host.zip
echo "stko in progress"
subzy --targets $hosts.com.txt --concurrenct 100 -hide_fails | ./slackcat
echo "done"
