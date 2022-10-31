#install.packages('lpSolveAPI')
#library(lpSolveAPI) не должно быть сообщений
library(lpSolveAPI)
#1
{
  m <- make.lp(ncol=2)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2')
  set.type(lprec=m, columns=c(1:2), type='integer')
  lp.control(lprec = m, sense='max')
  set.objfn(lprec=m, obj=c(4,7))
  add.constraint(lprec = m, xt = c(0.52,0.1), type='<=', rhs=180)
  add.constraint(lprec = m, xt = c(0.01,0.005), type='<=', rhs=5.5)
  add.constraint(lprec = m, xt = c(0.5,1), type='<=', rhs=780)
  add.constraint(lprec = m, xt = c(1,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(0,1), type='>=', rhs=0)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  print(x1_opt)
  print(x2_opt)
  result <- get.objective(lprec=m)
  result
}

library(lpSolveAPI)
{
  m <- make.lp(ncol=2)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2')
  set.type(lprec=m, columns=c(1:2), type='integer')
  lp.control(lprec = m, sense='max')
  set.objfn(lprec=m, obj=c(1,1.5))
  add.constraint(lprec = m, xt = c(1,6), type='>=', rhs=6)
  add.constraint(lprec = m, xt = c(1,1), type='>=', rhs=-1)
  add.constraint(lprec = m, xt = c(1,2), type='<=', rhs=12)
  add.constraint(lprec = m, xt = c(1,0), type='<=', rhs=6)
  add.constraint(lprec = m, xt = c(0,1), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(1,0), type='>=', rhs=0)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  print(x1_opt)
  print(x2_opt)
  result <- get.objective(lprec=m)
  result
}

{
  m <- make.lp(ncol=2)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2')
  set.type(lprec=m, columns=c(1:2), type='integer')
  lp.control(lprec = m, sense='min')
  set.objfn(lprec=m, obj=c(-3,4))
  add.constraint(lprec = m, xt = c(1,5), type='>=', rhs=5)
  add.constraint(lprec = m, xt = c(5,15), type='<=', rhs=75)
  add.constraint(lprec = m, xt = c(-4,5), type='>=', rhs=-20)
  add.constraint(lprec = m, xt = c(1,-2), type='>=', rhs=-2)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  print(x1_opt)
  print(x2_opt)
  result <- get.objective(lprec=m)
  result
}

{
  m <- make.lp(ncol=2)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2')
  set.type(lprec=m, columns=c(1:2), type='integer')
  lp.control(lprec = m, sense='min')
  set.objfn(lprec=m, obj=c(-6,1))
  add.constraint(lprec = m, xt = c(2,1), type='>=', rhs=6)
  add.constraint(lprec = m, xt = c(9,6), type='<=', rhs=54)
  add.constraint(lprec = m, xt = c(-3.5,4.5), type='>=', rhs=-63/4)
  add.constraint(lprec = m, xt = c(3,-4), type='>=', rhs=-12)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  print(x1_opt)
  print(x2_opt)
  result <- get.objective(lprec=m)
  result
}

{
  m <- make.lp(ncol=4)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2', 'x3','x4')
  set.type(lprec=m, columns=c(1:4), type='integer')
  lp.control(lprec = m, sense='max')
  set.objfn(lprec=m, obj=c(8,12,14,20))
  add.constraint(lprec = m, xt = c(6,8,10,13), type='<=', rhs=50)
  add.constraint(lprec = m, xt = c(0,1,0,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(1,0,0,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(0,0,1,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(0,0,0,1), type='>=', rhs=0)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  x3_opt <- get.variables(lprec=m)[3]
  x4_opt <- get.variables(lprec=m)[4]
  print(x1_opt)
  print(x2_opt)
  print(x3_opt)
  print(x4_opt)
  result <- get.objective(lprec=m)
  result
}

{
  m <- make.lp(ncol=3)
  name.lp(lprec=m, name='Иванов')
  colnames(x=m) <- c('x1','x2', 'x3')
  set.type(lprec=m, columns=c(1:3), type='integer')
  lp.control(lprec = m, sense='min')
  set.objfn(lprec=m, obj=c(32,28,20))
  add.constraint(lprec = m, xt = c(120,170,240), type='>=', rhs=600)
  add.constraint(lprec = m, xt = c(200,110,120), type='>=', rhs=1000)
  add.constraint(lprec = m, xt = c(300,370, 120), type='>=', rhs=600)
  add.constraint(lprec = m, xt = c(0,1,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(1,0,0), type='>=', rhs=0)
  add.constraint(lprec = m, xt = c(0,0,1), type='>=', rhs=0)
  m
  s <- solve.lpExtPtr(a=m)
  s
  x_opt <- get.variables(lprec=m)
  x_opt
  x1_opt <- get.variables(lprec=m)[1]
  x2_opt <- get.variables(lprec=m)[2]
  x3_opt <- get.variables(lprec=m)[3]
  print(x1_opt)
  print(x2_opt)
  print(x3_opt)
  result <- get.objective(lprec=m)
  result
}