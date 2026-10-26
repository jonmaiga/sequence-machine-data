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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171101: Values of c from triples in A171100.

The programs for A171101, there is no canonical definition to state claims against.
-/

/-! ## A171101.P6038461956797713374

`A171100(3*(n+1))%A160677(floor((n+1)*sqrt(5)))`
-/

namespace A171101.P6038461956797713374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171100 (3 * (n + 1))) (A160677 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat)

end

end A171101.P6038461956797713374

/-! ## A171101.P9140614270150602072

`A171100(3*n+3)+A010054(A263241(n+1))`
-/

namespace A171101.P9140614270150602072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171100 (3 * n + 3) + A010054 (A263241 (n + 1)).toNat

end

end A171101.P9140614270150602072

/-! ## A171101.P17986716547423571525

`or(A171099(A171084(3*n+4)), A171100(3*(n+1)))`
-/

namespace A171101.P17986716547423571525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171099 (A171084 (3 * n + 4)).toNat) (A171100 (3 * (n + 1)))

end

end A171101.P17986716547423571525

/-! ## A171101.P6701575546927101464

`A038565(A215056(3*n+1))*A171100(3*(n+1))`
-/

namespace A171101.P6701575546927101464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038565 (A215056 (3 * n + 1)).toNat * A171100 (3 * (n + 1))

end

end A171101.P6701575546927101464

/-!
# A171106: Number of irreducible rational curves maximally tangent to a line.

The programs for A171106, there is no canonical definition to state claims against.
-/

/-! ## A171106.P6129188786073453720

`A171107(n+1)/(n+1)`
-/

namespace A171106.P6129188786073453720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171107 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A171106.P6129188786073453720

/-!
# A171107: a(n) = n*A171106(n).

The programs for A171107, there is no canonical definition to state claims against.
-/

/-! ## A171107.P15800477632255585195

`(n+1)*A171106(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171107.P15800477632255585195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171106 (n + 1)

end

end A171107.P15800477632255585195

/-!
# A171108: a(n) is the Severi degree for curves of degree n and cogenus 2.

The programs for A171108, the canonical program `A171108.P17481597153091398631` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171108 has offset 1).

The definition of A171108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171108.P17589963217869753143

`3*n*(n-1)*(3*(n+1)²-3*(n+1)-11)/2`
-/

namespace A171108.P17589963217869753143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * ((n : ℤ) - 1) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) - 11) : ℚ) / 2

end

end A171108.P17589963217869753143

namespace A171108

/-- `3*n*(n-1)*(3*(n+1)²-3*(n+1)-11)/2` -/
def P17589963217869753143.Spec : Prop :=
  ∀ n, P17589963217869753143.a n = (A171108 (n + 1) : ℚ)

theorem P17589963217869753143.correct : P17589963217869753143.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A171108, Nat.add_sub_cancel, A171108.P17589963217869753143.a, A171108.P17481597153091398631.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A171108, Nat.add_sub_cancel, A171108.P17589963217869753143.a, A171108.P17481597153091398631.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171108

/-! ## A171108.P17481597153091398631

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=21, a(3)=225, a(4)=882`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171108

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17481597153091398631.Spec : Prop :=
  ∀ n, P17481597153091398631.a n = A171108 (n + 1)

theorem P17481597153091398631.correct : P17481597153091398631.Spec := by
  intro n
  simp only [A171108, Nat.add_sub_cancel]

end A171108

/-! ## A171108.P16748370294939082622

`A051682(n²)-(35*C(n, 2)+n)`
-/

namespace A171108.P16748370294939082622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n ^ 2) - (35 * Nat.choose n 2 + n : ℤ)

end

end A171108.P16748370294939082622

namespace A171108

/-- `A051682(n²)-(35*C(n, 2)+n)` -/
def P16748370294939082622.Spec : Prop :=
  ∀ n, P16748370294939082622.a n = A171108 (n + 1)

end A171108

/-! ## A171108.P13025219940388524826

`A051682(n²)-A282852(n)`
-/

namespace A171108.P13025219940388524826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n ^ 2) - A282852 n

end

end A171108.P13025219940388524826

namespace A171108

/-- `A051682(n²)-A282852(n)` -/
def P13025219940388524826.Spec : Prop :=
  ∀ n, P13025219940388524826.a n = A171108 (n + 1)

end A171108

/-! ## A171108.P6807604858849601358

`abs(A051682(A000290(n))-A282852(n))`
-/

namespace A171108.P6807604858849601358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051682 (A000290 n).toNat - A282852 n|

end

end A171108.P6807604858849601358

namespace A171108

/-- `abs(A051682(A000290(n))-A282852(n))` -/
def P6807604858849601358.Spec : Prop :=
  ∀ n, P6807604858849601358.a n = A171108 (n + 1)

end A171108

/-! ## A171108.P10096714865402798466

`A185012(n+4)+A051682(A000290(n))-A282852(n)`
-/

namespace A171108.P10096714865402798466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 4) + (A051682 (A000290 n).toNat - A282852 n)

end

end A171108.P10096714865402798466

namespace A171108

/-- `A185012(n+4)+A051682(A000290(n))-A282852(n)` -/
def P10096714865402798466.Spec : Prop :=
  ∀ n, P10096714865402798466.a n = A171108 (n + 1)

end A171108

/-! ## A171108.P6805501381771727099

`(A051682(A000290(n))-A282852(n))%A253961(n+1)`
-/

namespace A171108.P6805501381771727099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051682 (A000290 n).toNat - A282852 n) (A253961 (n + 1))

end

end A171108.P6805501381771727099

namespace A171108

/-- `(A051682(A000290(n))-A282852(n))%A253961(n+1)` -/
def P6805501381771727099.Spec : Prop :=
  ∀ n, P6805501381771727099.a n = A171108 (n + 1)

end A171108

/-!
# A171110: Gromov-Witten invariants for genus 2.

The programs for A171110, there is no canonical definition to state claims against.
-/

/-! ## A171110.P6067939813602321621

`A184218(A302864(n))`
-/

namespace A171110.P6067939813602321621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184218 (A302864 n).toNat

end

end A171110.P6067939813602321621

/-!
# A171111: Gromov-Witten invariants for genus 3.

The programs for A171111, there is no canonical definition to state claims against.
-/

/-! ## A171111.P9456056092142633315

`A364914(A241892(n))`
-/

namespace A171111.P9456056092142633315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 (A241892 n).toNat

end

end A171111.P9456056092142633315

/-!
# A171117: A particular case of Gromov-Witten numbers: a(n) is the number of complex rational curves of degree n and genus 0 in CP^3 passing through 2n given points.

The programs for A171117, there is no canonical definition to state claims against.
-/

/-! ## A171117.P12240567172310727900

`A202819(2^n)`
-/

namespace A171117.P12240567172310727900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202819 (2 ^ n)

end

end A171117.P12240567172310727900

/-!
# A171119: The 1539 four-digit lunar primes.

The programs for A171119, there is no canonical definition to state claims against.
-/

/-! ## A171119.P853675507700442182

`A087097(2*n+(20/2)²-n)`
-/

namespace A171119.P853675507700442182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (SequenceMachineLib.roundAway ((2 * n : ℚ) + (((20 : ℚ) / 2) ^ 2 - (n : ℚ)))).toNat

end

end A171119.P853675507700442182

/-! ## A171119.P14253678992053745408

`A144171(A020725(n+1)+99)`
-/

namespace A171119.P14253678992053745408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A020725 (n + 1) + 99).toNat

end

end A171119.P14253678992053745408

/-! ## A171119.P1633540424567589741

`A144171(A028242(2*(n+1))+99)`
-/

namespace A171119.P1633540424567589741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A028242 (2 * (n + 1)) + 99).toNat

end

end A171119.P1633540424567589741

/-! ## A171119.P14745402175848101147

`A144171(A008619(2*n+3)+99)`
-/

namespace A171119.P14745402175848101147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A008619 (2 * n + 3) + 99).toNat

end

end A171119.P14745402175848101147

/-! ## A171119.P13023023839419940289

`A144171(A088475(n+2)+90)`
-/

namespace A171119.P13023023839419940289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A088475 (n + 2) + 90).toNat

end

end A171119.P13023023839419940289

/-!
# A171120: Numbers that are the lunar sums of two lunar squares.

The programs for A171120, there is no canonical definition to state claims against.
-/

/-! ## A171120.P5481904313800077850

`lt[A054055(n), A055017(n)+1]`
-/

namespace A171120.P5481904313800077850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171120.P5481904313800077850

/-! ## A171120.P6639403807084751705

`eq[0, A173667(or(n, a(n-1)))]` with `a(0)=0`
-/

namespace A171120.P6639403807084751705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A173667 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171120.P6639403807084751705

/-! ## A171120.P1779022915183978614

`A001633(∑[A058343(n)!])`
-/

namespace A171120.P1779022915183978614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171120.P1779022915183978614

/-! ## A171120.P13279313883125142933

`A001633(∑[A178688(n+1)!])`
-/

namespace A171120.P13279313883125142933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A178688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171120.P13279313883125142933

/-! ## A171120.P8227690092889534226

`eq[A061704(A007318(n+1)), A133880(n)]`
-/

namespace A171120.P8227690092889534226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A007318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171120.P8227690092889534226

/-!
# A171121: The 81 three-digit lunar primes.

The programs for A171121, there is no canonical definition to state claims against.
-/

/-! ## A171121.P4076520006153328343

`A087097(n+19)`
-/

namespace A171121.P4076520006153328343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 19)

end

end A171121.P4076520006153328343

/-! ## A171121.P2102892733580612912

`A144171(n+20)`
-/

namespace A171121.P2102892733580612912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 20)

end

end A171121.P2102892733580612912

/-! ## A171121.P13255334215059104397

`∩[A011539(n+1), A183086(n+1)]`
-/

namespace A171121.P13255334215059104397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171121.P13255334215059104397

/-! ## A171121.P17496677366890478027

`A017377(lt[A332016(n), A193581(n)])`
-/

namespace A171121.P17496677366890478027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A171121.P17496677366890478027

/-!
# A171122: Primes in lunar arithmetic in base 4 written in base 4.

The programs for A171122, there is no canonical definition to state claims against.
-/

/-! ## A171122.P6295943250994318705

`A007090(A171017(n+1))`
-/

namespace A171122.P6295943250994318705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A171017 (n + 1)).toNat

end

end A171122.P6295943250994318705

/-! ## A171122.P912972710076090657

`∩[A171794(n+2), A007090(n)]`
-/

namespace A171122.P912972710076090657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171794 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171122.P912972710076090657

/-! ## A171122.P14169718566699878450

`∩[A171794(n+1), A277965(n+1)]`
-/

namespace A171122.P14169718566699878450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171122.P14169718566699878450

/-! ## A171122.P18042922782096503438

`eq[8, A087028(A233583(n+1))]`
-/

namespace A171122.P18042922782096503438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171122.P18042922782096503438

/-!
# A171123: Primes in lunar arithmetic in base 5 written in base 10.

The programs for A171123, there is no canonical definition to state claims against.
-/

/-! ## A171123.P9473846722042981647

`A028900(A171124(n+1))`
-/

namespace A171123.P9473846722042981647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A171124 (n + 1)).toNat

end

end A171123.P9473846722042981647

/-! ## A171123.P12528798087664290734

`A068505(A171124(n+1)%A171103(n))`
-/

namespace A171123.P12528798087664290734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (Int.tmod (A171124 (n + 1)) (A171103 n)).toNat

end

end A171123.P12528798087664290734

/-! ## A171123.P9053891179583753713

`A068505(A171124(n+1))%A007089(A130206(n+1))`
-/

namespace A171123.P9053891179583753713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068505 (A171124 (n + 1)).toNat) (A007089 (A130206 (n + 1)).toNat)

end

end A171123.P9053891179583753713

/-! ## A171123.P10561171569804401456

`A068505(A171124(n+1))%A171124(n+2)`
-/

namespace A171123.P10561171569804401456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068505 (A171124 (n + 1)).toNat) (A171124 (n + 2))

end

end A171123.P10561171569804401456

/-! ## A171123.P3463842908282062647

`lt[3, A230410(A265548(n))]`
-/

namespace A171123.P3463842908282062647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230410 (A265548 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171123.P3463842908282062647

/-!
# A171124: Primes in lunar arithmetic in base 5 written in base 5.

The programs for A171124, there is no canonical definition to state claims against.
-/

/-! ## A171124.P4415345742442222679

`A007091(A171123(n+1))`
-/

namespace A171124.P4415345742442222679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A171123 (n + 1)).toNat

end

end A171124.P4415345742442222679

/-! ## A171124.P8510254684849899665

`∩[A171789(n+1), A277966(n+1)]`
-/

namespace A171124.P8510254684849899665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171124.P8510254684849899665

/-! ## A171124.P13511175988611390632

`eq[A054055(n)+2, A161813(A233583(n+1))]`
-/

namespace A171124.P13511175988611390632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171124.P13511175988611390632

/-!
# A171125: Primes in lunar arithmetic in base 6 written in base 10.

The programs for A171125, there is no canonical definition to state claims against.
-/

/-! ## A171125.P18158308186517634706

`A028901(A171133(n+1))`
-/

namespace A171125.P18158308186517634706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A171133 (n + 1)).toNat

end

end A171125.P18158308186517634706

/-! ## A171125.P17893020281936860442

`A068505(A171133(-xor(n, -1)))`
-/

namespace A171125.P17893020281936860442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A171133 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A171125.P17893020281936860442

/-! ## A171125.P17765951781920195525

`A068505(A171133(Δ[n²]-n))`
-/

namespace A171125.P17765951781920195525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A171133 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A171125.P17765951781920195525

/-! ## A171125.P6006670779944500628

`A068505(A171133(n+1)%A017514(n))`
-/

namespace A171125.P6006670779944500628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (Int.tmod (A171133 (n + 1)) (A017514 n)).toNat

end

end A171125.P6006670779944500628

/-! ## A171125.P16570868521846069297

`A068505(or(A171133(n+1), A291749(n)))`
-/

namespace A171125.P16570868521846069297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (Int.lor (A171133 (n + 1)) (A291749 n)).toNat

end

end A171125.P16570868521846069297

/-! ## A171125.P3427599813189629366

`A068505(A007318(∑[n])*A171133(n+1))`
-/

namespace A171125.P3427599813189629366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A171133 (n + 1)).toNat

end

end A171125.P3427599813189629366

/-! ## A171125.P11449256168114483951

`A068505(A171133(n+1)/A007318(∑[n]))`
-/

namespace A171125.P11449256168114483951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.roundAway ((A171133 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A171125.P11449256168114483951

/-! ## A171125.P7676589150852685107

`A068505(A171133(n+1)^A007318(∑[n]))`
-/

namespace A171125.P7676589150852685107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.roundAway ((A171133 (n + 1) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))).toNat

end

end A171125.P7676589150852685107

/-! ## A171125.P2075292567395629146

`A068505(A171133(n+1))%A161680(n+8)`
-/

namespace A171125.P2075292567395629146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068505 (A171133 (n + 1)).toNat) (A161680 (n + 8))

end

end A171125.P2075292567395629146

/-!
# A171126: Numbers k such that A169611(k) = 1.

The programs for A171126, the canonical program `A171126.P7490385673163361830` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171126 has offset 1).

The definition of A171126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171126.P7490385673163361830

`comp[n*gcd(6, n)%5]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171126

/-- `comp[n*gcd(6, n)%5]` -/
def P7490385673163361830.Spec : Prop :=
  ∀ n, (P7490385673163361830.a n : ℤ) = A171126 (n + 1)

theorem P7490385673163361830.correct : P7490385673163361830.Spec := by
  intro n
  simp only [A171126, Nat.add_sub_cancel]

end A171126

/-! ## A171126.P15600991354859151602

`∪[A091999(n+1), A306771(n+1)]`
-/

namespace A171126.P15600991354859151602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171126.P15600991354859151602

namespace A171126

/-- `∪[A091999(n+1), A306771(n+1)]` -/
def P15600991354859151602.Spec : Prop :=
  ∀ n, (P15600991354859151602.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P1539338327605009747

`eq[2, A072078(n+1)]+1`
-/

namespace A171126.P1539338327605009747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171126.P1539338327605009747

namespace A171126

/-- `eq[2, A072078(n+1)]+1` -/
def P1539338327605009747.Spec : Prop :=
  ∀ n, (P1539338327605009747.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P15587967883833414119

`∩[A047228(n+1), A247180(n+1)]`
-/

namespace A171126.P15587967883833414119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171126.P15587967883833414119

namespace A171126

/-- `∩[A047228(n+1), A247180(n+1)]` -/
def P15587967883833414119.Spec : Prop :=
  ∀ n, (P15587967883833414119.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P10087469739088543201

`eq[1, A169611(n+1)]+1`
-/

namespace A171126.P10087469739088543201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171126.P10087469739088543201

namespace A171126

/-- `eq[1, A169611(n+1)]+1` -/
def P10087469739088543201.Spec : Prop :=
  ∀ n, (P10087469739088543201.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P9499006521616564045

`eq[1, A169611(A028310(n))]`
-/

namespace A171126.P9499006521616564045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P9499006521616564045

namespace A171126

/-- `eq[1, A169611(A028310(n))]` -/
def P9499006521616564045.Spec : Prop :=
  ∀ n, (P9499006521616564045.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P6846663519952095998

`eq[2, A072078(A257143(n))]`
-/

namespace A171126.P6846663519952095998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P6846663519952095998

namespace A171126

/-- `eq[2, A072078(A257143(n))]` -/
def P6846663519952095998.Spec : Prop :=
  ∀ n, (P6846663519952095998.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P16749233570544217434

`eq[A373991(n)+2, A040795(n)]`
-/

namespace A171126.P16749233570544217434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171126.P16749233570544217434

namespace A171126

/-- `eq[A373991(n)+2, A040795(n)]` -/
def P16749233570544217434.Spec : Prop :=
  ∀ n, (P16749233570544217434.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P10934353306166064230

`eq[1, A001222(gcd(n, A017141(n)))]`
-/

namespace A171126.P10934353306166064230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n : ℤ) (A017141 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P10934353306166064230

namespace A171126

/-- `eq[1, A001222(gcd(n, A017141(n)))]` -/
def P10934353306166064230.Spec : Prop :=
  ∀ n, (P10934353306166064230.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P8789896409671838911

`eq[1, A001222(A065331(n+1))]+1`
-/

namespace A171126.P8789896409671838911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171126.P8789896409671838911

namespace A171126

/-- `eq[1, A001222(A065331(n+1))]+1` -/
def P8789896409671838911.Spec : Prop :=
  ∀ n, (P8789896409671838911.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P7175844089117615203

`eq[2, A284257(2*(n+1))]+1`
-/

namespace A171126.P7175844089117615203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171126.P7175844089117615203

namespace A171126

/-- `eq[2, A284257(2*(n+1))]+1` -/
def P7175844089117615203.Spec : Prop :=
  ∀ n, (P7175844089117615203.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P14081043819569087155

`eq[2, A169611(A004277(n))]`
-/

namespace A171126.P14081043819569087155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P14081043819569087155

namespace A171126

/-- `eq[2, A169611(A004277(n))]` -/
def P14081043819569087155.Spec : Prop :=
  ∀ n, (P14081043819569087155.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P5756663314259449392

`eq[1, A169611(A123108(2*n))]`
-/

namespace A171126.P5756663314259449392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P5756663314259449392

namespace A171126

/-- `eq[1, A169611(A123108(2*n))]` -/
def P5756663314259449392.Spec : Prop :=
  ∀ n, (P5756663314259449392.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P7384220848959631268

`eq[2, A072078(A008706(n))]`
-/

namespace A171126.P7384220848959631268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P7384220848959631268

namespace A171126

/-- `eq[2, A072078(A008706(n))]` -/
def P7384220848959631268.Spec : Prop :=
  ∀ n, (P7384220848959631268.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P5022298607911114114

`eq[2, A169611(A008486(n))]`
-/

namespace A171126.P5022298607911114114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P5022298607911114114

namespace A171126

/-- `eq[2, A169611(A008486(n))]` -/
def P5022298607911114114.Spec : Prop :=
  ∀ n, (P5022298607911114114.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P14189234181916302936

`eq[6, A072078(A008458(n))]`
-/

namespace A171126.P14189234181916302936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P14189234181916302936

namespace A171126

/-- `eq[6, A072078(A008458(n))]` -/
def P14189234181916302936.Spec : Prop :=
  ∀ n, (P14189234181916302936.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P6145963132450353182

`eq[3, A169611(A008574(n))]`
-/

namespace A171126.P6145963132450353182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P6145963132450353182

namespace A171126

/-- `eq[3, A169611(A008574(n))]` -/
def P6145963132450353182.Spec : Prop :=
  ∀ n, (P6145963132450353182.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P13711337641733141217

`lt[A133419(n+1), A133419(A133419(n+1))]+1`
-/

namespace A171126.P13711337641733141217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (A133419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A171126.P13711337641733141217

namespace A171126

/-- `lt[A133419(n+1), A133419(A133419(n+1))]+1` -/
def P13711337641733141217.Spec : Prop :=
  ∀ n, (P13711337641733141217.a n : ℤ) = A171126 (n + 1)

end A171126

/-! ## A171126.P14899355488040869224

`eq[1, A169611(A008458(n)+n)]`
-/

namespace A171126.P14899355488040869224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008458 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171126.P14899355488040869224

namespace A171126

/-- `eq[1, A169611(A008458(n)+n)]` -/
def P14899355488040869224.Spec : Prop :=
  ∀ n, (P14899355488040869224.a n : ℤ) = A171126 (n + 1)

end A171126

/-!
# A171127: Numbers k such that A169611(k) = 2.

The programs for A171127, the canonical program `A171127.P17353130976212097611` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171127 has offset 1).

The definition of A171127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171127.P17353130976212097611

`eq[2, A169611(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A171127

/-- `eq[2, A169611(n+1)]+1` -/
def P17353130976212097611.Spec : Prop :=
  ∀ n, (P17353130976212097611.a n : ℤ) = A171127 (n + 1)

theorem P17353130976212097611.correct : P17353130976212097611.Spec := by
  intro n
  simp only [A171127, Nat.add_sub_cancel]

end A171127

/-! ## A171127.P16708120221733925424

`eq[2, A169611(A028310(n))]`
-/

namespace A171127.P16708120221733925424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P16708120221733925424

namespace A171127

/-- `eq[2, A169611(A028310(n))]` -/
def P16708120221733925424.Spec : Prop :=
  ∀ n, (P16708120221733925424.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P18196779157204543409

`eq[2, A001222(gcd(n, A017141(n)))]`
-/

namespace A171127.P18196779157204543409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n : ℤ) (A017141 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P18196779157204543409

namespace A171127

/-- `eq[2, A001222(gcd(n, A017141(n)))]` -/
def P18196779157204543409.Spec : Prop :=
  ∀ n, (P18196779157204543409.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P7107812955509603534

`eq[2, A001222(A065331(n+1))]+1`
-/

namespace A171127.P7107812955509603534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171127.P7107812955509603534

namespace A171127

/-- `eq[2, A001222(A065331(n+1))]+1` -/
def P7107812955509603534.Spec : Prop :=
  ∀ n, (P7107812955509603534.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P11904501556396149993

`record[A025480(A171241(n+1))]`
-/

namespace A171127.P11904501556396149993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A171241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171127.P11904501556396149993

namespace A171127

/-- `record[A025480(A171241(n+1))]` -/
def P11904501556396149993.Spec : Prop :=
  ∀ n, P11904501556396149993.a n = A171127 (n + 1)

end A171127

/-! ## A171127.P27884181842892449

`eq[1, A169611(A004277(n))-2]`
-/

namespace A171127.P27884181842892449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P27884181842892449

namespace A171127

/-- `eq[1, A169611(A004277(n))-2]` -/
def P27884181842892449.Spec : Prop :=
  ∀ n, (P27884181842892449.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P8117000432784250827

`eq[2, A169611(A123108(2*n))]`
-/

namespace A171127.P8117000432784250827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P8117000432784250827

namespace A171127

/-- `eq[2, A169611(A123108(2*n))]` -/
def P8117000432784250827.Spec : Prop :=
  ∀ n, (P8117000432784250827.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P15778733843625025311

`record[A032742(A171241(A080513(n)))]`
-/

namespace A171127.P15778733843625025311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A171241 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171127.P15778733843625025311

namespace A171127

/-- `record[A032742(A171241(A080513(n)))]` -/
def P15778733843625025311.Spec : Prop :=
  ∀ n, P15778733843625025311.a n = A171127 (n + 1)

end A171127

/-! ## A171127.P11092421992873447117

`eq[1, A169611(A008486(n))-2]`
-/

namespace A171127.P11092421992873447117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008486 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P11092421992873447117

namespace A171127

/-- `eq[1, A169611(A008486(n))-2]` -/
def P11092421992873447117.Spec : Prop :=
  ∀ n, (P11092421992873447117.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P8362176614931673977

`eq[2, A169611(A008574(n))-2]`
-/

namespace A171127.P8362176614931673977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008574 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P8362176614931673977

namespace A171127

/-- `eq[2, A169611(A008574(n))-2]` -/
def P8362176614931673977.Spec : Prop :=
  ∀ n, (P8362176614931673977.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P1650492208825180862

`eq[2, A169611(A008574(n)+n)]`
-/

namespace A171127.P1650492208825180862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P1650492208825180862

namespace A171127

/-- `eq[2, A169611(A008574(n)+n)]` -/
def P1650492208825180862.Spec : Prop :=
  ∀ n, (P1650492208825180862.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P221926552049187717

`eq[4, A169611(A008458(n))]`
-/

namespace A171127.P221926552049187717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P221926552049187717

namespace A171127

/-- `eq[4, A169611(A008458(n))]` -/
def P221926552049187717.Spec : Prop :=
  ∀ n, (P221926552049187717.a n : ℤ) = A171127 (n + 1)

end A171127

/-! ## A171127.P14494506434165484510

`eq[2, A169611(A233583(n+1))]`
-/

namespace A171127.P14494506434165484510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171127.P14494506434165484510

namespace A171127

/-- `eq[2, A169611(A233583(n+1))]` -/
def P14494506434165484510.Spec : Prop :=
  ∀ n, (P14494506434165484510.a n : ℤ) = A171127 (n + 1)

end A171127

/-!
# A171128: A117852*A130595 as lower triangular matrices.

The programs for A171128, the canonical program `A171128.P16644307988013069713` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171128 has offset 0).

The definition of A171128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171128.P16644307988013069713

`C(row(n), col(n))*A002426(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171128

/-- `C(row(n), col(n))*A002426(row(n)-col(n))` -/
def P16644307988013069713.Spec : Prop :=
  ∀ n, P16644307988013069713.a n = A171128 n

theorem P16644307988013069713.correct : P16644307988013069713.Spec := by
  intro n
  simp only [A171128]

end A171128

/-! ## A171128.P16517103696638321660

`(A171651(n)+A091867(n))/2`
-/

namespace A171128.P16517103696638321660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171651 n + A091867 n : ℚ) / 2

end

end A171128.P16517103696638321660

namespace A171128

/-- `(A171651(n)+A091867(n))/2` -/
def P16517103696638321660.Spec : Prop :=
  ∀ n, P16517103696638321660.a n = (A171128 n : ℚ)

theorem P16517103696638321660.correct : P16517103696638321660.Spec := by
  intro n
  simp only [A171128, Nat.add_sub_cancel, A171128.P16517103696638321660.a, A171128.P16644307988013069713.a, A002426, A002426.P18316219981098248731.a, A091867, A091867.P15710449933827193925.a, A171651, A171651.P1398147796533981043.a, A005043, A005043.P11838040305800302990.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171128

/-! ## A171128.P1141198525169525433

`A007318(n)*A002426(A025581(n))`
-/

namespace A171128.P1141198525169525433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A002426 (A025581 n).toNat

end

end A171128.P1141198525169525433

namespace A171128

/-- `A007318(n)*A002426(A025581(n))` -/
def P1141198525169525433.Spec : Prop :=
  ∀ n, P1141198525169525433.a n = A171128 n

end A171128

/-! ## A171128.P5977717181708834178

`abs(A002426(A025581(n))*A130595(n))`
-/

namespace A171128.P5977717181708834178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002426 (A025581 n).toNat * A130595 n|

end

end A171128.P5977717181708834178

namespace A171128

/-- `abs(A002426(A025581(n))*A130595(n))` -/
def P5977717181708834178.Spec : Prop :=
  ∀ n, P5977717181708834178.a n = A171128 n

end A171128

/-! ## A171128.P4500557395648160629

`A135091(A061579(n))`
-/

namespace A171128.P4500557395648160629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (A061579 n).toNat

end

end A171128.P4500557395648160629

namespace A171128

/-- `A135091(A061579(n))` -/
def P4500557395648160629.Spec : Prop :=
  ∀ n, P4500557395648160629.a n = A171128 n

end A171128

/-! ## A171128.P5118679557850985701

`A135091(A114327(n)+n)`
-/

namespace A171128.P5118679557850985701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (A114327 n + (n : ℤ)).toNat

end

end A171128.P5118679557850985701

namespace A171128

/-- `A135091(A114327(n)+n)` -/
def P5118679557850985701.Spec : Prop :=
  ∀ n, P5118679557850985701.a n = A171128 n

end A171128

/-! ## A171128.P6706205571260096087

`A135091(A057944(n)+A025581(n))`
-/

namespace A171128.P6706205571260096087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (A057944 n + A025581 n).toNat

end

end A171128.P6706205571260096087

namespace A171128

/-- `A135091(A057944(n)+A025581(n))` -/
def P6706205571260096087.Spec : Prop :=
  ∀ n, P6706205571260096087.a n = A171128 n

end A171128

/-! ## A171128.P8752502606716773448

`A135091(A038722(n+2))`
-/

namespace A171128.P8752502606716773448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (A038722 (n + 2)).toNat

end

end A171128.P8752502606716773448

namespace A171128

/-- `A135091(A038722(n+2))` -/
def P8752502606716773448.Spec : Prop :=
  ∀ n, P8752502606716773448.a n = A171128 n

end A171128

/-! ## A171128.P6916509076429280443

`A007318(n)*A027907(A095832(n+1))`
-/

namespace A171128.P6916509076429280443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A027907 (A095832 (n + 1)).toNat

end

end A171128.P6916509076429280443

namespace A171128

/-- `A007318(n)*A027907(A095832(n+1))` -/
def P6916509076429280443.Spec : Prop :=
  ∀ n, P6916509076429280443.a n = A171128 n

end A171128

/-! ## A171128.P10084063869865299351

`A132885(A056537(n+1)-1)`
-/

namespace A171128.P10084063869865299351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A056537 (n + 1) - 1).toNat

end

end A171128.P10084063869865299351

namespace A171128

/-- `A132885(A056537(n+1)-1)` -/
def P10084063869865299351.Spec : Prop :=
  ∀ n, P10084063869865299351.a n = A171128 n

end A171128

/-!
# A171129: a(n)=(n^4-n^3-n^2-n)/2.

The programs for A171129, the canonical program `A171129.P17751088220047433642` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171129 has offset 0).

The definition of A171129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3-n²-n)/2` (program `A171129.P8615492750918036692`, by `A171129.P8615492750918036692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171129.P8615492750918036692

`(n^4-n^3-n²-n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171129.P8615492750918036692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 3 : ℤ) - (n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2

end

end A171129.P8615492750918036692

namespace A171129

/-- `(n^4-n^3-n²-n)/2` -/
def P8615492750918036692.Spec : Prop :=
  ∀ n, P8615492750918036692.a n = (A171129 n : ℚ)

theorem P8615492750918036692.correct : P8615492750918036692.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P8615492750918036692.a, A171129.P17751088220047433642.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P17751088220047433642

`A071252(n)-n²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171129

/-- `A071252(n)-n²` -/
def P17751088220047433642.Spec : Prop :=
  ∀ n, P17751088220047433642.a n = A171129 n

theorem P17751088220047433642.correct : P17751088220047433642.Spec := by
  intro n
  simp only [A171129]

end A171129

/-! ## A171129.P5934677416888036452

`n/2*A083074(n)`
-/

namespace A171129.P5934677416888036452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A083074 n : ℚ)

end

end A171129.P5934677416888036452

namespace A171129

/-- `n/2*A083074(n)` -/
def P5934677416888036452.Spec : Prop :=
  ∀ n, P5934677416888036452.a n = (A171129 n : ℚ)

theorem P5934677416888036452.correct : P5934677416888036452.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P5934677416888036452.a, A171129.P17751088220047433642.a, A071252, A071252.P13937739183146272210.a, A083074, A083074.P14700976878568610308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P10852017332969161789

`n²²-A071237(n)`
-/

namespace A171129.P10852017332969161789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A071237 n

end

end A171129.P10852017332969161789

namespace A171129

/-- `n²²-A071237(n)` -/
def P10852017332969161789.Spec : Prop :=
  ∀ n, P10852017332969161789.a n = A171129 n

end A171129

/-! ## A171129.P2738280395516097335

`A100855(n)-(n²+n)`
-/

namespace A171129.P2738280395516097335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - (n ^ 2 + n : ℤ)

end

end A171129.P2738280395516097335

namespace A171129

/-- `A100855(n)-(n²+n)` -/
def P2738280395516097335.Spec : Prop :=
  ∀ n, P2738280395516097335.a n = A171129 n

theorem P2738280395516097335.correct : P2738280395516097335.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P2738280395516097335.a, A171129.P17751088220047433642.a, A071252, A071252.P13937739183146272210.a, A100855, A100855.P6697149013799121282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P3263881587439729622

`(n^4+n²)/2-A006002(n)`
-/

namespace A171129.P3263881587439729622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 : ℚ) / 2 - (A006002 n : ℚ)

end

end A171129.P3263881587439729622

namespace A171129

/-- `(n^4+n²)/2-A006002(n)` -/
def P3263881587439729622.Spec : Prop :=
  ∀ n, P3263881587439729622.a n = (A171129 n : ℚ)

end A171129

/-! ## A171129.P2118529759100500963

`A071237(n)-A027444(n)`
-/

namespace A171129.P2118529759100500963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - A027444 n

end

end A171129.P2118529759100500963

namespace A171129

/-- `A071237(n)-A027444(n)` -/
def P2118529759100500963.Spec : Prop :=
  ∀ n, P2118529759100500963.a n = A171129 n

end A171129

/-! ## A171129.P13278912868865284319

`A101375(n)-A000096(n)`
-/

namespace A171129.P13278912868865284319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A000096 n

end

end A171129.P13278912868865284319

namespace A171129

/-- `A101375(n)-A000096(n)` -/
def P13278912868865284319.Spec : Prop :=
  ∀ n, P13278912868865284319.a n = A171129 n

theorem P13278912868865284319.correct : P13278912868865284319.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P13278912868865284319.a, A171129.P17751088220047433642.a, A000096, A000096.P6925830517264718723.a, A071252, A071252.P13937739183146272210.a, A101375, A101375.P13767665924746932093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P10782874774646144932

`A085537(n)-A100855(n)`
-/

namespace A171129.P10782874774646144932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n - A100855 n

end

end A171129.P10782874774646144932

namespace A171129

/-- `A085537(n)-A100855(n)` -/
def P10782874774646144932.Spec : Prop :=
  ∀ n, P10782874774646144932.a n = A171129 n

theorem P10782874774646144932.correct : P10782874774646144932.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P10782874774646144932.a, A171129.P17751088220047433642.a, A071252, A071252.P13937739183146272210.a, A085537, A085537.P16655703013365461026.a, A100855, A100855.P6697149013799121282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P15289465203295829658

`A212523(n)-A000292(n)`
-/

namespace A171129.P15289465203295829658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n - A000292 n

end

end A171129.P15289465203295829658

namespace A171129

/-- `A212523(n)-A000292(n)` -/
def P15289465203295829658.Spec : Prop :=
  ∀ n, P15289465203295829658.a n = A171129 n

end A171129

/-! ## A171129.P13043876585348190561

`A101374(n)-A229183(n)`
-/

namespace A171129.P13043876585348190561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n - A229183 n

end

end A171129.P13043876585348190561

namespace A171129

/-- `A101374(n)-A229183(n)` -/
def P13043876585348190561.Spec : Prop :=
  ∀ n, P13043876585348190561.a n = A171129 n

end A171129

/-! ## A171129.P3115085593287799076

`A239592(n)-A116668(n)`
-/

namespace A171129.P3115085593287799076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239592 n - A116668 n

end

end A171129.P3115085593287799076

namespace A171129

/-- `A239592(n)-A116668(n)` -/
def P3115085593287799076.Spec : Prop :=
  ∀ n, P3115085593287799076.a n = A171129 n

end A171129

/-! ## A171129.P9600887324351783829

`A212560(n)-A203551(n)`
-/

namespace A171129.P9600887324351783829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n - A203551 n

end

end A171129.P9600887324351783829

namespace A171129

/-- `A212560(n)-A203551(n)` -/
def P9600887324351783829.Spec : Prop :=
  ∀ n, P9600887324351783829.a n = A171129 n

end A171129

/-! ## A171129.P12592495658330260634

`A393441(n)-A143689(n)`
-/

namespace A171129.P12592495658330260634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393441 n - A143689 n

end

end A171129.P12592495658330260634

namespace A171129

/-- `A393441(n)-A143689(n)` -/
def P12592495658330260634.Spec : Prop :=
  ∀ n, P12592495658330260634.a n = A171129 n

end A171129

/-! ## A171129.P9598411077707545206

`A036464(n+1)-A004068(n)`
-/

namespace A171129.P9598411077707545206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) - A004068 n

end

end A171129.P9598411077707545206

namespace A171129

/-- `A036464(n+1)-A004068(n)` -/
def P9598411077707545206.Spec : Prop :=
  ∀ n, P9598411077707545206.a n = A171129 n

end A171129

/-! ## A171129.P10226070938911773689

`A092365(n+1)-A005898(n)`
-/

namespace A171129.P10226070938911773689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) - A005898 n

end

end A171129.P10226070938911773689

namespace A171129

/-- `A092365(n+1)-A005898(n)` -/
def P10226070938911773689.Spec : Prop :=
  ∀ n, P10226070938911773689.a n = A171129 n

theorem P10226070938911773689.correct : P10226070938911773689.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P10226070938911773689.a, A171129.P17751088220047433642.a, A005898, A005898.P8127451400230703254.a, A071252, A071252.P13937739183146272210.a, A092365, A092365.P1251251281909042150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P1817067897140501545

`A092364(n+1)-A048395(n)`
-/

namespace A171129.P1817067897140501545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) - A048395 n

end

end A171129.P1817067897140501545

namespace A171129

/-- `A092364(n+1)-A048395(n)` -/
def P1817067897140501545.Spec : Prop :=
  ∀ n, P1817067897140501545.a n = A171129 n

theorem P1817067897140501545.correct : P1817067897140501545.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P1817067897140501545.a, A171129.P17751088220047433642.a, A048395, A048395.P3571630861933578872.a, A071252, A071252.P13937739183146272210.a, A092364, A092364.P13609031644531025109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P4752923785423328953

`A135916(n+1)-A006597(n)`
-/

namespace A171129.P4752923785423328953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135916 (n + 1) - A006597 n

end

end A171129.P4752923785423328953

namespace A171129

/-- `A135916(n+1)-A006597(n)` -/
def P4752923785423328953.Spec : Prop :=
  ∀ n, P4752923785423328953.a n = A171129 n

end A171129

/-! ## A171129.P15045951147405765640

`A100019(n)-A092364(n+1)`
-/

namespace A171129.P15045951147405765640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n - A092364 (n + 1)

end

end A171129.P15045951147405765640

namespace A171129

/-- `A100019(n)-A092364(n+1)` -/
def P15045951147405765640.Spec : Prop :=
  ∀ n, P15045951147405765640.a n = A171129 n

theorem P15045951147405765640.correct : P15045951147405765640.Spec := by
  intro n
  simp only [A171129, Nat.add_sub_cancel, A171129.P15045951147405765640.a, A171129.P17751088220047433642.a, A071252, A071252.P13937739183146272210.a, A092364, A092364.P13609031644531025109.a, A100019, A100019.P10475415265072854522.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171129

/-! ## A171129.P5982218010073225667

`A100177(n+1)-A100705(n)`
-/

namespace A171129.P5982218010073225667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) - A100705 n

end

end A171129.P5982218010073225667

namespace A171129

/-- `A100177(n+1)-A100705(n)` -/
def P5982218010073225667.Spec : Prop :=
  ∀ n, P5982218010073225667.a n = A171129 n

end A171129

/-!
# A171130: Primes p such that sum of divisors of p+2 is prime.

The programs for A171130, there is no canonical definition to state claims against.
-/

/-! ## A171130.P13667760143929583809

`∩[A028871(n+1), A275278(n+1)]`
-/

namespace A171130.P13667760143929583809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171130.P13667760143929583809

/-! ## A171130.P5999849670303986946

`∩[A053705(n+1), A275278(n+1)]`
-/

namespace A171130.P5999849670303986946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171130.P5999849670303986946

/-! ## A171130.P8083266089392468257

`∩[A094786(n+1), A275278(n+1)]`
-/

namespace A171130.P8083266089392468257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171130.P8083266089392468257

/-! ## A171130.P15625308011107588049

`∩[A113425(n+1), A275278(n+1)]`
-/

namespace A171130.P15625308011107588049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171130.P15625308011107588049

/-! ## A171130.P8429395845519804106

`p?[A023194(n+1)-2]`
-/

namespace A171130.P8429395845519804106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171130.P8429395845519804106

/-!
# A171131: Primes p such that sum of divisors of p-3 is prime.

The programs for A171131, there is no canonical definition to state claims against.
-/

/-! ## A171131.P12134186336384617242

`A169628(∑[n]+2)`
-/

namespace A171131.P12134186336384617242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A171131.P12134186336384617242

/-! ## A171131.P15888837234721046867

`A256438(n+1)+2`
-/

namespace A171131.P15888837234721046867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256438 (n + 1) + 2

end

end A171131.P15888837234721046867

/-! ## A171131.P3999104934769561233

`A019279(n+1)+3`
-/

namespace A171131.P3999104934769561233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) + 3

end

end A171131.P3999104934769561233

/-! ## A171131.P18275354366857396209

`2*A134708(n+1)+3`
-/

namespace A171131.P18275354366857396209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134708 (n + 1) + 3

end

end A171131.P18275354366857396209

/-!
# A171132: The smallest exponent k such that the digit n appears at two adjacent places in the decimal representation of 2^k.

The programs for A171132, there is no canonical definition to state claims against.
-/

/-! ## A171132.P16644954774501238122

`A259091(∑{digits}[n, #])`
-/

namespace A171132.P16644954774501238122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259091 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A171132.P16644954774501238122

/-! ## A171132.P17500829686915224656

`A259091(∏{digits}[n, #])`
-/

namespace A171132.P17500829686915224656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259091 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A171132.P17500829686915224656

/-! ## A171132.P14085316349100247275

`A259091(n)%948`
-/

namespace A171132.P14085316349100247275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259091 n) 948

end

end A171132.P14085316349100247275

/-! ## A171132.P14495943003592131024

`A259091(n-floor(n/12))`
-/

namespace A171132.P14495943003592131024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259091 ((n : ℤ) - ⌊(n : ℚ) / 12⌋).toNat

end

end A171132.P14495943003592131024

/-! ## A171132.P17952799828677197693

`A004182(A259091(n))`
-/

namespace A171132.P17952799828677197693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A259091 n).toNat

end

end A171132.P17952799828677197693

/-!
# A171133: Primes in lunar arithmetic in base 6 written in base 6.

The programs for A171133, there is no canonical definition to state claims against.
-/

/-! ## A171133.P8749759859007822263

`A007092(A171125(n+1))`
-/

namespace A171133.P8749759859007822263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A171125 (n + 1)).toNat

end

end A171133.P8749759859007822263

/-! ## A171133.P6894921341564943814

`∩[A171788(n+1), A283608(n+1)]`
-/

namespace A171133.P6894921341564943814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171133.P6894921341564943814

/-! ## A171133.P4960107862519564831

`eq[6, A087028(A233583(n+1))]`
-/

namespace A171133.P4960107862519564831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171133.P4960107862519564831

/-! ## A171133.P2142135654184700504

`eq[A054055(n), A161813(A233583(n+1))]`
-/

namespace A171133.P2142135654184700504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171133.P2142135654184700504

/-! ## A171133.P8359066954256475336

`filter[A171788(n+1), A165556(#)]`
-/

namespace A171133.P8359066954256475336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A171133.P8359066954256475336

/-!
# A171134: Similar to A168612, but append on the right a string with the smallest number of 0's followed by a 1.

The programs for A171134, there is no canonical definition to state claims against.
-/

/-! ## A171134.P3961552759854216564

`A030101(∑[2^A072756(n)])`
-/

namespace A171134.P3961552759854216564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072756 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171134.P3961552759854216564

/-! ## A171134.P1317618474791016164

`A030101(A168612(n+1))`
-/

namespace A171134.P1317618474791016164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A168612 (n + 1)).toNat

end

end A171134.P1317618474791016164

/-! ## A171134.P13025842050089243467

`A030101(∑[2^A003714(n)])`
-/

namespace A171134.P13025842050089243467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003714 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171134.P13025842050089243467

/-! ## A171134.P9664587401553988504

`A056539(∑[2^A003714(n)])`
-/

namespace A171134.P9664587401553988504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003714 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171134.P9664587401553988504

/-!
# A171135: Smallest prime p such that p + 2n is prime or semiprime.

The programs for A171135, there is no canonical definition to state claims against.
-/

/-! ## A171135.P12634324766721082031

`A171136(n+1)-2*(n+1)`
-/

namespace A171135.P12634324766721082031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171136 (n + 1) - (2 * (n + 1) : ℤ)

end

end A171135.P12634324766721082031

/-! ## A171135.P570501584980407068

`A000009(A171136(n+1)-2*n)`
-/

namespace A171135.P570501584980407068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P570501584980407068

/-! ## A171135.P6196774351176372423

`A006456(A171136(n+1)-2*n)`
-/

namespace A171135.P6196774351176372423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P6196774351176372423

/-! ## A171135.P5959908179236650690

`A117298(A171136(n+1)-2*n)`
-/

namespace A171135.P5959908179236650690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P5959908179236650690

/-! ## A171135.P10909894760191885530

`A244815(A171136(n+1)-2*n)`
-/

namespace A171135.P10909894760191885530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244815 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P10909894760191885530

/-! ## A171135.P3011982630596271229

`A252463(A171136(n+1)-2*n)`
-/

namespace A171135.P3011982630596271229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P3011982630596271229

/-! ## A171135.P17447256962543429676

`A325876(A171136(n+1)-2*n)`
-/

namespace A171135.P17447256962543429676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P17447256962543429676

/-! ## A171135.P1312053110803860431

`A330193(A171136(n+1)-2*n)`
-/

namespace A171135.P1312053110803860431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330193 (A171136 (n + 1) - (2 * n : ℤ)).toNat

end

end A171135.P1312053110803860431

/-! ## A171135.P2327880726062971232

`A000009(A171136(n+1)-n-n)`
-/

namespace A171135.P2327880726062971232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A171136 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A171135.P2327880726062971232

/-! ## A171135.P3733969579985239067

`A002180(A171136(n+1)-Δ[n²])`
-/

namespace A171135.P3733969579985239067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (A171136 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A171135.P3733969579985239067

/-!
# A171136: A171135(n) + 2n.

The programs for A171136, there is no canonical definition to state claims against.
-/

/-! ## A171136.P11071988640945475423

`A171135(n+1)+2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171136.P11071988640945475423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171135 (n + 1) + (2 * (n + 1) : ℤ)

end

end A171136.P11071988640945475423

/-! ## A171136.P10558706012357010263

`A004277(n+1)+A171135(n+1)`
-/

namespace A171136.P10558706012357010263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A171135 (n + 1)

end

end A171136.P10558706012357010263

/-! ## A171136.P8521857625588018205

`A350389(A171135(n+1))+A005843(n+1)`
-/

namespace A171136.P8521857625588018205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A171135 (n + 1)).toNat + A005843 (n + 1)

end

end A171136.P8521857625588018205

/-!
# A171137: Smallest number m such that n-th prime = A171135(m).

The programs for A171137, there is no canonical definition to state claims against.
-/

/-! ## A171137.P17033904960038436267

`A108504(A072059(n+1))`
-/

namespace A171137.P17033904960038436267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108504 (A072059 (n + 1)).toNat

end

end A171137.P17033904960038436267

/-!
# A171138: Primes of the form 7*p^2+7*p-1 (with p=prime).

The programs for A171138, there is no canonical definition to state claims against.
-/

/-! ## A171138.P13933040438988235255

`A163756(A171139(n+1))-1`
-/

namespace A171138.P13933040438988235255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 (A171139 (n + 1)).toNat - 1

end

end A171138.P13933040438988235255

/-! ## A171138.P5680911071472345443

`A339791(A020639(n+1))+A163756(A171139(n+1))`
-/

namespace A171138.P5680911071472345443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A020639 (n + 1)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P5680911071472345443

/-! ## A171138.P13655333181806689204

`A339791(A100549(n+1))+A163756(A171139(n+1))`
-/

namespace A171138.P13655333181806689204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A100549 (n + 1)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P13655333181806689204

/-! ## A171138.P3618687392615703793

`A339791(A055377(n+4))+A163756(A171139(n+1))`
-/

namespace A171138.P3618687392615703793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A055377 (n + 4)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P3618687392615703793

/-! ## A171138.P15582698542722224194

`A339791(A007913((n+1)²))+A163756(A171139(n+1))`
-/

namespace A171138.P15582698542722224194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A007913 ((n + 1) ^ 2)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P15582698542722224194

/-! ## A171138.P4500853312740405177

`A339791(A137927(12*(n+1)+6))+A163756(A171139(n+1))`
-/

namespace A171138.P4500853312740405177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A137927 (12 * (n + 1) + 6)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P4500853312740405177

/-! ## A171138.P10665314962228405786

`A339791(A124010((n+3)²+n))+A163756(A171139(n+1))`
-/

namespace A171138.P10665314962228405786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A124010 ((n + 3) ^ 2 + n)).toNat + A163756 (A171139 (n + 1)).toNat

end

end A171138.P10665314962228405786

/-!
# A171139: Primes p such that 7*p^2+7*p-1 is also prime.

The programs for A171139, there is no canonical definition to state claims against.
-/

/-! ## A171139.P11806983260719480001

`floor(sqrt(A171138(n+1)/7))`
-/

namespace A171139.P11806983260719480001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A171138 (n + 1) : ℚ) / 7 : ℝ)⌋

end

end A171139.P11806983260719480001

/-! ## A171139.P10710240511815967652

`round(sqrt(A171138(n+1)/7-(A028310(n)+1)))`
-/

namespace A171139.P10710240511815967652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A028310 n + 1 : ℚ) : ℝ))

end

end A171139.P10710240511815967652

/-! ## A171139.P10961489640815076487

`round(sqrt(A171138(n+1)/7-(A036496(n)+1)))`
-/

namespace A171139.P10961489640815076487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A036496 n + 1 : ℚ) : ℝ))

end

end A171139.P10961489640815076487

/-! ## A171139.P13434247276329414528

`round(sqrt(A171138(n+1)/7-(A210435(n)+1)))`
-/

namespace A171139.P13434247276329414528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A210435 n + 1 : ℚ) : ℝ))

end

end A171139.P13434247276329414528

/-! ## A171139.P7330121809647210290

`round(sqrt(A171138(n+1)/7-(A329678(n)+1)))`
-/

namespace A171139.P7330121809647210290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A329678 n + 1 : ℚ) : ℝ))

end

end A171139.P7330121809647210290

/-! ## A171139.P10399543467549514925

`round(sqrt(A171138(n+1)/7-A001177(n+1)+1))`
-/

namespace A171139.P10399543467549514925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A001177 (n + 1) : ℚ) + 1 : ℝ))

end

end A171139.P10399543467549514925

/-! ## A171139.P10114713749035076698

`round(sqrt(A171138(n+1)/7-A051119(n+1)+1))`
-/

namespace A171139.P10114713749035076698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A051119 (n + 1) : ℚ) + 1 : ℝ))

end

end A171139.P10114713749035076698

/-! ## A171139.P8500762240398688900

`round(sqrt(A171138(n+1)/7-(A303219(2*n+1)+1)))`
-/

namespace A171139.P8500762240398688900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A171138 (n + 1) : ℚ) / 7 - (A303219 (2 * n + 1) + 1 : ℚ) : ℝ))

end

end A171139.P8500762240398688900

/-!
# A171140: Numbers k such that 6*k + 7 = p^2 (p=prime).

The programs for A171140, the canonical program `A171140.P8328287493239320054` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171140 has offset 1).

The definition of A171140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171140.P14541208096379514517

`floor(p?[2*n+5]²/3)/2-1`
-/

namespace A171140.P14541208096379514517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 3⌋ : ℚ) / 2 - 1

end

end A171140.P14541208096379514517

namespace A171140

/-- `floor(p?[2*n+5]²/3)/2-1` -/
def P14541208096379514517.Spec : Prop :=
  ∀ n, P14541208096379514517.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P4420694508169705890

`A084922(n+3)-1`
-/

namespace A171140.P4420694508169705890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084922 (n + 3) - 1

end

end A171140.P4420694508169705890

namespace A171140

/-- `A084922(n+3)-1` -/
def P4420694508169705890.Spec : Prop :=
  ∀ n, P4420694508169705890.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P8328287493239320054

`A069813(p?[2*n+5])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171140

/-- `A069813(p?[2*n+5])` -/
def P8328287493239320054.Spec : Prop :=
  ∀ n, P8328287493239320054.a n = A171140 (n + 1)

theorem P8328287493239320054.correct : P8328287493239320054.Spec := by
  intro n
  simp only [A171140, Nat.add_sub_cancel]

end A171140

/-! ## A171140.P7697384478232252624

`A024700(n+1)/2-1`
-/

namespace A171140.P7697384478232252624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 2 - 1

end

end A171140.P7697384478232252624

namespace A171140

/-- `A024700(n+1)/2-1` -/
def P7697384478232252624.Spec : Prop :=
  ∀ n, P7697384478232252624.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P18018516764227338924

`2*A081115(n+3)-1`
-/

namespace A171140.P18018516764227338924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081115 (n + 3) - 1

end

end A171140.P18018516764227338924

namespace A171140

/-- `2*A081115(n+3)-1` -/
def P18018516764227338924.Spec : Prop :=
  ∀ n, P18018516764227338924.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P5647241468490818710

`(A166011(n+3)+1)/3`
-/

namespace A171140.P5647241468490818710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166011 (n + 3) + 1 : ℚ) / 3

end

end A171140.P5647241468490818710

namespace A171140

/-- `(A166011(n+3)+1)/3` -/
def P5647241468490818710.Spec : Prop :=
  ∀ n, P5647241468490818710.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P3691289532171538868

`4*A024702(n+3)-1`
-/

namespace A171140.P3691289532171538868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024702 (n + 3) - 1

end

end A171140.P3691289532171538868

namespace A171140

/-- `4*A024702(n+3)-1` -/
def P3691289532171538868.Spec : Prop :=
  ∀ n, P3691289532171538868.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P879781082327652357

`A084921(n+3)/3-1`
-/

namespace A171140.P879781082327652357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084921 (n + 3) : ℚ) / 3 - 1

end

end A171140.P879781082327652357

namespace A171140

/-- `A084921(n+3)/3-1` -/
def P879781082327652357.Spec : Prop :=
  ∀ n, P879781082327652357.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P1777594314973888333

`A216244(n+3)/3-1`
-/

namespace A171140.P1777594314973888333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 3) : ℚ) / 3 - 1

end

end A171140.P1777594314973888333

namespace A171140

/-- `A216244(n+3)/3-1` -/
def P1777594314973888333.Spec : Prop :=
  ∀ n, P1777594314973888333.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P15654420602378213489

`(A243887(n+2)-2)/3`
-/

namespace A171140.P15654420602378213489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243887 (n + 2) - 2 : ℚ) / 3

end

end A171140.P15654420602378213489

namespace A171140

/-- `(A243887(n+2)-2)/3` -/
def P15654420602378213489.Spec : Prop :=
  ∀ n, P15654420602378213489.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P15602817263771008587

`(A286679(n+3)-5)/4`
-/

namespace A171140.P15602817263771008587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286679 (n + 3) - 5 : ℚ) / 4

end

end A171140.P15602817263771008587

namespace A171140

/-- `(A286679(n+3)-5)/4` -/
def P15602817263771008587.Spec : Prop :=
  ∀ n, P15602817263771008587.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P15688217135374123218

`(A000040(n+3)²-7)/6`
-/

namespace A171140.P15688217135374123218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) ^ 2 - 7 : ℚ) / 6

end

end A171140.P15688217135374123218

namespace A171140

/-- `(A000040(n+3)²-7)/6` -/
def P15688217135374123218.Spec : Prop :=
  ∀ n, P15688217135374123218.a n = (A171140 (n + 1) : ℚ)

end A171140

/-! ## A171140.P6386478981842428736

`A069813(A215848(n+1))`
-/

namespace A171140.P6386478981842428736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A215848 (n + 1)).toNat

end

end A171140.P6386478981842428736

namespace A171140

/-- `A069813(A215848(n+1))` -/
def P6386478981842428736.Spec : Prop :=
  ∀ n, P6386478981842428736.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P14918181652132537700

`A069813(A045344(n+2))`
-/

namespace A171140.P14918181652132537700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A045344 (n + 2)).toNat

end

end A171140.P14918181652132537700

namespace A171140

/-- `A069813(A045344(n+2))` -/
def P14918181652132537700.Spec : Prop :=
  ∀ n, P14918181652132537700.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P7863000060926575733

`A069813(A065091(n+2))`
-/

namespace A171140.P7863000060926575733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A065091 (n + 2)).toNat

end

end A171140.P7863000060926575733

namespace A171140

/-- `A069813(A065091(n+2))` -/
def P7863000060926575733.Spec : Prop :=
  ∀ n, P7863000060926575733.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P3687514579849063868

`A069813(A140475(n+2))`
-/

namespace A171140.P3687514579849063868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A140475 (n + 2)).toNat

end

end A171140.P3687514579849063868

namespace A171140

/-- `A069813(A140475(n+2))` -/
def P3687514579849063868.Spec : Prop :=
  ∀ n, P3687514579849063868.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P1602541794428392272

`A069813(A000040(n+3))`
-/

namespace A171140.P1602541794428392272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A000040 (n + 3)).toNat

end

end A171140.P1602541794428392272

namespace A171140

/-- `A069813(A000040(n+3))` -/
def P1602541794428392272.Spec : Prop :=
  ∀ n, P1602541794428392272.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P15026923959534601878

`A056827(p?[A091685(n)])-1`
-/

namespace A171140.P15026923959534601878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A171140.P15026923959534601878

namespace A171140

/-- `A056827(p?[A091685(n)])-1` -/
def P15026923959534601878.Spec : Prop :=
  ∀ n, P15026923959534601878.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P5083255888551925092

`A062717(A181709(n+1))-1`
-/

namespace A171140.P5083255888551925092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A181709 (n + 1)).toNat - 1

end

end A171140.P5083255888551925092

namespace A171140

/-- `A062717(A181709(n+1))-1` -/
def P5083255888551925092.Spec : Prop :=
  ∀ n, P5083255888551925092.a n = A171140 (n + 1)

end A171140

/-! ## A171140.P8950799675135334722

`A001839(A135731(n+2))-1`
-/

namespace A171140.P8950799675135334722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001839 (A135731 (n + 2)).toNat - 1

end

end A171140.P8950799675135334722

namespace A171140

/-- `A001839(A135731(n+2))-1` -/
def P8950799675135334722.Spec : Prop :=
  ∀ n, P8950799675135334722.a n = A171140 (n + 1)

end A171140

/-!
# A171141: Numbers that are congruent to {6,33} mod 41.

The programs for A171141, the canonical program `A171141.P3600065989061138362` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171141 has offset 1).

The definition of A171141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171141.P3600065989061138362

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=6, a(1)=33, a(2)=47`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171141

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3600065989061138362.Spec : Prop :=
  ∀ n, P3600065989061138362.a n = A171141 (n + 1)

theorem P3600065989061138362.correct : P3600065989061138362.Spec := by
  intro n
  simp only [A171141, Nat.add_sub_cancel]

end A171141

/-! ## A171141.P1260381245360170339

`(82*(n+1)+13*(-1)^(n+1)-45)/4`
-/

namespace A171141.P1260381245360170339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((82 * (n + 1) : ℤ) + 13 * (-1) ^ (n + 1) - 45 : ℚ) / 4

end

end A171141.P1260381245360170339

namespace A171141

/-- `(82*(n+1)+13*(-1)^(n+1)-45)/4` -/
def P1260381245360170339.Spec : Prop :=
  ∀ n, P1260381245360170339.a n = (A171141 (n + 1) : ℚ)

theorem P1260381245360170339.correct : P1260381245360170339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A171141, Nat.add_sub_cancel, A171141.P1260381245360170339.a, A171141.P3600065989061138362.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A171141, Nat.add_sub_cancel, A171141.P1260381245360170339.a, A171141.P3600065989061138362.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171141

/-! ## A171141.P3990977005340670223

`a(n-2)+41` with `a(0)=6, a(1)=33`
-/

namespace A171141.P3990977005340670223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 33] fun n a =>
  a (n - 2) + 41

end

end A171141.P3990977005340670223

namespace A171141

/-- `a(n-2)+41` -/
def P3990977005340670223.Spec : Prop :=
  ∀ n, (P3990977005340670223.a n : ℤ) = A171141 (n + 1)

end A171141

/-! ## A171141.P9186315501244044021

`∑[floor(a(n-2))]` with `a(0)=6, a(1)=27, a(2)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A171141.P9186315501244044021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 27, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171141.P9186315501244044021

namespace A171141

/-- `∑[floor(a(n-2))]` -/
def P9186315501244044021.Spec : Prop :=
  ∀ n, (P9186315501244044021.a n : ℤ) = A171141 (n + 1)

end A171141

/-! ## A171141.P13911832937731760360

`∑[41-a(n-1)]` with `a(0)=6, a(1)=27`
-/

namespace A171141.P13911832937731760360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 27] fun n f1 =>
  41 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171141.P13911832937731760360

namespace A171141

/-- `∑[41-a(n-1)]` -/
def P13911832937731760360.Spec : Prop :=
  ∀ n, P13911832937731760360.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P18361462573660315132

`∑[A070624(a(n-1))]` with `a(0)=6`
-/

namespace A171141.P18361462573660315132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A070624 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171141.P18361462573660315132

namespace A171141

/-- `∑[A070624(a(n-1))]` -/
def P18361462573660315132.Spec : Prop :=
  ∀ n, P18361462573660315132.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P13431663471825632345

`A155097(n+1)+2*n`
-/

namespace A171141.P13431663471825632345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + (2 * n : ℤ)

end

end A171141.P13431663471825632345

namespace A171141

/-- `A155097(n+1)+2*n` -/
def P13431663471825632345.Spec : Prop :=
  ∀ n, P13431663471825632345.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P13832158471971712712

`A169610(n+1)+Δ[n²]`
-/

namespace A171141.P13832158471971712712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A171141.P13832158471971712712

namespace A171141

/-- `A169610(n+1)+Δ[n²]` -/
def P13832158471971712712.Spec : Prop :=
  ∀ n, P13832158471971712712.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P7060305218186744311

`A306331(n+1)+A007494(n)`
-/

namespace A171141.P7060305218186744311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) + A007494 n

end

end A171141.P7060305218186744311

namespace A171141

/-- `A306331(n+1)+A007494(n)` -/
def P7060305218186744311.Spec : Prop :=
  ∀ n, P7060305218186744311.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P17486147202058882797

`A168670(n+1)+A084967(n+1)`
-/

namespace A171141.P17486147202058882797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168670 (n + 1) + A084967 (n + 1)

end

end A171141.P17486147202058882797

namespace A171141

/-- `A168670(n+1)+A084967(n+1)` -/
def P17486147202058882797.Spec : Prop :=
  ∀ n, P17486147202058882797.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P13789673853686925213

`A169600(n+1)+A090772(n+1)`
-/

namespace A171141.P13789673853686925213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (n + 1) + A090772 (n + 1)

end

end A171141.P13789673853686925213

namespace A171141

/-- `A169600(n+1)+A090772(n+1)` -/
def P13789673853686925213.Spec : Prop :=
  ∀ n, P13789673853686925213.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P2517057971023620441

`A169599(n+1)+A091999(n+1)`
-/

namespace A171141.P2517057971023620441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1) + A091999 (n + 1)

end

end A171141.P2517057971023620441

namespace A171141

/-- `A169599(n+1)+A091999(n+1)` -/
def P2517057971023620441.Spec : Prop :=
  ∀ n, P2517057971023620441.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P11380056857931426327

`A231002(n+1)+A168671(n+1)`
-/

namespace A171141.P11380056857931426327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1) + A168671 (n + 1)

end

end A171141.P11380056857931426327

namespace A171141

/-- `A231002(n+1)+A168671(n+1)` -/
def P11380056857931426327.Spec : Prop :=
  ∀ n, P11380056857931426327.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P9080568467378102981

`A259755(n+1)+A168672(n+1)`
-/

namespace A171141.P9080568467378102981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 1) + A168672 (n + 1)

end

end A171141.P9080568467378102981

namespace A171141

/-- `A259755(n+1)+A168672(n+1)` -/
def P9080568467378102981.Spec : Prop :=
  ∀ n, P9080568467378102981.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P13291310923151494831

`A306771(n+1)+A169598(n+1)`
-/

namespace A171141.P13291310923151494831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) + A169598 (n + 1)

end

end A171141.P13291310923151494831

namespace A171141

/-- `A306771(n+1)+A169598(n+1)` -/
def P13291310923151494831.Spec : Prop :=
  ∀ n, P13291310923151494831.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P13550260636803497180

`A156674(n+1)-A047406(n+1)`
-/

namespace A171141.P13550260636803497180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - A047406 (n + 1)

end

end A171141.P13550260636803497180

namespace A171141

/-- `A156674(n+1)-A047406(n+1)` -/
def P13550260636803497180.Spec : Prop :=
  ∀ n, P13550260636803497180.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P3465627174528501675

`A159254(n+1)-A168416(n+1)`
-/

namespace A171141.P3465627174528501675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1) - A168416 (n + 1)

end

end A171141.P3465627174528501675

namespace A171141

/-- `A159254(n+1)-A168416(n+1)` -/
def P3465627174528501675.Spec : Prop :=
  ∀ n, P3465627174528501675.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P10166184813902708747

`A164135(n+1)-A168301(n+1)`
-/

namespace A171141.P10166184813902708747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) - A168301 (n + 1)

end

end A171141.P10166184813902708747

namespace A171141

/-- `A164135(n+1)-A168301(n+1)` -/
def P10166184813902708747.Spec : Prop :=
  ∀ n, P10166184813902708747.a n = A171141 (n + 1)

end A171141

/-! ## A171141.P3420362526426554163

`A169599(n+1)+2*A007310(n+1)`
-/

namespace A171141.P3420362526426554163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1) + 2 * A007310 (n + 1)

end

end A171141.P3420362526426554163

namespace A171141

/-- `A169599(n+1)+2*A007310(n+1)` -/
def P3420362526426554163.Spec : Prop :=
  ∀ n, P3420362526426554163.a n = A171141 (n + 1)

end A171141

/-!
# A171142: Triangle T(n,k) of the coefficients [x^k] of the polynomial p_n(x), where p_n(x)=(1+x)*p_{n-1}(x) if n even, p_n(x) = (x^2+4x+1)^((n-1)/2) if n odd.

The programs for A171142, there is no canonical definition to state claims against.
-/

/-! ## A171142.P6700400885330643626

`and(31, A030108(A022167(n)))`
-/

namespace A171142.P6700400885330643626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A030108 (A022167 n).toNat)

end

end A171142.P6700400885330643626

/-! ## A171142.P6140825201474395338

`A023717(A026374(n))%A139199(n+1)`
-/

namespace A171142.P6140825201474395338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 (A026374 n).toNat) (A139199 (n + 1))

end

end A171142.P6140825201474395338

/-! ## A171142.P2348424900272541657

`A235669(A157640(n))`
-/

namespace A171142.P2348424900272541657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235669 (A157640 n).toNat

end

end A171142.P2348424900272541657

/-! ## A171142.P16704573413880492736

`A260113(A147566(n))`
-/

namespace A171142.P16704573413880492736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A147566 n).toNat

end

end A171142.P16704573413880492736

/-! ## A171142.P12601013214731133264

`A347832(A081579(n))+A133687(n)`
-/

namespace A171142.P12601013214731133264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347832 (A081579 n).toNat + A133687 n

end

end A171142.P12601013214731133264

/-!
# A171143: Primes in lunar arithmetic in base 7 written in base 10.

The programs for A171143, there is no canonical definition to state claims against.
-/

/-! ## A171143.P11946150609238881800

`A028902(A171144(n+1))`
-/

namespace A171143.P11946150609238881800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A171144 (n + 1)).toNat

end

end A171143.P11946150609238881800

/-! ## A171143.P1179556433646929236

`A068505(A171144(C(n+1, n)))`
-/

namespace A171143.P1179556433646929236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A171144 (Nat.choose (n + 1) n)).toNat

end

end A171143.P1179556433646929236

/-! ## A171143.P17749733293345516792

`A068505(A171144(Δ[n²]-n))`
-/

namespace A171143.P17749733293345516792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A171144 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A171143.P17749733293345516792

/-! ## A171143.P168096649037683600

`A007318(∑[n])*A068505(A171144(n+1))`
-/

namespace A171143.P168096649037683600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A068505 (A171144 (n + 1)).toNat

end

end A171143.P168096649037683600

/-! ## A171143.P15435522149672204231

`A068505(A171144(n+1))/A007318(∑[n+1])`
-/

namespace A171143.P15435522149672204231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068505 (A171144 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A171143.P15435522149672204231

/-! ## A171143.P4937211161791611033

`A014963(4*n+6)*A068505(A171144(n+1))`
-/

namespace A171143.P4937211161791611033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A068505 (A171144 (n + 1)).toNat

end

end A171143.P4937211161791611033

/-! ## A171143.P2081949327036967846

`A068505(A171144(n+1))+A008683(99*(n+1))`
-/

namespace A171143.P2081949327036967846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A171144 (n + 1)).toNat + A008683 (99 * (n + 1))

end

end A171143.P2081949327036967846

/-! ## A171143.P5587389588158888753

`A068505(A171144(n+1))%A000010(99*(n+1))`
-/

namespace A171143.P5587389588158888753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068505 (A171144 (n + 1)).toNat) (A000010 (99 * (n + 1)))

end

end A171143.P5587389588158888753

/-!
# A171144: Primes in lunar arithmetic in base 7 written in base 7.

The programs for A171144, there is no canonical definition to state claims against.
-/

/-! ## A171144.P208242937712693450

`A007093(A171143(n+1))`
-/

namespace A171144.P208242937712693450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A171143 (n + 1)).toNat

end

end A171144.P208242937712693450

/-! ## A171144.P9972951369140528002

`∩[A171787(n+1), A283609(n+1)]`
-/

namespace A171144.P9972951369140528002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171144.P9972951369140528002

/-! ## A171144.P15051588898463493613

`eq[A161813(A233583(n+1))+2, A054055(n)]`
-/

namespace A171144.P15051588898463493613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (A233583 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171144.P15051588898463493613

/-! ## A171144.P11134000531394413525

`A171787(A077168(n+1))`
-/

namespace A171144.P11134000531394413525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171787 (A077168 (n + 1)).toNat

end

end A171144.P11134000531394413525

/-!
# A171145: The sequence of coefficients of a polynomial recursion: p(x,n)=If[Mod[n, 2] == 0, (x + 1)*p(x, n - 1), (x^2 + n*x + 1)^Floor[n/2]].

The programs for A171145, there is no canonical definition to state claims against.
-/

/-! ## A171145.P1597612843122064302

`A160803(A168293(n))`
-/

namespace A171145.P1597612843122064302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160803 (A168293 n).toNat

end

end A171145.P1597612843122064302

/-! ## A171145.P1945403776147126500

`A211990(2*A098568(n))`
-/

namespace A171145.P1945403776147126500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (2 * A098568 n).toNat

end

end A171145.P1945403776147126500

/-! ## A171145.P10091200260275228163

`A211990(2*A100862(n))`
-/

namespace A171145.P10091200260275228163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (2 * A100862 n).toNat

end

end A171145.P10091200260275228163

/-! ## A171145.P4254904475066804548

`∏{e}[A336496(A008459(n)), #]`
-/

namespace A171145.P4254904475066804548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336496 (A008459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A171145.P4254904475066804548

/-! ## A171145.P10103058259376614862

`A211990(A002378(A007318(n)))`
-/

namespace A171145.P10103058259376614862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (A002378 (A007318 n).toNat).toNat

end

end A171145.P10103058259376614862

/-!
# A171148: a(n) = 3 + 10^n + 3*100^n.

The programs for A171148, the canonical program `A171148.P12448289414521900272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171148 has offset 0).

The definition of A171148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+10^n+3*100^n` (program `A171148.P12448289414521900272`, by `A171148.P12448289414521900272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171148.P12448289414521900272

`3+10^n+3*100^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171148

/-- `3+10^n+3*100^n` -/
def P12448289414521900272.Spec : Prop :=
  ∀ n, (P12448289414521900272.a n : ℤ) = A171148 n

theorem P12448289414521900272.correct : P12448289414521900272.Spec := by
  intro n
  simp only [A171148]

end A171148

/-!
# A171149: Numbers k such that 3 + 10^k + 3*100^k is prime.

The programs for A171149, there is no canonical definition to state claims against.
-/

/-! ## A171149.P10363250874663020663

`lt[A100955(round(sqrt(n²+1))), 2]`
-/

namespace A171149.P10363250874663020663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100955 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171149.P10363250874663020663

/-! ## A171149.P14460429912577728770

`eq[1, A100955(A028310(n))]`
-/

namespace A171149.P14460429912577728770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171149.P14460429912577728770

/-! ## A171149.P8287362941406336597

`eq[1, A100955(A233583(n+1))]`
-/

namespace A171149.P8287362941406336597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100955 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171149.P8287362941406336597

/-!
# A171151: Expansion of (A(x)-1)/(x*A(x)), A(x) the g.f. of A004211.

The programs for A171151, there is no canonical definition to state claims against.
-/

/-! ## A171151.P5425144597330700080

`∏{p}[∑[A158900(n)]², #]`
-/

namespace A171151.P5425144597330700080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171151.P5425144597330700080

/-! ## A171151.P12520716387772672060

`∑[A339319(A002294(n))]`
-/

namespace A171151.P12520716387772672060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339319 (A002294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171151.P12520716387772672060

/-!
# A171152: Partial sums of A118011.

The programs for A171152, the canonical program `A171152.P12159337980299993144` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171152 has offset 1).

The definition of A171152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171152.P15084011818682824547

`∑[∑[char[∑[n]]+2]]`
-/

namespace A171152.P15084011818682824547
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171152.P15084011818682824547

namespace A171152

/-- `∑[∑[char[∑[n]]+2]]` -/
def P15084011818682824547.Spec : Prop :=
  ∀ n, (P15084011818682824547.a n : ℤ) = A171152 (n + 1)

end A171152

/-! ## A171152.P5206560688646828686

`-∑[xor(comp[∑[n]]+n, -1)]`
-/

namespace A171152.P5206560688646828686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171152.P5206560688646828686

namespace A171152

/-- `-∑[xor(comp[∑[n]]+n, -1)]` -/
def P5206560688646828686.Spec : Prop :=
  ∀ n, P5206560688646828686.a n = A171152 (n + 1)

end A171152

/-! ## A171152.P14996320702545918350

`∑[n+1]+∑[comp[C(n, 2)]]`
-/

namespace A171152.P14996320702545918350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A171152.P14996320702545918350

namespace A171152

/-- `∑[n+1]+∑[comp[C(n, 2)]]` -/
def P14996320702545918350.Spec : Prop :=
  ∀ n, (P14996320702545918350.a n : ℤ) = A171152 (n + 1)

end A171152

/-! ## A171152.P9824150476611578912

`abs(∑[n-xor(-1, comp[∑[n]])])`
-/

namespace A171152.P9824150476611578912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (-1) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A171152.P9824150476611578912

namespace A171152

/-- `abs(∑[n-xor(-1, comp[∑[n]])])` -/
def P9824150476611578912.Spec : Prop :=
  ∀ n, P9824150476611578912.a n = A171152 (n + 1)

end A171152

/-! ## A171152.P581745122852335913

`-∑[xor(n, -1)-comp[∑[n]]]`
-/

namespace A171152.P581745122852335913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171152.P581745122852335913

namespace A171152

/-- `-∑[xor(n, -1)-comp[∑[n]]]` -/
def P581745122852335913.Spec : Prop :=
  ∀ n, P581745122852335913.a n = A171152 (n + 1)

end A171152

/-! ## A171152.P12977657924390427657

`record[(1-n)²]+∑[comp[∑[n]]-n]`
-/

namespace A171152.P12977657924390427657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A171152.P12977657924390427657

namespace A171152

/-- `record[(1-n)²]+∑[comp[∑[n]]-n]` -/
def P12977657924390427657.Spec : Prop :=
  ∀ n, P12977657924390427657.a n = A171152 (n + 1)

end A171152

/-! ## A171152.P11445664068777815124

`n+1+comp[∑[n]]+a(n-1)` with `a(0)=3`
-/

namespace A171152.P11445664068777815124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  n + 1 + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1))

end

end A171152.P11445664068777815124

namespace A171152

/-- `n+1+comp[∑[n]]+a(n-1)` -/
def P11445664068777815124.Spec : Prop :=
  ∀ n, (P11445664068777815124.a n : ℤ) = A171152 (n + 1)

end A171152

/-! ## A171152.P14931207938714916411

`a(n-1)+comp[C(n, 2)]+1+n` with `a(0)=3`
-/

namespace A171152.P14931207938714916411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n)

end

end A171152.P14931207938714916411

namespace A171152

/-- `a(n-1)+comp[C(n, 2)]+1+n` -/
def P14931207938714916411.Spec : Prop :=
  ∀ n, (P14931207938714916411.a n : ℤ) = A171152 (n + 1)

end A171152

/-! ## A171152.P16542714085709263723

`A329598(n+1)+∑[n+1]`
-/

namespace A171152.P16542714085709263723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329598 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A171152.P16542714085709263723

namespace A171152

/-- `A329598(n+1)+∑[n+1]` -/
def P16542714085709263723.Spec : Prop :=
  ∀ n, P16542714085709263723.a n = A171152 (n + 1)

end A171152

/-! ## A171152.P12159337980299993144

`A000217(n+1)+A060432(n+1)+A000217(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171152

/-- `A000217(n+1)+A060432(n+1)+A000217(n+1)` -/
def P12159337980299993144.Spec : Prop :=
  ∀ n, P12159337980299993144.a n = A171152 (n + 1)

theorem P12159337980299993144.correct : P12159337980299993144.Spec := by
  intro n
  simp only [A171152, Nat.add_sub_cancel]

end A171152

/-!
# A171153: Numbers that are not in A169606.

The programs for A171153, the canonical program `A171153.P4763760712593806838` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171153 has offset 1).

The definition of A171153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171153.P3787697176326651683

`comp[A169606(n+1)-1]+1`
-/

namespace A171153.P3787697176326651683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171153.P3787697176326651683

namespace A171153

/-- `comp[A169606(n+1)-1]+1` -/
def P3787697176326651683.Spec : Prop :=
  ∀ n, (P3787697176326651683.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P18120943830567526976

`comp[A006530(n+1)-n²%3-2]`
-/

namespace A171153.P18120943830567526976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - ((n ^ 2 % 3 : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171153.P18120943830567526976

namespace A171153

/-- `comp[A006530(n+1)-n²%3-2]` -/
def P18120943830567526976.Spec : Prop :=
  ∀ n, (P18120943830567526976.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P15296539499958711309

`∪[lt[1, A001222(or(1, n))]-2, 6*n+1]`
-/

namespace A171153.P15296539499958711309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

end

end A171153.P15296539499958711309

namespace A171153

/-- `∪[lt[1, A001222(or(1, n))]-2, 6*n+1]` -/
def P15296539499958711309.Spec : Prop :=
  ∀ n, (P15296539499958711309.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P4763760712593806838

`A308833(n+1)+A057428(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171153

/-- `A308833(n+1)+A057428(n)` -/
def P4763760712593806838.Spec : Prop :=
  ∀ n, P4763760712593806838.a n = A171153 (n + 1)

theorem P4763760712593806838.correct : P4763760712593806838.Spec := by
  intro n
  simp only [A171153, Nat.add_sub_cancel]

end A171153

/-! ## A171153.P7829647971808437044

`A308833(n+1)-A057427(n)`
-/

namespace A171153.P7829647971808437044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1) - A057427 n

end

end A171153.P7829647971808437044

namespace A171153

/-- `A308833(n+1)-A057427(n)` -/
def P7829647971808437044.Spec : Prop :=
  ∀ n, P7829647971808437044.a n = A171153 (n + 1)

theorem P7829647971808437044.correct : P7829647971808437044.Spec := by
  intro n
  simp only [A171153, Nat.add_sub_cancel, A171153.P7829647971808437044.a, A171153.P4763760712593806838.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A308833, A308833.P17401601876213426740.f1, A308833.P17401601876213426740.f2, A308833.P17401601876213426740.a, A000007, A000007.P6599383543502402472.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171153

/-! ## A171153.P2871063628385273817

`abs(record[n-A110560(n)])`
-/

namespace A171153.P2871063628385273817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A171153.P2871063628385273817

namespace A171153

/-- `abs(record[n-A110560(n)])` -/
def P2871063628385273817.Spec : Prop :=
  ∀ n, P2871063628385273817.a n = A171153 (n + 1)

end A171153

/-! ## A171153.P6623331792154123180

`eq[2, or(2, A175624(n+1))]`
-/

namespace A171153.P6623331792154123180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A175624 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171153.P6623331792154123180

namespace A171153

/-- `eq[2, or(2, A175624(n+1))]` -/
def P6623331792154123180.Spec : Prop :=
  ∀ n, (P6623331792154123180.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P12588367126678907811

`eq[C(2, n), A226718(n+1)]`
-/

namespace A171153.P12588367126678907811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171153.P12588367126678907811

namespace A171153

/-- `eq[C(2, n), A226718(n+1)]` -/
def P12588367126678907811.Spec : Prop :=
  ∀ n, (P12588367126678907811.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P17291251990350204606

`lt[Δ[A020639(n+2)]², n+1]`
-/

namespace A171153.P17291251990350204606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A171153.P17291251990350204606

namespace A171153

/-- `lt[Δ[A020639(n+2)]², n+1]` -/
def P17291251990350204606.Spec : Prop :=
  ∀ n, (P17291251990350204606.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P2746508840199688822

`eq[A063524(n), A090405(n+1)]`
-/

namespace A171153.P2746508840199688822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P2746508840199688822

namespace A171153

/-- `eq[A063524(n), A090405(n+1)]` -/
def P2746508840199688822.Spec : Prop :=
  ∀ n, (P2746508840199688822.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P337071233234908382

`eq[A090405(n+1), A114563(n)]`
-/

namespace A171153.P337071233234908382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P337071233234908382

namespace A171153

/-- `eq[A090405(n+1), A114563(n)]` -/
def P337071233234908382.Spec : Prop :=
  ∀ n, (P337071233234908382.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P5720476958333253778

`eq[A090405(n+1), A130779(n)]`
-/

namespace A171153.P5720476958333253778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P5720476958333253778

namespace A171153

/-- `eq[A090405(n+1), A130779(n)]` -/
def P5720476958333253778.Spec : Prop :=
  ∀ n, (P5720476958333253778.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P12213473777220291768

`eq[A130706(n), A226718(n+1)]`
-/

namespace A171153.P12213473777220291768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P12213473777220291768

namespace A171153

/-- `eq[A130706(n), A226718(n+1)]` -/
def P12213473777220291768.Spec : Prop :=
  ∀ n, (P12213473777220291768.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P13933047815145998332

`eq[A130713(n), A226718(n+1)]`
-/

namespace A171153.P13933047815145998332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P13933047815145998332

namespace A171153

/-- `eq[A130713(n), A226718(n+1)]` -/
def P13933047815145998332.Spec : Prop :=
  ∀ n, (P13933047815145998332.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P701379295086760884

`eq[A090405(n+1), A285982(n)]`
-/

namespace A171153.P701379295086760884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P701379295086760884

namespace A171153

/-- `eq[A090405(n+1), A285982(n)]` -/
def P701379295086760884.Spec : Prop :=
  ∀ n, (P701379295086760884.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P16615904974501567469

`eq[A090405(n+1), A300659(n)]`
-/

namespace A171153.P16615904974501567469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P16615904974501567469

namespace A171153

/-- `eq[A090405(n+1), A300659(n)]` -/
def P16615904974501567469.Spec : Prop :=
  ∀ n, (P16615904974501567469.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P3244938685568087226

`eq[A166926(n), A226718(n+1)]`
-/

namespace A171153.P3244938685568087226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P3244938685568087226

namespace A171153

/-- `eq[A166926(n), A226718(n+1)]` -/
def P3244938685568087226.Spec : Prop :=
  ∀ n, (P3244938685568087226.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P18019264374719938469

`eq[A175564(n), A226718(n+1)]`
-/

namespace A171153.P18019264374719938469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P18019264374719938469

namespace A171153

/-- `eq[A175564(n), A226718(n+1)]` -/
def P18019264374719938469.Spec : Prop :=
  ∀ n, (P18019264374719938469.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P5132933384041660098

`eq[A141044(n), A289827(n+1)]`
-/

namespace A171153.P5132933384041660098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P5132933384041660098

namespace A171153

/-- `eq[A141044(n), A289827(n+1)]` -/
def P5132933384041660098.Spec : Prop :=
  ∀ n, (P5132933384041660098.a n : ℤ) = A171153 (n + 1)

end A171153

/-! ## A171153.P14174621195001166515

`eq[A175567(n+1), A285982(n)]`
-/

namespace A171153.P14174621195001166515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171153.P14174621195001166515

namespace A171153

/-- `eq[A175567(n+1), A285982(n)]` -/
def P14174621195001166515.Spec : Prop :=
  ∀ n, (P14174621195001166515.a n : ℤ) = A171153 (n + 1)

end A171153

/-!
# A171156: Numbers of the form 2p or 3p where p is a prime greater than 3.

The programs for A171156, there is no canonical definition to state claims against.
-/

/-! ## A171156.P2797179215211640152

`A253106(n+4)`
-/

namespace A171156.P2797179215211640152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 4)

end

end A171156.P2797179215211640152

/-! ## A171156.P1038674296784421347

`A195896(n+6)+1`
-/

namespace A171156.P1038674296784421347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 6) + 1

end

end A171156.P1038674296784421347

/-! ## A171156.P8172217381358752879

`A063080(n+6)/4`
-/

namespace A171156.P8172217381358752879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063080 (n + 6) : ℚ) / 4

end

end A171156.P8172217381358752879

/-! ## A171156.P8546952723753316151

`∩[∪[2*n, 3*n], A001358(n+4)]`
-/

namespace A171156.P8546952723753316151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A171156.P8546952723753316151

/-! ## A171156.P16564609965595782325

`A002808(A171420(n+1))`
-/

namespace A171156.P16564609965595782325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A171420 (n + 1)).toNat

end

end A171156.P16564609965595782325

/-! ## A171156.P18307923715145332062

`eq[A040934(n), A066882(n)]`
-/

namespace A171156.P18307923715145332062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171156.P18307923715145332062

/-! ## A171156.P11048807603531451966

`eq[A040818(n), A104725(n)]`
-/

namespace A171156.P11048807603531451966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040818 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171156.P11048807603531451966

/-! ## A171156.P14606001739009321243

`eq[A040818(n), A211110(n)]`
-/

namespace A171156.P14606001739009321243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040818 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171156.P14606001739009321243

/-! ## A171156.P8332021116709841675

`eq[A040934(n), A284463(n)]`
-/

namespace A171156.P8332021116709841675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171156.P8332021116709841675

/-! ## A171156.P1966209124422125518

`eq[A040934(n), A286852(n)]`
-/

namespace A171156.P1966209124422125518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171156.P1966209124422125518

/-!
# A171157: Number of distinct primes > 3 that divide n.

The programs for A171157, the canonical program `A171157.P8672816315949041848` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171157 has offset 1).

The definition of A171157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171157.P11947267265824899883

`round(A001221(n+1)-(5+3*cos((n+1)*π)+4*cos(2*(n+1)*π/3))/6)`
-/

namespace A171157.P11947267265824899883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001221 (n + 1) : ℝ) - (5 + 3 * Real.cos ((n + 1 : ℝ) * Real.pi) + 4 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 6)

end

end A171157.P11947267265824899883

namespace A171157

/-- `round(A001221(n+1)-(5+3*cos((n+1)*π)+4*cos(2*(n+1)*π/3))/6)` -/
def P11947267265824899883.Spec : Prop :=
  ∀ n, P11947267265824899883.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P8672816315949041848

`A001221(n+1)-A171182(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171157

/-- `A001221(n+1)-A171182(n+1)` -/
def P8672816315949041848.Spec : Prop :=
  ∀ n, P8672816315949041848.a n = A171157 (n + 1)

theorem P8672816315949041848.correct : P8672816315949041848.Spec := by
  intro n
  simp only [A171157, Nat.add_sub_cancel]

end A171157

/-! ## A171157.P15595136928424755322

`∑{p}[n+1, floor(atan(log(#)))]`
-/

namespace A171157.P15595136928424755322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (Real.log (p : ℝ))⌋

end

end A171157.P15595136928424755322

namespace A171157

/-- `∑{p}[n+1, floor(atan(log(#)))]` -/
def P15595136928424755322.Spec : Prop :=
  ∀ n, P15595136928424755322.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P9268077376049146999

`∑{p}[n+1, C(3%#, 3)]`
-/

namespace A171157.P9268077376049146999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (3 % p) 3

end

end A171157.P9268077376049146999

namespace A171157

/-- `∑{p}[n+1, C(3%#, 3)]` -/
def P9268077376049146999.Spec : Prop :=
  ∀ n, (P9268077376049146999.a n : ℤ) = A171157 (n + 1)

end A171157

/-! ## A171157.P5671828924443709847

`∑{p}[n+1, (6%#)%5]`
-/

namespace A171157.P5671828924443709847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), 6 % p % 5

end

end A171157.P5671828924443709847

namespace A171157

/-- `∑{p}[n+1, (6%#)%5]` -/
def P5671828924443709847.Spec : Prop :=
  ∀ n, (P5671828924443709847.a n : ℤ) = A171157 (n + 1)

end A171157

/-! ## A171157.P12512528120207438764

`∑{p}[n+1, 1-floor(3/#)]`
-/

namespace A171157.P12512528120207438764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - ⌊3 / (p : ℚ)⌋)

end

end A171157.P12512528120207438764

namespace A171157

/-- `∑{p}[n+1, 1-floor(3/#)]` -/
def P12512528120207438764.Spec : Prop :=
  ∀ n, P12512528120207438764.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P2376852203335213060

`log2(A385044(n+1))`
-/

namespace A171157.P2376852203335213060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A385044 (n + 1) : ℝ)

end

end A171157.P2376852203335213060

namespace A171157

/-- `log2(A385044(n+1))` -/
def P2376852203335213060.Spec : Prop :=
  ∀ n, P2376852203335213060.a n = (A171157 (n + 1) : ℝ)

end A171157

/-! ## A171157.P12768226198258486388

`∑{d}[n+1, A171387(#)]`
-/

namespace A171157.P12768226198258486388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A171387 d

end

end A171157.P12768226198258486388

namespace A171157

/-- `∑{d}[n+1, A171387(#)]` -/
def P12768226198258486388.Spec : Prop :=
  ∀ n, P12768226198258486388.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P14964636658995916858

`A106799(∏{p}[n+1, #])`
-/

namespace A171157.P14964636658995916858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A171157.P14964636658995916858

namespace A171157

/-- `A106799(∏{p}[n+1, #])` -/
def P14964636658995916858.Spec : Prop :=
  ∀ n, P14964636658995916858.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P634493028488304481

`A001221(6*(n+1))-2`
-/

namespace A171157.P634493028488304481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (6 * (n + 1)) - 2

end

end A171157.P634493028488304481

namespace A171157

/-- `A001221(6*(n+1))-2` -/
def P634493028488304481.Spec : Prop :=
  ∀ n, P634493028488304481.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P114475670322341651

`A001221(gcd((n+1)/3^val(n+1, 3), (n+1)/2^val(n+1, 2)))`
-/

namespace A171157.P114475670322341651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))))

end

end A171157.P114475670322341651

namespace A171157

/-- `A001221(gcd((n+1)/3^val(n+1, 3), (n+1)/2^val(n+1, 2)))` -/
def P114475670322341651.Spec : Prop :=
  ∀ n, P114475670322341651.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P5541699083685598879

`A001221(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))`
-/

namespace A171157.P5541699083685598879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) / (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ))).toNat

end

end A171157.P5541699083685598879

namespace A171157

/-- `A001221(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))` -/
def P5541699083685598879.Spec : Prop :=
  ∀ n, P5541699083685598879.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P17117145357944591248

`A005087(A038502(n+1))`
-/

namespace A171157.P17117145357944591248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A038502 (n + 1)).toNat

end

end A171157.P17117145357944591248

namespace A171157

/-- `A005087(A038502(n+1))` -/
def P17117145357944591248.Spec : Prop :=
  ∀ n, P17117145357944591248.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P13966276259082704492

`A001221(A065330(n+1))`
-/

namespace A171157.P13966276259082704492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065330 (n + 1)).toNat

end

end A171157.P13966276259082704492

namespace A171157

/-- `A001221(A065330(n+1))` -/
def P13966276259082704492.Spec : Prop :=
  ∀ n, P13966276259082704492.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P5060605169467302595

`A005087(A064989(n+1))`
-/

namespace A171157.P5060605169467302595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A064989 (n + 1)).toNat

end

end A171157.P5060605169467302595

namespace A171157

/-- `A005087(A064989(n+1))` -/
def P5060605169467302595.Spec : Prop :=
  ∀ n, P5060605169467302595.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P8980068541360405709

`A005087(A079707(n+1))`
-/

namespace A171157.P8980068541360405709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A079707 (n + 1)).toNat

end

end A171157.P8980068541360405709

namespace A171157

/-- `A005087(A079707(n+1))` -/
def P8980068541360405709.Spec : Prop :=
  ∀ n, P8980068541360405709.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P3656364411549577897

`A106799(A007947(n+1))`
-/

namespace A171157.P3656364411549577897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A007947 (n + 1)).toNat

end

end A171157.P3656364411549577897

namespace A171157

/-- `A106799(A007947(n+1))` -/
def P3656364411549577897.Spec : Prop :=
  ∀ n, P3656364411549577897.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P4603355708926699431

`A106799(A015052(n+1))`
-/

namespace A171157.P4603355708926699431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A015052 (n + 1)).toNat

end

end A171157.P4603355708926699431

namespace A171157

/-- `A106799(A015052(n+1))` -/
def P4603355708926699431.Spec : Prop :=
  ∀ n, P4603355708926699431.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P15813766217071237334

`A106799(A015053(n+1))`
-/

namespace A171157.P15813766217071237334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A015053 (n + 1)).toNat

end

end A171157.P15813766217071237334

namespace A171157

/-- `A106799(A015053(n+1))` -/
def P15813766217071237334.Spec : Prop :=
  ∀ n, P15813766217071237334.a n = A171157 (n + 1)

end A171157

/-! ## A171157.P15720407274056315462

`A005087(A216913(n+1))`
-/

namespace A171157.P15720407274056315462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A216913 (n + 1)).toNat

end

end A171157.P15720407274056315462

namespace A171157

/-- `A005087(A216913(n+1))` -/
def P15720407274056315462.Spec : Prop :=
  ∀ n, P15720407274056315462.a n = A171157 (n + 1)

end A171157

/-!
# A171158: The number of walks from (0,0,0) to (n,n,n) with steps that increment one to three coordinates and having the property that no two consecutive steps are orthogonal.

The programs for A171158, there is no canonical definition to state claims against.
-/

/-! ## A171158.P18272528460597307651

`A003277(A000041(n)*A167019(n))`
-/

namespace A171158.P18272528460597307651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (A000041 n * A167019 n).toNat

end

end A171158.P18272528460597307651

/-!
# A171159: Ordered Fibonomial coefficients (A144712) which are not Fibonacci numbers (A000045).

The programs for A171159, there is no canonical definition to state claims against.
-/

/-! ## A171159.P9096978835717950436

`∩[A001690(n+1), A144712(n+1)]`
-/

namespace A171159.P9096978835717950436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171159.P9096978835717950436

/-! ## A171159.P3326929396299484343

`∩[A144712(n+1), A333357(n+1)]`
-/

namespace A171159.P3326929396299484343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171159.P3326929396299484343

/-!
# A171160: a(n) = a(n-1) + 2*a(n-2) with a(0)=3, a(1)=4.

The programs for A171160, the canonical program `A171160.P2094887429925065516` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171160 has offset 0).

The definition of A171160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A171160.P2094887429925065516`, by `A171160.P2094887429925065516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171160.P2094887429925065516

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171160

/-- `a(n-1)+2*a(n-2)` -/
def P2094887429925065516.Spec : Prop :=
  ∀ n, (P2094887429925065516.a n : ℤ) = A171160 n

theorem P2094887429925065516.correct : P2094887429925065516.Spec := by
  intro n
  simp only [A171160]

end A171160

/-! ## A171160.P14498651871414613407

`2^(n+1)+A078008(n)`
-/

namespace A171160.P14498651871414613407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A078008 n

end

end A171160.P14498651871414613407

namespace A171160

/-- `2^(n+1)+A078008(n)` -/
def P14498651871414613407.Spec : Prop :=
  ∀ n, P14498651871414613407.a n = A171160 n

end A171160

/-! ## A171160.P6407396733372644449

`A092297(n+1)+A154879(n)`
-/

namespace A171160.P6407396733372644449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092297 (n + 1) + A154879 n

end

end A171160.P6407396733372644449

namespace A171160

/-- `A092297(n+1)+A154879(n)` -/
def P6407396733372644449.Spec : Prop :=
  ∀ n, P6407396733372644449.a n = A171160 n

end A171160

/-! ## A171160.P331373647590351249

`A001045(n+3)-A001045(n)`
-/

namespace A171160.P331373647590351249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) - A001045 n

end

end A171160.P331373647590351249

namespace A171160

/-- `A001045(n+3)-A001045(n)` -/
def P331373647590351249.Spec : Prop :=
  ∀ n, P331373647590351249.a n = A171160 n

end A171160

/-! ## A171160.P3482821036540372106

`1/3*(2*(-1)^n+7*2^n)`
-/

namespace A171160.P3482821036540372106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (2 * (-1) ^ n + (7 * 2 ^ n : ℤ) : ℚ)

end

end A171160.P3482821036540372106

namespace A171160

/-- `1/3*(2*(-1)^n+7*2^n)` -/
def P3482821036540372106.Spec : Prop :=
  ∀ n, P3482821036540372106.a n = (A171160 n : ℚ)

theorem P3482821036540372106.correct : P3482821036540372106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171160, Nat.add_sub_cancel, A171160.P3482821036540372106.a, A171160.P2094887429925065516.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171160, Nat.add_sub_cancel, A171160.P3482821036540372106.a, A171160.P2094887429925065516.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171160

/-! ## A171160.P5239965359365704128

`ogf((3+x)/(1-x-2x^2))`
-/

namespace A171160.P5239965359365704128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -1, -2] n

end

end A171160.P5239965359365704128

namespace A171160

/-- `ogf((3+x)/(1-x-2x^2))` -/
def P5239965359365704128.Spec : Prop :=
  ∀ n, P5239965359365704128.a n = A171160 n

end A171160

/-! ## A171160.P9675216169278028844

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A171160.P9675216169278028844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A171160.P9675216169278028844

namespace A171160

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P9675216169278028844.Spec : Prop :=
  ∀ n, (P9675216169278028844.a n : ℤ) = A171160 n

theorem P9675216169278028844.correct : P9675216169278028844.Spec := by
  intro n
  simp only [A171160, Nat.add_sub_cancel, A171160.P9675216169278028844.a, A171160.P2094887429925065516.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171160

/-! ## A171160.P5948430475470570957

`2-(2*(1-a(n-2))-a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A171160.P5948430475470570957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  2 - (2 * (1 - a (n - 2)) - a (n - 1))

end

end A171160.P5948430475470570957

namespace A171160

/-- `2-(2*(1-a(n-2))-a(n-1))` -/
def P5948430475470570957.Spec : Prop :=
  ∀ n, P5948430475470570957.a n = A171160 n

end A171160

/-! ## A171160.P12697635675474345156

`a(n-1)-a(n-2)/(1/2-1)` with `a(0)=3, a(1)=4`
-/

namespace A171160.P12697635675474345156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A171160.P12697635675474345156

namespace A171160

/-- `a(n-1)-a(n-2)/(1/2-1)` -/
def P12697635675474345156.Spec : Prop :=
  ∀ n, P12697635675474345156.a n = (A171160 n : ℚ)

end A171160

/-! ## A171160.P5593742726023751690

`a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A171160.P5593742726023751690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A171160.P5593742726023751690

namespace A171160

/-- `a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P5593742726023751690.Spec : Prop :=
  ∀ n, P5593742726023751690.a n = A171160 n

end A171160

/-! ## A171160.P788345834078588811

`A014113(n+1)+2^n`
-/

namespace A171160.P788345834078588811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 1) + (2 ^ n : ℤ)

end

end A171160.P788345834078588811

namespace A171160

/-- `A014113(n+1)+2^n` -/
def P788345834078588811.Spec : Prop :=
  ∀ n, P788345834078588811.a n = A171160 n

end A171160

/-! ## A171160.P16841074687913766584

`A135092(n)-a(n-1)` with `a(0)=3`
-/

namespace A171160.P16841074687913766584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A135092 n - a (n - 1)

end

end A171160.P16841074687913766584

namespace A171160

/-- `A135092(n)-a(n-1)` -/
def P16841074687913766584.Spec : Prop :=
  ∀ n, P16841074687913766584.a n = A171160 n

end A171160

/-! ## A171160.P17829060092150870588

`A062092(n)+A033999(n)`
-/

namespace A171160.P17829060092150870588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n + A033999 n

end

end A171160.P17829060092150870588

namespace A171160

/-- `A062092(n)+A033999(n)` -/
def P17829060092150870588.Spec : Prop :=
  ∀ n, P17829060092150870588.a n = A171160 n

end A171160

/-! ## A171160.P18140207070765754160

`A097074(n)+A000051(n)`
-/

namespace A171160.P18140207070765754160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 n + A000051 n

end

end A171160.P18140207070765754160

namespace A171160

/-- `A097074(n)+A000051(n)` -/
def P18140207070765754160.Spec : Prop :=
  ∀ n, P18140207070765754160.a n = A171160 n

end A171160

/-! ## A171160.P7613065803105785421

`A052997(n)+A052950(n)`
-/

namespace A171160.P7613065803105785421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 n + A052950 n

end

end A171160.P7613065803105785421

namespace A171160

/-- `A052997(n)+A052950(n)` -/
def P7613065803105785421.Spec : Prop :=
  ∀ n, P7613065803105785421.a n = A171160 n

end A171160

/-! ## A171160.P581248809878801347

`A084214(n)+A042950(n)`
-/

namespace A171160.P581248809878801347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n + A042950 n

end

end A171160.P581248809878801347

namespace A171160

/-- `A084214(n)+A042950(n)` -/
def P581248809878801347.Spec : Prop :=
  ∀ n, P581248809878801347.a n = A171160 n

end A171160

/-! ## A171160.P5987087902300481441

`A084170(n)+A052953(n)`
-/

namespace A171160.P5987087902300481441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n + A052953 n

end

end A171160.P5987087902300481441

namespace A171160

/-- `A084170(n)+A052953(n)` -/
def P5987087902300481441.Spec : Prop :=
  ∀ n, P5987087902300481441.a n = A171160 n

end A171160

/-! ## A171160.P8677513624999057549

`A167030(n)+A087288(n)`
-/

namespace A171160.P8677513624999057549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A087288 n

end

end A171160.P8677513624999057549

namespace A171160

/-- `A167030(n)+A087288(n)` -/
def P8677513624999057549.Spec : Prop :=
  ∀ n, P8677513624999057549.a n = A171160 n

end A171160

/-! ## A171160.P6067607783048718805

`A171231(n)+A097072(n)`
-/

namespace A171160.P6067607783048718805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n + A097072 n

end

end A171160.P6067607783048718805

namespace A171160

/-- `A171231(n)+A097072(n)` -/
def P6067607783048718805.Spec : Prop :=
  ∀ n, P6067607783048718805.a n = A171160 n

end A171160

/-! ## A171160.P7065326895501503738

`A290604(n)+A000034(n)`
-/

namespace A171160.P7065326895501503738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290604 n + A000034 n

end

end A171160.P7065326895501503738

namespace A171160

/-- `A290604(n)+A000034(n)` -/
def P7065326895501503738.Spec : Prop :=
  ∀ n, P7065326895501503738.a n = A171160 n

end A171160

/-!
# A171163: Number of children at height n in a doubly logarithmic tree. Leaves are at height 0.

The programs for A171163, there is no canonical definition to state claims against.
-/

/-! ## A171163.P3137628996472186257

`a(n-1)²` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171163.P3137628996472186257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) ^ 2

end

end A171163.P3137628996472186257

/-! ## A171163.P5297208434228571351

`a(n-1)^2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171163.P5297208434228571351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) ^ 2

end

end A171163.P5297208434228571351

/-! ## A171163.P1819216656049050901

`root(a(n-1), 1/2)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171163.P1819216656049050901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A171163.P1819216656049050901

/-! ## A171163.P4600023359348284673

`a(n-1)*a(n-1)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171163.P4600023359348284673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) * a (n - 1)

end

end A171163.P4600023359348284673

/-! ## A171163.P10514075807779657282

`a(n-1)/((1-a(n-1))/a(n-1)+1)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171163.P10514075807779657282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) / ((1 - a (n - 1)) / a (n - 1) + 1)

end

end A171163.P10514075807779657282

/-!
# A171164: A polyspiral path: a(n) represents the n-th vertex of a lattice path with an infinite number of finite square spirals.

The programs for A171164, there is no canonical definition to state claims against.
-/

/-! ## A171164.P2000341821145788131

`floor(A171165(n)-atan(n))`
-/

namespace A171164.P2000341821145788131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171165 n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A171164.P2000341821145788131

/-! ## A171164.P2569969760032914617

`A171165(n)-A130130(n)`
-/

namespace A171164.P2569969760032914617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 n - A130130 n

end

end A171164.P2569969760032914617

/-! ## A171164.P5706127252915460931

`∑[A171172(A065033(n))]-1`
-/

namespace A171164.P5706127252915460931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A171164.P5706127252915460931

/-! ## A171164.P12511033823520632650

`A171165(n)-A046698(n²)`
-/

namespace A171164.P12511033823520632650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 n - A046698 (n ^ 2)

end

end A171164.P12511033823520632650

/-! ## A171164.P4684463022237273298

`A171165(n)-A072491(2*n)`
-/

namespace A171164.P4684463022237273298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 n - A072491 (2 * n)

end

end A171164.P4684463022237273298

/-! ## A171164.P11864939133860297178

`A289207(A171165(n)-n)+n`
-/

namespace A171164.P11864939133860297178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A171165 n - (n : ℤ)).toNat + (n : ℤ)

end

end A171164.P11864939133860297178

/-! ## A171164.P15217933242615863347

`A171165(n)-(n-A289207(n))`
-/

namespace A171164.P15217933242615863347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 n - ((n : ℤ) - A289207 n)

end

end A171164.P15217933242615863347

/-! ## A171164.P17947338757255915106

`A171165(n)-A005811(A053644(n))`
-/

namespace A171164.P17947338757255915106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 n - A005811 (A053644 n).toNat

end

end A171164.P17947338757255915106

/-!
# A171165: A polyspiral path: a(n) represents the n-th vertex of a lattice path with an infinite number of finite square spirals.

The programs for A171165, there is no canonical definition to state claims against.
-/

/-! ## A171165.P5361936955154932116

`ceil(A171164(n)+atan(n))`
-/

namespace A171165.P5361936955154932116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171164 n : ℝ) + Real.arctan (n : ℝ)⌉

end

end A171165.P5361936955154932116

/-! ## A171165.P11713663852407901815

`A171164(n)+A130130(n)`
-/

namespace A171165.P11713663852407901815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 n + A130130 n

end

end A171165.P11713663852407901815

/-! ## A171165.P13577542339560213013

`∑[A171173(A065033(n))]-2`
-/

namespace A171165.P13577542339560213013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A171165.P13577542339560213013

/-! ## A171165.P5997984490414367625

`A171164(n)+A046698(n²)`
-/

namespace A171165.P5997984490414367625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 n + A046698 (n ^ 2)

end

end A171165.P5997984490414367625

/-! ## A171165.P7030378722586224811

`A171164(n)+A072491(2*n)`
-/

namespace A171165.P7030378722586224811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 n + A072491 (2 * n)

end

end A171165.P7030378722586224811

/-! ## A171165.P11787337738590166771

`round(A171164(n)+atan(A281381(n)))`
-/

namespace A171165.P11787337738590166771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171164 n : ℝ) + Real.arctan (A281381 n : ℝ))

end

end A171165.P11787337738590166771

/-! ## A171165.P16362151230150920027

`A171164(n)+(6%A189934(n+1))%4`
-/

namespace A171165.P16362151230150920027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 n + Int.tmod (Int.tmod 6 (A189934 (n + 1))) 4

end

end A171165.P16362151230150920027

/-! ## A171165.P14187627612195390751

`A171164(n)+A005811(A053644(n))`
-/

namespace A171165.P14187627612195390751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 n + A005811 (A053644 n).toNat

end

end A171165.P14187627612195390751

/-! ## A171165.P4710199109335175957

`∑[A171173(A065033(n))%A160533(n)]`
-/

namespace A171165.P4710199109335175957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171173 (A065033 n).toNat) (A160533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171165.P4710199109335175957

/-!
# A171166: A polyspiral path: a(n) represents the n-th vertex of a lattice path with an infinite number of finite square spirals.

The programs for A171166, there is no canonical definition to state claims against.
-/

/-! ## A171166.P975745736264326233

`∑[A171176(A065033(n))]-2`
-/

namespace A171166.P975745736264326233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A171166.P975745736264326233

/-! ## A171166.P3690429283097151015

`∑[A057427(n)*A171176(A065033(n))]`
-/

namespace A171166.P3690429283097151015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A171176 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P3690429283097151015

/-! ## A171166.P10042176237328489683

`∑[A171176(A065033(n))*A178334(n)]`
-/

namespace A171166.P10042176237328489683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (A065033 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P10042176237328489683

/-! ## A171166.P10760893314392729962

`∑[A171176(A065033(n))*A178489(n)]`
-/

namespace A171166.P10760893314392729962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (A065033 n).toNat * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P10760893314392729962

/-! ## A171166.P7806180901144778386

`∑[A171176(A065033(n))%A000152(n)]`
-/

namespace A171166.P7806180901144778386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171176 (A065033 n).toNat) (A000152 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P7806180901144778386

/-! ## A171166.P10345319035962688459

`∑[A011620(n²)*A171176(A065033(n))]`
-/

namespace A171166.P10345319035962688459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (n ^ 2) * A171176 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P10345319035962688459

/-! ## A171166.P6192982963120863278

`∑[A000040(n+1)%2*A171176(A065033(n))]`
-/

namespace A171166.P6192982963120863278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A171176 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171166.P6192982963120863278

/-!
# A171167: Primes in lunar arithmetic in base 8 written in base 10.

The programs for A171167, there is no canonical definition to state claims against.
-/

/-! ## A171167.P4428293548643018979

`A028903(A171168(n+1))`
-/

namespace A171167.P4428293548643018979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A171168 (n + 1)).toNat

end

end A171167.P4428293548643018979

/-! ## A171167.P14524362765856268400

`A097448(A337239(n+2))`
-/

namespace A171167.P14524362765856268400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A337239 (n + 2)).toNat

end

end A171167.P14524362765856268400

/-! ## A171167.P2351680083182259293

`lt[1, A102679(A265555(n))]`
-/

namespace A171167.P2351680083182259293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A265555 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171167.P2351680083182259293

/-! ## A171167.P13023292673686751737

`lt[5, A000120(A265554(n))]`
-/

namespace A171167.P13023292673686751737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A265554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171167.P13023292673686751737

/-! ## A171167.P16204296315459827970

`A337239(A187829(n+1)+1)`
-/

namespace A171167.P16204296315459827970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (A187829 (n + 1) + 1).toNat

end

end A171167.P16204296315459827970

/-!
# A171168: Primes in lunar arithmetic in base 8 written in base 8.

The programs for A171168, there is no canonical definition to state claims against.
-/

/-! ## A171168.P6428086024728032299

`A007094(A171167(n+1))`
-/

namespace A171168.P6428086024728032299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A171167 (n + 1)).toNat

end

end A171168.P6428086024728032299

/-! ## A171168.P11405212133262508942

`∩[A171786(n+1), A283610(n+1)]`
-/

namespace A171168.P11405212133262508942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171168.P11405212133262508942

/-! ## A171168.P11864772417369048708

`∩[eq[3, A161813(n+1)]+1, A283610(n+1)]`
-/

namespace A171168.P11864772417369048708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161813 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A171168.P11864772417369048708

/-! ## A171168.P7811514908759967050

`A171786(A187829(n+1)+1)`
-/

namespace A171168.P7811514908759967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171786 (A187829 (n + 1) + 1).toNat

end

end A171168.P7811514908759967050

/-! ## A171168.P6295620812319255060

`A283610(A187829(n+1)+1)`
-/

namespace A171168.P6295620812319255060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (A187829 (n + 1) + 1).toNat

end

end A171168.P6295620812319255060

/-!
# A171169: Primes in lunar arithmetic in base 9 written in base 10.

The programs for A171169, there is no canonical definition to state claims against.
-/

/-! ## A171169.P6415740414825626290

`A028904(A171221(n+1))`
-/

namespace A171169.P6415740414825626290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A171221 (n + 1)).toNat

end

end A171169.P6415740414825626290

/-! ## A171169.P8608272992646389346

`A338090(A001222(2^n)+2)`
-/

namespace A171169.P8608272992646389346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (A001222 (2 ^ n) + 2).toNat

end

end A171169.P8608272992646389346

/-! ## A171169.P16838260976012894922

`A338090((n+2)^A278657(n))`
-/

namespace A171169.P16838260976012894922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A171169.P16838260976012894922

/-! ## A171169.P17676784231281051001

`A338090(ceil(log2(A117075(n+1))))`
-/

namespace A171169.P17676784231281051001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 ⌈Real.logb 2 (A117075 (n + 1) : ℝ)⌉.toNat

end

end A171169.P17676784231281051001

/-! ## A171169.P15791999514664799026

`A338090(n+2)%A002328(A034281(n+1))`
-/

namespace A171169.P15791999514664799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338090 (n + 2)) (A002328 (A034281 (n + 1)).toNat)

end

end A171169.P15791999514664799026

/-!
# A171171: Corner sequence (starting each round with the corner (SE): 1,2,3).

The programs for A171171, there is no canonical definition to state claims against.
-/

/-! ## A171171.P4162116106521922194

`A010702(n)-A010873(A210984(3*n+1))`
-/

namespace A171171.P4162116106521922194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n - A010873 (A210984 (3 * n + 1)).toNat

end

end A171171.P4162116106521922194

/-! ## A171171.P7079846942088728617

`A003324(or(A008611(n), A288497(n)))`
-/

namespace A171171.P7079846942088728617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (Int.lor (A008611 n) (A288497 n)).toNat

end

end A171171.P7079846942088728617

/-!
# A171172: Triangle read by rows in which row n lists 3n-2 together with the first 2n-1 positive integers.

The programs for A171172, there is no canonical definition to state claims against.
-/

/-! ## A171172.P4656069762825214372

`A171173(ceil(acot(n)+n))`
-/

namespace A171172.P4656069762825214372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A171172.P4656069762825214372

/-! ## A171172.P13921824302014988895

`A171173(round(acot(atan(n))+n))`
-/

namespace A171172.P13921824302014988895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (Real.arctan (n : ℝ)) + (n : ℝ))).toNat

end

end A171172.P13921824302014988895

/-! ## A171172.P17525183970934228345

`A171173(floor(acot(n)+n)+1)`
-/

namespace A171172.P17525183970934228345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A171172.P17525183970934228345

/-! ## A171172.P3138882699666617499

`A171173(round(sqrt(n²+1))+1)`
-/

namespace A171172.P3138882699666617499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A171172.P3138882699666617499

/-! ## A171172.P12855976729862252023

`A171173(n+1)^ceil(abs(sin(n)))`
-/

namespace A171172.P12855976729862252023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A171172.P12855976729862252023

/-! ## A171172.P12399531426066303856

`A171173(n+1)-A000007(n)`
-/

namespace A171172.P12399531426066303856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (n + 1) - A000007 n

end

end A171172.P12399531426066303856

/-! ## A171172.P17844830587281794910

`A171173(n+1)/A054977(n)`
-/

namespace A171172.P17844830587281794910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A171172.P17844830587281794910

/-! ## A171172.P11694384566052659046

`gcd(A171173(n+1), A308531(n+1))`
-/

namespace A171172.P11694384566052659046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171173 (n + 1)) (A308531 (n + 1))

end

end A171172.P11694384566052659046

/-! ## A171172.P1366006325135508509

`A171173(n+1)^(A000040(n+1)%2)`
-/

namespace A171172.P1366006325135508509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A171172.P1366006325135508509

/-! ## A171172.P1551400712613167805

`a(A008683(n)²)*A171173(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A171172.P1551400712613167805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat * A171173 (n + 1)

end

end A171172.P1551400712613167805

/-!
# A171173: Triangle read by rows in which row n lists A033627(n) together with the first 2n-1 positive integers.

The programs for A171173, there is no canonical definition to state claims against.
-/

/-! ## A171173.P458638083816723720

`A171172(abs(2-n)+3)`
-/

namespace A171173.P458638083816723720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (|2 - (n : ℤ)| + 3).toNat

end

end A171173.P458638083816723720

/-! ## A171173.P528348090606519638

`floor(A171172(n+1)+acot(n))`
-/

namespace A171173.P528348090606519638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171172 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A171173.P528348090606519638

/-! ## A171173.P13294297101412338580

`A171172(n+1)+A000007(n)`
-/

namespace A171173.P13294297101412338580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1) + A000007 n

end

end A171173.P13294297101412338580

/-! ## A171173.P17350088547456001680

`A054977(n)*A171172(n+1)`
-/

namespace A171173.P17350088547456001680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A171172 (n + 1)

end

end A171173.P17350088547456001680

/-! ## A171173.P3677996938342386197

`A000038(n)!*A171172(n+1)`
-/

namespace A171173.P3677996938342386197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A171172 (n + 1)

end

end A171173.P3677996938342386197

/-! ## A171173.P10291081221681686902

`A014963(4*n+2)*A171172(n+1)`
-/

namespace A171173.P10291081221681686902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A171172 (n + 1)

end

end A171173.P10291081221681686902

/-! ## A171173.P16603306644526640081

`A171172(n+1)+and(1, A000010(n+2))`
-/

namespace A171173.P16603306644526640081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1) + Int.land 1 (A000010 (n + 2))

end

end A171173.P16603306644526640081

/-! ## A171173.P13865914622364469141

`A171172(n+1)+A000045(C(2, n+2))`
-/

namespace A171173.P13865914622364469141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1) + A000045 (Nat.choose 2 (n + 2))

end

end A171173.P13865914622364469141

/-! ## A171173.P7437579206588477651

`A171172(n+1)-A008683(2*(n+1)²)`
-/

namespace A171173.P7437579206588477651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1) - A008683 (2 * (n + 1) ^ 2)

end

end A171173.P7437579206588477651

/-! ## A171173.P17888220554908317797

`A171172(n+1)+eq[1, A001222(n+1)]%2`
-/

namespace A171173.P17888220554908317797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1) + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ)

end

end A171173.P17888220554908317797

/-!
# A171174: Triangle read by rows in which row n lists A033627(n) together with the first 2n-1 numbers <> 0 of A038608.

The programs for A171174, there is no canonical definition to state claims against.
-/

/-! ## A171174.P10477035460270659679

`(-1)^n*A171173(n+1)`
-/

namespace A171174.P10477035460270659679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A171173 (n + 1)

end

end A171174.P10477035460270659679

/-! ## A171174.P10061290984071805298

`(-1)^n*A171172(abs(2-n)+3)`
-/

namespace A171174.P10061290984071805298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A171172 (|2 - (n : ℤ)| + 3).toNat

end

end A171174.P10061290984071805298

/-! ## A171174.P11802457879324537997

`(-1)^n*floor(A171172(n+1)+acot(n))`
-/

namespace A171174.P11802457879324537997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊(A171172 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A171174.P11802457879324537997

/-! ## A171174.P14577299204557559154

`A171173(n+1)/A033999(n)`
-/

namespace A171174.P14577299204557559154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A171174.P14577299204557559154

/-! ## A171174.P11860519727940131242

`xor(-A010673(n), A171173(n+1))`
-/

namespace A171174.P11860519727940131242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A010673 n) (A171173 (n + 1))

end

end A171174.P11860519727940131242

/-! ## A171174.P9194646835819056645

`A171173(n+1)/∑[A280560(n)]`
-/

namespace A171174.P9194646835819056645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A171174.P9194646835819056645

/-! ## A171174.P217413015878589902

`(A171172(n+1)+eq[1, A001222(n+1)]%2)*(-1)^n`
-/

namespace A171174.P217413015878589902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171172 (n + 1) + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ)) * (-1) ^ n

end

end A171174.P217413015878589902

/-! ## A171174.P15480381789404034145

`A171173(n+1)*A171176(n+1)/A171177(n+1)`
-/

namespace A171174.P15480381789404034145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) * A171176 (n + 1) : ℚ) / (A171177 (n + 1) : ℚ)

end

end A171174.P15480381789404034145

/-! ## A171174.P2158867036470503825

`Δ[A171175(n)]`
-/

namespace A171174.P2158867036470503825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171174.P2158867036470503825

/-! ## A171174.P16585633332098056478

`A171175(n+1)-A171175(n)`
-/

namespace A171174.P16585633332098056478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 (n + 1) - A171175 n

end

end A171174.P16585633332098056478

/-!
# A171175: Permutation of the natural numbers: 0 together with the partial sums of A171174.

The programs for A171175, there is no canonical definition to state claims against.
-/

/-! ## A171175.P6650689657628755309

`A171174(n)+a(n-1)` with `a(0)=0`
-/

namespace A171175.P6650689657628755309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171174 n + a (n - 1)

end

end A171175.P6650689657628755309

/-! ## A171175.P1905682636942605292

`∑[A171174(abs(1-n)+1)]+1`
-/

namespace A171175.P1905682636942605292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171174 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171175.P1905682636942605292

/-! ## A171175.P3467818372048274281

`abs(2-∑[A171174(A028310(n))])`
-/

namespace A171175.P3467818372048274281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171174 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A171175.P3467818372048274281

/-! ## A171175.P16006072820031308275

`A171174(n)-A001489(a(n-1))` with `a(0)=0`
-/

namespace A171175.P16006072820031308275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171174 n - A001489 (a (n - 1)).toNat

end

end A171175.P16006072820031308275

/-! ## A171175.P13200401141722119628

`abs(∑[A171174(A171173((n+1)²))]+1)`
-/

namespace A171175.P13200401141722119628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171174 (A171173 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A171175.P13200401141722119628

/-! ## A171175.P11848474126312204508

`∑[(-1)^n*A171173(n+1)]-(-1)^n*A171173(n+1)`
-/

namespace A171175.P11848474126312204508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A171173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n * A171173 (n + 1)

end

end A171175.P11848474126312204508

/-! ## A171175.P8883153847557954319

`∑[A057427(n)*A171174(A028310(n))]`
-/

namespace A171175.P8883153847557954319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A171174 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171175.P8883153847557954319

/-! ## A171175.P5320797709188747938

`∑[A171174(A028310(n))*A178334(n)]`
-/

namespace A171175.P5320797709188747938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171174 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171175.P5320797709188747938

/-! ## A171175.P9481885022452340802

`∑[A171174(A028310(n))%A000118(n)]`
-/

namespace A171175.P9481885022452340802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171174 (A028310 n).toNat) (A000118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171175.P9481885022452340802

/-! ## A171175.P4561381021132988549

`∑[A171174(A028310(n))*A211666(n+1)]`
-/

namespace A171175.P4561381021132988549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171174 (A028310 n).toNat * A211666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171175.P4561381021132988549

/-!
# A171176: Triangle read by rows in which row n lists 3n-1 together with the first 2n-1 positive integers, in reverse order.

The programs for A171176, the canonical program `A171176.P17322365115208506390` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171176 has offset 1).

The definition of A171176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171176.P6439127516752428453

`A037213(A028391(n))+(n-comp[n²])²-comp[n²]`
-/

namespace A171176.P6439127516752428453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A028391 n).toNat + (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ))

end

end A171176.P6439127516752428453

namespace A171176

/-- `A037213(A028391(n))+(n-comp[n²])²-comp[n²]` -/
def P6439127516752428453.Spec : Prop :=
  ∀ n, P6439127516752428453.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P3811976976138183674

`A253515(n+1)+A037213(A028391(n))`
-/

namespace A171176.P3811976976138183674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (n + 1) + A037213 (A028391 n).toNat

end

end A171176.P3811976976138183674

namespace A171176

/-- `A253515(n+1)+A037213(A028391(n))` -/
def P3811976976138183674.Spec : Prop :=
  ∀ n, P3811976976138183674.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P15385916143439855287

`A068527(comp[n²])+A037213(A028391(n))`
-/

namespace A171176.P15385916143439855287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A037213 (A028391 n).toNat

end

end A171176.P15385916143439855287

namespace A171176

/-- `A068527(comp[n²])+A037213(A028391(n))` -/
def P15385916143439855287.Spec : Prop :=
  ∀ n, P15385916143439855287.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P17322365115208506390

`A253515(n+1)+A053186(n*A005369(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171176

/-- `A253515(n+1)+A053186(n*A005369(n))` -/
def P17322365115208506390.Spec : Prop :=
  ∀ n, P17322365115208506390.a n = A171176 (n + 1)

theorem P17322365115208506390.correct : P17322365115208506390.Spec := by
  intro n
  simp only [A171176, Nat.add_sub_cancel]

end A171176

/-! ## A171176.P5870667501013463651

`abs(A171177(n+1))`
-/

namespace A171176.P5870667501013463651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171177 (n + 1)|

end

end A171176.P5870667501013463651

namespace A171176

/-- `abs(A171177(n+1))` -/
def P5870667501013463651.Spec : Prop :=
  ∀ n, P5870667501013463651.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P15172734680948412512

`A000196(A171177(n+1)²)`
-/

namespace A171176.P15172734680948412512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A171177 (n + 1) ^ 2).toNat

end

end A171176.P15172734680948412512

namespace A171176

/-- `A000196(A171177(n+1)²)` -/
def P15172734680948412512.Spec : Prop :=
  ∀ n, P15172734680948412512.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P11090983157274690706

`A033999(n)*A171177(n+1)`
-/

namespace A171176.P11090983157274690706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A171177 (n + 1)

end

end A171176.P11090983157274690706

namespace A171176

/-- `A033999(n)*A171177(n+1)` -/
def P11090983157274690706.Spec : Prop :=
  ∀ n, P11090983157274690706.a n = A171176 (n + 1)

end A171176

/-! ## A171176.P2877727095767513576

`gcd(A000038(n), A171177(n+1))`
-/

namespace A171176.P2877727095767513576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A171177 (n + 1))

end

end A171176.P2877727095767513576

namespace A171176

/-- `gcd(A000038(n), A171177(n+1))` -/
def P2877727095767513576.Spec : Prop :=
  ∀ n, (P2877727095767513576.a n : ℤ) = A171176 (n + 1)

end A171176

/-! ## A171176.P9343307168691711242

`lcm(A020985(n), A171177(n+1))`
-/

namespace A171176.P9343307168691711242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A171177 (n + 1))

end

end A171176.P9343307168691711242

namespace A171176

/-- `lcm(A020985(n), A171177(n+1))` -/
def P9343307168691711242.Spec : Prop :=
  ∀ n, (P9343307168691711242.a n : ℤ) = A171176 (n + 1)

end A171176

/-! ## A171176.P11629891259826028332

`∑{d}[A171177(n+1), A000010(#)]`
-/

namespace A171176.P11629891259826028332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A171176.P11629891259826028332

namespace A171176

/-- `∑{d}[A171177(n+1), A000010(#)]` -/
def P11629891259826028332.Spec : Prop :=
  ∀ n, P11629891259826028332.a n = A171176 (n + 1)

end A171176

/-!
# A171177: Triangle read by rows in which row n lists 3n-1 together with the first 2n-1 numbers <> 0 of A038608, in reverse order.

The programs for A171177, there is no canonical definition to state claims against.
-/

/-! ## A171177.P2430390871250362330

`(-1)^n*A171176(n+1)`
-/

namespace A171177.P2430390871250362330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A171176 (n + 1)

end

end A171177.P2430390871250362330

/-! ## A171177.P13290221332473718061

`A171176(n+1)/A033999(n)`
-/

namespace A171177.P13290221332473718061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171176 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A171177.P13290221332473718061

/-! ## A171177.P10331767397110005533

`xor(-A010673(n), A171176(n+1))`
-/

namespace A171177.P10331767397110005533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A010673 n) (A171176 (n + 1))

end

end A171177.P10331767397110005533

/-! ## A171177.P17505933236733713403

`A171176(n+1)/∑[A280560(n)]`
-/

namespace A171177.P17505933236733713403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171176 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A171177.P17505933236733713403

/-! ## A171177.P12050970161098343517

`A171176(n+1)/(A004442(n)-n)`
-/

namespace A171177.P12050970161098343517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171176 (n + 1) : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A171177.P12050970161098343517

/-! ## A171177.P4633789700750984594

`A171176(n+1)/(A181983(n+1)-A038608(n))`
-/

namespace A171177.P4633789700750984594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171176 (n + 1) : ℚ) / (A181983 (n + 1) - A038608 n : ℚ)

end

end A171177.P4633789700750984594

/-! ## A171177.P17850616348737955989

`A171173(n+1)*A171176(n+1)/A171174(n+1)`
-/

namespace A171177.P17850616348737955989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171173 (n + 1) * A171176 (n + 1) : ℚ) / (A171174 (n + 1) : ℚ)

end

end A171177.P17850616348737955989

/-! ## A171177.P4194788290887571876

`A171176(n+1)/A065164(n+2)*A227832(n+2)`
-/

namespace A171177.P4194788290887571876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171176 (n + 1) : ℚ) / (A065164 (n + 2) : ℚ) * (A227832 (n + 2) : ℚ)

end

end A171177.P4194788290887571876

/-! ## A171177.P3949590888213682138

`Δ[A171178(n)]`
-/

namespace A171177.P3949590888213682138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171177.P3949590888213682138

/-! ## A171177.P1812037092885795188

`A171178(n+1)-A171178(n)`
-/

namespace A171177.P1812037092885795188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171178 (n + 1) - A171178 n

end

end A171177.P1812037092885795188

/-!
# A171178: Permutation of the natural numbers: 0 together with the partial sums of A171177.

The programs for A171178, there is no canonical definition to state claims against.
-/

/-! ## A171178.P7540758316713650183

`A171177(n)+a(n-1)` with `a(0)=0`
-/

namespace A171178.P7540758316713650183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171177 n + a (n - 1)

end

end A171178.P7540758316713650183

/-! ## A171178.P1250477886620489772

`∑[A171177(abs(1-n)+1)]+1`
-/

namespace A171178.P1250477886620489772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171177 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171178.P1250477886620489772

/-! ## A171178.P1649052094326952970

`∑[(-1)^n*A171176(n+1)]-A171177(n+1)`
-/

namespace A171178.P1649052094326952970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A171176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171177 (n + 1)

end

end A171178.P1649052094326952970

/-! ## A171178.P8699533977686293358

`A289207(∑[A171177(A028310(n))])`
-/

namespace A171178.P8699533977686293358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171177 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171178.P8699533977686293358

/-! ## A171178.P9072737186741717728

`∑[A057427(n)*A171177(A028310(n))]`
-/

namespace A171178.P9072737186741717728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A171177 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171178.P9072737186741717728

/-! ## A171178.P8073735770376921124

`∑[A171177(A028310(n))*A178334(n)]`
-/

namespace A171178.P8073735770376921124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171177 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171178.P8073735770376921124

/-! ## A171178.P15067196733640765850

`∑[A171177(A028310(n))%A000152(n)]`
-/

namespace A171178.P15067196733640765850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171177 (A028310 n).toNat) (A000152 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171178.P15067196733640765850

/-!
# A171179: Numbers that are divisible by exactly 3 primes (counted with multiplicity) and sandwiched between primes.

The programs for A171179, there is no canonical definition to state claims against.
-/

/-! ## A171179.P15201435815551542524

`A060213(n+1)+1`
-/

namespace A171179.P15201435815551542524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060213 (n + 1) + 1

end

end A171179.P15201435815551542524

/-! ## A171179.P13624504581288875216

`6*A060212(n+1)`
-/

namespace A171179.P13624504581288875216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060212 (n + 1)

end

end A171179.P13624504581288875216

/-! ## A171179.P16393490102921407427

`∩[A001359(n+1), A283532(n+1)]+1`
-/

namespace A171179.P16393490102921407427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P16393490102921407427

/-! ## A171179.P5809011701789342254

`∩[A283532(n+1), A378983(n+1)]+1`
-/

namespace A171179.P5809011701789342254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P5809011701789342254

/-! ## A171179.P4106204551224026810

`6*p?[A182521(n+1)]`
-/

namespace A171179.P4106204551224026810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171179.P4106204551224026810

/-! ## A171179.P1852451815845993987

`6*p?[A002822(n+1)]`
-/

namespace A171179.P1852451815845993987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171179.P1852451815845993987

/-! ## A171179.P13365718558016846393

`∩[A014574(n+1), A075281(n+1)]`
-/

namespace A171179.P13365718558016846393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171179.P13365718558016846393

/-! ## A171179.P12041561029965513406

`∩[A054799(n+1), A283532(n+1)]+1`
-/

namespace A171179.P12041561029965513406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P12041561029965513406

/-! ## A171179.P778606927360572999

`∩[A063700(n+1), A283532(n+1)]+1`
-/

namespace A171179.P778606927360572999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P778606927360572999

/-! ## A171179.P9739103383816336842

`∩[A111166(n+1), A283532(n+1)]+1`
-/

namespace A171179.P9739103383816336842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P9739103383816336842

/-! ## A171179.P8130277199034285214

`∩[A124588(n+1), A283532(n+1)]+1`
-/

namespace A171179.P8130277199034285214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P8130277199034285214

/-! ## A171179.P17823668597397262933

`∩[A181747(n+1), A283532(n+1)]+1`
-/

namespace A171179.P17823668597397262933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P17823668597397262933

/-! ## A171179.P11845363257341641349

`∩[A063693(n+1), A283532(n+1)]+1`
-/

namespace A171179.P11845363257341641349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P11845363257341641349

/-! ## A171179.P12865185154112559630

`∩[A280255(n+1), A283532(n+1)]+1`
-/

namespace A171179.P12865185154112559630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P12865185154112559630

/-! ## A171179.P13760942238865826793

`∩[A075281(n+1), A120432(n+1)]`
-/

namespace A171179.P13760942238865826793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171179.P13760942238865826793

/-! ## A171179.P13392701155226810216

`∩[A075281(n+1), A306298(n+1)]`
-/

namespace A171179.P13392701155226810216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171179.P13392701155226810216

/-! ## A171179.P8984362448774955964

`∩[A073534(n+1), A283532(n+1)]+1`
-/

namespace A171179.P8984362448774955964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P8984362448774955964

/-! ## A171179.P17785000389976452613

`∩[A280590(n+1), A283532(n+1)]+1`
-/

namespace A171179.P17785000389976452613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A171179.P17785000389976452613

/-! ## A171179.P6132550399481762630

`∩[A056853(n+1), A075281(n+1)]`
-/

namespace A171179.P6132550399481762630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171179.P6132550399481762630

/-!
# A171180: a(n) = (4*n + 1)^(1/2)/(4*n + 1)*((1 - p)*q^n - (1 - q)*p^n), where p = (1 - (4*n + 1)^(1/2))/2 and q = (1 + (4*n + 1)^(1/2))/2.

The programs for A171180, there is no canonical definition to state claims against.
-/

/-! ## A171180.P16741903903964313186

`A083856(A184636(n+2))`
-/

namespace A171180.P16741903903964313186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A184636 (n + 2)).toNat

end

end A171180.P16741903903964313186

/-! ## A171180.P17920478771832782878

`A193376((n+1)²+n²)`
-/

namespace A171180.P17920478771832782878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193376 ((n + 1) ^ 2 + n ^ 2)

end

end A171180.P17920478771832782878

/-! ## A171180.P8368150250853601251

`A060959(A056220(n+2))`
-/

namespace A171180.P8368150250853601251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A056220 (n + 2)).toNat

end

end A171180.P8368150250853601251

/-! ## A171180.P13250191648555985683

`A060959(A004273((n+2)²))`
-/

namespace A171180.P13250191648555985683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A004273 ((n + 2) ^ 2)).toNat

end

end A171180.P13250191648555985683

/-! ## A171180.P15383503993676957816

`record[A060959(A178218(n+1))]`
-/

namespace A171180.P15383503993676957816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171180.P15383503993676957816

/-!
# A171181: n followed by (n - sum of digits of n).

The programs for A171181, the canonical program `A171181.P4361869760045339606` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171181 has offset 0).

The definition of A171181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171181.P4361869760045339606

`A028242(n)-A007953(A057979(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171181

/-- `A028242(n)-A007953(A057979(n))` -/
def P4361869760045339606.Spec : Prop :=
  ∀ n, P4361869760045339606.a n = A171181 n

theorem P4361869760045339606.correct : P4361869760045339606.Spec := by
  intro n
  simp only [A171181]

end A171181

/-! ## A171181.P6801218942961197759

`A026741(n)%A160939(A008619(n))`
-/

namespace A171181.P6801218942961197759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 n) (A160939 (A008619 n).toNat)

end

end A171181.P6801218942961197759

namespace A171181

/-- `A026741(n)%A160939(A008619(n))` -/
def P6801218942961197759.Spec : Prop :=
  ∀ n, P6801218942961197759.a n = A171181 n

end A171181

/-! ## A171181.P17580889273608053378

`A004526(n)-∑{digits}[A004526(n*A000035(n)), #]`
-/

namespace A171181.P17580889273608053378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A171181.P17580889273608053378

namespace A171181

/-- `A004526(n)-∑{digits}[A004526(n*A000035(n)), #]` -/
def P17580889273608053378.Spec : Prop :=
  ∀ n, P17580889273608053378.a n = A171181 n

end A171181

/-! ## A171181.P6395159793460737866

`A004526(n)-A007953(A004526(A093178(n)))`
-/

namespace A171181.P6395159793460737866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A007953 (A004526 (A093178 n).toNat).toNat

end

end A171181.P6395159793460737866

namespace A171181

/-- `A004526(n)-A007953(A004526(A093178(n)))` -/
def P6395159793460737866.Spec : Prop :=
  ∀ n, P6395159793460737866.a n = A171181 n

end A171181

/-! ## A171181.P3202746430096876185

`A004526(n)-A007953(A004526(A124625(n)))`
-/

namespace A171181.P3202746430096876185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A007953 (A004526 (A124625 n).toNat).toNat

end

end A171181.P3202746430096876185

namespace A171181

/-- `A004526(n)-A007953(A004526(A124625(n)))` -/
def P3202746430096876185.Spec : Prop :=
  ∀ n, P3202746430096876185.a n = A171181 n

end A171181

/-!
# A171182: Period 6: repeat [0, 1, 1, 1, 0, 2].

The programs for A171182, the canonical program `A171182.P3095861321190241851` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171182 has offset 1).

The definition of A171182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171182.P3095861321190241851

`(1+floor((n-2)²/2))%3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171182

/-- `(1+floor((n-2)²/2))%3` -/
def P3095861321190241851.Spec : Prop :=
  ∀ n, P3095861321190241851.a n = A171182 (n + 1)

theorem P3095861321190241851.correct : P3095861321190241851.Spec := by
  intro n
  simp only [A171182, Nat.add_sub_cancel]

end A171182

/-!
# A171184: G.f. satisfies: A(x) = A(x)^2 - x*A(2x).

The programs for A171184, there is no canonical definition to state claims against.
-/

/-! ## A171184.P14604851651372350184

`A324754(A105309(n))-A099302(n+2)`
-/

namespace A171184.P14604851651372350184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324754 (A105309 n).toNat - A099302 (n + 2)

end

end A171184.P14604851651372350184

/-! ## A171184.P8024781168415733717

`floor(A321979(n)/6)+1`
-/

namespace A171184.P8024781168415733717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321979 n : ℚ) / 6⌋ + 1

end

end A171184.P8024781168415733717

/-!
# A171185: G.f.: exp( Sum_{n>=1} (x^n/n)*[Sum_{k=0..[n/2]} A034807(n,k)^3] ), where A034807 is a triangle of Lucas polynomials.

The programs for A171185, there is no canonical definition to state claims against.
-/

/-! ## A171185.P9290532125665690159

`A024417(A330795(n)+A078027(n))`
-/

namespace A171185.P9290532125665690159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A330795 n + A078027 n).toNat

end

end A171185.P9290532125665690159

/-! ## A171185.P17411047443732689302

`A332279(n)+A230980(A265612(n))`
-/

namespace A171185.P17411047443732689302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332279 n + A230980 (A265612 n).toNat

end

end A171185.P17411047443732689302

/-! ## A171185.P12772230939391216347

`A024417(Δ[A283822(n+1)+A015521(n)])`
-/

namespace A171185.P12772230939391216347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283822 (n + 1) + A015521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (f1 (n + 1) - f1 n).toNat

end

end A171185.P12772230939391216347

/-!
# A171186: G.f.: exp( Sum_{n>=1} (x^n/n)*[Sum_{k=0..[n/2]} A034807(n,k)^n] ), where A034807 is a triangle of Lucas polynomials.

The programs for A171186, there is no canonical definition to state claims against.
-/

/-! ## A171186.P4881375008530043210

`A257807(A355211(n+1)+C(n, 2))`
-/

namespace A171186.P4881375008530043210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257807 (A355211 (n + 1) + (Nat.choose n 2 : ℤ)).toNat

end

end A171186.P4881375008530043210

/-! ## A171186.P7828734259781158373

`A327078(n)+A080405(A255133(n))`
-/

namespace A171186.P7828734259781158373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 n + A080405 (A255133 n).toNat

end

end A171186.P7828734259781158373

/-!
# A171187: a(n) = Sum_{k=0..[n/2]} A034807(n,k)^n, where A034807 is a triangle of Lucas polynomials.

The programs for A171187, there is no canonical definition to state claims against.
-/

/-! ## A171187.P15431385870219768176

`A383278(n^(n+1)+2)`
-/

namespace A171187.P15431385870219768176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (n ^ (n + 1) + 2)

end

end A171187.P15431385870219768176

/-!
# A171188: G.f. satisfies: AGM(1,A(x)) = 1 + 4*x.

The programs for A171188, there is no canonical definition to state claims against.
-/

/-! ## A171188.P9252309861179881497

`A212885(A239014(3*n+1)-A126205(n))`
-/

namespace A171188.P9252309861179881497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (A239014 (3 * n + 1) - A126205 n).toNat

end

end A171188.P9252309861179881497

/-! ## A171188.P14982907278098403778

`A212885(A239014(3*n+1)-A126210(n))`
-/

namespace A171188.P14982907278098403778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (A239014 (3 * n + 1) - A126210 n).toNat

end

end A171188.P14982907278098403778

/-!
# A171189: G.f. satisfies: AGM(1,A(x)) = 1/(1 - 4*x).

The programs for A171189, there is no canonical definition to state claims against.
-/

/-! ## A171189.P7741592572658271859

`A301697(A002001(n))-A265185(n)`
-/

namespace A171189.P7741592572658271859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 (A002001 n).toNat - A265185 n

end

end A171189.P7741592572658271859

/-! ## A171189.P8161379174367010059

`A000079(n)*A055086(A128568(n))`
-/

namespace A171189.P8161379174367010059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A055086 (A128568 n).toNat

end

end A171189.P8161379174367010059

/-!
# A171190: G.f. satisfies: A(x) = exp( Sum_{n>=1} (A(x)^n + A(-x)^n) * x^n/n ).

The programs for A171190, there is no canonical definition to state claims against.
-/

/-! ## A171190.P10392250817454219208

`A047749(n)*A316842(A279159(n))`
-/

namespace A171190.P10392250817454219208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A316842 (A279159 n).toNat

end

end A171190.P10392250817454219208

/-! ## A171190.P12548558846480541638

`A209438(A000129(n))+A091107(n+1)`
-/

namespace A171190.P12548558846480541638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 (A000129 n).toNat + A091107 (n + 1)

end

end A171190.P12548558846480541638

/-! ## A171190.P5492076972627867958

`A003963(A238977(n+4)-A000127(n+1))`
-/

namespace A171190.P5492076972627867958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A238977 (n + 4) - A000127 (n + 1)).toNat

end

end A171190.P5492076972627867958

/-!
# A171191: G.f. satisfies: A(x) = exp( Sum_{n>=1} [A(x)^n + 1/A(-x)^n]*x^n/n ).

The programs for A171191, there is no canonical definition to state claims against.
-/

/-! ## A171191.P9793853665160124981

`A260734(A292668(n))`
-/

namespace A171191.P9793853665160124981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A292668 n).toNat

end

end A171191.P9793853665160124981

/-! ## A171191.P13073975420532491873

`A191893(A102429(n)+1)`
-/

namespace A171191.P13073975420532491873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (A102429 n + 1).toNat

end

end A171191.P13073975420532491873

/-!
# A171192: G.f. satisfies A(x) = 1/(1 - x*A(2x)^2).

The programs for A171192, there is no canonical definition to state claims against.
-/

/-! ## A171192.P5090236098214281611

`A227190(A120976(n))+1`
-/

namespace A171192.P5090236098214281611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227190 (A120976 n).toNat + 1

end

end A171192.P5090236098214281611

/-!
# A171193: G.f. A(x) satisfies A(x) = 1/(1 - x*A(2*x)^3).

The programs for A171193, there is no canonical definition to state claims against.
-/

/-! ## A171193.P4502538368739228704

`A246281(A279644(n))`
-/

namespace A171193.P4502538368739228704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246281 (A279644 n).toNat

end

end A171193.P4502538368739228704

/-!
# A171194: G.f. A(x) satisfies A(x) = 1/(1 - x*A(2*x)^4).

The programs for A171194, there is no canonical definition to state claims against.
-/

/-! ## A171194.P851408954136615690

`A260395(A334282(n)-A181391(n+1))`
-/

namespace A171194.P851408954136615690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260395 (A334282 n - A181391 (n + 1)).toNat

end

end A171194.P851408954136615690

/-!
# A171195: G.f. A(x) satisfies A(x) = 1/(1 - x*A(2*x)^5).

The programs for A171195, there is no canonical definition to state claims against.
-/

/-! ## A171195.P6013090866557959523

`A025863(xor(9, A033125(n+1)))`
-/

namespace A171195.P6013090866557959523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025863 (Int.xor 9 (A033125 (n + 1))).toNat

end

end A171195.P6013090866557959523

/-!
# A171199: G.f. satisfies: A(x) = exp( Sum_{n>=1} [A(x)^n + A(x)^-n]*x^n/n ).

The programs for A171199, there is no canonical definition to state claims against.
-/

/-! ## A171199.P2509389748283310145

`A143330(n)+char[1]`
-/

namespace A171199.P2509389748283310145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143330 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171199.P2509389748283310145

/-! ## A171199.P3829842470822446279

`A143330(n)*A373565(n)`
-/

namespace A171199.P3829842470822446279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143330 n * A373565 n

end

end A171199.P3829842470822446279

/-! ## A171199.P17829852002648945141

`abs(A159075(n)-A143330(n))`
-/

namespace A171199.P17829852002648945141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n - A143330 n|

end

end A171199.P17829852002648945141

/-! ## A171199.P10029745984377630057

`(A063524(n)+1)*A143330(n)`
-/

namespace A171199.P10029745984377630057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A143330 n

end

end A171199.P10029745984377630057

/-! ## A171199.P5225348746523849307

`gcd(2, A143329(n+1))*A143330(n)`
-/

namespace A171199.P5225348746523849307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A143329 (n + 1)) : ℤ) * A143330 n

end

end A171199.P5225348746523849307

/-! ## A171199.P8563499026789881670

`A001511(A004280(n+1))*A143330(n)`
-/

namespace A171199.P8563499026789881670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004280 (n + 1)).toNat * A143330 n

end

end A171199.P8563499026789881670

/-! ## A171199.P8992736356653217949

`A143330(n)*A158416(A008578(n+1))`
-/

namespace A171199.P8992736356653217949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143330 n * A158416 (A008578 (n + 1)).toNat

end

end A171199.P8992736356653217949

/-! ## A171199.P14671957312808765370

`A159075(n)+A143330(n-A159075(n))`
-/

namespace A171199.P14671957312808765370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A143330 ((n : ℤ) - A159075 n).toNat

end

end A171199.P14671957312808765370

/-! ## A171199.P10574831683615425181

`A001511(A143329(n+1))*A143330(n)`
-/

namespace A171199.P10574831683615425181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A143329 (n + 1)).toNat * A143330 n

end

end A171199.P10574831683615425181

/-! ## A171199.P8584428578981840842

`A182114(∑[n]+1)+A143330(n)`
-/

namespace A171199.P8584428578981840842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A143330 n

end

end A171199.P8584428578981840842

/-! ## A171199.P9987762135027632512

`A040001(A316885(n+1))*A143330(n)`
-/

namespace A171199.P9987762135027632512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A316885 (n + 1)).toNat * A143330 n

end

end A171199.P9987762135027632512

