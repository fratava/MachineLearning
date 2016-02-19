#Francisco Tapia Vázquez
#Machine Learning
#UMSNH
#Linear Regreassion using Gradient Descent


#En esta función buscamos el mínimo valor de Θ0 y Θ1 para así minizar la funcion
function buscarminimo(theta0,theta1,m,tol)
    minimo=true
    while(minimo==true)
        temp0=theta0-(alpha/m)*suma(theta0,theta1,m)
        temp1=theta1-(alpha/m)*suma1(theta0,theta1,m)
        
        if(theta0==temp0) || (theta1==temp1)
            minimo=true    
        else
            theta0=temp0
            theta1=temp1
            minimo=false
        end 
       
    end
    return theta0,theta1
end

#En esta función realizamos la suma
function suma(theta0,theta1,m)
    res=0
    for i=1:m
        res=res+theta0+theta1*X[i,1]-X[i,2]
    end
    return res
end

#Funcion 
function suma1(theta0,theta1,m)
    res=0
    for i=1:m
        res=res+(theta0+theta1*X[i,1]-X[i,2])*X[i,1]
    end
    return res
end

#Parámetros y condiciones inicales
theta0=20 #Θ0 inicial
theta1=15 #Θ0 inicial
alpha=0.01 #Step size

#Leemos desde el archivo llamado "datos" donde vienen los valores y creamos un arreglo de mx2
X = readdlm("datos2") 
m=length(X[:,1])      #m es el tamaño de mi arreglo

#Llamamos a la función que buscar el Θ0 y Θ1
theta0,theta1=buscarminimo(theta0,theta1,m) 

#Imprimimos los resultados
println("Θ0=",theta0)
println("Θ1=",theta1)
