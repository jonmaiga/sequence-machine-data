import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A320400: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320400, there is no canonical definition to state claims against.
-/

/-! ## A320400.P12123152270780888130

`A320402(A374007(n+1))`
-/

namespace A320400.P12123152270780888130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A374007 (n + 1)).toNat

end

end A320400.P12123152270780888130

/-! ## A320400.P6350293507510577402

`A320402(A056115(n)+21)`
-/

namespace A320400.P6350293507510577402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A056115 n + 21).toNat

end

end A320400.P6350293507510577402

/-! ## A320400.P6373103018965614331

`A320402(eq[7, A131818(n+1)])`
-/

namespace A320400.P6373103018965614331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320400.P6373103018965614331

/-! ## A320400.P13928911650353505822

`A320402(A052905(n+3))`
-/

namespace A320400.P13928911650353505822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A052905 (n + 3)).toNat

end

end A320400.P13928911650353505822

/-! ## A320400.P4408595725639376753

`A320402(eq[3, A219347(n)])`
-/

namespace A320400.P4408595725639376753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320400.P4408595725639376753

/-!
# A320401: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320401, there is no canonical definition to state claims against.
-/

/-! ## A320401.P5193225795118483958

`A320402(A374008(n+1))`
-/

namespace A320401.P5193225795118483958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A374008 (n + 1)).toNat

end

end A320401.P5193225795118483958

/-! ## A320401.P4978484702441704698

`A320402(A056119(n)+28)`
-/

namespace A320401.P4978484702441704698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A056119 n + 28).toNat

end

end A320401.P4978484702441704698

/-! ## A320401.P11922904841255070855

`A320402(A167499(n+5)+2)`
-/

namespace A320401.P11922904841255070855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A167499 (n + 5) + 2).toNat

end

end A320401.P11922904841255070855

/-! ## A320401.P4907274830497808792

`A320402(eq[8, A131818(n+1)])`
-/

namespace A320401.P4907274830497808792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320401.P4907274830497808792

/-! ## A320401.P16249991955884665585

`A320402(eq[4, A219347(n)])`
-/

namespace A320401.P16249991955884665585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320401.P16249991955884665585

/-!
# A320403: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320403, there is no canonical definition to state claims against.
-/

/-! ## A320403.P12676719487377329531

`A320409(∑[4*n]+1)`
-/

namespace A320403.P12676719487377329531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320403.P12676719487377329531

/-! ## A320403.P6130290125254499807

`record[A003982(n)*A320409(n+1)]`
-/

namespace A320403.P6130290125254499807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A320409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320403.P6130290125254499807

/-! ## A320403.P12426591275129942435

`record[gcd(A037012(n), A320409(n+1))]`
-/

namespace A320403.P12426591275129942435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A320409 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320403.P12426591275129942435

/-! ## A320403.P12801933833878517762

`A007318(∑[n])*A320409(A001844(n))`
-/

namespace A320403.P12801933833878517762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A320409 (A001844 n).toNat

end

end A320403.P12801933833878517762

/-! ## A320403.P1221867801208638544

`A014963(C(n+5, 2))*A320409(A001844(n))`
-/

namespace A320403.P1221867801208638544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A320409 (A001844 n).toNat

end

end A320403.P1221867801208638544

/-!
# A320404: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320404, there is no canonical definition to state claims against.
-/

/-! ## A320404.P7678331376834698337

`A320409(∑[n+2]+4)`
-/

namespace A320404.P7678331376834698337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A320404.P7678331376834698337

/-! ## A320404.P11835262086938385458

`A320409(A167614(n+1))+A185037(n)`
-/

namespace A320404.P11835262086938385458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A167614 (n + 1)).toNat + A185037 n

end

end A320404.P11835262086938385458

/-! ## A320404.P13970625356555335541

`A320409(A167614(n+1))%A016962(n)`
-/

namespace A320404.P13970625356555335541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320409 (A167614 (n + 1)).toNat) (A016962 n)

end

end A320404.P13970625356555335541

/-! ## A320404.P1553204873254884861

`lcm(A033999(n), A320409(A167614(n+1)))`
-/

namespace A320404.P1553204873254884861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A320409 (A167614 (n + 1)).toNat)

end

end A320404.P1553204873254884861

/-! ## A320404.P15215612800868749800

`or(A299905(n), A320409(A167614(n+1)))`
-/

namespace A320404.P15215612800868749800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299905 n) (A320409 (A167614 (n + 1)).toNat)

end

end A320404.P15215612800868749800

/-!
# A320405: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320405, there is no canonical definition to state claims against.
-/

/-! ## A320405.P55742945046650318

`A320409(A141214(n)+7)`
-/

namespace A320405.P55742945046650318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A141214 n + 7).toNat

end

end A320405.P55742945046650318

/-! ## A320405.P1927898182439485184

`A320409(A052905(n)+9)`
-/

namespace A320405.P1927898182439485184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A052905 n + 9).toNat

end

end A320405.P1927898182439485184

/-! ## A320405.P11230078490283204839

`A320409(A055999(n)+10)`
-/

namespace A320405.P11230078490283204839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A055999 n + 10).toNat

end

end A320405.P11230078490283204839

/-! ## A320405.P438591144930253867

`A320409(Δ[A008778(n)]+6)`
-/

namespace A320405.P438591144930253867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (f1 (n + 1) - f1 n + 6).toNat

end

end A320405.P438591144930253867

/-! ## A320405.P8963539410843478119

`A320409(A167614(n+2)+1)`
-/

namespace A320405.P8963539410843478119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A167614 (n + 2) + 1).toNat

end

end A320405.P8963539410843478119

/-!
# A320406: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320406, there is no canonical definition to state claims against.
-/

/-! ## A320406.P4314028646885088459

`A320409(A155212(n)+13)`
-/

namespace A320406.P4314028646885088459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A155212 n + 13).toNat

end

end A320406.P4314028646885088459

/-! ## A320406.P13166991877497431293

`A320409(A056000(n)+15)`
-/

namespace A320406.P13166991877497431293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A056000 n + 15).toNat

end

end A320406.P13166991877497431293

/-! ## A320406.P17490886614399678134

`A320409(A000217(n+4)+5)`
-/

namespace A320406.P17490886614399678134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A000217 (n + 4) + 5).toNat

end

end A320406.P17490886614399678134

/-! ## A320406.P4212248745470164819

`A320409(Δ[A023551(n+1)]-2*n)`
-/

namespace A320406.P4212248745470164819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A320406.P4212248745470164819

/-! ## A320406.P8874310516107201919

`A320409(A052905(n+3)-(2*n+1))`
-/

namespace A320406.P8874310516107201919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A320406.P8874310516107201919

/-!
# A320407: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320407, there is no canonical definition to state claims against.
-/

/-! ## A320407.P12003835355839944428

`A320409(A056115(n)+21)`
-/

namespace A320407.P12003835355839944428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A056115 n + 21).toNat

end

end A320407.P12003835355839944428

/-! ## A320407.P8950847678617737281

`A320409(A167499(n+4)+1)`
-/

namespace A320407.P8950847678617737281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A167499 (n + 4) + 1).toNat

end

end A320407.P8950847678617737281

/-! ## A320407.P6592013117140449039

`A320409(A016028(n+8)+3)`
-/

namespace A320407.P6592013117140449039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A016028 (n + 8) + 3).toNat

end

end A320407.P6592013117140449039

/-! ## A320407.P8577205442917530

`A320409(eq[7, A131818(n+1)])`
-/

namespace A320407.P8577205442917530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320407.P8577205442917530

/-! ## A320407.P12065326480593666039

`A320409(A374007(n+1))`
-/

namespace A320407.P12065326480593666039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A374007 (n + 1)).toNat

end

end A320407.P12065326480593666039

/-!
# A320408: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320408, there is no canonical definition to state claims against.
-/

/-! ## A320408.P13869244751706805472

`A320409(A056119(n)+28)`
-/

namespace A320408.P13869244751706805472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A056119 n + 28).toNat

end

end A320408.P13869244751706805472

/-! ## A320408.P10420632254107632809

`A320409(eq[11, A066657(n)])`
-/

namespace A320408.P10420632254107632809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320408.P10420632254107632809

/-! ## A320408.P8663246793713290363

`A320409(eq[8, A131818(n+1)])`
-/

namespace A320408.P8663246793713290363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320408.P8663246793713290363

/-! ## A320408.P7325832003620932079

`A320409(A374008(n+1))`
-/

namespace A320408.P7325832003620932079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (A374008 (n + 1)).toNat

end

end A320408.P7325832003620932079

/-! ## A320408.P3246941719636799830

`A320409(eq[6, A193592(n)])`
-/

namespace A320408.P3246941719636799830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320408.P3246941719636799830

/-!
# A320409: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A320409, there is no canonical definition to state claims against.
-/

/-! ## A320409.P15829543109052735969

`A318024(n+1)+A057498(A059922(n))`
-/

namespace A320409.P15829543109052735969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) + A057498 (A059922 n).toNat

end

end A320409.P15829543109052735969

/-! ## A320409.P16920009333905645394

`A318024(n+1)+A185044(A047969(n))`
-/

namespace A320409.P16920009333905645394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) + A185044 (A047969 n).toNat

end

end A320409.P16920009333905645394

/-! ## A320409.P11961760459782861822

`A318024(n+1)+A185044(A099608(n))`
-/

namespace A320409.P11961760459782861822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) + A185044 (A099608 n).toNat

end

end A320409.P11961760459782861822

/-! ## A320409.P7325418491586012530

`A318024(n+1)+A174875(A157177(n))`
-/

namespace A320409.P7325418491586012530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (n + 1) + A174875 (A157177 n).toNat

end

end A320409.P7325418491586012530

/-! ## A320409.P8662976227049526930

`A321993(A318024(n+1))`
-/

namespace A320409.P8662976227049526930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A318024 (n + 1)).toNat

end

end A320409.P8662976227049526930

/-!
# A320410: Continued fraction of a constant t with partial denominators {a(n), n>=0} such that the continued fraction of 4*t yields partial denominators {6*a(n), n>=0}.

The programs for A320410, there is no canonical definition to state claims against.
-/

/-! ## A320410.P11669638592990231866

`(5*a(n-1))!` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A320410.P11669638592990231866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 5, 1, 1, 1] fun n a =>
  Nat.factorial (5 * a (n - 1))

end

end A320410.P11669638592990231866

/-! ## A320410.P12091980345487105632

`a(A269443(lcm(7, n+1))-1)!` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A320410.P12091980345487105632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  Nat.factorial (a (A269443 (Nat.lcm 7 (n + 1)) - 1).toNat)

end

end A320410.P12091980345487105632

/-! ## A320410.P14220796356612823432

`A222568(((n+1)/∏{p}[n+1, #])^((n+1)/2^val(n+1, 2)))`
-/

namespace A320410.P14220796356612823432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222568 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ))).toNat

end

end A320410.P14220796356612823432

/-!
# A320415: O.g.f. A(x) satisfies: [x^n] 1/A(x)^(n+1) / (1 - (n+1)*x) = 0, for n > 0.

The programs for A320415, there is no canonical definition to state claims against.
-/

/-! ## A320415.P2501818024258374235

`A008615(ceil(2^n*n!/2))+∏[(1-n)%2+n]`
-/

namespace A320415.P2501818024258374235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌈(2 ^ n * Nat.factorial n : ℚ) / 2⌉.toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A320415.P2501818024258374235

/-! ## A320415.P13886717891470407844

`A333068(A148085(n))`
-/

namespace A320415.P13886717891470407844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333068 (A148085 n).toNat

end

end A320415.P13886717891470407844

/-!
# A320416: G.f.: exp( Sum_{n>=1} sigma_2(n)*sigma_3(n)/sigma(n) * x^n / n ), where sigma_{k}(n) equals the sum of the k-th powers of the divisors of n.

The programs for A320416, there is no canonical definition to state claims against.
-/

/-! ## A320416.P17958587891189910194

`∑[xor(1, A087011(A122588(n+1)))]`
-/

namespace A320416.P17958587891189910194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A087011 (A122588 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320416.P17958587891189910194

/-! ## A320416.P14510033810748330426

`A006497(n)-A071673(A014466(n))`
-/

namespace A320416.P14510033810748330426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n - A071673 (A014466 n).toNat

end

end A320416.P14510033810748330426

/-!
# A320420: Number of monoids of order n that are not groups.

The programs for A320420, there is no canonical definition to state claims against.
-/

/-! ## A320420.P11553300338009232262

`A058129(n)-A000001(n)`
-/

namespace A320420.P11553300338009232262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 n - A000001 n

end

end A320420.P11553300338009232262

/-! ## A320420.P1880623104546570885

`A058129(n)-sqrt(A297420(n))`
-/

namespace A320420.P1880623104546570885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058129 n : ℝ) - Real.sqrt (A297420 n : ℝ)

end

end A320420.P1880623104546570885

/-! ## A320420.P2356655804294186673

`A058129(n)-A051903(A026905(n+1))`
-/

namespace A320420.P2356655804294186673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 n - A051903 (A026905 (n + 1)).toNat

end

end A320420.P2356655804294186673

/-! ## A320420.P7622304690769777299

`A058129(n)-A002262(A297420(n)+1)`
-/

namespace A320420.P7622304690769777299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 n - A002262 (A297420 n + 1).toNat

end

end A320420.P7622304690769777299

/-! ## A320420.P4129312432571778287

`A058129(n)-A088226(A297420(n)+2)`
-/

namespace A320420.P4129312432571778287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 n - A088226 (A297420 n + 2).toNat

end

end A320420.P4129312432571778287

/-!
# A320421: Number of closed self-avoiding paths on square lattice with 2*n steps, A010566(n)/8.

The programs for A320421, there is no canonical definition to state claims against.
-/

/-! ## A320421.P11063677366343410513

`A019266(n+1)/4`
-/

namespace A320421.P11063677366343410513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019266 (n + 1) : ℚ) / 4

end

end A320421.P11063677366343410513

/-! ## A320421.P1666465809862729547

`A010566(n+1)/8`
-/

namespace A320421.P1666465809862729547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010566 (n + 1) : ℚ) / 8

end

end A320421.P1666465809862729547

/-! ## A320421.P9795702184409456594

`floor(A225877(n+1)/2)`
-/

namespace A320421.P9795702184409456594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225877 (n + 1) : ℚ) / 2⌋

end

end A320421.P9795702184409456594

/-! ## A320421.P6723521047036322240

`(n+1)/2*A002931(n+1)`
-/

namespace A320421.P6723521047036322240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002931 (n + 1) : ℚ)

end

end A320421.P6723521047036322240

/-! ## A320421.P3085910684619619844

`A225877(n+1)/2*A178334(n)`
-/

namespace A320421.P3085910684619619844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225877 (n + 1) : ℚ) / 2 * (A178334 n : ℚ)

end

end A320421.P3085910684619619844

/-!
# A320424: Number of set partitions of {1,...,n} where each block's elements are relatively prime.

The programs for A320424, there is no canonical definition to state claims against.
-/

/-! ## A320424.P14653163254108284617

`A270652(A202705(n))-1`
-/

namespace A320424.P14653163254108284617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270652 (A202705 n).toNat - 1

end

end A320424.P14653163254108284617

/-! ## A320424.P8035168939426422996

`A273923(n+1)+A080876(n)`
-/

namespace A320424.P8035168939426422996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273923 (n + 1) + A080876 n

end

end A320424.P8035168939426422996

/-! ## A320424.P9512418957406130005

`A364828(A316313(n+1)^floor(2*n/5))`
-/

namespace A320424.P9512418957406130005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364828 (SequenceMachineLib.roundAway ((A316313 (n + 1) : ℚ) ^ (⌊2 * ((n : ℚ) / 5)⌋ : ℤ))).toNat

end

end A320424.P9512418957406130005

/-! ## A320424.P7596574116874425579

`A002487(or(A003056(n), A003319(n)))`
-/

namespace A320424.P7596574116874425579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor (A003056 n) (A003319 n)).toNat

end

end A320424.P7596574116874425579

/-!
# A320425: Numbers k such that sigma(sigma(k^4)) == 0 (mod k^2).

The programs for A320425, there is no canonical definition to state claims against.
-/

/-! ## A320425.P3445592202643674553

`A018547(comp[C(n+7, 7)-1])`
-/

namespace A320425.P3445592202643674553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A320425.P3445592202643674553

/-! ## A320425.P391425348002100589

`A018547(comp[A296364(3*n+2)])`
-/

namespace A320425.P391425348002100589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A320425.P391425348002100589

/-! ## A320425.P13298898194265825612

`A018547(comp[A057661(3*n+4)]+1)`
-/

namespace A320425.P13298898194265825612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A320425.P13298898194265825612

/-! ## A320425.P3671086656977939165

`A018547(lt[A010815(n), A103922(n)])`
-/

namespace A320425.P3671086656977939165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320425.P3671086656977939165

/-! ## A320425.P14217603638759217338

`A018547(lt[A010815(n), A172179(2*(n+1))])`
-/

namespace A320425.P14217603638759217338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172179 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320425.P14217603638759217338

/-!
# A320426: Number of nonempty pairwise coprime subsets of {1,...,n}, where a single number is not considered to be pairwise coprime unless it is equal to 1.

The programs for A320426, there is no canonical definition to state claims against.
-/

/-! ## A320426.P16479010014705522202

`A276187(n+1)+1`
-/

namespace A320426.P16479010014705522202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (n + 1) + 1

end

end A320426.P16479010014705522202

/-! ## A320426.P13755485925303343677

`A187106(n+1)-n`
-/

namespace A320426.P13755485925303343677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187106 (n + 1) - (n : ℤ)

end

end A320426.P13755485925303343677

/-! ## A320426.P12888305205494473034

`A084422(n+1)-(n+1)`
-/

namespace A320426.P12888305205494473034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 (n + 1) - (n + 1 : ℤ)

end

end A320426.P12888305205494473034

/-! ## A320426.P11708550856893432766

`∑[A186973(n+1)]-n`
-/

namespace A320426.P11708550856893432766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A320426.P11708550856893432766

/-! ## A320426.P5182929906450068257

`Δ[abs(∑[n-A084422(n)])]`
-/

namespace A320426.P5182929906450068257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A084422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320426.P5182929906450068257

/-!
# A320427: a(n) = floor(3*n/2) + ceiling(n/6) + 9.

The programs for A320427, the canonical program `A320427.P15793055166458036667` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320427 has offset 1).

The definition of A320427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)/2)+ceil((n+1)/6)+9` (program `A320427.P15793055166458036667`, by `A320427.P15793055166458036667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320427.P15793055166458036667

`floor(3*(n+1)/2)+ceil((n+1)/6)+9`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A320427

/-- `floor(3*(n+1)/2)+ceil((n+1)/6)+9` -/
def P15793055166458036667.Spec : Prop :=
  ∀ n, P15793055166458036667.a n = A320427 (n + 1)

theorem P15793055166458036667.correct : P15793055166458036667.Spec := by
  intro n
  simp only [A320427, Nat.add_sub_cancel]

end A320427

/-! ## A320427.P14326185940256048385

`ogf((11+2x+x^2+2x^3+x^4+2x^5-9x^6)/(1-x-x^6+x^7))`
-/

namespace A320427.P14326185940256048385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 2, 1, 2, 1, 2, -9] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A320427.P14326185940256048385

namespace A320427

/-- `ogf((11+2x+x^2+2x^3+x^4+2x^5-9x^6)/(1-x-x^6+x^7))` -/
def P14326185940256048385.Spec : Prop :=
  ∀ n, P14326185940256048385.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P10646394774270374701

`A004396(∑[4-gcd(2, n)]+14)`
-/

namespace A320427.P10646394774270374701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j + 14).toNat

end

end A320427.P10646394774270374701

namespace A320427

/-- `A004396(∑[4-gcd(2, n)]+14)` -/
def P10646394774270374701.Spec : Prop :=
  ∀ n, P10646394774270374701.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P143421352877806432

`A004396(∑[5-a(n-1)])` with `a(0)=16, a(1)=3`
-/

namespace A320427.P143421352877806432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320427.P143421352877806432

namespace A320427

/-- `A004396(∑[5-a(n-1)])` -/
def P143421352877806432.Spec : Prop :=
  ∀ n, P143421352877806432.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P6046265946002292215

`A004396(A047209(n+7))`
-/

namespace A320427.P6046265946002292215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A047209 (n + 7)).toNat

end

end A320427.P6046265946002292215

namespace A320427

/-- `A004396(A047209(n+7))` -/
def P6046265946002292215.Spec : Prop :=
  ∀ n, P6046265946002292215.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P15235797875611381864

`A004396(A047203(2*(n+2))+12)`
-/

namespace A320427.P15235797875611381864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A047203 (2 * (n + 2)) + 12).toNat

end

end A320427.P15235797875611381864

namespace A320427

/-- `A004396(A047203(2*(n+2))+12)` -/
def P15235797875611381864.Spec : Prop :=
  ∀ n, P15235797875611381864.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P4917504055369697252

`A004396(A007494(n+6)+n+7)`
-/

namespace A320427.P4917504055369697252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A007494 (n + 6) + (n + 7 : ℤ)).toNat

end

end A320427.P4917504055369697252

namespace A320427

/-- `A004396(A007494(n+6)+n+7)` -/
def P4917504055369697252.Spec : Prop :=
  ∀ n, P4917504055369697252.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P4088491637336213196

`A004396(A032766(A016789(n+3))-2*n)`
-/

namespace A320427.P4088491637336213196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A032766 (A016789 (n + 3)).toNat - (2 * n : ℤ)).toNat

end

end A320427.P4088491637336213196

namespace A320427

/-- `A004396(A032766(A016789(n+3))-2*n)` -/
def P4088491637336213196.Spec : Prop :=
  ∀ n, P4088491637336213196.a n = A320427 (n + 1)

end A320427

/-! ## A320427.P8782059864906109457

`A002264(or(1, A016885(n+6)))`
-/

namespace A320427.P8782059864906109457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 1 (A016885 (n + 6))).toNat

end

end A320427.P8782059864906109457

namespace A320427

/-- `A002264(or(1, A016885(n+6)))` -/
def P8782059864906109457.Spec : Prop :=
  ∀ n, P8782059864906109457.a n = A320427 (n + 1)

end A320427

/-!
# A320429: The length of the shortest prefix of the Thue-Morse word decomposable to not less than n palindromes.

The programs for A320429, the canonical program `A320429.P11263206013093700429` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320429 has offset 1).

The definition of A320429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320429.P11263206013093700429

`16*a(n-3)-6` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A320429

/-- `16*a(n-3)-6` -/
def P11263206013093700429.Spec : Prop :=
  ∀ n, P11263206013093700429.a n = A320429 (n + 1)

theorem P11263206013093700429.correct : P11263206013093700429.Spec := by
  intro n
  simp only [A320429, Nat.add_sub_cancel]

end A320429

/-! ## A320429.P4601708550611903287

`ogf((1+x+4x^2-12x^3)/(1-x-16x^3+16x^4))`
-/

namespace A320429.P4601708550611903287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4, -12] [1, -1, 0, -16, 16] n

end

end A320429.P4601708550611903287

namespace A320429

/-- `ogf((1+x+4x^2-12x^3)/(1-x-16x^3+16x^4))` -/
def P4601708550611903287.Spec : Prop :=
  ∀ n, P4601708550611903287.a n = A320429 (n + 1)

end A320429

/-! ## A320429.P10628651942670115241

`∑[ceil(4^(ceil(2*n/3)-1))]`
-/

namespace A320429.P10628651942670115241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ (⌈2 * ((n : ℚ) / 3)⌉ - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320429.P10628651942670115241

namespace A320429

/-- `∑[ceil(4^(ceil(2*n/3)-1))]` -/
def P10628651942670115241.Spec : Prop :=
  ∀ n, P10628651942670115241.a n = A320429 (n + 1)

end A320429

/-! ## A320429.P17154078340179369139

`∑[round(4^(∑[((2*n)²²%3)²]-1))]+1`
-/

namespace A320429.P17154078340179369139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2) ^ 2 % 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320429.P17154078340179369139

namespace A320429

/-- `∑[round(4^(∑[((2*n)²²%3)²]-1))]+1` -/
def P17154078340179369139.Spec : Prop :=
  ∀ n, P17154078340179369139.a n = A320429 (n + 1)

end A320429

/-! ## A320429.P3087414471752557473

`floor(∑[2^A063200(n+1)]/4)+1`
-/

namespace A320429.P3087414471752557473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A063200 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 4⌋ + 1

end

end A320429.P3087414471752557473

namespace A320429

/-- `floor(∑[2^A063200(n+1)]/4)+1` -/
def P3087414471752557473.Spec : Prop :=
  ∀ n, P3087414471752557473.a n = A320429 (n + 1)

end A320429

/-! ## A320429.P5006179617570186869

`A136412(2*n+1)%A136412(round(2*n/3))`
-/

namespace A320429.P5006179617570186869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136412 (2 * n + 1)) (A136412 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat)

end

end A320429.P5006179617570186869

namespace A320429

/-- `A136412(2*n+1)%A136412(round(2*n/3))` -/
def P5006179617570186869.Spec : Prop :=
  ∀ n, P5006179617570186869.a n = A320429 (n + 1)

end A320429

/-!
# A320431: The number of tiles inside a regular n-gon created by lines that run from each of the vertices of the n edges orthogonal to these edges.

The programs for A320431, the canonical program `A320431.P16038316354443964098` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320431 has offset 3).

The definition of A320431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320431.P16038316354443964098

`ogf((1+x+28x^2+10x^3-19x^4-11x^5+6x^6+4x^7)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A320431

/-- `ogf((1+x+28x^2+10x^3-19x^4-11x^5+6x^6+4x^7)/(1-3x^2+3x^4-x^6))` -/
def P16038316354443964098.Spec : Prop :=
  ∀ n, P16038316354443964098.a n = A320431 (n + 3)

theorem P16038316354443964098.correct : P16038316354443964098.Spec := by
  intro n
  simp only [A320431, Nat.add_sub_cancel]

end A320431

/-! ## A320431.P327921365060665001

`2*A070260(n+1)%A060890(n)+1`
-/

namespace A320431.P327921365060665001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A070260 (n + 1)) (A060890 n) + 1

end

end A320431.P327921365060665001

namespace A320431

/-- `2*A070260(n+1)%A060890(n)+1` -/
def P327921365060665001.Spec : Prop :=
  ∀ n, P327921365060665001.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P14203480211655571898

`2*and(A070260(n+1), A134824(n))+1`
-/

namespace A320431.P14203480211655571898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A070260 (n + 1)) (A134824 n) + 1

end

end A320431.P14203480211655571898

namespace A320431

/-- `2*and(A070260(n+1), A134824(n))+1` -/
def P14203480211655571898.Spec : Prop :=
  ∀ n, P14203480211655571898.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P14689687205965785901

`A016825(and(A070260(n+1), A134824(n)))/2`
-/

namespace A320431.P14689687205965785901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (Int.land (A070260 (n + 1)) (A134824 n)).toNat : ℚ) / 2

end

end A320431.P14689687205965785901

namespace A320431

/-- `A016825(and(A070260(n+1), A134824(n)))/2` -/
def P14689687205965785901.Spec : Prop :=
  ∀ n, P14689687205965785901.a n = (A320431 (n + 3) : ℚ)

end A320431

/-! ## A320431.P8611802883328192403

`A005408(floor(atan(n))*A070262(2*(n+1)))`
-/

namespace A320431.P8611802883328192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (⌊Real.arctan (n : ℝ)⌋ * A070262 (2 * (n + 1))).toNat

end

end A320431.P8611802883328192403

namespace A320431

/-- `A005408(floor(atan(n))*A070262(2*(n+1)))` -/
def P8611802883328192403.Spec : Prop :=
  ∀ n, P8611802883328192403.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P2168621493665431353

`A005408(A070260(n+1)%A002523(n))`
-/

namespace A320431.P2168621493665431353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A070260 (n + 1)) (A002523 n)).toNat

end

end A320431.P2168621493665431353

namespace A320431

/-- `A005408(A070260(n+1)%A002523(n))` -/
def P2168621493665431353.Spec : Prop :=
  ∀ n, P2168621493665431353.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P7706531756647651322

`A005408(and(A070260(n+1), A134824(n)))`
-/

namespace A320431.P7706531756647651322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.land (A070260 (n + 1)) (A134824 n)).toNat

end

end A320431.P7706531756647651322

namespace A320431

/-- `A005408(and(A070260(n+1), A134824(n)))` -/
def P7706531756647651322.Spec : Prop :=
  ∀ n, P7706531756647651322.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P15656783470607207583

`A004273(and(A070260(n+1), A134824(n))+1)`
-/

namespace A320431.P15656783470607207583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.land (A070260 (n + 1)) (A134824 n) + 1).toNat

end

end A320431.P15656783470607207583

namespace A320431

/-- `A004273(and(A070260(n+1), A134824(n))+1)` -/
def P15656783470607207583.Spec : Prop :=
  ∀ n, P15656783470607207583.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P3018291876061915231

`A005843(and(A070260(n+1), A134824(n)))+1`
-/

namespace A320431.P3018291876061915231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (A070260 (n + 1)) (A134824 n)).toNat + 1

end

end A320431.P3018291876061915231

namespace A320431

/-- `A005843(and(A070260(n+1), A134824(n)))+1` -/
def P3018291876061915231.Spec : Prop :=
  ∀ n, P3018291876061915231.a n = A320431 (n + 3)

end A320431

/-! ## A320431.P4776162433651681135

`A005408((A297999(n)-A297826(n))*A070260(n+1))`
-/

namespace A320431.P4776162433651681135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((A297999 n - A297826 n) * A070260 (n + 1)).toNat

end

end A320431.P4776162433651681135

namespace A320431

/-- `A005408((A297999(n)-A297826(n))*A070260(n+1))` -/
def P4776162433651681135.Spec : Prop :=
  ∀ n, P4776162433651681135.a n = A320431 (n + 3)

end A320431

/-!
# A320432: Expansion of e.g.f. exp(3 * (1 - exp(x)) + x).

The programs for A320432, there is no canonical definition to state claims against.
-/

/-! ## A320432.P4295046798566168627

`-(A309084(n+1)/3)`
-/

namespace A320432.P4295046798566168627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A309084 (n + 1) : ℚ) / 3)

end

end A320432.P4295046798566168627

/-! ## A320432.P9541379785753337438

`∑{#}[n, C(n, #)*A309084(#)]`
-/

namespace A320432.P9541379785753337438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A309084 k

end

end A320432.P9541379785753337438

/-! ## A320432.P1536363021906189332

`A335977(∑[n+3]+n+3)`
-/

namespace A320432.P1536363021906189332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A320432.P1536363021906189332

/-! ## A320432.P7633582179593186236

`a(n-1)*ratio[A309084(n)]` with `a(0)=1`
-/

namespace A320432.P7633582179593186236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309084 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A320432.P7633582179593186236

/-! ## A320432.P5653750190789065176

`A000035(2*n)-A309084(n+1)/3`
-/

namespace A320432.P5653750190789065176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℚ) - (A309084 (n + 1) : ℚ) / 3

end

end A320432.P5653750190789065176

/-! ## A320432.P6589749618595649337

`log2(A160338(n+1))-A309084(n+1)/3`
-/

namespace A320432.P6589749618595649337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A160338 (n + 1) : ℝ) - ((A309084 (n + 1) : ℚ) / 3 : ℝ)

end

end A320432.P6589749618595649337

/-! ## A320432.P5547101341183747133

`A309084(n+1)/A309084(A160338(n+2))`
-/

namespace A320432.P5547101341183747133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309084 (n + 1) : ℚ) / (A309084 (A160338 (n + 2)).toNat : ℚ)

end

end A320432.P5547101341183747133

/-! ## A320432.P4755510226906107223

`A309084(n+1)/A309084(A088705(2*n+1))`
-/

namespace A320432.P4755510226906107223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309084 (n + 1) : ℚ) / (A309084 (A088705 (2 * n + 1)).toNat : ℚ)

end

end A320432.P4755510226906107223

/-!
# A320433: Expansion of e.g.f. exp(4 * (1 - exp(x)) + x).

The programs for A320433, there is no canonical definition to state claims against.
-/

/-! ## A320433.P10432996129817305000

`∑{#}[n, C(n, #)*A309085(#)]`
-/

namespace A320433.P10432996129817305000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A309085 k

end

end A320433.P10432996129817305000

/-! ## A320433.P14911887788229488550

`A335977(A052905(n+2))`
-/

namespace A320433.P14911887788229488550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A052905 (n + 2)).toNat

end

end A320433.P14911887788229488550

/-! ## A320433.P12800360418420564033

`A335977(eq[4, A025581(n)])`
-/

namespace A320433.P12800360418420564033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320433.P12800360418420564033

/-! ## A320433.P8902869154088656339

`A335977(A046691(n+3)-1)`
-/

namespace A320433.P8902869154088656339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A046691 (n + 3) - 1).toNat

end

end A320433.P8902869154088656339

/-! ## A320433.P1329428519755272299

`A335977(A000217(n+5)-5)`
-/

namespace A320433.P1329428519755272299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A000217 (n + 5) - 5).toNat

end

end A320433.P1329428519755272299

/-! ## A320433.P13688885203212832339

`A335977(Δ[A023545(n+1)]-1)`
-/

namespace A320433.P13688885203212832339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (f1 (n + 1) - f1 n - 1).toNat

end

end A320433.P13688885203212832339

/-! ## A320433.P17988738678774148983

`A335977(A027379(n+2)+n+3)`
-/

namespace A320433.P17988738678774148983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A027379 (n + 2) + (n + 3 : ℤ)).toNat

end

end A320433.P17988738678774148983

/-! ## A320433.P6306576582709471050

`A335977((n+8)²-A000096(n+9))`
-/

namespace A320433.P6306576582709471050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (((n + 8) ^ 2 : ℤ) - A000096 (n + 9)).toNat

end

end A320433.P6306576582709471050

/-!
# A320434: Number of length-n quasiperiodic binary strings.

The programs for A320434, there is no canonical definition to state claims against.
-/

/-! ## A320434.P3016341759378351592

`2^(n+1)-A216215(n+1)`
-/

namespace A320434.P3016341759378351592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A216215 (n + 1)

end

end A320434.P3016341759378351592

/-! ## A320434.P10364170036869836531

`A000051(n)+A000225(n)-A216215(n+1)`
-/

namespace A320434.P10364170036869836531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A216215 (n + 1))

end

end A320434.P10364170036869836531

/-! ## A320434.P14303847927969988082

`Δ[A035327(∑[A216215(n)])]`
-/

namespace A320434.P14303847927969988082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320434.P14303847927969988082

/-! ## A320434.P6340956024490759989

`Δ[A080079(∑[A216215(n)])]`
-/

namespace A320434.P6340956024490759989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320434.P6340956024490759989

/-!
# A320435: Regular triangle read by rows where T(n,k) is the number of relatively prime k-subsets of {1,...,n}, 1 <= k <= n.

The programs for A320435, there is no canonical definition to state claims against.
-/

/-! ## A320435.P2721750446737221268

`A101391(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A320435.P2721750446737221268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101391 (n + 1) + SequenceMachineLib.triUp a n

end

end A320435.P2721750446737221268

/-! ## A320435.P6808579838973031843

`A319856(A142992(n))+1`
-/

namespace A320435.P6808579838973031843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A142992 n).toNat + 1

end

end A320435.P6808579838973031843

/-! ## A320435.P6076993083485200478

`A049108(A295205(n+1)^A004736(n+1))`
-/

namespace A320435.P6076993083485200478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (SequenceMachineLib.roundAway ((A295205 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A320435.P6076993083485200478

/-! ## A320435.P8540465492548404271

`A196238(A101919(n))`
-/

namespace A320435.P8540465492548404271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A101919 n).toNat

end

end A320435.P8540465492548404271

/-! ## A320435.P15989451347310803964

`A283297(A271705(n))`
-/

namespace A320435.P15989451347310803964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A271705 n).toNat

end

end A320435.P15989451347310803964

/-!
# A320436: Irregular triangle read by rows where T(n,k) is the number of pairwise coprime k-subsets of {1,...,n}, 1 <= k <= A036234(n), where a single number is not considered to be pairwise coprime unless it is equal to 1.

The programs for A320436, there is no canonical definition to state claims against.
-/

/-! ## A320436.P3775118176332644653

`round(sqrt((A186974(n+1)%A187262(n+1))²+1))`
-/

namespace A320436.P3775118176332644653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A186974 (n + 1)) (A187262 (n + 1)) ^ 2 + 1 : ℝ))

end

end A320436.P3775118176332644653

/-! ## A320436.P12457835422431444726

`A028310(A186974(n+1)%A187262(n+1))`
-/

namespace A320436.P12457835422431444726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A186974 (n + 1)) (A187262 (n + 1))).toNat

end

end A320436.P12457835422431444726

/-! ## A320436.P18185008270437397327

`A355146(lt[A355147(n+1), A355146(3*n+2)])`
-/

namespace A320436.P18185008270437397327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355146 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320436.P18185008270437397327

/-!
# A320439: Number of factorizations of n into factors > 1 where each factor's prime indices are relatively prime. Number of factorizations of n using elements of A289509.

The programs for A320439, there is no canonical definition to state claims against.
-/

/-! ## A320439.P3361438313129301992

`A349906(n+1)+A010054(A045967(n+1))`
-/

namespace A320439.P3361438313129301992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (n + 1) + A010054 (A045967 (n + 1)).toNat

end

end A320439.P3361438313129301992

/-! ## A320439.P6132503025242710851

`A349906(n+1)+A122840(A111079(n+1))`
-/

namespace A320439.P6132503025242710851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (n + 1) + A122840 (A111079 (n + 1)).toNat

end

end A320439.P6132503025242710851

/-! ## A320439.P18388541722460007951

`A349906(n+1)^A316826(A320017(n+1))`
-/

namespace A320439.P18388541722460007951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349906 (n + 1) : ℚ) ^ (A316826 (A320017 (n + 1)).toNat : ℤ)

end

end A320439.P18388541722460007951

/-! ## A320439.P5284317686592426319

`gcd(A167688(A193176(n+1)), A349906(n+1))`
-/

namespace A320439.P5284317686592426319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167688 (A193176 (n + 1)).toNat) (A349906 (n + 1))

end

end A320439.P5284317686592426319

/-! ## A320439.P8721194189547092853

`A254379(A026790(n+3))+A007814(n+1)`
-/

namespace A320439.P8721194189547092853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A026790 (n + 3)).toNat + A007814 (n + 1)

end

end A320439.P8721194189547092853

/-!
# A320440: Row sums of A225043.

The programs for A320440, the canonical program `A320440.P9191379106385775961` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320440 has offset 0).

The definition of A320440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320440.P9191379106385775961

`∑{#}[n, C(n, #)%(n+1)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320440

/-- `∑{#}[n, C(n, #)%(n+1)]` -/
def P9191379106385775961.Spec : Prop :=
  ∀ n, (P9191379106385775961.a n : ℤ) = A320440 n

theorem P9191379106385775961.correct : P9191379106385775961.Spec := by
  intro n
  simp only [A320440]

end A320440

/-! ## A320440.P6855952795879761045

`A033443(A279402(2*(n+1)))+∑{p}[n+1, ceil(n/#)]`
-/

namespace A320440.P6855952795879761045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033443 (A279402 (2 * (n + 1))).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉

end

end A320440.P6855952795879761045

namespace A320440

/-- `A033443(A279402(2*(n+1)))+∑{p}[n+1, ceil(n/#)]` -/
def P6855952795879761045.Spec : Prop :=
  ∀ n, P6855952795879761045.a n = A320440 n

end A320440

/-! ## A320440.P7347682683895216214

`A125186(A086666(n+1))+A053602(n)`
-/

namespace A320440.P7347682683895216214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A086666 (n + 1)).toNat + A053602 n

end

end A320440.P7347682683895216214

namespace A320440

/-- `A125186(A086666(n+1))+A053602(n)` -/
def P7347682683895216214.Spec : Prop :=
  ∀ n, P7347682683895216214.a n = A320440 n

end A320440

/-!
# A320441: Numbers whose binary expansion is quasiperiodic.

The programs for A320441, there is no canonical definition to state claims against.
-/

/-! ## A320441.P5002880979032116461

`lt[A000217(A147756(n)), A000056(n+1)]`
-/

namespace A320441.P5002880979032116461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A147756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320441.P5002880979032116461

/-! ## A320441.P14484921054208106903

`lt[A080681(n+1), A160430(A242869(n))]`
-/

namespace A320441.P14484921054208106903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160430 (A242869 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320441.P14484921054208106903

/-! ## A320441.P13192223381565944360

`filter[A354616(n+1), A354614(#)]`
-/

namespace A320441.P13192223381565944360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354614 (f1 j).toNat = 1) n)

end

end A320441.P13192223381565944360

/-! ## A320441.P6705908163855221928

`lt[2*A361942(n), A070941(n)]`
-/

namespace A320441.P6705908163855221928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320441.P6705908163855221928

/-! ## A320441.P1639268053391563807

`eq[char[A354616(n+1)], A354614(n)]`
-/

namespace A320441.P1639268053391563807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354616 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A320441.P1639268053391563807

/-!
# A320442: Primes which are the concatenation of primes p and 2*p-1.

The programs for A320442, there is no canonical definition to state claims against.
-/

/-! ## A320442.P33444504322881568

`A019550(A320445(n+1))-1`
-/

namespace A320442.P33444504322881568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (A320445 (n + 1)).toNat - 1

end

end A320442.P33444504322881568

/-! ## A320442.P18096388490167241524

`A019550(∩[A005382(n+1), A244085(n+1)])-1`
-/

namespace A320442.P18096388490167241524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A320442.P18096388490167241524

/-! ## A320442.P15410705009978085018

`A019550(∩[A174568(n+1), A244085(n+1)])-1`
-/

namespace A320442.P15410705009978085018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A320442.P15410705009978085018

/-! ## A320442.P13105996967247920025

`A019550(∩[A244085(n+1), A265394(n+1)])-1`
-/

namespace A320442.P13105996967247920025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A320442.P13105996967247920025

/-!
# A320443: Number of lattice paths from {n}^n to {0}^n using steps that decrement one component by 1 such that for each point p we have abs(p_{i}-p_{(i mod n)+1}) <= 1 and the first component used is p_1.

The programs for A320443, there is no canonical definition to state claims against.
-/

/-! ## A320443.P7718974905999785932

`A318191(C(n+n+1, 2)+n)`
-/

namespace A320443.P7718974905999785932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318191 (Nat.choose (n + n + 1) 2 + n)

end

end A320443.P7718974905999785932

/-! ## A320443.P15542401616249417663

`A318191(∑[4*n])`
-/

namespace A320443.P15542401616249417663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318191 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320443.P15542401616249417663

/-!
# A320444: Number of uniform hypertrees spanning n vertices.

The programs for A320444, there is no canonical definition to state claims against.
-/

/-! ## A320444.P6996488858149236100

`A333211(A100905(n+1))+A000272(n)`
-/

namespace A320444.P6996488858149236100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333211 (A100905 (n + 1)).toNat + A000272 n

end

end A320444.P6996488858149236100

/-! ## A320444.P6438849911226248835

`n*A290870(n^n)+1`
-/

namespace A320444.P6438849911226248835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290870 (n ^ n) + 1

end

end A320444.P6438849911226248835

/-!
# A320445: Primes p such that 2*p-1 and the concatenation of p and 2*p-1 are primes.

The programs for A320445, there is no canonical definition to state claims against.
-/

/-! ## A320445.P5682503099171249048

`∩[A005382(n+1), A244085(n+1)]`
-/

namespace A320445.P5682503099171249048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320445.P5682503099171249048

/-! ## A320445.P13380154466943264126

`∩[A068080(n+1), A244085(n+1)]`
-/

namespace A320445.P13380154466943264126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320445.P13380154466943264126

/-! ## A320445.P11745978774573050570

`∩[A174568(n+1), A244085(n+1)]`
-/

namespace A320445.P11745978774573050570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320445.P11745978774573050570

/-! ## A320445.P7795866483831573745

`∩[A244085(n+1), A265394(n+1)]`
-/

namespace A320445.P7795866483831573745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320445.P7795866483831573745

/-! ## A320445.P10570627237896271349

`∩[A244085(n+1), A384020(n+1)]`
-/

namespace A320445.P10570627237896271349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320445.P10570627237896271349

/-!
# A320446: Covers of triangles by tetrahedra: number of labeled 4-uniform hypergraphs spanning n vertices such that every three vertices appear together in some edge.

The programs for A320446, there is no canonical definition to state claims against.
-/

/-! ## A320446.P1537060283450912229

`A352366(A137744(n+1))`
-/

namespace A320446.P1537060283450912229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 (A137744 (n + 1)).toNat

end

end A320446.P1537060283450912229

/-! ## A320446.P12816646727155996231

`A352366(A113984(n)-(n+1))`
-/

namespace A320446.P12816646727155996231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 (A113984 n - (n + 1 : ℤ)).toNat

end

end A320446.P12816646727155996231

/-! ## A320446.P12798318061769776518

`A352366(A113984(n)-1-n)`
-/

namespace A320446.P12798318061769776518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 (A113984 n - 1 - (n : ℤ)).toNat

end

end A320446.P12798318061769776518

/-!
# A320447: n such that all n - p are prime where p is prime in range n/2 <= p < n.

The programs for A320447, there is no canonical definition to state claims against.
-/

/-! ## A320447.P2315885795282346148

`A029006(a(n-1))+2` with `a(0)=5`
-/

namespace A320447.P2315885795282346148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A029006 (a (n - 1)).toNat + 2

end

end A320447.P2315885795282346148

/-!
# A320448: a(n) is the maximum number of distinct distances between n non-attacking rooks on an n X n chessboard.

The programs for A320448, there is no canonical definition to state claims against.
-/

/-! ## A320448.P2180583730606449111

`floor((floor(n^sqrt(3))-1)/sqrt(2))+1`
-/

namespace A320448.P2180583730606449111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℝ) ^ (Real.sqrt (3 : ℝ))⌋ - 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1

end

end A320448.P2180583730606449111

/-! ## A320448.P17520007497831374415

`round(2*comp[A324166(n)]*n/7)`
-/

namespace A320448.P17520007497831374415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324166 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) * ((n : ℚ) / 7))

end

end A320448.P17520007497831374415

/-! ## A320448.P3044548417163144095

`floor((2*n*comp[A122802(n)]+1)/7)`
-/

namespace A320448.P3044548417163144095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122802 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) / 7⌋

end

end A320448.P3044548417163144095

/-! ## A320448.P3243178242343894982

`round(2*(A101947(n+7)-5)*n/7)`
-/

namespace A320448.P3243178242343894982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (A101947 (n + 7) - 5) : ℚ) * ((n : ℚ) / 7))

end

end A320448.P3243178242343894982

/-! ## A320448.P11126782105622273608

`∑[floor((n+1)/ϕ)-A030217(3*n+2)]`
-/

namespace A320448.P11126782105622273608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ - A030217 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320448.P11126782105622273608

/-!
# A320449: Number of antichains of sets whose multiset union is an integer partition of n.

The programs for A320449, there is no canonical definition to state claims against.
-/

/-! ## A320449.P10908093932755285312

`A342382(A327744(n))`
-/

namespace A320449.P10908093932755285312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342382 (A327744 n).toNat

end

end A320449.P10908093932755285312

/-! ## A320449.P3519488768199555156

`A344022(A257655(n)+1)`
-/

namespace A320449.P3519488768199555156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344022 (A257655 n + 1).toNat

end

end A320449.P3519488768199555156

/-! ## A320449.P13776235193783566914

`A344022(A318026(n)+1)`
-/

namespace A320449.P13776235193783566914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344022 (A318026 n + 1).toNat

end

end A320449.P13776235193783566914

/-! ## A320449.P17927137511462551809

`A128559(A107742(n)+A032741(n))`
-/

namespace A320449.P17927137511462551809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A107742 n + A032741 n).toNat

end

end A320449.P17927137511462551809

/-! ## A320449.P4485410133761317786

`A294617(n)+A262265(A328546(n))`
-/

namespace A320449.P4485410133761317786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294617 n + A262265 (A328546 n).toNat

end

end A320449.P4485410133761317786

/-!
# A320452: Number of possible states when placing n tokens of 2 alternating types on 2 piles.

The programs for A320452, there is no canonical definition to state claims against.
-/

/-! ## A320452.P12173497706927410549

`record[A118884(n)-A185037(n)]`
-/

namespace A320452.P12173497706927410549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118884 n - A185037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320452.P12173497706927410549

/-! ## A320452.P14641102348025171059

`A008937(n+1)-A338730(A213000(n))`
-/

namespace A320452.P14641102348025171059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - A338730 (A213000 n).toNat

end

end A320452.P14641102348025171059

/-! ## A320452.P5352198368799275580

`A008937(n+1)-A185037(A002865(n+1))`
-/

namespace A320452.P5352198368799275580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - A185037 (A002865 (n + 1)).toNat

end

end A320452.P5352198368799275580

/-! ## A320452.P14556283290301525404

`A008937(n+1)-A010054(A117302(n+2))`
-/

namespace A320452.P14556283290301525404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - A010054 (A117302 (n + 2)).toNat

end

end A320452.P14556283290301525404

/-! ## A320452.P1288734934582110569

`∑[A136175(1+C(n, 2))]`
-/

namespace A320452.P1288734934582110569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136175 (1 + Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320452.P1288734934582110569

/-!
# A320453: a(n) = (n^n + n*(-1)^n)/(n + 1).

The programs for A320453, the canonical program `A320453.P9955154508496927620` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320453 has offset 1).

The definition of A320453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320453.P8740609429290213592

`((n+1)^(n+1)+(n+1)*(-1)^(n+1))/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320453.P8740609429290213592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ (n + 1) : ℤ) + (n + 1 : ℤ) * (-1) ^ (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A320453.P8740609429290213592

namespace A320453

/-- `((n+1)^(n+1)+(n+1)*(-1)^(n+1))/(n+2)` -/
def P8740609429290213592.Spec : Prop :=
  ∀ n, P8740609429290213592.a n = (A320453 (n + 1) : ℚ)

end A320453

/-! ## A320453.P9955154508496927620

`A000312(n+1)-A185634(n+2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320453

/-- `A000312(n+1)-A185634(n+2)` -/
def P9955154508496927620.Spec : Prop :=
  ∀ n, P9955154508496927620.a n = A320453 (n + 1)

theorem P9955154508496927620.correct : P9955154508496927620.Spec := by
  intro n
  simp only [A320453, Nat.add_sub_cancel]

end A320453

/-! ## A320453.P2410461497872075950

`xor(1, (n+1)^n)/ratio[n+1]`
-/

namespace A320453.P2410461497872075950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((n + 1) ^ n) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A320453.P2410461497872075950

namespace A320453

/-- `xor(1, (n+1)^n)/ratio[n+1]` -/
def P2410461497872075950.Spec : Prop :=
  ∀ n, P2410461497872075950.a n = (A320453 (n + 1) : ℚ)

end A320453

/-! ## A320453.P15838620824632080129

`(n+1)*xor(1, (n+1)^n)/(n+2)`
-/

namespace A320453.P15838620824632080129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.xor 1 ((n + 1) ^ n) : ℚ) / (n + 2 : ℚ))

end

end A320453.P15838620824632080129

namespace A320453

/-- `(n+1)*xor(1, (n+1)^n)/(n+2)` -/
def P15838620824632080129.Spec : Prop :=
  ∀ n, P15838620824632080129.a n = (A320453 (n + 1) : ℚ)

end A320453

/-! ## A320453.P6653513259380883244

`(n+1)*A083062(n)`
-/

namespace A320453.P6653513259380883244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083062 n

end

end A320453.P6653513259380883244

namespace A320453

/-- `(n+1)*A083062(n)` -/
def P6653513259380883244.Spec : Prop :=
  ∀ n, P6653513259380883244.a n = A320453 (n + 1)

end A320453

/-! ## A320453.P1290097568114689594

`Δ[or(1, ∑[A081216(n)])]`
-/

namespace A320453.P1290097568114689594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320453.P1290097568114689594

namespace A320453

/-- `Δ[or(1, ∑[A081216(n)])]` -/
def P1290097568114689594.Spec : Prop :=
  ∀ n, P1290097568114689594.a n = A320453 (n + 1)

end A320453

/-! ## A320453.P17373605413738214913

`xor(n, xor(n+1, A081216(n+1)))`
-/

namespace A320453.P17373605413738214913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n + 1 : ℤ) (A081216 (n + 1)))

end

end A320453.P17373605413738214913

namespace A320453

/-- `xor(n, xor(n+1, A081216(n+1)))` -/
def P17373605413738214913.Spec : Prop :=
  ∀ n, P17373605413738214913.a n = A320453 (n + 1)

end A320453

/-! ## A320453.P3163081895185227754

`A081216(n+1)-A062157(n+1)`
-/

namespace A320453.P3163081895185227754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 (n + 1) - A062157 (n + 1)

end

end A320453.P3163081895185227754

namespace A320453

/-- `A081216(n+1)-A062157(n+1)` -/
def P3163081895185227754.Spec : Prop :=
  ∀ n, P3163081895185227754.a n = A320453 (n + 1)

end A320453

/-! ## A320453.P10824917898715021216

`lcm(A083062(n), A181440(A181440(n+1)))`
-/

namespace A320453.P10824917898715021216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083062 n) (A181440 (A181440 (n + 1)).toNat)

end

end A320453.P10824917898715021216

namespace A320453

/-- `lcm(A083062(n), A181440(A181440(n+1)))` -/
def P10824917898715021216.Spec : Prop :=
  ∀ n, (P10824917898715021216.a n : ℤ) = A320453 (n + 1)

end A320453

/-! ## A320453.P18127690674202755218

`A081216(n+1)+A000035(n)-A000035(n+1)`
-/

namespace A320453.P18127690674202755218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 (n + 1) + (A000035 n - A000035 (n + 1))

end

end A320453.P18127690674202755218

namespace A320453

/-- `A081216(n+1)+A000035(n)-A000035(n+1)` -/
def P18127690674202755218.Spec : Prop :=
  ∀ n, P18127690674202755218.a n = A320453 (n + 1)

end A320453

/-!
# A320456: Numbers whose multiset multisystem spans an initial interval of positive integers.

The programs for A320456, there is no canonical definition to state claims against.
-/

/-! ## A320456.P5437777103780302840

`eq[0, A079067(A003963(n+1))]+1`
-/

namespace A320456.P5437777103780302840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320456.P5437777103780302840

/-! ## A320456.P13176564065621641070

`∪[A320634(n+1), A330060(n+1)]`
-/

namespace A320456.P13176564065621641070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320456.P13176564065621641070

/-! ## A320456.P3022228671673327640

`eq[1, A079068(A003963(2*(n+1)))]+1`
-/

namespace A320456.P3022228671673327640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A003963 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320456.P3022228671673327640

/-! ## A320456.P4244483515990685902

`record[A000027(n+1)/A079068(A003963(n+1))]`
-/

namespace A320456.P4244483515990685902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P4244483515990685902

/-! ## A320456.P9395399324342390148

`record[A032742(n+1)/A079068(A003963(n+1))]`
-/

namespace A320456.P9395399324342390148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P9395399324342390148

/-! ## A320456.P7582811052353926585

`record[A054576(n+1)/A079068(A003963(n+1))]`
-/

namespace A320456.P7582811052353926585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (n + 1) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P7582811052353926585

/-! ## A320456.P1850093527002679255

`record[A008619(2*n)/A079068(A003963(n+1))]`
-/

namespace A320456.P1850093527002679255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P1850093527002679255

/-! ## A320456.P8995786861760442664

`record[A028242(2*n)/A079068(A003963(n+1))]`
-/

namespace A320456.P8995786861760442664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P8995786861760442664

/-! ## A320456.P12885362841967262748

`record[A008611(3*n)/A079068(A003963(n+1))]`
-/

namespace A320456.P12885362841967262748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A079068 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320456.P12885362841967262748

/-!
# A320457: Lesser members of dihedral amicable pairs: numbers (m, k) such that t(m) = t(k) = m + k, where t(k) = sigma(k) + d(k).

The programs for A320457, there is no canonical definition to state claims against.
-/

/-! ## A320457.P14895581892489998334

`filter[A238226(n+1), A294936(#)]`
-/

namespace A320457.P14895581892489998334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A320457.P14895581892489998334

/-! ## A320457.P1261567265234481874

`filter[A238226(n+1), A378539(#)]`
-/

namespace A320457.P1261567265234481874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378539 (f1 j).toNat = 1) n)

end

end A320457.P1261567265234481874

/-! ## A320457.P17973234141690178969

`filter[A238226(n+2), A378550(#)]`
-/

namespace A320457.P17973234141690178969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A320457.P17973234141690178969

/-! ## A320457.P5277722282478167496

`A163163(A322254(n+1))`
-/

namespace A320457.P5277722282478167496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (A322254 (n + 1)).toNat

end

end A320457.P5277722282478167496

/-!
# A320458: MM-numbers of labeled simple graphs spanning an initial interval of positive integers.

The programs for A320458, there is no canonical definition to state claims against.
-/

/-! ## A320458.P456940837499177495

`record[∏{p}[A320459(n+1), #]]`
-/

namespace A320458.P456940837499177495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320459 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320458.P456940837499177495

/-! ## A320458.P9350834766563283294

`record[A007913(A320459(n+1))]`
-/

namespace A320458.P9350834766563283294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320458.P9350834766563283294

/-! ## A320458.P16492921651805234108

`filter[A320459(n+1), A008966(#)]`
-/

namespace A320458.P16492921651805234108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A320458.P16492921651805234108

/-! ## A320458.P11073280223646900937

`filter[A320459(n+1), A359377(#)]`
-/

namespace A320458.P11073280223646900937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A320458.P11073280223646900937

/-! ## A320458.P7326409386045419934

`filter[A320459(n+1), A359590(#)]`
-/

namespace A320458.P7326409386045419934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A320458.P7326409386045419934

/-!
# A320459: MM-numbers of labeled multigraphs spanning an initial interval of positive integers.

The programs for A320459, there is no canonical definition to state claims against.
-/

/-! ## A320459.P12080666734412815459

`∩[A320464(n+1), A339112(n+1)]`
-/

namespace A320459.P12080666734412815459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320459.P12080666734412815459

/-! ## A320459.P6081143257536027576

`∩[A320462(n+1), A320464(n+1)]`
-/

namespace A320459.P6081143257536027576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320459.P6081143257536027576

/-! ## A320459.P1525054782959610120

`A320464(eq[A030699(n+1), A273943(n)])`
-/

namespace A320459.P1525054782959610120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320459.P1525054782959610120

/-!
# A320460: Alphabetic length of a divide-and-conquer approach to the regular expression for permutations of n symbols.

The programs for A320460, the canonical program `A320460.P4475899884220507260` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320460 has offset 1).

The definition of A320460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320460.P4475899884220507260

`C(n+1, floor((n+1)/2))*(a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320460

/-- `C(n+1, floor((n+1)/2))*(a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1))` -/
def P4475899884220507260.Spec : Prop :=
  ∀ n, (P4475899884220507260.a n : ℤ) = A320460 (n + 1)

theorem P4475899884220507260.correct : P4475899884220507260.Spec := by
  intro n
  simp only [A320460, Nat.add_sub_cancel]

end A320460

/-! ## A320460.P2502945626161861405

`A297104(A261737(n))`
-/

namespace A320460.P2502945626161861405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297104 (A261737 n).toNat

end

end A320460.P2502945626161861405

namespace A320460

/-- `A297104(A261737(n))` -/
def P2502945626161861405.Spec : Prop :=
  ∀ n, P2502945626161861405.a n = A320460 (n + 1)

end A320460

/-!
# A320461: MM-numbers of labeled graphs with loops spanning an initial interval of positive integers.

The programs for A320461, there is no canonical definition to state claims against.
-/

/-! ## A320461.P17391581808420735387

`record[∏{p}[A320462(n+1), #]]`
-/

namespace A320461.P17391581808420735387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320462 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320461.P17391581808420735387

/-! ## A320461.P16328409238275500352

`record[A007913(A320462(n+1))]`
-/

namespace A320461.P16328409238275500352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320461.P16328409238275500352

/-! ## A320461.P6446012013048906219

`filter[A320462(n+1), A008966(#)]`
-/

namespace A320461.P6446012013048906219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A320461.P6446012013048906219

/-! ## A320461.P14993313007138608503

`filter[A320462(n+1), A323154(#)]`
-/

namespace A320461.P14993313007138608503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A320461.P14993313007138608503

/-! ## A320461.P6025108824301755281

`filter[A320462(n+1), A323239(#)]`
-/

namespace A320461.P6025108824301755281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A320461.P6025108824301755281

/-!
# A320462: MM-numbers of labeled multigraphs with loops spanning an initial interval of positive integers.

The programs for A320462, there is no canonical definition to state claims against.
-/

/-! ## A320462.P6631469837035343881

`∩[A320533(n+1), A339112(n+1)]`
-/

namespace A320462.P6631469837035343881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320462.P6631469837035343881

/-! ## A320462.P4600401259777766081

`∩[A319837(n+1), A339112(n+1)]`
-/

namespace A320462.P4600401259777766081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320462.P4600401259777766081

/-! ## A320462.P9211531113664694240

`∩[A320634(n+1), A339112(n+1)]`
-/

namespace A320462.P9211531113664694240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320462.P9211531113664694240

/-!
# A320463: MM-numbers of labeled simple hypergraphs with no singletons spanning an initial interval of positive integers.

The programs for A320463, there is no canonical definition to state claims against.
-/

/-! ## A320463.P4658769214824350050

`record[∏{p}[A320464(n+1), #]]`
-/

namespace A320463.P4658769214824350050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320463.P4658769214824350050

/-! ## A320463.P16784103192538124249

`record[A007913(A320464(n+1))]`
-/

namespace A320463.P16784103192538124249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320463.P16784103192538124249

/-! ## A320463.P15633900066557622515

`filter[A320464(n+1), A008966(#)]`
-/

namespace A320463.P15633900066557622515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A320463.P15633900066557622515

/-! ## A320463.P8293944034072630210

`filter[A320464(n+1), A323154(#)]`
-/

namespace A320463.P8293944034072630210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A320463.P8293944034072630210

/-! ## A320463.P8237477243212270118

`filter[A320464(n+1), A323239(#)]`
-/

namespace A320463.P8237477243212270118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A320463.P8237477243212270118

/-!
# A320464: MM-numbers of labeled multi-hypergraphs with no singletons spanning an initial interval of positive integers.

The programs for A320464, there is no canonical definition to state claims against.
-/

/-! ## A320464.P5563729552590035404

`∩[A302478(n+1), A320533(n+1)]`
-/

namespace A320464.P5563729552590035404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320464.P5563729552590035404

/-!
# A320465: a(n) = 2^n - (2^(n-1) mod n), where "mod" is the nonnegative remainder operator.

The programs for A320465, the canonical program `A320465.P12505392907078807362` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320465 has offset 1).

The definition of A320465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-(2^n)%(n+1)` (program `A320465.P12505392907078807362`, by `A320465.P12505392907078807362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320465.P12505392907078807362

`2^(n+1)-(2^n)%(n+1)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320465

/-- `2^(n+1)-(2^n)%(n+1)` -/
def P12505392907078807362.Spec : Prop :=
  ∀ n, P12505392907078807362.a n = A320465 (n + 1)

theorem P12505392907078807362.correct : P12505392907078807362.Spec := by
  intro n
  simp only [A320465, Nat.add_sub_cancel]

end A320465

/-! ## A320465.P15987807680092500097

`2^n+(n+1)*floor(2^n/(n+1))`
-/

namespace A320465.P15987807680092500097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (n + 1 : ℤ) * ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋

end

end A320465.P15987807680092500097

namespace A320465

/-- `2^n+(n+1)*floor(2^n/(n+1))` -/
def P15987807680092500097.Spec : Prop :=
  ∀ n, P15987807680092500097.a n = A320465 (n + 1)

end A320465

/-! ## A320465.P17697011636624036264

`A185195(A144721(n))`
-/

namespace A320465.P17697011636624036264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A144721 n).toNat

end

end A320465.P17697011636624036264

namespace A320465

/-- `A185195(A144721(n))` -/
def P17697011636624036264.Spec : Prop :=
  ∀ n, P17697011636624036264.a n = A320465 (n + 1)

end A320465

/-!
# A320467: Two-column table read by rows: The Mayan 260-day Tzolkin cycle, with day names replaced by numbers.

The programs for A320467, there is no canonical definition to state claims against.
-/

/-! ## A320467.P17991223912916640758

`∑[and(1, n+1)]%A340431(A295310(n+1))`
-/

namespace A320467.P17991223912916640758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A340431 (A295310 (n + 1)).toNat)

end

end A320467.P17991223912916640758

/-! ## A320467.P13451165021667975839

`A008619(n)%A340431(A295310(n+1))`
-/

namespace A320467.P13451165021667975839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) (A340431 (A295310 (n + 1)).toNat)

end

end A320467.P13451165021667975839

/-! ## A320467.P3947063467563472021

`∑[char[2*n]]%A078835(A137613(n+1))`
-/

namespace A320467.P3947063467563472021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A078835 (A137613 (n + 1)).toNat)

end

end A320467.P3947063467563472021

/-! ## A320467.P9536068004936215677

`A065033(n+1)%A339692(Δ[A168007(2*(n+3))]+1)`
-/

namespace A320467.P9536068004936215677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (n + 1)) (A339692 (f1 (n + 1) - f1 n + 1).toNat)

end

end A320467.P9536068004936215677

/-! ## A320467.P11393853768171770521

`gcd(1+floor(n/2), A235044(A057499(n+1)))`
-/

namespace A320467.P11393853768171770521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + ⌊(n : ℚ) / 2⌋) (A235044 (A057499 (n + 1)).toNat)

end

end A320467.P11393853768171770521

/-!
# A320468: a(n) = a(n-1) + 20*a(n-2), n >= 2; a(0)=1, a(1)=41.

The programs for A320468, the canonical program `A320468.P15713292697570714688` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320468 has offset 0).

The definition of A320468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+20*a(n-2)` (program `A320468.P15713292697570714688`, by `A320468.P15713292697570714688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320468.P3891546121985329904

`ogf((1+40x)/(1-x-20x^2))`
-/

namespace A320468.P3891546121985329904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 40] [1, -1, -20] n

end

end A320468.P3891546121985329904

namespace A320468

/-- `ogf((1+40x)/(1-x-20x^2))` -/
def P3891546121985329904.Spec : Prop :=
  ∀ n, P3891546121985329904.a n = A320468 n

end A320468

/-! ## A320468.P10112917793722910680

`(-4)^(n+1)+5^(n+1)`
-/

namespace A320468.P10112917793722910680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ (n + 1) + (5 ^ (n + 1) : ℤ)

end

end A320468.P10112917793722910680

namespace A320468

/-- `(-4)^(n+1)+5^(n+1)` -/
def P10112917793722910680.Spec : Prop :=
  ∀ n, P10112917793722910680.a n = A320468 n

theorem P10112917793722910680.correct : P10112917793722910680.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A320468, Nat.add_sub_cancel, A320468.P10112917793722910680.a, A320468.P15713292697570714688.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A320468, Nat.add_sub_cancel, A320468.P10112917793722910680.a, A320468.P15713292697570714688.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A320468

/-! ## A320468.P15713292697570714688

`a(n-1)+20*a(n-2)` with `a(0)=1, a(1)=41`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320468

/-- `a(n-1)+20*a(n-2)` -/
def P15713292697570714688.Spec : Prop :=
  ∀ n, (P15713292697570714688.a n : ℤ) = A320468 n

theorem P15713292697570714688.correct : P15713292697570714688.Spec := by
  intro n
  simp only [A320468]

end A320468

/-! ## A320468.P13356617798055604944

`Δ[A053428(n)+∑[A053428(n)]]`
-/

namespace A320468.P13356617798055604944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053428 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320468.P13356617798055604944

namespace A320468

/-- `Δ[A053428(n)+∑[A053428(n)]]` -/
def P13356617798055604944.Spec : Prop :=
  ∀ n, P13356617798055604944.a n = A320468 n

end A320468

/-! ## A320468.P13674447801862781027

`Δ[A104891(n)+A014985(n+1)]`
-/

namespace A320468.P13674447801862781027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 n + A014985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320468.P13674447801862781027

namespace A320468

/-- `Δ[A104891(n)+A014985(n+1)]` -/
def P13674447801862781027.Spec : Prop :=
  ∀ n, P13674447801862781027.a n = A320468 n

end A320468

/-! ## A320468.P9996247617629355358

`record[ratio[A053428(gcd(n, ∑[n]))]]`
-/

namespace A320468.P9996247617629355358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053428 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320468.P9996247617629355358

namespace A320468

/-- `record[ratio[A053428(gcd(n, ∑[n]))]]` -/
def P9996247617629355358.Spec : Prop :=
  ∀ n, P9996247617629355358.a n = (A320468 n : ℚ)

end A320468

/-! ## A320468.P484046907944657322

`A053428(Δ[n²])/A053428(n)`
-/

namespace A320468.P484046907944657322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A053428 n : ℚ)

end

end A320468.P484046907944657322

namespace A320468

/-- `A053428(Δ[n²])/A053428(n)` -/
def P484046907944657322.Spec : Prop :=
  ∀ n, P484046907944657322.a n = (A320468 n : ℚ)

end A320468

/-!
# A320469: a(n) = 3*a(n-1) + 10*a(n-2), n >= 2; a(0)=1, a(1)=1.

The programs for A320469, the canonical program `A320469.P13149538368565344735` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320469 has offset 0).

The definition of A320469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+10*a(n-2)` (program `A320469.P13149538368565344735`, by `A320469.P13149538368565344735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320469.P14258409946008156263

`ogf((1-2x)/(1-3x-10x^2))`
-/

namespace A320469.P14258409946008156263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, -10] n

end

end A320469.P14258409946008156263

namespace A320469

/-- `ogf((1-2x)/(1-3x-10x^2))` -/
def P14258409946008156263.Spec : Prop :=
  ∀ n, P14258409946008156263.a n = A320469 n

end A320469

/-! ## A320469.P13149538368565344735

`3*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320469

/-- `3*a(n-1)+10*a(n-2)` -/
def P13149538368565344735.Spec : Prop :=
  ∀ n, (P13149538368565344735.a n : ℤ) = A320469 n

theorem P13149538368565344735.correct : P13149538368565344735.Spec := by
  intro n
  simp only [A320469]

end A320469

/-! ## A320469.P321947263122646538

`(4*(-2)^n+3*5^n)/7`
-/

namespace A320469.P321947263122646538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (-2) ^ n + (3 * 5 ^ n : ℤ) : ℚ) / 7

end

end A320469.P321947263122646538

namespace A320469

/-- `(4*(-2)^n+3*5^n)/7` -/
def P321947263122646538.Spec : Prop :=
  ∀ n, P321947263122646538.a n = (A320469 n : ℚ)

theorem P321947263122646538.correct : P321947263122646538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A320469, Nat.add_sub_cancel, A320469.P321947263122646538.a, A320469.P13149538368565344735.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A320469, Nat.add_sub_cancel, A320469.P321947263122646538.a, A320469.P13149538368565344735.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A320469

/-! ## A320469.P4779862453805556116

`5*a(n-1)-(-2)^(n+1)` with `a(0)=1`
-/

namespace A320469.P4779862453805556116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (-2) ^ (n + 1)

end

end A320469.P4779862453805556116

namespace A320469

/-- `5*a(n-1)-(-2)^(n+1)` -/
def P4779862453805556116.Spec : Prop :=
  ∀ n, P4779862453805556116.a n = A320469 n

end A320469

/-! ## A320469.P9728926489209841065

`Δ[A015528(n)]-A015528(n)`
-/

namespace A320469.P9728926489209841065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015528 n

end

end A320469.P9728926489209841065

namespace A320469

/-- `Δ[A015528(n)]-A015528(n)` -/
def P9728926489209841065.Spec : Prop :=
  ∀ n, P9728926489209841065.a n = A320469 n

end A320469

/-! ## A320469.P4765565466747087153

`A122803(n)+3*A015528(n)`
-/

namespace A320469.P4765565466747087153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + 3 * A015528 n

end

end A320469.P4765565466747087153

namespace A320469

/-- `A122803(n)+3*A015528(n)` -/
def P4765565466747087153.Spec : Prop :=
  ∀ n, P4765565466747087153.a n = A320469 n

end A320469

/-! ## A320469.P10062298778065545848

`A015528(n+1)-2*A015528(n)`
-/

namespace A320469.P10062298778065545848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015528 (n + 1) - 2 * A015528 n

end

end A320469.P10062298778065545848

namespace A320469

/-- `A015528(n+1)-2*A015528(n)` -/
def P10062298778065545848.Spec : Prop :=
  ∀ n, P10062298778065545848.a n = A320469 n

end A320469

/-!
# A320470: Number of partitions of n such that the successive differences of consecutive parts are strictly decreasing.

The programs for A320470, there is no canonical definition to state claims against.
-/

/-! ## A320470.P7588848209451057691

`A029143(A187829(n+1)+A117592(n))`
-/

namespace A320470.P7588848209451057691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (A187829 (n + 1) + A117592 n).toNat

end

end A320470.P7588848209451057691

/-! ## A320470.P2284976662630351987

`A320837(A239100(n+4)-A320837(n+1))`
-/

namespace A320470.P2284976662630351987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (A239100 (n + 4) - A320837 (n + 1)).toNat

end

end A320470.P2284976662630351987

/-!
# A320471: a(n) = floor(sqrt(n)) mod ceiling(sqrt(n)).

The programs for A320471, the canonical program `A320471.P12898566965721676055` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320471 has offset 1).

The definition of A320471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320471.P16761983906513654689

`floor(sqrt(n+1))%ceil(sqrt(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320471.P16761983906513654689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.sqrt (n + 1) : ℤ) ⌈Real.sqrt (n + 1 : ℝ)⌉

end

end A320471.P16761983906513654689

namespace A320471

/-- `floor(sqrt(n+1))%ceil(sqrt(n+1))` -/
def P16761983906513654689.Spec : Prop :=
  ∀ n, P16761983906513654689.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P3551918817562791409

`C(ceil(sqrt(n+1)), floor(sqrt(n+1)))-1`
-/

namespace A320471.P3551918817562791409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat (Nat.sqrt (n + 1)) : ℤ) - 1

end

end A320471.P3551918817562791409

namespace A320471

/-- `C(ceil(sqrt(n+1)), floor(sqrt(n+1)))-1` -/
def P3551918817562791409.Spec : Prop :=
  ∀ n, P3551918817562791409.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P12898566965721676055

`A000196(n)*A049240(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320471

/-- `A000196(n)*A049240(n+1)` -/
def P12898566965721676055.Spec : Prop :=
  ∀ n, P12898566965721676055.a n = A320471 (n + 1)

theorem P12898566965721676055.correct : P12898566965721676055.Spec := by
  intro n
  simp only [A320471, Nat.add_sub_cancel]

end A320471

/-! ## A320471.P12816175561168824062

`A000196(n+1)-A037213(n+1)`
-/

namespace A320471.P12816175561168824062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A037213 (n + 1)

end

end A320471.P12816175561168824062

namespace A320471

/-- `A000196(n+1)-A037213(n+1)` -/
def P12816175561168824062.Spec : Prop :=
  ∀ n, P12816175561168824062.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P16057669846028478255

`n+1-A173517(n+1)-A037213(n+1)²`
-/

namespace A320471.P16057669846028478255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173517 (n + 1) - A037213 (n + 1) ^ 2

end

end A320471.P16057669846028478255

namespace A320471

/-- `n+1-A173517(n+1)-A037213(n+1)²` -/
def P16057669846028478255.Spec : Prop :=
  ∀ n, P16057669846028478255.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P10713034995921071015

`floor(sqrt(n))*char[comp[n²-1]]`
-/

namespace A320471.P10713034995921071015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n * (if ∃ j, f1 j = n then 1 else 0)

end

end A320471.P10713034995921071015

namespace A320471

/-- `floor(sqrt(n))*char[comp[n²-1]]` -/
def P10713034995921071015.Spec : Prop :=
  ∀ n, (P10713034995921071015.a n : ℤ) = A320471 (n + 1)

end A320471

/-! ## A320471.P10295993691812487362

`sqrt(floor(sqrt(n+1))²%(n+1))`
-/

namespace A320471.P10295993691812487362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.sqrt (n + 1) ^ 2 % (n + 1) : ℕ) : ℝ)

end

end A320471.P10295993691812487362

namespace A320471

/-- `sqrt(floor(sqrt(n+1))²%(n+1))` -/
def P10295993691812487362.Spec : Prop :=
  ∀ n, P10295993691812487362.a n = (A320471 (n + 1) : ℝ)

end A320471

/-! ## A320471.P10542341207013462998

`floor(A072689(n+1)/2)`
-/

namespace A320471.P10542341207013462998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072689 (n + 1) : ℚ) / 2⌋

end

end A320471.P10542341207013462998

namespace A320471

/-- `floor(A072689(n+1)/2)` -/
def P10542341207013462998.Spec : Prop :=
  ∀ n, P10542341207013462998.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P2990416977418673443

`floor(sqrt(n)/A056926(n+1))`
-/

namespace A320471.P2990416977418673443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) / (A056926 (n + 1) : ℝ)⌋

end

end A320471.P2990416977418673443

namespace A320471

/-- `floor(sqrt(n)/A056926(n+1))` -/
def P2990416977418673443.Spec : Prop :=
  ∀ n, P2990416977418673443.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P12811956237628359186

`floor(sqrt(lcm(n, A344617(n+1))))`
-/

namespace A320471.P12811956237628359186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Int.lcm (n : ℤ) (A344617 (n + 1)))

end

end A320471.P12811956237628359186

namespace A320471

/-- `floor(sqrt(lcm(n, A344617(n+1))))` -/
def P12811956237628359186.Spec : Prop :=
  ∀ n, (P12811956237628359186.a n : ℤ) = A320471 (n + 1)

end A320471

/-! ## A320471.P13880874821074532279

`A004524(A072689(n+1))`
-/

namespace A320471.P13880874821074532279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A072689 (n + 1)).toNat

end

end A320471.P13880874821074532279

namespace A320471

/-- `A004524(A072689(n+1))` -/
def P13880874821074532279.Spec : Prop :=
  ∀ n, P13880874821074532279.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P16418457150616615675

`A142150(A161205(n+1))`
-/

namespace A320471.P16418457150616615675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A161205 (n + 1)).toNat

end

end A320471.P16418457150616615675

namespace A320471

/-- `A142150(A161205(n+1))` -/
def P16418457150616615675.Spec : Prop :=
  ∀ n, P16418457150616615675.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P13674073200266281132

`A142150(A316355(n)+1)`
-/

namespace A320471.P13674073200266281132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A316355 n + 1).toNat

end

end A320471.P13674073200266281132

namespace A320471

/-- `A142150(A316355(n)+1)` -/
def P13674073200266281132.Spec : Prop :=
  ∀ n, P13674073200266281132.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P10868857129850427113

`A000196(n*A049240(n+1))`
-/

namespace A320471.P10868857129850427113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A049240 (n + 1)).toNat

end

end A320471.P10868857129850427113

namespace A320471

/-- `A000196(n*A049240(n+1))` -/
def P10868857129850427113.Spec : Prop :=
  ∀ n, P10868857129850427113.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P11328557874240733709

`A000196(lcm(n, A068717(n+1)))`
-/

namespace A320471.P11328557874240733709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (n : ℤ) (A068717 (n + 1)))

end

end A320471.P11328557874240733709

namespace A320471

/-- `A000196(lcm(n, A068717(n+1)))` -/
def P11328557874240733709.Spec : Prop :=
  ∀ n, P11328557874240733709.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P17160048272541303102

`C(A000196(n), A056926(n+1))`
-/

namespace A320471.P17160048272541303102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 n).toNat (A056926 (n + 1)).toNat

end

end A320471.P17160048272541303102

namespace A320471

/-- `C(A000196(n), A056926(n+1))` -/
def P17160048272541303102.Spec : Prop :=
  ∀ n, (P17160048272541303102.a n : ℤ) = A320471 (n + 1)

end A320471

/-! ## A320471.P3542849137118155426

`A000196(n*A068717(n+1)²)`
-/

namespace A320471.P3542849137118155426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A068717 (n + 1) ^ 2).toNat

end

end A320471.P3542849137118155426

namespace A320471

/-- `A000196(n*A068717(n+1)²)` -/
def P3542849137118155426.Spec : Prop :=
  ∀ n, P3542849137118155426.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P9157228066132121311

`A003059(n+1)-A056926(n+1)`
-/

namespace A320471.P9157228066132121311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) - A056926 (n + 1)

end

end A320471.P9157228066132121311

namespace A320471

/-- `A003059(n+1)-A056926(n+1)` -/
def P9157228066132121311.Spec : Prop :=
  ∀ n, P9157228066132121311.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P14308262454517970705

`A000196(n+1-A074695(n+1))`
-/

namespace A320471.P14308262454517970705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) - A074695 (n + 1)).toNat

end

end A320471.P14308262454517970705

namespace A320471

/-- `A000196(n+1-A074695(n+1))` -/
def P14308262454517970705.Spec : Prop :=
  ∀ n, P14308262454517970705.a n = A320471 (n + 1)

end A320471

/-! ## A320471.P17640795360620800781

`A053188(n+1-A038760(n+1))`
-/

namespace A320471.P17640795360620800781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((n + 1 : ℤ) - A038760 (n + 1)).toNat

end

end A320471.P17640795360620800781

namespace A320471

/-- `A053188(n+1-A038760(n+1))` -/
def P17640795360620800781.Spec : Prop :=
  ∀ n, P17640795360620800781.a n = A320471 (n + 1)

end A320471

/-!
# A320472: a(n) = round(x(n)), where (x(n),y(n)) are defined by the Chirikov "standard map" y(n) = y(n-1) + sin(x(n-1)), x(n) = x(n-1) + y(n), with x(0)=y(0)=1.

The programs for A320472, there is no canonical definition to state claims against.
-/

/-! ## A320472.P12806819590846044640

`A320473(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A320472.P12806819590846044640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320473 (n - 1) + a (n - 1)

end

end A320472.P12806819590846044640

/-! ## A320472.P10708947416530274253

`∑[A320473(round(sqrt(n²+1))-1)]-1`
-/

namespace A320472.P10708947416530274253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320473 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A320472.P10708947416530274253

/-! ## A320472.P16704693047448107324

`∑[A320473(n-1)^A002260(a(n-1))]` with `a(0)=1`
-/

namespace A320472.P16704693047448107324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A320473 (n - 1) : ℚ) ^ (A002260 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320472.P16704693047448107324

/-! ## A320472.P15083710229144329386

`A320473(n-1)-(and(1, A209874(n))-a(n-1))` with `a(0)=1`
-/

namespace A320472.P15083710229144329386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320473 (n - 1) - (Int.land 1 (A209874 n) - a (n - 1))

end

end A320472.P15083710229144329386

/-! ## A320472.P13116614329618332722

`∑[A000034(A351601(n+1)+∑[n+1])]`
-/

namespace A320472.P13116614329618332722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A351601 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320472.P13116614329618332722

/-!
# A320473: First differences of A320472.

The programs for A320473, there is no canonical definition to state claims against.
-/

/-! ## A320473.P12101195857434478707

`Δ[A320472(n)]`
-/

namespace A320473.P12101195857434478707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320473.P12101195857434478707

/-! ## A320473.P13350853499884389475

`A320472(n+1)-A320472(n)`
-/

namespace A320473.P13350853499884389475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (n + 1) - A320472 n

end

end A320473.P13350853499884389475

/-! ## A320473.P7189478859313945681

`A007318(ratio[A000079(A320472(n))])`
-/

namespace A320473.P7189478859313945681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A320472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A320473.P7189478859313945681

/-! ## A320473.P3379986288887172448

`∑{d}[ratio[A000079(A320472(n))], A102419(#)]`
-/

namespace A320473.P3379986288887172448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A320472 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A102419 d

end

end A320473.P3379986288887172448

/-! ## A320473.P15128038055273810469

`∑{d}[ratio[A000079(A320472(n))], A126241(#)]`
-/

namespace A320473.P15128038055273810469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A320472 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A126241 d

end

end A320473.P15128038055273810469

/-! ## A320473.P6880604905801963954

`∏{e}[ratio[A000079(A320472(n))], A006884(#)]`
-/

namespace A320473.P6880604905801963954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A320472 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A006884 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A320473.P6880604905801963954

/-!
# A320474: a(n) = floor(x(n)), where (x(n),y(n)) are defined by the Chirikov "standard map" y(n) = y(n-1) + sin(x(n-1)), x(n) = x(n-1) + y(n), with x(0)=y(0)=1.

The programs for A320474, there is no canonical definition to state claims against.
-/

/-! ## A320474.P17851509510005352595

`∑[A328483(A094958(n+1))]`
-/

namespace A320474.P17851509510005352595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328483 (A094958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320474.P17851509510005352595

/-! ## A320474.P10475117524223286008

`∑[A078833(A059222(A167743(n+1)))]`
-/

namespace A320474.P10475117524223286008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (A059222 (A167743 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320474.P10475117524223286008

/-! ## A320474.P11985023679744710431

`∑[A040001(A028242(n)*A255641(n+1))]`
-/

namespace A320474.P11985023679744710431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028242 n * A255641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320474.P11985023679744710431

/-! ## A320474.P16508045870326386954

`∑[A040001(A167743(n+1)+A000043(n+1))]`
-/

namespace A320474.P16508045870326386954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A167743 (n + 1) + A000043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320474.P16508045870326386954

/-! ## A320474.P8089155886336558872

`∑[A000034(A167743(n+1)+A003781(n))]`
-/

namespace A320474.P8089155886336558872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A167743 (n + 1) + A003781 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320474.P8089155886336558872

/-!
# A320475: a(n) = round(x(n)), where (x(n),y(n)) are defined by the Chirikov "standard map" y(n) = y(n-1) + 2*sin(x(n-1)), x(n) = x(n-1) + y(n), with x(0)=y(0)=1.

The programs for A320475, there is no canonical definition to state claims against.
-/

/-! ## A320475.P12108660386598250436

`∑[A320476(abs(1-n))]`
-/

namespace A320475.P12108660386598250436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320476 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320475.P12108660386598250436

/-! ## A320475.P15167130583019377388

`A320476(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A320475.P15167130583019377388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320476 (n - 1) + a (n - 1)

end

end A320475.P15167130583019377388

/-! ## A320475.P4600370401022955741

`∑[A320476(n)]+1-A320476(n)`
-/

namespace A320475.P4600370401022955741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A320476 n)

end

end A320475.P4600370401022955741

/-!
# A320476: First differences of A320475.

The programs for A320476, there is no canonical definition to state claims against.
-/

/-! ## A320476.P11002677673724469366

`Δ[A320475(n)]`
-/

namespace A320476.P11002677673724469366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320476.P11002677673724469366

/-! ## A320476.P2644309204295899948

`A320475(n+1)-A320475(n)`
-/

namespace A320476.P2644309204295899948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320475 (n + 1) - A320475 n

end

end A320476.P2644309204295899948

/-!
# A320478: a(n) = round(x(n)), where (x(n),y(n)) are defined by the Chirikov "standard map" y(n) = y(n-1) + 3*sin(x(n-1)), x(n) = x(n-1) + y(n), with x(0)=y(0)=1.

The programs for A320478, there is no canonical definition to state claims against.
-/

/-! ## A320478.P14575091632378753894

`∑[A320479(abs(1-n))]+1`
-/

namespace A320478.P14575091632378753894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320479 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320478.P14575091632378753894

/-! ## A320478.P90832601062320561

`A320479(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A320478.P90832601062320561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320479 (n - 1) + a (n - 1)

end

end A320478.P90832601062320561

/-! ## A320478.P11717468777521941035

`∑[A320479(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A320478.P11717468777521941035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A320479 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320478.P11717468777521941035

/-! ## A320478.P11906782120595351758

`∑[A320479((n-1)*a(A178489(n)-1))]` with `a(0)=1`
-/

namespace A320478.P11906782120595351758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A320479 (((n : ℤ) - 1) * f1 (A178489 n - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320478.P11906782120595351758

/-!
# A320479: First differences of A320478.

The programs for A320479, there is no canonical definition to state claims against.
-/

/-! ## A320479.P1711238727405955063

`Δ[A320478(n)]`
-/

namespace A320479.P1711238727405955063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320479.P1711238727405955063

/-! ## A320479.P10930223743987361051

`A320478(n+1)-A320478(n)`
-/

namespace A320479.P10930223743987361051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320478 (n + 1) - A320478 n

end

end A320479.P10930223743987361051

/-!
# A320480: a(n) = floor(x(n)), where (x(n),y(n)) are defined by the Chirikov "standard map" y(n) = y(n-1)+3*sin(x(n-1)), x(n) = x(n-1)+y(n), with x(0)=y(0)=1.

The programs for A320480, there is no canonical definition to state claims against.
-/

/-! ## A320480.P8905055868920037446

`and(A040043(A137857(n+1)), A320478(n))`
-/

namespace A320480.P8905055868920037446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040043 (A137857 (n + 1)).toNat) (A320478 n)

end

end A320480.P8905055868920037446

/-!
# A320481: Primes in A301916 but not in A045318.

The programs for A320481, there is no canonical definition to state claims against.
-/

/-! ## A320481.P11705809215726860661

`∩[A045317(n+1), A301916(n+1)]`
-/

namespace A320481.P11705809215726860661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320481.P11705809215726860661

/-!
# A320482: Row 3 of array in A320500.

The programs for A320482, there is no canonical definition to state claims against.
-/

/-! ## A320482.P1611298524697241074

`A320500(∑[n+3]+1)`
-/

namespace A320482.P1611298524697241074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320482.P1611298524697241074

/-! ## A320482.P5500490926320870784

`A320500(A167614(n+1))+char[8]`
-/

namespace A320482.P5500490926320870784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A320482.P5500490926320870784

/-! ## A320482.P7709599496101156400

`record[A320500(gcd(n, A303913(n+1)))]`
-/

namespace A320482.P7709599496101156400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (Int.gcd (n : ℤ) (A303913 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320482.P7709599496101156400

/-! ## A320482.P15707101365759129771

`record[gcd(A320500(n+3), A320530(n))]`
-/

namespace A320482.P15707101365759129771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320500 (n + 3)) (A320530 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320482.P15707101365759129771

/-!
# A320483: Row 4 of array in A320500.

The programs for A320483, there is no canonical definition to state claims against.
-/

/-! ## A320483.P6464241667517592707

`A320500(A141214(n+1))`
-/

namespace A320483.P6464241667517592707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (A141214 (n + 1)).toNat

end

end A320483.P6464241667517592707

/-! ## A320483.P599376246437542592

`A320500(A374004(n+1))`
-/

namespace A320483.P599376246437542592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (A374004 (n + 1)).toNat

end

end A320483.P599376246437542592

/-! ## A320483.P407877721175886204

`A320500(A027379(n+2))`
-/

namespace A320483.P407877721175886204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (A027379 (n + 2)).toNat

end

end A320483.P407877721175886204

/-!
# A320484: Row 5 of array in A320500.

The programs for A320484, there is no canonical definition to state claims against.
-/

/-! ## A320484.P1474434739678913126

`A320500(Δ[A264443(n)])`
-/

namespace A320484.P1474434739678913126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (f1 (n + 1) - f1 n).toNat

end

end A320484.P1474434739678913126

/-! ## A320484.P3687281640342061014

`A320500(A374005(n+1))`
-/

namespace A320484.P3687281640342061014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (A374005 (n + 1)).toNat

end

end A320484.P3687281640342061014

/-!
# A320485: Keep just the digits of n that appear exactly once; write -1 if all digits disappear.

The programs for A320485, the canonical program `A320485.P13468319181003246115` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320485 has offset 0).

The definition of A320485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320485.P4894469354209697937

`A321802(A000196(n²))`
-/

namespace A320485.P4894469354209697937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A000196 (n ^ 2)).toNat

end

end A320485.P4894469354209697937

namespace A320485

/-- `A321802(A000196(n²))` -/
def P4894469354209697937.Spec : Prop :=
  ∀ n, P4894469354209697937.a n = A320485 n

end A320485

/-! ## A320485.P10480129261529748820

`A321802(gcd(n, A118759(n)))`
-/

namespace A320485.P10480129261529748820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (Int.gcd (n : ℤ) (A118759 n))

end

end A320485.P10480129261529748820

namespace A320485

/-- `A321802(gcd(n, A118759(n)))` -/
def P10480129261529748820.Spec : Prop :=
  ∀ n, P10480129261529748820.a n = A320485 n

end A320485

/-! ## A320485.P16042685157437265403

`A321802(n)%∑[A239312(n)]`
-/

namespace A320485.P16042685157437265403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321802 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320485.P16042685157437265403

namespace A320485

/-- `A321802(n)%∑[A239312(n)]` -/
def P16042685157437265403.Spec : Prop :=
  ∀ n, P16042685157437265403.a n = A320485 n

end A320485

/-! ## A320485.P2672271390279531563

`A321802(n)+1-A010052(n²)`
-/

namespace A320485.P2672271390279531563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n + 1 - A010052 (n ^ 2)

end

end A320485.P2672271390279531563

namespace A320485

/-- `A321802(n)+1-A010052(n²)` -/
def P2672271390279531563.Spec : Prop :=
  ∀ n, P2672271390279531563.a n = A320485 n

end A320485

/-! ## A320485.P15111920470338421598

`A321802(n)+A000007((1-n)²+n)`
-/

namespace A320485.P15111920470338421598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n + A000007 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A320485.P15111920470338421598

namespace A320485

/-- `A321802(n)+A000007((1-n)²+n)` -/
def P15111920470338421598.Spec : Prop :=
  ∀ n, P15111920470338421598.a n = A320485 n

end A320485

/-! ## A320485.P12934727247102127917

`A001511(A002061(n))*A321802(n)`
-/

namespace A320485.P12934727247102127917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002061 n).toNat * A321802 n

end

end A320485.P12934727247102127917

namespace A320485

/-- `A001511(A002061(n))*A321802(n)` -/
def P12934727247102127917.Spec : Prop :=
  ∀ n, P12934727247102127917.a n = A320485 n

end A320485

/-! ## A320485.P16115712649128576435

`A057427(A118759(n))*A321802(n)`
-/

namespace A320485.P16115712649128576435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A118759 n).toNat * A321802 n

end

end A320485.P16115712649128576435

namespace A320485

/-- `A057427(A118759(n))*A321802(n)` -/
def P16115712649128576435.Spec : Prop :=
  ∀ n, P16115712649128576435.a n = A320485 n

end A320485

/-! ## A320485.P16498262259783513709

`A321802(and(A118759(n), A321802(n)))`
-/

namespace A320485.P16498262259783513709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (Int.land (A118759 n) (A321802 n)).toNat

end

end A320485.P16498262259783513709

namespace A320485

/-- `A321802(and(A118759(n), A321802(n)))` -/
def P16498262259783513709.Spec : Prop :=
  ∀ n, P16498262259783513709.a n = A320485 n

end A320485

/-! ## A320485.P13468319181003246115

`n-1-floor(-(-n)^(1-C(n*(1-val(∏{p}[n^3, #], 11)), n)))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320485

/-- `n-1-floor(-(-n)^(1-C(n*(1-val(∏{p}[n^3, #], 11)), n)))` -/
def P13468319181003246115.Spec : Prop :=
  ∀ n, P13468319181003246115.a n = A320485 n

theorem P13468319181003246115.correct : P13468319181003246115.Spec := by
  intro n
  simp only [A320485]

end A320485

/-! ## A320485.P6101350772363268321

`n-1-ceil(-(-n)^(1-C(n*(1-val(∏{p}[n^3, #], 11)), n)))`
-/

namespace A320485.P6101350772363268321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ⌈-((-(n : ℤ) : ℚ) ^ (1 - (Nat.choose ((n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat n : ℤ) : ℤ))⌉

end

end A320485.P6101350772363268321

namespace A320485

/-- `n-1-ceil(-(-n)^(1-C(n*(1-val(∏{p}[n^3, #], 11)), n)))` -/
def P6101350772363268321.Spec : Prop :=
  ∀ n, P6101350772363268321.a n = A320485 n

end A320485

/-! ## A320485.P2559008826747266420

`A321802(n)+A128617(A000290(n+1))`
-/

namespace A320485.P2559008826747266420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n + A128617 (A000290 (n + 1)).toNat

end

end A320485.P2559008826747266420

namespace A320485

/-- `A321802(n)+A128617(A000290(n+1))` -/
def P2559008826747266420.Spec : Prop :=
  ∀ n, P2559008826747266420.a n = A320485 n

end A320485

/-!
# A320486: Keep just the digits of n that appear exactly once; write 0 if all digits disappear.

The programs for A320486, the canonical program `A320486.P7452552774313601492` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320486 has offset 0).

The definition of A320486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320486.P7764096672059189172

`round(sqrt((A320485(n)+1)²+1))-1`
-/

namespace A320486.P7764096672059189172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A320485 n + 1) ^ 2 + 1 : ℝ)) - 1

end

end A320486.P7764096672059189172

namespace A320486

/-- `round(sqrt((A320485(n)+1)²+1))-1` -/
def P7764096672059189172.Spec : Prop :=
  ∀ n, P7764096672059189172.a n = A320486 n

end A320486

/-! ## A320486.P7452552774313601492

`A289207(A320485(n)+2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A320486

/-- `A289207(A320485(n)+2)` -/
def P7452552774313601492.Spec : Prop :=
  ∀ n, P7452552774313601492.a n = A320486 n

theorem P7452552774313601492.correct : P7452552774313601492.Spec := by
  intro n
  simp only [A320486]

end A320486

/-! ## A320486.P14364724486229529704

`A320485(n)+char[A115853(n+1)]`
-/

namespace A320486.P14364724486229529704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320486.P14364724486229529704

namespace A320486

/-- `A320485(n)+char[A115853(n+1)]` -/
def P14364724486229529704.Spec : Prop :=
  ∀ n, P14364724486229529704.a n = A320486 n

end A320486

/-! ## A320486.P14355397051111296111

`A118759(A321801(n))`
-/

namespace A320486.P14355397051111296111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A321801 n).toNat

end

end A320486.P14355397051111296111

namespace A320486

/-- `A118759(A321801(n))` -/
def P14355397051111296111.Spec : Prop :=
  ∀ n, P14355397051111296111.a n = A320486 n

end A320486

/-! ## A320486.P9932177967474045291

`A000194(A321801(n)²)`
-/

namespace A320486.P9932177967474045291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A321801 n ^ 2).toNat

end

end A320486.P9932177967474045291

namespace A320486

/-- `A000194(A321801(n)²)` -/
def P9932177967474045291.Spec : Prop :=
  ∀ n, P9932177967474045291.a n = A320486 n

end A320486

/-! ## A320486.P717688629313119131

`A321801(A000196(n²))`
-/

namespace A320486.P717688629313119131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A000196 (n ^ 2)).toNat

end

end A320486.P717688629313119131

namespace A320486

/-- `A321801(A000196(n²))` -/
def P717688629313119131.Spec : Prop :=
  ∀ n, P717688629313119131.a n = A320486 n

end A320486

/-! ## A320486.P11718520187511688035

`A000196(A321801(n)^2)`
-/

namespace A320486.P11718520187511688035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321801 n ^ 2).toNat

end

end A320486.P11718520187511688035

namespace A320486

/-- `A000196(A321801(n)^2)` -/
def P11718520187511688035.Spec : Prop :=
  ∀ n, P11718520187511688035.a n = A320486 n

end A320486

/-! ## A320486.P9378603608177613860

`A053615(A321801(n)^2)`
-/

namespace A320486.P9378603608177613860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A321801 n ^ 2).toNat

end

end A320486.P9378603608177613860

namespace A320486

/-- `A053615(A321801(n)^2)` -/
def P9378603608177613860.Spec : Prop :=
  ∀ n, P9378603608177613860.a n = A320486 n

end A320486

/-! ## A320486.P10701249202533610149

`A321801(n)%A143823(n)`
-/

namespace A320486.P10701249202533610149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321801 n) (A143823 n)

end

end A320486.P10701249202533610149

namespace A320486

/-- `A321801(n)%A143823(n)` -/
def P10701249202533610149.Spec : Prop :=
  ∀ n, P10701249202533610149.a n = A320486 n

end A320486

/-! ## A320486.P16139865786118013091

`A010052(n²)*A321801(n)`
-/

namespace A320486.P16139865786118013091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A321801 n

end

end A320486.P16139865786118013091

namespace A320486

/-- `A010052(n²)*A321801(n)` -/
def P16139865786118013091.Spec : Prop :=
  ∀ n, P16139865786118013091.a n = A320486 n

end A320486

/-! ## A320486.P17013622020082008498

`A053589(A002061(n))*A321801(n)`
-/

namespace A320486.P17013622020082008498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A002061 n).toNat * A321801 n

end

end A320486.P17013622020082008498

namespace A320486

/-- `A053589(A002061(n))*A321801(n)` -/
def P17013622020082008498.Spec : Prop :=
  ∀ n, P17013622020082008498.a n = A320486 n

end A320486

/-! ## A320486.P9867601529998419184

`A000194(A321801(n)*A321801(n))`
-/

namespace A320486.P9867601529998419184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A321801 n * A321801 n).toNat

end

end A320486.P9867601529998419184

namespace A320486

/-- `A000194(A321801(n)*A321801(n))` -/
def P9867601529998419184.Spec : Prop :=
  ∀ n, P9867601529998419184.a n = A320486 n

end A320486

/-! ## A320486.P4366201575071322555

`A321801(n)^A000041(A321797(n))`
-/

namespace A320486.P4366201575071322555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321801 n : ℚ) ^ (A000041 (A321797 n).toNat : ℤ)

end

end A320486.P4366201575071322555

namespace A320486

/-- `A321801(n)^A000041(A321797(n))` -/
def P4366201575071322555.Spec : Prop :=
  ∀ n, P4366201575071322555.a n = (A320486 n : ℚ)

end A320486

/-! ## A320486.P1128217876452188245

`A321801(n)+A000007(A056544(n+1))`
-/

namespace A320486.P1128217876452188245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n + A000007 (A056544 (n + 1)).toNat

end

end A320486.P1128217876452188245

namespace A320486

/-- `A321801(n)+A000007(A056544(n+1))` -/
def P1128217876452188245.Spec : Prop :=
  ∀ n, P1128217876452188245.a n = A320486 n

end A320486

/-! ## A320486.P8437844280850209421

`A321801(n)+A261424(A082216(2*(n+1)))`
-/

namespace A320486.P8437844280850209421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n + A261424 (A082216 (2 * (n + 1))).toNat

end

end A320486.P8437844280850209421

namespace A320486

/-- `A321801(n)+A261424(A082216(2*(n+1)))` -/
def P8437844280850209421.Spec : Prop :=
  ∀ n, P8437844280850209421.a n = A320486 n

end A320486

/-! ## A320486.P7391895671865871835

`n*(1-val(∏{p}[n^3, #], 11))`
-/

namespace A320486.P7391895671865871835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))

end

end A320486.P7391895671865871835

namespace A320486

/-- `n*(1-val(∏{p}[n^3, #], 11))` -/
def P7391895671865871835.Spec : Prop :=
  ∀ n, P7391895671865871835.a n = A320486 n

end A320486

/-! ## A320486.P13984089965712202305

`n*A070596(n²)`
-/

namespace A320486.P13984089965712202305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070596 (n ^ 2)

end

end A320486.P13984089965712202305

namespace A320486

/-- `n*A070596(n²)` -/
def P13984089965712202305.Spec : Prop :=
  ∀ n, P13984089965712202305.a n = A320486 n

end A320486

/-! ## A320486.P2243316835767471216

`n*A145568(n²)`
-/

namespace A320486.P2243316835767471216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145568 (n ^ 2)

end

end A320486.P2243316835767471216

namespace A320486

/-- `n*A145568(n²)` -/
def P2243316835767471216.Spec : Prop :=
  ∀ n, P2243316835767471216.a n = A320486 n

end A320486

/-! ## A320486.P635300842974432940

`n%A337832((2-∑{p}[n^3, val(#, 11)]^(n/10))²)`
-/

namespace A320486.P635300842974432940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A337832 (SequenceMachineLib.roundAway ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℝ) ^ ((n : ℚ) / 10 : ℝ)) ^ 2)).toNat)

end

end A320486.P635300842974432940

namespace A320486

/-- `n%A337832((2-∑{p}[n^3, val(#, 11)]^(n/10))²)` -/
def P635300842974432940.Spec : Prop :=
  ∀ n, P635300842974432940.a n = A320486 n

end A320486

/-!
# A320487: a(0) = 1; thereafter a(n) is obtained by applying the "delete multiple digits" map m -> A320485(m) to 2*a(n-1).

The programs for A320487, there is no canonical definition to state claims against.
-/

/-! ## A320487.P1203069486417321621

`A356166(A249169(n+1))`
-/

namespace A320487.P1203069486417321621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356166 (A249169 (n + 1 + 15)).toNat

end

end A320487.P1203069486417321621

/-! ## A320487.P318301328857057357

`gcd(A002605(2*n+1), A052396(A194970(2*(n+2))))`
-/

namespace A320487.P318301328857057357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002605 (2 * n + 1)) (A052396 (A194970 (2 * (n + 2))).toNat)

end

end A320487.P318301328857057357

/-!
# A320489: Number of connected nets on n unlabeled nodes.

The programs for A320489, there is no canonical definition to state claims against.
-/

/-! ## A320489.P14889435379424805457

`A014684(n!²+n+1)`
-/

namespace A320489.P14889435379424805457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (Nat.factorial n ^ 2 + n + 1)

end

end A320489.P14889435379424805457

/-!
# A320492: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent triangles with respect to a hexavalent point with three-fold rotational symmetry.

The programs for A320492, the canonical program `A320492.P17561961223672864448` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320492 has offset 0).

The definition of A320492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320492.P5766854683551490372

`ogf((1+6x+9x^2+17x^3+15x^4+20x^5+9x^6+6x^7+x^8)/(1-x^3-x^5+x^8))`
-/

namespace A320492.P5766854683551490372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9, 17, 15, 20, 9, 6, 1] [1, 0, 0, -1, 0, -1, 0, 0, 1] n

end

end A320492.P5766854683551490372

namespace A320492

/-- `ogf((1+6x+9x^2+17x^3+15x^4+20x^5+9x^6+6x^7+x^8)/(1-x^3-x^5+x^8))` -/
def P5766854683551490372.Spec : Prop :=
  ∀ n, P5766854683551490372.a n = A320492 n

end A320492

/-! ## A320492.P17561961223672864448

`a(n-3)+a(n-5)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=9, a(3)=18, a(4)=21, a(5)=30, a(6)=33, a(7)=36, a(8)=48`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320492

/-- `a(n-3)+a(n-5)-a(n-8)` -/
def P17561961223672864448.Spec : Prop :=
  ∀ n, P17561961223672864448.a n = A320492 n

theorem P17561961223672864448.correct : P17561961223672864448.Spec := by
  intro n
  simp only [A320492]

end A320492

/-!
# A320493: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent triangles with respect to a hexavalent point with no symmetry.

The programs for A320493, the canonical program `A320493.P1625744573838553242` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320493 has offset 0).

The definition of A320493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320493.P18331620792033315879

`ogf((1+6x+10x^2+16x^3+17x^4+15x^5+12x^6+6x^7+x^8)/(1-x^3-x^5+x^8))`
-/

namespace A320493.P18331620792033315879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 10, 16, 17, 15, 12, 6, 1] [1, 0, 0, -1, 0, -1, 0, 0, 1] n

end

end A320493.P18331620792033315879

namespace A320493

/-- `ogf((1+6x+10x^2+16x^3+17x^4+15x^5+12x^6+6x^7+x^8)/(1-x^3-x^5+x^8))` -/
def P18331620792033315879.Spec : Prop :=
  ∀ n, P18331620792033315879.a n = A320493 n

end A320493

/-! ## A320493.P1625744573838553242

`a(n-3)+a(n-5)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=17, a(4)=23, a(5)=26, a(6)=35, a(7)=39, a(8)=43`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320493

/-- `a(n-3)+a(n-5)-a(n-8)` -/
def P1625744573838553242.Spec : Prop :=
  ∀ n, P1625744573838553242.a n = A320493 n

theorem P1625744573838553242.correct : P1625744573838553242.Spec := by
  intro n
  simp only [A320493]

end A320493

/-! ## A320493.P1870277009592337531

`or(A001222(A032118(n+1)), A301694(n))`
-/

namespace A320493.P1870277009592337531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A032118 (n + 1)).toNat) (A301694 n)

end

end A320493.P1870277009592337531

namespace A320493

/-- `or(A001222(A032118(n+1)), A301694(n))` -/
def P1870277009592337531.Spec : Prop :=
  ∀ n, P1870277009592337531.a n = A320493 n

end A320493

/-!
# A320494: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent triangles with respect to a tetravalent point.

The programs for A320494, the canonical program `A320494.P1618954860377975500` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320494 has offset 0).

The definition of A320494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320494.P8521839511618541457

`ogf((1+4x+11x^2+14x^3+18x^4+16x^5+13x^6+6x^7+3x^8-2x^9)/(1-x^3-x^5+x^8))`
-/

namespace A320494.P8521839511618541457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 11, 14, 18, 16, 13, 6, 3, -2] [1, 0, 0, -1, 0, -1, 0, 0, 1] n

end

end A320494.P8521839511618541457

namespace A320494

/-- `ogf((1+4x+11x^2+14x^3+18x^4+16x^5+13x^6+6x^7+3x^8-2x^9)/(1-x^3-x^5+x^8))` -/
def P8521839511618541457.Spec : Prop :=
  ∀ n, P8521839511618541457.a n = A320494 n

end A320494

/-! ## A320494.P1618954860377975500

`a(n-3)+a(n-5)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=15, a(4)=22, a(5)=28, a(6)=32, a(7)=39, a(8)=45, a(9)=48`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A320494

/-- `a(n-3)+a(n-5)-a(n-8)` -/
def P1618954860377975500.Spec : Prop :=
  ∀ n, P1618954860377975500.a n = A320494 n

theorem P1618954860377975500.correct : P1618954860377975500.Spec := by
  intro n
  simp only [A320494]

end A320494

/-! ## A320494.P4717969466220117824

`A310420(n)+A001222(A124303(n))`
-/

namespace A320494.P4717969466220117824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310420 n + A001222 (A124303 n).toNat

end

end A320494.P4717969466220117824

namespace A320494

/-- `A310420(n)+A001222(A124303(n))` -/
def P4717969466220117824.Spec : Prop :=
  ∀ n, P4717969466220117824.a n = A320494 n

end A320494

/-! ## A320494.P13589232247484113335

`A313916(n)-A330025(A256968(2*n+1))`
-/

namespace A320494.P13589232247484113335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A330025 (A256968 (2 * n + 1)).toNat

end

end A320494.P13589232247484113335

namespace A320494

/-- `A313916(n)-A330025(A256968(2*n+1))` -/
def P13589232247484113335.Spec : Prop :=
  ∀ n, P13589232247484113335.a n = A320494 n

end A320494

/-! ## A320494.P17296102688705858947

`A310420(n)+A057354(A082217(n+1))`
-/

namespace A320494.P17296102688705858947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310420 n + A057354 (A082217 (n + 1)).toNat

end

end A320494.P17296102688705858947

namespace A320494

/-- `A310420(n)+A057354(A082217(n+1))` -/
def P17296102688705858947.Spec : Prop :=
  ∀ n, P17296102688705858947.a n = A320494 n

end A320494

/-!
# A320495: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent hexagons with respect to a point of type A.

The programs for A320495, there is no canonical definition to state claims against.
-/

/-! ## A320495.P16509962675546319221

`∑[A001222(∑[A157729(3*n)])]`
-/

namespace A320495.P16509962675546319221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320495.P16509962675546319221

/-! ## A320495.P11147340331187023444

`∑[A001222(∑[A157725(3*n)+3])]`
-/

namespace A320495.P11147340331187023444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (3 * n) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320495.P11147340331187023444

/-! ## A320495.P13405058902722450862

`∑[A001222(∑[A000045(3*n)+5])]`
-/

namespace A320495.P13405058902722450862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320495.P13405058902722450862

/-! ## A320495.P741562043875726087

`A310592(n)+A100950(A002531(n))`
-/

namespace A320495.P741562043875726087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310592 n + A100950 (A002531 n).toNat

end

end A320495.P741562043875726087

/-! ## A320495.P16608876358851576111

`A250120(n)-A001222(A151162(n))`
-/

namespace A320495.P16608876358851576111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A151162 n).toNat

end

end A320495.P16608876358851576111

/-!
# A320496: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent hexagons with respect to a point of type B.

The programs for A320496, there is no canonical definition to state claims against.
-/

/-! ## A320496.P4079988474995946341

`A120738(n)-A129449(A001883(n))`
-/

namespace A320496.P4079988474995946341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n - A129449 (A001883 n).toNat

end

end A320496.P4079988474995946341

/-! ## A320496.P9334021343123849113

`A054248(n+1)+A052409(A286076(n))`
-/

namespace A320496.P9334021343123849113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054248 (n + 1) + A052409 (A286076 n).toNat

end

end A320496.P9334021343123849113

/-! ## A320496.P3890970188101902945

`A193330(A099754(n))+A022559(2*n)`
-/

namespace A320496.P3890970188101902945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A099754 n).toNat + A022559 (2 * n)

end

end A320496.P3890970188101902945

/-! ## A320496.P10639564125467238983

`A049347(A111553(2*n+3))+A005187(2*n)`
-/

namespace A320496.P10639564125467238983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A111553 (2 * n + 3)).toNat + A005187 (2 * n)

end

end A320496.P10639564125467238983

/-!
# A320497: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent hexagons with respect to a point of type C.

The programs for A320497, there is no canonical definition to state claims against.
-/

/-! ## A320497.P5392531488336631786

`∑[A060632(n)+A000122(A254854(n+1))]`
-/

namespace A320497.P5392531488336631786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n + A000122 (A254854 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320497.P5392531488336631786

/-! ## A320497.P12885480598611766809

`A045320(n+1)+A008683(A286185(n+1))`
-/

namespace A320497.P12885480598611766809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1) + A008683 (A286185 (n + 1)).toNat

end

end A320497.P12885480598611766809

/-! ## A320497.P449642301297834071

`record[A233971(A256508(n+1))]`
-/

namespace A320497.P449642301297834071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (A256508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320497.P449642301297834071

/-! ## A320497.P6038010441427428736

`record[A137688(2*(n+2))%A269990(n+5)]`
-/

namespace A320497.P6038010441427428736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 (2 * (n + 2))) (A269990 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320497.P6038010441427428736

/-! ## A320497.P14689397680744333470

`record[A066839(n+1)/A194550(n+1)]+n`
-/

namespace A320497.P14689397680744333470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066839 (n + 1) : ℚ) / (A194550 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ)

end

end A320497.P14689397680744333470

/-!
# A320498: Coordination sequence of thinnest 5-neighbor packing of the plane with congruent hexagons with respect to a point of type D.

The programs for A320498, there is no canonical definition to state claims against.
-/

/-! ## A320498.P4436180753797990952

`A344646(2*A311446(n))-n`
-/

namespace A320498.P4436180753797990952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (2 * A311446 n).toNat - (n : ℤ)

end

end A320498.P4436180753797990952

/-! ## A320498.P11840440412522283026

`A344646(2*A311447(n))-n`
-/

namespace A320498.P11840440412522283026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (2 * A311447 n).toNat - (n : ℤ)

end

end A320498.P11840440412522283026

/-! ## A320498.P2319532991398552159

`∑[A216103(∑[A062115(n+2)])]`
-/

namespace A320498.P2319532991398552159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216103 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320498.P2319532991398552159

/-! ## A320498.P7714649279144143193

`A008574(n)-A069230(A028945(n))`
-/

namespace A320498.P7714649279144143193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A069230 (A028945 n).toNat

end

end A320498.P7714649279144143193

/-! ## A320498.P456018092486747048

`A160162(n+2)-A320655(A065850(n+1))`
-/

namespace A320498.P456018092486747048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (n + 2) - A320655 (A065850 (n + 1)).toNat

end

end A320498.P456018092486747048

