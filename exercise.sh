# SHELL Script

1.  if
```
#! /bin/bash

read -p "Please input your score: " a 
if ((a < 60)) ; then
    echo "You didn`t pass the exam."
else
    echo "good! You passed the exam."
fi
```

2. elif
```
#! /bin/bash

read -p "Please input your score: " a 
if ((a < 60)) ; then
    echo "You didn`t pass the exam."
elif ((a > 60)) && ((a < 85)); then
    echo "Good! You passed the exam."
else
    echo "Very good! Your score is very high!"
fi
```

3.
  -lt ( < )（小于），-gt ( > )（大于），-le ( <= )（小于等于），-ge ( => )（大于等于），-eq ( = )（等于），-ne ( != )（不等于） 
