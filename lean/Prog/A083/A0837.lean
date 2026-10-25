import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B009.C001
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
# A083701: Smallest prime having Fibonacci(n) as least primitive root, or 0 if no such prime exists.

The programs for A083701, there is no canonical definition to state claims against.
-/

/-! ## A083701.P13810324801923183180

`A023048(A000045(n+1))`
-/

namespace A083701.P13810324801923183180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A000045 (n + 1)).toNat

end

end A083701.P13810324801923183180

/-! ## A083701.P7933474461856590181

`A023048(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A083701.P7933474461856590181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (n + 1) - f1 n).toNat

end

end A083701.P7933474461856590181

/-! ## A083701.P15809061719188962442

`A023048(A109609(n))`
-/

namespace A083701.P15809061719188962442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A109609 n).toNat

end

end A083701.P15809061719188962442

/-! ## A083701.P16010102640444823123

`A023048(A185357(n))`
-/

namespace A083701.P16010102640444823123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A185357 n).toNat

end

end A083701.P16010102640444823123

/-!
# A083702: Smallest number having Fibonacci(n) as least primitive root, or 0 if no such number exists.

The programs for A083702, there is no canonical definition to state claims against.
-/

/-! ## A083702.P372054839528993821

`A214158(A000045(n+1))`
-/

namespace A083702.P372054839528993821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (A000045 (n + 1)).toNat

end

end A083702.P372054839528993821

/-! ## A083702.P10480321834146228355

`A214158(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A083702.P10480321834146228355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (f1 (n + 1) - f1 n).toNat

end

end A083702.P10480321834146228355

/-! ## A083702.P8789023657683714531

`A214158(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A083702.P8789023657683714531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083702.P8789023657683714531

/-! ## A083702.P7233001265812870898

`A214158(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0`
-/

namespace A083702.P7233001265812870898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083702.P7233001265812870898

/-!
# A083703: Expansion of eta(q)^4/eta(q^4) in powers of q.

The programs for A083703, there is no canonical definition to state claims against.
-/

/-! ## A083703.P17022269199431727132

`A033999(n)*A080965(n)`
-/

namespace A083703.P17022269199431727132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080965 n

end

end A083703.P17022269199431727132

/-! ## A083703.P17572310880984671565

`A009001(2*n)*A080965(n)`
-/

namespace A083703.P17572310880984671565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A080965 n

end

end A083703.P17572310880984671565

/-! ## A083703.P5494937028498535898

`A080965(n)/A033999(A222228(n))`
-/

namespace A083703.P5494937028498535898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080965 n : ℚ) / (A033999 (A222228 n).toNat : ℚ)

end

end A083703.P5494937028498535898

/-! ## A083703.P12445678508582214772

`A080965(n)*A087204(A038502(n+1))`
-/

namespace A083703.P12445678508582214772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 n * A087204 (A038502 (n + 1)).toNat

end

end A083703.P12445678508582214772

/-! ## A083703.P14544577145569590611

`A009531(2*n+1)*A080965(n)`
-/

namespace A083703.P14544577145569590611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A080965 n

end

end A083703.P14544577145569590611

/-! ## A083703.P2129480632456272414

`2*A014457(n)-A014457(A008586(n))`
-/

namespace A083703.P2129480632456272414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014457 n - A014457 (A008586 n).toNat

end

end A083703.P2129480632456272414

/-! ## A083703.P17659672503845467208

`A080965(n)*A087204(n²+1)`
-/

namespace A083703.P17659672503845467208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 n * A087204 (n ^ 2 + 1)

end

end A083703.P17659672503845467208

/-!
# A083704: a(n)=sum(k=1,n,floor(r*floor(k/r))) where r=sqrt(3).

The programs for A083704, the canonical program `A083704.P12240448443704909377` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083704 has offset 0).

The definition of A083704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083704.P12240448443704909377

`n*(n-3)/2+ceil(n/sqrt(3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083704

/-- `n*(n-3)/2+ceil(n/sqrt(3))` -/
def P12240448443704909377.Spec : Prop :=
  ∀ n, P12240448443704909377.a n = (A083704 n : ℚ)

end A083704

/-! ## A083704.P11800757731459489032

`∑[A048881(∑[A222763(n)])]`
-/

namespace A083704.P11800757731459489032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083704.P11800757731459489032

namespace A083704

/-- `∑[A048881(∑[A222763(n)])]` -/
def P11800757731459489032.Spec : Prop :=
  ∀ n, P11800757731459489032.a n = A083704 n

end A083704

/-! ## A083704.P2684683576256418146

`∑[∑[A024361(A029869(n+6))]]`
-/

namespace A083704.P2684683576256418146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A029869 (n + 6)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083704.P2684683576256418146

namespace A083704

/-- `∑[∑[A024361(A029869(n+6))]]` -/
def P2684683576256418146.Spec : Prop :=
  ∀ n, P2684683576256418146.a n = A083704 n

end A083704

/-!
# A083705: a(n) = 2*a(n-1) - 1 with a(0) = 10.

The programs for A083705, the canonical program `A083705.P9593566167320411800` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083705 has offset 0).

The definition of A083705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A083705.P9593566167320411800`, by `A083705.P9593566167320411800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083705.P9191691210801663417

`1+9*2^n`
-/

namespace A083705.P9191691210801663417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 9 * 2 ^ n

end

end A083705.P9191691210801663417

namespace A083705

/-- `1+9*2^n` -/
def P9191691210801663417.Spec : Prop :=
  ∀ n, (P9191691210801663417.a n : ℤ) = A083705 n

theorem P9191691210801663417.correct : P9191691210801663417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083705, Nat.add_sub_cancel, A083705.P9191691210801663417.a, A083705.P9593566167320411800.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083705, Nat.add_sub_cancel, A083705.P9191691210801663417.a, A083705.P9593566167320411800.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083705

/-! ## A083705.P9593566167320411800

`2*a(n-1)-1` with `a(0)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083705

/-- `2*a(n-1)-1` -/
def P9593566167320411800.Spec : Prop :=
  ∀ n, P9593566167320411800.a n = A083705 n

theorem P9593566167320411800.correct : P9593566167320411800.Spec := by
  intro n
  simp only [A083705]

end A083705

/-! ## A083705.P1245453653519906898

`ogf((10-11x)/(1-3x+2x^2))`
-/

namespace A083705.P1245453653519906898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -11] [1, -3, 2] n

end

end A083705.P1245453653519906898

namespace A083705

/-- `ogf((10-11x)/(1-3x+2x^2))` -/
def P1245453653519906898.Spec : Prop :=
  ∀ n, P1245453653519906898.a n = A083705 n

end A083705

/-! ## A083705.P6235328197439679450

`∑[a(n-1)+a(n-1)]` with `a(0)=10, a(1)=9`
-/

namespace A083705.P6235328197439679450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 9] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083705.P6235328197439679450

namespace A083705

/-- `∑[a(n-1)+a(n-1)]` -/
def P6235328197439679450.Spec : Prop :=
  ∀ n, (P6235328197439679450.a n : ℤ) = A083705 n

end A083705

/-! ## A083705.P2638953066951444472

`floor(a(n-1)+a(n-1)-1)` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A083705.P2638953066951444472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A083705.P2638953066951444472

namespace A083705

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P2638953066951444472.Spec : Prop :=
  ∀ n, P2638953066951444472.a n = A083705 n

theorem P2638953066951444472.correct : P2638953066951444472.Spec := by
  intro n
  simp only [A083705, Nat.add_sub_cancel, A083705.P2638953066951444472.a, A083705.P9593566167320411800.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083705

/-! ## A083705.P9794439303692891295

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A083705.P9794439303692891295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A083705.P9794439303692891295

namespace A083705

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P9794439303692891295.Spec : Prop :=
  ∀ n, P9794439303692891295.a n = A083705 n

theorem P9794439303692891295.correct : P9794439303692891295.Spec := by
  intro n
  simp only [A083705, Nat.add_sub_cancel, A083705.P9794439303692891295.a, A083705.P9593566167320411800.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083705

/-! ## A083705.P17087198600043473770

`record[A134693(n+1)+1]`
-/

namespace A083705.P17087198600043473770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083705.P17087198600043473770

namespace A083705

/-- `record[A134693(n+1)+1]` -/
def P17087198600043473770.Spec : Prop :=
  ∀ n, P17087198600043473770.a n = A083705 n

end A083705

/-! ## A083705.P9013820420716551575

`xor(A020707(n+1), A000051(n))`
-/

namespace A083705.P9013820420716551575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 (n + 1)) (A000051 n)

end

end A083705.P9013820420716551575

namespace A083705

/-- `xor(A020707(n+1), A000051(n))` -/
def P9013820420716551575.Spec : Prop :=
  ∀ n, P9013820420716551575.a n = A083705 n

end A083705

/-! ## A083705.P6064293395448993040

`xor(A020737(n+1), A171559(n))`
-/

namespace A083705.P6064293395448993040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020737 (n + 1)) (A171559 n)

end

end A083705.P6064293395448993040

namespace A083705

/-- `xor(A020737(n+1), A171559(n))` -/
def P6064293395448993040.Spec : Prop :=
  ∀ n, P6064293395448993040.a n = A083705 n

end A083705

/-! ## A083705.P1470440090468619579

`or(A000051(n), A000079(n+3))`
-/

namespace A083705.P1470440090468619579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000079 (n + 3))

end

end A083705.P1470440090468619579

namespace A083705

/-- `or(A000051(n), A000079(n+3))` -/
def P1470440090468619579.Spec : Prop :=
  ∀ n, P1470440090468619579.a n = A083705 n

end A083705

/-! ## A083705.P13422911049562347930

`xor(2*A020707(n), A000051(n))`
-/

namespace A083705.P13422911049562347930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A020707 n) (A000051 n)

end

end A083705.P13422911049562347930

namespace A083705

/-- `xor(2*A020707(n), A000051(n))` -/
def P13422911049562347930.Spec : Prop :=
  ∀ n, P13422911049562347930.a n = A083705 n

end A083705

/-! ## A083705.P9543295170307885573

`or(A005010(n)+1, abs(A014019(n+2)))`
-/

namespace A083705.P9543295170307885573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005010 n + 1) |A014019 (n + 2)|

end

end A083705.P9543295170307885573

namespace A083705

/-- `or(A005010(n)+1, abs(A014019(n+2)))` -/
def P9543295170307885573.Spec : Prop :=
  ∀ n, P9543295170307885573.a n = A083705 n

end A083705

/-! ## A083705.P18393681717301964535

`record[1-Δ[A112033(n)]]`
-/

namespace A083705.P18393681717301964535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083705.P18393681717301964535

namespace A083705

/-- `record[1-Δ[A112033(n)]]` -/
def P18393681717301964535.Spec : Prop :=
  ∀ n, P18393681717301964535.a n = A083705 n

end A083705

/-! ## A083705.P2471697674251407702

`Δ[3*A007283(n)+n]`
-/

namespace A083705.P2471697674251407702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007283 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083705.P2471697674251407702

namespace A083705

/-- `Δ[3*A007283(n)+n]` -/
def P2471697674251407702.Spec : Prop :=
  ∀ n, P2471697674251407702.a n = A083705 n

end A083705

/-! ## A083705.P5420184484298936554

`(A052996(n+3)+3)/2`
-/

namespace A083705.P5420184484298936554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052996 (n + 3) + 3 : ℚ) / 2

end

end A083705.P5420184484298936554

namespace A083705

/-- `(A052996(n+3)+3)/2` -/
def P5420184484298936554.Spec : Prop :=
  ∀ n, P5420184484298936554.a n = (A083705 n : ℚ)

end A083705

/-! ## A083705.P15513427914542260931

`xor(A020707(n), A168596(n))`
-/

namespace A083705.P15513427914542260931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A168596 n)

end

end A083705.P15513427914542260931

namespace A083705

/-- `xor(A020707(n), A168596(n))` -/
def P15513427914542260931.Spec : Prop :=
  ∀ n, P15513427914542260931.a n = A083705 n

end A083705

/-! ## A083705.P7912044138234003054

`(A083686(n)+A083683(n))/2`
-/

namespace A083705.P7912044138234003054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083686 n + A083683 n : ℚ) / 2

end

end A083705.P7912044138234003054

namespace A083705

/-- `(A083686(n)+A083683(n))/2` -/
def P7912044138234003054.Spec : Prop :=
  ∀ n, P7912044138234003054.a n = (A083705 n : ℚ)

end A083705

/-! ## A083705.P2590881235477484810

`xor(A081808(n+1), A083575(n))`
-/

namespace A083705.P2590881235477484810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 1)) (A083575 n)

end

end A083705.P2590881235477484810

namespace A083705

/-- `xor(A081808(n+1), A083575(n))` -/
def P2590881235477484810.Spec : Prop :=
  ∀ n, P2590881235477484810.a n = A083705 n

end A083705

/-! ## A083705.P7089612522514708822

`(A305154(n)-5)/4`
-/

namespace A083705.P7089612522514708822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305154 n - 5 : ℚ) / 4

end

end A083705.P7089612522514708822

namespace A083705

/-- `(A305154(n)-5)/4` -/
def P7089612522514708822.Spec : Prop :=
  ∀ n, P7089612522514708822.a n = (A083705 n : ℚ)

end A083705

/-! ## A083705.P6586263666371487754

`A206371(n)%A005015(n)`
-/

namespace A083705.P6586263666371487754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206371 n) (A005015 n)

end

end A083705.P6586263666371487754

namespace A083705

/-- `A206371(n)%A005015(n)` -/
def P6586263666371487754.Spec : Prop :=
  ∀ n, P6586263666371487754.a n = A083705 n

end A083705

/-!
# A083706: a(n) = 2^(n+1) + n - 1.

The programs for A083706, the canonical program `A083706.P3138796942253283829` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083706 has offset 0).

The definition of A083706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+n-1` (program `A083706.P3138796942253283829`, by `A083706.P3138796942253283829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083706.P3138796942253283829

`2^(n+1)+n-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083706

/-- `2^(n+1)+n-1` -/
def P3138796942253283829.Spec : Prop :=
  ∀ n, P3138796942253283829.a n = A083706 n

theorem P3138796942253283829.correct : P3138796942253283829.Spec := by
  intro n
  simp only [A083706]

end A083706

/-! ## A083706.P74521742506218462

`∑[or(1, 2^n)]`
-/

namespace A083706.P74521742506218462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P74521742506218462

namespace A083706

/-- `∑[or(1, 2^n)]` -/
def P74521742506218462.Spec : Prop :=
  ∀ n, (P74521742506218462.a n : ℤ) = A083706 n

end A083706

/-! ## A083706.P14511648491104144346

`∑[ogf((1-2x^2)/(1-3x+2x^2))]`
-/

namespace A083706.P14511648491104144346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P14511648491104144346

namespace A083706

/-- `∑[ogf((1-2x^2)/(1-3x+2x^2))]` -/
def P14511648491104144346.Spec : Prop :=
  ∀ n, P14511648491104144346.a n = A083706 n

end A083706

/-! ## A083706.P8877921958404733771

`ogf((1-2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A083706.P8877921958404733771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 5, -2] n

end

end A083706.P8877921958404733771

namespace A083706

/-- `ogf((1-2x^2)/(1-4x+5x^2-2x^3))` -/
def P8877921958404733771.Spec : Prop :=
  ∀ n, P8877921958404733771.a n = A083706 n

end A083706

/-! ## A083706.P2162493573040717825

`abs(or(n-1, 2*2^n))`
-/

namespace A083706.P2162493573040717825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n : ℤ) - 1) (2 * 2 ^ n : ℤ)|

end

end A083706.P2162493573040717825

namespace A083706

/-- `abs(or(n-1, 2*2^n))` -/
def P2162493573040717825.Spec : Prop :=
  ∀ n, P2162493573040717825.a n = A083706 n

end A083706

/-! ## A083706.P16530931495390022835

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=3`
-/

namespace A083706.P16530931495390022835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P16530931495390022835

namespace A083706

/-- `∑[2*a(n-1)-1]` -/
def P16530931495390022835.Spec : Prop :=
  ∀ n, P16530931495390022835.a n = A083706 n

end A083706

/-! ## A083706.P17624757856681715657

`∑[lcm(2, a(n-1))-1]` with `a(0)=1, a(1)=3`
-/

namespace A083706.P17624757856681715657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (Int.lcm 2 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P17624757856681715657

namespace A083706

/-- `∑[lcm(2, a(n-1))-1]` -/
def P17624757856681715657.Spec : Prop :=
  ∀ n, P17624757856681715657.a n = A083706 n

end A083706

/-! ## A083706.P13167401893353683214

`abs(2*a(n-1)-(n-3))` with `a(0)=1`
-/

namespace A083706.P13167401893353683214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - ((n : ℤ) - 3)|

end

end A083706.P13167401893353683214

namespace A083706

/-- `abs(2*a(n-1)-(n-3))` -/
def P13167401893353683214.Spec : Prop :=
  ∀ n, P13167401893353683214.a n = A083706 n

end A083706

/-! ## A083706.P9586579305695366532

`floor(2*a(n-1)+3-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083706.P9586579305695366532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (3 - (n : ℤ))

end

end A083706.P9586579305695366532

namespace A083706

/-- `floor(2*a(n-1)+3-n)` -/
def P9586579305695366532.Spec : Prop :=
  ∀ n, P9586579305695366532.a n = A083706 n

theorem P9586579305695366532.correct : P9586579305695366532.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P9586579305695366532.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P9586579305695366532.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P9030607412219403428

`ceil(2*a(n-1)-(n-3))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A083706.P9030607412219403428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A083706.P9030607412219403428

namespace A083706

/-- `ceil(2*a(n-1)-(n-3))` -/
def P9030607412219403428.Spec : Prop :=
  ∀ n, P9030607412219403428.a n = A083706 n

theorem P9030607412219403428.correct : P9030607412219403428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P9030607412219403428.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P9030607412219403428.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P12463723088830710212

`round(2*a(n-1)-(n-3))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A083706.P12463723088830710212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A083706.P12463723088830710212

namespace A083706

/-- `round(2*a(n-1)-(n-3))` -/
def P12463723088830710212.Spec : Prop :=
  ∀ n, P12463723088830710212.a n = A083706 n

theorem P12463723088830710212.correct : P12463723088830710212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P12463723088830710212.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P12463723088830710212.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P188659457430941072

`2*(a(n-1)+(3-n)/2)` with `a(0)=1`
-/

namespace A083706.P188659457430941072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (3 - (n : ℤ) : ℚ) / 2)

end

end A083706.P188659457430941072

namespace A083706

/-- `2*(a(n-1)+(3-n)/2)` -/
def P188659457430941072.Spec : Prop :=
  ∀ n, P188659457430941072.a n = (A083706 n : ℚ)

theorem P188659457430941072.correct : P188659457430941072.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P188659457430941072.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P188659457430941072.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P11743802845879932314

`floor(2*(a(n-1)-(n-3)/2))` with `a(0)=1`
-/

namespace A083706.P11743802845879932314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℚ) - ((n : ℤ) - 3 : ℚ) / 2)⌋

end

end A083706.P11743802845879932314

namespace A083706

/-- `floor(2*(a(n-1)-(n-3)/2))` -/
def P11743802845879932314.Spec : Prop :=
  ∀ n, P11743802845879932314.a n = A083706 n

end A083706

/-! ## A083706.P14146528537780725826

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=3`
-/

namespace A083706.P14146528537780725826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P14146528537780725826

namespace A083706

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P14146528537780725826.Spec : Prop :=
  ∀ n, P14146528537780725826.a n = A083706 n

end A083706

/-! ## A083706.P8326844331027637756

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A083706.P8326844331027637756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P8326844331027637756

namespace A083706

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P8326844331027637756.Spec : Prop :=
  ∀ n, P8326844331027637756.a n = A083706 n

end A083706

/-! ## A083706.P12747775055383926041

`floor(n-(2*(n-a(n-1))-3))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083706.P12747775055383926041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (2 * ((n : ℤ) - a (n - 1)) - 3)

end

end A083706.P12747775055383926041

namespace A083706

/-- `floor(n-(2*(n-a(n-1))-3))` -/
def P12747775055383926041.Spec : Prop :=
  ∀ n, P12747775055383926041.a n = A083706 n

theorem P12747775055383926041.correct : P12747775055383926041.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P12747775055383926041.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P12747775055383926041.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P13482290766087383480

`2*(1-((n-1)/2-a(n-1)))` with `a(0)=1`
-/

namespace A083706.P13482290766087383480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (((n : ℤ) - 1 : ℚ) / 2 - a (n - 1)))

end

end A083706.P13482290766087383480

namespace A083706

/-- `2*(1-((n-1)/2-a(n-1)))` -/
def P13482290766087383480.Spec : Prop :=
  ∀ n, P13482290766087383480.a n = (A083706 n : ℚ)

theorem P13482290766087383480.correct : P13482290766087383480.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P13482290766087383480.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P13482290766087383480.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P17516563242970773670

`floor(a(n-1)+a(n-1)+3-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083706.P17516563242970773670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 3 - (n : ℤ))

end

end A083706.P17516563242970773670

namespace A083706

/-- `floor(a(n-1)+a(n-1)+3-n)` -/
def P17516563242970773670.Spec : Prop :=
  ∀ n, P17516563242970773670.a n = A083706 n

theorem P17516563242970773670.correct : P17516563242970773670.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P17516563242970773670.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P17516563242970773670.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P9724251671475058558

`floor(a(n-1)-(n-3-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083706.P9724251671475058558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - 3 - a (n - 1))

end

end A083706.P9724251671475058558

namespace A083706

/-- `floor(a(n-1)-(n-3-a(n-1)))` -/
def P9724251671475058558.Spec : Prop :=
  ∀ n, P9724251671475058558.a n = A083706 n

theorem P9724251671475058558.correct : P9724251671475058558.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083706, Nat.add_sub_cancel, A083706.P9724251671475058558.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083706, Nat.add_sub_cancel, A083706.P9724251671475058558.a, A083706.P3138796942253283829.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083706

/-! ## A083706.P3744690840002597194

`∑[A083318(n)]`
-/

namespace A083706.P3744690840002597194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083706.P3744690840002597194

namespace A083706

/-- `∑[A083318(n)]` -/
def P3744690840002597194.Spec : Prop :=
  ∀ n, P3744690840002597194.a n = A083706 n

end A083706

/-!
# A083707: G.f.: (x+4*x^3+x^5)/((1-x)^2*(1-x^2)^2*(1-x^3)).

The programs for A083707, the canonical program `A083707.P10638826215811034503` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083707 has offset 0).

The definition of A083707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083707.P10638826215811034503

`A213389(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083707

/-- `A213389(n)+a(n-3)` -/
def P10638826215811034503.Spec : Prop :=
  ∀ n, P10638826215811034503.a n = A083707 n

theorem P10638826215811034503.correct : P10638826215811034503.Spec := by
  intro n
  simp only [A083707]

end A083707

/-! ## A083707.P151670063280320406

`A257464(n)-A008795(n)`
-/

namespace A083707.P151670063280320406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257464 n - A008795 n

end

end A083707.P151670063280320406

namespace A083707

/-- `A257464(n)-A008795(n)` -/
def P151670063280320406.Spec : Prop :=
  ∀ n, P151670063280320406.a n = A083707 n

end A083707

/-! ## A083707.P3597871676501050851

`∑[A083709(n)]-A008795(n)`
-/

namespace A083707.P3597871676501050851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008795 n

end

end A083707.P3597871676501050851

namespace A083707

/-- `∑[A083709(n)]-A008795(n)` -/
def P3597871676501050851.Spec : Prop :=
  ∀ n, P3597871676501050851.a n = A083707 n

end A083707

/-! ## A083707.P10247904196408767090

`A257464(n)-A000217(A028242(n))`
-/

namespace A083707.P10247904196408767090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257464 n - A000217 (A028242 n).toNat

end

end A083707.P10247904196408767090

namespace A083707

/-- `A257464(n)-A000217(A028242(n))` -/
def P10247904196408767090.Spec : Prop :=
  ∀ n, P10247904196408767090.a n = A083707 n

end A083707

/-! ## A083707.P4854824241610305642

`∑[A083709(n)]-A000217(A028242(n))`
-/

namespace A083707.P4854824241610305642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (A028242 n).toNat

end

end A083707.P4854824241610305642

namespace A083707

/-- `∑[A083709(n)]-A000217(A028242(n))` -/
def P4854824241610305642.Spec : Prop :=
  ∀ n, P4854824241610305642.a n = A083707 n

end A083707

/-! ## A083707.P310690251962450995

`∑[A030533(n)-A008615(2*n)]-A008795(n)`
-/

namespace A083707.P310690251962450995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008795 n

end

end A083707.P310690251962450995

namespace A083707

/-- `∑[A030533(n)-A008615(2*n)]-A008795(n)` -/
def P310690251962450995.Spec : Prop :=
  ∀ n, P310690251962450995.a n = A083707 n

end A083707

/-! ## A083707.P5658352269484994998

`A001399(A000096(n))-A077043(A008619(n))`
-/

namespace A083707.P5658352269484994998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A000096 n).toNat - A077043 (A008619 n).toNat

end

end A083707.P5658352269484994998

namespace A083707

/-- `A001399(A000096(n))-A077043(A008619(n))` -/
def P5658352269484994998.Spec : Prop :=
  ∀ n, P5658352269484994998.a n = A083707 n

end A083707

/-!
# A083708: G.f.: (x+4*x^3+x^5)/((1-x)^2*(1-x^2)^2*(1-x^3)^2).

The programs for A083708, the canonical program `A083708.P12213489656389351217` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083708 has offset 0).

The definition of A083708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083708.P12213489656389351217

`A083707(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083708

/-- `A083707(n)+a(n-3)` -/
def P12213489656389351217.Spec : Prop :=
  ∀ n, P12213489656389351217.a n = A083708 n

theorem P12213489656389351217.correct : P12213489656389351217.Spec := by
  intro n
  simp only [A083708]

end A083708

/-! ## A083708.P12612321627396532477

`A037240(n)-A165188(n+1)`
-/

namespace A083708.P12612321627396532477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A165188 (n + 1)

end

end A083708.P12612321627396532477

namespace A083708

/-- `A037240(n)-A165188(n+1)` -/
def P12612321627396532477.Spec : Prop :=
  ∀ n, P12612321627396532477.a n = A083708 n

theorem P12612321627396532477.correct : P12612321627396532477.Spec := by
  intro n
  simp only [A083708, Nat.add_sub_cancel, A083708.P12612321627396532477.a, A083708.P12213489656389351217.a, A037240, A037240.P11525866944506951334.a, A083707, A083707.P10638826215811034503.a, A165188, A165188.P17491138411917498515.a, A008731, A008731.P7025943894574725275.a, A213389, A213389.P8644831371672901747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083708

/-! ## A083708.P3011461608908906393

`A037240(n)+A254594(n)-A254708(n)`
-/

namespace A083708.P3011461608908906393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n + (A254594 n - A254708 n)

end

end A083708.P3011461608908906393

namespace A083708

/-- `A037240(n)+A254594(n)-A254708(n)` -/
def P3011461608908906393.Spec : Prop :=
  ∀ n, P3011461608908906393.a n = A083708 n

end A083708

/-! ## A083708.P16139577076100121547

`A037240(n)-A029253(A136320(n))`
-/

namespace A083708.P16139577076100121547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A029253 (A136320 n).toNat

end

end A083708.P16139577076100121547

namespace A083708

/-- `A037240(n)-A029253(A136320(n))` -/
def P16139577076100121547.Spec : Prop :=
  ∀ n, P16139577076100121547.a n = A083708 n

end A083708

/-! ## A083708.P15676881349627223368

`A037240(n)-A029167(A166517(n)+A166517(n)-1)`
-/

namespace A083708.P15676881349627223368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A029167 (A166517 n + (A166517 n - 1)).toNat

end

end A083708.P15676881349627223368

namespace A083708

/-- `A037240(n)-A029167(A166517(n)+A166517(n)-1)` -/
def P15676881349627223368.Spec : Prop :=
  ∀ n, P15676881349627223368.a n = A083708 n

end A083708

/-! ## A083708.P11526694327063748117

`A037240(n)-A029167(A166517(n)-(1-A166517(n)))`
-/

namespace A083708.P11526694327063748117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A029167 (A166517 n - (1 - A166517 n)).toNat

end

end A083708.P11526694327063748117

namespace A083708

/-- `A037240(n)-A029167(A166517(n)-(1-A166517(n)))` -/
def P11526694327063748117.Spec : Prop :=
  ∀ n, P11526694327063748117.a n = A083708 n

end A083708

/-! ## A083708.P7331126251390441194

`A037240(n)-A029253(A047270(n+1))`
-/

namespace A083708.P7331126251390441194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A029253 (A047270 (n + 1)).toNat

end

end A083708.P7331126251390441194

namespace A083708

/-- `A037240(n)-A029253(A047270(n+1))` -/
def P7331126251390441194.Spec : Prop :=
  ∀ n, P7331126251390441194.a n = A083708 n

end A083708

/-!
# A083709: G.f.: (1-x+2*x^2+2*x^3+2*x^4-x^5+x^6)/((1-x)*(1-x^2)^2*(1-x^3)).

The programs for A083709, the canonical program `A083709.P18036757815071533500` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083709 has offset 0).

The definition of A083709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083709.P18036757815071533500

`∑[Δ[A004396(n)]-A317300(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083709

/-- `∑[Δ[A004396(n)]-A317300(n)]` -/
def P18036757815071533500.Spec : Prop :=
  ∀ n, P18036757815071533500.a n = A083709 n

theorem P18036757815071533500.correct : P18036757815071533500.Spec := by
  intro n
  simp only [A083709]

end A083709

/-! ## A083709.P239851973029825831

`A004396(n+1)-∑[A317300(n)]`
-/

namespace A083709.P239851973029825831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083709.P239851973029825831

namespace A083709

/-- `A004396(n+1)-∑[A317300(n)]` -/
def P239851973029825831.Spec : Prop :=
  ∀ n, P239851973029825831.a n = A083709 n

end A083709

/-! ## A083709.P17100332645201284407

`∑[((n-A028242(n))%A035336(n+1)-n)²]-ceil(n/3)`
-/

namespace A083709.P17100332645201284407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - A028242 n) (A035336 (n + 1)) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 3⌉

end

end A083709.P17100332645201284407

namespace A083709

/-- `∑[((n-A028242(n))%A035336(n+1)-n)²]-ceil(n/3)` -/
def P17100332645201284407.Spec : Prop :=
  ∀ n, P17100332645201284407.a n = A083709 n

end A083709

/-! ## A083709.P11278010109976729143

`A030533(n)-A110654(A004396(n))`
-/

namespace A083709.P11278010109976729143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A110654 (A004396 n).toNat

end

end A083709.P11278010109976729143

namespace A083709

/-- `A030533(n)-A110654(A004396(n))` -/
def P11278010109976729143.Spec : Prop :=
  ∀ n, P11278010109976729143.a n = A083709 n

end A083709

/-! ## A083709.P12967251303737143880

`A030533(n)-A008615(2*n)`
-/

namespace A083709.P12967251303737143880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A008615 (2 * n)

end

end A083709.P12967251303737143880

namespace A083709

/-- `A030533(n)-A008615(2*n)` -/
def P12967251303737143880.Spec : Prop :=
  ∀ n, P12967251303737143880.a n = A083709 n

end A083709

/-! ## A083709.P9154204079609726319

`A008620(2*n)-∑[A317300(n)]`
-/

namespace A083709.P9154204079609726319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083709.P9154204079609726319

namespace A083709

/-- `A008620(2*n)-∑[A317300(n)]` -/
def P9154204079609726319.Spec : Prop :=
  ∀ n, P9154204079609726319.a n = A083709 n

end A083709

/-! ## A083709.P18348257866662481235

`A030533(n)-A103221(2*n+1)`
-/

namespace A083709.P18348257866662481235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A103221 (2 * n + 1)

end

end A083709.P18348257866662481235

namespace A083709

/-- `A030533(n)-A103221(2*n+1)` -/
def P18348257866662481235.Spec : Prop :=
  ∀ n, P18348257866662481235.a n = A083709 n

end A083709

/-! ## A083709.P15187386741062490974

`A030533(n)-A004526(A008611(2*n+1))`
-/

namespace A083709.P15187386741062490974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 n - A004526 (A008611 (2 * n + 1)).toNat

end

end A083709.P15187386741062490974

namespace A083709

/-- `A030533(n)-A004526(A008611(2*n+1))` -/
def P15187386741062490974.Spec : Prop :=
  ∀ n, P15187386741062490974.a n = A083709 n

end A083709

/-! ## A083709.P8446757310699622211

`∑[A028242(n)²]-A008679(A016825(n))`
-/

namespace A083709.P8446757310699622211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008679 (A016825 n).toNat

end

end A083709.P8446757310699622211

namespace A083709

/-- `∑[A028242(n)²]-A008679(A016825(n))` -/
def P8446757310699622211.Spec : Prop :=
  ∀ n, P8446757310699622211.a n = A083709 n

end A083709

/-! ## A083709.P5954395313171900630

`∑[A064429(A213038(n+1)-n)-1]`
-/

namespace A083709.P5954395313171900630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A213038 (n + 1) - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083709.P5954395313171900630

namespace A083709

/-- `∑[A064429(A213038(n+1)-n)-1]` -/
def P5954395313171900630.Spec : Prop :=
  ∀ n, P5954395313171900630.a n = A083709 n

end A083709

/-!
# A083710: Number of integer partitions of n with a part dividing all the other parts.

The programs for A083710, there is no canonical definition to state claims against.
-/

/-! ## A083710.P308005335928305703

`∑{d}[n, A000041(#-1)]+floor(acot(n))`
-/

namespace A083710.P308005335928305703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 (d - 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A083710.P308005335928305703

/-! ## A083710.P8493408863448805686

`∑{d}[A028310(n), A000041(#-1)]`
-/

namespace A083710.P8493408863448805686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (d - 1)

end

end A083710.P8493408863448805686

/-! ## A083710.P13811822956227897329

`A000007(n)+∑{d}[n, A000041(#-1)]`
-/

namespace A083710.P13811822956227897329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A000041 (d - 1)

end

end A083710.P13811822956227897329

/-! ## A083710.P984856442516380260

`A000041(n)-A338470(round(sqrt(n²+1)))`
-/

namespace A083710.P984856442516380260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A338470 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A083710.P984856442516380260

/-! ## A083710.P8182912220020333789

`A137587(∑[abs(1-n)])`
-/

namespace A083710.P8182912220020333789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083710.P8182912220020333789

/-!
# A083711: a(n) = A083710(n) - A000041(n-1).

The programs for A083711, there is no canonical definition to state claims against.
-/

/-! ## A083711.P7015083627529670350

`A187219(n+1)-A338470(n+1)`
-/

namespace A083711.P7015083627529670350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) - A338470 (n + 1)

end

end A083711.P7015083627529670350

/-! ## A083711.P2700693381958384209

`abs(Δ[A083710(n)]-A338470(n))`
-/

namespace A083711.P2700693381958384209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A338470 n|

end

end A083711.P2700693381958384209

/-! ## A083711.P6147577163498131809

`A000038(n)+Δ[A083710(n)]-A338470(n)`
-/

namespace A083711.P6147577163498131809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n - A338470 n)

end

end A083711.P6147577163498131809

/-! ## A083711.P4367505299435838003

`A083710(n+1)-A035444(A008574(n))`
-/

namespace A083711.P4367505299435838003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 (n + 1) - A035444 (A008574 n).toNat

end

end A083711.P4367505299435838003

/-! ## A083711.P4287456029064146658

`A083710(A233583(n+2))-A000041(n)`
-/

namespace A083711.P4287456029064146658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 (A233583 (n + 2)).toNat - A000041 n

end

end A083711.P4287456029064146658

/-!
# A083713: a(n) = (8^n - 1)*3/7.

The programs for A083713, the canonical program `A083713.P456893015698176146` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083713 has offset 0).

The definition of A083713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)*3/7` (program `A083713.P14677821584987656288`, by `A083713.P14677821584987656288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083713.P456893015698176146

`8*a(n-1)+3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083713

/-- `8*a(n-1)+3` -/
def P456893015698176146.Spec : Prop :=
  ∀ n, (P456893015698176146.a n : ℤ) = A083713 n

theorem P456893015698176146.correct : P456893015698176146.Spec := by
  intro n
  simp only [A083713]

end A083713

/-! ## A083713.P13189766089824736341

`3*A023001(n)`
-/

namespace A083713.P13189766089824736341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023001 n

end

end A083713.P13189766089824736341

namespace A083713

/-- `3*A023001(n)` -/
def P13189766089824736341.Spec : Prop :=
  ∀ n, P13189766089824736341.a n = A083713 n

end A083713

/-! ## A083713.P14677821584987656288

`(8^n-1)*3/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083713.P14677821584987656288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 ^ n : ℤ) - 1) * 3 : ℚ) / 7

end

end A083713.P14677821584987656288

namespace A083713

/-- `(8^n-1)*3/7` -/
def P14677821584987656288.Spec : Prop :=
  ∀ n, P14677821584987656288.a n = (A083713 n : ℚ)

theorem P14677821584987656288.correct : P14677821584987656288.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083713, Nat.add_sub_cancel, A083713.P14677821584987656288.a, A083713.P456893015698176146.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083713, Nat.add_sub_cancel, A083713.P14677821584987656288.a, A083713.P456893015698176146.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083713

/-! ## A083713.P9282939286153947866

`ogf(3x/(1-9x+8x^2))`
-/

namespace A083713.P9282939286153947866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -9, 8] n

end

end A083713.P9282939286153947866

namespace A083713

/-- `ogf(3x/(1-9x+8x^2))` -/
def P9282939286153947866.Spec : Prop :=
  ∀ n, P9282939286153947866.a n = A083713 n

end A083713

/-! ## A083713.P2104449622980530738

`lcm(8, a(n-1))+3` with `a(0)=0`
-/

namespace A083713.P2104449622980530738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 3

end

end A083713.P2104449622980530738

namespace A083713

/-- `lcm(8, a(n-1))+3` -/
def P2104449622980530738.Spec : Prop :=
  ∀ n, (P2104449622980530738.a n : ℤ) = A083713 n

end A083713

/-! ## A083713.P1446266673135263196

`or(3, 8*a(n-1))` with `a(0)=0`
-/

namespace A083713.P1446266673135263196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 3 (8 * a (n - 1))

end

end A083713.P1446266673135263196

namespace A083713

/-- `or(3, 8*a(n-1))` -/
def P1446266673135263196.Spec : Prop :=
  ∀ n, (P1446266673135263196.a n : ℤ) = A083713 n

end A083713

/-! ## A083713.P18190112287199970962

`xor(3, 8*a(n-1))` with `a(0)=0`
-/

namespace A083713.P18190112287199970962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 3 (8 * a (n - 1))

end

end A083713.P18190112287199970962

namespace A083713

/-- `xor(3, 8*a(n-1))` -/
def P18190112287199970962.Spec : Prop :=
  ∀ n, (P18190112287199970962.a n : ℤ) = A083713 n

end A083713

/-! ## A083713.P14456673238295555992

`∑[8*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A083713.P14456673238295555992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083713.P14456673238295555992

namespace A083713

/-- `∑[8*a(n-1)]` -/
def P14456673238295555992.Spec : Prop :=
  ∀ n, (P14456673238295555992.a n : ℤ) = A083713 n

end A083713

/-! ## A083713.P14949910426729185000

`5-2*(1-4*a(n-1))` with `a(0)=0`
-/

namespace A083713.P14949910426729185000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - 2 * (1 - 4 * a (n - 1))

end

end A083713.P14949910426729185000

namespace A083713

/-- `5-2*(1-4*a(n-1))` -/
def P14949910426729185000.Spec : Prop :=
  ∀ n, P14949910426729185000.a n = A083713 n

end A083713

/-! ## A083713.P1726647403970685285

`a(n-1)/(1/2)^3+3` with `a(0)=0`
-/

namespace A083713.P1726647403970685285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + 3

end

end A083713.P1726647403970685285

namespace A083713

/-- `a(n-1)/(1/2)^3+3` -/
def P1726647403970685285.Spec : Prop :=
  ∀ n, P1726647403970685285.a n = (A083713 n : ℚ)

end A083713

/-! ## A083713.P11614353931991317228

`A294627(3*n)`
-/

namespace A083713.P11614353931991317228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (3 * n)

end

end A083713.P11614353931991317228

namespace A083713

/-- `A294627(3*n)` -/
def P11614353931991317228.Spec : Prop :=
  ∀ n, P11614353931991317228.a n = A083713 n

end A083713

/-! ## A083713.P14587463678125412673

`∑[A103333(n)]-1`
-/

namespace A083713.P14587463678125412673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A083713.P14587463678125412673

namespace A083713

/-- `∑[A103333(n)]-1` -/
def P14587463678125412673.Spec : Prop :=
  ∀ n, P14587463678125412673.a n = A083713 n

end A083713

/-! ## A083713.P17926389066021498562

`∑[A206917(2*n)]`
-/

namespace A083713.P17926389066021498562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083713.P17926389066021498562

namespace A083713

/-- `∑[A206917(2*n)]` -/
def P17926389066021498562.Spec : Prop :=
  ∀ n, P17926389066021498562.a n = A083713 n

end A083713

/-! ## A083713.P561928064796888589

`3*(A047853(n)-1)`
-/

namespace A083713.P561928064796888589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047853 n - 1)

end

end A083713.P561928064796888589

namespace A083713

/-- `3*(A047853(n)-1)` -/
def P561928064796888589.Spec : Prop :=
  ∀ n, P561928064796888589.a n = A083713 n

end A083713

/-! ## A083713.P7891250146500754739

`A122552(3*n)-1`
-/

namespace A083713.P7891250146500754739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (3 * n) - 1

end

end A083713.P7891250146500754739

namespace A083713

/-- `A122552(3*n)-1` -/
def P7891250146500754739.Spec : Prop :=
  ∀ n, P7891250146500754739.a n = A083713 n

end A083713

/-! ## A083713.P1727633983493551677

`A140295(3*n)-1`
-/

namespace A083713.P1727633983493551677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140295 (3 * n) - 1

end

end A083713.P1727633983493551677

namespace A083713

/-- `A140295(3*n)-1` -/
def P1727633983493551677.Spec : Prop :=
  ∀ n, P1727633983493551677.a n = A083713 n

end A083713

/-! ## A083713.P10282660676644646094

`3*A299913(2*n)`
-/

namespace A083713.P10282660676644646094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A299913 (2 * n)

end

end A083713.P10282660676644646094

namespace A083713

/-- `3*A299913(2*n)` -/
def P10282660676644646094.Spec : Prop :=
  ∀ n, P10282660676644646094.a n = A083713 n

end A083713

/-! ## A083713.P15508006449242818137

`3*A155803(3*n)`
-/

namespace A083713.P15508006449242818137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155803 (3 * n)

end

end A083713.P15508006449242818137

namespace A083713

/-- `3*A155803(3*n)` -/
def P15508006449242818137.Spec : Prop :=
  ∀ n, P15508006449242818137.a n = A083713 n

end A083713

/-! ## A083713.P17508682232083748079

`3/4*A108019(n)`
-/

namespace A083713.P17508682232083748079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A108019 n : ℚ)

end

end A083713.P17508682232083748079

namespace A083713

/-- `3/4*A108019(n)` -/
def P17508682232083748079.Spec : Prop :=
  ∀ n, P17508682232083748079.a n = (A083713 n : ℚ)

end A083713

/-! ## A083713.P13059996271952035219

`3/2*A125835(n+1)`
-/

namespace A083713.P13059996271952035219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A125835 (n + 1) : ℚ)

end

end A083713.P13059996271952035219

namespace A083713

/-- `3/2*A125835(n+1)` -/
def P13059996271952035219.Spec : Prop :=
  ∀ n, P13059996271952035219.a n = (A083713 n : ℚ)

end A083713

/-!
# A083714: (greatest prime <= n) - (greatest prime factor of n).

The programs for A083714, the canonical program `A083714.P16589152891905535723` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083714 has offset 1).

The definition of A083714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083714.P16589152891905535723

`A070320(n+1)-A070777(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083714

/-- `A070320(n+1)-A070777(n+1)` -/
def P16589152891905535723.Spec : Prop :=
  ∀ n, P16589152891905535723.a n = A083714 (n + 1)

theorem P16589152891905535723.correct : P16589152891905535723.Spec := by
  intro n
  simp only [A083714, Nat.add_sub_cancel]

end A083714

/-! ## A083714.P16126169439376648326

`A008578(A036234(n+1))-A006530(n+1)`
-/

namespace A083714.P16126169439376648326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 1)).toNat - A006530 (n + 1)

end

end A083714.P16126169439376648326

namespace A083714

/-- `A008578(A036234(n+1))-A006530(n+1)` -/
def P16126169439376648326.Spec : Prop :=
  ∀ n, P16126169439376648326.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P14871850054148076717

`A083718(n+1)-A083718(A006530(n+1))`
-/

namespace A083714.P14871850054148076717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083718 (n + 1) - A083718 (A006530 (n + 1)).toNat

end

end A083714.P14871850054148076717

namespace A083714

/-- `A083718(n+1)-A083718(A006530(n+1))` -/
def P14871850054148076717.Spec : Prop :=
  ∀ n, P14871850054148076717.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P17259989067515117762

`A136548(n+2)-A006530(n+1)`
-/

namespace A083714.P17259989067515117762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) - A006530 (n + 1)

end

end A083714.P17259989067515117762

namespace A083714

/-- `A136548(n+2)-A006530(n+1)` -/
def P17259989067515117762.Spec : Prop :=
  ∀ n, P17259989067515117762.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P16140937018204979950

`A136548(n+2)-A002034(∏{p}[n+1, #])`
-/

namespace A083714.P16140937018204979950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) - A002034 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083714.P16140937018204979950

namespace A083714

/-- `A136548(n+2)-A002034(∏{p}[n+1, #])` -/
def P16140937018204979950.Spec : Prop :=
  ∀ n, P16140937018204979950.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P280256772577671765

`A139421(2*(n+1))-A006530(2*(n+1))`
-/

namespace A083714.P280256772577671765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (2 * (n + 1)) - A006530 (2 * (n + 1))

end

end A083714.P280256772577671765

namespace A083714

/-- `A139421(2*(n+1))-A006530(2*(n+1))` -/
def P280256772577671765.Spec : Prop :=
  ∀ n, P280256772577671765.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P15106832422474198804

`A006530(A083717(n+1))-A006530(n+1)`
-/

namespace A083714.P15106832422474198804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083717 (n + 1)).toNat - A006530 (n + 1)

end

end A083714.P15106832422474198804

namespace A083714

/-- `A006530(A083717(n+1))-A006530(n+1)` -/
def P15106832422474198804.Spec : Prop :=
  ∀ n, P15106832422474198804.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P8460518346481663699

`A006530(A342766(n+1))-A006530(n+1)`
-/

namespace A083714.P8460518346481663699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342766 (n + 1)).toNat - A006530 (n + 1)

end

end A083714.P8460518346481663699

namespace A083714

/-- `A006530(A342766(n+1))-A006530(n+1)` -/
def P8460518346481663699.Spec : Prop :=
  ∀ n, P8460518346481663699.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P761073955072108235

`A046665(A083717(n+1))`
-/

namespace A083714.P761073955072108235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A083717 (n + 1)).toNat

end

end A083714.P761073955072108235

namespace A083714

/-- `A046665(A083717(n+1))` -/
def P761073955072108235.Spec : Prop :=
  ∀ n, P761073955072108235.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P4570188312414810115

`A056813((n+1)²)-A006530(n+1)`
-/

namespace A083714.P4570188312414810115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((n + 1) ^ 2) - A006530 (n + 1)

end

end A083714.P4570188312414810115

namespace A083714

/-- `A056813((n+1)²)-A006530(n+1)` -/
def P4570188312414810115.Spec : Prop :=
  ∀ n, P4570188312414810115.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P10247396798896486737

`A136548(n+2)-A085392((n+1)²)`
-/

namespace A083714.P10247396798896486737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) - A085392 ((n + 1) ^ 2)

end

end A083714.P10247396798896486737

namespace A083714

/-- `A136548(n+2)-A085392((n+1)²)` -/
def P10247396798896486737.Spec : Prop :=
  ∀ n, P10247396798896486737.a n = A083714 (n + 1)

end A083714

/-! ## A083714.P4188311461979397524

`A256440(A133263(n))-A006530(n+1)`
-/

namespace A083714.P4188311461979397524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A133263 n).toNat - A006530 (n + 1)

end

end A083714.P4188311461979397524

namespace A083714

/-- `A256440(A133263(n))-A006530(n+1)` -/
def P4188311461979397524.Spec : Prop :=
  ∀ n, P4188311461979397524.a n = A083714 (n + 1)

end A083714

/-!
# A083715: (greatest prime <= n) mod (greatest prime factor of n).

The programs for A083715, the canonical program `A083715.P5826149451378024541` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083715 has offset 1).

The definition of A083715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083715.P5826149451378024541

`A083714(n+1)%A006530(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A083715

/-- `A083714(n+1)%A006530(n+1)` -/
def P5826149451378024541.Spec : Prop :=
  ∀ n, P5826149451378024541.a n = A083715 (n + 1)

theorem P5826149451378024541.correct : P5826149451378024541.Spec := by
  intro n
  simp only [A083715, Nat.add_sub_cancel]

end A083715

/-! ## A083715.P3693291341955171740

`A083718(n+1)%A006530(n+1)`
-/

namespace A083715.P3693291341955171740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083718 (n + 1)) (A006530 (n + 1))

end

end A083715.P3693291341955171740

namespace A083715

/-- `A083718(n+1)%A006530(n+1)` -/
def P3693291341955171740.Spec : Prop :=
  ∀ n, P3693291341955171740.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P5111010325638482627

`A060308(A008619(n))%A006530(n+1)`
-/

namespace A083715.P5111010325638482627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060308 (A008619 n).toNat) (A006530 (n + 1))

end

end A083715.P5111010325638482627

namespace A083715

/-- `A060308(A008619(n))%A006530(n+1)` -/
def P5111010325638482627.Spec : Prop :=
  ∀ n, P5111010325638482627.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P8617155453055500405

`A008578(A036234(n+1))%A006530(n+1)`
-/

namespace A083715.P8617155453055500405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A036234 (n + 1)).toNat) (A006530 (n + 1))

end

end A083715.P8617155453055500405

namespace A083715

/-- `A008578(A036234(n+1))%A006530(n+1)` -/
def P8617155453055500405.Spec : Prop :=
  ∀ n, P8617155453055500405.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P12073896175173544743

`A000040(A033270(n+1)+1)%A006530(n+1)`
-/

namespace A083715.P12073896175173544743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A033270 (n + 1) + 1).toNat) (A006530 (n + 1))

end

end A083715.P12073896175173544743

namespace A083715

/-- `A000040(A033270(n+1)+1)%A006530(n+1)` -/
def P12073896175173544743.Spec : Prop :=
  ∀ n, P12073896175173544743.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P6925937956055076841

`A136548(n+1)%A085392(n+1)`
-/

namespace A083715.P6925937956055076841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (n + 1)) (A085392 (n + 1))

end

end A083715.P6925937956055076841

namespace A083715

/-- `A136548(n+1)%A085392(n+1)` -/
def P6925937956055076841.Spec : Prop :=
  ∀ n, P6925937956055076841.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P15115712489791953214

`A136548(n+2)%A006530(n+1)`
-/

namespace A083715.P15115712489791953214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (n + 2)) (A006530 (n + 1))

end

end A083715.P15115712489791953214

namespace A083715

/-- `A136548(n+2)%A006530(n+1)` -/
def P15115712489791953214.Spec : Prop :=
  ∀ n, P15115712489791953214.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P10758528272544878835

`A139421(2*(n+1))%A006530(n+1)`
-/

namespace A083715.P10758528272544878835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139421 (2 * (n + 1))) (A006530 (n + 1))

end

end A083715.P10758528272544878835

namespace A083715

/-- `A139421(2*(n+1))%A006530(n+1)` -/
def P10758528272544878835.Spec : Prop :=
  ∀ n, P10758528272544878835.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P14393085576479436110

`A020639(A030664(n+1))%A006530(n+1)`
-/

namespace A083715.P14393085576479436110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A030664 (n + 1)).toNat) (A006530 (n + 1))

end

end A083715.P14393085576479436110

namespace A083715

/-- `A020639(A030664(n+1))%A006530(n+1)` -/
def P14393085576479436110.Spec : Prop :=
  ∀ n, P14393085576479436110.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P17144185764361434778

`A069859(A083717(n+1))`
-/

namespace A083715.P17144185764361434778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A083717 (n + 1)).toNat

end

end A083715.P17144185764361434778

namespace A083715

/-- `A069859(A083717(n+1))` -/
def P17144185764361434778.Spec : Prop :=
  ∀ n, P17144185764361434778.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P10842898622969758630

`A006530(A342766(n+1))%A006530(n+1)`
-/

namespace A083715.P10842898622969758630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A342766 (n + 1)).toNat) (A006530 (n + 1))

end

end A083715.P10842898622969758630

namespace A083715

/-- `A006530(A342766(n+1))%A006530(n+1)` -/
def P10842898622969758630.Spec : Prop :=
  ∀ n, P10842898622969758630.a n = A083715 (n + 1)

end A083715

/-! ## A083715.P14128518501212596020

`A056813((n+1)²)%A006530(n+1)`
-/

namespace A083715.P14128518501212596020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056813 ((n + 1) ^ 2)) (A006530 (n + 1))

end

end A083715.P14128518501212596020

namespace A083715

/-- `A056813((n+1)²)%A006530(n+1)` -/
def P14128518501212596020.Spec : Prop :=
  ∀ n, P14128518501212596020.a n = A083715 (n + 1)

end A083715

/-!
# A083716: a(n) = integer part of (greatest prime <= n)/(greatest prime factor of n); a(1) = 1.

The programs for A083716, the canonical program `A083716.P2755060906059376070` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083716 has offset 1).

The definition of A083716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083716.P2755060906059376070

`floor(A136548(n+2)/A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083716

/-- `floor(A136548(n+2)/A006530(n+1))` -/
def P2755060906059376070.Spec : Prop :=
  ∀ n, P2755060906059376070.a n = A083716 (n + 1)

theorem P2755060906059376070.correct : P2755060906059376070.Spec := by
  intro n
  simp only [A083716, Nat.add_sub_cancel]

end A083716

/-! ## A083716.P11189303867165480521

`floor(A136548(n+2)/A034699(∏{p}[n+1, #]))`
-/

namespace A083716.P11189303867165480521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136548 (n + 2) : ℚ) / (A034699 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)⌋

end

end A083716.P11189303867165480521

namespace A083716

/-- `floor(A136548(n+2)/A034699(∏{p}[n+1, #]))` -/
def P11189303867165480521.Spec : Prop :=
  ∀ n, P11189303867165480521.a n = A083716 (n + 1)

end A083716

/-! ## A083716.P13450330433184363522

`floor(A136548(n+2)/A053585(∏{p}[n+1, #]))`
-/

namespace A083716.P13450330433184363522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136548 (n + 2) : ℚ) / (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)⌋

end

end A083716.P13450330433184363522

namespace A083716

/-- `floor(A136548(n+2)/A053585(∏{p}[n+1, #]))` -/
def P13450330433184363522.Spec : Prop :=
  ∀ n, P13450330433184363522.a n = A083716 (n + 1)

end A083716

/-! ## A083716.P17101780846944599884

`floor(A136548(n+2)/A300518(∏{p}[n+1, #]))`
-/

namespace A083716.P17101780846944599884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136548 (n + 2) : ℚ) / (A300518 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)⌋

end

end A083716.P17101780846944599884

namespace A083716

/-- `floor(A136548(n+2)/A300518(∏{p}[n+1, #]))` -/
def P17101780846944599884.Spec : Prop :=
  ∀ n, P17101780846944599884.a n = A083716 (n + 1)

end A083716

/-! ## A083716.P2763407136513798368

`floor(A007918(A136548(n+2))/A111089(n+1))`
-/

namespace A083716.P2763407136513798368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007918 (A136548 (n + 2)).toNat : ℚ) / (A111089 (n + 1) : ℚ)⌋

end

end A083716.P2763407136513798368

namespace A083716

/-- `floor(A007918(A136548(n+2))/A111089(n+1))` -/
def P2763407136513798368.Spec : Prop :=
  ∀ n, P2763407136513798368.a n = A083716 (n + 1)

end A083716

/-! ## A083716.P11634288838681218241

`A069897(A083717(n+1))`
-/

namespace A083716.P11634288838681218241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A083717 (n + 1)).toNat

end

end A083716.P11634288838681218241

namespace A083716

/-- `A069897(A083717(n+1))` -/
def P11634288838681218241.Spec : Prop :=
  ∀ n, P11634288838681218241.a n = A083716 (n + 1)

end A083716

/-!
# A083717: (Greatest prime <= n) * (greatest prime factor of n).

The programs for A083717, the canonical program `A083717.P12024015733331777484` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083717 has offset 1).

The definition of A083717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083717.P3345360986310686873

`A006530(n+1)*A008578(A036234(n+1))`
-/

namespace A083717.P3345360986310686873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A008578 (A036234 (n + 1)).toNat

end

end A083717.P3345360986310686873

namespace A083717

/-- `A006530(n+1)*A008578(A036234(n+1))` -/
def P3345360986310686873.Spec : Prop :=
  ∀ n, P3345360986310686873.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P12024015733331777484

`(A083714(n+1)+A006530(n+1))*A006530(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A083717

/-- `(A083714(n+1)+A006530(n+1))*A006530(n+1)` -/
def P12024015733331777484.Spec : Prop :=
  ∀ n, P12024015733331777484.a n = A083717 (n + 1)

theorem P12024015733331777484.correct : P12024015733331777484.Spec := by
  intro n
  simp only [A083717, Nat.add_sub_cancel]

end A083717

/-! ## A083717.P17951228553992917175

`(A083718(n+1)-A006530(n+1))*A006530(n+1)`
-/

namespace A083717.P17951228553992917175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083718 (n + 1) - A006530 (n + 1)) * A006530 (n + 1)

end

end A083717.P17951228553992917175

namespace A083717

/-- `(A083718(n+1)-A006530(n+1))*A006530(n+1)` -/
def P17951228553992917175.Spec : Prop :=
  ∀ n, P17951228553992917175.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P16054182134675594610

`A006530(n+1)*A136548(n+2)`
-/

namespace A083717.P16054182134675594610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A136548 (n + 2)

end

end A083717.P16054182134675594610

namespace A083717

/-- `A006530(n+1)*A136548(n+2)` -/
def P16054182134675594610.Spec : Prop :=
  ∀ n, P16054182134675594610.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P6407684597095286537

`A085392(2*(n+1))*A136548(n+2)`
-/

namespace A083717.P6407684597095286537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1)) * A136548 (n + 2)

end

end A083717.P6407684597095286537

namespace A083717

/-- `A085392(2*(n+1))*A136548(n+2)` -/
def P6407684597095286537.Spec : Prop :=
  ∀ n, P6407684597095286537.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P14186361370599881326

`A007947(n+1)/A293810(n+1)*A136548(n+2)`
-/

namespace A083717.P14186361370599881326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A293810 (n + 1) : ℚ) * (A136548 (n + 2) : ℚ)

end

end A083717.P14186361370599881326

namespace A083717

/-- `A007947(n+1)/A293810(n+1)*A136548(n+2)` -/
def P14186361370599881326.Spec : Prop :=
  ∀ n, P14186361370599881326.a n = (A083717 (n + 1) : ℚ)

end A083717

/-! ## A083717.P977149207235576159

`A245486(n+1)/A111089(n+2)*A136548(n+2)`
-/

namespace A083717.P977149207235576159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245486 (n + 1) : ℚ) / (A111089 (n + 2) : ℚ) * (A136548 (n + 2) : ℚ)

end

end A083717.P977149207235576159

namespace A083717

/-- `A245486(n+1)/A111089(n+2)*A136548(n+2)` -/
def P977149207235576159.Spec : Prop :=
  ∀ n, P977149207235576159.a n = (A083717 (n + 1) : ℚ)

end A083717

/-! ## A083717.P9256748909115343996

`A006530(n+1)*A139421(A103517(n))`
-/

namespace A083717.P9256748909115343996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A139421 (A103517 n).toNat

end

end A083717.P9256748909115343996

namespace A083717

/-- `A006530(n+1)*A139421(A103517(n))` -/
def P9256748909115343996.Spec : Prop :=
  ∀ n, P9256748909115343996.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P18053241970056085126

`A006530(n+1)*A020639(A030664(n+1))`
-/

namespace A083717.P18053241970056085126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A020639 (A030664 (n + 1)).toNat

end

end A083717.P18053241970056085126

namespace A083717

/-- `A006530(n+1)*A020639(A030664(n+1))` -/
def P18053241970056085126.Spec : Prop :=
  ∀ n, P18053241970056085126.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P17537404442504100154

`A006530(n+1)*A006530(A342766(n+1))`
-/

namespace A083717.P17537404442504100154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (A342766 (n + 1)).toNat

end

end A083717.P17537404442504100154

namespace A083717

/-- `A006530(n+1)*A006530(A342766(n+1))` -/
def P17537404442504100154.Spec : Prop :=
  ∀ n, P17537404442504100154.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P9698797941592642661

`A006530(n+1)*A056813((n+1)²)`
-/

namespace A083717.P9698797941592642661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A056813 ((n + 1) ^ 2)

end

end A083717.P9698797941592642661

namespace A083717

/-- `A006530(n+1)*A056813((n+1)²)` -/
def P9698797941592642661.Spec : Prop :=
  ∀ n, P9698797941592642661.a n = A083717 (n + 1)

end A083717

/-! ## A083717.P14508744667621581745

`A006530(n+1)*A256440(A133263(n))`
-/

namespace A083717.P14508744667621581745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A256440 (A133263 n).toNat

end

end A083717.P14508744667621581745

namespace A083717

/-- `A006530(n+1)*A256440(A133263(n))` -/
def P14508744667621581745.Spec : Prop :=
  ∀ n, P14508744667621581745.a n = A083717 (n + 1)

end A083717

/-!
# A083718: a(n) = (greatest prime <= n) + (greatest prime factor of n), with a(1) = 2.

The programs for A083718, the canonical program `A083718.P5605760341876315868` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083718 has offset 1).

The definition of A083718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083718.P5605760341876315868

`A070229(n+1)-A064722(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083718

/-- `A070229(n+1)-A064722(n+1)` -/
def P5605760341876315868.Spec : Prop :=
  ∀ n, P5605760341876315868.a n = A083718 (n + 1)

theorem P5605760341876315868.correct : P5605760341876315868.Spec := by
  intro n
  simp only [A083718, Nat.add_sub_cancel]

end A083718

/-! ## A083718.P17173708436374842210

`A083714(n+1)+2*A006530(n+1)`
-/

namespace A083718.P17173708436374842210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083714 (n + 1) + 2 * A006530 (n + 1)

end

end A083718.P17173708436374842210

namespace A083718

/-- `A083714(n+1)+2*A006530(n+1)` -/
def P17173708436374842210.Spec : Prop :=
  ∀ n, P17173708436374842210.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P17359413619590429405

`A008578(A036234(n+1))+A006530(n+1)`
-/

namespace A083718.P17359413619590429405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 1)).toNat + A006530 (n + 1)

end

end A083718.P17359413619590429405

namespace A083718

/-- `A008578(A036234(n+1))+A006530(n+1)` -/
def P17359413619590429405.Spec : Prop :=
  ∀ n, P17359413619590429405.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P7137512664413239536

`A136548(n+2)+A006530(n+1)`
-/

namespace A083718.P7137512664413239536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) + A006530 (n + 1)

end

end A083718.P7137512664413239536

namespace A083718

/-- `A136548(n+2)+A006530(n+1)` -/
def P7137512664413239536.Spec : Prop :=
  ∀ n, P7137512664413239536.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P8636339758639684977

`A139421(A103517(n))+A006530(n+1)`
-/

namespace A083718.P8636339758639684977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A103517 n).toNat + A006530 (n + 1)

end

end A083718.P8636339758639684977

namespace A083718

/-- `A139421(A103517(n))+A006530(n+1)` -/
def P8636339758639684977.Spec : Prop :=
  ∀ n, P8636339758639684977.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P6176126702717452560

`A006530(n+1)+A006530(A083717(n+1))`
-/

namespace A083718.P6176126702717452560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A083717 (n + 1)).toNat

end

end A083718.P6176126702717452560

namespace A083718

/-- `A006530(n+1)+A006530(A083717(n+1))` -/
def P6176126702717452560.Spec : Prop :=
  ∀ n, P6176126702717452560.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P10371428083352201521

`A006530(n+1)+A006530(A342766(n+1))`
-/

namespace A083718.P10371428083352201521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A006530 (A342766 (n + 1)).toNat

end

end A083718.P10371428083352201521

namespace A083718

/-- `A006530(n+1)+A006530(A342766(n+1))` -/
def P10371428083352201521.Spec : Prop :=
  ∀ n, P10371428083352201521.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P4278499875023310632

`A063655(A083717(n+1))`
-/

namespace A083718.P4278499875023310632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A083717 (n + 1)).toNat

end

end A083718.P4278499875023310632

namespace A083718

/-- `A063655(A083717(n+1))` -/
def P4278499875023310632.Spec : Prop :=
  ∀ n, P4278499875023310632.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P12551147743784788447

`A056813((n+1)²)+A006530(n+1)`
-/

namespace A083718.P12551147743784788447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((n + 1) ^ 2) + A006530 (n + 1)

end

end A083718.P12551147743784788447

namespace A083718

/-- `A056813((n+1)²)+A006530(n+1)` -/
def P12551147743784788447.Spec : Prop :=
  ∀ n, P12551147743784788447.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P289997795824619184

`A136548(n+2)+A085392((n+1)²)`
-/

namespace A083718.P289997795824619184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 2) + A085392 ((n + 1) ^ 2)

end

end A083718.P289997795824619184

namespace A083718

/-- `A136548(n+2)+A085392((n+1)²)` -/
def P289997795824619184.Spec : Prop :=
  ∀ n, P289997795824619184.a n = A083718 (n + 1)

end A083718

/-! ## A083718.P1305084011218507708

`A256440(A133263(n))+A006530(n+1)`
-/

namespace A083718.P1305084011218507708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A133263 n).toNat + A006530 (n + 1)

end

end A083718.P1305084011218507708

namespace A083718

/-- `A256440(A133263(n))+A006530(n+1)` -/
def P1305084011218507708.Spec : Prop :=
  ∀ n, P1305084011218507708.a n = A083718 (n + 1)

end A083718

/-!
# A083719: a(n) = n * [1 + sum(k=1 to n-1) prime(k)].

The programs for A083719, the canonical program `A083719.P11346569596693783378` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083719 has offset 0).

The definition of A083719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083719.P16792898107239975209

`n*∑[record[A259153(n)]]`
-/

namespace A083719.P16792898107239975209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P16792898107239975209

namespace A083719

/-- `n*∑[record[A259153(n)]]` -/
def P16792898107239975209.Spec : Prop :=
  ∀ n, P16792898107239975209.a n = A083719 n

end A083719

/-! ## A083719.P11346569596693783378

`n*∑[A158611(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083719

/-- `n*∑[A158611(n+1)]` -/
def P11346569596693783378.Spec : Prop :=
  ∀ n, P11346569596693783378.a n = A083719 n

theorem P11346569596693783378.correct : P11346569596693783378.Spec := by
  intro n
  simp only [A083719]

end A083719

/-! ## A083719.P11671543628551546866

`n*(A175965(n+1)-1)`
-/

namespace A083719.P11671543628551546866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A175965 (n + 1) - 1)

end

end A083719.P11671543628551546866

namespace A083719

/-- `n*(A175965(n+1)-1)` -/
def P11671543628551546866.Spec : Prop :=
  ∀ n, P11671543628551546866.a n = A083719 n

theorem P11671543628551546866.correct : P11671543628551546866.Spec := by
  intro n
  simp only [A083719, Nat.add_sub_cancel, A083719.P11671543628551546866.a, A083719.P11346569596693783378.f1, A083719.P11346569596693783378.a, A158611, A158611.P9275629407611603775.a, A175965, A175965.P352043763123529774.f1, A175965.P352043763123529774.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083719

/-! ## A083719.P4756835792184498132

`n*A014284(A028310(n))`
-/

namespace A083719.P4756835792184498132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014284 (A028310 n).toNat

end

end A083719.P4756835792184498132

namespace A083719

/-- `n*A014284(A028310(n))` -/
def P4756835792184498132.Spec : Prop :=
  ∀ n, P4756835792184498132.a n = A083719 n

end A083719

/-! ## A083719.P18437344705164278292

`n*(A014284(n+1)-A008578(n+1))`
-/

namespace A083719.P18437344705164278292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014284 (n + 1) - A008578 (n + 1))

end

end A083719.P18437344705164278292

namespace A083719

/-- `n*(A014284(n+1)-A008578(n+1))` -/
def P18437344705164278292.Spec : Prop :=
  ∀ n, P18437344705164278292.a n = A083719 n

end A083719

/-! ## A083719.P17356837806332055053

`A083725(n)-n*record[A006530(n+1)]`
-/

namespace A083719.P17356837806332055053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083725 n - (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083719.P17356837806332055053

namespace A083719

/-- `A083725(n)-n*record[A006530(n+1)]` -/
def P17356837806332055053.Spec : Prop :=
  ∀ n, P17356837806332055053.a n = A083719 n

end A083719

/-! ## A083719.P11592083420729256746

`n*(A014284(n+1)-record[A006530(n+1)])`
-/

namespace A083719.P11592083420729256746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014284 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A083719.P11592083420729256746

namespace A083719

/-- `n*(A014284(n+1)-record[A006530(n+1)])` -/
def P11592083420729256746.Spec : Prop :=
  ∀ n, P11592083420729256746.a n = A083719 n

end A083719

/-! ## A083719.P3453984475438062668

`n*∑[lt[A328847(n), 2]]`
-/

namespace A083719.P3453984475438062668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P3453984475438062668

namespace A083719

/-- `n*∑[lt[A328847(n), 2]]` -/
def P3453984475438062668.Spec : Prop :=
  ∀ n, (P3453984475438062668.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P18257832344204898229

`n*∑[lt[A082023(n), 1]]`
-/

namespace A083719.P18257832344204898229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P18257832344204898229

namespace A083719

/-- `n*∑[lt[A082023(n), 1]]` -/
def P18257832344204898229.Spec : Prop :=
  ∀ n, (P18257832344204898229.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P15597984759894848645

`n*∑[lt[A072491(n), 2]]`
-/

namespace A083719.P15597984759894848645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P15597984759894848645

namespace A083719

/-- `n*∑[lt[A072491(n), 2]]` -/
def P15597984759894848645.Spec : Prop :=
  ∀ n, (P15597984759894848645.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P11809315198230085936

`n*∑[lt[∑{e}[n, #], 2]]`
-/

namespace A083719.P11809315198230085936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P11809315198230085936

namespace A083719

/-- `n*∑[lt[∑{e}[n, #], 2]]` -/
def P11809315198230085936.Spec : Prop :=
  ∀ n, (P11809315198230085936.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P7995824860522051536

`n*∑[eq[1, A226378(n)]]`
-/

namespace A083719.P7995824860522051536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P7995824860522051536

namespace A083719

/-- `n*∑[eq[1, A226378(n)]]` -/
def P7995824860522051536.Spec : Prop :=
  ∀ n, (P7995824860522051536.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P15265147899434631284

`n*∑[lt[A032741(n), 2]]`
-/

namespace A083719.P15265147899434631284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P15265147899434631284

namespace A083719

/-- `n*∑[lt[A032741(n), 2]]` -/
def P15265147899434631284.Spec : Prop :=
  ∀ n, (P15265147899434631284.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P5745435603518276663

`n*∑[lt[A078898(n), 2]]`
-/

namespace A083719.P5745435603518276663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P5745435603518276663

namespace A083719

/-- `n*∑[lt[A078898(n), 2]]` -/
def P5745435603518276663.Spec : Prop :=
  ∀ n, (P5745435603518276663.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P6176441977009978802

`n*∑[lt[A223135(n), 2]]`
-/

namespace A083719.P6176441977009978802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083719.P6176441977009978802

namespace A083719

/-- `n*∑[lt[A223135(n), 2]]` -/
def P6176441977009978802.Spec : Prop :=
  ∀ n, (P6176441977009978802.a n : ℤ) = A083719 n

end A083719

/-! ## A083719.P13630405787803383473

`n*record[A034387(n+1)-n]`
-/

namespace A083719.P13630405787803383473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083719.P13630405787803383473

namespace A083719

/-- `n*record[A034387(n+1)-n]` -/
def P13630405787803383473.Spec : Prop :=
  ∀ n, P13630405787803383473.a n = A083719 n

end A083719

/-! ## A083719.P7039885456872094432

`n*A158662(A157604(n))`
-/

namespace A083719.P7039885456872094432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158662 (A157604 n).toNat

end

end A083719.P7039885456872094432

namespace A083719

/-- `n*A158662(A157604(n))` -/
def P7039885456872094432.Spec : Prop :=
  ∀ n, P7039885456872094432.a n = A083719 n

end A083719

/-!
# A083720: Product of the primes less than the greatest prime factor of n but not dividing n.

The programs for A083720, the canonical program `A083720.P8840668489950384102` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083720 has offset 1).

The definition of A083720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083720.P17365420574771134737

`A002110(A049084(A006530(n+1)))/A007947(n+1)`
-/

namespace A083720.P17365420574771134737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A049084 (A006530 (n + 1)).toNat).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A083720.P17365420574771134737

namespace A083720

/-- `A002110(A049084(A006530(n+1)))/A007947(n+1)` -/
def P17365420574771134737.Spec : Prop :=
  ∀ n, P17365420574771134737.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P8840668489950384102

`A117214(A322590(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A083720

/-- `A117214(A322590(n+1))` -/
def P8840668489950384102.Spec : Prop :=
  ∀ n, P8840668489950384102.a n = A083720 (n + 1)

theorem P8840668489950384102.correct : P8840668489950384102.Spec := by
  intro n
  simp only [A083720, Nat.add_sub_cancel]

end A083720

/-! ## A083720.P10560179924154084002

`A066838(n+1)/A083722(n+1)`
-/

namespace A083720.P10560179924154084002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (n + 1) : ℚ) / (A083722 (n + 1) : ℚ)

end

end A083720.P10560179924154084002

namespace A083720

/-- `A066838(n+1)/A083722(n+1)` -/
def P10560179924154084002.Spec : Prop :=
  ∀ n, P10560179924154084002.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P934778983559694153

`gcd(A066838(n+1), A181811(n+1))`
-/

namespace A083720.P934778983559694153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066838 (n + 1)) (A181811 (n + 1))

end

end A083720.P934778983559694153

namespace A083720

/-- `gcd(A066838(n+1), A181811(n+1))` -/
def P934778983559694153.Spec : Prop :=
  ∀ n, (P934778983559694153.a n : ℤ) = A083720 (n + 1)

end A083720

/-! ## A083720.P1768828692763180323

`A073039(2^∑{p}[n+1, log2(#)])/(A076618(n+1)-1)`
-/

namespace A083720.P1768828692763180323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073039 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat : ℚ) / (A076618 (n + 1) - 1 : ℚ)

end

end A083720.P1768828692763180323

namespace A083720

/-- `A073039(2^∑{p}[n+1, log2(#)])/(A076618(n+1)-1)` -/
def P1768828692763180323.Spec : Prop :=
  ∀ n, P1768828692763180323.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P14183089047065696735

`A073039(A007947(n+1))/A007947(n+1)`
-/

namespace A083720.P14183089047065696735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073039 (A007947 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A083720.P14183089047065696735

namespace A083720

/-- `A073039(A007947(n+1))/A007947(n+1)` -/
def P14183089047065696735.Spec : Prop :=
  ∀ n, P14183089047065696735.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P1069829169420901890

`A073039(A015052(n+1))/A015052(n+1)`
-/

namespace A083720.P1069829169420901890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073039 (A015052 (n + 1)).toNat : ℚ) / (A015052 (n + 1) : ℚ)

end

end A083720.P1069829169420901890

namespace A083720

/-- `A073039(A015052(n+1))/A015052(n+1)` -/
def P1069829169420901890.Spec : Prop :=
  ∀ n, P1069829169420901890.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P9403021392400326041

`A398314(n+1)/A064549(n+1)`
-/

namespace A083720.P9403021392400326041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398314 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A083720.P9403021392400326041

namespace A083720

/-- `A398314(n+1)/A064549(n+1)` -/
def P9403021392400326041.Spec : Prop :=
  ∀ n, P9403021392400326041.a n = (A083720 (n + 1) : ℚ)

end A083720

/-! ## A083720.P3436950812361985956

`gcd(A038610(n+1), A398314(n+1))`
-/

namespace A083720.P3436950812361985956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 1)) (A398314 (n + 1))

end

end A083720.P3436950812361985956

namespace A083720

/-- `gcd(A038610(n+1), A398314(n+1))` -/
def P3436950812361985956.Spec : Prop :=
  ∀ n, (P3436950812361985956.a n : ℤ) = A083720 (n + 1)

end A083720

/-!
# A083721: Number of primes greater than the greatest prime factor of n but not greater than n.

The programs for A083721, the canonical program `A083721.P10075139577301052661` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083721 has offset 1).

The definition of A083721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083721.P10075139577301052661

`∑[∑{p}[n+1, val(#, n+1)]]-A061395(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A083721

/-- `∑[∑{p}[n+1, val(#, n+1)]]-A061395(n+1)` -/
def P10075139577301052661.Spec : Prop :=
  ∀ n, P10075139577301052661.a n = A083721 (n + 1)

theorem P10075139577301052661.correct : P10075139577301052661.Spec := by
  intro n
  simp only [A083721, Nat.add_sub_cancel]

end A083721

/-! ## A083721.P10763885684336421391

`A243291(n+1)-∑[∏{p}[n+1, C(#%n, #)]]`
-/

namespace A083721.P10763885684336421391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A083721.P10763885684336421391

namespace A083721

/-- `A243291(n+1)-∑[∏{p}[n+1, C(#%n, #)]]` -/
def P10763885684336421391.Spec : Prop :=
  ∀ n, P10763885684336421391.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P8257393695449814928

`∑[∏{p}[n+1, C(#, n)%2]]-A061395(2*(n+1))`
-/

namespace A083721.P8257393695449814928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A061395 (2 * (n + 1))

end

end A083721.P8257393695449814928

namespace A083721

/-- `∑[∏{p}[n+1, C(#, n)%2]]-A061395(2*(n+1))` -/
def P8257393695449814928.Spec : Prop :=
  ∀ n, P8257393695449814928.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P16005717330800232653

`∑[∑{p}[n+1, floor(#/(n+1))]]-(A159081(n+1)-1)`
-/

namespace A083721.P16005717330800232653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A159081 (n + 1) - 1)

end

end A083721.P16005717330800232653

namespace A083721

/-- `∑[∑{p}[n+1, floor(#/(n+1))]]-(A159081(n+1)-1)` -/
def P16005717330800232653.Spec : Prop :=
  ∀ n, P16005717330800232653.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P2653810004597088261

`A000720(n+1)-A061395(n+1)`
-/

namespace A083721.P2653810004597088261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A061395 (n + 1)

end

end A083721.P2653810004597088261

namespace A083721

/-- `A000720(n+1)-A061395(n+1)` -/
def P2653810004597088261.Spec : Prop :=
  ∀ n, P2653810004597088261.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P3694509740804761855

`A048865(n+1)-A079067(n+1)`
-/

namespace A083721.P3694509740804761855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - A079067 (n + 1)

end

end A083721.P3694509740804761855

namespace A083721

/-- `A048865(n+1)-A079067(n+1)` -/
def P3694509740804761855.Spec : Prop :=
  ∀ n, P3694509740804761855.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P136001352496765818

`A036234(n+1)-A159081(n+1)`
-/

namespace A083721.P136001352496765818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A159081 (n + 1)

end

end A083721.P136001352496765818

namespace A083721

/-- `A036234(n+1)-A159081(n+1)` -/
def P136001352496765818.Spec : Prop :=
  ∀ n, P136001352496765818.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P12866697666123569624

`A033270(n+1)-A252735(n+1)`
-/

namespace A083721.P12866697666123569624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - A252735 (n + 1)

end

end A083721.P12866697666123569624

namespace A083721

/-- `A033270(n+1)-A252735(n+1)` -/
def P12866697666123569624.Spec : Prop :=
  ∀ n, P12866697666123569624.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P8314579750858666506

`A243291(n+1)-A062298(n+1)`
-/

namespace A083721.P8314579750858666506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (n + 1) - A062298 (n + 1)

end

end A083721.P8314579750858666506

namespace A083721

/-- `A243291(n+1)-A062298(n+1)` -/
def P8314579750858666506.Spec : Prop :=
  ∀ n, P8314579750858666506.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P14596789887088341192

`A383259(n+1)-A285725(n+1)`
-/

namespace A083721.P14596789887088341192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (n + 1) - A285725 (n + 1)

end

end A083721.P14596789887088341192

namespace A083721

/-- `A383259(n+1)-A285725(n+1)` -/
def P14596789887088341192.Spec : Prop :=
  ∀ n, P14596789887088341192.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P17593824868963000809

`A000720(n+1)-A000720(A006530(n+1))`
-/

namespace A083721.P17593824868963000809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A006530 (n + 1)).toNat

end

end A083721.P17593824868963000809

namespace A083721

/-- `A000720(n+1)-A000720(A006530(n+1))` -/
def P17593824868963000809.Spec : Prop :=
  ∀ n, P17593824868963000809.a n = A083721 (n + 1)

end A083721

/-! ## A083721.P9446155902637932758

`A241917(A083717(n+1))`
-/

namespace A083721.P9446155902637932758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A083717 (n + 1)).toNat

end

end A083721.P9446155902637932758

namespace A083721

/-- `A241917(A083717(n+1))` -/
def P9446155902637932758.Spec : Prop :=
  ∀ n, P9446155902637932758.a n = A083721 (n + 1)

end A083721

/-!
# A083722: Product of primes greater than the greatest prime factor of n but not greater than n.

The programs for A083722, the canonical program `A083722.P9989339320121623736` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083722 has offset 1).

The definition of A083722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083722.P8540626730086789535

`A066838(n+1)/A083720(n+1)`
-/

namespace A083722.P8540626730086789535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (n + 1) : ℚ) / (A083720 (n + 1) : ℚ)

end

end A083722.P8540626730086789535

namespace A083722

/-- `A066838(n+1)/A083720(n+1)` -/
def P8540626730086789535.Spec : Prop :=
  ∀ n, P8540626730086789535.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P15155314261913292167

`A066838(n+1)/gcd(A066838(n+1), A181811(n+1))`
-/

namespace A083722.P15155314261913292167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (n + 1) : ℚ) / (Int.gcd (A066838 (n + 1)) (A181811 (n + 1)) : ℚ)

end

end A083722.P15155314261913292167

namespace A083722

/-- `A066838(n+1)/gcd(A066838(n+1), A181811(n+1))` -/
def P15155314261913292167.Spec : Prop :=
  ∀ n, P15155314261913292167.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P9989339320121623736

`A034386(n+1)/A034386(A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083722

/-- `A034386(n+1)/A034386(A006530(n+1))` -/
def P9989339320121623736.Spec : Prop :=
  ∀ n, P9989339320121623736.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P8468071641153723548

`A034386(n+1)/A002110(A061395(n+1))`
-/

namespace A083722.P8468071641153723548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A002110 (A061395 (n + 1)).toNat : ℚ)

end

end A083722.P8468071641153723548

namespace A083722

/-- `A034386(n+1)/A002110(A061395(n+1))` -/
def P8468071641153723548.Spec : Prop :=
  ∀ n, P8468071641153723548.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P4818863103594765653

`A034386(n+1)/A108951(n+1)*A331188(n+1)`
-/

namespace A083722.P4818863103594765653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A108951 (n + 1) : ℚ) * (A331188 (n + 1) : ℚ)

end

end A083722.P4818863103594765653

namespace A083722

/-- `A034386(n+1)/A108951(n+1)*A331188(n+1)` -/
def P4818863103594765653.Spec : Prop :=
  ∀ n, P4818863103594765653.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P11101747930827903798

`A002110(A000720(n+1))/A002110(A061395(n+1))`
-/

namespace A083722.P11101747930827903798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000720 (n + 1)).toNat : ℚ) / (A002110 (A061395 (n + 1)).toNat : ℚ)

end

end A083722.P11101747930827903798

namespace A083722

/-- `A002110(A000720(n+1))/A002110(A061395(n+1))` -/
def P11101747930827903798.Spec : Prop :=
  ∀ n, P11101747930827903798.a n = (A083722 (n + 1) : ℚ)

end A083722

/-! ## A083722.P5069546925305445321

`A201146(A006530(n+1)+∑[n])`
-/

namespace A083722.P5069546925305445321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201146 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A083722.P5069546925305445321

namespace A083722

/-- `A201146(A006530(n+1)+∑[n])` -/
def P5069546925305445321.Spec : Prop :=
  ∀ n, P5069546925305445321.a n = A083722 (n + 1)

end A083722

/-!
# A083723: a(n) = (prime(n)+1)*n - 1.

The programs for A083723, the canonical program `A083723.P9061245623782406324` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083723 has offset 1).

The definition of A083723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083723.P9061245623782406324

`A033286(n+1)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083723

/-- `A033286(n+1)+n` -/
def P9061245623782406324.Spec : Prop :=
  ∀ n, P9061245623782406324.a n = A083723 (n + 1)

theorem P9061245623782406324.correct : P9061245623782406324.Spec := by
  intro n
  simp only [A083723, Nat.add_sub_cancel]

end A083723

/-! ## A083723.P8256613031539203661

`∑[A090942(n+1)]+n`
-/

namespace A083723.P8256613031539203661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A083723.P8256613031539203661

namespace A083723

/-- `∑[A090942(n+1)]+n` -/
def P8256613031539203661.Spec : Prop :=
  ∀ n, P8256613031539203661.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P82978182935945348

`(n+1)*Δ[A007504(n)]+n`
-/

namespace A083723.P82978182935945348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A083723.P82978182935945348

namespace A083723

/-- `(n+1)*Δ[A007504(n)]+n` -/
def P82978182935945348.Spec : Prop :=
  ∀ n, P82978182935945348.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P1716607652089004489

`(n+1)*A008864(n+1)-1`
-/

namespace A083723.P1716607652089004489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008864 (n + 1) - 1

end

end A083723.P1716607652089004489

namespace A083723

/-- `(n+1)*A008864(n+1)-1` -/
def P1716607652089004489.Spec : Prop :=
  ∀ n, P1716607652089004489.a n = A083723 (n + 1)

theorem P1716607652089004489.correct : P1716607652089004489.Spec := by
  intro n
  simp only [A083723, Nat.add_sub_cancel, A083723.P1716607652089004489.a, A083723.P9061245623782406324.a, A008864, A008864.P9177617808325052279.a, A033286, A033286.P2794343547372572705.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083723

/-! ## A083723.P12209213766415080321

`(n+1)*A028815(n+1)-1`
-/

namespace A083723.P12209213766415080321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028815 (n + 1) - 1

end

end A083723.P12209213766415080321

namespace A083723

/-- `(n+1)*A028815(n+1)-1` -/
def P12209213766415080321.Spec : Prop :=
  ∀ n, P12209213766415080321.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P8863632861141577874

`(n+1)*A000040(n+1)+n`
-/

namespace A083723.P8863632861141577874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) + (n : ℤ)

end

end A083723.P8863632861141577874

namespace A083723

/-- `(n+1)*A000040(n+1)+n` -/
def P8863632861141577874.Spec : Prop :=
  ∀ n, P8863632861141577874.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P4899767192906087363

`A356868(n+1)/(n+1)+n`
-/

namespace A083723.P4899767192906087363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356868 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A083723.P4899767192906087363

namespace A083723

/-- `A356868(n+1)/(n+1)+n` -/
def P4899767192906087363.Spec : Prop :=
  ∀ n, P4899767192906087363.a n = (A083723 (n + 1) : ℚ)

end A083723

/-! ## A083723.P15721689941236751675

`(n+1)*(A040976(n+1)+3)-1`
-/

namespace A083723.P15721689941236751675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A040976 (n + 1) + 3) - 1

end

end A083723.P15721689941236751675

namespace A083723

/-- `(n+1)*(A040976(n+1)+3)-1` -/
def P15721689941236751675.Spec : Prop :=
  ∀ n, P15721689941236751675.a n = A083723 (n + 1)

theorem P15721689941236751675.correct : P15721689941236751675.Spec := by
  intro n
  simp only [A083723, Nat.add_sub_cancel, A083723.P15721689941236751675.a, A083723.P9061245623782406324.a, A033286, A033286.P2794343547372572705.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083723

/-! ## A083723.P13978962118089078874

`lcm(n+1, A000040(C(n+1, n)))+n`
-/

namespace A083723.P13978962118089078874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000040 (Nat.choose (n + 1) n)) + n

end

end A083723.P13978962118089078874

namespace A083723

/-- `lcm(n+1, A000040(C(n+1, n)))+n` -/
def P13978962118089078874.Spec : Prop :=
  ∀ n, (P13978962118089078874.a n : ℤ) = A083723 (n + 1)

end A083723

/-! ## A083723.P13832213547462837123

`A090942(n+1)+A083726(n)`
-/

namespace A083723.P13832213547462837123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) + A083726 n

end

end A083723.P13832213547462837123

namespace A083723

/-- `A090942(n+1)+A083726(n)` -/
def P13832213547462837123.Spec : Prop :=
  ∀ n, P13832213547462837123.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P1355108243960168622

`A117495(n+1)+A095116(n+1)`
-/

namespace A083723.P1355108243960168622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) + A095116 (n + 1)

end

end A083723.P1355108243960168622

namespace A083723

/-- `A117495(n+1)+A095116(n+1)` -/
def P1355108243960168622.Spec : Prop :=
  ∀ n, P1355108243960168622.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P2980569453464053344

`A189892(n+1)+A007504(n)+n`
-/

namespace A083723.P2980569453464053344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) + (A007504 n + (n : ℤ))

end

end A083723.P2980569453464053344

namespace A083723

/-- `A189892(n+1)+A007504(n)+n` -/
def P2980569453464053344.Spec : Prop :=
  ∀ n, P2980569453464053344.a n = A083723 (n + 1)

theorem P2980569453464053344.correct : P2980569453464053344.Spec := by
  intro n
  simp only [A083723, Nat.add_sub_cancel, A083723.P2980569453464053344.a, A083723.P9061245623782406324.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A033286, A033286.P2794343547372572705.a, A189892, A189892.P11745447332243219839.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083723

/-! ## A083723.P5869402132949034145

`A000040(n+1)+A117495(n+1)+n`
-/

namespace A083723.P5869402132949034145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A117495 (n + 1) + (n : ℤ))

end

end A083723.P5869402132949034145

namespace A083723

/-- `A000040(n+1)+A117495(n+1)+n` -/
def P5869402132949034145.Spec : Prop :=
  ∀ n, P5869402132949034145.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P10106053416539753358

`A001248(n+1)-A161522(n+1)+n`
-/

namespace A083723.P10106053416539753358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A161522 (n + 1) + (n : ℤ)

end

end A083723.P10106053416539753358

namespace A083723

/-- `A001248(n+1)-A161522(n+1)+n` -/
def P10106053416539753358.Spec : Prop :=
  ∀ n, P10106053416539753358.a n = A083723 (n + 1)

theorem P10106053416539753358.correct : P10106053416539753358.Spec := by
  intro n
  simp only [A083723, Nat.add_sub_cancel, A083723.P10106053416539753358.a, A083723.P9061245623782406324.a, A001248, A001248.P16278241061688229202.a, A033286, A033286.P2794343547372572705.a, A161522, A161522.P15343640305282241931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083723

/-! ## A083723.P16739608224916743091

`A083726(n+1)-1`
-/

namespace A083723.P16739608224916743091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083726 (n + 1) - 1

end

end A083723.P16739608224916743091

namespace A083723

/-- `A083726(n+1)-1` -/
def P16739608224916743091.Spec : Prop :=
  ∀ n, P16739608224916743091.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P1857537659603759468

`(n+1)*A008578(n+2)+n`
-/

namespace A083723.P1857537659603759468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008578 (n + 2) + (n : ℤ)

end

end A083723.P1857537659603759468

namespace A083723

/-- `(n+1)*A008578(n+2)+n` -/
def P1857537659603759468.Spec : Prop :=
  ∀ n, P1857537659603759468.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P1086725200655752126

`(n+1)*record[A006530(n+2)]+n`
-/

namespace A083723.P1086725200655752126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A083723.P1086725200655752126

namespace A083723

/-- `(n+1)*record[A006530(n+2)]+n` -/
def P1086725200655752126.Spec : Prop :=
  ∀ n, P1086725200655752126.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P779421435825209892

`(n+1)*record[A020639(n+2)]+n`
-/

namespace A083723.P779421435825209892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A083723.P779421435825209892

namespace A083723

/-- `(n+1)*record[A020639(n+2)]+n` -/
def P779421435825209892.Spec : Prop :=
  ∀ n, P779421435825209892.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P15671921829240264045

`(n+1)*record[A000010(n+1)]+2*n+1`
-/

namespace A083723.P15671921829240264045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1 : ℤ)

end

end A083723.P15671921829240264045

namespace A083723

/-- `(n+1)*record[A000010(n+1)]+2*n+1` -/
def P15671921829240264045.Spec : Prop :=
  ∀ n, P15671921829240264045.a n = A083723 (n + 1)

end A083723

/-! ## A083723.P7205943541015421130

`(n+1)*eq[2, A000005(n+1)]+2*n+1`
-/

namespace A083723.P7205943541015421130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1)

end

end A083723.P7205943541015421130

namespace A083723

/-- `(n+1)*eq[2, A000005(n+1)]+2*n+1` -/
def P7205943541015421130.Spec : Prop :=
  ∀ n, (P7205943541015421130.a n : ℤ) = A083723 (n + 1)

end A083723

/-!
# A083724: Numbers k such that 11*7^k + 2 is prime.

The programs for A083724, there is no canonical definition to state claims against.
-/

/-! ## A083724.P7916646179299502047

`lt[A015751(A015754(n)), A015725(n+2)]`
-/

namespace A083724.P7916646179299502047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (A015754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015725 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083724.P7916646179299502047

/-!
# A083725: a(n) = n * [1 + sum(k=1 to n) prime(k)].

The programs for A083725, the canonical program `A083725.P6174861882792676472` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083725 has offset 0).

The definition of A083725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083725.P5929902347001400175

`n*(A007504(n)+1)`
-/

namespace A083725.P5929902347001400175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007504 n + 1)

end

end A083725.P5929902347001400175

namespace A083725

/-- `n*(A007504(n)+1)` -/
def P5929902347001400175.Spec : Prop :=
  ∀ n, P5929902347001400175.a n = A083725 n

end A083725

/-! ## A083725.P8036470052143585295

`n*A014284(n+1)`
-/

namespace A083725.P8036470052143585295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014284 (n + 1)

end

end A083725.P8036470052143585295

namespace A083725

/-- `n*A014284(n+1)` -/
def P8036470052143585295.Spec : Prop :=
  ∀ n, P8036470052143585295.a n = A083725 n

end A083725

/-! ## A083725.P5923666104493940600

`n*∑[A008578(n+1)]`
-/

namespace A083725.P5923666104493940600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P5923666104493940600

namespace A083725

/-- `n*∑[A008578(n+1)]` -/
def P5923666104493940600.Spec : Prop :=
  ∀ n, P5923666104493940600.a n = A083725 n

end A083725

/-! ## A083725.P3884993605842228825

`n*∑[A028815(n)-1]`
-/

namespace A083725.P3884993605842228825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P3884993605842228825

namespace A083725

/-- `n*∑[A028815(n)-1]` -/
def P3884993605842228825.Spec : Prop :=
  ∀ n, P3884993605842228825.a n = A083725 n

end A083725

/-! ## A083725.P6174861882792676472

`n*(A036439(n+1)-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083725

/-- `n*(A036439(n+1)-1)` -/
def P6174861882792676472.Spec : Prop :=
  ∀ n, P6174861882792676472.a n = A083725 n

theorem P6174861882792676472.correct : P6174861882792676472.Spec := by
  intro n
  simp only [A083725]

end A083725

/-! ## A083725.P10270917112342478998

`n*(A227547(n+1)-2)`
-/

namespace A083725.P10270917112342478998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A227547 (n + 1) - 2)

end

end A083725.P10270917112342478998

namespace A083725

/-- `n*(A227547(n+1)-2)` -/
def P10270917112342478998.Spec : Prop :=
  ∀ n, P10270917112342478998.a n = A083725 n

theorem P10270917112342478998.correct : P10270917112342478998.Spec := by
  intro n
  simp only [A083725, Nat.add_sub_cancel, A083725.P10270917112342478998.a, A083725.P6174861882792676472.a, A036439, A036439.P376659802180600074.a, A227547, A227547.P9561160085571280683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083725

/-! ## A083725.P55579171538417132

`n*(A110895(n+1)-n)`
-/

namespace A083725.P55579171538417132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A110895 (n + 1) - (n : ℤ))

end

end A083725.P55579171538417132

namespace A083725

/-- `n*(A110895(n+1)-n)` -/
def P55579171538417132.Spec : Prop :=
  ∀ n, P55579171538417132.a n = A083725 n

end A083725

/-! ## A083725.P10539778367552321967

`n*∑[sqrt(A280076(n+1))]`
-/

namespace A083725.P10539778367552321967
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P10539778367552321967

namespace A083725

/-- `n*∑[sqrt(A280076(n+1))]` -/
def P10539778367552321967.Spec : Prop :=
  ∀ n, P10539778367552321967.a n = (A083725 n : ℝ)

end A083725

/-! ## A083725.P1662361363887663461

`n*∑[A158611(n+2)]`
-/

namespace A083725.P1662361363887663461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P1662361363887663461

namespace A083725

/-- `n*∑[A158611(n+2)]` -/
def P1662361363887663461.Spec : Prop :=
  ∀ n, P1662361363887663461.a n = A083725 n

end A083725

/-! ## A083725.P9319957746830083153

`n*(A175965(n+2)-1)`
-/

namespace A083725.P9319957746830083153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A175965 (n + 2) - 1)

end

end A083725.P9319957746830083153

namespace A083725

/-- `n*(A175965(n+2)-1)` -/
def P9319957746830083153.Spec : Prop :=
  ∀ n, P9319957746830083153.a n = A083725 n

end A083725

/-! ## A083725.P110823051425429054

`n/(n+1)*A083719(n+1)`
-/

namespace A083725.P110823051425429054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A083719 (n + 1) : ℚ)

end

end A083725.P110823051425429054

namespace A083725

/-- `n/(n+1)*A083719(n+1)` -/
def P110823051425429054.Spec : Prop :=
  ∀ n, P110823051425429054.a n = (A083725 n : ℚ)

end A083725

/-! ## A083725.P17809324623980948789

`n*∑[record[A025473(n+1)]]`
-/

namespace A083725.P17809324623980948789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P17809324623980948789

namespace A083725

/-- `n*∑[record[A025473(n+1)]]` -/
def P17809324623980948789.Spec : Prop :=
  ∀ n, P17809324623980948789.a n = A083725 n

end A083725

/-! ## A083725.P1211775190301579572

`n*∑[record[A006530(n+1)]]`
-/

namespace A083725.P1211775190301579572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P1211775190301579572

namespace A083725

/-- `n*∑[record[A006530(n+1)]]` -/
def P1211775190301579572.Spec : Prop :=
  ∀ n, P1211775190301579572.a n = A083725 n

end A083725

/-! ## A083725.P14000992591992304012

`n*∑[record[A020639(n+1)]]`
-/

namespace A083725.P14000992591992304012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P14000992591992304012

namespace A083725

/-- `n*∑[record[A020639(n+1)]]` -/
def P14000992591992304012.Spec : Prop :=
  ∀ n, P14000992591992304012.a n = A083725 n

end A083725

/-! ## A083725.P9951136378309572655

`n*∑[A075643(n+1)]`
-/

namespace A083725.P9951136378309572655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P9951136378309572655

namespace A083725

/-- `n*∑[A075643(n+1)]` -/
def P9951136378309572655.Spec : Prop :=
  ∀ n, P9951136378309572655.a n = A083725 n

end A083725

/-! ## A083725.P10816075798312774570

`n*∑[eq[1, A074206(n)]]`
-/

namespace A083725.P10816075798312774570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P10816075798312774570

namespace A083725

/-- `n*∑[eq[1, A074206(n)]]` -/
def P10816075798312774570.Spec : Prop :=
  ∀ n, (P10816075798312774570.a n : ℤ) = A083725 n

end A083725

/-! ## A083725.P489955744900023766

`n*∑[eq[1, A107463(n)]]`
-/

namespace A083725.P489955744900023766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P489955744900023766

namespace A083725

/-- `n*∑[eq[1, A107463(n)]]` -/
def P489955744900023766.Spec : Prop :=
  ∀ n, (P489955744900023766.a n : ℤ) = A083725 n

end A083725

/-! ## A083725.P5432038844149918259

`n*∑[record[A064216(n+1)]]`
-/

namespace A083725.P5432038844149918259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P5432038844149918259

namespace A083725

/-- `n*∑[record[A064216(n+1)]]` -/
def P5432038844149918259.Spec : Prop :=
  ∀ n, P5432038844149918259.a n = A083725 n

end A083725

/-! ## A083725.P6577632190887656048

`n*∑[record[A166333(n)]]`
-/

namespace A083725.P6577632190887656048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P6577632190887656048

namespace A083725

/-- `n*∑[record[A166333(n)]]` -/
def P6577632190887656048.Spec : Prop :=
  ∀ n, P6577632190887656048.a n = A083725 n

end A083725

/-! ## A083725.P4238481707223489756

`n*∑[record[A014963(n+1)]]`
-/

namespace A083725.P4238481707223489756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083725.P4238481707223489756

namespace A083725

/-- `n*∑[record[A014963(n+1)]]` -/
def P4238481707223489756.Spec : Prop :=
  ∀ n, P4238481707223489756.a n = A083725 n

end A083725

/-!
# A083726: a(n) = (prime(n)+1)*n.

The programs for A083726, the canonical program `A083726.P16605921250459075972` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083726 has offset 0).

The definition of A083726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083726.P16818709209139112658

`n*A028815(n)`
-/

namespace A083726.P16818709209139112658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028815 n

end

end A083726.P16818709209139112658

namespace A083726

/-- `n*A028815(n)` -/
def P16818709209139112658.Spec : Prop :=
  ∀ n, P16818709209139112658.a n = A083726 n

end A083726

/-! ## A083726.P5865112361996414712

`n*A299763(n+1)`
-/

namespace A083726.P5865112361996414712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A299763 (n + 1)

end

end A083726.P5865112361996414712

namespace A083726

/-- `n*A299763(n+1)` -/
def P5865112361996414712.Spec : Prop :=
  ∀ n, P5865112361996414712.a n = A083726 n

end A083726

/-! ## A083726.P11696703741739315673

`n*(A008578(n+1)+1)`
-/

namespace A083726.P11696703741739315673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008578 (n + 1) + 1)

end

end A083726.P11696703741739315673

namespace A083726

/-- `n*(A008578(n+1)+1)` -/
def P11696703741739315673.Spec : Prop :=
  ∀ n, P11696703741739315673.a n = A083726 n

end A083726

/-! ## A083726.P17082745940576121160

`n*(A182986(n+1)+1)`
-/

namespace A083726.P17082745940576121160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A182986 (n + 1) + 1)

end

end A083726.P17082745940576121160

namespace A083726

/-- `n*(A182986(n+1)+1)` -/
def P17082745940576121160.Spec : Prop :=
  ∀ n, P17082745940576121160.a n = A083726 n

end A083726

/-! ## A083726.P5938695365212974255

`n*(A090178(n+1)-n)`
-/

namespace A083726.P5938695365212974255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A090178 (n + 1) - (n : ℤ))

end

end A083726.P5938695365212974255

namespace A083726

/-- `n*(A090178(n+1)-n)` -/
def P5938695365212974255.Spec : Prop :=
  ∀ n, P5938695365212974255.a n = A083726 n

end A083726

/-! ## A083726.P16605921250459075972

`n*A008864(abs(1-n)+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083726

/-- `n*A008864(abs(1-n)+1)` -/
def P16605921250459075972.Spec : Prop :=
  ∀ n, P16605921250459075972.a n = A083726 n

theorem P16605921250459075972.correct : P16605921250459075972.Spec := by
  intro n
  simp only [A083726]

end A083726

/-! ## A083726.P16739068704223341685

`n*(A162177(n+1)+n+2)`
-/

namespace A083726.P16739068704223341685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A162177 (n + 1) + (n + 2 : ℤ))

end

end A083726.P16739068704223341685

namespace A083726

/-- `n*(A162177(n+1)+n+2)` -/
def P16739068704223341685.Spec : Prop :=
  ∀ n, P16739068704223341685.a n = A083726 n

end A083726

/-! ## A083726.P3909027261803441128

`A083723(n+1)-A090942(n+1)`
-/

namespace A083726.P3909027261803441128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - A090942 (n + 1)

end

end A083726.P3909027261803441128

namespace A083726

/-- `A083723(n+1)-A090942(n+1)` -/
def P3909027261803441128.Spec : Prop :=
  ∀ n, P3909027261803441128.a n = A083726 n

end A083726

/-! ## A083726.P320502997453745195

`n*(A173137(n+2)-(n+1))`
-/

namespace A083726.P320502997453745195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A173137 (n + 2) - (n + 1 : ℤ))

end

end A083726.P320502997453745195

namespace A083726

/-- `n*(A173137(n+2)-(n+1))` -/
def P320502997453745195.Spec : Prop :=
  ∀ n, P320502997453745195.a n = A083726 n

end A083726

/-! ## A083726.P9025904828913146742

`n*record[A028691(n+1)+1]`
-/

namespace A083726.P9025904828913146742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083726.P9025904828913146742

namespace A083726

/-- `n*record[A028691(n+1)+1]` -/
def P9025904828913146742.Spec : Prop :=
  ∀ n, P9025904828913146742.a n = A083726 n

end A083726

/-! ## A083726.P16834966297254758722

`n*record[A025473(n+1)+1]`
-/

namespace A083726.P16834966297254758722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083726.P16834966297254758722

namespace A083726

/-- `n*record[A025473(n+1)+1]` -/
def P16834966297254758722.Spec : Prop :=
  ∀ n, P16834966297254758722.a n = A083726 n

end A083726

/-! ## A083726.P2686736863120263928

`n*record[A006530(n+1)+1]`
-/

namespace A083726.P2686736863120263928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083726.P2686736863120263928

namespace A083726

/-- `n*record[A006530(n+1)+1]` -/
def P2686736863120263928.Spec : Prop :=
  ∀ n, P2686736863120263928.a n = A083726 n

end A083726

/-! ## A083726.P12451229647707574010

`n*record[A008472(n+1)+1]`
-/

namespace A083726.P12451229647707574010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083726.P12451229647707574010

namespace A083726

/-- `n*record[A008472(n+1)+1]` -/
def P12451229647707574010.Spec : Prop :=
  ∀ n, P12451229647707574010.a n = A083726 n

end A083726

/-! ## A083726.P18236314052207515609

`n*record[A020639(n+1)+1]`
-/

namespace A083726.P18236314052207515609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083726.P18236314052207515609

namespace A083726

/-- `n*record[A020639(n+1)+1]` -/
def P18236314052207515609.Spec : Prop :=
  ∀ n, P18236314052207515609.a n = A083726 n

end A083726

/-! ## A083726.P2712564462914365677

`n*A000203(A008578(n+1))`
-/

namespace A083726.P2712564462914365677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (A008578 (n + 1)).toNat

end

end A083726.P2712564462914365677

namespace A083726

/-- `n*A000203(A008578(n+1))` -/
def P2712564462914365677.Spec : Prop :=
  ∀ n, P2712564462914365677.a n = A083726 n

end A083726

/-! ## A083726.P234941922080707102

`n*A000203(A158611(n+2))`
-/

namespace A083726.P234941922080707102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (A158611 (n + 2)).toNat

end

end A083726.P234941922080707102

namespace A083726

/-- `n*A000203(A158611(n+2))` -/
def P234941922080707102.Spec : Prop :=
  ∀ n, P234941922080707102.a n = A083726 n

end A083726

/-! ## A083726.P6983752392889677648

`n*A003959(record[A020639(n+1)])`
-/

namespace A083726.P6983752392889677648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083726.P6983752392889677648

namespace A083726

/-- `n*A003959(record[A020639(n+1)])` -/
def P6983752392889677648.Spec : Prop :=
  ∀ n, P6983752392889677648.a n = A083726 n

end A083726

/-! ## A083726.P8484232722287732487

`n*A000203(A001747(n+1)/2)`
-/

namespace A083726.P8484232722287732487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A083726.P8484232722287732487

namespace A083726

/-- `n*A000203(A001747(n+1)/2)` -/
def P8484232722287732487.Spec : Prop :=
  ∀ n, P8484232722287732487.a n = A083726 n

end A083726

/-! ## A083726.P14446698379726488843

`n*(lt[A001222(n+1), 2]+2)`
-/

namespace A083726.P14446698379726488843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A083726.P14446698379726488843

namespace A083726

/-- `n*(lt[A001222(n+1), 2]+2)` -/
def P14446698379726488843.Spec : Prop :=
  ∀ n, (P14446698379726488843.a n : ℤ) = A083726 n

end A083726

/-! ## A083726.P3668279548585783332

`n*(lt[A000005(n+1), 3]+2)`
-/

namespace A083726.P3668279548585783332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A083726.P3668279548585783332

namespace A083726

/-- `n*(lt[A000005(n+1), 3]+2)` -/
def P3668279548585783332.Spec : Prop :=
  ∀ n, (P3668279548585783332.a n : ℤ) = A083726 n

end A083726

/-!
# A083727: a(n) = n * (2^n - 8).

The programs for A083727, the canonical program `A083727.P16048560748501867300` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083727 has offset 0).

The definition of A083727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n-8)` (program `A083727.P16048560748501867300`, by `A083727.P16048560748501867300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083727.P16048560748501867300

`n*(2^n-8)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083727

/-- `n*(2^n-8)` -/
def P16048560748501867300.Spec : Prop :=
  ∀ n, P16048560748501867300.a n = A083727 n

theorem P16048560748501867300.correct : P16048560748501867300.Spec := by
  intro n
  simp only [A083727]

end A083727

/-! ## A083727.P1632239745863248810

`floor(n*∑[2*a(n-1)])` with `a(0)=-7, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083727.P1632239745863248810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-7, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083727.P1632239745863248810

namespace A083727

/-- `floor(n*∑[2*a(n-1)])` -/
def P1632239745863248810.Spec : Prop :=
  ∀ n, P1632239745863248810.a n = A083727 n

end A083727

/-! ## A083727.P16737514589269198057

`n-n*∑[2*a(n-1)]` with `a(0)=8, a(1)=-1`
-/

namespace A083727.P16737514589269198057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, -1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083727.P16737514589269198057

namespace A083727

/-- `n-n*∑[2*a(n-1)]` -/
def P16737514589269198057.Spec : Prop :=
  ∀ n, P16737514589269198057.a n = A083727 n

end A083727

/-! ## A083727.P3388510523555757098

`A066524(n)-7*n`
-/

namespace A083727.P3388510523555757098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n - (7 * n : ℤ)

end

end A083727.P3388510523555757098

namespace A083727

/-- `A066524(n)-7*n` -/
def P3388510523555757098.Spec : Prop :=
  ∀ n, P3388510523555757098.a n = A083727 n

theorem P3388510523555757098.correct : P3388510523555757098.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P3388510523555757098.a, A083727.P16048560748501867300.a, A066524, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-! ## A083727.P17531877437542839451

`A036289(n)-8*n`
-/

namespace A083727.P17531877437542839451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - (8 * n : ℤ)

end

end A083727.P17531877437542839451

namespace A083727

/-- `A036289(n)-8*n` -/
def P17531877437542839451.Spec : Prop :=
  ∀ n, P17531877437542839451.a n = A083727 n

theorem P17531877437542839451.correct : P17531877437542839451.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P17531877437542839451.a, A083727.P16048560748501867300.a, A036289, A036289.P13525419631139213940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-! ## A083727.P1419790456840486645

`A093968(2*n)-8*n`
-/

namespace A083727.P1419790456840486645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n) - (8 * n : ℤ)

end

end A083727.P1419790456840486645

namespace A083727

/-- `A093968(2*n)-8*n` -/
def P1419790456840486645.Spec : Prop :=
  ∀ n, P1419790456840486645.a n = A083727 n

end A083727

/-! ## A083727.P13812801438202878822

`A002064(n)-A017077(n)`
-/

namespace A083727.P13812801438202878822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A017077 n

end

end A083727.P13812801438202878822

namespace A083727

/-- `A002064(n)-A017077(n)` -/
def P13812801438202878822.Spec : Prop :=
  ∀ n, P13812801438202878822.a n = A083727 n

theorem P13812801438202878822.correct : P13812801438202878822.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P13812801438202878822.a, A083727.P16048560748501867300.a, A002064, A002064.P16424863031535762998.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-! ## A083727.P4197239461119748338

`A069229(n)-A008591(n)`
-/

namespace A083727.P4197239461119748338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n - A008591 n

end

end A083727.P4197239461119748338

namespace A083727

/-- `A069229(n)-A008591(n)` -/
def P4197239461119748338.Spec : Prop :=
  ∀ n, P4197239461119748338.a n = A083727 n

theorem P4197239461119748338.correct : P4197239461119748338.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P4197239461119748338.a, A083727.P16048560748501867300.a, A008591, A008591.P8937864482545511630.a, A069229, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-! ## A083727.P3568533324666705763

`A134401(n)-A022144(n)`
-/

namespace A083727.P3568533324666705763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n - A022144 n

end

end A083727.P3568533324666705763

namespace A083727

/-- `A134401(n)-A022144(n)` -/
def P3568533324666705763.Spec : Prop :=
  ∀ n, P3568533324666705763.a n = A083727 n

end A083727

/-! ## A083727.P18207250412206259509

`A046916(n)-A161532(n)`
-/

namespace A083727.P18207250412206259509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046916 n - A161532 n

end

end A083727.P18207250412206259509

namespace A083727

/-- `A046916(n)-A161532(n)` -/
def P18207250412206259509.Spec : Prop :=
  ∀ n, P18207250412206259509.a n = A083727 n

theorem P18207250412206259509.correct : P18207250412206259509.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P18207250412206259509.a, A083727.P16048560748501867300.a, A046916, A046916.P2495984086413320043.a, A161532, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-! ## A083727.P8390245316192332806

`A002064(n)-A016813(2*n)`
-/

namespace A083727.P8390245316192332806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A016813 (2 * n)

end

end A083727.P8390245316192332806

namespace A083727

/-- `A002064(n)-A016813(2*n)` -/
def P8390245316192332806.Spec : Prop :=
  ∀ n, P8390245316192332806.a n = A083727 n

theorem P8390245316192332806.correct : P8390245316192332806.Spec := by
  intro n
  simp only [A083727, Nat.add_sub_cancel, A083727.P8390245316192332806.a, A083727.P16048560748501867300.a, A002064, A002064.P16424863031535762998.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083727

/-!
# A083728: a(0) = 1, a(n) = 480*sigma(n).

The programs for A083728, there is no canonical definition to state claims against.
-/

/-! ## A083728.P2545761860481930081

`A022144(2*30*∑{d}[n, #])`
-/

namespace A083728.P2545761860481930081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (2 * (30 * (∑ d ∈ Nat.divisors (f1 n), d)))

end

end A083728.P2545761860481930081

/-! ## A083728.P2462832306556145163

`A008706(24*∑{d}[n, A008574(#)])`
-/

namespace A083728.P2462832306556145163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (24 * (∑ d ∈ Nat.divisors (f1 n), A008574 d)).toNat

end

end A083728.P2462832306556145163

/-! ## A083728.P4875495920173463856

`A042948(gcd(A008410(n), A029830(n)))`
-/

namespace A083728.P4875495920173463856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Int.gcd (A008410 n) (A029830 n))

end

end A083728.P4875495920173463856

/-! ## A083728.P13151775585937055540

`A072154(∑{d}[A004926(n), #])`
-/

namespace A083728.P13151775585937055540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A083728.P13151775585937055540

/-!
# A083729: Decimal expansion of sqrt(2)/(sqrt(2)-1)^2 = 3*sqrt(2)+4.

The programs for A083729, there is no canonical definition to state claims against.
-/

/-! ## A083729.P318572559714665835

`A010474(n)+A000038(n)²`
-/

namespace A083729.P318572559714665835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010474 (n + 1) + A000038 n ^ 2

end

end A083729.P318572559714665835

/-! ## A083729.P763810257036236311

`A010474(n)+8-A040012(n)`
-/

namespace A083729.P763810257036236311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010474 (n + 1) + (8 - A040012 n)

end

end A083729.P763810257036236311

/-! ## A083729.P3944161285992333641

`6*A010474(n)/A040006(n)`
-/

namespace A083729.P3944161285992333641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A010474 (n + 1) : ℚ) / (A040006 n : ℚ))

end

end A083729.P3944161285992333641

/-! ## A083729.P2264734918830524056

`A010474(n)*A027642(2*n+1)`
-/

namespace A083729.P2264734918830524056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010474 (n + 1) * A027642 (2 * n + 1)

end

end A083729.P2264734918830524056

/-!
# A083730: Greatest prime^2 factor of n, or a(n)=1 for squarefree n.

The programs for A083730, the canonical program `A083730.P6132026676750531064` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083730 has offset 1).

The definition of A083730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083730.P6132026676750531064

`A249740(n+1)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083730

/-- `A249740(n+1)²` -/
def P6132026676750531064.Spec : Prop :=
  ∀ n, P6132026676750531064.a n = A083730 (n + 1)

theorem P6132026676750531064.correct : P6132026676750531064.Spec := by
  intro n
  simp only [A083730, Nat.add_sub_cancel]

end A083730

/-! ## A083730.P13004300196015214034

`A006530((n+1)/∏{p}[n+1, #])²`
-/

namespace A083730.P13004300196015214034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2

end

end A083730.P13004300196015214034

namespace A083730

/-- `A006530((n+1)/∏{p}[n+1, #])²` -/
def P13004300196015214034.Spec : Prop :=
  ∀ n, P13004300196015214034.a n = A083730 (n + 1)

theorem P13004300196015214034.correct : P13004300196015214034.Spec := by
  intro n
  simp only [A083730, Nat.add_sub_cancel, A083730.P13004300196015214034.f1, A083730.P13004300196015214034.a, A083730.P6132026676750531064.a, A006530, A006530.P13372528560459906635.a, A249740, A249740.P7780659376755282522.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083730

/-! ## A083730.P8721931592302810350

`A006530(∏{p}[n+1, #^val(n+1, #²)])²`
-/

namespace A083730.P8721931592302810350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

end

end A083730.P8721931592302810350

namespace A083730

/-- `A006530(∏{p}[n+1, #^val(n+1, #²)])²` -/
def P8721931592302810350.Spec : Prop :=
  ∀ n, P8721931592302810350.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P9127294871815172546

`A274006(A007948(n+1))`
-/

namespace A083730.P9127294871815172546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (A007948 (n + 1)).toNat

end

end A083730.P9127294871815172546

namespace A083730

/-- `A274006(A007948(n+1))` -/
def P9127294871815172546.Spec : Prop :=
  ∀ n, P9127294871815172546.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P5218883726941234568

`A030664(A392109(n+1))`
-/

namespace A083730.P5218883726941234568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 (A392109 (n + 1)).toNat

end

end A083730.P5218883726941234568

namespace A083730

/-- `A030664(A392109(n+1))` -/
def P5218883726941234568.Spec : Prop :=
  ∀ n, P5218883726941234568.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P17088274644636050726

`A006530(A000188(n+1))²`
-/

namespace A083730.P17088274644636050726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000188 (n + 1)).toNat ^ 2

end

end A083730.P17088274644636050726

namespace A083730

/-- `A006530(A000188(n+1))²` -/
def P17088274644636050726.Spec : Prop :=
  ∀ n, P17088274644636050726.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P12079377410296255034

`A006530(A000189(n+1))²`
-/

namespace A083730.P12079377410296255034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000189 (n + 1)).toNat ^ 2

end

end A083730.P12079377410296255034

namespace A083730

/-- `A006530(A000189(n+1))²` -/
def P12079377410296255034.Spec : Prop :=
  ∀ n, P12079377410296255034.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P1657619337331186339

`A006530(A000190(n+1))²`
-/

namespace A083730.P1657619337331186339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000190 (n + 1)).toNat ^ 2

end

end A083730.P1657619337331186339

namespace A083730

/-- `A006530(A000190(n+1))²` -/
def P1657619337331186339.Spec : Prop :=
  ∀ n, P1657619337331186339.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P4548825344028214053

`A006530(A003557(n+1))²`
-/

namespace A083730.P4548825344028214053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003557 (n + 1)).toNat ^ 2

end

end A083730.P4548825344028214053

namespace A083730

/-- `A006530(A003557(n+1))²` -/
def P4548825344028214053.Spec : Prop :=
  ∀ n, P4548825344028214053.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P2562756455077283358

`A006530(A008833(n+1))²`
-/

namespace A083730.P2562756455077283358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008833 (n + 1)).toNat ^ 2

end

end A083730.P2562756455077283358

namespace A083730

/-- `A006530(A008833(n+1))²` -/
def P2562756455077283358.Spec : Prop :=
  ∀ n, P2562756455077283358.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P15553038777809817633

`A006530(A057521(n+1))²`
-/

namespace A083730.P15553038777809817633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057521 (n + 1)).toNat ^ 2

end

end A083730.P15553038777809817633

namespace A083730

/-- `A006530(A057521(n+1))²` -/
def P15553038777809817633.Spec : Prop :=
  ∀ n, P15553038777809817633.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P2641412876211271388

`A002034(A071773(n+1))²`
-/

namespace A083730.P2641412876211271388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A071773 (n + 1)).toNat ^ 2

end

end A083730.P2641412876211271388

namespace A083730

/-- `A002034(A071773(n+1))²` -/
def P2641412876211271388.Spec : Prop :=
  ∀ n, P2641412876211271388.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P2787727559307144726

`A006530(A085731(n+1))²`
-/

namespace A083730.P2787727559307144726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085731 (n + 1)).toNat ^ 2

end

end A083730.P2787727559307144726

namespace A083730

/-- `A006530(A085731(n+1))²` -/
def P2787727559307144726.Spec : Prop :=
  ∀ n, P2787727559307144726.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P4927824738307131572

`A034699(A071773(n+1)²)`
-/

namespace A083730.P4927824738307131572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A071773 (n + 1) ^ 2).toNat

end

end A083730.P4927824738307131572

namespace A083730

/-- `A034699(A071773(n+1)²)` -/
def P4927824738307131572.Spec : Prop :=
  ∀ n, P4927824738307131572.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P8327683055780741880

`A087039(A217434(n+1))²`
-/

namespace A083730.P8327683055780741880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A217434 (n + 1)).toNat ^ 2

end

end A083730.P8327683055780741880

namespace A083730

/-- `A087039(A217434(n+1))²` -/
def P8327683055780741880.Spec : Prop :=
  ∀ n, P8327683055780741880.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P3007180398617847444

`A006530(A308993(n+1))²`
-/

namespace A083730.P3007180398617847444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308993 (n + 1)).toNat ^ 2

end

end A083730.P3007180398617847444

namespace A083730

/-- `A006530(A308993(n+1))²` -/
def P3007180398617847444.Spec : Prop :=
  ∀ n, P3007180398617847444.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P18096741823389109668

`A082061(A235872(n+1))²`
-/

namespace A083730.P18096741823389109668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A235872 (n + 1)).toNat ^ 2

end

end A083730.P18096741823389109668

namespace A083730

/-- `A082061(A235872(n+1))²` -/
def P18096741823389109668.Spec : Prop :=
  ∀ n, P18096741823389109668.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P3060124317120529752

`A006530(abs(A358272(n+1)))²`
-/

namespace A083730.P3060124317120529752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A358272 (n + 1)|.toNat ^ 2

end

end A083730.P3060124317120529752

namespace A083730

/-- `A006530(abs(A358272(n+1)))²` -/
def P3060124317120529752.Spec : Prop :=
  ∀ n, P3060124317120529752.a n = A083730 (n + 1)

end A083730

/-! ## A083730.P18022686751106170227

`A006530(A336551(n+1)+1)²`
-/

namespace A083730.P18022686751106170227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A336551 (n + 1) + 1).toNat ^ 2

end

end A083730.P18022686751106170227

namespace A083730

/-- `A006530(A336551(n+1)+1)²` -/
def P18022686751106170227.Spec : Prop :=
  ∀ n, P18022686751106170227.a n = A083730 (n + 1)

theorem P18022686751106170227.correct : P18022686751106170227.Spec := by
  intro n
  simp only [A083730, Nat.add_sub_cancel, A083730.P18022686751106170227.a, A083730.P6132026676750531064.a, A006530, A006530.P13372528560459906635.a, A249740, A249740.P7780659376755282522.a, A336551, A336551.P8666843674191054020.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083730

/-! ## A083730.P14281874244952735052

`A006530(A337101(2*(n+1)))²`
-/

namespace A083730.P14281874244952735052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A337101 (2 * (n + 1))).toNat ^ 2

end

end A083730.P14281874244952735052

namespace A083730

/-- `A006530(A337101(2*(n+1)))²` -/
def P14281874244952735052.Spec : Prop :=
  ∀ n, P14281874244952735052.a n = A083730 (n + 1)

end A083730

/-!
# A083731: Triangular array such that partial sums define A008284.

The programs for A083731, there is no canonical definition to state claims against.
-/

/-! ## A083731.P18363278010153696186

`A010054(n)+Δ[A008284(A028310(n))]`
-/

namespace A083731.P18363278010153696186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (f1 (n + 1) - f1 n)

end

end A083731.P18363278010153696186

/-! ## A083731.P2551091311518660823

`A008284(n+1)-A072233(comp[∑[n-1]])`
-/

namespace A083731.P2551091311518660823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A072233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083731.P2551091311518660823

/-! ## A083731.P11960864098188233805

`A072233(A014132(n+1))-A072233(A007401(n+1))`
-/

namespace A083731.P11960864098188233805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A014132 (n + 1)).toNat - A072233 (A007401 (n + 1)).toNat

end

end A083731.P11960864098188233805

/-! ## A083731.P11376343198378130649

`A058398(A038722(n+1))-A072233(A007401(n+1))`
-/

namespace A083731.P11376343198378130649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A038722 (n + 1)).toNat - A072233 (A007401 (n + 1)).toNat

end

end A083731.P11376343198378130649

/-! ## A083731.P8637947517040149449

`A106254(A122797(n+1))-A072233(A007401(n+1))`
-/

namespace A083731.P8637947517040149449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A122797 (n + 1)).toNat - A072233 (A007401 (n + 1)).toNat

end

end A083731.P8637947517040149449

/-! ## A083731.P695375511104925730

`Δ[A072233(A007401(n+1))+A003056(n)]`
-/

namespace A083731.P695375511104925730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 1)).toNat + A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083731.P695375511104925730

/-! ## A083731.P8299894057461027886

`A023531(n)+Δ[A072233(A007401(n+1))]`
-/

namespace A083731.P8299894057461027886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + (f1 (n + 1) - f1 n)

end

end A083731.P8299894057461027886

/-! ## A083731.P15202170634298451343

`Δ[A072233(A007401(n+1))+A002024(n+1)]`
-/

namespace A083731.P15202170634298451343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 1)).toNat + A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083731.P15202170634298451343

/-! ## A083731.P16501317402716835091

`Δ[A072233(A007401(n+1))+A003057(n+2)]`
-/

namespace A083731.P16501317402716835091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 1)).toNat + A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083731.P16501317402716835091

/-! ## A083731.P7916748299959737407

`A058398(A278818(n))-A072233(A007401(n+1))`
-/

namespace A083731.P7916748299959737407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A278818 n).toNat - A072233 (A007401 (n + 1)).toNat

end

end A083731.P7916748299959737407

/-!
# A083732: Pseudoprimes to bases 2 and 5.

The programs for A083732, there is no canonical definition to state claims against.
-/

/-! ## A083732.P2359673929427331853

`∩[A001567(n+1), A005936(n+1)]`
-/

namespace A083732.P2359673929427331853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P2359673929427331853

/-! ## A083732.P1272219859589406360

`∩[A005936(n+1), A121014(n+1)]`
-/

namespace A083732.P1272219859589406360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P1272219859589406360

/-! ## A083732.P6882485126176991464

`∩[A005936(n+1), A351396(n+1)]`
-/

namespace A083732.P6882485126176991464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P6882485126176991464

/-! ## A083732.P2911033783609947876

`∩[A001567(n+1), A005939(n+1)]`
-/

namespace A083732.P2911033783609947876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P2911033783609947876

/-! ## A083732.P2466751542224986876

`∩[A005936(n+1), A005939(n+1)]`
-/

namespace A083732.P2466751542224986876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P2466751542224986876

/-! ## A083732.P523144281293026673

`∩[A005939(n+1), A122782(n+1)]`
-/

namespace A083732.P523144281293026673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P523144281293026673

/-! ## A083732.P1959711448555093257

`∩[A001567(n+1), A020148(n+1)]`
-/

namespace A083732.P1959711448555093257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P1959711448555093257

/-! ## A083732.P1142970883003467582

`∩[A005939(n+1), A020148(n+1)]`
-/

namespace A083732.P1142970883003467582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P1142970883003467582

/-! ## A083732.P12030976151487741279

`∩[A020148(n+1), A121014(n+1)]`
-/

namespace A083732.P12030976151487741279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P12030976151487741279

/-! ## A083732.P5592212402323377645

`∩[A020148(n+1), A351396(n+1)]`
-/

namespace A083732.P5592212402323377645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P5592212402323377645

/-! ## A083732.P8023617778501680896

`∩[A001567(n+1), A020208(n+1)]`
-/

namespace A083732.P8023617778501680896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P8023617778501680896

/-! ## A083732.P4574355513490068996

`∩[A005936(n+1), A020178(n+1)]`
-/

namespace A083732.P4574355513490068996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P4574355513490068996

/-! ## A083732.P13955490110940558165

`∩[A005939(n+1), A020178(n+1)]`
-/

namespace A083732.P13955490110940558165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P13955490110940558165

/-! ## A083732.P7139638153435399104

`∩[A020178(n+1), A121014(n+1)]`
-/

namespace A083732.P7139638153435399104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P7139638153435399104

/-! ## A083732.P2369269316791633925

`∩[A020178(n+1), A122782(n+1)]`
-/

namespace A083732.P2369269316791633925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P2369269316791633925

/-! ## A083732.P14402271786967125247

`∩[A020178(n+1), A351396(n+1)]`
-/

namespace A083732.P14402271786967125247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P14402271786967125247

/-! ## A083732.P10336096589411104965

`∩[A001567(n+1), A020168(n+1)]`
-/

namespace A083732.P10336096589411104965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P10336096589411104965

/-! ## A083732.P15667013022368721278

`∩[A020148(n+1), A020168(n+1)]`
-/

namespace A083732.P15667013022368721278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P15667013022368721278

/-! ## A083732.P15262613524385684277

`∩[A020168(n+1), A020208(n+1)]`
-/

namespace A083732.P15262613524385684277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083732.P15262613524385684277

/-!
# A083733: Pseudoprimes to bases 2 and 7.

The programs for A083733, there is no canonical definition to state claims against.
-/

/-! ## A083733.P5158293638601897902

`∩[A001567(n+1), A005938(n+1)]`
-/

namespace A083733.P5158293638601897902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P5158293638601897902

/-! ## A083733.P16788154562770918405

`∩[A001567(n+1), A020142(n+1)]`
-/

namespace A083733.P16788154562770918405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P16788154562770918405

/-! ## A083733.P7169808666115625740

`∩[A005938(n+1), A020142(n+1)]`
-/

namespace A083733.P7169808666115625740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P7169808666115625740

/-! ## A083733.P5563329273300200670

`∩[A020142(n+1), A122784(n+1)]`
-/

namespace A083733.P5563329273300200670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P5563329273300200670

/-! ## A083733.P8145603376237691793

`∩[A005938(n+1), A020226(n+1)]`
-/

namespace A083733.P8145603376237691793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P8145603376237691793

/-! ## A083733.P4708970828345935577

`∩[A020142(n+1), A020226(n+1)]`
-/

namespace A083733.P4708970828345935577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P4708970828345935577

/-! ## A083733.P3745554136463299513

`∩[A020226(n+1), A122784(n+1)]`
-/

namespace A083733.P3745554136463299513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P3745554136463299513

/-! ## A083733.P8738893204916406596

`∩[A001567(n+1), A020184(n+1)]`
-/

namespace A083733.P8738893204916406596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P8738893204916406596

/-! ## A083733.P5053216769347150803

`∩[A001567(n+1), A020156(n+1)]`
-/

namespace A083733.P5053216769347150803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P5053216769347150803

/-! ## A083733.P10917623796439993127

`∩[A020142(n+1), A020156(n+1)]`
-/

namespace A083733.P10917623796439993127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P10917623796439993127

/-! ## A083733.P15788745801077658756

`∩[A020156(n+1), A020184(n+1)]`
-/

namespace A083733.P15788745801077658756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083733.P15788745801077658756

/-!
# A083734: Pseudoprimes to bases 3 and 5.

The programs for A083734, there is no canonical definition to state claims against.
-/

/-! ## A083734.P13288077022241802465

`∩[A005935(n+1), A005936(n+1)]`
-/

namespace A083734.P13288077022241802465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P13288077022241802465

/-! ## A083734.P1897454384379653474

`∩[A005936(n+1), A351336(n+1)]`
-/

namespace A083734.P1897454384379653474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P1897454384379653474

/-! ## A083734.P3652140258824838843

`∩[A005935(n+1), A020143(n+1)]`
-/

namespace A083734.P3652140258824838843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P3652140258824838843

/-! ## A083734.P10788621617964626456

`∩[A005936(n+1), A020143(n+1)]`
-/

namespace A083734.P10788621617964626456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P10788621617964626456

/-! ## A083734.P38351051659605355

`∩[A020143(n+1), A122780(n+1)]`
-/

namespace A083734.P38351051659605355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P38351051659605355

/-! ## A083734.P16419328862522434634

`∩[A020143(n+1), A122782(n+1)]`
-/

namespace A083734.P16419328862522434634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P16419328862522434634

/-! ## A083734.P3936214254292503333

`∩[A020143(n+1), A263239(n+1)]`
-/

namespace A083734.P3936214254292503333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P3936214254292503333

/-! ## A083734.P7725474114157304760

`∩[A020143(n+1), A351336(n+1)]`
-/

namespace A083734.P7725474114157304760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P7725474114157304760

/-! ## A083734.P17509252977531195826

`∩[A005936(n+1), A020203(n+1)]`
-/

namespace A083734.P17509252977531195826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P17509252977531195826

/-! ## A083734.P9591050186636275748

`∩[A020143(n+1), A020203(n+1)]`
-/

namespace A083734.P9591050186636275748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P9591050186636275748

/-! ## A083734.P5503022008849100991

`∩[A020203(n+1), A122782(n+1)]`
-/

namespace A083734.P5503022008849100991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P5503022008849100991

/-! ## A083734.P8903021286902982945

`∩[A005935(n+1), A020173(n+1)]`
-/

namespace A083734.P8903021286902982945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P8903021286902982945

/-! ## A083734.P1260615920706125520

`∩[A020143(n+1), A020173(n+1)]`
-/

namespace A083734.P1260615920706125520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P1260615920706125520

/-! ## A083734.P17972832864368730441

`∩[A020173(n+1), A122780(n+1)]`
-/

namespace A083734.P17972832864368730441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P17972832864368730441

/-! ## A083734.P10468086745221009612

`∩[A020173(n+1), A351336(n+1)]`
-/

namespace A083734.P10468086745221009612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083734.P10468086745221009612

/-!
# A083735: Pseudoprimes to bases 3 and 7.

The programs for A083735, there is no canonical definition to state claims against.
-/

/-! ## A083735.P6300273420607860725

`∩[A005935(n+1), A005938(n+1)]`
-/

namespace A083735.P6300273420607860725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P6300273420607860725

/-! ## A083735.P7441883343705043792

`∩[A005938(n+1), A263239(n+1)]`
-/

namespace A083735.P7441883343705043792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P7441883343705043792

/-! ## A083735.P2789559986023055029

`∩[A005938(n+1), A351336(n+1)]`
-/

namespace A083735.P2789559986023055029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P2789559986023055029

/-! ## A083735.P7637994122545828845

`∩[A005935(n+1), A020191(n+1)]`
-/

namespace A083735.P7637994122545828845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P7637994122545828845

/-! ## A083735.P5874283501374455793

`∩[A020191(n+1), A122780(n+1)]`
-/

namespace A083735.P5874283501374455793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P5874283501374455793

/-! ## A083735.P7473884882887291478

`∩[A020191(n+1), A263239(n+1)]`
-/

namespace A083735.P7473884882887291478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P7473884882887291478

/-! ## A083735.P14908523893976079447

`∩[A020191(n+1), A351336(n+1)]`
-/

namespace A083735.P14908523893976079447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P14908523893976079447

/-! ## A083735.P25242191018228864

`∩[A005935(n+1), A020149(n+1)]`
-/

namespace A083735.P25242191018228864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P25242191018228864

/-! ## A083735.P6281012137881159957

`∩[A005938(n+1), A020149(n+1)]`
-/

namespace A083735.P6281012137881159957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P6281012137881159957

/-! ## A083735.P7723975410484010479

`∩[A020149(n+1), A020191(n+1)]`
-/

namespace A083735.P7723975410484010479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P7723975410484010479

/-! ## A083735.P7507805865207697153

`∩[A020149(n+1), A122780(n+1)]`
-/

namespace A083735.P7507805865207697153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P7507805865207697153

/-! ## A083735.P1473257893729705399

`∩[A020149(n+1), A122784(n+1)]`
-/

namespace A083735.P1473257893729705399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P1473257893729705399

/-! ## A083735.P16433152528784040790

`∩[A020149(n+1), A351336(n+1)]`
-/

namespace A083735.P16433152528784040790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083735.P16433152528784040790

/-!
# A083736: Pseudoprimes to bases 2,5 and 7.

The programs for A083736, there is no canonical definition to state claims against.
-/

/-! ## A083736.P6520910965968852822

`∩[A083732(n+1), A083733(n+1)]`
-/

namespace A083736.P6520910965968852822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P6520910965968852822

/-! ## A083736.P12882883044919819663

`∩[A005938(n+1), A083732(n+1)]`
-/

namespace A083736.P12882883044919819663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P12882883044919819663

/-! ## A083736.P15337903615089557817

`∩[A005936(n+1), A083733(n+1)]`
-/

namespace A083736.P15337903615089557817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P15337903615089557817

/-! ## A083736.P14590236538965638766

`∩[A005939(n+1), A083733(n+1)]`
-/

namespace A083736.P14590236538965638766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P14590236538965638766

/-! ## A083736.P15061806600472690527

`∩[A020148(n+1), A083733(n+1)]`
-/

namespace A083736.P15061806600472690527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P15061806600472690527

/-! ## A083736.P13288411578393238422

`∩[A020142(n+1), A083732(n+1)]`
-/

namespace A083736.P13288411578393238422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P13288411578393238422

/-! ## A083736.P13299471505921706178

`∩[A020208(n+1), A083733(n+1)]`
-/

namespace A083736.P13299471505921706178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P13299471505921706178

/-! ## A083736.P11191114744500897068

`∩[A020168(n+1), A083733(n+1)]`
-/

namespace A083736.P11191114744500897068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P11191114744500897068

/-! ## A083736.P16512977901288982961

`∩[A020198(n+1), A083732(n+1)]`
-/

namespace A083736.P16512977901288982961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P16512977901288982961

/-! ## A083736.P7164031278187569313

`∩[A020198(n+1), A083733(n+1)]`
-/

namespace A083736.P7164031278187569313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P7164031278187569313

/-! ## A083736.P1791534546363983520

`∩[A020184(n+1), A083732(n+1)]`
-/

namespace A083736.P1791534546363983520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P1791534546363983520

/-! ## A083736.P11904019376993336036

`∩[A020163(n+1), A083732(n+1)]`
-/

namespace A083736.P11904019376993336036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P11904019376993336036

/-! ## A083736.P820841934787146588

`∩[A020163(n+1), A083733(n+1)]`
-/

namespace A083736.P820841934787146588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083736.P820841934787146588

/-!
# A083737: Pseudoprimes to bases 2, 3 and 5.

The programs for A083737, there is no canonical definition to state claims against.
-/

/-! ## A083737.P9923037227382161098

`∩[A083732(n+1), A083734(n+1)]`
-/

namespace A083737.P9923037227382161098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P9923037227382161098

/-! ## A083737.P2258786449077734152

`∩[A001567(n+1), A083734(n+1)]`
-/

namespace A083737.P2258786449077734152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P2258786449077734152

/-! ## A083737.P17737153197886899997

`∩[A005935(n+1), A083732(n+1)]`
-/

namespace A083737.P17737153197886899997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P17737153197886899997

/-! ## A083737.P15786343463880537960

`∩[A005936(n+1), A052155(n+1)]`
-/

namespace A083737.P15786343463880537960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P15786343463880537960

/-! ## A083737.P3892598610105951316

`∩[A052155(n+1), A083732(n+1)]`
-/

namespace A083737.P3892598610105951316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P3892598610105951316

/-! ## A083737.P717176912522878555

`∩[A052155(n+1), A083734(n+1)]`
-/

namespace A083737.P717176912522878555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P717176912522878555

/-! ## A083737.P5278881921214118210

`∩[A083734(n+1), A127073(n+1)]`
-/

namespace A083737.P5278881921214118210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P5278881921214118210

/-! ## A083737.P8887311046823660847

`∩[A083734(n+1), A130074(n+1)]`
-/

namespace A083737.P8887311046823660847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P8887311046823660847

/-! ## A083737.P14853877507123979690

`∩[A083732(n+1), A318761(n+1)]`
-/

namespace A083737.P14853877507123979690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P14853877507123979690

/-! ## A083737.P3385595974593026539

`∩[A083734(n+1), A318761(n+1)]`
-/

namespace A083737.P3385595974593026539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P3385595974593026539

/-! ## A083737.P17857260892418996045

`∩[A000864(n+1), A052155(n+1)]`
-/

namespace A083737.P17857260892418996045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P17857260892418996045

/-! ## A083737.P9316681561124252878

`∩[A000864(n+1), A083734(n+1)]`
-/

namespace A083737.P9316681561124252878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P9316681561124252878

/-! ## A083737.P3849684648633525168

`∩[A000864(n+1), A127073(n+1)]`
-/

namespace A083737.P3849684648633525168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P3849684648633525168

/-! ## A083737.P15704504122796792364

`∩[A073631(n+1), A083732(n+1)]`
-/

namespace A083737.P15704504122796792364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P15704504122796792364

/-! ## A083737.P9981360609088770911

`∩[A073631(n+1), A083734(n+1)]`
-/

namespace A083737.P9981360609088770911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P9981360609088770911

/-! ## A083737.P11474647108628499144

`∩[A066488(n+1), A083734(n+1)]`
-/

namespace A083737.P11474647108628499144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P11474647108628499144

/-! ## A083737.P6334636393228747805

`∩[A083732(n+1), A263239(n+1)]`
-/

namespace A083737.P6334636393228747805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P6334636393228747805

/-! ## A083737.P1637114095134625360

`∩[A005937(n+1), A083732(n+1)]`
-/

namespace A083737.P1637114095134625360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P1637114095134625360

/-! ## A083737.P3446370896118894405

`∩[A005937(n+1), A083734(n+1)]`
-/

namespace A083737.P3446370896118894405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P3446370896118894405

/-! ## A083737.P3577869528589938592

`∩[A083734(n+1), A121014(n+1)]`
-/

namespace A083737.P3577869528589938592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083737.P3577869528589938592

/-!
# A083738: Pseudoprimes to bases 2,3 and 7.

The programs for A083738, there is no canonical definition to state claims against.
-/

/-! ## A083738.P9372963376204015591

`∩[A083733(n+1), A083735(n+1)]`
-/

namespace A083738.P9372963376204015591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P9372963376204015591

/-! ## A083738.P7064214931148292460

`∩[A001567(n+1), A083735(n+1)]`
-/

namespace A083738.P7064214931148292460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P7064214931148292460

/-! ## A083738.P3241780625092660998

`∩[A005935(n+1), A083733(n+1)]`
-/

namespace A083738.P3241780625092660998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P3241780625092660998

/-! ## A083738.P4517553258894186175

`∩[A005938(n+1), A052155(n+1)]`
-/

namespace A083738.P4517553258894186175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P4517553258894186175

/-! ## A083738.P5359908761213750485

`∩[A052155(n+1), A083733(n+1)]`
-/

namespace A083738.P5359908761213750485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P5359908761213750485

/-! ## A083738.P7437194368434938095

`∩[A052155(n+1), A083735(n+1)]`
-/

namespace A083738.P7437194368434938095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P7437194368434938095

/-! ## A083738.P3574005716224656091

`∩[A083735(n+1), A127073(n+1)]`
-/

namespace A083738.P3574005716224656091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P3574005716224656091

/-! ## A083738.P1746493741503812579

`∩[A083733(n+1), A318761(n+1)]`
-/

namespace A083738.P1746493741503812579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P1746493741503812579

/-! ## A083738.P8405137003805873930

`∩[A083735(n+1), A318761(n+1)]`
-/

namespace A083738.P8405137003805873930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P8405137003805873930

/-! ## A083738.P10679530117001323132

`∩[A073631(n+1), A083733(n+1)]`
-/

namespace A083738.P10679530117001323132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P10679530117001323132

/-! ## A083738.P14397900111892575818

`∩[A073631(n+1), A083735(n+1)]`
-/

namespace A083738.P14397900111892575818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P14397900111892575818

/-! ## A083738.P12746903923969283909

`∩[A066488(n+1), A083735(n+1)]`
-/

namespace A083738.P12746903923969283909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P12746903923969283909

/-! ## A083738.P7113634026869655459

`∩[A083733(n+1), A263239(n+1)]`
-/

namespace A083738.P7113634026869655459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P7113634026869655459

/-! ## A083738.P4111911720379903719

`∩[A005937(n+1), A083733(n+1)]`
-/

namespace A083738.P4111911720379903719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P4111911720379903719

/-! ## A083738.P15666952867618825377

`∩[A005937(n+1), A083735(n+1)]`
-/

namespace A083738.P15666952867618825377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P15666952867618825377

/-! ## A083738.P18339450047367580656

`∩[A083733(n+1), A351336(n+1)]`
-/

namespace A083738.P18339450047367580656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P18339450047367580656

/-! ## A083738.P8399090787258695265

`∩[A020146(n+1), A083735(n+1)]`
-/

namespace A083738.P8399090787258695265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P8399090787258695265

/-! ## A083738.P576341679689278657

`∩[A020142(n+1), A052155(n+1)]`
-/

namespace A083738.P576341679689278657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P576341679689278657

/-! ## A083738.P4015109260098886553

`∩[A020142(n+1), A083735(n+1)]`
-/

namespace A083738.P4015109260098886553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P4015109260098886553

/-! ## A083738.P1483367781103841971

`∩[A020224(n+1), A083733(n+1)]`
-/

namespace A083738.P1483367781103841971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083738.P1483367781103841971

/-!
# A083739: Pseudoprimes to bases 2, 3, 5 and 7.

The programs for A083739, there is no canonical definition to state claims against.
-/

/-! ## A083739.P10498834714096497261

`∩[A083732(n+1), A083735(n+1)]`
-/

namespace A083739.P10498834714096497261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P10498834714096497261

/-! ## A083739.P12450165750050915076

`∩[A083732(n+1), A083738(n+1)]`
-/

namespace A083739.P12450165750050915076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P12450165750050915076

/-! ## A083739.P1709753082197926542

`∩[A083732(n+1), A083740(n+1)]`
-/

namespace A083739.P1709753082197926542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P1709753082197926542

/-! ## A083739.P16658543506324975471

`∩[A083733(n+1), A083734(n+1)]`
-/

namespace A083739.P16658543506324975471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P16658543506324975471

/-! ## A083739.P11268810580147976805

`∩[A083733(n+1), A083740(n+1)]`
-/

namespace A083739.P11268810580147976805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P11268810580147976805

/-! ## A083739.P5075933092113126252

`∩[A083734(n+1), A083736(n+1)]`
-/

namespace A083739.P5075933092113126252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P5075933092113126252

/-! ## A083739.P12840320667122824161

`∩[A083734(n+1), A083738(n+1)]`
-/

namespace A083739.P12840320667122824161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P12840320667122824161

/-! ## A083739.P11712930456149823716

`∩[A083735(n+1), A083736(n+1)]`
-/

namespace A083739.P11712930456149823716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P11712930456149823716

/-! ## A083739.P7727593548747330945

`∩[A083736(n+1), A083738(n+1)]`
-/

namespace A083739.P7727593548747330945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P7727593548747330945

/-! ## A083739.P9873747653685556910

`∩[A083736(n+1), A083740(n+1)]`
-/

namespace A083739.P9873747653685556910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P9873747653685556910

/-! ## A083739.P13409530855501518469

`∩[A083738(n+1), A083740(n+1)]`
-/

namespace A083739.P13409530855501518469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P13409530855501518469

/-! ## A083739.P8405671543241897851

`∩[A083733(n+1), A083737(n+1)]`
-/

namespace A083739.P8405671543241897851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P8405671543241897851

/-! ## A083739.P12069765400940499038

`∩[A083735(n+1), A083737(n+1)]`
-/

namespace A083739.P12069765400940499038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P12069765400940499038

/-! ## A083739.P13580908574890700252

`∩[A083736(n+1), A083737(n+1)]`
-/

namespace A083739.P13580908574890700252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P13580908574890700252

/-! ## A083739.P14149224301571621209

`∩[A083737(n+1), A083738(n+1)]`
-/

namespace A083739.P14149224301571621209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P14149224301571621209

/-! ## A083739.P12369404803584499224

`∩[A083737(n+1), A083740(n+1)]`
-/

namespace A083739.P12369404803584499224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P12369404803584499224

/-! ## A083739.P18130561076951480545

`∩[A005938(n+1), A083737(n+1)]`
-/

namespace A083739.P18130561076951480545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P18130561076951480545

/-! ## A083739.P12891833077306759956

`∩[A005936(n+1), A083738(n+1)]`
-/

namespace A083739.P12891833077306759956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P12891833077306759956

/-! ## A083739.P17418779154995094637

`∩[A001567(n+1), A083740(n+1)]`
-/

namespace A083739.P17418779154995094637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P17418779154995094637

/-! ## A083739.P973653004357805701

`∩[A005935(n+1), A083736(n+1)]`
-/

namespace A083739.P973653004357805701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083739.P973653004357805701

/-!
# A083740: Pseudoprimes to bases 3,5 and 7.

The programs for A083740, there is no canonical definition to state claims against.
-/

/-! ## A083740.P11482137677765934302

`∩[A083734(n+1), A083735(n+1)]`
-/

namespace A083740.P11482137677765934302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P11482137677765934302

/-! ## A083740.P5754955244739086531

`∩[A005938(n+1), A083734(n+1)]`
-/

namespace A083740.P5754955244739086531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P5754955244739086531

/-! ## A083740.P7245416872321525189

`∩[A005936(n+1), A083735(n+1)]`
-/

namespace A083740.P7245416872321525189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P7245416872321525189

/-! ## A083740.P11628803165381955762

`∩[A020143(n+1), A083735(n+1)]`
-/

namespace A083740.P11628803165381955762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P11628803165381955762

/-! ## A083740.P11247172243603613149

`∩[A020173(n+1), A083735(n+1)]`
-/

namespace A083740.P11247172243603613149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P11247172243603613149

/-! ## A083740.P639534012256336402

`∩[A020191(n+1), A083734(n+1)]`
-/

namespace A083740.P639534012256336402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P639534012256336402

/-! ## A083740.P13120711187946500343

`∩[A020149(n+1), A083734(n+1)]`
-/

namespace A083740.P13120711187946500343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P13120711187946500343

/-! ## A083740.P813167451684626330

`∩[A020163(n+1), A083734(n+1)]`
-/

namespace A083740.P813167451684626330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P813167451684626330

/-! ## A083740.P13802851622366054203

`∩[A020163(n+1), A083735(n+1)]`
-/

namespace A083740.P13802851622366054203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083740.P13802851622366054203

/-!
# A083741: a(n) = L(n) + a(L(n)), where L(n) = n - 2^floor(log_2(n)) (A053645).

The programs for A083741, the canonical program `A083741.P6552315304162526779` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083741 has offset 0).

The definition of A083741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083741.P10451521293765828819

`((n-1)*A298011(n))%round(acot(n+1)+n)`
-/

namespace A083741.P10451521293765828819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 1) * A298011 n) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)))

end

end A083741.P10451521293765828819

namespace A083741

/-- `((n-1)*A298011(n))%round(acot(n+1)+n)` -/
def P10451521293765828819.Spec : Prop :=
  ∀ n, P10451521293765828819.a n = A083741 n

end A083741

/-! ## A083741.P6552315304162526779

`A245788(n)-A298011(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083741

/-- `A245788(n)-A298011(n)` -/
def P6552315304162526779.Spec : Prop :=
  ∀ n, P6552315304162526779.a n = A083741 n

theorem P6552315304162526779.correct : P6552315304162526779.Spec := by
  intro n
  simp only [A083741]

end A083741

/-! ## A083741.P14330306330066180566

`A298043(xor(n, A053644(n)))`
-/

namespace A083741.P14330306330066180566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 (Int.xor (n : ℤ) (A053644 n)).toNat

end

end A083741.P14330306330066180566

namespace A083741

/-- `A298043(xor(n, A053644(n)))` -/
def P14330306330066180566.Spec : Prop :=
  ∀ n, P14330306330066180566.a n = A083741 n

end A083741

/-! ## A083741.P7776453454190060907

`A011371(n)-A397672(n+1)`
-/

namespace A083741.P7776453454190060907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A397672 (n + 1)

end

end A083741.P7776453454190060907

namespace A083741

/-- `A011371(n)-A397672(n+1)` -/
def P7776453454190060907.Spec : Prop :=
  ∀ n, P7776453454190060907.a n = A083741 n

theorem P7776453454190060907.correct : P7776453454190060907.Spec := by
  intro n
  simp only [A083741, Nat.add_sub_cancel, A083741.P7776453454190060907.a, A083741.P6552315304162526779.a, A011371, A011371.P8892659874704383252.a, A245788, A245788.P10796889760857720878.f2, A245788.P10796889760857720878.f1, A245788.P10796889760857720878.a, A298011, A298011.P12682259250450599023.a, A397672, A397672.P3807838670338666769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083741

/-! ## A083741.P11137275697673847644

`A053645(n)+a(A053645(n))` with `a(0)=0`
-/

namespace A083741.P11137275697673847644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053645 n + a (A053645 n).toNat

end

end A083741.P11137275697673847644

namespace A083741

/-- `A053645(n)+a(A053645(n))` -/
def P11137275697673847644.Spec : Prop :=
  ∀ n, P11137275697673847644.a n = A083741 n

end A083741

/-! ## A083741.P15129309009733265174

`n*A000120(n)-A298011(n)`
-/

namespace A083741.P15129309009733265174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A298011 n

end

end A083741.P15129309009733265174

namespace A083741

/-- `n*A000120(n)-A298011(n)` -/
def P15129309009733265174.Spec : Prop :=
  ∀ n, P15129309009733265174.a n = A083741 n

end A083741

/-! ## A083741.P9058384864364047879

`A298043(n)-n`
-/

namespace A083741.P9058384864364047879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 n - (n : ℤ)

end

end A083741.P9058384864364047879

namespace A083741

/-- `A298043(n)-n` -/
def P9058384864364047879.Spec : Prop :=
  ∀ n, P9058384864364047879.a n = A083741 n

end A083741

/-! ## A083741.P4104991763870866842

`A298043(n)%A028310(n)`
-/

namespace A083741.P4104991763870866842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298043 n) (A028310 n)

end

end A083741.P4104991763870866842

namespace A083741

/-- `A298043(n)%A028310(n)` -/
def P4104991763870866842.Spec : Prop :=
  ∀ n, P4104991763870866842.a n = A083741 n

end A083741

/-! ## A083741.P12268830310603573690

`abs(A298043(n)+A001489(n))`
-/

namespace A083741.P12268830310603573690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298043 n + A001489 n|

end

end A083741.P12268830310603573690

namespace A083741

/-- `abs(A298043(n)+A001489(n))` -/
def P12268830310603573690.Spec : Prop :=
  ∀ n, P12268830310603573690.a n = A083741 n

end A083741

/-! ## A083741.P2251394034613132357

`A298043(A164089(2*n+1))`
-/

namespace A083741.P2251394034613132357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 (A164089 (2 * n + 1)).toNat

end

end A083741.P2251394034613132357

namespace A083741

/-- `A298043(A164089(2*n+1))` -/
def P2251394034613132357.Spec : Prop :=
  ∀ n, P2251394034613132357.a n = A083741 n

end A083741

/-! ## A083741.P2355379263049630882

`A321171(2*n+1)%(n+1)`
-/

namespace A083741.P2355379263049630882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321171 (2 * n + 1)) (n + 1 : ℤ)

end

end A083741.P2355379263049630882

namespace A083741

/-- `A321171(2*n+1)%(n+1)` -/
def P2355379263049630882.Spec : Prop :=
  ∀ n, P2355379263049630882.a n = A083741 n

end A083741

/-!
# A083742: First differences of A006282.

The programs for A083742, the canonical program `A083742.P9534833936880584863` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083742 has offset 0).

The definition of A083742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083742.P10398670431397766447

`Δ[A006282(A004275(n+1)-n)]`
-/

namespace A083742.P10398670431397766447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P10398670431397766447

namespace A083742

/-- `Δ[A006282(A004275(n+1)-n)]` -/
def P10398670431397766447.Spec : Prop :=
  ∀ n, P10398670431397766447.a n = A083742 n

end A083742

/-! ## A083742.P9534833936880584863

`A073642(A036044(n))+A000120(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083742

/-- `A073642(A036044(n))+A000120(n)` -/
def P9534833936880584863.Spec : Prop :=
  ∀ n, P9534833936880584863.a n = A083742 n

theorem P9534833936880584863.correct : P9534833936880584863.Spec := by
  intro n
  simp only [A083742]

end A083742

/-! ## A083742.P14804195175540190404

`Δ[A006282(A008619(A004275(n)))]`
-/

namespace A083742.P14804195175540190404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P14804195175540190404

namespace A083742

/-- `Δ[A006282(A008619(A004275(n)))]` -/
def P14804195175540190404.Spec : Prop :=
  ∀ n, P14804195175540190404.a n = A083742 n

end A083742

/-! ## A083742.P5503940304244069633

`A006282(2*(n+1))-(A006282(2*n+1)+1)`
-/

namespace A083742.P5503940304244069633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (2 * (n + 1)) - (A006282 (2 * n + 1) + 1)

end

end A083742.P5503940304244069633

namespace A083742

/-- `A006282(2*(n+1))-(A006282(2*n+1)+1)` -/
def P5503940304244069633.Spec : Prop :=
  ∀ n, P5503940304244069633.a n = A083742 n

end A083742

/-! ## A083742.P14764245153405819789

`Δ[A006282(A008619(A004273(n)))]`
-/

namespace A083742.P14764245153405819789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P14764245153405819789

namespace A083742

/-- `Δ[A006282(A008619(A004273(n)))]` -/
def P14764245153405819789.Spec : Prop :=
  ∀ n, P14764245153405819789.a n = A083742 n

end A083742

/-! ## A083742.P7257007785592466456

`A006282(n+1)-A006282(A065033(2*n))`
-/

namespace A083742.P7257007785592466456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (n + 1) - A006282 (A065033 (2 * n)).toNat

end

end A083742.P7257007785592466456

namespace A083742

/-- `A006282(n+1)-A006282(A065033(2*n))` -/
def P7257007785592466456.Spec : Prop :=
  ∀ n, P7257007785592466456.a n = A083742 n

end A083742

/-! ## A083742.P17765931149831806004

`Δ[A006282(A065033(2*n))]`
-/

namespace A083742.P17765931149831806004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P17765931149831806004

namespace A083742

/-- `Δ[A006282(A065033(2*n))]` -/
def P17765931149831806004.Spec : Prop :=
  ∀ n, P17765931149831806004.a n = A083742 n

end A083742

/-! ## A083742.P2261265297189674334

`A073642(A059894(2*n+1))`
-/

namespace A083742.P2261265297189674334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A059894 (2 * n + 1)).toNat

end

end A083742.P2261265297189674334

namespace A083742

/-- `A073642(A059894(2*n+1))` -/
def P2261265297189674334.Spec : Prop :=
  ∀ n, P2261265297189674334.a n = A083742 n

end A083742

/-! ## A083742.P612961408693861565

`Δ[A006282(A103627(A008486(n)))]`
-/

namespace A083742.P612961408693861565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A103627 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P612961408693861565

namespace A083742

/-- `Δ[A006282(A103627(A008486(n)))]` -/
def P612961408693861565.Spec : Prop :=
  ∀ n, P612961408693861565.a n = A083742 n

end A083742

/-! ## A083742.P17602856916648049195

`Δ[A006282(A003056(A000124(n)))]`
-/

namespace A083742.P17602856916648049195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006282 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083742.P17602856916648049195

namespace A083742

/-- `Δ[A006282(A003056(A000124(n)))]` -/
def P17602856916648049195.Spec : Prop :=
  ∀ n, P17602856916648049195.a n = A083742 n

end A083742

/-!
# A083743: a(1) = 1; if a(n-1) + n is prime then a(n) = a(n-1) + n, else a(n) = a(n-1).

The programs for A083743, there is no canonical definition to state claims against.
-/

/-! ## A083743.P15059957765141827613

`A006530((a(n-1)+1+n)*a(n-1))` with `a(0)=1`
-/

namespace A083743.P15059957765141827613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((a (n - 1) + 1 + (n : ℤ)) * a (n - 1)).toNat

end

end A083743.P15059957765141827613

/-! ## A083743.P6005730704048896782

`A006530(lcm(a(n-1)+1+n, a(n-1)))` with `a(0)=1`
-/

namespace A083743.P6005730704048896782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (Int.lcm (a (n - 1) + 1 + (n : ℤ)) (a (n - 1)))

end

end A083743.P6005730704048896782

/-! ## A083743.P9504017871800040686

`A006530((2*n-(n-1-a(n-1)))*a(n-1))` with `a(0)=1`
-/

namespace A083743.P9504017871800040686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (((2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1))) * a (n - 1)).toNat

end

end A083743.P9504017871800040686

/-! ## A083743.P17146581836389399006

`∑[(n+1)*A211487(A048675(3*n+5))]`
-/

namespace A083743.P17146581836389399006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211487 (A048675 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083743.P17146581836389399006

/-!
# A083744: a(1) = 1; if a(n-1) + n is composite then a(n) = a(n-1) + n, else a(n) = a(n-1).

The programs for A083744, the canonical program `A083744.P1358276560594896718` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083744 has offset 1).

The definition of A083744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083744.P1358276560594896718

`n+1+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=8, a(4)=8, a(5)=14, a(6)=21, a(7)=21`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083744

/-- `n+1+a(n-1)` -/
def P1358276560594896718.Spec : Prop :=
  ∀ n, (P1358276560594896718.a n : ℤ) = A083744 (n + 1)

theorem P1358276560594896718.correct : P1358276560594896718.Spec := by
  intro n
  simp only [A083744, Nat.add_sub_cancel]

end A083744

/-! ## A083744.P13886984693105494875

`∑[(n+1)*A090678(C(8, n))]`
-/

namespace A083744.P13886984693105494875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090678 (Nat.choose 8 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P13886984693105494875

namespace A083744

/-- `∑[(n+1)*A090678(C(8, n))]` -/
def P13886984693105494875.Spec : Prop :=
  ∀ n, P13886984693105494875.a n = A083744 (n + 1)

end A083744

/-! ## A083744.P4277707067415363612

`∑[C(n+1, A099575(C(8, n))²)]`
-/

namespace A083744.P4277707067415363612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A099575 (Nat.choose 8 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P4277707067415363612

namespace A083744

/-- `∑[C(n+1, A099575(C(8, n))²)]` -/
def P4277707067415363612.Spec : Prop :=
  ∀ n, (P4277707067415363612.a n : ℤ) = A083744 (n + 1)

end A083744

/-! ## A083744.P3611656687007907114

`∑[(n+1)*ceil(A110658(n)/(n+1))]`
-/

namespace A083744.P3611656687007907114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A110658 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P3611656687007907114

namespace A083744

/-- `∑[(n+1)*ceil(A110658(n)/(n+1))]` -/
def P3611656687007907114.Spec : Prop :=
  ∀ n, P3611656687007907114.a n = A083744 (n + 1)

end A083744

/-! ## A083744.P8802463294571891690

`∑[(n+1)*A005171(A303711(C(8, n)+1)+1)]`
-/

namespace A083744.P8802463294571891690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A303711 (Nat.choose 8 n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P8802463294571891690

namespace A083744

/-- `∑[(n+1)*A005171(A303711(C(8, n)+1)+1)]` -/
def P8802463294571891690.Spec : Prop :=
  ∀ n, P8802463294571891690.a n = A083744 (n + 1)

end A083744

/-! ## A083744.P14770084006599312422

`∑[(n+1)*A059841(C(3, A163336(n+1)))]`
-/

namespace A083744.P14770084006599312422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059841 (Nat.choose 3 (A163336 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P14770084006599312422

namespace A083744

/-- `∑[(n+1)*A059841(C(3, A163336(n+1)))]` -/
def P14770084006599312422.Spec : Prop :=
  ∀ n, P14770084006599312422.a n = A083744 (n + 1)

end A083744

/-!
# A083745: a(1) = 1; if a(n-1) + n is composite or 1 then a(n) = a(n-1) + n, else a(n) = a(n-1) - n.

The programs for A083745, there is no canonical definition to state claims against.
-/

/-! ## A083745.P5640143796141138883

`∑[(n+1)*A008683(A001075(n))]`
-/

namespace A083745.P5640143796141138883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A001075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083745.P5640143796141138883

/-! ## A083745.P2214158123580252348

`∑[(n+1)*A008836(A007051(n))]`
-/

namespace A083745.P2214158123580252348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (A007051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083745.P2214158123580252348

/-! ## A083745.P8881208013981166379

`∑[(n+1)*A008683(A002531(2*n))]`
-/

namespace A083745.P8881208013981166379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A002531 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083745.P8881208013981166379

/-! ## A083745.P1917518452388400093

`∑[A067080(n+1)/A008683(A001075(n))]`
-/

namespace A083745.P1917518452388400093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067080 (n + 1) : ℚ) / (A008683 (A001075 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083745.P1917518452388400093

/-! ## A083745.P8273775791166702269

`∑[A296756(n+1)/A008683(A001075(n))]`
-/

namespace A083745.P8273775791166702269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296756 (n + 1) : ℚ) / (A008683 (A001075 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083745.P8273775791166702269

/-!
# A083746: a(1) = 1, a(2) = 2; for n>2, a(n) = 3*(n-2)*(n-2)!.

The programs for A083746, there is no canonical definition to state claims against.
-/

/-! ## A083746.P16562384867699490417

`Δ[(n-1)*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A083746.P16562384867699490417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083746.P16562384867699490417

/-! ## A083746.P16423192468778218592

`Δ[a(n-1)*A023443(n)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A083746.P16423192468778218592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) * A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083746.P16423192468778218592

/-! ## A083746.P2058115996275432315

`record[A028242(A019426(n))*A081123(n)]`
-/

namespace A083746.P2058115996275432315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A019426 n).toNat * A081123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083746.P2058115996275432315

/-! ## A083746.P4611727087051922244

`A094258(A028310(n))*A193739(A055998(n))`
-/

namespace A083746.P4611727087051922244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (A028310 n).toNat * A193739 (A055998 n).toNat

end

end A083746.P4611727087051922244

/-!
# A083747: Smallest number m >= 0 such that n followed by m ones yields a prime; a(p) = -1 if no such m exists.

The programs for A083747, there is no canonical definition to state claims against.
-/

/-! ## A083747.P13660150353127409653

`∏{p}[n+1, C(#%n, #)]*A069568(n+1)`
-/

namespace A083747.P13660150353127409653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) * A069568 (n + 1)

end

end A083747.P13660150353127409653

/-! ## A083747.P13631411616604901972

`A005171(n+1)*A069568(n+1)`
-/

namespace A083747.P13631411616604901972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A069568 (n + 1)

end

end A083747.P13631411616604901972

/-! ## A083747.P10889337389396553166

`(1-A010051(n+1))*A069568(n+1)`
-/

namespace A083747.P10889337389396553166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A069568 (n + 1)

end

end A083747.P10889337389396553166

/-! ## A083747.P9098907232252488412

`char[A018252(n+1)-1]*A069568(n+1)`
-/

namespace A083747.P9098907232252488412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A069568 (n + 1)

end

end A083747.P9098907232252488412

/-! ## A083747.P14617108263890735404

`char[comp[A000040(n+1)]-1]*A069568(n+1)`
-/

namespace A083747.P14617108263890735404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A069568 (n + 1)

end

end A083747.P14617108263890735404

/-! ## A083747.P15495976219749384920

`A069568(n+1)%A001845(1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A083747.P15495976219749384920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069568 (n + 1)) (A001845 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat)

end

end A083747.P15495976219749384920

/-! ## A083747.P12203075105485879187

`A000007(A049084(n+1))*A069568(n+1)`
-/

namespace A083747.P12203075105485879187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049084 (n + 1)).toNat * A069568 (n + 1)

end

end A083747.P12203075105485879187

/-! ## A083747.P2786988195145159192

`A069568(n+1)*A136400(A039651(n+1))`
-/

namespace A083747.P2786988195145159192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069568 (n + 1) * A136400 (A039651 (n + 1)).toNat

end

end A083747.P2786988195145159192

/-! ## A083747.P15341341723683344155

`A069568(n+1)%A038338(A067565(n+1))`
-/

namespace A083747.P15341341723683344155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069568 (n + 1)) (A038338 (A067565 (n + 1)).toNat)

end

end A083747.P15341341723683344155

/-! ## A083747.P8791436261210253323

`and(-A005171(A064614(n+1)), A069568(n+1))`
-/

namespace A083747.P8791436261210253323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A005171 (A064614 (n + 1)).toNat) (A069568 (n + 1))

end

end A083747.P8791436261210253323

/-! ## A083747.P7188833648405802968

`A007599(C(2, A000005(n+1)))*A069568(n+1)`
-/

namespace A083747.P7188833648405802968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (Nat.choose 2 (A000005 (n + 1)).toNat) * A069568 (n + 1)

end

end A083747.P7188833648405802968

/-! ## A083747.P9000999432545548407

`A069568(n+1)*A090464(n+1)/A363922(n+1)`
-/

namespace A083747.P9000999432545548407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069568 (n + 1) * A090464 (n + 1) : ℚ) / (A363922 (n + 1) : ℚ)

end

end A083747.P9000999432545548407

/-! ## A083747.P5195971999013702012

`A069568(n+1)*A090584(n+1)/A372262(n+1)`
-/

namespace A083747.P5195971999013702012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069568 (n + 1) * A090584 (n + 1) : ℚ) / (A372262 (n + 1) : ℚ)

end

end A083747.P5195971999013702012

/-! ## A083747.P10928537721209045547

`A069568(n+1)*A090465(n+1)/A373201(n+1)`
-/

namespace A083747.P10928537721209045547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069568 (n + 1) * A090465 (n + 1) : ℚ) / (A373201 (n + 1) : ℚ)

end

end A083747.P10928537721209045547

/-!
# A083749: Brilliant star numbers: semiprimes of the form 6n^2 - 6n + 1 such that both prime factors have the same number of decimal digits.

The programs for A083749, there is no canonical definition to state claims against.
-/

/-! ## A083749.P12205442739502453393

`∩[A078972(n+1), A322462(n)]`
-/

namespace A083749.P12205442739502453393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083749.P12205442739502453393

/-! ## A083749.P14663236624948587775

`∩[A003154(n+1), A078972(n+1)]`
-/

namespace A083749.P14663236624948587775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083749.P14663236624948587775

/-! ## A083749.P10292279918700049594

`∩[A078972(n+1), A218172(n+1)]`
-/

namespace A083749.P10292279918700049594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083749.P10292279918700049594

/-! ## A083749.P15922904568076023164

`∩[A078972(n+1), A033570(n)+n]`
-/

namespace A083749.P15922904568076023164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083749.P15922904568076023164

/-! ## A083749.P13358203678020258365

`∩[A000326(2*n+1)+n, A078972(n+2)]`
-/

namespace A083749.P13358203678020258365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083749.P13358203678020258365

/-!
# A083751: Number of partitions of n into >= 2 parts and with minimum part >= 2.

The programs for A083751, there is no canonical definition to state claims against.
-/

/-! ## A083751.P9808512666937172162

`A187219(n+1)-1`
-/

namespace A083751.P9808512666937172162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) - 1

end

end A083751.P9808512666937172162

/-! ## A083751.P18342901920555890091

`A002865(abs(1-n)+2)-1`
-/

namespace A083751.P18342901920555890091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A083751.P18342901920555890091

/-! ## A083751.P4439232462439173460

`A085811(A009005(n+1))-1`
-/

namespace A083751.P4439232462439173460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A009005 (n + 1)).toNat - 1

end

end A083751.P4439232462439173460

/-! ## A083751.P5755587103855587327

`A232697(A028310(n)+1)-2`
-/

namespace A083751.P5755587103855587327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (A028310 n + 1).toNat - 2

end

end A083751.P5755587103855587327

/-! ## A083751.P2801687834251044049

`A057428(n)+A002865(n+1)`
-/

namespace A083751.P2801687834251044049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A002865 (n + 1)

end

end A083751.P2801687834251044049

/-! ## A083751.P9467007857686566047

`A117298(n+1)-A040001(n)`
-/

namespace A083751.P9467007857686566047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (n + 1) - A040001 n

end

end A083751.P9467007857686566047

/-! ## A083751.P10612948080983046109

`A302698(n+1)+A108572(n+1)`
-/

namespace A083751.P10612948080983046109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302698 (n + 1) + A108572 (n + 1)

end

end A083751.P10612948080983046109

/-! ## A083751.P1406282087550684061

`A000007(n)+A002865(n+1)-1`
-/

namespace A083751.P1406282087550684061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A002865 (n + 1) - 1)

end

end A083751.P1406282087550684061

/-! ## A083751.P17962572340390956305

`A117995(n+1)+1-A040001(n)`
-/

namespace A083751.P17962572340390956305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1) + (1 - A040001 n)

end

end A083751.P17962572340390956305

/-! ## A083751.P12710839167067108821

`A232697(n+1)-A040001(2*n)`
-/

namespace A083751.P12710839167067108821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1) - A040001 (2 * n)

end

end A083751.P12710839167067108821

/-! ## A083751.P6832883999214665372

`A117995(n+1)+A135528(n+1)-1`
-/

namespace A083751.P6832883999214665372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1) + (A135528 (n + 1) - 1)

end

end A083751.P6832883999214665372

/-! ## A083751.P4087775164513432070

`(A002865(n+1)-A185114(n+1))*A185114(n+1)`
-/

namespace A083751.P4087775164513432070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002865 (n + 1) - A185114 (n + 1)) * A185114 (n + 1)

end

end A083751.P4087775164513432070

/-! ## A083751.P14405082306394710370

`Δ[A000094(n+1)]`
-/

namespace A083751.P14405082306394710370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083751.P14405082306394710370

/-! ## A083751.P2508201497131723609

`Δ[A052810(n)]-1`
-/

namespace A083751.P2508201497131723609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A083751.P2508201497131723609

/-! ## A083751.P10663489009444395677

`Δ[A000041(n)-A028310(n)]`
-/

namespace A083751.P10663489009444395677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083751.P10663489009444395677

/-! ## A083751.P17871139140461119382

`A000041(n+1)-A052810(n)`
-/

namespace A083751.P17871139140461119382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A052810 n

end

end A083751.P17871139140461119382

/-! ## A083751.P1770022094784438386

`A000065(n+1)%A000041(n)`
-/

namespace A083751.P1770022094784438386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 (n + 1)) (A000041 n)

end

end A083751.P1770022094784438386

/-! ## A083751.P9746184656343223124

`A000007(n)+Δ[A000041(n)]-1`
-/

namespace A083751.P9746184656343223124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n - 1)

end

end A083751.P9746184656343223124

/-! ## A083751.P8366113011909373202

`Δ[A000041(n)-A004273(n)]+1`
-/

namespace A083751.P8366113011909373202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A083751.P8366113011909373202

/-!
# A083753: Smallest palindromic number with exactly n divisors, or 0 if no such number exists.

The programs for A083753, there is no canonical definition to state claims against.
-/

/-! ## A083753.P6590067836794959578

`(a(n-3)+9)^(n*(n*(n-5)+5)²)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A083753.P6590067836794959578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  (a (n - 3) + 9) ^ ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2 : ℤ)

end

end A083753.P6590067836794959578

/-!
# A083758: Lexicographically earliest infinite sequence of distinct primes such that the concatenation of the initial n terms is a prime for all n >= 1.

The programs for A083758, there is no canonical definition to state claims against.
-/

/-! ## A083758.P196127822833748656

`A000040(A338073(n+1))`
-/

namespace A083758.P196127822833748656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338073 (n + 1)).toNat

end

end A083758.P196127822833748656

/-! ## A083758.P11470878244264055070

`A008578(A338073(n+1)+1)`
-/

namespace A083758.P11470878244264055070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A338073 (n + 1) + 1).toNat

end

end A083758.P11470878244264055070

/-! ## A083758.P6737316291484624635

`A182986(A338073(n+1)+1)`
-/

namespace A083758.P6737316291484624635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A338073 (n + 1) + 1).toNat

end

end A083758.P6737316291484624635

/-! ## A083758.P14294213288262300707

`A158611(A338073(n+1)+2)`
-/

namespace A083758.P14294213288262300707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A338073 (n + 1) + 2).toNat

end

end A083758.P14294213288262300707

/-! ## A083758.P8270474994036338013

`∑{d}[A338073(n+1), A007444(#)]`
-/

namespace A083758.P8270474994036338013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A083758.P8270474994036338013

/-! ## A083758.P16237742071590728792

`A151933(n)+A006005(A338073(n+1))`
-/

namespace A083758.P16237742071590728792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A006005 (A338073 (n + 1)).toNat

end

end A083758.P16237742071590728792

/-! ## A083758.P12117067105597515561

`A008864(A338073(n+1))+A008683(A007918(n+3))`
-/

namespace A083758.P12117067105597515561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A338073 (n + 1)).toNat + A008683 (A007918 (n + 3)).toNat

end

end A083758.P12117067105597515561

/-!
# A083764: n-th row of the following triangle contains n palindromic multiples of n beginning with n. Sequence contains the triangle by rows.

The programs for A083764, there is no canonical definition to state claims against.
-/

/-! ## A083764.P6852858405463503634

`∑[char[∑[n]]]*A083768(n+1)`
-/

namespace A083764.P6852858405463503634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A083768 (n + 1)

end

end A083764.P6852858405463503634

/-! ## A083764.P12250362475122695059

`A083768(n+1)*A113764(n+1)`
-/

namespace A083764.P12250362475122695059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083768 (n + 1) * A113764 (n + 1)

end

end A083764.P12250362475122695059

/-! ## A083764.P14509992512138347834

`A083768(n+1)*A123578(n+1)`
-/

namespace A083764.P14509992512138347834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083768 (n + 1) * A123578 (n + 1)

end

end A083764.P14509992512138347834

/-! ## A083764.P18138364393066176849

`A083768(n+1)*A130146(n+1)`
-/

namespace A083764.P18138364393066176849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083768 (n + 1) * A130146 (n + 1)

end

end A083764.P18138364393066176849

/-! ## A083764.P12605077873792773525

`A000027(A002024(n+1)*A083768(n+1))`
-/

namespace A083764.P12605077873792773525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002024 (n + 1) * A083768 (n + 1)).toNat

end

end A083764.P12605077873792773525

/-!
# A083765: Diagonal of A083764.

The programs for A083765, there is no canonical definition to state claims against.
-/

/-! ## A083765.P11554435820018636653

`A083764(∑[n+1])`
-/

namespace A083765.P11554435820018636653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083765.P11554435820018636653

/-! ## A083765.P4341679187838951836

`record[A083764(∑[comp[12*n]])]`
-/

namespace A083765.P4341679187838951836
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083764 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083765.P4341679187838951836

/-! ## A083765.P9470409513022423771

`(n+1)*A083768(∑[n+1])`
-/

namespace A083765.P9470409513022423771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083765.P9470409513022423771

/-!
# A083766: Row sums of A083764.

The programs for A083766, there is no canonical definition to state claims against.
-/

/-! ## A083766.P4111913857786970574

`(n+1)*A083767(n+1)`
-/

namespace A083766.P4111913857786970574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083767 (n + 1)

end

end A083766.P4111913857786970574

/-! ## A083766.P4897341317401391518

`A083767(n+1)*A291769(n)`
-/

namespace A083766.P4897341317401391518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083767 (n + 1) * A291769 n

end

end A083766.P4897341317401391518

/-!
# A083767: Sum of n-th row of A083764 divided by n.

The programs for A083767, there is no canonical definition to state claims against.
-/

/-! ## A083767.P734134580798515441

`A083766(n+1)/(n+1)`
-/

namespace A083767.P734134580798515441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083766 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083767.P734134580798515441

/-! ## A083767.P11843107656168901548

`floor(A083766(A291769(n))/A291769(n))`
-/

namespace A083767.P11843107656168901548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083766 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌋

end

end A083767.P11843107656168901548

/-!
# A083768: Triangle formed by dividing row n of A083764 by n.

The programs for A083768, there is no canonical definition to state claims against.
-/

/-! ## A083768.P4468861613596934707

`A083764(n+1)/∑[char[∑[n]]]`
-/

namespace A083768.P4468861613596934707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083764 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A083768.P4468861613596934707

/-! ## A083768.P6748751799618938048

`floor(A083764(n+1)/A002024(n+1))`
-/

namespace A083768.P6748751799618938048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083764 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A083768.P6748751799618938048

/-! ## A083768.P11967672226740593253

`floor(A083764(n+1)/A113764(n+1))`
-/

namespace A083768.P11967672226740593253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083764 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)⌋

end

end A083768.P11967672226740593253

/-! ## A083768.P1926113136228041215

`floor(A083764(n+1)/A130146(n+1))`
-/

namespace A083768.P1926113136228041215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083764 (n + 1) : ℚ) / (A130146 (n + 1) : ℚ)⌋

end

end A083768.P1926113136228041215

/-! ## A083768.P3722701238184917885

`A000027(A083764(n+1)/A002024(n+1))`
-/

namespace A083768.P3722701238184917885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A083764 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ))).toNat

end

end A083768.P3722701238184917885

/-!
# A083770: Primes arising in A083769.

The programs for A083770, there is no canonical definition to state claims against.
-/

/-! ## A083770.P4660213549915389434

`∏[A083769(n+1)]+1`
-/

namespace A083770.P4660213549915389434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083770.P4660213549915389434

/-! ## A083770.P3697690316098006488

`A323505(A000400(n)*A144463(n))+1`
-/

namespace A083770.P3697690316098006488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A000400 n * A144463 n).toNat + 1

end

end A083770.P3697690316098006488

/-!
# A083771: Rearrangement of primes such that every partial product + 1 is a prime.

The programs for A083771, there is no canonical definition to state claims against.
-/

/-! ## A083771.P6760416111822019925

`A093442(A028310(n))-A215861(∑[n])`
-/

namespace A083771.P6760416111822019925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093442 (A028310 n).toNat - A215861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083771.P6760416111822019925

/-! ## A083771.P13863925409180149223

`A325163(A083920(3*n+2)+A003242(n))`
-/

namespace A083771.P13863925409180149223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325163 (A083920 (3 * n + 2) + A003242 n).toNat

end

end A083771.P13863925409180149223

/-!
# A083772: Primes arising in A083771.

The programs for A083772, there is no canonical definition to state claims against.
-/

/-! ## A083772.P2341884108282446070

`∏[A083771(n+1)]+1`
-/

namespace A083772.P2341884108282446070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083772.P2341884108282446070

/-! ## A083772.P17841638647811364190

`∏[A093442(A028310(n))-C(2, n+2)]+1`
-/

namespace A083772.P17841638647811364190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093442 (A028310 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083772.P17841638647811364190

/-! ## A083772.P13572030670935681950

`∏[A093442(A028310(n))-A000010(n+2)%2]+1`
-/

namespace A083772.P13572030670935681950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093442 (A028310 n).toNat - Int.tmod (A000010 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083772.P13572030670935681950

/-! ## A083772.P4389705733003170612

`∏[A093442(A028310(n))-A000005(n²+1)%2]+1`
-/

namespace A083772.P4389705733003170612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093442 (A028310 n).toNat - Int.tmod (A000005 (n ^ 2 + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083772.P4389705733003170612

/-!
# A083773: The n-th row of the following triangle contains n distinct numbers such that the product of (n-1) of them + 1 is always a prime. The first (n-1) numbers are the smallest set whose product +1 is a prime and the n-th term is chosen to satisfy the requirement. a(1) = 1 by convention. Sequence contains the triangle by rows.

The programs for A083773, there is no canonical definition to state claims against.
-/

/-! ## A083773.P13123966541539988826

`A347784(A129116(n+1))`
-/

namespace A083773.P13123966541539988826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 (A129116 (n + 1)).toNat

end

end A083773.P13123966541539988826

/-! ## A083773.P13903337984919299550

`A018506(A141539(n))%12`
-/

namespace A083773.P13903337984919299550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018506 (A141539 n).toNat) 12

end

end A083773.P13903337984919299550

/-! ## A083773.P14801254542688186689

`A292477(n^A277647(n+1))`
-/

namespace A083773.P14801254542688186689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A277647 (n + 1) : ℤ))).toNat

end

end A083773.P14801254542688186689

/-! ## A083773.P3002881598857870085

`dr(A003557(A129116(n+1)²))`
-/

namespace A083773.P3002881598857870085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003557 (A129116 (n + 1) ^ 2).toNat)

end

end A083773.P3002881598857870085

/-!
# A083774: Diagonal of A083773.

The programs for A083774, there is no canonical definition to state claims against.
-/

/-! ## A083774.P16935003899825900465

`A083773(∑[n+1])`
-/

namespace A083774.P16935003899825900465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083774.P16935003899825900465

/-! ## A083774.P5288585824733835393

`A217657(n)+A083773(A025747(n))`
-/

namespace A083774.P5288585824733835393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A083773 (A025747 n).toNat

end

end A083774.P5288585824733835393

/-! ## A083774.P18010734756512513312

`A083773(A025747(n))*A213217(n)`
-/

namespace A083774.P18010734756512513312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083773 (A025747 n).toNat * A213217 n

end

end A083774.P18010734756512513312

/-! ## A083774.P15697860606962564592

`A083773(A025747(n))^A178334(n)`
-/

namespace A083774.P15697860606962564592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083773 (A025747 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A083774.P15697860606962564592

/-! ## A083774.P18243431194558904841

`gcd(A055641(n), A083773(A025747(n)))`
-/

namespace A083774.P18243431194558904841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 n) (A083773 (A025747 n).toNat)

end

end A083774.P18243431194558904841

/-!
# A083776: The n-th row of the following triangle contains n distinct primes such that the product of (n-1) of them + 2 is prime in all cases. The first (n-1) numbers are the smallest set whose product +2 is a prime and the n-th term is chosen to satisfy the requirement. a(1) = 2 by convention. Sequence contains the triangle by rows.

The programs for A083776, there is no canonical definition to state claims against.
-/

/-! ## A083776.P7289080131719888891

`p?[A233782(∑[A022446(n)])]`
-/

namespace A083776.P7289080131719888891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022446 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083776.P7289080131719888891

/-! ## A083776.P13681996375608030300

`or(A063787(A171254(n+4)), A115720(3*n+1))`
-/

namespace A083776.P13681996375608030300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063787 (A171254 (n + 4)).toNat) (A115720 (3 * n + 1))

end

end A083776.P13681996375608030300

/-!
# A083777: Diagonal of A083776.

The programs for A083777, there is no canonical definition to state claims against.
-/

/-! ## A083777.P16028134205218093653

`A083776(∑[n+1])`
-/

namespace A083777.P16028134205218093653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083777.P16028134205218093653

/-! ## A083777.P10517246215244789672

`record[A083776(comp[∑[n-1]])]`
-/

namespace A083777.P10517246215244789672
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083776 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083777.P10517246215244789672

/-! ## A083777.P13666120795499694467

`record[A083776(n+1)-char[1]]`
-/

namespace A083777.P13666120795499694467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083776 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083777.P13666120795499694467

/-! ## A083777.P4857259056853901419

`record[A049310(n)*A083776(n+1)]`
-/

namespace A083777.P4857259056853901419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A083776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083777.P4857259056853901419

/-! ## A083777.P16161757302518515496

`record[A083776(n+2)]-A055641(n)`
-/

namespace A083777.P16161757302518515496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A055641 n

end

end A083777.P16161757302518515496

/-!
# A083779: n-th row of the following triangle contains n even numbers such that every sum of n-1 of them + 1 is a prime. Sequence contains the triangle by rows.

The programs for A083779, there is no canonical definition to state claims against.
-/

/-! ## A083779.P12253625008848917563

`A117726(A117728(n+1)^A002262(n))`
-/

namespace A083779.P12253625008848917563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (SequenceMachineLib.roundAway ((A117728 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A083779.P12253625008848917563

/-! ## A083779.P2611786589381296954

`A342271(A131094(n+2))`
-/

namespace A083779.P2611786589381296954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342271 (A131094 (n + 2)).toNat

end

end A083779.P2611786589381296954

/-! ## A083779.P16798867034591139154

`2*A122386(A156914(n))`
-/

namespace A083779.P16798867034591139154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122386 (A156914 n).toNat

end

end A083779.P16798867034591139154

/-! ## A083779.P4509979252989038517

`A233765(A360965(n+1)+1)`
-/

namespace A083779.P4509979252989038517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233765 (A360965 (n + 1) + 1).toNat

end

end A083779.P4509979252989038517

/-! ## A083779.P12860448642239634110

`A354587(A269479(n+1))+1`
-/

namespace A083779.P12860448642239634110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354587 (A269479 (n + 1)).toNat + 1

end

end A083779.P12860448642239634110

/-!
# A083780: Diagonal of A083779.

The programs for A083780, there is no canonical definition to state claims against.
-/

/-! ## A083780.P7448777439010828996

`A083779(∑[n+1])`
-/

namespace A083780.P7448777439010828996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083779 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083780.P7448777439010828996

/-!
# A083785: Triangle read by rows in which the n-th row gives the smallest set of n consecutive numbers with the same prime signatures.

The programs for A083785, there is no canonical definition to state claims against.
-/

/-! ## A083785.P5350544548283695509

`A034173(A002024(n+1))+A002262(n)`
-/

namespace A083785.P5350544548283695509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034173 (A002024 (n + 1)).toNat + A002262 n

end

end A083785.P5350544548283695509

/-! ## A083785.P2481176257328775721

`A034174(A002024(n+1))-A025581(n)`
-/

namespace A083785.P2481176257328775721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034174 (A002024 (n + 1)).toNat - A025581 n

end

end A083785.P2481176257328775721

/-!
# A083786: Composite numbers mod 10.

The programs for A083786, the canonical program `A083786.P13265857354035121476` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083786 has offset 1).

The definition of A083786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083786.P1934808447160198561

`comp[A351078(n)]%10`
-/

namespace A083786.P1934808447160198561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 10

end

end A083786.P1934808447160198561

namespace A083786

/-- `comp[A351078(n)]%10` -/
def P1934808447160198561.Spec : Prop :=
  ∀ n, (P1934808447160198561.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P13265857354035121476

`A002808(n+1)%10`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083786

/-- `A002808(n+1)%10` -/
def P13265857354035121476.Spec : Prop :=
  ∀ n, P13265857354035121476.a n = A083786 (n + 1)

theorem P13265857354035121476.correct : P13265857354035121476.Spec := by
  intro n
  simp only [A083786, Nat.add_sub_cancel]

end A083786

/-! ## A083786.P13263765785752370728

`A191992(n+1)%10`
-/

namespace A083786.P13263765785752370728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191992 (n + 1)) 10

end

end A083786.P13263765785752370728

namespace A083786

/-- `A191992(n+1)%10` -/
def P13263765785752370728.Spec : Prop :=
  ∀ n, P13263765785752370728.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P11763173888399004382

`A018252(n+2)%10`
-/

namespace A083786.P11763173888399004382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) 10

end

end A083786.P11763173888399004382

namespace A083786

/-- `A018252(n+2)%10` -/
def P11763173888399004382.Spec : Prop :=
  ∀ n, P11763173888399004382.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P9932491033675928770

`A141468(n+3)%10`
-/

namespace A083786.P9932491033675928770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (n + 3)) 10

end

end A083786.P9932491033675928770

namespace A083786

/-- `A141468(n+3)%10` -/
def P9932491033675928770.Spec : Prop :=
  ∀ n, P9932491033675928770.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P6767398063757233750

`lt[0, A107393(n)]%10`
-/

namespace A083786.P6767398063757233750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 10

end

end A083786.P6767398063757233750

namespace A083786

/-- `lt[0, A107393(n)]%10` -/
def P6767398063757233750.Spec : Prop :=
  ∀ n, (P6767398063757233750.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P10708192642379344354

`lt[1, A107286(n)]%10`
-/

namespace A083786.P10708192642379344354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 10

end

end A083786.P10708192642379344354

namespace A083786

/-- `lt[1, A107286(n)]%10` -/
def P10708192642379344354.Spec : Prop :=
  ∀ n, (P10708192642379344354.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P6429342358017797364

`lt[1, A107463(n)]%10`
-/

namespace A083786.P6429342358017797364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 10

end

end A083786.P6429342358017797364

namespace A083786

/-- `lt[1, A107463(n)]%10` -/
def P6429342358017797364.Spec : Prop :=
  ∀ n, (P6429342358017797364.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P10282957635943411286

`comp[A158611(n+1)]%10`
-/

namespace A083786.P10282957635943411286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 10

end

end A083786.P10282957635943411286

namespace A083786

/-- `comp[A158611(n+1)]%10` -/
def P10282957635943411286.Spec : Prop :=
  ∀ n, (P10282957635943411286.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P6457409215498529533

`comp[C(A006530(n+1), n)]%10`
-/

namespace A083786.P6457409215498529533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 10

end

end A083786.P6457409215498529533

namespace A083786

/-- `comp[C(A006530(n+1), n)]%10` -/
def P6457409215498529533.Spec : Prop :=
  ∀ n, (P6457409215498529533.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P12818885476032400243

`comp[C(A020639(n+1), n)]%10`
-/

namespace A083786.P12818885476032400243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 10

end

end A083786.P12818885476032400243

namespace A083786

/-- `comp[C(A020639(n+1), n)]%10` -/
def P12818885476032400243.Spec : Prop :=
  ∀ n, (P12818885476032400243.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P14646331495442708862

`(lt[1, A001222(n+1)]+1)%10`
-/

namespace A083786.P14646331495442708862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) % 10

end

end A083786.P14646331495442708862

namespace A083786

/-- `(lt[1, A001222(n+1)]+1)%10` -/
def P14646331495442708862.Spec : Prop :=
  ∀ n, (P14646331495442708862.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P6809128390151238816

`(lt[2, A000005(n+1)]+1)%10`
-/

namespace A083786.P6809128390151238816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) % 10

end

end A083786.P6809128390151238816

namespace A083786

/-- `(lt[2, A000005(n+1)]+1)%10` -/
def P6809128390151238816.Spec : Prop :=
  ∀ n, (P6809128390151238816.a n : ℤ) = A083786 (n + 1)

end A083786

/-! ## A083786.P1749397956395257931

`(A161537(n+1)-(n+1))%10`
-/

namespace A083786.P1749397956395257931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161537 (n + 1) - (n + 1 : ℤ)) 10

end

end A083786.P1749397956395257931

namespace A083786

/-- `(A161537(n+1)-(n+1))%10` -/
def P1749397956395257931.Spec : Prop :=
  ∀ n, P1749397956395257931.a n = A083786 (n + 1)

theorem P1749397956395257931.correct : P1749397956395257931.Spec := by
  intro n
  simp only [A083786, Nat.add_sub_cancel, A083786.P1749397956395257931.a, A083786.P13265857354035121476.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A161537, A161537.P5701896001486132994.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083786

/-! ## A083786.P4253403978752215149

`A038530(n+1)%A040020(n)`
-/

namespace A083786.P4253403978752215149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038530 (n + 1)) (A040020 n)

end

end A083786.P4253403978752215149

namespace A083786

/-- `A038530(n+1)%A040020(n)` -/
def P4253403978752215149.Spec : Prop :=
  ∀ n, P4253403978752215149.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P5250631789571679871

`A010879(A002808(n+1)+A010879(n)-n)`
-/

namespace A083786.P5250631789571679871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002808 (n + 1) + (A010879 n - (n : ℤ))).toNat

end

end A083786.P5250631789571679871

namespace A083786

/-- `A010879(A002808(n+1)+A010879(n)-n)` -/
def P5250631789571679871.Spec : Prop :=
  ∀ n, P5250631789571679871.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P4522982010696098550

`A088308(n+2)`
-/

namespace A083786.P4522982010696098550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088308 (n + 2)

end

end A083786.P4522982010696098550

namespace A083786

/-- `A088308(n+2)` -/
def P4522982010696098550.Spec : Prop :=
  ∀ n, P4522982010696098550.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P10878117583029327847

`A010879(A002808(n+1))`
-/

namespace A083786.P10878117583029327847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002808 (n + 1)).toNat

end

end A083786.P10878117583029327847

namespace A083786

/-- `A010879(A002808(n+1))` -/
def P10878117583029327847.Spec : Prop :=
  ∀ n, P10878117583029327847.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P4669619107060086132

`A010879(A018252(n+2))`
-/

namespace A083786.P4669619107060086132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A018252 (n + 2)).toNat

end

end A083786.P4669619107060086132

namespace A083786

/-- `A010879(A018252(n+2))` -/
def P4669619107060086132.Spec : Prop :=
  ∀ n, P4669619107060086132.a n = A083786 (n + 1)

end A083786

/-! ## A083786.P10832851967367991587

`A010879(A060462(n+2)+1)`
-/

namespace A083786.P10832851967367991587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A060462 (n + 2) + 1).toNat

end

end A083786.P10832851967367991587

namespace A083786

/-- `A010879(A060462(n+2)+1)` -/
def P10832851967367991587.Spec : Prop :=
  ∀ n, P10832851967367991587.a n = A083786 (n + 1)

end A083786

/-!
# A083787: Sequence contains the prime signature pertaining to the n-th row of A083785.

The programs for A083787, there is no canonical definition to state claims against.
-/

/-! ## A083787.P17127384854198590184

`∏[n/a(n-1)+1]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=10, a(4)=1, a(5)=1`
-/

namespace A083787.P17127384854198590184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3, 10, 1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083787.P17127384854198590184

/-! ## A083787.P13258036836449278272

`lcm(∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])], ∑{digits}[C(2*n, n)/(n+1), #])`
-/

namespace A083787.P13258036836449278272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) ((((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f3 n)).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A083787.P13258036836449278272

/-! ## A083787.P18233677308190172400

`A003418(char[3]+1+n)`
-/

namespace A083787.P18233677308190172400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A083787.P18233677308190172400

/-!
# A083788: Triangle read by rows, in which n-th row contains smallest set of n consecutive numbers with distinct prime signatures.

The programs for A083788, there is no canonical definition to state claims against.
-/

/-! ## A083788.P12632464690499102694

`A083789(A002024(n+1))-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A083788.P12632464690499102694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083789 (A002024 (n + 1)).toNat - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A083788.P12632464690499102694

/-! ## A083788.P7283814161749805097

`A083790(∑[A010054(n)])+A002262(n)`
-/

namespace A083788.P7283814161749805097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A002262 n

end

end A083788.P7283814161749805097

/-! ## A083788.P7699734784770175326

`A083790(A002024(n+1))+A002262(n)`
-/

namespace A083788.P7699734784770175326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (A002024 (n + 1)).toNat + A002262 n

end

end A083788.P7699734784770175326

/-! ## A083788.P9924451854244022350

`A083790(A003056(n)+1)+A002262(n)`
-/

namespace A083788.P9924451854244022350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (A003056 n + 1).toNat + A002262 n

end

end A083788.P9924451854244022350

/-! ## A083788.P6439380580608059629

`A083789(A002024(n+1))-A025581(n)`
-/

namespace A083788.P6439380580608059629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083789 (A002024 (n + 1)).toNat - A025581 n

end

end A083788.P6439380580608059629

/-! ## A083788.P2805003291911386097

`A083790(A002024(n+1))+n-A057944(n)`
-/

namespace A083788.P2805003291911386097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (A002024 (n + 1)).toNat + ((n : ℤ) - A057944 n)

end

end A083788.P2805003291911386097

/-!
# A083789: Diagonal of A083788.

The programs for A083789, there is no canonical definition to state claims against.
-/

/-! ## A083789.P16794194553670290678

`A083788(∑[n+1])`
-/

namespace A083789.P16794194553670290678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083789.P16794194553670290678

/-! ## A083789.P3058253979754606106

`A083790(n+1)+n`
-/

namespace A083789.P3058253979754606106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (n + 1) + (n : ℤ)

end

end A083789.P3058253979754606106

/-! ## A083789.P4813371585706489717

`A083788(C(n+1, 2)+1)+n`
-/

namespace A083789.P4813371585706489717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (Nat.choose (n + 1) 2 + 1) + (n : ℤ)

end

end A083789.P4813371585706489717

/-! ## A083789.P6344810189809209855

`A124058(n+1)-C(2, n²)+n`
-/

namespace A083789.P6344810189809209855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124058 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ) + (n : ℤ)

end

end A083789.P6344810189809209855

/-! ## A083789.P7815267341271761306

`record[A083788(n+1)+round(sqrt(2*(n+1)))²-(2*n+1)]`
-/

namespace A083789.P7815267341271761306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083789.P7815267341271761306

/-!
# A083790: Smallest start of n consecutive numbers with distinct prime signatures.

The programs for A083790, there is no canonical definition to state claims against.
-/

/-! ## A083790.P15147744566969711808

`A083788(∑[n]+1)`
-/

namespace A083790.P15147744566969711808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083790.P15147744566969711808

/-! ## A083790.P18008071950641455260

`A083789(n+1)-n`
-/

namespace A083790.P18008071950641455260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083789 (n + 1) - (n : ℤ)

end

end A083790.P18008071950641455260

/-! ## A083790.P144844427429583002

`A124058(n+1)-C(2, n²)`
-/

namespace A083790.P144844427429583002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124058 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A083790.P144844427429583002

/-! ## A083790.P1545715216179945457

`record[A083788(n+1)+round(sqrt(2*(n+1)))²-(2*n+1)]-n`
-/

namespace A083790.P1545715216179945457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A083790.P1545715216179945457

/-! ## A083790.P7292026216153417856

`A083788(A000217(n+1))-n`
-/

namespace A083790.P7292026216153417856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (A000217 (n + 1)).toNat - (n : ℤ)

end

end A083790.P7292026216153417856

/-!
# A083791: Prime signatures pertaining to A083788.

The programs for A083791, there is no canonical definition to state claims against.
-/

/-! ## A083791.P10191891047189978204

`A046523(A083788(n+1))`
-/

namespace A083791.P10191891047189978204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A083788 (n + 1)).toNat

end

end A083791.P10191891047189978204

/-! ## A083791.P9934053812575641391

`gcd(24, A000005(A148448(n)))`
-/

namespace A083791.P9934053812575641391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 24 (A000005 (A148448 n).toNat)

end

end A083791.P9934053812575641391

/-! ## A083791.P1790046160129452236

`A000005(A148448(n))%A005352(n+1)`
-/

namespace A083791.P1790046160129452236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A148448 n).toNat) (A005352 (n + 1))

end

end A083791.P1790046160129452236

/-! ## A083791.P7896155786410864290

`gcd(A000005(A148449(n)), A062717(n+1))`
-/

namespace A083791.P7896155786410864290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A148449 n).toNat) (A062717 (n + 1))

end

end A083791.P7896155786410864290

/-! ## A083791.P4326624510531182028

`A000005(or(A047616(n+1), A148626(n)))`
-/

namespace A083791.P4326624510531182028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A047616 (n + 1)) (A148626 n)).toNat

end

end A083791.P4326624510531182028

/-!
# A083792: Lexicographically first increasing sequence such that no two successive terms have the same prime signature.

The programs for A083792, the canonical program `A083792.P7414422446013490865` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083792 has offset 1).

The definition of A083792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083792.P7414422446013490865

`comp[A052213(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083792

/-- `comp[A052213(n+1)]+1` -/
def P7414422446013490865.Spec : Prop :=
  ∀ n, (P7414422446013490865.a n : ℤ) = A083792 (n + 1)

theorem P7414422446013490865.correct : P7414422446013490865.Spec := by
  intro n
  simp only [A083792, Nat.add_sub_cancel]

end A083792

/-! ## A083792.P12973817609535519618

`comp[A083793(n+1)-1]+1`
-/

namespace A083792.P12973817609535519618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A083792.P12973817609535519618

namespace A083792

/-- `comp[A083793(n+1)-1]+1` -/
def P12973817609535519618.Spec : Prop :=
  ∀ n, (P12973817609535519618.a n : ℤ) = A083792 (n + 1)

end A083792

/-! ## A083792.P16390334493471523604

`eq[char[A083793(n+1)], A000007(n)]`
-/

namespace A083792.P16390334493471523604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A083792.P16390334493471523604

namespace A083792

/-- `eq[char[A083793(n+1)], A000007(n)]` -/
def P16390334493471523604.Spec : Prop :=
  ∀ n, (P16390334493471523604.a n : ℤ) = A083792 (n + 1)

end A083792

/-! ## A083792.P17628810941399477696

`eq[char[A083793(n+1)], A000038(n)]`
-/

namespace A083792.P17628810941399477696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A083792.P17628810941399477696

namespace A083792

/-- `eq[char[A083793(n+1)], A000038(n)]` -/
def P17628810941399477696.Spec : Prop :=
  ∀ n, (P17628810941399477696.a n : ℤ) = A083792 (n + 1)

end A083792

/-! ## A083792.P17274049117331887400

`eq[char[A083793(n+1)], A151933(n)]`
-/

namespace A083792.P17274049117331887400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A083792.P17274049117331887400

namespace A083792

/-- `eq[char[A083793(n+1)], A151933(n)]` -/
def P17274049117331887400.Spec : Prop :=
  ∀ n, (P17274049117331887400.a n : ℤ) = A083792 (n + 1)

end A083792

/-!
# A083793: Numbers k such that k and k-1 have the same prime signature. Numbers not included in A083792.

The programs for A083793, the canonical program `A083793.P9380209860104701079` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083793 has offset 1).

The definition of A083793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083793.P9380209860104701079

`A052213(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A083793

/-- `A052213(n+1)+1` -/
def P9380209860104701079.Spec : Prop :=
  ∀ n, P9380209860104701079.a n = A083793 (n + 1)

theorem P9380209860104701079.correct : P9380209860104701079.Spec := by
  intro n
  simp only [A083793, Nat.add_sub_cancel]

end A083793

/-! ## A083793.P12175013830776484671

`∩[A005237(n+1), A276553(n+1)]+1`
-/

namespace A083793.P12175013830776484671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P12175013830776484671

namespace A083793

/-- `∩[A005237(n+1), A276553(n+1)]+1` -/
def P12175013830776484671.Spec : Prop :=
  ∀ n, (P12175013830776484671.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P4389629422124124963

`∩[A083795(n+1), A278291(n+1)]`
-/

namespace A083793.P4389629422124124963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083793.P4389629422124124963

namespace A083793

/-- `∩[A083795(n+1), A278291(n+1)]` -/
def P4389629422124124963.Spec : Prop :=
  ∀ n, (P4389629422124124963.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P15916011720627949468

`∩[A005237(n+1), A045920(n+1)]+1`
-/

namespace A083793.P15916011720627949468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P15916011720627949468

namespace A083793

/-- `∩[A005237(n+1), A045920(n+1)]+1` -/
def P15916011720627949468.Spec : Prop :=
  ∀ n, (P15916011720627949468.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P5162922952595651572

`∩[A045920(n+1), A276553(n+1)]+1`
-/

namespace A083793.P5162922952595651572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P5162922952595651572

namespace A083793

/-- `∩[A045920(n+1), A276553(n+1)]+1` -/
def P5162922952595651572.Spec : Prop :=
  ∀ n, (P5162922952595651572.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P1723131296132879815

`∩[A276553(n+1), A343819(n+1)]+1`
-/

namespace A083793.P1723131296132879815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P1723131296132879815

namespace A083793

/-- `∩[A276553(n+1), A343819(n+1)]+1` -/
def P1723131296132879815.Spec : Prop :=
  ∀ n, (P1723131296132879815.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P11620614328204190366

`∩[A276553(n+1), A344314(n+1)]+1`
-/

namespace A083793.P11620614328204190366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P11620614328204190366

namespace A083793

/-- `∩[A276553(n+1), A344314(n+1)]+1` -/
def P11620614328204190366.Spec : Prop :=
  ∀ n, (P11620614328204190366.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P17389599813523308045

`∩[A005237(n+1), A358817(n+1)]+1`
-/

namespace A083793.P17389599813523308045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P17389599813523308045

namespace A083793

/-- `∩[A005237(n+1), A358817(n+1)]+1` -/
def P17389599813523308045.Spec : Prop :=
  ∀ n, (P17389599813523308045.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P9984214015993508469

`∩[A140128(n+1), A358817(n+1)]+1`
-/

namespace A083793.P9984214015993508469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P9984214015993508469

namespace A083793

/-- `∩[A140128(n+1), A358817(n+1)]+1` -/
def P9984214015993508469.Spec : Prop :=
  ∀ n, (P9984214015993508469.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P15824771398781750259

`∩[A276553(n+1), A358817(n+1)]+1`
-/

namespace A083793.P15824771398781750259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P15824771398781750259

namespace A083793

/-- `∩[A276553(n+1), A358817(n+1)]+1` -/
def P15824771398781750259.Spec : Prop :=
  ∀ n, (P15824771398781750259.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P6629358128328759052

`∩[A005237(n+1), A369020(n+1)]+1`
-/

namespace A083793.P6629358128328759052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P6629358128328759052

namespace A083793

/-- `∩[A005237(n+1), A369020(n+1)]+1` -/
def P6629358128328759052.Spec : Prop :=
  ∀ n, (P6629358128328759052.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P7069533876107209091

`∩[A276553(n+1), A057921(n)]+1`
-/

namespace A083793.P7069533876107209091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P7069533876107209091

namespace A083793

/-- `∩[A276553(n+1), A057921(n)]+1` -/
def P7069533876107209091.Spec : Prop :=
  ∀ n, (P7069533876107209091.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P6467511823394899906

`∩[A276553(n+1), A057922(n)]+1`
-/

namespace A083793.P6467511823394899906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083793.P6467511823394899906

namespace A083793

/-- `∩[A276553(n+1), A057922(n)]+1` -/
def P6467511823394899906.Spec : Prop :=
  ∀ n, (P6467511823394899906.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P11820984880170567979

`A020725(A052213(n+1))`
-/

namespace A083793.P11820984880170567979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A052213 (n + 1)).toNat

end

end A083793.P11820984880170567979

namespace A083793

/-- `A020725(A052213(n+1))` -/
def P11820984880170567979.Spec : Prop :=
  ∀ n, P11820984880170567979.a n = A083793 (n + 1)

end A083793

/-! ## A083793.P12783711764689758740

`eq[A057567(n+2), A057567(n+1)]+2`
-/

namespace A083793.P12783711764689758740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083793.P12783711764689758740

namespace A083793

/-- `eq[A057567(n+2), A057567(n+1)]+2` -/
def P12783711764689758740.Spec : Prop :=
  ∀ n, (P12783711764689758740.a n : ℤ) = A083793 (n + 1)

end A083793

/-! ## A083793.P1346101446479417656

`eq[A181819(n+2), A181819(n+1)]+2`
-/

namespace A083793.P1346101446479417656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083793.P1346101446479417656

namespace A083793

/-- `eq[A181819(n+2), A181819(n+1)]+2` -/
def P1346101446479417656.Spec : Prop :=
  ∀ n, (P1346101446479417656.a n : ℤ) = A083793 (n + 1)

end A083793

/-!
# A083794: Numbers k such that tau(k) is different from tau(k-1), where tau(m) = number of divisors of m.

The programs for A083794, the canonical program `A083794.P16651843307609193916` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083794 has offset 1).

The definition of A083794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083794.P3266005637081479168

`comp[A005237(n+1)]+1`
-/

namespace A083794.P3266005637081479168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A083794.P3266005637081479168

namespace A083794

/-- `comp[A005237(n+1)]+1` -/
def P3266005637081479168.Spec : Prop :=
  ∀ n, (P3266005637081479168.a n : ℤ) = A083794 (n + 1)

end A083794

/-! ## A083794.P12606443124669077460

`A131789(n)+a(n-1)` with `a(0)=1`
-/

namespace A083794.P12606443124669077460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131789 n + a (n - 1)

end

end A083794.P12606443124669077460

namespace A083794

/-- `A131789(n)+a(n-1)` -/
def P12606443124669077460.Spec : Prop :=
  ∀ n, P12606443124669077460.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P16651843307609193916

`comp[eq[0, A182394(n+2)]+1]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A083794

/-- `comp[eq[0, A182394(n+2)]+1]+1` -/
def P16651843307609193916.Spec : Prop :=
  ∀ n, (P16651843307609193916.a n : ℤ) = A083794 (n + 1)

theorem P16651843307609193916.correct : P16651843307609193916.Spec := by
  intro n
  simp only [A083794, Nat.add_sub_cancel]

end A083794

/-! ## A083794.P11070565898995138758

`∑[A131789(A028310(n))]`
-/

namespace A083794.P11070565898995138758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083794.P11070565898995138758

namespace A083794

/-- `∑[A131789(A028310(n))]` -/
def P11070565898995138758.Spec : Prop :=
  ∀ n, P11070565898995138758.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P3922634820804467955

`∪[A240171(n+1), A303578(n+1)]`
-/

namespace A083794.P3922634820804467955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083794.P3922634820804467955

namespace A083794

/-- `∪[A240171(n+1), A303578(n+1)]` -/
def P3922634820804467955.Spec : Prop :=
  ∀ n, (P3922634820804467955.a n : ℤ) = A083794 (n + 1)

end A083794

/-! ## A083794.P18188071682165740460

`∑[A131789(n+1)]+1-A131789(n+1)`
-/

namespace A083794.P18188071682165740460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A131789 (n + 1))

end

end A083794.P18188071682165740460

namespace A083794

/-- `∑[A131789(n+1)]+1-A131789(n+1)` -/
def P18188071682165740460.Spec : Prop :=
  ∀ n, P18188071682165740460.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P14487914934676670276

`lt[A347982(n+1), n]+1`
-/

namespace A083794.P14487914934676670276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A083794.P14487914934676670276

namespace A083794

/-- `lt[A347982(n+1), n]+1` -/
def P14487914934676670276.Spec : Prop :=
  ∀ n, (P14487914934676670276.a n : ℤ) = A083794 (n + 1)

end A083794

/-! ## A083794.P10091520292808028169

`∑[A131789(A065033(A004273(n)))]`
-/

namespace A083794.P10091520292808028169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083794.P10091520292808028169

namespace A083794

/-- `∑[A131789(A065033(A004273(n)))]` -/
def P10091520292808028169.Spec : Prop :=
  ∀ n, P10091520292808028169.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P10185167012467163019

`∑[A131789(A065033(2*n))]`
-/

namespace A083794.P10185167012467163019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083794.P10185167012467163019

namespace A083794

/-- `∑[A131789(A065033(2*n))]` -/
def P10185167012467163019.Spec : Prop :=
  ∀ n, P10185167012467163019.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P5304240549091588290

`∑[A131789(A007318(∑[n]+1))]`
-/

namespace A083794.P5304240549091588290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083794.P5304240549091588290

namespace A083794

/-- `∑[A131789(A007318(∑[n]+1))]` -/
def P5304240549091588290.Spec : Prop :=
  ∀ n, P5304240549091588290.a n = A083794 (n + 1)

end A083794

/-! ## A083794.P12907336689173733449

`∑[A131789(A134478(∑[n]))]`
-/

namespace A083794.P12907336689173733449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083794.P12907336689173733449

namespace A083794

/-- `∑[A131789(A134478(∑[n]))]` -/
def P12907336689173733449.Spec : Prop :=
  ∀ n, P12907336689173733449.a n = A083794 (n + 1)

end A083794

/-!
# A083795: Numbers k such that k and k-1 have the same number of divisors. Numbers not included in A083794.

The programs for A083795, the canonical program `A083795.P8166944767162497193` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083795 has offset 1).

The definition of A083795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083795.P8166944767162497193

`A005237(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A083795

/-- `A005237(n+1)+1` -/
def P8166944767162497193.Spec : Prop :=
  ∀ n, P8166944767162497193.a n = A083795 (n + 1)

theorem P8166944767162497193.correct : P8166944767162497193.Spec := by
  intro n
  simp only [A083795, Nat.add_sub_cancel]

end A083795

/-! ## A083795.P1781694316931485184

`∪[A052213(n+1), A333055(n+1)]+1`
-/

namespace A083795.P1781694316931485184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083795.P1781694316931485184

namespace A083795

/-- `∪[A052213(n+1), A333055(n+1)]+1` -/
def P1781694316931485184.Spec : Prop :=
  ∀ n, (P1781694316931485184.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P15192930858831022182

`eq[A000005(n+1), A000005(n+2)]+2`
-/

namespace A083795.P15192930858831022182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083795.P15192930858831022182

namespace A083795

/-- `eq[A000005(n+1), A000005(n+2)]+2` -/
def P15192930858831022182.Spec : Prop :=
  ∀ n, (P15192930858831022182.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P389527407057339278

`∩[A140128(n+1), A057921(n)]+1`
-/

namespace A083795.P389527407057339278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083795.P389527407057339278

namespace A083795

/-- `∩[A140128(n+1), A057921(n)]+1` -/
def P389527407057339278.Spec : Prop :=
  ∀ n, (P389527407057339278.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P232120782000894295

`∩[A057921(n), A057922(n)]+1`
-/

namespace A083795.P232120782000894295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083795.P232120782000894295

namespace A083795

/-- `∩[A057921(n), A057922(n)]+1` -/
def P232120782000894295.Spec : Prop :=
  ∀ n, (P232120782000894295.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P9486937119833357142

`∩[A140128(n+1), A057922(n)]+1`
-/

namespace A083795.P9486937119833357142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083795.P9486937119833357142

namespace A083795

/-- `∩[A140128(n+1), A057922(n)]+1` -/
def P9486937119833357142.Spec : Prop :=
  ∀ n, (P9486937119833357142.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P17756605420179551497

`eq[0, A051950(n+2)]+2`
-/

namespace A083795.P17756605420179551497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A083795.P17756605420179551497

namespace A083795

/-- `eq[0, A051950(n+2)]+2` -/
def P17756605420179551497.Spec : Prop :=
  ∀ n, (P17756605420179551497.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P18175326940937173928

`eq[0, A182394(n+2)]+2`
-/

namespace A083795.P18175326940937173928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A083795.P18175326940937173928

namespace A083795

/-- `eq[0, A182394(n+2)]+2` -/
def P18175326940937173928.Spec : Prop :=
  ∀ n, (P18175326940937173928.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P10393374580296843276

`eq[A292286(n+2), A292286(n+1)]+2`
-/

namespace A083795.P10393374580296843276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083795.P10393374580296843276

namespace A083795

/-- `eq[A292286(n+2), A292286(n+1)]+2` -/
def P10393374580296843276.Spec : Prop :=
  ∀ n, (P10393374580296843276.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P7195846976170032819

`∩[A063450(n+1), A057922(n)]+1`
-/

namespace A083795.P7195846976170032819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A083795.P7195846976170032819

namespace A083795

/-- `∩[A063450(n+1), A057922(n)]+1` -/
def P7195846976170032819.Spec : Prop :=
  ∀ n, (P7195846976170032819.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P8481297260048932834

`eq[1, A130638(n+1)]+2`
-/

namespace A083795.P8481297260048932834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A083795.P8481297260048932834

namespace A083795

/-- `eq[1, A130638(n+1)]+2` -/
def P8481297260048932834.Spec : Prop :=
  ∀ n, (P8481297260048932834.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P1913504921754245864

`eq[1, A171937(n+1)]+2`
-/

namespace A083795.P1913504921754245864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A083795.P1913504921754245864

namespace A083795

/-- `eq[1, A171937(n+1)]+2` -/
def P1913504921754245864.Spec : Prop :=
  ∀ n, (P1913504921754245864.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P7735086785522950587

`eq[n, A347982(n+1)]+1`
-/

namespace A083795.P7735086785522950587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083795.P7735086785522950587

namespace A083795

/-- `eq[n, A347982(n+1)]+1` -/
def P7735086785522950587.Spec : Prop :=
  ∀ n, (P7735086785522950587.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P5711779039331809123

`lt[n, A347982(n+2)]+2`
-/

namespace A083795.P5711779039331809123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A083795.P5711779039331809123

namespace A083795

/-- `lt[n, A347982(n+2)]+2` -/
def P5711779039331809123.Spec : Prop :=
  ∀ n, (P5711779039331809123.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P5298085977783407245

`lt[A341062(n+1)², 1]+1`
-/

namespace A083795.P5298085977783407245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A083795.P5298085977783407245

namespace A083795

/-- `lt[A341062(n+1)², 1]+1` -/
def P5298085977783407245.Spec : Prop :=
  ∀ n, (P5298085977783407245.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P135985734427305624

`A020725(A005237(n+1))`
-/

namespace A083795.P135985734427305624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A005237 (n + 1)).toNat

end

end A083795.P135985734427305624

namespace A083795

/-- `A020725(A005237(n+1))` -/
def P135985734427305624.Spec : Prop :=
  ∀ n, P135985734427305624.a n = A083795 (n + 1)

end A083795

/-! ## A083795.P6036740301180512077

`eq[1, A341062(A028310(n))+1]`
-/

namespace A083795.P6036740301180512077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083795.P6036740301180512077

namespace A083795

/-- `eq[1, A341062(A028310(n))+1]` -/
def P6036740301180512077.Spec : Prop :=
  ∀ n, (P6036740301180512077.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P16093881454264187185

`eq[A032741(n), A325765(n)]+1`
-/

namespace A083795.P16093881454264187185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083795.P16093881454264187185

namespace A083795

/-- `eq[A032741(n), A325765(n)]+1` -/
def P16093881454264187185.Spec : Prop :=
  ∀ n, (P16093881454264187185.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P6808631561661033848

`eq[A062011(n+2), A062011(n+1)]+2`
-/

namespace A083795.P6808631561661033848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083795.P6808631561661033848

namespace A083795

/-- `eq[A062011(n+2), A062011(n+1)]+2` -/
def P6808631561661033848.Spec : Prop :=
  ∀ n, (P6808631561661033848.a n : ℤ) = A083795 (n + 1)

end A083795

/-! ## A083795.P487632679926239755

`eq[A334954(n+2), A334954(n+1)]+2`
-/

namespace A083795.P487632679926239755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A083795.P487632679926239755

namespace A083795

/-- `eq[A334954(n+2), A334954(n+1)]+2` -/
def P487632679926239755.Spec : Prop :=
  ∀ n, (P487632679926239755.a n : ℤ) = A083795 (n + 1)

end A083795

/-!
# A083796: Triangle read by rows in which the n-th row contains n lexicographically earliest distinct numbers such that the sum of the (n-1) terms other than the r-th term is divisible by r.

The programs for A083796, there is no canonical definition to state claims against.
-/

/-! ## A083796.P16722207099236597203

`gcd(A096092(A096149(n+1)), A096137(n+2))`
-/

namespace A083796.P16722207099236597203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096092 (A096149 (n + 1)).toNat) (A096137 (n + 2))

end

end A083796.P16722207099236597203

/-! ## A083796.P9115049553917053871

`A016014(A005701(n)*A083906(n))`
-/

namespace A083796.P9115049553917053871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A005701 n * A083906 n).toNat

end

end A083796.P9115049553917053871

/-! ## A083796.P3346355842509694395

`A136758(A193382(n)-A291148(3*n))`
-/

namespace A083796.P3346355842509694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136758 (A193382 n - A291148 (3 * n)).toNat

end

end A083796.P3346355842509694395

/-! ## A083796.P5220088186444804437

`gcd(A000712(n), A272020(A265928(n+1)))`
-/

namespace A083796.P5220088186444804437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000712 n) (A272020 (A265928 (n + 1)).toNat)

end

end A083796.P5220088186444804437

/-! ## A083796.P15196773722749400931

`gcd(A238617(A122111(n+1)), A315916(n))`
-/

namespace A083796.P15196773722749400931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238617 (A122111 (n + 1)).toNat) (A315916 n)

end

end A083796.P15196773722749400931

/-!
# A083797: Diagonal of A083796.

The programs for A083797, there is no canonical definition to state claims against.
-/

/-! ## A083797.P15382037010963626925

`A083796(∑[n+1])`
-/

namespace A083797.P15382037010963626925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083797.P15382037010963626925

/-!
# A083798: Triangle obtained by replacing each term in A083796 with the sum of all other terms in that row.

The programs for A083798, there is no canonical definition to state claims against.
-/

/-! ## A083798.P4975625862373022130

`A002260(n+1)*A083801(n+1)`
-/

namespace A083798.P4975625862373022130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A083801 (n + 1)

end

end A083798.P4975625862373022130

/-!
# A083799: Main diagonal of A083798.

The programs for A083799, the canonical program `A083799.P12133560913529063526` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083799 has offset 1).

The definition of A083799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1912 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083799.P12133560913529063526

`(n*n%2/A014963(A028310(n))+n)/2*(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A083799

/-- `(n*n%2/A014963(A028310(n))+n)/2*(n+1)` -/
def P12133560913529063526.Spec : Prop :=
  ∀ n, P12133560913529063526.a n = (A083799 (n + 1) : ℚ)

end A083799

/-! ## A083799.P10357310126367385143

`(n+1)*A083802(n+1)`
-/

namespace A083799.P10357310126367385143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083802 (n + 1)

end

end A083799.P10357310126367385143

namespace A083799

/-- `(n+1)*A083802(n+1)` -/
def P10357310126367385143.Spec : Prop :=
  ∀ n, P10357310126367385143.a n = A083799 (n + 1)

end A083799

/-! ## A083799.P7959368052819264261

`A083798(∑[n+1])`
-/

namespace A083799.P7959368052819264261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083798 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083799.P7959368052819264261

namespace A083799

/-- `A083798(∑[n+1])` -/
def P7959368052819264261.Spec : Prop :=
  ∀ n, P7959368052819264261.a n = A083799 (n + 1)

end A083799

/-! ## A083799.P1052984096060122304

`(n+1)*A083801(∑[n+1])`
-/

namespace A083799.P1052984096060122304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083799.P1052984096060122304

namespace A083799

/-- `(n+1)*A083801(∑[n+1])` -/
def P1052984096060122304.Spec : Prop :=
  ∀ n, P1052984096060122304.a n = A083799 (n + 1)

end A083799

/-! ## A083799.P16644476084326718110

`(n+1)*(A110654(n)+A055641(A283390(n)))`
-/

namespace A083799.P16644476084326718110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A110654 n + A055641 (A283390 n).toNat)

end

end A083799.P16644476084326718110

namespace A083799

/-- `(n+1)*(A110654(n)+A055641(A283390(n)))` -/
def P16644476084326718110.Spec : Prop :=
  ∀ n, P16644476084326718110.a n = A083799 (n + 1)

end A083799

