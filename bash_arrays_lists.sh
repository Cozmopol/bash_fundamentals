array=("item1" "item2" "item3" "item4")
# Selcecting a particular item
echo ${array[2]}
# Counting all the items
echo ${#array[@]}
# Slicing an array
echo ${array[@]:0:2}

x="here_and_back_again"
# idea behind string splicing ${string:start:length} 
# starting from a point
echo ${x:4}
# using an length with a start point
echo ${x::4}
# using start and length
echo ${x:5:4}