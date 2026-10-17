import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A183400: Half the number of nX4 binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A183400, there is no canonical definition to state claims against.
-/

/-! ## A183400.P17537622871079719337

`A183402(A374004(n+1))`
-/

namespace A183400.P17537622871079719337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A374004 (n + 1)).toNat

end

end A183400.P17537622871079719337

/-! ## A183400.P15940839440129448391

`A183402(A141214(n)+7)`
-/

namespace A183400.P15940839440129448391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A141214 n + 7).toNat

end

end A183400.P15940839440129448391

/-! ## A183400.P14590156943958913639

`A183402(A052905(n)+9)`
-/

namespace A183400.P14590156943958913639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A052905 n + 9).toNat

end

end A183400.P14590156943958913639

/-! ## A183400.P3853898519709257771

`A183402(A167614(n+2)+1)`
-/

namespace A183400.P3853898519709257771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A167614 (n + 2) + 1).toNat

end

end A183400.P3853898519709257771

/-! ## A183400.P7570578963397892339

`A183402(A027379(n+2))`
-/

namespace A183400.P7570578963397892339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A027379 (n + 2)).toNat

end

end A183400.P7570578963397892339

/-!
# A183401: Half the number of nX5 binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A183401, there is no canonical definition to state claims against.
-/

/-! ## A183401.P13522201876727014711

`A183402(A374005(n+1))`
-/

namespace A183401.P13522201876727014711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A374005 (n + 1)).toNat

end

end A183401.P13522201876727014711

/-! ## A183401.P17979503052730031308

`A183402(A167499(n+3))`
-/

namespace A183401.P17979503052730031308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A167499 (n + 3)).toNat

end

end A183401.P17979503052730031308

/-! ## A183401.P4224429325301570097

`A183402(A133263(n+4)+3)`
-/

namespace A183401.P4224429325301570097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A133263 (n + 4) + 3).toNat

end

end A183401.P4224429325301570097

/-! ## A183401.P9454938778571743678

`A183402(A000124(n+4)+4)`
-/

namespace A183401.P9454938778571743678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A000124 (n + 4) + 4).toNat

end

end A183401.P9454938778571743678

/-! ## A183401.P6088045611458095373

`A183402(A000217(n+4)+5)`
-/

namespace A183401.P6088045611458095373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A000217 (n + 4) + 5).toNat

end

end A183401.P6088045611458095373

/-!
# A183402: T(n,k)=Half the number of nXk binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A183402, there is no canonical definition to state claims against.
-/

/-! ## A183402.P5135084561755934154

`gcd(A067824(A257621(n)), A257609(n))`
-/

namespace A183402.P5135084561755934154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067824 (A257621 n).toNat) (A257609 n)

end

end A183402.P5135084561755934154

/-! ## A183402.P854837865431079221

`A131816(n)+1-A031045(A173504(n))`
-/

namespace A183402.P854837865431079221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A031045 (A173504 n).toNat)

end

end A183402.P854837865431079221

/-! ## A183402.P15992969041994844084

`A380691(A038273(n))`
-/

namespace A183402.P15992969041994844084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380691 (A038273 n).toNat

end

end A183402.P15992969041994844084

/-! ## A183402.P3185692429490859723

`A086484(A347940(n))`
-/

namespace A183402.P3185692429490859723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086484 (A347940 n).toNat

end

end A183402.P3185692429490859723

/-! ## A183402.P5194590438531439137

`A321320(A220977(n+1))`
-/

namespace A183402.P5194590438531439137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321320 (A220977 (n + 1)).toNat

end

end A183402.P5194590438531439137

/-!
# A183403: Number of n X n binary arrays with each sum of a(1..i,1..j) no greater than i*j/2.

The programs for A183403, there is no canonical definition to state claims against.
-/

/-! ## A183403.P1232321057618230667

`A183407(∑[4*n]+1)`
-/

namespace A183403.P1232321057618230667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183403.P1232321057618230667

/-! ## A183403.P7638874671946379863

`record[gcd(A037012(n), A183407(n+1))]`
-/

namespace A183403.P7638874671946379863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A183407 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183403.P7638874671946379863

/-! ## A183403.P10185230105246794389

`A065648(n)*A183407(A001844(n))`
-/

namespace A183403.P10185230105246794389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A183407 (A001844 n).toNat

end

end A183403.P10185230105246794389

/-! ## A183403.P13283828107644172169

`A183407(A001844(n))^A178334(n)`
-/

namespace A183403.P13283828107644172169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183407 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A183403.P13283828107644172169

/-! ## A183403.P14670122331428176339

`lcm(A183407(A001844(n)), A222656(n))`
-/

namespace A183403.P14670122331428176339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A183407 (A001844 n).toNat) (A222656 n)

end

end A183403.P14670122331428176339

/-!
# A183404: Number of nX3 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2.

The programs for A183404, there is no canonical definition to state claims against.
-/

/-! ## A183404.P6835138839487320167

`A183407(∑[n+2]+4)`
-/

namespace A183404.P6835138839487320167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183404.P6835138839487320167

/-! ## A183404.P6338774169263493471

`A183407(A167614(n+1))+A025444(n)`
-/

namespace A183404.P6338774169263493471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A167614 (n + 1)).toNat + A025444 n

end

end A183404.P6338774169263493471

/-! ## A183404.P2500998932693710411

`A185044(n)+A183407(A167614(n+1))`
-/

namespace A183404.P2500998932693710411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A183407 (A167614 (n + 1)).toNat

end

end A183404.P2500998932693710411

/-! ## A183404.P57454595193290098

`A016068(n)*A183407(A167614(n+1))`
-/

namespace A183404.P57454595193290098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A183407 (A167614 (n + 1)).toNat

end

end A183404.P57454595193290098

/-! ## A183404.P14337150428586163686

`A183407(A167614(n+1))*A271837(n)`
-/

namespace A183404.P14337150428586163686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A167614 (n + 1)).toNat * A271837 n

end

end A183404.P14337150428586163686

/-!
# A183405: Number of nX4 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2.

The programs for A183405, there is no canonical definition to state claims against.
-/

/-! ## A183405.P9564336492896186766

`A183407(A052905(n)+9)`
-/

namespace A183405.P9564336492896186766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A052905 n + 9).toNat

end

end A183405.P9564336492896186766

/-! ## A183405.P13129633514301431148

`A183407(A055999(n)+10)`
-/

namespace A183405.P13129633514301431148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A055999 n + 10).toNat

end

end A183405.P13129633514301431148

/-! ## A183405.P2279572481351978255

`A183407(A167614(n+2)+1)`
-/

namespace A183405.P2279572481351978255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A167614 (n + 2) + 1).toNat

end

end A183405.P2279572481351978255

/-! ## A183405.P7407982146818153558

`A183407(eq[5, A131818(n+1)])`
-/

namespace A183405.P7407982146818153558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183405.P7407982146818153558

/-! ## A183405.P14589740095255042011

`A183407(Δ[A023545(n+1)-n²])`
-/

namespace A183405.P14589740095255042011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (f1 (n + 1) - f1 n).toNat

end

end A183405.P14589740095255042011

/-!
# A183406: Number of nX5 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2.

The programs for A183406, there is no canonical definition to state claims against.
-/

/-! ## A183406.P2696048663931185380

`A183407(A167499(n+3))`
-/

namespace A183406.P2696048663931185380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A167499 (n + 3)).toNat

end

end A183406.P2696048663931185380

/-! ## A183406.P1174019867526339294

`A183407(A155212(n)+13)`
-/

namespace A183406.P1174019867526339294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A155212 n + 13).toNat

end

end A183406.P1174019867526339294

/-! ## A183406.P5661706785677283893

`A183407(A056000(n)+15)`
-/

namespace A183406.P5661706785677283893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A056000 n + 15).toNat

end

end A183406.P5661706785677283893

/-! ## A183406.P7007699775992740204

`A183407(eq[6, A131818(n+1)])`
-/

namespace A183406.P7007699775992740204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183406.P7007699775992740204

/-! ## A183406.P4914524200015146759

`A183407(A374005(n+1))`
-/

namespace A183406.P4914524200015146759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A374005 (n + 1)).toNat

end

end A183406.P4914524200015146759

/-!
# A183407: T(n,k)=Number of nXk binary arrays with each sum of a(1..i,1..j) no greater than i*j/2.

The programs for A183407, there is no canonical definition to state claims against.
-/

/-! ## A183407.P6160617707516034695

`A380305(A368219(n+1))+A368219(n+1)`
-/

namespace A183407.P6160617707516034695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380305 (A368219 (n + 1)).toNat + A368219 (n + 1)

end

end A183407.P6160617707516034695

/-!
# A183408: Number of n X n binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183408, there is no canonical definition to state claims against.
-/

/-! ## A183408.P9214304936897586197

`A183413(∑[4*n]+1)`
-/

namespace A183408.P9214304936897586197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183408.P9214304936897586197

/-! ## A183408.P12450025011087060431

`and(-1, A183413(A001844(n)))`
-/

namespace A183408.P12450025011087060431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A183413 (A001844 n).toNat)

end

end A183408.P12450025011087060431

/-! ## A183408.P1350919560550760753

`record[A003982(n)*A183413(n+1)]`
-/

namespace A183408.P1350919560550760753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183408.P1350919560550760753

/-! ## A183408.P8139107167362085779

`record[gcd(A008482(n), A183413(n+1))]`
-/

namespace A183408.P8139107167362085779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A183413 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183408.P8139107167362085779

/-!
# A183409: Number of n X 2 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183409, the canonical program `A183409.P13666591434493509880` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183409 has offset 1).

The definition of A183409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183409.P13666591434493509880

`n+1+A319390(n)+a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183409

/-- `n+1+A319390(n)+a(n-2)` -/
def P13666591434493509880.Spec : Prop :=
  ∀ n, P13666591434493509880.a n = A183409 (n + 1)

theorem P13666591434493509880.correct : P13666591434493509880.Spec := by
  intro n
  simp only [A183409, Nat.add_sub_cancel]

end A183409

/-! ## A183409.P13264279067199338272

`a(n-2)+A001318(n)+2+n` with `a(0)=2, a(1)=5`
-/

namespace A183409.P13264279067199338272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (A001318 n + 2 + (n : ℤ))

end

end A183409.P13264279067199338272

namespace A183409

/-- `a(n-2)+A001318(n)+2+n` -/
def P13264279067199338272.Spec : Prop :=
  ∀ n, P13264279067199338272.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P13198441597427010900

`A053307(n)+A000292(A080513(n))`
-/

namespace A183409.P13198441597427010900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n + A000292 (A080513 n).toNat

end

end A183409.P13198441597427010900

namespace A183409

/-- `A053307(n)+A000292(A080513(n))` -/
def P13198441597427010900.Spec : Prop :=
  ∀ n, P13198441597427010900.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P8429772924944768421

`A167875(A110654(n))+A058187(n)`
-/

namespace A183409.P8429772924944768421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (A110654 n).toNat + A058187 n

end

end A183409.P8429772924944768421

namespace A183409

/-- `A167875(A110654(n))+A058187(n)` -/
def P8429772924944768421.Spec : Prop :=
  ∀ n, P8429772924944768421.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P11130526595909711530

`A000292(A080513(n))+∑[A008795(n)]`
-/

namespace A183409.P11130526595909711530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A080513 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183409.P11130526595909711530

namespace A183409

/-- `A000292(A080513(n))+∑[A008795(n)]` -/
def P11130526595909711530.Spec : Prop :=
  ∀ n, P11130526595909711530.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P14811921088362956760

`A080513(n)+A000217(A080513(n))*A008619(n)`
-/

namespace A183409.P14811921088362956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A000217 (A080513 n).toNat * A008619 n

end

end A183409.P14811921088362956760

namespace A183409

/-- `A080513(n)+A000217(A080513(n))*A008619(n)` -/
def P14811921088362956760.Spec : Prop :=
  ∀ n, P14811921088362956760.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P6525206771586512013

`A008619(n+1)+A000217(A008619(n+1))*A110654(n+1)`
-/

namespace A183409.P6525206771586512013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A000217 (A008619 (n + 1)).toNat * A110654 (n + 1)

end

end A183409.P6525206771586512013

namespace A183409

/-- `A008619(n+1)+A000217(A008619(n+1))*A110654(n+1)` -/
def P6525206771586512013.Spec : Prop :=
  ∀ n, P6525206771586512013.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P15499022111818309652

`Δ[A005994(n)]-A160790(n)`
-/

namespace A183409.P15499022111818309652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A160790 n

end

end A183409.P15499022111818309652

namespace A183409

/-- `Δ[A005994(n)]-A160790(n)` -/
def P15499022111818309652.Spec : Prop :=
  ∀ n, P15499022111818309652.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P9258425079203722661

`A058187(n+1)+A053307(n)`
-/

namespace A183409.P9258425079203722661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (n + 1) + A053307 n

end

end A183409.P9258425079203722661

namespace A183409

/-- `A058187(n+1)+A053307(n)` -/
def P9258425079203722661.Spec : Prop :=
  ∀ n, P9258425079203722661.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P15352649765712605584

`A005993(n+1)-A160790(n)`
-/

namespace A183409.P15352649765712605584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (n + 1) - A160790 n

end

end A183409.P15352649765712605584

namespace A183409

/-- `A005993(n+1)-A160790(n)` -/
def P15352649765712605584.Spec : Prop :=
  ∀ n, P15352649765712605584.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P18264897448286641671

`A008619(n+1)+A008619(n)*A008805(n+1)`
-/

namespace A183409.P18264897448286641671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A008619 n * A008805 (n + 1)

end

end A183409.P18264897448286641671

namespace A183409

/-- `A008619(n+1)+A008619(n)*A008805(n+1)` -/
def P18264897448286641671.Spec : Prop :=
  ∀ n, P18264897448286641671.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P16896741733745254134

`A028724(n+3)+A002620(n+3)`
-/

namespace A183409.P16896741733745254134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (n + 3) + A002620 (n + 3)

end

end A183409.P16896741733745254134

namespace A183409

/-- `A028724(n+3)+A002620(n+3)` -/
def P16896741733745254134.Spec : Prop :=
  ∀ n, P16896741733745254134.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P16147033393020120179

`∑[A243099(n+7)]+1`
-/

namespace A183409.P16147033393020120179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243099 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A183409.P16147033393020120179

namespace A183409

/-- `∑[A243099(n+7)]+1` -/
def P16147033393020120179.Spec : Prop :=
  ∀ n, P16147033393020120179.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P13322347041427076377

`A144677(A007494(n))+A080513(n)`
-/

namespace A183409.P13322347041427076377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A007494 n).toNat + A080513 n

end

end A183409.P13322347041427076377

namespace A183409

/-- `A144677(A007494(n))+A080513(n)` -/
def P13322347041427076377.Spec : Prop :=
  ∀ n, P13322347041427076377.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P16276813289736584407

`A144677(A007494(n))+A008619(n+1)`
-/

namespace A183409.P16276813289736584407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A007494 n).toNat + A008619 (n + 1)

end

end A183409.P16276813289736584407

namespace A183409

/-- `A144677(A007494(n))+A008619(n+1)` -/
def P16276813289736584407.Spec : Prop :=
  ∀ n, P16276813289736584407.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P13121467676793246459

`A080513(n)+A008670(A007310(n+1))`
-/

namespace A183409.P13121467676793246459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A008670 (A007310 (n + 1)).toNat

end

end A183409.P13121467676793246459

namespace A183409

/-- `A080513(n)+A008670(A007310(n+1))` -/
def P13121467676793246459.Spec : Prop :=
  ∀ n, P13121467676793246459.a n = A183409 (n + 1)

end A183409

/-! ## A183409.P1158423370197360467

`A128141(A080827(n+2))`
-/

namespace A183409.P1158423370197360467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (A080827 (n + 2)).toNat

end

end A183409.P1158423370197360467

namespace A183409

/-- `A128141(A080827(n+2))` -/
def P1158423370197360467.Spec : Prop :=
  ∀ n, P1158423370197360467.a n = A183409 (n + 1)

end A183409

/-!
# A183410: Number of nX3 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183410, there is no canonical definition to state claims against.
-/

/-! ## A183410.P13227427608203502416

`A183413(∑[n+2]+4)`
-/

namespace A183410.P13227427608203502416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183410.P13227427608203502416

/-! ## A183410.P16660362852759671448

`A183413(A167614(n+1))+char[15]`
-/

namespace A183410.P16660362852759671448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183410.P16660362852759671448

/-! ## A183410.P12849282510826411341

`A183413(A046691(n)+7)+char[20]`
-/

namespace A183410.P12849282510826411341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183410.P12849282510826411341

/-! ## A183410.P13682374100805891973

`A185284(n)+A183413(A167614(n+1))`
-/

namespace A183410.P13682374100805891973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183413 (A167614 (n + 1)).toNat

end

end A183410.P13682374100805891973

/-! ## A183410.P12964477186114717712

`A183413(A167614(n+1))%A016963(n)`
-/

namespace A183410.P12964477186114717712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183413 (A167614 (n + 1)).toNat) (A016963 n)

end

end A183410.P12964477186114717712

/-!
# A183411: Number of nX4 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183411, there is no canonical definition to state claims against.
-/

/-! ## A183411.P10185409491353830807

`A183413(A374004(n+1))`
-/

namespace A183411.P10185409491353830807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A374004 (n + 1)).toNat

end

end A183411.P10185409491353830807

/-! ## A183411.P2201330449793395718

`A183413(A141214(n)+7)`
-/

namespace A183411.P2201330449793395718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A141214 n + 7).toNat

end

end A183411.P2201330449793395718

/-! ## A183411.P4502857918406398388

`A183413(A052905(n)+9)`
-/

namespace A183411.P4502857918406398388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A052905 n + 9).toNat

end

end A183411.P4502857918406398388

/-! ## A183411.P13006220711991783949

`A183413(A055999(n)+10)`
-/

namespace A183411.P13006220711991783949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A055999 n + 10).toNat

end

end A183411.P13006220711991783949

/-! ## A183411.P2489380783314609510

`A183413(eq[5, A066657(n)])`
-/

namespace A183411.P2489380783314609510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183411.P2489380783314609510

/-!
# A183412: Number of nX5 binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183412, there is no canonical definition to state claims against.
-/

/-! ## A183412.P11231431352873281822

`A183413(A374005(n+1))`
-/

namespace A183412.P11231431352873281822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A374005 (n + 1)).toNat

end

end A183412.P11231431352873281822

/-! ## A183412.P10067171729236865880

`A183413(A167499(n+3))`
-/

namespace A183412.P10067171729236865880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A167499 (n + 3)).toNat

end

end A183412.P10067171729236865880

/-! ## A183412.P5026126446526303609

`A183413(A155212(n)+13)`
-/

namespace A183412.P5026126446526303609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A155212 n + 13).toNat

end

end A183412.P5026126446526303609

/-! ## A183412.P7686117178791016311

`A183413(A056000(n)+15)`
-/

namespace A183412.P7686117178791016311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (A056000 n + 15).toNat

end

end A183412.P7686117178791016311

/-! ## A183412.P3381931044466391918

`A183413(eq[7, A066657(n)])`
-/

namespace A183412.P3381931044466391918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183412.P3381931044466391918

/-!
# A183413: T(n,k)=Number of nXk binary arrays with each sum of a(1..i,1..j) no greater than i*j/2 and rows and columns in nondecreasing order.

The programs for A183413, there is no canonical definition to state claims against.
-/

/-! ## A183413.P17659894789199581963

`A195119(A000005(A038319(n)))`
-/

namespace A183413.P17659894789199581963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A000005 (A038319 n).toNat).toNat

end

end A183413.P17659894789199581963

/-!
# A183414: Number of n X n 0..2 arrays with each sum of a(1..i,1..j) no greater than i*j.

The programs for A183414, there is no canonical definition to state claims against.
-/

/-! ## A183414.P17292831600499471402

`A183419((n+1)²+n²)`
-/

namespace A183414.P17292831600499471402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 ((n + 1) ^ 2 + n ^ 2)

end

end A183414.P17292831600499471402

/-!
# A183415: Number of nX2 0..2 arrays with each sum of a(1..i,1..j) no greater than i*j.

The programs for A183415, there is no canonical definition to state claims against.
-/

/-! ## A183415.P16978583595794928840

`A183419(∑[n+1]+2)`
-/

namespace A183415.P16978583595794928840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183415.P16978583595794928840

/-! ## A183415.P4671118634912855678

`record[A010054(n)*A183419(n+2)]`
-/

namespace A183415.P4671118634912855678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183419 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183415.P4671118634912855678

/-! ## A183415.P10585403188050834713

`record[root(A183419(n+2), A062105(n))]`
-/

namespace A183415.P10585403188050834713
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183419 (n + 2) : ℝ) ^ (1 / (A062105 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183415.P10585403188050834713

/-!
# A183416: Number of nX3 0..2 arrays with each sum of a(1..i,1..j) no greater than i*j.

The programs for A183416, there is no canonical definition to state claims against.
-/

/-! ## A183416.P10666428791919157327

`A183419(∑[n+2]+4)`
-/

namespace A183416.P10666428791919157327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183416.P10666428791919157327

/-! ## A183416.P6842297405451563609

`A183419(A167614(n+1))%A042110(n)`
-/

namespace A183416.P6842297405451563609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183419 (A167614 (n + 1)).toNat) (A042110 n)

end

end A183416.P6842297405451563609

/-! ## A183416.P16617962738589304159

`or(A063524(n), A183419(A167614(n+1)))`
-/

namespace A183416.P16617962738589304159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A183419 (A167614 (n + 1)).toNat)

end

end A183416.P16617962738589304159

/-! ## A183416.P15863819769825611354

`A183419(A167614(n+1))+A181735(n+1)`
-/

namespace A183416.P15863819769825611354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A167614 (n + 1)).toNat + A181735 (n + 1)

end

end A183416.P15863819769825611354

/-! ## A183416.P7954166867314105063

`lcm(A034947(n+1), A183419(A167614(n+1)))`
-/

namespace A183416.P7954166867314105063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A183419 (A167614 (n + 1)).toNat)

end

end A183416.P7954166867314105063

/-!
# A183417: Number of nX4 0..2 arrays with each sum of a(1..i,1..j) no greater than i*j.

The programs for A183417, there is no canonical definition to state claims against.
-/

/-! ## A183417.P13746192920234248741

`A183419(A141214(n)+7)`
-/

namespace A183417.P13746192920234248741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A141214 n + 7).toNat

end

end A183417.P13746192920234248741

/-! ## A183417.P17205508144718704196

`A183419(A052905(n)+9)`
-/

namespace A183417.P17205508144718704196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A052905 n + 9).toNat

end

end A183417.P17205508144718704196

/-! ## A183417.P2380321599999851697

`A183419(A055999(n)+10)`
-/

namespace A183417.P2380321599999851697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A055999 n + 10).toNat

end

end A183417.P2380321599999851697

/-! ## A183417.P12956490866351082523

`A183419(A167614(n+2)+1)`
-/

namespace A183417.P12956490866351082523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A167614 (n + 2) + 1).toNat

end

end A183417.P12956490866351082523

/-! ## A183417.P6081215746031066614

`A183419(eq[5, A131818(n+1)])`
-/

namespace A183417.P6081215746031066614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183417.P6081215746031066614

/-!
# A183418: Number of n X 5 0..2 arrays with each sum of a(1..i,1..j) no greater than i*j.

The programs for A183418, there is no canonical definition to state claims against.
-/

/-! ## A183418.P14654233857650266475

`A183419(A056000(n)+15)`
-/

namespace A183418.P14654233857650266475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A056000 n + 15).toNat

end

end A183418.P14654233857650266475

/-! ## A183418.P8738678603126288874

`A183419(A167614(n+3)+2)`
-/

namespace A183418.P8738678603126288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A167614 (n + 3) + 2).toNat

end

end A183418.P8738678603126288874

/-! ## A183418.P10631959749460552637

`A183419(eq[6, A131818(n+1)])`
-/

namespace A183418.P10631959749460552637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183418.P10631959749460552637

/-! ## A183418.P3074161869909521063

`A183419(A374005(n+1))`
-/

namespace A183418.P3074161869909521063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (A374005 (n + 1)).toNat

end

end A183418.P3074161869909521063

/-! ## A183418.P7169318307582689825

`A183419(eq[4, A193592(n)])`
-/

namespace A183418.P7169318307582689825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183418.P7169318307582689825

/-!
# A183422: Ordering of the numbers in the tree A183420; complement of A183423.

The programs for A183422, there is no canonical definition to state claims against.
-/

/-! ## A183422.P11056822579515453552

`lt[0, Δ[A257023(n)]]`
-/

namespace A183422.P11056822579515453552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183422.P11056822579515453552

/-! ## A183422.P1540443250335053930

`eq[1, A257022(n+2)]+1`
-/

namespace A183422.P1540443250335053930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183422.P1540443250335053930

/-! ## A183422.P14984756941021057793

`comp[A183423(n+1)-1]+1`
-/

namespace A183422.P14984756941021057793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183422.P14984756941021057793

/-! ## A183422.P5256203405026319953

`eq[1, Δ[A241834(2*(n+1))]]`
-/

namespace A183422.P5256203405026319953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241834 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183422.P5256203405026319953

/-! ## A183422.P9455719297407672395

`record[n+3-A257022(n+3)]`
-/

namespace A183422.P9455719297407672395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A257022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183422.P9455719297407672395

/-! ## A183422.P18364613368484866189

`lt[n, 2*n/A257022(n+1)]`
-/

namespace A183422.P18364613368484866189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A257022 (n + 1) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A183422.P18364613368484866189

/-! ## A183422.P1642747076241677533

`eq[1, A257022(abs(A131738(n)))]`
-/

namespace A183422.P1642747076241677533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 |A131738 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183422.P1642747076241677533

/-! ## A183422.P16719077654848697244

`eq[1, A257022(A055087(n+1))]`
-/

namespace A183422.P16719077654848697244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A055087 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183422.P16719077654848697244

/-! ## A183422.P7478154916940898194

`eq[1, A257022(A087156(n+1))]`
-/

namespace A183422.P7478154916940898194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A087156 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183422.P7478154916940898194

/-! ## A183422.P16352299253247078530

`eq[1, A257022(A233583(n+2))]`
-/

namespace A183422.P16352299253247078530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A233583 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183422.P16352299253247078530

/-!
# A183423: Ordering of the numbers in tree A183421; complement of A183422.

The programs for A183423, the canonical program `A183423.P11999650306193014405` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183423 has offset 1).

The definition of A183423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183423.P14594793304289976504

`comp[n-A257022(n)]`
-/

namespace A183423.P14594793304289976504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183423.P14594793304289976504

namespace A183423

/-- `comp[n-A257022(n)]` -/
def P14594793304289976504.Spec : Prop :=
  ∀ n, (P14594793304289976504.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P14733985937174707918

`lt[1, A257022(n+1)]`
-/

namespace A183423.P14733985937174707918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183423.P14733985937174707918

namespace A183423

/-- `lt[1, A257022(n+1)]` -/
def P14733985937174707918.Spec : Prop :=
  ∀ n, (P14733985937174707918.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P11999650306193014405

`lt[n*Δ[A257023(n)], n]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183423

/-- `lt[n*Δ[A257023(n)], n]` -/
def P11999650306193014405.Spec : Prop :=
  ∀ n, (P11999650306193014405.a n : ℤ) = A183423 (n + 1)

theorem P11999650306193014405.correct : P11999650306193014405.Spec := by
  intro n
  simp only [A183423, Nat.add_sub_cancel]

end A183423

/-! ## A183423.P4655330090432598998

`comp[A183422(n+1)-1]+1`
-/

namespace A183423.P4655330090432598998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183423.P4655330090432598998

namespace A183423

/-- `comp[A183422(n+1)-1]+1` -/
def P4655330090432598998.Spec : Prop :=
  ∀ n, (P4655330090432598998.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P514776036279805721

`lt[Δ[A241834(2*(n+1))], 1]`
-/

namespace A183423.P514776036279805721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241834 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A183423.P514776036279805721

namespace A183423

/-- `lt[Δ[A241834(2*(n+1))], 1]` -/
def P514776036279805721.Spec : Prop :=
  ∀ n, (P514776036279805721.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P6071058063577017749

`comp[eq[1, A257022(n+2)]]+1`
-/

namespace A183423.P6071058063577017749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A183423.P6071058063577017749

namespace A183423

/-- `comp[eq[1, A257022(n+2)]]+1` -/
def P6071058063577017749.Spec : Prop :=
  ∀ n, (P6071058063577017749.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P8322678703353682164

`lt[A054977(n), A257022(n)]-1`
-/

namespace A183423.P8322678703353682164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A183423.P8322678703353682164

namespace A183423

/-- `lt[A054977(n), A257022(n)]-1` -/
def P8322678703353682164.Spec : Prop :=
  ∀ n, P8322678703353682164.a n = A183423 (n + 1)

end A183423

/-! ## A183423.P974835221408919884

`lt[A057427(n), A257022(n)]-1`
-/

namespace A183423.P974835221408919884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A183423.P974835221408919884

namespace A183423

/-- `lt[A057427(n), A257022(n)]-1` -/
def P974835221408919884.Spec : Prop :=
  ∀ n, P974835221408919884.a n = A183423 (n + 1)

end A183423

/-! ## A183423.P13954817535404090180

`comp[eq[1, A257022(A000027(n+1))]]`
-/

namespace A183423.P13954817535404090180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A000027 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183423.P13954817535404090180

namespace A183423

/-- `comp[eq[1, A257022(A000027(n+1))]]` -/
def P13954817535404090180.Spec : Prop :=
  ∀ n, (P13954817535404090180.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P11460172474463753958

`eq[1, A257022(A257022(n+1)+1)]`
-/

namespace A183423.P11460172474463753958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A257022 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183423.P11460172474463753958

namespace A183423

/-- `eq[1, A257022(A257022(n+1)+1)]` -/
def P11460172474463753958.Spec : Prop :=
  ∀ n, (P11460172474463753958.a n : ℤ) = A183423 (n + 1)

end A183423

/-! ## A183423.P14034693449993256845

`record[A233583(n+1)-A263111(A257022(n))]`
-/

namespace A183423.P14034693449993256845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A263111 (A257022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183423.P14034693449993256845

namespace A183423

/-- `record[A233583(n+1)-A263111(A257022(n))]` -/
def P14034693449993256845.Spec : Prop :=
  ∀ n, P14034693449993256845.a n = A183423 (n + 1)

end A183423

/-!
# A183424: Half the number of n X n 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183424, there is no canonical definition to state claims against.
-/

/-! ## A183424.P5180672588518182546

`A183429(∑[4*n]+1)`
-/

namespace A183424.P5180672588518182546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183424.P5180672588518182546

/-!
# A183425: Half the number of n X 2 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183425, the canonical program `A183425.P398023806096275593` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183425 has offset 1).

The definition of A183425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183425.P398023806096275593

`(n+1)²%3+2*4^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A183425

/-- `(n+1)²%3+2*4^n` -/
def P398023806096275593.Spec : Prop :=
  ∀ n, (P398023806096275593.a n : ℤ) = A183425 (n + 1)

theorem P398023806096275593.correct : P398023806096275593.Spec := by
  intro n
  simp only [A183425, Nat.add_sub_cancel]

end A183425

/-! ## A183425.P13439458696285868033

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=9, a(2)=32, a(3)=129`
-/

namespace A183425.P13439458696285868033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 32, 129] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A183425.P13439458696285868033

namespace A183425

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P13439458696285868033.Spec : Prop :=
  ∀ n, P13439458696285868033.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P8101194033668987177

`A010892(n)²+2*4^n`
-/

namespace A183425.P8101194033668987177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2 + (2 * 4 ^ n : ℤ)

end

end A183425.P8101194033668987177

namespace A183425

/-- `A010892(n)²+2*4^n` -/
def P8101194033668987177.Spec : Prop :=
  ∀ n, P8101194033668987177.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P10018402616891453577

`abs(1-A080425(n))+2*4^n`
-/

namespace A183425.P10018402616891453577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A080425 n| + (2 * 4 ^ n : ℤ)

end

end A183425.P10018402616891453577

namespace A183425

/-- `abs(1-A080425(n))+2*4^n` -/
def P10018402616891453577.Spec : Prop :=
  ∀ n, P10018402616891453577.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P5684497652864628979

`A130196(n+1)+2*4^n-1`
-/

namespace A183425.P5684497652864628979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (n + 1) + ((2 * 4 ^ n : ℤ) - 1)

end

end A183425.P5684497652864628979

namespace A183425

/-- `A130196(n+1)+2*4^n-1` -/
def P5684497652864628979.Spec : Prop :=
  ∀ n, P5684497652864628979.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P8695729602894861602

`and(1, A000032(n+1))+2*4^n`
-/

namespace A183425.P8695729602894861602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000032 (n + 1)) + (2 * 4 ^ n : ℤ)

end

end A183425.P8695729602894861602

namespace A183425

/-- `and(1, A000032(n+1))+2*4^n` -/
def P8695729602894861602.Spec : Prop :=
  ∀ n, P8695729602894861602.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P6584437129582735432

`and(1, A000045(n+1))+2*4^n`
-/

namespace A183425.P6584437129582735432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 (n + 1)) + (2 * 4 ^ n : ℤ)

end

end A183425.P6584437129582735432

namespace A183425

/-- `and(1, A000045(n+1))+2*4^n` -/
def P6584437129582735432.Spec : Prop :=
  ∀ n, P6584437129582735432.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P5004220830232321427

`A283070(n)-A177702(n)`
-/

namespace A183425.P5004220830232321427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283070 n - A177702 n

end

end A183425.P5004220830232321427

namespace A183425

/-- `A283070(n)-A177702(n)` -/
def P5004220830232321427.Spec : Prop :=
  ∀ n, P5004220830232321427.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P6610210419519018804

`A308124(n)-A191597(n)`
-/

namespace A183425.P6610210419519018804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308124 n - A191597 n

end

end A183425.P6610210419519018804

namespace A183425

/-- `A308124(n)-A191597(n)` -/
def P6610210419519018804.Spec : Prop :=
  ∀ n, P6610210419519018804.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P15231320670587720426

`A004171(n)+abs(A010892(n))`
-/

namespace A183425.P15231320670587720426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + |A010892 n|

end

end A183425.P15231320670587720426

namespace A183425

/-- `A004171(n)+abs(A010892(n))` -/
def P15231320670587720426.Spec : Prop :=
  ∀ n, P15231320670587720426.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P14440597213569523717

`A004171(n)+A049347(n)²`
-/

namespace A183425.P14440597213569523717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + A049347 n ^ 2

end

end A183425.P14440597213569523717

namespace A183425

/-- `A004171(n)+A049347(n)²` -/
def P14440597213569523717.Spec : Prop :=
  ∀ n, P14440597213569523717.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P17241681625782882813

`A004171(n)+char[A032766(n)]`
-/

namespace A183425.P17241681625782882813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A183425.P17241681625782882813

namespace A183425

/-- `A004171(n)+char[A032766(n)]` -/
def P17241681625782882813.Spec : Prop :=
  ∀ n, P17241681625782882813.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P3231356976431912270

`A221130(n+1)-A130481(n)`
-/

namespace A183425.P3231356976431912270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221130 (n + 1) - A130481 n

end

end A183425.P3231356976431912270

namespace A183425

/-- `A221130(n+1)-A130481(n)` -/
def P3231356976431912270.Spec : Prop :=
  ∀ n, P3231356976431912270.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P12154056795342119178

`A204418(n)+A130752(2*n)`
-/

namespace A183425.P12154056795342119178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A130752 (2 * n)

end

end A183425.P12154056795342119178

namespace A183425

/-- `A204418(n)+A130752(2*n)` -/
def P12154056795342119178.Spec : Prop :=
  ∀ n, P12154056795342119178.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P15800438555424403876

`and(A037660(n+1), A087289(n))`
-/

namespace A183425.P15800438555424403876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037660 (n + 1)) (A087289 n)

end

end A183425.P15800438555424403876

namespace A183425

/-- `and(A037660(n+1), A087289(n))` -/
def P15800438555424403876.Spec : Prop :=
  ∀ n, P15800438555424403876.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P12017856698059315176

`A004171(n)+A057078(n+2)²`
-/

namespace A183425.P12017856698059315176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + A057078 (n + 2) ^ 2

end

end A183425.P12017856698059315176

namespace A183425

/-- `A004171(n)+A057078(n+2)²` -/
def P12017856698059315176.Spec : Prop :=
  ∀ n, P12017856698059315176.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P5886127725604161169

`A141775(2*n+1)+A011655(n)`
-/

namespace A183425.P5886127725604161169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 (2 * n + 1) + A011655 n

end

end A183425.P5886127725604161169

namespace A183425

/-- `A141775(2*n+1)+A011655(n)` -/
def P5886127725604161169.Spec : Prop :=
  ∀ n, P5886127725604161169.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P14348092562946431849

`A000051(2*n+1)-A022003(n)`
-/

namespace A183425.P14348092562946431849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - A022003 n

end

end A183425.P14348092562946431849

namespace A183425

/-- `A000051(2*n+1)-A022003(n)` -/
def P14348092562946431849.Spec : Prop :=
  ∀ n, P14348092562946431849.a n = A183425 (n + 1)

end A183425

/-! ## A183425.P476119786685554469

`A062510(2*n+1)-A022003(n)`
-/

namespace A183425.P476119786685554469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (2 * n + 1) - A022003 n

end

end A183425.P476119786685554469

namespace A183425

/-- `A062510(2*n+1)-A022003(n)` -/
def P476119786685554469.Spec : Prop :=
  ∀ n, P476119786685554469.a n = A183425 (n + 1)

end A183425

/-!
# A183426: Half the number of n X 3 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183426, there is no canonical definition to state claims against.
-/

/-! ## A183426.P17007077726479757787

`A183429(∑[n+2]+4)`
-/

namespace A183426.P17007077726479757787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183426.P17007077726479757787

/-! ## A183426.P5492290585246623428

`record[A183429(A008795(n)+3)]`
-/

namespace A183426.P5492290585246623428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183426.P5492290585246623428

/-! ## A183426.P1802683327472751540

`and(-1, A183429(A167614(n+1)))`
-/

namespace A183426.P1802683327472751540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A183429 (A167614 (n + 1)).toNat)

end

end A183426.P1802683327472751540

/-! ## A183426.P18060063223454928168

`record[A183429(n+4)/A055584(n)]`
-/

namespace A183426.P18060063223454928168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183429 (n + 4) : ℚ) / (A055584 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183426.P18060063223454928168

/-! ## A183426.P15317347427888817990

`A183429(A167614(n+1))+A014083(n)`
-/

namespace A183426.P15317347427888817990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (A167614 (n + 1)).toNat + A014083 n

end

end A183426.P15317347427888817990

/-!
# A183427: Half the number of nX4 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183427, there is no canonical definition to state claims against.
-/

/-! ## A183427.P14042824352322655319

`A183429(∑[n+3]+7)`
-/

namespace A183427.P14042824352322655319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183427.P14042824352322655319

/-! ## A183427.P10953417967745718595

`lcm(3, A183429(A027379(n+2)))`
-/

namespace A183427.P10953417967745718595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A183429 (A027379 (n + 2)).toNat)

end

end A183427.P10953417967745718595

/-! ## A183427.P7433949194783410788

`A183429(A027379(n+2))+A014083(n)`
-/

namespace A183427.P7433949194783410788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (A027379 (n + 2)).toNat + A014083 n

end

end A183427.P7433949194783410788

/-!
# A183428: Half the number of nX5 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183428, there is no canonical definition to state claims against.
-/

/-! ## A183428.P4497962680378231325

`A183429(Δ[A264443(n)])`
-/

namespace A183428.P4497962680378231325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183429 (f1 (n + 1) - f1 n).toNat

end

end A183428.P4497962680378231325

/-!
# A183429: T(n,k)=Half the number of nXk 0..2 arrays with no element equal its row sum plus its column sum mod 3.

The programs for A183429, there is no canonical definition to state claims against.
-/

/-! ## A183429.P7919425774201718593

`A229163(A008300(n))+A098355(n)`
-/

namespace A183429.P7919425774201718593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229163 (A008300 n).toNat + A098355 n

end

end A183429.P7919425774201718593

/-! ## A183429.P8728269311758401277

`A157235(A168517(n))+A098355(n)`
-/

namespace A183429.P8728269311758401277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157235 (A168517 n).toNat + A098355 n

end

end A183429.P8728269311758401277

/-! ## A183429.P11750471196982343995

`A342720(A176204(n))+A098355(n)`
-/

namespace A183429.P11750471196982343995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (A176204 n).toNat + A098355 n

end

end A183429.P11750471196982343995

/-! ## A183429.P17109466552819651767

`A098355(n)+A007036(A008292(n+1))`
-/

namespace A183429.P17109466552819651767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n + A007036 (A008292 (n + 1)).toNat

end

end A183429.P17109466552819651767

/-! ## A183429.P13643481530635738260

`A064989(∪[A300565(2*n+3), A025625(n+1)])`
-/

namespace A183429.P13643481530635738260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300565 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025625 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A183429.P13643481530635738260

/-!
# A183430: One third the number of n X 2 0..3 arrays with no element equal to its row sum plus its column sum mod 4.

The programs for A183430, the canonical program `A183430.P3757247350152759363` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183430 has offset 1).

The definition of A183430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183430.P3751199753918484259

`char[2*n]+3*9^n`
-/

namespace A183430.P3751199753918484259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * 9 ^ n

end

end A183430.P3751199753918484259

namespace A183430

/-- `char[2*n]+3*9^n` -/
def P3751199753918484259.Spec : Prop :=
  ∀ n, (P3751199753918484259.a n : ℤ) = A183430 (n + 1)

end A183430

/-! ## A183430.P3757247350152759363

`ceil(and(1, n+1)/2+3*9^n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A183430

/-- `ceil(and(1, n+1)/2+3*9^n)` -/
def P3757247350152759363.Spec : Prop :=
  ∀ n, P3757247350152759363.a n = A183430 (n + 1)

theorem P3757247350152759363.correct : P3757247350152759363.Spec := by
  intro n
  simp only [A183430, Nat.add_sub_cancel]

end A183430

/-! ## A183430.P4401139842917962420

`abs(n%2-A199561(n))`
-/

namespace A183430.P4401139842917962420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n % 2 : ℕ) : ℤ) - A199561 n|

end

end A183430.P4401139842917962420

namespace A183430

/-- `abs(n%2-A199561(n))` -/
def P4401139842917962420.Spec : Prop :=
  ∀ n, P4401139842917962420.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P13111070188697487378

`Δ[A039306(n)+round(n/2)]`
-/

namespace A183430.P13111070188697487378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039306 n + SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P13111070188697487378

namespace A183430

/-- `Δ[A039306(n)+round(n/2)]` -/
def P13111070188697487378.Spec : Prop :=
  ∀ n, P13111070188697487378.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P13716298011564798345

`abs(A013708(n)+∑[(-1)^n])`
-/

namespace A183430.P13716298011564798345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013708 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A183430.P13716298011564798345

namespace A183430

/-- `abs(A013708(n)+∑[(-1)^n])` -/
def P13716298011564798345.Spec : Prop :=
  ∀ n, P13716298011564798345.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P5315061562621977441

`Δ[A039300(2*n)+ceil(n/2)]`
-/

namespace A183430.P5315061562621977441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (2 * n) + ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P5315061562621977441

namespace A183430

/-- `Δ[A039300(2*n)+ceil(n/2)]` -/
def P5315061562621977441.Spec : Prop :=
  ∀ n, P5315061562621977441.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P11945053725457525868

`Δ[A110654(n)+A039306(n)]`
-/

namespace A183430.P11945053725457525868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A039306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P11945053725457525868

namespace A183430

/-- `Δ[A110654(n)+A039306(n)]` -/
def P11945053725457525868.Spec : Prop :=
  ∀ n, P11945053725457525868.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P14527263893654575750

`Δ[A325153(n+1)-A004526(n)]`
-/

namespace A183430.P14527263893654575750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325153 (n + 1) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P14527263893654575750

namespace A183430

/-- `Δ[A325153(n+1)-A004526(n)]` -/
def P14527263893654575750.Spec : Prop :=
  ∀ n, P14527263893654575750.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P3689871020858531672

`Δ[A325153(n+1)-A008619(n)]`
-/

namespace A183430.P3689871020858531672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325153 (n + 1) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P3689871020858531672

namespace A183430

/-- `Δ[A325153(n+1)-A008619(n)]` -/
def P3689871020858531672.Spec : Prop :=
  ∀ n, P3689871020858531672.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P9586900307218156737

`Δ[A110654(n)+A006342(2*n)]`
-/

namespace A183430.P9586900307218156737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A006342 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P9586900307218156737

namespace A183430

/-- `Δ[A110654(n)+A006342(2*n)]` -/
def P9586900307218156737.Spec : Prop :=
  ∀ n, P9586900307218156737.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P5176687500544892175

`Δ[A110654(n)+A039300(2*n)]`
-/

namespace A183430.P5176687500544892175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A039300 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P5176687500544892175

namespace A183430

/-- `Δ[A110654(n)+A039300(2*n)]` -/
def P5176687500544892175.Spec : Prop :=
  ∀ n, P5176687500544892175.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P14457360430207448462

`Δ[A183119(2*n)-A004526(n)]`
-/

namespace A183430.P14457360430207448462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 (2 * n) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P14457360430207448462

namespace A183430

/-- `Δ[A183119(2*n)-A004526(n)]` -/
def P14457360430207448462.Spec : Prop :=
  ∀ n, P14457360430207448462.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P2284006085744914043

`Δ[A183119(2*n)-A008619(n)]`
-/

namespace A183430.P2284006085744914043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 (2 * n) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P2284006085744914043

namespace A183430

/-- `Δ[A183119(2*n)-A008619(n)]` -/
def P2284006085744914043.Spec : Prop :=
  ∀ n, P2284006085744914043.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P43089881749473992

`xor(A010678(n), A034472(2*n+1))`
-/

namespace A183430.P43089881749473992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010678 n) (A034472 (2 * n + 1))

end

end A183430.P43089881749473992

namespace A183430

/-- `xor(A010678(n), A034472(2*n+1))` -/
def P43089881749473992.Spec : Prop :=
  ∀ n, P43089881749473992.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P8754674106994295000

`xor(A010687(n), A168607(2*n+1))`
-/

namespace A183430.P8754674106994295000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010687 n) (A168607 (2 * n + 1))

end

end A183430.P8754674106994295000

namespace A183430

/-- `xor(A010687(n), A168607(2*n+1))` -/
def P8754674106994295000.Spec : Prop :=
  ∀ n, P8754674106994295000.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P7728016647056521019

`Δ[A008619(n+1)+A006342(2*n)]`
-/

namespace A183430.P7728016647056521019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A006342 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183430.P7728016647056521019

namespace A183430

/-- `Δ[A008619(n+1)+A006342(2*n)]` -/
def P7728016647056521019.Spec : Prop :=
  ∀ n, P7728016647056521019.a n = A183430 (n + 1)

end A183430

/-! ## A183430.P3905736307345457576

`abs(1-abs(A176895(2*n)-3*(A001019(n)+1)))`
-/

namespace A183430.P3905736307345457576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A176895 (2 * n) - 3 * (A001019 n + 1)|)|

end

end A183430.P3905736307345457576

namespace A183430

/-- `abs(1-abs(A176895(2*n)-3*(A001019(n)+1)))` -/
def P3905736307345457576.Spec : Prop :=
  ∀ n, P3905736307345457576.a n = A183430 (n + 1)

end A183430

/-!
# A183431: One third the number of nX3 0..3 arrays with no element equal to its row sum plus its column sum mod 4.

The programs for A183431, there is no canonical definition to state claims against.
-/

/-! ## A183431.P7522187898167399270

`A183433(∑[n+2]+4)`
-/

namespace A183431.P7522187898167399270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183433 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183431.P7522187898167399270

/-! ## A183431.P8803969785887400036

`lcm(2, A183433(A167614(n+1)))`
-/

namespace A183431.P8803969785887400036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183433 (A167614 (n + 1)).toNat)

end

end A183431.P8803969785887400036

/-! ## A183431.P11448400891600502303

`A183433(A167614(n+1))+A011727(n)`
-/

namespace A183431.P11448400891600502303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183433 (A167614 (n + 1)).toNat + A011727 n

end

end A183431.P11448400891600502303

/-!
# A183432: One third the number of nX4 0..3 arrays with no element equal to its row sum plus its column sum mod 4.

The programs for A183432, there is no canonical definition to state claims against.
-/

/-! ## A183432.P13153846439664517090

`A183433(C(n+5, 2)-n)`
-/

namespace A183432.P13153846439664517090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183433 (Nat.choose (n + 5) 2 - n)

end

end A183432.P13153846439664517090

/-!
# A183434: Number of n X n binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183434, there is no canonical definition to state claims against.
-/

/-! ## A183434.P1815578240657086265

`A183442((n+1)²+n²)`
-/

namespace A183434.P1815578240657086265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 ((n + 1) ^ 2 + n ^ 2)

end

end A183434.P1815578240657086265

/-! ## A183434.P11327504212375646033

`record[gcd(A003987(n), A183442(n+1))]`
-/

namespace A183434.P11327504212375646033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A183442 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183434.P11327504212375646033

/-! ## A183434.P606926094999691371

`gcd(A017909(n), A183442(A001844(n)))`
-/

namespace A183434.P606926094999691371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017909 n) (A183442 (A001844 n).toNat)

end

end A183434.P606926094999691371

/-! ## A183434.P16253495001697187575

`or(A000007(n), A183442(A001844(n)))`
-/

namespace A183434.P16253495001697187575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183442 (A001844 n).toNat)

end

end A183434.P16253495001697187575

/-! ## A183434.P10341018696313703151

`A183442(A001844(n))%A265622(n+1)`
-/

namespace A183434.P10341018696313703151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183442 (A001844 n).toNat) (A265622 (n + 1))

end

end A183434.P10341018696313703151

/-!
# A183435: Number of n X 2 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183435, the canonical program `A183435.P3144148003250862390` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183435 has offset 1).

The definition of A183435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183435.P3144148003250862390

`a(n-1)+a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=7, a(2)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A183435

/-- `a(n-1)+a(n-2)+4*a(n-3)` -/
def P3144148003250862390.Spec : Prop :=
  ∀ n, (P3144148003250862390.a n : ℤ) = A183435 (n + 1)

theorem P3144148003250862390.correct : P3144148003250862390.Spec := by
  intro n
  simp only [A183435, Nat.add_sub_cancel]

end A183435

/-! ## A183435.P8631607607342694488

`A183442(∑[n+1]+2)`
-/

namespace A183435.P8631607607342694488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183435.P8631607607342694488

namespace A183435

/-- `A183442(∑[n+1]+2)` -/
def P8631607607342694488.Spec : Prop :=
  ∀ n, P8631607607342694488.a n = A183435 (n + 1)

end A183435

/-! ## A183435.P8322041941097230239

`record[A183442(A117142(n+2))]`
-/

namespace A183435.P8322041941097230239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183435.P8322041941097230239

namespace A183435

/-- `record[A183442(A117142(n+2))]` -/
def P8322041941097230239.Spec : Prop :=
  ∀ n, P8322041941097230239.a n = A183435 (n + 1)

end A183435

/-! ## A183435.P13644742581567730085

`A183442(A000096(n+1))%A241489(n+1)`
-/

namespace A183435.P13644742581567730085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183442 (A000096 (n + 1)).toNat) (A241489 (n + 1))

end

end A183435.P13644742581567730085

namespace A183435

/-- `A183442(A000096(n+1))%A241489(n+1)` -/
def P13644742581567730085.Spec : Prop :=
  ∀ n, P13644742581567730085.a n = A183435 (n + 1)

end A183435

/-!
# A183436: Number of n X 3 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183436, there is no canonical definition to state claims against.
-/

/-! ## A183436.P17047505418714818390

`A183442(∑[n+2]+4)`
-/

namespace A183436.P17047505418714818390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183436.P17047505418714818390

/-! ## A183436.P10436646981200190944

`or(1, A183442(A167614(n+1)))`
-/

namespace A183436.P10436646981200190944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183442 (A167614 (n + 1)).toNat)

end

end A183436.P10436646981200190944

/-! ## A183436.P5943327875780122735

`A326292(n)+A183442(A167614(n+1))`
-/

namespace A183436.P5943327875780122735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A183442 (A167614 (n + 1)).toNat

end

end A183436.P5943327875780122735

/-! ## A183436.P12952396076195404150

`A183442(A167614(n+1))%A002042(n)`
-/

namespace A183436.P12952396076195404150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183442 (A167614 (n + 1)).toNat) (A002042 n)

end

end A183436.P12952396076195404150

/-! ## A183436.P13717220107726134918

`lcm(A033999(n), A183442(A167614(n+1)))`
-/

namespace A183436.P13717220107726134918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183442 (A167614 (n + 1)).toNat)

end

end A183436.P13717220107726134918

/-!
# A183437: Number of n X 4 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183437, there is no canonical definition to state claims against.
-/

/-! ## A183437.P13424292348874657392

`A183442(A374004(n+1))`
-/

namespace A183437.P13424292348874657392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A374004 (n + 1)).toNat

end

end A183437.P13424292348874657392

/-! ## A183437.P11748451672536338582

`A183442(A141214(n)+7)`
-/

namespace A183437.P11748451672536338582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A141214 n + 7).toNat

end

end A183437.P11748451672536338582

/-! ## A183437.P603732227588881194

`A183442(A052905(n)+9)`
-/

namespace A183437.P603732227588881194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A052905 n + 9).toNat

end

end A183437.P603732227588881194

/-! ## A183437.P10244242978441923960

`A183442(A055999(n)+10)`
-/

namespace A183437.P10244242978441923960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A055999 n + 10).toNat

end

end A183437.P10244242978441923960

/-! ## A183437.P15852154756085160526

`A183442(A167614(n+2)+1)`
-/

namespace A183437.P15852154756085160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A167614 (n + 2) + 1).toNat

end

end A183437.P15852154756085160526

/-!
# A183438: Number of nX5 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183438, there is no canonical definition to state claims against.
-/

/-! ## A183438.P8062178973258385840

`A183442(A374005(n+1))`
-/

namespace A183438.P8062178973258385840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A374005 (n + 1)).toNat

end

end A183438.P8062178973258385840

/-! ## A183438.P18401990552716560851

`A183442(A167499(n+3))`
-/

namespace A183438.P18401990552716560851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A167499 (n + 3)).toNat

end

end A183438.P18401990552716560851

/-! ## A183438.P14881194971332190418

`A183442(A000096(n+3)+6)`
-/

namespace A183438.P14881194971332190418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A000096 (n + 3) + 6).toNat

end

end A183438.P14881194971332190418

/-! ## A183438.P14890993949476116114

`A183442(A000124(n+5)-(n+1))`
-/

namespace A183438.P14890993949476116114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A183438.P14890993949476116114

/-! ## A183438.P15956866369475924525

`A183442(A167614(n+2)+n+6)`
-/

namespace A183438.P15956866369475924525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A183438.P15956866369475924525

/-!
# A183439: Number of nX6 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183439, there is no canonical definition to state claims against.
-/

/-! ## A183439.P3651412671341460078

`A183442(A374007(n+1))`
-/

namespace A183439.P3651412671341460078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A374007 (n + 1)).toNat

end

end A183439.P3651412671341460078

/-! ## A183439.P7049715052696653652

`A183442(A166136(n+4))`
-/

namespace A183439.P7049715052696653652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A166136 (n + 4)).toNat

end

end A183439.P7049715052696653652

/-! ## A183439.P18335527664739968747

`A183442(A167499(n+4)+1)`
-/

namespace A183439.P18335527664739968747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A167499 (n + 4) + 1).toNat

end

end A183439.P18335527664739968747

/-! ## A183439.P5368029511102743155

`A183442(A167614(n+4)+3)`
-/

namespace A183439.P5368029511102743155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A167614 (n + 4) + 3).toNat

end

end A183439.P5368029511102743155

/-! ## A183439.P8881356691100212134

`A183442(A000124(n+5)+5)`
-/

namespace A183439.P8881356691100212134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A000124 (n + 5) + 5).toNat

end

end A183439.P8881356691100212134

/-!
# A183440: Number of nX7 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183440, there is no canonical definition to state claims against.
-/

/-! ## A183440.P4502014831601082791

`A183442(A374008(n+1))`
-/

namespace A183440.P4502014831601082791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A374008 (n + 1)).toNat

end

end A183440.P4502014831601082791

/-! ## A183440.P7630828994161218955

`A183442(eq[11, A066657(n)])`
-/

namespace A183440.P7630828994161218955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183440.P7630828994161218955

/-! ## A183440.P6322021154714549144

`A183442(eq[8, A131818(n+1)])`
-/

namespace A183440.P6322021154714549144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183440.P6322021154714549144

/-! ## A183440.P8688561930839798407

`A183442(A055999(n+4))`
-/

namespace A183440.P8688561930839798407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A055999 (n + 4)).toNat

end

end A183440.P8688561930839798407

/-! ## A183440.P10117616142330263873

`A183442(eq[4, A219347(n)])`
-/

namespace A183440.P10117616142330263873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183440.P10117616142330263873

/-!
# A183441: Number of nX8 binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183441, there is no canonical definition to state claims against.
-/

/-! ## A183441.P13770175737472201802

`A183442(A374009(n+1))`
-/

namespace A183441.P13770175737472201802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (A374009 (n + 1)).toNat

end

end A183441.P13770175737472201802

/-! ## A183441.P16354771358045219216

`A183442(eq[13, A066657(n)])`
-/

namespace A183441.P16354771358045219216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183441.P16354771358045219216

/-! ## A183441.P11850986928935453248

`A183442(eq[9, A131818(n+1)])`
-/

namespace A183441.P11850986928935453248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183441.P11850986928935453248

/-! ## A183441.P14112107007744938369

`A183442(eq[5, A219347(n)])`
-/

namespace A183441.P14112107007744938369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183441.P14112107007744938369

/-! ## A183441.P15019829520545517502

`A183442(eq[7, A193592(n)])`
-/

namespace A183441.P15019829520545517502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183441.P15019829520545517502

/-!
# A183442: T(n,k)=Number of nXk binary arrays with every 1 having exactly one king-move neighbor equal to 1.

The programs for A183442, there is no canonical definition to state claims against.
-/

/-! ## A183442.P15670516043707077972

`A296019(n+1)-A184159(A099594(n))`
-/

namespace A183442.P15670516043707077972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (n + 1) - A184159 (A099594 n).toNat

end

end A183442.P15670516043707077972

/-! ## A183442.P967374711249316000

`A296019(n+1)-A037800(A189111(n+1))`
-/

namespace A183442.P967374711249316000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (n + 1) - A037800 (A189111 (n + 1)).toNat

end

end A183442.P967374711249316000

/-! ## A183442.P17723676553072875519

`A296019(n+1)-A326291(A036561(n))`
-/

namespace A183442.P17723676553072875519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (n + 1) - A326291 (A036561 n).toNat

end

end A183442.P17723676553072875519

/-! ## A183442.P6919079037820410150

`A296019(n+1)-A324417(A293484(n+1))`
-/

namespace A183442.P6919079037820410150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (n + 1) - A324417 (A293484 (n + 1)).toNat

end

end A183442.P6919079037820410150

/-! ## A183442.P7933438630585474644

`A296019(n+1)-A185644(A219274(n))`
-/

namespace A183442.P7933438630585474644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (n + 1) - A185644 (A219274 n).toNat

end

end A183442.P7933438630585474644

/-!
# A183443: Number of n X n binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183443, there is no canonical definition to state claims against.
-/

/-! ## A183443.P7132338094566052685

`A183450(∑[4*n]+1)`
-/

namespace A183443.P7132338094566052685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183443.P7132338094566052685

/-! ## A183443.P7908264891912365256

`record[A003982(n)*A183450(n+1)]`
-/

namespace A183443.P7908264891912365256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183443.P7908264891912365256

/-! ## A183443.P11385184598936753984

`record[gcd(A114327(n), A183450(n+1))]`
-/

namespace A183443.P11385184598936753984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183450 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183443.P11385184598936753984

/-! ## A183443.P14657468913664629471

`record[root(A183450(n+1), A341458(n+1))]`
-/

namespace A183443.P14657468913664629471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183450 (n + 1) : ℝ) ^ (1 / (A341458 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183443.P14657468913664629471

/-! ## A183443.P4773610911356414306

`gcd(A000038(n), A183450(A001844(n)))`
-/

namespace A183443.P4773610911356414306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183450 (A001844 n).toNat)

end

end A183443.P4773610911356414306

/-!
# A183444: Number of n X 3 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183444, there is no canonical definition to state claims against.
-/

/-! ## A183444.P8486920041128079714

`A183450(∑[n+2]+4)`
-/

namespace A183444.P8486920041128079714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183444.P8486920041128079714

/-! ## A183444.P16740246065772232217

`A183450(A167614(n+1))%A041768(n)`
-/

namespace A183444.P16740246065772232217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183450 (A167614 (n + 1)).toNat) (A041768 n)

end

end A183444.P16740246065772232217

/-! ## A183444.P12314543714910200328

`or(A000007(n), A183450(A167614(n+1)))`
-/

namespace A183444.P12314543714910200328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183450 (A167614 (n + 1)).toNat)

end

end A183444.P12314543714910200328

/-! ## A183444.P4445023718686898105

`record[A183450(A347633(n+1))]`
-/

namespace A183444.P4445023718686898105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183444.P4445023718686898105

/-! ## A183444.P13175660192626315064

`A296128(∑[n+2]+4)`
-/

namespace A183444.P13175660192626315064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183444.P13175660192626315064

/-!
# A183445: Number of n X 4 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183445, there is no canonical definition to state claims against.
-/

/-! ## A183445.P8585596793121487121

`A183450(A374004(n+1))`
-/

namespace A183445.P8585596793121487121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A374004 (n + 1)).toNat

end

end A183445.P8585596793121487121

/-! ## A183445.P34737598349846486

`A183450(A141214(n)+7)`
-/

namespace A183445.P34737598349846486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A141214 n + 7).toNat

end

end A183445.P34737598349846486

/-! ## A183445.P2144341739971547656

`A183450(A052905(n)+9)`
-/

namespace A183445.P2144341739971547656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A052905 n + 9).toNat

end

end A183445.P2144341739971547656

/-! ## A183445.P8754468060274487843

`A183450(A167614(n+2)+1)`
-/

namespace A183445.P8754468060274487843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167614 (n + 2) + 1).toNat

end

end A183445.P8754468060274487843

/-! ## A183445.P2231287207039693763

`A183450(A167499(n+2)-1)`
-/

namespace A183445.P2231287207039693763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167499 (n + 2) - 1).toNat

end

end A183445.P2231287207039693763

/-!
# A183446: Number of nX5 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183446, there is no canonical definition to state claims against.
-/

/-! ## A183446.P5828991783312303105

`A183450(A374005(n+1))`
-/

namespace A183446.P5828991783312303105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A374005 (n + 1)).toNat

end

end A183446.P5828991783312303105

/-! ## A183446.P9282931488852128586

`A183450(A167499(n+3))`
-/

namespace A183446.P9282931488852128586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167499 (n + 3)).toNat

end

end A183446.P9282931488852128586

/-! ## A183446.P2906193045653358089

`A183450(A034856(n+3)+7)`
-/

namespace A183446.P2906193045653358089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A034856 (n + 3) + 7).toNat

end

end A183446.P2906193045653358089

/-! ## A183446.P6251967836739401855

`A183450(A046691(n+2)+9)`
-/

namespace A183446.P6251967836739401855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A046691 (n + 2) + 9).toNat

end

end A183446.P6251967836739401855

/-! ## A183446.P6756940567431284061

`A183450(A000124(n+5)-(n+1))`
-/

namespace A183446.P6756940567431284061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A183446.P6756940567431284061

/-!
# A183447: Number of nX6 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183447, there is no canonical definition to state claims against.
-/

/-! ## A183447.P17552849832138181778

`A183450(A374007(n+1))`
-/

namespace A183447.P17552849832138181778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A374007 (n + 1)).toNat

end

end A183447.P17552849832138181778

/-! ## A183447.P14108930545484757158

`A183450(A167499(n+4)+1)`
-/

namespace A183447.P14108930545484757158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167499 (n + 4) + 1).toNat

end

end A183447.P14108930545484757158

/-! ## A183447.P9372440407159978029

`A183450(A000124(n+5)+5)`
-/

namespace A183447.P9372440407159978029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000124 (n + 5) + 5).toNat

end

end A183447.P9372440407159978029

/-! ## A183447.P14132309525036373454

`A183450(A000217(n+5)+6)`
-/

namespace A183447.P14132309525036373454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000217 (n + 5) + 6).toNat

end

end A183447.P14132309525036373454

/-! ## A183447.P13229670804004415366

`A183450(A020710(A000124(n+5)))`
-/

namespace A183447.P13229670804004415366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A020710 (A000124 (n + 5)).toNat).toNat

end

end A183447.P13229670804004415366

/-!
# A183448: Number of nX7 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183448, there is no canonical definition to state claims against.
-/

/-! ## A183448.P9568684489854524447

`A183450(A374008(n+1))`
-/

namespace A183448.P9568684489854524447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A374008 (n + 1)).toNat

end

end A183448.P9568684489854524447

/-! ## A183448.P15734623997868077888

`A183450(A167499(n+5)+2)`
-/

namespace A183448.P15734623997868077888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167499 (n + 5) + 2).toNat

end

end A183448.P15734623997868077888

/-! ## A183448.P1223376043050431544

`A183450(A000096(n+5)+8)`
-/

namespace A183448.P1223376043050431544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000096 (n + 5) + 8).toNat

end

end A183448.P1223376043050431544

/-! ## A183448.P4943035121702424537

`A183450(A000217(n+6)+7)`
-/

namespace A183448.P4943035121702424537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000217 (n + 6) + 7).toNat

end

end A183448.P4943035121702424537

/-! ## A183448.P2033749834874240068

`A183450(A055999(n+4))`
-/

namespace A183448.P2033749834874240068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A055999 (n + 4)).toNat

end

end A183448.P2033749834874240068

/-!
# A183449: Number of nX8 binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183449, there is no canonical definition to state claims against.
-/

/-! ## A183449.P11244430172272546419

`A183450(A374009(n+1))`
-/

namespace A183449.P11244430172272546419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A374009 (n + 1)).toNat

end

end A183449.P11244430172272546419

/-! ## A183449.P13365262295333369807

`A183450(A167614(n+6)+5)`
-/

namespace A183449.P13365262295333369807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A167614 (n + 6) + 5).toNat

end

end A183449.P13365262295333369807

/-! ## A183449.P14299333006075683334

`A183450(A000217(n+7)+8)`
-/

namespace A183449.P14299333006075683334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (A000217 (n + 7) + 8).toNat

end

end A183449.P14299333006075683334

/-! ## A183449.P5257801590640132451

`A183450(eq[8, A002260(n+1)]+1)`
-/

namespace A183449.P5257801590640132451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183449.P5257801590640132451

/-! ## A183449.P9063132593385689569

`A183450(Δ[A264443(n+2)+A046691(n+2)])`
-/

namespace A183449.P9063132593385689569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2) + A046691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (f1 (n + 1) - f1 n).toNat

end

end A183449.P9063132593385689569

/-!
# A183450: T(n,k)=Number of nXk binary arrays with every 1 having exactly two king-move neighbors equal to 1.

The programs for A183450, there is no canonical definition to state claims against.
-/

/-! ## A183450.P11522744047099383706

`A296128(n+1)-A092575(A056940(n))`
-/

namespace A183450.P11522744047099383706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (n + 1) - A092575 (A056940 n).toNat

end

end A183450.P11522744047099383706

/-! ## A183450.P308576087357806303

`A222228(A296128(n+1)^Δ[A055646(n)])`
-/

namespace A183450.P308576087357806303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (SequenceMachineLib.roundAway ((A296128 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A183450.P308576087357806303

/-! ## A183450.P452549627625365040

`A296128(n+1)-A000038(A274068(n+1))`
-/

namespace A183450.P452549627625365040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (n + 1) - A000038 (A274068 (n + 1)).toNat

end

end A183450.P452549627625365040

/-! ## A183450.P2020503898329884315

`A222228(A296128(n+1)%A232792(n+1))`
-/

namespace A183450.P2020503898329884315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (Int.tmod (A296128 (n + 1)) (A232792 (n + 1))).toNat

end

end A183450.P2020503898329884315

/-! ## A183450.P15924231134500071539

`A222228(A296128(n+1)^A262079(2*(n+1)))`
-/

namespace A183450.P15924231134500071539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (SequenceMachineLib.roundAway ((A296128 (n + 1) : ℚ) ^ (A262079 (2 * (n + 1)) : ℤ))).toNat

end

end A183450.P15924231134500071539

/-!
# A183451: Number of n X n binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183451, there is no canonical definition to state claims against.
-/

/-! ## A183451.P5890338692176230082

`A183456(∑[4*n]+1)`
-/

namespace A183451.P5890338692176230082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183451.P5890338692176230082

/-! ## A183451.P4912408002626399239

`record[A183456(A370980(n))]`
-/

namespace A183451.P4912408002626399239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A370980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183451.P4912408002626399239

/-! ## A183451.P1538729805986537430

`record[A183456(Δ[A235355(n)])]`
-/

namespace A183451.P1538729805986537430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183451.P1538729805986537430

/-! ## A183451.P8061484849615903393

`record[A183456(A330613(n+1))]`
-/

namespace A183451.P8061484849615903393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183451.P8061484849615903393

/-! ## A183451.P6252479077869305213

`record[A003982(n)*A183456(n+1)]`
-/

namespace A183451.P6252479077869305213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183451.P6252479077869305213

/-!
# A183452: Number of n X 5 binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183452, there is no canonical definition to state claims against.
-/

/-! ## A183452.P16179698889861529680

`A183456(∑[n+4]+11)`
-/

namespace A183452.P16179698889861529680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183452.P16179698889861529680

/-! ## A183452.P11312525537110432616

`or(char[2], A183456(A056000(n)+15))`
-/

namespace A183452.P11312525537110432616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183456 (A056000 n + 15).toNat)

end

end A183452.P11312525537110432616

/-! ## A183452.P15766292616520799333

`A183456(A027379(n+2)+8)+char[25]`
-/

namespace A183452.P15766292616520799333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A027379 (n + 2) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183452.P15766292616520799333

/-! ## A183452.P15367343750629429321

`A183456(A167499(n+3))+A025469(n)`
-/

namespace A183452.P15367343750629429321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A167499 (n + 3)).toNat + A025469 n

end

end A183452.P15367343750629429321

/-! ## A183452.P8139006567033397662

`A326292(n)+A183456(A167499(n+3))`
-/

namespace A183452.P8139006567033397662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A183456 (A167499 (n + 3)).toNat

end

end A183452.P8139006567033397662

/-!
# A183453: Number of nX6 binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183453, there is no canonical definition to state claims against.
-/

/-! ## A183453.P4051518794291411786

`A183456(∑[n+5]+16)`
-/

namespace A183453.P4051518794291411786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A183453.P4051518794291411786

/-! ## A183453.P1927790515807075601

`or(1, A183456(A000096(n+4)+7))`
-/

namespace A183453.P1927790515807075601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183456 (A000096 (n + 4) + 7).toNat)

end

end A183453.P1927790515807075601

/-! ## A183453.P4044927533057164677

`or(1, A183456(A000217(n+5)+6))`
-/

namespace A183453.P4044927533057164677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183456 (A000217 (n + 5) + 6).toNat)

end

end A183453.P4044927533057164677

/-! ## A183453.P17090483625690773232

`A183456(A000124(n+5)+5)%A266027(n+1)`
-/

namespace A183453.P17090483625690773232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183456 (A000124 (n + 5) + 5).toNat) (A266027 (n + 1))

end

end A183453.P17090483625690773232

/-! ## A183453.P6867311342184136316

`A183456(A000217(n+5)+6)%A000108(n+3)`
-/

namespace A183453.P6867311342184136316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183456 (A000217 (n + 5) + 6).toNat) (A000108 (n + 3))

end

end A183453.P6867311342184136316

/-!
# A183454: Number of nX7 binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183454, there is no canonical definition to state claims against.
-/

/-! ## A183454.P1681307681590863373

`A183456(A000124(n+6)+6)`
-/

namespace A183454.P1681307681590863373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A000124 (n + 6) + 6).toNat

end

end A183454.P1681307681590863373

/-! ## A183454.P13644348379985719958

`A183456(A000217(n+6)+7)`
-/

namespace A183454.P13644348379985719958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A000217 (n + 6) + 7).toNat

end

end A183454.P13644348379985719958

/-! ## A183454.P14377917809683034551

`A183456(A027379(n+4)+10)`
-/

namespace A183454.P14377917809683034551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A027379 (n + 4) + 10).toNat

end

end A183454.P14377917809683034551

/-! ## A183454.P15915615940291548464

`A183456(A046691(n+4)+11)`
-/

namespace A183454.P15915615940291548464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A046691 (n + 4) + 11).toNat

end

end A183454.P15915615940291548464

/-! ## A183454.P9986597728693235486

`A183456(eq[8, A131818(n+1)])`
-/

namespace A183454.P9986597728693235486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183454.P9986597728693235486

/-!
# A183455: Number of n X 8 binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183455, there is no canonical definition to state claims against.
-/

/-! ## A183455.P12068832570761050271

`A183456(A166136(n+6)+2)`
-/

namespace A183455.P12068832570761050271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A166136 (n + 6) + 2).toNat

end

end A183455.P12068832570761050271

/-! ## A183455.P7417161478138972552

`A183456(A167499(n+6)+3)`
-/

namespace A183455.P7417161478138972552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A167499 (n + 6) + 3).toNat

end

end A183455.P7417161478138972552

/-! ## A183455.P11446723708163290960

`A183456(A000124(n+7)+7)`
-/

namespace A183455.P11446723708163290960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A000124 (n + 7) + 7).toNat

end

end A183455.P11446723708163290960

/-! ## A183455.P16048353457911333971

`A183456(A000217(n+7)+8)`
-/

namespace A183455.P16048353457911333971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A000217 (n + 7) + 8).toNat

end

end A183455.P16048353457911333971

/-! ## A183455.P3233687546630728270

`A183456(A000096(n+7)-(n-1))`
-/

namespace A183455.P3233687546630728270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A183455.P3233687546630728270

/-!
# A183456: T(n,k) = Number of n X k binary arrays with every 1 having exactly three king-move neighbors equal to 1.

The programs for A183456, there is no canonical definition to state claims against.
-/

/-! ## A183456.P12390660120918040346

`A296313(n+1)-A025469(A189610(n+1))`
-/

namespace A183456.P12390660120918040346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) - A025469 (A189610 (n + 1)).toNat

end

end A183456.P12390660120918040346

/-! ## A183456.P9082354333234426515

`A296313(n+1)-A085982(A219217(n+1))`
-/

namespace A183456.P9082354333234426515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) - A085982 (A219217 (n + 1)).toNat

end

end A183456.P9082354333234426515

/-! ## A183456.P15766548320569618446

`A296313(n+1)-A316869(8^A326292(n))`
-/

namespace A183456.P15766548320569618446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) - A316869 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A326292 n : ℤ))).toNat

end

end A183456.P15766548320569618446

/-! ## A183456.P12668152225214531543

`A296313(n+1)-A326292(n*A326292(n))`
-/

namespace A183456.P12668152225214531543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) - A326292 ((n : ℤ) * A326292 n).toNat

end

end A183456.P12668152225214531543

/-! ## A183456.P5677760385025666003

`A296313(n+1)-A121373(A263094(2*(n+1)))`
-/

namespace A183456.P5677760385025666003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) - A121373 (A263094 (2 * (n + 1))).toNat

end

end A183456.P5677760385025666003

/-!
# A183457: Number of (n+4)X(n+4) binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183457, there is no canonical definition to state claims against.
-/

/-! ## A183457.P14600104105955501391

`A183465(∑[4*n]+1)`
-/

namespace A183457.P14600104105955501391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183457.P14600104105955501391

/-! ## A183457.P11723064518205230863

`record[A183465(∑[A266981(n)])]`
-/

namespace A183457.P11723064518205230863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183457.P11723064518205230863

/-! ## A183457.P18177151644547960201

`A183465(A001844(n))+char[9]`
-/

namespace A183457.P18177151644547960201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183457.P18177151644547960201

/-! ## A183457.P1536158148861284677

`record[A003982(n)*A183465(n+1)]`
-/

namespace A183457.P1536158148861284677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183457.P1536158148861284677

/-! ## A183457.P275358119110480504

`record[A183465(n+1)*A214505(n)]`
-/

namespace A183457.P275358119110480504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183457.P275358119110480504

/-!
# A183458: Number of (n+4)X5 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183458, there is no canonical definition to state claims against.
-/

/-! ## A183458.P14764967818280707447

`A183465(∑[n]+1)`
-/

namespace A183458.P14764967818280707447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183458.P14764967818280707447

/-! ## A183458.P59973745470624885

`or(char[1], A183465(A000124(n)))`
-/

namespace A183458.P59973745470624885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183465 (A000124 n).toNat)

end

end A183458.P59973745470624885

/-! ## A183458.P6994388440786295542

`A183465(A000124(n))%A074994(n)`
-/

namespace A183458.P6994388440786295542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183465 (A000124 n).toNat) (A074994 n)

end

end A183458.P6994388440786295542

/-! ## A183458.P12460977086684846373

`A007318(∑[n])*A183465(A000124(n))`
-/

namespace A183458.P12460977086684846373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A183465 (A000124 n).toNat

end

end A183458.P12460977086684846373

/-! ## A183458.P7782634081143548921

`A183465(A000124(n))+A130713(n+3)`
-/

namespace A183458.P7782634081143548921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A000124 n).toNat + A130713 (n + 3)

end

end A183458.P7782634081143548921

/-!
# A183459: Number of (n+4)X6 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183459, there is no canonical definition to state claims against.
-/

/-! ## A183459.P15547754790614378572

`A183465(∑[n+1]+2)`
-/

namespace A183459.P15547754790614378572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183459.P15547754790614378572

/-! ## A183459.P7072947904231885988

`or(1, A183465(A133263(n+1)))`
-/

namespace A183459.P7072947904231885988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183465 (A133263 (n + 1)).toNat)

end

end A183459.P7072947904231885988

/-! ## A183459.P330117906071279552

`record[A183465(A286157(n+1)+2)]`
-/

namespace A183459.P330117906071279552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183459.P330117906071279552

/-! ## A183459.P10809161518065893397

`record[A183465(n+1)/A119825(n)]`
-/

namespace A183459.P10809161518065893397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183465 (n + 1) : ℚ) / (A119825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183459.P10809161518065893397

/-! ## A183459.P754189837761394505

`record[gcd(A183465(n+2), A360099(n))]`
-/

namespace A183459.P754189837761394505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183465 (n + 2)) (A360099 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183459.P754189837761394505

/-!
# A183460: Number of (n+4)X7 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183460, there is no canonical definition to state claims against.
-/

/-! ## A183460.P2739484924371778718

`A183465(∑[n+2]+4)`
-/

namespace A183460.P2739484924371778718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183460.P2739484924371778718

/-! ## A183460.P1620724836760820067

`A183465(A167614(n+1))+char[17]`
-/

namespace A183460.P1620724836760820067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183460.P1620724836760820067

/-! ## A183460.P15723340408555489347

`gcd(A180472(n), A183465(A167614(n+1)))`
-/

namespace A183460.P15723340408555489347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180472 n) (A183465 (A167614 (n + 1)).toNat)

end

end A183460.P15723340408555489347

/-! ## A183460.P7604498432838753847

`lcm(A033999(n), A183465(A167614(n+1)))`
-/

namespace A183460.P7604498432838753847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183465 (A167614 (n + 1)).toNat)

end

end A183460.P7604498432838753847

/-! ## A183460.P12121163301579552076

`A305821(n+1)+A183465(A167614(n+1))`
-/

namespace A183460.P12121163301579552076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (n + 1) + A183465 (A167614 (n + 1)).toNat

end

end A183460.P12121163301579552076

/-!
# A183461: Number of (n+4)X8 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183461, there is no canonical definition to state claims against.
-/

/-! ## A183461.P13603076590158454875

`A183465(∑[n+3]+7)`
-/

namespace A183461.P13603076590158454875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183461.P13603076590158454875

/-! ## A183461.P9777489838366825583

`or(1, A183465(A046691(n+1)+8))`
-/

namespace A183461.P9777489838366825583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183465 (A046691 (n + 1) + 8).toNat)

end

end A183461.P9777489838366825583

/-! ## A183461.P350987929462332241

`A007318(C(2, n))*A183465(A046691(n+1)+8)`
-/

namespace A183461.P350987929462332241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183465 (A046691 (n + 1) + 8).toNat

end

end A183461.P350987929462332241

/-! ## A183461.P7192387366111345972

`A183465(A046691(n+1)+8)+A000045(n)%-1`
-/

namespace A183461.P7192387366111345972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A046691 (n + 1) + 8).toNat + Int.tmod (A000045 n) (-1)

end

end A183461.P7192387366111345972

/-! ## A183461.P5437780439599876689

`(A000041(n)%2)!*A183465(A046691(n+1)+8)`
-/

namespace A183461.P5437780439599876689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A183465 (A046691 (n + 1) + 8).toNat

end

end A183461.P5437780439599876689

/-!
# A183462: Number of (n+4) X 9 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2 X 2 blocks of 1's.

The programs for A183462, there is no canonical definition to state claims against.
-/

/-! ## A183462.P16748906503433903962

`A183465(∑[n+4]+11)`
-/

namespace A183462.P16748906503433903962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183462.P16748906503433903962

/-! ## A183462.P5980668429687027315

`A183465(A027379(n+2)+8)+char[15]`
-/

namespace A183462.P5980668429687027315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A027379 (n + 2) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183462.P5980668429687027315

/-! ## A183462.P12316405226458052813

`or(char[1], A183465(A167614(n+3)+2))`
-/

namespace A183462.P12316405226458052813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183465 (A167614 (n + 3) + 2).toNat)

end

end A183462.P12316405226458052813

/-! ## A183462.P14358913627822797575

`A007318(C(2, n))*A183465(A027379(n+2)+8)`
-/

namespace A183462.P14358913627822797575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183465 (A027379 (n + 2) + 8).toNat

end

end A183462.P14358913627822797575

/-! ## A183462.P5362078194527051681

`A183465(A027379(n+2)+8)/A007318(C(3, n))`
-/

namespace A183462.P5362078194527051681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183465 (A027379 (n + 2) + 8).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A183462.P5362078194527051681

/-!
# A183463: Number of (n+4)X10 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183463, there is no canonical definition to state claims against.
-/

/-! ## A183463.P7591868237687851256

`A183465(A374007(n+1))`
-/

namespace A183463.P7591868237687851256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A374007 (n + 1)).toNat

end

end A183463.P7591868237687851256

/-! ## A183463.P4653242949579516633

`A183465(A056115(n)+21)`
-/

namespace A183463.P4653242949579516633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A056115 n + 21).toNat

end

end A183463.P4653242949579516633

/-! ## A183463.P17394694743873696769

`A183465(A167499(n+4)+1)`
-/

namespace A183463.P17394694743873696769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167499 (n + 4) + 1).toNat

end

end A183463.P17394694743873696769

/-! ## A183463.P6989131720984951441

`A183465(A167614(n+4)+3)`
-/

namespace A183463.P6989131720984951441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167614 (n + 4) + 3).toNat

end

end A183463.P6989131720984951441

/-! ## A183463.P13203094666141751616

`A183465(A000096(n+4)+7)`
-/

namespace A183463.P13203094666141751616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A000096 (n + 4) + 7).toNat

end

end A183463.P13203094666141751616

/-!
# A183464: Number of (n+4)X11 binary arrays with every 1 having exactly three king-move neighbors equal to 1 but with no 2X2 blocks of 1s.

The programs for A183464, there is no canonical definition to state claims against.
-/

/-! ## A183464.P16956097921029817131

`A183465(A374008(n+1))`
-/

namespace A183464.P16956097921029817131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A374008 (n + 1)).toNat

end

end A183464.P16956097921029817131

/-! ## A183464.P14463169468114408401

`A183465(A167487(n+5))`
-/

namespace A183464.P14463169468114408401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167487 (n + 5)).toNat

end

end A183464.P14463169468114408401

/-! ## A183464.P14750111777335868691

`A183465(eq[11, A066657(n)])`
-/

namespace A183464.P14750111777335868691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183464.P14750111777335868691

/-! ## A183464.P8735208286088068411

`A183465(A167499(n+5)+2)`
-/

namespace A183464.P8735208286088068411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167499 (n + 5) + 2).toNat

end

end A183464.P8735208286088068411

/-! ## A183464.P12993706458041382094

`A183465(A167614(n+5)+4)`
-/

namespace A183464.P12993706458041382094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183465 (A167614 (n + 5) + 4).toNat

end

end A183464.P12993706458041382094

/-!
# A183466: Number of n X n binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183466, there is no canonical definition to state claims against.
-/

/-! ## A183466.P2198435343157574539

`A183474(∑[4*n]+1)`
-/

namespace A183466.P2198435343157574539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183466.P2198435343157574539

/-! ## A183466.P4629507606486061543

`record[A003982(n)*A183474(n+1)]`
-/

namespace A183466.P4629507606486061543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183466.P4629507606486061543

/-! ## A183466.P4937887741658207352

`record[gcd(A114327(n), A183474(n+1))]`
-/

namespace A183466.P4937887741658207352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183474 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183466.P4937887741658207352

/-! ## A183466.P3291102725183348299

`A183474(A001844(n))*A220122(n)`
-/

namespace A183466.P3291102725183348299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A001844 n).toNat * A220122 n

end

end A183466.P3291102725183348299

/-! ## A183466.P13116601701882338204

`or(A000007(n), A183474(A001844(n)))`
-/

namespace A183466.P13116601701882338204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183474 (A001844 n).toNat)

end

end A183466.P13116601701882338204

/-!
# A183467: Number of n X 2 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183467, the canonical program `A183467.P4445125462386225376` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183467 has offset 1).

The definition of A183467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183467.P4445125462386225376

`2*a(n-1)+4*a(n-3)-4*a(n-4)-4*a(n-6)` with `a(0)=2, a(1)=6, a(2)=12, a(3)=28, a(4)=68, a(5)=156`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A183467

/-- `2*a(n-1)+4*a(n-3)-4*a(n-4)-4*a(n-6)` -/
def P4445125462386225376.Spec : Prop :=
  ∀ n, P4445125462386225376.a n = A183467 (n + 1)

theorem P4445125462386225376.correct : P4445125462386225376.Spec := by
  intro n
  simp only [A183467, Nat.add_sub_cancel]

end A183467

/-! ## A183467.P635512808648073700

`A183474(∑[n+1]+2)`
-/

namespace A183467.P635512808648073700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183467.P635512808648073700

namespace A183467

/-- `A183474(∑[n+1]+2)` -/
def P635512808648073700.Spec : Prop :=
  ∀ n, P635512808648073700.a n = A183467 (n + 1)

end A183467

/-! ## A183467.P4324760118451371097

`record[A010054(n)*A183474(n+2)]`
-/

namespace A183467.P4324760118451371097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183467.P4324760118451371097

namespace A183467

/-- `record[A010054(n)*A183474(n+2)]` -/
def P4324760118451371097.Spec : Prop :=
  ∀ n, P4324760118451371097.a n = A183467 (n + 1)

end A183467

/-! ## A183467.P9836517157855410846

`record[gcd(A002262(n), A183474(n+2))]`
-/

namespace A183467.P9836517157855410846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183474 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183467.P9836517157855410846

namespace A183467

/-- `record[gcd(A002262(n), A183474(n+2))]` -/
def P9836517157855410846.Spec : Prop :=
  ∀ n, (P9836517157855410846.a n : ℤ) = A183467 (n + 1)

end A183467

/-! ## A183467.P14068435759933151149

`record[root(A183474(n+2), A172431(n+1))]`
-/

namespace A183467.P14068435759933151149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183474 (n + 2) : ℝ) ^ (1 / (A172431 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183467.P14068435759933151149

namespace A183467

/-- `record[root(A183474(n+2), A172431(n+1))]` -/
def P14068435759933151149.Spec : Prop :=
  ∀ n, P14068435759933151149.a n = (A183467 (n + 1) : ℝ)

end A183467

/-!
# A183468: Number of nX3 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183468, there is no canonical definition to state claims against.
-/

/-! ## A183468.P2480302878975246796

`A183474(∑[n+2]+4)`
-/

namespace A183468.P2480302878975246796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183468.P2480302878975246796

/-! ## A183468.P3057006337951895541

`lcm((-1)^n, A183474(A167614(n+1)))`
-/

namespace A183468.P3057006337951895541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A183474 (A167614 (n + 1)).toNat)

end

end A183468.P3057006337951895541

/-! ## A183468.P6080261060685540869

`A152847(n)*A183474(A167614(n+1))`
-/

namespace A183468.P6080261060685540869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A183474 (A167614 (n + 1)).toNat

end

end A183468.P6080261060685540869

/-! ## A183468.P14240846599568623305

`A183474(A167614(n+1))%A017333(n)`
-/

namespace A183468.P14240846599568623305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183474 (A167614 (n + 1)).toNat) (A017333 n)

end

end A183468.P14240846599568623305

/-! ## A183468.P8058846178736273240

`or(A000007(n), A183474(A167614(n+1)))`
-/

namespace A183468.P8058846178736273240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183474 (A167614 (n + 1)).toNat)

end

end A183468.P8058846178736273240

/-!
# A183469: Number of nX4 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183469, there is no canonical definition to state claims against.
-/

/-! ## A183469.P18212764374878317060

`A183474(A141214(n)+7)`
-/

namespace A183469.P18212764374878317060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A141214 n + 7).toNat

end

end A183469.P18212764374878317060

/-! ## A183469.P13757379364108170436

`A183474(A167614(n+2)+1)`
-/

namespace A183469.P13757379364108170436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A167614 (n + 2) + 1).toNat

end

end A183469.P13757379364108170436

/-! ## A183469.P17642031982046156128

`A183474(A166136(n+2)-2)`
-/

namespace A183469.P17642031982046156128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A166136 (n + 2) - 2).toNat

end

end A183469.P17642031982046156128

/-! ## A183469.P14458954095241115991

`A183474(eq[5, A131818(n+1)])`
-/

namespace A183469.P14458954095241115991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183469.P14458954095241115991

/-! ## A183469.P17456637301896142054

`A183474(A166136(n+1)+1+n)`
-/

namespace A183469.P17456637301896142054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183469.P17456637301896142054

/-!
# A183470: Number of nX5 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183470, there is no canonical definition to state claims against.
-/

/-! ## A183470.P18151472408261271474

`A183474(A167499(n+3))`
-/

namespace A183470.P18151472408261271474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A167499 (n + 3)).toNat

end

end A183470.P18151472408261271474

/-! ## A183470.P7522372828167263844

`A183474(A000124(n+4)+4)`
-/

namespace A183470.P7522372828167263844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A000124 (n + 4) + 4).toNat

end

end A183470.P7522372828167263844

/-! ## A183470.P3816817141712423551

`A183474(A000096(n+3)+6)`
-/

namespace A183470.P3816817141712423551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A000096 (n + 3) + 6).toNat

end

end A183470.P3816817141712423551

/-! ## A183470.P12338438171850506629

`A183474(A027379(n+2)+8)`
-/

namespace A183470.P12338438171850506629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A027379 (n + 2) + 8).toNat

end

end A183470.P12338438171850506629

/-! ## A183470.P5009723821919277645

`A183474(A052905(n+1)+10)`
-/

namespace A183470.P5009723821919277645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A052905 (n + 1) + 10).toNat

end

end A183470.P5009723821919277645

/-!
# A183471: Number of nX6 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183471, there is no canonical definition to state claims against.
-/

/-! ## A183471.P2169145703539723424

`A183474(eq[7, A131818(n+1)])`
-/

namespace A183471.P2169145703539723424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183471.P2169145703539723424

/-! ## A183471.P11410740097939852078

`A183474(A374007(n+1))`
-/

namespace A183471.P11410740097939852078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A374007 (n + 1)).toNat

end

end A183471.P11410740097939852078

/-! ## A183471.P5497428788642840771

`A183474(A052905(n+3))`
-/

namespace A183471.P5497428788642840771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A052905 (n + 3)).toNat

end

end A183471.P5497428788642840771

/-! ## A183471.P2457468072514127136

`A183474(A056119(n)+16)`
-/

namespace A183471.P2457468072514127136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A056119 n + 16).toNat

end

end A183471.P2457468072514127136

/-! ## A183471.P15024502111935336508

`A183474(eq[3, A219347(n)])`
-/

namespace A183471.P15024502111935336508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183471.P15024502111935336508

/-!
# A183472: Number of nX7 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183472, there is no canonical definition to state claims against.
-/

/-! ## A183472.P13601035781246716436

`A183474(eq[11, A066657(n)])`
-/

namespace A183472.P13601035781246716436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183472.P13601035781246716436

/-! ## A183472.P11343202310565060932

`A183474(eq[8, A131818(n+1)])`
-/

namespace A183472.P11343202310565060932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183472.P11343202310565060932

/-! ## A183472.P6202976470577968369

`A183474(A374008(n+1))`
-/

namespace A183472.P6202976470577968369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A374008 (n + 1)).toNat

end

end A183472.P6202976470577968369

/-! ## A183472.P14428744613788891001

`A183474(A055999(n+4))`
-/

namespace A183472.P14428744613788891001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A055999 (n + 4)).toNat

end

end A183472.P14428744613788891001

/-! ## A183472.P17099701599984293828

`A183474(eq[4, A219347(n)])`
-/

namespace A183472.P17099701599984293828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183472.P17099701599984293828

/-!
# A183473: Number of nX8 binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183473, there is no canonical definition to state claims against.
-/

/-! ## A183473.P6200439476560562888

`A183474(eq[13, A066657(n)])`
-/

namespace A183473.P6200439476560562888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183473.P6200439476560562888

/-! ## A183473.P4370010883396507938

`A183474(eq[9, A131818(n+1)])`
-/

namespace A183473.P4370010883396507938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183473.P4370010883396507938

/-! ## A183473.P16013765464566678465

`A183474(A374009(n+1))`
-/

namespace A183473.P16013765464566678465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A374009 (n + 1)).toNat

end

end A183473.P16013765464566678465

/-! ## A183473.P765804961305077176

`A183474(eq[5, A219347(n)])`
-/

namespace A183473.P765804961305077176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183473.P765804961305077176

/-! ## A183473.P2546896672356712270

`A183474(eq[7, A193592(n)])`
-/

namespace A183473.P2546896672356712270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183473.P2546896672356712270

/-!
# A183474: T(n,k)=Number of nXk binary arrays with every element equal to either the sum mod 2 of its vertical neighbors or the sum mod 2 of its horizontal neighbors.

The programs for A183474, there is no canonical definition to state claims against.
-/

/-! ## A183474.P18207571765761550826

`A296320(n+1)+A153246(A054125(n)!)`
-/

namespace A183474.P18207571765761550826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (n + 1) + A153246 (Nat.factorial (A054125 n).toNat)

end

end A183474.P18207571765761550826

/-! ## A183474.P9626333039788455484

`A296320(n+1)+A003849(A185497(n+1))`
-/

namespace A183474.P9626333039788455484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (n + 1) + A003849 (A185497 (n + 1)).toNat

end

end A183474.P9626333039788455484

/-! ## A183474.P12756746803061849758

`A295097(n+1)+A185894(A298834(n+1))`
-/

namespace A183474.P12756746803061849758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A185894 (A298834 (n + 1)).toNat

end

end A183474.P12756746803061849758

/-! ## A183474.P5037767020486748609

`A185894(A298834(n+1))+A065640(A295551(n+1))`
-/

namespace A183474.P5037767020486748609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185894 (A298834 (n + 1)).toNat + A065640 (A295551 (n + 1)).toNat

end

end A183474.P5037767020486748609

/-! ## A183474.P1071995883210115661

`A331162(A296320(n+1)%A053926(n+1))`
-/

namespace A183474.P1071995883210115661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (Int.tmod (A296320 (n + 1)) (A053926 (n + 1))).toNat

end

end A183474.P1071995883210115661

/-!
# A183475: Number of n X n 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183475, there is no canonical definition to state claims against.
-/

/-! ## A183475.P8813103465363921450

`A183483(∑[4*n]+1)`
-/

namespace A183475.P8813103465363921450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183475.P8813103465363921450

/-! ## A183475.P2412312764216836591

`or(1, A183483(A001844(n)))`
-/

namespace A183475.P2412312764216836591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183483 (A001844 n).toNat)

end

end A183475.P2412312764216836591

/-! ## A183475.P3498220746928379872

`record[A183483(Δ[A235355(n)])]`
-/

namespace A183475.P3498220746928379872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183475.P3498220746928379872

/-!
# A183476: Number of n X 2 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183476, there is no canonical definition to state claims against.
-/

/-! ## A183476.P10474153274086192052

`A183483(∑[n+1]+2)`
-/

namespace A183476.P10474153274086192052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183476.P10474153274086192052

/-! ## A183476.P15749599016078585060

`lcm(3, A183483(A133263(n+1)))`
-/

namespace A183476.P15749599016078585060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A183483 (A133263 (n + 1)).toNat)

end

end A183476.P15749599016078585060

/-! ## A183476.P12275635414476502829

`record[A010054(n)*A183483(n+2)]`
-/

namespace A183476.P12275635414476502829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183476.P12275635414476502829

/-! ## A183476.P8842479916310623038

`record[A183483(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A183476.P8842479916310623038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183476.P8842479916310623038

/-! ## A183476.P11449216145617465464

`A183483(A133263(n+1))%A150848(n+2)`
-/

namespace A183476.P11449216145617465464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183483 (A133263 (n + 1)).toNat) (A150848 (n + 2))

end

end A183476.P11449216145617465464

/-!
# A183477: Number of nX3 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183477, there is no canonical definition to state claims against.
-/

/-! ## A183477.P7373031912275873419

`A183483(∑[n+2]+4)`
-/

namespace A183477.P7373031912275873419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183477.P7373031912275873419

/-! ## A183477.P14692058583301355100

`or(1, A183483(A167614(n+1)))`
-/

namespace A183477.P14692058583301355100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183483 (A167614 (n + 1)).toNat)

end

end A183477.P14692058583301355100

/-! ## A183477.P17191329120924896437

`record[gcd(A122204(n), A183483(n+4))]`
-/

namespace A183477.P17191329120924896437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122204 n) (A183483 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183477.P17191329120924896437

/-! ## A183477.P12219731502638372599

`A096811(n)*A183483(A167614(n+1))`
-/

namespace A183477.P12219731502638372599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A183483 (A167614 (n + 1)).toNat

end

end A183477.P12219731502638372599

/-! ## A183477.P12867120415117301827

`A177849(n)*A183483(A167614(n+1))`
-/

namespace A183477.P12867120415117301827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A183483 (A167614 (n + 1)).toNat

end

end A183477.P12867120415117301827

/-!
# A183478: Number of nX4 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183478, there is no canonical definition to state claims against.
-/

/-! ## A183478.P8581291584188792721

`A183483(∑[n+3]+7)`
-/

namespace A183478.P8581291584188792721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183478.P8581291584188792721

/-! ## A183478.P16006874865675971152

`A101211(2*n+1)*A183483(A167614(n+2)+1)`
-/

namespace A183478.P16006874865675971152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (2 * n + 1) * A183483 (A167614 (n + 2) + 1).toNat

end

end A183478.P16006874865675971152

/-! ## A183478.P10500219307100998058

`A053000(A000010(n+1))*A183483(A052905(n)+9)`
-/

namespace A183478.P10500219307100998058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000010 (n + 1)).toNat * A183483 (A052905 n + 9).toNat

end

end A183478.P10500219307100998058

/-! ## A183478.P2372411398685568938

`record[A183483(A141214(∑{e}[n+1, #]+1))]`
-/

namespace A183478.P2372411398685568938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A141214 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183478.P2372411398685568938

/-! ## A183478.P10591297168096193000

`A183483(A374004(n+1))%A001656(n+4)`
-/

namespace A183478.P10591297168096193000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183483 (A374004 (n + 1)).toNat) (A001656 (n + 4))

end

end A183478.P10591297168096193000

/-!
# A183479: Number of nX5 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183479, there is no canonical definition to state claims against.
-/

/-! ## A183479.P17530921506013611672

`A183483(A155212(n)+13)`
-/

namespace A183479.P17530921506013611672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A155212 n + 13).toNat

end

end A183479.P17530921506013611672

/-! ## A183479.P3549502238631941712

`A183483(A056000(n)+15)`
-/

namespace A183479.P3549502238631941712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A056000 n + 15).toNat

end

end A183479.P3549502238631941712

/-! ## A183479.P1983172465978679227

`A183483(eq[7, A066657(n)])`
-/

namespace A183479.P1983172465978679227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183479.P1983172465978679227

/-! ## A183479.P16595771565886445325

`A183483(A167614(n+3)+2)`
-/

namespace A183479.P16595771565886445325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A167614 (n + 3) + 2).toNat

end

end A183479.P16595771565886445325

/-! ## A183479.P4045549058128539772

`A183483(A046691(n+2)+9)`
-/

namespace A183479.P4045549058128539772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A046691 (n + 2) + 9).toNat

end

end A183479.P4045549058128539772

/-!
# A183480: Number of nX6 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183480, there is no canonical definition to state claims against.
-/

/-! ## A183480.P12235554486963107097

`A183483(A166136(n+4))`
-/

namespace A183480.P12235554486963107097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A166136 (n + 4)).toNat

end

end A183480.P12235554486963107097

/-! ## A183480.P8906409888951014432

`A183483(A167499(n+4)+1)`
-/

namespace A183480.P8906409888951014432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A167499 (n + 4) + 1).toNat

end

end A183480.P8906409888951014432

/-! ## A183480.P14786142234536018088

`A183483(A000217(n+5)+6)`
-/

namespace A183480.P14786142234536018088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A000217 (n + 5) + 6).toNat

end

end A183480.P14786142234536018088

/-! ## A183480.P9542284142526607810

`A183483(eq[7, A131818(n+1)])`
-/

namespace A183480.P9542284142526607810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183480.P9542284142526607810

/-! ## A183480.P965647572410310391

`A183483(eq[6, A002260(n+1)]+1)`
-/

namespace A183480.P965647572410310391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183480.P965647572410310391

/-!
# A183481: Number of nX7 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183481, there is no canonical definition to state claims against.
-/

/-! ## A183481.P244977184080793134

`A183483(A374008(n+1))`
-/

namespace A183481.P244977184080793134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A374008 (n + 1)).toNat

end

end A183481.P244977184080793134

/-! ## A183481.P3880464763921763664

`A183483(A055999(n+4))`
-/

namespace A183481.P3880464763921763664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A055999 (n + 4)).toNat

end

end A183481.P3880464763921763664

/-! ## A183481.P8206672366352141254

`A183483(A056119(n)+28)`
-/

namespace A183481.P8206672366352141254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A056119 n + 28).toNat

end

end A183481.P8206672366352141254

/-!
# A183482: Number of nX8 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183482, there is no canonical definition to state claims against.
-/

/-! ## A183482.P3061848035053677810

`A183483(A374009(n+1))`
-/

namespace A183482.P3061848035053677810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183483 (A374009 (n + 1)).toNat

end

end A183482.P3061848035053677810

/-!
# A183483: T(n,k)=Number of nXk 0..2 arrays with every element equal to either the sum mod 3 of its vertical neighbors or the sum mod 3 of its horizontal neighbors.

The programs for A183483, there is no canonical definition to state claims against.
-/

/-! ## A183483.P559643950643642752

`or(A220259(n+1), A327041(A168293(n)))`
-/

namespace A183483.P559643950643642752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220259 (n + 1)) (A327041 (A168293 n).toNat)

end

end A183483.P559643950643642752

/-! ## A183483.P14367266186677810986

`or(A220259(n+1), A351835(A220242(n+1)))`
-/

namespace A183483.P14367266186677810986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220259 (n + 1)) (A351835 (A220242 (n + 1)).toNat)

end

end A183483.P14367266186677810986

/-! ## A183483.P5350658421662555026

`or(A168293(n), A232615(A014206(n)))`
-/

namespace A183483.P5350658421662555026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168293 n) (A232615 (A014206 n).toNat)

end

end A183483.P5350658421662555026

/-! ## A183483.P4739001805589697431

`or(A001222(A150848(n)), A196856(n+1))`
-/

namespace A183483.P4739001805589697431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A150848 n).toNat) (A196856 (n + 1))

end

end A183483.P4739001805589697431

/-! ## A183483.P6268623996404072818

`or(A001222(A150848(n)), A296599(n+1))`
-/

namespace A183483.P6268623996404072818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A150848 n).toNat) (A296599 (n + 1))

end

end A183483.P6268623996404072818

/-!
# A183484: Number of n X n 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183484, there is no canonical definition to state claims against.
-/

/-! ## A183484.P8245382011870930293

`A183492(∑[4*n]+1)`
-/

namespace A183484.P8245382011870930293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183484.P8245382011870930293

/-!
# A183485: Number of n X 2 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183485, there is no canonical definition to state claims against.
-/

/-! ## A183485.P11562084356356008855

`A183492(∑[n+1]+2)`
-/

namespace A183485.P11562084356356008855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183485.P11562084356356008855

/-! ## A183485.P3808749124740114454

`record[A183492(A061857(n+1)+2)]`
-/

namespace A183485.P3808749124740114454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A061857 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183485.P3808749124740114454

/-! ## A183485.P18425314871532461139

`record[A010054(n)*A183492(n+2)]`
-/

namespace A183485.P18425314871532461139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183485.P18425314871532461139

/-! ## A183485.P15633317833879077306

`A185284(n)+A183492(A133263(n+1))`
-/

namespace A183485.P15633317833879077306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183492 (A133263 (n + 1)).toNat

end

end A183485.P15633317833879077306

/-! ## A183485.P17201787272005045994

`lcm(2, A183492(A000096(n+1)))`
-/

namespace A183485.P17201787272005045994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183492 (A000096 (n + 1)).toNat)

end

end A183485.P17201787272005045994

/-!
# A183486: Number of n X 3 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183486, there is no canonical definition to state claims against.
-/

/-! ## A183486.P11074738741607186046

`A183492(∑[n+2]+4)`
-/

namespace A183486.P11074738741607186046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183486.P11074738741607186046

/-! ## A183486.P9565660800814005105

`A183492(A167614(n+1))+A025438(n)`
-/

namespace A183486.P9565660800814005105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A167614 (n + 1)).toNat + A025438 n

end

end A183486.P9565660800814005105

/-! ## A183486.P18444180866108078724

`A183492(A167614(n+1))+A025443(n)`
-/

namespace A183486.P18444180866108078724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A167614 (n + 1)).toNat + A025443 n

end

end A183486.P18444180866108078724

/-! ## A183486.P9708616913164106985

`A183492(A167614(n+1))+A035587(n)`
-/

namespace A183486.P9708616913164106985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A167614 (n + 1)).toNat + A035587 n

end

end A183486.P9708616913164106985

/-! ## A183486.P2633784498401212874

`A183492(A167614(n+1))+A084904(n)`
-/

namespace A183486.P2633784498401212874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A167614 (n + 1)).toNat + A084904 n

end

end A183486.P2633784498401212874

/-!
# A183487: Number of nX4 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183487, there is no canonical definition to state claims against.
-/

/-! ## A183487.P18115699657599085313

`A183492(A374004(n+1))`
-/

namespace A183487.P18115699657599085313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A374004 (n + 1)).toNat

end

end A183487.P18115699657599085313

/-! ## A183487.P2984866621624546172

`A183492(A141214(n)+7)`
-/

namespace A183487.P2984866621624546172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A141214 n + 7).toNat

end

end A183487.P2984866621624546172

/-! ## A183487.P9532322682747660825

`A183492(A052905(n)+9)`
-/

namespace A183487.P9532322682747660825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A052905 n + 9).toNat

end

end A183487.P9532322682747660825

/-! ## A183487.P15468647653908325336

`A183492(A055999(n)+10)`
-/

namespace A183487.P15468647653908325336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A055999 n + 10).toNat

end

end A183487.P15468647653908325336

/-! ## A183487.P8469598336469963632

`A183492(eq[5, A066657(n)])`
-/

namespace A183487.P8469598336469963632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183487.P8469598336469963632

/-!
# A183488: Number of nX5 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183488, there is no canonical definition to state claims against.
-/

/-! ## A183488.P2151827440546811005

`A183492(A374005(n+1))`
-/

namespace A183488.P2151827440546811005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A374005 (n + 1)).toNat

end

end A183488.P2151827440546811005

/-! ## A183488.P98698324501940358

`A183492(A155212(n)+13)`
-/

namespace A183488.P98698324501940358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A155212 n + 13).toNat

end

end A183488.P98698324501940358

/-! ## A183488.P1597117601768621952

`A183492(A056000(n)+15)`
-/

namespace A183488.P1597117601768621952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A056000 n + 15).toNat

end

end A183488.P1597117601768621952

/-! ## A183488.P3388908456226444862

`A183492(eq[7, A066657(n)])`
-/

namespace A183488.P3388908456226444862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183488.P3388908456226444862

/-! ## A183488.P17020956548084571002

`A183492(A167487(n+3)-2)`
-/

namespace A183488.P17020956548084571002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A167487 (n + 3) - 2).toNat

end

end A183488.P17020956548084571002

/-!
# A183489: Number of n X 6 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183489, there is no canonical definition to state claims against.
-/

/-! ## A183489.P7074191116962452763

`A183492(A374007(n+1))`
-/

namespace A183489.P7074191116962452763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A374007 (n + 1)).toNat

end

end A183489.P7074191116962452763

/-! ## A183489.P5633482792507833088

`A183492(A052905(n+3))`
-/

namespace A183489.P5633482792507833088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A052905 (n + 3)).toNat

end

end A183489.P5633482792507833088

/-! ## A183489.P7271932447088638836

`A183492(A168104(n)+6)`
-/

namespace A183489.P7271932447088638836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A168104 n + 6).toNat

end

end A183489.P7271932447088638836

/-!
# A183490: Number of nX7 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183490, there is no canonical definition to state claims against.
-/

/-! ## A183490.P15070314723690086339

`A183492(A374008(n+1))`
-/

namespace A183490.P15070314723690086339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A374008 (n + 1)).toNat

end

end A183490.P15070314723690086339

/-!
# A183491: Number of nX8 0..3 arrays with every element equal to either the sum mod 4 of its vertical neighbors or the sum mod 4 of its horizontal neighbors.

The programs for A183491, there is no canonical definition to state claims against.
-/

/-! ## A183491.P3054355240069128459

`A183492(A374009(n+1))`
-/

namespace A183491.P3054355240069128459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183492 (A374009 (n + 1)).toNat

end

end A183491.P3054355240069128459

/-!
# A183493: Half the number of n X n 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183493, there is no canonical definition to state claims against.
-/

/-! ## A183493.P5522524498959664974

`A183501(∑[4*n]+1)`
-/

namespace A183493.P5522524498959664974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183493.P5522524498959664974

/-!
# A183494: Half the number of nX1 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183494, the canonical program `A183494.P3190851867238133307` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183494 has offset 1).

The definition of A183494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183494.P3190851867238133307

`A106624(A005131(n))+A000079(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183494

/-- `A106624(A005131(n))+A000079(n)` -/
def P3190851867238133307.Spec : Prop :=
  ∀ n, P3190851867238133307.a n = A183494 (n + 1)

theorem P3190851867238133307.correct : P3190851867238133307.Spec := by
  intro n
  simp only [A183494, Nat.add_sub_cancel]

end A183494

/-! ## A183494.P6163859761171528186

`A077957(2*n)+A077957(A005131(n))`
-/

namespace A183494.P6163859761171528186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A077957 (A005131 n).toNat

end

end A183494.P6163859761171528186

namespace A183494

/-- `A077957(2*n)+A077957(A005131(n))` -/
def P6163859761171528186.Spec : Prop :=
  ∀ n, P6163859761171528186.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P11521810921662319466

`A106624(2*n)+A106624(A005131(n))`
-/

namespace A183494.P11521810921662319466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (2 * n) + A106624 (A005131 n).toNat

end

end A183494.P11521810921662319466

namespace A183494

/-- `A106624(2*n)+A106624(A005131(n))` -/
def P11521810921662319466.Spec : Prop :=
  ∀ n, P11521810921662319466.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P14894626937096633396

`A060546(2*n)+A140426(2*n)-A140426(2*n+1)`
-/

namespace A183494.P14894626937096633396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) + (A140426 (2 * n) - A140426 (2 * n + 1))

end

end A183494.P14894626937096633396

namespace A183494

/-- `A060546(2*n)+A140426(2*n)-A140426(2*n+1)` -/
def P14894626937096633396.Spec : Prop :=
  ∀ n, P14894626937096633396.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P16942478053364928542

`2*a(n-1)+2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A183494.P16942478053364928542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 8] fun n a =>
  2 * a (n - 1) + 2 * a (n - 3) - 4 * a (n - 4)

end

end A183494.P16942478053364928542

namespace A183494

/-- `2*a(n-1)+2*a(n-3)-4*a(n-4)` -/
def P16942478053364928542.Spec : Prop :=
  ∀ n, P16942478053364928542.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P14230105132133351525

`A068010(n+2)-A068010(n)`
-/

namespace A183494.P14230105132133351525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (n + 2) - A068010 n

end

end A183494.P14230105132133351525

namespace A183494

/-- `A068010(n+2)-A068010(n)` -/
def P14230105132133351525.Spec : Prop :=
  ∀ n, P14230105132133351525.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P14200696168136273548

`Δ[A068010(n+1)+A068010(n)]`
-/

namespace A183494.P14200696168136273548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (n + 1) + A068010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P14200696168136273548

namespace A183494

/-- `Δ[A068010(n+1)+A068010(n)]` -/
def P14200696168136273548.Spec : Prop :=
  ∀ n, P14200696168136273548.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P6323992100140004568

`Δ[A173862(3*(n+1))+A173862(n+2)]`
-/

namespace A183494.P6323992100140004568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (3 * (n + 1)) + A173862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P6323992100140004568

namespace A183494

/-- `Δ[A173862(3*(n+1))+A173862(n+2)]` -/
def P6323992100140004568.Spec : Prop :=
  ∀ n, P6323992100140004568.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P13553998541082596937

`Δ[A000079(A002264(n+1))+A000079(n)]`
-/

namespace A183494.P13553998541082596937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002264 (n + 1)).toNat + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P13553998541082596937

namespace A183494

/-- `Δ[A000079(A002264(n+1))+A000079(n)]` -/
def P13553998541082596937.Spec : Prop :=
  ∀ n, P13553998541082596937.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P18186538666031479714

`Δ[A000225(A002264(n+1))+A000225(n)]`
-/

namespace A183494.P18186538666031479714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002264 (n + 1)).toNat + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P18186538666031479714

namespace A183494

/-- `Δ[A000225(A002264(n+1))+A000225(n)]` -/
def P18186538666031479714.Spec : Prop :=
  ∀ n, P18186538666031479714.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P5184317917598602844

`Δ[A094373(A008620(n+1))+A094373(n+1)]`
-/

namespace A183494.P5184317917598602844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A008620 (n + 1)).toNat + A094373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P5184317917598602844

namespace A183494

/-- `Δ[A094373(A008620(n+1))+A094373(n+1)]` -/
def P5184317917598602844.Spec : Prop :=
  ∀ n, P5184317917598602844.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P15923044601623227844

`Δ[Δ[A200672(n+1)+2^n]]`
-/

namespace A183494.P15923044601623227844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200672 (n + 1) + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183494.P15923044601623227844

namespace A183494

/-- `Δ[Δ[A200672(n+1)+2^n]]` -/
def P15923044601623227844.Spec : Prop :=
  ∀ n, P15923044601623227844.a n = A183494 (n + 1)

end A183494

/-! ## A183494.P1701919226689790770

`(A133851(2*n+1)+2*A000079(n)²)/A000079(n+1)`
-/

namespace A183494.P1701919226689790770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133851 (2 * n + 1) + 2 * A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A183494.P1701919226689790770

namespace A183494

/-- `(A133851(2*n+1)+2*A000079(n)²)/A000079(n+1)` -/
def P1701919226689790770.Spec : Prop :=
  ∀ n, P1701919226689790770.a n = (A183494 (n + 1) : ℚ)

end A183494

/-! ## A183494.P4226282843520865666

`(A133851(2*n+1)+A000079(2*n+1))/A000079(n+1)`
-/

namespace A183494.P4226282843520865666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133851 (2 * n + 1) + A000079 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A183494.P4226282843520865666

namespace A183494

/-- `(A133851(2*n+1)+A000079(2*n+1))/A000079(n+1)` -/
def P4226282843520865666.Spec : Prop :=
  ∀ n, P4226282843520865666.a n = (A183494 (n + 1) : ℚ)

end A183494

/-!
# A183495: Half the number of n X 2 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183495, there is no canonical definition to state claims against.
-/

/-! ## A183495.P9104393877976085121

`A183501(∑[n+1]+2)`
-/

namespace A183495.P9104393877976085121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183495.P9104393877976085121

/-! ## A183495.P14796459823868062230

`record[A183501(n+2)/A060538(n+1)]`
-/

namespace A183495.P14796459823868062230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183501 (n + 2) : ℚ) / (A060538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183495.P14796459823868062230

/-! ## A183495.P9133133935622379129

`or(A000007(n), A183501(A000096(n)+3))`
-/

namespace A183495.P9133133935622379129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183501 (A000096 n + 3).toNat)

end

end A183495.P9133133935622379129

/-! ## A183495.P13095991076343697922

`record[A183501(Δ[A003453(n+5)])]`
-/

namespace A183495.P13095991076343697922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183495.P13095991076343697922

/-! ## A183495.P5715962264352492939

`A185246(n)+A183501(A000096(n+1))`
-/

namespace A183495.P5715962264352492939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A183501 (A000096 (n + 1)).toNat

end

end A183495.P5715962264352492939

/-!
# A183496: Half the number of nX3 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183496, there is no canonical definition to state claims against.
-/

/-! ## A183496.P5890056426087042739

`A183501(∑[n+2]+4)`
-/

namespace A183496.P5890056426087042739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183496.P5890056426087042739

/-! ## A183496.P9429285061638314012

`lcm(2, A183501(A167614(n+1)))`
-/

namespace A183496.P9429285061638314012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183501 (A167614 (n + 1)).toNat)

end

end A183496.P9429285061638314012

/-! ## A183496.P2503793832667421459

`A183501(A167614(n+1))+A061858(n)`
-/

namespace A183496.P2503793832667421459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A167614 (n + 1)).toNat + A061858 n

end

end A183496.P2503793832667421459

/-! ## A183496.P438709427630840758

`A183501(A167614(n+1))+A097599(n)`
-/

namespace A183496.P438709427630840758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A167614 (n + 1)).toNat + A097599 n

end

end A183496.P438709427630840758

/-! ## A183496.P14878140111251084519

`A184955(n)+A183501(A167614(n+1))`
-/

namespace A183496.P14878140111251084519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A183501 (A167614 (n + 1)).toNat

end

end A183496.P14878140111251084519

/-!
# A183497: Half the number of nX4 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183497, there is no canonical definition to state claims against.
-/

/-! ## A183497.P8136543127351293493

`A183501(A374004(n+1))`
-/

namespace A183497.P8136543127351293493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A374004 (n + 1)).toNat

end

end A183497.P8136543127351293493

/-! ## A183497.P4236029626482164774

`A183501(A145018(n+4))`
-/

namespace A183497.P4236029626482164774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A145018 (n + 4)).toNat

end

end A183497.P4236029626482164774

/-! ## A183497.P11940738958100575396

`A183501(A141214(n)+7)`
-/

namespace A183497.P11940738958100575396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A141214 n + 7).toNat

end

end A183497.P11940738958100575396

/-! ## A183497.P15459965953017576884

`A183501(A052905(n)+9)`
-/

namespace A183497.P15459965953017576884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A052905 n + 9).toNat

end

end A183497.P15459965953017576884

/-! ## A183497.P389375724776286175

`A183501(A055999(n)+10)`
-/

namespace A183497.P389375724776286175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A055999 n + 10).toNat

end

end A183497.P389375724776286175

/-!
# A183498: Half the number of nX5 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183498, there is no canonical definition to state claims against.
-/

/-! ## A183498.P4956199740216032373

`A183501(A374005(n+1))`
-/

namespace A183498.P4956199740216032373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A374005 (n + 1)).toNat

end

end A183498.P4956199740216032373

/-! ## A183498.P4527770111304064352

`A183501(A167499(n+3))`
-/

namespace A183498.P4527770111304064352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A167499 (n + 3)).toNat

end

end A183498.P4527770111304064352

/-! ## A183498.P16861173560950120755

`A183501(A155212(n)+13)`
-/

namespace A183498.P16861173560950120755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A155212 n + 13).toNat

end

end A183498.P16861173560950120755

/-! ## A183498.P4801733322532192146

`A183501(A056000(n)+15)`
-/

namespace A183498.P4801733322532192146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A056000 n + 15).toNat

end

end A183498.P4801733322532192146

/-! ## A183498.P13719055891808257409

`A183501(eq[7, A066657(n)])`
-/

namespace A183498.P13719055891808257409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183498.P13719055891808257409

/-!
# A183499: Half the number of nX7 0..2 arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183499, there is no canonical definition to state claims against.
-/

/-! ## A183499.P9149996723211958558

`A183501(A374008(n+1))`
-/

namespace A183499.P9149996723211958558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183501 (A374008 (n + 1)).toNat

end

end A183499.P9149996723211958558

