-------------------------------------------------------------------------------
-- Tests.hs - Pruebas Unitarias para Tarea 1
-- Usa el framework HUnit. Para compilar y correr:
-- 1. Asegúrate de tener la librería HUnit instalada (e.g., usando cabal o stack).
-- 2. Compila: ghc --make Tests.hs
-- 3. Ejecuta: ./Tests
-------------------------------------------------------------------------------

import Tarea1
import Test.HUnit
import Data.Char (toUpper) -- Necesario para Problema 3 si la implementación usa toUpper

-------------------------------------------------------------------------------
-- 1. Pruebas para esPalindromo
-------------------------------------------------------------------------------

testPalindromo :: Test
testPalindromo = "Palíndromo simple" ~: esPalindromo "oso" ~?= True
testPalindromo2 :: Test
testPalindromo2 = "Palíndromo vacío" ~: esPalindromo "" ~?= True
testPalindromo3 :: Test
testPalindromo3 = "Palíndromo largo" ~: esPalindromo "reconocer" ~?= True
testPalindromo4 :: Test
testPalindromo4 = "No es palíndromo" ~: esPalindromo "hola" ~?= False

-------------------------------------------------------------------------------
-- 2. Pruebas para productoParesRec
-------------------------------------------------------------------------------

testProductoParesRec :: Test
testProductoParesRec = "Solo pares" ~: productoParesRec [2, 4, 6] ~?= 48
testProductoParesRec2 :: Test
testProductoParesRec2 = "Sin pares" ~: productoParesRec [1,3,5] ~?= 1
testProductoParesRec3 :: Test
testProductoParesRec3 = "Mezcla pares e impares" ~: productoParesRec [2,3,4] ~?= 8
testProductoParesRec4 :: Test
testProductoParesRec4 = "Lista vacía" ~: productoParesRec ([] :: [Integer]) ~?= 1

-------------------------------------------------------------------------------
-- 3. Pruebas para parsearCondicional
-------------------------------------------------------------------------------

-- Nota: Para que estas pruebas funcionen correctamente, la implementación
-- del alumno debe usar funciones estándar de Haskell para toUpper y para
-- intentar parsear a Int (e.g., readMaybe).

testParsearCondicional :: Test
testParsearCondicional = "Solo números válidos" ~: parsearCondicional ["42"] ~?= [Right 42]
testParsearCondicional2 :: Test
testParsearCondicional2 = "Cadena no numérica" ~: parsearCondicional ["abc"] ~?= [Left "ABC"]
testParsearCondicional3 :: Test
testParsearCondicional3 = "Lista mixta" ~: parsearCondicional ["10","x"] ~?= [Right 10, Left "X"]
testParsearCondicional4 :: Test
testParsearCondicional4 = "Número negativo" ~: parsearCondicional ["-7"] ~?= [Right (-7)]

-------------------------------------------------------------------------------
-- 4. Pruebas para sumaAcumuladaCondicional
-------------------------------------------------------------------------------

testSumaCondicional :: Test
testSumaCondicional = "Umbral 5.0, todos mayores" ~: sumaAcumuladaCondicional 5.0 [6.0, 7.0, 8.0] ~?= 21.0
testSumaCondicional2 :: Test
testSumaCondicional2 = "Algunos por debajo" ~: sumaAcumuladaCondicional 5.0 [3.0, 6.0, 8.0] ~?= 14.0
testSumaCondicional3 :: Test
testSumaCondicional3 = "Lista vacía" ~: sumaAcumuladaCondicional 5.0 ([] :: [Float]) ~?= 0.0
testSumaCondicional4 :: Test
testSumaCondicional4 = "Igual al umbral no cuenta" ~: sumaAcumuladaCondicional 5.0 [5.0,6.0] ~?= 6.0

-------------------------------------------------------------------------------
-- 5. Pruebas para coordenadasImpares
-------------------------------------------------------------------------------

testCoordenadasImpares :: Test
testCoordenadasImpares = "N=2" ~: coordenadasImpares 2 ~?= [(1, 2), (2, 1)]
testCoordenadasImpares2 :: Test
testCoordenadasImpares2 = "N=3" ~: coordenadasImpares 3 ~?= [(1,2),(2,1),(2,3),(3,2)]
testCoordenadasImpares3 :: Test
testCoordenadasImpares3 = "N=1" ~: coordenadasImpares 1 ~?= ([] :: [(Int, Int)])
testCoordenadasImpares4 :: Test
testCoordenadasImpares4 = "N=4" ~: coordenadasImpares 4 ~?= [(1,2),(1,4),(2,1),(2,3),(3,2),(3,4),(4,1),(4,3)]

-------------------------------------------------------------------------------
-- 6. Pruebas para descomponerListaSegura
-------------------------------------------------------------------------------

testDescomponerListaSegura :: Test
testDescomponerListaSegura = "Un elemento" ~: descomponerListaSegura [1] ~?= Just (1, [])
testDescomponerListaSegura2 :: Test
testDescomponerListaSegura2 = "Lista vacía" ~: descomponerListaSegura ([] :: [Int]) ~?= Nothing
testDescomponerListaSegura3 :: Test
testDescomponerListaSegura3 = "Varios elementos" ~: descomponerListaSegura [1,2,3] ~?= Just (1, [2,3])
testDescomponerListaSegura4 :: Test
testDescomponerListaSegura4 = "Strings" ~: descomponerListaSegura (["a","b"] :: [String]) ~?= Just ("a", ["b"])

-------------------------------------------------------------------------------
-- Ejecución Principal
-------------------------------------------------------------------------------

-- Lista principal de todos los tests
allTests :: Test
allTests = TestList
    [ TestLabel "Problema 1: esPalindromo" testPalindromo
    , TestLabel "Problema 1b: esPalindromo vacío" testPalindromo2
    , TestLabel "Problema 1c: esPalindromo radar" testPalindromo3
    , TestLabel "Problema 1d: esPalindromo no" testPalindromo4
    , TestLabel "Problema 2: productoParesRec" testProductoParesRec
    , TestLabel "Problema 2b: productoParesRec sin pares" testProductoParesRec2
    , TestLabel "Problema 2c: productoParesRec mezcla" testProductoParesRec3
    , TestLabel "Problema 2d: productoParesRec vacío" testProductoParesRec4
    , TestLabel "Problema 3: parsearCondicional" testParsearCondicional
    , TestLabel "Problema 3b: parsearCondicional no numérico" testParsearCondicional2
    , TestLabel "Problema 3c: parsearCondicional mixto" testParsearCondicional3
    , TestLabel "Problema 3d: parsearCondicional negativo" testParsearCondicional4
    , TestLabel "Problema 4: sumaAcumuladaCondicional" testSumaCondicional
    , TestLabel "Problema 4b: sumaAcumuladaCondicional mixto" testSumaCondicional2
    , TestLabel "Problema 4c: sumaAcumuladaCondicional vacío" testSumaCondicional3
    , TestLabel "Problema 4d: sumaAcumuladaCondicional igual umbral" testSumaCondicional4
    , TestLabel "Problema 5: coordenadasImpares" testCoordenadasImpares
    , TestLabel "Problema 5b: coordenadasImpares N=3" testCoordenadasImpares2
    , TestLabel "Problema 5c: coordenadasImpares N=1" testCoordenadasImpares3
    , TestLabel "Problema 5d: coordenadasImpares N=4" testCoordenadasImpares4
    , TestLabel "Problema 6: descomponerListaSegura" testDescomponerListaSegura
    , TestLabel "Problema 6b: descomponerListaSegura vacía" testDescomponerListaSegura2
    , TestLabel "Problema 6c: descomponerListaSegura varios" testDescomponerListaSegura3
    , TestLabel "Problema 6d: descomponerListaSegura strings" testDescomponerListaSegura4
    ]

main :: IO Counts
main = runTestTT allTests
