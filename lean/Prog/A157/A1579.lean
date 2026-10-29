import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
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
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157901: Triangle read by rows: A000012 * A157898.

The programs for A157901, the canonical program `A157901.P13269752173254949318` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157901 has offset 0).

The definition of A157901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157901.P13269752173254949318

`ceil(A059268(n)/2*A105438(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157901

/-- `ceil(A059268(n)/2*A105438(n))` -/
def P13269752173254949318.Spec : Prop :=
  ∀ n, P13269752173254949318.a n = A157901 n

theorem P13269752173254949318.correct : P13269752173254949318.Spec := by
  intro n
  simp only [A157901]

end A157901

/-! ## A157901.P17277748136645490045

`round(A059268(2*n-n)*A105438(n)/2)`
-/

namespace A157901.P17277748136645490045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059268 (2 * n - n) * A105438 n : ℚ) / 2)

end

end A157901.P17277748136645490045

namespace A157901

/-- `round(A059268(2*n-n)*A105438(n)/2)` -/
def P17277748136645490045.Spec : Prop :=
  ∀ n, P17277748136645490045.a n = A157901 n

end A157901

/-! ## A157901.P15827095567957694885

`A002061(n)%2*round(A059268(n)*A105438(n)/2)`
-/

namespace A157901.P15827095567957694885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * SequenceMachineLib.roundAway ((A059268 n * A105438 n : ℚ) / 2)

end

end A157901.P15827095567957694885

namespace A157901

/-- `A002061(n)%2*round(A059268(n)*A105438(n)/2)` -/
def P15827095567957694885.Spec : Prop :=
  ∀ n, P15827095567957694885.a n = A157901 n

end A157901

/-! ## A157901.P7647786897327578824

`round(A008683(4*(n+1))+A059268(n)*A105438(n)/2)`
-/

namespace A157901.P7647786897327578824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℚ) + (A059268 n * A105438 n : ℚ) / 2)

end

end A157901.P7647786897327578824

namespace A157901

/-- `round(A008683(4*(n+1))+A059268(n)*A105438(n)/2)` -/
def P7647786897327578824.Spec : Prop :=
  ∀ n, P7647786897327578824.a n = A157901 n

end A157901

/-! ## A157901.P6368839006784315370

`round(A059268(n)*A105438(n)/2)%A020745(n)`
-/

namespace A157901.P6368839006784315370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A059268 n * A105438 n : ℚ) / 2)) (A020745 n)

end

end A157901.P6368839006784315370

namespace A157901

/-- `round(A059268(n)*A105438(n)/2)%A020745(n)` -/
def P6368839006784315370.Spec : Prop :=
  ∀ n, P6368839006784315370.a n = A157901 n

end A157901

/-! ## A157901.P5953029759898553582

`A065033(A059268(n)*A105438(n))`
-/

namespace A157901.P5953029759898553582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A059268 n * A105438 n).toNat

end

end A157901.P5953029759898553582

namespace A157901

/-- `A065033(A059268(n)*A105438(n))` -/
def P5953029759898553582.Spec : Prop :=
  ∀ n, P5953029759898553582.a n = A157901 n

end A157901

/-! ## A157901.P3246040557258242940

`A110654(A059268(n)*A105438(n))`
-/

namespace A157901.P3246040557258242940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059268 n * A105438 n).toNat

end

end A157901.P3246040557258242940

namespace A157901

/-- `A110654(A059268(n)*A105438(n))` -/
def P3246040557258242940.Spec : Prop :=
  ∀ n, P3246040557258242940.a n = A157901 n

end A157901

/-! ## A157901.P14205335558631902726

`A004526(A059268(n)*A105438(n)+1)`
-/

namespace A157901.P14205335558631902726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059268 n * A105438 n + 1).toNat

end

end A157901.P14205335558631902726

namespace A157901

/-- `A004526(A059268(n)*A105438(n)+1)` -/
def P14205335558631902726.Spec : Prop :=
  ∀ n, P14205335558631902726.a n = A157901 n

end A157901

/-! ## A157901.P17262445552709456479

`A008619(A059268(n)*A105438(n)-1)`
-/

namespace A157901.P17262445552709456479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059268 n * A105438 n - 1).toNat

end

end A157901.P17262445552709456479

namespace A157901

/-- `A008619(A059268(n)*A105438(n)-1)` -/
def P17262445552709456479.Spec : Prop :=
  ∀ n, P17262445552709456479.a n = A157901 n

end A157901

/-!
# A157904: INVERT transform of A000055.

The programs for A157904, there is no canonical definition to state claims against.
-/

/-! ## A157904.P5798389422754770137

`record[A157905(n)]`
-/

namespace A157904.P5798389422754770137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157904.P5798389422754770137

/-! ## A157904.P15090036417927921260

`A157905(∑[n+2])`
-/

namespace A157904.P15090036417927921260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157904.P15090036417927921260

/-! ## A157904.P7508876444753948310

`lcm(A087960(n), A157905(A000096(n+1)))`
-/

namespace A157904.P7508876444753948310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A157905 (A000096 (n + 1)).toNat)

end

end A157904.P7508876444753948310

/-! ## A157904.P3288653304007553878

`gcd(A157905(A000096(n+1)), A346483(n+1))`
-/

namespace A157904.P3288653304007553878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157905 (A000096 (n + 1)).toNat) (A346483 (n + 1))

end

end A157904.P3288653304007553878

/-! ## A157904.P268123797173924907

`A248227(A052534(n))+A000045(n)`
-/

namespace A157904.P268123797173924907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A052534 n).toNat + A000045 n

end

end A157904.P268123797173924907

/-!
# A157905: Triangle read by rows, T(n,k) = A000055(n-k) * (A157904 * 0^(n-k)).

The programs for A157905, there is no canonical definition to state claims against.
-/

/-! ## A157905.P9064215107672834783

`∑{d}[A263858(n), A069288(#)]`
-/

namespace A157905.P9064215107672834783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069288 d

end

end A157905.P9064215107672834783

/-! ## A157905.P13743507092354713329

`lcm(A232089(n), A265331(A263858(n)))`
-/

namespace A157905.P13743507092354713329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A232089 n) (A265331 (A263858 n).toNat)

end

end A157905.P13743507092354713329

/-! ## A157905.P9988505643786694051

`A205510(A070726(n)^A230241(n+1))`
-/

namespace A157905.P9988505643786694051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (SequenceMachineLib.roundAway ((A070726 n : ℚ) ^ (A230241 (n + 1) : ℤ))).toNat

end

end A157905.P9988505643786694051

/-! ## A157905.P16298746575317673345

`A345935(A042375(n))`
-/

namespace A157905.P16298746575317673345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (A042375 n).toNat

end

end A157905.P16298746575317673345

/-! ## A157905.P14353765312145512558

`A049705(A005915(n))^A209315(n+1)`
-/

namespace A157905.P14353765312145512558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049705 (A005915 n).toNat : ℚ) ^ (A209315 (n + 1) : ℤ)

end

end A157905.P14353765312145512558

/-!
# A157907: Numerator of Euler(n,12).

The programs for A157907, there is no canonical definition to state claims against.
-/

/-! ## A157907.P2743788407100826278

`2*A156293(n)-A157886(n)`
-/

namespace A157907.P2743788407100826278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156293 n - A157886 n

end

end A157907.P2743788407100826278

/-! ## A157907.P3800797267482957331

`A001020(n)*A171977(n+1)-A157886(n)`
-/

namespace A157907.P3800797267482957331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A171977 (n + 1) - A157886 n

end

end A157907.P3800797267482957331

/-! ## A157907.P6669449212320711738

`lcm(A156293(n), A171977(n+1))-A157886(n)`
-/

namespace A157907.P6669449212320711738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A156293 n) (A171977 (n + 1)) : ℤ) - A157886 n

end

end A157907.P6669449212320711738

/-!
# A157908: Nonprimes whose digits are all square.

The programs for A157908, there is no canonical definition to state claims against.
-/

/-! ## A157908.P5204969460580134276

`∩[A046030(n+1), A141468(n+1)]`
-/

namespace A157908.P5204969460580134276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157908.P5204969460580134276

/-! ## A157908.P2592235338120947358

`∩[A046030(n+1), A173905(n+1)]`
-/

namespace A157908.P2592235338120947358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157908.P2592235338120947358

/-! ## A157908.P999349095863822283

`∩[comp[A000040(n+1)], A046030(n+1)]`
-/

namespace A157908.P999349095863822283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A157908.P999349095863822283

/-! ## A157908.P10128805069445597971

`∩[A046030(n+1), comp[A216285(n+1)]]`
-/

namespace A157908.P10128805069445597971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A157908.P10128805069445597971

/-! ## A157908.P11407551543139153132

`∩[comp[A154727(2*(n+1))], A046030(n+1)]`
-/

namespace A157908.P11407551543139153132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154727 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A157908.P11407551543139153132

/-!
# A157909: a(n) = 81*n^2 - 9.

The programs for A157909, the canonical program `A157909.P13072774192328116825` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157909 has offset 1).

The definition of A157909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)²-9` (program `A157909.P13072774192328116825`, by `A157909.P13072774192328116825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157909.P13072774192328116825

`81*(n+1)²-9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157909

/-- `81*(n+1)²-9` -/
def P13072774192328116825.Spec : Prop :=
  ∀ n, P13072774192328116825.a n = A157909 (n + 1)

theorem P13072774192328116825.correct : P13072774192328116825.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel]

end A157909

/-! ## A157909.P17411962882567095574

`ogf((72+99x-9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157909.P17411962882567095574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [72, 99, -9] [1, -3, 3, -1] n

end

end A157909.P17411962882567095574

namespace A157909

/-- `ogf((72+99x-9x^2)/(1-3x+3x^2-x^3))` -/
def P17411962882567095574.Spec : Prop :=
  ∀ n, P17411962882567095574.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P1860250031118777448

`9*A136016(n+1)`
-/

namespace A157909.P1860250031118777448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A136016 (n + 1)

end

end A157909.P1860250031118777448

namespace A157909

/-- `9*A136016(n+1)` -/
def P1860250031118777448.Spec : Prop :=
  ∀ n, P1860250031118777448.a n = A157909 (n + 1)

theorem P1860250031118777448.correct : P1860250031118777448.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P1860250031118777448.a, A157909.P13072774192328116825.a, A136016, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P13195612233646811060

`record[(9*(1-n))²-9]`
-/

namespace A157909.P13195612233646811060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (1 - (n : ℤ))) ^ 2 - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157909.P13195612233646811060

namespace A157909

/-- `record[(9*(1-n))²-9]` -/
def P13195612233646811060.Spec : Prop :=
  ∀ n, P13195612233646811060.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P8800212658336093283

`9*(∑[a(n-1)+18]-1)` with `a(0)=9`
-/

namespace A157909.P8800212658336093283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A157909.P8800212658336093283

namespace A157909

/-- `9*(∑[a(n-1)+18]-1)` -/
def P8800212658336093283.Spec : Prop :=
  ∀ n, P8800212658336093283.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P6076338859439200397

`lcm(9, ∑[a(n-1)+18]-1)` with `a(0)=9`
-/

namespace A157909.P6076338859439200397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A157909.P6076338859439200397

namespace A157909

/-- `lcm(9, ∑[a(n-1)+18]-1)` -/
def P6076338859439200397.Spec : Prop :=
  ∀ n, (P6076338859439200397.a n : ℤ) = A157909 (n + 1)

end A157909

/-! ## A157909.P2241223193615890925

`abs(9-A017162(n+1))`
-/

namespace A157909.P2241223193615890925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A017162 (n + 1)|

end

end A157909.P2241223193615890925

namespace A157909

/-- `abs(9-A017162(n+1))` -/
def P2241223193615890925.Spec : Prop :=
  ∀ n, P2241223193615890925.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P12703266927823027096

`(3*n+4)*A124388(n)`
-/

namespace A157909.P12703266927823027096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) * A124388 n

end

end A157909.P12703266927823027096

namespace A157909

/-- `(3*n+4)*A124388(n)` -/
def P12703266927823027096.Spec : Prop :=
  ∀ n, P12703266927823027096.a n = A157909 (n + 1)

theorem P12703266927823027096.correct : P12703266927823027096.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P12703266927823027096.a, A157909.P13072774192328116825.a, A124388, A124388.P7911995561138639037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P3013004910807876149

`(9*n+12)*A017233(n)`
-/

namespace A157909.P3013004910807876149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 12 : ℤ) * A017233 n

end

end A157909.P3013004910807876149

namespace A157909

/-- `(9*n+12)*A017233(n)` -/
def P3013004910807876149.Spec : Prop :=
  ∀ n, P3013004910807876149.a n = A157909 (n + 1)

theorem P3013004910807876149.correct : P3013004910807876149.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P3013004910807876149.a, A157909.P13072774192328116825.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P14637213506602603473

`3/(n+1)*A097321(n+1)`
-/

namespace A157909.P14637213506602603473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A097321 (n + 1) : ℚ)

end

end A157909.P14637213506602603473

namespace A157909

/-- `3/(n+1)*A097321(n+1)` -/
def P14637213506602603473.Spec : Prop :=
  ∀ n, P14637213506602603473.a n = (A157909 (n + 1) : ℚ)

theorem P14637213506602603473.correct : P14637213506602603473.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P14637213506602603473.a, A157909.P13072774192328116825.a, A097321, A097321.P10266349774017394715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P17173303991841576896

`lcm(A040073(n), A136016(n+1))`
-/

namespace A157909.P17173303991841576896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040073 n) (A136016 (n + 1))

end

end A157909.P17173303991841576896

namespace A157909

/-- `lcm(A040073(n), A136016(n+1))` -/
def P17173303991841576896.Spec : Prop :=
  ∀ n, (P17173303991841576896.a n : ℤ) = A157909 (n + 1)

end A157909

/-! ## A157909.P13151013340441377539

`3*(A244634(n+1)-3)`
-/

namespace A157909.P13151013340441377539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A244634 (n + 1) - 3)

end

end A157909.P13151013340441377539

namespace A157909

/-- `3*(A244634(n+1)-3)` -/
def P13151013340441377539.Spec : Prop :=
  ∀ n, P13151013340441377539.a n = A157909 (n + 1)

theorem P13151013340441377539.correct : P13151013340441377539.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P13151013340441377539.a, A157909.P13072774192328116825.a, A244634, A244634.P2988327600076018202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P11395477110533830242

`(9*n+12)*A122709(n+1)`
-/

namespace A157909.P11395477110533830242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 12 : ℤ) * A122709 (n + 1)

end

end A157909.P11395477110533830242

namespace A157909

/-- `(9*n+12)*A122709(n+1)` -/
def P11395477110533830242.Spec : Prop :=
  ∀ n, P11395477110533830242.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P18178935421889364478

`Δ[∑[A008591(n)²]-A008591(n)]`
-/

namespace A157909.P18178935421889364478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157909.P18178935421889364478

namespace A157909

/-- `Δ[∑[A008591(n)²]-A008591(n)]` -/
def P18178935421889364478.Spec : Prop :=
  ∀ n, P18178935421889364478.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P4249163105560527171

`(6*n+3+A008585(n+1))*A017197(n+1)`
-/

namespace A157909.P4249163105560527171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 3 : ℤ) + A008585 (n + 1)) * A017197 (n + 1)

end

end A157909.P4249163105560527171

namespace A157909

/-- `(6*n+3+A008585(n+1))*A017197(n+1)` -/
def P4249163105560527171.Spec : Prop :=
  ∀ n, P4249163105560527171.a n = A157909 (n + 1)

theorem P4249163105560527171.correct : P4249163105560527171.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P4249163105560527171.a, A157909.P13072774192328116825.a, A008585, A008585.P13732812384316341435.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P6894721202288851328

`(A017641(n)-A016777(n+1))*A017197(n+1)`
-/

namespace A157909.P6894721202288851328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017641 n - A016777 (n + 1)) * A017197 (n + 1)

end

end A157909.P6894721202288851328

namespace A157909

/-- `(A017641(n)-A016777(n+1))*A017197(n+1)` -/
def P6894721202288851328.Spec : Prop :=
  ∀ n, P6894721202288851328.a n = A157909 (n + 1)

theorem P6894721202288851328.correct : P6894721202288851328.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P6894721202288851328.a, A157909.P13072774192328116825.a, A016777, A016777.P9931792138852554157.a, A017197, A017197.P8201470797211874866.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P10642801720281584405

`(A161705(n+1)-A017209(n+1))*A017197(n+1)`
-/

namespace A157909.P10642801720281584405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161705 (n + 1) - A017209 (n + 1)) * A017197 (n + 1)

end

end A157909.P10642801720281584405

namespace A157909

/-- `(A161705(n+1)-A017209(n+1))*A017197(n+1)` -/
def P10642801720281584405.Spec : Prop :=
  ∀ n, P10642801720281584405.a n = A157909 (n + 1)

theorem P10642801720281584405.correct : P10642801720281584405.Spec := by
  intro n
  simp only [A157909, Nat.add_sub_cancel, A157909.P10642801720281584405.a, A157909.P13072774192328116825.a, A017197, A017197.P8201470797211874866.a, A017209, A017209.P14094936957545695605.a, A161705, A161705.P9285490780148837046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157909

/-! ## A157909.P5903029016782367750

`A019557(n+1)/A008574(n+1)*A045946(n+1)`
-/

namespace A157909.P5903029016782367750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019557 (n + 1) : ℚ) / (A008574 (n + 1) : ℚ) * (A045946 (n + 1) : ℚ)

end

end A157909.P5903029016782367750

namespace A157909

/-- `A019557(n+1)/A008574(n+1)*A045946(n+1)` -/
def P5903029016782367750.Spec : Prop :=
  ∀ n, P5903029016782367750.a n = (A157909 (n + 1) : ℚ)

end A157909

/-! ## A157909.P18433009495649310256

`(3*n+4)*A174029(2*n+1)`
-/

namespace A157909.P18433009495649310256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) * A174029 (2 * n + 1)

end

end A157909.P18433009495649310256

namespace A157909

/-- `(3*n+4)*A174029(2*n+1)` -/
def P18433009495649310256.Spec : Prop :=
  ∀ n, P18433009495649310256.a n = A157909 (n + 1)

end A157909

/-! ## A157909.P15277732769170336319

`(A056020(2*(n+1))-2)*A017197(n+1)`
-/

namespace A157909.P15277732769170336319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056020 (2 * (n + 1)) - 2) * A017197 (n + 1)

end

end A157909.P15277732769170336319

namespace A157909

/-- `(A056020(2*(n+1))-2)*A017197(n+1)` -/
def P15277732769170336319.Spec : Prop :=
  ∀ n, P15277732769170336319.a n = A157909 (n + 1)

end A157909

/-!
# A157910: a(n) = 18*n^2 - 1.

The programs for A157910, the canonical program `A157910.P11116691083865188033` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157910 has offset 1).

The definition of A157910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*(n+1)²-1` (program `A157910.P11116691083865188033`, by `A157910.P11116691083865188033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157910.P11116691083865188033

`18*(n+1)²-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157910

/-- `18*(n+1)²-1` -/
def P11116691083865188033.Spec : Prop :=
  ∀ n, P11116691083865188033.a n = A157910 (n + 1)

theorem P11116691083865188033.correct : P11116691083865188033.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel]

end A157910

/-! ## A157910.P4720144326713431214

`ogf((17+20x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157910.P4720144326713431214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 20, -1] [1, -3, 3, -1] n

end

end A157910.P4720144326713431214

namespace A157910

/-- `ogf((17+20x-x^2)/(1-3x+3x^2-x^3))` -/
def P4720144326713431214.Spec : Prop :=
  ∀ n, P4720144326713431214.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P12814183245485652845

`abs(9*∑[record[xor(3, n)]-1]-1)`
-/

namespace A157910.P12814183245485652845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1|

end

end A157910.P12814183245485652845

namespace A157910

/-- `abs(9*∑[record[xor(3, n)]-1]-1)` -/
def P12814183245485652845.Spec : Prop :=
  ∀ n, P12814183245485652845.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P10947996734110384428

`abs(2-A157889(n+1))`
-/

namespace A157910.P10947996734110384428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A157889 (n + 1)|

end

end A157910.P10947996734110384428

namespace A157910

/-- `abs(2-A157889(n+1))` -/
def P10947996734110384428.Spec : Prop :=
  ∀ n, P10947996734110384428.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P412150165648497771

`floor(A136017(n+1)/2)`
-/

namespace A157910.P412150165648497771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136017 (n + 1) : ℚ) / 2⌋

end

end A157910.P412150165648497771

namespace A157910

/-- `floor(A136017(n+1)/2)` -/
def P412150165648497771.Spec : Prop :=
  ∀ n, P412150165648497771.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P8127073511268725788

`floor(A158656(n+1)/3)`
-/

namespace A157910.P8127073511268725788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158656 (n + 1) : ℚ) / 3⌋

end

end A157910.P8127073511268725788

namespace A157910

/-- `floor(A158656(n+1)/3)` -/
def P8127073511268725788.Spec : Prop :=
  ∀ n, P8127073511268725788.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P12112707971680489858

`(A158738(n+1)-3)/4`
-/

namespace A157910.P12112707971680489858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158738 (n + 1) - 3 : ℚ) / 4

end

end A157910.P12112707971680489858

namespace A157910

/-- `(A158738(n+1)-3)/4` -/
def P12112707971680489858.Spec : Prop :=
  ∀ n, P12112707971680489858.a n = (A157910 (n + 1) : ℚ)

theorem P12112707971680489858.correct : P12112707971680489858.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P12112707971680489858.a, A157910.P11116691083865188033.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P291295456470557679

`((A016969(n)+1)²-2)/2`
-/

namespace A157910.P291295456470557679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016969 n + 1) ^ 2 - 2 : ℚ) / 2

end

end A157910.P291295456470557679

namespace A157910

/-- `((A016969(n)+1)²-2)/2` -/
def P291295456470557679.Spec : Prop :=
  ∀ n, P291295456470557679.a n = (A157910 (n + 1) : ℚ)

theorem P291295456470557679.correct : P291295456470557679.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P291295456470557679.a, A157910.P11116691083865188033.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P13373721803914311115

`(36*A000290(n+1)-2)/2`
-/

namespace A157910.P13373721803914311115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (36 * A000290 (n + 1) - 2 : ℚ) / 2

end

end A157910.P13373721803914311115

namespace A157910

/-- `(36*A000290(n+1)-2)/2` -/
def P13373721803914311115.Spec : Prop :=
  ∀ n, P13373721803914311115.a n = (A157910 (n + 1) : ℚ)

theorem P13373721803914311115.correct : P13373721803914311115.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P13373721803914311115.a, A157910.P11116691083865188033.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P9104411620557181133

`(A157286(n+1)+n-1)/2`
-/

namespace A157910.P9104411620557181133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157286 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A157910.P9104411620557181133

namespace A157910

/-- `(A157286(n+1)+n-1)/2` -/
def P9104411620557181133.Spec : Prop :=
  ∀ n, P9104411620557181133.a n = (A157910 (n + 1) : ℚ)

theorem P9104411620557181133.correct : P9104411620557181133.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P9104411620557181133.a, A157910.P11116691083865188033.a, A157286, A157286.P1200146671575327365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P9528544891574166107

`(A157324(n+1)-(n+3))/2`
-/

namespace A157910.P9528544891574166107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157324 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A157910.P9528544891574166107

namespace A157910

/-- `(A157324(n+1)-(n+3))/2` -/
def P9528544891574166107.Spec : Prop :=
  ∀ n, P9528544891574166107.a n = (A157910 (n + 1) : ℚ)

theorem P9528544891574166107.correct : P9528544891574166107.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P9528544891574166107.a, A157910.P11116691083865188033.a, A157324, A157324.P15345809453353872924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P271903104188947733

`Δ[(n+1)*(3*A014105(n)-1)]`
-/

namespace A157910.P271903104188947733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 * A014105 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157910.P271903104188947733

namespace A157910

/-- `Δ[(n+1)*(3*A014105(n)-1)]` -/
def P271903104188947733.Spec : Prop :=
  ∀ n, P271903104188947733.a n = A157910 (n + 1)

theorem P271903104188947733.correct : P271903104188947733.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P271903104188947733.f1, A157910.P271903104188947733.a, A157910.P11116691083865188033.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P15584362788912527352

`(A016910(n+1)-2)/2`
-/

namespace A157910.P15584362788912527352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016910 (n + 1) - 2 : ℚ) / 2

end

end A157910.P15584362788912527352

namespace A157910

/-- `(A016910(n+1)-2)/2` -/
def P15584362788912527352.Spec : Prop :=
  ∀ n, P15584362788912527352.a n = (A157910 (n + 1) : ℚ)

theorem P15584362788912527352.correct : P15584362788912527352.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P15584362788912527352.a, A157910.P11116691083865188033.a, A016910, A016910.P3732514033866141413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P16905081514369932641

`(A158591(n+1)-3)/2`
-/

namespace A157910.P16905081514369932641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158591 (n + 1) - 3 : ℚ) / 2

end

end A157910.P16905081514369932641

namespace A157910

/-- `(A158591(n+1)-3)/2` -/
def P16905081514369932641.Spec : Prop :=
  ∀ n, P16905081514369932641.a n = (A157910 (n + 1) : ℚ)

theorem P16905081514369932641.correct : P16905081514369932641.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P16905081514369932641.a, A157910.P11116691083865188033.a, A158591, A158591.P11450394899068244051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P6098314543772268922

`Δ[A169711(n+1)-Δ[n²]]`
-/

namespace A157910.P6098314543772268922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157910.P6098314543772268922

namespace A157910

/-- `Δ[A169711(n+1)-Δ[n²]]` -/
def P6098314543772268922.Spec : Prop :=
  ∀ n, P6098314543772268922.a n = A157910 (n + 1)

theorem P6098314543772268922.correct : P6098314543772268922.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P6098314543772268922.f2, A157910.P6098314543772268922.f1, A157910.P6098314543772268922.a, A157910.P11116691083865188033.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P9077990647919261894

`abs(2-(Δ[A000567(n+1)]-1)²)/2`
-/

namespace A157910.P9077990647919261894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|2 - (f1 (n + 1) - f1 n - 1) ^ 2| : ℚ) / 2

end

end A157910.P9077990647919261894

namespace A157910

/-- `abs(2-(Δ[A000567(n+1)]-1)²)/2` -/
def P9077990647919261894.Spec : Prop :=
  ∀ n, P9077990647919261894.a n = (A157910 (n + 1) : ℚ)

end A157910

/-! ## A157910.P14312433108295976076

`A259055(Δ[n²])/2`
-/

namespace A157910.P14312433108295976076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259055 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A157910.P14312433108295976076

namespace A157910

/-- `A259055(Δ[n²])/2` -/
def P14312433108295976076.Spec : Prop :=
  ∀ n, P14312433108295976076.a n = (A157910 (n + 1) : ℚ)

end A157910

/-! ## A157910.P8726901993293603246

`ceil(A157872(2*(n+1))/2)`
-/

namespace A157910.P8726901993293603246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157872 (2 * (n + 1)) : ℚ) / 2⌉

end

end A157910.P8726901993293603246

namespace A157910

/-- `ceil(A157872(2*(n+1))/2)` -/
def P8726901993293603246.Spec : Prop :=
  ∀ n, P8726901993293603246.a n = A157910 (n + 1)

end A157910

/-! ## A157910.P9557352253792956767

`A056220(3*(n+1))`
-/

namespace A157910.P9557352253792956767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (3 * (n + 1))

end

end A157910.P9557352253792956767

namespace A157910

/-- `A056220(3*(n+1))` -/
def P9557352253792956767.Spec : Prop :=
  ∀ n, P9557352253792956767.a n = A157910 (n + 1)

theorem P9557352253792956767.correct : P9557352253792956767.Spec := by
  intro n
  simp only [A157910, Nat.add_sub_cancel, A157910.P9557352253792956767.a, A157910.P11116691083865188033.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157910

/-! ## A157910.P1945095397845685820

`sqrt(A239607(3*(n+1)))`
-/

namespace A157910.P1945095397845685820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239607 (3 * (n + 1)) : ℝ)

end

end A157910.P1945095397845685820

namespace A157910

/-- `sqrt(A239607(3*(n+1)))` -/
def P1945095397845685820.Spec : Prop :=
  ∀ n, P1945095397845685820.a n = (A157910 (n + 1) : ℝ)

end A157910

/-!
# A157911: Nonprimes whose digits are all cubes.

The programs for A157911, there is no canonical definition to state claims against.
-/

/-! ## A157911.P3141161575443993871

`∩[A141468(n+1), A046031(n)]`
-/

namespace A157911.P3141161575443993871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157911.P3141161575443993871

/-! ## A157911.P7158705203490685326

`∩[A173905(n+1), A046031(n)]`
-/

namespace A157911.P7158705203490685326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157911.P7158705203490685326

/-! ## A157911.P1795498916797893453

`eq[A004182(A235049(n)), A055671(n)]`
-/

namespace A157911.P1795498916797893453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157911.P1795498916797893453

/-! ## A157911.P2583929630385547514

`eq[A055671(n), A106747(A004183(n))]`
-/

namespace A157911.P2583929630385547514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157911.P2583929630385547514

/-! ## A157911.P5771546623793646057

`eq[A055671(n), A176407(A222232(n))]`
-/

namespace A157911.P5771546623793646057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157911.P5771546623793646057

/-!
# A157912: a(n) = 64*n^2 + 16.

The programs for A157912, the canonical program `A157912.P13536474429434453945` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157912 has offset 1).

The definition of A157912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²+16` (program `A157912.P13536474429434453945`, by `A157912.P13536474429434453945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157912.P13536474429434453945

`64*(n+1)²+16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157912

/-- `64*(n+1)²+16` -/
def P13536474429434453945.Spec : Prop :=
  ∀ n, (P13536474429434453945.a n : ℤ) = A157912 (n + 1)

theorem P13536474429434453945.correct : P13536474429434453945.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel]

end A157912

/-! ## A157912.P13029106133030895635

`ogf((80+32x+16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157912.P13029106133030895635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [80, 32, 16] [1, -3, 3, -1] n

end

end A157912.P13029106133030895635

namespace A157912

/-- `ogf((80+32x+16x^2)/(1-3x+3x^2-x^3))` -/
def P13029106133030895635.Spec : Prop :=
  ∀ n, P13029106133030895635.a n = A157912 (n + 1)

end A157912

/-! ## A157912.P13566974413693332091

`16*A053755(n+1)`
-/

namespace A157912.P13566974413693332091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A053755 (n + 1)

end

end A157912.P13566974413693332091

namespace A157912

/-- `16*A053755(n+1)` -/
def P13566974413693332091.Spec : Prop :=
  ∀ n, P13566974413693332091.a n = A157912 (n + 1)

theorem P13566974413693332091.correct : P13566974413693332091.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P13566974413693332091.a, A157912.P13536474429434453945.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P3973750183338556132

`Δ[or(1, 2*n)^4]/(n+1)`
-/

namespace A157912.P3973750183338556132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A157912.P3973750183338556132

namespace A157912

/-- `Δ[or(1, 2*n)^4]/(n+1)` -/
def P3973750183338556132.Spec : Prop :=
  ∀ n, P3973750183338556132.a n = (A157912 (n + 1) : ℚ)

end A157912

/-! ## A157912.P401591628997718580

`Δ[xor(1, 2*n)^4]/(n+1)`
-/

namespace A157912.P401591628997718580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A157912.P401591628997718580

namespace A157912

/-- `Δ[xor(1, 2*n)^4]/(n+1)` -/
def P401591628997718580.Spec : Prop :=
  ∀ n, P401591628997718580.a n = (A157912 (n + 1) : ℚ)

end A157912

/-! ## A157912.P12992352443143523164

`lcm(2, Δ[(2*n+1)^4]/(n+1))`
-/

namespace A157912.P12992352443143523164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)))

end

end A157912.P12992352443143523164

namespace A157912

/-- `lcm(2, Δ[(2*n+1)^4]/(n+1))` -/
def P12992352443143523164.Spec : Prop :=
  ∀ n, (P12992352443143523164.a n : ℤ) = A157912 (n + 1)

end A157912

/-! ## A157912.P17081438962667888871

`Δ[(2*n+1)^4]/C(n+1, n)`
-/

namespace A157912.P17081438962667888871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.choose (n + 1) n : ℚ)

end

end A157912.P17081438962667888871

namespace A157912

/-- `Δ[(2*n+1)^4]/C(n+1, n)` -/
def P17081438962667888871.Spec : Prop :=
  ∀ n, P17081438962667888871.a n = (A157912 (n + 1) : ℚ)

end A157912

/-! ## A157912.P14225088379707572536

`8*(4*∑[a(n-1)+4]+2)` with `a(0)=2, a(1)=6`
-/

namespace A157912.P14225088379707572536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2)

end

end A157912.P14225088379707572536

namespace A157912

/-- `8*(4*∑[a(n-1)+4]+2)` -/
def P14225088379707572536.Spec : Prop :=
  ∀ n, (P14225088379707572536.a n : ℤ) = A157912 (n + 1)

end A157912

/-! ## A157912.P10587099870025724257

`4*Δ[A400618(n)]`
-/

namespace A157912.P10587099870025724257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A157912.P10587099870025724257

namespace A157912

/-- `4*Δ[A400618(n)]` -/
def P10587099870025724257.Spec : Prop :=
  ∀ n, P10587099870025724257.a n = A157912 (n + 1)

end A157912

/-! ## A157912.P10310634819959226555

`4*A158444(n+1)`
-/

namespace A157912.P10310634819959226555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158444 (n + 1)

end

end A157912.P10310634819959226555

namespace A157912

/-- `4*A158444(n+1)` -/
def P10310634819959226555.Spec : Prop :=
  ∀ n, P10310634819959226555.a n = A157912 (n + 1)

theorem P10310634819959226555.correct : P10310634819959226555.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P10310634819959226555.a, A157912.P13536474429434453945.a, A158444, A158444.P9799945694755505124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P5655598984233812303

`8*A008527(n+1)`
-/

namespace A157912.P5655598984233812303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008527 (n + 1)

end

end A157912.P5655598984233812303

namespace A157912

/-- `8*A008527(n+1)` -/
def P5655598984233812303.Spec : Prop :=
  ∀ n, P5655598984233812303.a n = A157912 (n + 1)

end A157912

/-! ## A157912.P5729278596257462551

`8*A108100(n+1)`
-/

namespace A157912.P5729278596257462551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108100 (n + 1)

end

end A157912.P5729278596257462551

namespace A157912

/-- `8*A108100(n+1)` -/
def P5729278596257462551.Spec : Prop :=
  ∀ n, P5729278596257462551.a n = A157912 (n + 1)

theorem P5729278596257462551.correct : P5729278596257462551.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P5729278596257462551.a, A157912.P13536474429434453945.a, A108100, A108100.P3833022910287010970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P17059826611820064549

`4*(A141759(n)+5)`
-/

namespace A157912.P17059826611820064549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A141759 n + 5)

end

end A157912.P17059826611820064549

namespace A157912

/-- `4*(A141759(n)+5)` -/
def P17059826611820064549.Spec : Prop :=
  ∀ n, P17059826611820064549.a n = A157912 (n + 1)

theorem P17059826611820064549.correct : P17059826611820064549.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P17059826611820064549.a, A157912.P13536474429434453945.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P3863265042395775132

`Δ[A016756(n)]/(n+1)`
-/

namespace A157912.P3863265042395775132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A157912.P3863265042395775132

namespace A157912

/-- `Δ[A016756(n)]/(n+1)` -/
def P3863265042395775132.Spec : Prop :=
  ∀ n, P3863265042395775132.a n = (A157912 (n + 1) : ℚ)

theorem P3863265042395775132.correct : P3863265042395775132.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P3863265042395775132.f1, A157912.P3863265042395775132.a, A157912.P13536474429434453945.a, A016756, A016756.P11037387936499398145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P812764141806599107

`4*(A108211(n+1)+3)`
-/

namespace A157912.P812764141806599107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A108211 (n + 1) + 3)

end

end A157912.P812764141806599107

namespace A157912

/-- `4*(A108211(n+1)+3)` -/
def P812764141806599107.Spec : Prop :=
  ∀ n, P812764141806599107.a n = A157912 (n + 1)

theorem P812764141806599107.correct : P812764141806599107.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P812764141806599107.a, A157912.P13536474429434453945.a, A108211, A108211.P17641433821935710279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P13108376120022335163

`Δ[A016754(n)²]/(n+1)`
-/

namespace A157912.P13108376120022335163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A157912.P13108376120022335163

namespace A157912

/-- `Δ[A016754(n)²]/(n+1)` -/
def P13108376120022335163.Spec : Prop :=
  ∀ n, P13108376120022335163.a n = (A157912 (n + 1) : ℚ)

theorem P13108376120022335163.correct : P13108376120022335163.Spec := by
  intro n
  simp only [A157912, Nat.add_sub_cancel, A157912.P13108376120022335163.f1, A157912.P13108376120022335163.a, A157912.P13536474429434453945.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157912

/-! ## A157912.P10021058838489155962

`4*or(4, (n-2-A016873(n))²)`
-/

namespace A157912.P10021058838489155962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.lor 4 (((n : ℤ) - 2 - A016873 n) ^ 2)

end

end A157912.P10021058838489155962

namespace A157912

/-- `4*or(4, (n-2-A016873(n))²)` -/
def P10021058838489155962.Spec : Prop :=
  ∀ n, P10021058838489155962.a n = A157912 (n + 1)

end A157912

/-! ## A157912.P17600896023113916815

`2/(n+1)*A117216(n+1)`
-/

namespace A157912.P17600896023113916815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A117216 (n + 1) : ℚ)

end

end A157912.P17600896023113916815

namespace A157912

/-- `2/(n+1)*A117216(n+1)` -/
def P17600896023113916815.Spec : Prop :=
  ∀ n, P17600896023113916815.a n = (A157912 (n + 1) : ℚ)

end A157912

/-! ## A157912.P5829883279417878456

`(A005899(n+1)-1)*A040056(n+1)`
-/

namespace A157912.P5829883279417878456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005899 (n + 1) - 1) * A040056 (n + 1)

end

end A157912.P5829883279417878456

namespace A157912

/-- `(A005899(n+1)-1)*A040056(n+1)` -/
def P5829883279417878456.Spec : Prop :=
  ∀ n, P5829883279417878456.a n = A157912 (n + 1)

end A157912

/-! ## A157912.P4073802105713890052

`2*2*A162024(2*n+3)`
-/

namespace A157912.P4073802105713890052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A162024 (2 * n + 3))

end

end A157912.P4073802105713890052

namespace A157912

/-- `2*2*A162024(2*n+3)` -/
def P4073802105713890052.Spec : Prop :=
  ∀ n, P4073802105713890052.a n = A157912 (n + 1)

end A157912

/-!
# A157913: a(n) = 64*n^2 - 16.

The programs for A157913, the canonical program `A157913.P9302126423739827390` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157913 has offset 1).

The definition of A157913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²-16` (program `A157913.P9302126423739827390`, by `A157913.P9302126423739827390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157913.P9302126423739827390

`64*(n+1)²-16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157913

/-- `64*(n+1)²-16` -/
def P9302126423739827390.Spec : Prop :=
  ∀ n, P9302126423739827390.a n = A157913 (n + 1)

theorem P9302126423739827390.correct : P9302126423739827390.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel]

end A157913

/-! ## A157913.P1414906844884171872

`ogf((48+96x-16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157913.P1414906844884171872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [48, 96, -16] [1, -3, 3, -1] n

end

end A157913.P1414906844884171872

namespace A157913

/-- `ogf((48+96x-16x^2)/(1-3x+3x^2-x^3))` -/
def P1414906844884171872.Spec : Prop :=
  ∀ n, P1414906844884171872.a n = A157913 (n + 1)

end A157913

/-! ## A157913.P17081017730343425911

`16*A000466(n+1)`
-/

namespace A157913.P17081017730343425911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000466 (n + 1)

end

end A157913.P17081017730343425911

namespace A157913

/-- `16*A000466(n+1)` -/
def P17081017730343425911.Spec : Prop :=
  ∀ n, P17081017730343425911.a n = A157913 (n + 1)

theorem P17081017730343425911.correct : P17081017730343425911.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P17081017730343425911.a, A157913.P9302126423739827390.a, A000466, A000466.P5626493666969552810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P3559368030496551787

`record[lcm(16, (n+3)*(n+1))]`
-/

namespace A157913.P3559368030496551787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 16 ((n + 3) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157913.P3559368030496551787

namespace A157913

/-- `record[lcm(16, (n+3)*(n+1))]` -/
def P3559368030496551787.Spec : Prop :=
  ∀ n, (P3559368030496551787.a n : ℤ) = A157913 (n + 1)

end A157913

/-! ## A157913.P5411347521894303712

`lcm(2*n+1, Δ[(4*(n+1))²])`
-/

namespace A157913.P5411347521894303712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157913.P5411347521894303712

namespace A157913

/-- `lcm(2*n+1, Δ[(4*(n+1))²])` -/
def P5411347521894303712.Spec : Prop :=
  ∀ n, (P5411347521894303712.a n : ℤ) = A157913 (n + 1)

end A157913

/-! ## A157913.P8397792866901148087

`8*(4*∑[a(n-1)+4]-2)` with `a(0)=2, a(1)=6`
-/

namespace A157913.P8397792866901148087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2)

end

end A157913.P8397792866901148087

namespace A157913

/-- `8*(4*∑[a(n-1)+4]-2)` -/
def P8397792866901148087.Spec : Prop :=
  ∀ n, P8397792866901148087.a n = A157913 (n + 1)

end A157913

/-! ## A157913.P9590309610324535576

`4*A158443(n+1)`
-/

namespace A157913.P9590309610324535576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158443 (n + 1)

end

end A157913.P9590309610324535576

namespace A157913

/-- `4*A158443(n+1)` -/
def P9590309610324535576.Spec : Prop :=
  ∀ n, P9590309610324535576.a n = A157913 (n + 1)

theorem P9590309610324535576.correct : P9590309610324535576.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P9590309610324535576.a, A157913.P9302126423739827390.a, A158443, A158443.P14699209223972058803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P15276574257557324635

`4*(A141759(n)-3)`
-/

namespace A157913.P15276574257557324635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A141759 n - 3)

end

end A157913.P15276574257557324635

namespace A157913

/-- `4*(A141759(n)-3)` -/
def P15276574257557324635.Spec : Prop :=
  ∀ n, P15276574257557324635.a n = A157913 (n + 1)

theorem P15276574257557324635.correct : P15276574257557324635.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P15276574257557324635.a, A157913.P9302126423739827390.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P15928187444130338118

`4*(A108211(n+1)-5)`
-/

namespace A157913.P15928187444130338118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A108211 (n + 1) - 5)

end

end A157913.P15928187444130338118

namespace A157913

/-- `4*(A108211(n+1)-5)` -/
def P15928187444130338118.Spec : Prop :=
  ∀ n, P15928187444130338118.a n = A157913 (n + 1)

theorem P15928187444130338118.correct : P15928187444130338118.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P15928187444130338118.a, A157913.P9302126423739827390.a, A108211, A108211.P17641433821935710279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P12064378580259619774

`∑[A004767(n)]*Δ[(4*n)²]/(n+1)`
-/

namespace A157913.P12064378580259619774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A157913.P12064378580259619774

namespace A157913

/-- `∑[A004767(n)]*Δ[(4*n)²]/(n+1)` -/
def P12064378580259619774.Spec : Prop :=
  ∀ n, P12064378580259619774.a n = (A157913 (n + 1) : ℚ)

end A157913

/-! ## A157913.P16007490114657808189

`(A000027(n+1)+n+2)*Δ[(4*n)²]`
-/

namespace A157913.P16007490114657808189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) + (n : ℤ) + 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157913.P16007490114657808189

namespace A157913

/-- `(A000027(n+1)+n+2)*Δ[(4*n)²]` -/
def P16007490114657808189.Spec : Prop :=
  ∀ n, P16007490114657808189.a n = A157913 (n + 1)

theorem P16007490114657808189.correct : P16007490114657808189.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P16007490114657808189.f1, A157913.P16007490114657808189.a, A157913.P9302126423739827390.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P15992716395735996794

`A017113(n+1)*A017113(n)`
-/

namespace A157913.P15992716395735996794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1) * A017113 n

end

end A157913.P15992716395735996794

namespace A157913

/-- `A017113(n+1)*A017113(n)` -/
def P15992716395735996794.Spec : Prop :=
  ∀ n, P15992716395735996794.a n = A157913 (n + 1)

theorem P15992716395735996794.correct : P15992716395735996794.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P15992716395735996794.a, A157913.P9302126423739827390.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P6439551965609616276

`A016825(n+1)*A051062(n)`
-/

namespace A157913.P6439551965609616276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) * A051062 n

end

end A157913.P6439551965609616276

namespace A157913

/-- `A016825(n+1)*A051062(n)` -/
def P6439551965609616276.Spec : Prop :=
  ∀ n, P6439551965609616276.a n = A157913 (n + 1)

theorem P6439551965609616276.correct : P6439551965609616276.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P6439551965609616276.a, A157913.P9302126423739827390.a, A016825, A016825.P4712696052905976233.a, A051062, A051062.P11177069363644223625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P11145751191427976960

`A051062(n)*A073760(n+1)`
-/

namespace A157913.P11145751191427976960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n * A073760 (n + 1)

end

end A157913.P11145751191427976960

namespace A157913

/-- `A051062(n)*A073760(n+1)` -/
def P11145751191427976960.Spec : Prop :=
  ∀ n, P11145751191427976960.a n = A157913 (n + 1)

theorem P11145751191427976960.correct : P11145751191427976960.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P11145751191427976960.a, A157913.P9302126423739827390.a, A051062, A051062.P11177069363644223625.a, A073760, A073760.P16575364427158424751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P9827602740692936646

`sqrt(A017114(n+1)*A017114(n))`
-/

namespace A157913.P9827602740692936646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017114 (n + 1) * A017114 n : ℝ)

end

end A157913.P9827602740692936646

namespace A157913

/-- `sqrt(A017114(n+1)*A017114(n))` -/
def P9827602740692936646.Spec : Prop :=
  ∀ n, P9827602740692936646.a n = (A157913 (n + 1) : ℝ)

end A157913

/-! ## A157913.P14846175926133616853

`A158636(n+1)%A158684(n+1)`
-/

namespace A157913.P14846175926133616853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158636 (n + 1)) (A158684 (n + 1))

end

end A157913.P14846175926133616853

namespace A157913

/-- `A158636(n+1)%A158684(n+1)` -/
def P14846175926133616853.Spec : Prop :=
  ∀ n, P14846175926133616853.a n = A157913 (n + 1)

end A157913

/-! ## A157913.P13489455522582655579

`A158627(n+1)%A158736(n+1)`
-/

namespace A157913.P13489455522582655579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158627 (n + 1)) (A158736 (n + 1))

end

end A157913.P13489455522582655579

namespace A157913

/-- `A158627(n+1)%A158736(n+1)` -/
def P13489455522582655579.Spec : Prop :=
  ∀ n, P13489455522582655579.a n = A157913 (n + 1)

end A157913

/-! ## A157913.P13062181633382001627

`A158773(n+1)%A158684(n+1)`
-/

namespace A157913.P13062181633382001627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158773 (n + 1)) (A158684 (n + 1))

end

end A157913.P13062181633382001627

namespace A157913

/-- `A158773(n+1)%A158684(n+1)` -/
def P13062181633382001627.Spec : Prop :=
  ∀ n, P13062181633382001627.a n = A157913 (n + 1)

end A157913

/-! ## A157913.P4580911753887393934

`(A017137(n)+A017089(n))*A016825(n+1)`
-/

namespace A157913.P4580911753887393934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n + A017089 n) * A016825 (n + 1)

end

end A157913.P4580911753887393934

namespace A157913

/-- `(A017137(n)+A017089(n))*A016825(n+1)` -/
def P4580911753887393934.Spec : Prop :=
  ∀ n, P4580911753887393934.a n = A157913 (n + 1)

theorem P4580911753887393934.correct : P4580911753887393934.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P4580911753887393934.a, A157913.P9302126423739827390.a, A016825, A016825.P4712696052905976233.a, A017089, A017089.P13709942329986306669.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-! ## A157913.P4650914957004805764

`Δ[n²]*Δ[A114444(n)]`
-/

namespace A157913.P4650914957004805764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A157913.P4650914957004805764

namespace A157913

/-- `Δ[n²]*Δ[A114444(n)]` -/
def P4650914957004805764.Spec : Prop :=
  ∀ n, P4650914957004805764.a n = A157913 (n + 1)

theorem P4650914957004805764.correct : P4650914957004805764.Spec := by
  intro n
  simp only [A157913, Nat.add_sub_cancel, A157913.P4650914957004805764.f1, A157913.P4650914957004805764.f2, A157913.P4650914957004805764.a, A157913.P9302126423739827390.a, A114444, A114444.P13670265799180391886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157913

/-!
# A157914: a(n) = 8*n^2 - 1.

The programs for A157914, the canonical program `A157914.P10609671007951480428` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157914 has offset 1).

The definition of A157914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1)²-1` (program `A157914.P10609671007951480428`, by `A157914.P10609671007951480428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157914.P10609671007951480428

`8*(n+1)²-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157914

/-- `8*(n+1)²-1` -/
def P10609671007951480428.Spec : Prop :=
  ∀ n, P10609671007951480428.a n = A157914 (n + 1)

theorem P10609671007951480428.correct : P10609671007951480428.Spec := by
  intro n
  simp only [A157914, Nat.add_sub_cancel]

end A157914

/-! ## A157914.P2911287981859181694

`ogf((7+10x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157914.P2911287981859181694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, -1] [1, -3, 3, -1] n

end

end A157914.P2911287981859181694

namespace A157914

/-- `ogf((7+10x-x^2)/(1-3x+3x^2-x^3))` -/
def P2911287981859181694.Spec : Prop :=
  ∀ n, P2911287981859181694.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P8448431270225455291

`∑[a(n-1)+16]` with `a(0)=7, a(1)=24`
-/

namespace A157914.P8448431270225455291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 24] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157914.P8448431270225455291

namespace A157914

/-- `∑[a(n-1)+16]` -/
def P8448431270225455291.Spec : Prop :=
  ∀ n, (P8448431270225455291.a n : ℤ) = A157914 (n + 1)

end A157914

/-! ## A157914.P16047188694375286017

`or(7, 8*n*(n+2))`
-/

namespace A157914.P16047188694375286017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 (8 * (n * (n + 2)))

end

end A157914.P16047188694375286017

namespace A157914

/-- `or(7, 8*n*(n+2))` -/
def P16047188694375286017.Spec : Prop :=
  ∀ n, (P16047188694375286017.a n : ℤ) = A157914 (n + 1)

end A157914

/-! ## A157914.P6828514637804458419

`xor(7, 8*n*(n+2))`
-/

namespace A157914.P6828514637804458419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (8 * (n * (n + 2)))

end

end A157914.P6828514637804458419

namespace A157914

/-- `xor(7, 8*n*(n+2))` -/
def P6828514637804458419.Spec : Prop :=
  ∀ n, (P6828514637804458419.a n : ℤ) = A157914 (n + 1)

end A157914

/-! ## A157914.P3466727339335211867

`record[8*(1-n)²-1]`
-/

namespace A157914.P3466727339335211867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (1 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157914.P3466727339335211867

namespace A157914

/-- `record[8*(1-n)²-1]` -/
def P3466727339335211867.Spec : Prop :=
  ∀ n, P3466727339335211867.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P3472471440885619910

`floor(sinh(log((4*(n+1))²)))`
-/

namespace A157914.P3472471440885619910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((4 * (n + 1)) ^ 2 : ℝ))⌋

end

end A157914.P3472471440885619910

namespace A157914

/-- `floor(sinh(log((4*(n+1))²)))` -/
def P3472471440885619910.Spec : Prop :=
  ∀ n, P3472471440885619910.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P13392231669491539378

`∑[ogf((7+10x-x^2)/(1-2x+x^2))]`
-/

namespace A157914.P13392231669491539378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157914.P13392231669491539378

namespace A157914

/-- `∑[ogf((7+10x-x^2)/(1-2x+x^2))]` -/
def P13392231669491539378.Spec : Prop :=
  ∀ n, P13392231669491539378.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P10691301636742489899

`abs(a(n-1)+8*(2*n+1))` with `a(0)=7`
-/

namespace A157914.P10691301636742489899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A157914.P10691301636742489899

namespace A157914

/-- `abs(a(n-1)+8*(2*n+1))` -/
def P10691301636742489899.Spec : Prop :=
  ∀ n, (P10691301636742489899.a n : ℤ) = A157914 (n + 1)

theorem P10691301636742489899.correct : P10691301636742489899.Spec := by
  intro n
  induction n with
  | zero => simp [A157914, A157914.P10691301636742489899.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A157914, Nat.add_sub_cancel, A157914.P10691301636742489899.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A157914

/-! ## A157914.P15402283196590274916

`floor(a(n-1)+8*(2*n+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A157914.P15402283196590274916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A157914.P15402283196590274916

namespace A157914

/-- `floor(a(n-1)+8*(2*n+1))` -/
def P15402283196590274916.Spec : Prop :=
  ∀ n, (P15402283196590274916.a n : ℤ) = A157914 (n + 1)

theorem P15402283196590274916.correct : P15402283196590274916.Spec := by
  intro n
  induction n with
  | zero => simp [A157914, A157914.P15402283196590274916.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A157914, Nat.add_sub_cancel, A157914.P15402283196590274916.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A157914

/-! ## A157914.P17791275626965369280

`ceil(a(n-1)+8*(2*n+1))` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A157914.P17791275626965369280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A157914.P17791275626965369280

namespace A157914

/-- `ceil(a(n-1)+8*(2*n+1))` -/
def P17791275626965369280.Spec : Prop :=
  ∀ n, (P17791275626965369280.a n : ℤ) = A157914 (n + 1)

theorem P17791275626965369280.correct : P17791275626965369280.Spec := by
  intro n
  induction n with
  | zero => simp [A157914, A157914.P17791275626965369280.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A157914, Nat.add_sub_cancel, A157914.P17791275626965369280.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A157914

/-! ## A157914.P6303312548325166980

`round(a(n-1)+8*(2*n+1))` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A157914.P6303312548325166980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (2 * n + 1)

end

end A157914.P6303312548325166980

namespace A157914

/-- `round(a(n-1)+8*(2*n+1))` -/
def P6303312548325166980.Spec : Prop :=
  ∀ n, (P6303312548325166980.a n : ℤ) = A157914 (n + 1)

theorem P6303312548325166980.correct : P6303312548325166980.Spec := by
  intro n
  induction n with
  | zero => simp [A157914, A157914.P6303312548325166980.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A157914, Nat.add_sub_cancel, A157914.P6303312548325166980.a, A157914.P10609671007951480428.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A157914

/-! ## A157914.P14412300755691481512

`floor(A141759(n)/2)`
-/

namespace A157914.P14412300755691481512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141759 n : ℚ) / 2⌋

end

end A157914.P14412300755691481512

namespace A157914

/-- `floor(A141759(n)/2)` -/
def P14412300755691481512.Spec : Prop :=
  ∀ n, P14412300755691481512.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P9738721665800808397

`A158487(n+1)/8`
-/

namespace A157914.P9738721665800808397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158487 (n + 1) : ℚ) / 8

end

end A157914.P9738721665800808397

namespace A157914

/-- `A158487(n+1)/8` -/
def P9738721665800808397.Spec : Prop :=
  ∀ n, P9738721665800808397.a n = (A157914 (n + 1) : ℚ)

theorem P9738721665800808397.correct : P9738721665800808397.Spec := by
  intro n
  simp only [A157914, Nat.add_sub_cancel, A157914.P9738721665800808397.a, A157914.P10609671007951480428.a, A158487, A158487.P4071329257013432001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157914

/-! ## A157914.P584038399620331705

`(A108211(n+1)-3)/2`
-/

namespace A157914.P584038399620331705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108211 (n + 1) - 3 : ℚ) / 2

end

end A157914.P584038399620331705

namespace A157914

/-- `(A108211(n+1)-3)/2` -/
def P584038399620331705.Spec : Prop :=
  ∀ n, P584038399620331705.a n = (A157914 (n + 1) : ℚ)

theorem P584038399620331705.correct : P584038399620331705.Spec := by
  intro n
  simp only [A157914, Nat.add_sub_cancel, A157914.P584038399620331705.a, A157914.P10609671007951480428.a, A108211, A108211.P17641433821935710279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157914

/-! ## A157914.P1645168120222451870

`(A158544(n+1)-2)/3`
-/

namespace A157914.P1645168120222451870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158544 (n + 1) - 2 : ℚ) / 3

end

end A157914.P1645168120222451870

namespace A157914

/-- `(A158544(n+1)-2)/3` -/
def P1645168120222451870.Spec : Prop :=
  ∀ n, P1645168120222451870.a n = (A157914 (n + 1) : ℚ)

theorem P1645168120222451870.correct : P1645168120222451870.Spec := by
  intro n
  simp only [A157914, Nat.add_sub_cancel, A157914.P1645168120222451870.a, A157914.P10609671007951480428.a, A158544, A158544.P3199639721512580159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157914

/-! ## A157914.P12831838595527936315

`(A158563(n+1)-3)/4`
-/

namespace A157914.P12831838595527936315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158563 (n + 1) - 3 : ℚ) / 4

end

end A157914.P12831838595527936315

namespace A157914

/-- `(A158563(n+1)-3)/4` -/
def P12831838595527936315.Spec : Prop :=
  ∀ n, P12831838595527936315.a n = (A157914 (n + 1) : ℚ)

theorem P12831838595527936315.correct : P12831838595527936315.Spec := by
  intro n
  simp only [A157914, Nat.add_sub_cancel, A157914.P12831838595527936315.a, A157914.P10609671007951480428.a, A158563, A158563.P13902014769167631248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157914

/-! ## A157914.P18345240071459757738

`A069760(n+1)%A269538(n+1)`
-/

namespace A157914.P18345240071459757738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069760 (n + 1)) (A269538 (n + 1))

end

end A157914.P18345240071459757738

namespace A157914

/-- `A069760(n+1)%A269538(n+1)` -/
def P18345240071459757738.Spec : Prop :=
  ∀ n, P18345240071459757738.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P8411801010809593713

`Δ[A336288(n+1)-Δ[n²]]`
-/

namespace A157914.P8411801010809593713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157914.P8411801010809593713

namespace A157914

/-- `Δ[A336288(n+1)-Δ[n²]]` -/
def P8411801010809593713.Spec : Prop :=
  ∀ n, P8411801010809593713.a n = A157914 (n + 1)

end A157914

/-! ## A157914.P10793174995670940303

`A195605(Δ[n²])`
-/

namespace A157914.P10793174995670940303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A157914.P10793174995670940303

namespace A157914

/-- `A195605(Δ[n²])` -/
def P10793174995670940303.Spec : Prop :=
  ∀ n, P10793174995670940303.a n = A157914 (n + 1)

end A157914

/-!
# A157915: a(n) = 625*n^2 + 25.

The programs for A157915, the canonical program `A157915.P1446403193793938905` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157915 has offset 1).

The definition of A157915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)²+25` (program `A157915.P1446403193793938905`, by `A157915.P1446403193793938905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157915.P1446403193793938905

`625*(n+1)²+25`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157915

/-- `625*(n+1)²+25` -/
def P1446403193793938905.Spec : Prop :=
  ∀ n, (P1446403193793938905.a n : ℤ) = A157915 (n + 1)

theorem P1446403193793938905.correct : P1446403193793938905.Spec := by
  intro n
  simp only [A157915, Nat.add_sub_cancel]

end A157915

/-! ## A157915.P12387438079186765015

`ogf((650+575x+25x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157915.P12387438079186765015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [650, 575, 25] [1, -3, 3, -1] n

end

end A157915.P12387438079186765015

namespace A157915

/-- `ogf((650+575x+25x^2)/(1-3x+3x^2-x^3))` -/
def P12387438079186765015.Spec : Prop :=
  ∀ n, P12387438079186765015.a n = A157915 (n + 1)

end A157915

/-! ## A157915.P6635140351229361226

`lcm(25, (n+1)*25*(n+1)+1)`
-/

namespace A157915.P6635140351229361226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 25 ((n + 1) * (25 * (n + 1)) + 1)

end

end A157915.P6635140351229361226

namespace A157915

/-- `lcm(25, (n+1)*25*(n+1)+1)` -/
def P6635140351229361226.Spec : Prop :=
  ∀ n, (P6635140351229361226.a n : ℤ) = A157915 (n + 1)

end A157915

/-! ## A157915.P8293454470596140026

`25*(25*A000290(n+1)+1)`
-/

namespace A157915.P8293454470596140026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (25 * A000290 (n + 1) + 1)

end

end A157915.P8293454470596140026

namespace A157915

/-- `25*(25*A000290(n+1)+1)` -/
def P8293454470596140026.Spec : Prop :=
  ∀ n, P8293454470596140026.a n = A157915 (n + 1)

theorem P8293454470596140026.correct : P8293454470596140026.Spec := by
  intro n
  simp only [A157915, Nat.add_sub_cancel, A157915.P8293454470596140026.a, A157915.P1446403193793938905.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157915

/-! ## A157915.P7983542729545171268

`5*(A033429(5*(n+1))+5)`
-/

namespace A157915.P7983542729545171268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A033429 (5 * (n + 1)) + 5)

end

end A157915.P7983542729545171268

namespace A157915

/-- `5*(A033429(5*(n+1))+5)` -/
def P7983542729545171268.Spec : Prop :=
  ∀ n, P7983542729545171268.a n = A157915 (n + 1)

theorem P7983542729545171268.correct : P7983542729545171268.Spec := by
  intro n
  simp only [A157915, Nat.add_sub_cancel, A157915.P7983542729545171268.a, A157915.P1446403193793938905.a, A033429, A033429.P6959806467874002675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157915

/-! ## A157915.P17331813384318897360

`5*(A032527(10*(n+1))+5)`
-/

namespace A157915.P17331813384318897360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A032527 (10 * (n + 1)) + 5)

end

end A157915.P17331813384318897360

namespace A157915

/-- `5*(A032527(10*(n+1))+5)` -/
def P17331813384318897360.Spec : Prop :=
  ∀ n, P17331813384318897360.a n = A157915 (n + 1)

end A157915

/-! ## A157915.P5382664314056890135

`5*5*A033638(10*(n+1))`
-/

namespace A157915.P5382664314056890135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A033638 (10 * (n + 1)))

end

end A157915.P5382664314056890135

namespace A157915

/-- `5*5*A033638(10*(n+1))` -/
def P5382664314056890135.Spec : Prop :=
  ∀ n, P5382664314056890135.a n = A157915 (n + 1)

end A157915

/-!
# A157916: a(n) = 50*n^2 + 1.

The programs for A157916, the canonical program `A157916.P15741034503057197196` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157916 has offset 1).

The definition of A157916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `50*(n+1)²+1` (program `A157916.P15741034503057197196`, by `A157916.P15741034503057197196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157916.P15741034503057197196

`50*(n+1)²+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157916

/-- `50*(n+1)²+1` -/
def P15741034503057197196.Spec : Prop :=
  ∀ n, (P15741034503057197196.a n : ℤ) = A157916 (n + 1)

theorem P15741034503057197196.correct : P15741034503057197196.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel]

end A157916

/-! ## A157916.P19579017837223327

`ogf((51+48x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157916.P19579017837223327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [51, 48, 1] [1, -3, 3, -1] n

end

end A157916.P19579017837223327

namespace A157916

/-- `ogf((51+48x+x^2)/(1-3x+3x^2-x^3))` -/
def P19579017837223327.Spec : Prop :=
  ∀ n, P19579017837223327.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P16038610509913713265

`xor(1, 50*∑[2*n+1])`
-/

namespace A157916.P16038610509913713265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (50 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A157916.P16038610509913713265

namespace A157916

/-- `xor(1, 50*∑[2*n+1])` -/
def P16038610509913713265.Spec : Prop :=
  ∀ n, (P16038610509913713265.a n : ℤ) = A157916 (n + 1)

end A157916

/-! ## A157916.P10454222988966293518

`(A017270(n+1)+2)/2`
-/

namespace A157916.P10454222988966293518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017270 (n + 1) + 2 : ℚ) / 2

end

end A157916.P10454222988966293518

namespace A157916

/-- `(A017270(n+1)+2)/2` -/
def P10454222988966293518.Spec : Prop :=
  ∀ n, P10454222988966293518.a n = (A157916 (n + 1) : ℚ)

theorem P10454222988966293518.correct : P10454222988966293518.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P10454222988966293518.a, A157916.P15741034503057197196.a, A017270, A017270.P17011890906423583366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P4702805341599789355

`((n-A017509(n))²+2)/2`
-/

namespace A157916.P4702805341599789355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017509 n) ^ 2 + 2 : ℚ) / 2

end

end A157916.P4702805341599789355

namespace A157916

/-- `((n-A017509(n))²+2)/2` -/
def P4702805341599789355.Spec : Prop :=
  ∀ n, P4702805341599789355.a n = (A157916 (n + 1) : ℚ)

theorem P4702805341599789355.correct : P4702805341599789355.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P4702805341599789355.a, A157916.P15741034503057197196.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P6512921824786272424

`(A055438(n+1)-(n-1))/2`
-/

namespace A157916.P6512921824786272424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055438 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A157916.P6512921824786272424

namespace A157916

/-- `(A055438(n+1)-(n-1))/2` -/
def P6512921824786272424.Spec : Prop :=
  ∀ n, P6512921824786272424.a n = (A157916 (n + 1) : ℚ)

theorem P6512921824786272424.correct : P6512921824786272424.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P6512921824786272424.a, A157916.P15741034503057197196.a, A055438, A055438.P9723371937741257450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P5724509394066500941

`(A157659(n+1)+n+3)/2`
-/

namespace A157916.P5724509394066500941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157659 (n + 1) + (n + 3 : ℤ) : ℚ) / 2

end

end A157916.P5724509394066500941

namespace A157916

/-- `(A157659(n+1)+n+3)/2` -/
def P5724509394066500941.Spec : Prop :=
  ∀ n, P5724509394066500941.a n = (A157916 (n + 1) : ℚ)

theorem P5724509394066500941.correct : P5724509394066500941.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P5724509394066500941.a, A157916.P15741034503057197196.a, A157659, A157659.P9951143036320821416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P1545972358883904200

`abs(2*(∑[A053742(n)]+1)-1)`
-/

namespace A157916.P1545972358883904200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1|

end

end A157916.P1545972358883904200

namespace A157916

/-- `abs(2*(∑[A053742(n)]+1)-1)` -/
def P1545972358883904200.Spec : Prop :=
  ∀ n, P1545972358883904200.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P11593992695958725978

`(A323178(n+1)+1)/2`
-/

namespace A157916.P11593992695958725978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323178 (n + 1) + 1 : ℚ) / 2

end

end A157916.P11593992695958725978

namespace A157916

/-- `(A323178(n+1)+1)/2` -/
def P11593992695958725978.Spec : Prop :=
  ∀ n, P11593992695958725978.a n = (A157916 (n + 1) : ℚ)

theorem P11593992695958725978.correct : P11593992695958725978.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P11593992695958725978.a, A157916.P15741034503057197196.a, A323178, A323178.P2135116130192440510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P4092883034569200902

`(A008592(n+1)²+2)/2`
-/

namespace A157916.P4092883034569200902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (n + 1) ^ 2 + 2 : ℚ) / 2

end

end A157916.P4092883034569200902

namespace A157916

/-- `(A008592(n+1)²+2)/2` -/
def P4092883034569200902.Spec : Prop :=
  ∀ n, P4092883034569200902.a n = (A157916 (n + 1) : ℚ)

theorem P4092883034569200902.correct : P4092883034569200902.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P4092883034569200902.a, A157916.P15741034503057197196.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P8177082749750152874

`(A085036(2*n+1)+A017365(n+1))/2`
-/

namespace A157916.P8177082749750152874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085036 (2 * n + 1) + A017365 (n + 1) : ℚ) / 2

end

end A157916.P8177082749750152874

namespace A157916

/-- `(A085036(2*n+1)+A017365(n+1))/2` -/
def P8177082749750152874.Spec : Prop :=
  ∀ n, P8177082749750152874.a n = (A157916 (n + 1) : ℚ)

theorem P8177082749750152874.correct : P8177082749750152874.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P8177082749750152874.a, A157916.P15741034503057197196.a, A017365, A017365.P3452265278948084008.a, A085036, A085036.P15029211055883950249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P5620821483336782237

`A010015(2*(n+1))/2`
-/

namespace A157916.P5620821483336782237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010015 (2 * (n + 1)) : ℚ) / 2

end

end A157916.P5620821483336782237

namespace A157916

/-- `A010015(2*(n+1))/2` -/
def P5620821483336782237.Spec : Prop :=
  ∀ n, P5620821483336782237.a n = (A157916 (n + 1) : ℚ)

end A157916

/-! ## A157916.P17997827015578590749

`A058331(5*(n+1))`
-/

namespace A157916.P17997827015578590749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (5 * (n + 1))

end

end A157916.P17997827015578590749

namespace A157916

/-- `A058331(5*(n+1))` -/
def P17997827015578590749.Spec : Prop :=
  ∀ n, P17997827015578590749.a n = A157916 (n + 1)

theorem P17997827015578590749.correct : P17997827015578590749.Spec := by
  intro n
  simp only [A157916, Nat.add_sub_cancel, A157916.P17997827015578590749.a, A157916.P15741034503057197196.a, A058331, A058331.P11448505833250118096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157916

/-! ## A157916.P10040136562442174334

`A005899(A008587(n+1))/2`
-/

namespace A157916.P10040136562442174334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005899 (A008587 (n + 1)).toNat : ℚ) / 2

end

end A157916.P10040136562442174334

namespace A157916

/-- `A005899(A008587(n+1))/2` -/
def P10040136562442174334.Spec : Prop :=
  ∀ n, P10040136562442174334.a n = (A157916 (n + 1) : ℚ)

end A157916

/-! ## A157916.P2000678627579434810

`A005899(A008706(n+1))/2`
-/

namespace A157916.P2000678627579434810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005899 (A008706 (n + 1)).toNat : ℚ) / 2

end

end A157916.P2000678627579434810

namespace A157916

/-- `A005899(A008706(n+1))/2` -/
def P2000678627579434810.Spec : Prop :=
  ∀ n, P2000678627579434810.a n = (A157916 (n + 1) : ℚ)

end A157916

/-! ## A157916.P4890762291429742938

`A164900(A017377(n))`
-/

namespace A157916.P4890762291429742938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164900 (A017377 n).toNat

end

end A157916.P4890762291429742938

namespace A157916

/-- `A164900(A017377(n))` -/
def P4890762291429742938.Spec : Prop :=
  ∀ n, P4890762291429742938.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P16505466809351009153

`A329279(A017365(n))`
-/

namespace A157916.P16505466809351009153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329279 (A017365 n).toNat

end

end A157916.P16505466809351009153

namespace A157916

/-- `A329279(A017365(n))` -/
def P16505466809351009153.Spec : Prop :=
  ∀ n, P16505466809351009153.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P6450150854872070228

`A031940(A008592(n+1))`
-/

namespace A157916.P6450150854872070228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (A008592 (n + 1)).toNat

end

end A157916.P6450150854872070228

namespace A157916

/-- `A031940(A008592(n+1))` -/
def P6450150854872070228.Spec : Prop :=
  ∀ n, P6450150854872070228.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P8699092152082766080

`A099392(A017281(n+1))`
-/

namespace A157916.P8699092152082766080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A017281 (n + 1)).toNat

end

end A157916.P8699092152082766080

namespace A157916

/-- `A099392(A017281(n+1))` -/
def P8699092152082766080.Spec : Prop :=
  ∀ n, P8699092152082766080.a n = A157916 (n + 1)

end A157916

/-! ## A157916.P12249490009227010477

`A164900(A008590(n+1)+2*n+1)`
-/

namespace A157916.P12249490009227010477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164900 (A008590 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A157916.P12249490009227010477

namespace A157916

/-- `A164900(A008590(n+1)+2*n+1)` -/
def P12249490009227010477.Spec : Prop :=
  ∀ n, P12249490009227010477.a n = A157916 (n + 1)

end A157916

/-!
# A157917: A decimation of the EKG sequence: A064413(10n+9).

The programs for A157917, there is no canonical definition to state claims against.
-/

/-! ## A157917.P8996565166647216608

`A064413(10*n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157917.P8996565166647216608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (10 * n + 9)

end

end A157917.P8996565166647216608

/-! ## A157917.P18319496008553271400

`A169839(10*n+8)`
-/

namespace A157917.P18319496008553271400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169839 (10 * n + 8)

end

end A157917.P18319496008553271400

/-! ## A157917.P16959783009482459851

`A169847(10*n+8)`
-/

namespace A157917.P16959783009482459851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169847 (10 * n + 8)

end

end A157917.P16959783009482459851

/-! ## A157917.P4551054930868102555

`sqrt(A104125(10*n+9))`
-/

namespace A157917.P4551054930868102555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104125 (10 * n + 9) : ℝ)

end

end A157917.P4551054930868102555

/-! ## A157917.P6605611676900343280

`A064413(A017377(n))%A035789(n+1)`
-/

namespace A157917.P6605611676900343280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 (A017377 n).toNat) (A035789 (n + 1))

end

end A157917.P6605611676900343280

/-!
# A157918: a(n) = 625*n^2 - 25.

The programs for A157918, the canonical program `A157918.P2191588829694248884` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157918 has offset 1).

The definition of A157918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)²-25` (program `A157918.P2191588829694248884`, by `A157918.P2191588829694248884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157918.P2191588829694248884

`625*(n+1)²-25`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157918

/-- `625*(n+1)²-25` -/
def P2191588829694248884.Spec : Prop :=
  ∀ n, P2191588829694248884.a n = A157918 (n + 1)

theorem P2191588829694248884.correct : P2191588829694248884.Spec := by
  intro n
  simp only [A157918, Nat.add_sub_cancel]

end A157918

/-! ## A157918.P17285869449243985458

`ogf((600+675x-25x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157918.P17285869449243985458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [600, 675, -25] [1, -3, 3, -1] n

end

end A157918.P17285869449243985458

namespace A157918

/-- `ogf((600+675x-25x^2)/(1-3x+3x^2-x^3))` -/
def P17285869449243985458.Spec : Prop :=
  ∀ n, P17285869449243985458.a n = A157918 (n + 1)

end A157918

/-! ## A157918.P13067767734803334111

`25*(25*A000290(n+1)-1)`
-/

namespace A157918.P13067767734803334111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (25 * A000290 (n + 1) - 1)

end

end A157918.P13067767734803334111

namespace A157918

/-- `25*(25*A000290(n+1)-1)` -/
def P13067767734803334111.Spec : Prop :=
  ∀ n, P13067767734803334111.a n = A157918 (n + 1)

theorem P13067767734803334111.correct : P13067767734803334111.Spec := by
  intro n
  simp only [A157918, Nat.add_sub_cancel, A157918.P13067767734803334111.a, A157918.P2191588829694248884.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157918

/-! ## A157918.P11829656415116801793

`5*5*(A157514(n+1)+n)`
-/

namespace A157918.P11829656415116801793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * (A157514 (n + 1) + (n : ℤ)))

end

end A157918.P11829656415116801793

namespace A157918

/-- `5*5*(A157514(n+1)+n)` -/
def P11829656415116801793.Spec : Prop :=
  ∀ n, P11829656415116801793.a n = A157918 (n + 1)

theorem P11829656415116801793.correct : P11829656415116801793.Spec := by
  intro n
  simp only [A157918, Nat.add_sub_cancel, A157918.P11829656415116801793.a, A157918.P2191588829694248884.a, A157514, A157514.P10444114848304295552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157918

/-! ## A157918.P12626703626724210322

`5*A067724(A016897(n))`
-/

namespace A157918.P12626703626724210322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A067724 (A016897 n).toNat

end

end A157918.P12626703626724210322

namespace A157918

/-- `5*A067724(A016897(n))` -/
def P12626703626724210322.Spec : Prop :=
  ∀ n, P12626703626724210322.a n = A157918 (n + 1)

end A157918

/-! ## A157918.P13530449541410858806

`5*(A033429(5*(n+1))-5)`
-/

namespace A157918.P13530449541410858806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A033429 (5 * (n + 1)) - 5)

end

end A157918.P13530449541410858806

namespace A157918

/-- `5*(A033429(5*(n+1))-5)` -/
def P13530449541410858806.Spec : Prop :=
  ∀ n, P13530449541410858806.a n = A157918 (n + 1)

theorem P13530449541410858806.correct : P13530449541410858806.Spec := by
  intro n
  simp only [A157918, Nat.add_sub_cancel, A157918.P13530449541410858806.a, A157918.P2191588829694248884.a, A033429, A033429.P6959806467874002675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157918

/-! ## A157918.P11933309936423613346

`5*(A032527(10*(n+1))-5)`
-/

namespace A157918.P11933309936423613346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A032527 (10 * (n + 1)) - 5)

end

end A157918.P11933309936423613346

namespace A157918

/-- `5*(A032527(10*(n+1))-5)` -/
def P11933309936423613346.Spec : Prop :=
  ∀ n, P11933309936423613346.a n = A157918 (n + 1)

end A157918

/-!
# A157919: a(n) = 50*n^2 - 1.

The programs for A157919, the canonical program `A157919.P8993084716968970934` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157919 has offset 1).

The definition of A157919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `50*(n+1)²-1` (program `A157919.P8993084716968970934`, by `A157919.P8993084716968970934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157919.P8993084716968970934

`50*(n+1)²-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157919

/-- `50*(n+1)²-1` -/
def P8993084716968970934.Spec : Prop :=
  ∀ n, P8993084716968970934.a n = A157919 (n + 1)

theorem P8993084716968970934.correct : P8993084716968970934.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel]

end A157919

/-! ## A157919.P7799126475829794132

`ogf((49+52x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157919.P7799126475829794132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [49, 52, -1] [1, -3, 3, -1] n

end

end A157919.P7799126475829794132

namespace A157919

/-- `ogf((49+52x-x^2)/(1-3x+3x^2-x^3))` -/
def P7799126475829794132.Spec : Prop :=
  ∀ n, P7799126475829794132.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P17226959990940556641

`or(1, 2*(n+1)*25*(n+1)-1)`
-/

namespace A157919.P17226959990940556641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * (n + 1) * (25 * (n + 1)) : ℤ) - 1)

end

end A157919.P17226959990940556641

namespace A157919

/-- `or(1, 2*(n+1)*25*(n+1)-1)` -/
def P17226959990940556641.Spec : Prop :=
  ∀ n, P17226959990940556641.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P15706738582821287796

`abs(2-A157916(n+1))`
-/

namespace A157919.P15706738582821287796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A157916 (n + 1)|

end

end A157919.P15706738582821287796

namespace A157919

/-- `abs(2-A157916(n+1))` -/
def P15706738582821287796.Spec : Prop :=
  ∀ n, P15706738582821287796.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P15000646633384039732

`(A017270(n+1)-2)/2`
-/

namespace A157919.P15000646633384039732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017270 (n + 1) - 2 : ℚ) / 2

end

end A157919.P15000646633384039732

namespace A157919

/-- `(A017270(n+1)-2)/2` -/
def P15000646633384039732.Spec : Prop :=
  ∀ n, P15000646633384039732.a n = (A157919 (n + 1) : ℚ)

theorem P15000646633384039732.correct : P15000646633384039732.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P15000646633384039732.a, A157919.P8993084716968970934.a, A017270, A017270.P17011890906423583366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P14239035434829188128

`abs(1-∑[2*A053742(n)])`
-/

namespace A157919.P14239035434829188128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A157919.P14239035434829188128

namespace A157919

/-- `abs(1-∑[2*A053742(n)])` -/
def P14239035434829188128.Spec : Prop :=
  ∀ n, P14239035434829188128.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P8828827794190521279

`abs(1-∑[10*A017329(n)])`
-/

namespace A157919.P8828827794190521279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A157919.P8828827794190521279

namespace A157919

/-- `abs(1-∑[10*A017329(n)])` -/
def P8828827794190521279.Spec : Prop :=
  ∀ n, P8828827794190521279.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P8064210135582489509

`(A157659(n+1)+n-1)/2`
-/

namespace A157919.P8064210135582489509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157659 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A157919.P8064210135582489509

namespace A157919

/-- `(A157659(n+1)+n-1)/2` -/
def P8064210135582489509.Spec : Prop :=
  ∀ n, P8064210135582489509.a n = (A157919 (n + 1) : ℚ)

theorem P8064210135582489509.correct : P8064210135582489509.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P8064210135582489509.a, A157919.P8993084716968970934.a, A157659, A157659.P9951143036320821416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P12655558847209143322

`(A055438(n+1)-(n+3))/2`
-/

namespace A157919.P12655558847209143322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055438 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A157919.P12655558847209143322

namespace A157919

/-- `(A055438(n+1)-(n+3))/2` -/
def P12655558847209143322.Spec : Prop :=
  ∀ n, P12655558847209143322.a n = (A157919 (n + 1) : ℚ)

theorem P12655558847209143322.correct : P12655558847209143322.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P12655558847209143322.a, A157919.P8993084716968970934.a, A055438, A055438.P9723371937741257450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P6953676693257108477

`(A158738(n+1)+A158554(n+1))/2`
-/

namespace A157919.P6953676693257108477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158738 (n + 1) + A158554 (n + 1) : ℚ) / 2

end

end A157919.P6953676693257108477

namespace A157919

/-- `(A158738(n+1)+A158554(n+1))/2` -/
def P6953676693257108477.Spec : Prop :=
  ∀ n, P6953676693257108477.a n = (A157919 (n + 1) : ℚ)

theorem P6953676693257108477.correct : P6953676693257108477.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P6953676693257108477.a, A157919.P8993084716968970934.a, A158554, A158554.P844351326912008475.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P2491769093770803853

`(A323178(n+1)-3)/2`
-/

namespace A157919.P2491769093770803853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323178 (n + 1) - 3 : ℚ) / 2

end

end A157919.P2491769093770803853

namespace A157919

/-- `(A323178(n+1)-3)/2` -/
def P2491769093770803853.Spec : Prop :=
  ∀ n, P2491769093770803853.a n = (A157919 (n + 1) : ℚ)

theorem P2491769093770803853.correct : P2491769093770803853.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P2491769093770803853.a, A157919.P8993084716968970934.a, A323178, A323178.P2135116130192440510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P6198894896460238078

`(A008592(n+1)²-2)/2`
-/

namespace A157919.P6198894896460238078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (n + 1) ^ 2 - 2 : ℚ) / 2

end

end A157919.P6198894896460238078

namespace A157919

/-- `(A008592(n+1)²-2)/2` -/
def P6198894896460238078.Spec : Prop :=
  ∀ n, P6198894896460238078.a n = (A157919 (n + 1) : ℚ)

theorem P6198894896460238078.correct : P6198894896460238078.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P6198894896460238078.a, A157919.P8993084716968970934.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P843305687445699707

`A056220(5*(n+1))`
-/

namespace A157919.P843305687445699707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (5 * (n + 1))

end

end A157919.P843305687445699707

namespace A157919

/-- `A056220(5*(n+1))` -/
def P843305687445699707.Spec : Prop :=
  ∀ n, P843305687445699707.a n = A157919 (n + 1)

theorem P843305687445699707.correct : P843305687445699707.Spec := by
  intro n
  simp only [A157919, Nat.add_sub_cancel, A157919.P843305687445699707.a, A157919.P8993084716968970934.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157919

/-! ## A157919.P15061208502608046934

`abs(1-2*(A005563(A016897(n))+1))`
-/

namespace A157919.P15061208502608046934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (A005563 (A016897 n).toNat + 1)|

end

end A157919.P15061208502608046934

namespace A157919

/-- `abs(1-2*(A005563(A016897(n))+1))` -/
def P15061208502608046934.Spec : Prop :=
  ∀ n, P15061208502608046934.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P9847213006366915132

`sqrt(A239607(5*(n+1)))`
-/

namespace A157919.P9847213006366915132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239607 (5 * (n + 1)) : ℝ)

end

end A157919.P9847213006366915132

namespace A157919

/-- `sqrt(A239607(5*(n+1)))` -/
def P9847213006366915132.Spec : Prop :=
  ∀ n, P9847213006366915132.a n = (A157919 (n + 1) : ℝ)

end A157919

/-! ## A157919.P12636176013419127608

`A047838(10*(n+1))`
-/

namespace A157919.P12636176013419127608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (10 * (n + 1))

end

end A157919.P12636176013419127608

namespace A157919

/-- `A047838(10*(n+1))` -/
def P12636176013419127608.Spec : Prop :=
  ∀ n, P12636176013419127608.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P15555848743555708968

`A079326(10*(n+1))`
-/

namespace A157919.P15555848743555708968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (10 * (n + 1))

end

end A157919.P15555848743555708968

namespace A157919

/-- `A079326(10*(n+1))` -/
def P15555848743555708968.Spec : Prop :=
  ∀ n, P15555848743555708968.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P14390769336919258809

`A326658(10*n+8)`
-/

namespace A157919.P14390769336919258809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (10 * n + 8)

end

end A157919.P14390769336919258809

namespace A157919

/-- `A326658(10*n+8)` -/
def P14390769336919258809.Spec : Prop :=
  ∀ n, P14390769336919258809.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P11872793844348489270

`A074148(9*(n+1)+n)`
-/

namespace A157919.P11872793844348489270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (9 * (n + 1) + n)

end

end A157919.P11872793844348489270

namespace A157919

/-- `A074148(9*(n+1)+n)` -/
def P11872793844348489270.Spec : Prop :=
  ∀ n, P11872793844348489270.a n = A157919 (n + 1)

end A157919

/-! ## A157919.P6771605708025607309

`A128223(8*(n+1)+2*n+1)`
-/

namespace A157919.P6771605708025607309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 (8 * (n + 1) + (2 * n + 1))

end

end A157919.P6771605708025607309

namespace A157919

/-- `A128223(8*(n+1)+2*n+1)` -/
def P6771605708025607309.Spec : Prop :=
  ∀ n, P6771605708025607309.a n = A157919 (n + 1)

end A157919

/-!
# A157920: Numerator of Bernoulli(n,4).

The programs for A157920, there is no canonical definition to state claims against.
-/

/-! ## A157920.P3794697667118615505

`A157930(n)-A002697(n)*A027642(n)`
-/

namespace A157920.P3794697667118615505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157930 n - A002697 n * A027642 n

end

end A157920.P3794697667118615505

/-! ## A157920.P4476743172902728285

`A157809(n)+A027471(n+1)*A027642(n)`
-/

namespace A157920.P4476743172902728285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157809 n + A027471 (n + 1) * A027642 n

end

end A157920.P4476743172902728285

/-!
# A157921: a(n) = 72*n - 1.

The programs for A157921, the canonical program `A157921.P1631142293285210871` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157921 has offset 1).

The definition of A157921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `72*(n+1)-1` (program `A157921.P1631142293285210871`, by `A157921.P1631142293285210871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157921.P1631142293285210871

`72*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157921

/-- `72*(n+1)-1` -/
def P1631142293285210871.Spec : Prop :=
  ∀ n, P1631142293285210871.a n = A157921 (n + 1)

theorem P1631142293285210871.correct : P1631142293285210871.Spec := by
  intro n
  simp only [A157921, Nat.add_sub_cancel]

end A157921

/-!
# A157923: a(n) = 49*n^2 - n.

The programs for A157923, the canonical program `A157923.P11488389607895145215` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157923 has offset 1).

The definition of A157923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-(n+1)` (program `A157923.P11488389607895145215`, by `A157923.P11488389607895145215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157923.P516755292428310183

`ogf((48+50x)/(1-3x+3x^2-x^3))`
-/

namespace A157923.P516755292428310183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [48, 50] [1, -3, 3, -1] n

end

end A157923.P516755292428310183

namespace A157923

/-- `ogf((48+50x)/(1-3x+3x^2-x^3))` -/
def P516755292428310183.Spec : Prop :=
  ∀ n, P516755292428310183.a n = A157923 (n + 1)

end A157923

/-! ## A157923.P11488389607895145215

`49*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157923

/-- `49*(n+1)²-(n+1)` -/
def P11488389607895145215.Spec : Prop :=
  ∀ n, P11488389607895145215.a n = A157923 (n + 1)

theorem P11488389607895145215.correct : P11488389607895145215.Spec := by
  intro n
  simp only [A157923, Nat.add_sub_cancel]

end A157923

/-! ## A157923.P17173853624896811588

`∑[a(n-1)+98]` with `a(0)=48`
-/

namespace A157923.P17173853624896811588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [48] fun n f1 =>
  f1 (n - 1) + 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157923.P17173853624896811588

namespace A157923

/-- `∑[a(n-1)+98]` -/
def P17173853624896811588.Spec : Prop :=
  ∀ n, (P17173853624896811588.a n : ℤ) = A157923 (n + 1)

end A157923

/-! ## A157923.P15167352083058413822

`(n+1)*(A158066(n+1)-2)`
-/

namespace A157923.P15167352083058413822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158066 (n + 1) - 2)

end

end A157923.P15167352083058413822

namespace A157923

/-- `(n+1)*(A158066(n+1)-2)` -/
def P15167352083058413822.Spec : Prop :=
  ∀ n, P15167352083058413822.a n = A157923 (n + 1)

theorem P15167352083058413822.correct : P15167352083058413822.Spec := by
  intro n
  simp only [A157923, Nat.add_sub_cancel, A157923.P15167352083058413822.a, A157923.P11488389607895145215.a, A158066, A158066.P2753047191672300220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157923

/-! ## A157923.P6083285433202079856

`2*(A158544(n+1)+A000124(n))`
-/

namespace A157923.P6083285433202079856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158544 (n + 1) + A000124 n)

end

end A157923.P6083285433202079856

namespace A157923

/-- `2*(A158544(n+1)+A000124(n))` -/
def P6083285433202079856.Spec : Prop :=
  ∀ n, P6083285433202079856.a n = A157923 (n + 1)

end A157923

/-! ## A157923.P4514921572094442776

`A158222(n+1)%A173141(n+1)`
-/

namespace A157923.P4514921572094442776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158222 (n + 1)) (A173141 (n + 1))

end

end A157923.P4514921572094442776

namespace A157923

/-- `A158222(n+1)%A173141(n+1)` -/
def P4514921572094442776.Spec : Prop :=
  ∀ n, P4514921572094442776.a n = A157923 (n + 1)

end A157923

/-! ## A157923.P6153200056592878799

`lcm(n+1, A000027(A158066(n+1)-2))`
-/

namespace A157923.P6153200056592878799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000027 (A158066 (n + 1) - 2).toNat)

end

end A157923.P6153200056592878799

namespace A157923

/-- `lcm(n+1, A000027(A158066(n+1)-2))` -/
def P6153200056592878799.Spec : Prop :=
  ∀ n, (P6153200056592878799.a n : ℤ) = A157923 (n + 1)

end A157923

/-! ## A157923.P1954628429589122727

`A157362(2*(n+1))/4`
-/

namespace A157923.P1954628429589122727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157362 (2 * (n + 1)) : ℚ) / 4

end

end A157923.P1954628429589122727

namespace A157923

/-- `A157362(2*(n+1))/4` -/
def P1954628429589122727.Spec : Prop :=
  ∀ n, P1954628429589122727.a n = (A157923 (n + 1) : ℚ)

end A157923

/-! ## A157923.P13985858350239738705

`(n+1)*A017053(A017053(n))`
-/

namespace A157923.P13985858350239738705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017053 (A017053 n).toNat

end

end A157923.P13985858350239738705

namespace A157923

/-- `(n+1)*A017053(A017053(n))` -/
def P13985858350239738705.Spec : Prop :=
  ∀ n, P13985858350239738705.a n = A157923 (n + 1)

end A157923

/-! ## A157923.P13387057619213925596

`∑[A017053(A017053(2*n))]`
-/

namespace A157923.P13387057619213925596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A017053 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157923.P13387057619213925596

namespace A157923

/-- `∑[A017053(A017053(2*n))]` -/
def P13387057619213925596.Spec : Prop :=
  ∀ n, P13387057619213925596.a n = A157923 (n + 1)

end A157923

/-!
# A157924: a(n) = 98*n - 1.

The programs for A157924, the canonical program `A157924.P8914384129348621600` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157924 has offset 1).

The definition of A157924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*(n+1)-1` (program `A157924.P8914384129348621600`, by `A157924.P8914384129348621600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157924.P8914384129348621600

`98*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157924

/-- `98*(n+1)-1` -/
def P8914384129348621600.Spec : Prop :=
  ∀ n, P8914384129348621600.a n = A157924 (n + 1)

theorem P8914384129348621600.correct : P8914384129348621600.Spec := by
  intro n
  simp only [A157924, Nat.add_sub_cancel]

end A157924

/-!
# A157925: a(n) = A090822(22n-11), a "decimation" of Gijswijt's sequence.

The programs for A157925, there is no canonical definition to state claims against.
-/

/-! ## A157925.P6227501825234261673

`A090822(22*(n+1)-11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157925.P6227501825234261673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (22 * (n + 1) - 11)

end

end A157925.P6227501825234261673

/-! ## A157925.P16764831911987957828

`A069010(A074323(n)*A274206(n+1))`
-/

namespace A157925.P16764831911987957828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A074323 n * A274206 (n + 1)).toNat

end

end A157925.P16764831911987957828

/-! ## A157925.P16957519834346457415

`gcd(A071284(2*n+3), A071284(A071289(n)))`
-/

namespace A157925.P16957519834346457415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071284 (2 * n + 3)) (A071284 (A071289 n).toNat)

end

end A157925.P16957519834346457415

/-! ## A157925.P15562407072625619020

`A079229(A260248(n+1)+A088705(n))`
-/

namespace A157925.P15562407072625619020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (A260248 (n + 1) + A088705 n).toNat

end

end A157925.P15562407072625619020

/-! ## A157925.P17142591757597575194

`A333381(∑[A285460(ceil((n-3)/4))])`
-/

namespace A157925.P17142591757597575194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285460 ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157925.P17142591757597575194

/-!
# A157926: Coefficients of the first modulo two factor of polynomials of the type: p(x,n)=(x^Prime[n] + 1)/(x + 1).

The programs for A157926, there is no canonical definition to state claims against.
-/

/-! ## A157926.P15425520672803982198

`A247795(A247832(n+1)%A247816(n+4))`
-/

namespace A157926.P15425520672803982198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247795 (Int.tmod (A247832 (n + 1)) (A247816 (n + 4))).toNat

end

end A157926.P15425520672803982198

/-! ## A157926.P4188853848210708452

`A179081(A168559(n+1)+A025386(n+1))`
-/

namespace A157926.P4188853848210708452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A168559 (n + 1) + A025386 (n + 1)).toNat

end

end A157926.P4188853848210708452

/-! ## A157926.P13027241198224257438

`and(A247795(A247832(n+1)), A247845(n+1))`
-/

namespace A157926.P13027241198224257438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247795 (A247832 (n + 1)).toNat) (A247845 (n + 1))

end

end A157926.P13027241198224257438

/-! ## A157926.P1020383811658770055

`A133872(A018215(n)%A279789(n))`
-/

namespace A157926.P1020383811658770055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (Int.tmod (A018215 n) (A279789 n)).toNat

end

end A157926.P1020383811658770055

/-!
# A157927: Joint-rank array of the numbers i^2+j^2, where i>=0, j>=0.

The programs for A157927, there is no canonical definition to state claims against.
-/

/-! ## A157927.P3884674226450690282

`A323621(n)+A111332(n)!`
-/

namespace A157927.P3884674226450690282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 n + (Nat.factorial (A111332 n).toNat : ℤ)

end

end A157927.P3884674226450690282

/-! ## A157927.P845860289528237537

`(A323621(n)+1)%A116020(2*(n+1))`
-/

namespace A157927.P845860289528237537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323621 n + 1) (A116020 (2 * (n + 1)))

end

end A157927.P845860289528237537

/-! ## A157927.P3986919925180374103

`A323621(n)%A205647(2*(n+2))+1`
-/

namespace A157927.P3986919925180374103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323621 n) (A205647 (2 * (n + 2))) + 1

end

end A157927.P3986919925180374103

/-! ## A157927.P15854353365765566110

`A323621(n)+A010684(A007531(n))`
-/

namespace A157927.P15854353365765566110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 n + A010684 (A007531 n).toNat

end

end A157927.P15854353365765566110

/-! ## A157927.P4793870869643861910

`A323621(n)+A023532(A061323(n+5))`
-/

namespace A157927.P4793870869643861910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 n + A023532 (A061323 (n + 5)).toNat

end

end A157927.P4793870869643861910

/-!
# A157928: a(n) = 0 if n < 2, = 1 otherwise.

The programs for A157928, the canonical program `A157928.P16800723605722859619` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157928 has offset 0).

The definition of A157928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157928.P16800723605722859619

`ogf(x^2/(1-x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157928

/-- `ogf(x^2/(1-x))` -/
def P16800723605722859619.Spec : Prop :=
  ∀ n, P16800723605722859619.a n = A157928 n

theorem P16800723605722859619.correct : P16800723605722859619.Spec := by
  intro n
  simp only [A157928]

end A157928

/-!
# A157930: Numerator of Bernoulli(n,5).

The programs for A157930, there is no canonical definition to state claims against.
-/

/-! ## A157930.P3478634378493158669

`A157920(n)+A002697(n)*A027642(n)`
-/

namespace A157930.P3478634378493158669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157920 n + A002697 n * A027642 n

end

end A157930.P3478634378493158669

/-!
# A157931: Numbers that are both the sum and the product of two primes.

The programs for A157931, there is no canonical definition to state claims against.
-/

/-! ## A157931.P2948098879895678783

`∪[A062721(n+1), A100484(n+1)]`
-/

namespace A157931.P2948098879895678783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P2948098879895678783

/-! ## A157931.P18071954623070778959

`filter[A051035(n+1), A064911(#)]`
-/

namespace A157931.P18071954623070778959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A157931.P18071954623070778959

/-! ## A157931.P7222946535292536636

`filter[A051035(n+1), A101040(#)]`
-/

namespace A157931.P7222946535292536636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A157931.P7222946535292536636

/-! ## A157931.P8959568877680259023

`∩[A001358(n+1), A051035(n+1)]`
-/

namespace A157931.P8959568877680259023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P8959568877680259023

/-! ## A157931.P11441629751299020077

`∩[A037143(n+1), A051035(n+1)]`
-/

namespace A157931.P11441629751299020077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P11441629751299020077

/-! ## A157931.P8787316652615660863

`∩[A051035(n+1), A176540(n+1)]`
-/

namespace A157931.P8787316652615660863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P8787316652615660863

/-! ## A157931.P17369284825227246199

`filter[A014091(n+1), A064911(#)]`
-/

namespace A157931.P17369284825227246199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A157931.P17369284825227246199

/-! ## A157931.P11524792602821787695

`∩[A001358(n+1), A014091(n+1)]`
-/

namespace A157931.P11524792602821787695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P11524792602821787695

/-! ## A157931.P8212163203564521924

`∩[A014091(n+1), A176540(n+1)]`
-/

namespace A157931.P8212163203564521924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P8212163203564521924

/-! ## A157931.P18370237688806173434

`∩[A014091(n+1), A186621(n+1)+1]`
-/

namespace A157931.P18370237688806173434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P18370237688806173434

/-! ## A157931.P10753639021135062511

`∩[A014091(n+1), A088707(n+1)-1]`
-/

namespace A157931.P10753639021135062511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157931.P10753639021135062511

/-! ## A157931.P9818438415403079788

`record[A179312(A014091(n+1))]`
-/

namespace A157931.P9818438415403079788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A014091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157931.P9818438415403079788

/-! ## A157931.P10754147516618060165

`eq[A010141(A002126(n)), A105700(n)]`
-/

namespace A157931.P10754147516618060165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A002126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157931.P10754147516618060165

/-! ## A157931.P1455286843063968858

`eq[2, A040001(A061358(n)*A105700(n))]`
-/

namespace A157931.P1455286843063968858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A061358 n * A105700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157931.P1455286843063968858

/-!
# A157932: Numbers k such that (3^(35*k) + 5^(21*k) + 7^(15*k)) mod 105 is prime.

The programs for A157932, the canonical program `A157932.P1972592390158169760` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157932 has offset 1).

The definition of A157932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157932.P1972592390158169760

`ogf((4x-2x^2+4x^3)/(1-2x+2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157932

/-- `ogf((4x-2x^2+4x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P1972592390158169760.Spec : Prop :=
  ∀ n, P1972592390158169760.a n = A157932 (n + 1)

theorem P1972592390158169760.correct : P1972592390158169760.Spec := by
  intro n
  simp only [A157932, Nat.add_sub_cancel]

end A157932

/-! ## A157932.P6157708261910859549

`∪[4*n, 6*n]`
-/

namespace A157932.P6157708261910859549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A157932.P6157708261910859549

namespace A157932

/-- `∪[4*n, 6*n]` -/
def P6157708261910859549.Spec : Prop :=
  ∀ n, (P6157708261910859549.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P10023915022945448715

`comp[or(n, (n%3)!)]`
-/

namespace A157932.P10023915022945448715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.factorial (n % 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157932.P10023915022945448715

namespace A157932

/-- `comp[or(n, (n%3)!)]` -/
def P10023915022945448715.Spec : Prop :=
  ∀ n, (P10023915022945448715.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P15166166041293568676

`∑[4-and(2, n)]-4`
-/

namespace A157932.P15166166041293568676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A157932.P15166166041293568676

namespace A157932

/-- `∑[4-and(2, n)]-4` -/
def P15166166041293568676.Spec : Prop :=
  ∀ n, P15166166041293568676.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P13357761301171708012

`∑[gcd(4, n-n²)]-4`
-/

namespace A157932.P13357761301171708012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ((n : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A157932.P13357761301171708012

namespace A157932

/-- `∑[gcd(4, n-n²)]-4` -/
def P13357761301171708012.Spec : Prop :=
  ∀ n, P13357761301171708012.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P3582514718113231057

`n-3-∑[or(n, -3)]`
-/

namespace A157932.P3582514718113231057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157932.P3582514718113231057

namespace A157932

/-- `n-3-∑[or(n, -3)]` -/
def P3582514718113231057.Spec : Prop :=
  ∀ n, P3582514718113231057.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P17860447775432054145

`eq[n, lcm(n, (n+1)%4)]`
-/

namespace A157932.P17860447775432054145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157932.P17860447775432054145

namespace A157932

/-- `eq[n, lcm(n, (n+1)%4)]` -/
def P17860447775432054145.Spec : Prop :=
  ∀ n, (P17860447775432054145.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P17625326552891216899

`a(n-4)+12` with `a(0)=0, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A157932.P17625326552891216899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6, 8] fun n a =>
  a (n - 4) + 12

end

end A157932.P17625326552891216899

namespace A157932

/-- `a(n-4)+12` -/
def P17625326552891216899.Spec : Prop :=
  ∀ n, (P17625326552891216899.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P3802559450293132827

`∑[6-a(n-2)]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A157932.P3802559450293132827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157932.P3802559450293132827

namespace A157932

/-- `∑[6-a(n-2)]` -/
def P3802559450293132827.Spec : Prop :=
  ∀ n, P3802559450293132827.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P2001570595942649230

`∑[or(2, n)-(n-2)]-4`
-/

namespace A157932.P2001570595942649230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A157932.P2001570595942649230

namespace A157932

/-- `∑[or(2, n)-(n-2)]-4` -/
def P2001570595942649230.Spec : Prop :=
  ∀ n, P2001570595942649230.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P3060307947396017064

`4-(and(2, n)-a(n-1))` with `a(0)=0`
-/

namespace A157932.P3060307947396017064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - ((Nat.land 2 n : ℤ) - a (n - 1))

end

end A157932.P3060307947396017064

namespace A157932

/-- `4-(and(2, n)-a(n-1))` -/
def P3060307947396017064.Spec : Prop :=
  ∀ n, P3060307947396017064.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P12494963222843739136

`∑[4/gcd(2, ∑[n+1])]-4`
-/

namespace A157932.P12494963222843739136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A157932.P12494963222843739136

namespace A157932

/-- `∑[4/gcd(2, ∑[n+1])]-4` -/
def P12494963222843739136.Spec : Prop :=
  ∀ n, P12494963222843739136.a n = (A157932 (n + 1) : ℚ)

end A157932

/-! ## A157932.P14244491470051363608

`lt[5, xor(n, n+3)]+n-2`
-/

namespace A157932.P14244491470051363608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) + ((n : ℤ) - 2)

end

end A157932.P14244491470051363608

namespace A157932

/-- `lt[5, xor(n, n+3)]+n-2` -/
def P14244491470051363608.Spec : Prop :=
  ∀ n, P14244491470051363608.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P9439409984243409678

`eq[1, and(n-3, gcd(3, n)-n)]`
-/

namespace A157932.P9439409984243409678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3) ((Nat.gcd 3 n : ℤ) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157932.P9439409984243409678

namespace A157932

/-- `eq[1, and(n-3, gcd(3, n)-n)]` -/
def P9439409984243409678.Spec : Prop :=
  ∀ n, (P9439409984243409678.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P3812978269618989855

`∑[3-(-1)^∑[n+1]]-4`
-/

namespace A157932.P3812978269618989855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A157932.P3812978269618989855

namespace A157932

/-- `∑[3-(-1)^∑[n+1]]-4` -/
def P3812978269618989855.Spec : Prop :=
  ∀ n, P3812978269618989855.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P17342979546261376121

`eq[n+3, lcm(n+3, 1-gcd(n+2, 2*n))]`
-/

namespace A157932.P17342979546261376121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (1 - (Nat.gcd (n + 2) (2 * n) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157932.P17342979546261376121

namespace A157932

/-- `eq[n+3, lcm(n+3, 1-gcd(n+2, 2*n))]` -/
def P17342979546261376121.Spec : Prop :=
  ∀ n, (P17342979546261376121.a n : ℤ) = A157932 (n + 1)

end A157932

/-! ## A157932.P3035206694183296369

`2*A047229(n+1)`
-/

namespace A157932.P3035206694183296369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047229 (n + 1)

end

end A157932.P3035206694183296369

namespace A157932

/-- `2*A047229(n+1)` -/
def P3035206694183296369.Spec : Prop :=
  ∀ n, P3035206694183296369.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P15001466221658348775

`2*(A004525(n)+n)`
-/

namespace A157932.P15001466221658348775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004525 n + (n : ℤ))

end

end A157932.P15001466221658348775

namespace A157932

/-- `2*(A004525(n)+n)` -/
def P15001466221658348775.Spec : Prop :=
  ∀ n, P15001466221658348775.a n = A157932 (n + 1)

end A157932

/-! ## A157932.P2255870859997637005

`2*comp[A007310(n+1)]`
-/

namespace A157932.P2255870859997637005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157932.P2255870859997637005

namespace A157932

/-- `2*comp[A007310(n+1)]` -/
def P2255870859997637005.Spec : Prop :=
  ∀ n, (P2255870859997637005.a n : ℤ) = A157932 (n + 1)

end A157932

/-!
# A157933: Triangle T(i,j) such that Sum_{j=0..i} T(i,j)*x(i,j)/2^i = Sum_{k=0..i, j=0..k} x(k,j), if x(k-1,j) = (x(k,j) + x(k,j+1))/2.

The programs for A157933, the canonical program `A157933.P162782780045515289` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157933 has offset 0).

The definition of A157933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157933.P162782780045515289

`T(n-1,k)+T(n-1,k-1)+2^row(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157933

/-- `T(n-1,k)+T(n-1,k-1)+2^row(n)` -/
def P162782780045515289.Spec : Prop :=
  ∀ n, (P162782780045515289.a n : ℤ) = A157933 n

theorem P162782780045515289.correct : P162782780045515289.Spec := by
  intro n
  simp only [A157933]

end A157933

/-! ## A157933.P5236834583853947263

`A130696(A223317(n+1))`
-/

namespace A157933.P5236834583853947263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A223317 (n + 1)).toNat

end

end A157933.P5236834583853947263

namespace A157933

/-- `A130696(A223317(n+1))` -/
def P5236834583853947263.Spec : Prop :=
  ∀ n, P5236834583853947263.a n = A157933 n

end A157933

/-! ## A157933.P4223796640530777191

`A223317(A084192(∑[n]))-1`
-/

namespace A157933.P4223796640530777191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223317 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A157933.P4223796640530777191

namespace A157933

/-- `A223317(A084192(∑[n]))-1` -/
def P4223796640530777191.Spec : Prop :=
  ∀ n, P4223796640530777191.a n = A157933 n

end A157933

/-! ## A157933.P5046573402950129680

`A103634(A223317(n+1)+1)`
-/

namespace A157933.P5046573402950129680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A223317 (n + 1) + 1).toNat

end

end A157933.P5046573402950129680

namespace A157933

/-- `A103634(A223317(n+1)+1)` -/
def P5046573402950129680.Spec : Prop :=
  ∀ n, P5046573402950129680.a n = A157933 n

end A157933

/-! ## A157933.P8711554264718444832

`A000196((1-A223317(n+1))²)`
-/

namespace A157933.P8711554264718444832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((1 - A223317 (n + 1)) ^ 2).toNat

end

end A157933.P8711554264718444832

namespace A157933

/-- `A000196((1-A223317(n+1))²)` -/
def P8711554264718444832.Spec : Prop :=
  ∀ n, P8711554264718444832.a n = A157933 n

end A157933

/-!
# A157934: Numbers m such that m^2+1 is prime and m^2-7 = prevprime(m^2) (= A007917(m^2)).

The programs for A157934, there is no canonical definition to state claims against.
-/

/-! ## A157934.P5699680692407513650

`floor(sqrt(A157935(n+1)))`
-/

namespace A157934.P5699680692407513650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A157935 (n + 1))

end

end A157934.P5699680692407513650

/-! ## A157934.P17168035765376580768

`ceil(sqrt(A157183(n+1)))`
-/

namespace A157934.P17168035765376580768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157183 (n + 1) : ℝ)⌉

end

end A157934.P17168035765376580768

/-! ## A157934.P15839572219533966611

`A000027(round(sqrt(A157935(n+1))))`
-/

namespace A157934.P15839572219533966611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) : ℝ))).toNat

end

end A157934.P15839572219533966611

/-! ## A157934.P7148668729635506579

`A000027(sqrt(A157935(n+1)-1))`
-/

namespace A157934.P7148668729635506579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) - 1 : ℝ))).toNat

end

end A157934.P7148668729635506579

/-! ## A157934.P3472265017418191747

`A057428(n+1)+ceil(sqrt(A157935(n+1)))`
-/

namespace A157934.P3472265017418191747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ⌈Real.sqrt (A157935 (n + 1) : ℝ)⌉

end

end A157934.P3472265017418191747

/-! ## A157934.P11360019066033902359

`A000007(n+1)+round(sqrt(A157935(n+1)))`
-/

namespace A157934.P11360019066033902359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) : ℝ))

end

end A157934.P11360019066033902359

/-! ## A157934.P16468768319516696627

`round(sqrt(A157935(n+1)))*A057979(2*n)`
-/

namespace A157934.P16468768319516696627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) : ℝ)) * A057979 (2 * n)

end

end A157934.P16468768319516696627

/-! ## A157934.P6289639362277426979

`round(sqrt(A157935(n+1)))%A078143(n+1)`
-/

namespace A157934.P6289639362277426979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) : ℝ))) (A078143 (n + 1))

end

end A157934.P6289639362277426979

/-! ## A157934.P6202182852610815767

`A008486(round(sqrt(A157935(n+1)))/3)`
-/

namespace A157934.P6202182852610815767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (A157935 (n + 1) : ℝ)) : ℚ) / 3)).toNat

end

end A157934.P6202182852610815767

/-! ## A157934.P6725858556867621619

`A004275(ceil(sqrt(A157935(n+1))/2))`
-/

namespace A157934.P6725858556867621619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ⌈Real.sqrt (A157935 (n + 1) : ℝ) / 2⌉.toNat

end

end A157934.P6725858556867621619

/-!
# A157935: Primes of the form m^2+1 such that m^2-7 = prevprime(m^2) (= A007917(m^2)).

The programs for A157935, there is no canonical definition to state claims against.
-/

/-! ## A157935.P11425794645665998109

`A157183(n+1)+8`
-/

namespace A157935.P11425794645665998109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157183 (n + 1) + 8

end

end A157935.P11425794645665998109

/-! ## A157935.P1019905232571965460

`A157934(n+1)²+1`
-/

namespace A157935.P1019905232571965460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157934 (n + 1) ^ 2 + 1

end

end A157935.P1019905232571965460

/-! ## A157935.P192362367978274273

`A157934(n+1)^2+abs(A087960(n))`
-/

namespace A157935.P192362367978274273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157934 (n + 1) ^ 2 + |A087960 n|

end

end A157935.P192362367978274273

/-! ## A157935.P5944541054142365599

`gcd(2, A163676(n+1))+A157934(n+1)^2`
-/

namespace A157935.P5944541054142365599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A163676 (n + 1)) : ℤ) + A157934 (n + 1) ^ 2

end

end A157935.P5944541054142365599

/-! ## A157935.P1085016391085330251

`A000035(A005408(n))+A157934(n+1)^2`
-/

namespace A157935.P1085016391085330251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005408 n).toNat + A157934 (n + 1) ^ 2

end

end A157935.P1085016391085330251

/-! ## A157935.P6869877734894543031

`A001222(A045344(n+2))+A157934(n+1)^2`
-/

namespace A157935.P6869877734894543031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045344 (n + 2)).toNat + A157934 (n + 1) ^ 2

end

end A157935.P6869877734894543031

/-! ## A157935.P17137737022522428211

`A001222(A053001(n+2))+A157934(n+1)^2`
-/

namespace A157935.P17137737022522428211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053001 (n + 2)).toNat + A157934 (n + 1) ^ 2

end

end A157935.P17137737022522428211

/-! ## A157935.P9278998299064733420

`A157934(n+1)^A099751(A141874(n+1))+1`
-/

namespace A157935.P9278998299064733420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157934 (n + 1) : ℚ) ^ (A099751 (A141874 (n + 1)).toNat : ℤ) + 1

end

end A157935.P9278998299064733420

/-! ## A157935.P16332786379911024957

`A002522(A157934(n+1))`
-/

namespace A157935.P16332786379911024957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A157934 (n + 1)).toNat

end

end A157935.P16332786379911024957

/-! ## A157935.P17498822498206626195

`A080335(A157934(n+1)-1)`
-/

namespace A157935.P17498822498206626195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A157934 (n + 1) - 1).toNat

end

end A157935.P17498822498206626195

/-!
# A157936: Numbers n divisible by the least prime >= sqrt(n).

The programs for A157936, there is no canonical definition to state claims against.
-/

/-! ## A157936.P948843933820256505

`record[A077583(n+2)]`
-/

namespace A157936.P948843933820256505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P948843933820256505

/-! ## A157936.P15073663031485560604

`record[A077661(n+2)]`
-/

namespace A157936.P15073663031485560604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P15073663031485560604

/-! ## A157936.P15782751572134684494

`record[A081472(A081520(n+1))]`
-/

namespace A157936.P15782751572134684494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (A081520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P15782751572134684494

/-! ## A157936.P6197199135778324385

`∪[A053024(n+1), A157937(n+1)]`
-/

namespace A157936.P6197199135778324385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157936.P6197199135778324385

/-! ## A157936.P144029409638891198

`∪[A057602(n+1), A157937(n+1)]`
-/

namespace A157936.P144029409638891198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157936.P144029409638891198

/-! ## A157936.P2867053339243137218

`∪[A057602(n+1), A157938(n+1)]`
-/

namespace A157936.P2867053339243137218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157936.P2867053339243137218

/-! ## A157936.P8633562305402926065

`∪[A079143(n+1), A157937(n+1)]`
-/

namespace A157936.P8633562305402926065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157936.P8633562305402926065

/-! ## A157936.P12295292824478009154

`record[A107436(n+1)+A081520(n+1)]`
-/

namespace A157936.P12295292824478009154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 1) + A081520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P12295292824478009154

/-! ## A157936.P1063654057719503758

`record[A277227(n+1)+A081520(n+1)]`
-/

namespace A157936.P1063654057719503758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1) + A081520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P1063654057719503758

/-! ## A157936.P16715456009933295460

`record[A081520(n+2)+A002024(n+1)]`
-/

namespace A157936.P16715456009933295460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081520 (n + 2) + A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157936.P16715456009933295460

/-!
# A157937: Numbers k divisible by the least prime >= sqrt(k) which are not in A001248 (primes squared).

The programs for A157937, there is no canonical definition to state claims against.
-/

/-! ## A157937.P5648896640824064126

`∪[A006094(n+1), A157938(n+1)]`
-/

namespace A157937.P5648896640824064126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157937.P5648896640824064126

/-! ## A157937.P13254016133871496397

`eq[2, A010000(n)%A230775(n+1)]`
-/

namespace A157937.P13254016133871496397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010000 n) (A230775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157937.P13254016133871496397

/-! ## A157937.P7841358009949296681

`eq[2, A016825(n)%A230775(n+1)]`
-/

namespace A157937.P7841358009949296681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A230775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157937.P7841358009949296681

/-! ## A157937.P12619578425780277856

`eq[2, A103517(n)%A230775(n+1)]`
-/

namespace A157937.P12619578425780277856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n) (A230775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157937.P12619578425780277856

/-! ## A157937.P10063413559909665251

`eq[A080367(n+1), A257088(A230775(n+1))]+1`
-/

namespace A157937.P10063413559909665251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A230775 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A157937.P10063413559909665251

/-! ## A157937.P3040802072290045054

`eq[A080367(A257088(n)), A230775(n+1)]`
-/

namespace A157937.P3040802072290045054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157937.P3040802072290045054

/-! ## A157937.P10283044282523069271

`eq[A053585(A008574(n)), A230775(n+1)]`
-/

namespace A157937.P10283044282523069271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157937.P10283044282523069271

/-!
# A157938: Numbers n divisible by the least prime >= sqrt(n) but not by the largest prime <= sqrt(n).

The programs for A157938, there is no canonical definition to state claims against.
-/

/-! ## A157938.P15643455061115454303

`∩[A073492(n+1), A157937(n+1)]`
-/

namespace A157938.P15643455061115454303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P15643455061115454303

/-! ## A157938.P2523115976395324631

`∩[A157937(n+1), A193166(n+1)]`
-/

namespace A157938.P2523115976395324631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P2523115976395324631

/-! ## A157938.P12460821791439088494

`∩[A073492(n+1), A157936(n+1)]`
-/

namespace A157938.P12460821791439088494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P12460821791439088494

/-! ## A157938.P12313938022581142515

`∩[A157936(n+1), A157939(n+1)]`
-/

namespace A157938.P12313938022581142515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P12313938022581142515

/-! ## A157938.P15150135300522685793

`∩[A157937(n+1), A157939(n+1)]`
-/

namespace A157938.P15150135300522685793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157938.P15150135300522685793

/-!
# A157939: Numbers k divisible by prevprime(sqrt(k)) or nextprime(sqrt(k)) but not both, where prevprime=A007917, nextprime=A007918.

The programs for A157939, there is no canonical definition to state claims against.
-/

/-! ## A157939.P9148800362269483094

`∪[A157938(n+1), A157940(n+1)]`
-/

namespace A157939.P9148800362269483094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157939.P9148800362269483094

/-!
# A157940: Numbers m divisible by the largest prime <= sqrt(m) which are not in A001248 (primes squared) or A006094 (product of two consecutive primes).

The programs for A157940, there is no canonical definition to state claims against.
-/

/-! ## A157940.P9854830010292781121

`∩[A157939(n+1), A157941(n+1)]`
-/

namespace A157940.P9854830010292781121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157940.P9854830010292781121

/-! ## A157940.P944207235047367744

`∩[A157939(n+1), A157942(n+1)]`
-/

namespace A157940.P944207235047367744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157940.P944207235047367744

/-! ## A157940.P11941346682036097296

`∩[A157941(n+1), A359908(n+1)]`
-/

namespace A157940.P11941346682036097296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157940.P11941346682036097296

/-!
# A157941: Numbers n divisible by the largest prime < sqrt(n), A007917(A000196(n-1)).

The programs for A157941, there is no canonical definition to state claims against.
-/

/-! ## A157941.P2701418609626907288

`∪[A006094(n+1), A157940(n+1)]`
-/

namespace A157941.P2701418609626907288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157941.P2701418609626907288

/-! ## A157941.P17603246122268159633

`∪[A013637(n+3), A157940(n+1)]`
-/

namespace A157941.P17603246122268159633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157941.P17603246122268159633

/-! ## A157941.P15580869621154199854

`lt[Δ[C(ceil(sqrt(n)), 2)], char[A157942(n+1)]]`
-/

namespace A157941.P15580869621154199854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157942 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A157941.P15580869621154199854

/-! ## A157941.P2177937409259745182

`filter[A157942(n+1), A049240(#)]`
-/

namespace A157941.P2177937409259745182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A157941.P2177937409259745182

/-! ## A157941.P5692025707690384379

`filter[A157942(n+1), A267594(#)]`
-/

namespace A157941.P5692025707690384379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A157941.P5692025707690384379

/-!
# A157942: Numbers n divisible by the largest prime <= sqrt(n), A007917(A000196(n)).

The programs for A157942, there is no canonical definition to state claims against.
-/

/-! ## A157942.P7251467348548819250

`∪[A033476(n), A157940(n+1)]`
-/

namespace A157942.P7251467348548819250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P7251467348548819250

/-! ## A157942.P8857762202789349671

`∪[A157941(n+1), A033476(n)]`
-/

namespace A157942.P8857762202789349671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P8857762202789349671

/-! ## A157942.P15362922509878186462

`∪[A157941(n+1), A079142(n)]`
-/

namespace A157942.P15362922509878186462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P15362922509878186462

/-! ## A157942.P13372449972654933406

`∪[A001248(n+1), A157941(n+1)]`
-/

namespace A157942.P13372449972654933406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P13372449972654933406

/-! ## A157942.P5605261046049224936

`∪[A052043(n+1), A157941(n+1)]`
-/

namespace A157942.P5605261046049224936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P5605261046049224936

/-! ## A157942.P7043369591605604611

`∪[A064599(n+1), A157941(n+1)]`
-/

namespace A157942.P7043369591605604611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P7043369591605604611

/-! ## A157942.P10215105788100652974

`∪[A071835(n+1), A157941(n+1)]`
-/

namespace A157942.P10215105788100652974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P10215105788100652974

/-! ## A157942.P957335219457805003

`∪[A077438(n+1), A157941(n+1)]`
-/

namespace A157942.P957335219457805003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P957335219457805003

/-! ## A157942.P9624107169898279272

`∪[A157941(n+1), A283105(n+1)]`
-/

namespace A157942.P9624107169898279272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P9624107169898279272

/-! ## A157942.P9770882088672011273

`∪[A000040(n+1)², A157941(n+1)]`
-/

namespace A157942.P9770882088672011273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157942.P9770882088672011273

/-!
# A157947: a(n) = 98*n + 1.

The programs for A157947, the canonical program `A157947.P5111263840807447448` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157947 has offset 1).

The definition of A157947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*(n+1)+1` (program `A157947.P5111263840807447448`, by `A157947.P5111263840807447448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157947.P5111263840807447448

`98*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157947

/-- `98*(n+1)+1` -/
def P5111263840807447448.Spec : Prop :=
  ∀ n, (P5111263840807447448.a n : ℤ) = A157947 (n + 1)

theorem P5111263840807447448.correct : P5111263840807447448.Spec := by
  intro n
  simp only [A157947, Nat.add_sub_cancel]

end A157947

/-!
# A157948: a(n) = 64*n^2 - n.

The programs for A157948, the canonical program `A157948.P9942417277161281651` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157948 has offset 1).

The definition of A157948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²-(n+1)` (program `A157948.P9942417277161281651`, by `A157948.P9942417277161281651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157948.P13076280926763743683

`ogf((63+65x)/(1-3x+3x^2-x^3))`
-/

namespace A157948.P13076280926763743683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [63, 65] [1, -3, 3, -1] n

end

end A157948.P13076280926763743683

namespace A157948

/-- `ogf((63+65x)/(1-3x+3x^2-x^3))` -/
def P13076280926763743683.Spec : Prop :=
  ∀ n, P13076280926763743683.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P9942417277161281651

`64*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157948

/-- `64*(n+1)²-(n+1)` -/
def P9942417277161281651.Spec : Prop :=
  ∀ n, P9942417277161281651.a n = A157948 (n + 1)

theorem P9942417277161281651.correct : P9942417277161281651.Spec := by
  intro n
  simp only [A157948, Nat.add_sub_cancel]

end A157948

/-! ## A157948.P3505927740854927208

`(64*C(n+1, n)-1)*C(n+1, n)`
-/

namespace A157948.P3505927740854927208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((64 * Nat.choose (n + 1) n : ℤ) - 1) * (Nat.choose (n + 1) n : ℤ)

end

end A157948.P3505927740854927208

namespace A157948

/-- `(64*C(n+1, n)-1)*C(n+1, n)` -/
def P3505927740854927208.Spec : Prop :=
  ∀ n, P3505927740854927208.a n = A157948 (n + 1)

theorem P3505927740854927208.correct : P3505927740854927208.Spec := by
  intro n
  simp only [A157948, Nat.add_sub_cancel, A157948.P3505927740854927208.a, A157948.P9942417277161281651.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A157948

/-! ## A157948.P10785233222079167509

`(n+1)*(A158071(n+1)-2)`
-/

namespace A157948.P10785233222079167509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158071 (n + 1) - 2)

end

end A157948.P10785233222079167509

namespace A157948

/-- `(n+1)*(A158071(n+1)-2)` -/
def P10785233222079167509.Spec : Prop :=
  ∀ n, P10785233222079167509.a n = A157948 (n + 1)

theorem P10785233222079167509.correct : P10785233222079167509.Spec := by
  intro n
  simp only [A157948, Nat.add_sub_cancel, A157948.P10785233222079167509.a, A157948.P9942417277161281651.a, A158071, A158071.P6996563464088219361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157948

/-! ## A157948.P16112360625402878645

`A158252(n+1)%A156813(n+1)`
-/

namespace A157948.P16112360625402878645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158252 (n + 1)) (A156813 (n + 1))

end

end A157948.P16112360625402878645

namespace A157948

/-- `A158252(n+1)%A156813(n+1)` -/
def P16112360625402878645.Spec : Prop :=
  ∀ n, P16112360625402878645.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P7219981482363007872

`(n+1)*(A152691(n+1)-1)`
-/

namespace A157948.P7219981482363007872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A152691 (n + 1) - 1)

end

end A157948.P7219981482363007872

namespace A157948

/-- `(n+1)*(A152691(n+1)-1)` -/
def P7219981482363007872.Spec : Prop :=
  ∀ n, P7219981482363007872.a n = A157948 (n + 1)

theorem P7219981482363007872.correct : P7219981482363007872.Spec := by
  intro n
  simp only [A157948, Nat.add_sub_cancel, A157948.P7219981482363007872.a, A157948.P9942417277161281651.a, A152691, A152691.P6353139268516617885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157948

/-! ## A157948.P10829804608760028014

`A158067(2*(n+1))/4`
-/

namespace A157948.P10829804608760028014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158067 (2 * (n + 1)) : ℚ) / 4

end

end A157948.P10829804608760028014

namespace A157948

/-- `A158067(2*(n+1))/4` -/
def P10829804608760028014.Spec : Prop :=
  ∀ n, P10829804608760028014.a n = (A157948 (n + 1) : ℚ)

end A157948

/-! ## A157948.P3383334555749114180

`(n+1)*A239128(2*(n+1))`
-/

namespace A157948.P3383334555749114180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239128 (2 * (n + 1))

end

end A157948.P3383334555749114180

namespace A157948

/-- `(n+1)*A239128(2*(n+1))` -/
def P3383334555749114180.Spec : Prop :=
  ∀ n, P3383334555749114180.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P5571046612826731338

`(n+1)*A125169(A131098(n+2))`
-/

namespace A157948.P5571046612826731338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A125169 (A131098 (n + 2)).toNat

end

end A157948.P5571046612826731338

namespace A157948

/-- `(n+1)*A125169(A131098(n+2))` -/
def P5571046612826731338.Spec : Prop :=
  ∀ n, P5571046612826731338.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P11714120494901261981

`(n+1)*A004771(A004771(n))`
-/

namespace A157948.P11714120494901261981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004771 (A004771 n).toNat

end

end A157948.P11714120494901261981

namespace A157948

/-- `(n+1)*A004771(A004771(n))` -/
def P11714120494901261981.Spec : Prop :=
  ∀ n, P11714120494901261981.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P9992914571350711639

`∑[A004771(A004771(2*n))]`
-/

namespace A157948.P9992914571350711639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A004771 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157948.P9992914571350711639

namespace A157948

/-- `∑[A004771(A004771(2*n))]` -/
def P9992914571350711639.Spec : Prop :=
  ∀ n, P9992914571350711639.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P3358994046574221393

`(n+1)*A004767(A004767(A004767(n)))`
-/

namespace A157948.P3358994046574221393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004767 (A004767 (A004767 n).toNat).toNat

end

end A157948.P3358994046574221393

namespace A157948

/-- `(n+1)*A004767(A004767(A004767(n)))` -/
def P3358994046574221393.Spec : Prop :=
  ∀ n, P3358994046574221393.a n = A157948 (n + 1)

end A157948

/-! ## A157948.P14370868438726803976

`(n+1)*A006369(A367705(A017653(n)))`
-/

namespace A157948.P14370868438726803976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006369 (A367705 (A017653 n).toNat).toNat

end

end A157948.P14370868438726803976

namespace A157948

/-- `(n+1)*A006369(A367705(A017653(n)))` -/
def P14370868438726803976.Spec : Prop :=
  ∀ n, P14370868438726803976.a n = A157948 (n + 1)

end A157948

/-!
# A157949: a(n) = 128*n - 1.

The programs for A157949, the canonical program `A157949.P5017807589907156745` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157949 has offset 1).

The definition of A157949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*(n+1)-1` (program `A157949.P5017807589907156745`, by `A157949.P5017807589907156745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157949.P5017807589907156745

`128*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157949

/-- `128*(n+1)-1` -/
def P5017807589907156745.Spec : Prop :=
  ∀ n, P5017807589907156745.a n = A157949 (n + 1)

theorem P5017807589907156745.correct : P5017807589907156745.Spec := by
  intro n
  simp only [A157949, Nat.add_sub_cancel]

end A157949

/-!
# A157950: Primes p such that p^8 + 2^8 is prime.

The programs for A157950, there is no canonical definition to state claims against.
-/

/-! ## A157950.P15643960771611659937

`A132260(∑[n+1]+2)`
-/

namespace A157950.P15643960771611659937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A157950.P15643960771611659937

/-! ## A157950.P17653851905517241837

`p?[A342689(n)+A132260(n+3)]`
-/

namespace A157950.P17653851905517241837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342689 n + A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157950.P17653851905517241837

/-! ## A157950.P11388628388937741036

`record[A023531(n)*A132260(n+3)]`
-/

namespace A157950.P11388628388937741036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157950.P11388628388937741036

/-! ## A157950.P11306707357625967197

`record[A103452(n)*A132260(n+3)]`
-/

namespace A157950.P11306707357625967197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157950.P11306707357625967197

/-!
# A157951: a(n) = 128*n + 1.

The programs for A157951, the canonical program `A157951.P4580848866771164817` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157951 has offset 1).

The definition of A157951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*(n+1)+1` (program `A157951.P4580848866771164817`, by `A157951.P4580848866771164817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157951.P4580848866771164817

`128*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157951

/-- `128*(n+1)+1` -/
def P4580848866771164817.Spec : Prop :=
  ∀ n, (P4580848866771164817.a n : ℤ) = A157951 (n + 1)

theorem P4580848866771164817.correct : P4580848866771164817.Spec := by
  intro n
  simp only [A157951, Nat.add_sub_cancel]

end A157951

/-!
# A157952: a(n) = 162*n + 1.

The programs for A157952, the canonical program `A157952.P3326823240447908806` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157952 has offset 1).

The definition of A157952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `162*(n+1)+1` (program `A157952.P3326823240447908806`, by `A157952.P3326823240447908806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157952.P3326823240447908806

`162*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157952

/-- `162*(n+1)+1` -/
def P3326823240447908806.Spec : Prop :=
  ∀ n, (P3326823240447908806.a n : ℤ) = A157952 (n + 1)

theorem P3326823240447908806.correct : P3326823240447908806.Spec := by
  intro n
  simp only [A157952, Nat.add_sub_cancel]

end A157952

/-!
# A157953: a(n) = 81n^2 - n.

The programs for A157953, the canonical program `A157953.P53253869954381866` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157953 has offset 1).

The definition of A157953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)²-(n+1)` (program `A157953.P53253869954381866`, by `A157953.P53253869954381866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157953.P6229650085681661067

`ogf((80+82x)/(1-3x+3x^2-x^3))`
-/

namespace A157953.P6229650085681661067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [80, 82] [1, -3, 3, -1] n

end

end A157953.P6229650085681661067

namespace A157953

/-- `ogf((80+82x)/(1-3x+3x^2-x^3))` -/
def P6229650085681661067.Spec : Prop :=
  ∀ n, P6229650085681661067.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P53253869954381866

`81*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157953

/-- `81*(n+1)²-(n+1)` -/
def P53253869954381866.Spec : Prop :=
  ∀ n, P53253869954381866.a n = A157953 (n + 1)

theorem P53253869954381866.correct : P53253869954381866.Spec := by
  intro n
  simp only [A157953, Nat.add_sub_cancel]

end A157953

/-! ## A157953.P13960681659712449612

`∑[Δ[A017162(n)]-1]`
-/

namespace A157953.P13960681659712449612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157953.P13960681659712449612

namespace A157953

/-- `∑[Δ[A017162(n)]-1]` -/
def P13960681659712449612.Spec : Prop :=
  ∀ n, P13960681659712449612.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P15524966740669297819

`(n+1)*(A362360(n+1)+1)`
-/

namespace A157953.P15524966740669297819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A362360 (n + 1) + 1)

end

end A157953.P15524966740669297819

namespace A157953

/-- `(n+1)*(A362360(n+1)+1)` -/
def P15524966740669297819.Spec : Prop :=
  ∀ n, P15524966740669297819.a n = A157953 (n + 1)

theorem P15524966740669297819.correct : P15524966740669297819.Spec := by
  intro n
  simp only [A157953, Nat.add_sub_cancel, A157953.P15524966740669297819.a, A157953.P53253869954381866.a, A362360, A362360.P3423445274838925230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157953

/-! ## A157953.P5764823488194809487

`(n+1)*(A158123(n+1)-2)`
-/

namespace A157953.P5764823488194809487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158123 (n + 1) - 2)

end

end A157953.P5764823488194809487

namespace A157953

/-- `(n+1)*(A158123(n+1)-2)` -/
def P5764823488194809487.Spec : Prop :=
  ∀ n, P5764823488194809487.a n = A157953 (n + 1)

theorem P5764823488194809487.correct : P5764823488194809487.Spec := by
  intro n
  simp only [A157953, Nat.add_sub_cancel, A157953.P5764823488194809487.a, A157953.P53253869954381866.a, A158123, A158123.P7632629272765465271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157953

/-! ## A157953.P6404863647765963086

`A158226(n+1)%A156635(n+1)`
-/

namespace A157953.P6404863647765963086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158226 (n + 1)) (A156635 (n + 1))

end

end A157953.P6404863647765963086

namespace A157953

/-- `A158226(n+1)%A156635(n+1)` -/
def P6404863647765963086.Spec : Prop :=
  ∀ n, P6404863647765963086.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P8455823027691567453

`A156814(n+1)%A158132(n+1)`
-/

namespace A157953.P8455823027691567453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156814 (n + 1)) (A158132 (n + 1))

end

end A157953.P8455823027691567453

namespace A157953

/-- `A156814(n+1)%A158132(n+1)` -/
def P8455823027691567453.Spec : Prop :=
  ∀ n, P8455823027691567453.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P5071872483675630976

`∑[Δ[A008591(n)²]-1]`
-/

namespace A157953.P5071872483675630976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157953.P5071872483675630976

namespace A157953

/-- `∑[Δ[A008591(n)²]-1]` -/
def P5071872483675630976.Spec : Prop :=
  ∀ n, P5071872483675630976.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P11002353517395163753

`A157507(2*(n+1))/4`
-/

namespace A157953.P11002353517395163753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157507 (2 * (n + 1)) : ℚ) / 4

end

end A157953.P11002353517395163753

namespace A157953

/-- `A157507(2*(n+1))/4` -/
def P11002353517395163753.Spec : Prop :=
  ∀ n, P11002353517395163753.a n = (A157953 (n + 1) : ℚ)

end A157953

/-! ## A157953.P9330711770656984934

`(n+1)*A017257(A017257(n))`
-/

namespace A157953.P9330711770656984934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017257 (A017257 n).toNat

end

end A157953.P9330711770656984934

namespace A157953

/-- `(n+1)*A017257(A017257(n))` -/
def P9330711770656984934.Spec : Prop :=
  ∀ n, P9330711770656984934.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P16746616529472679746

`∑[A017257(A017257(2*n))]`
-/

namespace A157953.P16746616529472679746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (A017257 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157953.P16746616529472679746

namespace A157953

/-- `∑[A017257(A017257(2*n))]` -/
def P16746616529472679746.Spec : Prop :=
  ∀ n, P16746616529472679746.a n = A157953 (n + 1)

end A157953

/-! ## A157953.P7840955456545511231

`(n+1)*A168409(A168409(A008586(n+1)))`
-/

namespace A157953.P7840955456545511231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168409 (A168409 (A008586 (n + 1)).toNat).toNat

end

end A157953.P7840955456545511231

namespace A157953

/-- `(n+1)*A168409(A168409(A008586(n+1)))` -/
def P7840955456545511231.Spec : Prop :=
  ∀ n, P7840955456545511231.a n = A157953 (n + 1)

end A157953

/-!
# A157954: a(n) = 162n - 1.

The programs for A157954, the canonical program `A157954.P1000377226603058176` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157954 has offset 1).

The definition of A157954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `162*(n+1)-1` (program `A157954.P1000377226603058176`, by `A157954.P1000377226603058176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157954.P1000377226603058176

`162*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157954

/-- `162*(n+1)-1` -/
def P1000377226603058176.Spec : Prop :=
  ∀ n, P1000377226603058176.a n = A157954 (n + 1)

theorem P1000377226603058176.correct : P1000377226603058176.Spec := by
  intro n
  simp only [A157954, Nat.add_sub_cancel]

end A157954

/-!
# A157955: a(n) = 200*n - 1.

The programs for A157955, the canonical program `A157955.P12703830212942788044` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157955 has offset 1).

The definition of A157955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `200*(n+1)-1` (program `A157955.P12703830212942788044`, by `A157955.P12703830212942788044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157955.P12703830212942788044

`200*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157955

/-- `200*(n+1)-1` -/
def P12703830212942788044.Spec : Prop :=
  ∀ n, P12703830212942788044.a n = A157955 (n + 1)

theorem P12703830212942788044.correct : P12703830212942788044.Spec := by
  intro n
  simp only [A157955, Nat.add_sub_cancel]

end A157955

/-!
# A157956: a(n) = 200*n + 1.

The programs for A157956, the canonical program `A157956.P2998159344433925523` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157956 has offset 1).

The definition of A157956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `200*(n+1)+1` (program `A157956.P2998159344433925523`, by `A157956.P2998159344433925523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157956.P2998159344433925523

`200*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157956

/-- `200*(n+1)+1` -/
def P2998159344433925523.Spec : Prop :=
  ∀ n, (P2998159344433925523.a n : ℤ) = A157956 (n + 1)

theorem P2998159344433925523.correct : P2998159344433925523.Spec := by
  intro n
  simp only [A157956, Nat.add_sub_cancel]

end A157956

/-!
# A157958: a(n) = 242*n + 1.

The programs for A157958, the canonical program `A157958.P10452381409287298142` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157958 has offset 1).

The definition of A157958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `242*(n+1)+1` (program `A157958.P10452381409287298142`, by `A157958.P10452381409287298142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157958.P10452381409287298142

`242*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157958

/-- `242*(n+1)+1` -/
def P10452381409287298142.Spec : Prop :=
  ∀ n, (P10452381409287298142.a n : ℤ) = A157958 (n + 1)

theorem P10452381409287298142.correct : P10452381409287298142.Spec := by
  intro n
  simp only [A157958, Nat.add_sub_cancel]

end A157958

/-!
# A157960: a(n) = 121*n^2 - n.

The programs for A157960, the canonical program `A157960.P17340566908017740998` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157960 has offset 1).

The definition of A157960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)²-(n+1)` (program `A157960.P17340566908017740998`, by `A157960.P17340566908017740998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157960.P1826850635655158288

`ogf((120+122x)/(1-3x+3x^2-x^3))`
-/

namespace A157960.P1826850635655158288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [120, 122] [1, -3, 3, -1] n

end

end A157960.P1826850635655158288

namespace A157960

/-- `ogf((120+122x)/(1-3x+3x^2-x^3))` -/
def P1826850635655158288.Spec : Prop :=
  ∀ n, P1826850635655158288.a n = A157960 (n + 1)

end A157960

/-! ## A157960.P17340566908017740998

`121*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157960

/-- `121*(n+1)²-(n+1)` -/
def P17340566908017740998.Spec : Prop :=
  ∀ n, P17340566908017740998.a n = A157960 (n + 1)

theorem P17340566908017740998.correct : P17340566908017740998.Spec := by
  intro n
  simp only [A157960, Nat.add_sub_cancel]

end A157960

/-! ## A157960.P15670458208712104987

`(n+1)*A158130(n+1)`
-/

namespace A157960.P15670458208712104987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158130 (n + 1)

end

end A157960.P15670458208712104987

namespace A157960

/-- `(n+1)*A158130(n+1)` -/
def P15670458208712104987.Spec : Prop :=
  ∀ n, P15670458208712104987.a n = A157960 (n + 1)

theorem P15670458208712104987.correct : P15670458208712104987.Spec := by
  intro n
  simp only [A157960, Nat.add_sub_cancel, A157960.P15670458208712104987.a, A157960.P17340566908017740998.a, A158130, A158130.P15621035192484013902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157960

/-! ## A157960.P3110218751406995933

`(n+1)*(A158131(n+1)-2)`
-/

namespace A157960.P3110218751406995933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158131 (n + 1) - 2)

end

end A157960.P3110218751406995933

namespace A157960

/-- `(n+1)*(A158131(n+1)-2)` -/
def P3110218751406995933.Spec : Prop :=
  ∀ n, P3110218751406995933.a n = A157960 (n + 1)

theorem P3110218751406995933.correct : P3110218751406995933.Spec := by
  intro n
  simp only [A157960, Nat.add_sub_cancel, A157960.P3110218751406995933.a, A157960.P17340566908017740998.a, A158131, A158131.P7083311342497824103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157960

/-! ## A157960.P18236754066449255472

`(Δ[30*A046092(n)]+n)*(n+1)`
-/

namespace A157960.P18236754066449255472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) * (n + 1 : ℤ)

end

end A157960.P18236754066449255472

namespace A157960

/-- `(Δ[30*A046092(n)]+n)*(n+1)` -/
def P18236754066449255472.Spec : Prop :=
  ∀ n, P18236754066449255472.a n = A157960 (n + 1)

theorem P18236754066449255472.correct : P18236754066449255472.Spec := by
  intro n
  simp only [A157960, Nat.add_sub_cancel, A157960.P18236754066449255472.f1, A157960.P18236754066449255472.a, A157960.P17340566908017740998.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157960

/-! ## A157960.P13985601667996762389

`2*(A158670(n+1)+A000124(n))`
-/

namespace A157960.P13985601667996762389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158670 (n + 1) + A000124 n)

end

end A157960.P13985601667996762389

namespace A157960

/-- `2*(A158670(n+1)+A000124(n))` -/
def P13985601667996762389.Spec : Prop :=
  ∀ n, P13985601667996762389.a n = A157960 (n + 1)

end A157960

/-! ## A157960.P16933922922269240559

`A158325(n+1)%A173267(n+1)`
-/

namespace A157960.P16933922922269240559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158325 (n + 1)) (A173267 (n + 1))

end

end A157960.P16933922922269240559

namespace A157960

/-- `A158325(n+1)%A173267(n+1)` -/
def P16933922922269240559.Spec : Prop :=
  ∀ n, P16933922922269240559.a n = A157960 (n + 1)

end A157960

/-! ## A157960.P17918426296444585891

`lcm(A000027(n+1), A158130(n+1))`
-/

namespace A157960.P17918426296444585891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158130 (n + 1))

end

end A157960.P17918426296444585891

namespace A157960

/-- `lcm(A000027(n+1), A158130(n+1))` -/
def P17918426296444585891.Spec : Prop :=
  ∀ n, (P17918426296444585891.a n : ℤ) = A157960 (n + 1)

end A157960

/-! ## A157960.P14788154414584882538

`∑[A158130(2*n+1)]`
-/

namespace A157960.P14788154414584882538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157960.P14788154414584882538

namespace A157960

/-- `∑[A158130(2*n+1)]` -/
def P14788154414584882538.Spec : Prop :=
  ∀ n, P14788154414584882538.a n = A157960 (n + 1)

end A157960

/-! ## A157960.P11315745076785084433

`A157040(2*(n+1))/4`
-/

namespace A157960.P11315745076785084433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157040 (2 * (n + 1)) : ℚ) / 4

end

end A157960.P11315745076785084433

namespace A157960

/-- `A157040(2*(n+1))/4` -/
def P11315745076785084433.Spec : Prop :=
  ∀ n, P11315745076785084433.a n = (A157960 (n + 1) : ℚ)

end A157960

/-! ## A157960.P5196278461632827011

`(n+1)*A017509(A017509(n))`
-/

namespace A157960.P5196278461632827011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017509 (A017509 n).toNat

end

end A157960.P5196278461632827011

namespace A157960

/-- `(n+1)*A017509(A017509(n))` -/
def P5196278461632827011.Spec : Prop :=
  ∀ n, P5196278461632827011.a n = A157960 (n + 1)

end A157960

/-! ## A157960.P15962496654188763453

`∑[A017509(A017509(2*n))]`
-/

namespace A157960.P15962496654188763453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A017509 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157960.P15962496654188763453

namespace A157960

/-- `∑[A017509(A017509(2*n))]` -/
def P15962496654188763453.Spec : Prop :=
  ∀ n, P15962496654188763453.a n = A157960 (n + 1)

end A157960

/-!
# A157961: a(n) = 242*n - 1.

The programs for A157961, the canonical program `A157961.P533550963054399083` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157961 has offset 1).

The definition of A157961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `242*(n+1)-1` (program `A157961.P533550963054399083`, by `A157961.P533550963054399083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157961.P533550963054399083

`242*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157961

/-- `242*(n+1)-1` -/
def P533550963054399083.Spec : Prop :=
  ∀ n, P533550963054399083.a n = A157961 (n + 1)

theorem P533550963054399083.correct : P533550963054399083.Spec := by
  intro n
  simp only [A157961, Nat.add_sub_cancel]

end A157961

/-!
# A157963: Triangle T(n,k), 0<=k<=n, read by rows given by [1,q-1,q^2,q^3-q,q^4,q^5-q^2,q^6,q^7-q^3,q^8,...] DELTA [ -1,0,-q,0,-q^2,0,-q^3,0,-q^4,0,-q^5,0,...] (for q=2) = [1,1,4,6,16,28,64,...] DELTA [ -1,0,-2,0,-4,0,-8,0,-16,0,...] where DELTA is the operator defined in A084938.

The programs for A157963, the canonical program `A157963.P1390622902840465952` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157963 has offset 0).

The definition of A157963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157963.P1265479527785518538

`A033999(A003056(n))*A135950(n)`
-/

namespace A157963.P1265479527785518538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A135950 n

end

end A157963.P1265479527785518538

namespace A157963

/-- `A033999(A003056(n))*A135950(n)` -/
def P1265479527785518538.Spec : Prop :=
  ∀ n, P1265479527785518538.a n = A157963 n

end A157963

/-! ## A157963.P1539298649258967287

`A021010(A057944(n))*A135950(n)`
-/

namespace A157963.P1539298649258967287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A057944 n).toNat * A135950 n

end

end A157963.P1539298649258967287

namespace A157963

/-- `A021010(A057944(n))*A135950(n)` -/
def P1539298649258967287.Spec : Prop :=
  ∀ n, P1539298649258967287.a n = A157963 n

end A157963

/-! ## A157963.P8950051696226396071

`A135950(n)*A165326(A002024(n+1))`
-/

namespace A157963.P8950051696226396071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 n * A165326 (A002024 (n + 1)).toNat

end

end A157963.P8950051696226396071

namespace A157963

/-- `A135950(n)*A165326(A002024(n+1))` -/
def P8950051696226396071.Spec : Prop :=
  ∀ n, P8950051696226396071.a n = A157963 n

end A157963

/-! ## A157963.P5732241587326754329

`A033999(A003057(n+2))*A135950(n)`
-/

namespace A157963.P5732241587326754329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A135950 n

end

end A157963.P5732241587326754329

namespace A157963

/-- `A033999(A003057(n+2))*A135950(n)` -/
def P5732241587326754329.Spec : Prop :=
  ∀ n, P5732241587326754329.a n = A157963 n

end A157963

/-! ## A157963.P1390622902840465952

`A108085(n)/A130321(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157963

/-- `A108085(n)/A130321(n)` -/
def P1390622902840465952.Spec : Prop :=
  ∀ n, P1390622902840465952.a n = (A157963 n : ℚ)

end A157963

/-! ## A157963.P2967227711965358301

`A106400(A089633(n))*A135950(n)`
-/

namespace A157963.P2967227711965358301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A089633 n).toNat * A135950 n

end

end A157963.P2967227711965358301

namespace A157963

/-- `A106400(A089633(n))*A135950(n)` -/
def P2967227711965358301.Spec : Prop :=
  ∀ n, P2967227711965358301.a n = A157963 n

end A157963

/-!
# A157966: Number of 3's in A157733(n).

The programs for A157966, there is no canonical definition to state claims against.
-/

/-! ## A157966.P11118073310861394980

`A008611(p?[xor(1, n)+1])-1`
-/

namespace A157966.P11118073310861394980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A157966.P11118073310861394980

/-! ## A157966.P17221903248650111912

`A008611(p?[n%3+n])-1`
-/

namespace A157966.P17221903248650111912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A157966.P17221903248650111912

/-! ## A157966.P5431982469441938751

`A008611(p?[abs(xor(1, -n))])-1`
-/

namespace A157966.P5431982469441938751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A157966.P5431982469441938751

/-! ## A157966.P15015494369907290139

`A008611(p?[n-(-1)^n])-1`
-/

namespace A157966.P15015494369907290139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A157966.P15015494369907290139

/-! ## A157966.P1706464875284968539

`char[1]+floor((A000040(n+1)-2)/3)`
-/

namespace A157966.P1706464875284968539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(A000040 (n + 1) - 2 : ℚ) / 3⌋

end

end A157966.P1706464875284968539

/-! ## A157966.P10493307597792076784

`round(A000040(char[1]+1+n)/3)-1`
-/

namespace A157966.P10493307597792076784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ) / 3) - 1

end

end A157966.P10493307597792076784

/-! ## A157966.P10692776130661464073

`ceil((A000040(char[1]+n+1)-4)/3)`
-/

namespace A157966.P10692776130661464073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 ((if ∃ j, f1 j = n then 1 else 0) + n + 1) - 4 : ℚ) / 3⌉

end

end A157966.P10692776130661464073

/-! ## A157966.P3958174490636237124

`A008611(xor(1, p?[round(8*n/7)]-2))`
-/

namespace A157966.P3958174490636237124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)).toNat

end

end A157966.P3958174490636237124

/-! ## A157966.P14687965369802024596

`char[1]+floor(lt[A001222(n+2), 2]/3)`
-/

namespace A157966.P14687965369802024596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℚ) / 3⌋

end

end A157966.P14687965369802024596

/-! ## A157966.P1672336061797088044

`floor((A000040(C(n, n²)+n+1)-2)/3)`
-/

namespace A157966.P1672336061797088044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (Nat.choose n (n ^ 2) + (n + 1)) - 2 : ℚ) / 3⌋

end

end A157966.P1672336061797088044

/-!
# A157967: Least prime of prime quadruplets that are separated by 210 or less from another least prime of prime quadruplet.

The programs for A157967, there is no canonical definition to state claims against.
-/

/-! ## A157967.P2494144215093643771

`A007530(lt[A000700(n), A337209(n+1)])`
-/

namespace A157967.P2494144215093643771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A157967.P2494144215093643771

/-! ## A157967.P16154962031643295023

`p?[A007530(n+1)*A328572(n)]`
-/

namespace A157967.P16154962031643295023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) * A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157967.P16154962031643295023

/-!
# A157968: 2^n - 1 (A000225) where n is nonprime number (A141468).

The programs for A157968, there is no canonical definition to state claims against.
-/

/-! ## A157968.P14199992972208774200

`A000225(comp[p?[comp[7*n]]])`
-/

namespace A157968.P14199992972208774200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A157968.P14199992972208774200

/-! ## A157968.P5491779137643124828

`2^comp[A006530(7*n+2)]-1`
-/

namespace A157968.P5491779137643124828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A157968.P5491779137643124828

/-! ## A157968.P5108362870426348167

`2^comp[A020639(7*n+6)]-1`
-/

namespace A157968.P5108362870426348167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A157968.P5108362870426348167

/-! ## A157968.P5807830429809752462

`A000225(comp[A145281(n+1)])`
-/

namespace A157968.P5807830429809752462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A157968.P5807830429809752462

/-! ## A157968.P8180560243816280741

`A000225(comp[A107804(n+2)])`
-/

namespace A157968.P8180560243816280741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A157968.P8180560243816280741

/-!
# A157970: Evil twin locations: first members of pairs of consecutive evil numbers.

The programs for A157970, the canonical program `A157970.P9283823334930395978` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157970 has offset 1).

The definition of A157970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248056, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157970.P9283823334930395978

`A248056(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157970

/-- `A248056(n+1)-1` -/
def P9283823334930395978.Spec : Prop :=
  ∀ n, P9283823334930395978.a n = A157970 (n + 1)

theorem P9283823334930395978.correct : P9283823334930395978.Spec := by
  intro n
  simp only [A157970, Nat.add_sub_cancel]

end A157970

/-! ## A157970.P9567118977273321936

`floor(A233388(n+1)/2)`
-/

namespace A157970.P9567118977273321936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233388 (n + 1) : ℚ) / 2⌋

end

end A157970.P9567118977273321936

namespace A157970

/-- `floor(A233388(n+1)/2)` -/
def P9567118977273321936.Spec : Prop :=
  ∀ n, P9567118977273321936.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P15165018094541884486

`2*A091785(n+1)-1`
-/

namespace A157970.P15165018094541884486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091785 (n + 1) - 1

end

end A157970.P15165018094541884486

namespace A157970

/-- `2*A091785(n+1)-1` -/
def P15165018094541884486.Spec : Prop :=
  ∀ n, P15165018094541884486.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P988768325254966087

`A233388(n+1)%A248056(n+1)`
-/

namespace A157970.P988768325254966087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233388 (n + 1)) (A248056 (n + 1))

end

end A157970.P988768325254966087

namespace A157970

/-- `A233388(n+1)%A248056(n+1)` -/
def P988768325254966087.Spec : Prop :=
  ∀ n, P988768325254966087.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P12470336100063835722

`lt[3, A254655(n+2)]`
-/

namespace A157970.P12470336100063835722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157970.P12470336100063835722

namespace A157970

/-- `lt[3, A254655(n+2)]` -/
def P12470336100063835722.Spec : Prop :=
  ∀ n, (P12470336100063835722.a n : ℤ) = A157970 (n + 1)

end A157970

/-! ## A157970.P12406605033028945213

`eq[gcd(2, n), A254378(n+2)]`
-/

namespace A157970.P12406605033028945213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157970.P12406605033028945213

namespace A157970

/-- `eq[gcd(2, n), A254378(n+2)]` -/
def P12406605033028945213.Spec : Prop :=
  ∀ n, (P12406605033028945213.a n : ℤ) = A157970 (n + 1)

end A157970

/-! ## A157970.P17510788181859020085

`comp[n-2*A254377(n)]`
-/

namespace A157970.P17510788181859020085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A254377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157970.P17510788181859020085

namespace A157970

/-- `comp[n-2*A254377(n)]` -/
def P17510788181859020085.Spec : Prop :=
  ∀ n, (P17510788181859020085.a n : ℤ) = A157970 (n + 1)

end A157970

/-! ## A157970.P17491909665389805927

`A079523(2*(n+1))`
-/

namespace A157970.P17491909665389805927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (2 * (n + 1))

end

end A157970.P17491909665389805927

namespace A157970

/-- `A079523(2*(n+1))` -/
def P17491909665389805927.Spec : Prop :=
  ∀ n, P17491909665389805927.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P7611395015969322630

`A162648(2*(n+1))+1`
-/

namespace A157970.P7611395015969322630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (2 * (n + 1)) + 1

end

end A157970.P7611395015969322630

namespace A157970

/-- `A162648(2*(n+1))+1` -/
def P7611395015969322630.Spec : Prop :=
  ∀ n, P7611395015969322630.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P14346289380927125065

`A036554(2*(n+1))-1`
-/

namespace A157970.P14346289380927125065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (2 * (n + 1)) - 1

end

end A157970.P14346289380927125065

namespace A157970

/-- `A036554(2*(n+1))-1` -/
def P14346289380927125065.Spec : Prop :=
  ∀ n, P14346289380927125065.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P16845521175566778299

`A072939(2*(n+1))-2`
-/

namespace A157970.P16845521175566778299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (2 * (n + 1)) - 2

end

end A157970.P16845521175566778299

namespace A157970

/-- `A072939(2*(n+1))-2` -/
def P16845521175566778299.Spec : Prop :=
  ∀ n, P16845521175566778299.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P18008089334715196263

`floor(A131323(2*(n+1))/2)`
-/

namespace A157970.P18008089334715196263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131323 (2 * (n + 1)) : ℚ) / 2⌋

end

end A157970.P18008089334715196263

namespace A157970

/-- `floor(A131323(2*(n+1))/2)` -/
def P18008089334715196263.Spec : Prop :=
  ∀ n, P18008089334715196263.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P1138745491446420526

`2*A121539(2*(n+1))+1`
-/

namespace A157970.P1138745491446420526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121539 (2 * (n + 1)) + 1

end

end A157970.P1138745491446420526

namespace A157970

/-- `2*A121539(2*(n+1))+1` -/
def P1138745491446420526.Spec : Prop :=
  ∀ n, P1138745491446420526.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P11726730591300986843

`2*A003159(2*(n+1))-1`
-/

namespace A157970.P11726730591300986843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (2 * (n + 1)) - 1

end

end A157970.P11726730591300986843

namespace A157970

/-- `2*A003159(2*(n+1))-1` -/
def P11726730591300986843.Spec : Prop :=
  ∀ n, P11726730591300986843.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P8960215985265513538

`A108269(2*(n+1))/2-1`
-/

namespace A157970.P8960215985265513538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A157970.P8960215985265513538

namespace A157970

/-- `A108269(2*(n+1))/2-1` -/
def P8960215985265513538.Spec : Prop :=
  ∀ n, P8960215985265513538.a n = (A157970 (n + 1) : ℚ)

end A157970

/-! ## A157970.P15468544046148152193

`A003156(2*(n+1))+Δ[n²]`
-/

namespace A157970.P15468544046148152193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157970.P15468544046148152193

namespace A157970

/-- `A003156(2*(n+1))+Δ[n²]` -/
def P15468544046148152193.Spec : Prop :=
  ∀ n, P15468544046148152193.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P16469084217008893744

`A003158(2*(n+1))-2*(n+1)`
-/

namespace A157970.P16469084217008893744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A157970.P16469084217008893744

namespace A157970

/-- `A003158(2*(n+1))-2*(n+1)` -/
def P16469084217008893744.Spec : Prop :=
  ∀ n, P16469084217008893744.a n = A157970 (n + 1)

end A157970

/-! ## A157970.P4760959942453768382

`A003157(2*(n+1))-(2*n+3)`
-/

namespace A157970.P4760959942453768382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (2 * (n + 1)) - (2 * n + 3 : ℤ)

end

end A157970.P4760959942453768382

namespace A157970

/-- `A003157(2*(n+1))-(2*n+3)` -/
def P4760959942453768382.Spec : Prop :=
  ∀ n, P4760959942453768382.a n = A157970 (n + 1)

end A157970

/-!
# A157971: Odious twin locations: first members of pairs of consecutive odious numbers.

The programs for A157971, the canonical program `A157971.P3473186245332457378` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157971 has offset 1).

The definition of A157971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157971.P12147094294193459901

`A248057(n+1)-1`
-/

namespace A157971.P12147094294193459901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248057 (n + 1) - 1

end

end A157971.P12147094294193459901

namespace A157971

/-- `A248057(n+1)-1` -/
def P12147094294193459901.Spec : Prop :=
  ∀ n, P12147094294193459901.a n = A157971 (n + 1)

theorem P12147094294193459901.correct : P12147094294193459901.Spec := by
  intro n
  simp only [A157971, Nat.add_sub_cancel, A157971.P12147094294193459901.a, A157971.P3473186245332457378.a, A091855, A091855.P1047884060551790839.a, A248057, A248057.P14508397276911672393.a, A003159, A003159.P11089210282787626786.f1, A003159.P11089210282787626786.f2, A003159.P11089210282787626786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157971

/-! ## A157971.P5303709801131052704

`comp[n-A127254(n)]`
-/

namespace A157971.P5303709801131052704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157971.P5303709801131052704

namespace A157971

/-- `comp[n-A127254(n)]` -/
def P5303709801131052704.Spec : Prop :=
  ∀ n, (P5303709801131052704.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P3473186245332457378

`2*A091855(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A157971

/-- `2*A091855(n+1)-1` -/
def P3473186245332457378.Spec : Prop :=
  ∀ n, P3473186245332457378.a n = A157971 (n + 1)

theorem P3473186245332457378.correct : P3473186245332457378.Spec := by
  intro n
  simp only [A157971, Nat.add_sub_cancel]

end A157971

/-! ## A157971.P17154407070298634917

`comp[n-A254378(n+1)!%5]`
-/

namespace A157971.P17154407070298634917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.factorial (A254378 (n + 1)).toNat % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157971.P17154407070298634917

namespace A157971

/-- `comp[n-A254378(n+1)!%5]` -/
def P17154407070298634917.Spec : Prop :=
  ∀ n, (P17154407070298634917.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P11639414188271444221

`record[A268669(A268669(n+1)+n)]`
-/

namespace A157971.P11639414188271444221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A268669 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157971.P11639414188271444221

namespace A157971

/-- `record[A268669(A268669(n+1)+n)]` -/
def P11639414188271444221.Spec : Prop :=
  ∀ n, P11639414188271444221.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P5662572959238921269

`eq[0, A127254(n+1)]`
-/

namespace A157971.P5662572959238921269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157971.P5662572959238921269

namespace A157971

/-- `eq[0, A127254(n+1)]` -/
def P5662572959238921269.Spec : Prop :=
  ∀ n, (P5662572959238921269.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P2578892896997784367

`eq[5, A254378(n+2)]`
-/

namespace A157971.P2578892896997784367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157971.P2578892896997784367

namespace A157971

/-- `eq[5, A254378(n+2)]` -/
def P2578892896997784367.Spec : Prop :=
  ∀ n, (P2578892896997784367.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P9035845079691872321

`∩[2*n+1, A232637(n+1)]`
-/

namespace A157971.P9035845079691872321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157971.P9035845079691872321

namespace A157971

/-- `∩[2*n+1, A232637(n+1)]` -/
def P9035845079691872321.Spec : Prop :=
  ∀ n, (P9035845079691872321.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P9344724883300765329

`filter[A232637(n+1), A035263(#)]`
-/

namespace A157971.P9344724883300765329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A157971.P9344724883300765329

namespace A157971

/-- `filter[A232637(n+1), A035263(#)]` -/
def P9344724883300765329.Spec : Prop :=
  ∀ n, P9344724883300765329.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P5629057558534024708

`filter[A232637(n+1), A127254(#)]`
-/

namespace A157971.P5629057558534024708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A157971.P5629057558534024708

namespace A157971

/-- `filter[A232637(n+1), A127254(#)]` -/
def P5629057558534024708.Spec : Prop :=
  ∀ n, P5629057558534024708.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P14632304642581113554

`filter[A232637(n+1), A152822(#)]`
-/

namespace A157971.P14632304642581113554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A157971.P14632304642581113554

namespace A157971

/-- `filter[A232637(n+1), A152822(#)]` -/
def P14632304642581113554.Spec : Prop :=
  ∀ n, P14632304642581113554.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P6092097810849860178

`filter[A232637(n+1), A228495(#)]`
-/

namespace A157971.P6092097810849860178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A157971.P6092097810849860178

namespace A157971

/-- `filter[A232637(n+1), A228495(#)]` -/
def P6092097810849860178.Spec : Prop :=
  ∀ n, P6092097810849860178.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P10966628950624440583

`filter[A232637(n+1), A254651(#)]`
-/

namespace A157971.P10966628950624440583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A157971.P10966628950624440583

namespace A157971

/-- `filter[A232637(n+1), A254651(#)]` -/
def P10966628950624440583.Spec : Prop :=
  ∀ n, P10966628950624440583.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P16207000268879450459

`filter[A232637(n+1), A373157(#)]`
-/

namespace A157971.P16207000268879450459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A157971.P16207000268879450459

namespace A157971

/-- `filter[A232637(n+1), A373157(#)]` -/
def P16207000268879450459.Spec : Prop :=
  ∀ n, P16207000268879450459.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P2560365950544371188

`filter[A232637(n+1), A379952(#)]`
-/

namespace A157971.P2560365950544371188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A157971.P2560365950544371188

namespace A157971

/-- `filter[A232637(n+1), A379952(#)]` -/
def P2560365950544371188.Spec : Prop :=
  ∀ n, P2560365950544371188.a n = A157971 (n + 1)

end A157971

/-! ## A157971.P5293549745647237145

`comp[n-2*A228495(n)]`
-/

namespace A157971.P5293549745647237145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A228495 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157971.P5293549745647237145

namespace A157971

/-- `comp[n-2*A228495(n)]` -/
def P5293549745647237145.Spec : Prop :=
  ∀ n, (P5293549745647237145.a n : ℤ) = A157971 (n + 1)

end A157971

/-! ## A157971.P941024174533481788

`eq[2, A254379(2*n)+A254379(n+1)]`
-/

namespace A157971.P941024174533481788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n) + A254379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157971.P941024174533481788

namespace A157971

/-- `eq[2, A254379(2*n)+A254379(n+1)]` -/
def P941024174533481788.Spec : Prop :=
  ∀ n, (P941024174533481788.a n : ℤ) = A157971 (n + 1)

end A157971

/-!
# A157972: Coefficients of the even n Cartan A_n characteristic polynomials factored modulo two: m(n,m,d)=If[ n == m, 2, If[n == m - 1 || n == m + 1, -1, 0]].

The programs for A157972, there is no canonical definition to state claims against.
-/

/-! ## A157972.P6786107544310857510

`A260394(∑[A064874(n)^4]+2)`
-/

namespace A157972.P6786107544310857510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A157972.P6786107544310857510

/-! ## A157972.P9613791090471257167

`A030302(A287214(3*n+1)*A287214(n))`
-/

namespace A157972.P9613791090471257167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A287214 (3 * n + 1) * A287214 n).toNat

end

end A157972.P9613791090471257167

/-! ## A157972.P146209176873024197

`A273712(A272604(n)+A153246(3*n+4))`
-/

namespace A157972.P146209176873024197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273712 (A272604 n + A153246 (3 * n + 4)).toNat

end

end A157972.P146209176873024197

/-! ## A157972.P10379050759034559238

`A000035(A115095(n+1)^A319510(n+1))`
-/

namespace A157972.P10379050759034559238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A115095 (n + 1) : ℚ) ^ (A319510 (n + 1) : ℤ))).toNat

end

end A157972.P10379050759034559238

/-! ## A157972.P10371773050698797227

`A341644(A389864(n+1)-A391422(2*(n+2)))`
-/

namespace A157972.P10371773050698797227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A389864 (n + 1) - A391422 (2 * (n + 2))).toNat

end

end A157972.P10371773050698797227

/-!
# A157974: Primes p such that 12*p + 11 is also prime.

The programs for A157974, the canonical program `A157974.P8815639970148914134` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157974 has offset 1).

The definition of A157974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157974.P8815639970148914134

`p?[floor(A134517(n+1)/12)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157974

/-- `p?[floor(A134517(n+1)/12)]` -/
def P8815639970148914134.Spec : Prop :=
  ∀ n, P8815639970148914134.a n = A157974 (n + 1)

theorem P8815639970148914134.correct : P8815639970148914134.Spec := by
  intro n
  simp only [A157974, Nat.add_sub_cancel]

end A157974

/-! ## A157974.P9269078360978415727

`p?[2*A131210(n+1)-1]`
-/

namespace A157974.P9269078360978415727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131210 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157974.P9269078360978415727

namespace A157974

/-- `p?[2*A131210(n+1)-1]` -/
def P9269078360978415727.Spec : Prop :=
  ∀ n, P9269078360978415727.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P8513762946782138593

`p?[A167057(n+1)]`
-/

namespace A157974.P8513762946782138593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157974.P8513762946782138593

namespace A157974

/-- `p?[A167057(n+1)]` -/
def P8513762946782138593.Spec : Prop :=
  ∀ n, P8513762946782138593.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P4330253503053166765

`p?[A138620(n+1)-1]`
-/

namespace A157974.P4330253503053166765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138620 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157974.P4330253503053166765

namespace A157974

/-- `p?[A138620(n+1)-1]` -/
def P4330253503053166765.Spec : Prop :=
  ∀ n, P4330253503053166765.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P1237041811243651943

`record[A006530(A167057(n+3))]`
-/

namespace A157974.P1237041811243651943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167057 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157974.P1237041811243651943

namespace A157974

/-- `record[A006530(A167057(n+3))]` -/
def P1237041811243651943.Spec : Prop :=
  ∀ n, P1237041811243651943.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P7305550910325294925

`filter[A167057(n+2), A010051(#)]`
-/

namespace A157974.P7305550910325294925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157974.P7305550910325294925

namespace A157974

/-- `filter[A167057(n+2), A010051(#)]` -/
def P7305550910325294925.Spec : Prop :=
  ∀ n, P7305550910325294925.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P16737254379550144203

`∩[A000040(n+1), A167057(n+1)]`
-/

namespace A157974.P16737254379550144203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P16737254379550144203

namespace A157974

/-- `∩[A000040(n+1), A167057(n+1)]` -/
def P16737254379550144203.Spec : Prop :=
  ∀ n, (P16737254379550144203.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P7449651002334196378

`∩[A045393(n+1), A167057(n+1)]`
-/

namespace A157974.P7449651002334196378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P7449651002334196378

namespace A157974

/-- `∩[A045393(n+1), A167057(n+1)]` -/
def P7449651002334196378.Spec : Prop :=
  ∀ n, (P7449651002334196378.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P18177516665201779485

`∩[A045402(n+1), A167057(n+1)]`
-/

namespace A157974.P18177516665201779485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P18177516665201779485

namespace A157974

/-- `∩[A045402(n+1), A167057(n+1)]` -/
def P18177516665201779485.Spec : Prop :=
  ∀ n, (P18177516665201779485.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P13893484879637460915

`∩[A045405(n+1), A167057(n+1)]`
-/

namespace A157974.P13893484879637460915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P13893484879637460915

namespace A157974

/-- `∩[A045405(n+1), A167057(n+1)]` -/
def P13893484879637460915.Spec : Prop :=
  ∀ n, (P13893484879637460915.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P5032810034459922756

`∩[A049555(n+1), A167057(n+1)]`
-/

namespace A157974.P5032810034459922756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P5032810034459922756

namespace A157974

/-- `∩[A049555(n+1), A167057(n+1)]` -/
def P5032810034459922756.Spec : Prop :=
  ∀ n, (P5032810034459922756.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P7743665627602136696

`∩[A065091(n+1), A167057(n+1)]`
-/

namespace A157974.P7743665627602136696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P7743665627602136696

namespace A157974

/-- `∩[A065091(n+1), A167057(n+1)]` -/
def P7743665627602136696.Spec : Prop :=
  ∀ n, (P7743665627602136696.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P16851746180150274379

`∩[A167057(n+1), A189710(n+1)]`
-/

namespace A157974.P16851746180150274379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157974.P16851746180150274379

namespace A157974

/-- `∩[A167057(n+1), A189710(n+1)]` -/
def P16851746180150274379.Spec : Prop :=
  ∀ n, (P16851746180150274379.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P5621828691239594549

`eq[A055672(n), A260295(n)]`
-/

namespace A157974.P5621828691239594549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157974.P5621828691239594549

namespace A157974

/-- `eq[A055672(n), A260295(n)]` -/
def P5621828691239594549.Spec : Prop :=
  ∀ n, (P5621828691239594549.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P17196537039272424519

`eq[A098987(n), A260295(n)]`
-/

namespace A157974.P17196537039272424519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157974.P17196537039272424519

namespace A157974

/-- `eq[A098987(n), A260295(n)]` -/
def P17196537039272424519.Spec : Prop :=
  ∀ n, (P17196537039272424519.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P10435315942400054465

`eq[A129283(n), A260295(n)]`
-/

namespace A157974.P10435315942400054465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157974.P10435315942400054465

namespace A157974

/-- `eq[A129283(n), A260295(n)]` -/
def P10435315942400054465.Spec : Prop :=
  ∀ n, (P10435315942400054465.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P9411272710392083120

`filter[A167057(n+3), A080339(#)]`
-/

namespace A157974.P9411272710392083120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A157974.P9411272710392083120

namespace A157974

/-- `filter[A167057(n+3), A080339(#)]` -/
def P9411272710392083120.Spec : Prop :=
  ∀ n, P9411272710392083120.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P2008591705522979294

`filter[A167057(n+3), A080545(#)]`
-/

namespace A157974.P2008591705522979294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A157974.P2008591705522979294

namespace A157974

/-- `filter[A167057(n+3), A080545(#)]` -/
def P2008591705522979294.Spec : Prop :=
  ∀ n, P2008591705522979294.a n = A157974 (n + 1)

end A157974

/-! ## A157974.P7231117584966883172

`eq[A055672(n), A295012(n+1)]`
-/

namespace A157974.P7231117584966883172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157974.P7231117584966883172

namespace A157974

/-- `eq[A055672(n), A295012(n+1)]` -/
def P7231117584966883172.Spec : Prop :=
  ∀ n, (P7231117584966883172.a n : ℤ) = A157974 (n + 1)

end A157974

/-! ## A157974.P14129140430047716378

`eq[A129283(n), A295012(n+1)]`
-/

namespace A157974.P14129140430047716378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157974.P14129140430047716378

namespace A157974

/-- `eq[A129283(n), A295012(n+1)]` -/
def P14129140430047716378.Spec : Prop :=
  ∀ n, (P14129140430047716378.a n : ℤ) = A157974 (n + 1)

end A157974

/-!
# A157975: Primes p such that 16*p + 15 is also prime.

The programs for A157975, the canonical program `A157975.P11206613630434011016` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157975 has offset 1).

The definition of A157975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157975.P11206613630434011016

`p?[A127575(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157975

/-- `p?[A127575(n+1)]` -/
def P11206613630434011016.Spec : Prop :=
  ∀ n, P11206613630434011016.a n = A157975 (n + 1)

theorem P11206613630434011016.correct : P11206613630434011016.Spec := by
  intro n
  simp only [A157975, Nat.add_sub_cancel]

end A157975

/-! ## A157975.P13484732343630251763

`record[A006530(A127575(n+2))]`
-/

namespace A157975.P13484732343630251763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A127575 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157975.P13484732343630251763

namespace A157975

/-- `record[A006530(A127575(n+2))]` -/
def P13484732343630251763.Spec : Prop :=
  ∀ n, P13484732343630251763.a n = A157975 (n + 1)

end A157975

/-! ## A157975.P1625756610766610414

`record[A020639(A127575(n+3))]`
-/

namespace A157975.P1625756610766610414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A127575 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157975.P1625756610766610414

namespace A157975

/-- `record[A020639(A127575(n+3))]` -/
def P1625756610766610414.Spec : Prop :=
  ∀ n, P1625756610766610414.a n = A157975 (n + 1)

end A157975

/-! ## A157975.P13461799766991942097

`filter[A127575(n+1), A010051(#)]`
-/

namespace A157975.P13461799766991942097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157975.P13461799766991942097

namespace A157975

/-- `filter[A127575(n+1), A010051(#)]` -/
def P13461799766991942097.Spec : Prop :=
  ∀ n, P13461799766991942097.a n = A157975 (n + 1)

end A157975

/-! ## A157975.P11852112649740532294

`∩[A000040(n+1), A127575(n+1)]`
-/

namespace A157975.P11852112649740532294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P11852112649740532294

namespace A157975

/-- `∩[A000040(n+1), A127575(n+1)]` -/
def P11852112649740532294.Spec : Prop :=
  ∀ n, (P11852112649740532294.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P18134042132920307792

`∩[A045319(n+1), A127575(n+1)]`
-/

namespace A157975.P18134042132920307792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P18134042132920307792

namespace A157975

/-- `∩[A045319(n+1), A127575(n+1)]` -/
def P18134042132920307792.Spec : Prop :=
  ∀ n, (P18134042132920307792.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P3401598355147785633

`∩[A045344(n+1), A127575(n+1)]`
-/

namespace A157975.P3401598355147785633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P3401598355147785633

namespace A157975

/-- `∩[A045344(n+1), A127575(n+1)]` -/
def P3401598355147785633.Spec : Prop :=
  ∀ n, (P3401598355147785633.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P6503857948840623377

`∩[A045346(n+1), A127575(n+1)]`
-/

namespace A157975.P6503857948840623377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P6503857948840623377

namespace A157975

/-- `∩[A045346(n+1), A127575(n+1)]` -/
def P6503857948840623377.Spec : Prop :=
  ∀ n, (P6503857948840623377.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P3054670945830577874

`∩[A116974(n+1), A127575(n+1)]`
-/

namespace A157975.P3054670945830577874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P3054670945830577874

namespace A157975

/-- `∩[A116974(n+1), A127575(n+1)]` -/
def P3054670945830577874.Spec : Prop :=
  ∀ n, (P3054670945830577874.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P16407488915766508200

`∩[A127575(n+1), A182986(n+1)]`
-/

namespace A157975.P16407488915766508200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P16407488915766508200

namespace A157975

/-- `∩[A127575(n+1), A182986(n+1)]` -/
def P16407488915766508200.Spec : Prop :=
  ∀ n, (P16407488915766508200.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P8865602493083643223

`∩[A127575(n+1), A216883(n+1)]`
-/

namespace A157975.P8865602493083643223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P8865602493083643223

namespace A157975

/-- `∩[A127575(n+1), A216883(n+1)]` -/
def P8865602493083643223.Spec : Prop :=
  ∀ n, (P8865602493083643223.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P1493057741305648461

`∩[A127575(n+1), A301987(n+1)]`
-/

namespace A157975.P1493057741305648461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P1493057741305648461

namespace A157975

/-- `∩[A127575(n+1), A301987(n+1)]` -/
def P1493057741305648461.Spec : Prop :=
  ∀ n, (P1493057741305648461.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P953206503815537438

`∩[A106843(n+1), A127575(n+1)]`
-/

namespace A157975.P953206503815537438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P953206503815537438

namespace A157975

/-- `∩[A106843(n+1), A127575(n+1)]` -/
def P953206503815537438.Spec : Prop :=
  ∀ n, (P953206503815537438.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P10029261421651542113

`filter[A127575(n+2), A080339(#)]`
-/

namespace A157975.P10029261421651542113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A157975.P10029261421651542113

namespace A157975

/-- `filter[A127575(n+2), A080339(#)]` -/
def P10029261421651542113.Spec : Prop :=
  ∀ n, P10029261421651542113.a n = A157975 (n + 1)

end A157975

/-! ## A157975.P16738178804605585267

`∩[A127575(n+1), A240960(n+1)]`
-/

namespace A157975.P16738178804605585267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157975.P16738178804605585267

namespace A157975

/-- `∩[A127575(n+1), A240960(n+1)]` -/
def P16738178804605585267.Spec : Prop :=
  ∀ n, (P16738178804605585267.a n : ℤ) = A157975 (n + 1)

end A157975

/-! ## A157975.P16790232248429751753

`p?[n*A001222(16*(n+1)-1)]`
-/

namespace A157975.P16790232248429751753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (16 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157975.P16790232248429751753

namespace A157975

/-- `p?[n*A001222(16*(n+1)-1)]` -/
def P16790232248429751753.Spec : Prop :=
  ∀ n, P16790232248429751753.a n = A157975 (n + 1)

end A157975

/-!
# A157976: Primes p such that 18*p + 17 is also prime.

The programs for A157976, the canonical program `A157976.P13573726974064683333` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157976 has offset 1).

The definition of A157976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157976.P13573726974064683333

`p?[A138918(n+1)-1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157976

/-- `p?[A138918(n+1)-1]` -/
def P13573726974064683333.Spec : Prop :=
  ∀ n, P13573726974064683333.a n = A157976 (n + 1)

theorem P13573726974064683333.correct : P13573726974064683333.Spec := by
  intro n
  simp only [A157976, Nat.add_sub_cancel]

end A157976

/-! ## A157976.P4764731521498036365

`p?[A246965(n+1)-2]`
-/

namespace A157976.P4764731521498036365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246965 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157976.P4764731521498036365

namespace A157976

/-- `p?[A246965(n+1)-2]` -/
def P4764731521498036365.Spec : Prop :=
  ∀ n, P4764731521498036365.a n = A157976 (n + 1)

theorem P4764731521498036365.correct : P4764731521498036365.Spec := by
  intro n
  simp only [A157976, Nat.add_sub_cancel, A157976.P4764731521498036365.f1, A157976.P4764731521498036365.a, A157976.P13573726974064683333.f1, A157976.P13573726974064683333.a, A138918, A138918.P14615723305140985106.f1, A138918.P14615723305140985106.a, A246965, A246965.P5539066629223825607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157976

/-! ## A157976.P11513590684553217461

`p?[floor(A061242(n+1)/18)]`
-/

namespace A157976.P11513590684553217461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061242 (n + 1) : ℚ) / 18⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157976.P11513590684553217461

namespace A157976

/-- `p?[floor(A061242(n+1)/18)]` -/
def P11513590684553217461.Spec : Prop :=
  ∀ n, P11513590684553217461.a n = A157976 (n + 1)

end A157976

/-! ## A157976.P7390577163758316108

`record[A006530(A138918(n+2)-1)]`
-/

namespace A157976.P7390577163758316108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A138918 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157976.P7390577163758316108

namespace A157976

/-- `record[A006530(A138918(n+2)-1)]` -/
def P7390577163758316108.Spec : Prop :=
  ∀ n, P7390577163758316108.a n = A157976 (n + 1)

end A157976

/-! ## A157976.P8148968529732734715

`p?[A061242(n+1)%A138918(n+1)]`
-/

namespace A157976.P8148968529732734715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061242 (n + 1)) (A138918 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157976.P8148968529732734715

namespace A157976

/-- `p?[A061242(n+1)%A138918(n+1)]` -/
def P8148968529732734715.Spec : Prop :=
  ∀ n, P8148968529732734715.a n = A157976 (n + 1)

end A157976

/-! ## A157976.P16426707004962740419

`p?[A014681(A138918(n+1))]`
-/

namespace A157976.P16426707004962740419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A138918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157976.P16426707004962740419

namespace A157976

/-- `p?[A014681(A138918(n+1))]` -/
def P16426707004962740419.Spec : Prop :=
  ∀ n, P16426707004962740419.a n = A157976 (n + 1)

end A157976

/-! ## A157976.P4547085641243119125

`record[A014963(A138918(n+2)-1)]`
-/

namespace A157976.P4547085641243119125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A138918 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157976.P4547085641243119125

namespace A157976

/-- `record[A014963(A138918(n+2)-1)]` -/
def P4547085641243119125.Spec : Prop :=
  ∀ n, P4547085641243119125.a n = A157976 (n + 1)

end A157976

/-! ## A157976.P5707204676940038208

`A062584(p?[A143051(A138918(n+1))])`
-/

namespace A157976.P5707204676940038208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A138918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A157976.P5707204676940038208

namespace A157976

/-- `A062584(p?[A143051(A138918(n+1))])` -/
def P5707204676940038208.Spec : Prop :=
  ∀ n, P5707204676940038208.a n = A157976 (n + 1)

end A157976

/-!
# A157977: Primes p such that 20*p + 19 is also prime.

The programs for A157977, the canonical program `A157977.P1664850103235532340` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157977 has offset 1).

The definition of A157977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157977.P1664850103235532340

`p?[A102700(n+1)-A014682(A105042(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A157977

/-- `p?[A102700(n+1)-A014682(A105042(n+1))]` -/
def P1664850103235532340.Spec : Prop :=
  ∀ n, P1664850103235532340.a n = A157977 (n + 1)

theorem P1664850103235532340.correct : P1664850103235532340.Spec := by
  intro n
  simp only [A157977, Nat.add_sub_cancel]

end A157977

/-! ## A157977.P7296102857412645315

`p?[A047248(A131210(n+1))]`
-/

namespace A157977.P7296102857412645315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (A131210 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P7296102857412645315

namespace A157977

/-- `p?[A047248(A131210(n+1))]` -/
def P7296102857412645315.Spec : Prop :=
  ∀ n, P7296102857412645315.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P18066222626210290085

`p?[A004524(A102700(n+1))]`
-/

namespace A157977.P18066222626210290085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P18066222626210290085

namespace A157977

/-- `p?[A004524(A102700(n+1))]` -/
def P18066222626210290085.Spec : Prop :=
  ∀ n, P18066222626210290085.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P852640554560556041

`p?[n*A156707(A017377(n))²]`
-/

namespace A157977.P852640554560556041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156707 (A017377 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P852640554560556041

namespace A157977

/-- `p?[n*A156707(A017377(n))²]` -/
def P852640554560556041.Spec : Prop :=
  ∀ n, P852640554560556041.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P17502461774921912370

`p?[A006370(A102700(n+1)-1)]`
-/

namespace A157977.P17502461774921912370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P17502461774921912370

namespace A157977

/-- `p?[A006370(A102700(n+1)-1)]` -/
def P17502461774921912370.Spec : Prop :=
  ∀ n, P17502461774921912370.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P15961194700778334835

`p?[A029578(A102700(n+1)-1)]`
-/

namespace A157977.P15961194700778334835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P15961194700778334835

namespace A157977

/-- `p?[A029578(A102700(n+1)-1)]` -/
def P15961194700778334835.Spec : Prop :=
  ∀ n, P15961194700778334835.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P11028226269336573678

`p?[A057979(A105042(n+1)-1)]`
-/

namespace A157977.P11028226269336573678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A105042 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P11028226269336573678

namespace A157977

/-- `p?[A057979(A105042(n+1)-1)]` -/
def P11028226269336573678.Spec : Prop :=
  ∀ n, P11028226269336573678.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P10390287091362261517

`p?[A097140(A102700(n+1)-1)]`
-/

namespace A157977.P10390287091362261517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P10390287091362261517

namespace A157977

/-- `p?[A097140(A102700(n+1)-1)]` -/
def P10390287091362261517.Spec : Prop :=
  ∀ n, P10390287091362261517.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P1677230968794621529

`p?[A142150(A102700(n+1)-1)]`
-/

namespace A157977.P1677230968794621529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A102700 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P1677230968794621529

namespace A157977

/-- `p?[A142150(A102700(n+1)-1)]` -/
def P1677230968794621529.Spec : Prop :=
  ∀ n, P1677230968794621529.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P15543493457272529229

`p?[A029578(A105042(n+1)-2)]`
-/

namespace A157977.P15543493457272529229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A105042 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P15543493457272529229

namespace A157977

/-- `p?[A029578(A105042(n+1)-2)]` -/
def P15543493457272529229.Spec : Prop :=
  ∀ n, P15543493457272529229.a n = A157977 (n + 1)

end A157977

/-! ## A157977.P7071409062216460343

`p?[A014681(A026741(A105042(n+1)))]`
-/

namespace A157977.P7071409062216460343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A026741 (A105042 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157977.P7071409062216460343

namespace A157977

/-- `p?[A014681(A026741(A105042(n+1)))]` -/
def P7071409062216460343.Spec : Prop :=
  ∀ n, P7071409062216460343.a n = A157977 (n + 1)

end A157977

/-!
# A157978: Primes p such that 4*p - 3 is also a prime.

The programs for A157978, the canonical program `A157978.P13932349646673446629` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157978 has offset 1).

The definition of A157978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157978.P13932349646673446629

`p?[xor(1, floor(p?[2*n+2*n+1]/4))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157978

/-- `p?[xor(1, floor(p?[2*n+2*n+1]/4))]` -/
def P13932349646673446629.Spec : Prop :=
  ∀ n, P13932349646673446629.a n = A157978 (n + 1)

theorem P13932349646673446629.correct : P13932349646673446629.Spec := by
  intro n
  simp only [A157978, Nat.add_sub_cancel]

end A157978

/-! ## A157978.P6363161647298199440

`p?[A005098(n+1)+1]`
-/

namespace A157978.P6363161647298199440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P6363161647298199440

namespace A157978

/-- `p?[A005098(n+1)+1]` -/
def P6363161647298199440.Spec : Prop :=
  ∀ n, P6363161647298199440.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P12020532705122442520

`p?[A111215(n+1)+2]`
-/

namespace A157978.P12020532705122442520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P12020532705122442520

namespace A157978

/-- `p?[A111215(n+1)+2]` -/
def P12020532705122442520.Spec : Prop :=
  ∀ n, P12020532705122442520.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P14589723683159666194

`p?[floor(A002144(n+1)/4)+1]`
-/

namespace A157978.P14589723683159666194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) : ℚ) / 4⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P14589723683159666194

namespace A157978

/-- `p?[floor(A002144(n+1)/4)+1]` -/
def P14589723683159666194.Spec : Prop :=
  ∀ n, P14589723683159666194.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P6645784249652052624

`record[A020639(A005098(n+1)+1)]`
-/

namespace A157978.P6645784249652052624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P6645784249652052624

namespace A157978

/-- `record[A020639(A005098(n+1)+1)]` -/
def P6645784249652052624.Spec : Prop :=
  ∀ n, P6645784249652052624.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P1817808153602146441

`record[A020639(A111215(n+1)+2)]`
-/

namespace A157978.P1817808153602146441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P1817808153602146441

namespace A157978

/-- `record[A020639(A111215(n+1)+2)]` -/
def P1817808153602146441.Spec : Prop :=
  ∀ n, P1817808153602146441.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P1332490058568379314

`∩[A000040(n+1), A111215(n+1)+2]`
-/

namespace A157978.P1332490058568379314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157978.P1332490058568379314

namespace A157978

/-- `∩[A000040(n+1), A111215(n+1)+2]` -/
def P1332490058568379314.Spec : Prop :=
  ∀ n, (P1332490058568379314.a n : ℤ) = A157978 (n + 1)

end A157978

/-! ## A157978.P6178394176151026621

`∩[A008578(n+1), A111215(n+1)+2]`
-/

namespace A157978.P6178394176151026621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157978.P6178394176151026621

namespace A157978

/-- `∩[A008578(n+1), A111215(n+1)+2]` -/
def P6178394176151026621.Spec : Prop :=
  ∀ n, (P6178394176151026621.a n : ℤ) = A157978 (n + 1)

end A157978

/-! ## A157978.P4949158994131129104

`p?[A170821(n+2)]`
-/

namespace A157978.P4949158994131129104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P4949158994131129104

namespace A157978

/-- `p?[A170821(n+2)]` -/
def P4949158994131129104.Spec : Prop :=
  ∀ n, P4949158994131129104.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P5708186820412886151

`filter[A170821(n+3), A010051(#)]`
-/

namespace A157978.P5708186820412886151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170821 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157978.P5708186820412886151

namespace A157978

/-- `filter[A170821(n+3), A010051(#)]` -/
def P5708186820412886151.Spec : Prop :=
  ∀ n, P5708186820412886151.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P9195726847175683245

`p?[A014682(A005097(n+2))+1]`
-/

namespace A157978.P9195726847175683245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005097 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P9195726847175683245

namespace A157978

/-- `p?[A014682(A005097(n+2))+1]` -/
def P9195726847175683245.Spec : Prop :=
  ∀ n, P9195726847175683245.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P5011180133212150540

`p?[lt[A001222(4*n+1), 2]+1]`
-/

namespace A157978.P5011180133212150540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A157978.P5011180133212150540

namespace A157978

/-- `p?[lt[A001222(4*n+1), 2]+1]` -/
def P5011180133212150540.Spec : Prop :=
  ∀ n, (P5011180133212150540.a n : ℤ) = A157978 (n + 1)

end A157978

/-! ## A157978.P17253397473960766399

`record[A006530(A002144(n+1)+3)]`
-/

namespace A157978.P17253397473960766399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002144 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P17253397473960766399

namespace A157978

/-- `record[A006530(A002144(n+1)+3)]` -/
def P17253397473960766399.Spec : Prop :=
  ∀ n, P17253397473960766399.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P6385958764496226577

`record[A006530(A000265(A000040(n+1)+1)+1)]`
-/

namespace A157978.P6385958764496226577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000265 (A000040 (n + 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P6385958764496226577

namespace A157978

/-- `record[A006530(A000265(A000040(n+1)+1)+1)]` -/
def P6385958764496226577.Spec : Prop :=
  ∀ n, P6385958764496226577.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P3985022768025412909

`record[A006530(2*(n+1))/A000041(A001222(4*n+1))]`
-/

namespace A157978.P3985022768025412909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (2 * (n + 1)) : ℚ) / (A000041 (A001222 (4 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P3985022768025412909

namespace A157978

/-- `record[A006530(2*(n+1))/A000041(A001222(4*n+1))]` -/
def P3985022768025412909.Spec : Prop :=
  ∀ n, P3985022768025412909.a n = (A157978 (n + 1) : ℚ)

end A157978

/-! ## A157978.P10251914799125650994

`eq[A101264(2*n), A107286(n+1)]+1`
-/

namespace A157978.P10251914799125650994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A157978.P10251914799125650994

namespace A157978

/-- `eq[A101264(2*n), A107286(n+1)]+1` -/
def P10251914799125650994.Spec : Prop :=
  ∀ n, (P10251914799125650994.a n : ℤ) = A157978 (n + 1)

end A157978

/-! ## A157978.P1453608532456454940

`p?[A087625(n+2)-A087625(2*n+1)²]`
-/

namespace A157978.P1453608532456454940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087625 (n + 2) - A087625 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157978.P1453608532456454940

namespace A157978

/-- `p?[A087625(n+2)-A087625(2*n+1)²]` -/
def P1453608532456454940.Spec : Prop :=
  ∀ n, P1453608532456454940.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P3441163495637379309

`p?[eq[2, A051686(n+1)]+2]`
-/

namespace A157978.P3441163495637379309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A157978.P3441163495637379309

namespace A157978

/-- `p?[eq[2, A051686(n+1)]+2]` -/
def P3441163495637379309.Spec : Prop :=
  ∀ n, (P3441163495637379309.a n : ℤ) = A157978 (n + 1)

end A157978

/-! ## A157978.P364629145718609297

`record[A014963(A005098(n+1)+1)]`
-/

namespace A157978.P364629145718609297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P364629145718609297

namespace A157978

/-- `record[A014963(A005098(n+1)+1)]` -/
def P364629145718609297.Spec : Prop :=
  ∀ n, P364629145718609297.a n = A157978 (n + 1)

end A157978

/-! ## A157978.P17311758375897508928

`record[A014963(A111215(n+1)+2)]`
-/

namespace A157978.P17311758375897508928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A111215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157978.P17311758375897508928

namespace A157978

/-- `record[A014963(A111215(n+1)+2)]` -/
def P17311758375897508928.Spec : Prop :=
  ∀ n, P17311758375897508928.a n = A157978 (n + 1)

end A157978

/-!
# A157979: Least nonnegative k such that 3^(2^n)+k is prime.

The programs for A157979, there is no canonical definition to state claims against.
-/

/-! ## A157979.P13805477374920062939

`A127796(ceil(2^(n-1)))%(6^n)`
-/

namespace A157979.P13805477374920062939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127796 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (6 ^ n : ℤ)

end

end A157979.P13805477374920062939

/-! ## A157979.P16843633217863722800

`ceil(A127796(A131577(n))-acot(n))`
-/

namespace A157979.P16843633217863722800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127796 (A131577 n).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A157979.P16843633217863722800

/-! ## A157979.P5537139685929219347

`A127796(ceil(2^(n-1)))-A000038(n)`
-/

namespace A157979.P5537139685929219347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127796 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A000038 n

end

end A157979.P5537139685929219347

/-! ## A157979.P5300875702505074460

`A057427(n)*A127796(floor(2^(n-1)))`
-/

namespace A157979.P5300875702505074460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A127796 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A157979.P5300875702505074460

/-! ## A157979.P17355306817254366310

`A127796(floor(2^(n-1)))*A178334(n)`
-/

namespace A157979.P17355306817254366310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127796 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat * A178334 n

end

end A157979.P17355306817254366310

/-!
# A157980: Primes of the form 3^(2^n)+k with least nonnegative k.

The programs for A157980, there is no canonical definition to state claims against.
-/

/-! ## A157980.P5934816554045415679

`3^2^n+A157979(n)`
-/

namespace A157980.P5934816554045415679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ 2 ^ n : ℤ) + A157979 n

end

end A157980.P5934816554045415679

/-! ## A157980.P17889234241760092877

`A104081(2^n)`
-/

namespace A157980.P17889234241760092877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (2 ^ n)

end

end A157980.P17889234241760092877

/-! ## A157980.P5009515351753133981

`A157979(n)+A000244(A000079(n))`
-/

namespace A157980.P5009515351753133981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157979 n + A000244 (A000079 n).toNat

end

end A157980.P5009515351753133981

/-!
# A157983: a(n)=3!*n!/(8!*19!).

The programs for A157983, there is no canonical definition to state claims against.
-/

/-! ## A157983.P7105091331487336994

`∏[a(n-1)+1]` with `a(0)=759, a(1)=25`
-/

namespace A157983.P7105091331487336994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [759, 25] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A157983.P7105091331487336994

/-!
# A157984: a(n) = n!/(7 * 20!).

The programs for A157984, there is no canonical definition to state claims against.
-/

/-! ## A157984.P12100248186367028861

`∏[a(n-1)+1]` with `a(0)=3, a(1)=22`
-/

namespace A157984.P12100248186367028861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 22] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A157984.P12100248186367028861

/-! ## A157984.P2572720958900908758

`(n+21)*a(n-1)` with `a(0)=3`
-/

namespace A157984.P2572720958900908758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 21) * a (n - 1)

end

end A157984.P2572720958900908758

/-! ## A157984.P3414703631592328117

`∏[n+21]/7`
-/

namespace A157984.P3414703631592328117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 21

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A157984.P3414703631592328117

/-! ## A157984.P2996207419253992236

`a(n-1)+a(n-1)²/a(n-2)` with `a(0)=3, a(1)=66`
-/

namespace A157984.P2996207419253992236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 66] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 / a (n - 2)

end

end A157984.P2996207419253992236

/-!
# A157985: Perfect powers (m^k where m is an integer and k >= 2) multiplied by -1 when m is prime for largest k (m^k thus a prime power).

The programs for A157985, there is no canonical definition to state claims against.
-/

/-! ## A157985.P5682090692459185997

`A076405(n+1)/A157987(n+1)`
-/

namespace A157985.P5682090692459185997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)

end

end A157985.P5682090692459185997

/-! ## A157985.P12019854682741547541

`A001597(n+1)*A025478(n+1)/A157987(n+1)`
-/

namespace A157985.P12019854682741547541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) * A025478 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)

end

end A157985.P12019854682741547541

/-! ## A157985.P17886581866872267243

`A001597(n+1)*A025479(n+1)/A157986(n+1)`
-/

namespace A157985.P17886581866872267243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) * A025479 (n + 1) : ℚ) / (A157986 (n + 1) : ℚ)

end

end A157985.P17886581866872267243

/-! ## A157985.P9503898819081985753

`A025478(n+1)^A025479(n+1)*A025478(n+1)/A157987(n+1)`
-/

namespace A157985.P9503898819081985753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ) * (A025478 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)

end

end A157985.P9503898819081985753

/-! ## A157985.P9168468130824353525

`(A045542(n+1)+1-A053289(n+1))*A025478(n+1)/A157987(n+1)`
-/

namespace A157985.P9168468130824353525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045542 (n + 1) + (1 - A053289 (n + 1)) : ℚ) * ((A025478 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ))

end

end A157985.P9168468130824353525

/-! ## A157985.P18038621558463320683

`A025478(n+1)/A157987(n+1)*record[(n+1)/A274459(n+1)]`
-/

namespace A157985.P18038621558463320683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A274459 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157985.P18038621558463320683

/-! ## A157985.P7215894527348622592

`A008683(A014963(A001597(n+1)))*A001597(n+1)`
-/

namespace A157985.P7215894527348622592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (A001597 (n + 1)).toNat).toNat * A001597 (n + 1)

end

end A157985.P7215894527348622592

/-!
# A157986: Largest exponents of perfect powers (m^k where m is an integer and k >= 2) multiplied by -1 when base m is prime (m^k thus a prime power).

The programs for A157986, there is no canonical definition to state claims against.
-/

/-! ## A157986.P11679264320998881245

`A001597(n+1)*A025479(n+1)/A157985(n+1)`
-/

namespace A157986.P11679264320998881245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) * A025479 (n + 1) : ℚ) / (A157985 (n + 1) : ℚ)

end

end A157986.P11679264320998881245

/-! ## A157986.P7505328587434992562

`A025478(n+1)*A025479(n+1)/A157987(n+1)`
-/

namespace A157986.P7505328587434992562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) * A025479 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)

end

end A157986.P7505328587434992562

/-! ## A157986.P7024837836538386314

`A158052(∑[A076412(n)])+A000038(n)`
-/

namespace A157986.P7024837836538386314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000038 n

end

end A157986.P7024837836538386314

/-! ## A157986.P9636710883738854272

`A158052(A001597(n+1))+A000038(n)`
-/

namespace A157986.P9636710883738854272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A001597 (n + 1)).toNat + A000038 n

end

end A157986.P9636710883738854272

/-! ## A157986.P9516585170908005434

`A158052(sqrt(A340588(n+1)))+A000038(n)`
-/

namespace A157986.P9516585170908005434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat + A000038 n

end

end A157986.P9516585170908005434

/-! ## A157986.P17097215455861480192

`A158052(A001597(n+1))+4-A040002(n)`
-/

namespace A157986.P17097215455861480192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A001597 (n + 1)).toNat + (4 - A040002 n)

end

end A157986.P17097215455861480192

/-! ## A157986.P7025225211683326362

`A158052(A075146(n+1)+A000040(n+1))+A000038(n)`
-/

namespace A157986.P7025225211683326362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A075146 (n + 1) + A000040 (n + 1)).toNat + A000038 n

end

end A157986.P7025225211683326362

/-! ## A157986.P264568951838255247

`A008683(A014963(A001597(n+1)))*A025479(n+1)`
-/

namespace A157986.P264568951838255247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (A001597 (n + 1)).toNat).toNat * A025479 (n + 1)

end

end A157986.P264568951838255247

/-!
# A157987: Smallest roots m of perfect powers (m^k where m is an integer and k >= 2) multiplied by -1 when m is prime (m^k thus a prime power).

The programs for A157987, there is no canonical definition to state claims against.
-/

/-! ## A157987.P7502440702008379835

`A076405(n+1)/A157985(n+1)`
-/

namespace A157987.P7502440702008379835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / (A157985 (n + 1) : ℚ)

end

end A157987.P7502440702008379835

/-! ## A157987.P1279366260339689787

`A001597(n+1)*A025478(n+1)/A157985(n+1)`
-/

namespace A157987.P1279366260339689787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) * A025478 (n + 1) : ℚ) / (A157985 (n + 1) : ℚ)

end

end A157987.P1279366260339689787

/-! ## A157987.P1727022684568964671

`A025478(n+1)*A025479(n+1)/A157986(n+1)`
-/

namespace A157987.P1727022684568964671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) * A025479 (n + 1) : ℚ) / (A157986 (n + 1) : ℚ)

end

end A157987.P1727022684568964671

/-! ## A157987.P3605913580762235451

`A025478(n+1)*A157985(n+1)/sqrt(A340588(n+1))`
-/

namespace A157987.P3605913580762235451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) * A157985 (n + 1) : ℝ) / Real.sqrt (A340588 (n + 1) : ℝ)

end

end A157987.P3605913580762235451

/-! ## A157987.P16559051301202963071

`A025478(n+1)/(A075146(n+1)+A000040(n+1))*A157985(n+1)`
-/

namespace A157987.P16559051301202963071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) / (A075146 (n + 1) + A000040 (n + 1) : ℚ) * (A157985 (n + 1) : ℚ)

end

end A157987.P16559051301202963071

/-! ## A157987.P13798071456276802122

`A008683(A014963(A001597(n+1)))*A025478(n+1)`
-/

namespace A157987.P13798071456276802122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (A001597 (n + 1)).toNat).toNat * A025478 (n + 1)

end

end A157987.P13798071456276802122

/-!
# A157990: a(n) = 288*n + 1.

The programs for A157990, the canonical program `A157990.P10283086455766197930` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157990 has offset 1).

The definition of A157990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*(n+1)+1` (program `A157990.P10283086455766197930`, by `A157990.P10283086455766197930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157990.P10283086455766197930

`288*(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157990

/-- `288*(n+1)+1` -/
def P10283086455766197930.Spec : Prop :=
  ∀ n, (P10283086455766197930.a n : ℤ) = A157990 (n + 1)

theorem P10283086455766197930.correct : P10283086455766197930.Spec := by
  intro n
  simp only [A157990, Nat.add_sub_cancel]

end A157990

/-!
# A157994: Number of trees with n edges equipped with a cyclic order on their edges, i.e., number of orbits of the action of Z/nZ on the set of edge-labeled trees of size n, given by cyclically permuting the labels.

The programs for A157994, there is no canonical definition to state claims against.
-/

/-! ## A157994.P16187157892861287281

`A213715(A057907(n!))`
-/

namespace A157994.P16187157892861287281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213715 (A057907 (Nat.factorial n)).toNat

end

end A157994.P16187157892861287281

/-! ## A157994.P10852795360841161083

`A182577(A135831(n+1))`
-/

namespace A157994.P10852795360841161083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182577 (A135831 (n + 1)).toNat

end

end A157994.P10852795360841161083

/-!
# A157995: Primes which are the sum of 1 plus two consecutive not-twin primes, p1 and p2, (p2-p1)>2.

The programs for A157995, the canonical program `A157995.P10964348106611654498` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157995 has offset 1).

The definition of A157995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157995.P10964348106611654498

`p?[A136799(n+1)+A107987(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A157995

/-- `p?[A136799(n+1)+A107987(n+1)]` -/
def P10964348106611654498.Spec : Prop :=
  ∀ n, P10964348106611654498.a n = A157995 (n + 1)

theorem P10964348106611654498.correct : P10964348106611654498.Spec := by
  intro n
  simp only [A157995, Nat.add_sub_cancel]

end A157995

/-! ## A157995.P1742322205477766691

`p?[A136798(n+1)+A136799(n+1)+1]`
-/

namespace A157995.P1742322205477766691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1) + (A136799 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P1742322205477766691

namespace A157995

/-- `p?[A136798(n+1)+A136799(n+1)+1]` -/
def P1742322205477766691.Spec : Prop :=
  ∀ n, P1742322205477766691.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P16350498050627190424

`p?[(A001043(n+2)+1)%A054265(n+2)]`
-/

namespace A157995.P16350498050627190424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 2) + 1) (A054265 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P16350498050627190424

namespace A157995

/-- `p?[(A001043(n+2)+1)%A054265(n+2)]` -/
def P16350498050627190424.Spec : Prop :=
  ∀ n, P16350498050627190424.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P2515774600936341877

`p?[A049076(A001223(n+1))+A001043(n+1)]`
-/

namespace A157995.P2515774600936341877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A001223 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P2515774600936341877

namespace A157995

/-- `p?[A049076(A001223(n+1))+A001043(n+1)]` -/
def P2515774600936341877.Spec : Prop :=
  ∀ n, P2515774600936341877.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P4418305809603570444

`p?[A166333(A046933(n+1))+A001043(n+1)]`
-/

namespace A157995.P4418305809603570444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A046933 (n + 1)).toNat + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P4418305809603570444

namespace A157995

/-- `p?[A166333(A046933(n+1))+A001043(n+1)]` -/
def P4418305809603570444.Spec : Prop :=
  ∀ n, P4418305809603570444.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P4897868029170616068

`∩[A060254(n+1), A092738(n+1)]`
-/

namespace A157995.P4897868029170616068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P4897868029170616068

namespace A157995

/-- `∩[A060254(n+1), A092738(n+1)]` -/
def P4897868029170616068.Spec : Prop :=
  ∀ n, (P4897868029170616068.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P5192907595294682470

`∩[A060254(n+1), A092949(n+1)]`
-/

namespace A157995.P5192907595294682470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P5192907595294682470

namespace A157995

/-- `∩[A060254(n+1), A092949(n+1)]` -/
def P5192907595294682470.Spec : Prop :=
  ∀ n, (P5192907595294682470.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P2498060829317105463

`∩[A092738(n+1), A167915(n+1)]`
-/

namespace A157995.P2498060829317105463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P2498060829317105463

namespace A157995

/-- `∩[A092738(n+1), A167915(n+1)]` -/
def P2498060829317105463.Spec : Prop :=
  ∀ n, (P2498060829317105463.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P5479053957455188863

`∩[A092949(n+1), A167915(n+1)]`
-/

namespace A157995.P5479053957455188863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P5479053957455188863

namespace A157995

/-- `∩[A092949(n+1), A167915(n+1)]` -/
def P5479053957455188863.Spec : Prop :=
  ∀ n, (P5479053957455188863.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P2063123903762344885

`∩[A092738(n+1), A176902(n+1)]`
-/

namespace A157995.P2063123903762344885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P2063123903762344885

namespace A157995

/-- `∩[A092738(n+1), A176902(n+1)]` -/
def P2063123903762344885.Spec : Prop :=
  ∀ n, (P2063123903762344885.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P3521977454735341476

`∩[A092949(n+1), A176902(n+1)]`
-/

namespace A157995.P3521977454735341476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P3521977454735341476

namespace A157995

/-- `∩[A092949(n+1), A176902(n+1)]` -/
def P3521977454735341476.Spec : Prop :=
  ∀ n, (P3521977454735341476.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P5934921146674236756

`∩[A034849(n+1), A092738(n+1)]`
-/

namespace A157995.P5934921146674236756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P5934921146674236756

namespace A157995

/-- `∩[A034849(n+1), A092738(n+1)]` -/
def P5934921146674236756.Spec : Prop :=
  ∀ n, (P5934921146674236756.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P8385302011206292968

`∩[A034849(n+1), A092949(n+1)]`
-/

namespace A157995.P8385302011206292968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P8385302011206292968

namespace A157995

/-- `∩[A034849(n+1), A092949(n+1)]` -/
def P8385302011206292968.Spec : Prop :=
  ∀ n, (P8385302011206292968.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P17917646182252730273

`∩[A092738(n+1), A176897(n+1)]`
-/

namespace A157995.P17917646182252730273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P17917646182252730273

namespace A157995

/-- `∩[A092738(n+1), A176897(n+1)]` -/
def P17917646182252730273.Spec : Prop :=
  ∀ n, (P17917646182252730273.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P7904671748931224577

`∩[A092949(n+1), A176897(n+1)]`
-/

namespace A157995.P7904671748931224577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P7904671748931224577

namespace A157995

/-- `∩[A092949(n+1), A176897(n+1)]` -/
def P7904671748931224577.Spec : Prop :=
  ∀ n, (P7904671748931224577.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P4917857606617564181

`∩[A034849(n+1), A076273(n)+2]`
-/

namespace A157995.P4917857606617564181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P4917857606617564181

namespace A157995

/-- `∩[A034849(n+1), A076273(n)+2]` -/
def P4917857606617564181.Spec : Prop :=
  ∀ n, (P4917857606617564181.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P2630975128730513290

`p?[A006093(n+2)+A002808(A014692(n+1))]`
-/

namespace A157995.P2630975128730513290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + A002808 (A014692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P2630975128730513290

namespace A157995

/-- `p?[A006093(n+2)+A002808(A014692(n+1))]` -/
def P2630975128730513290.Spec : Prop :=
  ∀ n, P2630975128730513290.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P10753162983955859939

`p?[A103517(A104279(n+1))+A067774(n+1)]`
-/

namespace A157995.P10753162983955859939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A104279 (n + 1)).toNat + A067774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P10753162983955859939

namespace A157995

/-- `p?[A103517(A104279(n+1))+A067774(n+1)]` -/
def P10753162983955859939.Spec : Prop :=
  ∀ n, P10753162983955859939.a n = A157995 (n + 1)

end A157995

/-! ## A157995.P16379006948183603616

`∩[A063449(n+1), A092738(n+1)]`
-/

namespace A157995.P16379006948183603616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P16379006948183603616

namespace A157995

/-- `∩[A063449(n+1), A092738(n+1)]` -/
def P16379006948183603616.Spec : Prop :=
  ∀ n, (P16379006948183603616.a n : ℤ) = A157995 (n + 1)

end A157995

/-! ## A157995.P10756446280075034992

`∩[A092738(n+1), A165947(n+1)]`
-/

namespace A157995.P10756446280075034992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157995.P10756446280075034992

namespace A157995

/-- `∩[A092738(n+1), A165947(n+1)]` -/
def P10756446280075034992.Spec : Prop :=
  ∀ n, (P10756446280075034992.a n : ℤ) = A157995 (n + 1)

end A157995

/-!
# A157996: Primes which are sum of 1 and two nonconsecutive primes p1 and p2, p2 - p1 > 2.

The programs for A157996, the canonical program `A157996.P15374079906564399415` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157996 has offset 1).

The definition of A157996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157996.P9870568240592689669

`∪[A031505(n+1), A067833(n+1)]`
-/

namespace A157996.P9870568240592689669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157996.P9870568240592689669

namespace A157996

/-- `∪[A031505(n+1), A067833(n+1)]` -/
def P9870568240592689669.Spec : Prop :=
  ∀ n, (P9870568240592689669.a n : ℤ) = A157996 (n + 1)

end A157996

/-! ## A157996.P15374079906564399415

`∪[A049593(n+1), A067833(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157996

/-- `∪[A049593(n+1), A067833(n+1)]` -/
def P15374079906564399415.Spec : Prop :=
  ∀ n, (P15374079906564399415.a n : ℤ) = A157996 (n + 1)

theorem P15374079906564399415.correct : P15374079906564399415.Spec := by
  intro n
  simp only [A157996, Nat.add_sub_cancel]

end A157996

/-! ## A157996.P4706235768101682628

`A004139(A009005(n+1))`
-/

namespace A157996.P4706235768101682628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A009005 (n + 1)).toNat

end

end A157996.P4706235768101682628

namespace A157996

/-- `A004139(A009005(n+1))` -/
def P4706235768101682628.Spec : Prop :=
  ∀ n, P4706235768101682628.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P9190314557911041431

`A004139(A065475(n+1)+2)`
-/

namespace A157996.P9190314557911041431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A065475 (n + 1) + 2).toNat

end

end A157996.P9190314557911041431

namespace A157996

/-- `A004139(A065475(n+1)+2)` -/
def P9190314557911041431.Spec : Prop :=
  ∀ n, P9190314557911041431.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P16374630658030655156

`A004139(A074764(n+2)-1)`
-/

namespace A157996.P16374630658030655156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A074764 (n + 2) - 1).toNat

end

end A157996.P16374630658030655156

namespace A157996

/-- `A004139(A074764(n+2)-1)` -/
def P16374630658030655156.Spec : Prop :=
  ∀ n, P16374630658030655156.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P6366011104283396505

`p?[A215848(n+1)+C(2, A074306(n))]`
-/

namespace A157996.P6366011104283396505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + (Nat.choose 2 (A074306 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157996.P6366011104283396505

namespace A157996

/-- `p?[A215848(n+1)+C(2, A074306(n))]` -/
def P6366011104283396505.Spec : Prop :=
  ∀ n, P6366011104283396505.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P8616731466095509817

`A065091(ceil(sqrt(∑[2*n]))+4)`
-/

namespace A157996.P8616731466095509817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 4).toNat

end

end A157996.P8616731466095509817

namespace A157996

/-- `A065091(ceil(sqrt(∑[2*n]))+4)` -/
def P8616731466095509817.Spec : Prop :=
  ∀ n, P8616731466095509817.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P8087578264360083585

`A045319(A074764(n+2))`
-/

namespace A157996.P8087578264360083585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A074764 (n + 2)).toNat

end

end A157996.P8087578264360083585

namespace A157996

/-- `A045319(A074764(n+2))` -/
def P8087578264360083585.Spec : Prop :=
  ∀ n, P8087578264360083585.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P16297187781694010250

`A045319(A242963(n+1)-1)`
-/

namespace A157996.P16297187781694010250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A242963 (n + 1) - 1).toNat

end

end A157996.P16297187781694010250

namespace A157996

/-- `A045319(A242963(n+1)-1)` -/
def P16297187781694010250.Spec : Prop :=
  ∀ n, P16297187781694010250.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P4488576609593619795

`A000040(floor(∑[cosh(acot(n)²)]))`
-/

namespace A157996.P4488576609593619795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (SequenceMachineLib.acot (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A157996.P4488576609593619795

namespace A157996

/-- `A000040(floor(∑[cosh(acot(n)²)]))` -/
def P4488576609593619795.Spec : Prop :=
  ∀ n, P4488576609593619795.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P15571462265315970596

`A000040(6-floor(acot(n))+n)`
-/

namespace A157996.P15571462265315970596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (6 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A157996.P15571462265315970596

namespace A157996

/-- `A000040(6-floor(acot(n))+n)` -/
def P15571462265315970596.Spec : Prop :=
  ∀ n, P15571462265315970596.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P3809508121320672078

`A000040(floor(∑[2^acot(n)²]))`
-/

namespace A157996.P3809508121320672078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A157996.P3809508121320672078

namespace A157996

/-- `A000040(floor(∑[2^acot(n)²]))` -/
def P3809508121320672078.Spec : Prop :=
  ∀ n, P3809508121320672078.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P15513007996873113076

`A000040(floor(2*n/(n+1)+n+3)+2)`
-/

namespace A157996.P15513007996873113076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌊(2 * n : ℚ) / (n + 1 : ℚ) + (n + 3 : ℚ)⌋ + 2).toNat

end

end A157996.P15513007996873113076

namespace A157996

/-- `A000040(floor(2*n/(n+1)+n+3)+2)` -/
def P15513007996873113076.Spec : Prop :=
  ∀ n, P15513007996873113076.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P4885981391408606372

`A083249(A107820(n+2)-1)`
-/

namespace A157996.P4885981391408606372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (A107820 (n + 2) - 1).toNat

end

end A157996.P4885981391408606372

namespace A157996

/-- `A083249(A107820(n+2)-1)` -/
def P4885981391408606372.Spec : Prop :=
  ∀ n, P4885981391408606372.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P13496583996183308684

`A067126(A263772(n+1)-1)`
-/

namespace A157996.P13496583996183308684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A263772 (n + 1) - 1).toNat

end

end A157996.P13496583996183308684

namespace A157996

/-- `A067126(A263772(n+1)-1)` -/
def P13496583996183308684.Spec : Prop :=
  ∀ n, P13496583996183308684.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P11546015385886050154

`A066050(A263772(n+1))`
-/

namespace A157996.P11546015385886050154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (A263772 (n + 1)).toNat

end

end A157996.P11546015385886050154

namespace A157996

/-- `A066050(A263772(n+1))` -/
def P11546015385886050154.Spec : Prop :=
  ∀ n, P11546015385886050154.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P6559930800987758850

`A151800(a(n-1))` with `a(0)=11, a(1)=17`
-/

namespace A157996.P6559930800987758850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 17] fun n a =>
  A151800 (a (n - 1)).toNat

end

end A157996.P6559930800987758850

namespace A157996

/-- `A151800(a(n-1))` -/
def P6559930800987758850.Spec : Prop :=
  ∀ n, P6559930800987758850.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P16580771310053233102

`A045970(A045344(n+1))`
-/

namespace A157996.P16580771310053233102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045970 (A045344 (n + 1)).toNat

end

end A157996.P16580771310053233102

namespace A157996

/-- `A045970(A045344(n+1))` -/
def P16580771310053233102.Spec : Prop :=
  ∀ n, P16580771310053233102.a n = A157996 (n + 1)

end A157996

/-! ## A157996.P14692749437178515487

`A045968(A004139(n+1))`
-/

namespace A157996.P14692749437178515487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A004139 (n + 1)).toNat

end

end A157996.P14692749437178515487

namespace A157996

/-- `A045968(A004139(n+1))` -/
def P14692749437178515487.Spec : Prop :=
  ∀ n, P14692749437178515487.a n = A157996 (n + 1)

end A157996

/-!
# A157997: a(n) = 288*n - 1.

The programs for A157997, the canonical program `A157997.P30413385636166794` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157997 has offset 1).

The definition of A157997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*(n+1)-1` (program `A157997.P30413385636166794`, by `A157997.P30413385636166794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157997.P30413385636166794

`288*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157997

/-- `288*(n+1)-1` -/
def P30413385636166794.Spec : Prop :=
  ∀ n, P30413385636166794.a n = A157997 (n + 1)

theorem P30413385636166794.correct : P30413385636166794.Spec := by
  intro n
  simp only [A157997, Nat.add_sub_cancel]

end A157997

/-!
# A157998: a(n) = 169*n^2 - n.

The programs for A157998, the canonical program `A157998.P2382028290815745782` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157998 has offset 1).

The definition of A157998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*(n+1)²-(n+1)` (program `A157998.P2382028290815745782`, by `A157998.P2382028290815745782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157998.P4244433990745486680

`ogf((168+170x)/(1-3x+3x^2-x^3))`
-/

namespace A157998.P4244433990745486680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [168, 170] [1, -3, 3, -1] n

end

end A157998.P4244433990745486680

namespace A157998

/-- `ogf((168+170x)/(1-3x+3x^2-x^3))` -/
def P4244433990745486680.Spec : Prop :=
  ∀ n, P4244433990745486680.a n = A157998 (n + 1)

end A157998

/-! ## A157998.P2382028290815745782

`169*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157998

/-- `169*(n+1)²-(n+1)` -/
def P2382028290815745782.Spec : Prop :=
  ∀ n, P2382028290815745782.a n = A157998 (n + 1)

theorem P2382028290815745782.correct : P2382028290815745782.Spec := by
  intro n
  simp only [A157998, Nat.add_sub_cancel]

end A157998

/-! ## A157998.P4672789172055448239

`(n+1)*A158219(n+1)`
-/

namespace A157998.P4672789172055448239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158219 (n + 1)

end

end A157998.P4672789172055448239

namespace A157998

/-- `(n+1)*A158219(n+1)` -/
def P4672789172055448239.Spec : Prop :=
  ∀ n, P4672789172055448239.a n = A157998 (n + 1)

end A157998

/-! ## A157998.P11313254188632328406

`(n+1)*(A158221(n+1)-2)`
-/

namespace A157998.P11313254188632328406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158221 (n + 1) - 2)

end

end A157998.P11313254188632328406

namespace A157998

/-- `(n+1)*(A158221(n+1)-2)` -/
def P11313254188632328406.Spec : Prop :=
  ∀ n, P11313254188632328406.a n = A157998 (n + 1)

theorem P11313254188632328406.correct : P11313254188632328406.Spec := by
  intro n
  simp only [A157998, Nat.add_sub_cancel, A157998.P11313254188632328406.a, A157998.P2382028290815745782.a, A158221, A158221.P13154522412142606507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157998

/-! ## A157998.P680686225437780118

`A158385(n+1)%A173275(n+1)`
-/

namespace A157998.P680686225437780118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158385 (n + 1)) (A173275 (n + 1))

end

end A157998.P680686225437780118

namespace A157998

/-- `A158385(n+1)%A173275(n+1)` -/
def P680686225437780118.Spec : Prop :=
  ∀ n, P680686225437780118.a n = A157998 (n + 1)

end A157998

/-! ## A157998.P3846716481318672000

`lcm(A000027(n+1), A158219(n+1))`
-/

namespace A157998.P3846716481318672000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158219 (n + 1))

end

end A157998.P3846716481318672000

namespace A157998

/-- `lcm(A000027(n+1), A158219(n+1))` -/
def P3846716481318672000.Spec : Prop :=
  ∀ n, (P3846716481318672000.a n : ℤ) = A157998 (n + 1)

end A157998

/-! ## A157998.P16017957170588837026

`∑[A158219(2*n+1)]`
-/

namespace A157998.P16017957170588837026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158219 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157998.P16017957170588837026

namespace A157998

/-- `∑[A158219(2*n+1)]` -/
def P16017957170588837026.Spec : Prop :=
  ∀ n, P16017957170588837026.a n = A157998 (n + 1)

end A157998

/-! ## A157998.P16654794725480533930

`A158218(2*(n+1))/4`
-/

namespace A157998.P16654794725480533930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158218 (2 * (n + 1)) : ℚ) / 4

end

end A157998.P16654794725480533930

namespace A157998

/-- `A158218(2*(n+1))/4` -/
def P16654794725480533930.Spec : Prop :=
  ∀ n, P16654794725480533930.a n = (A157998 (n + 1) : ℚ)

end A157998

/-! ## A157998.P15175123104301742664

`A173275(2*(n+1))%A173275(n+1)`
-/

namespace A157998.P15175123104301742664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173275 (2 * (n + 1))) (A173275 (n + 1))

end

end A157998.P15175123104301742664

namespace A157998

/-- `A173275(2*(n+1))%A173275(n+1)` -/
def P15175123104301742664.Spec : Prop :=
  ∀ n, P15175123104301742664.a n = A157998 (n + 1)

end A157998

/-!
# A157999: a(n) = 338*n - 1.

The programs for A157999, the canonical program `A157999.P12856804990203052512` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157999 has offset 1).

The definition of A157999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `338*(n+1)-1` (program `A157999.P12856804990203052512`, by `A157999.P12856804990203052512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157999.P12856804990203052512

`338*(n+1)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157999

/-- `338*(n+1)-1` -/
def P12856804990203052512.Spec : Prop :=
  ∀ n, P12856804990203052512.a n = A157999 (n + 1)

theorem P12856804990203052512.correct : P12856804990203052512.Spec := by
  intro n
  simp only [A157999, Nat.add_sub_cancel]

end A157999

