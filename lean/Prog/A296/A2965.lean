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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A296502: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A296502, there is no canonical definition to state claims against.
-/

/-! ## A296502.P9561781144684294772

`A297149(n)-2*A296484(n)`
-/

namespace A296502.P9561781144684294772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297149 n - 2 * A296484 n

end

end A296502.P9561781144684294772

/-! ## A296502.P15889338009530686331

`A297149(n)-A005843(A296484(n))`
-/

namespace A296502.P15889338009530686331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297149 n - A005843 (A296484 n).toNat

end

end A296502.P15889338009530686331

/-! ## A296502.P5942231147698277585

`A297149(n)-(A296484(n)+A296484(n)%A299636(n))`
-/

namespace A296502.P5942231147698277585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297149 n - (A296484 n + Int.tmod (A296484 n) (A299636 n))

end

end A296502.P5942231147698277585

/-! ## A296502.P11436323962492427818

`A016789(∑[A296484(n)]-A296484(n))`
-/

namespace A296502.P11436323962492427818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (∑ j ∈ Finset.range (n + 1), f1 j - A296484 n).toNat

end

end A296502.P11436323962492427818

/-!
# A296507: Numbers m such that m^2 - 13 is a prime.

The programs for A296507, there is no canonical definition to state claims against.
-/

/-! ## A296507.P17823973859008625476

`sqrt(A154648(n+1)+13)`
-/

namespace A296507.P17823973859008625476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A154648 (n + 1) + 13 : ℝ)

end

end A296507.P17823973859008625476

/-! ## A296507.P6901854833397441907

`sqrt(p?[n²-13]+13)`
-/

namespace A296507.P6901854833397441907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 13

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 13 : ℝ)

end

end A296507.P6901854833397441907

/-! ## A296507.P16951754686048464892

`root(p?[n²-13]+13, 2)`
-/

namespace A296507.P16951754686048464892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 13

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 13 : ℝ) ^ (1 / (2 : ℝ))

end

end A296507.P16951754686048464892

/-! ## A296507.P17770736731053083920

`(p?[n²-13]+13)^(1/2)`
-/

namespace A296507.P17770736731053083920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 13

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 13 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A296507.P17770736731053083920

/-!
# A296510: Toothpick sequence on triangular grid (see Comments lines for definition).

The programs for A296510, there is no canonical definition to state claims against.
-/

/-! ## A296510.P16568889438958859215

`A296511(n)+a(n-1)` with `a(0)=0`
-/

namespace A296510.P16568889438958859215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A296511 n + a (n - 1)

end

end A296510.P16568889438958859215

/-! ## A296510.P2502706717426180611

`∑[A296511(floor(acot(n)+n))]-1`
-/

namespace A296510.P2502706717426180611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296511 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296510.P2502706717426180611

/-! ## A296510.P6781171262865576712

`∑[A296511(abs(1-n)+1)]-2`
-/

namespace A296510.P6781171262865576712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296511 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A296510.P6781171262865576712

/-! ## A296510.P7702019716704274405

`∑[A296511(A028310(n))-1]+n`
-/

namespace A296510.P7702019716704274405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296511 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A296510.P7702019716704274405

/-! ## A296510.P12276482119538746233

`abs(∑[A296511(A000007(n)+n)]-1)`
-/

namespace A296510.P12276482119538746233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296511 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A296510.P12276482119538746233

/-! ## A296510.P10671050121579120238

`∑[A296511(A233583(n+2)-1)-1]+n`
-/

namespace A296510.P10671050121579120238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296511 (A233583 (n + 2) - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A296510.P10671050121579120238

/-! ## A296510.P5204166971961397197

`∑[A057427(n)*A296511(A028310(n))]`
-/

namespace A296510.P5204166971961397197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A296511 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296510.P5204166971961397197

/-! ## A296510.P14745484895176309905

`∑[A178334(n)*A296511(A028310(n))]`
-/

namespace A296510.P14745484895176309905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A296511 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296510.P14745484895176309905

/-! ## A296510.P5138580051022601952

`∑[A178489(n)*A296511(A028310(n))]`
-/

namespace A296510.P5138580051022601952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A296511 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296510.P5138580051022601952

/-! ## A296510.P14251739026547391544

`∑[A296511(A028310(n))%A000124(n)]`
-/

namespace A296510.P14251739026547391544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296511 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296510.P14251739026547391544

/-!
# A296511: Number of toothpicks added at n-th stage to the toothpick structure of A296510.

The programs for A296511, there is no canonical definition to state claims against.
-/

/-! ## A296511.P2181184174088487666

`Δ[A296510(n)]`
-/

namespace A296511.P2181184174088487666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296511.P2181184174088487666

/-! ## A296511.P5419295707115958156

`A296510(n+1)-A296510(n)`
-/

namespace A296511.P5419295707115958156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 (n + 1) - A296510 n

end

end A296511.P5419295707115958156

/-! ## A296511.P11224669970984595242

`record[A296510(abs(1-n))]-A296510(n)`
-/

namespace A296511.P11224669970984595242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A296510 n

end

end A296511.P11224669970984595242

/-!
# A296512: a(n) is the largest subpart of the symmetric representation of sigma(n).

The programs for A296512, there is no canonical definition to state claims against.
-/

/-! ## A296512.P6580789476788911338

`A280851(record[n+2-A341970(n+1)])`
-/

namespace A296512.P6580789476788911338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A341970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296512.P6580789476788911338

/-! ## A296512.P11749672390007144403

`A280851(record[(n+1)/A341970(n+1)])`
-/

namespace A296512.P11749672390007144403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A341970 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A296512.P11749672390007144403

/-! ## A296512.P16895524766375603038

`A279391(∑[∑{d}[n, #%2]]+1)`
-/

namespace A296512.P16895524766375603038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296512.P16895524766375603038

/-! ## A296512.P14456565743602103718

`A279391(A060831(n)+1)`
-/

namespace A296512.P14456565743602103718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (A060831 n + 1).toNat

end

end A296512.P14456565743602103718

/-! ## A296512.P244344154098523183

`A279391(∑[A069283(n)+1])`
-/

namespace A296512.P244344154098523183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296512.P244344154098523183

/-!
# A296513: a(n) is the smallest subpart of the symmetric representation of sigma(n).

The programs for A296513, there is no canonical definition to state claims against.
-/

/-! ## A296513.P15757050980929914386

`A241558(n+1)%A110435(A110435(n+1))`
-/

namespace A296513.P15757050980929914386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241558 (n + 1)) (A110435 (A110435 (n + 1)).toNat)

end

end A296513.P15757050980929914386

/-!
# A296514: Positive numbers whose decimal expansion contains a 3-digit substring abc such that c > a > b.

The programs for A296514, there is no canonical definition to state claims against.
-/

/-! ## A296514.P16672426421292736042

`lt[0, A283001(A283001(n))]`
-/

namespace A296514.P16672426421292736042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A283001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296514.P16672426421292736042

/-! ## A296514.P12623062935377838995

`eq[2, A003991(a(A283001(n)))]` with `a(0)=5`
-/

namespace A296514.P12623062935377838995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A003991 (f2 (A283001 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296514.P12623062935377838995

/-! ## A296514.P13162342670735232379

`eq[2, A000005(a(A283001(n)))]` with `a(0)=6`
-/

namespace A296514.P13162342670735232379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A283001 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296514.P13162342670735232379

/-! ## A296514.P17818696809510843546

`eq[2, A000010(a(A283001(n)))]` with `a(0)=24`
-/

namespace A296514.P17818696809510843546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f2 =>
  A000010 (f2 (A283001 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296514.P17818696809510843546

/-! ## A296514.P16017015510950689120

`eq[2, A090663(a(A283001(n)))]` with `a(0)=24`
-/

namespace A296514.P16017015510950689120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f2 =>
  A090663 (f2 (A283001 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296514.P16017015510950689120

/-! ## A296514.P14749074457089808584

`∩[A032865(n+1), A071589(n+1)]`
-/

namespace A296514.P14749074457089808584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296514.P14749074457089808584

/-! ## A296514.P16977965755560139682

`∩[A071589(n+1), A183086(n+1)]`
-/

namespace A296514.P16977965755560139682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296514.P16977965755560139682

/-! ## A296514.P13072131077555047502

`∩[A071589(n+1), A297147(n+1)]`
-/

namespace A296514.P13072131077555047502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296514.P13072131077555047502

/-!
# A296515: Number of edges in a maximal planar graph with n vertices.

The programs for A296515, the canonical program `A296515.P10146744928561980763` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296515 has offset 0).

The definition of A296515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296515.P10146744928561980763

`floor(6/2^n)+3*n-6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296515

/-- `floor(6/2^n)+3*n-6` -/
def P10146744928561980763.Spec : Prop :=
  ∀ n, P10146744928561980763.a n = A296515 n

theorem P10146744928561980763.correct : P10146744928561980763.Spec := by
  intro n
  simp only [A296515]

end A296515

/-!
# A296516: a(n) is the number of terms in expanded form of bivariate polynomial Q_n, where (P_n, Q_n) is defined by: P_0 = x, Q_0 = y, P_(n+1) = P_n + Q_n, Q_(n+1) = P_n * Q_n.

The programs for A296516, the canonical program `A296516.P6220263094053475914` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296516 has offset 0).

The definition of A296516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296516.P6220263094053475914

`A005207(n+1)+1-A133263(n)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296516

/-- `A005207(n+1)+1-A133263(n)+n` -/
def P6220263094053475914.Spec : Prop :=
  ∀ n, P6220263094053475914.a n = A296516 n

theorem P6220263094053475914.correct : P6220263094053475914.Spec := by
  intro n
  simp only [A296516]

end A296516

/-! ## A296516.P17685975983389460837

`A005207(n+1)-A036406(A004273(n))`
-/

namespace A296516.P17685975983389460837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A036406 (A004273 n).toNat

end

end A296516.P17685975983389460837

namespace A296516

/-- `A005207(n+1)-A036406(A004273(n))` -/
def P17685975983389460837.Spec : Prop :=
  ∀ n, P17685975983389460837.a n = A296516 n

end A296516

/-! ## A296516.P7711373321240154595

`A005207(n+1)-∑[A004525(A004275(n))]`
-/

namespace A296516.P7711373321240154595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296516.P7711373321240154595

namespace A296516

/-- `A005207(n+1)-∑[A004525(A004275(n))]` -/
def P7711373321240154595.Spec : Prop :=
  ∀ n, P7711373321240154595.a n = A296516 n

end A296516

/-! ## A296516.P17898588392036646499

`A005207(n+1)+A028310(n)-A000124(n)`
-/

namespace A296516.P17898588392036646499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (A028310 n - A000124 n)

end

end A296516.P17898588392036646499

namespace A296516

/-- `A005207(n+1)+A028310(n)-A000124(n)` -/
def P17898588392036646499.Spec : Prop :=
  ∀ n, P17898588392036646499.a n = A296516 n

end A296516

/-! ## A296516.P11509060358952686158

`A005207(n+1)-A083920(A000124(n))`
-/

namespace A296516.P11509060358952686158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A083920 (A000124 n).toNat

end

end A296516.P11509060358952686158

namespace A296516

/-- `A005207(n+1)-A083920(A000124(n))` -/
def P11509060358952686158.Spec : Prop :=
  ∀ n, P11509060358952686158.a n = A296516 n

end A296516

/-!
# A296517: Vertex cover number of the n-polygon diagonal intersection graph.

The programs for A296517, there is no canonical definition to state claims against.
-/

/-! ## A296517.P17140932781394617143

`A007569(n+3)-A300569(n+3)`
-/

namespace A296517.P17140932781394617143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 3) - A300569 (n + 3)

end

end A296517.P17140932781394617143

/-!
# A296518: a(1) = 3, a(2) = a(5) = 1, a(3) = a(4) = a(6) = 2; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 6.

The programs for A296518, the canonical program `A296518.P11180911585744354713` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296518 has offset 1).

The definition of A296518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A296518.P11180911585744354713`, by `A296518.P11180911585744354713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296518.P11180911585744354713

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=3, a(1)=1, a(2)=2, a(3)=2, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296518

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P11180911585744354713.Spec : Prop :=
  ∀ n, (P11180911585744354713.a n : ℤ) = A296518 (n + 1)

theorem P11180911585744354713.correct : P11180911585744354713.Spec := by
  intro n
  simp only [A296518, Nat.add_sub_cancel]

end A296518

/-!
# A296519: Denominator of n*Sum_{k=1..n} 1/(n+k).

The programs for A296519, there is no canonical definition to state claims against.
-/

/-! ## A296519.P3608212595626697820

`2*A117664(n+1)`
-/

namespace A296519.P3608212595626697820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117664 (n + 1)

end

end A296519.P3608212595626697820

/-! ## A296519.P1674719009645376436

`A334724(2*(n+1))`
-/

namespace A296519.P1674719009645376436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334724 (2 * (n + 1))

end

end A296519.P1674719009645376436

/-! ## A296519.P1275480730386897042

`2*A334721(2*(n+1))`
-/

namespace A296519.P1275480730386897042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334721 (2 * (n + 1))

end

end A296519.P1275480730386897042

/-! ## A296519.P6859713704240460709

`A117664(A000027(n+1))+A117664(n+1)`
-/

namespace A296519.P6859713704240460709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117664 (A000027 (n + 1)).toNat + A117664 (n + 1)

end

end A296519.P6859713704240460709

/-! ## A296519.P6673698149879327069

`A117664(n+1)+lcm(A117664(n+1), A119788(n+1))`
-/

namespace A296519.P6673698149879327069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117664 (n + 1) + (Int.lcm (A117664 (n + 1)) (A119788 (n + 1)) : ℤ)

end

end A296519.P6673698149879327069

/-! ## A296519.P14837030238490391614

`lcm(n+1, A058312(2*(n+1)))/(n+1)`
-/

namespace A296519.P14837030238490391614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A058312 (2 * (n + 1))) : ℚ) / (n + 1 : ℚ)

end

end A296519.P14837030238490391614

/-! ## A296519.P17217635215249168681

`A058312(2*n+2)/gcd(A028310(n+1), A058312(2*n+2))`
-/

namespace A296519.P17217635215249168681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (2 * n + 2) : ℚ) / (Int.gcd (A028310 (n + 1)) (A058312 (2 * n + 2)) : ℚ)

end

end A296519.P17217635215249168681

/-!
# A296520: Multidigit primes in which the largest digit appears only once.

The programs for A296520, there is no canonical definition to state claims against.
-/

/-! ## A296520.P16860483674616503353

`p?[A168434(n+5)+A168353(n+5)]`
-/

namespace A296520.P16860483674616503353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168434 (n + 5) + A168353 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296520.P16860483674616503353

/-! ## A296520.P8791906755686504973

`p?[A038769(A275626(n+1))*A171492(n+1)]`
-/

namespace A296520.P8791906755686504973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A275626 (n + 1)).toNat * A171492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296520.P8791906755686504973

/-! ## A296520.P12184832974557165365

`p?[A033665(A033665(n))+n+12]`
-/

namespace A296520.P12184832974557165365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A033665 n).toNat + (n + 12 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296520.P12184832974557165365

/-! ## A296520.P9590070771245032482

`A057427(A359670(n))*A106119(n+4)`
-/

namespace A296520.P9590070771245032482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A359670 n).toNat * A106119 (n + 4)

end

end A296520.P9590070771245032482

/-! ## A296520.P14192314607844654173

`A106119(n+4)+A000038(A303016(n+1))`
-/

namespace A296520.P14192314607844654173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 4) + A000038 (A303016 (n + 1)).toNat

end

end A296520.P14192314607844654173

/-!
# A296523: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x > 0, y >= 0 and 0 <= z <= w such that 64*x^2 + 65*y^2 = q^2 for some practical number q.

The programs for A296523, there is no canonical definition to state claims against.
-/

/-! ## A296523.P1118388047798969479

`A112543(A127836(A007090(n)²))`
-/

namespace A296523.P1118388047798969479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A127836 (A007090 n ^ 2).toNat).toNat

end

end A296523.P1118388047798969479

/-! ## A296523.P17104669105293041459

`A107435(A084242(n+4)^A089641(2*n+1))`
-/

namespace A296523.P17104669105293041459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (SequenceMachineLib.roundAway ((A084242 (n + 4) : ℚ) ^ (A089641 (2 * n + 1) : ℤ))).toNat

end

end A296523.P17104669105293041459

/-! ## A296523.P9852623631455063241

`A111007(and(A002250(n), A265074(n)))`
-/

namespace A296523.P9852623631455063241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111007 (Int.land (A002250 n) (A265074 n)).toNat

end

end A296523.P9852623631455063241

/-! ## A296523.P17267767539642517068

`A318322(A005179(n+4)-A122816(2*n+1))`
-/

namespace A296523.P17267767539642517068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (A005179 (n + 4) - A122816 (2 * n + 1)).toNat

end

end A296523.P17267767539642517068

/-!
# A296529: Number T(n,k) of non-averaging permutations of [n] with first element k; triangle T(n,k), n >= 0, k = 0..n, read by rows.

The programs for A296529, there is no canonical definition to state claims against.
-/

/-! ## A296529.P13162114988521626293

`A382397(A339780(n))`
-/

namespace A296529.P13162114988521626293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A339780 n).toNat

end

end A296529.P13162114988521626293

/-! ## A296529.P4360651465357639417

`A178487(A268439(n))`
-/

namespace A296529.P4360651465357639417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A268439 n).toNat

end

end A296529.P4360651465357639417

/-! ## A296529.P9645279850100086346

`A007302(∑{d}[A245168(n), #])`
-/

namespace A296529.P9645279850100086346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A296529.P9645279850100086346

/-! ## A296529.P6188093208426701474

`A213887(n)+A036580(A036600(n))`
-/

namespace A296529.P6188093208426701474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 n + A036580 (A036600 n).toNat

end

end A296529.P6188093208426701474

/-! ## A296529.P12657659005239635577

`A262448(A017989(n))+A097805(n)`
-/

namespace A296529.P12657659005239635577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262448 (A017989 n).toNat + A097805 n

end

end A296529.P12657659005239635577

/-!
# A296530: Number of non-averaging permutations of [n] with first element n.

The programs for A296530, there is no canonical definition to state claims against.
-/

/-! ## A296530.P15040494089693434602

`A296529(∑[n]+n)`
-/

namespace A296530.P15040494089693434602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A296530.P15040494089693434602

/-! ## A296530.P9551771260875184161

`A296529(A000217(n)+n)%(10^(n+1))`
-/

namespace A296530.P9551771260875184161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296529 (A000217 n + (n : ℤ)).toNat) (10 ^ (n + 1) : ℤ)

end

end A296530.P9551771260875184161

/-! ## A296530.P1105631253024074121

`A296529(A000124(n))+A000007(n)`
-/

namespace A296530.P1105631253024074121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A000124 n).toNat + A000007 n

end

end A296530.P1105631253024074121

/-! ## A296530.P3683130365723332999

`gcd(A000038(n), A296529(A000096(n)))`
-/

namespace A296530.P3683130365723332999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296529 (A000096 n).toNat)

end

end A296530.P3683130365723332999

/-! ## A296530.P5882278798753066050

`A296529(A000124(n))+A241663(A037201(n+1))`
-/

namespace A296530.P5882278798753066050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A000124 n).toNat + A241663 (A037201 (n + 1)).toNat

end

end A296530.P5882278798753066050

/-! ## A296530.P8055232163582670305

`A296529(A000124(n))+A241643(A241664(n+1))`
-/

namespace A296530.P8055232163582670305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A000124 n).toNat + A241643 (A241664 (n + 1)).toNat

end

end A296530.P8055232163582670305

/-! ## A296530.P10015076855174553933

`A226444(A037213(n))*A296529(A000217(n)+n)`
-/

namespace A296530.P10015076855174553933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A037213 n).toNat * A296529 (A000217 n + (n : ℤ)).toNat

end

end A296530.P10015076855174553933

/-! ## A296530.P4313266743659098722

`A129252(A048103(n+1))*A296529(A000217(n)+n)`
-/

namespace A296530.P4313266743659098722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129252 (A048103 (n + 1)).toNat * A296529 (A000217 n + (n : ℤ)).toNat

end

end A296530.P4313266743659098722

/-! ## A296530.P12927424746117741739

`A226444(A067029(n+1))*A296529(A000217(n)+n)`
-/

namespace A296530.P12927424746117741739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A067029 (n + 1)).toNat * A296529 (A000217 n + (n : ℤ)).toNat

end

end A296530.P12927424746117741739

/-!
# A296531: Number of non-averaging permutations of [n] with first element ceiling(n/2).

The programs for A296531, there is no canonical definition to state claims against.
-/

/-! ## A296531.P5156810648345806295

`A296529(A007590(n+1))`
-/

namespace A296531.P5156810648345806295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A007590 (n + 1)).toNat

end

end A296531.P5156810648345806295

/-! ## A296531.P2736525847982650455

`A296529(A000982(n)+n)`
-/

namespace A296531.P2736525847982650455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A000982 n + (n : ℤ)).toNat

end

end A296531.P2736525847982650455

/-! ## A296531.P4874136540556925907

`A296529(∑[2*A110654(n)])`
-/

namespace A296531.P4874136540556925907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296531.P4874136540556925907

/-! ## A296531.P3108015881086578404

`A296529(∑[A115384(2*n)])`
-/

namespace A296531.P3108015881086578404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296531.P3108015881086578404

/-! ## A296531.P12396788110521364292

`A296529(A110654(n²)+n)`
-/

namespace A296531.P12396788110521364292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A296531.P12396788110521364292

/-! ## A296531.P4593774748947331356

`A296529(A115384(n²)+n)`
-/

namespace A296531.P4593774748947331356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A115384 (n ^ 2) + (n : ℤ)).toNat

end

end A296531.P4593774748947331356

/-! ## A296531.P681786988048332126

`A296529(2*A002620(n+1))`
-/

namespace A296531.P681786988048332126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (2 * A002620 (n + 1)).toNat

end

end A296531.P681786988048332126

/-! ## A296531.P6421914651502574927

`A296529(∑[n+1]-∑[A296529(a(n-1))])` with `a(0)=1`
-/

namespace A296531.P6421914651502574927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A296529 (f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A296531.P6421914651502574927

/-! ## A296531.P7153211726999402987

`A296529(A123108(n)+A000124(n))`
-/

namespace A296531.P7153211726999402987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A123108 n + A000124 n).toNat

end

end A296531.P7153211726999402987

/-! ## A296531.P4789984509885970259

`A296529(2*(A000217(n)-A002620(n)))`
-/

namespace A296531.P4789984509885970259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (2 * (A000217 n - A002620 n)).toNat

end

end A296531.P4789984509885970259

/-! ## A296531.P5252266725566631184

`A296529(A002620(n+1)+A002620(n+1))`
-/

namespace A296531.P5252266725566631184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296529 (A002620 (n + 1) + A002620 (n + 1)).toNat

end

end A296531.P5252266725566631184

/-!
# A296532: Number of nonequivalent noncrossing trees with n edges up to rotation.

The programs for A296532, there is no canonical definition to state claims against.
-/

/-! ## A296532.P17940227694163210570

`A361236(∑[n+1]+n)`
-/

namespace A296532.P17940227694163210570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A296532.P17940227694163210570

/-! ## A296532.P16126048121823176307

`A272620(A082194(n+1)+A059231(n))`
-/

namespace A296532.P16126048121823176307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (A082194 (n + 1) + A059231 n).toNat

end

end A296532.P16126048121823176307

/-!
# A296533: Number of nonequivalent noncrossing trees with n edges up to rotation and reflection.

The programs for A296533, there is no canonical definition to state claims against.
-/

/-! ## A296533.P14589281814454857843

`(A296532(n)+A047749(n))/2`
-/

namespace A296533.P14589281814454857843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296532 n + A047749 n : ℚ) / 2

end

end A296533.P14589281814454857843

/-! ## A296533.P1241183467459537999

`(A296532(n)+ceil(A116637(n)/2))/2`
-/

namespace A296533.P1241183467459537999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296532 n + ⌈(A116637 n : ℚ) / 2⌉ : ℚ) / 2

end

end A296533.P1241183467459537999

/-! ## A296533.P4852847204458684028

`(A328901(A213037(n+1))+A296532(n))/2`
-/

namespace A296533.P4852847204458684028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328901 (A213037 (n + 1)).toNat + A296532 n : ℚ) / 2

end

end A296533.P4852847204458684028

/-! ## A296533.P1366931226266765048

`(A296532(n)+A047749(n))*2^A133574(A001316(n))`
-/

namespace A296533.P1366931226266765048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296532 n + A047749 n : ℚ) * (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A296533.P1366931226266765048

/-! ## A296533.P10438438137082168737

`(A296532(n)+A116637(n)/A020639(A000040(n+1)-1))/2`
-/

namespace A296533.P10438438137082168737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A296532 n : ℚ) + (A116637 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)) / 2

end

end A296533.P10438438137082168737

/-! ## A296533.P15005504256470318502

`A361239(∑[n+2]-1)`
-/

namespace A296533.P15005504256470318502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A296533.P15005504256470318502

/-!
# A296535: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1's.

The programs for A296535, there is no canonical definition to state claims against.
-/

/-! ## A296535.P12999041137004276225

`A296541(∑[4*n]+1)`
-/

namespace A296535.P12999041137004276225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296535.P12999041137004276225

/-! ## A296535.P9406508660218085213

`record[gcd(A003987(n), A296541(n+1))]`
-/

namespace A296535.P9406508660218085213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A296541 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296535.P9406508660218085213

/-! ## A296535.P8361450392424957692

`A296541(A001844(n))+A185238(n)`
-/

namespace A296535.P8361450392424957692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A001844 n).toNat + A185238 n

end

end A296535.P8361450392424957692

/-! ## A296535.P16570616729177049811

`lcm(A033999(n), A296541(A001844(n)))`
-/

namespace A296535.P16570616729177049811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296541 (A001844 n).toNat)

end

end A296535.P16570616729177049811

/-! ## A296535.P7592278503742606336

`A101598(n+1)*A296541(A001844(n))`
-/

namespace A296535.P7592278503742606336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101598 (n + 1) * A296541 (A001844 n).toNat

end

end A296535.P7592278503742606336

/-!
# A296536: Number of n X 3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A296536, there is no canonical definition to state claims against.
-/

/-! ## A296536.P8859586520288919796

`A296541(∑[n+2]+4)`
-/

namespace A296536.P8859586520288919796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296536.P8859586520288919796

/-! ## A296536.P4219524708939419639

`A015280(n)*A296541(A167614(n+1))`
-/

namespace A296536.P4219524708939419639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015280 n * A296541 (A167614 (n + 1)).toNat

end

end A296536.P4219524708939419639

/-! ## A296536.P3916785294086843676

`A296541(A167614(n+1))%A017620(n)`
-/

namespace A296536.P3916785294086843676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296541 (A167614 (n + 1)).toNat) (A017620 n)

end

end A296536.P3916785294086843676

/-! ## A296536.P17956215822245530296

`lcm(A033999(n), A296541(A167614(n+1)))`
-/

namespace A296536.P17956215822245530296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296541 (A167614 (n + 1)).toNat)

end

end A296536.P17956215822245530296

/-! ## A296536.P10245276882814941162

`or(A000007(n), A296541(A167614(n+1)))`
-/

namespace A296536.P10245276882814941162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296541 (A167614 (n + 1)).toNat)

end

end A296536.P10245276882814941162

/-!
# A296537: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A296537, there is no canonical definition to state claims against.
-/

/-! ## A296537.P14044251226274796956

`A296541(A374004(n+1))`
-/

namespace A296537.P14044251226274796956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A374004 (n + 1)).toNat

end

end A296537.P14044251226274796956

/-! ## A296537.P11707315540967588191

`A296541(A052905(n)+9)`
-/

namespace A296537.P11707315540967588191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A052905 n + 9).toNat

end

end A296537.P11707315540967588191

/-! ## A296537.P17056800207480545150

`A296541(A055999(n)+10)`
-/

namespace A296537.P17056800207480545150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A055999 n + 10).toNat

end

end A296537.P17056800207480545150

/-! ## A296537.P12129960062593148468

`A296541(A167614(n+2)+1)`
-/

namespace A296537.P12129960062593148468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A167614 (n + 2) + 1).toNat

end

end A296537.P12129960062593148468

/-! ## A296537.P3828694588752416020

`A296541(∑[round(acot(n)+n)+4])`
-/

namespace A296537.P3828694588752416020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296537.P3828694588752416020

/-!
# A296538: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A296538, there is no canonical definition to state claims against.
-/

/-! ## A296538.P1474734537269877252

`A296541(A374005(n+1))`
-/

namespace A296538.P1474734537269877252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A374005 (n + 1)).toNat

end

end A296538.P1474734537269877252

/-! ## A296538.P14108810756878643460

`A296541(A167499(n+3))`
-/

namespace A296538.P14108810756878643460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A167499 (n + 3)).toNat

end

end A296538.P14108810756878643460

/-! ## A296538.P7747662588475810860

`A296541(A155212(n)+13)`
-/

namespace A296538.P7747662588475810860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A155212 n + 13).toNat

end

end A296538.P7747662588475810860

/-! ## A296538.P2116558291963132810

`A296541(A052905(n+3)-(2*n+1))`
-/

namespace A296538.P2116558291963132810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A296538.P2116558291963132810

/-! ## A296538.P1513686241992092593

`A296541(A020710(n)+A052905(n)+9)`
-/

namespace A296538.P1513686241992092593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A020710 n + (A052905 n + 9)).toNat

end

end A296538.P1513686241992092593

/-!
# A296539: Number of n X 6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1's.

The programs for A296539, there is no canonical definition to state claims against.
-/

/-! ## A296539.P697189076858067713

`A296541(A374007(n+1))`
-/

namespace A296539.P697189076858067713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A374007 (n + 1)).toNat

end

end A296539.P697189076858067713

/-! ## A296539.P283032954613484101

`A296541(A167499(n+4)+1)`
-/

namespace A296539.P283032954613484101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A167499 (n + 4) + 1).toNat

end

end A296539.P283032954613484101

/-! ## A296539.P13760682221376984486

`A296541(A000217(n+5)+6)`
-/

namespace A296539.P13760682221376984486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A000217 (n + 5) + 6).toNat

end

end A296539.P13760682221376984486

/-! ## A296539.P497970753382714973

`A296541(A161680(n+6)+6)`
-/

namespace A296539.P497970753382714973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A161680 (n + 6) + 6).toNat

end

end A296539.P497970753382714973

/-! ## A296539.P3284332093932263120

`A296541(A052905(n+3))`
-/

namespace A296539.P3284332093932263120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A052905 (n + 3)).toNat

end

end A296539.P3284332093932263120

/-!
# A296540: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A296540, there is no canonical definition to state claims against.
-/

/-! ## A296540.P10169663611052114702

`A296541(A374008(n+1))`
-/

namespace A296540.P10169663611052114702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A374008 (n + 1)).toNat

end

end A296540.P10169663611052114702

/-! ## A296540.P17533742496431645337

`A296541(A000124(n+6)+6)`
-/

namespace A296540.P17533742496431645337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A000124 (n + 6) + 6).toNat

end

end A296540.P17533742496431645337

/-! ## A296540.P14706352533269243036

`A296541(A000096(n+5)+8)`
-/

namespace A296540.P14706352533269243036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A000096 (n + 5) + 8).toNat

end

end A296540.P14706352533269243036

/-! ## A296540.P6340625238992983050

`A296541(A000217(n+6)+7)`
-/

namespace A296540.P6340625238992983050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (A000217 (n + 6) + 7).toNat

end

end A296540.P6340625238992983050

/-! ## A296540.P8576757454407536375

`A296541(eq[6, A002262(n)]+1)`
-/

namespace A296540.P8576757454407536375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296540.P8576757454407536375

/-!
# A296541: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A296541, there is no canonical definition to state claims against.
-/

/-! ## A296541.P17405366829411993085

`A125568(A034801(n))`
-/

namespace A296541.P17405366829411993085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125568 (A034801 n).toNat

end

end A296541.P17405366829411993085

/-! ## A296541.P15420400639876739941

`A196186(A145903(n))`
-/

namespace A296541.P15420400639876739941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196186 (A145903 n).toNat

end

end A296541.P15420400639876739941

/-! ## A296541.P14485817794456579143

`A328003(A152654(n))`
-/

namespace A296541.P14485817794456579143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A152654 n).toNat

end

end A296541.P14485817794456579143

/-! ## A296541.P13269709805856790087

`A123708(A376935(n))`
-/

namespace A296541.P13269709805856790087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123708 (A376935 n).toNat

end

end A296541.P13269709805856790087

/-! ## A296541.P11015780932090610909

`A196372(A331406(n))`
-/

namespace A296541.P11015780932090610909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196372 (A331406 n).toNat

end

end A296541.P11015780932090610909

/-!
# A296548: Triangle read by rows: T(n,k) is the number of diagonalizable n X n matrices over GF(2) that have rank k, n >= 0, 0 <= k <= n.

The programs for A296548, there is no canonical definition to state claims against.
-/

/-! ## A296548.P13550710890773046621

`A022166(n)*A117401(n)`
-/

namespace A296548.P13550710890773046621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A117401 n

end

end A296548.P13550710890773046621

/-! ## A296548.P799448613964730204

`sqrt(A118185(n))*A022166(n)`
-/

namespace A296548.P799448613964730204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A022166 n : ℝ)

end

end A296548.P799448613964730204

/-! ## A296548.P13394028736654213048

`2^A004247(n)*A022166(n)`
-/

namespace A296548.P13394028736654213048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004247 n : ℤ) * (A022166 n : ℚ)

end

end A296548.P13394028736654213048

/-! ## A296548.P9415961077342042070

`A000079(A004247(n))*A022166(n)`
-/

namespace A296548.P9415961077342042070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat * A022166 n

end

end A296548.P9415961077342042070

/-! ## A296548.P12067715676492093046

`A011782(A077028(n))*A022166(n)`
-/

namespace A296548.P12067715676492093046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A077028 n).toNat * A022166 n

end

end A296548.P12067715676492093046

/-!
# A296549: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1's.

The programs for A296549, there is no canonical definition to state claims against.
-/

/-! ## A296549.P10627125550797468983

`A296554(∑[4*n]+1)`
-/

namespace A296549.P10627125550797468983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296549.P10627125550797468983

/-! ## A296549.P13818026506575705959

`A296554(A001844(n))+char[15]`
-/

namespace A296549.P13818026506575705959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296549.P13818026506575705959

/-! ## A296549.P16694333066424983832

`A326681(n)+A296554(A001844(n))`
-/

namespace A296549.P16694333066424983832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A296554 (A001844 n).toNat

end

end A296549.P16694333066424983832

/-! ## A296549.P15089389534119187851

`A288120(n)*A296554(A001844(n))`
-/

namespace A296549.P15089389534119187851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 n * A296554 (A001844 n).toNat

end

end A296549.P15089389534119187851

/-! ## A296549.P12255552942342137832

`gcd(A000038(n), A296554(A001844(n)))`
-/

namespace A296549.P12255552942342137832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296554 (A001844 n).toNat)

end

end A296549.P12255552942342137832

/-!
# A296550: Number of n X 4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1s.

The programs for A296550, the canonical program `A296550.P7046626392836122046` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296550 has offset 1).

The definition of A296550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296550.P7046626392836122046

`a(n-1)+2*a(n-4)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=10, a(6)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296550

/-- `a(n-1)+2*a(n-4)+a(n-7)` -/
def P7046626392836122046.Spec : Prop :=
  ∀ n, (P7046626392836122046.a n : ℤ) = A296550 (n + 1)

theorem P7046626392836122046.correct : P7046626392836122046.Spec := by
  intro n
  simp only [A296550, Nat.add_sub_cancel]

end A296550

/-! ## A296550.P8454610373801640722

`A005709(2*(n+2))`
-/

namespace A296550.P8454610373801640722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (2 * (n + 2))

end

end A296550.P8454610373801640722

namespace A296550

/-- `A005709(2*(n+2))` -/
def P8454610373801640722.Spec : Prop :=
  ∀ n, P8454610373801640722.a n = A296550 (n + 1)

end A296550

/-! ## A296550.P8980267760691956312

`A017901(2*n+11)`
-/

namespace A296550.P8980267760691956312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (2 * n + 11)

end

end A296550.P8980267760691956312

namespace A296550

/-- `A017901(2*n+11)` -/
def P8980267760691956312.Spec : Prop :=
  ∀ n, P8980267760691956312.a n = A296550 (n + 1)

end A296550

/-! ## A296550.P12992867484546558432

`or(A000007(n), A005709(A005843(n+2)))`
-/

namespace A296550.P12992867484546558432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005709 (A005843 (n + 2)).toNat)

end

end A296550.P12992867484546558432

namespace A296550

/-- `or(A000007(n), A005709(A005843(n+2)))` -/
def P12992867484546558432.Spec : Prop :=
  ∀ n, P12992867484546558432.a n = A296550 (n + 1)

end A296550

/-! ## A296550.P13550232035843888581

`lcm(A005709(A005843(n+2)), A209615(n+1))`
-/

namespace A296550.P13550232035843888581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005709 (A005843 (n + 2)).toNat) (A209615 (n + 1))

end

end A296550.P13550232035843888581

namespace A296550

/-- `lcm(A005709(A005843(n+2)), A209615(n+1))` -/
def P13550232035843888581.Spec : Prop :=
  ∀ n, (P13550232035843888581.a n : ℤ) = A296550 (n + 1)

end A296550

/-! ## A296550.P15263884441781718219

`sqrt(A224813(4*(n+2)))`
-/

namespace A296550.P15263884441781718219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224813 (4 * (n + 2)) : ℝ)

end

end A296550.P15263884441781718219

namespace A296550

/-- `sqrt(A224813(4*(n+2)))` -/
def P15263884441781718219.Spec : Prop :=
  ∀ n, P15263884441781718219.a n = (A296550 (n + 1) : ℝ)

end A296550

/-! ## A296550.P5437581493050047655

`A005709(A051755(n+3))%A214511(n+1)`
-/

namespace A296550.P5437581493050047655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005709 (A051755 (n + 3)).toNat) (A214511 (n + 1))

end

end A296550.P5437581493050047655

namespace A296550

/-- `A005709(A051755(n+3))%A214511(n+1)` -/
def P5437581493050047655.Spec : Prop :=
  ∀ n, P5437581493050047655.a n = A296550 (n + 1)

end A296550

/-!
# A296551: Number of n X 5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1s.

The programs for A296551, there is no canonical definition to state claims against.
-/

/-! ## A296551.P16142066454861644819

`A296554(A167499(n+3))`
-/

namespace A296551.P16142066454861644819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A167499 (n + 3)).toNat

end

end A296551.P16142066454861644819

/-! ## A296551.P6695520390318260468

`A296554(A155212(n)+13)`
-/

namespace A296551.P6695520390318260468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A155212 n + 13).toNat

end

end A296551.P6695520390318260468

/-! ## A296551.P7368589416146402868

`A296554(A056000(n)+15)`
-/

namespace A296551.P7368589416146402868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A056000 n + 15).toNat

end

end A296551.P7368589416146402868

/-! ## A296551.P4157490882594326348

`A296554(A133263(n+4)+3)`
-/

namespace A296551.P4157490882594326348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A133263 (n + 4) + 3).toNat

end

end A296551.P4157490882594326348

/-! ## A296551.P5579417186534173994

`A296554(A000124(n+4)+4)`
-/

namespace A296551.P5579417186534173994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000124 (n + 4) + 4).toNat

end

end A296551.P5579417186534173994

/-!
# A296552: Number of n X 6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1s.

The programs for A296552, there is no canonical definition to state claims against.
-/

/-! ## A296552.P14129263441126914247

`A296554(A056115(n)+21)`
-/

namespace A296552.P14129263441126914247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A056115 n + 21).toNat

end

end A296552.P14129263441126914247

/-! ## A296552.P10497758282861441428

`A296554(A000124(n+5)+5)`
-/

namespace A296552.P10497758282861441428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000124 (n + 5) + 5).toNat

end

end A296552.P10497758282861441428

/-! ## A296552.P7086802321704840088

`A296554(A000096(n+4)+7)`
-/

namespace A296552.P7086802321704840088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000096 (n + 4) + 7).toNat

end

end A296552.P7086802321704840088

/-! ## A296552.P3523254318052705116

`A296554(A000217(n+5)+6)`
-/

namespace A296552.P3523254318052705116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000217 (n + 5) + 6).toNat

end

end A296552.P3523254318052705116

/-! ## A296552.P7854652293307875939

`A296554(A046691(n+3)+10)`
-/

namespace A296552.P7854652293307875939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A046691 (n + 3) + 10).toNat

end

end A296552.P7854652293307875939

/-!
# A296553: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1s.

The programs for A296553, there is no canonical definition to state claims against.
-/

/-! ## A296553.P12654606643914623231

`A296554(A056119(n)+28)`
-/

namespace A296553.P12654606643914623231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A056119 n + 28).toNat

end

end A296553.P12654606643914623231

/-! ## A296553.P4071071857596767958

`A296554(A167499(n+5)+2)`
-/

namespace A296553.P4071071857596767958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A167499 (n + 5) + 2).toNat

end

end A296553.P4071071857596767958

/-! ## A296553.P17090957752825270946

`A296554(A000124(n+6)+6)`
-/

namespace A296553.P17090957752825270946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000124 (n + 6) + 6).toNat

end

end A296553.P17090957752825270946

/-! ## A296553.P1053464477560247035

`A296554(A000096(n+5)+8)`
-/

namespace A296553.P1053464477560247035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000096 (n + 5) + 8).toNat

end

end A296553.P1053464477560247035

/-! ## A296553.P17236843753573265950

`A296554(A000217(n+6)+7)`
-/

namespace A296553.P17236843753573265950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (A000217 (n + 6) + 7).toNat

end

end A296553.P17236843753573265950

/-!
# A296554: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 3 or 6 neighboring 1s.

The programs for A296554, there is no canonical definition to state claims against.
-/

/-! ## A296554.P11197119370607010575

`A001462(A119326(n)%A077428(n+1))`
-/

namespace A296554.P11197119370607010575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A119326 n) (A077428 (n + 1))).toNat

end

end A296554.P11197119370607010575

/-! ## A296554.P7910535999619536269

`A001462(A119326(n))%A141098(n+1)`
-/

namespace A296554.P7910535999619536269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A119326 n).toNat) (A141098 (n + 1))

end

end A296554.P7910535999619536269

/-! ## A296554.P9643874697158976244

`A055086(A119326(n))%A260086(n+1)`
-/

namespace A296554.P9643874697158976244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055086 (A119326 n).toNat) (A260086 (n + 1))

end

end A296554.P9643874697158976244

/-! ## A296554.P500031961769679176

`A256478(A384121(n))`
-/

namespace A296554.P500031961769679176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A384121 n).toNat

end

end A296554.P500031961769679176

/-! ## A296554.P4320864337864121187

`A226029(A219924(n)*A334549(n))`
-/

namespace A296554.P4320864337864121187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A219924 n * A334549 n).toNat

end

end A296554.P4320864337864121187

/-!
# A296555: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296555, there is no canonical definition to state claims against.
-/

/-! ## A296555.P17581775941037584742

`A294546(n)+∑[A106345(A011782(n))]`
-/

namespace A296555.P17581775941037584742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294546 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296555.P17581775941037584742

/-! ## A296555.P1941066519155435782

`A294550(n)+A079978(A243083(n))`
-/

namespace A296555.P1941066519155435782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294550 n + A079978 (A243083 n).toNat

end

end A296555.P1941066519155435782

/-! ## A296555.P8193690047030919170

`A004277(A294546(n))-A294537(n)`
-/

namespace A296555.P8193690047030919170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294546 n).toNat - A294537 n

end

end A296555.P8193690047030919170

/-! ## A296555.P17387336987284946656

`∑[A212804(n)]-A024000(A294546(n))`
-/

namespace A296555.P17387336987284946656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024000 (A294546 n).toNat

end

end A296555.P17387336987284946656

/-! ## A296555.P1143527948612431392

`A028310(A294546(n)+A000071(n+1))`
-/

namespace A296555.P1143527948612431392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A294546 n + A000071 (n + 1)).toNat

end

end A296555.P1143527948612431392

/-!
# A296556: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296556, there is no canonical definition to state claims against.
-/

/-! ## A296556.P792641308154256228

`A304597(∑[n+1])+A294549(n)`
-/

namespace A296556.P792641308154256228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (∑ j ∈ Finset.range (n + 1), f1 j) + A294549 n

end

end A296556.P792641308154256228

/-! ## A296556.P14703801135518590820

`A304901(∑[n+1])+A294549(n)`
-/

namespace A296556.P14703801135518590820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (∑ j ∈ Finset.range (n + 1), f1 j) + A294549 n

end

end A296556.P14703801135518590820

/-! ## A296556.P1157429680442487476

`A316583(∑[n+1])+A294549(n)`
-/

namespace A296556.P1157429680442487476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316583 (∑ j ∈ Finset.range (n + 1), f1 j) + A294549 n

end

end A296556.P1157429680442487476

/-! ## A296556.P11942021714146933377

`A294540(n)+A001222(2^n)`
-/

namespace A296556.P11942021714146933377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294540 n + A001222 (2 ^ n)

end

end A296556.P11942021714146933377

/-! ## A296556.P13203680071559094568

`A294540(n)%A294492(3*(n+1))+n`
-/

namespace A296556.P13203680071559094568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294540 n) (A294492 (3 * (n + 1))) + (n : ℤ)

end

end A296556.P13203680071559094568

/-!
# A296557: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296557, there is no canonical definition to state claims against.
-/

/-! ## A296557.P9382635304689159946

`A005041(8*A115730(n))+∑[A000045(n)]`
-/

namespace A296557.P9382635304689159946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (8 * A115730 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296557.P9382635304689159946

/-! ## A296557.P11394906271246652578

`A005041(A175395(n+1)-1)+∑[A000045(n)]`
-/

namespace A296557.P11394906271246652578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A175395 (n + 1) - 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296557.P11394906271246652578

/-! ## A296557.P17465078766944422572

`A005041(A175395(n+1)-1)+∑[A103609(2*n)]`
-/

namespace A296557.P17465078766944422572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A175395 (n + 1) - 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296557.P17465078766944422572

/-! ## A296557.P17340456246563246054

`A055642(2*A153773(n+1)-1)+4/2-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A296557.P17340456246563246054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A055642 (2 * A153773 (n + 1) - 1).toNat : ℚ) + ((4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2)))

end

end A296557.P17340456246563246054

/-! ## A296557.P10776187326566030230

`A003056(A088210(n))+A000071(n+1)`
-/

namespace A296557.P10776187326566030230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A088210 n).toNat + A000071 (n + 1)

end

end A296557.P10776187326566030230

/-!
# A296558: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296558, there is no canonical definition to state claims against.
-/

/-! ## A296558.P10654974256215930832

`A028310(A294545(n)-A065220(n+1))`
-/

namespace A296558.P10654974256215930832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A294545 n - A065220 (n + 1)).toNat

end

end A296558.P10654974256215930832

/-! ## A296558.P989912640255808461

`A294545(n)-A065220(A187829(n+1))`
-/

namespace A296558.P989912640255808461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n - A065220 (A187829 (n + 1)).toNat

end

end A296558.P989912640255808461

/-! ## A296558.P16159332012841414561

`A055086(A018032(n))+A001911(n)`
-/

namespace A296558.P16159332012841414561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A018032 n).toNat + A001911 n

end

end A296558.P16159332012841414561

/-! ## A296558.P15515450987104608874

`A000006(A048746(n)-A179006(n))`
-/

namespace A296558.P15515450987104608874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A048746 n - A179006 n).toNat

end

end A296558.P15515450987104608874

/-! ## A296558.P7754550772321659367

`A096135(A182415(n))`
-/

namespace A296558.P7754550772321659367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A182415 n).toNat

end

end A296558.P7754550772321659367

/-!
# A296559: Triangle read by rows: T(n,k) is the number of compositions of n having k parts equal to 1 or 2 (0<=k<=n).

The programs for A296559, there is no canonical definition to state claims against.
-/

/-! ## A296559.P454458109457175573

`A247299(n-A016389(A119502(n)))`
-/

namespace A296559.P454458109457175573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 ((n : ℤ) - A016389 (A119502 n).toNat).toNat

end

end A296559.P454458109457175573

/-! ## A296559.P2515884701560157916

`A247299(n-A016389(A152656(n)))`
-/

namespace A296559.P2515884701560157916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 ((n : ℤ) - A016389 (A152656 n).toNat).toNat

end

end A296559.P2515884701560157916

/-! ## A296559.P6194599509641579564

`A247299(n-A322437(A000051(n)))`
-/

namespace A296559.P6194599509641579564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 ((n : ℤ) - A322437 (A000051 n).toNat).toNat

end

end A296559.P6194599509641579564

/-!
# A296560: Number of normal semistandard Young tableaux whose shape is the conjugate of the integer partition with Heinz number n.

The programs for A296560, there is no canonical definition to state claims against.
-/

/-! ## A296560.P14443002281692037017

`A296188(gcd(A025543(n), A122111(n+1)))`
-/

namespace A296560.P14443002281692037017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (Int.gcd (A025543 n) (A122111 (n + 1)))

end

end A296560.P14443002281692037017

/-! ## A296560.P9231625988016591870

`A296188(A122111(n+1)%A081863(n+1))`
-/

namespace A296560.P9231625988016591870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (Int.tmod (A122111 (n + 1)) (A081863 (n + 1))).toNat

end

end A296560.P9231625988016591870

/-! ## A296560.P14020812075909726831

`A296188(A243053(n+1)%A081863(n+1))`
-/

namespace A296560.P14020812075909726831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (Int.tmod (A243053 (n + 1)) (A081863 (n + 1))).toNat

end

end A296560.P14020812075909726831

/-! ## A296560.P16975620612709204760

`A296188(A279351(n+1)%A081863(n+1))`
-/

namespace A296560.P16975620612709204760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (Int.tmod (A279351 (n + 1)) (A081863 (n + 1))).toNat

end

end A296560.P16975620612709204760

/-! ## A296560.P5845474137162997478

`A296188(gcd(A243053(n+1), A321907(n+1)))`
-/

namespace A296560.P5845474137162997478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (Int.gcd (A243053 (n + 1)) (A321907 (n + 1)))

end

end A296560.P5845474137162997478

/-!
# A296561: Number of rim-hook (or border-strip) tableaux whose shape is the integer partition with Heinz number n.

The programs for A296561, there is no canonical definition to state claims against.
-/

/-! ## A296561.P9035502304820573203

`A300121(n+1)-A010054(A288925(n))`
-/

namespace A296561.P9035502304820573203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1) - A010054 (A288925 n).toNat

end

end A296561.P9035502304820573203

/-! ## A296561.P3941940089801167985

`A300121(n+1)-A243046(A276532(n))`
-/

namespace A296561.P3941940089801167985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1) - A243046 (A276532 n).toNat

end

end A296561.P3941940089801167985

/-! ## A296561.P1988423481912201181

`A300121(n+1)-A121373(A001211(n+1))`
-/

namespace A296561.P1988423481912201181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1) - A121373 (A001211 (n + 1)).toNat

end

end A296561.P1988423481912201181

/-! ## A296561.P5605170699937695774

`A300121(n+1)-A295662(A123124(n+1))`
-/

namespace A296561.P5605170699937695774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1) - A295662 (A123124 (n + 1)).toNat

end

end A296561.P5605170699937695774

/-! ## A296561.P3276310058976008159

`A300121(n+1)-A276794(A276785(n+2))`
-/

namespace A296561.P3276310058976008159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1) - A276794 (A276785 (n + 2)).toNat

end

end A296561.P3276310058976008159

/-!
# A296571: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1's.

The programs for A296571, there is no canonical definition to state claims against.
-/

/-! ## A296571.P16284743496731866315

`A296578(∑[4*n]+1)`
-/

namespace A296571.P16284743496731866315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296571.P16284743496731866315

/-! ## A296571.P12619159849741364105

`record[A003982(n)*A296578(n+1)]`
-/

namespace A296571.P12619159849741364105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296571.P12619159849741364105

/-! ## A296571.P773804665529612760

`record[gcd(A114327(n), A296578(n+1))]`
-/

namespace A296571.P773804665529612760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296578 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296571.P773804665529612760

/-! ## A296571.P12702224768188840571

`A296578(A001844(n))+A185284(n)`
-/

namespace A296571.P12702224768188840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A001844 n).toNat + A185284 n

end

end A296571.P12702224768188840571

/-! ## A296571.P4767116775893969933

`gcd(A000038(n), A296578(A001844(n)))`
-/

namespace A296571.P4767116775893969933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296578 (A001844 n).toNat)

end

end A296571.P4767116775893969933

/-!
# A296572: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296572, there is no canonical definition to state claims against.
-/

/-! ## A296572.P11436259768103636535

`A296578(∑[n+1]+2)`
-/

namespace A296572.P11436259768103636535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296572.P11436259768103636535

/-! ## A296572.P15521982222901621569

`record[A296578(A117142(n+2))]`
-/

namespace A296572.P15521982222901621569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296572.P15521982222901621569

/-! ## A296572.P11585828043208922582

`record[A296578(Δ[A003453(n+5)])]`
-/

namespace A296572.P11585828043208922582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296572.P11585828043208922582

/-! ## A296572.P3499466229521632864

`and(1-4/2, A296578(A000096(n+1)))`
-/

namespace A296572.P3499466229521632864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A296578 (A000096 (n + 1)).toNat)

end

end A296572.P3499466229521632864

/-! ## A296572.P17469848650820035640

`A296578(A000096(n+1))+A185284(n)`
-/

namespace A296572.P17469848650820035640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A000096 (n + 1)).toNat + A185284 n

end

end A296572.P17469848650820035640

/-!
# A296573: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296573, there is no canonical definition to state claims against.
-/

/-! ## A296573.P6543323415394484647

`A296578(∑[n+2]+4)`
-/

namespace A296573.P6543323415394484647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296573.P6543323415394484647

/-! ## A296573.P11333797988643482841

`A296578(A167614(n+1))%A016952(n)`
-/

namespace A296573.P11333797988643482841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296578 (A167614 (n + 1)).toNat) (A016952 n)

end

end A296573.P11333797988643482841

/-! ## A296573.P12152262885528188073

`or(A010894(n), A296578(A167614(n+1)))`
-/

namespace A296573.P12152262885528188073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (n + 21)) (A296578 (A167614 (n + 1)).toNat)

end

end A296573.P12152262885528188073

/-! ## A296573.P4494057910600838640

`or(A151934(n), A296578(A167614(n+1)))`
-/

namespace A296573.P4494057910600838640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151934 n) (A296578 (A167614 (n + 1)).toNat)

end

end A296573.P4494057910600838640

/-! ## A296573.P12458586413848215689

`or(A178333(n), A296578(A167614(n+1)))`
-/

namespace A296573.P12458586413848215689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A296578 (A167614 (n + 1)).toNat)

end

end A296573.P12458586413848215689

/-!
# A296574: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296574, there is no canonical definition to state claims against.
-/

/-! ## A296574.P2860792571470193302

`A296578(A374004(n+1))`
-/

namespace A296574.P2860792571470193302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A374004 (n + 1)).toNat

end

end A296574.P2860792571470193302

/-! ## A296574.P17382199431041895004

`A296578(A141214(n)+7)`
-/

namespace A296574.P17382199431041895004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A141214 n + 7).toNat

end

end A296574.P17382199431041895004

/-! ## A296574.P5553715142027523439

`A296578(A167614(n+2)+1)`
-/

namespace A296574.P5553715142027523439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A167614 (n + 2) + 1).toNat

end

end A296574.P5553715142027523439

/-! ## A296574.P1607236788873011838

`A296578(Δ[A264443(n)-n²])`
-/

namespace A296574.P1607236788873011838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (f1 (n + 1) - f1 n).toNat

end

end A296574.P1607236788873011838

/-! ## A296574.P12058892300421676203

`A296578(A080036(A167614(n+1)))`
-/

namespace A296574.P12058892300421676203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A296574.P12058892300421676203

/-!
# A296575: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296575, there is no canonical definition to state claims against.
-/

/-! ## A296575.P3573530021192538606

`A296578(A374005(n+1))`
-/

namespace A296575.P3573530021192538606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A374005 (n + 1)).toNat

end

end A296575.P3573530021192538606

/-! ## A296575.P17171748561333573587

`A296578(A167499(n+3))`
-/

namespace A296575.P17171748561333573587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A167499 (n + 3)).toNat

end

end A296575.P17171748561333573587

/-! ## A296575.P16598575935364841861

`A296578(A000217(n+4)+5)`
-/

namespace A296575.P16598575935364841861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A000217 (n + 4) + 5).toNat

end

end A296575.P16598575935364841861

/-! ## A296575.P2481596818457675567

`A296578(eq[6, A131818(n+1)])`
-/

namespace A296575.P2481596818457675567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296575.P2481596818457675567

/-! ## A296575.P7234839604369305119

`A296578(Δ[A264443(n)])`
-/

namespace A296575.P7234839604369305119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (f1 (n + 1) - f1 n).toNat

end

end A296575.P7234839604369305119

/-!
# A296576: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296576, there is no canonical definition to state claims against.
-/

/-! ## A296576.P8085526941587663146

`A296578(A374007(n+1))`
-/

namespace A296576.P8085526941587663146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A374007 (n + 1)).toNat

end

end A296576.P8085526941587663146

/-! ## A296576.P15816567557357515062

`A296578(eq[7, A131818(n+1)])`
-/

namespace A296576.P15816567557357515062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296576.P15816567557357515062

/-! ## A296576.P18028298422663897620

`A296578(A052905(n+3))`
-/

namespace A296576.P18028298422663897620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A052905 (n + 3)).toNat

end

end A296576.P18028298422663897620

/-! ## A296576.P5691882835109432633

`A296578(eq[3, A219347(n)])`
-/

namespace A296576.P5691882835109432633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296576.P5691882835109432633

/-! ## A296576.P641730085377931446

`A296578(eq[5, A193592(n)])`
-/

namespace A296576.P641730085377931446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296576.P641730085377931446

/-!
# A296577: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296577, there is no canonical definition to state claims against.
-/

/-! ## A296577.P4168823798954281789

`A296578(A374008(n+1))`
-/

namespace A296577.P4168823798954281789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A374008 (n + 1)).toNat

end

end A296577.P4168823798954281789

/-! ## A296577.P3779118692981170546

`A296578(eq[8, A131818(n+1)])`
-/

namespace A296577.P3779118692981170546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296577.P3779118692981170546

/-! ## A296577.P14219734944311373667

`A296578(A055999(n+4))`
-/

namespace A296577.P14219734944311373667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (A055999 (n + 4)).toNat

end

end A296577.P14219734944311373667

/-! ## A296577.P13881545227746162391

`A296578(eq[4, A219347(n)])`
-/

namespace A296577.P13881545227746162391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296577.P13881545227746162391

/-! ## A296577.P4483735595330546656

`A296578(eq[6, A193592(n)])`
-/

namespace A296577.P4483735595330546656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296577.P4483735595330546656

/-!
# A296578: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 1 or 3 neighboring 1s.

The programs for A296578, there is no canonical definition to state claims against.
-/

/-! ## A296578.P16676183027179114826

`A323048(A282862(n+1)+1)`
-/

namespace A296578.P16676183027179114826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A282862 (n + 1) + 1).toNat

end

end A296578.P16676183027179114826

/-! ## A296578.P4792709874765853807

`A282862(n+1)+A055641(A095577(n))`
-/

namespace A296578.P4792709874765853807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (n + 1) + A055641 (A095577 n).toNat

end

end A296578.P4792709874765853807

/-! ## A296578.P1454283269641691768

`A282862(n+1)+A102683(A080876(n))`
-/

namespace A296578.P1454283269641691768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (n + 1) + A102683 (A080876 n).toNat

end

end A296578.P1454283269641691768

/-! ## A296578.P4829276946461531851

`A282862(n+1)+A016389(A296548(n))`
-/

namespace A296578.P4829276946461531851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (n + 1) + A016389 (A296548 n).toNat

end

end A296578.P4829276946461531851

/-! ## A296578.P14663445503130315913

`A282862(n+1)+A003982(A309864(n))`
-/

namespace A296578.P14663445503130315913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (n + 1) + A003982 (A309864 n).toNat

end

end A296578.P14663445503130315913

/-!
# A296579: Numbers that are not the sum of 3 squares and a nonnegative 9th power.

The programs for A296579, there is no canonical definition to state claims against.
-/

/-! ## A296579.P6690850837298274965

`∪[112+n*128, A008574(112+n*128)]`
-/

namespace A296579.P6690850837298274965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  112 + n * 128

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (112 + n * 128)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296579.P6690850837298274965

/-! ## A296579.P15841006323871657691

`∩[A004215(n+1), A260398(n+1)]`
-/

namespace A296579.P15841006323871657691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296579.P15841006323871657691

/-! ## A296579.P7573629748881880650

`∪[A008574(A296185(n+1)), 112+n*128]`
-/

namespace A296579.P7573629748881880650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A296185 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  112 + n * 128

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A296579.P7573629748881880650

/-! ## A296579.P9973823159800901201

`A008598(eq[A000164(n), A014457(n+2)])`
-/

namespace A296579.P9973823159800901201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296579.P9973823159800901201

/-! ## A296579.P5983627204179766835

`A008574(4*eq[A000164(n), A014457(n+2)])`
-/

namespace A296579.P5983627204179766835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296579.P5983627204179766835

/-!
# A296581: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1's.

The programs for A296581, there is no canonical definition to state claims against.
-/

/-! ## A296581.P12436576640721667143

`A296588(∑[4*n]+1)`
-/

namespace A296581.P12436576640721667143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296581.P12436576640721667143

/-! ## A296581.P3121339535097991762

`record[A003982(n)*A296588(n+1)]`
-/

namespace A296581.P3121339535097991762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296581.P3121339535097991762

/-! ## A296581.P6880367753943278038

`record[gcd(A141692(n), A296588(n+1))]`
-/

namespace A296581.P6880367753943278038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141692 n) (A296588 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296581.P6880367753943278038

/-! ## A296581.P12058103405760616001

`A108358(n)*A296588(A001844(n))`
-/

namespace A296581.P12058103405760616001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108358 n * A296588 (A001844 n).toNat

end

end A296581.P12058103405760616001

/-! ## A296581.P7251996747891696558

`gcd(A000038(n), A296588(A001844(n)))`
-/

namespace A296581.P7251996747891696558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296588 (A001844 n).toNat)

end

end A296581.P7251996747891696558

/-!
# A296582: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296582, there is no canonical definition to state claims against.
-/

/-! ## A296582.P394646892078922940

`A296588(∑[n+1]+2)`
-/

namespace A296582.P394646892078922940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296582.P394646892078922940

/-! ## A296582.P7246392514451216472

`or(A000007(n), A296588(A000096(n)+3))`
-/

namespace A296582.P7246392514451216472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296588 (A000096 n + 3).toNat)

end

end A296582.P7246392514451216472

/-! ## A296582.P2273562446458624681

`A296588(A000096(n)+3)+A034462(n+1)`
-/

namespace A296582.P2273562446458624681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A000096 n + 3).toNat + A034462 (n + 1)

end

end A296582.P2273562446458624681

/-! ## A296582.P4333388215931393591

`A296588(A000096(n)+3)%A161784(n+1)`
-/

namespace A296582.P4333388215931393591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296588 (A000096 n + 3).toNat) (A161784 (n + 1))

end

end A296582.P4333388215931393591

/-! ## A296582.P8865131449044952698

`record[A296588(A117142(n+2))]`
-/

namespace A296582.P8865131449044952698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296582.P8865131449044952698

/-!
# A296583: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296583, there is no canonical definition to state claims against.
-/

/-! ## A296583.P12000660177585170150

`A296588(∑[n+2]+4)`
-/

namespace A296583.P12000660177585170150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296583.P12000660177585170150

/-! ## A296583.P4040947308809333376

`A296588(A167614(n+1))+A025439(n)`
-/

namespace A296583.P4040947308809333376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A167614 (n + 1)).toNat + A025439 n

end

end A296583.P4040947308809333376

/-! ## A296583.P18095787712948910155

`A296588(A000217(n+2)+3)+A025439(n)`
-/

namespace A296583.P18095787712948910155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A000217 (n + 2) + 3).toNat + A025439 n

end

end A296583.P18095787712948910155

/-! ## A296583.P5700506828079016910

`lcm(A158388(n), A296588(A000217(n+2)+3))`
-/

namespace A296583.P5700506828079016910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A296588 (A000217 (n + 2) + 3).toNat)

end

end A296583.P5700506828079016910

/-! ## A296583.P3126804394896578731

`A007318(A000217(n))*A296588(A167614(n+1))`
-/

namespace A296583.P3126804394896578731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A296588 (A167614 (n + 1)).toNat

end

end A296583.P3126804394896578731

/-!
# A296584: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296584, there is no canonical definition to state claims against.
-/

/-! ## A296584.P9778393884939994736

`A296588(A374004(n+1))`
-/

namespace A296584.P9778393884939994736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A374004 (n + 1)).toNat

end

end A296584.P9778393884939994736

/-! ## A296584.P17186293211905699545

`A296588(A141214(n)+7)`
-/

namespace A296584.P17186293211905699545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A141214 n + 7).toNat

end

end A296584.P17186293211905699545

/-! ## A296584.P14219187859975342762

`A296588(A052905(n)+9)`
-/

namespace A296584.P14219187859975342762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A052905 n + 9).toNat

end

end A296584.P14219187859975342762

/-! ## A296584.P7858423322018439705

`A296588(A055999(n)+10)`
-/

namespace A296584.P7858423322018439705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A055999 n + 10).toNat

end

end A296584.P7858423322018439705

/-! ## A296584.P10904391708487913004

`A296588(A167614(n+2)+1)`
-/

namespace A296584.P10904391708487913004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A167614 (n + 2) + 1).toNat

end

end A296584.P10904391708487913004

/-!
# A296585: Number of n X 5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1's.

The programs for A296585, there is no canonical definition to state claims against.
-/

/-! ## A296585.P7236152463294056510

`A296588(A374005(n+1))`
-/

namespace A296585.P7236152463294056510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A374005 (n + 1)).toNat

end

end A296585.P7236152463294056510

/-! ## A296585.P11440521348433724058

`A296588(A167499(n+3))`
-/

namespace A296585.P11440521348433724058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A167499 (n + 3)).toNat

end

end A296585.P11440521348433724058

/-! ## A296585.P1843082190059905325

`A296588(A056000(n)+15)`
-/

namespace A296585.P1843082190059905325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A056000 n + 15).toNat

end

end A296585.P1843082190059905325

/-! ## A296585.P15723238481813840590

`A296588(eq[6, A131818(n+1)])`
-/

namespace A296585.P15723238481813840590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296585.P15723238481813840590

/-! ## A296585.P4126793273388500104

`A296588(A034856(n+4)-(n-2))`
-/

namespace A296585.P4126793273388500104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A296585.P4126793273388500104

/-!
# A296586: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296586, there is no canonical definition to state claims against.
-/

/-! ## A296586.P318438791127482901

`A296588(A374007(n+1))`
-/

namespace A296586.P318438791127482901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A374007 (n + 1)).toNat

end

end A296586.P318438791127482901

/-! ## A296586.P6773985345826084380

`A296588(eq[7, A131818(n+1)])`
-/

namespace A296586.P6773985345826084380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296586.P6773985345826084380

/-! ## A296586.P1661321115392489947

`A296588(A052905(n+3))`
-/

namespace A296586.P1661321115392489947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A052905 (n + 3)).toNat

end

end A296586.P1661321115392489947

/-! ## A296586.P13234351263292278839

`A296588(eq[3, A219347(n)])`
-/

namespace A296586.P13234351263292278839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296586.P13234351263292278839

/-! ## A296586.P148152268413084738

`A296588(eq[5, A193592(n)])`
-/

namespace A296586.P148152268413084738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296586.P148152268413084738

/-!
# A296587: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296587, there is no canonical definition to state claims against.
-/

/-! ## A296587.P1193066948225912903

`A296588(A374008(n+1))`
-/

namespace A296587.P1193066948225912903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A374008 (n + 1)).toNat

end

end A296587.P1193066948225912903

/-! ## A296587.P3406605317864980869

`A296588(eq[8, A131818(n+1)])`
-/

namespace A296587.P3406605317864980869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296587.P3406605317864980869

/-! ## A296587.P1516689836701420021

`A296588(A055999(n+4))`
-/

namespace A296587.P1516689836701420021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (A055999 (n + 4)).toNat

end

end A296587.P1516689836701420021

/-! ## A296587.P14960209172601914255

`A296588(eq[4, A219347(n)])`
-/

namespace A296587.P14960209172601914255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296587.P14960209172601914255

/-! ## A296587.P12891967202717342213

`A296588(eq[6, A193592(n)])`
-/

namespace A296587.P12891967202717342213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296587.P12891967202717342213

/-!
# A296588: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0, 2 or 3 neighboring 1s.

The programs for A296588, there is no canonical definition to state claims against.
-/

/-! ## A296588.P17051511001317168855

`A325400(A296725(n+1))`
-/

namespace A296588.P17051511001317168855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A296725 (n + 1)).toNat

end

end A296588.P17051511001317168855

/-! ## A296588.P10290582087086892536

`A296674(n+1)+A091384(A091378(n))`
-/

namespace A296588.P10290582087086892536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296674 (n + 1) + A091384 (A091378 n).toNat

end

end A296588.P10290582087086892536

/-! ## A296588.P15723942616223235076

`A118759(A295531(n+1)+1-A230910(n+1))`
-/

namespace A296588.P15723942616223235076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A295531 (n + 1) + (1 - A230910 (n + 1))).toNat

end

end A296588.P15723942616223235076

/-!
# A296589: a(n) = Product_{k=0..n} binomial(2*n, k).

The programs for A296589, there is no canonical definition to state claims against.
-/

/-! ## A296589.P7074157106027207587

`A061778(A004277(n))`
-/

namespace A296589.P7074157106027207587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061778 (A004277 n).toNat

end

end A296589.P7074157106027207587

/-! ## A296589.P2823166163356105544

`A061778(A028310(2*n))`
-/

namespace A296589.P2823166163356105544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061778 (A028310 (2 * n)).toNat

end

end A296589.P2823166163356105544

/-! ## A296589.P8994520710758909758

`A061778(A028310(n)+n)`
-/

namespace A296589.P8994520710758909758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061778 (A028310 n + (n : ℤ)).toNat

end

end A296589.P8994520710758909758

/-! ## A296589.P14484023418518090339

`record[gcd(A061778(n+1), A142150(n))]`
-/

namespace A296589.P14484023418518090339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061778 (n + 1)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296589.P14484023418518090339

/-! ## A296589.P8013276032682999323

`record[and(A061778(n+1), A280193(n))]`
-/

namespace A296589.P8013276032682999323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061778 (n + 1)) (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296589.P8013276032682999323

/-!
# A296590: a(n) = Product_{k=0..n} binomial(2*n - k, k).

The programs for A296590, there is no canonical definition to state claims against.
-/

/-! ## A296590.P660752673717218985

`∏[C(abs(1-2*n), n)]`
-/

namespace A296590.P660752673717218985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (2 * n : ℤ)|.toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A296590.P660752673717218985

/-! ## A296590.P12500447884619585504

`2*∏[C(2*n, n)/2]`
-/

namespace A296590.P12500447884619585504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A296590.P12500447884619585504

/-! ## A296590.P15621497623215075445

`∏[(4-2/n)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A296590.P15621497623215075445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A296590.P15621497623215075445

/-! ## A296590.P7390728872864214041

`C(2*n-1, n)*a(n-1)` with `a(0)=1`
-/

namespace A296590.P7390728872864214041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((2 * n : ℤ) - 1).toNat n * a (n - 1)

end

end A296590.P7390728872864214041

/-!
# A296591: a(n) = Product_{k=0..n} (n + k)!.

The programs for A296591, the canonical program `A296591.P10314345524043067546` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296591 has offset 0).

The definition of A296591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296591.P10314345524043067546

`a(n-1)*(2*n-1)!*(2*n)!/(n-1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A296591

/-- `a(n-1)*(2*n-1)!*(2*n)!/(n-1)!` -/
def P10314345524043067546.Spec : Prop :=
  ∀ n, P10314345524043067546.a n = (A296591 n : ℚ)

end A296591

/-! ## A296591.P11763942026695823055

`∏[n!*A123072(n)]`
-/

namespace A296591.P11763942026695823055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A123072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A296591.P11763942026695823055

namespace A296591

/-- `∏[n!*A123072(n)]` -/
def P11763942026695823055.Spec : Prop :=
  ∀ n, P11763942026695823055.a n = A296591 n

end A296591

/-! ## A296591.P8468541141192137751

`∏[∏[(1-2*n)²]*A051711(n)]`
-/

namespace A296591.P8468541141192137751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) * A051711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A296591.P8468541141192137751

namespace A296591

/-- `∏[∏[(1-2*n)²]*A051711(n)]` -/
def P8468541141192137751.Spec : Prop :=
  ∀ n, P8468541141192137751.a n = A296591 n

end A296591

/-! ## A296591.P227694773333651724

`∏[n!*C(2*n, n)]/2^n*A098694(n)`
-/

namespace A296591.P227694773333651724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 ^ n : ℚ) * (A098694 n : ℚ)

end

end A296591.P227694773333651724

namespace A296591

/-- `∏[n!*C(2*n, n)]/2^n*A098694(n)` -/
def P227694773333651724.Spec : Prop :=
  ∀ n, P227694773333651724.a n = (A296591 n : ℚ)

end A296591

/-! ## A296591.P8843988805075717441

`A086205(n)*A098694(n)`
-/

namespace A296591.P8843988805075717441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086205 n * A098694 n

end

end A296591.P8843988805075717441

namespace A296591

/-- `A086205(n)*A098694(n)` -/
def P8843988805075717441.Spec : Prop :=
  ∀ n, P8843988805075717441.a n = A296591 n

end A296591

/-!
# A296592: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A296592, there is no canonical definition to state claims against.
-/

/-! ## A296592.P5110391528606415780

`A296599(∑[4*n]+1)`
-/

namespace A296592.P5110391528606415780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296592.P5110391528606415780

/-! ## A296592.P11681677663817076995

`A296599(A001844(n))+A025437(n)`
-/

namespace A296592.P11681677663817076995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A001844 n).toNat + A025437 n

end

end A296592.P11681677663817076995

/-! ## A296592.P7991816208391836943

`gcd(A000038(n), A296599(A001844(n)))`
-/

namespace A296592.P7991816208391836943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296599 (A001844 n).toNat)

end

end A296592.P7991816208391836943

/-! ## A296592.P16514261517276340011

`lcm(A057077(n), A296599(A001844(n)))`
-/

namespace A296592.P16514261517276340011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A296599 (A001844 n).toNat)

end

end A296592.P16514261517276340011

/-! ## A296592.P1879956444426070620

`A297235(n+1)+A296599(A001844(n))`
-/

namespace A296592.P1879956444426070620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + A296599 (A001844 n).toNat

end

end A296592.P1879956444426070620

/-!
# A296593: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A296593, there is no canonical definition to state claims against.
-/

/-! ## A296593.P11371213389824375664

`A296599(∑[n+1]+2)`
-/

namespace A296593.P11371213389824375664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296593.P11371213389824375664

/-! ## A296593.P16428013948001577409

`record[A296599(A133263(abs(1-n)))]`
-/

namespace A296593.P16428013948001577409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296593.P16428013948001577409

/-! ## A296593.P11432989739041986281

`record[root(A296599(n+2), A002260(n+1))]`
-/

namespace A296593.P11432989739041986281
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296599 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296593.P11432989739041986281

/-! ## A296593.P4328513114651603747

`record[root(A296599(n+2), A145324(n+1))]`
-/

namespace A296593.P4328513114651603747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296599 (n + 2) : ℝ) ^ (1 / (A145324 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296593.P4328513114651603747

/-! ## A296593.P780983218083683094

`record[A296599(Δ[A003453(n+5)])]`
-/

namespace A296593.P780983218083683094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296593.P780983218083683094

/-!
# A296594: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A296594, there is no canonical definition to state claims against.
-/

/-! ## A296594.P9774670369646780855

`A296599(∑[n+2]+4)`
-/

namespace A296594.P9774670369646780855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296594.P9774670369646780855

/-! ## A296594.P8044300531455450637

`lcm(A054977(n), A296599(A167614(n+1)))`
-/

namespace A296594.P8044300531455450637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A296599 (A167614 (n + 1)).toNat)

end

end A296594.P8044300531455450637

/-! ## A296594.P18332924212397697832

`A296599(A167614(n+1))+A034529(n+1)`
-/

namespace A296594.P18332924212397697832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A167614 (n + 1)).toNat + A034529 (n + 1)

end

end A296594.P18332924212397697832

/-! ## A296594.P10128547535539777664

`A296599(A167614(n+1))%A167065(n+1)`
-/

namespace A296594.P10128547535539777664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296599 (A167614 (n + 1)).toNat) (A167065 (n + 1))

end

end A296594.P10128547535539777664

/-! ## A296594.P13387384905485615883

`A057427(A187893(n))*A296599(A167614(n+1))`
-/

namespace A296594.P13387384905485615883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A187893 n).toNat * A296599 (A167614 (n + 1)).toNat

end

end A296594.P13387384905485615883

/-!
# A296595: Number of n X 4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A296595, there is no canonical definition to state claims against.
-/

/-! ## A296595.P4816941930698156501

`A296599(A374004(n+1))`
-/

namespace A296595.P4816941930698156501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A374004 (n + 1)).toNat

end

end A296595.P4816941930698156501

/-! ## A296595.P1714628390289253372

`A296599(A052905(n)+9)`
-/

namespace A296595.P1714628390289253372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A052905 n + 9).toNat

end

end A296595.P1714628390289253372

/-! ## A296595.P3879375216422394958

`A296599(A055999(n)+10)`
-/

namespace A296595.P3879375216422394958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A055999 n + 10).toNat

end

end A296595.P3879375216422394958

/-! ## A296595.P16481513664857244578

`A296599(A167614(n+2)+1)`
-/

namespace A296595.P16481513664857244578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A167614 (n + 2) + 1).toNat

end

end A296595.P16481513664857244578

/-! ## A296595.P9903586397535562745

`A296599(A166136(n+2)-2)`
-/

namespace A296595.P9903586397535562745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A166136 (n + 2) - 2).toNat

end

end A296595.P9903586397535562745

/-!
# A296596: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A296596, there is no canonical definition to state claims against.
-/

/-! ## A296596.P13593159262578725661

`A296599(A374005(n+1))`
-/

namespace A296596.P13593159262578725661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A374005 (n + 1)).toNat

end

end A296596.P13593159262578725661

/-! ## A296596.P13483339508695720580

`A296599(A155212(n)+13)`
-/

namespace A296596.P13483339508695720580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A155212 n + 13).toNat

end

end A296596.P13483339508695720580

/-! ## A296596.P9812570737743711703

`A296599(A056000(n)+15)`
-/

namespace A296596.P9812570737743711703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A056000 n + 15).toNat

end

end A296596.P9812570737743711703

/-! ## A296596.P11442391027410783043

`A296599(A046691(n+2)+9)`
-/

namespace A296596.P11442391027410783043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A046691 (n + 2) + 9).toNat

end

end A296596.P11442391027410783043

/-! ## A296596.P9948562220812611725

`A296599(eq[6, A131818(n+1)])`
-/

namespace A296596.P9948562220812611725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296596.P9948562220812611725

/-!
# A296597: Number of n X 6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A296597, there is no canonical definition to state claims against.
-/

/-! ## A296597.P8656140336847465673

`A296599(A374007(n+1))`
-/

namespace A296597.P8656140336847465673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A374007 (n + 1)).toNat

end

end A296597.P8656140336847465673

/-! ## A296597.P5154172647759845738

`A296599(eq[7, A131818(n+1)])`
-/

namespace A296597.P5154172647759845738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296597.P5154172647759845738

/-! ## A296597.P10800076465343269501

`A296599(eq[5, A193592(n)])`
-/

namespace A296597.P10800076465343269501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296597.P10800076465343269501

/-! ## A296597.P16424701863452414027

`A296599(eq[7, A049286(n+1)])`
-/

namespace A296597.P16424701863452414027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296597.P16424701863452414027

/-! ## A296597.P2337898699692434382

`A296599(eq[8, A185782(n+1)])`
-/

namespace A296597.P2337898699692434382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296597.P2337898699692434382

/-!
# A296598: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1s.

The programs for A296598, there is no canonical definition to state claims against.
-/

/-! ## A296598.P10026345743357406949

`A296599(A374008(n+1))`
-/

namespace A296598.P10026345743357406949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A374008 (n + 1)).toNat

end

end A296598.P10026345743357406949

/-! ## A296598.P2022244992653144258

`A296599(A000124(n+6)+6)`
-/

namespace A296598.P2022244992653144258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A000124 (n + 6) + 6).toNat

end

end A296598.P2022244992653144258

/-! ## A296598.P451884566589526412

`A296599(A000096(n+5)+8)`
-/

namespace A296598.P451884566589526412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A000096 (n + 5) + 8).toNat

end

end A296598.P451884566589526412

/-! ## A296598.P10119894020849020941

`A296599(eq[8, A131818(n+1)])`
-/

namespace A296598.P10119894020849020941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296598.P10119894020849020941

/-! ## A296598.P2951041523425652920

`A296599(A046691(n+6)-4-2*n)`
-/

namespace A296598.P2951041523425652920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296599 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A296598.P2951041523425652920

/-!
# A296599: T(n,k) = Number of n X k 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1, 2 or 3 neighboring 1's.

The programs for A296599, there is no canonical definition to state claims against.
-/

/-! ## A296599.P1675108651453120898

`A196707(n+1)+A034332(n)%2`
-/

namespace A296599.P1675108651453120898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) + Int.tmod (A034332 n) 2

end

end A296599.P1675108651453120898

/-! ## A296599.P8395970097831470647

`A196856(n+1)+and(1, A034332(n))`
-/

namespace A296599.P8395970097831470647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + Int.land 1 (A034332 n)

end

end A296599.P8395970097831470647

/-! ## A296599.P4038197435213669922

`A196950(n+1)+and(1, A034332(n))`
-/

namespace A296599.P4038197435213669922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (n + 1) + Int.land 1 (A034332 n)

end

end A296599.P4038197435213669922

/-! ## A296599.P17175902669074010866

`A196707(n+1)+A000035(A034332(n))`
-/

namespace A296599.P17175902669074010866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) + A000035 (A034332 n).toNat

end

end A296599.P17175902669074010866

/-! ## A296599.P14866759010769219011

`A196856(n+1)+A000035(A034332(n))`
-/

namespace A296599.P14866759010769219011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (n + 1) + A000035 (A034332 n).toNat

end

end A296599.P14866759010769219011

