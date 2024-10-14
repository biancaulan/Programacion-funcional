
# Generar mes y dibujarlo
printDibujo (dibujomes ("Enero", 2024, 1, 30))

```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30######
```

# Comprobar si un dibujo es correcto (misma longitud)
- [TRUE] dibEsCorrecto ["Enero 2024##########","Lu Ma Mi Ju Vi Sa Do","#########01 02 03 04","05 06 07 08 09 10 11","12 13 14 15 16 17 18","19 20 21 22 23 24 25","26 27 28 29 30 31 32","33 34###############"]
```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31 32
33 34###############
```

- [FALSE] dibEsCorrecto ["Enero 2024","Lu Ma Mi Ju Vi Sa Do","01 02 03 04","05 06 07 08 09 10 11","12 13 14 15 16 17 18","19 20 21 22 23 24 25","26 27 28 29 30 31 32","33 34"]
```
Enero 2024
Lu Ma Mi Ju Vi Sa Do
         01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31 32
33 34
```

# Dibujo sobre Dibujo
printDibujo (sobre (dibujomes ("Enero", 2024, 1, 30)) (dibujomes ("Febrero", 2024, 1, 28)))
```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30######

Febrero 2024########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28############
```

# Dibujo al lado de Dibujo
printDibujo (alLado (dibujomes ("Enero", 2024, 1, 30)) (dibujomes ("Febrero", 2024, 1, 28)))
```
Enero 2024##########     Febrero 2024########
Lu Ma Mi Ju Vi Sa Do     Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04     #########01 02 03 04
05 06 07 08 09 10 11     05 06 07 08 09 10 11
12 13 14 15 16 17 18     12 13 14 15 16 17 18
19 20 21 22 23 24 25     19 20 21 22 23 24 25
26 27 28 29 30######     26 27 28############
```

# Apilar 2 dibujos
printDibujo (apilar [dibujomes ("Enero", 2024, 1, 30), dibujomes ("Febrero", 2024, 1, 28)])
```
Enero 2024##########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30######

Febrero 2024########
Lu Ma Mi Ju Vi Sa Do
#########01 02 03 04
05 06 07 08 09 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28############
```

# Extender lista de dibujos (METE ESPACIOS A LA IZQUIERDA //TODO)
printDibujo (extender [dibujomes ("Enero", 2024, 1, 30), dibujomes ("Febrero", 2024, 1, 28), dibujomes ("Marzo", 2024, 4, 31), dibujomes ("Abril", 2024, 3, 30)])

```
     Enero 2024##########     Febrero 2024########     Marzo 2024##########     Abril 2024##########
     Lu Ma Mi Ju Vi Sa Do     Lu Ma Mi Ju Vi Sa Do     Lu Ma Mi Ju Vi Sa Do     Lu Ma Mi Ju Vi Sa Do
     #########01 02 03 04     #########01 02 03 04     #########01 02 03 04     #########01 02 03 04
     05 06 07 08 09 10 11     05 06 07 08 09 10 11     05 06 07 08 09 10 11     05 06 07 08 09 10 11
     12 13 14 15 16 17 18     12 13 14 15 16 17 18     12 13 14 15 16 17 18     12 13 14 15 16 17 18
     19 20 21 22 23 24 25     19 20 21 22 23 24 25     19 20 21 22 23 24 25     19 20 21 22 23 24 25
     26 27 28 29 30######     26 27 28############     26 27 28 29 30 31###     26 27 28 29 30######
```
# Dibujo blanco
dibBlanco (3, 3)
```
["###","###","###"]
```
