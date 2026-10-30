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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B004.C004
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
# A173800: Irregular triangle in which row n has primitive numbers k such that 1/k is in the Cantor set and the fraction 1/k has period n.

The programs for A173800, there is no canonical definition to state claims against.
-/

/-! ## A173800.P895840794979330053

`filter[A212906(n+1), A039966(#)]`
-/

namespace A173800.P895840794979330053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A173800.P895840794979330053

/-! ## A173800.P9332823877258100008

`A003278(A059912(n+1)%A329318(2*(n+2)))`
-/

namespace A173800.P9332823877258100008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (Int.tmod (A059912 (n + 1)) (A329318 (2 * (n + 2)))).toNat

end

end A173800.P9332823877258100008

/-! ## A173800.P817178096251616840

`A003278(A059912(n+1)^A271952(n))`
-/

namespace A173800.P817178096251616840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.roundAway ((A059912 (n + 1) : ℚ) ^ (A271952 n : ℤ))).toNat

end

end A173800.P817178096251616840

/-! ## A173800.P9602882058913074639

`A003278(C(A059912(n+1), A271952(n)))`
-/

namespace A173800.P9602882058913074639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (Nat.choose (A059912 (n + 1)).toNat (A271952 n).toNat)

end

end A173800.P9602882058913074639

/-! ## A173800.P8747172077251363533

`A003278(A059912(n+1)%A201154(n+1))`
-/

namespace A173800.P8747172077251363533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (Int.tmod (A059912 (n + 1)) (A201154 (n + 1))).toNat

end

end A173800.P8747172077251363533

/-!
# A173801: The number of primitive numbers k such that 1/k is in the Cantor set and the fraction 1/k has period n.

The programs for A173801, there is no canonical definition to state claims against.
-/

/-! ## A173801.P14119414717858183541

`A185063(A271952(n)²)+A000961(A002033(n))`
-/

namespace A173801.P14119414717858183541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A271952 n ^ 2).toNat + A000961 (A002033 n).toNat

end

end A173801.P14119414717858183541

/-! ## A173801.P2889435918959905361

`A007814(A212390(n))+A002033(n)`
-/

namespace A173801.P2889435918959905361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A212390 n).toNat + A002033 n

end

end A173801.P2889435918959905361

/-! ## A173801.P10248639162563230087

`A152493(A002033(n)^A047996(n))`
-/

namespace A173801.P10248639162563230087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152493 (SequenceMachineLib.roundAway ((A002033 n : ℚ) ^ (A047996 n : ℤ))).toNat

end

end A173801.P10248639162563230087

/-! ## A173801.P14420661171192408045

`A172251(A002033(n)%A154363(n+1))`
-/

namespace A173801.P14420661171192408045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172251 (Int.tmod (A002033 n) (A154363 (n + 1))).toNat

end

end A173801.P14420661171192408045

/-! ## A173801.P17684275079038762369

`A059519(A002033(n))%A197160(n+2)`
-/

namespace A173801.P17684275079038762369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059519 (A002033 n).toNat) (A197160 (n + 2))

end

end A173801.P17684275079038762369

/-!
# A173802: a(n) = (5*10^n - 23)/9.

The programs for A173802, the canonical program `A173802.P5232284944590715920` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173802 has offset 1).

The definition of A173802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*10^(n+1)-23)/9` (program `A173802.P7472549878370642683`, by `A173802.P7472549878370642683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173802.P13820344352335723948

`ogf((3+20x)/(1-11x+10x^2))`
-/

namespace A173802.P13820344352335723948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 20] [1, -11, 10] n

end

end A173802.P13820344352335723948

namespace A173802

/-- `ogf((3+20x)/(1-11x+10x^2))` -/
def P13820344352335723948.Spec : Prop :=
  ∀ n, P13820344352335723948.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P5232284944590715920

`10*a(n-1)+23` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173802

/-- `10*a(n-1)+23` -/
def P5232284944590715920.Spec : Prop :=
  ∀ n, (P5232284944590715920.a n : ℤ) = A173802 (n + 1)

theorem P5232284944590715920.correct : P5232284944590715920.Spec := by
  intro n
  simp only [A173802, Nat.add_sub_cancel]

end A173802

/-! ## A173802.P7472549878370642683

`(5*10^(n+1)-23)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173802.P7472549878370642683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 1) : ℤ) - 23 : ℚ) / 9

end

end A173802.P7472549878370642683

namespace A173802

/-- `(5*10^(n+1)-23)/9` -/
def P7472549878370642683.Spec : Prop :=
  ∀ n, P7472549878370642683.a n = (A173802 (n + 1) : ℚ)

theorem P7472549878370642683.correct : P7472549878370642683.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173802, Nat.add_sub_cancel, A173802.P7472549878370642683.a, A173802.P5232284944590715920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173802, Nat.add_sub_cancel, A173802.P7472549878370642683.a, A173802.P5232284944590715920.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173802

/-! ## A173802.P7549219383900712593

`∑[10*a(n-1)]` with `a(0)=3, a(1)=50`
-/

namespace A173802.P7549219383900712593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 50] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173802.P7549219383900712593

namespace A173802

/-- `∑[10*a(n-1)]` -/
def P7549219383900712593.Spec : Prop :=
  ∀ n, (P7549219383900712593.a n : ℤ) = A173802 (n + 1)

end A173802

/-! ## A173802.P4596429296645410270

`A173804(n+1)+2`
-/

namespace A173802.P4596429296645410270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173804 (n + 1) + 2

end

end A173802.P4596429296645410270

namespace A173802

/-- `A173804(n+1)+2` -/
def P4596429296645410270.Spec : Prop :=
  ∀ n, P4596429296645410270.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P12636460757037663745

`A002279(n+1)-2`
-/

namespace A173802.P12636460757037663745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) - 2

end

end A173802.P12636460757037663745

namespace A173802

/-- `A002279(n+1)-2` -/
def P12636460757037663745.Spec : Prop :=
  ∀ n, P12636460757037663745.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P5427758947264065885

`A093142(n+1)-3`
-/

namespace A173802.P5427758947264065885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 (n + 1) - 3

end

end A173802.P5427758947264065885

namespace A173802

/-- `A093142(n+1)-3` -/
def P5427758947264065885.Spec : Prop :=
  ∀ n, P5427758947264065885.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P16598539095481407606

`A178769(n+1)-4`
-/

namespace A173802.P16598539095481407606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 (n + 1) - 4

end

end A173802.P16598539095481407606

namespace A173802

/-- `A178769(n+1)-4` -/
def P16598539095481407606.Spec : Prop :=
  ∀ n, P16598539095481407606.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P6541167328643180489

`5*A105279(n)+3`
-/

namespace A173802.P6541167328643180489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A105279 n + 3

end

end A173802.P6541167328643180489

namespace A173802

/-- `5*A105279(n)+3` -/
def P6541167328643180489.Spec : Prop :=
  ∀ n, P6541167328643180489.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P12401563238641658134

`A322927(Δ[n²])+2`
-/

namespace A173802.P12401563238641658134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A173802.P12401563238641658134

namespace A173802

/-- `A322927(Δ[n²])+2` -/
def P12401563238641658134.Spec : Prop :=
  ∀ n, P12401563238641658134.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P11190566402459020678

`round(10*A246057(n)/3)`
-/

namespace A173802.P11190566402459020678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 * ((A246057 n : ℚ) / 3))

end

end A173802.P11190566402459020678

namespace A173802

/-- `round(10*A246057(n)/3)` -/
def P11190566402459020678.Spec : Prop :=
  ∀ n, P11190566402459020678.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P246638263077125436

`5*A000042(n+1)-2`
-/

namespace A173802.P246638263077125436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000042 (n + 1) - 2

end

end A173802.P246638263077125436

namespace A173802

/-- `5*A000042(n+1)-2` -/
def P246638263077125436.Spec : Prop :=
  ∀ n, P246638263077125436.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P14285929756943457046

`abs(2-∑[A093143(n+1)])`
-/

namespace A173802.P14285929756943457046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A173802.P14285929756943457046

namespace A173802

/-- `abs(2-∑[A093143(n+1)])` -/
def P14285929756943457046.Spec : Prop :=
  ∀ n, P14285929756943457046.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P13368362750506278655

`abs(2-∑[A198971(n)+1])`
-/

namespace A173802.P13368362750506278655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A173802.P13368362750506278655

namespace A173802

/-- `abs(2-∑[A198971(n)+1])` -/
def P13368362750506278655.Spec : Prop :=
  ∀ n, P13368362750506278655.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P564015174629510755

`∑[∑[A137233(n+1)]]-2`
-/

namespace A173802.P564015174629510755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A173802.P564015174629510755

namespace A173802

/-- `∑[∑[A137233(n+1)]]-2` -/
def P564015174629510755.Spec : Prop :=
  ∀ n, P564015174629510755.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P13743580021772541486

`Δ[∑[A002279(n)]-2*n]`
-/

namespace A173802.P13743580021772541486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173802.P13743580021772541486

namespace A173802

/-- `Δ[∑[A002279(n)]-2*n]` -/
def P13743580021772541486.Spec : Prop :=
  ∀ n, P13743580021772541486.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P4573177155209984852

`A237344(A017197(n))`
-/

namespace A173802.P4573177155209984852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A017197 n).toNat

end

end A173802.P4573177155209984852

namespace A173802

/-- `A237344(A017197(n))` -/
def P4573177155209984852.Spec : Prop :=
  ∀ n, P4573177155209984852.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P16087761782201606596

`A237344(A017173(n)+2)`
-/

namespace A173802.P16087761782201606596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A017173 n + 2).toNat

end

end A173802.P16087761782201606596

namespace A173802

/-- `A237344(A017173(n)+2)` -/
def P16087761782201606596.Spec : Prop :=
  ∀ n, P16087761782201606596.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P7447569862172210032

`record[A322927(A093178(n))+2]`
-/

namespace A173802.P7447569862172210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (A093178 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173802.P7447569862172210032

namespace A173802

/-- `record[A322927(A093178(n))+2]` -/
def P7447569862172210032.Spec : Prop :=
  ∀ n, P7447569862172210032.a n = A173802 (n + 1)

end A173802

/-! ## A173802.P14433275007468619995

`A237344(A122709(2*n+1)/2)`
-/

namespace A173802.P14433275007468619995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (SequenceMachineLib.roundAway ((A122709 (2 * n + 1) : ℚ) / 2)).toNat

end

end A173802.P14433275007468619995

namespace A173802

/-- `A237344(A122709(2*n+1)/2)` -/
def P14433275007468619995.Spec : Prop :=
  ∀ n, P14433275007468619995.a n = A173802 (n + 1)

end A173802

/-!
# A173803: Primes in A139634.

The programs for A173803, there is no canonical definition to state claims against.
-/

/-! ## A173803.P15189783666076216712

`∩[A030430(n+1), A139634(n+1)]`
-/

namespace A173803.P15189783666076216712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173803.P15189783666076216712

/-! ## A173803.P11070684103783133451

`p?[5*2^n-9]`
-/

namespace A173803.P11070684103783133451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173803.P11070684103783133451

/-! ## A173803.P8538891733195573458

`or(2, p?[2*a(n-1)+9])` with `a(0)=1`
-/

namespace A173803.P8538891733195573458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A173803.P8538891733195573458

/-! ## A173803.P11750739083439066371

`∩[A038617(n+1), A139634(n+1)]`
-/

namespace A173803.P11750739083439066371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173803.P11750739083439066371

/-!
# A173804: a(n) = (5*10^n - 41)/9 for n > 0.

The programs for A173804, the canonical program `A173804.P12375916628944862168` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173804 has offset 1).

The definition of A173804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*10^(n+1)-41)/9` (program `A173804.P3702227297732829151`, by `A173804.P3702227297732829151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173804.P8139399959465990597

`ogf((1+40x)/(1-11x+10x^2))`
-/

namespace A173804.P8139399959465990597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 40] [1, -11, 10] n

end

end A173804.P8139399959465990597

namespace A173804

/-- `ogf((1+40x)/(1-11x+10x^2))` -/
def P8139399959465990597.Spec : Prop :=
  ∀ n, P8139399959465990597.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P12375916628944862168

`10*a(n-1)+41` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173804

/-- `10*a(n-1)+41` -/
def P12375916628944862168.Spec : Prop :=
  ∀ n, (P12375916628944862168.a n : ℤ) = A173804 (n + 1)

theorem P12375916628944862168.correct : P12375916628944862168.Spec := by
  intro n
  simp only [A173804, Nat.add_sub_cancel]

end A173804

/-! ## A173804.P3702227297732829151

`(5*10^(n+1)-41)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173804.P3702227297732829151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 1) : ℤ) - 41 : ℚ) / 9

end

end A173804.P3702227297732829151

namespace A173804

/-- `(5*10^(n+1)-41)/9` -/
def P3702227297732829151.Spec : Prop :=
  ∀ n, P3702227297732829151.a n = (A173804 (n + 1) : ℚ)

theorem P3702227297732829151.correct : P3702227297732829151.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173804, Nat.add_sub_cancel, A173804.P3702227297732829151.a, A173804.P12375916628944862168.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173804, Nat.add_sub_cancel, A173804.P3702227297732829151.a, A173804.P12375916628944862168.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173804

/-! ## A173804.P11455110028134640167

`∑[10*a(n-1)]` with `a(0)=1, a(1)=50`
-/

namespace A173804.P11455110028134640167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 50] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173804.P11455110028134640167

namespace A173804

/-- `∑[10*a(n-1)]` -/
def P11455110028134640167.Spec : Prop :=
  ∀ n, (P11455110028134640167.a n : ℤ) = A173804 (n + 1)

end A173804

/-! ## A173804.P16246475625593817019

`A322927(Δ[n²])`
-/

namespace A173804.P16246475625593817019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A173804.P16246475625593817019

namespace A173804

/-- `A322927(Δ[n²])` -/
def P16246475625593817019.Spec : Prop :=
  ∀ n, P16246475625593817019.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P12769868030468453298

`A173802(n+1)-2`
-/

namespace A173804.P12769868030468453298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173802 (n + 1) - 2

end

end A173804.P12769868030468453298

namespace A173804

/-- `A173802(n+1)-2` -/
def P12769868030468453298.Spec : Prop :=
  ∀ n, P12769868030468453298.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P4210743331774019415

`A002279(n+1)-4`
-/

namespace A173804.P4210743331774019415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) - 4

end

end A173804.P4210743331774019415

namespace A173804

/-- `A002279(n+1)-4` -/
def P4210743331774019415.Spec : Prop :=
  ∀ n, P4210743331774019415.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P3632188372533347671

`A093142(n+1)-5`
-/

namespace A173804.P3632188372533347671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 (n + 1) - 5

end

end A173804.P3632188372533347671

namespace A173804

/-- `A093142(n+1)-5` -/
def P3632188372533347671.Spec : Prop :=
  ∀ n, P3632188372533347671.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P2607960980575654396

`5*A105279(n)+1`
-/

namespace A173804.P2607960980575654396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A105279 n + 1

end

end A173804.P2607960980575654396

namespace A173804

/-- `5*A105279(n)+1` -/
def P2607960980575654396.Spec : Prop :=
  ∀ n, P2607960980575654396.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P3538590030812979128

`A178769(n+1)-6`
-/

namespace A173804.P3538590030812979128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 (n + 1) - 6

end

end A173804.P3538590030812979128

namespace A173804

/-- `A178769(n+1)-6` -/
def P3538590030812979128.Spec : Prop :=
  ∀ n, P3538590030812979128.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P12174889396832081029

`or(1, 10*A002279(n))`
-/

namespace A173804.P12174889396832081029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * A002279 n)

end

end A173804.P12174889396832081029

namespace A173804

/-- `or(1, 10*A002279(n))` -/
def P12174889396832081029.Spec : Prop :=
  ∀ n, P12174889396832081029.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P4103717508317570585

`∑[A198971(n)]+n-3`
-/

namespace A173804.P4103717508317570585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - 3

end

end A173804.P4103717508317570585

namespace A173804

/-- `∑[A198971(n)]+n-3` -/
def P4103717508317570585.Spec : Prop :=
  ∀ n, P4103717508317570585.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P15136773523109146400

`5*A000042(n+1)-4`
-/

namespace A173804.P15136773523109146400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000042 (n + 1) - 4

end

end A173804.P15136773523109146400

namespace A173804

/-- `5*A000042(n+1)-4` -/
def P15136773523109146400.Spec : Prop :=
  ∀ n, P15136773523109146400.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P13825373074354009382

`A237344(A017173(n))`
-/

namespace A173804.P13825373074354009382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A017173 n).toNat

end

end A173804.P13825373074354009382

namespace A173804

/-- `A237344(A017173(n))` -/
def P13825373074354009382.Spec : Prop :=
  ∀ n, P13825373074354009382.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P4388354395036092063

`record[A322927(A093178(n))]`
-/

namespace A173804.P4388354395036092063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173804.P4388354395036092063

namespace A173804

/-- `record[A322927(A093178(n))]` -/
def P4388354395036092063.Spec : Prop :=
  ∀ n, P4388354395036092063.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P677508016554849239

`A237344(A017197(n)-2)`
-/

namespace A173804.P677508016554849239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A017197 n - 2).toNat

end

end A173804.P677508016554849239

namespace A173804

/-- `A237344(A017197(n)-2)` -/
def P677508016554849239.Spec : Prop :=
  ∀ n, P677508016554849239.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P17543985107396511918

`record[A322927(n)^A088705(n)]`
-/

namespace A173804.P17543985107396511918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322927 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173804.P17543985107396511918

namespace A173804

/-- `record[A322927(n)^A088705(n)]` -/
def P17543985107396511918.Spec : Prop :=
  ∀ n, P17543985107396511918.a n = (A173804 (n + 1) : ℚ)

end A173804

/-! ## A173804.P15514111557414055277

`A173805(n+1)-A105279(n)`
-/

namespace A173804.P15514111557414055277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173805 (n + 1) - A105279 n

end

end A173804.P15514111557414055277

namespace A173804

/-- `A173805(n+1)-A105279(n)` -/
def P15514111557414055277.Spec : Prop :=
  ∀ n, P15514111557414055277.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P8992852416204657489

`record[A322927(A088705(n+1)+n)]`
-/

namespace A173804.P8992852416204657489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (A088705 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173804.P8992852416204657489

namespace A173804

/-- `record[A322927(A088705(n+1)+n)]` -/
def P8992852416204657489.Spec : Prop :=
  ∀ n, P8992852416204657489.a n = A173804 (n + 1)

end A173804

/-! ## A173804.P5975004282904770518

`∑[A011557(n)/A093136(n)*A011557(n)]`
-/

namespace A173804.P5975004282904770518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) / (A093136 n : ℚ) * (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173804.P5975004282904770518

namespace A173804

/-- `∑[A011557(n)/A093136(n)*A011557(n)]` -/
def P5975004282904770518.Spec : Prop :=
  ∀ n, P5975004282904770518.a n = (A173804 (n + 1) : ℚ)

end A173804

/-!
# A173805: a(n) = (6*10^n - 51)/9 for n > 0.

The programs for A173805, the canonical program `A173805.P10966824229454968784` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173805 has offset 1).

The definition of A173805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*10^(n+1)-51)/9` (program `A173805.P17860087400787143560`, by `A173805.P17860087400787143560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173805.P17811410698996081264

`ogf((1+50x)/(1-11x+10x^2))`
-/

namespace A173805.P17811410698996081264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 50] [1, -11, 10] n

end

end A173805.P17811410698996081264

namespace A173805

/-- `ogf((1+50x)/(1-11x+10x^2))` -/
def P17811410698996081264.Spec : Prop :=
  ∀ n, P17811410698996081264.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P10966824229454968784

`10*a(n-1)+51` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173805

/-- `10*a(n-1)+51` -/
def P10966824229454968784.Spec : Prop :=
  ∀ n, (P10966824229454968784.a n : ℤ) = A173805 (n + 1)

theorem P10966824229454968784.correct : P10966824229454968784.Spec := by
  intro n
  simp only [A173805, Nat.add_sub_cancel]

end A173805

/-! ## A173805.P17860087400787143560

`(6*10^(n+1)-51)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173805.P17860087400787143560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 10 ^ (n + 1) : ℤ) - 51 : ℚ) / 9

end

end A173805.P17860087400787143560

namespace A173805

/-- `(6*10^(n+1)-51)/9` -/
def P17860087400787143560.Spec : Prop :=
  ∀ n, P17860087400787143560.a n = (A173805 (n + 1) : ℚ)

theorem P17860087400787143560.correct : P17860087400787143560.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173805, Nat.add_sub_cancel, A173805.P17860087400787143560.a, A173805.P10966824229454968784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173805, Nat.add_sub_cancel, A173805.P17860087400787143560.a, A173805.P10966824229454968784.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173805

/-! ## A173805.P6666627578540072122

`∑[10*a(n-1)]` with `a(0)=1, a(1)=60`
-/

namespace A173805.P6666627578540072122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 60] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173805.P6666627578540072122

namespace A173805

/-- `∑[10*a(n-1)]` -/
def P6666627578540072122.Spec : Prop :=
  ∀ n, (P6666627578540072122.a n : ℤ) = A173805 (n + 1)

end A173805

/-! ## A173805.P14870568813908029120

`∑[(6*10^n)^ceil(sin(n)²)]`
-/

namespace A173805.P14870568813908029120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * 10 ^ n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173805.P14870568813908029120

namespace A173805

/-- `∑[(6*10^n)^ceil(sin(n)²)]` -/
def P14870568813908029120.Spec : Prop :=
  ∀ n, P14870568813908029120.a n = (A173805 (n + 1) : ℚ)

end A173805

/-! ## A173805.P6668105129655662592

`xor(1, 5*12*floor(10^n/9))`
-/

namespace A173805.P6668105129655662592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * (12 * ⌊(10 ^ n : ℚ) / 9⌋))

end

end A173805.P6668105129655662592

namespace A173805

/-- `xor(1, 5*12*floor(10^n/9))` -/
def P6668105129655662592.Spec : Prop :=
  ∀ n, P6668105129655662592.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P13263695747880687762

`2*A033175(n)-1`
-/

namespace A173805.P13263695747880687762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033175 n - 1

end

end A173805.P13263695747880687762

namespace A173805

/-- `2*A033175(n)-1` -/
def P13263695747880687762.Spec : Prop :=
  ∀ n, P13263695747880687762.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P11802417259671949922

`A002280(n+1)-5`
-/

namespace A173805.P11802417259671949922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (n + 1) - 5

end

end A173805.P11802417259671949922

namespace A173805

/-- `A002280(n+1)-5` -/
def P11802417259671949922.Spec : Prop :=
  ∀ n, P11802417259671949922.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P2877707509201418816

`A073548(n+2)-5`
-/

namespace A173805.P2877707509201418816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073548 (n + 2) - 5

end

end A173805.P2877707509201418816

namespace A173805

/-- `A073548(n+2)-5` -/
def P2877707509201418816.Spec : Prop :=
  ∀ n, P2877707509201418816.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P16268005238751050457

`A067275(n+2)-6`
-/

namespace A173805.P16268005238751050457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 2) - 6

end

end A173805.P16268005238751050457

namespace A173805

/-- `A067275(n+2)-6` -/
def P16268005238751050457.Spec : Prop :=
  ∀ n, P16268005238751050457.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P12903116804920914289

`A073555(n+2)-7`
-/

namespace A173805.P12903116804920914289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073555 (n + 2) - 7

end

end A173805.P12903116804920914289

namespace A173805

/-- `A073555(n+2)-7` -/
def P12903116804920914289.Spec : Prop :=
  ∀ n, P12903116804920914289.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P18264238981310762642

`4*A246057(n)-3`
-/

namespace A173805.P18264238981310762642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A246057 n - 3

end

end A173805.P18264238981310762642

namespace A173805

/-- `4*A246057(n)-3` -/
def P18264238981310762642.Spec : Prop :=
  ∀ n, P18264238981310762642.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P2353000122297217411

`5*A097166(n)-4`
-/

namespace A173805.P2353000122297217411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A097166 n - 4

end

end A173805.P2353000122297217411

namespace A173805

/-- `5*A097166(n)-4` -/
def P2353000122297217411.Spec : Prop :=
  ∀ n, P2353000122297217411.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P8448804795261275650

`or(1, 10*A002280(n))`
-/

namespace A173805.P8448804795261275650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * A002280 n)

end

end A173805.P8448804795261275650

namespace A173805

/-- `or(1, 10*A002280(n))` -/
def P8448804795261275650.Spec : Prop :=
  ∀ n, P8448804795261275650.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P45948119408849260

`3*A165402(n+1)-2`
-/

namespace A173805.P45948119408849260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165402 (n + 1) - 2

end

end A173805.P45948119408849260

namespace A173805

/-- `3*A165402(n+1)-2` -/
def P45948119408849260.Spec : Prop :=
  ∀ n, P45948119408849260.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P4886000934480118023

`A308900(2*(n+1))-5`
-/

namespace A173805.P4886000934480118023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (2 * (n + 1)) - 5

end

end A173805.P4886000934480118023

namespace A173805

/-- `A308900(2*(n+1))-5` -/
def P4886000934480118023.Spec : Prop :=
  ∀ n, P4886000934480118023.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P3001673012362684490

`A173804(n+1)+A002279(n)+A002279(n)`
-/

namespace A173805.P3001673012362684490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173804 (n + 1) + A002279 n + A002279 n

end

end A173805.P3001673012362684490

namespace A173805

/-- `A173804(n+1)+A002279(n)+A002279(n)` -/
def P3001673012362684490.Spec : Prop :=
  ∀ n, P3001673012362684490.a n = A173805 (n + 1)

end A173805

/-! ## A173805.P6134200535091168185

`A173811(n+1)-(A002275(n+1)+A002275(n+1))`
-/

namespace A173805.P6134200535091168185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (n + 1) - (A002275 (n + 1) + A002275 (n + 1))

end

end A173805.P6134200535091168185

namespace A173805

/-- `A173811(n+1)-(A002275(n+1)+A002275(n+1))` -/
def P6134200535091168185.Spec : Prop :=
  ∀ n, P6134200535091168185.a n = A173805 (n + 1)

end A173805

/-!
# A173806: a(n) = (7*10^n - 61)/9 for n > 0.

The programs for A173806, the canonical program `A173806.P10434585059559630452` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173806 has offset 1).

The definition of A173806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*10^(n+1)-61)/9` (program `A173806.P10359894510440895122`, by `A173806.P10359894510440895122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173806.P6066242042159442884

`ogf((1+60x)/(1-11x+10x^2))`
-/

namespace A173806.P6066242042159442884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 60] [1, -11, 10] n

end

end A173806.P6066242042159442884

namespace A173806

/-- `ogf((1+60x)/(1-11x+10x^2))` -/
def P6066242042159442884.Spec : Prop :=
  ∀ n, P6066242042159442884.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P10434585059559630452

`10*a(n-1)+61` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173806

/-- `10*a(n-1)+61` -/
def P10434585059559630452.Spec : Prop :=
  ∀ n, (P10434585059559630452.a n : ℤ) = A173806 (n + 1)

theorem P10434585059559630452.correct : P10434585059559630452.Spec := by
  intro n
  simp only [A173806, Nat.add_sub_cancel]

end A173806

/-! ## A173806.P10359894510440895122

`(7*10^(n+1)-61)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173806.P10359894510440895122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 10 ^ (n + 1) : ℤ) - 61 : ℚ) / 9

end

end A173806.P10359894510440895122

namespace A173806

/-- `(7*10^(n+1)-61)/9` -/
def P10359894510440895122.Spec : Prop :=
  ∀ n, P10359894510440895122.a n = (A173806 (n + 1) : ℚ)

theorem P10359894510440895122.correct : P10359894510440895122.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173806, Nat.add_sub_cancel, A173806.P10359894510440895122.a, A173806.P10434585059559630452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173806, Nat.add_sub_cancel, A173806.P10359894510440895122.a, A173806.P10434585059559630452.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173806

/-! ## A173806.P2340080965742037981

`∑[10*a(n-1)]-6` with `a(0)=7`
-/

namespace A173806.P2340080965742037981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A173806.P2340080965742037981

namespace A173806

/-- `∑[10*a(n-1)]-6` -/
def P2340080965742037981.Spec : Prop :=
  ∀ n, P2340080965742037981.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P1533318574957799008

`Δ[A099674(n)]-6`
-/

namespace A173806.P1533318574957799008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A173806.P1533318574957799008

namespace A173806

/-- `Δ[A099674(n)]-6` -/
def P1533318574957799008.Spec : Prop :=
  ∀ n, P1533318574957799008.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P11517273254561484118

`A173807(n+1)-2`
-/

namespace A173806.P11517273254561484118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173807 (n + 1) - 2

end

end A173806.P11517273254561484118

namespace A173806

/-- `A173807(n+1)-2` -/
def P11517273254561484118.Spec : Prop :=
  ∀ n, P11517273254561484118.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P5174721436763587496

`A002281(n+1)-6`
-/

namespace A173806.P5174721436763587496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 1) - 6

end

end A173806.P5174721436763587496

namespace A173806

/-- `A002281(n+1)-6` -/
def P5174721436763587496.Spec : Prop :=
  ∀ n, P5174721436763587496.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P12477526753664093266

`A173808(n+1)-8`
-/

namespace A173806.P12477526753664093266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173808 (n + 1) - 8

end

end A173806.P12477526753664093266

namespace A173806

/-- `A173808(n+1)-8` -/
def P12477526753664093266.Spec : Prop :=
  ∀ n, P12477526753664093266.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P13134372442879673385

`5*A099915(n)-4`
-/

namespace A173806.P13134372442879673385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099915 n - 4

end

end A173806.P13134372442879673385

namespace A173806

/-- `5*A099915(n)-4` -/
def P13134372442879673385.Spec : Prop :=
  ∀ n, P13134372442879673385.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P9816449222037704518

`∑[record[A196662(A030451(n))]]`
-/

namespace A173806.P9816449222037704518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 (A030451 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173806.P9816449222037704518

namespace A173806

/-- `∑[record[A196662(A030451(n))]]` -/
def P9816449222037704518.Spec : Prop :=
  ∀ n, P9816449222037704518.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P10439934698876861668

`abs(A002276(n)-A100412(n))`
-/

namespace A173806.P10439934698876861668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002276 n - A100412 n|

end

end A173806.P10439934698876861668

namespace A173806

/-- `abs(A002276(n)-A100412(n))` -/
def P10439934698876861668.Spec : Prop :=
  ∀ n, P10439934698876861668.a n = A173806 (n + 1)

end A173806

/-! ## A173806.P3091822279398034463

`∑[lcm(A011557(n), A196662(n))]`
-/

namespace A173806.P3091822279398034463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 n) (A196662 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173806.P3091822279398034463

namespace A173806

/-- `∑[lcm(A011557(n), A196662(n))]` -/
def P3091822279398034463.Spec : Prop :=
  ∀ n, (P3091822279398034463.a n : ℤ) = A173806 (n + 1)

end A173806

/-!
# A173807: a(n) = (7*10^n - 43)/9 for n > 0.

The programs for A173807, the canonical program `A173807.P9671840279853837958` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173807 has offset 1).

The definition of A173807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*10^(n+1)-43)/9` (program `A173807.P2648289764836098963`, by `A173807.P2648289764836098963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173807.P3953786561202060331

`ogf((3+40x)/(1-11x+10x^2))`
-/

namespace A173807.P3953786561202060331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 40] [1, -11, 10] n

end

end A173807.P3953786561202060331

namespace A173807

/-- `ogf((3+40x)/(1-11x+10x^2))` -/
def P3953786561202060331.Spec : Prop :=
  ∀ n, P3953786561202060331.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P9671840279853837958

`10*a(n-1)+43` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173807

/-- `10*a(n-1)+43` -/
def P9671840279853837958.Spec : Prop :=
  ∀ n, (P9671840279853837958.a n : ℤ) = A173807 (n + 1)

theorem P9671840279853837958.correct : P9671840279853837958.Spec := by
  intro n
  simp only [A173807, Nat.add_sub_cancel]

end A173807

/-! ## A173807.P2648289764836098963

`(7*10^(n+1)-43)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173807.P2648289764836098963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 10 ^ (n + 1) : ℤ) - 43 : ℚ) / 9

end

end A173807.P2648289764836098963

namespace A173807

/-- `(7*10^(n+1)-43)/9` -/
def P2648289764836098963.Spec : Prop :=
  ∀ n, P2648289764836098963.a n = (A173807 (n + 1) : ℚ)

theorem P2648289764836098963.correct : P2648289764836098963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173807, Nat.add_sub_cancel, A173807.P2648289764836098963.a, A173807.P9671840279853837958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173807, Nat.add_sub_cancel, A173807.P2648289764836098963.a, A173807.P9671840279853837958.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173807

/-! ## A173807.P18031731904009962121

`∑[10*a(n-1)]-4` with `a(0)=7`
-/

namespace A173807.P18031731904009962121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A173807.P18031731904009962121

namespace A173807

/-- `∑[10*a(n-1)]-4` -/
def P18031731904009962121.Spec : Prop :=
  ∀ n, P18031731904009962121.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P8580260376930734602

`Δ[A099674(n)]-4`
-/

namespace A173807.P8580260376930734602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A173807.P8580260376930734602

namespace A173807

/-- `Δ[A099674(n)]-4` -/
def P8580260376930734602.Spec : Prop :=
  ∀ n, P8580260376930734602.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P6589717619124632723

`A173806(n+1)+2`
-/

namespace A173807.P6589717619124632723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173806 (n + 1) + 2

end

end A173807.P6589717619124632723

namespace A173807

/-- `A173806(n+1)+2` -/
def P6589717619124632723.Spec : Prop :=
  ∀ n, P6589717619124632723.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P4053776735841363071

`A002281(n+1)-4`
-/

namespace A173807.P4053776735841363071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 1) - 4

end

end A173807.P4053776735841363071

namespace A173807

/-- `A002281(n+1)-4` -/
def P4053776735841363071.Spec : Prop :=
  ∀ n, P4053776735841363071.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P5012362353432762574

`A173808(n+1)-6`
-/

namespace A173807.P5012362353432762574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173808 (n + 1) - 6

end

end A173807.P5012362353432762574

namespace A173807

/-- `A173808(n+1)-6` -/
def P5012362353432762574.Spec : Prop :=
  ∀ n, P5012362353432762574.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P5802625478717381842

`5*A099915(n)-2`
-/

namespace A173807.P5802625478717381842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099915 n - 2

end

end A173807.P5802625478717381842

namespace A173807

/-- `5*A099915(n)-2` -/
def P5802625478717381842.Spec : Prop :=
  ∀ n, P5802625478717381842.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P5087265979505757895

`A173812(n+1)-2*A178769(n)`
-/

namespace A173807.P5087265979505757895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173812 (n + 1) - 2 * A178769 n

end

end A173807.P5087265979505757895

namespace A173807

/-- `A173812(n+1)-2*A178769(n)` -/
def P5087265979505757895.Spec : Prop :=
  ∀ n, P5087265979505757895.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P9108885267272715424

`A033175(n)+A033175(n)+A002275(n+1)`
-/

namespace A173807.P9108885267272715424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 n + (A033175 n + A002275 (n + 1))

end

end A173807.P9108885267272715424

namespace A173807

/-- `A033175(n)+A033175(n)+A002275(n+1)` -/
def P9108885267272715424.Spec : Prop :=
  ∀ n, P9108885267272715424.a n = A173807 (n + 1)

end A173807

/-! ## A173807.P1360763045904838942

`A002279(n+1)+A173804(n+1)-A002277(n+1)`
-/

namespace A173807.P1360763045904838942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) + (A173804 (n + 1) - A002277 (n + 1))

end

end A173807.P1360763045904838942

namespace A173807

/-- `A002279(n+1)+A173804(n+1)-A002277(n+1)` -/
def P1360763045904838942.Spec : Prop :=
  ∀ n, P1360763045904838942.a n = A173807 (n + 1)

end A173807

/-!
# A173808: a(n) = (7*10^n + 11)/9 for n > 0.

The programs for A173808, the canonical program `A173808.P859974266253433326` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173808 has offset 1).

The definition of A173808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*10^(n+1)+11)/9` (program `A173808.P5801752313658447840`, by `A173808.P5801752313658447840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173808.P14265846852856329155

`ogf((9-20x)/(1-11x+10x^2))`
-/

namespace A173808.P14265846852856329155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -20] [1, -11, 10] n

end

end A173808.P14265846852856329155

namespace A173808

/-- `ogf((9-20x)/(1-11x+10x^2))` -/
def P14265846852856329155.Spec : Prop :=
  ∀ n, P14265846852856329155.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P859974266253433326

`10*a(n-1)-11` with `a(0)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173808

/-- `10*a(n-1)-11` -/
def P859974266253433326.Spec : Prop :=
  ∀ n, P859974266253433326.a n = A173808 (n + 1)

theorem P859974266253433326.correct : P859974266253433326.Spec := by
  intro n
  simp only [A173808, Nat.add_sub_cancel]

end A173808

/-! ## A173808.P5801752313658447840

`(7*10^(n+1)+11)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173808.P5801752313658447840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 10 ^ (n + 1) + 11 : ℚ) / 9

end

end A173808.P5801752313658447840

namespace A173808

/-- `(7*10^(n+1)+11)/9` -/
def P5801752313658447840.Spec : Prop :=
  ∀ n, P5801752313658447840.a n = (A173808 (n + 1) : ℚ)

theorem P5801752313658447840.correct : P5801752313658447840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173808, Nat.add_sub_cancel, A173808.P5801752313658447840.a, A173808.P859974266253433326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173808, Nat.add_sub_cancel, A173808.P5801752313658447840.a, A173808.P859974266253433326.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173808

/-! ## A173808.P17906659606538962559

`lcm(10, a(n-1))-11` with `a(0)=9`
-/

namespace A173808.P17906659606538962559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 11

end

end A173808.P17906659606538962559

namespace A173808

/-- `lcm(10, a(n-1))-11` -/
def P17906659606538962559.Spec : Prop :=
  ∀ n, P17906659606538962559.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P16228464827223961412

`Δ[A099674(n)]+2`
-/

namespace A173808.P16228464827223961412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A173808.P16228464827223961412

namespace A173808

/-- `Δ[A099674(n)]+2` -/
def P16228464827223961412.Spec : Prop :=
  ∀ n, P16228464827223961412.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P4581613030064490499

`∑[xor(1, A199687(n))]`
-/

namespace A173808.P4581613030064490499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A199687 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173808.P4581613030064490499

namespace A173808

/-- `∑[xor(1, A199687(n))]` -/
def P4581613030064490499.Spec : Prop :=
  ∀ n, P4581613030064490499.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P4234883237434783534

`A002281(n+1)+2`
-/

namespace A173808.P4234883237434783534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 1) + 2

end

end A173808.P4234883237434783534

namespace A173808

/-- `A002281(n+1)+2` -/
def P4234883237434783534.Spec : Prop :=
  ∀ n, P4234883237434783534.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P12767739120928750449

`A173807(n+1)+6`
-/

namespace A173808.P12767739120928750449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173807 (n + 1) + 6

end

end A173808.P12767739120928750449

namespace A173808

/-- `A173807(n+1)+6` -/
def P12767739120928750449.Spec : Prop :=
  ∀ n, P12767739120928750449.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P9843966018479855503

`A173806(n+1)+8`
-/

namespace A173808.P9843966018479855503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173806 (n + 1) + 8

end

end A173808.P9843966018479855503

namespace A173808

/-- `A173806(n+1)+8` -/
def P9843966018479855503.Spec : Prop :=
  ∀ n, P9843966018479855503.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P7145536892410749676

`5*A099915(n)+4`
-/

namespace A173808.P7145536892410749676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A099915 n + 4

end

end A173808.P7145536892410749676

namespace A173808

/-- `5*A099915(n)+4` -/
def P7145536892410749676.Spec : Prop :=
  ∀ n, P7145536892410749676.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P2313931247947267319

`xor(1, 7*A002275(n+1)+1)`
-/

namespace A173808.P2313931247947267319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (7 * A002275 (n + 1) + 1)

end

end A173808.P2313931247947267319

namespace A173808

/-- `xor(1, 7*A002275(n+1)+1)` -/
def P2313931247947267319.Spec : Prop :=
  ∀ n, P2313931247947267319.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P611119372405483055

`∑[A090019(n)+A047900(n+1)]`
-/

namespace A173808.P611119372405483055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n + A047900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173808.P611119372405483055

namespace A173808

/-- `∑[A090019(n)+A047900(n+1)]` -/
def P611119372405483055.Spec : Prop :=
  ∀ n, P611119372405483055.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P10120513747425135546

`record[A050683(n+1)-A094623(n)]`
-/

namespace A173808.P10120513747425135546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) - A094623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173808.P10120513747425135546

namespace A173808

/-- `record[A050683(n+1)-A094623(n)]` -/
def P10120513747425135546.Spec : Prop :=
  ∀ n, P10120513747425135546.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P15810727855135311846

`A002283(n+1)-2*A105279(n)`
-/

namespace A173808.P15810727855135311846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - 2 * A105279 n

end

end A173808.P15810727855135311846

namespace A173808

/-- `A002283(n+1)-2*A105279(n)` -/
def P15810727855135311846.Spec : Prop :=
  ∀ n, P15810727855135311846.a n = A173808 (n + 1)

end A173808

/-! ## A173808.P7881711471157746633

`A093137(n+1)+A093137(n+1)+A002275(n+1)`
-/

namespace A173808.P7881711471157746633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (n + 1) + A093137 (n + 1) + A002275 (n + 1)

end

end A173808.P7881711471157746633

namespace A173808

/-- `A093137(n+1)+A093137(n+1)+A002275(n+1)` -/
def P7881711471157746633.Spec : Prop :=
  ∀ n, P7881711471157746633.a n = A173808 (n + 1)

end A173808

/-!
# A173809: a(2*n+1) = 1+A131941(2*n+1). a(2*n) = A131941(2*n).

The programs for A173809, the canonical program `A173809.P8295565182412756093` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173809 has offset 1).

The definition of A173809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173809.P8295565182412756093

`ogf((2-3x+4x^2-x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173809

/-- `ogf((2-3x+4x^2-x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P8295565182412756093.Spec : Prop :=
  ∀ n, P8295565182412756093.a n = A173809 (n + 1)

theorem P8295565182412756093.correct : P8295565182412756093.Spec := by
  intro n
  simp only [A173809, Nat.add_sub_cancel]

end A173809

/-! ## A173809.P659773471165754683

`∑[-xor(1, ∑[-or(1, n)])]`
-/

namespace A173809.P659773471165754683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lor 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P659773471165754683

namespace A173809

/-- `∑[-xor(1, ∑[-or(1, n)])]` -/
def P659773471165754683.Spec : Prop :=
  ∀ n, P659773471165754683.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P4210615310874706105

`∑[∑[or(1, n)]+(-1)^n]`
-/

namespace A173809.P4210615310874706105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P4210615310874706105

namespace A173809

/-- `∑[∑[or(1, n)]+(-1)^n]` -/
def P4210615310874706105.Spec : Prop :=
  ∀ n, P4210615310874706105.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P10727879750493632363

`∑[a(n-2)+2*n]` with `a(0)=2, a(1)=1`
-/

namespace A173809.P10727879750493632363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P10727879750493632363

namespace A173809

/-- `∑[a(n-2)+2*n]` -/
def P10727879750493632363.Spec : Prop :=
  ∀ n, (P10727879750493632363.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P11895266594504043205

`∑[a(n-2)+n+n]` with `a(0)=2, a(1)=1`
-/

namespace A173809.P11895266594504043205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P11895266594504043205

namespace A173809

/-- `∑[a(n-2)+n+n]` -/
def P11895266594504043205.Spec : Prop :=
  ∀ n, (P11895266594504043205.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P11991046274431892921

`∑[∑[or(1, n)]]+(n+1)%2`
-/

namespace A173809.P11991046274431892921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) % 2

end

end A173809.P11991046274431892921

namespace A173809

/-- `∑[∑[or(1, n)]]+(n+1)%2` -/
def P11991046274431892921.Spec : Prop :=
  ∀ n, (P11991046274431892921.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P5111190760915529558

`∑[∑[or(1, n)]]+and(1, n+1)`
-/

namespace A173809.P5111190760915529558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (n + 1)

end

end A173809.P5111190760915529558

namespace A173809

/-- `∑[∑[or(1, n)]]+and(1, n+1)` -/
def P5111190760915529558.Spec : Prop :=
  ∀ n, (P5111190760915529558.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P2203157709750543305

`∑[∑[2*n-a(n-1)]]` with `a(0)=2, a(1)=-1`
-/

namespace A173809.P2203157709750543305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P2203157709750543305

namespace A173809

/-- `∑[∑[2*n-a(n-1)]]` -/
def P2203157709750543305.Spec : Prop :=
  ∀ n, P2203157709750543305.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P9427883228315466056

`∑[n-∑[a(n-2)-2]]` with `a(0)=-2, a(1)=2`
-/

namespace A173809.P9427883228315466056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f2 =>
  f2 (n - 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P9427883228315466056

namespace A173809

/-- `∑[n-∑[a(n-2)-2]]` -/
def P9427883228315466056.Spec : Prop :=
  ∀ n, P9427883228315466056.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P3414551857268001772

`n+1+a(n-2)+n²` with `a(0)=2, a(1)=3`
-/

namespace A173809.P3414551857268001772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  n + 1 + (a (n - 2) + n ^ 2)

end

end A173809.P3414551857268001772

namespace A173809

/-- `n+1+a(n-2)+n²` -/
def P3414551857268001772.Spec : Prop :=
  ∀ n, (P3414551857268001772.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P14271664304269065774

`a(n-2)+n*(n+1)+1` with `a(0)=2, a(1)=3`
-/

namespace A173809.P14271664304269065774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (n * (n + 1) + 1)

end

end A173809.P14271664304269065774

namespace A173809

/-- `a(n-2)+n*(n+1)+1` -/
def P14271664304269065774.Spec : Prop :=
  ∀ n, (P14271664304269065774.a n : ℤ) = A173809 (n + 1)

end A173809

/-! ## A173809.P8779626593776449386

`∑[A326657(n)+1]`
-/

namespace A173809.P8779626593776449386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P8779626593776449386

namespace A173809

/-- `∑[A326657(n)+1]` -/
def P8779626593776449386.Spec : Prop :=
  ∀ n, P8779626593776449386.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P12355521267711529170

`∑[A084964(n)+∑[n]]`
-/

namespace A173809.P12355521267711529170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P12355521267711529170

namespace A173809

/-- `∑[A084964(n)+∑[n]]` -/
def P12355521267711529170.Spec : Prop :=
  ∀ n, P12355521267711529170.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P10595137968288653461

`∑[2*A097066(n)+n]`
-/

namespace A173809.P10595137968288653461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097066 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P10595137968288653461

namespace A173809

/-- `∑[2*A097066(n)+n]` -/
def P10595137968288653461.Spec : Prop :=
  ∀ n, P10595137968288653461.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P18089196302943271725

`∑[A099392(n+1)+xor(1, n)]`
-/

namespace A173809.P18089196302943271725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P18089196302943271725

namespace A173809

/-- `∑[A099392(n+1)+xor(1, n)]` -/
def P18089196302943271725.Spec : Prop :=
  ∀ n, P18089196302943271725.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P5762259882200260797

`comp[3*n]+A014112(n+1)-n`
-/

namespace A173809.P5762259882200260797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A014112 (n + 1) - (n : ℤ))

end

end A173809.P5762259882200260797

namespace A173809

/-- `comp[3*n]+A014112(n+1)-n` -/
def P5762259882200260797.Spec : Prop :=
  ∀ n, P5762259882200260797.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P8737838159195837451

`∑[∑[A109613(n)]]-val(n²+1, 2)+1`
-/

namespace A173809.P8737838159195837451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ) + 1

end

end A173809.P8737838159195837451

namespace A173809

/-- `∑[∑[A109613(n)]]-val(n²+1, 2)+1` -/
def P8737838159195837451.Spec : Prop :=
  ∀ n, P8737838159195837451.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P708640279422050938

`A014112(n+1)+A008619(n)`
-/

namespace A173809.P708640279422050938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1) + A008619 n

end

end A173809.P708640279422050938

namespace A173809

/-- `A014112(n+1)+A008619(n)` -/
def P708640279422050938.Spec : Prop :=
  ∀ n, P708640279422050938.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P5256531920669839852

`A168380(n+1)-A135276(n)`
-/

namespace A173809.P5256531920669839852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1) - A135276 n

end

end A173809.P5256531920669839852

namespace A173809

/-- `A168380(n+1)-A135276(n)` -/
def P5256531920669839852.Spec : Prop :=
  ∀ n, P5256531920669839852.a n = A173809 (n + 1)

end A173809

/-! ## A173809.P3875380088229145873

`∑[A028242(n)+∑[A004442(n)]]`
-/

namespace A173809.P3875380088229145873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173809.P3875380088229145873

namespace A173809

/-- `∑[A028242(n)+∑[A004442(n)]]` -/
def P3875380088229145873.Spec : Prop :=
  ∀ n, P3875380088229145873.a n = A173809 (n + 1)

end A173809

/-!
# A173810: a(n) = (8*10^n - 71)/9 for n > 0.

The programs for A173810, the canonical program `A173810.P6540871740987554199` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173810 has offset 1).

The definition of A173810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*10^(n+1)-71)/9` (program `A173810.P14893860985501700510`, by `A173810.P14893860985501700510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173810.P18030618328397333360

`ogf((1+70x)/(1-11x+10x^2))`
-/

namespace A173810.P18030618328397333360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 70] [1, -11, 10] n

end

end A173810.P18030618328397333360

namespace A173810

/-- `ogf((1+70x)/(1-11x+10x^2))` -/
def P18030618328397333360.Spec : Prop :=
  ∀ n, P18030618328397333360.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P6540871740987554199

`10*a(n-1)+71` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173810

/-- `10*a(n-1)+71` -/
def P6540871740987554199.Spec : Prop :=
  ∀ n, (P6540871740987554199.a n : ℤ) = A173810 (n + 1)

theorem P6540871740987554199.correct : P6540871740987554199.Spec := by
  intro n
  simp only [A173810, Nat.add_sub_cancel]

end A173810

/-! ## A173810.P14893860985501700510

`(8*10^(n+1)-71)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173810.P14893860985501700510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 1) : ℤ) - 71 : ℚ) / 9

end

end A173810.P14893860985501700510

namespace A173810

/-- `(8*10^(n+1)-71)/9` -/
def P14893860985501700510.Spec : Prop :=
  ∀ n, P14893860985501700510.a n = (A173810 (n + 1) : ℚ)

theorem P14893860985501700510.correct : P14893860985501700510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173810, Nat.add_sub_cancel, A173810.P14893860985501700510.a, A173810.P6540871740987554199.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173810, Nat.add_sub_cancel, A173810.P14893860985501700510.a, A173810.P6540871740987554199.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173810

/-! ## A173810.P2126323981237428864

`xor(9, ∑[8*10^n])`
-/

namespace A173810.P2126323981237428864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173810.P2126323981237428864

namespace A173810

/-- `xor(9, ∑[8*10^n])` -/
def P2126323981237428864.Spec : Prop :=
  ∀ n, (P2126323981237428864.a n : ℤ) = A173810 (n + 1)

end A173810

/-! ## A173810.P5623746429712287781

`∑[10*a(n-1)]` with `a(0)=1, a(1)=80`
-/

namespace A173810.P5623746429712287781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 80] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173810.P5623746429712287781

namespace A173810

/-- `∑[10*a(n-1)]` -/
def P5623746429712287781.Spec : Prop :=
  ∀ n, (P5623746429712287781.a n : ℤ) = A173810 (n + 1)

end A173810

/-! ## A173810.P8957144816772577352

`A173811(n+1)-2`
-/

namespace A173810.P8957144816772577352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (n + 1) - 2

end

end A173810.P8957144816772577352

namespace A173810

/-- `A173811(n+1)-2` -/
def P8957144816772577352.Spec : Prop :=
  ∀ n, P8957144816772577352.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P5822408147885558947

`A173812(n+1)-6`
-/

namespace A173810.P5822408147885558947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173812 (n + 1) - 6

end

end A173810.P5822408147885558947

namespace A173810

/-- `A173812(n+1)-6` -/
def P5822408147885558947.Spec : Prop :=
  ∀ n, P5822408147885558947.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P3319291436109367486

`A002282(n+1)-7`
-/

namespace A173810.P3319291436109367486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1) - 7

end

end A173810.P3319291436109367486

namespace A173810

/-- `A002282(n+1)-7` -/
def P3319291436109367486.Spec : Prop :=
  ∀ n, P3319291436109367486.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P8748324733191296694

`A059482(n+1)-8`
-/

namespace A173810.P8748324733191296694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (n + 1) - 8

end

end A173810.P8748324733191296694

namespace A173810

/-- `A059482(n+1)-8` -/
def P8748324733191296694.Spec : Prop :=
  ∀ n, P8748324733191296694.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P1976657925824120131

`5*A246058(n)-4`
-/

namespace A173810.P1976657925824120131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246058 n - 4

end

end A173810.P1976657925824120131

namespace A173810

/-- `5*A246058(n)-4` -/
def P1976657925824120131.Spec : Prop :=
  ∀ n, P1976657925824120131.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P12529101321595567957

`2*A173768(n+1)-1`
-/

namespace A173810.P12529101321595567957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173768 (n + 1) - 1

end

end A173810.P12529101321595567957

namespace A173810

/-- `2*A173768(n+1)-1` -/
def P12529101321595567957.Spec : Prop :=
  ∀ n, P12529101321595567957.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P10401094005353787647

`4*A165402(n+1)-3`
-/

namespace A173810.P10401094005353787647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165402 (n + 1) - 3

end

end A173810.P10401094005353787647

namespace A173810

/-- `4*A165402(n+1)-3` -/
def P10401094005353787647.Spec : Prop :=
  ∀ n, P10401094005353787647.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P11751891277295747160

`2*A173770(n+1)-5`
-/

namespace A173810.P11751891277295747160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173770 (n + 1) - 5

end

end A173810.P11751891277295747160

namespace A173810

/-- `2*A173770(n+1)-5` -/
def P11751891277295747160.Spec : Prop :=
  ∀ n, P11751891277295747160.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P11286232977990971232

`A237346(A017173(n))`
-/

namespace A173810.P11286232977990971232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 (A017173 n).toNat

end

end A173810.P11286232977990971232

namespace A173810

/-- `A237346(A017173(n))` -/
def P11286232977990971232.Spec : Prop :=
  ∀ n, P11286232977990971232.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P10489729044494988409

`A237346(A017197(n)-2)`
-/

namespace A173810.P10489729044494988409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 (A017197 n - 2).toNat

end

end A173810.P10489729044494988409

namespace A173810

/-- `A237346(A017197(n)-2)` -/
def P10489729044494988409.Spec : Prop :=
  ∀ n, P10489729044494988409.a n = A173810 (n + 1)

end A173810

/-! ## A173810.P9041764339549291880

`∑[A057427(n)*A198973(n)+1]`
-/

namespace A173810.P9041764339549291880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A198973 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173810.P9041764339549291880

namespace A173810

/-- `∑[A057427(n)*A198973(n)+1]` -/
def P9041764339549291880.Spec : Prop :=
  ∀ n, P9041764339549291880.a n = A173810 (n + 1)

end A173810

/-!
# A173811: a(n) = (8*10^n - 53)/9 for n > 0.

The programs for A173811, the canonical program `A173811.P7057217318487397070` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173811 has offset 1).

The definition of A173811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*10^(n+1)-53)/9` (program `A173811.P2471339482217549930`, by `A173811.P2471339482217549930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173811.P907825140321648559

`ogf((3+50x)/(1-11x+10x^2))`
-/

namespace A173811.P907825140321648559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 50] [1, -11, 10] n

end

end A173811.P907825140321648559

namespace A173811

/-- `ogf((3+50x)/(1-11x+10x^2))` -/
def P907825140321648559.Spec : Prop :=
  ∀ n, P907825140321648559.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P7057217318487397070

`10*a(n-1)+53` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173811

/-- `10*a(n-1)+53` -/
def P7057217318487397070.Spec : Prop :=
  ∀ n, (P7057217318487397070.a n : ℤ) = A173811 (n + 1)

theorem P7057217318487397070.correct : P7057217318487397070.Spec := by
  intro n
  simp only [A173811, Nat.add_sub_cancel]

end A173811

/-! ## A173811.P2471339482217549930

`(8*10^(n+1)-53)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173811.P2471339482217549930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 1) : ℤ) - 53 : ℚ) / 9

end

end A173811.P2471339482217549930

namespace A173811

/-- `(8*10^(n+1)-53)/9` -/
def P2471339482217549930.Spec : Prop :=
  ∀ n, P2471339482217549930.a n = (A173811 (n + 1) : ℚ)

theorem P2471339482217549930.correct : P2471339482217549930.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173811, Nat.add_sub_cancel, A173811.P2471339482217549930.a, A173811.P7057217318487397070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173811, Nat.add_sub_cancel, A173811.P2471339482217549930.a, A173811.P7057217318487397070.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173811

/-! ## A173811.P2728188470668187525

`xor(11, ∑[8*10^n])`
-/

namespace A173811.P2728188470668187525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 11 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173811.P2728188470668187525

namespace A173811

/-- `xor(11, ∑[8*10^n])` -/
def P2728188470668187525.Spec : Prop :=
  ∀ n, (P2728188470668187525.a n : ℤ) = A173811 (n + 1)

end A173811

/-! ## A173811.P11056904431927116231

`∑[10*a(n-1)]` with `a(0)=3, a(1)=80`
-/

namespace A173811.P11056904431927116231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 80] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173811.P11056904431927116231

namespace A173811

/-- `∑[10*a(n-1)]` -/
def P11056904431927116231.Spec : Prop :=
  ∀ n, (P11056904431927116231.a n : ℤ) = A173811 (n + 1)

end A173811

/-! ## A173811.P13129188258434014326

`A173810(n+1)+2`
-/

namespace A173811.P13129188258434014326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1) + 2

end

end A173811.P13129188258434014326

namespace A173811

/-- `A173810(n+1)+2` -/
def P13129188258434014326.Spec : Prop :=
  ∀ n, P13129188258434014326.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P8013270589248962445

`A173812(n+1)-4`
-/

namespace A173811.P8013270589248962445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173812 (n + 1) - 4

end

end A173811.P8013270589248962445

namespace A173811

/-- `A173812(n+1)-4` -/
def P8013270589248962445.Spec : Prop :=
  ∀ n, P8013270589248962445.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P16472705384374727258

`A002282(n+1)-5`
-/

namespace A173811.P16472705384374727258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1) - 5

end

end A173811.P16472705384374727258

namespace A173811

/-- `A002282(n+1)-5` -/
def P16472705384374727258.Spec : Prop :=
  ∀ n, P16472705384374727258.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P1817717241884583710

`A059482(n+1)-6`
-/

namespace A173811.P1817717241884583710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (n + 1) - 6

end

end A173811.P1817717241884583710

namespace A173811

/-- `A059482(n+1)-6` -/
def P1817717241884583710.Spec : Prop :=
  ∀ n, P1817717241884583710.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P16953667980354780612

`5*A246058(n)-2`
-/

namespace A173811.P16953667980354780612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246058 n - 2

end

end A173811.P16953667980354780612

namespace A173811

/-- `5*A246058(n)-2` -/
def P16953667980354780612.Spec : Prop :=
  ∀ n, P16953667980354780612.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P10900226221368158307

`2*A173768(n+1)+1`
-/

namespace A173811.P10900226221368158307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173768 (n + 1) + 1

end

end A173811.P10900226221368158307

namespace A173811

/-- `2*A173768(n+1)+1` -/
def P10900226221368158307.Spec : Prop :=
  ∀ n, P10900226221368158307.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P15325432432236793503

`4*A165402(n+1)-1`
-/

namespace A173811.P15325432432236793503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165402 (n + 1) - 1

end

end A173811.P15325432432236793503

namespace A173811

/-- `4*A165402(n+1)-1` -/
def P15325432432236793503.Spec : Prop :=
  ∀ n, P15325432432236793503.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P3651882970806147813

`2*A173770(n+1)-3`
-/

namespace A173811.P3651882970806147813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173770 (n + 1) - 3

end

end A173811.P3651882970806147813

namespace A173811

/-- `2*A173770(n+1)-3` -/
def P3651882970806147813.Spec : Prop :=
  ∀ n, P3651882970806147813.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P14990371121491613121

`A237346(A017197(n))`
-/

namespace A173811.P14990371121491613121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 (A017197 n).toNat

end

end A173811.P14990371121491613121

namespace A173811

/-- `A237346(A017197(n))` -/
def P14990371121491613121.Spec : Prop :=
  ∀ n, P14990371121491613121.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P5354352056080216055

`A237346(A017173(n)+2)`
-/

namespace A173811.P5354352056080216055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 (A017173 n + 2).toNat

end

end A173811.P5354352056080216055

namespace A173811

/-- `A237346(A017173(n)+2)` -/
def P5354352056080216055.Spec : Prop :=
  ∀ n, P5354352056080216055.a n = A173811 (n + 1)

end A173811

/-! ## A173811.P12093318728666355659

`A173833(n+1)-A173735(n+1)`
-/

namespace A173811.P12093318728666355659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173833 (n + 1) - A173735 (n + 1)

end

end A173811.P12093318728666355659

namespace A173811

/-- `A173833(n+1)-A173735(n+1)` -/
def P12093318728666355659.Spec : Prop :=
  ∀ n, P12093318728666355659.a n = A173811 (n + 1)

end A173811

/-!
# A173812: a(n) = (8*10^n - 17)/9 for n > 0.

The programs for A173812, the canonical program `A173812.P17060770515843480618` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173812 has offset 1).

The definition of A173812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*10^(n+1)-17)/9` (program `A173812.P16667889868459473689`, by `A173812.P16667889868459473689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173812.P13780275845056154218

`ogf((7+10x)/(1-11x+10x^2))`
-/

namespace A173812.P13780275845056154218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10] [1, -11, 10] n

end

end A173812.P13780275845056154218

namespace A173812

/-- `ogf((7+10x)/(1-11x+10x^2))` -/
def P13780275845056154218.Spec : Prop :=
  ∀ n, P13780275845056154218.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P17060770515843480618

`10*a(n-1)+17` with `a(0)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173812

/-- `10*a(n-1)+17` -/
def P17060770515843480618.Spec : Prop :=
  ∀ n, (P17060770515843480618.a n : ℤ) = A173812 (n + 1)

theorem P17060770515843480618.correct : P17060770515843480618.Spec := by
  intro n
  simp only [A173812, Nat.add_sub_cancel]

end A173812

/-! ## A173812.P16667889868459473689

`(8*10^(n+1)-17)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173812.P16667889868459473689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (n + 1) : ℤ) - 17 : ℚ) / 9

end

end A173812.P16667889868459473689

namespace A173812

/-- `(8*10^(n+1)-17)/9` -/
def P16667889868459473689.Spec : Prop :=
  ∀ n, P16667889868459473689.a n = (A173812 (n + 1) : ℚ)

theorem P16667889868459473689.correct : P16667889868459473689.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173812, Nat.add_sub_cancel, A173812.P16667889868459473689.a, A173812.P17060770515843480618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173812, Nat.add_sub_cancel, A173812.P16667889868459473689.a, A173812.P17060770515843480618.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173812

/-! ## A173812.P3143733581353049660

`or(17, 10*a(n-1))` with `a(0)=7`
-/

namespace A173812.P3143733581353049660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 17 (10 * a (n - 1))

end

end A173812.P3143733581353049660

namespace A173812

/-- `or(17, 10*a(n-1))` -/
def P3143733581353049660.Spec : Prop :=
  ∀ n, (P3143733581353049660.a n : ℤ) = A173812 (n + 1)

end A173812

/-! ## A173812.P3448788259843387984

`xor(17, 10*a(n-1))` with `a(0)=7`
-/

namespace A173812.P3448788259843387984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 17 (10 * a (n - 1))

end

end A173812.P3448788259843387984

namespace A173812

/-- `xor(17, 10*a(n-1))` -/
def P3448788259843387984.Spec : Prop :=
  ∀ n, (P3448788259843387984.a n : ℤ) = A173812 (n + 1)

end A173812

/-! ## A173812.P9819144221139336278

`or(21, lcm(10, a(n-1)))` with `a(0)=7`
-/

namespace A173812.P9819144221139336278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 21 (Nat.lcm 10 (a (n - 1)))

end

end A173812.P9819144221139336278

namespace A173812

/-- `or(21, lcm(10, a(n-1)))` -/
def P9819144221139336278.Spec : Prop :=
  ∀ n, (P9819144221139336278.a n : ℤ) = A173812 (n + 1)

end A173812

/-! ## A173812.P16312459544899673129

`∑[10*a(n-1)]-1` with `a(0)=8`
-/

namespace A173812.P16312459544899673129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173812.P16312459544899673129

namespace A173812

/-- `∑[10*a(n-1)]-1` -/
def P16312459544899673129.Spec : Prop :=
  ∀ n, P16312459544899673129.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P5615756289881994462

`A002282(n+1)-1`
-/

namespace A173812.P5615756289881994462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 (n + 1) - 1

end

end A173812.P5615756289881994462

namespace A173812

/-- `A002282(n+1)-1` -/
def P5615756289881994462.Spec : Prop :=
  ∀ n, P5615756289881994462.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P10930109316601636300

`A059482(n+1)-2`
-/

namespace A173812.P10930109316601636300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (n + 1) - 2

end

end A173812.P10930109316601636300

namespace A173812

/-- `A059482(n+1)-2` -/
def P10930109316601636300.Spec : Prop :=
  ∀ n, P10930109316601636300.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P3684662321676507048

`A173811(n+1)+4`
-/

namespace A173812.P3684662321676507048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (n + 1) + 4

end

end A173812.P3684662321676507048

namespace A173812

/-- `A173811(n+1)+4` -/
def P3684662321676507048.Spec : Prop :=
  ∀ n, P3684662321676507048.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P11594998798080987699

`A173810(n+1)+6`
-/

namespace A173812.P11594998798080987699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1) + 6

end

end A173812.P11594998798080987699

namespace A173812

/-- `A173810(n+1)+6` -/
def P11594998798080987699.Spec : Prop :=
  ∀ n, P11594998798080987699.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P13838364269395487745

`5*A246058(n)+2`
-/

namespace A173812.P13838364269395487745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246058 n + 2

end

end A173812.P13838364269395487745

namespace A173812

/-- `5*A246058(n)+2` -/
def P13838364269395487745.Spec : Prop :=
  ∀ n, P13838364269395487745.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P9105312760629054769

`10*A002282(n)+7`
-/

namespace A173812.P9105312760629054769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002282 n + 7

end

end A173812.P9105312760629054769

namespace A173812

/-- `10*A002282(n)+7` -/
def P9105312760629054769.Spec : Prop :=
  ∀ n, P9105312760629054769.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P17879960751111996886

`2*A173770(n+1)+1`
-/

namespace A173812.P17879960751111996886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173770 (n + 1) + 1

end

end A173812.P17879960751111996886

namespace A173812

/-- `2*A173770(n+1)+1` -/
def P17879960751111996886.Spec : Prop :=
  ∀ n, P17879960751111996886.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P5853343636899160481

`A249572(2*(n+1))-1`
-/

namespace A173812.P5853343636899160481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 (2 * (n + 1)) - 1

end

end A173812.P5853343636899160481

namespace A173812

/-- `A249572(2*(n+1))-1` -/
def P5853343636899160481.Spec : Prop :=
  ∀ n, P5853343636899160481.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P9582302487352995200

`A363377(2*(n+1))-1`
-/

namespace A173812.P9582302487352995200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363377 (2 * (n + 1)) - 1

end

end A173812.P9582302487352995200

namespace A173812

/-- `A363377(2*(n+1))-1` -/
def P9582302487352995200.Spec : Prop :=
  ∀ n, P9582302487352995200.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P14370449322309201917

`A328333(2*(n+1))-2`
-/

namespace A173812.P14370449322309201917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * (n + 1)) - 2

end

end A173812.P14370449322309201917

namespace A173812

/-- `A328333(2*(n+1))-2` -/
def P14370449322309201917.Spec : Prop :=
  ∀ n, P14370449322309201917.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P7184161542774801107

`A250256(2*n+3)-1`
-/

namespace A173812.P7184161542774801107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250256 (2 * n + 3) - 1

end

end A173812.P7184161542774801107

namespace A173812

/-- `A250256(2*n+3)-1` -/
def P7184161542774801107.Spec : Prop :=
  ∀ n, P7184161542774801107.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P2544926444937487377

`4*A165402(n+1)+3`
-/

namespace A173812.P2544926444937487377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165402 (n + 1) + 3

end

end A173812.P2544926444937487377

namespace A173812

/-- `4*A165402(n+1)+3` -/
def P2544926444937487377.Spec : Prop :=
  ∀ n, P2544926444937487377.a n = A173812 (n + 1)

end A173812

/-! ## A173812.P12944328009541896578

`2*A173768(n+1)+5`
-/

namespace A173812.P12944328009541896578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173768 (n + 1) + 5

end

end A173812.P12944328009541896578

namespace A173812

/-- `2*A173768(n+1)+5` -/
def P12944328009541896578.Spec : Prop :=
  ∀ n, P12944328009541896578.a n = A173812 (n + 1)

end A173812

/-!
# A173813: 2*(10^n-5), n>0.

The programs for A173813, the canonical program `A173813.P6758449640873830313` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173813 has offset 1).

The definition of A173813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(10^(n+1)-5)` (program `A173813.P6758449640873830313`, by `A173813.P6758449640873830313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173813.P1120268454363189658

`ogf((10+80x)/(1-11x+10x^2))`
-/

namespace A173813.P1120268454363189658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 80] [1, -11, 10] n

end

end A173813.P1120268454363189658

namespace A173813

/-- `ogf((10+80x)/(1-11x+10x^2))` -/
def P1120268454363189658.Spec : Prop :=
  ∀ n, P1120268454363189658.a n = A173813 (n + 1)

end A173813

/-! ## A173813.P6758449640873830313

`2*(10^(n+1)-5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173813

/-- `2*(10^(n+1)-5)` -/
def P6758449640873830313.Spec : Prop :=
  ∀ n, P6758449640873830313.a n = A173813 (n + 1)

theorem P6758449640873830313.correct : P6758449640873830313.Spec := by
  intro n
  simp only [A173813, Nat.add_sub_cancel]

end A173813

/-! ## A173813.P9743893969690837630

`lcm(2, 5-10^(n+1))`
-/

namespace A173813.P9743893969690837630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (5 - (10 ^ (n + 1) : ℤ))

end

end A173813.P9743893969690837630

namespace A173813

/-- `lcm(2, 5-10^(n+1))` -/
def P9743893969690837630.Spec : Prop :=
  ∀ n, (P9743893969690837630.a n : ℤ) = A173813 (n + 1)

end A173813

/-! ## A173813.P2066636585159293006

`xor(1, 20*10^n-9)`
-/

namespace A173813.P2066636585159293006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((20 * 10 ^ n : ℤ) - 9)

end

end A173813.P2066636585159293006

namespace A173813

/-- `xor(1, 20*10^n-9)` -/
def P2066636585159293006.Spec : Prop :=
  ∀ n, P2066636585159293006.a n = A173813 (n + 1)

end A173813

/-! ## A173813.P2736726050529049082

`abs(10*(a(n-1)+9))` with `a(0)=10`
-/

namespace A173813.P2736726050529049082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  10 * (a (n - 1) + 9)

end

end A173813.P2736726050529049082

namespace A173813

/-- `abs(10*(a(n-1)+9))` -/
def P2736726050529049082.Spec : Prop :=
  ∀ n, (P2736726050529049082.a n : ℤ) = A173813 (n + 1)

theorem P2736726050529049082.correct : P2736726050529049082.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173813, Nat.add_sub_cancel, A173813.P2736726050529049082.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173813, Nat.add_sub_cancel, A173813.P2736726050529049082.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173813

/-! ## A173813.P9407978408931665949

`floor(10*(a(n-1)+9))` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A173813.P9407978408931665949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  10 * (a (n - 1) + 9)

end

end A173813.P9407978408931665949

namespace A173813

/-- `floor(10*(a(n-1)+9))` -/
def P9407978408931665949.Spec : Prop :=
  ∀ n, (P9407978408931665949.a n : ℤ) = A173813 (n + 1)

theorem P9407978408931665949.correct : P9407978408931665949.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173813, Nat.add_sub_cancel, A173813.P9407978408931665949.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173813, Nat.add_sub_cancel, A173813.P9407978408931665949.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173813

/-! ## A173813.P16012483632895368506

`ceil(10*(a(n-1)+9))` with `a(0)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A173813.P16012483632895368506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  10 * (a (n - 1) + 9)

end

end A173813.P16012483632895368506

namespace A173813

/-- `ceil(10*(a(n-1)+9))` -/
def P16012483632895368506.Spec : Prop :=
  ∀ n, (P16012483632895368506.a n : ℤ) = A173813 (n + 1)

theorem P16012483632895368506.correct : P16012483632895368506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173813, Nat.add_sub_cancel, A173813.P16012483632895368506.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173813, Nat.add_sub_cancel, A173813.P16012483632895368506.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173813

/-! ## A173813.P10444157296868976140

`round(10*(a(n-1)+9))` with `a(0)=10`

`round` is left out, it is the identity on integers.
-/

namespace A173813.P10444157296868976140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  10 * (a (n - 1) + 9)

end

end A173813.P10444157296868976140

namespace A173813

/-- `round(10*(a(n-1)+9))` -/
def P10444157296868976140.Spec : Prop :=
  ∀ n, (P10444157296868976140.a n : ℤ) = A173813 (n + 1)

theorem P10444157296868976140.correct : P10444157296868976140.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173813, Nat.add_sub_cancel, A173813.P10444157296868976140.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173813, Nat.add_sub_cancel, A173813.P10444157296868976140.a, A173813.P6758449640873830313.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173813

/-! ## A173813.P7735176037937923412

`A185123(n)-1`
-/

namespace A173813.P7735176037937923412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185123 n - 1

end

end A173813.P7735176037937923412

namespace A173813

/-- `A185123(n)-1` -/
def P7735176037937923412.Spec : Prop :=
  ∀ n, P7735176037937923412.a n = A173813 (n + 1)

theorem P7735176037937923412.correct : P7735176037937923412.Spec := by
  intro n
  simp only [A173813, Nat.add_sub_cancel, A173813.P7735176037937923412.a, A173813.P6758449640873830313.a, A185123, A185123.P4520854506884375301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173813

/-! ## A173813.P2355115733473338089

`A086948(n+1)-2`
-/

namespace A173813.P2355115733473338089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086948 (n + 1) - 2

end

end A173813.P2355115733473338089

namespace A173813

/-- `A086948(n+1)-2` -/
def P2355115733473338089.Spec : Prop :=
  ∀ n, P2355115733473338089.a n = A173813 (n + 1)

end A173813

/-!
# A173815: Sum of the numbers in the n-th row of Gilbreath's triangle (A036261).

The programs for A173815, there is no canonical definition to state claims against.
-/

/-! ## A173815.P2099423352663800423

`2*A330026(n+2)-1`
-/

namespace A173815.P2099423352663800423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330026 (n + 2) - 1

end

end A173815.P2099423352663800423

/-! ## A173815.P8905164396495956241

`∑[2*Δ[A330026(n+1)]]+1`
-/

namespace A173815.P8905164396495956241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173815.P8905164396495956241

/-! ## A173815.P3992480343135582033

`A004273(A330026(n+2))`
-/

namespace A173815.P3992480343135582033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A330026 (n + 2)).toNat

end

end A173815.P3992480343135582033

/-! ## A173815.P7662632660668828642

`A005408(A330026(n+2)-1)`
-/

namespace A173815.P7662632660668828642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330026 (n + 2) - 1).toNat

end

end A173815.P7662632660668828642

/-! ## A173815.P822749555868902122

`A330492(4*A330026(n+2))`
-/

namespace A173815.P822749555868902122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (4 * A330026 (n + 2)).toNat

end

end A173815.P822749555868902122

/-! ## A173815.P17980792560910356004

`or(1, A004277(A330026(n+2)-1))`
-/

namespace A173815.P17980792560910356004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004277 (A330026 (n + 2) - 1).toNat)

end

end A173815.P17980792560910356004

/-! ## A173815.P10810613629322363395

`A247328(A330026(A065475(n+1)))`
-/

namespace A173815.P10810613629322363395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (A330026 (A065475 (n + 1)).toNat).toNat

end

end A173815.P10810613629322363395

/-! ## A173815.P15500596429373477335

`A317439(A330026(A317440(n+1)-n))`
-/

namespace A173815.P15500596429373477335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (A330026 (A317440 (n + 1) - (n : ℤ)).toNat).toNat

end

end A173815.P15500596429373477335

/-! ## A173815.P11920858169577085028

`A330026(n+2)+A330026(n+2)-A054977(n+1)`
-/

namespace A173815.P11920858169577085028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 2) + (A330026 (n + 2) - A054977 (n + 1))

end

end A173815.P11920858169577085028

/-! ## A173815.P6617366122217088717

`2*A173817(n+2)-A000040(n+2)`
-/

namespace A173815.P6617366122217088717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173817 (n + 2) - A000040 (n + 2)

end

end A173815.P6617366122217088717

/-!
# A173816: The sum of the numbers in the n-th antidiagonal of Gilbreath's array (A036262).

The programs for A173816, there is no canonical definition to state claims against.
-/

/-! ## A173816.P6872320025440939088

`2*A173817(n+1)`
-/

namespace A173816.P6872320025440939088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173817 (n + 1)

end

end A173816.P6872320025440939088

/-! ## A173816.P3784328540012114333

`A004277(A173817(n+1))`
-/

namespace A173816.P3784328540012114333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173817 (n + 1)).toNat

end

end A173816.P3784328540012114333

/-! ## A173816.P552895881259931188

`A004275(A173817(n+1)+1)`
-/

namespace A173816.P552895881259931188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A173817 (n + 1) + 1).toNat

end

end A173816.P552895881259931188

/-! ## A173816.P8265288499885444344

`A005843(and(-1, A173817(n+1)))`
-/

namespace A173816.P8265288499885444344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (-1) (A173817 (n + 1))).toNat

end

end A173816.P8265288499885444344

/-! ## A173816.P8962962985651576306

`A004273(A173817(n+1)+1)-1`
-/

namespace A173816.P8962962985651576306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A173817 (n + 1) + 1).toNat - 1

end

end A173816.P8962962985651576306

/-! ## A173816.P10790913414776220684

`A005408(A173817(n+1)-1)+1`
-/

namespace A173816.P10790913414776220684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A173817 (n + 1) - 1).toNat + 1

end

end A173816.P10790913414776220684

/-! ## A173816.P9136716349481070543

`A317107(A173817(n+1)+1)-1`
-/

namespace A173816.P9136716349481070543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (A173817 (n + 1) + 1).toNat - 1

end

end A173816.P9136716349481070543

/-! ## A173816.P9931846002119781632

`A063041(A173817(n+1)/(1-3/4))`
-/

namespace A173816.P9931846002119781632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (SequenceMachineLib.roundAway ((A173817 (n + 1) : ℚ) / (1 - (3 : ℚ) / 4))).toNat

end

end A173816.P9931846002119781632

/-! ## A173816.P16350688778709137659

`2*(A330026(n+1)+A102781(n+1))`
-/

namespace A173816.P16350688778709137659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A330026 (n + 1) + A102781 (n + 1))

end

end A173816.P16350688778709137659

/-! ## A173816.P1848835589265039957

`A173817(n+1)/2^A008683(A133410(n))`
-/

namespace A173816.P1848835589265039957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173817 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ)

end

end A173816.P1848835589265039957

/-!
# A173817: The half of sum of the numbers in the n-th row of Gilbreath's triangle (A036262).

The programs for A173817, there is no canonical definition to state claims against.
-/

/-! ## A173817.P4702180707743206207

`A173816(n+1)/2`
-/

namespace A173817.P4702180707743206207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173816 (n + 1) : ℚ) / 2

end

end A173817.P4702180707743206207

/-! ## A173817.P572099423794352743

`A330026(n+1)+A102781(n+1)`
-/

namespace A173817.P572099423794352743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + A102781 (n + 1)

end

end A173817.P572099423794352743

/-! ## A173817.P13824872221947206760

`A330026(n+1)+record[A104512(n+1)]`
-/

namespace A173817.P13824872221947206760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173817.P13824872221947206760

/-! ## A173817.P11337639320939731432

`A330026(n+1)+lt[A001222(2*n+1), 2]`
-/

namespace A173817.P11337639320939731432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A173817.P11337639320939731432

/-! ## A173817.P17607997562531983781

`A330026(n+1)+A004524(Δ[A007504(n)])`
-/

namespace A173817.P17607997562531983781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + A004524 (f1 (n + 1) - f1 n).toNat

end

end A173817.P17607997562531983781

/-! ## A173817.P17135686244573905399

`A330026(n+1)+A004524(A000040(n+1))`
-/

namespace A173817.P17135686244573905399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + A004524 (A000040 (n + 1)).toNat

end

end A173817.P17135686244573905399

/-! ## A173817.P11127731552344859759

`A330026(n+1)+A004526(A006093(n+1))`
-/

namespace A173817.P11127731552344859759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + A004526 (A006093 (n + 1)).toNat

end

end A173817.P11127731552344859759

/-! ## A173817.P12897575338868970160

`A330026(n+1)+A001057(A040976(n+1))`
-/

namespace A173817.P12897575338868970160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + A001057 (A040976 (n + 1)).toNat

end

end A173817.P12897575338868970160

/-! ## A173817.P2101498291794868676

`floor((A173815(A028310(n))+A000040(n+1))/2)`
-/

namespace A173817.P2101498291794868676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173815 (A028310 n).toNat + A000040 (n + 1) : ℚ) / 2⌋

end

end A173817.P2101498291794868676

/-! ## A173817.P14141931193721264662

`A330026(n+1)+record[A004526(A020639(n+1))]`
-/

namespace A173817.P14141931193721264662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330026 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173817.P14141931193721264662

/-!
# A173819: n-th prime is a circular prime (A016114).

The programs for A173819, there is no canonical definition to state claims against.
-/

/-! ## A173819.P11254667971134756606

`A000720(A016114(n+1))`
-/

namespace A173819.P11254667971134756606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A016114 (n + 1)).toNat

end

end A173819.P11254667971134756606

/-! ## A173819.P10596683157454214632

`A061395(2*A016114(n+1))`
-/

namespace A173819.P10596683157454214632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A016114 (n + 1)).toNat

end

end A173819.P10596683157454214632

/-! ## A173819.P4255919677966367275

`A321648(2*A016114(n+1))`
-/

namespace A173819.P4255919677966367275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (2 * A016114 (n + 1)).toNat

end

end A173819.P4255919677966367275

/-! ## A173819.P14411884819177872586

`A056239(A016114(n+1))%A046386(n+1)`
-/

namespace A173819.P14411884819177872586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A016114 (n + 1)).toNat) (A046386 (n + 1))

end

end A173819.P14411884819177872586

/-! ## A173819.P10801027951375327166

`A056239(A016114(n+1)%A165309(n+1))`
-/

namespace A173819.P10801027951375327166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A016114 (n + 1)) (A165309 (n + 1))).toNat

end

end A173819.P10801027951375327166

/-!
# A173821: The digital sum of a(n) is visible in the smallest a(n+1) not yet present in the sequence.

The programs for A173821, there is no canonical definition to state claims against.
-/

/-! ## A173821.P8794315663003609790

`A107408(A181440(n+1))%A258700(n)`
-/

namespace A173821.P8794315663003609790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107408 (A181440 (n + 1)).toNat) (A258700 n)

end

end A173821.P8794315663003609790

/-! ## A173821.P12670005483013637485

`A004737((4*n+2)²)*A107408(A181440(n+1))`
-/

namespace A173821.P12670005483013637485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 ((4 * n + 2) ^ 2) * A107408 (A181440 (n + 1)).toNat

end

end A173821.P12670005483013637485

/-! ## A173821.P9286220200664175133

`A107408(A181440(n+1))+A010054(A079705(n+1)/3)`
-/

namespace A173821.P9286220200664175133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (A181440 (n + 1)).toNat + A010054 (SequenceMachineLib.roundAway ((A079705 (n + 1) : ℚ) / 3)).toNat

end

end A173821.P9286220200664175133

/-! ## A173821.P7709657615150165731

`A107408(A181440(n+1))^A204127(A025716(n+1))`
-/

namespace A173821.P7709657615150165731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107408 (A181440 (n + 1)).toNat : ℚ) ^ (A204127 (A025716 (n + 1)).toNat : ℤ)

end

end A173821.P7709657615150165731

/-! ## A173821.P15641080033343260777

`A107408(A181440(n+1))+A010054(A158326(n+1))`
-/

namespace A173821.P15641080033343260777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (A181440 (n + 1)).toNat + A010054 (A158326 (n + 1)).toNat

end

end A173821.P15641080033343260777

/-!
# A173822: a(n) shows the digit sum of the smallest a(n+1) not yet present in the sequence.

The programs for A173822, there is no canonical definition to state claims against.
-/

/-! ## A173822.P14051798975773217934

`A074805(A158326(n+2))`
-/

namespace A173822.P14051798975773217934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (A158326 (n + 2)).toNat

end

end A173822.P14051798975773217934

/-! ## A173822.P13703456372460206391

`A037916(2*A182751(n+1))-n`
-/

namespace A173822.P13703456372460206391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (2 * A182751 (n + 1)).toNat - (n : ℤ)

end

end A173822.P13703456372460206391

/-! ## A173822.P751504731097084509

`A074805(21*A017485(3*n+1))`
-/

namespace A173822.P751504731097084509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (21 * A017485 (3 * n + 1)).toNat

end

end A173822.P751504731097084509

/-! ## A173822.P4221654392019468017

`A074805(A305548(32*n))`
-/

namespace A173822.P4221654392019468017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (A305548 (32 * n)).toNat

end

end A173822.P4221654392019468017

/-!
# A173825: List of numbers k such that k=6*r+1=m*q, m>=q and n>=g where number m is 6*n+1 or 6*n-1 and number q is 6*g+1 or 6*g-1.

The programs for A173825, there is no canonical definition to state claims against.
-/

/-! ## A173825.P6398654357135801118

`A173865(A007606(n+1))`
-/

namespace A173825.P6398654357135801118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (A007606 (n + 1)).toNat

end

end A173825.P6398654357135801118

/-! ## A173825.P5647406182003739374

`filter[A173865(n+1), A088911(#)]`
-/

namespace A173825.P5647406182003739374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A173825.P5647406182003739374

/-! ## A173825.P6726071165486841755

`filter[A173865(n+1), A095130(#)]`
-/

namespace A173825.P6726071165486841755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A173825.P6726071165486841755

/-! ## A173825.P8790204637236800802

`filter[A173865(n+1), A131719(#)]`
-/

namespace A173825.P8790204637236800802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A173825.P8790204637236800802

/-! ## A173825.P14134570954432625638

`filter[A173865(n+1), A137893(#)]`
-/

namespace A173825.P14134570954432625638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A173825.P14134570954432625638

/-!
# A173826: Primes p such that p-+floor(Sqrt(p)) are primes.

The programs for A173826, the canonical program `A173826.P17218421421297169468` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173826 has offset 1).

The definition of A173826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173826.P17218421421297169468

`∩[A086085(n+1), A086086(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A173826

/-- `∩[A086085(n+1), A086086(n+1)]` -/
def P17218421421297169468.Spec : Prop :=
  ∀ n, (P17218421421297169468.a n : ℤ) = A173826 (n + 1)

theorem P17218421421297169468.correct : P17218421421297169468.Spec := by
  intro n
  simp only [A173826, Nat.add_sub_cancel]

end A173826

/-! ## A173826.P2782759539467484095

`∩[A086085(n+1), A000037(A173830(n+1))]`
-/

namespace A173826.P2782759539467484095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A173830 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173826.P2782759539467484095

namespace A173826

/-- `∩[A086085(n+1), A000037(A173830(n+1))]` -/
def P2782759539467484095.Spec : Prop :=
  ∀ n, (P2782759539467484095.a n : ℤ) = A173826 (n + 1)

end A173826

/-! ## A173826.P4782407985866781837

`∩[A002734(A173830(2*n+1-n)), A086085(n+1)]`
-/

namespace A173826.P4782407985866781837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (A173830 (2 * n + 1 - n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173826.P4782407985866781837

namespace A173826

/-- `∩[A002734(A173830(2*n+1-n)), A086085(n+1)]` -/
def P4782407985866781837.Spec : Prop :=
  ∀ n, (P4782407985866781837.a n : ℤ) = A173826 (n + 1)

end A173826

/-! ## A173826.P1798957729873482216

`∩[A145908(n+1), A086086(n+2)]`
-/

namespace A173826.P1798957729873482216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086086 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173826.P1798957729873482216

namespace A173826

/-- `∩[A145908(n+1), A086086(n+2)]` -/
def P1798957729873482216.Spec : Prop :=
  ∀ n, (P1798957729873482216.a n : ℤ) = A173826 (n + 1)

end A173826

/-!
# A173827: Primes p such that p+(floor(Sqrt(p)))^2 is prime.

The programs for A173827, the canonical program `A173827.P8914770220511249519` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173827 has offset 1).

The definition of A173827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173827.P8914770220511249519

`p?[A102781(n+1)+A004737(A111333(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173827

/-- `p?[A102781(n+1)+A004737(A111333(n+1))]` -/
def P8914770220511249519.Spec : Prop :=
  ∀ n, P8914770220511249519.a n = A173827 (n + 1)

theorem P8914770220511249519.correct : P8914770220511249519.Spec := by
  intro n
  simp only [A173827, Nat.add_sub_cancel]

end A173827

/-! ## A173827.P8352490782376721845

`p?[(A004737(n+1)+n)*A032741(2*n+1)]`
-/

namespace A173827.P8352490782376721845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004737 (n + 1) + (n : ℤ)) * A032741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173827.P8352490782376721845

namespace A173827

/-- `p?[(A004737(n+1)+n)*A032741(2*n+1)]` -/
def P8352490782376721845.Spec : Prop :=
  ∀ n, P8352490782376721845.a n = A173827 (n + 1)

end A173827

/-!
# A173828: Primes p such that p-+(floor(Sqrt(p)))^2 are primes.

The programs for A173828, the canonical program `A173828.P5328705190027313365` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173828 has offset 1).

The definition of A173828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173828.P5328705190027313365

`∩[A135932(n+1), A173827(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173828

/-- `∩[A135932(n+1), A173827(n+1)]` -/
def P5328705190027313365.Spec : Prop :=
  ∀ n, (P5328705190027313365.a n : ℤ) = A173828 (n + 1)

theorem P5328705190027313365.correct : P5328705190027313365.Spec := by
  intro n
  simp only [A173828, Nat.add_sub_cancel]

end A173828

/-! ## A173828.P13691212144115891970

`∩[A173827(n+1), A176864(n+1)]`
-/

namespace A173828.P13691212144115891970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173828.P13691212144115891970

namespace A173828

/-- `∩[A173827(n+1), A176864(n+1)]` -/
def P13691212144115891970.Spec : Prop :=
  ∀ n, (P13691212144115891970.a n : ℤ) = A173828 (n + 1)

end A173828

/-! ## A173828.P16897474870270376357

`∩[A173827(n+1), A000040(A102821(n))]`
-/

namespace A173828.P16897474870270376357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A102821 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173828.P16897474870270376357

namespace A173828

/-- `∩[A173827(n+1), A000040(A102821(n))]` -/
def P16897474870270376357.Spec : Prop :=
  ∀ n, (P16897474870270376357.a n : ℤ) = A173828 (n + 1)

end A173828

/-!
# A173829: Primes which are not the sum of powers of the first two primes.

The programs for A173829, there is no canonical definition to state claims against.
-/

/-! ## A173829.P14196278226774934842

`p?[gcd(n, a(A141747(n)))]` with `a(0)=0`
-/

namespace A173829.P14196278226774934842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.gcd n (f1 (A141747 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173829.P14196278226774934842

/-! ## A173829.P8182874036610882797

`p?[gcd(n+1, A141747(n+1))]`
-/

namespace A173829.P8182874036610882797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A141747 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173829.P8182874036610882797

/-! ## A173829.P1343552174364152194

`p?[or(2*n+1, -A141747(2*n+1))]`
-/

namespace A173829.P1343552174364152194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (-A141747 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P1343552174364152194

/-! ## A173829.P11060848376128536099

`p?[n*(A141747(A028310(n))+1)]`
-/

namespace A173829.P11060848376128536099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A141747 (A028310 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P11060848376128536099

/-! ## A173829.P1791231384376629815

`p?[gcd(A141747(n+1), A153152(n))]`
-/

namespace A173829.P1791231384376629815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141747 (n + 1)) (A153152 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173829.P1791231384376629815

/-! ## A173829.P18169555280076109043

`p?[n*A000045(a(A141747(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A173829.P18169555280076109043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (n : ℤ) * A000045 (f1 (A141747 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P18169555280076109043

/-! ## A173829.P9292162734141347888

`p?[or(-A141747(n+1), A131738(n))]`
-/

namespace A173829.P9292162734141347888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A141747 (n + 1)) (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P9292162734141347888

/-! ## A173829.P14062683835565415732

`p?[or(-A141747(n+1), A053650(n+1))]`
-/

namespace A173829.P14062683835565415732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A141747 (n + 1)) (A053650 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P14062683835565415732

/-! ## A173829.P235766753506778316

`p?[or(-A141747(n+1), A249818(n+1))]`
-/

namespace A173829.P235766753506778316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A141747 (n + 1)) (A249818 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P235766753506778316

/-! ## A173829.P12614209340254638571

`p?[or(-A141747(n+1), A008619(2*n))]`
-/

namespace A173829.P12614209340254638571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A141747 (n + 1)) (A008619 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173829.P12614209340254638571

/-!
# A173830: Primes of the form p - floor(sqrt(p)), p prime.

The programs for A173830, the canonical program `A173830.P15882500641865213836` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173830 has offset 1).

The definition of A173830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173830.P14238147697721825533

`ceil(A086086(n+1)-sqrt(A086086(n+1)))`
-/

namespace A173830.P14238147697721825533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086086 (n + 1) : ℝ) - Real.sqrt (A086086 (n + 1) : ℝ)⌉

end

end A173830.P14238147697721825533

namespace A173830

/-- `ceil(A086086(n+1)-sqrt(A086086(n+1)))` -/
def P14238147697721825533.Spec : Prop :=
  ∀ n, P14238147697721825533.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P15882500641865213836

`p?[A165994(n+1)+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173830

/-- `p?[A165994(n+1)+1]` -/
def P15882500641865213836.Spec : Prop :=
  ∀ n, P15882500641865213836.a n = A173830 (n + 1)

theorem P15882500641865213836.correct : P15882500641865213836.Spec := by
  intro n
  simp only [A173830, Nat.add_sub_cancel]

end A173830

/-! ## A173830.P15835427390968898861

`p?[A112045(n+1)]`
-/

namespace A173830.P15835427390968898861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P15835427390968898861

namespace A173830

/-- `p?[A112045(n+1)]` -/
def P15835427390968898861.Spec : Prop :=
  ∀ n, P15835427390968898861.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P8211670838621198878

`∩[A000040(n+1), A112045(n+1)]`
-/

namespace A173830.P8211670838621198878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P8211670838621198878

namespace A173830

/-- `∩[A000040(n+1), A112045(n+1)]` -/
def P8211670838621198878.Spec : Prop :=
  ∀ n, (P8211670838621198878.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P2204369389239893144

`∩[A000430(n+1), A112045(n+1)]`
-/

namespace A173830.P2204369389239893144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P2204369389239893144

namespace A173830

/-- `∩[A000430(n+1), A112045(n+1)]` -/
def P2204369389239893144.Spec : Prop :=
  ∀ n, (P2204369389239893144.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P5279103665299675056

`∩[A009087(n+1), A112045(n+1)]`
-/

namespace A173830.P5279103665299675056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P5279103665299675056

namespace A173830

/-- `∩[A009087(n+1), A112045(n+1)]` -/
def P5279103665299675056.Spec : Prop :=
  ∀ n, (P5279103665299675056.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P11885064314654274102

`∩[A050376(n+1), A112045(n+1)]`
-/

namespace A173830.P11885064314654274102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P11885064314654274102

namespace A173830

/-- `∩[A050376(n+1), A112045(n+1)]` -/
def P11885064314654274102.Spec : Prop :=
  ∀ n, (P11885064314654274102.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P677888370503510721

`∩[A051948(n+1), A112045(n+1)]`
-/

namespace A173830.P677888370503510721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P677888370503510721

namespace A173830

/-- `∩[A051948(n+1), A112045(n+1)]` -/
def P677888370503510721.Spec : Prop :=
  ∀ n, (P677888370503510721.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P6906204800853284291

`∩[A053813(n+1), A112045(n+1)]`
-/

namespace A173830.P6906204800853284291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P6906204800853284291

namespace A173830

/-- `∩[A053813(n+1), A112045(n+1)]` -/
def P6906204800853284291.Spec : Prop :=
  ∀ n, (P6906204800853284291.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P8177788200237199675

`∩[A112045(n+1), A116974(n+1)]`
-/

namespace A173830.P8177788200237199675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P8177788200237199675

namespace A173830

/-- `∩[A112045(n+1), A116974(n+1)]` -/
def P8177788200237199675.Spec : Prop :=
  ∀ n, (P8177788200237199675.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P15405150094255233745

`∩[A112045(n+1), A175787(n+1)]`
-/

namespace A173830.P15405150094255233745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P15405150094255233745

namespace A173830

/-- `∩[A112045(n+1), A175787(n+1)]` -/
def P15405150094255233745.Spec : Prop :=
  ∀ n, (P15405150094255233745.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P14387280833112496053

`∩[A112045(n+1), A182986(n+1)]`
-/

namespace A173830.P14387280833112496053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P14387280833112496053

namespace A173830

/-- `∩[A112045(n+1), A182986(n+1)]` -/
def P14387280833112496053.Spec : Prop :=
  ∀ n, (P14387280833112496053.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P2909953496953562375

`∩[A112045(n+1), A280257(n+1)]`
-/

namespace A173830.P2909953496953562375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173830.P2909953496953562375

namespace A173830

/-- `∩[A112045(n+1), A280257(n+1)]` -/
def P2909953496953562375.Spec : Prop :=
  ∀ n, (P2909953496953562375.a n : ℤ) = A173830 (n + 1)

end A173830

/-! ## A173830.P5789904500782726123

`p?[A000040(n+1)-A000006(n+1)]`
-/

namespace A173830.P5789904500782726123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P5789904500782726123

namespace A173830

/-- `p?[A000040(n+1)-A000006(n+1)]` -/
def P5789904500782726123.Spec : Prop :=
  ∀ n, P5789904500782726123.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P4810540200643211753

`p?[A008864(n+1)-A104103(n+1)]`
-/

namespace A173830.P4810540200643211753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A104103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P4810540200643211753

namespace A173830

/-- `p?[A008864(n+1)-A104103(n+1)]` -/
def P4810540200643211753.Spec : Prop :=
  ∀ n, P4810540200643211753.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P4244887788824092353

`p?[A000040(n+1)+1-A104103(n+1)]`
-/

namespace A173830.P4244887788824092353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A104103 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P4244887788824092353

namespace A173830

/-- `p?[A000040(n+1)+1-A104103(n+1)]` -/
def P4244887788824092353.Spec : Prop :=
  ∀ n, P4244887788824092353.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P13213630197256689972

`p?[A040976(n+1)+2-A000006(n+1)]`
-/

namespace A173830.P13213630197256689972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A000006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P13213630197256689972

namespace A173830

/-- `p?[A040976(n+1)+2-A000006(n+1)]` -/
def P13213630197256689972.Spec : Prop :=
  ∀ n, P13213630197256689972.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P4732697845188879774

`filter[A112045(n+1), A010051(#)]`
-/

namespace A173830.P4732697845188879774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A173830.P4732697845188879774

namespace A173830

/-- `filter[A112045(n+1), A010051(#)]` -/
def P4732697845188879774.Spec : Prop :=
  ∀ n, P4732697845188879774.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P12581520609352975052

`filter[A112045(n+2), A355937(#)]`
-/

namespace A173830.P12581520609352975052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A173830.P12581520609352975052

namespace A173830

/-- `filter[A112045(n+2), A355937(#)]` -/
def P12581520609352975052.Spec : Prop :=
  ∀ n, P12581520609352975052.a n = A173830 (n + 1)

end A173830

/-! ## A173830.P4047425940932574722

`p?[A020639(n+1)-floor(sqrt(n))]`
-/

namespace A173830.P4047425940932574722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (Nat.sqrt n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173830.P4047425940932574722

namespace A173830

/-- `p?[A020639(n+1)-floor(sqrt(n))]` -/
def P4047425940932574722.Spec : Prop :=
  ∀ n, P4047425940932574722.a n = A173830 (n + 1)

end A173830

/-!
# A173831: Largest prime < n^4.

The programs for A173831, there is no canonical definition to state claims against.
-/

/-! ## A173831.P8664069884856566329

`A053001((n+2)²)`
-/

namespace A173831.P8664069884856566329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 ((n + 2) ^ 2)

end

end A173831.P8664069884856566329

/-! ## A173831.P5488040488681199077

`(n+2)^4-A056927((n+2)²)`
-/

namespace A173831.P5488040488681199077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A056927 ((n + 2) ^ 2)

end

end A173831.P5488040488681199077

/-! ## A173831.P12000477098229170703

`or(1, A053001(A000290(n+2)))`
-/

namespace A173831.P12000477098229170703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053001 (A000290 (n + 2)).toNat)

end

end A173831.P12000477098229170703

/-! ## A173831.P3851689819786454013

`or(1, A053001(A346004(2*n+3)))`
-/

namespace A173831.P3851689819786454013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053001 (A346004 (2 * n + 3)).toNat)

end

end A173831.P3851689819786454013

/-! ## A173831.P11513890030588680987

`or(1, A053001(A006446(3*n+4)))`
-/

namespace A173831.P11513890030588680987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053001 (A006446 (3 * n + 4)).toNat)

end

end A173831.P11513890030588680987

/-!
# A173832: Largest prime < n^5.

The programs for A173832, there is no canonical definition to state claims against.
-/

/-! ## A173832.P8456103643869829449

`A151799((n+2)^5)`
-/

namespace A173832.P8456103643869829449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 ((n + 2) ^ 5)

end

end A173832.P8456103643869829449

/-! ## A173832.P1741583400757319580

`A000040(∑[A062517(n+1)])`
-/

namespace A173832.P1741583400757319580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173832.P1741583400757319580

/-! ## A173832.P16840074162393584282

`A000040(A000720((n+2)^5))`
-/

namespace A173832.P16840074162393584282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 2) ^ 5)).toNat

end

end A173832.P16840074162393584282

/-! ## A173832.P8725524025963872919

`or(1, A151799(A000584(n+2)))`
-/

namespace A173832.P8725524025963872919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151799 (A000584 (n + 2)).toNat)

end

end A173832.P8725524025963872919

/-! ## A173832.P10484181788897720509

`C(A151799(A000584(n+2)), A053632(n))`
-/

namespace A173832.P10484181788897720509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151799 (A000584 (n + 2)).toNat).toNat (A053632 n).toNat

end

end A173832.P10484181788897720509

/-!
# A173833: a(n) = 10^n - 3.

The programs for A173833, the canonical program `A173833.P16351641901331384700` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173833 has offset 1).

The definition of A173833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(n+1)-3` (program `A173833.P16351641901331384700`, by `A173833.P16351641901331384700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173833.P16351641901331384700

`10^(n+1)-3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173833

/-- `10^(n+1)-3` -/
def P16351641901331384700.Spec : Prop :=
  ∀ n, P16351641901331384700.a n = A173833 (n + 1)

theorem P16351641901331384700.correct : P16351641901331384700.Spec := by
  intro n
  simp only [A173833, Nat.add_sub_cancel]

end A173833

/-! ## A173833.P7703668526861647392

`ogf((7+20x)/(1-11x+10x^2))`
-/

namespace A173833.P7703668526861647392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 20] [1, -11, 10] n

end

end A173833.P7703668526861647392

namespace A173833

/-- `ogf((7+20x)/(1-11x+10x^2))` -/
def P7703668526861647392.Spec : Prop :=
  ∀ n, P7703668526861647392.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P847916099396062937

`A086947(n+1)/3`
-/

namespace A173833.P847916099396062937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086947 (n + 1) : ℚ) / 3

end

end A173833.P847916099396062937

namespace A173833

/-- `A086947(n+1)/3` -/
def P847916099396062937.Spec : Prop :=
  ∀ n, P847916099396062937.a n = (A173833 (n + 1) : ℚ)

end A173833

/-! ## A173833.P15253953148136864173

`∑[10*a(n-1)]` with `a(0)=7, a(1)=90`
-/

namespace A173833.P15253953148136864173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 90] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173833.P15253953148136864173

namespace A173833

/-- `∑[10*a(n-1)]` -/
def P15253953148136864173.Spec : Prop :=
  ∀ n, (P15253953148136864173.a n : ℤ) = A173833 (n + 1)

end A173833

/-! ## A173833.P1899543660026218122

`record[10^abs(1-n)-3]`
-/

namespace A173833.P1899543660026218122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173833.P1899543660026218122

namespace A173833

/-- `record[10^abs(1-n)-3]` -/
def P1899543660026218122.Spec : Prop :=
  ∀ n, P1899543660026218122.a n = (A173833 (n + 1) : ℚ)

end A173833

/-! ## A173833.P16162186586850620446

`∑[Δ[10^n]-floor(acot(n)²)]`
-/

namespace A173833.P16162186586850620446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173833.P16162186586850620446

namespace A173833

/-- `∑[Δ[10^n]-floor(acot(n)²)]` -/
def P16162186586850620446.Spec : Prop :=
  ∀ n, P16162186586850620446.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P17673533435368641220

`abs(1-A099150(n+1))`
-/

namespace A173833.P17673533435368641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099150 (n + 1)|

end

end A173833.P17673533435368641220

namespace A173833

/-- `abs(1-A099150(n+1))` -/
def P17673533435368641220.Spec : Prop :=
  ∀ n, P17673533435368641220.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P1115663832330318365

`abs(2-A002283(n+1))`
-/

namespace A173833.P1115663832330318365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002283 (n + 1)|

end

end A173833.P1115663832330318365

namespace A173833

/-- `abs(2-A002283(n+1))` -/
def P1115663832330318365.Spec : Prop :=
  ∀ n, P1115663832330318365.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P12745878118680491595

`abs(2-A103456(n+1))`
-/

namespace A173833.P12745878118680491595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A103456 (n + 1)|

end

end A173833.P12745878118680491595

namespace A173833

/-- `abs(2-A103456(n+1))` -/
def P12745878118680491595.Spec : Prop :=
  ∀ n, P12745878118680491595.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P2577437045372815570

`abs(3-A011557(n+1))`
-/

namespace A173833.P2577437045372815570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A011557 (n + 1)|

end

end A173833.P2577437045372815570

namespace A173833

/-- `abs(3-A011557(n+1))` -/
def P2577437045372815570.Spec : Prop :=
  ∀ n, P2577437045372815570.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P7656010958756215908

`abs(2*A198971(n)-1)`
-/

namespace A173833.P7656010958756215908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A198971 n - 1|

end

end A173833.P7656010958756215908

namespace A173833

/-- `abs(2*A198971(n)-1)` -/
def P7656010958756215908.Spec : Prop :=
  ∀ n, P7656010958756215908.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P16277919658738346289

`A061219(A017245(n))`
-/

namespace A173833.P16277919658738346289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A017245 n).toNat

end

end A173833.P16277919658738346289

namespace A173833

/-- `A061219(A017245(n))` -/
def P16277919658738346289.Spec : Prop :=
  ∀ n, P16277919658738346289.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P18203695408111717490

`A061219(A017233(n)+1)`
-/

namespace A173833.P18203695408111717490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A017233 n + 1).toNat

end

end A173833.P18203695408111717490

namespace A173833

/-- `A061219(A017233(n)+1)` -/
def P18203695408111717490.Spec : Prop :=
  ∀ n, P18203695408111717490.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P13701140114272840977

`A061219(A017257(n)-1)`
-/

namespace A173833.P13701140114272840977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A017257 n - 1).toNat

end

end A173833.P13701140114272840977

namespace A173833

/-- `A061219(A017257(n)-1)` -/
def P13701140114272840977.Spec : Prop :=
  ∀ n, P13701140114272840977.a n = A173833 (n + 1)

end A173833

/-! ## A173833.P14184825613676945406

`A061219(A122709(n+1)+1)`
-/

namespace A173833.P14184825613676945406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A122709 (n + 1) + 1).toNat

end

end A173833.P14184825613676945406

namespace A173833

/-- `A061219(A122709(n+1)+1)` -/
def P14184825613676945406.Spec : Prop :=
  ∀ n, P14184825613676945406.a n = A173833 (n + 1)

end A173833

/-!
# A173834: a(n) = 10^n - 2*n.

The programs for A173834, the canonical program `A173834.P1616473553722146901` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173834 has offset 0).

The definition of A173834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-2*n` (program `A173834.P1616473553722146901`, by `A173834.P1616473553722146901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173834.P1616473553722146901

`10^n-2*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173834

/-- `10^n-2*n` -/
def P1616473553722146901.Spec : Prop :=
  ∀ n, P1616473553722146901.a n = A173834 n

theorem P1616473553722146901.correct : P1616473553722146901.Spec := by
  intro n
  simp only [A173834]

end A173834

/-! ## A173834.P6492249250298690729

`ogf((1-4x+21x^2)/(1-12x+21x^2-10x^3))`
-/

namespace A173834.P6492249250298690729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 21] [1, -12, 21, -10] n

end

end A173834.P6492249250298690729

namespace A173834

/-- `ogf((1-4x+21x^2)/(1-12x+21x^2-10x^3))` -/
def P6492249250298690729.Spec : Prop :=
  ∀ n, P6492249250298690729.a n = A173834 n

end A173834

/-! ## A173834.P3342275098993791333

`record[10^floor(n/2)-n]`
-/

namespace A173834.P3342275098993791333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173834.P3342275098993791333

namespace A173834

/-- `record[10^floor(n/2)-n]` -/
def P3342275098993791333.Spec : Prop :=
  ∀ n, P3342275098993791333.a n = (A173834 n : ℚ)

end A173834

/-! ## A173834.P1499696105037740819

`∑[2*(5*a(n-1)+9)]` with `a(0)=1, a(1)=7`
-/

namespace A173834.P1499696105037740819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * (5 * f1 (n - 1) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173834.P1499696105037740819

namespace A173834

/-- `∑[2*(5*a(n-1)+9)]` -/
def P1499696105037740819.Spec : Prop :=
  ∀ n, (P1499696105037740819.a n : ℤ) = A173834 n

end A173834

/-! ## A173834.P16622826540301128497

`abs(abs(and(-(n+1), 10^n)-n)-n)`
-/

namespace A173834.P16622826540301128497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|Int.land (-(n + 1 : ℤ)) (10 ^ n : ℤ) - (n : ℤ)| - (n : ℤ))|

end

end A173834.P16622826540301128497

namespace A173834

/-- `abs(abs(and(-(n+1), 10^n)-n)-n)` -/
def P16622826540301128497.Spec : Prop :=
  ∀ n, P16622826540301128497.a n = A173834 n

end A173834

/-! ## A173834.P9257851325363320172

`abs(n-A024115(n))`
-/

namespace A173834.P9257851325363320172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A024115 n|

end

end A173834.P9257851325363320172

namespace A173834

/-- `abs(n-A024115(n))` -/
def P9257851325363320172.Spec : Prop :=
  ∀ n, P9257851325363320172.a n = A173834 n

end A173834

/-! ## A173834.P3706657966376779404

`abs(2*n-(A002283(n)+1))`
-/

namespace A173834.P3706657966376779404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A002283 n + 1)|

end

end A173834.P3706657966376779404

namespace A173834

/-- `abs(2*n-(A002283(n)+1))` -/
def P3706657966376779404.Spec : Prop :=
  ∀ n, P3706657966376779404.a n = A173834 n

end A173834

/-! ## A173834.P10727884157568731868

`abs(2*n-A004663(2*n))`
-/

namespace A173834.P10727884157568731868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A004663 (2 * n)|

end

end A173834.P10727884157568731868

namespace A173834

/-- `abs(2*n-A004663(2*n))` -/
def P10727884157568731868.Spec : Prop :=
  ∀ n, P10727884157568731868.a n = A173834 n

end A173834

/-! ## A173834.P1750759467367407152

`abs(and(-2, 10^n)-A004277(n))`
-/

namespace A173834.P1750759467367407152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (-2) (10 ^ n : ℤ) - A004277 n|

end

end A173834.P1750759467367407152

namespace A173834

/-- `abs(and(-2, 10^n)-A004277(n))` -/
def P1750759467367407152.Spec : Prop :=
  ∀ n, P1750759467367407152.a n = A173834 n

end A173834

/-! ## A173834.P3864551901904100937

`abs(A011557(n)-(A271942(∑[n]+3)+1))`
-/

namespace A173834.P3864551901904100937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - (A271942 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1)|

end

end A173834.P3864551901904100937

namespace A173834

/-- `abs(A011557(n)-(A271942(∑[n]+3)+1))` -/
def P3864551901904100937.Spec : Prop :=
  ∀ n, P3864551901904100937.a n = A173834 n

end A173834

/-! ## A173834.P17762246062592793174

`abs(2*n-Δ[A002275(n)])`
-/

namespace A173834.P17762246062592793174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A173834.P17762246062592793174

namespace A173834

/-- `abs(2*n-Δ[A002275(n)])` -/
def P17762246062592793174.Spec : Prop :=
  ∀ n, P17762246062592793174.a n = A173834 n

end A173834

/-! ## A173834.P14477093369167200487

`Δ[floor(10^n/9)-A002061(n)]`
-/

namespace A173834.P14477093369167200487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173834.P14477093369167200487

namespace A173834

/-- `Δ[floor(10^n/9)-A002061(n)]` -/
def P14477093369167200487.Spec : Prop :=
  ∀ n, P14477093369167200487.a n = A173834 n

end A173834

/-! ## A173834.P1091308950908215612

`abs(A005408(n)-A062397(n))`
-/

namespace A173834.P1091308950908215612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A062397 n|

end

end A173834.P1091308950908215612

namespace A173834

/-- `abs(A005408(n)-A062397(n))` -/
def P1091308950908215612.Spec : Prop :=
  ∀ n, P1091308950908215612.a n = A173834 n

end A173834

/-! ## A173834.P5016774649532926393

`∑[abs(A003953(n)-A086573(n))]`
-/

namespace A173834.P5016774649532926393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003953 n - A086573 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173834.P5016774649532926393

namespace A173834

/-- `∑[abs(A003953(n)-A086573(n))]` -/
def P5016774649532926393.Spec : Prop :=
  ∀ n, P5016774649532926393.a n = A173834 n

end A173834

/-! ## A173834.P1348660740722180071

`-(2*n+A033873(n)-A003617(n+1))`
-/

namespace A173834.P1348660740722180071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) + (A033873 n - A003617 (n + 1)))

end

end A173834.P1348660740722180071

namespace A173834

/-- `-(2*n+A033873(n)-A003617(n+1))` -/
def P1348660740722180071.Spec : Prop :=
  ∀ n, P1348660740722180071.a n = A173834 n

theorem P1348660740722180071.correct : P1348660740722180071.Spec := by
  intro n
  simp only [A173834, Nat.add_sub_cancel, A173834.P1348660740722180071.a, A173834.P1616473553722146901.a, A003617, A003617.P3664545779481022082.a, A033873, A033873.P18414686977204439608.a, A011557, A011557.P11220211478167790856.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173834

/-!
# A173835: a(n) = 10^n + 2*n.

The programs for A173835, the canonical program `A173835.P3826996972973810885` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173835 has offset 0).

The definition of A173835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+2*n` (program `A173835.P3826996972973810885`, by `A173835.P3826996972973810885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173835.P3826996972973810885

`10^n+2*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173835

/-- `10^n+2*n` -/
def P3826996972973810885.Spec : Prop :=
  ∀ n, (P3826996972973810885.a n : ℤ) = A173835 n

theorem P3826996972973810885.correct : P3826996972973810885.Spec := by
  intro n
  simp only [A173835]

end A173835

/-! ## A173835.P9758497900840862135

`ogf((1-19x^2)/(1-12x+21x^2-10x^3))`
-/

namespace A173835.P9758497900840862135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -19] [1, -12, 21, -10] n

end

end A173835.P9758497900840862135

namespace A173835

/-- `ogf((1-19x^2)/(1-12x+21x^2-10x^3))` -/
def P9758497900840862135.Spec : Prop :=
  ∀ n, P9758497900840862135.a n = A173835 n

end A173835

/-! ## A173835.P2900899282011195071

`abs(xor(-(2*n), 10^n))`
-/

namespace A173835.P2900899282011195071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 * n : ℤ)) (10 ^ n : ℤ)|

end

end A173835.P2900899282011195071

namespace A173835

/-- `abs(xor(-(2*n), 10^n))` -/
def P2900899282011195071.Spec : Prop :=
  ∀ n, P2900899282011195071.a n = A173835 n

end A173835

/-! ## A173835.P15789170794257283666

`abs(A002283(n)+Δ[n²])`
-/

namespace A173835.P15789170794257283666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002283 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A173835.P15789170794257283666

namespace A173835

/-- `abs(A002283(n)+Δ[n²])` -/
def P15789170794257283666.Spec : Prop :=
  ∀ n, P15789170794257283666.a n = A173835 n

end A173835

/-! ## A173835.P9850947103174768748

`abs(Δ[A002275(n)]+2*n)`
-/

namespace A173835.P9850947103174768748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (2 * n : ℤ)|

end

end A173835.P9850947103174768748

namespace A173835

/-- `abs(Δ[A002275(n)]+2*n)` -/
def P9850947103174768748.Spec : Prop :=
  ∀ n, P9850947103174768748.a n = A173835 n

end A173835

/-! ## A173835.P4523149855528961565

`abs(Δ[A173735(n)]+2*n)`
-/

namespace A173835.P4523149855528961565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (2 * n : ℤ)|

end

end A173835.P4523149855528961565

namespace A173835

/-- `abs(Δ[A173735(n)]+2*n)` -/
def P4523149855528961565.Spec : Prop :=
  ∀ n, P4523149855528961565.a n = A173835 n

end A173835

/-! ## A173835.P15307527492310400951

`record[Δ[A289404(n)]+n+1]`
-/

namespace A173835.P15307527492310400951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173835.P15307527492310400951

namespace A173835

/-- `record[Δ[A289404(n)]+n+1]` -/
def P15307527492310400951.Spec : Prop :=
  ∀ n, P15307527492310400951.a n = A173835 n

end A173835

/-! ## A173835.P8049562096205213837

`abs(1-A062397(n)-2*n)`
-/

namespace A173835.P8049562096205213837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A062397 n - (2 * n : ℤ)|

end

end A173835.P8049562096205213837

namespace A173835

/-- `abs(1-A062397(n)-2*n)` -/
def P8049562096205213837.Spec : Prop :=
  ∀ n, P8049562096205213837.a n = A173835 n

end A173835

/-! ## A173835.P4474390733888782750

`Δ[A002061(n)+floor(10^n/9)]`
-/

namespace A173835.P4474390733888782750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173835.P4474390733888782750

namespace A173835

/-- `Δ[A002061(n)+floor(10^n/9)]` -/
def P4474390733888782750.Spec : Prop :=
  ∀ n, P4474390733888782750.a n = A173835 n

end A173835

/-! ## A173835.P10643755023418908538

`Δ[A002275(n)+A002061(n)]`
-/

namespace A173835.P10643755023418908538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173835.P10643755023418908538

namespace A173835

/-- `Δ[A002275(n)+A002061(n)]` -/
def P10643755023418908538.Spec : Prop :=
  ∀ n, P10643755023418908538.a n = A173835 n

end A173835

/-! ## A173835.P13157800033359288101

`Δ[A002275(n)+A051890(n)/2]`
-/

namespace A173835.P13157800033359288101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℚ) + (A051890 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173835.P13157800033359288101

namespace A173835

/-- `Δ[A002275(n)+A051890(n)/2]` -/
def P13157800033359288101.Spec : Prop :=
  ∀ n, P13157800033359288101.a n = (A173835 n : ℚ)

end A173835

/-! ## A173835.P2228668880335267895

`(A199683(n)+2*n)%A199682(n)`
-/

namespace A173835.P2228668880335267895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199683 n + (2 * n : ℤ)) (A199682 n)

end

end A173835.P2228668880335267895

namespace A173835

/-- `(A199683(n)+2*n)%A199682(n)` -/
def P2228668880335267895.Spec : Prop :=
  ∀ n, P2228668880335267895.a n = A173835 n

end A173835

/-! ## A173835.P6175716644419757096

`(A199684(n)+2*n)%A199683(n)`
-/

namespace A173835.P6175716644419757096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199684 n + (2 * n : ℤ)) (A199683 n)

end

end A173835.P6175716644419757096

namespace A173835

/-- `(A199684(n)+2*n)%A199683(n)` -/
def P6175716644419757096.Spec : Prop :=
  ∀ n, P6175716644419757096.a n = A173835 n

end A173835

/-! ## A173835.P10816024278991520618

`(A199686(n)+2*n)%A199685(n)`
-/

namespace A173835.P10816024278991520618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199686 n + (2 * n : ℤ)) (A199685 n)

end

end A173835.P10816024278991520618

namespace A173835

/-- `(A199686(n)+2*n)%A199685(n)` -/
def P10816024278991520618.Spec : Prop :=
  ∀ n, P10816024278991520618.a n = A173835 n

end A173835

/-! ## A173835.P567419343033182604

`abs(2*n-(A002275(n)-A002275(n+1)))`
-/

namespace A173835.P567419343033182604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A002275 n - A002275 (n + 1))|

end

end A173835.P567419343033182604

namespace A173835

/-- `abs(2*n-(A002275(n)-A002275(n+1)))` -/
def P567419343033182604.Spec : Prop :=
  ∀ n, P567419343033182604.a n = A173835 n

end A173835

/-! ## A173835.P14365119076086667335

`abs(2*n-(A124001(n)-A092245(n+1)))`
-/

namespace A173835.P14365119076086667335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A124001 n - A092245 (n + 1))|

end

end A173835.P14365119076086667335

namespace A173835

/-- `abs(2*n-(A124001(n)-A092245(n+1)))` -/
def P14365119076086667335.Spec : Prop :=
  ∀ n, P14365119076086667335.a n = A173835 n

end A173835

/-! ## A173835.P3968854314810257098

`(A199685(n)+A005408(n))%A199682(n)`
-/

namespace A173835.P3968854314810257098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199685 n + A005408 n) (A199682 n)

end

end A173835.P3968854314810257098

namespace A173835

/-- `(A199685(n)+A005408(n))%A199682(n)` -/
def P3968854314810257098.Spec : Prop :=
  ∀ n, P3968854314810257098.a n = A173835 n

end A173835

/-!
# A173836: Natural numbers n such that the concatenation 1331//n^3 is a prime number.

The programs for A173836, there is no canonical definition to state claims against.
-/

/-! ## A173836.P817966383045397898

`A168434(or(8, A208983(n)))`
-/

namespace A173836.P817966383045397898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168434 (Int.lor 8 (A208983 n)).toNat

end

end A173836.P817966383045397898

/-!
# A173841: Number of permutations of 1..n with no adjacent pair summing to n+1.

The programs for A173841, there is no canonical definition to state claims against.
-/

/-! ## A173841.P800386702752463034

`A266208(∑[n]+floor(acot(n)))`
-/

namespace A173841.P800386702752463034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A173841.P800386702752463034

/-! ## A173841.P9005341024350356559

`A266208(gcd((n+1)!, ∑[n]))`
-/

namespace A173841.P9005341024350356559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (Nat.gcd (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A173841.P9005341024350356559

/-! ## A173841.P16989001298809498259

`A266158(round(sqrt(∑[n]²+1)))`
-/

namespace A173841.P16989001298809498259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266158 (SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℝ))).toNat

end

end A173841.P16989001298809498259

/-! ## A173841.P14892478473841746401

`A266208(∑[n]+C(2, n+2))`
-/

namespace A173841.P14892478473841746401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A173841.P14892478473841746401

/-! ## A173841.P1498593437565159053

`A266208(∑[n]^floor(atan(n+1)))`
-/

namespace A173841.P1498593437565159053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266208 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A173841.P1498593437565159053

/-!
# A173842: Number of permutations of 1..n with no adjacent pair summing to n+2.

The programs for A173842, there is no canonical definition to state claims against.
-/

/-! ## A173842.P1640356296293532617

`A010554(A007838(n+1))`
-/

namespace A173842.P1640356296293532617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A007838 (n + 1)).toNat

end

end A173842.P1640356296293532617

/-! ## A173842.P15174949647503302072

`∏{p}[A008544(n), A054237(#)]`
-/

namespace A173842.P15174949647503302072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054237 p

end

end A173842.P15174949647503302072

/-! ## A173842.P6516108696937644093

`∏[A249151(A255121(n!))]`
-/

namespace A173842.P6516108696937644093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 (A255121 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173842.P6516108696937644093

/-!
# A173843: Number of permutations of 1..n with no adjacent pair summing to n+3.

The programs for A173843, there is no canonical definition to state claims against.
-/

/-! ## A173843.P6264861411036394365

`6*A209867(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173843.P6264861411036394365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  6 * A209867 (a (n - 2)).toNat

end

end A173843.P6264861411036394365

/-! ## A173843.P9536296371926153009

`3*A218870(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173843.P9536296371926153009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * A218870 (2 * a (n - 2)).toNat

end

end A173843.P9536296371926153009

/-! ## A173843.P13679359024379267541

`A178846(C(n, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A173843.P13679359024379267541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178846 (Nat.choose n (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat)

end

end A173843.P13679359024379267541

/-!
# A173844: Number of permutations of 1..n with no adjacent pair summing to n+4.

The programs for A173844, there is no canonical definition to state claims against.
-/

/-! ## A173844.P12800477924501838916

`A178847(n^A110656(n))`
-/

namespace A173844.P12800477924501838916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178847 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A173844.P12800477924501838916

/-! ## A173844.P14648082512750921317

`A178847(C(n, A110656(n)))`
-/

namespace A173844.P14648082512750921317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178847 (Nat.choose n (A110656 n).toNat)

end

end A173844.P14648082512750921317

/-! ## A173844.P952964987993697723

`A178847(n^A236362(n+1))`
-/

namespace A173844.P952964987993697723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178847 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A236362 (n + 1) : ℤ))).toNat

end

end A173844.P952964987993697723

/-! ## A173844.P11476573216119820599

`A178847(n^A293901(n+1))`
-/

namespace A173844.P11476573216119820599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178847 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293901 (n + 1) : ℤ))).toNat

end

end A173844.P11476573216119820599

/-! ## A173844.P15821012031083828132

`A178847(C(n, A236362(n+1)))`
-/

namespace A173844.P15821012031083828132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178847 (Nat.choose n (A236362 (n + 1)).toNat)

end

end A173844.P15821012031083828132

/-!
# A173845: Number of permutations of 1..n with no adjacent pair summing to n+5.

The programs for A173845, there is no canonical definition to state claims against.
-/

/-! ## A173845.P3339837752291663049

`A178848(A028310(n*A318191(n)))`
-/

namespace A173845.P3339837752291663049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178848 (A028310 ((n : ℤ) * A318191 n).toNat).toNat

end

end A173845.P3339837752291663049

/-! ## A173845.P14524884302423665508

`A178848(A028310(n)^A318191(n))`
-/

namespace A173845.P14524884302423665508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178848 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A318191 n : ℤ))).toNat

end

end A173845.P14524884302423665508

/-! ## A173845.P13396353424088339122

`A178848(C(A028310(n), A318191(n)))`
-/

namespace A173845.P13396353424088339122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178848 (Nat.choose (A028310 n).toNat (A318191 n).toNat)

end

end A173845.P13396353424088339122

/-! ## A173845.P8924271749333921966

`A178848(A028310(n)*A299321(n+1))`
-/

namespace A173845.P8924271749333921966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178848 (A028310 n * A299321 (n + 1)).toNat

end

end A173845.P8924271749333921966

/-! ## A173845.P12675559612360981542

`A178848(A028310(n)^A299321(n+1))`
-/

namespace A173845.P12675559612360981542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178848 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A299321 (n + 1) : ℤ))).toNat

end

end A173845.P12675559612360981542

/-!
# A173846: Number of permutations of 1..n with no adjacent pair summing to n+6.

The programs for A173846, there is no canonical definition to state claims against.
-/

/-! ## A173846.P14318553778682893713

`A056960(n!)`
-/

namespace A173846.P14318553778682893713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (Nat.factorial n)

end

end A173846.P14318553778682893713

/-! ## A173846.P12688042925446625769

`A228732(n!)`
-/

namespace A173846.P12688042925446625769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (Nat.factorial n)

end

end A173846.P12688042925446625769

/-! ## A173846.P18003000238685470758

`A055960(n!)-n!`
-/

namespace A173846.P18003000238685470758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 (Nat.factorial n) - (Nat.factorial n : ℤ)

end

end A173846.P18003000238685470758

/-! ## A173846.P10105553151572226468

`n!-A055961(n!)`
-/

namespace A173846.P10105553151572226468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A055961 (Nat.factorial n)

end

end A173846.P10105553151572226468

/-!
# A173847: Number of permutations of 1..n with no adjacent pair summing to n+7.

The programs for A173847, there is no canonical definition to state claims against.
-/

/-! ## A173847.P15195742839973552481

`∏[∑{e}[3*n!, A000005(#)]]`
-/

namespace A173847.P15195742839973552481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A000005 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173847.P15195742839973552481

/-! ## A173847.P17638626687734631898

`A340774(∏[lcm(2, xor(n, -2))/2])`
-/

namespace A173847.P17638626687734631898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340774 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173847.P17638626687734631898

/-! ## A173847.P3392087482880617368

`A329379(A177278(n))`
-/

namespace A173847.P3392087482880617368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (A177278 n).toNat

end

end A173847.P3392087482880617368

/-! ## A173847.P7108533959869282569

`∏[A000120(A081562(n))]`
-/

namespace A173847.P7108533959869282569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A081562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173847.P7108533959869282569

/-!
# A173848: Number of permutations of 1..n with no adjacent pair summing to n + 8.

The programs for A173848, there is no canonical definition to state claims against.
-/

/-! ## A173848.P10636470356709974235

`A177279(gcd(n², ∏{digits}[n, #]))`
-/

namespace A173848.P10636470356709974235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177279 (Nat.gcd (n ^ 2) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A173848.P10636470356709974235

/-! ## A173848.P1342543651505304039

`a(n-1)*A309236(n²)` with `a(0)=1`
-/

namespace A173848.P1342543651505304039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A309236 (n ^ 2)

end

end A173848.P1342543651505304039

/-! ## A173848.P5427576461449620072

`A177279(lcm(n, n-4*floor(n/10)))`
-/

namespace A173848.P5427576461449620072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177279 (Int.lcm (n : ℤ) ((n : ℤ) - 4 * ⌊(n : ℚ) / 10⌋))

end

end A173848.P5427576461449620072

/-! ## A173848.P16708327947836929694

`A177279(2*n+11*floor(n/10)-n)`
-/

namespace A173848.P16708327947836929694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177279 ((2 * n : ℤ) + (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))).toNat

end

end A173848.P16708327947836929694

/-! ## A173848.P11458441063479753920

`∏[log2(A001316(3^n+1-∑[2^n]))]`
-/

namespace A173848.P11458441063479753920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 ((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173848.P11458441063479753920

/-!
# A173849: Number of permutations of 1..n with no adjacent pair summing to n + 9.

The programs for A173849, there is no canonical definition to state claims against.
-/

/-! ## A173849.P11876740077615524078

`A177280(lcm(n, dr(n)))`
-/

namespace A173849.P11876740077615524078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (Nat.lcm n (SequenceMachineLib.digitalRoot (n : ℤ)))

end

end A173849.P11876740077615524078

/-! ## A173849.P12855833537287977580

`A177280(A062399(n))`
-/

namespace A173849.P12855833537287977580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (A062399 n).toNat

end

end A173849.P12855833537287977580

/-! ## A173849.P10871917228806066579

`A177280(A097937(n)+n)`
-/

namespace A173849.P10871917228806066579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (A097937 n + (n : ℤ)).toNat

end

end A173849.P10871917228806066579

/-! ## A173849.P9778957830640812133

`∏[A039637(∏[A273458(n)])]`
-/

namespace A173849.P9778957830640812133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173849.P9778957830640812133

/-! ## A173849.P12787309284510872091

`A177280(lt[1, A319891(n+1)])`
-/

namespace A173849.P12787309284510872091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A173849.P12787309284510872091

/-!
# A173850: Number of permutations of 1..n with no adjacent pair summing to n+10.

The programs for A173850, there is no canonical definition to state claims against.
-/

/-! ## A173850.P7155509030162122866

`∏{e}[Δ[3^n], A177281(#)]`
-/

namespace A173850.P7155509030162122866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A177281 (Nat.factorization (f1 n).natAbs p)

end

end A173850.P7155509030162122866

/-! ## A173850.P14041532887770796622

`A177281(A004186(n))`
-/

namespace A173850.P14041532887770796622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (A004186 n).toNat

end

end A173850.P14041532887770796622

/-! ## A173850.P15978549137330359749

`A177281(A130575(n))`
-/

namespace A173850.P15978549137330359749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (A130575 n).toNat

end

end A173850.P15978549137330359749

/-! ## A173850.P4816133779715637881

`A177281(A324662(∑[n]))`
-/

namespace A173850.P4816133779715637881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173850.P4816133779715637881

/-! ## A173850.P12131911543442694887

`A177281(record[A248034(n)])`
-/

namespace A173850.P12131911543442694887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173850.P12131911543442694887

/-!
# A173854: Smallest positive integer k such that 2^n + k^2 is a prime number.

The programs for A173854, there is no canonical definition to state claims against.
-/

/-! ## A173854.P4870269280330802268

`A056898(lcm(4, 2^n))`
-/

namespace A173854.P4870269280330802268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (Nat.lcm 4 (2 ^ n))

end

end A173854.P4870269280330802268

/-! ## A173854.P7444387748459848524

`or(1, A056898(2^n))`
-/

namespace A173854.P7444387748459848524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056898 (2 ^ n))

end

end A173854.P7444387748459848524

/-! ## A173854.P6083744148342445343

`A056898((2-char[1])^n)`
-/

namespace A173854.P6083744148342445343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n).toNat

end

end A173854.P6083744148342445343

/-! ## A173854.P4044278202522489265

`A003560(A056898(2^n))`
-/

namespace A173854.P4044278202522489265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (A056898 (2 ^ n)).toNat

end

end A173854.P4044278202522489265

/-! ## A173854.P1198852821057385076

`A056898(A000079(n))+char[1]`
-/

namespace A173854.P1198852821057385076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A173854.P1198852821057385076

/-!
# A173855: a(n) = A173039(n+4) - A173039(n+1).

The programs for A173855, the canonical program `A173855.P16456716120695782105` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173855 has offset 1).

The definition of A173855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173855.P10566657467717715988

`ogf((8+4x+24x^2+24x^3+4x^4+8x^5)/(1-2x^3+x^6))`
-/

namespace A173855.P10566657467717715988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 4, 24, 24, 4, 8] [1, 0, 0, -2, 0, 0, 1] n

end

end A173855.P10566657467717715988

namespace A173855

/-- `ogf((8+4x+24x^2+24x^3+4x^4+8x^5)/(1-2x^3+x^6))` -/
def P10566657467717715988.Spec : Prop :=
  ∀ n, P10566657467717715988.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P16456716120695782105

`2*a(n-3)-a(n-6)` with `a(0)=8, a(1)=4, a(2)=24, a(3)=40, a(4)=12, a(5)=56`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173855

/-- `2*a(n-3)-a(n-6)` -/
def P16456716120695782105.Spec : Prop :=
  ∀ n, P16456716120695782105.a n = A173855 (n + 1)

theorem P16456716120695782105.correct : P16456716120695782105.Spec := by
  intro n
  simp only [A173855, Nat.add_sub_cancel]

end A173855

/-! ## A173855.P2160361067769482428

`4*A173773(n)`
-/

namespace A173855.P2160361067769482428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173773 n

end

end A173855.P2160361067769482428

namespace A173855

/-- `4*A173773(n)` -/
def P2160361067769482428.Spec : Prop :=
  ∀ n, P2160361067769482428.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P17532168825390832494

`A173039(n+4)-A173039(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173855.P17532168825390832494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173039 (n + 4) - A173039 (n + 1)

end

end A173855.P17532168825390832494

namespace A173855

/-- `A173039(n+4)-A173039(n+1)` -/
def P17532168825390832494.Spec : Prop :=
  ∀ n, P17532168825390832494.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P583267678864095782

`2*comp[4*n]*gcd(2, n%3)²`
-/

namespace A173855.P583267678864095782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * Nat.gcd 2 (n % 3) ^ 2

end

end A173855.P583267678864095782

namespace A173855

/-- `2*comp[4*n]*gcd(2, n%3)²` -/
def P583267678864095782.Spec : Prop :=
  ∀ n, (P583267678864095782.a n : ℤ) = A173855 (n + 1)

end A173855

/-! ## A173855.P17665915262463121614

`A047410(n+1)*A173259(n+1)`
-/

namespace A173855.P17665915262463121614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1) * A173259 (n + 1)

end

end A173855.P17665915262463121614

namespace A173855

/-- `A047410(n+1)*A173259(n+1)` -/
def P17665915262463121614.Spec : Prop :=
  ∀ n, P17665915262463121614.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P8490234697442473176

`A175971(n+1)/A047410(n+1)`
-/

namespace A173855.P8490234697442473176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175971 (n + 1) : ℚ) / (A047410 (n + 1) : ℚ)

end

end A173855.P8490234697442473176

namespace A173855

/-- `A175971(n+1)/A047410(n+1)` -/
def P8490234697442473176.Spec : Prop :=
  ∀ n, P8490234697442473176.a n = (A173855 (n + 1) : ℚ)

end A173855

/-! ## A173855.P10120158625158452630

`(3-A131534(n))²*A047410(n+1)`
-/

namespace A173855.P10120158625158452630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A131534 n) ^ 2 * A047410 (n + 1)

end

end A173855.P10120158625158452630

namespace A173855

/-- `(3-A131534(n))²*A047410(n+1)` -/
def P10120158625158452630.Spec : Prop :=
  ∀ n, P10120158625158452630.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P5204849664374596674

`A175971(n+1)/(A042968(n+1)+A042968(n+1))`
-/

namespace A173855.P5204849664374596674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175971 (n + 1) : ℚ) / (A042968 (n + 1) + A042968 (n + 1) : ℚ)

end

end A173855.P5204849664374596674

namespace A173855

/-- `A175971(n+1)/(A042968(n+1)+A042968(n+1))` -/
def P5204849664374596674.Spec : Prop :=
  ∀ n, P5204849664374596674.a n = (A173855 (n + 1) : ℚ)

end A173855

/-! ## A173855.P12395142843683659398

`A173536(n+4)-A173536(n+1)`
-/

namespace A173855.P12395142843683659398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 4) - A173536 (n + 1)

end

end A173855.P12395142843683659398

namespace A173855

/-- `A173536(n+4)-A173536(n+1)` -/
def P12395142843683659398.Spec : Prop :=
  ∀ n, P12395142843683659398.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P16171163635245564426

`4*A064680(comp[4*n])`
-/

namespace A173855.P16171163635245564426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A064680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173855.P16171163635245564426

namespace A173855

/-- `4*A064680(comp[4*n])` -/
def P16171163635245564426.Spec : Prop :=
  ∀ n, P16171163635245564426.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P4872989686955991528

`A070290(ceil((3*n+n-2)/3)+1)`
-/

namespace A173855.P4872989686955991528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070290 (⌈((3 * n : ℤ) + ((n : ℤ) - 2) : ℚ) / 3⌉ + 1).toNat

end

end A173855.P4872989686955991528

namespace A173855

/-- `A070290(ceil((3*n+n-2)/3)+1)` -/
def P4872989686955991528.Spec : Prop :=
  ∀ n, P4872989686955991528.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P9867548479858738312

`A307266(A004773(n)+1)`
-/

namespace A173855.P9867548479858738312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A004773 n + 1).toNat

end

end A173855.P9867548479858738312

namespace A173855

/-- `A307266(A004773(n)+1)` -/
def P9867548479858738312.Spec : Prop :=
  ∀ n, P9867548479858738312.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P12654760658375245659

`2*A188134(A042968(n+1))`
-/

namespace A173855.P12654760658375245659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188134 (A042968 (n + 1)).toNat

end

end A173855.P12654760658375245659

namespace A173855

/-- `2*A188134(A042968(n+1))` -/
def P12654760658375245659.Spec : Prop :=
  ∀ n, P12654760658375245659.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P15766400187762492579

`A307266(A002264(n)+1+n)`
-/

namespace A173855.P15766400187762492579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A002264 n + 1 + (n : ℤ)).toNat

end

end A173855.P15766400187762492579

namespace A173855

/-- `A307266(A002264(n)+1+n)` -/
def P15766400187762492579.Spec : Prop :=
  ∀ n, P15766400187762492579.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P14917307573178960630

`2*A188134(record[gcd(n+1, A188134(n+1))])`
-/

namespace A173855.P14917307573178960630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A188134 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188134 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173855.P14917307573178960630

namespace A173855

/-- `2*A188134(record[gcd(n+1, A188134(n+1))])` -/
def P14917307573178960630.Spec : Prop :=
  ∀ n, P14917307573178960630.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P5404711617780181145

`4*(A122918(2*n)+2*n+1)`
-/

namespace A173855.P5404711617780181145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A122918 (2 * n) + (2 * n + 1 : ℤ))

end

end A173855.P5404711617780181145

namespace A173855

/-- `4*(A122918(2*n)+2*n+1)` -/
def P5404711617780181145.Spec : Prop :=
  ∀ n, P5404711617780181145.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P690352045610054191

`A008574(A173773(n))`
-/

namespace A173855.P690352045610054191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A173773 n).toNat

end

end A173855.P690352045610054191

namespace A173855

/-- `A008574(A173773(n))` -/
def P690352045610054191.Spec : Prop :=
  ∀ n, P690352045610054191.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P1028567526445706927

`2*2*A065173(A047484(n+1))`
-/

namespace A173855.P1028567526445706927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A065173 (A047484 (n + 1)).toNat)

end

end A173855.P1028567526445706927

namespace A173855

/-- `2*2*A065173(A047484(n+1))` -/
def P1028567526445706927.Spec : Prop :=
  ∀ n, P1028567526445706927.a n = A173855 (n + 1)

end A173855

/-! ## A173855.P14253157963248172129

`2*A070290(2*A042968(n+1))`
-/

namespace A173855.P14253157963248172129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070290 (2 * A042968 (n + 1)).toNat

end

end A173855.P14253157963248172129

namespace A173855

/-- `2*A070290(2*A042968(n+1))` -/
def P14253157963248172129.Spec : Prop :=
  ∀ n, P14253157963248172129.a n = A173855 (n + 1)

end A173855

/-!
# A173856: Expansion of 10/9 in base phi.

The programs for A173856, the canonical program `A173856.P12712047308771004606` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173856 has offset 1).

The definition of A173856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173856.P12712047308771004606

`char[lcm(2*n+3, 1-or(1, ∑[n+1])%3)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173856

/-- `char[lcm(2*n+3, 1-or(1, ∑[n+1])%3)]` -/
def P12712047308771004606.Spec : Prop :=
  ∀ n, (P12712047308771004606.a n : ℤ) = A173856 (n + 1)

theorem P12712047308771004606.correct : P12712047308771004606.Spec := by
  intro n
  simp only [A173856, Nat.add_sub_cancel]

end A173856

/-!
# A173857: Expansion of 3/2 in base phi.

The programs for A173857, the canonical program `A173857.P5690502025806881756` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173857 has offset 1).

The definition of A173857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173857.P5690502025806881756

`ogf((1+x^2-x^3)/(1-x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173857

/-- `ogf((1+x^2-x^3)/(1-x^3))` -/
def P5690502025806881756.Spec : Prop :=
  ∀ n, P5690502025806881756.a n = A173857 (n + 1)

theorem P5690502025806881756.correct : P5690502025806881756.Spec := by
  intro n
  simp only [A173857, Nat.add_sub_cancel]

end A173857

/-!
# A173858: Expansion of 4/3 in base phi.

The programs for A173858, the canonical program `A173858.P17673914974068593280` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173858 has offset 1).

The definition of A173858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173858.P17673914974068593280

`ogf((1-x^2+x^3+x^4-x^6)/(1-x^2+x^4-x^6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173858

/-- `ogf((1-x^2+x^3+x^4-x^6)/(1-x^2+x^4-x^6))` -/
def P17673914974068593280.Spec : Prop :=
  ∀ n, P17673914974068593280.a n = A173858 (n + 1)

theorem P17673914974068593280.correct : P17673914974068593280.Spec := by
  intro n
  simp only [A173858, Nat.add_sub_cancel]

end A173858

/-!
# A173859: Expansion of 6/5 in base phi.

The programs for A173859, there is no canonical definition to state claims against.
-/

/-! ## A173859.P18161241246333448203

`C(A119335(n), A088570(A259642(n+3)))`
-/

namespace A173859.P18161241246333448203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119335 n).toNat (A088570 (A259642 (n + 3)).toNat).toNat

end

end A173859.P18161241246333448203

/-!
# A173860: Expansion of 7/6 in base phi.

The programs for A173860, there is no canonical definition to state claims against.
-/

/-! ## A173860.P9053313814324118494

`A003849(A084376(n)+A014707(n+1))`
-/

namespace A173860.P9053313814324118494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A084376 n + A014707 (n + 1)).toNat

end

end A173860.P9053313814324118494

/-!
# A173861: Expansion of 8/7 in base phi.

The programs for A173861, the canonical program `A173861.P8356305631541759798` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173861 has offset 1).

The definition of A173861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173861.P8356305631541759798

`C(and(17, n²), 17)^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173861

/-- `C(and(17, n²), 17)^n` -/
def P8356305631541759798.Spec : Prop :=
  ∀ n, (P8356305631541759798.a n : ℤ) = A173861 (n + 1)

theorem P8356305631541759798.correct : P8356305631541759798.Spec := by
  intro n
  simp only [A173861, Nat.add_sub_cancel]

end A173861

/-!
# A173862: a(n) = A158772(n-1)/21.

The programs for A173862, the canonical program `A173862.P12177131599370371926` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173862 has offset 1).

The definition of A173862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173862.P12177131599370371926

`A158772(n)/21`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173862

/-- `A158772(n)/21` -/
def P12177131599370371926.Spec : Prop :=
  ∀ n, P12177131599370371926.a n = (A173862 (n + 1) : ℚ)

end A173862

/-! ## A173862.P11799422408219050702

`2^floor(n/3)`
-/

namespace A173862.P11799422408219050702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A173862.P11799422408219050702

namespace A173862

/-- `2^floor(n/3)` -/
def P11799422408219050702.Spec : Prop :=
  ∀ n, P11799422408219050702.a n = (A173862 (n + 1) : ℚ)

end A173862

/-! ## A173862.P1348130736882640366

`∏[runs[∑[n%4]]]`
-/

namespace A173862.P1348130736882640366
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P1348130736882640366

namespace A173862

/-- `∏[runs[∑[n%4]]]` -/
def P1348130736882640366.Spec : Prop :=
  ∀ n, (P1348130736882640366.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P3106262554676036156

`∏[runs[∑[and(3, n)]]]`
-/

namespace A173862.P3106262554676036156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P3106262554676036156

namespace A173862

/-- `∏[runs[∑[and(3, n)]]]` -/
def P3106262554676036156.Spec : Prop :=
  ∀ n, (P3106262554676036156.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P11118895286508927702

`∏[abs((1-n)%3)!]`
-/

namespace A173862.P11118895286508927702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |Int.tmod (1 - (n : ℤ)) 3|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P11118895286508927702

namespace A173862

/-- `∏[abs((1-n)%3)!]` -/
def P11118895286508927702.Spec : Prop :=
  ∀ n, (P11118895286508927702.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P15727681705376833541

`∏[(dr(1-n)%3)!]`
-/

namespace A173862.P15727681705376833541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P15727681705376833541

namespace A173862

/-- `∏[(dr(1-n)%3)!]` -/
def P15727681705376833541.Spec : Prop :=
  ∀ n, (P15727681705376833541.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P1135452285982815834

`∏[Δ[comp[lcm(4, n+1)]]]`
-/

namespace A173862.P1135452285982815834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P1135452285982815834

namespace A173862

/-- `∏[Δ[comp[lcm(4, n+1)]]]` -/
def P1135452285982815834.Spec : Prop :=
  ∀ n, P1135452285982815834.a n = A173862 (n + 1)

end A173862

/-! ## A173862.P16756903753793510936

`2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173862.P16756903753793510936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 3)

end

end A173862.P16756903753793510936

namespace A173862

/-- `2*a(n-3)` -/
def P16756903753793510936.Spec : Prop :=
  ∀ n, (P16756903753793510936.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P14020130819940129672

`∏[(lcm(7, 1-n)%3)!]`
-/

namespace A173862.P14020130819940129672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm 7 (1 - (n : ℤ)) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P14020130819940129672

namespace A173862

/-- `∏[(lcm(7, 1-n)%3)!]` -/
def P14020130819940129672.Spec : Prop :=
  ∀ n, (P14020130819940129672.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P6188110484530591921

`∏[runs[and(n+1, n+2)]]`
-/

namespace A173862.P6188110484530591921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P6188110484530591921

namespace A173862

/-- `∏[runs[and(n+1, n+2)]]` -/
def P6188110484530591921.Spec : Prop :=
  ∀ n, (P6188110484530591921.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P8285637559062650647

`∏[runs[or(n+2, n+3)]]`
-/

namespace A173862.P8285637559062650647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P8285637559062650647

namespace A173862

/-- `∏[runs[or(n+2, n+3)]]` -/
def P8285637559062650647.Spec : Prop :=
  ∀ n, (P8285637559062650647.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P2759622022581785886

`∏[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A173862.P2759622022581785886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P2759622022581785886

namespace A173862

/-- `∏[abs(a(n-3))]` -/
def P2759622022581785886.Spec : Prop :=
  ∀ n, (P2759622022581785886.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P11628420404065403561

`∏[a(n-3)!]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A173862.P11628420404065403561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P11628420404065403561

namespace A173862

/-- `∏[a(n-3)!]` -/
def P11628420404065403561.Spec : Prop :=
  ∀ n, (P11628420404065403561.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P5477040208229314118

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173862.P5477040208229314118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + a (n - 3)

end

end A173862.P5477040208229314118

namespace A173862

/-- `a(n-3)+a(n-3)` -/
def P5477040208229314118.Spec : Prop :=
  ∀ n, (P5477040208229314118.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P2597632712215414790

`a(n-3)/(1-1/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A173862.P2597632712215414790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A173862.P2597632712215414790

namespace A173862

/-- `a(n-3)/(1-1/2)` -/
def P2597632712215414790.Spec : Prop :=
  ∀ n, P2597632712215414790.a n = (A173862 (n + 1) : ℚ)

end A173862

/-! ## A173862.P4005726525981215161

`floor(2^∑[a(n-3)²])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A173862.P4005726525981215161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173862.P4005726525981215161

namespace A173862

/-- `floor(2^∑[a(n-3)²])` -/
def P4005726525981215161.Spec : Prop :=
  ∀ n, (P4005726525981215161.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P8149603674760470156

`floor(2^∑[floor(a(n-3))])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A173862.P8149603674760470156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173862.P8149603674760470156

namespace A173862

/-- `floor(2^∑[floor(a(n-3))])` -/
def P8149603674760470156.Spec : Prop :=
  ∀ n, (P8149603674760470156.a n : ℤ) = A173862 (n + 1)

end A173862

/-! ## A173862.P8764827131461919803

`∏[A100063(n)]`
-/

namespace A173862.P8764827131461919803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P8764827131461919803

namespace A173862

/-- `∏[A100063(n)]` -/
def P8764827131461919803.Spec : Prop :=
  ∀ n, P8764827131461919803.a n = A173862 (n + 1)

end A173862

/-! ## A173862.P9880454657009995769

`∏[abs(A099837(n))]`
-/

namespace A173862.P9880454657009995769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099837 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P9880454657009995769

namespace A173862

/-- `∏[abs(A099837(n))]` -/
def P9880454657009995769.Spec : Prop :=
  ∀ n, P9880454657009995769.a n = A173862 (n + 1)

end A173862

/-! ## A173862.P18061438206087402226

`∏[abs(A100051(n))]`
-/

namespace A173862.P18061438206087402226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100051 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173862.P18061438206087402226

namespace A173862

/-- `∏[abs(A100051(n))]` -/
def P18061438206087402226.Spec : Prop :=
  ∀ n, P18061438206087402226.a n = A173862 (n + 1)

end A173862

/-!
# A173863: Square root of A172545(n).

The programs for A173863, there is no canonical definition to state claims against.
-/

/-! ## A173863.P10306039867633606369

`A056737(A259227(n+1))`
-/

namespace A173863.P10306039867633606369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A259227 (n + 1)).toNat

end

end A173863.P10306039867633606369

/-! ## A173863.P17213363932915878327

`A056737(record[A003991(1+n)])`
-/

namespace A173863.P17213363932915878327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173863.P17213363932915878327

/-! ## A173863.P13111649976226122415

`A306257(record[A098352(n+1)])`
-/

namespace A173863.P13111649976226122415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173863.P13111649976226122415

/-! ## A173863.P8234245432142518365

`A306257(record[A098353(n+1)])`
-/

namespace A173863.P8234245432142518365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173863.P8234245432142518365

/-! ## A173863.P16938893134266775172

`A306257(4*A259227(n+1))`
-/

namespace A173863.P16938893134266775172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (4 * A259227 (n + 1)).toNat

end

end A173863.P16938893134266775172

/-! ## A173863.P16130308931755247704

`A306257(record[4*A003991(n+1)])`
-/

namespace A173863.P16130308931755247704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173863.P16130308931755247704

/-! ## A173863.P11208808695165148739

`A056737(record[A077028(n)-A172471(n)])`
-/

namespace A173863.P11208808695165148739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173863.P11208808695165148739

/-! ## A173863.P11681919012639219746

`sqrt(A172545(n+1))`
-/

namespace A173863.P11681919012639219746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172545 (n + 1) : ℝ)

end

end A173863.P11681919012639219746

/-! ## A173863.P6413255062415628901

`A002262(2*A172545(n+1))`
-/

namespace A173863.P6413255062415628901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A172545 (n + 1)).toNat

end

end A173863.P6413255062415628901

/-! ## A173863.P7028980513926759506

`A306257(A172412(n+2))`
-/

namespace A173863.P7028980513926759506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (A172412 (n + 2)).toNat

end

end A173863.P7028980513926759506

/-!
# A173864: Expansion of 9/8 in base phi.

The programs for A173864, the canonical program `A173864.P4808545977559515087` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173864 has offset 1).

The definition of A173864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173864.P4808545977559515087

`char[a(n-2)+12]` with `a(0)=0, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173864

/-- `char[a(n-2)+12]` -/
def P4808545977559515087.Spec : Prop :=
  ∀ n, (P4808545977559515087.a n : ℤ) = A173864 (n + 1)

theorem P4808545977559515087.correct : P4808545977559515087.Spec := by
  intro n
  simp only [A173864, Nat.add_sub_cancel]

end A173864

/-!
# A173867: Largest prime < n-th Catalan number.

The programs for A173867, the canonical program `A173867.P14972472500471020350` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173867 has offset 3).

The definition of A173867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173867.P14972472500471020350

`A151799(A000108(n+3))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173867

/-- `A151799(A000108(n+3))` -/
def P14972472500471020350.Spec : Prop :=
  ∀ n, P14972472500471020350.a n = A173867 (n + 3)

theorem P14972472500471020350.correct : P14972472500471020350.Spec := by
  intro n
  simp only [A173867, Nat.add_sub_cancel]

end A173867

/-! ## A173867.P10403805818179516431

`A151799(record[(4-6/n)*a(n-1)])` with `a(0)=5, a(1)=1`
-/

namespace A173867.P10403805818179516431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A173867.P10403805818179516431

namespace A173867

/-- `A151799(record[(4-6/n)*a(n-1)])` -/
def P10403805818179516431.Spec : Prop :=
  ∀ n, P10403805818179516431.a n = A173867 (n + 3)

end A173867

/-! ## A173867.P3501319527672921188

`A151799(A230585(n+2))`
-/

namespace A173867.P3501319527672921188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A230585 (n + 2)).toNat

end

end A173867.P3501319527672921188

namespace A173867

/-- `A151799(A230585(n+2))` -/
def P3501319527672921188.Spec : Prop :=
  ∀ n, P3501319527672921188.a n = A173867 (n + 3)

end A173867

/-! ## A173867.P4252868087035155016

`A151799(A120588(n+4))`
-/

namespace A173867.P4252868087035155016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A120588 (n + 4)).toNat

end

end A173867.P4252868087035155016

namespace A173867

/-- `A151799(A120588(n+4))` -/
def P4252868087035155016.Spec : Prop :=
  ∀ n, P4252868087035155016.a n = A173867 (n + 3)

end A173867

/-! ## A173867.P15252886861763700341

`A151799(Δ[Δ[A014143(n)]])`
-/

namespace A173867.P15252886861763700341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (f1 (n + 1) - f1 n).toNat

end

end A173867.P15252886861763700341

namespace A173867

/-- `A151799(Δ[Δ[A014143(n)]])` -/
def P15252886861763700341.Spec : Prop :=
  ∀ n, P15252886861763700341.a n = A173867 (n + 3)

end A173867

/-!
# A173868: Smallest prime > n-th Catalan number.

The programs for A173868, the canonical program `A173868.P3619677425062889459` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173868 has offset 1).

The definition of A173868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173868.P3619677425062889459

`A151800(A000108(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A173868

/-- `A151800(A000108(n+1))` -/
def P3619677425062889459.Spec : Prop :=
  ∀ n, P3619677425062889459.a n = A173868 (n + 1)

theorem P3619677425062889459.correct : P3619677425062889459.Spec := by
  intro n
  simp only [A173868, Nat.add_sub_cancel]

end A173868

/-! ## A173868.P17302167582230812337

`A000040(A273974(n+1)+1)`
-/

namespace A173868.P17302167582230812337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A273974 (n + 1) + 1).toNat

end

end A173868.P17302167582230812337

namespace A173868

/-- `A000040(A273974(n+1)+1)` -/
def P17302167582230812337.Spec : Prop :=
  ∀ n, P17302167582230812337.a n = A173868 (n + 1)

end A173868

/-! ## A173868.P5273211317152712474

`A151800(A039598(∑[n]))`
-/

namespace A173868.P5273211317152712474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A039598 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173868.P5273211317152712474

namespace A173868

/-- `A151800(A039598(∑[n]))` -/
def P5273211317152712474.Spec : Prop :=
  ∀ n, P5273211317152712474.a n = A173868 (n + 1)

end A173868

/-! ## A173868.P1075575726069050658

`A151800(A050158(∑[n]))`
-/

namespace A173868.P1075575726069050658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A050158 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173868.P1075575726069050658

namespace A173868

/-- `A151800(A050158(∑[n]))` -/
def P1075575726069050658.Spec : Prop :=
  ∀ n, P1075575726069050658.a n = A173868 (n + 1)

end A173868

/-! ## A173868.P7949485344716019840

`A151800(A062991(∑[n]))`
-/

namespace A173868.P7949485344716019840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A062991 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173868.P7949485344716019840

namespace A173868

/-- `A151800(A062991(∑[n]))` -/
def P7949485344716019840.Spec : Prop :=
  ∀ n, P7949485344716019840.a n = A173868 (n + 1)

end A173868

/-!
# A173869: Irregular triangle T(n,k) = A164341(n,k) * A036039(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A173869, there is no canonical definition to state claims against.
-/

/-! ## A173869.P2688758242284427591

`A036039(A028310(n))*A164341(n)`
-/

namespace A173869.P2688758242284427591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (A028310 n).toNat * A164341 n

end

end A173869.P2688758242284427591

/-!
# A173870: Consider each term k contained in A114994; write 2k if and only if 2k is not a member of A114994.

The programs for A173870, there is no canonical definition to state claims against.
-/

/-! ## A173870.P7289464784845190963

`∩[A335485(n+1), A005843(A114994(n))]`
-/

namespace A173870.P7289464784845190963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A114994 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173870.P7289464784845190963

/-! ## A173870.P195631881736317740

`∑[A000005(A165281(n)-1)]-2`
-/

namespace A173870.P195631881736317740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165281 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A173870.P195631881736317740

/-! ## A173870.P15081835978251559866

`eq[5%A124765(2*n+1), A280700(A373948(n+1))]`
-/

namespace A173870.P15081835978251559866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A124765 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A373948 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173870.P15081835978251559866

/-!
# A173871: Row sums of A114994.

The programs for A173871, there is no canonical definition to state claims against.
-/

/-! ## A173871.P5892708416259363285

`record[A327333(n+1)-n]-(n+1)/∏{p}[n+1, #]`
-/

namespace A173871.P5892708416259363285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A173871.P5892708416259363285

/-! ## A173871.P7007745969111756317

`A182434(A092545(n))`
-/

namespace A173871.P7007745969111756317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182434 (A092545 n).toNat

end

end A173871.P7007745969111756317

/-!
# A173872: Primes of the form 12*2^n - 11.

The programs for A173872, there is no canonical definition to state claims against.
-/

/-! ## A173872.P10014946718643757448

`∩[A095743(n+1), A139697(n+1)]`
-/

namespace A173872.P10014946718643757448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173872.P10014946718643757448

/-! ## A173872.P670078180445459134

`p?[3*2^n-11]`
-/

namespace A173872.P670078180445459134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173872.P670078180445459134

/-! ## A173872.P6275657939358041135

`or(1, p?[2*a(n-1)+11])` with `a(0)=1`
-/

namespace A173872.P6275657939358041135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A173872.P6275657939358041135

/-! ## A173872.P13056782700574300764

`record[∑{p}[A139697(n+2), #]]`
-/

namespace A173872.P13056782700574300764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139697 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173872.P13056782700574300764

/-! ## A173872.P5176657116064880427

`∩[A002144(n+1), A139697(n+1)]`
-/

namespace A173872.P5176657116064880427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173872.P5176657116064880427

/-!
# A173873: a(n) = 2*a(n-1) + 13, a(1)=1.

The programs for A173873, the canonical program `A173873.P7416192542268757021` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173873 has offset 1).

The definition of A173873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+13` (program `A173873.P7416192542268757021`, by `A173873.P7416192542268757021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173873.P2346631653673983243

`ogf((1+12x)/(1-3x+2x^2))`
-/

namespace A173873.P2346631653673983243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12] [1, -3, 2] n

end

end A173873.P2346631653673983243

namespace A173873

/-- `ogf((1+12x)/(1-3x+2x^2))` -/
def P2346631653673983243.Spec : Prop :=
  ∀ n, P2346631653673983243.a n = A173873 (n + 1)

end A173873

/-! ## A173873.P8828248596268726443

`7*2^(n+1)-13`
-/

namespace A173873.P8828248596268726443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ (n + 1) : ℤ) - 13

end

end A173873.P8828248596268726443

namespace A173873

/-- `7*2^(n+1)-13` -/
def P8828248596268726443.Spec : Prop :=
  ∀ n, P8828248596268726443.a n = A173873 (n + 1)

theorem P8828248596268726443.correct : P8828248596268726443.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173873, Nat.add_sub_cancel, A173873.P8828248596268726443.a, A173873.P7416192542268757021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173873, Nat.add_sub_cancel, A173873.P8828248596268726443.a, A173873.P7416192542268757021.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A173873

/-! ## A173873.P7416192542268757021

`2*a(n-1)+13` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A173873

/-- `2*a(n-1)+13` -/
def P7416192542268757021.Spec : Prop :=
  ∀ n, (P7416192542268757021.a n : ℤ) = A173873 (n + 1)

theorem P7416192542268757021.correct : P7416192542268757021.Spec := by
  intro n
  simp only [A173873, Nat.add_sub_cancel]

end A173873

/-! ## A173873.P15546728928769238636

`∑[2*a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A173873.P15546728928769238636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173873.P15546728928769238636

namespace A173873

/-- `∑[2*a(n-1)]` -/
def P15546728928769238636.Spec : Prop :=
  ∀ n, (P15546728928769238636.a n : ℤ) = A173873 (n + 1)

end A173873

/-! ## A173873.P12396002006596378169

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A173873.P12396002006596378169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173873.P12396002006596378169

namespace A173873

/-- `∑[a(n-1)+a(n-1)]` -/
def P12396002006596378169.Spec : Prop :=
  ∀ n, (P12396002006596378169.a n : ℤ) = A173873 (n + 1)

end A173873

/-! ## A173873.P2596633577975802463

`∑[gcd(7*2^n, A000038(n))]`
-/

namespace A173873.P2596633577975802463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * 2 ^ n : ℤ) (A000038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173873.P2596633577975802463

namespace A173873

/-- `∑[gcd(7*2^n, A000038(n))]` -/
def P2596633577975802463.Spec : Prop :=
  ∀ n, (P2596633577975802463.a n : ℤ) = A173873 (n + 1)

end A173873

/-! ## A173873.P9806876441905975392

`∑[lcm(a(n-1), A005009(n))]` with `a(0)=1`
-/

namespace A173873.P9806876441905975392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A005009 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173873.P9806876441905975392

namespace A173873

/-- `∑[lcm(a(n-1), A005009(n))]` -/
def P9806876441905975392.Spec : Prop :=
  ∀ n, (P9806876441905975392.a n : ℤ) = A173873 (n + 1)

end A173873

/-! ## A173873.P5660262327018170004

`A182464(n)%A122041(n+1)`
-/

namespace A173873.P5660262327018170004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182464 n) (A122041 (n + 1))

end

end A173873.P5660262327018170004

namespace A173873

/-- `A182464(n)%A122041(n+1)` -/
def P5660262327018170004.Spec : Prop :=
  ∀ n, P5660262327018170004.a n = A173873 (n + 1)

end A173873

/-! ## A173873.P14166863260700322317

`∑[A281200(n+1)/A028310(n)]`
-/

namespace A173873.P14166863260700322317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281200 (n + 1) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173873.P14166863260700322317

namespace A173873

/-- `∑[A281200(n+1)/A028310(n)]` -/
def P14166863260700322317.Spec : Prop :=
  ∀ n, P14166863260700322317.a n = (A173873 (n + 1) : ℚ)

end A173873

/-!
# A173874: Primes in A173836.

The programs for A173874, there is no canonical definition to state claims against.
-/

/-! ## A173874.P10326925431459756632

`p?[A173836(n+1)]`
-/

namespace A173874.P10326925431459756632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P10326925431459756632

/-! ## A173874.P7643678563403561404

`p?[record[A173836(A052938(n))]]`
-/

namespace A173874.P7643678563403561404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P7643678563403561404

/-! ## A173874.P7519877942479613955

`p?[record[A173836(A141256(n))]]`
-/

namespace A173874.P7519877942479613955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P7519877942479613955

/-! ## A173874.P14489450450926222142

`p?[record[A173836(A236858(n))]]`
-/

namespace A173874.P14489450450926222142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P14489450450926222142

/-! ## A173874.P5809992161397518529

`p?[record[A173836(A286554(n))]]`
-/

namespace A173874.P5809992161397518529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P5809992161397518529

/-! ## A173874.P14863536084384452211

`p?[record[A173836(A324347(n))]]`
-/

namespace A173874.P14863536084384452211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P14863536084384452211

/-! ## A173874.P4280038361491787487

`p?[record[A173836(A344180(n))]]`
-/

namespace A173874.P4280038361491787487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173874.P4280038361491787487

/-! ## A173874.P9286391921585576962

`record[A006530(A173836(n+3))]`
-/

namespace A173874.P9286391921585576962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173836 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173874.P9286391921585576962

/-! ## A173874.P16555452063949546936

`filter[A173836(n+1), A010051(#)]`
-/

namespace A173874.P16555452063949546936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A173874.P16555452063949546936

/-! ## A173874.P5284873134128749253

`filter[A173836(n+1), A257531(#)]`
-/

namespace A173874.P5284873134128749253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A173874.P5284873134128749253

/-! ## A173874.P288764339374315913

`filter[A173836(n+1), A302777(#)]`
-/

namespace A173874.P288764339374315913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A173874.P288764339374315913

/-! ## A173874.P2337721084344706393

`filter[A173836(n+1), A323152(#)]`
-/

namespace A173874.P2337721084344706393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A173874.P2337721084344706393

/-! ## A173874.P5928172722734826450

`filter[A173836(n+1), A323153(#)]`
-/

namespace A173874.P5928172722734826450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A173874.P5928172722734826450

/-! ## A173874.P10586882092055985947

`filter[A173836(n+1), A327861(#)]`
-/

namespace A173874.P10586882092055985947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A173874.P10586882092055985947

/-! ## A173874.P6342234683265403170

`filter[A173836(n+1), A340371(#)]`
-/

namespace A173874.P6342234683265403170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A173874.P6342234683265403170

/-! ## A173874.P10561661027812195270

`filter[A173836(n+1), A340374(#)]`
-/

namespace A173874.P10561661027812195270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340374 (f1 j).toNat = 1) n)

end

end A173874.P10561661027812195270

/-! ## A173874.P10426908209308963665

`filter[A173836(n+1), A353670(#)]`
-/

namespace A173874.P10426908209308963665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A173874.P10426908209308963665

/-! ## A173874.P2931615540920938667

`filter[A173836(n+1), A355937(#)]`
-/

namespace A173874.P2931615540920938667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A173874.P2931615540920938667

/-! ## A173874.P12436263552425290834

`filter[A173836(n+1), A365716(#)]`
-/

namespace A173874.P12436263552425290834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A173874.P12436263552425290834

/-! ## A173874.P6583383901294099550

`filter[A173836(n+1), A379969(#)]`
-/

namespace A173874.P6583383901294099550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A173874.P6583383901294099550

/-!
# A173875: Primes p of the form a^2-b^2 and p*a-b is also prime (with b=prime and a=b+1).

The programs for A173875, the canonical program `A173875.P11093925808872545403` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173875 has offset 1).

The definition of A173875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173875.P5207449925533176225

`2*p?[A068501(n+1)]+1`
-/

namespace A173875.P5207449925533176225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A173875.P5207449925533176225

namespace A173875

/-- `2*p?[A068501(n+1)]+1` -/
def P5207449925533176225.Spec : Prop :=
  ∀ n, P5207449925533176225.a n = A173875 (n + 1)

end A173875

/-! ## A173875.P8453009487685249680

`∩[A005385(n+1), A048161(n+1)]`
-/

namespace A173875.P8453009487685249680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P8453009487685249680

namespace A173875

/-- `∩[A005385(n+1), A048161(n+1)]` -/
def P8453009487685249680.Spec : Prop :=
  ∀ n, (P8453009487685249680.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P3937435276061215559

`∩[A048161(n+1), A065966(n+1)]`
-/

namespace A173875.P3937435276061215559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P3937435276061215559

namespace A173875

/-- `∩[A048161(n+1), A065966(n+1)]` -/
def P3937435276061215559.Spec : Prop :=
  ∀ n, (P3937435276061215559.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P11093925808872545403

`p?[2*A158526(n+1)+1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A173875

/-- `p?[2*A158526(n+1)+1]` -/
def P11093925808872545403.Spec : Prop :=
  ∀ n, P11093925808872545403.a n = A173875 (n + 1)

theorem P11093925808872545403.correct : P11093925808872545403.Spec := by
  intro n
  simp only [A173875, Nat.add_sub_cancel]

end A173875

/-! ## A173875.P2720514849941767735

`∩[A005385(n+1), A281575(n+1)]`
-/

namespace A173875.P2720514849941767735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P2720514849941767735

namespace A173875

/-- `∩[A005385(n+1), A281575(n+1)]` -/
def P2720514849941767735.Spec : Prop :=
  ∀ n, (P2720514849941767735.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P14346488394759710841

`∩[A065966(n+1), A281575(n+1)]`
-/

namespace A173875.P14346488394759710841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P14346488394759710841

namespace A173875

/-- `∩[A065966(n+1), A281575(n+1)]` -/
def P14346488394759710841.Spec : Prop :=
  ∀ n, (P14346488394759710841.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P5529257908205039153

`∩[A048161(n+1), A395563(n+1)]`
-/

namespace A173875.P5529257908205039153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P5529257908205039153

namespace A173875

/-- `∩[A048161(n+1), A395563(n+1)]` -/
def P5529257908205039153.Spec : Prop :=
  ∀ n, (P5529257908205039153.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P10178806786762458168

`∩[A005385(n+1), A172438(n+1)]`
-/

namespace A173875.P10178806786762458168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P10178806786762458168

namespace A173875

/-- `∩[A005385(n+1), A172438(n+1)]` -/
def P10178806786762458168.Spec : Prop :=
  ∀ n, (P10178806786762458168.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P15814247311754127283

`∩[A065966(n+1), A172438(n+1)]`
-/

namespace A173875.P15814247311754127283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P15814247311754127283

namespace A173875

/-- `∩[A065966(n+1), A172438(n+1)]` -/
def P15814247311754127283.Spec : Prop :=
  ∀ n, (P15814247311754127283.a n : ℤ) = A173875 (n + 1)

end A173875

/-! ## A173875.P12423448589986374890

`∩[A048161(n+1), A072055(n+1)]`
-/

namespace A173875.P12423448589986374890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173875.P12423448589986374890

namespace A173875

/-- `∩[A048161(n+1), A072055(n+1)]` -/
def P12423448589986374890.Spec : Prop :=
  ∀ n, (P12423448589986374890.a n : ℤ) = A173875 (n + 1)

end A173875

/-!
# A173881: Triangle T(n,k) = k*binomial(n,k)*binomial(n-1,k) with T(n,0) = T(n,n) = 1, read by rows.

The programs for A173881, the canonical program `A173881.P1893856933433499034` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173881 has offset 0).

The definition of A173881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173881.P1893856933433499034

`A007318(n)*A155865(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173881

/-- `A007318(n)*A155865(n)` -/
def P1893856933433499034.Spec : Prop :=
  ∀ n, P1893856933433499034.a n = A173881 n

theorem P1893856933433499034.correct : P1893856933433499034.Spec := by
  intro n
  simp only [A173881]

end A173881

/-! ## A173881.P3183904297694215383

`A154325(n)*A174116(n)`
-/

namespace A173881.P3183904297694215383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n * A174116 n

end

end A173881.P3183904297694215383

namespace A173881

/-- `A154325(n)*A174116(n)` -/
def P3183904297694215383.Spec : Prop :=
  ∀ n, P3183904297694215383.a n = A173881 n

end A173881

/-! ## A173881.P3569573494462166995

`sqrt(A174126(n))*A007318(n)`
-/

namespace A173881.P3569573494462166995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174126 n : ℝ) * (A007318 n : ℝ)

end

end A173881.P3569573494462166995

namespace A173881

/-- `sqrt(A174126(n))*A007318(n)` -/
def P3569573494462166995.Spec : Prop :=
  ∀ n, P3569573494462166995.a n = (A173881 n : ℝ)

end A173881

/-! ## A173881.P4297218680657179509

`A155864(n)²/A157635(n)`
-/

namespace A173881.P4297218680657179509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155864 n ^ 2 : ℚ) / (A157635 n : ℚ)

end

end A173881.P4297218680657179509

namespace A173881

/-- `A155864(n)²/A157635(n)` -/
def P4297218680657179509.Spec : Prop :=
  ∀ n, P4297218680657179509.a n = (A173881 n : ℚ)

end A173881

/-! ## A173881.P9340021618541259470

`(2-A103451(n))*A174116(n)`
-/

namespace A173881.P9340021618541259470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103451 n) * A174116 n

end

end A173881.P9340021618541259470

namespace A173881

/-- `(2-A103451(n))*A174116(n)` -/
def P9340021618541259470.Spec : Prop :=
  ∀ n, P9340021618541259470.a n = A173881 n

end A173881

/-! ## A173881.P17285765446921734565

`gcd(2, A174124(n))*A174116(n)`
-/

namespace A173881.P17285765446921734565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A174124 n) : ℤ) * A174116 n

end

end A173881.P17285765446921734565

namespace A173881

/-- `gcd(2, A174124(n))*A174116(n)` -/
def P17285765446921734565.Spec : Prop :=
  ∀ n, P17285765446921734565.a n = A173881 n

end A173881

/-! ## A173881.P15629545066432008473

`A007318(n)*A134399(A056943(n))`
-/

namespace A173881.P15629545066432008473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A134399 (A056943 n).toNat

end

end A173881.P15629545066432008473

namespace A173881

/-- `A007318(n)*A134399(A056943(n))` -/
def P15629545066432008473.Spec : Prop :=
  ∀ n, P15629545066432008473.a n = A173881 n

end A173881

/-! ## A173881.P14581788652488244008

`A007318(n)²*A086461(n)/A318274(n)`
-/

namespace A173881.P14581788652488244008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 * A086461 n : ℚ) / (A318274 n : ℚ)

end

end A173881.P14581788652488244008

namespace A173881

/-- `A007318(n)²*A086461(n)/A318274(n)` -/
def P14581788652488244008.Spec : Prop :=
  ∀ n, P14581788652488244008.a n = (A173881 n : ℚ)

end A173881

/-! ## A173881.P906473343481331011

`A174116(n)/A001263(n+1)*A174124(n)`
-/

namespace A173881.P906473343481331011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174116 n : ℚ) / (A001263 (n + 1) : ℚ) * (A174124 n : ℚ)

end

end A173881.P906473343481331011

namespace A173881

/-- `A174116(n)/A001263(n+1)*A174124(n)` -/
def P906473343481331011.Spec : Prop :=
  ∀ n, P906473343481331011.a n = (A173881 n : ℚ)

end A173881

/-!
# A173882: Triangle T(n, k) = A090443(n-1)/(A090443(k-1)*A090443(n-k-1)) read by rows.

The programs for A173882, the canonical program `A173882.P14512227098527934923` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173882 has offset 0).

The definition of A173882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173882.P4439338499694539549

`A007318(n)*A174117(n)`
-/

namespace A173882.P4439338499694539549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A174117 n

end

end A173882.P4439338499694539549

namespace A173882

/-- `A007318(n)*A174117(n)` -/
def P4439338499694539549.Spec : Prop :=
  ∀ n, P4439338499694539549.a n = A173882 n

end A173882

/-! ## A173882.P14512227098527934923

`A155865(n)*A174124(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173882

/-- `A155865(n)*A174124(n)` -/
def P14512227098527934923.Spec : Prop :=
  ∀ n, P14512227098527934923.a n = A173882 n

theorem P14512227098527934923.correct : P14512227098527934923.Spec := by
  intro n
  simp only [A173882]

end A173882

/-! ## A173882.P9034941916372166065

`sqrt(A008459(n))*A174117(n)`
-/

namespace A173882.P9034941916372166065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A174117 n : ℝ)

end

end A173882.P9034941916372166065

namespace A173882

/-- `sqrt(A008459(n))*A174117(n)` -/
def P9034941916372166065.Spec : Prop :=
  ∀ n, P9034941916372166065.a n = (A173882 n : ℝ)

end A173882

/-! ## A173882.P14544281305223473754

`Δ[A102363(n)]*A174117(n)`
-/

namespace A173882.P14544281305223473754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A174117 n

end

end A173882.P14544281305223473754

namespace A173882

/-- `Δ[A102363(n)]*A174117(n)` -/
def P14544281305223473754.Spec : Prop :=
  ∀ n, P14544281305223473754.a n = A173882 n

end A173882

/-! ## A173882.P12485716972804593860

`A028326(n)/2*A174117(n)`
-/

namespace A173882.P12485716972804593860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A174117 n : ℚ)

end

end A173882.P12485716972804593860

namespace A173882

/-- `A028326(n)/2*A174117(n)` -/
def P12485716972804593860.Spec : Prop :=
  ∀ n, P12485716972804593860.a n = (A173882 n : ℚ)

end A173882

/-! ## A173882.P9580167710871794966

`A097805(A014132(n+1))*A174117(n)`
-/

namespace A173882.P9580167710871794966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A014132 (n + 1)).toNat * A174117 n

end

end A173882.P9580167710871794966

namespace A173882

/-- `A097805(A014132(n+1))*A174117(n)` -/
def P9580167710871794966.Spec : Prop :=
  ∀ n, P9580167710871794966.a n = A173882 n

end A173882

/-! ## A173882.P4619789567417582831

`A004525(A028326(n))*A174117(n)`
-/

namespace A173882.P4619789567417582831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A174117 n

end

end A173882.P4619789567417582831

namespace A173882

/-- `A004525(A028326(n))*A174117(n)` -/
def P4619789567417582831.Spec : Prop :=
  ∀ n, P4619789567417582831.a n = A173882 n

end A173882

/-! ## A173882.P16004797355952154629

`A003602(A109128(n))*A174117(n)`
-/

namespace A173882.P16004797355952154629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A109128 n).toNat * A174117 n

end

end A173882.P16004797355952154629

namespace A173882

/-- `A003602(A109128(n))*A174117(n)` -/
def P16004797355952154629.Spec : Prop :=
  ∀ n, P16004797355952154629.a n = A173882 n

end A173882

/-!
# A173884: Double q-form product triangle:q=2;c(n,q)=Product[(1 - q^i)*(1 - q^(i - 1)), {i, 2, n}];t(n,m,q)=c(n,q)/(c(m,q)*c(n-m,q)).

The programs for A173884, there is no canonical definition to state claims against.
-/

/-! ## A173884.P8912698087800649219

`A262401(A342891(n)%A234517(3*n+5))`
-/

namespace A173884.P8912698087800649219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (Int.tmod (A342891 n) (A234517 (3 * n + 5))).toNat

end

end A173884.P8912698087800649219

/-! ## A173884.P4858092362951692100

`A004525(A176791(n)%A011554(n+1))*A022166(n)`
-/

namespace A173884.P4858092362951692100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A176791 n) (A011554 (n + 1))).toNat * A022166 n

end

end A173884.P4858092362951692100

/-! ## A173884.P820401227850490672

`∏{p}[A156950(n)², #]`
-/

namespace A173884.P820401227850490672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156950 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A173884.P820401227850490672

/-! ## A173884.P14751640616787614554

`A114585(A045912(n))`
-/

namespace A173884.P14751640616787614554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114585 (A045912 n).toNat

end

end A173884.P14751640616787614554

/-! ## A173884.P4968054438608649192

`A094110(A091378(n))`
-/

namespace A173884.P4968054438608649192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (A091378 n).toNat

end

end A173884.P4968054438608649192

/-!
# A173885: Double q-form product triangle:q=3;c(n,q)=Product[(1 - q^i)*(1 - q^(i - 1)), {i, 2, n}];t(n,m,q)=c(n,q)/(c(m,q)*c(n-m,q)).

The programs for A173885, there is no canonical definition to state claims against.
-/

/-! ## A173885.P10562217170886539883

`A186731((A174388(n)+1)²)`
-/

namespace A173885.P10562217170886539883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 ((A174388 n + 1) ^ 2).toNat

end

end A173885.P10562217170886539883

/-! ## A173885.P5552225671704750543

`A004523((A174388(n)+1)²)/2`
-/

namespace A173885.P5552225671704750543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 ((A174388 n + 1) ^ 2).toNat : ℚ) / 2

end

end A173885.P5552225671704750543

/-! ## A173885.P16738504969405357507

`A022167(n)*A091010(A022167(n))`
-/

namespace A173885.P16738504969405357507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A091010 (A022167 n).toNat

end

end A173885.P16738504969405357507

/-! ## A173885.P1344574332672799895

`A030548(A156951(n))*A156951(n)`
-/

namespace A173885.P1344574332672799895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A156951 n).toNat * A156951 n

end

end A173885.P1344574332672799895

/-! ## A173885.P12275353326539812162

`A022167(A004914(n+1))*A118185(n)`
-/

namespace A173885.P12275353326539812162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A004914 (n + 1)).toNat * A118185 n

end

end A173885.P12275353326539812162

/-!
# A173887: Triangle, see Mathematica code.

The programs for A173887, there is no canonical definition to state claims against.
-/

/-! ## A173887.P5725559132416406476

`gcd(A156766(n), A212360(A115216(n)))`
-/

namespace A173887.P5725559132416406476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156766 n) (A212360 (A115216 n).toNat)

end

end A173887.P5725559132416406476

/-! ## A173887.P5054777563760742841

`A064989(abs(A156690(n)))`
-/

namespace A173887.P5054777563760742841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 |A156690 n|.toNat

end

end A173887.P5054777563760742841

/-! ## A173887.P17816990932195461830

`A252463(abs(A156690(n)))`
-/

namespace A173887.P17816990932195461830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 |A156690 n|.toNat

end

end A173887.P17816990932195461830

/-! ## A173887.P8476944562246904080

`A295907(A172373(n+1))`
-/

namespace A173887.P8476944562246904080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295907 (A172373 (n + 1)).toNat

end

end A173887.P8476944562246904080

/-! ## A173887.P11815653915333064580

`A064989(lcm(2, A156690(n)))`
-/

namespace A173887.P11815653915333064580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lcm 2 (A156690 n))

end

end A173887.P11815653915333064580

/-!
# A173889: Triangle T(n, k) = c(n)/(c(k)*c(n-k)) where c(n) = (n-2)!*(n-1)!*n!*(n+1)!/12 with c(0) = c(1) = 1 and c(2) = 2, read by rows.

The programs for A173889, there is no canonical definition to state claims against.
-/

/-! ## A173889.P2262831202627437573

`A005179(A322620(n)%A135790(3*n+1))`
-/

namespace A173889.P2262831202627437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (Int.tmod (A322620 n) (A135790 (3 * n + 1))).toNat

end

end A173889.P2262831202627437573

/-! ## A173889.P3362489166155253591

`A206369(C(A342096(n+1), A335682(n+1)))`
-/

namespace A173889.P3362489166155253591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (Nat.choose (A342096 (n + 1)).toNat (A335682 (n + 1)).toNat)

end

end A173889.P3362489166155253591

/-! ## A173889.P7187975167294910789

`A109744(A008300(n))`
-/

namespace A173889.P7187975167294910789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109744 (A008300 n).toNat

end

end A173889.P7187975167294910789

/-! ## A173889.P11035934998148369514

`A109744(A009963(n))`
-/

namespace A173889.P11035934998148369514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109744 (A009963 n).toNat

end

end A173889.P11035934998148369514

/-! ## A173889.P1749484891246207358

`A118975(A022167(n))`
-/

namespace A173889.P1749484891246207358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118975 (A022167 n).toNat

end

end A173889.P1749484891246207358

/-!
# A173890: Triangle T(n, k) = c(n)/(c(k)*c(n-k)) where c(n) = (n-2)!*(n-1)!*n!*(n+1)!*(n+3)!/1440 with c(0) = c(1) = 1 and c(2) = 2, read by rows.

The programs for A173890, there is no canonical definition to state claims against.
-/

/-! ## A173890.P15500049372406708913

`A287142(A229079(n)²)`
-/

namespace A173890.P15500049372406708913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287142 (A229079 n ^ 2).toNat

end

end A173890.P15500049372406708913

/-! ## A173890.P12750044145760528981

`A287142(A341317(n)²)`
-/

namespace A173890.P12750044145760528981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287142 (A341317 n ^ 2).toNat

end

end A173890.P12750044145760528981

/-! ## A173890.P5075743685269679354

`A072811(A174301(n)^3)`
-/

namespace A173890.P5075743685269679354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (A174301 n ^ 3).toNat

end

end A173890.P5075743685269679354

/-! ## A173890.P1953100618723836098

`A000010(A349716(A007318(n)))`
-/

namespace A173890.P1953100618723836098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A349716 (A007318 n).toNat).toNat

end

end A173890.P1953100618723836098

/-! ## A173890.P5654127329695171505

`A072811(A174301(n)²*A174301(n))`
-/

namespace A173890.P5654127329695171505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (A174301 n ^ 2 * A174301 n).toNat

end

end A173890.P5654127329695171505

/-!
# A173891: Numbers n such that the n-th noncomposite number plus the (n+2)nd noncomposite number is an even semiprime.

The programs for A173891, there is no canonical definition to state claims against.
-/

/-! ## A173891.P3042956367871883869

`C(A173390(n+1), ceil(n/98))`
-/

namespace A173891.P3042956367871883869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173390 (n + 1)).toNat ⌈(n : ℚ) / 98⌉.toNat

end

end A173891.P3042956367871883869

/-! ## A173891.P17111109710803537451

`A173390(A130446(n+1))`
-/

namespace A173891.P17111109710803537451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (A130446 (n + 1)).toNat

end

end A173891.P17111109710803537451

/-! ## A173891.P13957916378024610775

`A173390(n+1)+A025439(n)`
-/

namespace A173891.P13957916378024610775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 1) + A025439 n

end

end A173891.P13957916378024610775

/-! ## A173891.P14421159715891390475

`A173390(A160338(n+1)+n)`
-/

namespace A173891.P14421159715891390475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (A160338 (n + 1) + (n : ℤ)).toNat

end

end A173891.P14421159715891390475

/-! ## A173891.P15665908615666297149

`A243835(n)+A173390(n+1)`
-/

namespace A173891.P15665908615666297149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + A173390 (n + 1)

end

end A173891.P15665908615666297149

/-! ## A173891.P6994746623144631106

`A173390(A274070(n+4)+n)`
-/

namespace A173891.P6994746623144631106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (A274070 (n + 4) + (n : ℤ)).toNat

end

end A173891.P6994746623144631106

/-! ## A173891.P8752336265966217993

`A173390(A336834(2*n)+n)`
-/

namespace A173891.P8752336265966217993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (A336834 (2 * n) + (n : ℤ)).toNat

end

end A173891.P8752336265966217993

/-! ## A173891.P702447687680216440

`∪[A066875(n+1), A008340(n)]`
-/

namespace A173891.P702447687680216440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173891.P702447687680216440

/-! ## A173891.P2532079980836488231

`∪[A066875(n+1), A008396(n)]`
-/

namespace A173891.P2532079980836488231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173891.P2532079980836488231

/-! ## A173891.P960801545429010036

`∪[A066875(n+1), A008402(n)]`
-/

namespace A173891.P960801545429010036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173891.P960801545429010036

/-!
# A173892: Numbers k such that k and k+6 are both balanced primes.

The programs for A173892, there is no canonical definition to state claims against.
-/

/-! ## A173892.P10780694533219908600

`A033451(n+1)+6`
-/

namespace A173892.P10780694533219908600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1) + 6

end

end A173892.P10780694533219908600

/-! ## A173892.P14694514632838236203

`∩[A046122(n+1), A054801(n+1)]`
-/

namespace A173892.P14694514632838236203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P14694514632838236203

/-! ## A173892.P15250178874477775689

`A033449(4*n+2)`
-/

namespace A173892.P15250178874477775689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (4 * n + 2)

end

end A173892.P15250178874477775689

/-! ## A173892.P4799653816421033947

`record[A033449(lcm(2, n+1))]`
-/

namespace A173892.P4799653816421033947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (Nat.lcm 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173892.P4799653816421033947

/-! ## A173892.P6415345759414335133

`A033449(A016813(n))+6`
-/

namespace A173892.P6415345759414335133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (A016813 n).toNat + 6

end

end A173892.P6415345759414335133

/-! ## A173892.P14795066815047073797

`∩[A033449(n+1), A046122(n+1)]`
-/

namespace A173892.P14795066815047073797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P14795066815047073797

/-! ## A173892.P11089949177175453168

`∩[A033449(n+1), A054801(n+1)]`
-/

namespace A173892.P11089949177175453168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P11089949177175453168

/-! ## A173892.P14068767267460246378

`∩[A033449(n+1), A303094(n+1)]`
-/

namespace A173892.P14068767267460246378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P14068767267460246378

/-! ## A173892.P14337706989963673305

`∩[A047948(n+1), A053070(n+1)]`
-/

namespace A173892.P14337706989963673305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P14337706989963673305

/-! ## A173892.P2196611010986831063

`∩[A047948(n+1), A303094(n+1)]`
-/

namespace A173892.P2196611010986831063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P2196611010986831063

/-! ## A173892.P87797131732174728

`∩[A033449(n+1), A046118(n+1)]`
-/

namespace A173892.P87797131732174728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P87797131732174728

/-! ## A173892.P12515367754165362025

`∩[A006562(n+1), A047948(n+1)]`
-/

namespace A173892.P12515367754165362025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P12515367754165362025

/-! ## A173892.P4158463112652081264

`∩[A053070(n+1), A122535(n+1)]`
-/

namespace A173892.P4158463112652081264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P4158463112652081264

/-! ## A173892.P13247398228721369134

`∩[A033449(n+1), A288022(n+1)]`
-/

namespace A173892.P13247398228721369134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P13247398228721369134

/-! ## A173892.P8464456351056094497

`∩[A030432(n+1), A033449(n+1)]`
-/

namespace A173892.P8464456351056094497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P8464456351056094497

/-! ## A173892.P689671473778391757

`∩[A047948(n+1), A139313(n+1)]`
-/

namespace A173892.P689671473778391757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P689671473778391757

/-! ## A173892.P14246857022965138680

`∩[A053070(n+1), A139313(n+1)]`
-/

namespace A173892.P14246857022965138680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P14246857022965138680

/-! ## A173892.P27372445610141302

`∩[A047948(n+1), A225494(n+1)]`
-/

namespace A173892.P27372445610141302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P27372445610141302

/-! ## A173892.P10484865309593666351

`∩[A054801(n+1), A275682(n+1)]`
-/

namespace A173892.P10484865309593666351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P10484865309593666351

/-! ## A173892.P12975570821612427040

`∩[A047948(n+1), A373299(n+1)]`
-/

namespace A173892.P12975570821612427040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173892.P12975570821612427040

/-!
# A173893: (Average of twin balanced prime pairs)/10.

The programs for A173893, there is no canonical definition to state claims against.
-/

/-! ## A173893.P4950867148691024287

`(A173892(n+1)+3)/10`
-/

namespace A173893.P4950867148691024287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173892 (n + 1) + 3 : ℚ) / 10

end

end A173893.P4950867148691024287

/-! ## A173893.P2100303195667983437

`ceil(A173892(n+1)/10)`
-/

namespace A173893.P2100303195667983437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173892 (n + 1) : ℚ) / 10⌉

end

end A173893.P2100303195667983437

/-! ## A173893.P6311887821788186770

`ceil(A033451(n+1)/10)`
-/

namespace A173893.P6311887821788186770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033451 (n + 1) : ℚ) / 10⌉

end

end A173893.P6311887821788186770

/-! ## A173893.P4404917387480759593

`ceil(A033449(A016813(n))/10)`
-/

namespace A173893.P4404917387480759593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033449 (A016813 n).toNat : ℚ) / 10⌉

end

end A173893.P4404917387480759593

/-! ## A173893.P856114953009274520

`A185322(A090832(n+1))`
-/

namespace A173893.P856114953009274520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A090832 (n + 1)).toNat

end

end A173893.P856114953009274520

/-!
# A173894: a(n) = ceiling(A029826(n)/2).

The programs for A173894, the canonical program `A173894.P805646659942918492` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173894 has offset 0).

The definition of A173894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173894.P805646659942918492

`ceil(A029826(n)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173894

/-- `ceil(A029826(n)/2)` -/
def P805646659942918492.Spec : Prop :=
  ∀ n, P805646659942918492.a n = A173894 n

theorem P805646659942918492.correct : P805646659942918492.Spec := by
  intro n
  simp only [A173894]

end A173894

/-! ## A173894.P9330359455908069878

`round(A029826(n)/(2-A159075(n)))`
-/

namespace A173894.P9330359455908069878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029826 n : ℚ) / (2 - A159075 n : ℚ))

end

end A173894.P9330359455908069878

namespace A173894

/-- `round(A029826(n)/(2-A159075(n)))` -/
def P9330359455908069878.Spec : Prop :=
  ∀ n, P9330359455908069878.a n = A173894 n

end A173894

/-! ## A173894.P3526612520874987956

`round(A029826(n)/2*A060576(n))`
-/

namespace A173894.P3526612520874987956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029826 n : ℚ) / 2 * (A060576 n : ℚ))

end

end A173894.P3526612520874987956

namespace A173894

/-- `round(A029826(n)/2*A060576(n))` -/
def P3526612520874987956.Spec : Prop :=
  ∀ n, P3526612520874987956.a n = A173894 n

end A173894

/-! ## A173894.P14664914934243828307

`ceil(Δ[A125950(n+9)]/2)`
-/

namespace A173894.P14664914934243828307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A173894.P14664914934243828307

namespace A173894

/-- `ceil(Δ[A125950(n+9)]/2)` -/
def P14664914934243828307.Spec : Prop :=
  ∀ n, P14664914934243828307.a n = A173894 n

theorem P14664914934243828307.correct : P14664914934243828307.Spec := by
  intro n
  simp only [A173894, Nat.add_sub_cancel, A173894.P14664914934243828307.f1, A173894.P14664914934243828307.a, A173894.P805646659942918492.a, A029826, A029826.P5329096224996449576.f1, A029826.P5329096224996449576.a, A125950, A125950.P8957928464073334139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173894

/-! ## A173894.P12458789819336458758

`ceil((A125950(n+10)-A125950(n+9))/2)`
-/

namespace A173894.P12458789819336458758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125950 (n + 10) - A125950 (n + 9) : ℚ) / 2⌉

end

end A173894.P12458789819336458758

namespace A173894

/-- `ceil((A125950(n+10)-A125950(n+9))/2)` -/
def P12458789819336458758.Spec : Prop :=
  ∀ n, P12458789819336458758.a n = A173894 n

theorem P12458789819336458758.correct : P12458789819336458758.Spec := by
  intro n
  simp only [A173894, Nat.add_sub_cancel, A173894.P12458789819336458758.a, A173894.P805646659942918492.a, A029826, A029826.P5329096224996449576.f1, A029826.P5329096224996449576.a, A125950, A125950.P8957928464073334139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173894

/-! ## A173894.P1018902547152829241

`A004526(A029826(n)+1)`
-/

namespace A173894.P1018902547152829241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029826 n + 1).toNat

end

end A173894.P1018902547152829241

namespace A173894

/-- `A004526(A029826(n)+1)` -/
def P1018902547152829241.Spec : Prop :=
  ∀ n, P1018902547152829241.a n = A173894 n

end A173894

/-! ## A173894.P12496539437180108043

`A110654(A029826(n)+char[1])`
-/

namespace A173894.P12496539437180108043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A029826 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A173894.P12496539437180108043

namespace A173894

/-- `A110654(A029826(n)+char[1])` -/
def P12496539437180108043.Spec : Prop :=
  ∀ n, P12496539437180108043.a n = A173894 n

end A173894

/-! ## A173894.P17663959844312307982

`A110654(A029826(n)+2)-1`
-/

namespace A173894.P17663959844312307982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A029826 n + 2).toNat - 1

end

end A173894.P17663959844312307982

namespace A173894

/-- `A110654(A029826(n)+2)-1` -/
def P17663959844312307982.Spec : Prop :=
  ∀ n, P17663959844312307982.a n = A173894 n

end A173894

/-! ## A173894.P3246624304729047792

`A110654(A029826(n)*A060576(n))`
-/

namespace A173894.P3246624304729047792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A029826 n * A060576 n).toNat

end

end A173894.P3246624304729047792

namespace A173894

/-- `A110654(A029826(n)*A060576(n))` -/
def P3246624304729047792.Spec : Prop :=
  ∀ n, P3246624304729047792.a n = A173894 n

end A173894

/-! ## A173894.P322483429372884052

`A110654(A029826(n)%A000032(n))`
-/

namespace A173894.P322483429372884052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A029826 n) (A000032 n)).toNat

end

end A173894.P322483429372884052

namespace A173894

/-- `A110654(A029826(n)%A000032(n))` -/
def P322483429372884052.Spec : Prop :=
  ∀ n, P322483429372884052.a n = A173894 n

end A173894

/-!
# A173897: a(n) is the number of Sophie Germain primes (A005384) between prime(n)^2 and prime(n+1)^2.

The programs for A173897, there is no canonical definition to state claims against.
-/

/-! ## A173897.P12138639658517036964

`Δ[A001248(n+1)-A305894(A001248(n+1))]`
-/

namespace A173897.P12138639658517036964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A305894 (A001248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173897.P12138639658517036964

/-! ## A173897.P17200430370399783411

`Δ[A156874(p?[xor(1, n)+1]²)]`
-/

namespace A173897.P17200430370399783411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173897.P17200430370399783411

/-! ## A173897.P10077456555072422108

`Δ[A156874(p?[round(8*n/7)]²)]`
-/

namespace A173897.P10077456555072422108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173897.P10077456555072422108

/-! ## A173897.P13409333363397601646

`Δ[A156874(A001248(n+1))]`
-/

namespace A173897.P13409333363397601646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A001248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173897.P13409333363397601646

/-! ## A173897.P1777933450513410650

`Δ[A156874(A000040(n+1)²)]`
-/

namespace A173897.P1777933450513410650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A000040 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173897.P1777933450513410650

/-!
# A173899: Nonnegative integers n with the property that the square of each digit of n is a substring of n^2.

The programs for A173899, there is no canonical definition to state claims against.
-/

/-! ## A173899.P3068716252020202735

`lt[A180000(A004186(n)), A038692(2*(n+2))]`
-/

namespace A173899.P3068716252020202735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (A004186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038692 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173899.P3068716252020202735

/-! ## A173899.P17864899125788976346

`lt[A033865(n), A327041(2*(n+1))²]`
-/

namespace A173899.P17864899125788976346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173899.P17864899125788976346

/-! ## A173899.P1086363166252651503

`lt[A000041(A053392(n)), A056239(n+4)]`
-/

namespace A173899.P1086363166252651503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A053392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173899.P1086363166252651503

/-! ## A173899.P11629319546463125829

`lt[A113010(n), A204217(A007365(2*n+3))]`
-/

namespace A173899.P11629319546463125829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (A007365 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173899.P11629319546463125829

/-! ## A173899.P10094039090118284799

`lt[A033865(A033865(n)), A031172(n+1)]`
-/

namespace A173899.P10094039090118284799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A033865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173899.P10094039090118284799

