# library
import matplotlib.pyplot as plt
 
# create data
#names='groupA', 'groupB', 'groupC', 'groupD',
#size=[12,11,3,30]

names = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
size = [#forward
		42, 10, 488, 11, 
		578, 10, 525, 9, 
		#backward
		3, 53, 559, 706, 
		44, 571, 730, 50, 
		558, 707, 50, 109, 34] #21

# Create a circle for the center of the plot
my_circle=plt.Circle( (0,0), 0.7, color='white')


# Give color names
#plt.pie(size, labels=names, colors=['#ff0ff0','green','blue','skyblue'])
plt.pie(size, colors=['skyblue','skyblue', '#0D47A1', 'skyblue', 
									'#0D47A1','skyblue', '#0D47A1', 'skyblue',
									'pink', 'pink', '#4C0805','#4C0805',
									'pink', '#B80F0A', '#4C0805', 'pink',
									'#B80F0A','#4C0805','pink','pink','pink'])

p=plt.gcf()
p.gca().add_artist(my_circle)
#plt.show() 

plt.subplots_adjust(bottom=0)
#plt.show()

plt.savefig('../donut.eps', format='eps', dpi=1000, bbox_inches='tight', pad_inches=0.1)


#42 10 488 11 578 10 525 9 3 53 559 706 44 571 730 50 558 707 50 109 34
