import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A067100: Floor[radius of the inscribed-circle of a regular n-gon with unit sides].

The programs for A067100, the canonical program `A067100.P7896498252395916471` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067100 has offset 3).

The definition of A067100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067100.P7896498252395916471

`floor(cot(π/(n+3))/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067100

/-- `floor(cot(π/(n+3))/2)` -/
def P7896498252395916471.Spec : Prop :=
  ∀ n, P7896498252395916471.a n = A067100 (n + 3)

theorem P7896498252395916471.correct : P7896498252395916471.Spec := by
  intro n
  simp only [A067100, Nat.add_sub_cancel]

end A067100

/-! ## A067100.P12771552676298135964

`floor(A062299(n+2)/2)`
-/

namespace A067100.P12771552676298135964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062299 (n + 2) : ℚ) / 2⌋

end

end A067100.P12771552676298135964

namespace A067100

/-- `floor(A062299(n+2)/2)` -/
def P12771552676298135964.Spec : Prop :=
  ∀ n, P12771552676298135964.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P5765209926862615759

`A004526(A062299(n+2))`
-/

namespace A067100.P5765209926862615759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062299 (n + 2)).toNat

end

end A067100.P5765209926862615759

namespace A067100

/-- `A004526(A062299(n+2))` -/
def P5765209926862615759.Spec : Prop :=
  ∀ n, P5765209926862615759.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P9129504838576011740

`∑[Δ[A008619(A062299(n+1))]²]`
-/

namespace A067100.P9129504838576011740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062299 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067100.P9129504838576011740

namespace A067100

/-- `∑[Δ[A008619(A062299(n+1))]²]` -/
def P9129504838576011740.Spec : Prop :=
  ∀ n, P9129504838576011740.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P9832040084557301212

`A067099(n-A062299(n+2)%2+3)`
-/

namespace A067100.P9832040084557301212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 ((n : ℤ) - Int.tmod (A062299 (n + 2)) 2 + 3).toNat

end

end A067100.P9832040084557301212

namespace A067100

/-- `A067099(n-A062299(n+2)%2+3)` -/
def P9832040084557301212.Spec : Prop :=
  ∀ n, P9832040084557301212.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P735557021417753660

`A067099(n-and(1, A062299(n+2))+3)`
-/

namespace A067100.P735557021417753660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 ((n : ℤ) - Int.land 1 (A062299 (n + 2)) + 3).toNat

end

end A067100.P735557021417753660

namespace A067100

/-- `A067099(n-and(1, A062299(n+2))+3)` -/
def P735557021417753660.Spec : Prop :=
  ∀ n, P735557021417753660.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P855942613449613637

`∑[A062299(n+1)%gcd(2, A062299(n+2))]`
-/

namespace A067100.P855942613449613637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062299 (n + 1)) (Int.gcd 2 (A062299 (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067100.P855942613449613637

namespace A067100

/-- `∑[A062299(n+1)%gcd(2, A062299(n+2))]` -/
def P855942613449613637.Spec : Prop :=
  ∀ n, P855942613449613637.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P17151647035099681493

`A002266(A002266(A174028(A001105(n+2))))`
-/

namespace A067100.P17151647035099681493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002266 (A174028 (A001105 (n + 2)).toNat).toNat).toNat

end

end A067100.P17151647035099681493

namespace A067100

/-- `A002266(A002266(A174028(A001105(n+2))))` -/
def P17151647035099681493.Spec : Prop :=
  ∀ n, P17151647035099681493.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P16827831134690426749

`A002266(A002266(A174028(A184636(n+2))))`
-/

namespace A067100.P16827831134690426749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A002266 (A174028 (A184636 (n + 2)).toNat).toNat).toNat

end

end A067100.P16827831134690426749

namespace A067100

/-- `A002266(A002266(A174028(A184636(n+2))))` -/
def P16827831134690426749.Spec : Prop :=
  ∀ n, P16827831134690426749.a n = A067100 (n + 3)

end A067100

/-! ## A067100.P13656349507521743944

`A064459(A390445(n+2))`
-/

namespace A067100.P13656349507521743944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A390445 (n + 2)).toNat

end

end A067100.P13656349507521743944

namespace A067100

/-- `A064459(A390445(n+2))` -/
def P13656349507521743944.Spec : Prop :=
  ∀ n, P13656349507521743944.a n = A067100 (n + 3)

end A067100

/-!
# A067101: Floor[ X/Y], where X = concatenation of the primes and Y = concatenation of natural numbers.

The programs for A067101, there is no canonical definition to state claims against.
-/

/-! ## A067101.P2609377226642998223

`floor(A019518(n+1)/A007908(n+1))`
-/

namespace A067101.P2609377226642998223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A067101.P2609377226642998223

/-! ## A067101.P1317959161529475284

`floor(A019518(n+1)/∑[A078998(n+1)])`
-/

namespace A067101.P1317959161529475284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A067101.P1317959161529475284

/-! ## A067101.P13144805614363793739

`floor(A019518(n+1)/A252043(A033061(n+1)))`
-/

namespace A067101.P13144805614363793739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / (A252043 (A033061 (n + 1)).toNat : ℚ)⌋

end

end A067101.P13144805614363793739

/-! ## A067101.P11102893408767243258

`floor(A019518(n+1)/record[A322762(n+1)])`
-/

namespace A067101.P11102893408767243258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A067101.P11102893408767243258

/-!
# A067102: Floor[ X/Y] where X = concatenation of the squares and Y = concatenation of natural numbers.

The programs for A067102, there is no canonical definition to state claims against.
-/

/-! ## A067102.P7876686861527089713

`floor(A019521(n+1)/A007908(n+1))`
-/

namespace A067102.P7876686861527089713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019521 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A067102.P7876686861527089713

/-! ## A067102.P10610996005506822659

`floor(A019521(n+1)/(A000422(n+1)-A019566(n+1)))`
-/

namespace A067102.P10610996005506822659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019521 (n + 1) : ℚ) / (A000422 (n + 1) - A019566 (n + 1) : ℚ)⌋

end

end A067102.P10610996005506822659

/-! ## A067102.P1219105244447867949

`floor(A019521(n+1)/A322762(A026905(n+1)))`
-/

namespace A067102.P1219105244447867949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019521 (n + 1) : ℚ) / (A322762 (A026905 (n + 1)).toNat : ℚ)⌋

end

end A067102.P1219105244447867949

/-! ## A067102.P11169892104626257925

`floor(A019521(n+1)/A213059(2^n))`
-/

namespace A067102.P11169892104626257925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019521 (n + 1) : ℚ) / (A213059 (2 ^ n) : ℚ)⌋

end

end A067102.P11169892104626257925

/-! ## A067102.P407583795584277734

`floor(A019521(n+1)/A048794(∑[2^n]))`
-/

namespace A067102.P407583795584277734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019521 (n + 1) : ℚ) / (A048794 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A067102.P407583795584277734

/-!
# A067103: a(n) = floor(X/Y), where X = concatenation of cubes and Y = concatenation of natural numbers.

The programs for A067103, there is no canonical definition to state claims against.
-/

/-! ## A067103.P7034651262840599973

`floor(A019522(n+1)/A007908(n+1))`
-/

namespace A067103.P7034651262840599973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A067103.P7034651262840599973

/-! ## A067103.P698364349876862550

`floor(A019522(n+1)/A322762(A026905(n+1)))`
-/

namespace A067103.P698364349876862550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A322762 (A026905 (n + 1)).toNat : ℚ)⌋

end

end A067103.P698364349876862550

/-! ## A067103.P15754568351625930632

`floor(A019522(n+1)/(A000422(n+1)-A019566(n+1)))`
-/

namespace A067103.P15754568351625930632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A000422 (n + 1) - A019566 (n + 1) : ℚ)⌋

end

end A067103.P15754568351625930632

/-! ## A067103.P11624432860107345550

`floor(A019522(n+1)/A213059(2^n))`
-/

namespace A067103.P11624432860107345550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A213059 (2 ^ n) : ℚ)⌋

end

end A067103.P11624432860107345550

/-! ## A067103.P12899437056320716832

`floor(A019522(n+1)/A048794(∑[2^n]))`
-/

namespace A067103.P12899437056320716832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A048794 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A067103.P12899437056320716832

/-!
# A067104: a(n) = floor[ X/Y], where X = concatenation of first n factorials and Y = concatenation of first n natural numbers.

The programs for A067104, there is no canonical definition to state claims against.
-/

/-! ## A067104.P13450800464645217731

`floor(A045508(n+1)/A007908(n+1))`
-/

namespace A067104.P13450800464645217731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045508 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A067104.P13450800464645217731

/-! ## A067104.P3447295657857705998

`floor(A045508(n+1)/record[A322762(n+1)])`
-/

namespace A067104.P3447295657857705998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045508 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A067104.P3447295657857705998

/-! ## A067104.P9263491422824653311

`floor(A045508(n+1)/(A000422(n+1)-A019566(n+1)))`
-/

namespace A067104.P9263491422824653311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045508 (n + 1) : ℚ) / (A000422 (n + 1) - A019566 (n + 1) : ℚ)⌋

end

end A067104.P9263491422824653311

/-! ## A067104.P17030571306744109863

`floor(A045508(n+1)/A213059(2^n))`
-/

namespace A067104.P17030571306744109863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045508 (n + 1) : ℚ) / (A213059 (2 ^ n) : ℚ)⌋

end

end A067104.P17030571306744109863

/-! ## A067104.P6567983452044759429

`floor(A045508(n+1)/A048794(A048578(n)-2))`
-/

namespace A067104.P6567983452044759429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045508 (n + 1) : ℚ) / (A048794 (A048578 n - 2).toNat : ℚ)⌋

end

end A067104.P6567983452044759429

/-!
# A067106: a(n) = smallest number whose digit product equals n!/m where m is the product of all prime factors > 7 of n! (with multiplicity).

The programs for A067106, there is no canonical definition to state claims against.
-/

/-! ## A067106.P749334175562609948

`∏{p}[A068184(n+1), #]`
-/

namespace A067106.P749334175562609948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A067106.P749334175562609948

/-! ## A067106.P14054241304385064708

`A068184(comp[a(n-2)+9])` with `a(0)=0, a(1)=10`
-/

namespace A067106.P14054241304385064708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068184 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067106.P14054241304385064708

/-! ## A067106.P11148376863032438927

`A068184(gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#])+n)`
-/

namespace A067106.P11148376863032438927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068184 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) + n)

end

end A067106.P11148376863032438927

/-! ## A067106.P1937354837557305814

`A068184(A008815(n))`
-/

namespace A067106.P1937354837557305814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068184 (A008815 n).toNat

end

end A067106.P1937354837557305814

/-!
# A067107: Smallest number whose sum of digits is n!.

The programs for A067107, there is no canonical definition to state claims against.
-/

/-! ## A067107.P12453160831254534191

`A051885((n+1)!)`
-/

namespace A067107.P12453160831254534191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (Nat.factorial (n + 1))

end

end A067107.P12453160831254534191

/-!
# A067109: Number of occurrences of the string n in n! (A000142).

The programs for A067109, there is no canonical definition to state claims against.
-/

/-! ## A067109.P17274726184745276524

`A302052(A264059(n+1)+A029742(n+3))`
-/

namespace A067109.P17274726184745276524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (A264059 (n + 1) + A029742 (n + 3)).toNat

end

end A067109.P17274726184745276524

/-!
# A067110: a(n) = floor(concatenation of first n primes / sum of first n primes).

The programs for A067110, there is no canonical definition to state claims against.
-/

/-! ## A067110.P3197023225285629782

`floor(A019518(n+1)/A007504(n+1))`
-/

namespace A067110.P3197023225285629782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A067110.P3197023225285629782

/-! ## A067110.P7694359155813592728

`floor(A019518(n+1)/∑[A000040(n+1)])`
-/

namespace A067110.P7694359155813592728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019518 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A067110.P7694359155813592728

/-!
# A067111: Floor[ Product of first n primes / Sum of first n primes].

The programs for A067111, there is no canonical definition to state claims against.
-/

/-! ## A067111.P10972520331582121734

`floor(A002110(n+1)/A007504(n+1))`
-/

namespace A067111.P10972520331582121734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A067111.P10972520331582121734

/-! ## A067111.P8292144381268616415

`floor(A002110(n+1)/∑[A000040(n+1)])`
-/

namespace A067111.P8292144381268616415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A067111.P8292144381268616415

/-! ## A067111.P12274030924510382159

`floor(∏[A000040(n+1)]/A007504(n+1))`
-/

namespace A067111.P12274030924510382159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007504 (n + 1) : ℚ)⌋

end

end A067111.P12274030924510382159

/-! ## A067111.P13922013563708151775

`floor(A002110(n+1)/record[A160793(n+2)])`
-/

namespace A067111.P13922013563708151775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A067111.P13922013563708151775

/-! ## A067111.P6020749364617030187

`floor(A002110(n+1)/A160793(2*(n+1)))`
-/

namespace A067111.P6020749364617030187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℚ) / (A160793 (2 * (n + 1)) : ℚ)⌋

end

end A067111.P6020749364617030187

/-! ## A067111.P2485527086368475581

`(A002110(n+1)-A255217(n+1))/A007504(n+1)`
-/

namespace A067111.P2485527086368475581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) - A255217 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ)

end

end A067111.P2485527086368475581

/-!
# A067112: Let N = 2357111317192329313741434753..., the concatenation of the primes; a(n) = sum of first n digits of N.

The programs for A067112, there is no canonical definition to state claims against.
-/

/-! ## A067112.P7150645134770271141

`∑[A033308(n)]-A033308(n)`
-/

namespace A067112.P7150645134770271141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033308 n

end

end A067112.P7150645134770271141

/-! ## A067112.P1640952478616128358

`∑[9-A154730(n)]-(9-A154730(n))`
-/

namespace A067112.P1640952478616128358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (9 - A154730 n)

end

end A067112.P1640952478616128358

/-!
# A067113: Let N = 0.149162536496481100121... = A001191, the concatenation of the squares. Then a(n) = sum of first n digits of N.

The programs for A067113, there is no canonical definition to state claims against.
-/

/-! ## A067113.P3514184274360359990

`∑[A001191(n+1)]`
-/

namespace A067113.P3514184274360359990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067113.P3514184274360359990

/-! ## A067113.P517621987498253996

`A001191(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A067113.P517621987498253996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001191 (n + 1) + a (A023443 n).toNat

end

end A067113.P517621987498253996

/-! ## A067113.P2369636383528018962

`A001191(n+1)+a(n-1)/A054977(n)` with `a(0)=1`
-/

namespace A067113.P2369636383528018962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001191 (n + 1) : ℚ) + a (n - 1) / (A054977 n : ℚ)

end

end A067113.P2369636383528018962

/-! ## A067113.P15293929664858750883

`A028310(a(n-1))+A001191(n+1)` with `a(0)=1`
-/

namespace A067113.P15293929664858750883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A001191 (n + 1)

end

end A067113.P15293929664858750883

/-! ## A067113.P6541005655493526279

`A004525(2*a(n-1))+A001191(n+1)` with `a(0)=1`
-/

namespace A067113.P6541005655493526279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004525 (2 * a (n - 1)).toNat + A001191 (n + 1)

end

end A067113.P6541005655493526279

/-!
# A067114: Let N = 24681012141618202224262830..., the concatenation of the even numbers. Then a(n) = sum of first n digits of N.

The programs for A067114, there is no canonical definition to state claims against.
-/

/-! ## A067114.P4869501878038794059

`∑[A036211(n+1)]`
-/

namespace A067114.P4869501878038794059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067114.P4869501878038794059

/-! ## A067114.P5752873644912476026

`A036211(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A067114.P5752873644912476026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + a (A023443 n).toNat

end

end A067114.P5752873644912476026

/-! ## A067114.P1272495198662285892

`A000027(A036211(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A067114.P1272495198662285892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000027 (A036211 (n + 1) + a (n - 1)).toNat

end

end A067114.P1272495198662285892

/-! ## A067114.P8997490965905512918

`A036211(n+1)+a(A028310(n)-1)` with `a(0)=2`
-/

namespace A067114.P8997490965905512918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + a (A028310 n - 1).toNat

end

end A067114.P8997490965905512918

/-! ## A067114.P2792305028037567440

`A036211(n+1)+a(A000007(n)-1+n)` with `a(0)=2`
-/

namespace A067114.P2792305028037567440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A067114.P2792305028037567440

/-! ## A067114.P5941787306776035550

`A036211(n+1)+A000720(A000040(a(n-1))+1)` with `a(0)=2`
-/

namespace A067114.P5941787306776035550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + A000720 (A000040 (a (n - 1)).toNat + 1).toNat

end

end A067114.P5941787306776035550

/-! ## A067114.P4382805420470419900

`A036211(n+1)+a(A003056(C(n, 2)))` with `a(0)=2`
-/

namespace A067114.P4382805420470419900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + a (A003056 (Nat.choose n 2)).toNat

end

end A067114.P4382805420470419900

/-! ## A067114.P8074900859168556870

`A036211(n+1)+a(n%A170850(n)-1)` with `a(0)=2`
-/

namespace A067114.P8074900859168556870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A036211 (n + 1) + a (Int.tmod (n : ℤ) (A170850 n) - 1).toNat

end

end A067114.P8074900859168556870

/-!
# A067115: Let N = 1357911131517192123252729... = concatenation of odd numbers. Then a(n) = sum of first n digits of N.

The programs for A067115, there is no canonical definition to state claims against.
-/

/-! ## A067115.P7803877685863919154

`∑[A031312(n+1)]`
-/

namespace A067115.P7803877685863919154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067115.P7803877685863919154

/-! ## A067115.P1379904543215972729

`∑[dr(A031312(Δ[n²]-n))]`
-/

namespace A067115.P1379904543215972729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A031312 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067115.P1379904543215972729

/-! ## A067115.P1566703098608583656

`A031312(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A067115.P1566703098608583656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031312 (n + 1) + a (A023443 n).toNat

end

end A067115.P1566703098608583656

/-! ## A067115.P10968140806306642142

`a(n-1)+A031312(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A067115.P10968140806306642142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A031312 (n + 1) + A000038 n)

end

end A067115.P10968140806306642142

/-! ## A067115.P374795936670027440

`a(n-1)+1+A057428(n)+A031312(n+1)` with `a(0)=1`
-/

namespace A067115.P374795936670027440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A057428 n + A031312 (n + 1))

end

end A067115.P374795936670027440

/-! ## A067115.P9124119201605070931

`∑[A031312(Δ[n²]-n)]%A007283(n)`
-/

namespace A067115.P9124119201605070931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007283 n)

end

end A067115.P9124119201605070931

/-! ## A067115.P9435421086864417788

`A031312(n+1)+a(A002262(A055998(n)))` with `a(0)=1`
-/

namespace A067115.P9435421086864417788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031312 (n + 1) + a (A002262 (A055998 n).toNat).toNat

end

end A067115.P9435421086864417788

/-!
# A067116: Floor(decimal concatenation of first n natural numbers/their sum).

The programs for A067116, there is no canonical definition to state claims against.
-/

/-! ## A067116.P9801038384722728728

`floor(A007908(n+1)/∑[n+1])`
-/

namespace A067116.P9801038384722728728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A067116.P9801038384722728728

/-! ## A067116.P14742510803363711223

`floor(A252043(A058183(n+1))/A000217(n+1))`
-/

namespace A067116.P14742510803363711223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252043 (A058183 (n + 1)).toNat : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A067116.P14742510803363711223

/-! ## A067116.P1669443092236670313

`floor(record[A322762(n+1)]/∑[n+1])`
-/

namespace A067116.P1669443092236670313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A067116.P1669443092236670313

/-! ## A067116.P12764536851534122354

`floor(A213059(2^n)/A025747(n))`
-/

namespace A067116.P12764536851534122354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213059 (2 ^ n) : ℚ) / (A025747 n : ℚ)⌋

end

end A067116.P12764536851534122354

/-! ## A067116.P1312593347959061050

`floor(A048794(∑[2^n])/A025747(n))`
-/

namespace A067116.P1312593347959061050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048794 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A025747 n : ℚ)⌋

end

end A067116.P1312593347959061050

/-!
# A067117: a(n) = floor((concatenation of first n natural numbers)/ (n!)).

The programs for A067117, there is no canonical definition to state claims against.
-/

/-! ## A067117.P7994355098060460377

`floor(A077147(n+1)/n!)`
-/

namespace A067117.P7994355098060460377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077147 (n + 1) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A067117.P7994355098060460377

/-! ## A067117.P4474406847865655429

`floor(A077147(n+1)/A000142(n))`
-/

namespace A067117.P4474406847865655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077147 (n + 1) : ℚ) / (A000142 n : ℚ)⌋

end

end A067117.P4474406847865655429

/-! ## A067117.P16833493209990307112

`floor(A007908(n+1)/(n+1)!)`
-/

namespace A067117.P16833493209990307112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)⌋

end

end A067117.P16833493209990307112

/-! ## A067117.P1500936440683008980

`floor(A007908(n+1)/record[A132159(n)])`
-/

namespace A067117.P1500936440683008980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A067117.P1500936440683008980

/-! ## A067117.P7068902998878573885

`floor(A007908(n+1)/A000142(n+1))`
-/

namespace A067117.P7068902998878573885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)⌋

end

end A067117.P7068902998878573885

/-!
# A067118: a(n) =floor[X/Y] where X= concatenation of first n even numbers in decreasing order and Y = that of first n odd numbers in increasing order.

The programs for A067118, there is no canonical definition to state claims against.
-/

/-! ## A067118.P719786140440413920

`A010057(A160171(n))+A001651(n+1)`
-/

namespace A067118.P719786140440413920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A160171 n).toNat + A001651 (n + 1)

end

end A067118.P719786140440413920

/-! ## A067118.P11635297643357696607

`A003982(A339163(n))+A001651(n+1)`
-/

namespace A067118.P11635297643357696607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A339163 n).toNat + A001651 (n + 1)

end

end A067118.P11635297643357696607

/-! ## A067118.P7119190821144580285

`A141044(A222573(n+1))+A032766(n)`
-/

namespace A067118.P7119190821144580285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A222573 (n + 1)).toNat + A032766 n

end

end A067118.P7119190821144580285

/-! ## A067118.P16927214009010362579

`A008619(3*n)+A003982(A339163(n))`
-/

namespace A067118.P16927214009010362579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n) + A003982 (A339163 n).toNat

end

end A067118.P16927214009010362579

/-! ## A067118.P13570121514914212258

`A008621(6*n)+A003982(A339163(n))`
-/

namespace A067118.P13570121514914212258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (6 * n) + A003982 (A339163 n).toNat

end

end A067118.P13570121514914212258

/-!
# A067119: a(n) = floor[X/Y] where X = concatenation of first n even numbers in increasing order and Y = n-th triangular number.

The programs for A067119, there is no canonical definition to state claims against.
-/

/-! ## A067119.P11005442445999431847

`floor(A019520(n+1)/∑[n+1])`
-/

namespace A067119.P11005442445999431847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A067119.P11005442445999431847

/-!
# A067120: a(n) = floor(X/Y) where X = concatenation of first n odd numbers in increasing order and Y = n-th triangular number.

The programs for A067120, there is no canonical definition to state claims against.
-/

/-! ## A067120.P14916509129456902490

`floor(A019519(n+1)/A000217(n+1))`
-/

namespace A067120.P14916509129456902490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019519 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A067120.P14916509129456902490

/-!
# A067121: a(n) = floor[X/Y] where X = the concatenation of the first n even numbers in increasing order and Y = their sum.

The programs for A067121, there is no canonical definition to state claims against.
-/

/-! ## A067121.P1502368893927072943

`floor(A067119(n+1)/2)`
-/

namespace A067121.P1502368893927072943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067119 (n + 1) : ℚ) / 2⌋

end

end A067121.P1502368893927072943

/-! ## A067121.P15051352208093561583

`floor(floor(A019520(n+1)/∑[n+1])/2)`
-/

namespace A067121.P15051352208093561583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A019520 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ : ℚ) / 2⌋

end

end A067121.P15051352208093561583

/-!
# A067122: Floor[X/Y] where X = concatenation of first n odd numbers in increasing order (A019519) and Y = their sum (A000290 = n^2).

The programs for A067122, there is no canonical definition to state claims against.
-/

/-! ## A067122.P18393738604707573835

`floor(A019519(n+1)/(n+1)²)`
-/

namespace A067122.P18393738604707573835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019519 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A067122.P18393738604707573835

/-!
# A067123: Floor[X/Y] where X = concatenation of first n cubes in increasing order and Y = concatenation of first n squares.

The programs for A067123, there is no canonical definition to state claims against.
-/

/-! ## A067123.P9939114965119574936

`floor(A019522(n+1)/A019521(n+1))`
-/

namespace A067123.P9939114965119574936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℚ) / (A019521 (n + 1) : ℚ)⌋

end

end A067123.P9939114965119574936

/-! ## A067123.P15294879430767462519

`A327298(n)+A123895(A155610(n))`
-/

namespace A067123.P15294879430767462519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n + A123895 (A155610 n).toNat

end

end A067123.P15294879430767462519

/-!
# A067124: Floor [sqrt{concatenation of first n squares}].

The programs for A067124, there is no canonical definition to state claims against.
-/

/-! ## A067124.P10527714520799640197

`floor(sqrt(A019521(n+1)))`
-/

namespace A067124.P10527714520799640197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A019521 (n + 1))

end

end A067124.P10527714520799640197

/-!
# A067125: Floor(cube root(concatenation of first n cubes)).

The programs for A067125, there is no canonical definition to state claims against.
-/

/-! ## A067125.P9216791754972742548

`floor(root(A019522(n+1), 3))`
-/

namespace A067125.P9216791754972742548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019522 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A067125.P9216791754972742548

/-!
# A067126: Numbers for which phi(n) >= phi(k) for all k = 1 to n-1.

The programs for A067126, there is no canonical definition to state claims against.
-/

/-! ## A067126.P12174740170608434042

`filter[A066050(n+1), A324290(#)]`
-/

namespace A067126.P12174740170608434042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A067126.P12174740170608434042

/-! ## A067126.P9376834717432131808

`record[n%lcm(4, A020639(n+1))+1]`
-/

namespace A067126.P9376834717432131808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Int.lcm 4 (A020639 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067126.P9376834717432131808

/-! ## A067126.P6045601284700335881

`filter[A066050(n+1), A355937(#)]`
-/

namespace A067126.P6045601284700335881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A067126.P6045601284700335881

/-! ## A067126.P16957121375539110198

`filter[A066050(n+1), A373851(#)]`
-/

namespace A067126.P16957121375539110198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A067126.P16957121375539110198

/-! ## A067126.P8632458145002006416

`filter[A066050(n+1), A378442(#)]`
-/

namespace A067126.P8632458145002006416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A067126.P8632458145002006416

/-! ## A067126.P16584584386390185127

`filter[A387426(n+1), A355937(#)]`
-/

namespace A067126.P16584584386390185127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A067126.P16584584386390185127

/-! ## A067126.P439927466539769534

`∩[A066050(n+1), A222030(n)]`
-/

namespace A067126.P439927466539769534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067126.P439927466539769534

/-! ## A067126.P9786178955474058623

`∩[A066050(n+1), A081998(n)]`
-/

namespace A067126.P9786178955474058623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067126.P9786178955474058623

/-! ## A067126.P11425728962355041406

`∩[A326155(n+1), A081998(n)]`
-/

namespace A067126.P11425728962355041406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067126.P11425728962355041406

/-! ## A067126.P6001190716448454270

`∩[A387426(n+1), A081998(n)]`
-/

namespace A067126.P6001190716448454270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067126.P6001190716448454270

/-! ## A067126.P9856452507047089014

`filter[A066050(n+1), A091862(#)]`
-/

namespace A067126.P9856452507047089014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A067126.P9856452507047089014

/-! ## A067126.P9574179088502620882

`filter[A066050(n+1), A137794(#)]`
-/

namespace A067126.P9574179088502620882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A067126.P9574179088502620882

/-! ## A067126.P8466333147323278778

`filter[A066050(n+1), A325964(#)]`
-/

namespace A067126.P8466333147323278778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A067126.P8466333147323278778

/-! ## A067126.P7690887394787757449

`filter[A066050(n+1), A336546(#)]`
-/

namespace A067126.P7690887394787757449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336546 (f1 j).toNat = 1) n)

end

end A067126.P7690887394787757449

/-! ## A067126.P3777046954447307370

`filter[A066050(n+1), A336556(#)]`
-/

namespace A067126.P3777046954447307370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336556 (f1 j).toNat = 1) n)

end

end A067126.P3777046954447307370

/-! ## A067126.P15203196688485880837

`filter[A066050(n+1), A344880(#)]`
-/

namespace A067126.P15203196688485880837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A067126.P15203196688485880837

/-! ## A067126.P15850837688999346738

`filter[A066050(n+1), A344885(#)]`
-/

namespace A067126.P15850837688999346738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A067126.P15850837688999346738

/-! ## A067126.P17905736264806123485

`filter[A066050(n+1), A345064(#)]`
-/

namespace A067126.P17905736264806123485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A067126.P17905736264806123485

/-! ## A067126.P13550280049944443232

`filter[A066050(n+1), A345950(#)]`
-/

namespace A067126.P13550280049944443232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A067126.P13550280049944443232

/-! ## A067126.P12889735049835218742

`filter[A066050(n+1), A351564(#)]`
-/

namespace A067126.P12889735049835218742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A067126.P12889735049835218742

/-!
# A067128: 

The programs for A067128, there is no canonical definition to state claims against.
-/

/-! ## A067128.P3597373025941873495

`A034287(n+1)`
-/

namespace A067128.P3597373025941873495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1)

end

end A067128.P3597373025941873495

/-! ## A067128.P12351562710487408594

`record[A034287(A329048(n))]`
-/

namespace A067128.P12351562710487408594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067128.P12351562710487408594

/-! ## A067128.P16479503578600735245

`∪[A034288(n+1), A217660(n+1)]`
-/

namespace A067128.P16479503578600735245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P16479503578600735245

/-! ## A067128.P12636533013099215311

`∪[A036484(n), A291899(n+1)]`
-/

namespace A067128.P12636533013099215311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P12636533013099215311

/-! ## A067128.P5021783248424042930

`∪[A036493(n), A291899(n+1)]`
-/

namespace A067128.P5021783248424042930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P5021783248424042930

/-! ## A067128.P1908924505949696446

`∪[A002182(n+1), A291899(n+1)]`
-/

namespace A067128.P1908924505949696446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P1908924505949696446

/-! ## A067128.P568818384036947775

`∪[A004394(n+1), A291899(n+1)]`
-/

namespace A067128.P568818384036947775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P568818384036947775

/-! ## A067128.P6097029377016802821

`∪[A007352(n+1), A291899(n+1)]`
-/

namespace A067128.P6097029377016802821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P6097029377016802821

/-! ## A067128.P13500288569863718849

`∪[A019505(n+1), A291899(n+1)]`
-/

namespace A067128.P13500288569863718849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P13500288569863718849

/-! ## A067128.P14771480497233159281

`∪[A002182(n+1), A244353(n+1)]`
-/

namespace A067128.P14771480497233159281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P14771480497233159281

/-! ## A067128.P16450872442845292256

`∪[A140999(n+1), A244353(n+1)]`
-/

namespace A067128.P16450872442845292256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067128.P16450872442845292256

/-!
# A067129: Numbers k such that sigma(k-3) + sigma(k+3) = sigma(2*k).

The programs for A067129, there is no canonical definition to state claims against.
-/

/-! ## A067129.P7960170138922810551

`A256252(A113746(n+1))+A106390(n+1)`
-/

namespace A067129.P7960170138922810551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256252 (A113746 (n + 1)).toNat + A106390 (n + 1)

end

end A067129.P7960170138922810551

/-!
# A067130: Numbers k such that sigma(k-1) divides sigma(k+1).

The programs for A067130, there is no canonical definition to state claims against.
-/

/-! ## A067130.P10705165649444389355

`A343338(A285563(n))+A317708(2*n+1)`
-/

namespace A067130.P10705165649444389355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (A285563 n).toNat + A317708 (2 * n + 1)

end

end A067130.P10705165649444389355

/-!
# A067131: Number of elements in the largest set of divisors of n which are in arithmetic progression.

The programs for A067131, there is no canonical definition to state claims against.
-/

/-! ## A067131.P1309530813489020661

`A072273(A126795(n+1))+A055874(A165831(n+1))`
-/

namespace A067131.P1309530813489020661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A126795 (n + 1)).toNat + A055874 (A165831 (n + 1)).toNat

end

end A067131.P1309530813489020661

/-! ## A067131.P11046900007862144964

`A325636(A168027(n))+A072273(A126795(n+1))`
-/

namespace A067131.P11046900007862144964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (A168027 n).toNat + A072273 (A126795 (n + 1)).toNat

end

end A067131.P11046900007862144964

/-! ## A067131.P190332717149933208

`A055874(A348717(n+1)^A058306(n))`
-/

namespace A067131.P190332717149933208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (SequenceMachineLib.roundAway ((A348717 (n + 1) : ℚ) ^ (A058306 n : ℤ))).toNat

end

end A067131.P190332717149933208

/-! ## A067131.P10131648396529877932

`A055874(A348717(n+1)%A180408(n))`
-/

namespace A067131.P10131648396529877932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Int.tmod (A348717 (n + 1)) (A180408 n)).toNat

end

end A067131.P10131648396529877932

/-!
# A067132: Number of elements in the largest set of divisors of n which are in geometric progression.

The programs for A067132, the canonical program `A067132.P2149404699775634079` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067132 has offset 1).

The definition of A067132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067132.P2149404699775634079

`A051903(n+1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067132

/-- `A051903(n+1)+1` -/
def P2149404699775634079.Spec : Prop :=
  ∀ n, P2149404699775634079.a n = A067132 (n + 1)

theorem P2149404699775634079.correct : P2149404699775634079.Spec := by
  intro n
  simp only [A067132, Nat.add_sub_cancel]

end A067132

/-! ## A067132.P9878682409367252642

`a((n+1)/∏{p}[n+1, #]-1)+1` with `a(0)=1`
-/

namespace A067132.P9878682409367252642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1

end

end A067132.P9878682409367252642

namespace A067132

/-- `a((n+1)/∏{p}[n+1, #]-1)+1` -/
def P9878682409367252642.Spec : Prop :=
  ∀ n, (P9878682409367252642.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P2685746880293436854

`val(A046523(n+1), 2)+1`
-/

namespace A067132.P2685746880293436854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 + 1

end

end A067132.P2685746880293436854

namespace A067132

/-- `val(A046523(n+1), 2)+1` -/
def P2685746880293436854.Spec : Prop :=
  ∀ n, (P2685746880293436854.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P4427442939265015738

`val(A328400(n+1), 2)+1`
-/

namespace A067132.P4427442939265015738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2 + 1

end

end A067132.P4427442939265015738

namespace A067132

/-- `val(A328400(n+1), 2)+1` -/
def P4427442939265015738.Spec : Prop :=
  ∀ n, (P4427442939265015738.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P16138783762170018062

`val(A278254(n+1), 4)+1`
-/

namespace A067132.P16138783762170018062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 + 1

end

end A067132.P16138783762170018062

namespace A067132

/-- `val(A278254(n+1), 4)+1` -/
def P16138783762170018062.Spec : Prop :=
  ∀ n, (P16138783762170018062.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P7057548959077799108

`a(A336551(n+1))+1` with `a(0)=1`
-/

namespace A067132.P7057548959077799108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A336551 (n + 1)).toNat + 1

end

end A067132.P7057548959077799108

namespace A067132

/-- `a(A336551(n+1))+1` -/
def P7057548959077799108.Spec : Prop :=
  ∀ n, (P7057548959077799108.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P7519820301635615300

`∑{e}[A238745(n+1), #]+1`
-/

namespace A067132.P7519820301635615300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A067132.P7519820301635615300

namespace A067132

/-- `∑{e}[A238745(n+1), #]+1` -/
def P7519820301635615300.Spec : Prop :=
  ∀ n, (P7519820301635615300.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P9311798249922613074

`a(A003557(n+1)-1)+1` with `a(0)=1`
-/

namespace A067132.P9311798249922613074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003557 (n + 1) - 1).toNat + 1

end

end A067132.P9311798249922613074

namespace A067132

/-- `a(A003557(n+1)-1)+1` -/
def P9311798249922613074.Spec : Prop :=
  ∀ n, (P9311798249922613074.a n : ℤ) = A067132 (n + 1)

end A067132

/-! ## A067132.P11293205376387173570

`A188385(n+1)/(n+1)+1`
-/

namespace A067132.P11293205376387173570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188385 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A067132.P11293205376387173570

namespace A067132

/-- `A188385(n+1)/(n+1)+1` -/
def P11293205376387173570.Spec : Prop :=
  ∀ n, P11293205376387173570.a n = (A067132 (n + 1) : ℚ)

end A067132

/-! ## A067132.P18360029910761014431

`A001511(A046523(1+n))`
-/

namespace A067132.P18360029910761014431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A046523 (1 + n)).toNat

end

end A067132.P18360029910761014431

namespace A067132

/-- `A001511(A046523(1+n))` -/
def P18360029910761014431.Spec : Prop :=
  ∀ n, P18360029910761014431.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P12781538476203818837

`A005555(A051903(n+1))`
-/

namespace A067132.P12781538476203818837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A051903 (n + 1)).toNat

end

end A067132.P12781538476203818837

namespace A067132

/-- `A005555(A051903(n+1))` -/
def P12781538476203818837.Spec : Prop :=
  ∀ n, P12781538476203818837.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P3758738336944457654

`A001511(A328400(n+1))`
-/

namespace A067132.P3758738336944457654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A328400 (n + 1)).toNat

end

end A067132.P3758738336944457654

namespace A067132

/-- `A001511(A328400(n+1))` -/
def P3758738336944457654.Spec : Prop :=
  ∀ n, P3758738336944457654.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P18106882413017737368

`A070941(A297404(n+1))`
-/

namespace A067132.P18106882413017737368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A297404 (n + 1)).toNat

end

end A067132.P18106882413017737368

namespace A067132

/-- `A070941(A297404(n+1))` -/
def P18106882413017737368.Spec : Prop :=
  ∀ n, P18106882413017737368.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P10569962779091818364

`A007814(A046523(n+1))+1`
-/

namespace A067132.P10569962779091818364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat + 1

end

end A067132.P10569962779091818364

namespace A067132

/-- `A007814(A046523(n+1))+1` -/
def P10569962779091818364.Spec : Prop :=
  ∀ n, P10569962779091818364.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P9090667912243707778

`A051282(A101296(n+1))+1`
-/

namespace A067132.P9090667912243707778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A101296 (n + 1)).toNat + 1

end

end A067132.P9090667912243707778

namespace A067132

/-- `A051282(A101296(n+1))+1` -/
def P9090667912243707778.Spec : Prop :=
  ∀ n, P9090667912243707778.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P6175021931889029082

`A067029(A089247(n+1))+1`
-/

namespace A067132.P6175021931889029082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A089247 (n + 1)).toNat + 1

end

end A067132.P6175021931889029082

namespace A067132

/-- `A067029(A089247(n+1))+1` -/
def P6175021931889029082.Spec : Prop :=
  ∀ n, P6175021931889029082.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P1658911939198150524

`A001222(A238745(n+1))+1`
-/

namespace A067132.P1658911939198150524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat + 1

end

end A067132.P1658911939198150524

namespace A067132

/-- `A001222(A238745(n+1))+1` -/
def P1658911939198150524.Spec : Prop :=
  ∀ n, P1658911939198150524.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P1921309180186381769

`A061395(A181819(n+1))+1`
-/

namespace A067132.P1921309180186381769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (n + 1)).toNat + 1

end

end A067132.P1921309180186381769

namespace A067132

/-- `A061395(A181819(n+1))+1` -/
def P1921309180186381769.Spec : Prop :=
  ∀ n, P1921309180186381769.a n = A067132 (n + 1)

end A067132

/-! ## A067132.P10479012423067520044

`A061395(A329601(n+1))+1`
-/

namespace A067132.P10479012423067520044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A329601 (n + 1)).toNat + 1

end

end A067132.P10479012423067520044

namespace A067132

/-- `A061395(A329601(n+1))+1` -/
def P10479012423067520044.Spec : Prop :=
  ∀ n, P10479012423067520044.a n = A067132 (n + 1)

end A067132

/-!
# A067133: n is a term if the phi(n) numbers in [0,n-1] and coprime to n form an arithmetic progression.

The programs for A067133, the canonical program `A067133.P3784150760399719741` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067133 has offset 1).

The definition of A067133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067133.P14058594125907458360

`∪[A000079(n), A116974(n+1)]`
-/

namespace A067133.P14058594125907458360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067133.P14058594125907458360

namespace A067133

/-- `∪[A000079(n), A116974(n+1)]` -/
def P14058594125907458360.Spec : Prop :=
  ∀ n, (P14058594125907458360.a n : ℤ) = A067133 (n + 1)

end A067133

/-! ## A067133.P14406596897920856715

`filter[A133810(n+1), A365716(#)]`
-/

namespace A067133.P14406596897920856715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A067133.P14406596897920856715

namespace A067133

/-- `filter[A133810(n+1), A365716(#)]` -/
def P14406596897920856715.Spec : Prop :=
  ∀ n, P14406596897920856715.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P5013611178395275544

`filter[A225657(n+1), A365716(#)]`
-/

namespace A067133.P5013611178395275544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A067133.P5013611178395275544

namespace A067133

/-- `filter[A225657(n+1), A365716(#)]` -/
def P5013611178395275544.Spec : Prop :=
  ∀ n, P5013611178395275544.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P5399585238802166766

`filter[A242417(n+1), A365716(#)]`
-/

namespace A067133.P5399585238802166766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A067133.P5399585238802166766

namespace A067133

/-- `filter[A242417(n+1), A365716(#)]` -/
def P5399585238802166766.Spec : Prop :=
  ∀ n, P5399585238802166766.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P5645296204167051451

`filter[A133810(n+1), A340371(#)]`
-/

namespace A067133.P5645296204167051451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A067133.P5645296204167051451

namespace A067133

/-- `filter[A133810(n+1), A340371(#)]` -/
def P5645296204167051451.Spec : Prop :=
  ∀ n, P5645296204167051451.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P6462900575917708309

`filter[A225657(n+1), A340371(#)]`
-/

namespace A067133.P6462900575917708309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A067133.P6462900575917708309

namespace A067133

/-- `filter[A225657(n+1), A340371(#)]` -/
def P6462900575917708309.Spec : Prop :=
  ∀ n, P6462900575917708309.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P2799786242105958337

`filter[A225657(n+1), A353627(#)]`
-/

namespace A067133.P2799786242105958337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A067133.P2799786242105958337

namespace A067133

/-- `filter[A225657(n+1), A353627(#)]` -/
def P2799786242105958337.Spec : Prop :=
  ∀ n, P2799786242105958337.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P16076526379192594486

`filter[A242417(n+1), A340371(#)]`
-/

namespace A067133.P16076526379192594486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A067133.P16076526379192594486

namespace A067133

/-- `filter[A242417(n+1), A340371(#)]` -/
def P16076526379192594486.Spec : Prop :=
  ∀ n, P16076526379192594486.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P15403178748127659482

`filter[A167211(n+1), A354923(#)]`
-/

namespace A067133.P15403178748127659482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A067133.P15403178748127659482

namespace A067133

/-- `filter[A167211(n+1), A354923(#)]` -/
def P15403178748127659482.Spec : Prop :=
  ∀ n, P15403178748127659482.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P12549798781698432458

`filter[A167211(n+1), A354924(#)]`
-/

namespace A067133.P12549798781698432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A067133.P12549798781698432458

namespace A067133

/-- `filter[A167211(n+1), A354924(#)]` -/
def P12549798781698432458.Spec : Prop :=
  ∀ n, P12549798781698432458.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P16063790633134414536

`∩[A141807(n+1), A167211(n+1)]`
-/

namespace A067133.P16063790633134414536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067133.P16063790633134414536

namespace A067133

/-- `∩[A141807(n+1), A167211(n+1)]` -/
def P16063790633134414536.Spec : Prop :=
  ∀ n, (P16063790633134414536.a n : ℤ) = A067133 (n + 1)

end A067133

/-! ## A067133.P3784150760399719741

`lt[and(n, n+1)-3, A006530(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A067133

/-- `lt[and(n, n+1)-3, A006530(n+1)]+1` -/
def P3784150760399719741.Spec : Prop :=
  ∀ n, (P3784150760399719741.a n : ℤ) = A067133 (n + 1)

theorem P3784150760399719741.correct : P3784150760399719741.Spec := by
  intro n
  simp only [A067133, Nat.add_sub_cancel]

end A067133

/-! ## A067133.P9861121019831606216

`filter[A342081(n+1), A137794(#)]`
-/

namespace A067133.P9861121019831606216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A067133.P9861121019831606216

namespace A067133

/-- `filter[A342081(n+1), A137794(#)]` -/
def P9861121019831606216.Spec : Prop :=
  ∀ n, P9861121019831606216.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P9431189488607008810

`filter[A377929(n+1), A354923(#)]`
-/

namespace A067133.P9431189488607008810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A067133.P9431189488607008810

namespace A067133

/-- `filter[A377929(n+1), A354923(#)]` -/
def P9431189488607008810.Spec : Prop :=
  ∀ n, P9431189488607008810.a n = A067133 (n + 1)

end A067133

/-! ## A067133.P14853573782034967423

`lt[∑{p}[2*n, n-1-#], n]`
-/

namespace A067133.P14853573782034967423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1 - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A067133.P14853573782034967423

namespace A067133

/-- `lt[∑{p}[2*n, n-1-#], n]` -/
def P14853573782034967423.Spec : Prop :=
  ∀ n, (P14853573782034967423.a n : ℤ) = A067133 (n + 1)

end A067133

/-! ## A067133.P2448475732176188773

`lt[∏{p}[2*n, n-2-#], n]`
-/

namespace A067133.P2448475732176188773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 2 - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A067133.P2448475732176188773

namespace A067133

/-- `lt[∏{p}[2*n, n-2-#], n]` -/
def P2448475732176188773.Spec : Prop :=
  ∀ n, (P2448475732176188773.a n : ℤ) = A067133 (n + 1)

end A067133

/-! ## A067133.P13204876247572182061

`lt[∏{e}[2*n, #*(n-2)], n²]`
-/

namespace A067133.P13204876247572182061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p : ℤ) * ((n : ℤ) - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A067133.P13204876247572182061

namespace A067133

/-- `lt[∏{e}[2*n, #*(n-2)], n²]` -/
def P13204876247572182061.Spec : Prop :=
  ∀ n, (P13204876247572182061.a n : ℤ) = A067133 (n + 1)

end A067133

/-! ## A067133.P18088256145088457057

`record[n/a(A061498(n))]` with `a(0)=1`
-/

namespace A067133.P18088256145088457057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A061498 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067133.P18088256145088457057

namespace A067133

/-- `record[n/a(A061498(n))]` -/
def P18088256145088457057.Spec : Prop :=
  ∀ n, P18088256145088457057.a n = (A067133 (n + 1) : ℚ)

end A067133

/-!
# A067134: Numbers n such that sigma(n+1) = 2*sigma(n-1).

The programs for A067134, there is no canonical definition to state claims against.
-/

/-! ## A067134.P11523364657352281822

`A175876(n+1)+1`
-/

namespace A067134.P11523364657352281822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175876 (n + 1) + 1

end

end A067134.P11523364657352281822

/-!
# A067136: Number of Young tableaux with n cells whose shape is symmetric.

The programs for A067136, there is no canonical definition to state claims against.
-/

/-! ## A067136.P14121184049674348083

`A000085(n)-2*A067142(n)`
-/

namespace A067136.P14121184049674348083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - 2 * A067142 n

end

end A067136.P14121184049674348083

/-! ## A067136.P2578919617773729439

`A000085(n)-A330645(n)`
-/

namespace A067136.P2578919617773729439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A330645 n

end

end A067136.P2578919617773729439

/-! ## A067136.P10642041075345612345

`A099020(∑[n])-A330645(n)`
-/

namespace A067136.P10642041075345612345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A330645 n

end

end A067136.P10642041075345612345

/-! ## A067136.P9768471396680799303

`A182222(∑[n])-A330645(n)`
-/

namespace A067136.P9768471396680799303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j) - A330645 n

end

end A067136.P9768471396680799303

/-! ## A067136.P9425449785647288196

`A239144(∑[n])-A330645(n)`
-/

namespace A067136.P9425449785647288196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 (∑ j ∈ Finset.range (n + 1), f1 j) - A330645 n

end

end A067136.P9425449785647288196

/-!
# A067138: OR-numbral multiplication table, read by antidiagonals.

The programs for A067138, there is no canonical definition to state claims against.
-/

/-! ## A067138.P13115980753859638726

`A330709(A082043(n)+A048720(n))`
-/

namespace A067138.P13115980753859638726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A082043 n + A048720 n).toNat

end

end A067138.P13115980753859638726

/-! ## A067138.P4179647851687141098

`A048720(n)+A001221(A061858(n)!)`
-/

namespace A067138.P4179647851687141098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 n + A001221 (Nat.factorial (A061858 n).toNat)

end

end A067138.P4179647851687141098

/-! ## A067138.P1749414380002433153

`A004247(n)-A001221(A061858(n)!)`
-/

namespace A067138.P1749414380002433153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - A001221 (Nat.factorial (A061858 n).toNat)

end

end A067138.P1749414380002433153

/-! ## A067138.P15897402176271076703

`A048720(n)+ceil(A001222(A061858(n)!)/3)`
-/

namespace A067138.P15897402176271076703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 n + ⌈(A001222 (Nat.factorial (A061858 n).toNat) : ℚ) / 3⌉

end

end A067138.P15897402176271076703

/-! ## A067138.P17083267513910897458

`(A066620(A036561(n))+A048720(n))/2`
-/

namespace A067138.P17083267513910897458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066620 (A036561 n).toNat + A048720 n : ℚ) / 2

end

end A067138.P17083267513910897458

/-!
# A067139: Irreducible elements in OR-numbral arithmetic.

The programs for A067139, there is no canonical definition to state claims against.
-/

/-! ## A067139.P15380502577868947324

`lt[A066376(n+1), 2]+1`
-/

namespace A067139.P15380502577868947324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067139.P15380502577868947324

/-! ## A067139.P3378854665604665026

`eq[1, A000010(A067399(n+1))]+1`
-/

namespace A067139.P3378854665604665026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067139.P3378854665604665026

/-! ## A067139.P1632676275779857908

`eq[A057427(n), A066376(n+1)]+1`
-/

namespace A067139.P1632676275779857908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067139.P1632676275779857908

/-! ## A067139.P330315827158007541

`record[(n+1)/A185322(A067399(n+1)+2)]`
-/

namespace A067139.P330315827158007541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A185322 (A067399 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067139.P330315827158007541

/-! ## A067139.P18242605496197487990

`record[(n+1)/A066376(n+1)^A338732(n+1)]`
-/

namespace A067139.P18242605496197487990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066376 (n + 1) : ℚ) ^ (A338732 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067139.P18242605496197487990

/-! ## A067139.P668932499764704622

`eq[A066376(n+1), A178334(A178334(n))]+1`
-/

namespace A067139.P668932499764704622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067139.P668932499764704622

/-!
# A067142: One half of the number of Young tableaux with n cells whose shape is asymmetric.

The programs for A067142, there is no canonical definition to state claims against.
-/

/-! ## A067142.P15587488603189461327

`(A000085(n)-A067136(n))/2`
-/

namespace A067142.P15587488603189461327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n - A067136 n : ℚ) / 2

end

end A067142.P15587488603189461327

/-! ## A067142.P13596069732031584910

`A330645(n)/2`
-/

namespace A067142.P13596069732031584910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330645 n : ℚ) / 2

end

end A067142.P13596069732031584910

/-! ## A067142.P14331507393794657102

`(A099020(∑[n])-A067136(n))/2`
-/

namespace A067142.P14331507393794657102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n : ℚ) / 2

end

end A067142.P14331507393794657102

/-! ## A067142.P8614902509242713252

`(A182222(∑[n])-A067136(n))/2`
-/

namespace A067142.P8614902509242713252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182222 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n : ℚ) / 2

end

end A067142.P8614902509242713252

/-! ## A067142.P7893759260952269573

`(A239144(∑[n])-A067136(n))/2`
-/

namespace A067142.P7893759260952269573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239144 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n : ℚ) / 2

end

end A067142.P7893759260952269573

/-!
# A067143: Numbers n such that phi(n+1) = 3*phi(n).

The programs for A067143, there is no canonical definition to state claims against.
-/

/-! ## A067143.P5524854861404728

`A266268(n+1)-1`
-/

namespace A067143.P5524854861404728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266268 (n + 1) - 1

end

end A067143.P5524854861404728

/-! ## A067143.P14060478647128339618

`xor(1, A266268(A000027(n+1)))`
-/

namespace A067143.P14060478647128339618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A266268 (A000027 (n + 1)).toNat)

end

end A067143.P14060478647128339618

/-! ## A067143.P6822929992943599930

`xor(char[A247143(n)], A266268(n+1))`
-/

namespace A067143.P6822929992943599930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247143 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266268 (n + 1))

end

end A067143.P6822929992943599930

/-! ## A067143.P3318846074763979197

`xor(char[A342217(n)], A266268(n+1))`
-/

namespace A067143.P3318846074763979197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266268 (n + 1))

end

end A067143.P3318846074763979197

/-! ## A067143.P17201020524337665393

`xor(gcd(5, A140513(n)), A266268(n+1))`
-/

namespace A067143.P17201020524337665393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.gcd 5 (A140513 n) : ℤ) (A266268 (n + 1))

end

end A067143.P17201020524337665393

/-! ## A067143.P5114664675191556913

`xor(A007318(A000217(n)), A266268(n+1))`
-/

namespace A067143.P5114664675191556913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A266268 (n + 1))

end

end A067143.P5114664675191556913

/-!
# A067144: Numbers k such that sigma(phi(k)) == 0 (mod k).

The programs for A067144, there is no canonical definition to state claims against.
-/

/-! ## A067144.P513908892408431423

`A283971(A018784(n+1))`
-/

namespace A067144.P513908892408431423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A018784 (n + 1)).toNat

end

end A067144.P513908892408431423

/-! ## A067144.P6571724497425985594

`A283971(∑{d}[A001229(n+1), #])`
-/

namespace A067144.P6571724497425985594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A067144.P6571724497425985594

/-! ## A067144.P14184163553581310761

`A283971(∑{d}[floor(A266165(n+1)/2), #])`
-/

namespace A067144.P14184163553581310761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266165 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A067144.P14184163553581310761

/-!
# A067146: Shifts left under exponential reversion.

The programs for A067146, there is no canonical definition to state claims against.
-/

/-! ## A067146.P15398136965477202284

`xor(A337108(A001142(n)), A355768(n))`
-/

namespace A067146.P15398136965477202284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A337108 (A001142 n).toNat) (A355768 n)

end

end A067146.P15398136965477202284

/-!
# A067147: Triangle of coefficients for expressing x^n in terms of Hermite polynomials.

The programs for A067147, the canonical program `A067147.P5733309145928527977` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067147 has offset 0).

The definition of A067147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067147.P1630218277969163736

`A066325(n)*A116949(n)`
-/

namespace A067147.P1630218277969163736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A116949 n

end

end A067147.P1630218277969163736

namespace A067147

/-- `A066325(n)*A116949(n)` -/
def P1630218277969163736.Spec : Prop :=
  ∀ n, P1630218277969163736.a n = A067147 n

end A067147

/-! ## A067147.P1908931970931156927

`A099174(n)*A156663(n)`
-/

namespace A067147.P1908931970931156927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A156663 n

end

end A067147.P1908931970931156927

namespace A067147

/-- `A099174(n)*A156663(n)` -/
def P1908931970931156927.Spec : Prop :=
  ∀ n, P1908931970931156927.a n = A067147 n

end A067147

/-! ## A067147.P5733309145928527977

`A061554(n)*A242653(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A067147

/-- `A061554(n)*A242653(n)` -/
def P5733309145928527977.Spec : Prop :=
  ∀ n, P5733309145928527977.a n = A067147 n

theorem P5733309145928527977.correct : P5733309145928527977.Spec := by
  intro n
  simp only [A067147]

end A067147

/-! ## A067147.P14048111557241225633

`A108044(n)*A242653(n)`
-/

namespace A067147.P14048111557241225633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A242653 n

end

end A067147.P14048111557241225633

namespace A067147

/-- `A108044(n)*A242653(n)` -/
def P14048111557241225633.Spec : Prop :=
  ∀ n, P14048111557241225633.a n = A067147 n

end A067147

/-! ## A067147.P7721001412741913788

`abs(A066325(n))*sqrt(A130321(n))`
-/

namespace A067147.P7721001412741913788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|A066325 n| : ℝ) * Real.sqrt (A130321 n : ℝ)

end

end A067147.P7721001412741913788

namespace A067147

/-- `abs(A066325(n))*sqrt(A130321(n))` -/
def P7721001412741913788.Spec : Prop :=
  ∀ n, P7721001412741913788.a n = (A067147 n : ℝ)

end A067147

/-! ## A067147.P10941435133312103310

`A072346(A025581(n))*A109187(n)`
-/

namespace A067147.P10941435133312103310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (A025581 n).toNat * A109187 n

end

end A067147.P10941435133312103310

namespace A067147

/-- `A072346(A025581(n))*A109187(n)` -/
def P10941435133312103310.Spec : Prop :=
  ∀ n, P10941435133312103310.a n = A067147 n

end A067147

/-! ## A067147.P13181323669319873932

`abs(A112227(n))`
-/

namespace A067147.P13181323669319873932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112227 n|

end

end A067147.P13181323669319873932

namespace A067147

/-- `abs(A112227(n))` -/
def P13181323669319873932.Spec : Prop :=
  ∀ n, P13181323669319873932.a n = A067147 n

end A067147

/-! ## A067147.P5646012178084226411

`A112227(n)*A117568(n)`
-/

namespace A067147.P5646012178084226411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 n * A117568 n

end

end A067147.P5646012178084226411

namespace A067147

/-- `A112227(n)*A117568(n)` -/
def P5646012178084226411.Spec : Prop :=
  ∀ n, P5646012178084226411.a n = A067147 n

end A067147

/-! ## A067147.P13429006660619703894

`A112227(n)*A369736(n)`
-/

namespace A067147.P13429006660619703894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 n * A369736 n

end

end A067147.P13429006660619703894

namespace A067147

/-- `A112227(n)*A369736(n)` -/
def P13429006660619703894.Spec : Prop :=
  ∀ n, P13429006660619703894.a n = A067147 n

end A067147

/-! ## A067147.P608759475815526988

`gcd(A000038(n), A112227(n))`
-/

namespace A067147.P608759475815526988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112227 n)

end

end A067147.P608759475815526988

namespace A067147

/-- `gcd(A000038(n), A112227(n))` -/
def P608759475815526988.Spec : Prop :=
  ∀ n, (P608759475815526988.a n : ℤ) = A067147 n

end A067147

/-! ## A067147.P14074733632626445887

`lcm(A007318(n), A112227(n))`
-/

namespace A067147.P14074733632626445887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A112227 n)

end

end A067147.P14074733632626445887

namespace A067147

/-- `lcm(A007318(n), A112227(n))` -/
def P14074733632626445887.Spec : Prop :=
  ∀ n, (P14074733632626445887.a n : ℤ) = A067147 n

end A067147

/-! ## A067147.P5335616207718122600

`A112227(n)*A130194(n+1)`
-/

namespace A067147.P5335616207718122600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 n * A130194 (n + 1)

end

end A067147.P5335616207718122600

namespace A067147

/-- `A112227(n)*A130194(n+1)` -/
def P5335616207718122600.Spec : Prop :=
  ∀ n, P5335616207718122600.a n = A067147 n

end A067147

/-! ## A067147.P18002494609322826429

`abs(A060821(n)/A059268(n))`
-/

namespace A067147.P18002494609322826429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A060821 n : ℚ) / (A059268 n : ℚ)|

end

end A067147.P18002494609322826429

namespace A067147

/-- `abs(A060821(n)/A059268(n))` -/
def P18002494609322826429.Spec : Prop :=
  ∀ n, P18002494609322826429.a n = (A067147 n : ℚ)

end A067147

/-! ## A067147.P7002323136851315351

`sqrt(A094587(n))*sqrt(A109187(n))`
-/

namespace A067147.P7002323136851315351
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A094587 n : ℝ) * Real.sqrt (A109187 n : ℝ)

end

end A067147.P7002323136851315351

namespace A067147

/-- `sqrt(A094587(n))*sqrt(A109187(n))` -/
def P7002323136851315351.Spec : Prop :=
  ∀ n, P7002323136851315351.a n = (A067147 n : ℝ)

end A067147

/-! ## A067147.P538803339422899989

`sqrt(A094587(n)*A109187(n))`
-/

namespace A067147.P538803339422899989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A094587 n * A109187 n : ℝ)

end

end A067147.P538803339422899989

namespace A067147

/-- `sqrt(A094587(n)*A109187(n))` -/
def P538803339422899989.Spec : Prop :=
  ∀ n, P538803339422899989.a n = (A067147 n : ℝ)

end A067147

/-!
# A067148: Fibonacci-like sequences. a(n) is the number of pairs of integers (n,i), 02, of a sequence {b(k)} satisfying b(1)=1, b(2)>0 and b(k)=b(k-1)+b(k-2) for all k>2.

The programs for A067148, there is no canonical definition to state claims against.
-/

/-! ## A067148.P17311745295800198852

`A340862(C(2, n)+1+n)-1`
-/

namespace A067148.P17311745295800198852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (Nat.choose 2 n + 1 + n) - 1

end

end A067148.P17311745295800198852

/-! ## A067148.P15835189770541286591

`A340862(char[1-n²]+1+n)-1`
-/

namespace A067148.P15835189770541286591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n) - 1

end

end A067148.P15835189770541286591

/-! ## A067148.P2984158533172533522

`dr(A340862(n+1)-A157928(n))`
-/

namespace A067148.P2984158533172533522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A340862 (n + 1) - A157928 n)

end

end A067148.P2984158533172533522

/-! ## A067148.P9567648876314626275

`A071625(A000005(2^floor(log2(n+1))+n)!)`
-/

namespace A067148.P9567648876314626275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Nat.factorial (A000005 (2 ^ Nat.log 2 (n + 1) + n)).toNat)

end

end A067148.P9567648876314626275

/-! ## A067148.P2571696676976887004

`A045778(2^floor(log2(n+1))+n)%A220406(3*n+2)`
-/

namespace A067148.P2571696676976887004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045778 (2 ^ Nat.log 2 (n + 1) + n)) (A220406 (3 * n + 2))

end

end A067148.P2571696676976887004

/-!
# A067149: Indices of records of A067148.

The programs for A067149, there is no canonical definition to state claims against.
-/

/-! ## A067149.P16562775023541115082

`A343379(A094373(n))+A160461(n)`
-/

namespace A067149.P16562775023541115082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 (A094373 n).toNat + A160461 n

end

end A067149.P16562775023541115082

/-! ## A067149.P13324889581914690540

`A159477(A000301(n)-A014283(n))`
-/

namespace A067149.P13324889581914690540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000301 n - A014283 n).toNat

end

end A067149.P13324889581914690540

/-! ## A067149.P8596289896322835032

`record[A006530(A129161(n+1)*A316289(n+1))]`
-/

namespace A067149.P8596289896322835032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129161 (n + 1) * A316289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067149.P8596289896322835032

/-!
# A067150: Number of integers i=1,2,...,n such that (n,i) has Property F3*, i.e., i and n are consecutive terms of a sequence b(k) satisfying b(1)=1, b(n) = (b(n-1) OR 2*b(n-1)) + b(n-2), where the OR is taken bitwise.

The programs for A067150, there is no canonical definition to state claims against.
-/

/-! ## A067150.P16123547519849077263

`A245196(lcm(A004277(n), A096993(n+1)))`
-/

namespace A067150.P16123547519849077263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (Int.lcm (A004277 n) (A096993 (n + 1)))

end

end A067150.P16123547519849077263

/-! ## A067150.P3953104995140146835

`A245196(A329504(3*(n+1)))+A245196(A008574(n))`
-/

namespace A067150.P3953104995140146835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (A329504 (3 * (n + 1))).toNat + A245196 (A008574 n).toNat

end

end A067150.P3953104995140146835

/-! ## A067150.P7140537896486138616

`A086013((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A266470(n+1))`
-/

namespace A067150.P7140537896486138616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) * (A266470 (n + 1) : ℚ))).toNat

end

end A067150.P7140537896486138616

/-! ## A067150.P15251363579376122544

`A333487(A347621(n)+A026741(n))`
-/

namespace A067150.P15251363579376122544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A347621 n + A026741 n).toNat

end

end A067150.P15251363579376122544

/-! ## A067150.P11764441092173895375

`A245196(A028310(n*A223135(n)))`
-/

namespace A067150.P11764441092173895375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (A028310 ((n : ℤ) * A223135 n).toNat).toNat

end

end A067150.P11764441092173895375

/-!
# A067151: Number of regions in regular n-gon which are quadrilaterals (4-gons) when all its diagonals are drawn.

The programs for A067151, there is no canonical definition to state claims against.
-/

/-! ## A067151.P447562828526418225

`A331451(∑[n+1]+4)`
-/

namespace A067151.P447562828526418225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A067151.P447562828526418225

/-! ## A067151.P11081095034482556328

`A020705(n)*A054025(∏[A214078(n)])`
-/

namespace A067151.P11081095034482556328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n * A054025 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067151.P11081095034482556328

/-! ## A067151.P944114102069254534

`A262528(A000041(n))*A287961(n+1)`
-/

namespace A067151.P944114102069254534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262528 (A000041 n).toNat * A287961 (n + 1)

end

end A067151.P944114102069254534

/-!
# A067152: Number of pentagonal regions in regular n-gon with all diagonals drawn.

The programs for A067152, there is no canonical definition to state claims against.
-/

/-! ## A067152.P13796552331429039588

`A331451(∑[n+2]+6)`
-/

namespace A067152.P13796552331429039588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A067152.P13796552331429039588

/-!
# A067153: Number of hexagonal regions in regular n-gon with all diagonals drawn.

The programs for A067153, there is no canonical definition to state claims against.
-/

/-! ## A067153.P11442607514594643876

`A331451(A166136(n+2))`
-/

namespace A067153.P11442607514594643876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A166136 (n + 2)).toNat

end

end A067153.P11442607514594643876

/-! ## A067153.P12635477677717681640

`A331451(A141214(n)+9)`
-/

namespace A067153.P12635477677717681640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A141214 n + 9).toNat

end

end A067153.P12635477677717681640

/-! ## A067153.P1486813978570596381

`A331451(A052905(n)+11)`
-/

namespace A067153.P1486813978570596381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A052905 n + 11).toNat

end

end A067153.P1486813978570596381

/-! ## A067153.P607427902822761443

`A331451(A055999(n)+12)`
-/

namespace A067153.P607427902822761443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A055999 n + 12).toNat

end

end A067153.P607427902822761443

/-! ## A067153.P14838976278164505193

`A331451(A167499(n+2)+1)`
-/

namespace A067153.P14838976278164505193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A167499 (n + 2) + 1).toNat

end

end A067153.P14838976278164505193

/-!
# A067155: Number of octagonal regions in regular n-gon with all diagonals drawn.

The programs for A067155, there is no canonical definition to state claims against.
-/

/-! ## A067155.P439527991541867601

`A261079(n+1)*A289506(A005010(n))`
-/

namespace A067155.P439527991541867601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) * A289506 (A005010 n).toNat

end

end A067155.P439527991541867601

/-! ## A067155.P12702682988397980958

`A006530(A000581(n+8))*A261079(n+1)`
-/

namespace A067155.P12702682988397980958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000581 (n + 8)).toNat * A261079 (n + 1)

end

end A067155.P12702682988397980958

/-! ## A067155.P17393594144070354840

`A219480(A382898(n+2))`
-/

namespace A067155.P17393594144070354840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219480 (A382898 (n + 2)).toNat

end

end A067155.P17393594144070354840

/-! ## A067155.P3960226421059946779

`A029931(A130556(n+1)*A236379(n))`
-/

namespace A067155.P3960226421059946779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A130556 (n + 1) * A236379 n).toNat

end

end A067155.P3960226421059946779

/-! ## A067155.P15350074123638498063

`A345167(A049445(n+1)^A365917(n))`
-/

namespace A067155.P15350074123638498063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (SequenceMachineLib.roundAway ((A049445 (n + 1) : ℚ) ^ (A365917 n : ℤ))).toNat

end

end A067155.P15350074123638498063

/-!
# A067156: Number of regions in regular n-gon which are 9-gons.

The programs for A067156, there is no canonical definition to state claims against.
-/

/-! ## A067156.P4807939525751831652

`A046770(gcd(n, A036594(n)))`
-/

namespace A067156.P4807939525751831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (Int.gcd (n : ℤ) (A036594 n))

end

end A067156.P4807939525751831652

/-! ## A067156.P14638342290970886422

`C(A356606(n), A157705(n))`
-/

namespace A067156.P14638342290970886422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356606 n).toNat (A157705 n).toNat

end

end A067156.P14638342290970886422

/-! ## A067156.P12266130243520561968

`C(A113685(3*n+2), A106614(n)+1)`
-/

namespace A067156.P12266130243520561968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113685 (3 * n + 2)).toNat (A106614 n + 1).toNat

end

end A067156.P12266130243520561968

/-! ## A067156.P16773945700542644751

`C(A112798(n+4), A355043(∏{p}[n+1, #]))`
-/

namespace A067156.P16773945700542644751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112798 (n + 4)).toNat (A355043 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A067156.P16773945700542644751

/-! ## A067156.P15017772839300600960

`A081520(n+1)*A186719(A231271(n+1))`
-/

namespace A067156.P15017772839300600960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081520 (n + 1) * A186719 (A231271 (n + 1)).toNat

end

end A067156.P15017772839300600960

/-!
# A067157: Number of regions in regular n-gon which are 10-gons.

The programs for A067157, there is no canonical definition to state claims against.
-/

/-! ## A067157.P9777387268231353959

`A185284(A340787(n+1))*A340779(n+1)`
-/

namespace A067157.P9777387268231353959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A340787 (n + 1)).toNat * A340779 (n + 1)

end

end A067157.P9777387268231353959

/-!
# A067158: Number of regions in regular n-gon which are 11-gons.

The programs for A067158, there is no canonical definition to state claims against.
-/

/-! ## A067158.P7172277000480776546

`A074039(A076825(n+2))`
-/

namespace A067158.P7172277000480776546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074039 (A076825 (n + 2)).toNat

end

end A067158.P7172277000480776546

/-! ## A067158.P17413511185774453808

`char[A195321(n)]*A138100(n+1)`
-/

namespace A067158.P17413511185774453808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138100 (n + 1)

end

end A067158.P17413511185774453808

/-! ## A067158.P3830222407119888012

`char[A195321(n)]*A153809(n+1)`
-/

namespace A067158.P3830222407119888012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A153809 (n + 1)

end

end A067158.P3830222407119888012

/-! ## A067158.P16735604334559800337

`char[A195321(n)]*A196736(n+1)`
-/

namespace A067158.P16735604334559800337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A196736 (n + 1)

end

end A067158.P16735604334559800337

/-! ## A067158.P1539368256844480866

`char[A086573(n)]*A346523(n+1)`
-/

namespace A067158.P1539368256844480866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A346523 (n + 1)

end

end A067158.P1539368256844480866

/-! ## A067158.P15101262436595322903

`char[A294327(n)]*A346523(n+1)`
-/

namespace A067158.P15101262436595322903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A346523 (n + 1)

end

end A067158.P15101262436595322903

/-! ## A067158.P16721547748608930725

`char[A087636(n+1)]*A138100(n+1)`
-/

namespace A067158.P16721547748608930725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138100 (n + 1)

end

end A067158.P16721547748608930725

/-! ## A067158.P2980055251608801714

`char[A087638(n+1)]*A138100(n+1)`
-/

namespace A067158.P2980055251608801714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138100 (n + 1)

end

end A067158.P2980055251608801714

/-! ## A067158.P7807593201875318246

`char[A174637(n+1)]*A138100(n+1)`
-/

namespace A067158.P7807593201875318246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174637 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138100 (n + 1)

end

end A067158.P7807593201875318246

/-! ## A067158.P10515824430544315593

`char[A281161(n+1)]*A138100(n+1)`
-/

namespace A067158.P10515824430544315593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281161 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138100 (n + 1)

end

end A067158.P10515824430544315593

/-!
# A067159: Number of regions in regular n-gon which are 12-gons.

The programs for A067159, there is no canonical definition to state claims against.
-/

/-! ## A067159.P2952995071664759893

`and(40, A151623(3*(n+4)))`
-/

namespace A067159.P2952995071664759893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 40 (A151623 (3 * (n + 4)))

end

end A067159.P2952995071664759893

/-! ## A067159.P7818481164046156678

`char[28]*A173753(2*(n+1))`
-/

namespace A067159.P7818481164046156678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A173753 (2 * (n + 1))

end

end A067159.P7818481164046156678

/-! ## A067159.P4175380097576464616

`A023931(A297595(n+1))`
-/

namespace A067159.P4175380097576464616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023931 (A297595 (n + 1)).toNat

end

end A067159.P4175380097576464616

/-! ## A067159.P9968834114822895130

`A054523(A290407(n+1))`
-/

namespace A067159.P9968834114822895130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A290407 (n + 1)).toNat

end

end A067159.P9968834114822895130

/-! ## A067159.P17330494677818150571

`A324675(A200505(n+1))`
-/

namespace A067159.P17330494677818150571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324675 (A200505 (n + 1)).toNat

end

end A067159.P17330494677818150571

/-!
# A067160: Numbers k such that sigma(phi(sigma(k))) = phi(sigma(phi(k))).

The programs for A067160, there is no canonical definition to state claims against.
-/

/-! ## A067160.P14988408694796030209

`eq[A163370(n+1), A163372(n+1)]+1`
-/

namespace A067160.P14988408694796030209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067160.P14988408694796030209

/-!
# A067161: a(n) = prime(sigma(n)).

The programs for A067161, the canonical program `A067161.P10768475031495002266` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067161 has offset 1).

The definition of A067161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067161.P10768475031495002266

`A000040(A000203(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067161

/-- `A000040(A000203(n+1))` -/
def P10768475031495002266.Spec : Prop :=
  ∀ n, P10768475031495002266.a n = A067161 (n + 1)

theorem P10768475031495002266.correct : P10768475031495002266.Spec := by
  intro n
  simp only [A067161, Nat.add_sub_cancel]

end A067161

/-! ## A067161.P15129593233122356250

`A001748(∑{d}[n+1, #])/3`
-/

namespace A067161.P15129593233122356250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / 3

end

end A067161.P15129593233122356250

namespace A067161

/-- `A001748(∑{d}[n+1, #])/3` -/
def P15129593233122356250.Spec : Prop :=
  ∀ n, P15129593233122356250.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P8392990602506764796

`A001749(A245092(Δ[n²]))/4`
-/

namespace A067161.P8392990602506764796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 4

end

end A067161.P8392990602506764796

namespace A067161

/-- `A001749(A245092(Δ[n²]))/4` -/
def P8392990602506764796.Spec : Prop :=
  ∀ n, P8392990602506764796.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P14370808413088948819

`A001749(abs(A143348(n+1)))/4`
-/

namespace A067161.P14370808413088948819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 |A143348 (n + 1)|.toNat : ℚ) / 4

end

end A067161.P14370808413088948819

namespace A067161

/-- `A001749(abs(A143348(n+1)))/4` -/
def P14370808413088948819.Spec : Prop :=
  ∀ n, P14370808413088948819.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P3835114102191025635

`A001749(sqrt(A072861(n+1)))/4`
-/

namespace A067161.P3835114102191025635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat : ℚ) / 4

end

end A067161.P3835114102191025635

namespace A067161

/-- `A001749(sqrt(A072861(n+1)))/4` -/
def P3835114102191025635.Spec : Prop :=
  ∀ n, P3835114102191025635.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P15538731951030526315

`A001749(∑[A340793(n+1)])/4`
-/

namespace A067161.P15538731951030526315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4

end

end A067161.P15538731951030526315

namespace A067161

/-- `A001749(∑[A340793(n+1)])/4` -/
def P15538731951030526315.Spec : Prop :=
  ∀ n, P15538731951030526315.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P5378494990752261191

`A001749(A326122(n+1)/10)/4`
-/

namespace A067161.P5378494990752261191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.roundAway ((A326122 (n + 1) : ℚ) / 10)).toNat : ℚ) / 4

end

end A067161.P5378494990752261191

namespace A067161

/-- `A001749(A326122(n+1)/10)/4` -/
def P5378494990752261191.Spec : Prop :=
  ∀ n, P5378494990752261191.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P6709654463196463683

`A001749(A033999(n)*A143348(n+1))/4`
-/

namespace A067161.P6709654463196463683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A033999 n * A143348 (n + 1)).toNat : ℚ) / 4

end

end A067161.P6709654463196463683

namespace A067161

/-- `A001749(A033999(n)*A143348(n+1))/4` -/
def P6709654463196463683.Spec : Prop :=
  ∀ n, P6709654463196463683.a n = (A067161 (n + 1) : ℚ)

end A067161

/-! ## A067161.P11718075224535959813

`A000040(∑{d}[n+1, #])`
-/

namespace A067161.P11718075224535959813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A067161.P11718075224535959813

namespace A067161

/-- `A000040(∑{d}[n+1, #])` -/
def P11718075224535959813.Spec : Prop :=
  ∀ n, P11718075224535959813.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P9906129914589449155

`A000040(Δ[A160664(n)])`
-/

namespace A067161.P9906129914589449155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A067161.P9906129914589449155

namespace A067161

/-- `A000040(Δ[A160664(n)])` -/
def P9906129914589449155.Spec : Prop :=
  ∀ n, P9906129914589449155.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P15923013238629758517

`A008578(A088580(n+1))`
-/

namespace A067161.P15923013238629758517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088580 (n + 1)).toNat

end

end A067161.P15923013238629758517

namespace A067161

/-- `A008578(A088580(n+1))` -/
def P15923013238629758517.Spec : Prop :=
  ∀ n, P15923013238629758517.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P250865646473132689

`A000040(abs(Δ[A330725(n)]))`
-/

namespace A067161.P250865646473132689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |f1 (n + 1) - f1 n|.toNat

end

end A067161.P250865646473132689

namespace A067161

/-- `A000040(abs(Δ[A330725(n)]))` -/
def P250865646473132689.Spec : Prop :=
  ∀ n, P250865646473132689.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P5268827640301696491

`A000040(A245092(Δ[n²]))`
-/

namespace A067161.P5268827640301696491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A067161.P5268827640301696491

namespace A067161

/-- `A000040(A245092(Δ[n²]))` -/
def P5268827640301696491.Spec : Prop :=
  ∀ n, P5268827640301696491.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P7129223960740834440

`A000040(abs(A143348(n+1)))`
-/

namespace A067161.P7129223960740834440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A143348 (n + 1)|.toNat

end

end A067161.P7129223960740834440

namespace A067161

/-- `A000040(abs(A143348(n+1)))` -/
def P7129223960740834440.Spec : Prop :=
  ∀ n, P7129223960740834440.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P2037641420379845488

`A000040(sqrt(A072861(n+1)))`
-/

namespace A067161.P2037641420379845488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A067161.P2037641420379845488

namespace A067161

/-- `A000040(sqrt(A072861(n+1)))` -/
def P2037641420379845488.Spec : Prop :=
  ∀ n, P2037641420379845488.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P4150753325059455900

`A000040(∑[A340793(n+1)])`
-/

namespace A067161.P4150753325059455900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067161.P4150753325059455900

namespace A067161

/-- `A000040(∑[A340793(n+1)])` -/
def P4150753325059455900.Spec : Prop :=
  ∀ n, P4150753325059455900.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P1535346415123618121

`A008578(Δ[A160664(n)]+1)`
-/

namespace A067161.P1535346415123618121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n + 1).toNat

end

end A067161.P1535346415123618121

namespace A067161

/-- `A008578(Δ[A160664(n)]+1)` -/
def P1535346415123618121.Spec : Prop :=
  ∀ n, P1535346415123618121.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P3962453224146100134

`A182986(Δ[A160664(n)]+1)`
-/

namespace A067161.P3962453224146100134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (n + 1) - f1 n + 1).toNat

end

end A067161.P3962453224146100134

namespace A067161

/-- `A182986(Δ[A160664(n)]+1)` -/
def P3962453224146100134.Spec : Prop :=
  ∀ n, P3962453224146100134.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P7596615950762574408

`A008864(Δ[A160664(n)])-1`
-/

namespace A067161.P7596615950762574408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (f1 (n + 1) - f1 n).toNat - 1

end

end A067161.P7596615950762574408

namespace A067161

/-- `A008864(Δ[A160664(n)])-1` -/
def P7596615950762574408.Spec : Prop :=
  ∀ n, P7596615950762574408.a n = A067161 (n + 1)

end A067161

/-! ## A067161.P17901391297674744187

`A008578(A000203(n+1)+1)`
-/

namespace A067161.P17901391297674744187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000203 (n + 1) + 1).toNat

end

end A067161.P17901391297674744187

namespace A067161

/-- `A008578(A000203(n+1)+1)` -/
def P17901391297674744187.Spec : Prop :=
  ∀ n, P17901391297674744187.a n = A067161 (n + 1)

end A067161

/-!
# A067162: a(n) = A062361(n)/n.

The programs for A067162, there is no canonical definition to state claims against.
-/

/-! ## A067162.P9186048843880615417

`A062361(n+4)/(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067162.P9186048843880615417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062361 (n + 4) : ℚ) / (n + 4 : ℚ)

end

end A067162.P9186048843880615417

/-! ## A067162.P18444009726582261704

`record[A286885(A003961(2*n+1)+n)]`
-/

namespace A067162.P18444009726582261704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286885 (A003961 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067162.P18444009726582261704

/-! ## A067162.P10595395538934291454

`A064722(A056156(n+1))+A046966(n+1)`
-/

namespace A067162.P10595395538934291454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A056156 (n + 1)).toNat + A046966 (n + 1)

end

end A067162.P10595395538934291454

/-!
# A067163: A067151(n)/n.

The programs for A067163, there is no canonical definition to state claims against.
-/

/-! ## A067163.P793896589853874959

`A067151(n+5)/(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067163.P793896589853874959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067151 (n + 5) : ℚ) / (n + 5 : ℚ)

end

end A067163.P793896589853874959

/-!
# A067164: A067152(n)/n.

The programs for A067164, there is no canonical definition to state claims against.
-/

/-! ## A067164.P1775300050708084926

`A067152(n+6)/(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067164.P1775300050708084926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067152 (n + 6) : ℚ) / (n + 6 : ℚ)

end

end A067164.P1775300050708084926

/-!
# A067165: a(n) = A067153(n)/n.

The programs for A067165, there is no canonical definition to state claims against.
-/

/-! ## A067165.P1475437790205199830

`A067153(n+7)/(n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067165.P1475437790205199830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067153 (n + 7) : ℚ) / (n + 7 : ℚ)

end

end A067165.P1475437790205199830

/-! ## A067165.P6108028876329860552

`A025869(A162584(n))%A000265(n+1)`
-/

namespace A067165.P6108028876329860552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025869 (A162584 n).toNat) (A000265 (n + 1))

end

end A067165.P6108028876329860552

/-! ## A067165.P2406677437256536936

`A250797(A250797(n+1))%A118402(n)`
-/

namespace A067165.P2406677437256536936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250797 (A250797 (n + 1)).toNat) (A118402 n)

end

end A067165.P2406677437256536936

/-! ## A067165.P2648268084161362116

`A276213(A018278(n+1))%A000265(n+1)`
-/

namespace A067165.P2648268084161362116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276213 (A018278 (n + 1)).toNat) (A000265 (n + 1))

end

end A067165.P2648268084161362116

/-! ## A067165.P14761878228484285544

`A108309(A020270(n+1))%A028234(2*(n+1))`
-/

namespace A067165.P14761878228484285544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108309 (A020270 (n + 1)).toNat) (A028234 (2 * (n + 1)))

end

end A067165.P14761878228484285544

/-!
# A067166: A067154(n)/n.

The programs for A067166, there is no canonical definition to state claims against.
-/

/-! ## A067166.P16153514152632555317

`A067154(n+8)/(n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067166.P16153514152632555317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067154 (n + 8) : ℚ) / (n + 8 : ℚ)

end

end A067166.P16153514152632555317

/-! ## A067166.P5463053059208714201

`A282355(A309692(n)+A212627(n+1))`
-/

namespace A067166.P5463053059208714201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A309692 n + A212627 (n + 1)).toNat

end

end A067166.P5463053059208714201

/-! ## A067166.P15565188374047292364

`A291107(n+1)%A000120(A027423(n))`
-/

namespace A067166.P15565188374047292364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291107 (n + 1)) (A000120 (A027423 n).toNat)

end

end A067166.P15565188374047292364

/-! ## A067166.P11394907363335484068

`A261083(A062298(n+1)^A254044(n+1))`
-/

namespace A067166.P11394907363335484068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261083 (SequenceMachineLib.roundAway ((A062298 (n + 1) : ℚ) ^ (A254044 (n + 1) : ℤ))).toNat

end

end A067166.P11394907363335484068

/-! ## A067166.P4154878489912410045

`A307835(A352450(n)%A124742(2*n+3))`
-/

namespace A067166.P4154878489912410045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307835 (Int.tmod (A352450 n) (A124742 (2 * n + 3))).toNat

end

end A067166.P4154878489912410045

/-!
# A067167: A067155(n)/n.

The programs for A067167, there is no canonical definition to state claims against.
-/

/-! ## A067167.P4637514237864694612

`A067155(n+9)/(n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067167.P4637514237864694612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067155 (n + 9) : ℚ) / (n + 9 : ℚ)

end

end A067167.P4637514237864694612

/-! ## A067167.P2755845664147493918

`A263835(or(n, A264766(n)))`
-/

namespace A067167.P2755845664147493918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263835 (Int.lor (n : ℤ) (A264766 n)).toNat

end

end A067167.P2755845664147493918

/-! ## A067167.P10528827850410211457

`A269505(A047604(n+1))%A058933(n+1)`
-/

namespace A067167.P10528827850410211457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269505 (A047604 (n + 1)).toNat) (A058933 (n + 1))

end

end A067167.P10528827850410211457

/-! ## A067167.P12792236369008369658

`val(A305325(A200092(n+3)), 3)`
-/

namespace A067167.P12792236369008369658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305325 (A200092 (n + 3)).toNat).toNat 3

end

end A067167.P12792236369008369658

/-! ## A067167.P14835515245347999806

`∑{e}[A193091(3*n)%A254947(n+1), #]`
-/

namespace A067167.P14835515245347999806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193091 (3 * n)) (A254947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067167.P14835515245347999806

/-!
# A067168: A067156(n)/n.

The programs for A067168, there is no canonical definition to state claims against.
-/

/-! ## A067168.P14469214677987773179

`A067156(n+10)/(n+10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067168.P14469214677987773179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067156 (n + 10) : ℚ) / (n + 10 : ℚ)

end

end A067168.P14469214677987773179

/-! ## A067168.P10811172138802466240

`A257990(A067156(n+10)²+1)`
-/

namespace A067168.P10811172138802466240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A067156 (n + 10) ^ 2 + 1).toNat

end

end A067168.P10811172138802466240

/-! ## A067168.P9535841070612986868

`val(A240192(A184441(n+1)), 3)`
-/

namespace A067168.P9535841070612986868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A240192 (A184441 (n + 1)).toNat).toNat 3

end

end A067168.P9535841070612986868

/-! ## A067168.P5581731743076593790

`n%A001316(A321936(2*n+13))`
-/

namespace A067168.P5581731743076593790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001316 (A321936 (2 * n + 13)).toNat)

end

end A067168.P5581731743076593790

/-! ## A067168.P312177339942106157

`A025444(eq[A025444(3*n), A065719(2*n)])`
-/

namespace A067168.P312177339942106157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067168.P312177339942106157

/-!
# A067169: A067157(n)/n.

The programs for A067169, there is no canonical definition to state claims against.
-/

/-! ## A067169.P12480116704573256026

`A067157(n+1)/(n+11)`
-/

namespace A067169.P12480116704573256026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067157 (n + 1 + 10) : ℚ) / (n + 11 : ℚ)

end

end A067169.P12480116704573256026

/-! ## A067169.P6352774439550792092

`(n-3)%A206829(A120864(n+1))`
-/

namespace A067169.P6352774439550792092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 3) (A206829 (A120864 (n + 1)).toNat)

end

end A067169.P6352774439550792092

/-! ## A067169.P12432302091139703654

`A176968(n+1)%A090048(A210377(n))`
-/

namespace A067169.P12432302091139703654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176968 (n + 1)) (A090048 (A210377 n).toNat)

end

end A067169.P12432302091139703654

/-! ## A067169.P11217045115585138443

`A271420(n+1)%A077196(A135318(n))`
-/

namespace A067169.P11217045115585138443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271420 (n + 1)) (A077196 (A135318 n).toNat)

end

end A067169.P11217045115585138443

/-! ## A067169.P2721964035486384936

`A058868(n)%A275344(n)`
-/

namespace A067169.P2721964035486384936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058868 n) (A275344 n)

end

end A067169.P2721964035486384936

/-!
# A067170: Numbers n such that sum of the cubes of the distinct prime factors of n equals the sum of the cubes of the digits of n.

The programs for A067170, there is no canonical definition to state claims against.
-/

/-! ## A067170.P5169657315940476382

`∩[A067184(n+1), A075657(n+1)]`
-/

namespace A067170.P5169657315940476382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067170.P5169657315940476382

/-! ## A067170.P826932943741655256

`filter[A067184(n+1), A086299(#)]`
-/

namespace A067170.P826932943741655256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A067170.P826932943741655256

/-! ## A067170.P11468678221087583256

`filter[A067184(n+1), A324828(#)]`
-/

namespace A067170.P11468678221087583256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324828 (f1 j).toNat = 1) n)

end

end A067170.P11468678221087583256

/-!
# A067171: Numbers k such that sigma(k+1)+sigma(k) = sigma(2k+1).

The programs for A067171, there is no canonical definition to state claims against.
-/

/-! ## A067171.P3055137968387780023

`filter[A091287(n+1), A373977(#)]`
-/

namespace A067171.P3055137968387780023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A067171.P3055137968387780023

/-! ## A067171.P8264229178036308140

`A091287(eq[A066657(n), A188642(n)])`
-/

namespace A067171.P8264229178036308140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091287 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067171.P8264229178036308140

/-!
# A067173: Numbers n such that the sum of the prime factors of n equals the product of the digits of n.

The programs for A067173, there is no canonical definition to state claims against.
-/

/-! ## A067173.P848154953834935200

`eq[A007954(n+1), A008472(n+1)]+1`
-/

namespace A067173.P848154953834935200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067173.P848154953834935200

/-! ## A067173.P530644572877602570

`eq[A007954(n), A008472(A233583(n+1))]`
-/

namespace A067173.P530644572877602570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067173.P530644572877602570

/-! ## A067173.P1795110980280832507

`eq[A008472(A233583(n+1)), A051801(n)]`
-/

namespace A067173.P1795110980280832507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067173.P1795110980280832507

/-! ## A067173.P15384329064551313613

`A357262(A062399(n+1))`
-/

namespace A067173.P15384329064551313613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357262 (A062399 (n + 1)).toNat

end

end A067173.P15384329064551313613

/-! ## A067173.P12009326687254660308

`A357262(A120126(n+1))`
-/

namespace A067173.P12009326687254660308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357262 (A120126 (n + 1)).toNat

end

end A067173.P12009326687254660308

/-!
# A067175: Number of digits in the n-th primorial (A002110).

The programs for A067175, there is no canonical definition to state claims against.
-/

/-! ## A067175.P13972733720654799910

`A048856(gcd(n, C(2, n)))`
-/

namespace A067175.P13972733720654799910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (Nat.gcd n (Nat.choose 2 n))

end

end A067175.P13972733720654799910

/-! ## A067175.P6109287102399026524

`A048856(abs(1-n)+1)`
-/

namespace A067175.P6109287102399026524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (|1 - (n : ℤ)| + 1).toNat

end

end A067175.P6109287102399026524

/-! ## A067175.P13539034443564481147

`lcm(A033999(n), A048856(A028310(n)))`
-/

namespace A067175.P13539034443564481147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A048856 (A028310 n).toNat)

end

end A067175.P13539034443564481147

/-! ## A067175.P12544720529741680585

`A048856(n+1)-A387173(n)`
-/

namespace A067175.P12544720529741680585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (n + 1) - A387173 n

end

end A067175.P12544720529741680585

/-! ## A067175.P16683720446102147351

`A084099(2*A287201(n+1))+A048856(A028310(n))`
-/

namespace A067175.P16683720446102147351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * A287201 (n + 1)).toNat + A048856 (A028310 n).toNat

end

end A067175.P16683720446102147351

/-! ## A067175.P11834300692160297415

`A033999(A006005(n+1))+A048856(A028310(n))+1`
-/

namespace A067175.P11834300692160297415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A006005 (n + 1)).toNat + (A048856 (A028310 n).toNat + 1)

end

end A067175.P11834300692160297415

/-! ## A067175.P9570393480444249321

`A048856(A233583(n+1))%A139609(n)`
-/

namespace A067175.P9570393480444249321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048856 (A233583 (n + 1)).toNat) (A139609 n)

end

end A067175.P9570393480444249321

/-! ## A067175.P5216589655105519613

`A048856(A233583(n+1))+A000038(A093178(n))`
-/

namespace A067175.P5216589655105519613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (A233583 (n + 1)).toNat + A000038 (A093178 n).toNat

end

end A067175.P5216589655105519613

/-!
# A067176: A triangle of generalized Stirling numbers: sum of consecutive terms in the harmonic sequence multiplied by the product of their denominators.

The programs for A067176, there is no canonical definition to state claims against.
-/

/-! ## A067176.P12487130484092213551

`A292717(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A067176.P12487130484092213551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A067176.P12487130484092213551

/-! ## A067176.P16811967376855886969

`A292717(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A067176.P16811967376855886969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A067176.P16811967376855886969

/-! ## A067176.P11841328725792790055

`A292717(A380649(n+1))`
-/

namespace A067176.P11841328725792790055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A380649 (n + 1)).toNat

end

end A067176.P11841328725792790055

/-! ## A067176.P9657080916172327136

`A292717(A099375(n)+n)`
-/

namespace A067176.P9657080916172327136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A099375 n + (n : ℤ)).toNat

end

end A067176.P9657080916172327136

/-! ## A067176.P8457101343895023018

`A292717(A061579(comp[∑[n]]))`
-/

namespace A067176.P8457101343895023018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A067176.P8457101343895023018

/-! ## A067176.P15784280401906751095

`A292717(A212012(n+1)-1+n)`
-/

namespace A067176.P15784280401906751095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A212012 (n + 1) - 1 + (n : ℤ)).toNat

end

end A067176.P15784280401906751095

/-! ## A067176.P1477314829737821177

`A292717(A038722(n+1)+A003056(n))`
-/

namespace A067176.P1477314829737821177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A038722 (n + 1) + A003056 n).toNat

end

end A067176.P1477314829737821177

/-! ## A067176.P12152484924618456162

`A292717(A061579(n)+A002024(n+1))`
-/

namespace A067176.P12152484924618456162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A061579 n + A002024 (n + 1)).toNat

end

end A067176.P12152484924618456162

/-! ## A067176.P10161840677672921178

`A292717(A114327(n)+A007401(n+1))`
-/

namespace A067176.P10161840677672921178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A114327 n + A007401 (n + 1)).toNat

end

end A067176.P10161840677672921178

/-! ## A067176.P9025649979786360154

`A292717(A127739(n+1)+A025581(n))`
-/

namespace A067176.P9025649979786360154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292717 (A127739 (n + 1) + A025581 n).toNat

end

end A067176.P9025649979786360154

/-!
# A067177: Cube root of A061096(n).

The programs for A067177, there is no canonical definition to state claims against.
-/

/-! ## A067177.P9459207775061725096

`root(A061096(n), 3)`
-/

namespace A067177.P9459207775061725096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061096 n : ℝ) ^ (1 / (3 : ℝ))

end

end A067177.P9459207775061725096

/-! ## A067177.P5648671959807528613

`A061096(n)^(char[A193592(n)]/3)`
-/

namespace A067177.P5648671959807528613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061096 n : ℝ) ^ (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / 3 : ℝ)

end

end A067177.P5648671959807528613

/-!
# A067178: Smallest square whose sum of digits is A056991(n).

The programs for A067178, there is no canonical definition to state claims against.
-/

/-! ## A067178.P10067302887188903189

`A067179(n+1)²`
-/

namespace A067178.P10067302887188903189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067179 (n + 1) ^ 2

end

end A067178.P10067302887188903189

/-! ## A067178.P8322109247306016282

`A062685(∑[3-((n+2)%4)%3])`
-/

namespace A067178.P8322109247306016282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 2) % 4 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067178.P8322109247306016282

/-! ## A067178.P3146855729558381961

`A062685(record[dr((2*n)²-3)+n-2])`
-/

namespace A067178.P3146855729558381961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (((2 * n) ^ 2 : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067178.P3146855729558381961

/-! ## A067178.P4383748006568260975

`A062685(∪[2*n+1+n, 9*(n+1)])`
-/

namespace A067178.P4383748006568260975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A067178.P4383748006568260975

/-! ## A067178.P590707912468543419

`A062685(A056991(n+1))`
-/

namespace A067178.P590707912468543419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (A056991 (n + 1)).toNat

end

end A067178.P590707912468543419

/-! ## A067178.P8124675212487167465

`A062685(A242660(n+2))`
-/

namespace A067178.P8124675212487167465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (A242660 (n + 2)).toNat

end

end A067178.P8124675212487167465

/-! ## A067178.P7995327267729106586

`A062685(lt[0, A062685(n+1)]+1)`
-/

namespace A067178.P7995327267729106586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A067178.P7995327267729106586

/-! ## A067178.P2693542299301694403

`A067179(n+1)^A020639(2*(n+1))`
-/

namespace A067178.P2693542299301694403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067179 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A067178.P2693542299301694403

/-! ## A067178.P6862671784869561626

`A067179(n+1)^A000005(A001359(n+1))`
-/

namespace A067178.P6862671784869561626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067179 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A067178.P6862671784869561626

/-! ## A067178.P6929004537472111274

`A067179(n+1)^A000005(A007918(n+1))`
-/

namespace A067178.P6929004537472111274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067179 (n + 1) : ℚ) ^ (A000005 (A007918 (n + 1)).toNat : ℤ)

end

end A067178.P6929004537472111274

/-!
# A067179: Smallest number whose square has sum of digits A056991(n).

The programs for A067179, there is no canonical definition to state claims against.
-/

/-! ## A067179.P6298000266090794735

`sqrt(A067178(n+1))`
-/

namespace A067179.P6298000266090794735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067178 (n + 1) : ℝ)

end

end A067179.P6298000266090794735

/-! ## A067179.P8891470135662139354

`sqrt(A062685(∑[3-((n+2)%4)%3]))`
-/

namespace A067179.P8891470135662139354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 2) % 4 % 3 : ℕ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ)

end

end A067179.P8891470135662139354

/-! ## A067179.P14598934970750801559

`sqrt(A062685(record[dr((2*n)²-3)+n-2]))`
-/

namespace A067179.P14598934970750801559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (((2 * n) ^ 2 : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062685 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ)

end

end A067179.P14598934970750801559

/-! ## A067179.P16931860841604103999

`sqrt(A062685(∪[2*n+1+n, 9*(n+1)]))`
-/

namespace A067179.P16931860841604103999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062685 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) : ℝ)

end

end A067179.P16931860841604103999

/-! ## A067179.P5236025008386654037

`A062685(A056991(n+1))^(1/2)`
-/

namespace A067179.P5236025008386654037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062685 (A056991 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A067179.P5236025008386654037

/-! ## A067179.P7384094055947712858

`root(A067178(n+1), ratio[A000079(n)])`
-/

namespace A067179.P7384094055947712858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067178 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A067179.P7384094055947712858

/-! ## A067179.P10702312434754731546

`root(A067178(n+1), p?[A182145(n+1)])`
-/

namespace A067179.P10702312434754731546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182145 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067178 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A067179.P10702312434754731546

/-! ## A067179.P15710162746574674654

`root(A067178(n+1), A020639(4*n+2))`
-/

namespace A067179.P15710162746574674654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067178 (n + 1) : ℝ) ^ (1 / (A020639 (4 * n + 2) : ℝ))

end

end A067179.P15710162746574674654

/-! ## A067179.P9731190142976391478

`root(A067178(n+1), A001316(A001316(n)))`
-/

namespace A067179.P9731190142976391478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067178 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A067179.P9731190142976391478

/-!
# A067180: Smallest prime with digit sum n, or 0 if no such prime exists.

The programs for A067180, there is no canonical definition to state claims against.
-/

/-! ## A067180.P16208663924878953933

`A182986(A104290(n+1)+1)`
-/

namespace A067180.P16208663924878953933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A104290 (n + 1) + 1).toNat

end

end A067180.P16208663924878953933

/-! ## A067180.P12654157689336439895

`∑{d}[A104290(n+1), A007444(#)]`
-/

namespace A067180.P12654157689336439895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A067180.P12654157689336439895

/-! ## A067180.P8970845080739453545

`A340991(A000124(A104290(n+1)))`
-/

namespace A067180.P8970845080739453545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A000124 (A104290 (n + 1)).toNat).toNat

end

end A067180.P8970845080739453545

/-!
# A067183: Numbers k such that the product of the prime factors of k equals the product of the digits of k.

The programs for A067183, there is no canonical definition to state claims against.
-/

/-! ## A067183.P602380927256845945

`A357132(comp[12*n])`
-/

namespace A067183.P602380927256845945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067183.P602380927256845945

/-! ## A067183.P13080167897465957257

`A357132(A353838(n+1))+A112972(3*n+1)`
-/

namespace A067183.P13080167897465957257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357132 (A353838 (n + 1)).toNat + A112972 (3 * n + 1)

end

end A067183.P13080167897465957257

/-! ## A067183.P16130604887470785194

`A028310(A357132(n+1))`
-/

namespace A067183.P16130604887470785194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A357132 (n + 1)).toNat

end

end A067183.P16130604887470785194

/-! ## A067183.P6377216177191742070

`A289207(A357132(n+1)+2)`
-/

namespace A067183.P6377216177191742070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A357132 (n + 1) + 2).toNat

end

end A067183.P6377216177191742070

/-!
# A067185: Numbers k such that prime(k+1) + prime(k) == 1 (mod k).

The programs for A067185, there is no canonical definition to state claims against.
-/

/-! ## A067185.P17116117707745463823

`record[gcd(A005408(n), A076273(2*(n+1)))]`
-/

namespace A067185.P17116117707745463823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 n) (A076273 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067185.P17116117707745463823

/-! ## A067185.P14728213097058460067

`record[gcd(1-A001043(n+1), A099635(n+1))]`
-/

namespace A067185.P14728213097058460067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001043 (n + 1)) (A099635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067185.P14728213097058460067

/-!
# A067186: Numbers n such that C(n) = (n^2 + n + 2)/2 is prime.

The programs for A067186, there is no canonical definition to state claims against.
-/

/-! ## A067186.P9094182618522414798

`(A110872(n+1)-1)/2`
-/

namespace A067186.P9094182618522414798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110872 (n + 1) - 1 : ℚ) / 2

end

end A067186.P9094182618522414798

/-! ## A067186.P355782272494066390

`floor(A110872(n+1)/2)`
-/

namespace A067186.P355782272494066390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110872 (n + 1) : ℚ) / 2⌋

end

end A067186.P355782272494066390

/-! ## A067186.P118749538736272501

`A134460(n)+a(n-1)` with `a(0)=1`
-/

namespace A067186.P118749538736272501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134460 n + a (n - 1)

end

end A067186.P118749538736272501

/-! ## A067186.P8579295970671299769

`(sqrt(A110873(n+1))-1)/2`
-/

namespace A067186.P8579295970671299769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110873 (n + 1) : ℝ) - 1) / 2

end

end A067186.P8579295970671299769

/-! ## A067186.P14728926655610856312

`A014682(A110872(n+1)-1)`
-/

namespace A067186.P14728926655610856312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A110872 (n + 1) - 1).toNat

end

end A067186.P14728926655610856312

/-! ## A067186.P2418373040919672999

`eq[1, A129634(n)]`
-/

namespace A067186.P2418373040919672999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067186.P2418373040919672999

/-! ## A067186.P12622623741019360940

`eq[1, A075402(n+1)]+1`
-/

namespace A067186.P12622623741019360940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067186.P12622623741019360940

/-! ## A067186.P17936039213154739373

`record[(n+1)/(2-A129634(n+1)²)]`
-/

namespace A067186.P17936039213154739373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A129634 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067186.P17936039213154739373

/-! ## A067186.P9167524936032440486

`A246425(A110872(n+1)-2)`
-/

namespace A067186.P9167524936032440486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A110872 (n + 1) - 2).toNat

end

end A067186.P9167524936032440486

/-! ## A067186.P4637768853313657540

`A004524(A110872(n+1))`
-/

namespace A067186.P4637768853313657540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A110872 (n + 1)).toNat

end

end A067186.P4637768853313657540

/-! ## A067186.P8355210248399992310

`A001281(A110872(n+1)-1)`
-/

namespace A067186.P8355210248399992310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A110872 (n + 1) - 1).toNat

end

end A067186.P8355210248399992310

/-! ## A067186.P9427432259371940974

`A004525(A110872(n+1)-1)`
-/

namespace A067186.P9427432259371940974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110872 (n + 1) - 1).toNat

end

end A067186.P9427432259371940974

/-! ## A067186.P17698049617960586655

`A026741(A110872(n+1)-1)`
-/

namespace A067186.P17698049617960586655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A110872 (n + 1) - 1).toNat

end

end A067186.P17698049617960586655

/-! ## A067186.P13638575211912671726

`A065033(A110872(n+1)-1)`
-/

namespace A067186.P13638575211912671726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A110872 (n + 1) - 1).toNat

end

end A067186.P13638575211912671726

/-! ## A067186.P363848070036681322

`A000463(A110872(n+1)-2)`
-/

namespace A067186.P363848070036681322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A110872 (n + 1) - 2).toNat

end

end A067186.P363848070036681322

/-! ## A067186.P4990876832135794124

`A008619(A110872(n+1)-2)`
-/

namespace A067186.P4990876832135794124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A110872 (n + 1) - 2).toNat

end

end A067186.P4990876832135794124

/-! ## A067186.P12228225308586118624

`A032742(sqrt(A110873(n+1))-1)`
-/

namespace A067186.P12228225308586118624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway (Real.sqrt (A110873 (n + 1) : ℝ) - 1)).toNat

end

end A067186.P12228225308586118624

/-! ## A067186.P15703349957104167662

`A052938(A110872(n+1)+1)-2`
-/

namespace A067186.P15703349957104167662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A110872 (n + 1) + 1).toNat - 2

end

end A067186.P15703349957104167662

/-! ## A067186.P11561046153287098381

`eq[1, ∑{e}[∑[n]+1, #]]`
-/

namespace A067186.P11561046153287098381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067186.P11561046153287098381

/-! ## A067186.P12130704321305311261

`lt[∑[n], ∑{p}[∑[n]+1, #]]`
-/

namespace A067186.P12130704321305311261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A067186.P12130704321305311261

/-!
# A067187: Numbers that can be expressed as the sum of two primes in exactly one way.

The programs for A067187, the canonical program `A067187.P4381605707725789093` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067187 has offset 1).

The definition of A067187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067187.P4381605707725789093

`A373789(n+2)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067187

/-- `A373789(n+2)+2` -/
def P4381605707725789093.Spec : Prop :=
  ∀ n, P4381605707725789093.a n = A067187 (n + 1)

theorem P4381605707725789093.correct : P4381605707725789093.Spec := by
  intro n
  simp only [A067187, Nat.add_sub_cancel]

end A067187

/-! ## A067187.P15432586390477205981

`lt[(n+2)/A020639(n+1), A000005(n+3)]+3`
-/

namespace A067187.P15432586390477205981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 3

end

end A067187.P15432586390477205981

namespace A067187

/-- `lt[(n+2)/A020639(n+1), A000005(n+3)]+3` -/
def P15432586390477205981.Spec : Prop :=
  ∀ n, (P15432586390477205981.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P1779250491932931708

`lt[A229342(n+2), 9]+4`
-/

namespace A067187.P1779250491932931708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229342 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A067187.P1779250491932931708

namespace A067187

/-- `lt[A229342(n+2), 9]+4` -/
def P1779250491932931708.Spec : Prop :=
  ∀ n, (P1779250491932931708.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P17049598787417589817

`lt[n, A018252(A006530(n+2))]+4`
-/

namespace A067187.P17049598787417589817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006530 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A067187.P17049598787417589817

namespace A067187

/-- `lt[n, A018252(A006530(n+2))]+4` -/
def P17049598787417589817.Spec : Prop :=
  ∀ n, (P17049598787417589817.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P2352183369088258268

`lt[n-2, ∑{p}[n+2, #]]+4`
-/

namespace A067187.P2352183369088258268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A067187.P2352183369088258268

namespace A067187

/-- `lt[n-2, ∑{p}[n+2, #]]+4` -/
def P2352183369088258268.Spec : Prop :=
  ∀ n, (P2352183369088258268.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P811143684047426337

`lt[(3-n)², ∑{p}[n-2, n*#]]`
-/

namespace A067187.P811143684047426337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, n * p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067187.P811143684047426337

namespace A067187

/-- `lt[(3-n)², ∑{p}[n-2, n*#]]` -/
def P811143684047426337.Spec : Prop :=
  ∀ n, (P811143684047426337.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P3114146316246967433

`eq[1, A061358(n)]`
-/

namespace A067187.P3114146316246967433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067187.P3114146316246967433

namespace A067187

/-- `eq[1, A061358(n)]` -/
def P3114146316246967433.Spec : Prop :=
  ∀ n, (P3114146316246967433.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P8418572070083500290

`eq[n+2, A269801(n)]`
-/

namespace A067187.P8418572070083500290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067187.P8418572070083500290

namespace A067187

/-- `eq[n+2, A269801(n)]` -/
def P8418572070083500290.Spec : Prop :=
  ∀ n, (P8418572070083500290.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P5224371001429769006

`A009056(A373789(n+2))`
-/

namespace A067187.P5224371001429769006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A373789 (n + 2)).toNat

end

end A067187.P5224371001429769006

namespace A067187

/-- `A009056(A373789(n+2))` -/
def P5224371001429769006.Spec : Prop :=
  ∀ n, P5224371001429769006.a n = A067187 (n + 1)

end A067187

/-! ## A067187.P7014059736173047958

`lt[A061358(n), atan(A334768(n))]`
-/

namespace A067187.P7014059736173047958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A334768 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A067187.P7014059736173047958

namespace A067187

/-- `lt[A061358(n), atan(A334768(n))]` -/
def P7014059736173047958.Spec : Prop :=
  ∀ n, (P7014059736173047958.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P10849517670200148491

`eq[1, A000045(A073610(n+1))]+1`
-/

namespace A067187.P10849517670200148491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A073610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067187.P10849517670200148491

namespace A067187

/-- `eq[1, A000045(A073610(n+1))]+1` -/
def P10849517670200148491.Spec : Prop :=
  ∀ n, (P10849517670200148491.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P3183128205319896088

`A372079(A373788(n+2))+2`
-/

namespace A067187.P3183128205319896088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372079 (A373788 (n + 2)).toNat + 2

end

end A067187.P3183128205319896088

namespace A067187

/-- `A372079(A373788(n+2))+2` -/
def P3183128205319896088.Spec : Prop :=
  ∀ n, P3183128205319896088.a n = A067187 (n + 1)

end A067187

/-! ## A067187.P15448100221319867677

`lt[A003415(A061358(n)²), A061358(n)]`
-/

namespace A067187.P15448100221319867677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A061358 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067187.P15448100221319867677

namespace A067187

/-- `lt[A003415(A061358(n)²), A061358(n)]` -/
def P15448100221319867677.Spec : Prop :=
  ∀ n, (P15448100221319867677.a n : ℤ) = A067187 (n + 1)

end A067187

/-! ## A067187.P5002623190898653901

`lt[A004526(A061358(n)²), A061358(n)]`
-/

namespace A067187.P5002623190898653901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A061358 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067187.P5002623190898653901

namespace A067187

/-- `lt[A004526(A061358(n)²), A061358(n)]` -/
def P5002623190898653901.Spec : Prop :=
  ∀ n, (P5002623190898653901.a n : ℤ) = A067187 (n + 1)

end A067187

/-!
# A067188: Numbers that can be expressed as the (unordered) sum of two primes in exactly two ways.

The programs for A067188, there is no canonical definition to state claims against.
-/

/-! ## A067188.P4871688548255710594

`eq[2, A061358(n)]`
-/

namespace A067188.P4871688548255710594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067188.P4871688548255710594

/-! ## A067188.P6092678699547888946

`eq[4, A355198(n+2)]`
-/

namespace A067188.P6092678699547888946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355198 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067188.P6092678699547888946

/-! ## A067188.P18444922322976759201

`eq[4, A355198(n)]-2`
-/

namespace A067188.P18444922322976759201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A067188.P18444922322976759201

/-! ## A067188.P1078352509099160790

`eq[2, A103765(n+2)]+2`
-/

namespace A067188.P1078352509099160790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103765 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A067188.P1078352509099160790

/-! ## A067188.P1096057443881321141

`eq[2, A269801(n)/(n+2)]`
-/

namespace A067188.P1096057443881321141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269801 n : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A067188.P1096057443881321141

/-!
# A067189: Numbers that can be expressed as the sum of two primes in exactly three ways.

The programs for A067189, there is no canonical definition to state claims against.
-/

/-! ## A067189.P3967970207455099355

`eq[3, A061358(n)]`
-/

namespace A067189.P3967970207455099355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067189.P3967970207455099355

/-! ## A067189.P209700911236723916

`eq[3, ceil(A002126(n)/2)]`
-/

namespace A067189.P209700911236723916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002126 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067189.P209700911236723916

/-! ## A067189.P14427921452428832953

`eq[3, A269801(n)/(n+2)]`
-/

namespace A067189.P14427921452428832953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269801 n : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A067189.P14427921452428832953

/-! ## A067189.P4514154044329895977

`2*(eq[3, A002375(n+1)]+1)`
-/

namespace A067189.P4514154044329895977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067189.P4514154044329895977

/-! ## A067189.P13385401932289915888

`2*(eq[3, A045917(n+1)]+1)`
-/

namespace A067189.P13385401932289915888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067189.P13385401932289915888

/-!
# A067190: Numbers that can be expressed as the sum of two primes in exactly four ways.

The programs for A067190, there is no canonical definition to state claims against.
-/

/-! ## A067190.P8620813191652117917

`eq[4, A061358(n)]`
-/

namespace A067190.P8620813191652117917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067190.P8620813191652117917

/-! ## A067190.P7193950650834602896

`eq[8, A355198(n+2)]`
-/

namespace A067190.P7193950650834602896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355198 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067190.P7193950650834602896

/-! ## A067190.P9215904824909712326

`eq[4, ceil(A002126(n)/2)]`
-/

namespace A067190.P9215904824909712326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002126 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067190.P9215904824909712326

/-! ## A067190.P5650805606864914076

`2*(eq[4, A002375(n+1)]+1)`
-/

namespace A067190.P5650805606864914076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067190.P5650805606864914076

/-! ## A067190.P4059204809109239058

`2*(eq[4, A045917(n+1)]+1)`
-/

namespace A067190.P4059204809109239058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067190.P4059204809109239058

/-!
# A067191: Numbers that can be expressed as the sum of two primes in exactly five ways.

The programs for A067191, there is no canonical definition to state claims against.
-/

/-! ## A067191.P1420252753926167743

`eq[5, A061358(n)]`
-/

namespace A067191.P1420252753926167743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067191.P1420252753926167743

/-! ## A067191.P8647717381830004973

`eq[5, A269801(n)/(n+2)]`
-/

namespace A067191.P8647717381830004973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269801 n : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A067191.P8647717381830004973

/-! ## A067191.P12106744804813788113

`eq[5, round(A073610(C(2, n)+n)/2)]`
-/

namespace A067191.P12106744804813788113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073610 (Nat.choose 2 n + n) : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067191.P12106744804813788113

/-! ## A067191.P10825084144901138117

`eq[5, ceil(A073610(abs(1-n)+1)/2)]`
-/

namespace A067191.P10825084144901138117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073610 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067191.P10825084144901138117

/-! ## A067191.P11318854545941985658

`eq[5, A065033(A002126(n))]`
-/

namespace A067191.P11318854545941985658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067191.P11318854545941985658

/-!
# A067192: Composite c such that sigma(c)==2 (mod phi(c)).

The programs for A067192, there is no canonical definition to state claims against.
-/

/-! ## A067192.P1643108386482740679

`eq[A063514(A028310(n)), A108077(n+1)]`
-/

namespace A067192.P1643108386482740679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067192.P1643108386482740679

/-!
# A067193: Numbers k such that sigma(k) == 4 (mod phi(k)).

The programs for A067193, there is no canonical definition to state claims against.
-/

/-! ## A067193.P4707874246375224131

`eq[4, A063514(n+1)]+1`
-/

namespace A067193.P4707874246375224131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067193.P4707874246375224131

/-! ## A067193.P10101348306445753205

`eq[4, A063514(A028310(n))]`
-/

namespace A067193.P10101348306445753205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067193.P10101348306445753205

/-! ## A067193.P3345759981683787928

`A181569(eq[4, A063514(n+1)])`
-/

namespace A067193.P3345759981683787928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067193.P3345759981683787928

/-! ## A067193.P9253957820516756845

`eq[4, abs(A143348(n+1)%A000010(n+1))]+1`
-/

namespace A067193.P9253957820516756845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A143348 (n + 1)) (A000010 (n + 1))|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067193.P9253957820516756845

/-!
# A067194: Sequence of prime numbers whose reverse is a nontrivial prime power (A025475).

The programs for A067194, there is no canonical definition to state claims against.
-/

/-! ## A067194.P2990288632343685318

`∩[A069798(n+1), A341089(n+1)]`
-/

namespace A067194.P2990288632343685318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067194.P2990288632343685318

/-! ## A067194.P13570551520359524969

`∩[A115685(n+1), A341089(n+1)]`
-/

namespace A067194.P13570551520359524969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067194.P13570551520359524969

/-! ## A067194.P18194528338318003656

`∩[A076056(n+1), A341089(n+1)]`
-/

namespace A067194.P18194528338318003656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067194.P18194528338318003656

/-!
# A067196: Numbers n such that M(n) = Sum_{i=1..n} mu(phi(i)) where M(n) is the Mertens function A002321(n).

The programs for A067196, there is no canonical definition to state claims against.
-/

/-! ## A067196.P7634871477535450279

`A045560(n+2)%A045555(A045578(n+1))`
-/

namespace A067196.P7634871477535450279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045560 (n + 2)) (A045555 (A045578 (n + 1)).toNat)

end

end A067196.P7634871477535450279

/-!
# A067197: Numbers k such that k*(k+1)/2 is not squarefree.

The programs for A067197, the canonical program `A067197.P14256898239862614097` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067197 has offset 1).

The definition of A067197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067197.P8588721111631515540

`comp[A215726(n+1)-1]+1`
-/

namespace A067197.P8588721111631515540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A067197.P8588721111631515540

namespace A067197

/-- `comp[A215726(n+1)-1]+1` -/
def P8588721111631515540.Spec : Prop :=
  ∀ n, (P8588721111631515540.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P14256898239862614097

`∪[A046790(n+1)-1, A046790(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067197

/-- `∪[A046790(n+1)-1, A046790(n+1)]` -/
def P14256898239862614097.Spec : Prop :=
  ∀ n, (P14256898239862614097.a n : ℤ) = A067197 (n + 1)

theorem P14256898239862614097.correct : P14256898239862614097.Spec := by
  intro n
  simp only [A067197, Nat.add_sub_cancel]

end A067197

/-! ## A067197.P1883024523003515097

`lt[1, A058190(n+1)+A058190(A028310(n))]`
-/

namespace A067197.P1883024523003515097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1) + A058190 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067197.P1883024523003515097

namespace A067197

/-- `lt[1, A058190(n+1)+A058190(A028310(n))]` -/
def P1883024523003515097.Spec : Prop :=
  ∀ n, (P1883024523003515097.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P5332726662049498480

`lt[1, A336551(n+1)+A336551(A028310(n))]`
-/

namespace A067197.P5332726662049498480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + A336551 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067197.P5332726662049498480

namespace A067197

/-- `lt[1, A336551(n+1)+A336551(A028310(n))]` -/
def P5332726662049498480.Spec : Prop :=
  ∀ n, (P5332726662049498480.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P14672012972627562928

`lt[2, A003557(n+1)*A003557(A028310(n))]`
-/

namespace A067197.P14672012972627562928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A003557 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067197.P14672012972627562928

namespace A067197

/-- `lt[2, A003557(n+1)*A003557(A028310(n))]` -/
def P14672012972627562928.Spec : Prop :=
  ∀ n, (P14672012972627562928.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P8999409581056546748

`lt[1, ∏{e}[∑[n], #]]`
-/

namespace A067197.P8999409581056546748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067197.P8999409581056546748

namespace A067197

/-- `lt[1, ∏{e}[∑[n], #]]` -/
def P8999409581056546748.Spec : Prop :=
  ∀ n, (P8999409581056546748.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P15461477618233956035

`lt[∏{p}[∑[n], #], ∑[n]]`
-/

namespace A067197.P15461477618233956035
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A067197.P15461477618233956035

namespace A067197

/-- `lt[∏{p}[∑[n], #], ∑[n]]` -/
def P15461477618233956035.Spec : Prop :=
  ∀ n, (P15461477618233956035.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P4678833498962422818

`lt[1, ∏{e}[A000217(n+1), #]]+1`
-/

namespace A067197.P4678833498962422818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067197.P4678833498962422818

namespace A067197

/-- `lt[1, ∏{e}[A000217(n+1), #]]+1` -/
def P4678833498962422818.Spec : Prop :=
  ∀ n, (P4678833498962422818.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P7570954842443461887

`eq[0, A008683(∑[n+1])]+1`
-/

namespace A067197.P7570954842443461887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067197.P7570954842443461887

namespace A067197

/-- `eq[0, A008683(∑[n+1])]+1` -/
def P7570954842443461887.Spec : Prop :=
  ∀ n, (P7570954842443461887.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P3586639702862233867

`lt[A008683(abs(1-C(n, 2)-n)+1)², 1]`
-/

namespace A067197.P3586639702862233867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|1 - (Nat.choose n 2 : ℤ) - (n : ℤ)| + 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067197.P3586639702862233867

namespace A067197

/-- `lt[A008683(abs(1-C(n, 2)-n)+1)², 1]` -/
def P3586639702862233867.Spec : Prop :=
  ∀ n, (P3586639702862233867.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P5967029619057643258

`eq[0, A008683(A179865(n+1))]`
-/

namespace A067197.P5967029619057643258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067197.P5967029619057643258

namespace A067197

/-- `eq[0, A008683(A179865(n+1))]` -/
def P5967029619057643258.Spec : Prop :=
  ∀ n, (P5967029619057643258.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P17818180845641620825

`lt[0, A105570(∑[n])]`
-/

namespace A067197.P17818180845641620825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067197.P17818180845641620825

namespace A067197

/-- `lt[0, A105570(∑[n])]` -/
def P17818180845641620825.Spec : Prop :=
  ∀ n, (P17818180845641620825.a n : ℤ) = A067197 (n + 1)

end A067197

/-! ## A067197.P14669007417807504965

`A356155(A061900(n+1))`
-/

namespace A067197.P14669007417807504965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356155 (A061900 (n + 1)).toNat

end

end A067197.P14669007417807504965

namespace A067197

/-- `A356155(A061900(n+1))` -/
def P14669007417807504965.Spec : Prop :=
  ∀ n, P14669007417807504965.a n = A067197 (n + 1)

end A067197

