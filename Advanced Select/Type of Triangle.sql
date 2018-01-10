select case

    /* Note: since you can't have a triangle if the double of any given side is greater than 
    all sides added together
    ie, A x2 cannot be greater than all edges added together, otherwise this CANNOT form a triangle */
    when 2 * greatest(a,b,c) >= (a+b+c) 
    then "Not A Triangle"
    
    when a=b and a=c                     
    then "Equilateral"
    
    when a=b or a=c or b=c              
    then "Isosceles"
    
    else "Scalene"
    
    end 
    
from triangles
