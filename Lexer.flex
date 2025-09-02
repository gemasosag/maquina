
package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
la |
el |
los |
las |
un |
uno |
unos |
una |
unas |
while {lexeme=yytext(); return Articulo;}
{espacio} {/*Ignore*/}

crema |
explosión |
navaja |
lápiz|
embarcación|
ventana|
universidad|
llaves|
papá|
catre|
escuela|
codo|
mapa|
lima|
edificio|
hojas|
granizo|
mano|
música|
habitación|
abuelo|
templo|
plato|
botella|
casa|
planeta|
metal|
mono|
petróleo|
debate|
ruido|
herramienta|
anteojos|
zapato|
ojo|
diente|
buzo|
puerta|
ensalada|
candidato|
diarios|
hierro|
barco|
tecla|
departamento|
hipopótamo|
árbol|
discurso|
rúcula|
lentejas|
reloj|
desodorante|
montañas|
moño|
partido|
fiesta|
café|
guitarra|
martillo|
lapicera|
letra|
librería|
rueda|
camisa|
sillón|
teclado|
pantalla|
tenedor|
agua|
cohete|
césped|
parlante|
pestaña|
monitor|
hombre|
velero|
palo|
lentes|
nube|
castillo|
libro|
televisor|
teléfono|
remera|
percha|
anillo|
pared|
cartas|
impresora|
luces|
bomba|
corbata|
planta|
oficina|
tío|
pradera|
deporte|
fotografía|
refugio|
carne|
humedad|
celular|
sofá|
mesada|
auto|
famoso|
piso|
diputado|
candado|
computadora|
cuadro|
teatro|
bala|
estrella|
plástico|
libros|
aluminio|
agujeta|
sonido|
perro|
pelo|
felicidad|
while {lexeme=yytext(); return Sustantivo;}

yo|
me| 
mí| 
conmigo|
Nosotros| 
nos| 
nosotras|
tú| 
te| 
ti| 
contigo| 
usted| 
vos |
vosotros|
vosotras| 
os| 
ustedes|
él| 
lo| 
le|
se|
sí|
consigo|
ella|
la|
ello|
lo|
ellos| 
ellas| 
los| 
las| 
les|
se|
sí|
consigo|
while {lexeme=yytext(); return Pronombre;}


salado|
dulce|
amargo|
while {lexeme=yytext(); return Adjetivo;}

cantó|
camino|
while {lexeme=yytext(); return Verbo;}

a| 
ante| 
bajo| 
cabe| 
con| 
contra| 
de| 
desde| 
durante| 
en| 
entre| 
hacia| 
hasta| 
mediante| 
para| 
por| 
según| 
sin| 
so| 
sobre| 
tras| 
versus| 
vía|
while {lexeme=yytext(); return Preposición;}

demasiado|
repentinamente|
while {lexeme=yytext(); return Adverbio;}

y| 
o|
while {lexeme=yytext(); return Conjunción;}

hijole| 
chin| 
while {lexeme=yytext(); return Interjección;}

{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}