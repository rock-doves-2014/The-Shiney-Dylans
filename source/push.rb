percent = 0
time = rand(0.01..0.04)
(1..100).each{|x| sleep(time); print "Submitting your score...#{percent+=1}%\r"}
puts
print "Successfully Submitted."
system 'git add -A > /dev/null 2>&1'
system 'git commit -m "Updated High Scores" > /dev/null 2>&1'
system 'git push origin online_updater > /dev/null 2>&1'