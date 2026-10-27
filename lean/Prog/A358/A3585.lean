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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A358500: a(n) = Sum_{k=0..floor(n/5)} (n-5*k)!.

The programs for A358500, the canonical program `A358500.P14690129782179973832` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358500 has offset 0).

The definition of A358500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358500.P14690129782179973832

`n*a(n-1)+a(n-5)-n*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24, a(5)=121`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358500

/-- `n*a(n-1)+a(n-5)-n*a(n-6)` -/
def P14690129782179973832.Spec : Prop :=
  ∀ n, P14690129782179973832.a n = A358500 n

theorem P14690129782179973832.correct : P14690129782179973832.Spec := by
  intro n
  simp only [A358500]

end A358500

/-! ## A358500.P556423095102151781

`A059590(A349842(n))`
-/

namespace A358500.P556423095102151781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A349842 n).toNat

end

end A358500.P556423095102151781

namespace A358500

/-- `A059590(A349842(n))` -/
def P556423095102151781.Spec : Prop :=
  ∀ n, P556423095102151781.a n = A358500 n

end A358500

/-! ## A358500.P11443221774946717571

`A089233(A201649(n+1))+n!`
-/

namespace A358500.P11443221774946717571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A201649 (n + 1)).toNat + (Nat.factorial n : ℤ)

end

end A358500.P11443221774946717571

namespace A358500

/-- `A089233(A201649(n+1))+n!` -/
def P11443221774946717571.Spec : Prop :=
  ∀ n, P11443221774946717571.a n = A358500 n

end A358500

/-! ## A358500.P2937923731295706863

`or(A029965(n+1)!, A033301(n))`
-/

namespace A358500.P2937923731295706863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A029965 (n + 1)).toNat : ℤ) (A033301 n)

end

end A358500.P2937923731295706863

namespace A358500

/-- `or(A029965(n+1)!, A033301(n))` -/
def P2937923731295706863.Spec : Prop :=
  ∀ n, P2937923731295706863.a n = A358500 n

end A358500

/-! ## A358500.P13310236514286962786

`A114045(A026811(n))+A000142(n)`
-/

namespace A358500.P13310236514286962786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114045 (A026811 n).toNat + A000142 n

end

end A358500.P13310236514286962786

namespace A358500

/-- `A114045(A026811(n))+A000142(n)` -/
def P13310236514286962786.Spec : Prop :=
  ∀ n, P13310236514286962786.a n = A358500 n

end A358500

/-!
# A358501: Irregular triangle read by rows. Coefficients of the polynomials (-1)^n*binomial(-x - 1, -x - n - 1) * binomial(n + x, x) * (n!)^2 in ascending order of powers.

The programs for A358501, there is no canonical definition to state claims against.
-/

/-! ## A358501.P10674505046863538883

`A254882(comp[n²+n]+1)`
-/

namespace A358501.P10674505046863538883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A358501.P10674505046863538883

/-! ## A358501.P9407451486891454697

`A246117(A317303(n+1)+1)`
-/

namespace A358501.P9407451486891454697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (A317303 (n + 1) + 1).toNat

end

end A358501.P9407451486891454697

/-! ## A358501.P3397473239515881414

`filter[A254882(n+1), A022932(#)]`
-/

namespace A358501.P3397473239515881414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A358501.P3397473239515881414

/-! ## A358501.P14145802456633175069

`filter[A254882(n+1), A109720(#)]`
-/

namespace A358501.P14145802456633175069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A358501.P14145802456633175069

/-! ## A358501.P18317485299882816574

`filter[A254882(n+1), A276398(#)]`
-/

namespace A358501.P18317485299882816574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A358501.P18317485299882816574

/-!
# A358502: Triangle read by rows. The coefficients of the polynomials hypergeom([-x, -x, -n], [-x - n, -x - n], 1) * Product_{j=1..n} (j + x)^2 in ascending order of powers.

The programs for A358502, there is no canonical definition to state claims against.
-/

/-! ## A358502.P16644746075759491214

`∑[char[∑[n+1]]]!*A358624(n)`
-/

namespace A358502.P16644746075759491214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A358624 n

end

end A358502.P16644746075759491214

/-! ## A358502.P18063420011739425211

`A028421(n)*A334299(A232580(n))`
-/

namespace A358502.P18063420011739425211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 n * A334299 (A232580 n).toNat

end

end A358502.P18063420011739425211

/-! ## A358502.P133845545280090705

`A006446(A299150(n+1)^A004396(n))`
-/

namespace A358502.P133845545280090705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (SequenceMachineLib.roundAway ((A299150 (n + 1) : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A358502.P133845545280090705

/-! ## A358502.P16931078731590462925

`lcm(A217940(n+1), A217984(A217945(n)))`
-/

namespace A358502.P16931078731590462925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A217940 (n + 1)) (A217984 (A217945 n).toNat)

end

end A358502.P16931078731590462925

/-!
# A358504: Number of genetic relatives of a person M in a genealogical tree extending back n generations and where everyone has 3 children down to the generation of M.

The programs for A358504, the canonical program `A358504.P13646292911037237136` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358504 has offset 0).

The definition of A358504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358504.P13646292911037237136

`9*a(n-1)-20*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358504

/-- `9*a(n-1)-20*a(n-2)+12*a(n-3)` -/
def P13646292911037237136.Spec : Prop :=
  ∀ n, P13646292911037237136.a n = A358504 n

theorem P13646292911037237136.correct : P13646292911037237136.Spec := by
  intro n
  simp only [A358504]

end A358504

/-! ## A358504.P14750309044638442321

`2^n+3*(6^n-1)/5`
-/

namespace A358504.P14750309044638442321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (3 * ((6 ^ n : ℤ) - 1) : ℚ) / 5

end

end A358504.P14750309044638442321

namespace A358504

/-- `2^n+3*(6^n-1)/5` -/
def P14750309044638442321.Spec : Prop :=
  ∀ n, P14750309044638442321.a n = (A358504 n : ℚ)

theorem P14750309044638442321.correct : P14750309044638442321.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A358504, Nat.add_sub_cancel, A358504.P14750309044638442321.a, A358504.P13646292911037237136.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A358504, Nat.add_sub_cancel, A358504.P14750309044638442321.a, A358504.P13646292911037237136.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A358504

/-! ## A358504.P2319389493355076523

`∑[ogf((1-4x)/(1-8x+12x^2))]`
-/

namespace A358504.P2319389493355076523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 12] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358504.P2319389493355076523

namespace A358504

/-- `∑[ogf((1-4x)/(1-8x+12x^2))]` -/
def P2319389493355076523.Spec : Prop :=
  ∀ n, P2319389493355076523.a n = A358504 n

end A358504

/-! ## A358504.P6718120655096748994

`∑[6*a(n-1)-2^n]` with `a(0)=1`
-/

namespace A358504.P6718120655096748994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358504.P6718120655096748994

namespace A358504

/-- `∑[6*a(n-1)-2^n]` -/
def P6718120655096748994.Spec : Prop :=
  ∀ n, P6718120655096748994.a n = A358504 n

end A358504

/-! ## A358504.P11129755002648793658

`∑[A081335(n)]`
-/

namespace A358504.P11129755002648793658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358504.P11129755002648793658

namespace A358504

/-- `∑[A081335(n)]` -/
def P11129755002648793658.Spec : Prop :=
  ∀ n, P11129755002648793658.a n = A358504 n

end A358504

/-! ## A358504.P4081805272225719165

`∑[A074601(n)/2]`
-/

namespace A358504.P4081805272225719165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074601 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358504.P4081805272225719165

namespace A358504

/-- `∑[A074601(n)/2]` -/
def P4081805272225719165.Spec : Prop :=
  ∀ n, P4081805272225719165.a n = (A358504 n : ℚ)

end A358504

/-!
# A358505: Binary encoding of the n-th standard ordered rooted tree.

The programs for A358505, there is no canonical definition to state claims against.
-/

/-! ## A358505.P4264415323493347791

`A125974(A125974(A014486(A126315(n))))`
-/

namespace A358505.P4264415323493347791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125974 (A125974 (A014486 (A126315 n).toNat).toNat).toNat

end

end A358505.P4264415323493347791

/-! ## A358505.P12065012654749072730

`A086430(A086429(A014486(A086425(A082315(n)))))`
-/

namespace A358505.P12065012654749072730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086430 (A086429 (A014486 (A086425 (A082315 n).toNat).toNat).toNat).toNat

end

end A358505.P12065012654749072730

/-! ## A358505.P1206810357375865170

`A086426(A086425(A014486(A085160(A086425(n)))))`
-/

namespace A358505.P1206810357375865170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A086425 (A014486 (A085160 (A086425 n).toNat).toNat).toNat).toNat

end

end A358505.P1206810357375865170

/-!
# A358507: Sorted list of positions of first appearances in the sequence counting permutations of Matula-Goebel trees (A206487).

The programs for A358507, there is no canonical definition to state claims against.
-/

/-! ## A358507.P15039289895937019471

`record[A358508(A206487(n+1))]`
-/

namespace A358507.P15039289895937019471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358508 (A206487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358507.P15039289895937019471

/-!
# A358508: Least Matula-Goebel number of a tree with exactly n permutations.

The programs for A358508, there is no canonical definition to state claims against.
-/

/-! ## A358508.P10760620950419865895

`A304938(n+1)%A006093(A304938(n+5))`
-/

namespace A358508.P10760620950419865895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304938 (n + 1)) (A006093 (A304938 (n + 5)).toNat)

end

end A358508.P10760620950419865895

/-! ## A358508.P16784992978714292578

`A304938(A037442(n+1))`
-/

namespace A358508.P16784992978714292578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304938 (A037442 (n + 1)).toNat

end

end A358508.P16784992978714292578

/-! ## A358508.P647801788227449359

`A304938(A065666(n+1))`
-/

namespace A358508.P647801788227449359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304938 (A065666 (n + 1)).toNat

end

end A358508.P647801788227449359

/-!
# A358509: Sum of decimal digits of (3^n - 1)/2 (A003462).

The programs for A358509, the canonical program `A358509.P8134209364640252914` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358509 has offset 0).

The definition of A358509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358509.P8134209364640252914

`∑{digits}[∑[floor(3^(n-1))], #]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358509

/-- `∑{digits}[∑[floor(3^(n-1))], #]` -/
def P8134209364640252914.Spec : Prop :=
  ∀ n, (P8134209364640252914.a n : ℤ) = A358509 n

theorem P8134209364640252914.correct : P8134209364640252914.Spec := by
  intro n
  simp only [A358509]

end A358509

/-! ## A358509.P3273621612066554620

`∑{digits}[∑[ceil(3^(n-1))], #]-1`
-/

namespace A358509.P3273621612066554620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A358509.P3273621612066554620

namespace A358509

/-- `∑{digits}[∑[ceil(3^(n-1))], #]-1` -/
def P3273621612066554620.Spec : Prop :=
  ∀ n, P3273621612066554620.a n = A358509 n

end A358509

/-! ## A358509.P6099794796869035082

`and(∑{digits}[A003462(n), #], A107955(n))`
-/

namespace A358509.P6099794796869035082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A107955 n)

end

end A358509.P6099794796869035082

namespace A358509

/-- `and(∑{digits}[A003462(n), #], A107955(n))` -/
def P6099794796869035082.Spec : Prop :=
  ∀ n, P6099794796869035082.a n = A358509 n

end A358509

/-! ## A358509.P17390281063449053322

`∑{digits}[A003462(n), #]%A116250(n+2)`
-/

namespace A358509.P17390281063449053322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A116250 (n + 2))

end

end A358509.P17390281063449053322

namespace A358509

/-- `∑{digits}[A003462(n), #]%A116250(n+2)` -/
def P17390281063449053322.Spec : Prop :=
  ∀ n, P17390281063449053322.a n = A358509 n

end A358509

/-! ## A358509.P3896304253402068209

`∑{digits}[A003462(n), #]*A185117(A064149(n+1))`
-/

namespace A358509.P3896304253402068209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A185117 (A064149 (n + 1)).toNat

end

end A358509.P3896304253402068209

namespace A358509

/-- `∑{digits}[A003462(n), #]*A185117(A064149(n+1))` -/
def P3896304253402068209.Spec : Prop :=
  ∀ n, P3896304253402068209.a n = A358509 n

end A358509

/-!
# A358510: Positions of zeros in A342991.

The programs for A358510, the canonical program `A358510.P3611814579381397063` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358510 has offset 1).

The definition of A358510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358510.P3611814579381397063

`comp[A358511(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A358510

/-- `comp[A358511(n+1)-1]+1` -/
def P3611814579381397063.Spec : Prop :=
  ∀ n, (P3611814579381397063.a n : ℤ) = A358510 (n + 1)

theorem P3611814579381397063.correct : P3611814579381397063.Spec := by
  intro n
  simp only [A358510, Nat.add_sub_cancel]

end A358510

/-! ## A358510.P15636132252527058907

`eq[0, A342991(n+1)]+1`
-/

namespace A358510.P15636132252527058907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358510.P15636132252527058907

namespace A358510

/-- `eq[0, A342991(n+1)]+1` -/
def P15636132252527058907.Spec : Prop :=
  ∀ n, (P15636132252527058907.a n : ℤ) = A358510 (n + 1)

end A358510

/-! ## A358510.P17475234636725213658

`lt[A342991(A028310(n)), 1]`
-/

namespace A358510.P17475234636725213658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358510.P17475234636725213658

namespace A358510

/-- `lt[A342991(A028310(n)), 1]` -/
def P17475234636725213658.Spec : Prop :=
  ∀ n, (P17475234636725213658.a n : ℤ) = A358510 (n + 1)

end A358510

/-! ## A358510.P518406191045581709

`lt[A342991(n+1), A122810(A001511(2*n+1)+1)]+1`
-/

namespace A358510.P518406191045581709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (A001511 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358510.P518406191045581709

namespace A358510

/-- `lt[A342991(n+1), A122810(A001511(2*n+1)+1)]+1` -/
def P518406191045581709.Spec : Prop :=
  ∀ n, (P518406191045581709.a n : ℤ) = A358510 (n + 1)

end A358510

/-! ## A358510.P9863284905145154513

`lt[A342991(A233583(n+1)), 1]`
-/

namespace A358510.P9863284905145154513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358510.P9863284905145154513

namespace A358510

/-- `lt[A342991(A233583(n+1)), 1]` -/
def P9863284905145154513.Spec : Prop :=
  ∀ n, (P9863284905145154513.a n : ℤ) = A358510 (n + 1)

end A358510

/-! ## A358510.P1646839930011880412

`∑[A280136(n+1)]-n`
-/

namespace A358510.P1646839930011880412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A358510.P1646839930011880412

namespace A358510

/-- `∑[A280136(n+1)]-n` -/
def P1646839930011880412.Spec : Prop :=
  ∀ n, P1646839930011880412.a n = A358510 (n + 1)

end A358510

/-!
# A358511: Positions of ones in A342991.

The programs for A358511, the canonical program `A358511.P12074036451114483533` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358511 has offset 1).

The definition of A358511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358511.P12074036451114483533

`eq[1, (round(sqrt(xor(1, n+1)))+1)%2]+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358511

/-- `eq[1, (round(sqrt(xor(1, n+1)))+1)%2]+1` -/
def P12074036451114483533.Spec : Prop :=
  ∀ n, (P12074036451114483533.a n : ℤ) = A358511 (n + 1)

theorem P12074036451114483533.correct : P12074036451114483533.Spec := by
  intro n
  simp only [A358511, Nat.add_sub_cancel]

end A358511

/-! ## A358511.P9805891754050298786

`lt[0, A342991(n+1)]+1`
-/

namespace A358511.P9805891754050298786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358511.P9805891754050298786

namespace A358511

/-- `lt[0, A342991(n+1)]+1` -/
def P9805891754050298786.Spec : Prop :=
  ∀ n, (P9805891754050298786.a n : ℤ) = A358511 (n + 1)

end A358511

/-! ## A358511.P8132939352952764937

`eq[1, A342991(A000027(n+1))]+1`
-/

namespace A358511.P8132939352952764937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358511.P8132939352952764937

namespace A358511

/-- `eq[1, A342991(A000027(n+1))]+1` -/
def P8132939352952764937.Spec : Prop :=
  ∀ n, (P8132939352952764937.a n : ℤ) = A358511 (n + 1)

end A358511

/-! ## A358511.P11004476672796658729

`record[A000027(n+1)*A342991(n+1)]`
-/

namespace A358511.P11004476672796658729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A342991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358511.P11004476672796658729

namespace A358511

/-- `record[A000027(n+1)*A342991(n+1)]` -/
def P11004476672796658729.Spec : Prop :=
  ∀ n, P11004476672796658729.a n = A358511 (n + 1)

end A358511

/-! ## A358511.P13588696611295867712

`lt[A008683(n+1), A274093(A028242(n))]`
-/

namespace A358511.P13588696611295867712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (A028242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358511.P13588696611295867712

namespace A358511

/-- `lt[A008683(n+1), A274093(A028242(n))]` -/
def P13588696611295867712.Spec : Prop :=
  ∀ n, (P13588696611295867712.a n : ℤ) = A358511 (n + 1)

end A358511

/-!
# A358514: a(n) is the smallest number divisible by exactly n Achilles numbers (A052486).

The programs for A358514, there is no canonical definition to state claims against.
-/

/-! ## A358514.P2373996322128468995

`A124508(C(A214423(n+1), n))`
-/

namespace A358514.P2373996322128468995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124508 (Nat.choose (A214423 (n + 1)).toNat n)

end

end A358514.P2373996322128468995

/-!
# A358518: a(n) = Sum_{k=0..n} binomial(n+3*k+3,n-k) * Catalan(k).

The programs for A358518, there is no canonical definition to state claims against.
-/

/-! ## A358518.P17747088600047991822

`∑[∑[A162477(n)]]`
-/

namespace A358518.P17747088600047991822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162477 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358518.P17747088600047991822

/-! ## A358518.P17619603447791673229

`∑[∑[∑[A162476(n)]]]`
-/

namespace A358518.P17619603447791673229
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358518.P17619603447791673229

/-!
# A358520: Nearest integer to n/sin(n).

The programs for A358520, the canonical program `A358520.P15053169546794997809` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358520 has offset 1).

The definition of A358520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358520.P15053169546794997809

`round((n+1)/sin(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358520

/-- `round((n+1)/sin(n+1))` -/
def P15053169546794997809.Spec : Prop :=
  ∀ n, P15053169546794997809.a n = A358520 (n + 1)

theorem P15053169546794997809.correct : P15053169546794997809.Spec := by
  intro n
  simp only [A358520, Nat.add_sub_cancel]

end A358520

/-! ## A358520.P10554270027832673055

`round((n+1)*tan(acot(sin(n+1))))`
-/

namespace A358520.P10554270027832673055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.tan (SequenceMachineLib.acot (Real.sin (n + 1 : ℝ))))

end

end A358520.P10554270027832673055

namespace A358520

/-- `round((n+1)*tan(acot(sin(n+1))))` -/
def P10554270027832673055.Spec : Prop :=
  ∀ n, P10554270027832673055.a n = A358520 (n + 1)

end A358520

/-!
# A358521: Sorted list of positions of first appearances in the sequence of Matula-Goebel numbers of standard ordered trees (A358506).

The programs for A358521, there is no canonical definition to state claims against.
-/

/-! ## A358521.P7876103881296097623

`A340102(A132048(n))+A114994(n)`
-/

namespace A358521.P7876103881296097623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A132048 n).toNat + A114994 n

end

end A358521.P7876103881296097623

/-! ## A358521.P381405952723469095

`A124778(A119329(n))+lt[A124760(2*n+1), 1]`
-/

namespace A358521.P381405952723469095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A119329 n).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A358521.P381405952723469095

/-! ## A358521.P17853346707652745656

`(A114994(n)+1)%A038011(n)`
-/

namespace A358521.P17853346707652745656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114994 n + 1) (A038011 n)

end

end A358521.P17853346707652745656

/-! ## A358521.P3181731469701863887

`A114994(n)%A335456(n)+1`
-/

namespace A358521.P3181731469701863887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114994 n) (A335456 n) + 1

end

end A358521.P3181731469701863887

/-! ## A358521.P7365947372619232857

`A114994(n)+A179922(n+1)%2`
-/

namespace A358521.P7365947372619232857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n + Int.tmod (A179922 (n + 1)) 2

end

end A358521.P7365947372619232857

/-!
# A358522: Least number k such that the k-th standard ordered tree has Matula-Goebel number n, i.e., A358506(k) = n.

The programs for A358522, there is no canonical definition to state claims against.
-/

/-! ## A358522.P15230104771404342574

`∑{e}[A247283(2*n+5), A233249(#)]`
-/

namespace A358522.P15230104771404342574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247283 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 (Nat.factorization (f1 n).natAbs p)

end

end A358522.P15230104771404342574

/-! ## A358522.P2956478215783040673

`(A233249(n+1)+1)%A080854(n+1)`
-/

namespace A358522.P2956478215783040673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233249 (n + 1) + 1) (A080854 (n + 1))

end

end A358522.P2956478215783040673

/-! ## A358522.P15866157331098605678

`A320107(ceil(2^(n-1)))+A233249(n+1)`
-/

namespace A358522.P15866157331098605678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A233249 (n + 1)

end

end A358522.P15866157331098605678

/-! ## A358522.P15820058036050472284

`A233249(n+1)+A160552(round(2^(n-1)))`
-/

namespace A358522.P15820058036050472284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (n + 1) + A160552 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A358522.P15820058036050472284

/-! ## A358522.P8248980897425025709

`A233249(n+1)%A325344(3*(n+1))+1`
-/

namespace A358522.P8248980897425025709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233249 (n + 1)) (A325344 (3 * (n + 1))) + 1

end

end A358522.P8248980897425025709

/-!
# A358524: Binary encoding of balanced ordered rooted trees (counted by A007059).

The programs for A358524, there is no canonical definition to state claims against.
-/

/-! ## A358524.P8744742811746285342

`A014486(A243495(n)%A060315(n+1))`
-/

namespace A358524.P8744742811746285342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (Int.tmod (A243495 n) (A060315 (n + 1))).toNat

end

end A358524.P8744742811746285342

/-! ## A358524.P10800614062378349545

`A014486(A243495(n))%A215730(n+4)`
-/

namespace A358524.P10800614062378349545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014486 (A243495 n).toNat) (A215730 (n + 4))

end

end A358524.P10800614062378349545

/-! ## A358524.P609481237092351159

`eq[A175920(n), A293909(A144078(2*(n+1)))]`
-/

namespace A358524.P609481237092351159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293909 (A144078 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358524.P609481237092351159

/-! ## A358524.P18276420805786372703

`∩[A334274(n+1), A061855(n)]`
-/

namespace A358524.P18276420805786372703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358524.P18276420805786372703

/-!
# A358525: Number of distinct permutations of the n-th composition in standard order.

The programs for A358525, there is no canonical definition to state claims against.
-/

/-! ## A358525.P16641740990729346636

`A309004(A057335(n))`
-/

namespace A358525.P16641740990729346636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A057335 n).toNat

end

end A358525.P16641740990729346636

/-! ## A358525.P6324432802110709980

`A361477(A006068(n))`
-/

namespace A358525.P6324432802110709980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361477 (A006068 n).toNat

end

end A358525.P6324432802110709980

/-! ## A358525.P8915369052394492397

`A361477(A341916(n))`
-/

namespace A358525.P8915369052394492397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361477 (A341916 n).toNat

end

end A358525.P8915369052394492397

/-! ## A358525.P13797942451888521636

`A008480(A333219(n+1))`
-/

namespace A358525.P13797942451888521636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A333219 (n + 1)).toNat

end

end A358525.P13797942451888521636

/-! ## A358525.P10705058490234285530

`A008480(A358506(n+1))`
-/

namespace A358525.P10705058490234285530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A358506 (n + 1)).toNat

end

end A358525.P10705058490234285530

/-! ## A358525.P9389135084067342817

`A008480(∏{e}[A057335(n), A028905(#)])`
-/

namespace A358525.P9389135084067342817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A358525.P9389135084067342817

/-! ## A358525.P13605775805228817031

`A008480(∏{e}[A057335(n), A029732(#)])`
-/

namespace A358525.P13605775805228817031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029732 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A358525.P13605775805228817031

/-! ## A358525.P2961309164454920184

`A335447(∏{e}[A057335(n), A003459(#)])+1`
-/

namespace A358525.P2961309164454920184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003459 (Nat.factorization (f1 n).natAbs p)).toNat + 1

end

end A358525.P2961309164454920184

/-! ## A358525.P4993152892546206602

`A309004(A334031(n))`
-/

namespace A358525.P4993152892546206602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A334031 n).toNat

end

end A358525.P4993152892546206602

/-! ## A358525.P14633451739302295880

`A161895(A145818(n+1))`
-/

namespace A358525.P14633451739302295880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A145818 (n + 1)).toNat

end

end A358525.P14633451739302295880

/-!
# A358526: Numbers k whose prime indices have a different number of permutations than any number less than k.

The programs for A358526, there is no canonical definition to state claims against.
-/

/-! ## A358526.P7289567829637516375

`record[A304938(A008480(n+1))]`
-/

namespace A358526.P7289567829637516375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304938 (A008480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358526.P7289567829637516375

/-! ## A358526.P3581025205109892943

`record[A304938(abs(A355939(n+1)))]`
-/

namespace A358526.P3581025205109892943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304938 |A355939 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358526.P3581025205109892943

/-! ## A358526.P7473658727676442943

`record[A304938(A321647(n+1)/A321648(n+1))]`
-/

namespace A358526.P7473658727676442943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304938 (SequenceMachineLib.roundAway ((A321647 (n + 1) : ℚ) / (A321648 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358526.P7473658727676442943

/-! ## A358526.P15606764198128722474

`∩[A277620(n+1), A358507(n+1)]`
-/

namespace A358526.P15606764198128722474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358526.P15606764198128722474

/-! ## A358526.P15238822182077622277

`∩[A305759(n+1), A358507(n+1)]`
-/

namespace A358526.P15238822182077622277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358526.P15238822182077622277

/-!
# A358528: a(n) = n-th prime p(k) such that p(k) - p(k-1) > p(k-1) - p(k-2).

The programs for A358528, there is no canonical definition to state claims against.
-/

/-! ## A358528.P47282727805371700

`A045966(A063535(n))`
-/

namespace A358528.P47282727805371700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A063535 n).toNat

end

end A358528.P47282727805371700

/-! ## A358528.P588476350147316663

`A003961(A051635(n+1))`
-/

namespace A358528.P588476350147316663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A051635 (n + 1)).toNat

end

end A358528.P588476350147316663

/-! ## A358528.P16497684446043773434

`A045344(A233671(n+1))`
-/

namespace A358528.P16497684446043773434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A233671 (n + 1)).toNat

end

end A358528.P16497684446043773434

/-! ## A358528.P5744995256176639035

`A000040(A358529(n+1))`
-/

namespace A358528.P5744995256176639035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358529 (n + 1)).toNat

end

end A358528.P5744995256176639035

/-! ## A358528.P14806089838471362141

`A215848(A258025(n+1))`
-/

namespace A358528.P14806089838471362141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A258025 (n + 1)).toNat

end

end A358528.P14806089838471362141

/-! ## A358528.P2020399277130748758

`A003961(A068828(n+2))`
-/

namespace A358528.P2020399277130748758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A068828 (n + 2)).toNat

end

end A358528.P2020399277130748758

/-! ## A358528.P10218026028490479298

`A000040(A233671(n+1)+1)`
-/

namespace A358528.P10218026028490479298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233671 (n + 1) + 1).toNat

end

end A358528.P10218026028490479298

/-! ## A358528.P18415060238096253191

`A065091(A258025(n+1)+1)`
-/

namespace A358528.P18415060238096253191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A258025 (n + 1) + 1).toNat

end

end A358528.P18415060238096253191

/-! ## A358528.P11435447856422310471

`A008578(A233671(n+1)+2)`
-/

namespace A358528.P11435447856422310471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233671 (n + 1) + 2).toNat

end

end A358528.P11435447856422310471

/-! ## A358528.P9293395309877725612

`A000040(A258025(n+1)+2)`
-/

namespace A358528.P9293395309877725612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258025 (n + 1) + 2).toNat

end

end A358528.P9293395309877725612

/-!
# A358529: Indices of the primes in A358528.

The programs for A358529, the canonical program `A358529.P11632851717617367385` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358529 has offset 1).

The definition of A358529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358529.P11632851717617367385

`A233671(n+1)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358529

/-- `A233671(n+1)+1` -/
def P11632851717617367385.Spec : Prop :=
  ∀ n, P11632851717617367385.a n = A358529 (n + 1)

theorem P11632851717617367385.correct : P11632851717617367385.Spec := by
  intro n
  simp only [A358529, Nat.add_sub_cancel]

end A358529

/-! ## A358529.P12544175263101780454

`lt[0, A036263(n+1)]+3`
-/

namespace A358529.P12544175263101780454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A358529.P12544175263101780454

namespace A358529

/-- `lt[0, A036263(n+1)]+3` -/
def P12544175263101780454.Spec : Prop :=
  ∀ n, (P12544175263101780454.a n : ℤ) = A358529 (n + 1)

end A358529

/-! ## A358529.P5143322523098393132

`record[2-n*A079054(n+2)]+1`
-/

namespace A358529.P5143322523098393132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A358529.P5143322523098393132

namespace A358529

/-- `record[2-n*A079054(n+2)]+1` -/
def P5143322523098393132.Spec : Prop :=
  ∀ n, P5143322523098393132.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P712952165508663206

`eq[1, A228098(n+1)]+3`
-/

namespace A358529.P712952165508663206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A358529.P712952165508663206

namespace A358529

/-- `eq[1, A228098(n+1)]+3` -/
def P712952165508663206.Spec : Prop :=
  ∀ n, (P712952165508663206.a n : ℤ) = A358529 (n + 1)

end A358529

/-! ## A358529.P1862199311035834233

`lt[A073272(n+1), 1]+3`
-/

namespace A358529.P1862199311035834233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A358529.P1862199311035834233

namespace A358529

/-- `lt[A073272(n+1), 1]+3` -/
def P1862199311035834233.Spec : Prop :=
  ∀ n, (P1862199311035834233.a n : ℤ) = A358529 (n + 1)

end A358529

/-! ## A358529.P17951295425759159659

`lt[n, Δ[A050216(n)]]+2`
-/

namespace A358529.P17951295425759159659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A358529.P17951295425759159659

namespace A358529

/-- `lt[n, Δ[A050216(n)]]+2` -/
def P17951295425759159659.Spec : Prop :=
  ∀ n, (P17951295425759159659.a n : ℤ) = A358529 (n + 1)

end A358529

/-! ## A358529.P8604816116459913375

`eq[1, A108415(n+2)]+3`
-/

namespace A358529.P8604816116459913375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A358529.P8604816116459913375

namespace A358529

/-- `eq[1, A108415(n+2)]+3` -/
def P8604816116459913375.Spec : Prop :=
  ∀ n, (P8604816116459913375.a n : ℤ) = A358529 (n + 1)

end A358529

/-! ## A358529.P8849754491579631787

`A020725(A233671(n+1))`
-/

namespace A358529.P8849754491579631787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A233671 (n + 1)).toNat

end

end A358529.P8849754491579631787

namespace A358529

/-- `A020725(A233671(n+1))` -/
def P8849754491579631787.Spec : Prop :=
  ∀ n, P8849754491579631787.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P16696567391799827335

`A000720(A051635(n+1))+1`
-/

namespace A358529.P16696567391799827335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051635 (n + 1)).toNat + 1

end

end A358529.P16696567391799827335

namespace A358529

/-- `A000720(A051635(n+1))+1` -/
def P16696567391799827335.Spec : Prop :=
  ∀ n, P16696567391799827335.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P2010143302109765497

`A258025(n+1)+2`
-/

namespace A358529.P2010143302109765497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) + 2

end

end A358529.P2010143302109765497

namespace A358529

/-- `A258025(n+1)+2` -/
def P2010143302109765497.Spec : Prop :=
  ∀ n, P2010143302109765497.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P6933497925723844323

`A009056(A258025(n+1))`
-/

namespace A358529.P6933497925723844323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A258025 (n + 1)).toNat

end

end A358529.P6933497925723844323

namespace A358529

/-- `A009056(A258025(n+1))` -/
def P6933497925723844323.Spec : Prop :=
  ∀ n, P6933497925723844323.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P18036482747167425353

`A082514(A063535(n))`
-/

namespace A358529.P18036482747167425353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (A063535 n).toNat

end

end A358529.P18036482747167425353

namespace A358529

/-- `A082514(A063535(n))` -/
def P18036482747167425353.Spec : Prop :=
  ∀ n, P18036482747167425353.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P9420758739805010926

`A003977(A051635(n+1))`
-/

namespace A358529.P9420758739805010926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A051635 (n + 1)).toNat

end

end A358529.P9420758739805010926

namespace A358529

/-- `A003977(A051635(n+1))` -/
def P9420758739805010926.Spec : Prop :=
  ∀ n, P9420758739805010926.a n = A358529 (n + 1)

end A358529

/-! ## A358529.P1628356991678374286

`A003977(A068828(n+2))`
-/

namespace A358529.P1628356991678374286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A068828 (n + 2)).toNat

end

end A358529.P1628356991678374286

namespace A358529

/-- `A003977(A068828(n+2))` -/
def P1628356991678374286.Spec : Prop :=
  ∀ n, P1628356991678374286.a n = A358529 (n + 1)

end A358529

/-!
# A358530: a(n) = n-th prime prime(k) such that prime(k) - prime(k-1) < prime(k-1) - prime(k-2).

The programs for A358530, the canonical program `A358530.P16462741210301020417` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358530 has offset 1).

The definition of A358530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358530.P16462741210301020417

`A151800(A051634(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358530

/-- `A151800(A051634(n+1))` -/
def P16462741210301020417.Spec : Prop :=
  ∀ n, P16462741210301020417.a n = A358530 (n + 1)

theorem P16462741210301020417.correct : P16462741210301020417.Spec := by
  intro n
  simp only [A358530, Nat.add_sub_cancel]

end A358530

/-! ## A358530.P10109445465293033363

`A004139(A258026(n+1))`
-/

namespace A358530.P10109445465293033363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A258026 (n + 1)).toNat

end

end A358530.P10109445465293033363

namespace A358530

/-- `A004139(A258026(n+1))` -/
def P10109445465293033363.Spec : Prop :=
  ∀ n, P10109445465293033363.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P18371342722443843544

`A000040(A358531(n+1))`
-/

namespace A358530.P18371342722443843544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358531 (n + 1)).toNat

end

end A358530.P18371342722443843544

namespace A358530

/-- `A000040(A358531(n+1))` -/
def P18371342722443843544.Spec : Prop :=
  ∀ n, P18371342722443843544.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P1302122885573071490

`A045319(A258026(n+1)+1)`
-/

namespace A358530.P1302122885573071490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A258026 (n + 1) + 1).toNat

end

end A358530.P1302122885573071490

namespace A358530

/-- `A045319(A258026(n+1)+1)` -/
def P1302122885573071490.Spec : Prop :=
  ∀ n, P1302122885573071490.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P5747925206714719482

`A051701(A258026(n+1)+1)`
-/

namespace A358530.P5747925206714719482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (A258026 (n + 1) + 1).toNat

end

end A358530.P5747925206714719482

namespace A358530

/-- `A051701(A258026(n+1)+1)` -/
def P5747925206714719482.Spec : Prop :=
  ∀ n, P5747925206714719482.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P17059083705000856401

`A000040(A258026(n+1)+2)`
-/

namespace A358530.P17059083705000856401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258026 (n + 1) + 2).toNat

end

end A358530.P17059083705000856401

namespace A358530

/-- `A000040(A258026(n+1)+2)` -/
def P17059083705000856401.Spec : Prop :=
  ∀ n, P17059083705000856401.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P9737237447855655421

`A045319(eq[A045319(n+1), A051701(n+1)]+1)`
-/

namespace A358530.P9737237447855655421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A358530.P9737237447855655421

namespace A358530

/-- `A045319(eq[A045319(n+1), A051701(n+1)]+1)` -/
def P9737237447855655421.Spec : Prop :=
  ∀ n, P9737237447855655421.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P10354531753317772528

`A000040(lt[A008578(n+1), A118534(n+1)]+2)`
-/

namespace A358530.P10354531753317772528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A358530.P10354531753317772528

namespace A358530

/-- `A000040(lt[A008578(n+1), A118534(n+1)]+2)` -/
def P10354531753317772528.Spec : Prop :=
  ∀ n, P10354531753317772528.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P11636829773767807236

`A045966(A147812(n+1))`
-/

namespace A358530.P11636829773767807236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A147812 (n + 1)).toNat

end

end A358530.P11636829773767807236

namespace A358530

/-- `A045966(A147812(n+1))` -/
def P11636829773767807236.Spec : Prop :=
  ∀ n, P11636829773767807236.a n = A358530 (n + 1)

end A358530

/-! ## A358530.P8198736847217725808

`A051698(p?[A225493(n+1)])`
-/

namespace A358530.P8198736847217725808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A358530.P8198736847217725808

namespace A358530

/-- `A051698(p?[A225493(n+1)])` -/
def P8198736847217725808.Spec : Prop :=
  ∀ n, P8198736847217725808.a n = A358530 (n + 1)

end A358530

/-!
# A358531: Indices of the primes in A358530.

The programs for A358531, the canonical program `A358531.P7250430587380128327` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358531 has offset 1).

The definition of A358531 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358531

/-- `A258026(n+1)+2` -/
def P7250430587380128327.Spec : Prop :=
  ∀ n, P7250430587380128327.a n = A358531 (n + 1)

theorem P7250430587380128327.correct : P7250430587380128327.Spec := by
  intro n
  simp only [A358531, Nat.add_sub_cancel]

end A358531

/-! ## A358531.P10171496467436484747

`∑[A333215(n+1)]+2`
-/

namespace A358531.P10171496467436484747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A358531.P10171496467436484747

namespace A358531

/-- `∑[A333215(n+1)]+2` -/
def P10171496467436484747.Spec : Prop :=
  ∀ n, P10171496467436484747.a n = A358531 (n + 1)

end A358531

/-! ## A358531.P9214290389083900771

`lt[A036263(n+1), 0]+3`
-/

namespace A358531.P9214290389083900771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A358531.P9214290389083900771

namespace A358531

/-- `lt[A036263(n+1), 0]+3` -/
def P9214290389083900771.Spec : Prop :=
  ∀ n, (P9214290389083900771.a n : ℤ) = A358531 (n + 1)

end A358531

/-! ## A358531.P1824340515726947821

`lt[Δ[A048852(n)], 0]+2`
-/

namespace A358531.P1824340515726947821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A358531.P1824340515726947821

namespace A358531

/-- `lt[Δ[A048852(n)], 0]+2` -/
def P1824340515726947821.Spec : Prop :=
  ∀ n, (P1824340515726947821.a n : ℤ) = A358531 (n + 1)

end A358531

/-! ## A358531.P17929199840208025903

`lt[1, A073272(n+1)]+3`
-/

namespace A358531.P17929199840208025903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A358531.P17929199840208025903

namespace A358531

/-- `lt[1, A073272(n+1)]+3` -/
def P17929199840208025903.Spec : Prop :=
  ∀ n, (P17929199840208025903.a n : ℤ) = A358531 (n + 1)

end A358531

/-! ## A358531.P10194352873300751451

`lt[1, A073274(n+1)]+3`
-/

namespace A358531.P10194352873300751451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A358531.P10194352873300751451

namespace A358531

/-- `lt[1, A073274(n+1)]+3` -/
def P10194352873300751451.Spec : Prop :=
  ∀ n, (P10194352873300751451.a n : ℤ) = A358531 (n + 1)

end A358531

/-! ## A358531.P13970228214571089286

`eq[3, A108415(n+2)]+3`
-/

namespace A358531.P13970228214571089286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A358531.P13970228214571089286

namespace A358531

/-- `eq[3, A108415(n+2)]+3` -/
def P13970228214571089286.Spec : Prop :=
  ∀ n, (P13970228214571089286.a n : ℤ) = A358531 (n + 1)

end A358531

/-! ## A358531.P17261064111768349939

`A009056(A258026(n+1))`
-/

namespace A358531.P17261064111768349939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A258026 (n + 1)).toNat

end

end A358531.P17261064111768349939

namespace A358531

/-- `A009056(A258026(n+1))` -/
def P17261064111768349939.Spec : Prop :=
  ∀ n, P17261064111768349939.a n = A358531 (n + 1)

end A358531

/-! ## A358531.P283884413202686404

`A000720(A358530(n+1))`
-/

namespace A358531.P283884413202686404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A358530 (n + 1)).toNat

end

end A358531.P283884413202686404

namespace A358531

/-- `A000720(A358530(n+1))` -/
def P283884413202686404.Spec : Prop :=
  ∀ n, P283884413202686404.a n = A358531 (n + 1)

end A358531

/-! ## A358531.P3736524788061126006

`A061008(A147812(n+1))`
-/

namespace A358531.P3736524788061126006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (A147812 (n + 1)).toNat

end

end A358531.P3736524788061126006

namespace A358531

/-- `A061008(A147812(n+1))` -/
def P3736524788061126006.Spec : Prop :=
  ∀ n, P3736524788061126006.a n = A358531 (n + 1)

end A358531

/-! ## A358531.P6832601429947613409

`A003977(A051634(n+1))`
-/

namespace A358531.P6832601429947613409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A051634 (n + 1)).toNat

end

end A358531.P6832601429947613409

namespace A358531

/-- `A003977(A051634(n+1))` -/
def P6832601429947613409.Spec : Prop :=
  ∀ n, P6832601429947613409.a n = A358531 (n + 1)

end A358531

/-! ## A358531.P1684904319786847476

`A049084(A358530(2*n+1-n))`
-/

namespace A358531.P1684904319786847476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A358530 (2 * n + 1 - n)).toNat

end

end A358531.P1684904319786847476

namespace A358531

/-- `A049084(A358530(2*n+1-n))` -/
def P1684904319786847476.Spec : Prop :=
  ∀ n, P1684904319786847476.a n = A358531 (n + 1)

end A358531

/-!
# A358532: a(n) is the row position of the next open point in the structure generated by adding the largest diamond possible at the next open point on a triangular grid of side n. See Comments and Example sections for more details.

The programs for A358532, there is no canonical definition to state claims against.
-/

/-! ## A358532.P13025764218377647015

`A032741(A287963(n)+A007318(2*n+3))`
-/

namespace A358532.P13025764218377647015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A287963 n + A007318 (2 * n + 3)).toNat

end

end A358532.P13025764218377647015

/-! ## A358532.P13673702036019046905

`A237271(A064413(2*n+1)^A103221(n))`
-/

namespace A358532.P13673702036019046905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway ((A064413 (2 * n + 1) : ℚ) ^ (A103221 n : ℤ))).toNat

end

end A358532.P13673702036019046905

/-! ## A358532.P381880785426808894

`gcd(A063974(A192232(n+4)), A321664(n+2))`
-/

namespace A358532.P381880785426808894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063974 (A192232 (n + 4)).toNat) (A321664 (n + 2))

end

end A358532.P381880785426808894

/-! ## A358532.P17875472455250835317

`A320001(A320022(2*(n+2)))-A320005(n+1)`
-/

namespace A358532.P17875472455250835317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A320022 (2 * (n + 2))).toNat - A320005 (n + 1)

end

end A358532.P17875472455250835317

/-! ## A358532.P4391972878499146602

`A238157(lt[A007931(n+1), A136020(3*n+2)])`
-/

namespace A358532.P4391972878499146602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136020 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238157 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358532.P4391972878499146602

/-!
# A358533: Define a family of integer sequences S_0, S_1, S_2, ..., where S_0 = A000040 is the sequence of prime numbers and, for each k > 0, S_k is the result of making a "smoothing" pass through all the terms of S_(k-1) as follows: for every term other than the first, in ascending order, change its value by the minimum amount so that it will not differ from the mean of its two immediate neighbors by more than 1/2. {a(n)} is the limiting sequence S_oo.

The programs for A358533, there is no canonical definition to state claims against.
-/

/-! ## A358533.P4870969615708973281

`∑[A043561(A006508(2*n+3)+1)]`
-/

namespace A358533.P4870969615708973281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A006508 (2 * n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358533.P4870969615708973281

/-! ## A358533.P18152055974845332696

`A321318(A011782(n))+A022554(n+1)`
-/

namespace A358533.P18152055974845332696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (A011782 n).toNat + A022554 (n + 1)

end

end A358533.P18152055974845332696

/-! ## A358533.P5253659584951740111

`A055642(A200182(n)²)+a(n-1)` with `a(0)=2`
-/

namespace A358533.P5253659584951740111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055642 (A200182 n ^ 2).toNat + a (n - 1)

end

end A358533.P5253659584951740111

/-! ## A358533.P14059571497196419207

`A210709(2*n)+A097046(n+1)+n`
-/

namespace A358533.P14059571497196419207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (2 * n) + A097046 (n + 1) + (n : ℤ)

end

end A358533.P14059571497196419207

/-! ## A358533.P14042042453460485485

`∑[∑[A165560(A084938(3*n+2))]+1]+1`
-/

namespace A358533.P14042042453460485485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A084938 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A358533.P14042042453460485485

/-!
# A358536: a(n) is the least prime factor of 2^n-n-2.

The programs for A358536, there is no canonical definition to state claims against.
-/

/-! ## A358536.P8580977867610121821

`A020639(A000247(n+3))`
-/

namespace A358536.P8580977867610121821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000247 (n + 3)).toNat

end

end A358536.P8580977867610121821

/-! ## A358536.P13210282811461197759

`A020639(∑[2^(n+2)-1])`
-/

namespace A358536.P13210282811461197759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358536.P13210282811461197759

/-! ## A358536.P4298965673992896316

`A004257(A049479(n+3))`
-/

namespace A358536.P4298965673992896316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A049479 (n + 3)).toNat

end

end A358536.P4298965673992896316

/-! ## A358536.P9029822331720020406

`A003313(A049479(n+3)+1)`
-/

namespace A358536.P9029822331720020406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A049479 (n + 3) + 1).toNat

end

end A358536.P9029822331720020406

/-!
# A358539: a(n) is the smallest number with exactly n divisors that are n-gonal numbers.

The programs for A358539, there is no canonical definition to state claims against.
-/

/-! ## A358539.P11765824104317514386

`A315583(A003486(n))`
-/

namespace A358539.P11765824104317514386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315583 (A003486 n).toNat

end

end A358539.P11765824104317514386

/-!
# A358542: a(n) is the smallest number with exactly n divisors that are tetrahedral numbers.

The programs for A358542, there is no canonical definition to state claims against.
-/

/-! ## A358542.P13229445120547607165

`C(A288535(7*∑{d}[n+1, #]), 3)`
-/

namespace A358542.P13229445120547607165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288535 (7 * (∑ d ∈ Nat.divisors (f1 n), d))).toNat 3

end

end A358542.P13229445120547607165

/-!
# A358543: a(n) is the smallest number with exactly n divisors that are square pyramidal numbers.

The programs for A358543, there is no canonical definition to state claims against.
-/

/-! ## A358543.P2986001667937370091

`A213206(A301726(n)*A324198(3*n+2))`
-/

namespace A358543.P2986001667937370091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213206 (A301726 n * A324198 (3 * n + 2)).toNat

end

end A358543.P2986001667937370091

/-!
# A358544: a(n) is the smallest number with exactly n divisors that are centered triangular numbers.

The programs for A358544, there is no canonical definition to state claims against.
-/

/-! ## A358544.P10217957430423684640

`A280624(n)*A333943(A271461(n))`
-/

namespace A358544.P10217957430423684640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280624 n * A333943 (A271461 n).toNat

end

end A358544.P10217957430423684640

/-!
# A358545: a(n) is the smallest number with exactly n divisors that are centered square numbers.

The programs for A358545, there is no canonical definition to state claims against.
-/

/-! ## A358545.P861387272170145717

`A006339(lt[A332400(2*(n+1)), 2])`
-/

namespace A358545.P861387272170145717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332400 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358545.P861387272170145717

/-! ## A358545.P7334981370791707574

`A222239(A359232(n+1))`
-/

namespace A358545.P7334981370791707574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A359232 (n + 1)).toNat

end

end A358545.P7334981370791707574

/-!
# A358547: a(n) = Sum_{k=0..floor(n/3)} (n-k)!/(n-3*k)!.

The programs for A358547, there is no canonical definition to state claims against.
-/

/-! ## A358547.P6427369846257913011

`or(Δ[A094862(n+1)], A010551(n))`
-/

namespace A358547.P6427369846257913011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A010551 n)

end

end A358547.P6427369846257913011

/-! ## A358547.P2684229172021555817

`A348193(A189569(n))+A243081(n)`
-/

namespace A358547.P2684229172021555817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A189569 n).toNat + A243081 n

end

end A358547.P2684229172021555817

/-! ## A358547.P11948187272934181228

`A348193(A189569(n))+A294250(n)`
-/

namespace A358547.P11948187272934181228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A189569 n).toNat + A294250 n

end

end A358547.P11948187272934181228

/-! ## A358547.P473261502279629068

`A348193(A189569(n))+A292085(n+1)`
-/

namespace A358547.P473261502279629068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A189569 n).toNat + A292085 (n + 1)

end

end A358547.P473261502279629068

/-!
# A358548: a(n) = A003627(n+1) - A003627(n).

The programs for A358548, the canonical program `A358548.P10666046655170957929` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358548 has offset 1).

The definition of A358548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358548.P10666046655170957929

`A003627(n+2)-A003627(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A358548

/-- `A003627(n+2)-A003627(n+1)` -/
def P10666046655170957929.Spec : Prop :=
  ∀ n, P10666046655170957929.a n = A358548 (n + 1)

theorem P10666046655170957929.correct : P10666046655170957929.Spec := by
  intro n
  simp only [A358548, Nat.add_sub_cancel]

end A358548

/-! ## A358548.P6285282243756921349

`Δ[p?[3*n-1]]`
-/

namespace A358548.P6285282243756921349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P6285282243756921349

namespace A358548

/-- `Δ[p?[3*n-1]]` -/
def P6285282243756921349.Spec : Prop :=
  ∀ n, P6285282243756921349.a n = A358548 (n + 1)

theorem P6285282243756921349.correct : P6285282243756921349.Spec := by
  intro n
  simp only [A358548, Nat.add_sub_cancel, A358548.P6285282243756921349.f2, A358548.P6285282243756921349.f1, A358548.P6285282243756921349.a, A358548.P10666046655170957929.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A358548

/-! ## A358548.P8608893200301103881

`abs(Δ[p?[2*n+n+2]])`
-/

namespace A358548.P8608893200301103881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A358548.P8608893200301103881

namespace A358548

/-- `abs(Δ[p?[2*n+n+2]])` -/
def P8608893200301103881.Spec : Prop :=
  ∀ n, P8608893200301103881.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P17007229149265618243

`Δ[A003627(n+1)]`
-/

namespace A358548.P17007229149265618243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P17007229149265618243

namespace A358548

/-- `Δ[A003627(n+1)]` -/
def P17007229149265618243.Spec : Prop :=
  ∀ n, P17007229149265618243.a n = A358548 (n + 1)

theorem P17007229149265618243.correct : P17007229149265618243.Spec := by
  intro n
  simp only [A358548, Nat.add_sub_cancel, A358548.P17007229149265618243.f1, A358548.P17007229149265618243.a, A358548.P10666046655170957929.a, SequenceMachineLib.memo_apply]

end A358548

/-! ## A358548.P9751367930618923191

`Δ[3*A024893(n+1)]`
-/

namespace A358548.P9751367930618923191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P9751367930618923191

namespace A358548

/-- `Δ[3*A024893(n+1)]` -/
def P9751367930618923191.Spec : Prop :=
  ∀ n, P9751367930618923191.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P11317333217860898543

`Δ[3*A087370(n+1)]`
-/

namespace A358548.P11317333217860898543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A087370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P11317333217860898543

namespace A358548

/-- `Δ[3*A087370(n+1)]` -/
def P11317333217860898543.Spec : Prop :=
  ∀ n, P11317333217860898543.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P9672265240216096692

`Δ[3*A088879(n+1)]`
-/

namespace A358548.P9672265240216096692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P9672265240216096692

namespace A358548

/-- `Δ[3*A088879(n+1)]` -/
def P9672265240216096692.Spec : Prop :=
  ∀ n, P9672265240216096692.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P18364274700157589761

`Δ[A112774(n+1)/2]`
-/

namespace A358548.P18364274700157589761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112774 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P18364274700157589761

namespace A358548

/-- `Δ[A112774(n+1)/2]` -/
def P18364274700157589761.Spec : Prop :=
  ∀ n, P18364274700157589761.a n = (A358548 (n + 1) : ℚ)

theorem P18364274700157589761.correct : P18364274700157589761.Spec := by
  intro n
  simp only [A358548, Nat.add_sub_cancel, A358548.P18364274700157589761.f1, A358548.P18364274700157589761.a, A358548.P10666046655170957929.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, A112774, A112774.P17976456391943950983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A358548

/-! ## A358548.P17363599360659474013

`Δ[3*A228121(n+1)]`
-/

namespace A358548.P17363599360659474013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P17363599360659474013

namespace A358548

/-- `Δ[3*A228121(n+1)]` -/
def P17363599360659474013.Spec : Prop :=
  ∀ n, P17363599360659474013.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P6507830812866372994

`A171715(n+1)+A045410(n+2)-A007645(n+1)`
-/

namespace A358548.P6507830812866372994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (n + 1) + (A045410 (n + 2) - A007645 (n + 1))

end

end A358548.P6507830812866372994

namespace A358548

/-- `A171715(n+1)+A045410(n+2)-A007645(n+1)` -/
def P6507830812866372994.Spec : Prop :=
  ∀ n, P6507830812866372994.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P5095329569452414809

`Δ[A000040(A091177(n+1))]`
-/

namespace A358548.P5095329569452414809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P5095329569452414809

namespace A358548

/-- `Δ[A000040(A091177(n+1))]` -/
def P5095329569452414809.Spec : Prop :=
  ∀ n, P5095329569452414809.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P8231803774465619573

`Δ[record[A000010(2*n+n+2)]]`
-/

namespace A358548.P8231803774465619573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P8231803774465619573

namespace A358548

/-- `Δ[record[A000010(2*n+n+2)]]` -/
def P8231803774465619573.Spec : Prop :=
  ∀ n, P8231803774465619573.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P10841347549502263478

`Δ[record[A006530(2*n+n+2)]]`
-/

namespace A358548.P10841347549502263478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P10841347549502263478

namespace A358548

/-- `Δ[record[A006530(2*n+n+2)]]` -/
def P10841347549502263478.Spec : Prop :=
  ∀ n, P10841347549502263478.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P9504981783894364957

`Δ[record[A020639(2*n+n+2)]]`
-/

namespace A358548.P9504981783894364957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P9504981783894364957

namespace A358548

/-- `Δ[record[A020639(2*n+n+2)]]` -/
def P9504981783894364957.Spec : Prop :=
  ∀ n, P9504981783894364957.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P7440747626782429016

`Δ[A006530(A112774(n+1))]`
-/

namespace A358548.P7440747626782429016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P7440747626782429016

namespace A358548

/-- `Δ[A006530(A112774(n+1))]` -/
def P7440747626782429016.Spec : Prop :=
  ∀ n, P7440747626782429016.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P5815612689945353800

`p?[A016969(n)]-p?[A016789(n)]`
-/

namespace A358548.P5815612689945353800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A358548.P5815612689945353800

namespace A358548

/-- `p?[A016969(n)]-p?[A016789(n)]` -/
def P5815612689945353800.Spec : Prop :=
  ∀ n, P5815612689945353800.a n = A358548 (n + 1)

end A358548

/-! ## A358548.P6950289375177607304

`Δ[A354091(a(n-1))]` with `a(0)=2`
-/

namespace A358548.P6950289375177607304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A354091 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358548.P6950289375177607304

namespace A358548

/-- `Δ[A354091(a(n-1))]` -/
def P6950289375177607304.Spec : Prop :=
  ∀ n, P6950289375177607304.a n = A358548 (n + 1)

end A358548

/-!
# A358549: Triangle read by rows where row n is reversed partial sums of row n of the Sierpinski triangle (A047999).

The programs for A358549, there is no canonical definition to state claims against.
-/

/-! ## A358549.P1004205091898352170

`A261363(∑[2*n]%comp[∑[n]])`
-/

namespace A358549.P1004205091898352170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A358549.P1004205091898352170

/-! ## A358549.P12713314813201174623

`A261363(∑[char[∑[n]]]²-(n+1))`
-/

namespace A358549.P12713314813201174623
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A358549.P12713314813201174623

/-! ## A358549.P2673231651803398585

`dr(A261363(A061579(n)))`
-/

namespace A358549.P2673231651803398585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A261363 (A061579 n).toNat)

end

end A358549.P2673231651803398585

/-! ## A358549.P11648863383802027831

`A057427(n+1)*A261363(A061579(n))`
-/

namespace A358549.P11648863383802027831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A261363 (A061579 n).toNat

end

end A358549.P11648863383802027831

/-! ## A358549.P379287891194741714

`A033999(2*n)*A261363(A061579(n))`
-/

namespace A358549.P379287891194741714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A261363 (A061579 n).toNat

end

end A358549.P379287891194741714

/-! ## A358549.P4272345524363198336

`A261363(A061579(n))+A035363(2*n+1)`
-/

namespace A358549.P4272345524363198336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 (A061579 n).toNat + A035363 (2 * n + 1)

end

end A358549.P4272345524363198336

/-! ## A358549.P1803730176466576928

`A261363(A061579(n))+A035457(2*n+3)`
-/

namespace A358549.P1803730176466576928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 (A061579 n).toNat + A035457 (2 * n + 3)

end

end A358549.P1803730176466576928

/-!
# A358550: Depth of the ordered rooted tree with binary encoding A014486(n).

The programs for A358550, there is no canonical definition to state claims against.
-/

/-! ## A358550.P13649645403079015903

`A179752(n)+1`
-/

namespace A358550.P13649645403079015903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 n + 1

end

end A358550.P13649645403079015903

/-! ## A358550.P7863559311397298367

`a(A126309(n))+1` with `a(0)=1`
-/

namespace A358550.P7863559311397298367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A126309 n).toNat + 1

end

end A358550.P7863559311397298367

/-! ## A358550.P1184396356658964572

`A153246(n)+ceil(cosh(sin(n)))`
-/

namespace A358550.P1184396356658964572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 n + ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A358550.P1184396356658964572

/-! ## A358550.P2786542317697252196

`A036989(A072800(n))`
-/

namespace A358550.P2786542317697252196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A072800 n).toNat

end

end A358550.P2786542317697252196

/-! ## A358550.P11946097712852247108

`A179752(A057548(n))`
-/

namespace A358550.P11946097712852247108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A057548 n).toNat

end

end A358550.P11946097712852247108

/-! ## A358550.P10591567915450656649

`A179752(A085226(n))`
-/

namespace A358550.P10591567915450656649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A085226 n).toNat

end

end A358550.P10591567915450656649

/-! ## A358550.P15549728665761211273

`A179752(A085227(n))`
-/

namespace A358550.P15549728665761211273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A085227 n).toNat

end

end A358550.P15549728665761211273

/-! ## A358550.P17180524795312325632

`A257079(A071155(n))`
-/

namespace A358550.P17180524795312325632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (A071155 n).toNat

end

end A358550.P17180524795312325632

/-! ## A358550.P17912669339176876330

`A257079(A071156(n))`
-/

namespace A358550.P17912669339176876330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (A071156 n).toNat

end

end A358550.P17912669339176876330

/-! ## A358550.P17378388197785736869

`A358552(A127301(n))`
-/

namespace A358550.P17378388197785736869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (A127301 n).toNat

end

end A358550.P17378388197785736869

/-!
# A358551: Number of nodes in the ordered rooted tree with binary encoding A014486(n).

The programs for A358551, the canonical program `A358551.P14086074353940531701` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358551 has offset 1).

The definition of A358551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358551.P14086074353940531701

`A072643(n)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A358551

/-- `A072643(n)+1` -/
def P14086074353940531701.Spec : Prop :=
  ∀ n, P14086074353940531701.a n = A358551 (n + 1)

theorem P14086074353940531701.correct : P14086074353940531701.Spec := by
  intro n
  simp only [A358551, Nat.add_sub_cancel]

end A358551

/-! ## A358551.P12648215381481273953

`A162550(n)/2+1`
-/

namespace A358551.P12648215381481273953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162550 n : ℚ) / 2 + 1

end

end A358551.P12648215381481273953

namespace A358551

/-- `A162550(n)/2+1` -/
def P12648215381481273953.Spec : Prop :=
  ∀ n, P12648215381481273953.a n = (A358551 (n + 1) : ℚ)

theorem P12648215381481273953.correct : P12648215381481273953.Spec := by
  intro n
  simp only [A358551, Nat.add_sub_cancel, A358551.P12648215381481273953.a, A358551.P14086074353940531701.a, A072643, A072643.P10513511673986297728.f2, A072643.P10513511673986297728.f1, A072643.P10513511673986297728.a, A162550, A162550.P4693385428906052129.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A358551

/-! ## A358551.P5906059350885376182

`∑[char[A082852(n)]]`
-/

namespace A358551.P5906059350885376182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358551.P5906059350885376182

namespace A358551

/-- `∑[char[A082852(n)]]` -/
def P5906059350885376182.Spec : Prop :=
  ∀ n, (P5906059350885376182.a n : ℤ) = A358551 (n + 1)

end A358551

/-! ## A358551.P1501186562233663682

`∑[char[A082855(n)]]`
-/

namespace A358551.P1501186562233663682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082855 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358551.P1501186562233663682

namespace A358551

/-- `∑[char[A082855(n)]]` -/
def P1501186562233663682.Spec : Prop :=
  ∀ n, (P1501186562233663682.a n : ℤ) = A358551 (n + 1)

end A358551

/-! ## A358551.P14596936680149139011

`A072643(A072795(n))`
-/

namespace A358551.P14596936680149139011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072795 n).toNat

end

end A358551.P14596936680149139011

namespace A358551

/-- `A072643(A072795(n))` -/
def P14596936680149139011.Spec : Prop :=
  ∀ n, P14596936680149139011.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P1869746637628125230

`A072643(A085223(n))`
-/

namespace A358551.P1869746637628125230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A085223 n).toNat

end

end A358551.P1869746637628125230

namespace A358551

/-- `A072643(A085223(n))` -/
def P1869746637628125230.Spec : Prop :=
  ∀ n, P1869746637628125230.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P14589982731688608158

`A072643(A057548(n))`
-/

namespace A358551.P14589982731688608158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A057548 n).toNat

end

end A358551.P14589982731688608158

namespace A358551

/-- `A072643(A057548(n))` -/
def P14589982731688608158.Spec : Prop :=
  ∀ n, P14589982731688608158.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P17689337190564679757

`A061775(A127301(n))`
-/

namespace A358551.P17689337190564679757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A127301 n).toNat

end

end A358551.P17689337190564679757

namespace A358551

/-- `A061775(A127301(n))` -/
def P17689337190564679757.Spec : Prop :=
  ∀ n, P17689337190564679757.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P16654732155664067922

`A061775(A395051(n))`
-/

namespace A358551.P16654732155664067922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A395051 n).toNat

end

end A358551.P16654732155664067922

namespace A358551

/-- `A061775(A395051(n))` -/
def P16654732155664067922.Spec : Prop :=
  ∀ n, P16654732155664067922.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P12538380128699046315

`A060131(A071155(n))`
-/

namespace A358551.P12538380128699046315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A071155 n).toNat

end

end A358551.P12538380128699046315

namespace A358551

/-- `A060131(A071155(n))` -/
def P12538380128699046315.Spec : Prop :=
  ∀ n, P12538380128699046315.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P8304739575869420802

`A000120(A014486(n)+1)`
-/

namespace A358551.P8304739575869420802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A014486 n + 1).toNat

end

end A358551.P8304739575869420802

namespace A358551

/-- `A000120(A014486(n)+1)` -/
def P8304739575869420802.Spec : Prop :=
  ∀ n, P8304739575869420802.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P7164330284302860947

`A072768(A000124(n))`
-/

namespace A358551.P7164330284302860947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072768 (A000124 n).toNat

end

end A358551.P7164330284302860947

namespace A358551

/-- `A072768(A000124(n))` -/
def P7164330284302860947.Spec : Prop :=
  ∀ n, P7164330284302860947.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P15381604237233936966

`A072768(∑[n+1])`
-/

namespace A358551.P15381604237233936966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358551.P15381604237233936966

namespace A358551

/-- `A072768(∑[n+1])` -/
def P15381604237233936966.Spec : Prop :=
  ∀ n, P15381604237233936966.a n = A358551 (n + 1)

end A358551

/-! ## A358551.P11223066247647425038

`A126305(n)+A126303(n)`
-/

namespace A358551.P11223066247647425038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 n + A126303 n

end

end A358551.P11223066247647425038

namespace A358551

/-- `A126305(n)+A126303(n)` -/
def P11223066247647425038.Spec : Prop :=
  ∀ n, P11223066247647425038.a n = A358551 (n + 1)

end A358551

/-!
# A358552: Node-height of the rooted tree with Matula-Goebel number n. Number of nodes in the longest path from root to leaf.

The programs for A358552, the canonical program `A358552.P8701948705767462514` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358552 has offset 1).

The definition of A358552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358552.P3649226962539832574

`A109082(n+1)+1`
-/

namespace A358552.P3649226962539832574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) + 1

end

end A358552.P3649226962539832574

namespace A358552

/-- `A109082(n+1)+1` -/
def P3649226962539832574.Spec : Prop :=
  ∀ n, P3649226962539832574.a n = A358552 (n + 1)

theorem P3649226962539832574.correct : P3649226962539832574.Spec := by
  intro n
  simp only [A358552, Nat.add_sub_cancel, A358552.P3649226962539832574.a, A358552.P8701948705767462514.a, A109082, A109082.P2849542924064461301.a, A156061, A156061.P10261769165751241768.a, A003963, A003963.P6853423646423809573.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A358552

/-! ## A358552.P6916209163615833139

`A061775(n+1)-A358729(n+1)`
-/

namespace A358552.P6916209163615833139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A358729 (n + 1)

end

end A358552.P6916209163615833139

namespace A358552

/-- `A061775(n+1)-A358729(n+1)` -/
def P6916209163615833139.Spec : Prop :=
  ∀ n, P6916209163615833139.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P11826158687900794601

`a(A003963(n+1)-1)+1` with `a(0)=1`
-/

namespace A358552.P11826158687900794601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003963 (n + 1) - 1).toNat + 1

end

end A358552.P11826158687900794601

namespace A358552

/-- `a(A003963(n+1)-1)+1` -/
def P11826158687900794601.Spec : Prop :=
  ∀ n, (P11826158687900794601.a n : ℤ) = A358552 (n + 1)

end A358552

/-! ## A358552.P8701948705767462514

`a(A156061(n+1)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A358552

/-- `a(A156061(n+1)-1)+1` -/
def P8701948705767462514.Spec : Prop :=
  ∀ n, (P8701948705767462514.a n : ℤ) = A358552 (n + 1)

theorem P8701948705767462514.correct : P8701948705767462514.Spec := by
  intro n
  simp only [A358552, Nat.add_sub_cancel]

end A358552

/-! ## A358552.P17202269383297146118

`a(A198328(n+1)-1)+1` with `a(0)=1`
-/

namespace A358552.P17202269383297146118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A198328 (n + 1) - 1).toNat + 1

end

end A358552.P17202269383297146118

namespace A358552

/-- `a(A198328(n+1)-1)+1` -/
def P17202269383297146118.Spec : Prop :=
  ∀ n, (P17202269383297146118.a n : ℤ) = A358552 (n + 1)

end A358552

/-! ## A358552.P10014189489831275788

`a(A290103(n+1)-1)+1` with `a(0)=1`
-/

namespace A358552.P10014189489831275788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A290103 (n + 1) - 1).toNat + 1

end

end A358552.P10014189489831275788

namespace A358552

/-- `a(A290103(n+1)-1)+1` -/
def P10014189489831275788.Spec : Prop :=
  ∀ n, (P10014189489831275788.a n : ℤ) = A358552 (n + 1)

end A358552

/-! ## A358552.P5700579727014905198

`A196050(n+1)+1-A358729(n+1)`
-/

namespace A358552.P5700579727014905198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A358729 (n + 1))

end

end A358552.P5700579727014905198

namespace A358552

/-- `A196050(n+1)+1-A358729(n+1)` -/
def P5700579727014905198.Spec : Prop :=
  ∀ n, P5700579727014905198.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P1300992275924334598

`A109082(p?[n-(-1)^n])`
-/

namespace A358552.P1300992275924334598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A358552.P1300992275924334598

namespace A358552

/-- `A109082(p?[n-(-1)^n])` -/
def P1300992275924334598.Spec : Prop :=
  ∀ n, P1300992275924334598.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P18423229301320209176

`A109082(A000040(n+1))`
-/

namespace A358552.P18423229301320209176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A000040 (n + 1)).toNat

end

end A358552.P18423229301320209176

namespace A358552

/-- `A109082(A000040(n+1))` -/
def P18423229301320209176.Spec : Prop :=
  ∀ n, P18423229301320209176.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P17954708599161317798

`A109082(A100484(n+1))`
-/

namespace A358552.P17954708599161317798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A100484 (n + 1)).toNat

end

end A358552.P17954708599161317798

namespace A358552

/-- `A109082(A100484(n+1))` -/
def P17954708599161317798.Spec : Prop :=
  ∀ n, P17954708599161317798.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P4004147994763974942

`A109082(A251618(n+1))`
-/

namespace A358552.P4004147994763974942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A251618 (n + 1)).toNat

end

end A358552.P4004147994763974942

namespace A358552

/-- `A109082(A251618(n+1))` -/
def P4004147994763974942.Spec : Prop :=
  ∀ n, P4004147994763974942.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P14330163490597139772

`A109082(A107621(n+1))`
-/

namespace A358552.P14330163490597139772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A107621 (n + 1)).toNat

end

end A358552.P14330163490597139772

namespace A358552

/-- `A109082(A107621(n+1))` -/
def P14330163490597139772.Spec : Prop :=
  ∀ n, P14330163490597139772.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P402144808556767688

`A109082(A001749(n+1))`
-/

namespace A358552.P402144808556767688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A001749 (n + 1)).toNat

end

end A358552.P402144808556767688

namespace A358552

/-- `A109082(A001749(n+1))` -/
def P402144808556767688.Spec : Prop :=
  ∀ n, P402144808556767688.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P14613765605717923178

`A109082(A062876(n+1))`
-/

namespace A358552.P14613765605717923178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A062876 (n + 1)).toNat

end

end A358552.P14613765605717923178

namespace A358552

/-- `A109082(A062876(n+1))` -/
def P14613765605717923178.Spec : Prop :=
  ∀ n, P14613765605717923178.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P14780627987036853324

`A109082(A072900(n+1))`
-/

namespace A358552.P14780627987036853324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A072900 (n + 1)).toNat

end

end A358552.P14780627987036853324

namespace A358552

/-- `A109082(A072900(n+1))` -/
def P14780627987036853324.Spec : Prop :=
  ∀ n, P14780627987036853324.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P7869258287990569394

`A109082(A120700(n+1))`
-/

namespace A358552.P7869258287990569394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A120700 (n + 1)).toNat

end

end A358552.P7869258287990569394

namespace A358552

/-- `A109082(A120700(n+1))` -/
def P7869258287990569394.Spec : Prop :=
  ∀ n, P7869258287990569394.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P16595090353162409998

`A109082(A063482(n+1))`
-/

namespace A358552.P16595090353162409998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A063482 (n + 1)).toNat

end

end A358552.P16595090353162409998

namespace A358552

/-- `A109082(A063482(n+1))` -/
def P16595090353162409998.Spec : Prop :=
  ∀ n, P16595090353162409998.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P550377171073542813

`A109082(A291463(n+1))`
-/

namespace A358552.P550377171073542813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A291463 (n + 1)).toNat

end

end A358552.P550377171073542813

namespace A358552

/-- `A109082(A291463(n+1))` -/
def P550377171073542813.Spec : Prop :=
  ∀ n, P550377171073542813.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P6172348854283521183

`A109082(A205955(n+1))`
-/

namespace A358552.P6172348854283521183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A205955 (n + 1)).toNat

end

end A358552.P6172348854283521183

namespace A358552

/-- `A109082(A205955(n+1))` -/
def P6172348854283521183.Spec : Prop :=
  ∀ n, P6172348854283521183.a n = A358552 (n + 1)

end A358552

/-! ## A358552.P16089617764972023959

`A184159(n+1)+A184166(n+1)+1`
-/

namespace A358552.P16089617764972023959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (n + 1) + (A184166 (n + 1) + 1)

end

end A358552.P16089617764972023959

namespace A358552

/-- `A184159(n+1)+A184166(n+1)+1` -/
def P16089617764972023959.Spec : Prop :=
  ∀ n, P16089617764972023959.a n = A358552 (n + 1)

end A358552

/-!
# A358553: Number of internal (non-leaf) nodes in the n-th standard ordered rooted tree.

The programs for A358553, there is no canonical definition to state claims against.
-/

/-! ## A358553.P12939840219319616066

`A342507(A333219(n+1))`
-/

namespace A358553.P12939840219319616066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A333219 (n + 1)).toNat

end

end A358553.P12939840219319616066

/-! ## A358553.P10132470043422260574

`A342507(A358506(n+1))`
-/

namespace A358553.P10132470043422260574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A358506 (n + 1)).toNat

end

end A358553.P10132470043422260574

/-! ## A358553.P9979302315214528852

`A342507(∏{e}[A057335(n), A000040(#)])`
-/

namespace A358553.P9979302315214528852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A358553.P9979302315214528852

/-! ## A358553.P4779411039702960992

`A366388(A358506(n+1))+A057427(n)`
-/

namespace A358553.P4779411039702960992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A358506 (n + 1)).toNat + A057427 n

end

end A358553.P4779411039702960992

/-! ## A358553.P11311396570180665528

`A358724(A358506(n+1))+A358379(n+1)`
-/

namespace A358553.P11311396570180665528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A358506 (n + 1)).toNat + A358379 (n + 1)

end

end A358553.P11311396570180665528

/-! ## A358553.P8839522221034924645

`A358372(n+1)-A358371(n+1)`
-/

namespace A358553.P8839522221034924645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1) - A358371 (n + 1)

end

end A358553.P8839522221034924645

/-! ## A358553.P2333326323203794075

`A061775(A333219(n+1))-A358371(n+1)`
-/

namespace A358553.P2333326323203794075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A333219 (n + 1)).toNat - A358371 (n + 1)

end

end A358553.P2333326323203794075

/-! ## A358553.P11485272406522074819

`A061775(A358506(n+1))-A358371(n+1)`
-/

namespace A358553.P11485272406522074819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A358506 (n + 1)).toNat - A358371 (n + 1)

end

end A358553.P11485272406522074819

/-!
# A358554: Least Matula-Goebel number of a rooted tree with n internal (non-leaf) nodes.

The programs for A358554, there is no canonical definition to state claims against.
-/

/-! ## A358554.P5427863256461246183

`A026834(A264685(n))`
-/

namespace A358554.P5427863256461246183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A264685 n).toNat

end

end A358554.P5427863256461246183

/-! ## A358554.P14990640882723531939

`A168255(A150535(n))`
-/

namespace A358554.P14990640882723531939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A150535 n).toNat

end

end A358554.P14990640882723531939

/-! ## A358554.P7544448363639427957

`A168255(A150623(n))`
-/

namespace A358554.P7544448363639427957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A150623 n).toNat

end

end A358554.P7544448363639427957

/-! ## A358554.P14682598276474431542

`A168255(A150624(n))`
-/

namespace A358554.P14682598276474431542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A150624 n).toNat

end

end A358554.P14682598276474431542

/-!
# A358555: Composite Fibonacci numbers that are not divisible by any Fibonacci primes.

The programs for A358555, there is no canonical definition to state claims against.
-/

/-! ## A358555.P3582894476551941545

`A000045(A261312(n+3))`
-/

namespace A358555.P3582894476551941545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A261312 (n + 3)).toNat

end

end A358555.P3582894476551941545

/-!
# A358557: Numbers k for which denominator(H(k)) < LCM(1..k), where harmonic numbers H(k) = Sum_{i=1..k} 1/i = r(k)/q(k).

The programs for A358557, the canonical program `A358557.P6214688678443015509` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358557 has offset 1).

The definition of A358557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358557.P6214688678443015509

`comp[A098464(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358557

/-- `comp[A098464(n+1)-1]+1` -/
def P6214688678443015509.Spec : Prop :=
  ∀ n, (P6214688678443015509.a n : ℤ) = A358557 (n + 1)

theorem P6214688678443015509.correct : P6214688678443015509.Spec := by
  intro n
  simp only [A358557, Nat.add_sub_cancel]

end A358557

/-! ## A358557.P16808659940782224362

`lt[1, A110566(n+1)]+1`
-/

namespace A358557.P16808659940782224362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358557.P16808659940782224362

namespace A358557

/-- `lt[1, A110566(n+1)]+1` -/
def P16808659940782224362.Spec : Prop :=
  ∀ n, (P16808659940782224362.a n : ℤ) = A358557 (n + 1)

end A358557

/-! ## A358557.P6330124226902889960

`lt[1, A110566(A028310(n))]`
-/

namespace A358557.P6330124226902889960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358557.P6330124226902889960

namespace A358557

/-- `lt[1, A110566(A028310(n))]` -/
def P6330124226902889960.Spec : Prop :=
  ∀ n, (P6330124226902889960.a n : ℤ) = A358557 (n + 1)

end A358557

/-! ## A358557.P16320943426460675089

`A020725(lt[1, A110566(n+1)])`
-/

namespace A358557.P16320943426460675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358557.P16320943426460675089

namespace A358557

/-- `A020725(lt[1, A110566(n+1)])` -/
def P16320943426460675089.Spec : Prop :=
  ∀ n, P16320943426460675089.a n = A358557 (n + 1)

end A358557

/-! ## A358557.P13881463008474104514

`A065475(lt[1, A110566(n+1)])`
-/

namespace A358557.P13881463008474104514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358557.P13881463008474104514

namespace A358557

/-- `A065475(lt[1, A110566(n+1)])` -/
def P13881463008474104514.Spec : Prop :=
  ∀ n, P13881463008474104514.a n = A358557 (n + 1)

end A358557

/-! ## A358557.P9401301041578679847

`lt[1, A110566(A000007(n)+n)]`
-/

namespace A358557.P9401301041578679847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358557.P9401301041578679847

namespace A358557

/-- `lt[1, A110566(A000007(n)+n)]` -/
def P9401301041578679847.Spec : Prop :=
  ∀ n, (P9401301041578679847.a n : ℤ) = A358557 (n + 1)

end A358557

/-! ## A358557.P16717848494082544692

`lt[1, A110566(A233583(n+1))]`
-/

namespace A358557.P16717848494082544692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358557.P16717848494082544692

namespace A358557

/-- `lt[1, A110566(A233583(n+1))]` -/
def P16717848494082544692.Spec : Prop :=
  ∀ n, (P16717848494082544692.a n : ℤ) = A358557 (n + 1)

end A358557

/-! ## A358557.P13651827227531987232

`lt[A001008(n+1), A027457(n+1)]+1`
-/

namespace A358557.P13651827227531987232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358557.P13651827227531987232

namespace A358557

/-- `lt[A001008(n+1), A027457(n+1)]+1` -/
def P13651827227531987232.Spec : Prop :=
  ∀ n, (P13651827227531987232.a n : ℤ) = A358557 (n + 1)

end A358557

/-! ## A358557.P3373901113855348413

`A326178(lt[A001008(n+1), A027457(n+1)])`
-/

namespace A358557.P3373901113855348413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358557.P3373901113855348413

namespace A358557

/-- `A326178(lt[A001008(n+1), A027457(n+1)])` -/
def P3373901113855348413.Spec : Prop :=
  ∀ n, P3373901113855348413.a n = A358557 (n + 1)

end A358557

/-!
# A358558: a(n) is the number of pairs (k,m) of positive integers with 1 <= k < m <= n such that gcd(k,m) = 2^t, t > 0.

The programs for A358558, the canonical program `A358558.P4524358198685759852` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358558 has offset 1).

The definition of A358558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358558.P4524358198685759852

`A049690(floor((n+1)/2))-A000523(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358558

/-- `A049690(floor((n+1)/2))-A000523(n+1)` -/
def P4524358198685759852.Spec : Prop :=
  ∀ n, P4524358198685759852.a n = A358558 (n + 1)

theorem P4524358198685759852.correct : P4524358198685759852.Spec := by
  intro n
  simp only [A358558, Nat.add_sub_cancel]

end A358558

/-!
# A358560: a(n) = Sum_{k=0..floor(n/3)} (n-k)!/(k! * (n-3*k)!).

The programs for A358560, the canonical program `A358560.P14748471263806255613` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358560 has offset 0).

The definition of A358560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358560.P14748471263806255613

`(4*a(n-1)-a(n-2)+2*(2*n-3)*a(n-3))/3` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358560

/-- `(4*a(n-1)-a(n-2)+2*(2*n-3)*a(n-3))/3` -/
def P14748471263806255613.Spec : Prop :=
  ∀ n, P14748471263806255613.a n = (A358560 n : ℚ)

end A358560

/-! ## A358560.P10754765882380436116

`A054345(A098480(n))`
-/

namespace A358560.P10754765882380436116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A098480 n).toNat

end

end A358560.P10754765882380436116

namespace A358560

/-- `A054345(A098480(n))` -/
def P10754765882380436116.Spec : Prop :=
  ∀ n, P10754765882380436116.a n = A358560 n

end A358560

/-!
# A358563: The number of maximal antichains in the Tamari lattice of order n.

The programs for A358563, there is no canonical definition to state claims against.
-/

/-! ## A358563.P16335007376266716020

`A124134(A125791(n+1))+n`
-/

namespace A358563.P16335007376266716020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (A125791 (n + 1)).toNat + (n : ℤ)

end

end A358563.P16335007376266716020

/-!
# A358565: a(n) = A358548(n) / 6.

The programs for A358565, the canonical program `A358565.P3225092960581356260` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358565 has offset 2).

The definition of A358565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358565.P3225092960581356260

`A358548(n+2)/6`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A358565

/-- `A358548(n+2)/6` -/
def P3225092960581356260.Spec : Prop :=
  ∀ n, P3225092960581356260.a n = (A358565 (n + 2) : ℚ)

end A358565

/-! ## A358565.P12704105061407779124

`Δ[A024898(n+1)]`
-/

namespace A358565.P12704105061407779124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P12704105061407779124

namespace A358565

/-- `Δ[A024898(n+1)]` -/
def P12704105061407779124.Spec : Prop :=
  ∀ n, P12704105061407779124.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P15207552138954826023

`Δ[A059325(n+1)]`
-/

namespace A358565.P15207552138954826023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P15207552138954826023

namespace A358565

/-- `Δ[A059325(n+1)]` -/
def P15207552138954826023.Spec : Prop :=
  ∀ n, P15207552138954826023.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P15606099433437707315

`Δ[A153134(n+1)]`
-/

namespace A358565.P15606099433437707315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P15606099433437707315

namespace A358565

/-- `Δ[A153134(n+1)]` -/
def P15606099433437707315.Spec : Prop :=
  ∀ n, P15606099433437707315.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P11225220620681199458

`Δ[A173178(n+1)/3]`
-/

namespace A358565.P11225220620681199458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173178 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P11225220620681199458

namespace A358565

/-- `Δ[A173178(n+1)/3]` -/
def P11225220620681199458.Spec : Prop :=
  ∀ n, P11225220620681199458.a n = (A358565 (n + 2) : ℚ)

end A358565

/-! ## A358565.P1050214718551256033

`A024898(n+2)-A024898(n+1)`
-/

namespace A358565.P1050214718551256033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 2) - A024898 (n + 1)

end

end A358565.P1050214718551256033

namespace A358565

/-- `A024898(n+2)-A024898(n+1)` -/
def P1050214718551256033.Spec : Prop :=
  ∀ n, P1050214718551256033.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P2644065239222994091

`A059325(n+2)-A059325(n+1)`
-/

namespace A358565.P2644065239222994091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 2) - A059325 (n + 1)

end

end A358565.P2644065239222994091

namespace A358565

/-- `A059325(n+2)-A059325(n+1)` -/
def P2644065239222994091.Spec : Prop :=
  ∀ n, P2644065239222994091.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P3182876753857724132

`A153134(n+2)-A153134(n+1)`
-/

namespace A358565.P3182876753857724132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 2) - A153134 (n + 1)

end

end A358565.P3182876753857724132

namespace A358565

/-- `A153134(n+2)-A153134(n+1)` -/
def P3182876753857724132.Spec : Prop :=
  ∀ n, P3182876753857724132.a n = A358565 (n + 2)

end A358565

/-! ## A358565.P13821999079038528940

`Δ[A024893(n+2)/2]`
-/

namespace A358565.P13821999079038528940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024893 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P13821999079038528940

namespace A358565

/-- `Δ[A024893(n+2)/2]` -/
def P13821999079038528940.Spec : Prop :=
  ∀ n, P13821999079038528940.a n = (A358565 (n + 2) : ℚ)

end A358565

/-! ## A358565.P7093822622484316910

`Δ[A087370(n+2)/2]`
-/

namespace A358565.P7093822622484316910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087370 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P7093822622484316910

namespace A358565

/-- `Δ[A087370(n+2)/2]` -/
def P7093822622484316910.Spec : Prop :=
  ∀ n, P7093822622484316910.a n = (A358565 (n + 2) : ℚ)

end A358565

/-! ## A358565.P18413829656387026318

`Δ[A088879(n+2)/2]`
-/

namespace A358565.P18413829656387026318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088879 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P18413829656387026318

namespace A358565

/-- `Δ[A088879(n+2)/2]` -/
def P18413829656387026318.Spec : Prop :=
  ∀ n, P18413829656387026318.a n = (A358565 (n + 2) : ℚ)

end A358565

/-! ## A358565.P10420404894356971093

`Δ[A228121(n+2)/2]`
-/

namespace A358565.P10420404894356971093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228121 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358565.P10420404894356971093

namespace A358565

/-- `Δ[A228121(n+2)/2]` -/
def P10420404894356971093.Spec : Prop :=
  ∀ n, P10420404894356971093.a n = (A358565 (n + 2) : ℚ)

end A358565

/-!
# A358566: Number of distinct spans of length n with no 3-term arithmetic progression, containing zero, and with maximum element smallest possible.

The programs for A358566, there is no canonical definition to state claims against.
-/

/-! ## A358566.P1002622921884004282

`A262347(A065825(n+1))`
-/

namespace A358566.P1002622921884004282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262347 (A065825 (n + 1)).toNat

end

end A358566.P1002622921884004282

/-! ## A358566.P3011458760725961948

`A262347(A005047(n+1)+1)`
-/

namespace A358566.P3011458760725961948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262347 (A005047 (n + 1) + 1).toNat

end

end A358566.P3011458760725961948

/-! ## A358566.P13012104492099952627

`A334894(A005047(n+1)+1)`
-/

namespace A358566.P13012104492099952627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334894 (A005047 (n + 1) + 1).toNat

end

end A358566.P13012104492099952627

/-!
# A358567: a(n) is the minimal determinant of an n X n Toeplitz matrix using the integers 0 to 2*(n - 1).

The programs for A358567, there is no canonical definition to state claims against.
-/

/-! ## A358567.P10481762861128643350

`A096470(A215332(n+1))`
-/

namespace A358567.P10481762861128643350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096470 (A215332 (n + 1)).toNat

end

end A358567.P10481762861128643350

/-!
# A358569: a(n) is the minimal permanent of an n X n Toeplitz matrix using the integers 0 to 2*(n - 1).

The programs for A358569, there is no canonical definition to state claims against.
-/

/-! ## A358569.P17293816412443882476

`2*A327146(n+1)-n+1`
-/

namespace A358569.P17293816412443882476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327146 (n + 1) - (n : ℤ) + 1

end

end A358569.P17293816412443882476

/-!
# A358570: a(n) is the maximal permanent of an n X n Toeplitz matrix using the integers 0 to 2*(n - 1).

The programs for A358570, there is no canonical definition to state claims against.
-/

/-! ## A358570.P2819695257607045482

`A105796(3*n+1)%A250120(A322909(n))`
-/

namespace A358570.P2819695257607045482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105796 (3 * n + 1)) (A250120 (A322909 n).toNat)

end

end A358570.P2819695257607045482

/-!
# A358571: Lesser p of a sexy prime pair such that (p-3)/2 is also the lesser prime of a sexy prime pair.

The programs for A358571, there is no canonical definition to state claims against.
-/

/-! ## A358571.P7588343825948671598

`∩[A023201(n+1), A062545(A023201(n+1))]`
-/

namespace A358571.P7588343825948671598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A023201 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358571.P7588343825948671598

/-! ## A358571.P18301828256233864517

`∩[A015914(n+1), A004280(A104010(n+1)/2)]`
-/

namespace A358571.P18301828256233864517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.roundAway ((A104010 (n + 1) : ℚ) / 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358571.P18301828256233864517

/-! ## A358571.P6170425942373612857

`∩[A004280(A104010(n+1)/2), A262084(n+1)]`
-/

namespace A358571.P6170425942373612857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.roundAway ((A104010 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358571.P6170425942373612857

/-!
# A358572: Smallest prime p in a sexy prime triple such that (p-3)/2 is also the smallest prime in a sexy prime triple (A023241).

The programs for A358572, there is no canonical definition to state claims against.
-/

/-! ## A358572.P1441072194356175456

`A358571(lt[A072346(n), A222029(n)])`
-/

namespace A358572.P1441072194356175456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358571 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358572.P1441072194356175456

/-!
# A358573: a(n) = smallest prime p such that q, r and s are all prime, where q = p + 2*(2*n + 1), r = (p - 2*n - 1)/2, and s = (q + 2*n + 1)/2.

The programs for A358573, there is no canonical definition to state claims against.
-/

/-! ## A358573.P5998332234606620103

`A092792(n+6)+A000035(A002023(n))`
-/

namespace A358573.P5998332234606620103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092792 (n + 6) + A000035 (A002023 n).toNat

end

end A358573.P5998332234606620103

/-! ## A358573.P867858825384646392

`or(A092248(A092803(n)), A092792(n+6))`
-/

namespace A358573.P867858825384646392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092248 (A092803 n).toNat) (A092792 (n + 6))

end

end A358573.P867858825384646392

/-!
# A358574: Triangle read by rows: T(n,k) is the number of vertices formed when n points are placed along each edge of a square that divide the edges into n+1 equal parts and a line is continuously drawn from the current point to that k points, 2 <= k <= 2*n, counterclockwise around the square until the starting point is again reached.

The programs for A358574, there is no canonical definition to state claims against.
-/

/-! ## A358574.P17976716195287673027

`A358627(n+1)+1-A358556(n+1)`
-/

namespace A358574.P17976716195287673027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358627 (n + 1) + (1 - A358556 (n + 1))

end

end A358574.P17976716195287673027

/-!
# A358575: Triangle read by rows where T(n,k) is the number of unlabeled n-node rooted trees with k = 0..n-1 internal (non-leaf) nodes.

The programs for A358575, there is no canonical definition to state claims against.
-/

/-! ## A358575.P16142814293890808074

`A055277(∑[char[∑[n]]]²-n)`
-/

namespace A358575.P16142814293890808074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A358575.P16142814293890808074

/-! ## A358575.P10309004691840676140

`or(A000007(n), A055277(A038722(n+1)))`
-/

namespace A358575.P10309004691840676140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055277 (A038722 (n + 1)).toNat)

end

end A358575.P10309004691840676140

/-! ## A358575.P481212723825295121

`A055277(A038722(n+1))+A000007(n+4)`
-/

namespace A358575.P481212723825295121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A038722 (n + 1)).toNat + A000007 (n + 4)

end

end A358575.P481212723825295121

/-! ## A358575.P8365884931857686918

`A098108(2*(n+1))+A055277(A038722(n+1))`
-/

namespace A358575.P8365884931857686918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (2 * (n + 1)) + A055277 (A038722 (n + 1)).toNat

end

end A358575.P8365884931857686918

/-! ## A358575.P12420365604158947809

`A055277(A038722(n+1))+A000038(3*(n+1))`
-/

namespace A358575.P12420365604158947809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A038722 (n + 1)).toNat + A000038 (3 * (n + 1))

end

end A358575.P12420365604158947809

/-! ## A358575.P3342499716715027929

`A083910(2*n+5)+A055277(A038722(n+1))`
-/

namespace A358575.P3342499716715027929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (2 * n + 5) + A055277 (A038722 (n + 1)).toNat

end

end A358575.P3342499716715027929

/-! ## A358575.P7769048975781257975

`A090192(2*(n+2))+A055277(A038722(n+1))`
-/

namespace A358575.P7769048975781257975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * (n + 2)) + A055277 (A038722 (n + 1)).toNat

end

end A358575.P7769048975781257975

/-!
# A358576: Matula-Goebel numbers of rooted trees whose node-height equals their number of internal (non-leaf) nodes.

The programs for A358576, there is no canonical definition to state claims against.
-/

/-! ## A358576.P1566680671343023195

`eq[A109082(A000040(n+1)), A342507(n+1)]+1`
-/

namespace A358576.P1566680671343023195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358576.P1566680671343023195

/-! ## A358576.P10437687604083298582

`eq[1, A358724(n+1)]+1`
-/

namespace A358576.P10437687604083298582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358576.P10437687604083298582

/-! ## A358576.P5606703973548379423

`eq[1, A358724(A028310(n))]`
-/

namespace A358576.P5606703973548379423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358576.P5606703973548379423

/-! ## A358576.P17975315850872947755

`A020725(eq[1, A358724(n+1)])`
-/

namespace A358576.P17975315850872947755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358576.P17975315850872947755

/-! ## A358576.P2398308187950340018

`A065475(eq[1, A358724(n+1)])`
-/

namespace A358576.P2398308187950340018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358576.P2398308187950340018

/-!
# A358577: Matula-Goebel numbers of "square" rooted trees, i.e., whose height equals their number of leaves.

The programs for A358577, there is no canonical definition to state claims against.
-/

/-! ## A358577.P14432534010371839367

`eq[A342507(n+1), A358729(n+1)]+1`
-/

namespace A358577.P14432534010371839367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358577.P14432534010371839367

/-! ## A358577.P5597410879565096349

`eq[0, A358726(n+1)]+1`
-/

namespace A358577.P5597410879565096349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358577.P5597410879565096349

/-! ## A358577.P16268961285361095928

`eq[A000038(n), A358726(A028310(n))]`
-/

namespace A358577.P16268961285361095928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358726 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358577.P16268961285361095928

/-!
# A358578: Matula-Goebel numbers of rooted trees whose number of leaves equals their number of internal (non-leaf) nodes.

The programs for A358578, there is no canonical definition to state claims against.
-/

/-! ## A358578.P18128615918230381407

`eq[0, A358580(n+1)]+1`
-/

namespace A358578.P18128615918230381407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358578.P18128615918230381407

/-! ## A358578.P13000207689121006178

`eq[0, A358580(A028310(n))]`
-/

namespace A358578.P13000207689121006178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358578.P13000207689121006178

/-! ## A358578.P10592545194121695480

`A020725(eq[0, A358580(n+1)])`
-/

namespace A358578.P10592545194121695480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358578.P10592545194121695480

/-! ## A358578.P18340915865385151135

`lt[lcm(A102488(n+1), A358580(n+1)), 2]+1`
-/

namespace A358578.P18340915865385151135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102488 (n + 1)) (A358580 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358578.P18340915865385151135

/-!
# A358579: Numbers k such that the k-th standard ordered rooted tree has the same number of leaves as internal (non-leaf) nodes.

The programs for A358579, there is no canonical definition to state claims against.
-/

/-! ## A358579.P1133631775719262729

`eq[A358371(n+1), A358553(n+1)]+1`
-/

namespace A358579.P1133631775719262729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358579.P1133631775719262729

/-!
# A358580: Difference between the number of leaves and the number of internal (non-leaf) nodes in the rooted tree with Matula-Goebel number n.

The programs for A358580, there is no canonical definition to state claims against.
-/

/-! ## A358580.P6684407260968869641

`A061775(n+1)-2*A342507(n+1)`
-/

namespace A358580.P6684407260968869641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - 2 * A342507 (n + 1)

end

end A358580.P6684407260968869641

/-! ## A358580.P6678749229165047031

`∑{e}[A324922(2*(n+1)), #]-2*A342507(n+1)`
-/

namespace A358580.P6678749229165047031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 2 * A342507 (n + 1)

end

end A358580.P6678749229165047031

/-! ## A358580.P11695231712785499071

`A061775(n+1)-A005843(A342507(n+1))`
-/

namespace A358580.P11695231712785499071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A005843 (A342507 (n + 1)).toNat

end

end A358580.P11695231712785499071

/-! ## A358580.P18002274652463589883

`A109129(A000040(n+1))-A342507(n+1)`
-/

namespace A358580.P18002274652463589883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A000040 (n + 1)).toNat - A342507 (n + 1)

end

end A358580.P18002274652463589883

/-! ## A358580.P247621769243987770

`A028310(A109129(n+1))-A342507(n+1)`
-/

namespace A358580.P247621769243987770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109129 (n + 1)).toNat - A342507 (n + 1)

end

end A358580.P247621769243987770

/-! ## A358580.P14834104363763563523

`2*A109129(A000040(n+1))-A061775(n+1)`
-/

namespace A358580.P14834104363763563523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109129 (A000040 (n + 1)).toNat - A061775 (n + 1)

end

end A358580.P14834104363763563523

/-! ## A358580.P5364199140502286935

`A001222(A324922(n+1))+1-2*A342507(n+1)`
-/

namespace A358580.P5364199140502286935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324922 (n + 1)).toNat + 1 - 2 * A342507 (n + 1)

end

end A358580.P5364199140502286935

/-! ## A358580.P17951276279767379070

`A196068(n+1)-A196047(n+1)-2*A342507(n+1)`
-/

namespace A358580.P17951276279767379070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196047 (n + 1) - 2 * A342507 (n + 1)

end

end A358580.P17951276279767379070

/-! ## A358580.P3528415694580866971

`A184161(n+1)-A257537(n+1)-2*A342507(n+1)`
-/

namespace A358580.P3528415694580866971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A257537 (n + 1) - 2 * A342507 (n + 1)

end

end A358580.P3528415694580866971

/-! ## A358580.P4280705580617545404

`A342507(2*(n+1))+A109129(n+1)-2*A342507(n+1)`
-/

namespace A358580.P4280705580617545404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (2 * (n + 1)) + A109129 (n + 1) - 2 * A342507 (n + 1)

end

end A358580.P4280705580617545404

/-!
# A358581: Number of rooted trees with n nodes, most of which are leaves.

The programs for A358581, there is no canonical definition to state claims against.
-/

/-! ## A358581.P2685288134198685832

`∑[A174145(n)]-A358584(n+1)`
-/

namespace A358581.P2685288134198685832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A358584 (n + 1)

end

end A358581.P2685288134198685832

/-! ## A358581.P17764420737914804539

`A000081(n+1)-A358584(n+1)`
-/

namespace A358581.P17764420737914804539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A358584 (n + 1)

end

end A358581.P17764420737914804539

/-! ## A358581.P15403308545000390375

`A304489(A000124(n))-A358584(n+1)`
-/

namespace A358581.P15403308545000390375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304489 (A000124 n).toNat - A358584 (n + 1)

end

end A358581.P15403308545000390375

/-!
# A358582: Number of rooted trees with n nodes, most of which are not leaves.

The programs for A358582, there is no canonical definition to state claims against.
-/

/-! ## A358582.P8662768695736544554

`A000081(n+1)-A358583(n+1)`
-/

namespace A358582.P8662768695736544554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A358583 (n + 1)

end

end A358582.P8662768695736544554

/-! ## A358582.P12996209461644244295

`A304489(A000217(n+1))-A358583(n+1)`
-/

namespace A358582.P12996209461644244295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304489 (A000217 (n + 1)).toNat - A358583 (n + 1)

end

end A358582.P12996209461644244295

/-!
# A358583: Number of rooted trees with n nodes, at least half of which are leaves.

The programs for A358583, there is no canonical definition to state claims against.
-/

/-! ## A358583.P10984466594451245446

`∑[A174145(n)]-A358582(n+1)`
-/

namespace A358583.P10984466594451245446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A358582 (n + 1)

end

end A358583.P10984466594451245446

/-! ## A358583.P14534506757771751488

`A000081(n+1)-A358582(n+1)`
-/

namespace A358583.P14534506757771751488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A358582 (n + 1)

end

end A358583.P14534506757771751488

/-! ## A358583.P2524742761373384862

`A358581(n+1)+A358584(n+1)-A358582(n+1)`
-/

namespace A358583.P2524742761373384862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358581 (n + 1) + (A358584 (n + 1) - A358582 (n + 1))

end

end A358583.P2524742761373384862

/-! ## A358583.P17099506168879348095

`A033185(A000124(n))-A358582(n+1)`
-/

namespace A358583.P17099506168879348095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 n).toNat - A358582 (n + 1)

end

end A358583.P17099506168879348095

/-! ## A358583.P4393041407522528348

`ceil(A137976(n+1)/A332109(A007821(2*(n+2))))`
-/

namespace A358583.P4393041407522528348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137976 (n + 1) : ℚ) / (A332109 (A007821 (2 * (n + 2))).toNat : ℚ)⌉

end

end A358583.P4393041407522528348

/-!
# A358584: Number of rooted trees with n nodes, at most half of which are leaves.

The programs for A358584, there is no canonical definition to state claims against.
-/

/-! ## A358584.P10310521112042967170

`∑[A174145(n)]-A358581(n+1)`
-/

namespace A358584.P10310521112042967170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A358581 (n + 1)

end

end A358584.P10310521112042967170

/-! ## A358584.P2025054623723385340

`A000081(n+1)-A358581(n+1)`
-/

namespace A358584.P2025054623723385340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A358581 (n + 1)

end

end A358584.P2025054623723385340

/-! ## A358584.P15939563244837696406

`A339428(A000124(n))-A358581(n+1)`
-/

namespace A358584.P15939563244837696406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000124 n).toNat - A358581 (n + 1)

end

end A358584.P15939563244837696406

/-! ## A358584.P789546809214911135

`A339428(A000217(n)+1)-A358581(n+1)`
-/

namespace A358584.P789546809214911135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 n + 1).toNat - A358581 (n + 1)

end

end A358584.P789546809214911135

/-!
# A358585: Number of ordered rooted trees with n nodes, most of which are leaves.

The programs for A358585, there is no canonical definition to state claims against.
-/

/-! ## A358585.P15353141140864579229

`A349740(A007590(n)+n)`
-/

namespace A358585.P15353141140864579229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (A007590 n + (n : ℤ)).toNat

end

end A358585.P15353141140864579229

/-! ## A358585.P11859466815281146601

`A349740(A004526(n²)+n)`
-/

namespace A358585.P11859466815281146601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A358585.P11859466815281146601

/-!
# A358586: Number of ordered rooted trees with n nodes, at least half of which are leaves.

The programs for A358586, there is no canonical definition to state claims against.
-/

/-! ## A358586.P5055379325394225980

`A349740(floor((n+1)²/2))`
-/

namespace A358586.P5055379325394225980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A358586.P5055379325394225980

/-! ## A358586.P4213277824837989868

`A104710(A007590(n)+1)`
-/

namespace A358586.P4213277824837989868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104710 (A007590 n + 1).toNat

end

end A358586.P4213277824837989868

/-! ## A358586.P12287487267819505872

`A104710(A099392(n+1))`
-/

namespace A358586.P12287487267819505872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104710 (A099392 (n + 1)).toNat

end

end A358586.P12287487267819505872

/-! ## A358586.P14553517597097017796

`A104710(xor(1, A007590(n)))`
-/

namespace A358586.P14553517597097017796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104710 (Int.xor 1 (A007590 n)).toNat

end

end A358586.P14553517597097017796

/-! ## A358586.P1443384286657532493

`A028310(A000108(n)-A358585(n+1))`
-/

namespace A358586.P1443384286657532493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000108 n - A358585 (n + 1)).toNat

end

end A358586.P1443384286657532493

/-!
# A358587: Number of n-node rooted trees of height equal to the number of internal (non-leaf) nodes.

The programs for A358587, the canonical program `A358587.P9009827710571892593` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358587 has offset 1).

The definition of A358587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358587.P378580952658107128

`A109975(n)-A084172(n)`
-/

namespace A358587.P378580952658107128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n - A084172 n

end

end A358587.P378580952658107128

namespace A358587

/-- `A109975(n)-A084172(n)` -/
def P378580952658107128.Spec : Prop :=
  ∀ n, P378580952658107128.a n = A358587 (n + 1)

end A358587

/-! ## A358587.P9133575674278524085

`A045891(n)+A166444(n)-A084172(n)`
-/

namespace A358587.P9133575674278524085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (A166444 n - A084172 n)

end

end A358587.P9133575674278524085

namespace A358587

/-- `A045891(n)+A166444(n)-A084172(n)` -/
def P9133575674278524085.Spec : Prop :=
  ∀ n, P9133575674278524085.a n = A358587 (n + 1)

end A358587

/-! ## A358587.P8062708726285854762

`A034007(2*n+1-A028310(n))-A084172(n)`
-/

namespace A358587.P8062708726285854762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 ((2 * n + 1 : ℤ) - A028310 n).toNat - A084172 n

end

end A358587.P8062708726285854762

namespace A358587

/-- `A034007(2*n+1-A028310(n))-A084172(n)` -/
def P8062708726285854762.Spec : Prop :=
  ∀ n, P8062708726285854762.a n = A358587 (n + 1)

end A358587

/-! ## A358587.P10151753276799615023

`A034007(n+1)+char[A181582(n+1)²]-A084172(n)`
-/

namespace A358587.P10151753276799615023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181582 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A084172 n

end

end A358587.P10151753276799615023

namespace A358587

/-- `A034007(n+1)+char[A181582(n+1)²]-A084172(n)` -/
def P10151753276799615023.Spec : Prop :=
  ∀ n, P10151753276799615023.a n = A358587 (n + 1)

end A358587

/-! ## A358587.P8345192556097517222

`A034007(n+1)+char[A181581(2*n+3)]-A084172(n)`
-/

namespace A358587.P8345192556097517222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181581 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A084172 n

end

end A358587.P8345192556097517222

namespace A358587

/-- `A034007(n+1)+char[A181581(2*n+3)]-A084172(n)` -/
def P8345192556097517222.Spec : Prop :=
  ∀ n, P8345192556097517222.a n = A358587 (n + 1)

end A358587

/-! ## A358587.P9009827710571892593

`5*a(n-1)-7*a(n-2)-a(n-3)+8*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=4, a(6)=14`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358587

/-- `5*a(n-1)-7*a(n-2)-a(n-3)+8*a(n-4)-4*a(n-5)` -/
def P9009827710571892593.Spec : Prop :=
  ∀ n, P9009827710571892593.a n = A358587 (n + 1)

theorem P9009827710571892593.correct : P9009827710571892593.Spec := by
  intro n
  simp only [A358587, Nat.add_sub_cancel]

end A358587

/-!
# A358588: Number of n-node ordered rooted trees of height equal to the number of internal (non-leaf) nodes.

The programs for A358588, there is no canonical definition to state claims against.
-/

/-! ## A358588.P9724472290686451876

`A105517(A149056(n))`
-/

namespace A358588.P9724472290686451876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A149056 n).toNat

end

end A358588.P9724472290686451876

/-! ## A358588.P10550940328017661793

`A235044(A044048(n))`
-/

namespace A358588.P10550940328017661793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A044048 n).toNat

end

end A358588.P10550940328017661793

/-! ## A358588.P14967944776844682697

`∑[A247589(A239556(n))]`
-/

namespace A358588.P14967944776844682697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (A239556 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358588.P14967944776844682697

/-! ## A358588.P9281392006004788311

`A224909(A001349(n))-1`
-/

namespace A358588.P9281392006004788311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224909 (A001349 n).toNat - 1

end

end A358588.P9281392006004788311

/-!
# A358591: Number of 2n-node rooted trees whose height, number of leaves, and number of internal (non-leaf) nodes are all equal.

The programs for A358591, the canonical program `A358591.P6447892904110936173` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358591 has offset 1).

The definition of A358591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358591.P6447892904110936173

`A002457(A289207(n+1))-A026641(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A358591

/-- `A002457(A289207(n+1))-A026641(n)` -/
def P6447892904110936173.Spec : Prop :=
  ∀ n, P6447892904110936173.a n = A358591 (n + 1)

theorem P6447892904110936173.correct : P6447892904110936173.Spec := by
  intro n
  simp only [A358591, Nat.add_sub_cancel]

end A358591

/-! ## A358591.P5748591101322583987

`A056040(A004273(n))-(A000957(n+1)+A072547(n+2)/2)`
-/

namespace A358591.P5748591101322583987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (A004273 n).toNat : ℚ) - ((A000957 (n + 1) : ℚ) + (A072547 (n + 2) : ℚ) / 2)

end

end A358591.P5748591101322583987

namespace A358591

/-- `A056040(A004273(n))-(A000957(n+1)+A072547(n+2)/2)` -/
def P5748591101322583987.Spec : Prop :=
  ∀ n, P5748591101322583987.a n = (A358591 (n + 1) : ℚ)

end A358591

/-!
# A358592: Matula-Goebel numbers of rooted trees whose height, number of leaves, and number of internal (non-leaf) nodes are all equal.

The programs for A358592, there is no canonical definition to state claims against.
-/

/-! ## A358592.P7158389844823385245

`∩[A358577(n+1), A358578(n+1)]`
-/

namespace A358592.P7158389844823385245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358592.P7158389844823385245

/-! ## A358592.P2054161008863213687

`∩[A358576(n+1), A358577(n+1)]`
-/

namespace A358592.P2054161008863213687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358592.P2054161008863213687

/-! ## A358592.P4292746058734973608

`∩[A358576(n+1), A358578(n+1)]`
-/

namespace A358592.P4292746058734973608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358592.P4292746058734973608

/-!
# A358593: a(n) = n! * Sum_{d|n} d^(n-d) / d!^(n/d).

The programs for A358593, the canonical program `A358593.P14740415372528013982` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358593 has offset 1).

The definition of A358593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358593.P14740415372528013982

`(n+1)!*∑{d}[n+1, #^(n+1-#)/#!^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358593

/-- `(n+1)!*∑{d}[n+1, #^(n+1-#)/#!^((n+1)/#)]` -/
def P14740415372528013982.Spec : Prop :=
  ∀ n, P14740415372528013982.a n = (A358593 (n + 1) : ℝ)

end A358593

/-! ## A358593.P15708148365764003706

`A062959(n+1)%A062969(A000043(3*n+4))`
-/

namespace A358593.P15708148365764003706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062959 (n + 1)) (A062969 (A000043 (3 * n + 4)).toNat)

end

end A358593.P15708148365764003706

namespace A358593

/-- `A062959(n+1)%A062969(A000043(3*n+4))` -/
def P15708148365764003706.Spec : Prop :=
  ∀ n, P15708148365764003706.a n = A358593 (n + 1)

end A358593

/-!
# A358594: Expansion of e.g.f. Sum_{k>0} x^k / ((k-1)! - x^k).

The programs for A358594, the canonical program `A358594.P17630176229660587051` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358594 has offset 1).

The definition of A358594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358594.P17630176229660587051

`(n+1)!*∑{d}[n+1, 1/(#-1)!^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358594

/-- `(n+1)!*∑{d}[n+1, 1/(#-1)!^((n+1)/#)]` -/
def P17630176229660587051.Spec : Prop :=
  ∀ n, P17630176229660587051.a n = (A358594 (n + 1) : ℝ)

end A358594

/-!
# A358595: a(n) = n! * Sum_{d|n} d^n / d!^(n/d).

The programs for A358595, the canonical program `A358595.P15192702328362933981` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358595 has offset 1).

The definition of A358595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358595.P15192702328362933981

`(n+1)!*∑{d}[n+1, #^(n+1)/#!^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358595

/-- `(n+1)!*∑{d}[n+1, #^(n+1)/#!^((n+1)/#)]` -/
def P15192702328362933981.Spec : Prop :=
  ∀ n, P15192702328362933981.a n = (A358595 (n + 1) : ℝ)

end A358595

/-!
# A358597: Number of n-tuples (p_1, p_2, ..., p_n) of Dyck paths of semilength n+1, such that each p_i is never below p_{i-1}.

The programs for A358597, there is no canonical definition to state claims against.
-/

/-! ## A358597.P13455994867758532899

`A078920(∑[4*n])`
-/

namespace A358597.P13455994867758532899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358597.P13455994867758532899

/-! ## A358597.P314344957190101793

`A123352(∑[4*n])`
-/

namespace A358597.P314344957190101793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358597.P314344957190101793

/-! ## A358597.P1541111132026863193

`record[A078920(∑[(n²-1)%Δ[n²]])]`
-/

namespace A358597.P1541111132026863193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358597.P1541111132026863193

/-! ## A358597.P3967608301721542607

`record[A123352(gcd(n, A114327(n)))]`
-/

namespace A358597.P3967608301721542607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358597.P3967608301721542607

/-! ## A358597.P17480392234731149629

`A185249(A062725(n))`
-/

namespace A358597.P17480392234731149629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185249 (A062725 n).toNat

end

end A358597.P17480392234731149629

/-!
# A358598: Number of genetic relatives of a person M in a genealogical tree extending back n generations and where everyone has 4 children down to the generation of M.

The programs for A358598, the canonical program `A358598.P17328622049938341195` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358598 has offset 0).

The definition of A358598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358598.P17328622049938341195

`2^n+4*(8^n-1)/7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358598

/-- `2^n+4*(8^n-1)/7` -/
def P17328622049938341195.Spec : Prop :=
  ∀ n, P17328622049938341195.a n = (A358598 n : ℚ)

end A358598

/-! ## A358598.P7361047168425609633

`∑[A081342(n)]`
-/

namespace A358598.P7361047168425609633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P7361047168425609633

namespace A358598

/-- `∑[A081342(n)]` -/
def P7361047168425609633.Spec : Prop :=
  ∀ n, P7361047168425609633.a n = A358598 n

end A358598

/-! ## A358598.P6058500829104722209

`∑[A011782(3*n)+floor(2^(n-1))]`
-/

namespace A358598.P6058500829104722209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * n) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P6058500829104722209

namespace A358598

/-- `∑[A011782(3*n)+floor(2^(n-1))]` -/
def P6058500829104722209.Spec : Prop :=
  ∀ n, P6058500829104722209.a n = A358598 n

end A358598

/-! ## A358598.P17948337114921751403

`∑[A083332(record[A026741(n)])]`
-/

namespace A358598.P17948337114921751403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P17948337114921751403

namespace A358598

/-- `∑[A083332(record[A026741(n)])]` -/
def P17948337114921751403.Spec : Prop :=
  ∀ n, P17948337114921751403.a n = A358598 n

end A358598

/-! ## A358598.P18308139875406037373

`∑[A131577(3*n)+A011782(n)]`
-/

namespace A358598.P18308139875406037373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (3 * n) + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P18308139875406037373

namespace A358598

/-- `∑[A131577(3*n)+A011782(n)]` -/
def P18308139875406037373.Spec : Prop :=
  ∀ n, P18308139875406037373.a n = A358598 n

end A358598

/-! ## A358598.P10080127607437469983

`∑[or(A011782(3*n), A011782(n))]`
-/

namespace A358598.P10080127607437469983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (3 * n)) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P10080127607437469983

namespace A358598

/-- `∑[or(A011782(3*n), A011782(n))]` -/
def P10080127607437469983.Spec : Prop :=
  ∀ n, P10080127607437469983.a n = A358598 n

end A358598

/-! ## A358598.P11523533267654339795

`∑[10*a(n-1)-16*a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A358598.P11523533267654339795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  10 * f1 (n - 1) - 16 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P11523533267654339795

namespace A358598

/-- `∑[10*a(n-1)-16*a(n-2)]` -/
def P11523533267654339795.Spec : Prop :=
  ∀ n, P11523533267654339795.a n = A358598 n

end A358598

/-! ## A358598.P15191426513971692432

`∑[A074603(n)/2]`
-/

namespace A358598.P15191426513971692432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074603 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358598.P15191426513971692432

namespace A358598

/-- `∑[A074603(n)/2]` -/
def P15191426513971692432.Spec : Prop :=
  ∀ n, P15191426513971692432.a n = (A358598 n : ℚ)

end A358598

/-! ## A358598.P11277964682648252120

`∑[A000079(n)+8^n]/2`
-/

namespace A358598.P11277964682648252120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (8 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A358598.P11277964682648252120

namespace A358598

/-- `∑[A000079(n)+8^n]/2` -/
def P11277964682648252120.Spec : Prop :=
  ∀ n, P11277964682648252120.a n = (A358598 n : ℚ)

end A358598

/-!
# A358599: Number of genetic relatives of a person M in a genealogical tree extending back n generations and where everyone has 5 children down to the generation of M.

The programs for A358599, the canonical program `A358599.P12441695265762368246` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358599 has offset 0).

The definition of A358599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358599.P12441695265762368246

`13*a(n-1)-32*a(n-2)+20*a(n-3)` with `a(0)=1, a(1)=7, a(2)=59`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A358599

/-- `13*a(n-1)-32*a(n-2)+20*a(n-3)` -/
def P12441695265762368246.Spec : Prop :=
  ∀ n, P12441695265762368246.a n = A358599 n

theorem P12441695265762368246.correct : P12441695265762368246.Spec := by
  intro n
  simp only [A358599]

end A358599

/-! ## A358599.P2590231478102507994

`A000079(n)+A002279(n)`
-/

namespace A358599.P2590231478102507994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A002279 n

end

end A358599.P2590231478102507994

namespace A358599

/-- `A000079(n)+A002279(n)` -/
def P2590231478102507994.Spec : Prop :=
  ∀ n, P2590231478102507994.a n = A358599 n

end A358599

/-! ## A358599.P14744478336567650224

`2^n+5*(10^n-1)/9`
-/

namespace A358599.P14744478336567650224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (5 * ((10 ^ n : ℤ) - 1) : ℚ) / 9

end

end A358599.P14744478336567650224

namespace A358599

/-- `2^n+5*(10^n-1)/9` -/
def P14744478336567650224.Spec : Prop :=
  ∀ n, P14744478336567650224.a n = (A358599 n : ℚ)

theorem P14744478336567650224.correct : P14744478336567650224.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A358599, Nat.add_sub_cancel, A358599.P14744478336567650224.a, A358599.P12441695265762368246.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A358599, Nat.add_sub_cancel, A358599.P14744478336567650224.a, A358599.P12441695265762368246.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A358599

/-! ## A358599.P1066518388620903564

`∑[A000079(n)*A034478(n)]`
-/

namespace A358599.P1066518388620903564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358599.P1066518388620903564

namespace A358599

/-- `∑[A000079(n)*A034478(n)]` -/
def P1066518388620903564.Spec : Prop :=
  ∀ n, P1066518388620903564.a n = A358599 n

end A358599

/-! ## A358599.P13157281509915445097

`∑[ceil(A155594(n)/2)]`
-/

namespace A358599.P13157281509915445097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155594 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358599.P13157281509915445097

namespace A358599

/-- `∑[ceil(A155594(n)/2)]` -/
def P13157281509915445097.Spec : Prop :=
  ∀ n, P13157281509915445097.a n = A358599 n

end A358599

/-! ## A358599.P12047497284231686377

`∑[A050621(n+1)/2]`
-/

namespace A358599.P12047497284231686377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050621 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358599.P12047497284231686377

namespace A358599

/-- `∑[A050621(n+1)/2]` -/
def P12047497284231686377.Spec : Prop :=
  ∀ n, P12047497284231686377.a n = (A358599 n : ℚ)

end A358599

/-! ## A358599.P6522038215042017688

`(A255047(n+1)+A002275(n+1))/2`
-/

namespace A358599.P6522038215042017688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 (n + 1) + A002275 (n + 1) : ℚ) / 2

end

end A358599.P6522038215042017688

namespace A358599

/-- `(A255047(n+1)+A002275(n+1))/2` -/
def P6522038215042017688.Spec : Prop :=
  ∀ n, P6522038215042017688.a n = (A358599 n : ℚ)

end A358599

/-! ## A358599.P1324280547269640656

`(A289404(2*n)+A052551(2*n))/2`
-/

namespace A358599.P1324280547269640656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289404 (2 * n) + A052551 (2 * n) : ℚ) / 2

end

end A358599.P1324280547269640656

namespace A358599

/-- `(A289404(2*n)+A052551(2*n))/2` -/
def P1324280547269640656.Spec : Prop :=
  ∀ n, P1324280547269640656.a n = (A358599 n : ℚ)

end A358599

/-! ## A358599.P9005932461040571355

`(A282415(2*n)+A052551(2*n))/2`
-/

namespace A358599.P9005932461040571355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282415 (2 * n) + A052551 (2 * n) : ℚ) / 2

end

end A358599.P9005932461040571355

namespace A358599

/-- `(A282415(2*n)+A052551(2*n))/2` -/
def P9005932461040571355.Spec : Prop :=
  ∀ n, P9005932461040571355.a n = (A358599 n : ℚ)

end A358599

