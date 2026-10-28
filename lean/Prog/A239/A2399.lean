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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239900: a(0)=2, a(1)=5; thereafter a(n) = product of all preceding terms, plus 1.

The programs for A239900, there is no canonical definition to state claims against.
-/

/-! ## A239900.P13107056587122104114

`lcm(2, C(a(n-1), 2))+1` with `a(0)=2, a(1)=5`
-/

namespace A239900.P13107056587122104114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A239900.P13107056587122104114

/-! ## A239900.P1927830004859274923

`2*C(a(n-1), 2)+1` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A239900.P1927830004859274923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A239900.P1927830004859274923

/-! ## A239900.P17295023469950643799

`ceil((1/2-a(n-1))²)` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A239900.P17295023469950643799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A239900.P17295023469950643799

/-! ## A239900.P6832160904981089968

`floor((1/2-a(n-1))²)+1` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A239900.P6832160904981089968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋ + 1

end

end A239900.P6832160904981089968

/-!
# A239901: Primes p such that ((p-1)/4)! is a primitive root mod p.

The programs for A239901, there is no canonical definition to state claims against.
-/

/-! ## A239901.P10846956920768660724

`p?[∑[A334949(A080539(n))]]`
-/

namespace A239901.P10846956920768660724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334949 (A080539 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239901.P10846956920768660724

/-! ## A239901.P5016562656985519476

`∩[A098868(n+1), A145483(n+1)]`
-/

namespace A239901.P5016562656985519476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239901.P5016562656985519476

/-!
# A239903: List of Restricted-Growth Strings a_{k-1}a_{k-2}...a_{2}a_{1}, with k=2 and a_1 in {0,1} or k>2, a_{k-1}=1 and a_{j+1}>=1+a_j, for k-1>j>0.

The programs for A239903, there is no canonical definition to state claims against.
-/

/-! ## A239903.P5744023758784524304

`eq[A064770(n), A136400(8*n)]`
-/

namespace A239903.P5744023758784524304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239903.P5744023758784524304

/-! ## A239903.P3603305921020857734

`A235049(A071159(n+9))`
-/

namespace A239903.P3603305921020857734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A071159 (n + 9)).toNat

end

end A239903.P3603305921020857734

/-! ## A239903.P12047096560037749665

`lt[A086066(n), A000030(A014754(n+1))]`
-/

namespace A239903.P12047096560037749665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A014754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239903.P12047096560037749665

/-! ## A239903.P15057330121840632631

`lt[A016825(A055012(n)), A089787(n+1)]`
-/

namespace A239903.P15057330121840632631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239903.P15057330121840632631

/-! ## A239903.P15023623851792481178

`A244159(A227549(n+1))`
-/

namespace A239903.P15023623851792481178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 (A227549 (n + 1)).toNat

end

end A239903.P15023623851792481178

/-!
# A239904: a(n) = n - wt(n) + (number of times 11 appears in binary expansion of n).

The programs for A239904, the canonical program `A239904.P1769615034918524656` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239904 has offset 0).

The definition of A239904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239904.P1769615034918524656

`n-A000120(n)+A014081(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A239904

/-- `n-A000120(n)+A014081(n)` -/
def P1769615034918524656.Spec : Prop :=
  ∀ n, P1769615034918524656.a n = A239904 n

theorem P1769615034918524656.correct : P1769615034918524656.Spec := by
  intro n
  simp only [A239904]

end A239904

/-! ## A239904.P8620890374159015427

`n-floor(∑[Δ[xor(n, 2*n-1)]%2]/2)`
-/

namespace A239904.P8620890374159015427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A239904.P8620890374159015427

namespace A239904

/-- `n-floor(∑[Δ[xor(n, 2*n-1)]%2]/2)` -/
def P8620890374159015427.Spec : Prop :=
  ∀ n, P8620890374159015427.a n = A239904 n

end A239904

/-! ## A239904.P11480949619126192403

`n-A069010(n)`
-/

namespace A239904.P11480949619126192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069010 n

end

end A239904.P11480949619126192403

namespace A239904

/-- `n-A069010(n)` -/
def P11480949619126192403.Spec : Prop :=
  ∀ n, P11480949619126192403.a n = A239904 n

theorem P11480949619126192403.correct : P11480949619126192403.Spec := by
  intro n
  simp only [A239904, Nat.add_sub_cancel, A239904.P11480949619126192403.a, A239904.P1769615034918524656.a, A000120, A000120.P2816527436160941581.a, A014081, A014081.P14878370479040452879.a, A069010, A069010.P14932719103722593844.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239904

/-! ## A239904.P16806364035610109250

`n-log2(A277561(n))`
-/

namespace A239904.P16806364035610109250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A277561 n : ℝ)

end

end A239904.P16806364035610109250

namespace A239904

/-- `n-log2(A277561(n))` -/
def P16806364035610109250.Spec : Prop :=
  ∀ n, P16806364035610109250.a n = (A239904 n : ℝ)

end A239904

/-! ## A239904.P3993305491161352255

`n-val(A253069(n), 2)`
-/

namespace A239904.P3993305491161352255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A253069 n).toNat 2 : ℤ)

end

end A239904.P3993305491161352255

namespace A239904

/-- `n-val(A253069(n), 2)` -/
def P3993305491161352255.Spec : Prop :=
  ∀ n, P3993305491161352255.a n = A239904 n

end A239904

/-! ## A239904.P3802275992921559383

`n-val(A255460(n), 2)`
-/

namespace A239904.P3802275992921559383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255460 n).toNat 2 : ℤ)

end

end A239904.P3802275992921559383

namespace A239904

/-- `n-val(A255460(n), 2)` -/
def P3802275992921559383.Spec : Prop :=
  ∀ n, P3802275992921559383.a n = A239904 n

end A239904

/-! ## A239904.P2526525617922861656

`n-val(A255462(n), 2)`
-/

namespace A239904.P2526525617922861656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255462 n).toNat 2 : ℤ)

end

end A239904.P2526525617922861656

namespace A239904

/-- `n-val(A255462(n), 2)` -/
def P2526525617922861656.Spec : Prop :=
  ∀ n, P2526525617922861656.a n = A239904 n

end A239904

/-! ## A239904.P6796442031271191301

`n-val(A255464(n), 2)`
-/

namespace A239904.P6796442031271191301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255464 n).toNat 2 : ℤ)

end

end A239904.P6796442031271191301

namespace A239904

/-- `n-val(A255464(n), 2)` -/
def P6796442031271191301.Spec : Prop :=
  ∀ n, P6796442031271191301.a n = A239904 n

end A239904

/-! ## A239904.P2935042364299243707

`n-val(A255466(n), 2)`
-/

namespace A239904.P2935042364299243707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255466 n).toNat 2 : ℤ)

end

end A239904.P2935042364299243707

namespace A239904

/-- `n-val(A255466(n), 2)` -/
def P2935042364299243707.Spec : Prop :=
  ∀ n, P2935042364299243707.a n = A239904 n

end A239904

/-! ## A239904.P1413552708760502799

`n-val(A278159(n), 2)`
-/

namespace A239904.P1413552708760502799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A278159 n).toNat 2 : ℤ)

end

end A239904.P1413552708760502799

namespace A239904

/-- `n-val(A278159(n), 2)` -/
def P1413552708760502799.Spec : Prop :=
  ∀ n, P1413552708760502799.a n = A239904 n

end A239904

/-! ## A239904.P5061527717426262363

`n-∑{e}[A246029(n), #]`
-/

namespace A239904.P5061527717426262363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A239904.P5061527717426262363

namespace A239904

/-- `n-∑{e}[A246029(n), #]` -/
def P5061527717426262363.Spec : Prop :=
  ∀ n, P5061527717426262363.a n = A239904 n

end A239904

/-! ## A239904.P4617549667906575437

`floor((A236840(n)+n)/2)`
-/

namespace A239904.P4617549667906575437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236840 n + (n : ℤ) : ℚ) / 2⌋

end

end A239904.P4617549667906575437

namespace A239904

/-- `floor((A236840(n)+n)/2)` -/
def P4617549667906575437.Spec : Prop :=
  ∀ n, P4617549667906575437.a n = A239904 n

end A239904

/-! ## A239904.P10183044709139747251

`floor(n-A005811(n)/2)`
-/

namespace A239904.P10183044709139747251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (A005811 n : ℚ) / 2⌋

end

end A239904.P10183044709139747251

namespace A239904

/-- `floor(n-A005811(n)/2)` -/
def P10183044709139747251.Spec : Prop :=
  ∀ n, P10183044709139747251.a n = A239904 n

end A239904

/-! ## A239904.P13586742766506523652

`n-floor(A088748(n)/2)`
-/

namespace A239904.P13586742766506523652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A088748 n : ℚ) / 2⌋

end

end A239904.P13586742766506523652

namespace A239904

/-- `n-floor(A088748(n)/2)` -/
def P13586742766506523652.Spec : Prop :=
  ∀ n, P13586742766506523652.a n = A239904 n

end A239904

/-! ## A239904.P1880931746780305636

`A014081(n)+A011371(n)`
-/

namespace A239904.P1880931746780305636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n + A011371 n

end

end A239904.P1880931746780305636

namespace A239904

/-- `A014081(n)+A011371(n)` -/
def P1880931746780305636.Spec : Prop :=
  ∀ n, P1880931746780305636.a n = A239904 n

theorem P1880931746780305636.correct : P1880931746780305636.Spec := by
  intro n
  simp only [A239904, Nat.add_sub_cancel, A239904.P1880931746780305636.a, A239904.P1769615034918524656.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A014081, A014081.P14878370479040452879.a, A005187, A005187.P3874015513960485494.a, A069010, A069010.P14932719103722593844.a, A005811, A005811.P8696411420205566785.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239904

/-! ## A239904.P11537518051456657823

`A239906(n)+A014082(n)`
-/

namespace A239904.P11537518051456657823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239906 n + A014082 n

end

end A239904.P11537518051456657823

namespace A239904

/-- `A239906(n)+A014082(n)` -/
def P11537518051456657823.Spec : Prop :=
  ∀ n, P11537518051456657823.a n = A239904 n

theorem P11537518051456657823.correct : P11537518051456657823.Spec := by
  intro n
  simp only [A239904, Nat.add_sub_cancel, A239904.P11537518051456657823.a, A239904.P1769615034918524656.a, A000120, A000120.P2816527436160941581.a, A014081, A014081.P14878370479040452879.a, A014082, A014082.P16446960074050354385.a, A239906, A239906.P4184436720645207913.a, A005187, A005187.P3874015513960485494.a, A069010, A069010.P14932719103722593844.a, A005811, A005811.P8696411420205566785.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239904

/-! ## A239904.P5047376813790801536

`A255070(n)+A004526(n)`
-/

namespace A239904.P5047376813790801536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 n + A004526 n

end

end A239904.P5047376813790801536

namespace A239904

/-- `A255070(n)+A004526(n)` -/
def P5047376813790801536.Spec : Prop :=
  ∀ n, P5047376813790801536.a n = A239904 n

end A239904

/-! ## A239904.P17049569554293251213

`A236840(n)+A033264(n)`
-/

namespace A239904.P17049569554293251213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 n + A033264 n

end

end A239904.P17049569554293251213

namespace A239904

/-- `A236840(n)+A033264(n)` -/
def P17049569554293251213.Spec : Prop :=
  ∀ n, P17049569554293251213.a n = A239904 n

end A239904

/-! ## A239904.P1532482080217318917

`A052928(n)-A033264(n)`
-/

namespace A239904.P1532482080217318917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n - A033264 n

end

end A239904.P1532482080217318917

namespace A239904

/-- `A052928(n)-A033264(n)` -/
def P1532482080217318917.Spec : Prop :=
  ∀ n, P1532482080217318917.a n = A239904 n

end A239904

/-! ## A239904.P624719325910946899

`n-A000120(A090077(n))`
-/

namespace A239904.P624719325910946899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A090077 n).toNat

end

end A239904.P624719325910946899

namespace A239904

/-- `n-A000120(A090077(n))` -/
def P624719325910946899.Spec : Prop :=
  ∀ n, P624719325910946899.a n = A239904 n

end A239904

/-!
# A239905: If n <= 5 then a(n) = 1, if 6 <= n <= 8 then 2, if n = 9 or 10 then 3, if n = 11, 12 or 13 then n-7; otherwise a(n) = 2*a(n - 4) + a(n - 12).

The programs for A239905, the canonical program `A239905.P14393026174239003383` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239905 has offset 1).

The definition of A239905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239905.P14393026174239003383

`ogf((1+x+x^2+x^3-x^4+x^8-x^9+x^11-x^12)/(1-2x^4-x^12))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239905

/-- `ogf((1+x+x^2+x^3-x^4+x^8-x^9+x^11-x^12)/(1-2x^4-x^12))` -/
def P14393026174239003383.Spec : Prop :=
  ∀ n, P14393026174239003383.a n = A239905 (n + 1)

theorem P14393026174239003383.correct : P14393026174239003383.Spec := by
  intro n
  simp only [A239905, Nat.add_sub_cancel]

end A239905

/-! ## A239905.P15768559933662193183

`A204551(A374687(n+1))`
-/

namespace A239905.P15768559933662193183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A374687 (n + 1)).toNat

end

end A239905.P15768559933662193183

namespace A239905

/-- `A204551(A374687(n+1))` -/
def P15768559933662193183.Spec : Prop :=
  ∀ n, P15768559933662193183.a n = A239905 (n + 1)

end A239905

/-! ## A239905.P16560230302333581239

`A195120(A003056(∑[A062200(n)]))`
-/

namespace A239905.P16560230302333581239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A239905.P16560230302333581239

namespace A239905

/-- `A195120(A003056(∑[A062200(n)]))` -/
def P16560230302333581239.Spec : Prop :=
  ∀ n, P16560230302333581239.a n = A239905 (n + 1)

end A239905

/-! ## A239905.P9495204552727579066

`floor(A055998(A000045(n)+1)^(1/5))`
-/

namespace A239905.P9495204552727579066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055998 (A000045 n + 1).toNat : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A239905.P9495204552727579066

namespace A239905

/-- `floor(A055998(A000045(n)+1)^(1/5))` -/
def P9495204552727579066.Spec : Prop :=
  ∀ n, P9495204552727579066.a n = A239905 (n + 1)

end A239905

/-! ## A239905.P9061071030573985734

`A103284(lt[A109267(n), A031285(n)])`
-/

namespace A239905.P9061071030573985734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239905.P9061071030573985734

namespace A239905

/-- `A103284(lt[A109267(n), A031285(n)])` -/
def P9061071030573985734.Spec : Prop :=
  ∀ n, P9061071030573985734.a n = A239905 (n + 1)

end A239905

/-!
# A239906: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3).

The programs for A239906, the canonical program `A239906.P4184436720645207913` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239906 has offset 0).

The definition of A239906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239906.P4184436720645207913

`A239904(n)-A014082(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A239906

/-- `A239904(n)-A014082(n)` -/
def P4184436720645207913.Spec : Prop :=
  ∀ n, P4184436720645207913.a n = A239906 n

theorem P4184436720645207913.correct : P4184436720645207913.Spec := by
  intro n
  simp only [A239906]

end A239906

/-! ## A239906.P6666574623422066706

`A011371(n)+val(A278159(n), 3)`
-/

namespace A239906.P6666574623422066706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (SequenceMachineLib.valuation (A278159 n).toNat 3 : ℤ)

end

end A239906.P6666574623422066706

namespace A239906

/-- `A011371(n)+val(A278159(n), 3)` -/
def P6666574623422066706.Spec : Prop :=
  ∀ n, P6666574623422066706.a n = A239906 n

end A239906

/-! ## A239906.P2581568719515695102

`n-(A069010(n)+A014082(n))`
-/

namespace A239906.P2581568719515695102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A069010 n + A014082 n)

end

end A239906.P2581568719515695102

namespace A239906

/-- `n-(A069010(n)+A014082(n))` -/
def P2581568719515695102.Spec : Prop :=
  ∀ n, P2581568719515695102.a n = A239906 n

theorem P2581568719515695102.correct : P2581568719515695102.Spec := by
  intro n
  simp only [A239906, Nat.add_sub_cancel, A239906.P2581568719515695102.a, A239906.P4184436720645207913.a, A014082, A014082.P16446960074050354385.a, A069010, A069010.P14932719103722593844.a, A239904, A239904.P1769615034918524656.a, A000120, A000120.P2816527436160941581.a, A005811, A005811.P8696411420205566785.a, A014081, A014081.P14878370479040452879.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239906

/-! ## A239906.P11504045171819995941

`A239904(n)-A014081(n-and(n, Δ[-n²]))`
-/

namespace A239906.P11504045171819995941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014081 ((n : ℤ) - Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A239906.P11504045171819995941

namespace A239906

/-- `A239904(n)-A014081(n-and(n, Δ[-n²]))` -/
def P11504045171819995941.Spec : Prop :=
  ∀ n, P11504045171819995941.a n = A239906 n

end A239906

/-! ## A239906.P5584238187611851250

`A239904(n)-A014081(A048735(n))`
-/

namespace A239906.P5584238187611851250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014081 (A048735 n).toNat

end

end A239906.P5584238187611851250

namespace A239906

/-- `A239904(n)-A014081(A048735(n))` -/
def P5584238187611851250.Spec : Prop :=
  ∀ n, P5584238187611851250.a n = A239906 n

end A239906

/-! ## A239906.P333439763511226466

`A239904(n)-A014081(A213370(n))`
-/

namespace A239906.P333439763511226466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014081 (A213370 n).toNat

end

end A239906.P333439763511226466

namespace A239906

/-- `A239904(n)-A014081(A213370(n))` -/
def P333439763511226466.Spec : Prop :=
  ∀ n, P333439763511226466.a n = A239906 n

end A239906

/-! ## A239906.P5405645140133297465

`A239904(n)-A014081(A048728(n)/2)`
-/

namespace A239906.P5405645140133297465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014081 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A239906.P5405645140133297465

namespace A239906

/-- `A239904(n)-A014081(A048728(n)/2)` -/
def P5405645140133297465.Spec : Prop :=
  ∀ n, P5405645140133297465.a n = A239906 n

end A239906

/-! ## A239906.P452838675400760619

`n-val(A255462(n), 2)-A014081(A048735(n))`
-/

namespace A239906.P452838675400760619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255462 n).toNat 2 : ℤ) - A014081 (A048735 n).toNat

end

end A239906.P452838675400760619

namespace A239906

/-- `n-val(A255462(n), 2)-A014081(A048735(n))` -/
def P452838675400760619.Spec : Prop :=
  ∀ n, P452838675400760619.a n = A239906 n

end A239906

/-! ## A239906.P9989819915531501137

`floor((A236840(n)+n)/2)-A014081(A048735(n))`
-/

namespace A239906.P9989819915531501137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236840 n + (n : ℤ) : ℚ) / 2⌋ - A014081 (A048735 n).toNat

end

end A239906.P9989819915531501137

namespace A239906

/-- `floor((A236840(n)+n)/2)-A014081(A048735(n))` -/
def P9989819915531501137.Spec : Prop :=
  ∀ n, P9989819915531501137.a n = A239906 n

end A239906

/-! ## A239906.P6526079587072885229

`floor((A236840(n)+n)/2)-A014081(A048728(n)/2)`
-/

namespace A239906.P6526079587072885229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236840 n + (n : ℤ) : ℚ) / 2⌋ - A014081 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A239906.P6526079587072885229

namespace A239906

/-- `floor((A236840(n)+n)/2)-A014081(A048728(n)/2)` -/
def P6526079587072885229.Spec : Prop :=
  ∀ n, P6526079587072885229.a n = A239906 n

end A239906

/-! ## A239906.P4999546723920909204

`n-A000120(A048735(n)+n)`
-/

namespace A239906.P4999546723920909204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A048735 n + (n : ℤ)).toNat

end

end A239906.P4999546723920909204

namespace A239906

/-- `n-A000120(A048735(n)+n)` -/
def P4999546723920909204.Spec : Prop :=
  ∀ n, P4999546723920909204.a n = A239906 n

end A239906

/-! ## A239906.P4930407624201093956

`A239904(n)-A014081(A048728(n))`
-/

namespace A239906.P4930407624201093956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014081 (A048728 n).toNat

end

end A239906.P4930407624201093956

namespace A239906

/-- `A239904(n)-A014081(A048728(n))` -/
def P4930407624201093956.Spec : Prop :=
  ∀ n, P4930407624201093956.a n = A239906 n

end A239906

/-! ## A239906.P15124858448108489857

`floor((A236840(n)+n)/2)-A014081(A048728(n))`
-/

namespace A239906.P15124858448108489857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236840 n + (n : ℤ) : ℚ) / 2⌋ - A014081 (A048728 n).toNat

end

end A239906.P15124858448108489857

namespace A239906

/-- `floor((A236840(n)+n)/2)-A014081(A048728(n))` -/
def P15124858448108489857.Spec : Prop :=
  ∀ n, P15124858448108489857.a n = A239906 n

end A239906

/-! ## A239906.P7374660045862170925

`n-A014082(2*n)-A069010(n)`
-/

namespace A239906.P7374660045862170925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014082 (2 * n) - A069010 n

end

end A239906.P7374660045862170925

namespace A239906

/-- `n-A014082(2*n)-A069010(n)` -/
def P7374660045862170925.Spec : Prop :=
  ∀ n, P7374660045862170925.a n = A239906 n

end A239906

/-!
# A239907: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3) + cn(n,4) - ... .

The programs for A239907, the canonical program `A239907.P2924034239393918742` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239907 has offset 0).

The definition of A239907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239907.P17230041423808234725

`n-A000120(A072650(n))`
-/

namespace A239907.P17230041423808234725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A072650 n).toNat

end

end A239907.P17230041423808234725

namespace A239907

/-- `n-A000120(A072650(n))` -/
def P17230041423808234725.Spec : Prop :=
  ∀ n, P17230041423808234725.a n = A239907 n

end A239907

/-! ## A239907.P2924034239393918742

`n-A329320(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239907

/-- `n-A329320(n)` -/
def P2924034239393918742.Spec : Prop :=
  ∀ n, P2924034239393918742.a n = A239907 n

theorem P2924034239393918742.correct : P2924034239393918742.Spec := by
  intro n
  simp only [A239907]

end A239907

/-! ## A239907.P11865700214898147398

`n-A000120(A374356(n))`
-/

namespace A239907.P11865700214898147398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A374356 n).toNat

end

end A239907.P11865700214898147398

namespace A239907

/-- `n-A000120(A374356(n))` -/
def P11865700214898147398.Spec : Prop :=
  ∀ n, P11865700214898147398.a n = A239907 n

end A239907

/-! ## A239907.P13899516604661544642

`abs(A329320(n)+A001489(n))`
-/

namespace A239907.P13899516604661544642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329320 n + A001489 n|

end

end A239907.P13899516604661544642

namespace A239907

/-- `abs(A329320(n)+A001489(n))` -/
def P13899516604661544642.Spec : Prop :=
  ∀ n, P13899516604661544642.a n = A239907 n

end A239907

/-! ## A239907.P10953529810877505717

`Δ[A087475(n)]%(A329320(n)+n+1)`
-/

namespace A239907.P10953529810877505717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A329320 n + (n + 1 : ℤ))

end

end A239907.P10953529810877505717

namespace A239907

/-- `Δ[A087475(n)]%(A329320(n)+n+1)` -/
def P10953529810877505717.Spec : Prop :=
  ∀ n, P10953529810877505717.a n = A239907 n

end A239907

/-! ## A239907.P6697277630127755803

`A321804(Δ[A110654(n)])*A329320(n)+n`
-/

namespace A239907.P6697277630127755803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (f1 (n + 1) - f1 n).toNat * A329320 n + (n : ℤ)

end

end A239907.P6697277630127755803

namespace A239907

/-- `A321804(Δ[A110654(n)])*A329320(n)+n` -/
def P6697277630127755803.Spec : Prop :=
  ∀ n, P6697277630127755803.a n = A239907 n

end A239907

/-! ## A239907.P9585370661355474791

`n-A280737(A268716(n)+1)`
-/

namespace A239907.P9585370661355474791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A280737 (A268716 n + 1).toNat

end

end A239907.P9585370661355474791

namespace A239907

/-- `n-A280737(A268716(n)+1)` -/
def P9585370661355474791.Spec : Prop :=
  ∀ n, P9585370661355474791.a n = A239907 n

end A239907

/-! ## A239907.P15615905266284998136

`n-A001222(A097246(A278222(n)))`
-/

namespace A239907.P15615905266284998136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A097246 (A278222 n).toNat).toNat

end

end A239907.P15615905266284998136

namespace A239907

/-- `n-A001222(A097246(A278222(n)))` -/
def P15615905266284998136.Spec : Prop :=
  ∀ n, P15615905266284998136.a n = A239907 n

end A239907

/-! ## A239907.P14240436224804039983

`n-A134024(A371276(n))`
-/

namespace A239907.P14240436224804039983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A134024 (A371276 n).toNat

end

end A239907.P14240436224804039983

namespace A239907

/-- `n-A134024(A371276(n))` -/
def P14240436224804039983.Spec : Prop :=
  ∀ n, P14240436224804039983.a n = A239907 n

end A239907

/-! ## A239907.P11301149333373424646

`A025581(A329320(n)+∑[n])`
-/

namespace A239907.P11301149333373424646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A329320 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A239907.P11301149333373424646

namespace A239907

/-- `A025581(A329320(n)+∑[n])` -/
def P11301149333373424646.Spec : Prop :=
  ∀ n, P11301149333373424646.a n = A239907 n

end A239907

/-! ## A239907.P10727786064356111220

`n-A081603(A043589(n+1))`
-/

namespace A239907.P10727786064356111220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A081603 (A043589 (n + 1)).toNat

end

end A239907.P10727786064356111220

namespace A239907

/-- `n-A081603(A043589(n+1))` -/
def P10727786064356111220.Spec : Prop :=
  ∀ n, P10727786064356111220.a n = A239907 n

end A239907

/-! ## A239907.P11220572651658721153

`n-val(A224529(n), 2)`
-/

namespace A239907.P11220572651658721153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A224529 n).toNat 2 : ℤ)

end

end A239907.P11220572651658721153

namespace A239907

/-- `n-val(A224529(n), 2)` -/
def P11220572651658721153.Spec : Prop :=
  ∀ n, P11220572651658721153.a n = A239907 n

end A239907

/-!
# A239909: Arises from a construction of equiangular lines in complex space of dimension 2.

The programs for A239909, the canonical program `A239909.P2277526071922644014` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239909 has offset 1).

The definition of A239909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239909.P2958773401725114699

`ogf((1-x^3)/(1-x-x^2-x^3+x^4))`
-/

namespace A239909.P2958773401725114699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -1, -1, -1, 1] n

end

end A239909.P2958773401725114699

namespace A239909

/-- `ogf((1-x^3)/(1-x-x^2-x^3+x^4))` -/
def P2958773401725114699.Spec : Prop :=
  ∀ n, P2958773401725114699.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P2277526071922644014

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239909

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P2277526071922644014.Spec : Prop :=
  ∀ n, P2277526071922644014.a n = A239909 (n + 1)

theorem P2277526071922644014.correct : P2277526071922644014.Spec := by
  intro n
  simp only [A239909, Nat.add_sub_cancel]

end A239909

/-! ## A239909.P13903465908085068420

`a(n-1)+2*a(n-3)+A116732(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A239909.P13903465908085068420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 1) + 2 * a (n - 3) + A116732 (n - 4)

end

end A239909.P13903465908085068420

namespace A239909

/-- `a(n-1)+2*a(n-3)+A116732(n-4)` -/
def P13903465908085068420.Spec : Prop :=
  ∀ n, P13903465908085068420.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P14397816439242506516

`∑[A116732(n+1)]+1`
-/

namespace A239909.P14397816439242506516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A239909.P14397816439242506516

namespace A239909

/-- `∑[A116732(n+1)]+1` -/
def P14397816439242506516.Spec : Prop :=
  ∀ n, P14397816439242506516.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P17588814781740586433

`A116201(n)+A052527(n)`
-/

namespace A239909.P17588814781740586433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116201 n + A052527 n

end

end A239909.P17588814781740586433

namespace A239909

/-- `A116201(n)+A052527(n)` -/
def P17588814781740586433.Spec : Prop :=
  ∀ n, P17588814781740586433.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P7969001017847498984

`∑[A052527(n)]-A116732(n)`
-/

namespace A239909.P7969001017847498984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A116732 n

end

end A239909.P7969001017847498984

namespace A239909

/-- `∑[A052527(n)]-A116732(n)` -/
def P7969001017847498984.Spec : Prop :=
  ∀ n, P7969001017847498984.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P3155700719714140454

`A116732(n+3)-A116732(n)`
-/

namespace A239909.P3155700719714140454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 3) - A116732 n

end

end A239909.P3155700719714140454

namespace A239909

/-- `A116732(n+3)-A116732(n)` -/
def P3155700719714140454.Spec : Prop :=
  ∀ n, P3155700719714140454.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P14227991587263681803

`Δ[A135431(n)+A116732(n)]`
-/

namespace A239909.P14227991587263681803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 n + A116732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239909.P14227991587263681803

namespace A239909

/-- `Δ[A135431(n)+A116732(n)]` -/
def P14227991587263681803.Spec : Prop :=
  ∀ n, P14227991587263681803.a n = A239909 (n + 1)

end A239909

/-! ## A239909.P1133917344325580046

`Δ[A164456(n+4)%A020750(n)]`
-/

namespace A239909.P1133917344325580046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164456 (n + 4)) (A020750 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239909.P1133917344325580046

namespace A239909

/-- `Δ[A164456(n+4)%A020750(n)]` -/
def P1133917344325580046.Spec : Prop :=
  ∀ n, P1133917344325580046.a n = A239909 (n + 1)

end A239909

/-!
# A239910: Number of forests with three connected components in the complete graph K_{n}.

The programs for A239910, the canonical program `A239910.P7260727424667875696` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239910 has offset 1).

The definition of A239910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239910.P7260727424667875696

`(n+1)^(n-5)*n*(n-1)*((n+1)²+13*(n+1)+60)/8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239910

/-- `(n+1)^(n-5)*n*(n-1)*((n+1)²+13*(n+1)+60)/8` -/
def P7260727424667875696.Spec : Prop :=
  ∀ n, P7260727424667875696.a n = (A239910 (n + 1) : ℚ)

end A239910

/-! ## A239910.P2579370322377931681

`A105599(A152950(n+1))%A105599(A133263(n))`
-/

namespace A239910.P2579370322377931681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105599 (A152950 (n + 1)).toNat) (A105599 (A133263 n).toNat)

end

end A239910.P2579370322377931681

namespace A239910

/-- `A105599(A152950(n+1))%A105599(A133263(n))` -/
def P2579370322377931681.Spec : Prop :=
  ∀ n, P2579370322377931681.a n = A239910 (n + 1)

end A239910

/-!
# A239913: a(n) = n - Q(n), where Q(n) is Hofstadter's Q-sequence A005185.

The programs for A239913, the canonical program `A239913.P4533261008213701870` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239913 has offset 1).

The definition of A239913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239913.P4533261008213701870

`a(a(n-1))+a(a(n-2)+1)-a(n-1)-a(n-2)+n+1-3` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239913

/-- `a(a(n-1))+a(a(n-2)+1)-a(n-1)-a(n-2)+n+1-3` -/
def P4533261008213701870.Spec : Prop :=
  ∀ n, P4533261008213701870.a n = A239913 (n + 1)

theorem P4533261008213701870.correct : P4533261008213701870.Spec := by
  intro n
  simp only [A239913, Nat.add_sub_cancel]

end A239913

/-! ## A239913.P9721166694849392083

`a(a(n-1))+a(a(n-2)+1)-a(n-1)-a(n-2)+n-2` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=2, a(7)=3`
-/

namespace A239913.P9721166694849392083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 2, 2, 3] fun n a =>
  a (a (n - 1)).toNat + a (a (n - 2) + 1).toNat - a (n - 1) - a (n - 2) + ((n : ℤ) - 2)

end

end A239913.P9721166694849392083

namespace A239913

/-- `a(a(n-1))+a(a(n-2)+1)-a(n-1)-a(n-2)+n-2` -/
def P9721166694849392083.Spec : Prop :=
  ∀ n, P9721166694849392083.a n = A239913 (n + 1)

theorem P9721166694849392083.correct : P9721166694849392083.Spec := by
  intro n
  simp only [A239913, Nat.add_sub_cancel, A239913.P9721166694849392083.a, A239913.P4533261008213701870.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239913

/-! ## A239913.P4380444898094988284

`1-A005185(n+1)+n`
-/

namespace A239913.P4380444898094988284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005185 (n + 1) + (n : ℤ)

end

end A239913.P4380444898094988284

namespace A239913

/-- `1-A005185(n+1)+n` -/
def P4380444898094988284.Spec : Prop :=
  ∀ n, P4380444898094988284.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P1403445336278404046

`a(n-1)+1-A081827(n)` with `a(0)=0`
-/

namespace A239913.P1403445336278404046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A081827 n)

end

end A239913.P1403445336278404046

namespace A239913

/-- `a(n-1)+1-A081827(n)` -/
def P1403445336278404046.Spec : Prop :=
  ∀ n, P1403445336278404046.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P180283042441565892

`1-(A005185(Δ[n²]-n)-n)`
-/

namespace A239913.P180283042441565892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A005185 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A239913.P180283042441565892

namespace A239913

/-- `1-(A005185(Δ[n²]-n)-n)` -/
def P180283042441565892.Spec : Prop :=
  ∀ n, P180283042441565892.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P9642389392800354272

`n-∑[A081827(round(sqrt(n²+1)))]`
-/

namespace A239913.P9642389392800354272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239913.P9642389392800354272

namespace A239913

/-- `n-∑[A081827(round(sqrt(n²+1)))]` -/
def P9642389392800354272.Spec : Prop :=
  ∀ n, P9642389392800354272.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P4656486813480798912

`1-∑[A081827(abs(1-n)+1)]+n`
-/

namespace A239913.P4656486813480798912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A239913.P4656486813480798912

namespace A239913

/-- `1-∑[A081827(abs(1-n)+1)]+n` -/
def P4656486813480798912.Spec : Prop :=
  ∀ n, P4656486813480798912.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P11720552819726060531

`n-log2(1/2)-A005185(n-log2(1/2))`
-/

namespace A239913.P11720552819726060531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A005185 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A239913.P11720552819726060531

namespace A239913

/-- `n-log2(1/2)-A005185(n-log2(1/2))` -/
def P11720552819726060531.Spec : Prop :=
  ∀ n, P11720552819726060531.a n = (A239913 (n + 1) : ℝ)

end A239913

/-! ## A239913.P12892860049834382361

`A024000(A005185(n+1))+n`
-/

namespace A239913.P12892860049834382361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A005185 (n + 1)).toNat + (n : ℤ)

end

end A239913.P12892860049834382361

namespace A239913

/-- `A024000(A005185(n+1))+n` -/
def P12892860049834382361.Spec : Prop :=
  ∀ n, P12892860049834382361.a n = A239913 (n + 1)

end A239913

/-! ## A239913.P18138411134519348844

`A080677(n+1)+A284019(n+1)-1`
-/

namespace A239913.P18138411134519348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1) + (A284019 (n + 1) - 1)

end

end A239913.P18138411134519348844

namespace A239913

/-- `A080677(n+1)+A284019(n+1)-1` -/
def P18138411134519348844.Spec : Prop :=
  ∀ n, P18138411134519348844.a n = A239913 (n + 1)

end A239913

/-!
# A239914: Total number of preferential arrangements of 1, 2, ..., n things.

The programs for A239914, there is no canonical definition to state claims against.
-/

/-! ## A239914.P2653528079198264252

`A217389(n+1)-1`
-/

namespace A239914.P2653528079198264252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217389 (n + 1) - 1

end

end A239914.P2653528079198264252

/-! ## A239914.P4377993089791694991

`∑[record[A122101(n)]]`
-/

namespace A239914.P4377993089791694991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P4377993089791694991

/-! ## A239914.P11562638436775206454

`∑[record[A154921(n)]]`
-/

namespace A239914.P11562638436775206454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P11562638436775206454

/-! ## A239914.P10857038992030529861

`∑[record[A355666(n)]]`
-/

namespace A239914.P10857038992030529861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P10857038992030529861

/-! ## A239914.P12328084653120478422

`∑[record[A357868(n)]]`
-/

namespace A239914.P12328084653120478422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P12328084653120478422

/-! ## A239914.P4472000165217617811

`∑[A000670(n+1)]`
-/

namespace A239914.P4472000165217617811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P4472000165217617811

/-! ## A239914.P8874382284435690723

`∑[abs(Δ[A217389(n)])]`
-/

namespace A239914.P8874382284435690723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P8874382284435690723

/-! ## A239914.P15474348148670436086

`∑[A073146(∑[n+1])]`
-/

namespace A239914.P15474348148670436086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P15474348148670436086

/-! ## A239914.P10044945948368616055

`∑[A084417(∑[n+1])]`
-/

namespace A239914.P10044945948368616055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084417 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P10044945948368616055

/-! ## A239914.P12928974699850863062

`∑[A122101(∑[n+1])]`
-/

namespace A239914.P12928974699850863062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239914.P12928974699850863062

/-!
# A239915: A sequence giving the solution to the problem of identifying two complementary defectives.

The programs for A239915, there is no canonical definition to state claims against.
-/

/-! ## A239915.P17673496423225540480

`A100617(A075900(n+1))`
-/

namespace A239915.P17673496423225540480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A075900 (n + 1)).toNat

end

end A239915.P17673496423225540480

/-! ## A239915.P12267463733689413544

`A222047(n)+A004155(A165877(n))`
-/

namespace A239915.P12267463733689413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n + A004155 (A165877 n).toNat

end

end A239915.P12267463733689413544

/-! ## A239915.P8741238808156897886

`A002024(A190525(n)-A161680(n))`
-/

namespace A239915.P8741238808156897886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A190525 n - A161680 n).toNat

end

end A239915.P8741238808156897886

/-! ## A239915.P3999191435016770948

`A137735(A045655(n))`
-/

namespace A239915.P3999191435016770948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A045655 n).toNat

end

end A239915.P3999191435016770948

/-! ## A239915.P5795660460061359779

`A135662(A109110(n))`
-/

namespace A239915.P5795660460061359779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A109110 n).toNat

end

end A239915.P5795660460061359779

/-!
# A239916: List of dimensions in which there exists an exceptional integral lattice of simplex type with minimal norm 3 and generated by norm 3 vectors.

The programs for A239916, there is no canonical definition to state claims against.
-/

/-! ## A239916.P17156261232235272415

`lt[∑{d}[n+1, #]/xor(n, n+1), A058190(2*(n+2))²]`
-/

namespace A239916.P17156261232235272415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (2 * (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A239916.P17156261232235272415

/-! ## A239916.P13062933715893652621

`lt[A052410(A064446(n+2)), n]`
-/

namespace A239916.P13062933715893652621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A064446 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239916.P13062933715893652621

/-! ## A239916.P1984316758783323487

`lt[A243052(A243074(n+2)), n]`
-/

namespace A239916.P1984316758783323487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243052 (A243074 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239916.P1984316758783323487

/-! ## A239916.P10164762120617783961

`lt[A112344(n+1), A078771(n+2)]`
-/

namespace A239916.P10164762120617783961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239916.P10164762120617783961

/-! ## A239916.P14847110657587541801

`lt[A024940(n+1)², A078771(n+2)]`
-/

namespace A239916.P14847110657587541801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239916.P14847110657587541801

/-!
# A239917: Theta series of 16-dimensional lattice OBW16, an overlattice of the Barnes-Wall lattice BW16.

The programs for A239917, there is no canonical definition to state claims against.
-/

/-! ## A239917.P16316817250640765516

`A014713(n)+A014711(n)`
-/

namespace A239917.P16316817250640765516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014713 n + A014711 n

end

end A239917.P16316817250640765516

/-! ## A239917.P13393979460997169074

`A014711(n)+4^n*A344340(A358213(n))`
-/

namespace A239917.P13393979460997169074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014711 n + (4 ^ n : ℤ) * A344340 (A358213 n).toNat

end

end A239917.P13393979460997169074

/-!
# A239918: Number of unrooted maps with n edges of (orientable) genus 5.

The programs for A239918, there is no canonical definition to state claims against.
-/

/-! ## A239918.P285579951227119426

`A379438(eq[5, A055087(n)])`
-/

namespace A239918.P285579951227119426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239918.P285579951227119426

/-!
# A239926: 3^(p-1)-2^(p+1) for primes p > 3.

The programs for A239926, there is no canonical definition to state claims against.
-/

/-! ## A239926.P5507973322241102089

`A214091(A165972(n+2))`
-/

namespace A239926.P5507973322241102089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 (A165972 (n + 2)).toNat

end

end A239926.P5507973322241102089

/-! ## A239926.P375153111215052570

`A214091(A006093(n+3))`
-/

namespace A239926.P375153111215052570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 (A006093 (n + 3)).toNat

end

end A239926.P375153111215052570

/-! ## A239926.P1009358000382346014

`A214091(eq[1, A295520(n)])`
-/

namespace A239926.P1009358000382346014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239926.P1009358000382346014

/-! ## A239926.P3719975305389585436

`A214091(A000040(n+3)-1)`
-/

namespace A239926.P3719975305389585436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 (A000040 (n + 3) - 1).toNat

end

end A239926.P3719975305389585436

/-! ## A239926.P16384915661440769246

`A214091(A173064(n+3)+4)`
-/

namespace A239926.P16384915661440769246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214091 (A173064 (n + 3) + 4).toNat

end

end A239926.P16384915661440769246

/-!
# A239927: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength k such that the area between the x-axis and the path is n (n>=0; 0<=k<=n).

The programs for A239927, there is no canonical definition to state claims against.
-/

/-! ## A239927.P13097320487094304024

`A309025(C(A329918(n), A130321(n)))`
-/

namespace A239927.P13097320487094304024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309025 (Nat.choose (A329918 n).toNat (A130321 n).toNat)

end

end A239927.P13097320487094304024

/-! ## A239927.P2582091874369565977

`and(A008611(A210472(n)), A115296(n))`
-/

namespace A239927.P2582091874369565977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008611 (A210472 n).toNat) (A115296 n)

end

end A239927.P2582091874369565977

/-! ## A239927.P1589126376078433751

`A000045(and(A331126(n), A349645(n)))`
-/

namespace A239927.P1589126376078433751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A331126 n) (A349645 n)).toNat

end

end A239927.P1589126376078433751

/-! ## A239927.P79707029221433418

`floor(A118759(A166335(n))/A140303(n))`
-/

namespace A239927.P79707029221433418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118759 (A166335 n).toNat : ℚ) / (A140303 n : ℚ)⌋

end

end A239927.P79707029221433418

/-! ## A239927.P14132049650695091300

`A122204(C(A124305(n), A122204(n)))`
-/

namespace A239927.P14132049650695091300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (Nat.choose (A124305 n).toNat (A122204 n).toNat)

end

end A239927.P14132049650695091300

/-!
# A239928: Expansion of F(x^2, x) where F(x,y) is the g.f. of A239927.

The programs for A239928, there is no canonical definition to state claims against.
-/

/-! ## A239928.P7613650916268567049

`A118758(A037214(A002496(n+1)))%4`
-/

namespace A239928.P7613650916268567049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118758 (A037214 (A002496 (n + 1)).toNat).toNat) 4

end

end A239928.P7613650916268567049

/-! ## A239928.P16780919492893007437

`C(A307598(A044824(n+1)), A357070(n+2))`
-/

namespace A239928.P16780919492893007437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A307598 (A044824 (n + 1)).toNat).toNat (A357070 (n + 2)).toNat

end

end A239928.P16780919492893007437

/-! ## A239928.P5636309940230078553

`A324868(A245478(n+1)+3)`
-/

namespace A239928.P5636309940230078553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (A245478 (n + 1) + 3).toNat

end

end A239928.P5636309940230078553

/-! ## A239928.P11203615211766916451

`A109708(2*n)+A028240(lt[1, 1/cos(n)])`
-/

namespace A239928.P11203615211766916451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (2 * n) + A028240 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A239928.P11203615211766916451

/-! ## A239928.P1008755562597179718

`A000040(n+3)%A328570(A017996(n))`
-/

namespace A239928.P1008755562597179718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3)) (A328570 (A017996 n).toNat)

end

end A239928.P1008755562597179718

/-!
# A239929: Numbers k with the property that the symmetric representation of sigma(k) has two parts.

The programs for A239929, there is no canonical definition to state claims against.
-/

/-! ## A239929.P1433699067881891718

`eq[1, A379969(n+1)]+1`
-/

namespace A239929.P1433699067881891718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239929.P1433699067881891718

/-! ## A239929.P2777443639398083234

`eq[2, A237271(n+1)]+1`
-/

namespace A239929.P2777443639398083234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239929.P2777443639398083234

/-! ## A239929.P13363399209867562740

`eq[4, A244971(n+1)]+1`
-/

namespace A239929.P13363399209867562740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239929.P13363399209867562740

/-! ## A239929.P4874391132773901435

`eq[2, A237271(gcd(n, C(2, n)))]`
-/

namespace A239929.P4874391132773901435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239929.P4874391132773901435

/-! ## A239929.P2516347194544749176

`eq[2, A237271(ceil(abs(γ-n)))]`
-/

namespace A239929.P2516347194544749176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239929.P2516347194544749176

/-! ## A239929.P11306573719848475330

`eq[2, sqrt(a(A237271(n)))]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A239929.P11306573719848475330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  Real.sqrt (f2 (A237271 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A239929.P11306573719848475330

/-! ## A239929.P2179809067417823955

`filter[A051340(n), A379969(#)]`
-/

namespace A239929.P2179809067417823955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A239929.P2179809067417823955

/-! ## A239929.P10818955156893583384

`filter[A051495(n), A379969(#)]`
-/

namespace A239929.P10818955156893583384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A239929.P10818955156893583384

/-! ## A239929.P9490422487457698968

`filter[A072442(n), A379969(#)]`
-/

namespace A239929.P9490422487457698968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A239929.P9490422487457698968

/-! ## A239929.P129881717175270548

`filter[A100727(n), A379969(#)]`
-/

namespace A239929.P129881717175270548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A239929.P129881717175270548

/-!
# A239930: Number of distinct quarter-squares dividing n.

The programs for A239930, the canonical program `A239930.P8856580518813960922` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239930 has offset 1).

The definition of A239930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239930.P8856580518813960922

`∑{d}[n+1, A240025(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239930

/-- `∑{d}[n+1, A240025(#)]` -/
def P8856580518813960922.Spec : Prop :=
  ∀ n, P8856580518813960922.a n = A239930 (n + 1)

theorem P8856580518813960922.correct : P8856580518813960922.Spec := by
  intro n
  simp only [A239930, Nat.add_sub_cancel]

end A239930

/-! ## A239930.P2243053432692243664

`A129308(n+1)+A046951(n+1)`
-/

namespace A239930.P2243053432692243664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) + A046951 (n + 1)

end

end A239930.P2243053432692243664

namespace A239930

/-- `A129308(n+1)+A046951(n+1)` -/
def P2243053432692243664.Spec : Prop :=
  ∀ n, P2243053432692243664.a n = A239930 (n + 1)

end A239930

/-! ## A239930.P3755371996504506981

`A195155(n+1)+A071325(n+1)`
-/

namespace A239930.P3755371996504506981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (n + 1) + A071325 (n + 1)

end

end A239930.P3755371996504506981

namespace A239930

/-- `A195155(n+1)+A071325(n+1)` -/
def P3755371996504506981.Spec : Prop :=
  ∀ n, P3755371996504506981.a n = A239930 (n + 1)

end A239930

/-! ## A239930.P15967821944140889341

`A129308(n+1)+A000005(A000188(n+1))`
-/

namespace A239930.P15967821944140889341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) + A000005 (A000188 (n + 1)).toNat

end

end A239930.P15967821944140889341

namespace A239930

/-- `A129308(n+1)+A000005(A000188(n+1))` -/
def P15967821944140889341.Spec : Prop :=
  ∀ n, P15967821944140889341.a n = A239930 (n + 1)

end A239930

/-! ## A239930.P10355503625807285326

`∑{d}[n+1, 2-gcd(2, A188440(#))]`
-/

namespace A239930.P10355503625807285326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Int.gcd 2 (A188440 d) : ℤ))

end

end A239930.P10355503625807285326

namespace A239930

/-- `∑{d}[n+1, 2-gcd(2, A188440(#))]` -/
def P10355503625807285326.Spec : Prop :=
  ∀ n, P10355503625807285326.a n = A239930 (n + 1)

end A239930

/-! ## A239930.P10368840955331842559

`∑{d}[n+1, A008458(A173517(A173517(#)))%2]`
-/

namespace A239930.P10368840955331842559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A008458 (A173517 (A173517 d).toNat).toNat) 2

end

end A239930.P10368840955331842559

namespace A239930

/-- `∑{d}[n+1, A008458(A173517(A173517(#)))%2]` -/
def P10368840955331842559.Spec : Prop :=
  ∀ n, P10368840955331842559.a n = A239930 (n + 1)

end A239930

/-! ## A239930.P17384817427959224520

`A129308(n+1)+A063775((n+1)²)`
-/

namespace A239930.P17384817427959224520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) + A063775 ((n + 1) ^ 2)

end

end A239930.P17384817427959224520

namespace A239930

/-- `A129308(n+1)+A063775((n+1)²)` -/
def P17384817427959224520.Spec : Prop :=
  ∀ n, P17384817427959224520.a n = A239930 (n + 1)

end A239930

/-!
# A239934: Triangle read by rows in which row n lists the parts of the symmetric representation of sigma(4n).

The programs for A239934, there is no canonical definition to state claims against.
-/

/-! ## A239934.P12873138200735071493

`A339583(2*(A062399(n)+1))`
-/

namespace A239934.P12873138200735071493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339583 (2 * (A062399 n + 1)).toNat

end

end A239934.P12873138200735071493

/-! ## A239934.P546580127198059116

`A241559(4*A254650(n+1))`
-/

namespace A239934.P546580127198059116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241559 (4 * A254650 (n + 1)).toNat

end

end A239934.P546580127198059116

/-! ## A239934.P8360290136537736297

`A339583(A062399(n)+2+n)`
-/

namespace A239934.P8360290136537736297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339583 (A062399 n + 2 + (n : ℤ)).toNat

end

end A239934.P8360290136537736297

/-! ## A239934.P1300398082860451134

`A339583(2*(n+1))^A339628(n)!`
-/

namespace A239934.P1300398082860451134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339583 (2 * (n + 1)) ^ Nat.factorial (A339628 n).toNat

end

end A239934.P1300398082860451134

/-! ## A239934.P16889345954234020612

`A062069(A110286(n))`
-/

namespace A239934.P16889345954234020612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A110286 n).toNat

end

end A239934.P16889345954234020612

/-!
# A239935: Numbers k such that DigitSum(3^k) > DigitSum(3^(k+1)).

The programs for A239935, the canonical program `A239935.P844760797483781974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239935 has offset 1).

The definition of A239935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239935.P844760797483781974

`lt[Δ[A004166(n)], 0]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239935

/-- `lt[Δ[A004166(n)], 0]` -/
def P844760797483781974.Spec : Prop :=
  ∀ n, (P844760797483781974.a n : ℤ) = A239935 (n + 1)

theorem P844760797483781974.correct : P844760797483781974.Spec := by
  intro n
  simp only [A239935, Nat.add_sub_cancel]

end A239935

/-! ## A239935.P15871034690093572371

`lt[Δ[A292995(n)], 0]`
-/

namespace A239935.P15871034690093572371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239935.P15871034690093572371

namespace A239935

/-- `lt[Δ[A292995(n)], 0]` -/
def P15871034690093572371.Spec : Prop :=
  ∀ n, (P15871034690093572371.a n : ℤ) = A239935 (n + 1)

end A239935

/-! ## A239935.P7531929975335695307

`lt[ratio[A004166(n)], A057427(n)]`
-/

namespace A239935.P7531929975335695307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A239935.P7531929975335695307

namespace A239935

/-- `lt[ratio[A004166(n)], A057427(n)]` -/
def P7531929975335695307.Spec : Prop :=
  ∀ n, (P7531929975335695307.a n : ℤ) = A239935 (n + 1)

end A239935

/-! ## A239935.P14478253167948704458

`lt[A004166(n+1), A004166(n)]`
-/

namespace A239935.P14478253167948704458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239935.P14478253167948704458

namespace A239935

/-- `lt[A004166(n+1), A004166(n)]` -/
def P14478253167948704458.Spec : Prop :=
  ∀ n, (P14478253167948704458.a n : ℤ) = A239935 (n + 1)

theorem P14478253167948704458.correct : P14478253167948704458.Spec := by
  intro n
  simp only [A239935, Nat.add_sub_cancel, A239935.P14478253167948704458.f1, A239935.P14478253167948704458.f2, A239935.P14478253167948704458.a, A239935.P844760797483781974.f2, A239935.P844760797483781974.f1, A239935.P844760797483781974.f3, A239935.P844760797483781974.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A239935

/-! ## A239935.P959240281204315251

`lt[A292995(n+1), A292995(n)]`
-/

namespace A239935.P959240281204315251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239935.P959240281204315251

namespace A239935

/-- `lt[A292995(n+1), A292995(n)]` -/
def P959240281204315251.Spec : Prop :=
  ∀ n, (P959240281204315251.a n : ℤ) = A239935 (n + 1)

end A239935

/-!
# A239936: Least k > 0 such that p(k)+q(n) is prime, where p(n) is the number of partitions of n and q(n) is the number of strict partitions of n.

The programs for A239936, there is no canonical definition to state claims against.
-/

/-! ## A239936.P214323815378153931

`A240545(A000009(n))`
-/

namespace A239936.P214323815378153931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A000009 n).toNat

end

end A239936.P214323815378153931

/-! ## A239936.P8241654013229208146

`A240545(abs(A081360(n)))`
-/

namespace A239936.P8241654013229208146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 |A081360 n|.toNat

end

end A239936.P8241654013229208146

/-! ## A239936.P16198648907937316524

`A240545(A054242(∑[n]))`
-/

namespace A239936.P16198648907937316524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A054242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A239936.P16198648907937316524

/-! ## A239936.P3483742854626916891

`A240545(∑[A087897(n)])`
-/

namespace A239936.P3483742854626916891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239936.P3483742854626916891

/-! ## A239936.P10079546882042929730

`A240545(A284593(∑[n]))`
-/

namespace A239936.P10079546882042929730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A284593 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A239936.P10079546882042929730

/-! ## A239936.P14545557136968244767

`A240545(A111133(n)+1)`
-/

namespace A239936.P14545557136968244767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A111133 n + 1).toNat

end

end A239936.P14545557136968244767

/-! ## A239936.P7180371219369755880

`A240545(A194543(A014206(n)/2))`
-/

namespace A239936.P7180371219369755880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A194543 (SequenceMachineLib.roundAway ((A014206 n : ℚ) / 2)).toNat).toNat

end

end A239936.P7180371219369755880

/-! ## A239936.P13964138636866536554

`A240545(lcm(A020985(n), A081360(n)))`
-/

namespace A239936.P13964138636866536554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (Int.lcm (A020985 n) (A081360 n))

end

end A239936.P13964138636866536554

/-!
# A239937: Numbers k such that digsum(k^2) > digsum((k+1)^2).

The programs for A239937, the canonical program `A239937.P16644113360716350106` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239937 has offset 1).

The definition of A239937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239937.P16644113360716350106

`lt[Δ[A004159(n)], 0]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A239937

/-- `lt[Δ[A004159(n)], 0]` -/
def P16644113360716350106.Spec : Prop :=
  ∀ n, (P16644113360716350106.a n : ℤ) = A239937 (n + 1)

theorem P16644113360716350106.correct : P16644113360716350106.Spec := by
  intro n
  simp only [A239937, Nat.add_sub_cancel]

end A239937

/-! ## A239937.P293640841931218464

`lt[A240752(n+1), 0]`
-/

namespace A239937.P293640841931218464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239937.P293640841931218464

namespace A239937

/-- `lt[A240752(n+1), 0]` -/
def P293640841931218464.Spec : Prop :=
  ∀ n, (P293640841931218464.a n : ℤ) = A239937 (n + 1)

theorem P293640841931218464.correct : P293640841931218464.Spec := by
  intro n
  simp only [A239937, Nat.add_sub_cancel, A239937.P293640841931218464.f1, A239937.P293640841931218464.f2, A239937.P293640841931218464.a, A239937.P16644113360716350106.f2, A239937.P16644113360716350106.f1, A239937.P16644113360716350106.f3, A239937.P16644113360716350106.a, A004159, A004159.P12894520007403696170.a, A240752, A240752.P1774461778050441165.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239937

/-! ## A239937.P6446537448488230944

`lt[A004159(n+1), A004159(n)]`
-/

namespace A239937.P6446537448488230944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239937.P6446537448488230944

namespace A239937

/-- `lt[A004159(n+1), A004159(n)]` -/
def P6446537448488230944.Spec : Prop :=
  ∀ n, (P6446537448488230944.a n : ℤ) = A239937 (n + 1)

theorem P6446537448488230944.correct : P6446537448488230944.Spec := by
  intro n
  simp only [A239937, Nat.add_sub_cancel, A239937.P6446537448488230944.f1, A239937.P6446537448488230944.f2, A239937.P6446537448488230944.a, A239937.P16644113360716350106.f2, A239937.P16644113360716350106.f1, A239937.P16644113360716350106.f3, A239937.P16644113360716350106.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A239937

/-! ## A239937.P1265618449503914246

`lt[Δ[∑{digits}[n², #]], 0]`
-/

namespace A239937.P1265618449503914246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A239937.P1265618449503914246

namespace A239937

/-- `lt[Δ[∑{digits}[n², #]], 0]` -/
def P1265618449503914246.Spec : Prop :=
  ∀ n, (P1265618449503914246.a n : ℤ) = A239937 (n + 1)

end A239937

/-! ## A239937.P5405944257159121676

`lt[Δ[∑{digits}[A000290(n), #]]+n, n]`
-/

namespace A239937.P5405944257159121676
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A239937.P5405944257159121676

namespace A239937

/-- `lt[Δ[∑{digits}[A000290(n), #]]+n, n]` -/
def P5405944257159121676.Spec : Prop :=
  ∀ n, (P5405944257159121676.a n : ℤ) = A239937 (n + 1)

end A239937

/-! ## A239937.P17183593983443421855

`lt[Δ[A071317(n)], A268227(5*n)]`
-/

namespace A239937.P17183593983443421855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268227 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A239937.P17183593983443421855

namespace A239937

/-- `lt[Δ[A071317(n)], A268227(5*n)]` -/
def P17183593983443421855.Spec : Prop :=
  ∀ n, (P17183593983443421855.a n : ℤ) = A239937 (n + 1)

end A239937

/-!
# A239940: Numbers k such that phi(k) - k = phi(k') - k', where k' is the arithmetic derivative of k and phi(k) is the Euler totient function.

The programs for A239940, there is no canonical definition to state claims against.
-/

/-! ## A239940.P5662425850957537923

`eq[A083904(n+1), A300712(n)]`
-/

namespace A239940.P5662425850957537923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239940.P5662425850957537923

/-! ## A239940.P14834069691521735310

`∑[A002260(∑[A101911(2*n)])]`
-/

namespace A239940.P14834069691521735310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101911 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239940.P14834069691521735310

/-!
# A239941: Primes p which are floor of Root-mean-cube (RMC) of prime(n), prime(n+1) and prime(n+2).

The programs for A239941, there is no canonical definition to state claims against.
-/

/-! ## A239941.P8560703109461453766

`A133261(A392868(n+2))`
-/

namespace A239941.P8560703109461453766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133261 (A392868 (n + 2)).toNat

end

end A239941.P8560703109461453766

/-!
# A239942: a(n) = prime(n)! - prime(n - 1)!.

The programs for A239942, the canonical program `A239942.P6709003355087772487` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239942 has offset 2).

The definition of A239942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)!-A000040(n+1)!` (program `A239942.P6709003355087772487`, by `A239942.P6709003355087772487.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239942.P985275361702822978

`A039716(n+2)-A039716(n+1)`
-/

namespace A239942.P985275361702822978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 2) - A039716 (n + 1)

end

end A239942.P985275361702822978

namespace A239942

/-- `A039716(n+2)-A039716(n+1)` -/
def P985275361702822978.Spec : Prop :=
  ∀ n, P985275361702822978.a n = A239942 (n + 2)

end A239942

/-! ## A239942.P6709003355087772487

`A000040(n+2)!-A000040(n+1)!`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239942

/-- `A000040(n+2)!-A000040(n+1)!` -/
def P6709003355087772487.Spec : Prop :=
  ∀ n, P6709003355087772487.a n = A239942 (n + 2)

theorem P6709003355087772487.correct : P6709003355087772487.Spec := by
  intro n
  simp only [A239942, Nat.add_sub_cancel]

end A239942

/-! ## A239942.P462948344322916740

`Δ[A039716(n+1)]`
-/

namespace A239942.P462948344322916740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239942.P462948344322916740

namespace A239942

/-- `Δ[A039716(n+1)]` -/
def P462948344322916740.Spec : Prop :=
  ∀ n, P462948344322916740.a n = A239942 (n + 2)

theorem P462948344322916740.correct : P462948344322916740.Spec := by
  intro n
  simp only [A239942, Nat.add_sub_cancel, A239942.P462948344322916740.f1, A239942.P462948344322916740.a, A239942.P6709003355087772487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039716, A039716.P11033590145453247559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239942

/-! ## A239942.P5927340949280907640

`Δ[A139159(n+1)]`
-/

namespace A239942.P5927340949280907640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239942.P5927340949280907640

namespace A239942

/-- `Δ[A139159(n+1)]` -/
def P5927340949280907640.Spec : Prop :=
  ∀ n, P5927340949280907640.a n = A239942 (n + 2)

theorem P5927340949280907640.correct : P5927340949280907640.Spec := by
  intro n
  simp only [A239942, Nat.add_sub_cancel, A239942.P5927340949280907640.f1, A239942.P5927340949280907640.a, A239942.P6709003355087772487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139159, A139159.P7155877922104016499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239942

/-! ## A239942.P11658490522767151182

`Δ[A000040(n+1)!]`
-/

namespace A239942.P11658490522767151182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239942.P11658490522767151182

namespace A239942

/-- `Δ[A000040(n+1)!]` -/
def P11658490522767151182.Spec : Prop :=
  ∀ n, P11658490522767151182.a n = A239942 (n + 2)

theorem P11658490522767151182.correct : P11658490522767151182.Spec := by
  intro n
  simp only [A239942, Nat.add_sub_cancel, A239942.P11658490522767151182.f1, A239942.P11658490522767151182.a, A239942.P6709003355087772487.a, SequenceMachineLib.memo_apply]

end A239942

/-!
# A239943: Fixed points of the permutations A239965 and A238862.

The programs for A239943, there is no canonical definition to state claims against.
-/

/-! ## A239943.P6132678502974035405

`record[gcd(n+1, A238862(n+1))]`
-/

namespace A239943.P6132678502974035405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A238862 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239943.P6132678502974035405

/-! ## A239943.P16730061618529661072

`eq[n+1, A239965(n+1)]+1`
-/

namespace A239943.P16730061618529661072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239943.P16730061618529661072

/-! ## A239943.P17722174263460259721

`record[gcd(A000027(n+1), A239965(n+1))]`
-/

namespace A239943.P17722174263460259721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A239965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239943.P17722174263460259721

/-! ## A239943.P5956688380213897050

`eq[A018252(n+1), A240024(n+1)]+1`
-/

namespace A239943.P5956688380213897050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239943.P5956688380213897050

/-! ## A239943.P8573559814025527077

`A238862(eq[n+1, A238862(n+1)]+1)`
-/

namespace A239943.P8573559814025527077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239943.P8573559814025527077

/-!
# A239945: Number of partitions of n containing the number of distinct parts as a part.

The programs for A239945, there is no canonical definition to state claims against.
-/

/-! ## A239945.P6152689017630014825

`A241377(n)+A241378(n)`
-/

namespace A239945.P6152689017630014825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + A241378 n

end

end A239945.P6152689017630014825

/-! ## A239945.P6858865403014349756

`A241387(n)+A241389(n)`
-/

namespace A239945.P6858865403014349756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + A241389 n

end

end A239945.P6858865403014349756

/-! ## A239945.P13614323135999101904

`A241381(n)-A241379(n)`
-/

namespace A239945.P13614323135999101904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241381 n - A241379 n

end

end A239945.P13614323135999101904

/-! ## A239945.P13175146896849019344

`A241391(n)-A241388(n)`
-/

namespace A239945.P13175146896849019344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241391 n - A241388 n

end

end A239945.P13175146896849019344

/-! ## A239945.P6687487590301780614

`A000041(n)-(A241390(n)+A241388(n))`
-/

namespace A239945.P6687487590301780614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241390 n + A241388 n)

end

end A239945.P6687487590301780614

/-! ## A239945.P3121238114816279588

`A000041(n)-(A241380(n)+A241379(n))`
-/

namespace A239945.P3121238114816279588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241380 n + A241379 n)

end

end A239945.P3121238114816279588

/-! ## A239945.P6039221262397202421

`A241442(n)+A241443(n)`
-/

namespace A239945.P6039221262397202421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + A241443 n

end

end A239945.P6039221262397202421

/-! ## A239945.P7773241094104671869

`A241410(n)+A241409(n)`
-/

namespace A239945.P7773241094104671869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241410 n + A241409 n

end

end A239945.P7773241094104671869

/-! ## A239945.P14019220944975823128

`A000041(n)-(A241445(n)+A241444(n))`
-/

namespace A239945.P14019220944975823128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241445 n + A241444 n)

end

end A239945.P14019220944975823128

/-! ## A239945.P5176575252771560353

`A241446(n)-A241444(n)`
-/

namespace A239945.P5176575252771560353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241446 n - A241444 n

end

end A239945.P5176575252771560353

/-!
# A239946: Number of partitions of n not containing the number of distinct parts as a part.

The programs for A239946, there is no canonical definition to state claims against.
-/

/-! ## A239946.P17727345579204642809

`A241380(n)+A241379(n)`
-/

namespace A239946.P17727345579204642809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241380 n + A241379 n

end

end A239946.P17727345579204642809

/-! ## A239946.P11465279908815802812

`A241390(n)+A241388(n)`
-/

namespace A239946.P11465279908815802812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241390 n + A241388 n

end

end A239946.P11465279908815802812

/-! ## A239946.P9656303645889217492

`A241412(n)+A241411(n)`
-/

namespace A239946.P9656303645889217492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241412 n + A241411 n

end

end A239946.P9656303645889217492

/-! ## A239946.P6447913476578292206

`A241445(n)+A241444(n)`
-/

namespace A239946.P6447913476578292206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241445 n + A241444 n

end

end A239946.P6447913476578292206

/-! ## A239946.P10867296117553752362

`A000041(n)-A239945(n)`
-/

namespace A239946.P10867296117553752362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239945 n

end

end A239946.P10867296117553752362

/-!
# A239947: Number of partitions of n containing 2*h as a part, where h is the number of distinct parts.

The programs for A239947, there is no canonical definition to state claims against.
-/

/-! ## A239947.P11810118353900807031

`Δ[A137734(A001590(n)*A123578(n))]`
-/

namespace A239947.P11810118353900807031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A001590 n * A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239947.P11810118353900807031

/-!
# A239948: Number of partitions of n such that (number of distinct parts) < least part.

The programs for A239948, there is no canonical definition to state claims against.
-/

/-! ## A239948.P305632432059266112

`A000041(n)-A239952(n)`
-/

namespace A239948.P305632432059266112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239952 n

end

end A239948.P305632432059266112

/-! ## A239948.P1876576652976508503

`∑[A002865(n)]-A239952(n)`
-/

namespace A239948.P1876576652976508503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239952 n

end

end A239948.P1876576652976508503

/-! ## A239948.P12899010975830682867

`A000041(n)-(A239951(n)+A239950(n))`
-/

namespace A239948.P12899010975830682867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239951 n + A239950 n)

end

end A239948.P12899010975830682867

/-! ## A239948.P5519995397493166097

`A239949(n)-A239950(n)`
-/

namespace A239948.P5519995397493166097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 n - A239950 n

end

end A239948.P5519995397493166097

/-! ## A239948.P424138276756290329

`A239949(n)+A239951(n)-A239952(n)`
-/

namespace A239948.P424138276756290329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 n + (A239951 n - A239952 n)

end

end A239948.P424138276756290329

/-!
# A239949: Number of partitions of n such that (number of distinct parts) <= least part.

The programs for A239949, there is no canonical definition to state claims against.
-/

/-! ## A239949.P2300470066707390298

`A239950(n)+A239948(n)`
-/

namespace A239949.P2300470066707390298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239950 n + A239948 n

end

end A239949.P2300470066707390298

/-! ## A239949.P18093103087732804959

`A000041(n)-A239951(n)`
-/

namespace A239949.P18093103087732804959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239951 n

end

end A239949.P18093103087732804959

/-! ## A239949.P14707557310379050640

`∑[A002865(n)]-A239951(n)`
-/

namespace A239949.P14707557310379050640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239951 n

end

end A239949.P14707557310379050640

/-! ## A239949.P10137689375849353820

`A000065(n)+1-A239951(n)`
-/

namespace A239949.P10137689375849353820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239951 n)

end

end A239949.P10137689375849353820

/-! ## A239949.P11835926458237367329

`A119620(2*n)-A239951(n)`
-/

namespace A239949.P11835926458237367329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A239951 n

end

end A239949.P11835926458237367329

/-! ## A239949.P14646559864490273707

`A133041(n)-(A239951(n)+n)`
-/

namespace A239949.P14646559864490273707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A239951 n + (n : ℤ))

end

end A239949.P14646559864490273707

/-! ## A239949.P14991801292085652512

`A000041(n)+A239950(n)-A239952(n)`
-/

namespace A239949.P14991801292085652512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239950 n - A239952 n)

end

end A239949.P14991801292085652512

/-! ## A239949.P1806021823960738387

`A239948(n)+A239952(n)-A239951(n)`
-/

namespace A239949.P1806021823960738387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239948 n + (A239952 n - A239951 n)

end

end A239949.P1806021823960738387

/-! ## A239949.P13299752648693617000

`A163295(n+1)-(A239951(n)+A029837(n+1))`
-/

namespace A239949.P13299752648693617000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (n + 1) - (A239951 n + A029837 (n + 1))

end

end A239949.P13299752648693617000

/-!
# A239950: Number of partitions of n such that (number of distinct parts) = least part.

The programs for A239950, there is no canonical definition to state claims against.
-/

/-! ## A239950.P18267982371573917258

`A239952(n)-A239951(n)`
-/

namespace A239950.P18267982371573917258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239952 n - A239951 n

end

end A239950.P18267982371573917258

/-! ## A239950.P3153166192041625354

`A000041(n)-(A239951(n)+A239948(n))`
-/

namespace A239950.P3153166192041625354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239951 n + A239948 n)

end

end A239950.P3153166192041625354

/-! ## A239950.P9261164175994573493

`A133041(n)-(A239951(n)+A239948(n)+n)`
-/

namespace A239950.P9261164175994573493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A239951 n + A239948 n + (n : ℤ))

end

end A239950.P9261164175994573493

/-! ## A239950.P8754128309092335268

`A239949(n)-A239948(n)`
-/

namespace A239950.P8754128309092335268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 n - A239948 n

end

end A239950.P8754128309092335268

/-! ## A239950.P10400053563349264632

`A239949(n)+A239952(n)-A000041(n)`
-/

namespace A239950.P10400053563349264632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 n + (A239952 n - A000041 n)

end

end A239950.P10400053563349264632

/-!
# A239951: Number of partitions of n such that (number of distinct parts) > least part.

The programs for A239951, there is no canonical definition to state claims against.
-/

/-! ## A239951.P16594133422455186989

`A239952(n)-A239950(n)`
-/

namespace A239951.P16594133422455186989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239952 n - A239950 n

end

end A239951.P16594133422455186989

/-! ## A239951.P9662389027609177849

`A000041(n)-(A239950(n)+A239948(n))`
-/

namespace A239951.P9662389027609177849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239950 n + A239948 n)

end

end A239951.P9662389027609177849

/-! ## A239951.P5007182084455415062

`A000041(n)-A239949(n)`
-/

namespace A239951.P5007182084455415062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239949 n

end

end A239951.P5007182084455415062

/-! ## A239951.P17571762471446028813

`A000065(n)+1-A239949(n)`
-/

namespace A239951.P17571762471446028813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239949 n)

end

end A239951.P17571762471446028813

/-! ## A239951.P14803106127944651269

`A239948(n)+A239952(n)-A239949(n)`
-/

namespace A239951.P14803106127944651269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239948 n + (A239952 n - A239949 n)

end

end A239951.P14803106127944651269

/-! ## A239951.P11668002087987403534

`A152146(A046092(n))-A239949(n)`
-/

namespace A239951.P11668002087987403534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A046092 n).toNat - A239949 n

end

end A239951.P11668002087987403534

/-!
# A239952: Number of partitions of n such that (number of distinct parts) >= least part.

The programs for A239952, there is no canonical definition to state claims against.
-/

/-! ## A239952.P5617882069675603800

`A000041(n)-A239948(n)`
-/

namespace A239952.P5617882069675603800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239948 n

end

end A239952.P5617882069675603800

/-! ## A239952.P12932788327846064572

`∑[A002865(n)]-A239948(n)`
-/

namespace A239952.P12932788327846064572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239948 n

end

end A239952.P12932788327846064572

/-! ## A239952.P13183772161675023098

`A000065(n)+1-A239948(n)`
-/

namespace A239952.P13183772161675023098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239948 n)

end

end A239952.P13183772161675023098

/-! ## A239952.P17676076238826152622

`A133041(n)-(A239948(n)+n)`
-/

namespace A239952.P17676076238826152622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A239948 n + (n : ℤ))

end

end A239952.P17676076238826152622

/-! ## A239952.P14035314691215939626

`A239951(n)+A239950(n)`
-/

namespace A239952.P14035314691215939626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239951 n + A239950 n

end

end A239952.P14035314691215939626

/-! ## A239952.P8887944108221739127

`A000041(n)+A239950(n)-A239949(n)`
-/

namespace A239952.P8887944108221739127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239950 n - A239949 n)

end

end A239952.P8887944108221739127

/-! ## A239952.P2493863754831314545

`A239949(n)+A239951(n)-A239948(n)`
-/

namespace A239952.P2493863754831314545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239949 n + (A239951 n - A239948 n)

end

end A239952.P2493863754831314545

/-!
# A239953: Number of partitions of n such that twice the least part is the number of distinct parts.

The programs for A239953, there is no canonical definition to state claims against.
-/

/-! ## A239953.P14936589716960054161

`∑[A001221(A047411(A152046(n)))]`
-/

namespace A239953.P14936589716960054161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A047411 (A152046 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239953.P14936589716960054161

/-! ## A239953.P14265984317709215735

`∑[A319439(2^n)-1]`
-/

namespace A239953.P14265984317709215735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319439 (2 ^ n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239953.P14265984317709215735

/-! ## A239953.P6439449574323587707

`∑{e}[ceil(3^(n-1)), A002541(#)]`
-/

namespace A239953.P6439449574323587707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002541 (Nat.factorization (f1 n).natAbs p)

end

end A239953.P6439449574323587707

/-! ## A239953.P15536201616491790513

`∑[∑{d}[A010052(∑[n]²)-n, n%#]]`
-/

namespace A239953.P15536201616491790513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, n % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239953.P15536201616491790513

/-! ## A239953.P14112683273584100168

`∑[∑{d}[A000007(2^n)+n-1, n²%#]]`
-/

namespace A239953.P14112683273584100168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 ^ n) + ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, n ^ 2 % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239953.P14112683273584100168

/-!
# A239954: Number of partitions p of n such that (number of distinct parts of p) < max(p) - min(p).

The programs for A239954, there is no canonical definition to state claims against.
-/

/-! ## A239954.P10308911945275243562

`A000041(n)-A239958(n)`
-/

namespace A239954.P10308911945275243562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239958 n

end

end A239954.P10308911945275243562

/-! ## A239954.P9222629869393570053

`A239955(n)-A239956(n)`
-/

namespace A239954.P9222629869393570053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239955 n - A239956 n

end

end A239954.P9222629869393570053

/-! ## A239954.P692198830234980365

`∑[A002865(n)]-A239958(n)`
-/

namespace A239954.P692198830234980365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239958 n

end

end A239954.P692198830234980365

/-! ## A239954.P13590702557274590897

`A000065(n)+1-A239958(n)`
-/

namespace A239954.P13590702557274590897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239958 n)

end

end A239954.P13590702557274590897

/-! ## A239954.P16998159388101442303

`A000041(n)-(A239956(n)+A034296(n))`
-/

namespace A239954.P16998159388101442303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239956 n + A034296 n)

end

end A239954.P16998159388101442303

/-! ## A239954.P10324851383925300005

`A239955(n)+A034296(n)-A239958(n)`
-/

namespace A239954.P10324851383925300005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239955 n + A034296 n - A239958 n

end

end A239954.P10324851383925300005

/-!
# A239955: Number of partitions p of n such that (number of distinct parts of p) <= max(p) - min(p).

The programs for A239955, there is no canonical definition to state claims against.
-/

/-! ## A239955.P7424620787641554338

`A000041(n)-A034296(n)`
-/

namespace A239955.P7424620787641554338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A034296 n

end

end A239955.P7424620787641554338

/-! ## A239955.P13471770628974084248

`∑[A002865(n)]-A034296(n)`
-/

namespace A239955.P13471770628974084248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034296 n

end

end A239955.P13471770628974084248

/-! ## A239955.P10641764638518197675

`A119620(2*n)-A034296(n)`
-/

namespace A239955.P10641764638518197675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A034296 n

end

end A239955.P10641764638518197675

/-! ## A239955.P16706971638537649868

`sqrt(A001255(n))-A034296(n)`
-/

namespace A239955.P16706971638537649868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A034296 n : ℝ)

end

end A239955.P16706971638537649868

/-! ## A239955.P1516154639927198221

`A100824(2*n)-A034296(n)`
-/

namespace A239955.P1516154639927198221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A034296 n

end

end A239955.P1516154639927198221

/-! ## A239955.P16520353534816871167

`A365004(A000217(n))-A034296(n)`
-/

namespace A239955.P16520353534816871167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (A000217 n).toNat - A034296 n

end

end A239955.P16520353534816871167

/-! ## A239955.P7141787172901035190

`A000041(n)+A239956(n)-A239958(n)`
-/

namespace A239955.P7141787172901035190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239956 n - A239958 n)

end

end A239955.P7141787172901035190

/-! ## A239955.P385006190962818450

`A239956(n)+A239954(n)`
-/

namespace A239955.P385006190962818450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + A239954 n

end

end A239955.P385006190962818450

/-! ## A239955.P12280152778787301161

`A239958(n)+A239954(n)-A034296(n)`
-/

namespace A239955.P12280152778787301161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n + A239954 n - A034296 n

end

end A239955.P12280152778787301161

/-!
# A239956: Number of partitions p of n such that (number of distinct parts of p) = max(p) - min(p).

The programs for A239956, there is no canonical definition to state claims against.
-/

/-! ## A239956.P9689867323334466884

`A239958(n)-A034296(n)`
-/

namespace A239956.P9689867323334466884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - A034296 n

end

end A239956.P9689867323334466884

/-! ## A239956.P3200390316514953526

`A239955(n)+A239958(n)-A000041(n)`
-/

namespace A239956.P3200390316514953526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239955 n + (A239958 n - A000041 n)

end

end A239956.P3200390316514953526

/-! ## A239956.P7993162640652468088

`A239958(n)-(A237665(n)+A194621(∑[n]))`
-/

namespace A239956.P7993162640652468088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A237665 n + A194621 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A239956.P7993162640652468088

/-! ## A239956.P7405047829199607422

`A239958(n)-(A238353(∑[n])+A237665(n))`
-/

namespace A239956.P7405047829199607422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A238353 (∑ j ∈ Finset.range (n + 1), f1 j) + A237665 n)

end

end A239956.P7405047829199607422

/-! ## A239956.P394817040726729973

`A239958(n)-(A032741(n)+A237665(n)+1)`
-/

namespace A239956.P394817040726729973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A032741 n + (A237665 n + 1))

end

end A239956.P394817040726729973

/-! ## A239956.P9665913936883625825

`A239958(n)-(A237665(n)+A000005(A028310(n)))`
-/

namespace A239956.P9665913936883625825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A237665 n + A000005 (A028310 n).toNat)

end

end A239956.P9665913936883625825

/-! ## A239956.P13077340310556124953

`A239958(n)-(A237665(n)+A048570(A000124(n)))`
-/

namespace A239956.P13077340310556124953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A237665 n + A048570 (A000124 n).toNat)

end

end A239956.P13077340310556124953

/-! ## A239956.P13899304652150720023

`A239958(n)-(A237665(n)+A112329(A008574(n)))`
-/

namespace A239956.P13899304652150720023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A237665 n + A112329 (A008574 n).toNat)

end

end A239956.P13899304652150720023

/-! ## A239956.P9459915535861901950

`A239958(n)-(A320111(A257088(n))+A237665(n))`
-/

namespace A239956.P9459915535861901950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A320111 (A257088 n).toNat + A237665 n)

end

end A239956.P9459915535861901950

/-! ## A239956.P1581681262032559930

`A239958(n)-(A237665(n)+A000005(A000007(n)+n))`
-/

namespace A239956.P1581681262032559930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n - (A237665 n + A000005 (A000007 n + (n : ℤ)).toNat)

end

end A239956.P1581681262032559930

/-!
# A239958: Number of partitions p of n such that (number of distinct parts of p) >= max(p) - min(p).

The programs for A239958, there is no canonical definition to state claims against.
-/

/-! ## A239958.P8903189436845277554

`A239956(n)+A034296(n)`
-/

namespace A239958.P8903189436845277554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + A034296 n

end

end A239958.P8903189436845277554

/-! ## A239958.P6660670782140856402

`A000041(n)+A239956(n)-A239955(n)`
-/

namespace A239958.P6660670782140856402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239956 n - A239955 n)

end

end A239958.P6660670782140856402

/-! ## A239958.P8773370818409432282

`A239956(n)+A237665(n)+A194621(∑[n])`
-/

namespace A239958.P8773370818409432282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + (A237665 n + A194621 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A239958.P8773370818409432282

/-! ## A239958.P17510573838035130592

`A239956(n)+A238353(∑[n])+A237665(n)`
-/

namespace A239958.P17510573838035130592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + (A238353 (∑ j ∈ Finset.range (n + 1), f1 j) + A237665 n)

end

end A239958.P17510573838035130592

/-! ## A239958.P17654430125036484466

`A239956(n)+A032741(n)+A237665(n)+1`
-/

namespace A239958.P17654430125036484466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + (A032741 n + (A237665 n + 1))

end

end A239958.P17654430125036484466

/-! ## A239958.P9035095347039786224

`A000005(A028310(n))+A239956(n)+A237665(n)`
-/

namespace A239958.P9035095347039786224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat + (A239956 n + A237665 n)

end

end A239958.P9035095347039786224

/-! ## A239958.P5499217932988528969

`A048570(A000124(n))+A239956(n)+A237665(n)`
-/

namespace A239958.P5499217932988528969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A000124 n).toNat + (A239956 n + A237665 n)

end

end A239958.P5499217932988528969

/-! ## A239958.P10953105789554508607

`A112329(A008574(n))+A239956(n)+A237665(n)`
-/

namespace A239958.P10953105789554508607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A008574 n).toNat + (A239956 n + A237665 n)

end

end A239958.P10953105789554508607

/-! ## A239958.P2187271174233008369

`A237665(n)+A320111(A257088(n))+A239956(n)`
-/

namespace A239958.P2187271174233008369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + (A320111 (A257088 n).toNat + A239956 n)

end

end A239958.P2187271174233008369

/-! ## A239958.P10172730904822339465

`A239956(n)+A237665(n)+A000005(A000007(n)+n)`
-/

namespace A239958.P10172730904822339465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 n + (A237665 n + A000005 (A000007 n + (n : ℤ)).toNat)

end

end A239958.P10172730904822339465

/-!
# A239959: Number of partitions of n such that 2*(number of distinct parts) = number of parts.

The programs for A239959, there is no canonical definition to state claims against.
-/

/-! ## A239959.P5875735838833060

`A361394(n)-A237365(n)`
-/

namespace A239959.P5875735838833060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361394 n - A237365 n

end

end A239959.P5875735838833060

/-! ## A239959.P12793103681851874162

`A237363(n)-(A079025(A000217(n))-A361394(n))`
-/

namespace A239959.P12793103681851874162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 n - (A079025 (A000217 n).toNat - A361394 n)

end

end A239959.P12793103681851874162

/-! ## A239959.P5138939191526899735

`A237363(n)-A360254(n)`
-/

namespace A239959.P5138939191526899735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237363 n - A360254 n

end

end A239959.P5138939191526899735

/-! ## A239959.P14742167907053090988

`A000041(n)-(A360254(n)+A237365(n))`
-/

namespace A239959.P14742167907053090988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A360254 n + A237365 n)

end

end A239959.P14742167907053090988

/-! ## A239959.P15326220653903140392

`∑[A002865(n)]-A360254(n)-A237365(n)`
-/

namespace A239959.P15326220653903140392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360254 n - A237365 n

end

end A239959.P15326220653903140392

/-! ## A239959.P14322274504457066265

`A000065(n)+1-(A360254(n)+A237365(n))`
-/

namespace A239959.P14322274504457066265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A360254 n + A237365 n)

end

end A239959.P14322274504457066265

/-!
# A239964: Number of partitions of n such that (number of distinct parts) = maximal multiplicity of the parts.

The programs for A239964, there is no canonical definition to state claims against.
-/

/-! ## A239964.P18378828359123310458

`A240306(n)-A240305(n)`
-/

namespace A239964.P18378828359123310458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240306 n - A240305 n

end

end A239964.P18378828359123310458

/-! ## A239964.P8264796341557384614

`A240308(n)-A240309(n)`
-/

namespace A239964.P8264796341557384614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240308 n - A240309 n

end

end A239964.P8264796341557384614

/-! ## A239964.P1522629019850142671

`A000041(n)-(A240309(n)+A240305(n))`
-/

namespace A239964.P1522629019850142671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A240309 n + A240305 n)

end

end A239964.P1522629019850142671

/-! ## A239964.P12869066042392574089

`A240306(n)+A240308(n)-A000041(n)`
-/

namespace A239964.P12869066042392574089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240306 n + (A240308 n - A000041 n)

end

end A239964.P12869066042392574089

/-! ## A239964.P18287638504718314440

`A213598(n)-(A240309(n)+A240305(n))`
-/

namespace A239964.P18287638504718314440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A240309 n + A240305 n)

end

end A239964.P18287638504718314440

/-!
# A239966: Number of partitions of n such that (number of distinct parts) = minimal multiplicity of the parts.

The programs for A239966, there is no canonical definition to state claims against.
-/

/-! ## A239966.P17271499214055912231

`A394188(n)-A394189(n)`
-/

namespace A239966.P17271499214055912231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394188 n - A394189 n

end

end A239966.P17271499214055912231

/-!
# A239967: a(n) = a(n-1)*a(n-2) - a(n-3)*a(n-4), starting with 1,1,2,2.

The programs for A239967, the canonical program `A239967.P10031377280397991492` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239967 has offset 1).

The definition of A239967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)*a(n-4)` (program `A239967.P10031377280397991492`, by `A239967.P10031377280397991492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239967.P10031377280397991492

`a(n-1)*a(n-2)-a(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239967

/-- `a(n-1)*a(n-2)-a(n-3)*a(n-4)` -/
def P10031377280397991492.Spec : Prop :=
  ∀ n, P10031377280397991492.a n = A239967 (n + 1)

theorem P10031377280397991492.correct : P10031377280397991492.Spec := by
  intro n
  simp only [A239967, Nat.add_sub_cancel]

end A239967

/-! ## A239967.P11629880216990476448

`A348469(A051769(n+1))+A001302(n)`
-/

namespace A239967.P11629880216990476448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A051769 (n + 1)).toNat + A001302 n

end

end A239967.P11629880216990476448

namespace A239967

/-- `A348469(A051769(n+1))+A001302(n)` -/
def P11629880216990476448.Spec : Prop :=
  ∀ n, P11629880216990476448.a n = A239967 (n + 1)

end A239967

/-! ## A239967.P3441405910962456088

`A110655(A277039(n)+A228354(n+1))`
-/

namespace A239967.P3441405910962456088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A277039 n + A228354 (n + 1)).toNat

end

end A239967.P3441405910962456088

namespace A239967

/-- `A110655(A277039(n)+A228354(n+1))` -/
def P3441405910962456088.Spec : Prop :=
  ∀ n, P3441405910962456088.a n = A239967 (n + 1)

end A239967

/-! ## A239967.P10608232275664576590

`A008616(A351493(n)+A000217(n+2))`
-/

namespace A239967.P10608232275664576590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A351493 n + A000217 (n + 2)).toNat

end

end A239967.P10608232275664576590

namespace A239967

/-- `A008616(A351493(n)+A000217(n+2))` -/
def P10608232275664576590.Spec : Prop :=
  ∀ n, P10608232275664576590.a n = A239967 (n + 1)

end A239967

/-! ## A239967.P17329685700906228445

`A193513(n)*A300362(A112410(n+1))`
-/

namespace A239967.P17329685700906228445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 n * A300362 (A112410 (n + 1)).toNat

end

end A239967.P17329685700906228445

namespace A239967

/-- `A193513(n)*A300362(A112410(n+1))` -/
def P17329685700906228445.Spec : Prop :=
  ∀ n, P17329685700906228445.a n = A239967 (n + 1)

end A239967

/-!
# A239968: a(n) = 0 unless n is a nonprime A018252(k) then a(n) = k.

The programs for A239968, the canonical program `A239968.P9247355313622841393` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239968 has offset 1).

The definition of A239968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239968.P17733916551227044000

`A026233(n+1)-A049084(n+1)`
-/

namespace A239968.P17733916551227044000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - A049084 (n + 1)

end

end A239968.P17733916551227044000

namespace A239968

/-- `A026233(n+1)-A049084(n+1)` -/
def P17733916551227044000.Spec : Prop :=
  ∀ n, P17733916551227044000.a n = A239968 (n + 1)

theorem P17733916551227044000.correct : P17733916551227044000.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P17733916551227044000.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A026233, A026233.P9940021653241192436.a, A049084, A049084.P10934933317972537770.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P9247355313622841393

`A062298(n+1)*A005171(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239968

/-- `A062298(n+1)*A005171(n+1)` -/
def P9247355313622841393.Spec : Prop :=
  ∀ n, P9247355313622841393.a n = A239968 (n + 1)

theorem P9247355313622841393.correct : P9247355313622841393.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel]

end A239968

/-! ## A239968.P6345286976789644010

`A066246(n+1)-A010051(n+1)+1`
-/

namespace A239968.P6345286976789644010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) - A010051 (n + 1) + 1

end

end A239968.P6345286976789644010

namespace A239968

/-- `A066246(n+1)-A010051(n+1)+1` -/
def P6345286976789644010.Spec : Prop :=
  ∀ n, P6345286976789644010.a n = A239968 (n + 1)

theorem P6345286976789644010.correct : P6345286976789644010.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P6345286976789644010.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062298, A062298.P8226643735375377344.a, A066246, A066246.P11504023463901313022.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P10128030961945408459

`A066246(n+1)+A005171(n+1)`
-/

namespace A239968.P10128030961945408459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A005171 (n + 1)

end

end A239968.P10128030961945408459

namespace A239968

/-- `A066246(n+1)+A005171(n+1)` -/
def P10128030961945408459.Spec : Prop :=
  ∀ n, P10128030961945408459.a n = A239968 (n + 1)

theorem P10128030961945408459.correct : P10128030961945408459.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P10128030961945408459.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A062298, A062298.P8226643735375377344.a, A066246, A066246.P11504023463901313022.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P17635673535131064476

`A005171(n+1)*A022447(n+1)`
-/

namespace A239968.P17635673535131064476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A022447 (n + 1)

end

end A239968.P17635673535131064476

namespace A239968

/-- `A005171(n+1)*A022447(n+1)` -/
def P17635673535131064476.Spec : Prop :=
  ∀ n, P17635673535131064476.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P13129107901048659179

`A005171(n+1)*A026233(n+1)`
-/

namespace A239968.P13129107901048659179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A026233 (n + 1)

end

end A239968.P13129107901048659179

namespace A239968

/-- `A005171(n+1)*A026233(n+1)` -/
def P13129107901048659179.Spec : Prop :=
  ∀ n, P13129107901048659179.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P16564657287505489505

`A005171(n+1)*A062298(n+1)`
-/

namespace A239968.P16564657287505489505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A062298 (n + 1)

end

end A239968.P16564657287505489505

namespace A239968

/-- `A005171(n+1)*A062298(n+1)` -/
def P16564657287505489505.Spec : Prop :=
  ∀ n, P16564657287505489505.a n = A239968 (n + 1)

theorem P16564657287505489505.correct : P16564657287505489505.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P16564657287505489505.a, A239968.P9247355313622841393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239968

/-! ## A239968.P15612766032442458091

`A005171(n+1)*A086936(n+1)`
-/

namespace A239968.P15612766032442458091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A086936 (n + 1)

end

end A239968.P15612766032442458091

namespace A239968

/-- `A005171(n+1)*A086936(n+1)` -/
def P15612766032442458091.Spec : Prop :=
  ∀ n, P15612766032442458091.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P4883096253980698273

`A026233(n+1)%A085608(n+1)`
-/

namespace A239968.P4883096253980698273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026233 (n + 1)) (A085608 (n + 1))

end

end A239968.P4883096253980698273

namespace A239968

/-- `A026233(n+1)%A085608(n+1)` -/
def P4883096253980698273.Spec : Prop :=
  ∀ n, P4883096253980698273.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P8763194143266994006

`C(A022447(n+1), A089026(n+1))`
-/

namespace A239968.P8763194143266994006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A022447 (n + 1)).toNat (A089026 (n + 1)).toNat

end

end A239968.P8763194143266994006

namespace A239968

/-- `C(A022447(n+1), A089026(n+1))` -/
def P8763194143266994006.Spec : Prop :=
  ∀ n, (P8763194143266994006.a n : ℤ) = A239968 (n + 1)

end A239968

/-! ## A239968.P7100044110539752192

`C(A062298(n+1), A089026(n+1))`
-/

namespace A239968.P7100044110539752192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062298 (n + 1)).toNat (A089026 (n + 1)).toNat

end

end A239968.P7100044110539752192

namespace A239968

/-- `C(A062298(n+1), A089026(n+1))` -/
def P7100044110539752192.Spec : Prop :=
  ∀ n, (P7100044110539752192.a n : ℤ) = A239968 (n + 1)

end A239968

/-! ## A239968.P14074869776780024851

`(A065855(n+1)+1)*A005171(n+1)`
-/

namespace A239968.P14074869776780024851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065855 (n + 1) + 1) * A005171 (n + 1)

end

end A239968.P14074869776780024851

namespace A239968

/-- `(A065855(n+1)+1)*A005171(n+1)` -/
def P14074869776780024851.Spec : Prop :=
  ∀ n, P14074869776780024851.a n = A239968 (n + 1)

theorem P14074869776780024851.correct : P14074869776780024851.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P14074869776780024851.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P7074751095163076228

`(A066136(n+1)+1)*A005171(n+1)`
-/

namespace A239968.P7074751095163076228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066136 (n + 1) + 1) * A005171 (n + 1)

end

end A239968.P7074751095163076228

namespace A239968

/-- `(A066136(n+1)+1)*A005171(n+1)` -/
def P7074751095163076228.Spec : Prop :=
  ∀ n, P7074751095163076228.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P13834572201648489187

`(1-A010051(n+1))*A026233(n+1)`
-/

namespace A239968.P13834572201648489187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A026233 (n + 1)

end

end A239968.P13834572201648489187

namespace A239968

/-- `(1-A010051(n+1))*A026233(n+1)` -/
def P13834572201648489187.Spec : Prop :=
  ∀ n, P13834572201648489187.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P2670647163415067553

`(1-A010051(n+1))*A062298(n+1)`
-/

namespace A239968.P2670647163415067553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A062298 (n + 1)

end

end A239968.P2670647163415067553

namespace A239968

/-- `(1-A010051(n+1))*A062298(n+1)` -/
def P2670647163415067553.Spec : Prop :=
  ∀ n, P2670647163415067553.a n = A239968 (n + 1)

theorem P2670647163415067553.correct : P2670647163415067553.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P2670647163415067553.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P12141377401115085096

`C(A022447(n+1), A049084(n+1)+1)`
-/

namespace A239968.P12141377401115085096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A022447 (n + 1)).toNat (A049084 (n + 1) + 1).toNat

end

end A239968.P12141377401115085096

namespace A239968

/-- `C(A022447(n+1), A049084(n+1)+1)` -/
def P12141377401115085096.Spec : Prop :=
  ∀ n, (P12141377401115085096.a n : ℤ) = A239968 (n + 1)

end A239968

/-! ## A239968.P6662264571221719085

`C(A065855(n+1)+1, A089026(n+1))`
-/

namespace A239968.P6662264571221719085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065855 (n + 1) + 1).toNat (A089026 (n + 1)).toNat

end

end A239968.P6662264571221719085

namespace A239968

/-- `C(A065855(n+1)+1, A089026(n+1))` -/
def P6662264571221719085.Spec : Prop :=
  ∀ n, (P6662264571221719085.a n : ℤ) = A239968 (n + 1)

end A239968

/-! ## A239968.P1436666859834007479

`A014684(n+1)+A066246(n+1)-n`
-/

namespace A239968.P1436666859834007479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + (A066246 (n + 1) - (n : ℤ))

end

end A239968.P1436666859834007479

namespace A239968

/-- `A014684(n+1)+A066246(n+1)-n` -/
def P1436666859834007479.Spec : Prop :=
  ∀ n, P1436666859834007479.a n = A239968 (n + 1)

theorem P1436666859834007479.correct : P1436666859834007479.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P1436666859834007479.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A014684, A014684.P14857736222881351984.a, A062298, A062298.P8226643735375377344.a, A066246, A066246.P11504023463901313022.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-! ## A239968.P15870886859690551985

`(A014684(n+1)-n)*A022447(n+1)`
-/

namespace A239968.P15870886859690551985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) - (n : ℤ)) * A022447 (n + 1)

end

end A239968.P15870886859690551985

namespace A239968

/-- `(A014684(n+1)-n)*A022447(n+1)` -/
def P15870886859690551985.Spec : Prop :=
  ∀ n, P15870886859690551985.a n = A239968 (n + 1)

end A239968

/-! ## A239968.P16656770942239873587

`(A014684(n+1)-n)*A062298(n+1)`
-/

namespace A239968.P16656770942239873587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) - (n : ℤ)) * A062298 (n + 1)

end

end A239968.P16656770942239873587

namespace A239968

/-- `(A014684(n+1)-n)*A062298(n+1)` -/
def P16656770942239873587.Spec : Prop :=
  ∀ n, P16656770942239873587.a n = A239968 (n + 1)

theorem P16656770942239873587.correct : P16656770942239873587.Spec := by
  intro n
  simp only [A239968, Nat.add_sub_cancel, A239968.P16656770942239873587.a, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A014684, A014684.P14857736222881351984.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A239968

/-!
# A239973: Sequence, starting with 1, of increasing numbers such that both the numerator and the denominator of the abundancy index, sigma(n)/n are strictly increasing.

The programs for A239973, there is no canonical definition to state claims against.
-/

/-! ## A239973.P11983951906834230681

`A239972(a(n-1))` with `a(0)=1`
-/

namespace A239973.P11983951906834230681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239972 (a (n - 1)).toNat

end

end A239973.P11983951906834230681

/-! ## A239973.P4199716961386894036

`A051444(record[A017665(n+1)])`
-/

namespace A239973.P4199716961386894036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239973.P4199716961386894036

/-! ## A239973.P13057929416439937418

`A070982(record[A017665(n+1)])`
-/

namespace A239973.P13057929416439937418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239973.P13057929416439937418

/-! ## A239973.P9228959564880273994

`A070982(record[A009242(n+1)/(n+1)])`
-/

namespace A239973.P9228959564880273994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A239973.P9228959564880273994

/-! ## A239973.P13797456887875871535

`A051444(record[A000203(A017666(n+1))])`
-/

namespace A239973.P13797456887875871535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239973.P13797456887875871535

/-!
# A239975: Least k>0 such that n^2 + (n+k)^2 is a square, or -1 if no such k exists.

The programs for A239975, there is no canonical definition to state claims against.
-/

/-! ## A239975.P9256643851448177568

`A076600(n+5)-(n+5)`
-/

namespace A239975.P9256643851448177568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076600 (n + 5) - (n + 5 : ℤ)

end

end A239975.P9256643851448177568

/-!
# A239976: Positions of ones in binary representation of log(2).

The programs for A239976, the canonical program `A239976.P10372821839735602561` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239976 has offset 1).

The definition of A239976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239976.P10372821839735602561

`eq[1, A068426(n)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239976

/-- `eq[1, A068426(n)]+1` -/
def P10372821839735602561.Spec : Prop :=
  ∀ n, (P10372821839735602561.a n : ℤ) = A239976 (n + 1)

theorem P10372821839735602561.correct : P10372821839735602561.Spec := by
  intro n
  simp only [A239976, Nat.add_sub_cancel]

end A239976

/-! ## A239976.P1187682102980674700

`floor(log2(A099974(n)))+1`
-/

namespace A239976.P1187682102980674700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A099974 n).toNat + 1

end

end A239976.P1187682102980674700

namespace A239976

/-- `floor(log2(A099974(n)))+1` -/
def P1187682102980674700.Spec : Prop :=
  ∀ n, (P1187682102980674700.a n : ℤ) = A239976 (n + 1)

end A239976

/-! ## A239976.P4357651429539902064

`A028310(ceil(log2(A099974(n))))`
-/

namespace A239976.P4357651429539902064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈Real.logb 2 (A099974 n : ℝ)⌉.toNat

end

end A239976.P4357651429539902064

namespace A239976

/-- `A028310(ceil(log2(A099974(n))))` -/
def P4357651429539902064.Spec : Prop :=
  ∀ n, P4357651429539902064.a n = A239976 (n + 1)

end A239976

/-! ## A239976.P14828173362536372022

`ceil(log2(A099974(n)+A007318(n)))`
-/

namespace A239976.P14828173362536372022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099974 n + A007318 n : ℝ)⌉

end

end A239976.P14828173362536372022

namespace A239976

/-- `ceil(log2(A099974(n)+A007318(n)))` -/
def P14828173362536372022.Spec : Prop :=
  ∀ n, P14828173362536372022.a n = A239976 (n + 1)

end A239976

/-! ## A239976.P10404200786298650196

`ceil(log2(A099974(n)+A014577(n)))`
-/

namespace A239976.P10404200786298650196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099974 n + A014577 n : ℝ)⌉

end

end A239976.P10404200786298650196

namespace A239976

/-- `ceil(log2(A099974(n)+A014577(n)))` -/
def P10404200786298650196.Spec : Prop :=
  ∀ n, P10404200786298650196.a n = A239976 (n + 1)

end A239976

/-!
# A239977: a(n) = -Sum_{k=0..n} binomial(n, k)*A226158(k).

The programs for A239977, there is no canonical definition to state claims against.
-/

/-! ## A239977.P8319096433126016980

`2*n+A226158(n)`
-/

namespace A239977.P8319096433126016980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A226158 n

end

end A239977.P8319096433126016980

/-! ## A239977.P17598980291668869133

`-∑{#}[n, C(n, #)*A226158(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239977.P17598980291668869133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A226158 k)

end

end A239977.P17598980291668869133

/-! ## A239977.P5964287266909724289

`A226158(n)+A005843(n)`
-/

namespace A239977.P5964287266909724289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n + A005843 n

end

end A239977.P5964287266909724289

/-! ## A239977.P14442753935134121912

`A226158(n)-A181983(2*n)`
-/

namespace A239977.P14442753935134121912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n - A181983 (2 * n)

end

end A239977.P14442753935134121912

/-! ## A239977.P6497358302822015604

`n+1+A226158(n)+A023443(n)`
-/

namespace A239977.P6497358302822015604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A226158 n + A023443 n)

end

end A239977.P6497358302822015604

/-! ## A239977.P15252473264946415350

`A036968(A233583(n+1))+A004277(n)`
-/

namespace A239977.P15252473264946415350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 1)).toNat + A004277 n

end

end A239977.P15252473264946415350

/-!
# A239979: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239979, there is no canonical definition to state claims against.
-/

/-! ## A239979.P798055307798903093

`A239986(∑[4*n]+1)`
-/

namespace A239979.P798055307798903093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239979.P798055307798903093

/-! ## A239979.P15570478151785068843

`record[A239986(Δ[A235355(n)])]`
-/

namespace A239979.P15570478151785068843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239979.P15570478151785068843

/-! ## A239979.P5722893505291510993

`record[A239986(A330613(n+1))]`
-/

namespace A239979.P5722893505291510993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239979.P5722893505291510993

/-! ## A239979.P7145157294958709573

`A239986(A001844(n))+char[8]`
-/

namespace A239979.P7145157294958709573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239979.P7145157294958709573

/-!
# A239980: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239980, the canonical program `A239980.P4536809441387265265` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239980 has offset 1).

The definition of A239980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239980.P4536809441387265265

`ogf((1+3x+4x^2-x^4+4x^6-4x^7-6x^8+6x^9+6x^10-4x^12)/(1-2x^2-10x^3+x^4+5x^5+15x^6-x^7-4x^8-2x^9-10x^10-5x^11+6x^13))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239980

/-- `ogf((1+3x+4x^2-x^4+4x^6-4x^7-6x^8+6x^9+6x^10-4x^12)/(1-2x^2-10x^3+x^4+5x^5+15x^6-x^7-4x^8-2x^9-10x^10-5x^11+6x^13))` -/
def P4536809441387265265.Spec : Prop :=
  ∀ n, P4536809441387265265.a n = A239980 (n + 1)

theorem P4536809441387265265.correct : P4536809441387265265.Spec := by
  intro n
  simp only [A239980, Nat.add_sub_cancel]

end A239980

/-! ## A239980.P17855167144204908806

`A239986(∑[n+2])`
-/

namespace A239980.P17855167144204908806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239980.P17855167144204908806

namespace A239980

/-- `A239986(∑[n+2])` -/
def P17855167144204908806.Spec : Prop :=
  ∀ n, P17855167144204908806.a n = A239980 (n + 1)

end A239980

/-! ## A239980.P3776924464283330178

`record[A129186(n)*A239986(n+1)]`
-/

namespace A239980.P3776924464283330178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A239986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239980.P3776924464283330178

namespace A239980

/-- `record[A129186(n)*A239986(n+1)]` -/
def P3776924464283330178.Spec : Prop :=
  ∀ n, P3776924464283330178.a n = A239980 (n + 1)

end A239980

/-! ## A239980.P4599816923954977460

`record[gcd(A008290(n), A239986(n+1))]`
-/

namespace A239980.P4599816923954977460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A239986 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239980.P4599816923954977460

namespace A239980

/-- `record[gcd(A008290(n), A239986(n+1))]` -/
def P4599816923954977460.Spec : Prop :=
  ∀ n, (P4599816923954977460.a n : ℤ) = A239980 (n + 1)

end A239980

/-! ## A239980.P2112184257688546778

`record[or(A055137(n), A239986(n+1))]`
-/

namespace A239980.P2112184257688546778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055137 n) (A239986 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239980.P2112184257688546778

namespace A239980

/-- `record[or(A055137(n), A239986(n+1))]` -/
def P2112184257688546778.Spec : Prop :=
  ∀ n, P2112184257688546778.a n = A239980 (n + 1)

end A239980

/-!
# A239981: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239981, there is no canonical definition to state claims against.
-/

/-! ## A239981.P12328066870569801815

`A239986(∑[n+3]+1)`
-/

namespace A239981.P12328066870569801815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239981.P12328066870569801815

/-! ## A239981.P17621900437401457232

`record[A239986(abs(A255878(n+1)))]`
-/

namespace A239981.P17621900437401457232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239981.P17621900437401457232

/-! ## A239981.P473778587882478460

`record[A239986(A198455(n+1)-1)]`
-/

namespace A239981.P473778587882478460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239981.P473778587882478460

/-! ## A239981.P13741862208086381816

`or(char[2], A239986(A055999(n)+4))`
-/

namespace A239981.P13741862208086381816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239986 (A055999 n + 4).toNat)

end

end A239981.P13741862208086381816

/-! ## A239981.P2327642736864374751

`record[gcd(A158285(n), A239986(n+1))]`
-/

namespace A239981.P2327642736864374751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158285 n) (A239986 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239981.P2327642736864374751

/-!
# A239982: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239982, there is no canonical definition to state claims against.
-/

/-! ## A239982.P13564564442700461798

`A239986(∑[n+5]-n+2)`
-/

namespace A239982.P13564564442700461798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A239982.P13564564442700461798

/-!
# A239983: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239983, there is no canonical definition to state claims against.
-/

/-! ## A239983.P134677670885058036

`A239986(∑[n+5]+6)`
-/

namespace A239983.P134677670885058036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A239983.P134677670885058036

/-!
# A239984: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239984, there is no canonical definition to state claims against.
-/

/-! ## A239984.P15008221164037569349

`A239986(A052905(n+3))`
-/

namespace A239984.P15008221164037569349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A052905 (n + 3)).toNat

end

end A239984.P15008221164037569349

/-! ## A239984.P927297349843679674

`A239986(A056119(n)+16)`
-/

namespace A239984.P927297349843679674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A056119 n + 16).toNat

end

end A239984.P927297349843679674

/-! ## A239984.P1695922000717609523

`A239986(eq[3, A219347(n)])`
-/

namespace A239984.P1695922000717609523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239984.P1695922000717609523

/-! ## A239984.P10078575627299114462

`A239986(eq[5, A152157(n)])`
-/

namespace A239984.P10078575627299114462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239984.P10078575627299114462

/-! ## A239984.P12015915086789588810

`A239986(eq[5, A193592(n)])`
-/

namespace A239984.P12015915086789588810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239984.P12015915086789588810

/-!
# A239985: Number of nX7 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239985, there is no canonical definition to state claims against.
-/

/-! ## A239985.P3693057780230001018

`A239986(A055999(n+4))`
-/

namespace A239985.P3693057780230001018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A055999 (n + 4)).toNat

end

end A239985.P3693057780230001018

/-! ## A239985.P9958800921939726959

`A239986(eq[4, A219347(n)])`
-/

namespace A239985.P9958800921939726959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239985.P9958800921939726959

/-! ## A239985.P15552298220317762002

`A239986(eq[5, A332954(n)])`
-/

namespace A239985.P15552298220317762002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239985.P15552298220317762002

/-! ## A239985.P1165829114484070077

`A239986(eq[6, A193592(n)])`
-/

namespace A239985.P1165829114484070077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239985.P1165829114484070077

/-! ## A239985.P5596049078340242652

`A239986(eq[7, A152157(n)])`
-/

namespace A239985.P5596049078340242652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239985.P5596049078340242652

/-!
# A239986: T(n,k)=Number of nXk 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239986, there is no canonical definition to state claims against.
-/

/-! ## A239986.P10215686333741579198

`A337531(A248670(n+1))+A081572(n)`
-/

namespace A239986.P10215686333741579198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A248670 (n + 1)).toNat + A081572 n

end

end A239986.P10215686333741579198

/-! ## A239986.P15859461682432966349

`A137579(A293543(n))+A074909(n)`
-/

namespace A239986.P15859461682432966349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A293543 n).toNat + A074909 n

end

end A239986.P15859461682432966349

/-! ## A239986.P1645004337380104395

`A242443(A145324(n+1)+1)`
-/

namespace A239986.P1645004337380104395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242443 (A145324 (n + 1) + 1).toNat

end

end A239986.P1645004337380104395

/-! ## A239986.P11024063422644997191

`A326016(A194998(n+1))+A126885(n)`
-/

namespace A239986.P11024063422644997191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A194998 (n + 1)).toNat + A126885 n

end

end A239986.P11024063422644997191

/-! ## A239986.P4980723900416452848

`or(A057145(n+2), A185213(A043318(n+1)))`
-/

namespace A239986.P4980723900416452848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057145 (n + 2)) (A185213 (A043318 (n + 1)).toNat)

end

end A239986.P4980723900416452848

/-!
# A239987: Number of 3 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239987, the canonical program `A239987.P12193282280824735271` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239987 has offset 1).

The definition of A239987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239987.P7843762289878892560

`ogf((3-9x+13x^2-13x^3+13x^4-8x^5+x^6+x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A239987.P7843762289878892560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, 13, -13, 13, -8, 1, 1] [1, -5, 10, -10, 5, -1] n

end

end A239987.P7843762289878892560

namespace A239987

/-- `ogf((3-9x+13x^2-13x^3+13x^4-8x^5+x^6+x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P7843762289878892560.Spec : Prop :=
  ∀ n, P7843762289878892560.a n = A239987 (n + 1)

end A239987

/-! ## A239987.P12193282280824735271

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=6, a(2)=13, a(3)=22, a(4)=38, a(5)=65, a(6)=107, a(7)=169`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A239987

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12193282280824735271.Spec : Prop :=
  ∀ n, P12193282280824735271.a n = A239987 (n + 1)

theorem P12193282280824735271.correct : P12193282280824735271.Spec := by
  intro n
  simp only [A239987, Nat.add_sub_cancel]

end A239987

/-! ## A239987.P10329117526229346405

`A239986(∑[n+2]+4)`
-/

namespace A239987.P10329117526229346405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239987.P10329117526229346405

namespace A239987

/-- `A239986(∑[n+2]+4)` -/
def P10329117526229346405.Spec : Prop :=
  ∀ n, P10329117526229346405.a n = A239987 (n + 1)

end A239987

/-! ## A239987.P14483154710446735081

`and(-1, A239986(A167614(n+1)))`
-/

namespace A239987.P14483154710446735081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A239986 (A167614 (n + 1)).toNat)

end

end A239987.P14483154710446735081

namespace A239987

/-- `and(-1, A239986(A167614(n+1)))` -/
def P14483154710446735081.Spec : Prop :=
  ∀ n, P14483154710446735081.a n = A239987 (n + 1)

end A239987

/-! ## A239987.P14968407407258036895

`A239986(A167614(n+1))+A178798(n)`
-/

namespace A239987.P14968407407258036895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A167614 (n + 1)).toNat + A178798 n

end

end A239987.P14968407407258036895

namespace A239987

/-- `A239986(A167614(n+1))+A178798(n)` -/
def P14968407407258036895.Spec : Prop :=
  ∀ n, P14968407407258036895.a n = A239987 (n + 1)

end A239987

/-!
# A239988: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239988, there is no canonical definition to state claims against.
-/

/-! ## A239988.P9255977591874952256

`A239986(A141214(n)+7)`
-/

namespace A239988.P9255977591874952256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A141214 n + 7).toNat

end

end A239988.P9255977591874952256

/-! ## A239988.P17665639157048775491

`A239986(A052905(n)+9)`
-/

namespace A239988.P17665639157048775491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A052905 n + 9).toNat

end

end A239988.P17665639157048775491

/-! ## A239988.P2376182770644921524

`A239986(A055999(n)+10)`
-/

namespace A239988.P2376182770644921524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A055999 n + 10).toNat

end

end A239988.P2376182770644921524

/-! ## A239988.P12698469414607311867

`A239986(eq[5, A066657(n)])`
-/

namespace A239988.P12698469414607311867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239988.P12698469414607311867

/-! ## A239988.P1604014946311531625

`A239986(Δ[A238806(n+3)])`
-/

namespace A239988.P1604014946311531625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (f1 (n + 1) - f1 n).toNat

end

end A239988.P1604014946311531625

/-!
# A239989: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239989, there is no canonical definition to state claims against.
-/

/-! ## A239989.P8777843692865473698

`A239986(A167499(n+3))`
-/

namespace A239989.P8777843692865473698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A167499 (n + 3)).toNat

end

end A239989.P8777843692865473698

/-! ## A239989.P11238983651044264541

`A239986(A155212(n)+13)`
-/

namespace A239989.P11238983651044264541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A155212 n + 13).toNat

end

end A239989.P11238983651044264541

/-! ## A239989.P13324360052499503400

`A239986(A056000(n)+15)`
-/

namespace A239989.P13324360052499503400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A056000 n + 15).toNat

end

end A239989.P13324360052499503400

/-! ## A239989.P13881210684718395537

`A239986(eq[7, A066657(n)])`
-/

namespace A239989.P13881210684718395537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239989.P13881210684718395537

/-! ## A239989.P13540184635647087251

`A239986(A166136(n+3)-1)`
-/

namespace A239989.P13540184635647087251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A166136 (n + 3) - 1).toNat

end

end A239989.P13540184635647087251

/-!
# A239990: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239990, there is no canonical definition to state claims against.
-/

/-! ## A239990.P5247051760645645134

`A239986(A056115(n)+21)`
-/

namespace A239990.P5247051760645645134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A056115 n + 21).toNat

end

end A239990.P5247051760645645134

/-! ## A239990.P7057508069635507381

`A239986(A167499(n+4)+1)`
-/

namespace A239990.P7057508069635507381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A167499 (n + 4) + 1).toNat

end

end A239990.P7057508069635507381

/-! ## A239990.P18261049017667836143

`A239986(A167614(n+4)+3)`
-/

namespace A239990.P18261049017667836143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A167614 (n + 4) + 3).toNat

end

end A239990.P18261049017667836143

/-! ## A239990.P4573464816949552837

`A239986(A253145(n+4)+6)`
-/

namespace A239990.P4573464816949552837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A253145 (n + 4) + 6).toNat

end

end A239990.P4573464816949552837

/-! ## A239990.P2909088204338025838

`A239986(A000096(n+4)+7)`
-/

namespace A239990.P2909088204338025838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A000096 (n + 4) + 7).toNat

end

end A239990.P2909088204338025838

/-!
# A239991: Number of 7 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239991, there is no canonical definition to state claims against.
-/

/-! ## A239991.P8869871335578345489

`A239986(A056119(n)+28)`
-/

namespace A239991.P8869871335578345489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A056119 n + 28).toNat

end

end A239991.P8869871335578345489

/-! ## A239991.P8678291034207107143

`A239986(eq[11, A066657(n)])`
-/

namespace A239991.P8678291034207107143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239991.P8678291034207107143

/-! ## A239991.P4075995896729416568

`A239986(A167499(n+5)+2)`
-/

namespace A239991.P4075995896729416568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A167499 (n + 5) + 2).toNat

end

end A239991.P4075995896729416568

/-! ## A239991.P12628045264376301629

`A239986(A253145(n+5)+7)`
-/

namespace A239991.P12628045264376301629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A253145 (n + 5) + 7).toNat

end

end A239991.P12628045264376301629

/-! ## A239991.P6721916797919987725

`A239986(A034856(n+5)+9)`
-/

namespace A239991.P6721916797919987725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (A034856 (n + 5) + 9).toNat

end

end A239991.P6721916797919987725

/-!
# A239993: Numbers n such that n*sigma(n) is not divisible by 6.

The programs for A239993, there is no canonical definition to state claims against.
-/

/-! ## A239993.P9643478831444823153

`lt[0, A280025(n)%6]`
-/

namespace A239993.P9643478831444823153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280025 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A239993.P9643478831444823153

/-! ## A239993.P16629531506034975686

`lt[0, A282097(n)%6]`
-/

namespace A239993.P16629531506034975686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282097 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A239993.P16629531506034975686

/-! ## A239993.P12495222750233561055

`lt[0, A282099(n)%6]`
-/

namespace A239993.P12495222750233561055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282099 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A239993.P12495222750233561055

/-! ## A239993.P17988090881243574126

`lt[gcd(6, A281372(n)), 4]`
-/

namespace A239993.P17988090881243574126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A281372 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239993.P17988090881243574126

/-! ## A239993.P3549062548232031755

`lt[acot(n)², A282213(n)%6]`
-/

namespace A239993.P3549062548232031755
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282213 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A239993.P3549062548232031755

/-! ## A239993.P6306037545482678678

`∪[A374135(n+1), A016754(n)]`
-/

namespace A239993.P6306037545482678678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239993.P6306037545482678678

/-! ## A239993.P11870801671713812505

`∪[A032598(n+1), A374135(n+1)]`
-/

namespace A239993.P11870801671713812505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239993.P11870801671713812505

/-! ## A239993.P10071214930832642788

`∪[A063735(n+1), A374135(n+1)]`
-/

namespace A239993.P10071214930832642788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239993.P10071214930832642788

/-! ## A239993.P6763399187561867334

`∪[A110487(n+1), A374135(n+1)]`
-/

namespace A239993.P6763399187561867334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239993.P6763399187561867334

/-! ## A239993.P12051468278654780158

`∪[A348742(n+1), A374135(n+1)]`
-/

namespace A239993.P12051468278654780158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239993.P12051468278654780158

/-!
# A239994: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239994, there is no canonical definition to state claims against.
-/

/-! ## A239994.P4626853816537375061

`A240000(∑[4*n]+1)`
-/

namespace A239994.P4626853816537375061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239994.P4626853816537375061

/-! ## A239994.P14682061541137048178

`A240000((n+1)²+n²)+val(n+1, 10)`
-/

namespace A239994.P14682061541137048178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 ((n + 1) ^ 2 + n ^ 2) + (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

end

end A239994.P14682061541137048178

/-! ## A239994.P11950035235644700404

`record[A240000(A330613(n+1))]`
-/

namespace A239994.P11950035235644700404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239994.P11950035235644700404

/-!
# A239995: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239995, there is no canonical definition to state claims against.
-/

/-! ## A239995.P3724557455916506248

`A240000(∑[n+2])`
-/

namespace A239995.P3724557455916506248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239995.P3724557455916506248

/-! ## A239995.P1947796553287463509

`record[A240000(A166017(n+3)-2)]`
-/

namespace A239995.P1947796553287463509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A166017 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239995.P1947796553287463509

/-! ## A239995.P6979626798117887621

`record[gcd(A240000(n+2), A276890(n+2))]`
-/

namespace A239995.P6979626798117887621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240000 (n + 2)) (A276890 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239995.P6979626798117887621

/-! ## A239995.P1810968290882873123

`A240000(A000096(n+1))%A262582(n+2)`
-/

namespace A239995.P1810968290882873123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240000 (A000096 (n + 1)).toNat) (A262582 (n + 2))

end

end A239995.P1810968290882873123

/-!
# A239996: Number of n X 3 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239996, there is no canonical definition to state claims against.
-/

/-! ## A239996.P15957235787915272296

`A240000(∑[n+3]+1)`
-/

namespace A239996.P15957235787915272296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239996.P15957235787915272296

/-! ## A239996.P16697142605742770653

`A240000(A034856(n+2))+A125005(n+1)`
-/

namespace A239996.P16697142605742770653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A034856 (n + 2)).toNat + A125005 (n + 1)

end

end A239996.P16697142605742770653

/-! ## A239996.P7893302545429642349

`A240000(A034856(n+2))%A026108(n+1)`
-/

namespace A239996.P7893302545429642349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240000 (A034856 (n + 2)).toNat) (A026108 (n + 1))

end

end A239996.P7893302545429642349

/-!
# A239997: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239997, there is no canonical definition to state claims against.
-/

/-! ## A239997.P5804511935085648817

`A240000(C(n+4, 2)+n+1)`
-/

namespace A239997.P5804511935085648817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (Nat.choose (n + 4) 2 + (n + 1))

end

end A239997.P5804511935085648817

/-! ## A239997.P14670747875284819353

`A240000(A141214(n+1))`
-/

namespace A239997.P14670747875284819353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A141214 (n + 1)).toNat

end

end A239997.P14670747875284819353

/-! ## A239997.P8255973138791359164

`A240000(A027379(n+2))`
-/

namespace A239997.P8255973138791359164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A027379 (n + 2)).toNat

end

end A239997.P8255973138791359164

/-! ## A239997.P14151354967099069716

`A240000(A055998(n+2))`
-/

namespace A239997.P14151354967099069716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A055998 (n + 2)).toNat

end

end A239997.P14151354967099069716

/-! ## A239997.P215761823870814879

`A240000(A155212(n)+5)`
-/

namespace A239997.P215761823870814879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A155212 n + 5).toNat

end

end A239997.P215761823870814879

/-!
# A239998: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239998, there is no canonical definition to state claims against.
-/

/-! ## A239998.P11568287112621882976

`A240000(∑[n+5]+6)`
-/

namespace A239998.P11568287112621882976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A239998.P11568287112621882976

/-! ## A239998.P15534193602146306352

`A240000(A046691(n+3))+A107846(n)`
-/

namespace A239998.P15534193602146306352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A046691 (n + 3)).toNat + A107846 n

end

end A239998.P15534193602146306352

/-! ## A239998.P8888085395581627971

`A240467(2*n+3)+A240000(A046691(n+3))`
-/

namespace A239998.P8888085395581627971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (2 * n + 3) + A240000 (A046691 (n + 3)).toNat

end

end A239998.P8888085395581627971

/-! ## A239998.P13041411379636416020

`A240000(A046691(n+3))%A116415(3*n+2)`
-/

namespace A239998.P13041411379636416020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240000 (A046691 (n + 3)).toNat) (A116415 (3 * n + 2))

end

end A239998.P13041411379636416020

/-!
# A239999: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239999, there is no canonical definition to state claims against.
-/

/-! ## A239999.P901611695154484554

`A240000(C(n+6, 2)+n+1)`
-/

namespace A239999.P901611695154484554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (Nat.choose (n + 6) 2 + (n + 1))

end

end A239999.P901611695154484554

/-! ## A239999.P6756336823084907067

`A240000(A052905(n+3))`
-/

namespace A239999.P6756336823084907067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A052905 (n + 3)).toNat

end

end A239999.P6756336823084907067

/-! ## A239999.P15000791674027285987

`A240000(A056119(n)+16)`
-/

namespace A239999.P15000791674027285987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (A056119 n + 16).toNat

end

end A239999.P15000791674027285987

/-! ## A239999.P4742904089236685784

`A240000(eq[3, A219347(n)])`
-/

namespace A239999.P4742904089236685784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239999.P4742904089236685784

