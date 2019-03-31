import math
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import *

e=math.exp(1)
Domain = np.linspace(-1, 1, 10000)
y1 = np.emath.power(e, Domain)
y2 = (Domain + 2.0) / (2.0 - Domain)
y3 = (12.0 + 6.0 * Domain + Domain * Domain) / (12.0 - 6.0 * Domain + Domain * Domain)
y4 = (1.0 + Domain)
y5 = (1 + Domain + 0.5 * Domain * Domain)
'''
This function will compute the question (1) 
'''
def PadeApproximation():

    plt.plot(Domain,y1,'blue',linewidth=3,label=r'$e^x$')
    plt.plot(Domain, y2, 'red', linewidth=2, label=r'$R_{1,1}(x)$')
    plt.plot(Domain, y3, 'green', linewidth=2, label=r'$R_{2,2}(x)$')
    plt.plot(Domain, y4, 'black', linewidth=2, label=r'$R_{1,0}(x)$')
    plt.plot(Domain, y5, 'yellow', linewidth=2, label=r'$R_{2,0}(x)$')
    plt.title(r'$Pade\ \ {Approximation \ of \ } \ e^x $',fontsize=16)
    plt.xlabel('x')
    plt.ylabel('y')
    plt.ylim(0,3)
    plt.xlim(-1,1)
    plt.grid(True)
    plt.legend()
    plt.show()
PadeApproximation()
RelativeError3=(np.abs(y3-y1))/y1
RelativeError2=(np.abs(y2-y1))/y1
'''
This function will compute the question (1) 
'''
def RelativeError():
    plt.plot(Domain, RelativeError3, 'blue', linewidth=3, label=r'$Relative Error of R_{2,2}(x)$')
    plt.plot(Domain, RelativeError2, 'black', linewidth=3, label=r'$Relative Error of R_{1,1}(x)$')
    plt.title(r'${Relative\ Errors \ of \ Pade \ Approximation \ of \ } \ e^x $', fontsize=16)
    plt.xlabel('x')
    plt.ylabel('y')
    plt.ylim(0, 0.1)
    plt.xlim(-1, 1)
    plt.grid(True)
    plt.legend()
    plt.show()

RelativeError()
'''
This function will compute the question (2) 
'''
Domain2 = np.linspace(-0.999999, 1, 10000)
A1= np.emath.logn(e,Domain2+1.0)
A2= (Domain2*(Domain2+6.0))/(6.0+4.0*Domain2)
A3= Domain2-Domain2*Domain2*(12.0+Domain2)/(24.0+18.0*Domain2)
A4= Domain2-(Domain2*Domain2)/2.0
A5= Domain2-(Domain2*Domain2)/2.0+(Domain2*Domain2*Domain2)/3.0
A6= (4.0*(Domain2+1.0)*(Domain2+1.0)-3.0*(Domain2+1.0)+1.0)/(4.0*(1.0+Domain2)*(1.0+Domain2))
relativeError1=A2-A1
relativeError2=A3-A1
relativeError3=A4-A1
relativeError4=A5-A1
relativeError5=A6-A1
def RelativeError2():
    plt.plot(Domain2, relativeError1, 'blue', linewidth=3, label=r'$Relative Error of R_{2,2}(x)$')
    plt.plot(Domain2, relativeError2, 'Black', linewidth=3, label=r'$Relative Error of R_{3,1}(x)$')
    plt.plot(Domain2, relativeError3, 'yellow', linewidth=3, label=r'$Relative Error of R_{2,0}(x)$')
    plt.plot(Domain2, relativeError4, 'green', linewidth=3, label=r'$Relative Error of R_{3,0}(x)$')
    plt.title(r'${Relative\ Errors \ of \ Pade \ Approximation \ of \ } \ ln(x+1) $', fontsize=16)
    plt.xlabel('x')
    plt.ylabel('y')
    plt.ylim(0, 0.2)
    plt.xlim(-1, 1)
    plt.grid(True)
    plt.legend()
    plt.show()
RelativeError2()