------------------------------------------------------------------
--  PRACTICA: CALENDARIO           --               PF  2024-2025

--  Num. del equipo registrado en la egela: E_
-- Apellidos del primer integrante:
-- Apellidos del segundo integrante:  
------------------------------------------------------------------

-- Llamada principal es:  printCalendario c n 
-- donde c = columnas (3 o 4) y 
--       n = año cuyo calendario deseamos imprimir
------------------------------------------------------------------

module Calendario where

type Dibujo = [Linea]  -- cada dibujo es una lista de lineas 
type Linea = [Char]    -- cada linea es una lista de caracteres
type Year = Int
type Columna = Int     -- es 3 o 4

-- Para imprimir un dibujo en pantalla:
printDibujo :: Dibujo -> IO()
printDibujo dib = do
                   putStr "\n"  -- putStr es la función que imprime un String
                   (putStr . concat . map (++"\n")) dib

-- Imprime, con un numero de columnas, el calendario de un año: 
-- printCalendario :: Columna ->  Year -> IO()
-- printCalendario c a = printDibujo (calendario c a)


-- Dibujo de un calendario (en c columnas) de un año dado:
-- calendario :: Columna -> Year -> Dibujo   
-- calendario c  =  bloque c . map dibujomes . meses

---------------------------------------------------
--  Define las siguientes funciones sobre dibujos:
---------------------------------------------------

-- dibEsCorrecto :: Dibujo -> Bool   
-- comprueba que las lineas de un dibujo tienen igual longitud,
-- debe dar un mensaje de error si el dibujo es vacío ([]).


-- listaDibCorrectos ::[Dibujo] -> Bool 
-- comprueba que los dibujos de la lista dada son correctos y 
-- ademas tienen todos las mismas dimensiones.


-- alto :: Dibujo -> Int   
-- Pre: dib es un dibujo correcto.
-- alto dib da la altura de dib.


-- ancho :: Dibujo -> Int
-- Pre: dib es un dibujo correcto.
-- ancho dib da la anchura de dib.


-- sobre :: Dibujo -> Dibujo -> Dibujo 
-- Precondicion: los dibujos d1 y d2 tienen la misma anchura.
-- sobre d1 d2 pone el dibujo d1 sobre el dibujo d2.


-- alLado :: Dibujo -> Dibujo -> Dibujo   
-- Precondicion: los dibujos d1 y d2 tienen la misma altura.
-- alLado d1 d2 da un dibujo con d1 a la izquierda de d2.


-- apilar :: [Dibujo] -> Dibujo
-- apila s da el dibujo obtenido apilando todos los elementos de s
--         (el primero de s queda en la cima de la pila).
-- Si s no es una lista de dibujos correctos debe dar error.


-- extender :: [Dibujo] -> Dibujo
-- extiende s da el dibujo obtenido al extender todos los elementos 
--            de s (el primero de s queda el más a la izquierda).
-- Si s no es una lista de dibujos correctos debe dar error.


-- dibBlanco :: (Int,Int) -> Dibujo
-- Precondicion: al>0 && an>0.
-- dibBlanco (al,an) devuelve el dibujo de caracteres blancos con 
--                   altura al y anchura an


-- bloque :: Int -> [Dibujo] -> Dibujo
-- bloque n lisDib es el dibujo formado al agrupar de n en n los
--               dibujos de lisDib, extender cada sublista
--               y luego apilar los resultados.


-- otras funciones auxiliares sobre dibujos que se necesiten:



------------------------------------------------------------------  
-- Define constantes y funciones para calcular y dibujar los meses 
------------------------------------------------------------------

-- meses ::  Year -> [(String, Year, Int, Int)]
-- meses n devuelve una lista de 12 elementos con los datos 
--         relevantes de cada uno de los meses del año n: 
--         (nombre_mes, n, primer_día_mes, longitud_mes)


-- dibujomes ::(String, Year, Int, Int) -> Dibujo
-- dibujomes (nm,a,pd,lm) devuelve un dibujo de dimensiones 10x25 
-- formado por el titulo y la tabla del mes de nombre nm y año a.
-- Necesita como parámetros: pd=primer dia y lm=longitud del mes.


ene1 :: Year -> Int
ene1 a = mod (a + div (a-1) 4 - div (a-1) 100 + div (a-1) 400) 7
-- ene1 a devuelve el dia de la semana del 1 de enero del año a 
--        siendo 1=lunes, 2=martes, ..., 6=sabado, 0=domingo
 

-- pdias :: Int -> [Int]
-- pdias a  devuelve una lista con 12 dias que son los dias de la
--          semana en que comienza cada mes del año a siendo 
--          1=lunes, 2=martes, ..., 6=sabado y 7=domingo
-- Ejemplo: pdias 2019 es [2,5,5,1,3,6,1,4,7,2,5,7]


nombresmeses :: [String]
nombresmeses =
 ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio",
  "Agosto","Septiembre","Octubre","Noviembre","Diciembre"]

-- fechas :: Int -> Int -> [Dibujo]
-- fechas pd lm da una lista de 42 dibujos de 1*3 (alguno blanco)
--              con los dias de un mes cuyo primer dia de semana 
--              es pd y cuya longitud de mes es lm

{- Ejemplo:
fechas 3 30
[["   "],["   "],["  1"],["  2"],["  3"],["  4"],["  5"],
 ["  6"],["  7"],["  8"],["  9"],[" 10"],[" 11"],[" 12"],
 [" 13"],[" 14"],[" 15"],[" 16"],[" 17"],[" 18"],[" 19"],
 [" 20"],[" 21"],[" 22"],[" 23"],[" 24"],[" 25"],[" 26"],
 [" 27"],[" 28"],[" 29"],[" 30"],["   "],["   "],["   "],
 ["   "],["   "],["   "],["   "],["   "],["   "],["   "]]
-}


-- otras funciones que se necesiten:



--------------------------------------------------------------------
