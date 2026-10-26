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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A392000: Array read by antidiagonals: A(k, n) is the number of undirected closed Hamiltonian paths on the k X n knight graph.

The programs for A392000, there is no canonical definition to state claims against.
-/

/-! ## A392000.P4036434047927745441

`and(8, A153670(A047996(n)))`
-/

namespace A392000.P4036434047927745441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A153670 (A047996 n).toNat)

end

end A392000.P4036434047927745441

/-! ## A392000.P11742072330203491131

`and(8, A227345(A081577(n)))`
-/

namespace A392000.P11742072330203491131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A227345 (A081577 n).toNat)

end

end A392000.P11742072330203491131

/-! ## A392000.P3583212703908928810

`and(8, A226613(A301608(n+1)))`
-/

namespace A392000.P3583212703908928810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A226613 (A301608 (n + 1)).toNat)

end

end A392000.P3583212703908928810

/-! ## A392000.P9178739939512955964

`and(8, A342507(A263950(n+1)))`
-/

namespace A392000.P9178739939512955964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A342507 (A263950 (n + 1)).toNat)

end

end A392000.P9178739939512955964

/-! ## A392000.P3329630979587188488

`and(A000118(n), A136107(A129439(n)))`
-/

namespace A392000.P3329630979587188488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A136107 (A129439 n).toNat)

end

end A392000.P3329630979587188488

/-! ## A392000.P1332758233646780903

`and(A013973(n), A272020(A144074(n)))`
-/

namespace A392000.P1332758233646780903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013973 n) (A272020 (A144074 n).toNat)

end

end A392000.P1332758233646780903

/-! ## A392000.P12536233685301338477

`and(A286346(n), A374700(A374700(n)))`
-/

namespace A392000.P12536233685301338477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286346 n) (A374700 (A374700 n).toNat)

end

end A392000.P12536233685301338477

/-! ## A392000.P17774760950447939402

`and(A119501(A385733(n)), A206941(n+1))`
-/

namespace A392000.P17774760950447939402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119501 (A385733 n).toNat) (A206941 (n + 1))

end

end A392000.P17774760950447939402

/-! ## A392000.P8978605880039497119

`and(A234921(n+1), A344612(A233427(n)))`
-/

namespace A392000.P8978605880039497119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234921 (n + 1)) (A344612 (A233427 n).toNat)

end

end A392000.P8978605880039497119

/-! ## A392000.P2967165006903306173

`and(A005563(2*n), A344612(A233427(n)))`
-/

namespace A392000.P2967165006903306173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005563 (2 * n)) (A344612 (A233427 n).toNat)

end

end A392000.P2967165006903306173

/-!
# A392001: Numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

The programs for A392001, the canonical program `A392001.P6847206826078097584` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392001 has offset 1).

The definition of A392001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392001.P6847206826078097584

`comp[floor((A033948(n+1)-1/2)/2)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A392001

/-- `comp[floor((A033948(n+1)-1/2)/2)]` -/
def P6847206826078097584.Spec : Prop :=
  ∀ n, (P6847206826078097584.a n : ℤ) = A392001 (n + 1)

theorem P6847206826078097584.correct : P6847206826078097584.Spec := by
  intro n
  simp only [A392001, Nat.add_sub_cancel]

end A392001

/-! ## A392001.P2897379390940612393

`∩[A081534(n+1), A083390(n+1)]`
-/

namespace A392001.P2897379390940612393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392001.P2897379390940612393

namespace A392001

/-- `∩[A081534(n+1), A083390(n+1)]` -/
def P2897379390940612393.Spec : Prop :=
  ∀ n, (P2897379390940612393.a n : ℤ) = A392001 (n + 1)

end A392001

/-! ## A392001.P15568642370016489775

`lt[A014963(n+1), A176040(A344879(2*n+1))]`
-/

namespace A392001.P15568642370016489775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A344879 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392001.P15568642370016489775

namespace A392001

/-- `lt[A014963(n+1), A176040(A344879(2*n+1))]` -/
def P15568642370016489775.Spec : Prop :=
  ∀ n, (P15568642370016489775.a n : ℤ) = A392001 (n + 1)

end A392001

/-! ## A392001.P6382555048679722383

`lt[ceil((n+1)/∏{p}[n+1, (n+1)/#])+1, A034444(2*n+1)]`
-/

namespace A392001.P6382555048679722383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A392001.P6382555048679722383

namespace A392001

/-- `lt[ceil((n+1)/∏{p}[n+1, (n+1)/#])+1, A034444(2*n+1)]` -/
def P6382555048679722383.Spec : Prop :=
  ∀ n, (P6382555048679722383.a n : ℤ) = A392001 (n + 1)

end A392001

/-! ## A392001.P16734391242213714227

`eq[A040001(A160377(n+1)), A160377(2*n+1)]`
-/

namespace A392001.P16734391242213714227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A160377 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392001.P16734391242213714227

namespace A392001

/-- `eq[A040001(A160377(n+1)), A160377(2*n+1)]` -/
def P16734391242213714227.Spec : Prop :=
  ∀ n, (P16734391242213714227.a n : ℤ) = A392001 (n + 1)

end A392001

/-!
# A392002: Number of partitions of n with parts colored by {0, 1} such that the sum of colors is congruent to 1 (mod 2).

The programs for A392002, there is no canonical definition to state claims against.
-/

/-! ## A392002.P12196015517792387588

`A000712(n)-A281357(n)`
-/

namespace A392002.P12196015517792387588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A281357 n

end

end A392002.P12196015517792387588

/-! ## A392002.P1886897893573929165

`A281357(n)-A035363(n)`
-/

namespace A392002.P1886897893573929165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 n - A035363 n

end

end A392002.P1886897893573929165

/-! ## A392002.P10727010929782044289

`A000065(n)+A122768(n)+1-A281357(n)`
-/

namespace A392002.P10727010929782044289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A122768 n + 1) - A281357 n

end

end A392002.P10727010929782044289

/-! ## A392002.P9893972584959857571

`2*A006330(n)-A114921(n)-A281357(n)`
-/

namespace A392002.P9893972584959857571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 n - A114921 n - A281357 n

end

end A392002.P9893972584959857571

/-! ## A392002.P2861289658404233034

`A122768(n)+A139582(n)/2-A281357(n)`
-/

namespace A392002.P2861289658404233034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122768 n : ℚ) + (A139582 n : ℚ) / 2 - (A281357 n : ℚ)

end

end A392002.P2861289658404233034

/-! ## A392002.P16830937868697834104

`A000009(n)+A122768(n)+A047967(n)-A281357(n)`
-/

namespace A392002.P16830937868697834104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A122768 n + A047967 n) - A281357 n

end

end A392002.P16830937868697834104

/-!
# A392003: a(n) = (7*2^n - 9 + 5*(-1)^n) / 6.

The programs for A392003, the canonical program `A392003.P12848275224664217783` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392003 has offset 1).

The definition of A392003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*2^(n+1)-9+5*(-1)^(n+1))/6` (program `A392003.P18270984355386008728`, by `A392003.P18270984355386008728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392003.P18270984355386008728

`(7*2^(n+1)-9+5*(-1)^(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392003.P18270984355386008728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 2 ^ (n + 1) : ℤ) - 9 + 5 * (-1) ^ (n + 1) : ℚ) / 6

end

end A392003.P18270984355386008728

namespace A392003

/-- `(7*2^(n+1)-9+5*(-1)^(n+1))/6` -/
def P18270984355386008728.Spec : Prop :=
  ∀ n, P18270984355386008728.a n = (A392003 (n + 1) : ℚ)

theorem P18270984355386008728.correct : P18270984355386008728.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A392003, Nat.add_sub_cancel, A392003.P18270984355386008728.a, A392003.P12848275224664217783.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A392003, Nat.add_sub_cancel, A392003.P18270984355386008728.a, A392003.P12848275224664217783.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A392003

/-! ## A392003.P1741419063522983634

`∑[ogf((-4x+x^2)/(-1+x+2x^2))]`
-/

namespace A392003.P1741419063522983634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392003.P1741419063522983634

namespace A392003

/-- `∑[ogf((-4x+x^2)/(-1+x+2x^2))]` -/
def P1741419063522983634.Spec : Prop :=
  ∀ n, P1741419063522983634.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P3718743376946242089

`ogf((4x-x^2)/(1-2x-x^2+2x^3))`
-/

namespace A392003.P3718743376946242089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -2, -1, 2] n

end

end A392003.P3718743376946242089

namespace A392003

/-- `ogf((4x-x^2)/(1-2x-x^2+2x^3))` -/
def P3718743376946242089.Spec : Prop :=
  ∀ n, P3718743376946242089.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P12848275224664217783

`2*a(n-2)+a(n-1)+3` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392003

/-- `2*a(n-2)+a(n-1)+3` -/
def P12848275224664217783.Spec : Prop :=
  ∀ n, (P12848275224664217783.a n : ℤ) = A392003 (n + 1)

theorem P12848275224664217783.correct : P12848275224664217783.Spec := by
  intro n
  simp only [A392003, Nat.add_sub_cancel]

end A392003

/-! ## A392003.P2181253619006438069

`∑[2*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=4, a(2)=7`
-/

namespace A392003.P2181253619006438069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A392003.P2181253619006438069

namespace A392003

/-- `∑[2*a(n-1)]-a(n-1)` -/
def P2181253619006438069.Spec : Prop :=
  ∀ n, P2181253619006438069.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P15112618665348743207

`a(n-1)+a(n-2)+a(n-2)+3` with `a(0)=0, a(1)=4`
-/

namespace A392003.P15112618665348743207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 3))

end

end A392003.P15112618665348743207

namespace A392003

/-- `a(n-1)+a(n-2)+a(n-2)+3` -/
def P15112618665348743207.Spec : Prop :=
  ∀ n, (P15112618665348743207.a n : ℤ) = A392003 (n + 1)

end A392003

/-! ## A392003.P9675806653374118961

`3-(a(n-2)-3*a(n-2)-a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A392003.P9675806653374118961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 - (a (n - 2) - 3 * a (n - 2) - a (n - 1))

end

end A392003.P9675806653374118961

namespace A392003

/-- `3-(a(n-2)-3*a(n-2)-a(n-1))` -/
def P9675806653374118961.Spec : Prop :=
  ∀ n, P9675806653374118961.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P11730580320147096669

`2^n-A083944(n+1)`
-/

namespace A392003.P11730580320147096669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A083944 (n + 1)

end

end A392003.P11730580320147096669

namespace A392003

/-- `2^n-A083944(n+1)` -/
def P11730580320147096669.Spec : Prop :=
  ∀ n, P11730580320147096669.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P13320018433416976896

`A140359(n+1)-2^n`
-/

namespace A392003.P13320018433416976896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140359 (n + 1) - (2 ^ n : ℤ)

end

end A392003.P13320018433416976896

namespace A392003

/-- `A140359(n+1)-2^n` -/
def P13320018433416976896.Spec : Prop :=
  ∀ n, P13320018433416976896.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P2225262821743926018

`A084639(n)+A062510(n)`
-/

namespace A392003.P2225262821743926018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n + A062510 n

end

end A392003.P2225262821743926018

namespace A392003

/-- `A084639(n)+A062510(n)` -/
def P2225262821743926018.Spec : Prop :=
  ∀ n, P2225262821743926018.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P5062244432648635044

`A283642(n)+A140253(n)`
-/

namespace A392003.P5062244432648635044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A140253 n

end

end A392003.P5062244432648635044

namespace A392003

/-- `A283642(n)+A140253(n)` -/
def P5062244432648635044.Spec : Prop :=
  ∀ n, P5062244432648635044.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P11856883263842132095

`A083595(n)-A000034(n)`
-/

namespace A392003.P11856883263842132095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 n - A000034 n

end

end A392003.P11856883263842132095

namespace A392003

/-- `A083595(n)-A000034(n)` -/
def P11856883263842132095.Spec : Prop :=
  ∀ n, P11856883263842132095.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P12062093127540017343

`A033484(n)-A097072(n)`
-/

namespace A392003.P12062093127540017343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A097072 n

end

end A392003.P12062093127540017343

namespace A392003

/-- `A033484(n)-A097072(n)` -/
def P12062093127540017343.Spec : Prop :=
  ∀ n, P12062093127540017343.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P13233580492087996918

`A115102(n)-A049332(n)`
-/

namespace A392003.P13233580492087996918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115102 n - A049332 n

end

end A392003.P13233580492087996918

namespace A392003

/-- `A115102(n)-A049332(n)` -/
def P13233580492087996918.Spec : Prop :=
  ∀ n, P13233580492087996918.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P10529317959339835445

`A159290(n)-A280293(n)`
-/

namespace A392003.P10529317959339835445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 n - A280293 n

end

end A392003.P10529317959339835445

namespace A392003

/-- `A159290(n)-A280293(n)` -/
def P10529317959339835445.Spec : Prop :=
  ∀ n, P10529317959339835445.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P14891498199474878162

`A280173(n)-A277955(n)`
-/

namespace A392003.P14891498199474878162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 n - A277955 n

end

end A392003.P14891498199474878162

namespace A392003

/-- `A280173(n)-A277955(n)` -/
def P14891498199474878162.Spec : Prop :=
  ∀ n, P14891498199474878162.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P751669521986912919

`A141023(n+1)+A001045(n)`
-/

namespace A392003.P751669521986912919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 (n + 1) + A001045 n

end

end A392003.P751669521986912919

namespace A392003

/-- `A141023(n+1)+A001045(n)` -/
def P751669521986912919.Spec : Prop :=
  ∀ n, P751669521986912919.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P3133500819236776192

`A171231(n)+A153772(n+1)`
-/

namespace A392003.P3133500819236776192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n + A153772 (n + 1)

end

end A392003.P3133500819236776192

namespace A392003

/-- `A171231(n)+A153772(n+1)` -/
def P3133500819236776192.Spec : Prop :=
  ∀ n, P3133500819236776192.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P6384828232128893522

`A140253(n)+A001045(n+2)`
-/

namespace A392003.P6384828232128893522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A001045 (n + 2)

end

end A392003.P6384828232128893522

namespace A392003

/-- `A140253(n)+A001045(n+2)` -/
def P6384828232128893522.Spec : Prop :=
  ∀ n, P6384828232128893522.a n = A392003 (n + 1)

end A392003

/-! ## A392003.P5674920728609518531

`A250554(n+1)-A171231(n)`
-/

namespace A392003.P5674920728609518531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250554 (n + 1) - A171231 n

end

end A392003.P5674920728609518531

namespace A392003

/-- `A250554(n+1)-A171231(n)` -/
def P5674920728609518531.Spec : Prop :=
  ∀ n, P5674920728609518531.a n = A392003 (n + 1)

end A392003

/-!
# A392004: Numbers k such that the base-k digits of 2^k include at least one 0.

The programs for A392004, there is no canonical definition to state claims against.
-/

/-! ## A392004.P1317210620628582051

`eq[A046460(n+1), A145787(n+1)]`
-/

namespace A392004.P1317210620628582051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392004.P1317210620628582051

/-!
# A392008: Odd squarefree integers with at least 3 prime factors.

The programs for A392008, the canonical program `A392008.P17754512782616058179` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392008 has offset 1).

The definition of A392008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392008.P11926393128104882685

`filter[A216918(n+1), A008966(#)]`
-/

namespace A392008.P11926393128104882685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392008.P11926393128104882685

namespace A392008

/-- `filter[A216918(n+1), A008966(#)]` -/
def P11926393128104882685.Spec : Prop :=
  ∀ n, P11926393128104882685.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P17754512782616058179

`filter[A216918(n+1), A323154(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A392008

/-- `filter[A216918(n+1), A323154(#)]` -/
def P17754512782616058179.Spec : Prop :=
  ∀ n, P17754512782616058179.a n = A392008 (n + 1)

theorem P17754512782616058179.correct : P17754512782616058179.Spec := by
  intro n
  simp only [A392008, Nat.add_sub_cancel]

end A392008

/-! ## A392008.P8940021458311710911

`filter[A216918(n+1), A323239(#)]`
-/

namespace A392008.P8940021458311710911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A392008.P8940021458311710911

namespace A392008

/-- `filter[A216918(n+1), A323239(#)]` -/
def P8940021458311710911.Spec : Prop :=
  ∀ n, P8940021458311710911.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P11457764812103523990

`filter[A216918(n+1), A353559(#)]`
-/

namespace A392008.P11457764812103523990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A392008.P11457764812103523990

namespace A392008

/-- `filter[A216918(n+1), A353559(#)]` -/
def P11457764812103523990.Spec : Prop :=
  ∀ n, P11457764812103523990.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P12480835503674925904

`filter[A216918(n+1), A353627(#)]`
-/

namespace A392008.P12480835503674925904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A392008.P12480835503674925904

namespace A392008

/-- `filter[A216918(n+1), A353627(#)]` -/
def P12480835503674925904.Spec : Prop :=
  ∀ n, P12480835503674925904.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P14553686486361219375

`filter[A333326(n+1), A008966(#)]`
-/

namespace A392008.P14553686486361219375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392008.P14553686486361219375

namespace A392008

/-- `filter[A333326(n+1), A008966(#)]` -/
def P14553686486361219375.Spec : Prop :=
  ∀ n, P14553686486361219375.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P6757891009579017299

`filter[A333326(n+2), A323154(#)]`
-/

namespace A392008.P6757891009579017299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392008.P6757891009579017299

namespace A392008

/-- `filter[A333326(n+2), A323154(#)]` -/
def P6757891009579017299.Spec : Prop :=
  ∀ n, P6757891009579017299.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P9446349295124610901

`filter[A333326(n+2), A323239(#)]`
-/

namespace A392008.P9446349295124610901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A392008.P9446349295124610901

namespace A392008

/-- `filter[A333326(n+2), A323239(#)]` -/
def P9446349295124610901.Spec : Prop :=
  ∀ n, P9446349295124610901.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P15648919227149693021

`filter[A333326(n+2), A353559(#)]`
-/

namespace A392008.P15648919227149693021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A392008.P15648919227149693021

namespace A392008

/-- `filter[A333326(n+2), A353559(#)]` -/
def P15648919227149693021.Spec : Prop :=
  ∀ n, P15648919227149693021.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P654781516251110855

`filter[A333326(n+2), A353627(#)]`
-/

namespace A392008.P654781516251110855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A392008.P654781516251110855

namespace A392008

/-- `filter[A333326(n+2), A353627(#)]` -/
def P654781516251110855.Spec : Prop :=
  ∀ n, P654781516251110855.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P7009701121961724702

`filter[A333326(n+2), A354819(#)]`
-/

namespace A392008.P7009701121961724702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A392008.P7009701121961724702

namespace A392008

/-- `filter[A333326(n+2), A354819(#)]` -/
def P7009701121961724702.Spec : Prop :=
  ∀ n, P7009701121961724702.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P6770058043114369010

`filter[A333326(n+2), A359590(#)]`
-/

namespace A392008.P6770058043114369010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A392008.P6770058043114369010

namespace A392008

/-- `filter[A333326(n+2), A359590(#)]` -/
def P6770058043114369010.Spec : Prop :=
  ∀ n, P6770058043114369010.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P11697249870326619569

`filter[A333326(n+2), A359592(#)]`
-/

namespace A392008.P11697249870326619569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A392008.P11697249870326619569

namespace A392008

/-- `filter[A333326(n+2), A359592(#)]` -/
def P11697249870326619569.Spec : Prop :=
  ∀ n, P11697249870326619569.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P11542754138519593558

`filter[A333326(n+2), A359834(#)]`
-/

namespace A392008.P11542754138519593558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A392008.P11542754138519593558

namespace A392008

/-- `filter[A333326(n+2), A359834(#)]` -/
def P11542754138519593558.Spec : Prop :=
  ∀ n, P11542754138519593558.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P6249107995295775337

`∩[A024556(n+1), A216918(n+1)]`
-/

namespace A392008.P6249107995295775337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392008.P6249107995295775337

namespace A392008

/-- `∩[A024556(n+1), A216918(n+1)]` -/
def P6249107995295775337.Spec : Prop :=
  ∀ n, (P6249107995295775337.a n : ℤ) = A392008 (n + 1)

end A392008

/-! ## A392008.P13721198163844556731

`∩[A024556(n+1), A333326(n+1)]`
-/

namespace A392008.P13721198163844556731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392008.P13721198163844556731

namespace A392008

/-- `∩[A024556(n+1), A333326(n+1)]` -/
def P13721198163844556731.Spec : Prop :=
  ∀ n, (P13721198163844556731.a n : ℤ) = A392008 (n + 1)

end A392008

/-! ## A392008.P1534725534963940320

`∩[2*n+1, A350352(n+1)]`
-/

namespace A392008.P1534725534963940320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392008.P1534725534963940320

namespace A392008

/-- `∩[2*n+1, A350352(n+1)]` -/
def P1534725534963940320.Spec : Prop :=
  ∀ n, (P1534725534963940320.a n : ℤ) = A392008 (n + 1)

end A392008

/-! ## A392008.P5330293502388192846

`filter[A350352(n+1), A035263(#)]`
-/

namespace A392008.P5330293502388192846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A392008.P5330293502388192846

namespace A392008

/-- `filter[A350352(n+1), A035263(#)]` -/
def P5330293502388192846.Spec : Prop :=
  ∀ n, P5330293502388192846.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P7316679019567399263

`filter[A350352(n+1), A105234(#)]`
-/

namespace A392008.P7316679019567399263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A392008.P7316679019567399263

namespace A392008

/-- `filter[A350352(n+1), A105234(#)]` -/
def P7316679019567399263.Spec : Prop :=
  ∀ n, P7316679019567399263.a n = A392008 (n + 1)

end A392008

/-! ## A392008.P9840327838853351678

`filter[A306104(n+1), A008966(#)]`
-/

namespace A392008.P9840327838853351678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392008.P9840327838853351678

namespace A392008

/-- `filter[A306104(n+1), A008966(#)]` -/
def P9840327838853351678.Spec : Prop :=
  ∀ n, P9840327838853351678.a n = A392008 (n + 1)

end A392008

/-!
# A392009: Even squarefree integers with at least 3 prime factors.

The programs for A392009, the canonical program `A392009.P12527762625127748169` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392009 has offset 1).

The definition of A392009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392009.P12527762625127748169

`2*A024556(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A392009

/-- `2*A024556(n+1)` -/
def P12527762625127748169.Spec : Prop :=
  ∀ n, P12527762625127748169.a n = A392009 (n + 1)

theorem P12527762625127748169.correct : P12527762625127748169.Spec := by
  intro n
  simp only [A392009, Nat.add_sub_cancel]

end A392009

/-! ## A392009.P13627832867425762919

`filter[A039956(n+2), A354108(#)]`
-/

namespace A392009.P13627832867425762919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A392009.P13627832867425762919

namespace A392009

/-- `filter[A039956(n+2), A354108(#)]` -/
def P13627832867425762919.Spec : Prop :=
  ∀ n, P13627832867425762919.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P3234268083416468673

`filter[A238367(n+1), A008966(#)]`
-/

namespace A392009.P3234268083416468673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392009.P3234268083416468673

namespace A392009

/-- `filter[A238367(n+1), A008966(#)]` -/
def P3234268083416468673.Spec : Prop :=
  ∀ n, P3234268083416468673.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P9068701762231707580

`filter[A238367(n+1), A323154(#)]`
-/

namespace A392009.P9068701762231707580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392009.P9068701762231707580

namespace A392009

/-- `filter[A238367(n+1), A323154(#)]` -/
def P9068701762231707580.Spec : Prop :=
  ∀ n, P9068701762231707580.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P16081133971715457526

`filter[A238367(n+1), A354819(#)]`
-/

namespace A392009.P16081133971715457526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A392009.P16081133971715457526

namespace A392009

/-- `filter[A238367(n+1), A354819(#)]` -/
def P16081133971715457526.Spec : Prop :=
  ∀ n, P16081133971715457526.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P17466475479293676501

`filter[A238367(n+1), A379966(#)]`
-/

namespace A392009.P17466475479293676501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A392009.P17466475479293676501

namespace A392009

/-- `filter[A238367(n+1), A379966(#)]` -/
def P17466475479293676501.Spec : Prop :=
  ∀ n, P17466475479293676501.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P823093634179230073

`∩[A005117(n+1), A238367(n+1)]`
-/

namespace A392009.P823093634179230073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P823093634179230073

namespace A392009

/-- `∩[A005117(n+1), A238367(n+1)]` -/
def P823093634179230073.Spec : Prop :=
  ∀ n, (P823093634179230073.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P5327367875976336081

`∩[2*n, A350352(n+1)]`
-/

namespace A392009.P5327367875976336081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P5327367875976336081

namespace A392009

/-- `∩[2*n, A350352(n+1)]` -/
def P5327367875976336081.Spec : Prop :=
  ∀ n, (P5327367875976336081.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P15295657452123046253

`filter[A350352(n+1), A217586(#)]`
-/

namespace A392009.P15295657452123046253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A392009.P15295657452123046253

namespace A392009

/-- `filter[A350352(n+1), A217586(#)]` -/
def P15295657452123046253.Spec : Prop :=
  ∀ n, P15295657452123046253.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P351652669947295368

`filter[A350352(n+1), A354034(#)]`
-/

namespace A392009.P351652669947295368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A392009.P351652669947295368

namespace A392009

/-- `filter[A350352(n+1), A354034(#)]` -/
def P351652669947295368.Spec : Prop :=
  ∀ n, P351652669947295368.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P14922936765903647381

`∩[A350352(n+1), A016825(n)]`
-/

namespace A392009.P14922936765903647381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P14922936765903647381

namespace A392009

/-- `∩[A350352(n+1), A016825(n)]` -/
def P14922936765903647381.Spec : Prop :=
  ∀ n, (P14922936765903647381.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P202065689984116640

`∩[A350352(n+1), A113127(n)]`
-/

namespace A392009.P202065689984116640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P202065689984116640

namespace A392009

/-- `∩[A350352(n+1), A113127(n)]` -/
def P202065689984116640.Spec : Prop :=
  ∀ n, (P202065689984116640.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P5772779326077846326

`∩[A350352(n+1), A130824(n)]`
-/

namespace A392009.P5772779326077846326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P5772779326077846326

namespace A392009

/-- `∩[A350352(n+1), A130824(n)]` -/
def P5772779326077846326.Spec : Prop :=
  ∀ n, (P5772779326077846326.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P8184885029514007315

`∩[2*n, A365829(n+3)]`
-/

namespace A392009.P8184885029514007315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P8184885029514007315

namespace A392009

/-- `∩[2*n, A365829(n+3)]` -/
def P8184885029514007315.Spec : Prop :=
  ∀ n, (P8184885029514007315.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P16067846415047453944

`filter[A048945(n+1), A379966(#)]`
-/

namespace A392009.P16067846415047453944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A392009.P16067846415047453944

namespace A392009

/-- `filter[A048945(n+1), A379966(#)]` -/
def P16067846415047453944.Spec : Prop :=
  ∀ n, P16067846415047453944.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P9508618589827559505

`∩[A039956(n+1), A048945(n+1)]`
-/

namespace A392009.P9508618589827559505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P9508618589827559505

namespace A392009

/-- `∩[A039956(n+1), A048945(n+1)]` -/
def P9508618589827559505.Spec : Prop :=
  ∀ n, (P9508618589827559505.a n : ℤ) = A392009 (n + 1)

end A392009

/-! ## A392009.P6581363927269387557

`filter[A076771(n+1), A008966(#)]`
-/

namespace A392009.P6581363927269387557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392009.P6581363927269387557

namespace A392009

/-- `filter[A076771(n+1), A008966(#)]` -/
def P6581363927269387557.Spec : Prop :=
  ∀ n, P6581363927269387557.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P2825690717678204849

`filter[A076771(n+1), A354819(#)]`
-/

namespace A392009.P2825690717678204849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A392009.P2825690717678204849

namespace A392009

/-- `filter[A076771(n+1), A354819(#)]` -/
def P2825690717678204849.Spec : Prop :=
  ∀ n, P2825690717678204849.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P13795092577184313033

`filter[A076771(n+1), A379966(#)]`
-/

namespace A392009.P13795092577184313033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A392009.P13795092577184313033

namespace A392009

/-- `filter[A076771(n+1), A379966(#)]` -/
def P13795092577184313033.Spec : Prop :=
  ∀ n, P13795092577184313033.a n = A392009 (n + 1)

end A392009

/-! ## A392009.P10831748038518065322

`∩[A005117(n+1), A076771(n+1)]`
-/

namespace A392009.P10831748038518065322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392009.P10831748038518065322

namespace A392009

/-- `∩[A005117(n+1), A076771(n+1)]` -/
def P10831748038518065322.Spec : Prop :=
  ∀ n, (P10831748038518065322.a n : ℤ) = A392009 (n + 1)

end A392009

/-!
# A392012: The sum of the exponential divisors of the cubefree numbers.

The programs for A392012, the canonical program `A392012.P18374582958621527053` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392012 has offset 1).

The definition of A392012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392012.P4891075160851490592

`A051377(A004709(n+1))`
-/

namespace A392012.P4891075160851490592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A004709 (n + 1)).toNat

end

end A392012.P4891075160851490592

namespace A392012

/-- `A051377(A004709(n+1))` -/
def P4891075160851490592.Spec : Prop :=
  ∀ n, P4891075160851490592.a n = A392012 (n + 1)

end A392012

/-! ## A392012.P2663411241716083073

`A051377(record[∏{p}[n+1, gcd(n+1, #²)]])`
-/

namespace A392012.P2663411241716083073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A392012.P2663411241716083073

namespace A392012

/-- `A051377(record[∏{p}[n+1, gcd(n+1, #²)]])` -/
def P2663411241716083073.Spec : Prop :=
  ∀ n, P2663411241716083073.a n = A392012 (n + 1)

end A392012

/-! ## A392012.P18374582958621527053

`A057723(A004709(2*n+1-n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392012

/-- `A057723(A004709(2*n+1-n))` -/
def P18374582958621527053.Spec : Prop :=
  ∀ n, P18374582958621527053.a n = A392012 (n + 1)

theorem P18374582958621527053.correct : P18374582958621527053.Spec := by
  intro n
  simp only [A392012, Nat.add_sub_cancel]

end A392012

/-!
# A392013: The number of exponential divisors of the exponentially-2^n numbers.

The programs for A392013, the canonical program `A392013.P4907640714609065482` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392013 has offset 1).

The definition of A392013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392013.P4907640714609065482

`A049419(A138302(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392013

/-- `A049419(A138302(n+1))` -/
def P4907640714609065482.Spec : Prop :=
  ∀ n, P4907640714609065482.a n = A392013 (n + 1)

theorem P4907640714609065482.correct : P4907640714609065482.Spec := by
  intro n
  simp only [A392013, Nat.add_sub_cancel]

end A392013

/-! ## A392013.P10747137672045983879

`∏{e}[A138302(n+1), A000005(#)]`
-/

namespace A392013.P10747137672045983879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P10747137672045983879

namespace A392013

/-- `∏{e}[A138302(n+1), A000005(#)]` -/
def P10747137672045983879.Spec : Prop :=
  ∀ n, P10747137672045983879.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P18277602928184041291

`∏{e}[A138302(n+1), A029931(#)]`
-/

namespace A392013.P18277602928184041291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029931 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P18277602928184041291

namespace A392013

/-- `∏{e}[A138302(n+1), A029931(#)]` -/
def P18277602928184041291.Spec : Prop :=
  ∀ n, P18277602928184041291.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P12731442129654960335

`∏{e}[A138302(n+1), A124754(#)]`
-/

namespace A392013.P12731442129654960335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124754 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P12731442129654960335

namespace A392013

/-- `∏{e}[A138302(n+1), A124754(#)]` -/
def P12731442129654960335.Spec : Prop :=
  ∀ n, P12731442129654960335.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P9771564385931996517

`∏{e}[A138302(n+1), A299814(#)]`
-/

namespace A392013.P9771564385931996517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A299814 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P9771564385931996517

namespace A392013

/-- `∏{e}[A138302(n+1), A299814(#)]` -/
def P9771564385931996517.Spec : Prop :=
  ∀ n, P9771564385931996517.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P14319494260006934107

`∏{e}[A138302(n+1), A381800(#)]`
-/

namespace A392013.P14319494260006934107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A381800 (Nat.factorization (f1 n).natAbs p)

end

end A392013.P14319494260006934107

namespace A392013

/-- `∏{e}[A138302(n+1), A381800(#)]` -/
def P14319494260006934107.Spec : Prop :=
  ∀ n, P14319494260006934107.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P5195428241367267110

`A046951(A270428(n+1)%A257364(n+1))`
-/

namespace A392013.P5195428241367267110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.tmod (A270428 (n + 1)) (A257364 (n + 1))).toNat

end

end A392013.P5195428241367267110

namespace A392013

/-- `A046951(A270428(n+1)%A257364(n+1))` -/
def P5195428241367267110.Spec : Prop :=
  ∀ n, P5195428241367267110.a n = A392013 (n + 1)

end A392013

/-! ## A392013.P11867388405442403804

`A061704(A354180(n+1))`
-/

namespace A392013.P11867388405442403804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A354180 (n + 1)).toNat

end

end A392013.P11867388405442403804

namespace A392013

/-- `A061704(A354180(n+1))` -/
def P11867388405442403804.Spec : Prop :=
  ∀ n, P11867388405442403804.a n = A392013 (n + 1)

end A392013

/-!
# A392014: The number of exponential unitary divisors of the exponentially-2^n numbers.

The programs for A392014, the canonical program `A392014.P1818538271184462039` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392014 has offset 1).

The definition of A392014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392014.P1818538271184462039

`A278908(A138302(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392014

/-- `A278908(A138302(n+1))` -/
def P1818538271184462039.Spec : Prop :=
  ∀ n, P1818538271184462039.a n = A392014 (n + 1)

theorem P1818538271184462039.correct : P1818538271184462039.Spec := by
  intro n
  simp only [A392014, Nat.add_sub_cancel]

end A392014

/-! ## A392014.P7869186675893607837

`∏{e}[A138302(n+1), A076826(#)]`
-/

namespace A392014.P7869186675893607837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A076826 (Nat.factorization (f1 n).natAbs p)

end

end A392014.P7869186675893607837

namespace A392014

/-- `∏{e}[A138302(n+1), A076826(#)]` -/
def P7869186675893607837.Spec : Prop :=
  ∀ n, P7869186675893607837.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P3943922141640478314

`∏{e}[A138302(n+1), A143477(#)]`
-/

namespace A392014.P3943922141640478314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A143477 (Nat.factorization (f1 n).natAbs p)

end

end A392014.P3943922141640478314

namespace A392014

/-- `∏{e}[A138302(n+1), A143477(#)]` -/
def P3943922141640478314.Spec : Prop :=
  ∀ n, P3943922141640478314.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P2429454539806375572

`∏{e}[A138302(n+1), A322861(#)]`
-/

namespace A392014.P2429454539806375572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322861 (Nat.factorization (f1 n).natAbs p)

end

end A392014.P2429454539806375572

namespace A392014

/-- `∏{e}[A138302(n+1), A322861(#)]` -/
def P2429454539806375572.Spec : Prop :=
  ∀ n, P2429454539806375572.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P6636714814336683687

`A372331(A372328(A138302(n+1))²)`
-/

namespace A392014.P6636714814336683687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (A372328 (A138302 (n + 1)).toNat ^ 2).toNat

end

end A392014.P6636714814336683687

namespace A392014

/-- `A372331(A372328(A138302(n+1))²)` -/
def P6636714814336683687.Spec : Prop :=
  ∀ n, P6636714814336683687.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P16799889724194531658

`A367515(A350388(A270428(n+1))²)`
-/

namespace A392014.P16799889724194531658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A350388 (A270428 (n + 1)).toNat ^ 2).toNat

end

end A392014.P16799889724194531658

namespace A392014

/-- `A367515(A350388(A270428(n+1))²)` -/
def P16799889724194531658.Spec : Prop :=
  ∀ n, P16799889724194531658.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P17182519768542729140

`A059015(A392013(n+1)%A143823(n))`
-/

namespace A392014.P17182519768542729140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 (Int.tmod (A392013 (n + 1)) (A143823 n)).toNat

end

end A392014.P17182519768542729140

namespace A392014

/-- `A059015(A392013(n+1)%A143823(n))` -/
def P17182519768542729140.Spec : Prop :=
  ∀ n, P17182519768542729140.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P14203597315012664877

`A059015(A392013(n+1))%A391970(n+1)`
-/

namespace A392014.P14203597315012664877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059015 (A392013 (n + 1)).toNat) (A391970 (n + 1))

end

end A392014.P14203597315012664877

namespace A392014

/-- `A059015(A392013(n+1))%A391970(n+1)` -/
def P14203597315012664877.Spec : Prop :=
  ∀ n, P14203597315012664877.a n = A392014 (n + 1)

end A392014

/-! ## A392014.P5514176807036704870

`A307428(A354180(n+1))`
-/

namespace A392014.P5514176807036704870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A354180 (n + 1)).toNat

end

end A392014.P5514176807036704870

namespace A392014

/-- `A307428(A354180(n+1))` -/
def P5514176807036704870.Spec : Prop :=
  ∀ n, P5514176807036704870.a n = A392014 (n + 1)

end A392014

/-!
# A392015: The sum of the exponential divisors of the exponentially-2^n numbers.

The programs for A392015, there is no canonical definition to state claims against.
-/

/-! ## A392015.P3877364976248358000

`A333843(A354180(n+1))`
-/

namespace A392015.P3877364976248358000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A354180 (n + 1)).toNat

end

end A392015.P3877364976248358000

/-!
# A392016: The sum of the exponential unitary divisors of the exponentially-2^n numbers.

The programs for A392016, there is no canonical definition to state claims against.
-/

/-! ## A392016.P5717944710251379603

`A322857(A138302(n+1))`
-/

namespace A392016.P5717944710251379603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322857 (A138302 (n + 1)).toNat

end

end A392016.P5717944710251379603

/-! ## A392016.P17365774907424093422

`A392012(A077168(n))`
-/

namespace A392016.P17365774907424093422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392012 (A077168 n).toNat

end

end A392016.P17365774907424093422

/-! ## A392016.P13446971369786554371

`A392012(n+1)%A391967(2*n+3)`
-/

namespace A392016.P13446971369786554371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392012 (n + 1)) (A391967 (2 * n + 3))

end

end A392016.P13446971369786554371

/-! ## A392016.P5106709656616894880

`A392012(n+1)+A392000(A277330(n))`
-/

namespace A392016.P5106709656616894880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392012 (n + 1) + A392000 (A277330 n).toNat

end

end A392016.P5106709656616894880

/-! ## A392016.P6956070355121177725

`A054977(A391962(n))*A392012(n+1)`
-/

namespace A392016.P6956070355121177725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A391962 n).toNat * A392012 (n + 1)

end

end A392016.P6956070355121177725

/-!
# A392027: Partial sums of A255933.

The programs for A392027, there is no canonical definition to state claims against.
-/

/-! ## A392027.P8428473553092252055

`∑[A255933(n+1)]`
-/

namespace A392027.P8428473553092252055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392027.P8428473553092252055

/-! ## A392027.P94028480161667304

`∑[A082091(A004911(n+2)-A297234(n+10))]`
-/

namespace A392027.P94028480161667304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A004911 (n + 2) - A297234 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392027.P94028480161667304

/-! ## A392027.P14126752137559911061

`∑[A001221(A029986(2*n+3)+A000290(3*n+2))]`
-/

namespace A392027.P14126752137559911061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A029986 (2 * n + 3) + A000290 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392027.P14126752137559911061

/-! ## A392027.P15758412342264235767

`∑[A302041(A069352(2*n+3)*A335448(3*(n+1)))]`
-/

namespace A392027.P15758412342264235767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (A069352 (2 * n + 3) * A335448 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392027.P15758412342264235767

/-! ## A392027.P11251706155982490156

`A233795(A126619(n+1))`
-/

namespace A392027.P11251706155982490156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A126619 (n + 1)).toNat

end

end A392027.P11251706155982490156

/-!
# A392028: Indices of records in A255933.

The programs for A392028, there is no canonical definition to state claims against.
-/

/-! ## A392028.P5861373359221876540

`A060715(A051045(n+1)+A000069(n+1))`
-/

namespace A392028.P5861373359221876540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A051045 (n + 1) + A000069 (n + 1)).toNat

end

end A392028.P5861373359221876540

/-! ## A392028.P435617037896435031

`A179382(A385025(n+1)+A158911(n+1))`
-/

namespace A392028.P435617037896435031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (A385025 (n + 1) + A158911 (n + 1)).toNat

end

end A392028.P435617037896435031

/-!
# A392029: Number of sparse alternating sign matrices of size n.

The programs for A392029, there is no canonical definition to state claims against.
-/

/-! ## A392029.P31230023497168812

`A266534(A118929(n))`
-/

namespace A392029.P31230023497168812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266534 (A118929 n).toNat

end

end A392029.P31230023497168812

/-! ## A392029.P15988279187199533340

`A004526(A005439(n)+A000142(n))`
-/

namespace A392029.P15988279187199533340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005439 n + A000142 n).toNat

end

end A392029.P15988279187199533340

/-!
# A392030: Numbers k with squarefree kernel 210 such that both k-1 and k+1 are prime.

The programs for A392030, there is no canonical definition to state claims against.
-/

/-! ## A392030.P4959506260597449628

`∩[A147571(n+1), A384530(n+1)]`
-/

namespace A392030.P4959506260597449628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392030.P4959506260597449628

/-! ## A392030.P17253688928557767232

`∩[A147571(n+1), A393795(n+1)]`
-/

namespace A392030.P17253688928557767232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392030.P17253688928557767232

/-! ## A392030.P18206823768788831209

`∩[A080194(n+1), A384530(n+1)]`
-/

namespace A392030.P18206823768788831209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392030.P18206823768788831209

/-! ## A392030.P7015492542807071499

`∩[A085128(n+1), A127545(n+1)]`
-/

namespace A392030.P7015492542807071499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392030.P7015492542807071499

/-! ## A392030.P5549359642522393806

`∩[A127545(n+1), A147571(n+1)]`
-/

namespace A392030.P5549359642522393806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392030.P5549359642522393806

/-!
# A392033: a(n) = Sum_{k=0..floor(n/2)} binomial(k+3,3) * binomial(n,k) * binomial(n-k,k).

The programs for A392033, there is no canonical definition to state claims against.
-/

/-! ## A392033.P10041330796018470910

`A008616(A000040(2*n+3)*A054854(n))`
-/

namespace A392033.P10041330796018470910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A000040 (2 * n + 3) * A054854 n).toNat

end

end A392033.P10041330796018470910

/-!
# A392034: a(n) = prime(n)*(prime(n+1) - prime(n))/2.

The programs for A392034, the canonical program `A392034.P3707045700656422187` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392034 has offset 1).

The definition of A392034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392034.P3707045700656422187

`A291463(n+1)/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392034

/-- `A291463(n+1)/2` -/
def P3707045700656422187.Spec : Prop :=
  ∀ n, P3707045700656422187.a n = (A392034 (n + 1) : ℚ)

end A392034

/-! ## A392034.P16835923576238688830

`A000040(n+1)*A001223(n+1)/2`
-/

namespace A392034.P16835923576238688830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A001223 (n + 1) : ℚ) / 2

end

end A392034.P16835923576238688830

namespace A392034

/-- `A000040(n+1)*A001223(n+1)/2` -/
def P16835923576238688830.Spec : Prop :=
  ∀ n, P16835923576238688830.a n = (A392034 (n + 1) : ℚ)

end A392034

/-! ## A392034.P2919204563019033855

`A000040(n+1)*(A000040(n+2)-A000040(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392034.P2919204563019033855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * (A000040 (n + 2) - A000040 (n + 1)) : ℚ) / 2

end

end A392034.P2919204563019033855

namespace A392034

/-- `A000040(n+1)*(A000040(n+2)-A000040(n+1))/2` -/
def P2919204563019033855.Spec : Prop :=
  ∀ n, P2919204563019033855.a n = (A392034 (n + 1) : ℚ)

end A392034

/-! ## A392034.P18435237204180468110

`A014303(n+1)-A008837(n+1)`
-/

namespace A392034.P18435237204180468110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014303 (n + 1) - A008837 (n + 1)

end

end A392034.P18435237204180468110

namespace A392034

/-- `A014303(n+1)-A008837(n+1)` -/
def P18435237204180468110.Spec : Prop :=
  ∀ n, P18435237204180468110.a n = A392034 (n + 1)

end A392034

/-! ## A392034.P885419140014095474

`A006005(n+1)+A006005(n+1)*A100820(n+1)`
-/

namespace A392034.P885419140014095474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + A006005 (n + 1) * A100820 (n + 1)

end

end A392034.P885419140014095474

namespace A392034

/-- `A006005(n+1)+A006005(n+1)*A100820(n+1)` -/
def P885419140014095474.Spec : Prop :=
  ∀ n, P885419140014095474.a n = A392034 (n + 1)

end A392034

/-! ## A392034.P16687238352466963384

`A000040(n+1)*A006254(n+1)-A034953(n+1)`
-/

namespace A392034.P16687238352466963384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006254 (n + 1) - A034953 (n + 1)

end

end A392034.P16687238352466963384

namespace A392034

/-- `A000040(n+1)*A006254(n+1)-A034953(n+1)` -/
def P16687238352466963384.Spec : Prop :=
  ∀ n, P16687238352466963384.a n = A392034 (n + 1)

end A392034

/-! ## A392034.P8409452430764500199

`(A162800(n+1)-A006005(n+1))*A006005(n+1)`
-/

namespace A392034.P8409452430764500199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 (n + 1) - A006005 (n + 1)) * A006005 (n + 1)

end

end A392034.P8409452430764500199

namespace A392034

/-- `(A162800(n+1)-A006005(n+1))*A006005(n+1)` -/
def P8409452430764500199.Spec : Prop :=
  ∀ n, P8409452430764500199.a n = A392034 (n + 1)

end A392034

/-! ## A392034.P15650032254238978526

`A040976(n+2)+A040976(n+1)*A100820(n+1)`
-/

namespace A392034.P15650032254238978526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) + A040976 (n + 1) * A100820 (n + 1)

end

end A392034.P15650032254238978526

namespace A392034

/-- `A040976(n+2)+A040976(n+1)*A100820(n+1)` -/
def P15650032254238978526.Spec : Prop :=
  ∀ n, P15650032254238978526.a n = A392034 (n + 1)

end A392034

/-! ## A392034.P2142818460285351104

`A001223(n+1)/A000079(n)*A239885(n+1)`
-/

namespace A392034.P2142818460285351104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A000079 n : ℚ) * (A239885 (n + 1) : ℚ)

end

end A392034.P2142818460285351104

namespace A392034

/-- `A001223(n+1)/A000079(n)*A239885(n+1)` -/
def P2142818460285351104.Spec : Prop :=
  ∀ n, P2142818460285351104.a n = (A392034 (n + 1) : ℚ)

end A392034

/-! ## A392034.P12687989224944311748

`A001223(n+1)/A070323(n+1)*A037169(n+1)`
-/

namespace A392034.P12687989224944311748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A070323 (n + 1) : ℚ) * (A037169 (n + 1) : ℚ)

end

end A392034.P12687989224944311748

namespace A392034

/-- `A001223(n+1)/A070323(n+1)*A037169(n+1)` -/
def P12687989224944311748.Spec : Prop :=
  ∀ n, P12687989224944311748.a n = (A392034 (n + 1) : ℚ)

end A392034

/-! ## A392034.P10642462610509755296

`A001281(A291463(n+1))`
-/

namespace A392034.P10642462610509755296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A291463 (n + 1)).toNat

end

end A392034.P10642462610509755296

namespace A392034

/-- `A001281(A291463(n+1))` -/
def P10642462610509755296.Spec : Prop :=
  ∀ n, P10642462610509755296.a n = A392034 (n + 1)

end A392034

/-!
# A392035: Irregular table read by rows: the n-th row contains, in weakly decreasing order, the positive integers whose squares sum to n as obtained by the greedy algorithm.

The programs for A392035, there is no canonical definition to state claims against.
-/

/-! ## A392035.P9258478908785872026

`sqrt(A350674(n+1))`
-/

namespace A392035.P9258478908785872026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350674 (n + 1) : ℝ)

end

end A392035.P9258478908785872026

/-! ## A392035.P2948743108110669235

`A002260(2*A350674(n+1))`
-/

namespace A392035.P2948743108110669235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A350674 (n + 1)).toNat

end

end A392035.P2948743108110669235

/-! ## A392035.P90380529640751584

`A063772(A350674(2*n+1-n))`
-/

namespace A392035.P90380529640751584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A350674 (2 * n + 1 - n)).toNat

end

end A392035.P90380529640751584

/-! ## A392035.P11007439571127831018

`A063772(A063772(A350674(n+1)²))`
-/

namespace A392035.P11007439571127831018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A063772 (A350674 (n + 1) ^ 2).toNat).toNat

end

end A392035.P11007439571127831018

/-! ## A392035.P5911708682682573180

`A350674(n+1)^(A007530(A007814(2*n+3)+1)/10)`
-/

namespace A392035.P5911708682682573180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350674 (n + 1) : ℝ) ^ ((A007530 (A007814 (2 * n + 3) + 1).toNat : ℚ) / 10 : ℝ)

end

end A392035.P5911708682682573180

/-! ## A392035.P3791778314039363728

`A190321(A055655(A350674(n+1)²))`
-/

namespace A392035.P3791778314039363728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A055655 (A350674 (n + 1) ^ 2).toNat).toNat

end

end A392035.P3791778314039363728

/-!
# A392036: Irregular table read by rows: the n-th row contains, in weakly decreasing order, the powers of 2 summing to n as obtained by the greedy algorithm.

The programs for A392036, there is no canonical definition to state claims against.
-/

/-! ## A392036.P10713591773186786673

`2^A272011(n+1)`
-/

namespace A392036.P10713591773186786673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A272011 (n + 1) : ℤ)

end

end A392036.P10713591773186786673

/-! ## A392036.P3847921761042123820

`2^(A272020(n)-1)`
-/

namespace A392036.P3847921761042123820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A272020 n - 1 : ℤ)

end

end A392036.P3847921761042123820

/-! ## A392036.P1478960951368748529

`A011782(A272020(n))`
-/

namespace A392036.P1478960951368748529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A272020 n).toNat

end

end A392036.P1478960951368748529

/-! ## A392036.P3888679516906026971

`A000079(A272011(n+1))`
-/

namespace A392036.P3888679516906026971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A272011 (n + 1)).toNat

end

end A392036.P3888679516906026971

/-! ## A392036.P13922283596864112492

`A034008(A272020(n)+1)`
-/

namespace A392036.P13922283596864112492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A272020 n + 1).toNat

end

end A392036.P13922283596864112492

/-! ## A392036.P16754692254705624125

`A166444(A272020(n)+1)`
-/

namespace A392036.P16754692254705624125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A272020 n + 1).toNat

end

end A392036.P16754692254705624125

/-! ## A392036.P13685653226775732502

`A000079(A272020(n)-1)`
-/

namespace A392036.P13685653226775732502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A272020 n - 1).toNat

end

end A392036.P13685653226775732502

/-! ## A392036.P9678918873919020808

`filter[A051933(n), A209229(#)]`
-/

namespace A392036.P9678918873919020808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A392036.P9678918873919020808

/-! ## A392036.P7117612475988712819

`A263327(A272011(n+1)+1)`
-/

namespace A392036.P7117612475988712819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263327 (A272011 (n + 1) + 1).toNat

end

end A392036.P7117612475988712819

/-! ## A392036.P2237122698971672712

`filter[A352910(n+1), A209229(#)]`
-/

namespace A392036.P2237122698971672712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A392036.P2237122698971672712

/-!
# A392039: Irregular triangle, read by rows: T(n,k) is the unique natural number such that the T(n,k)-th row of A125106 is equivalent to k-th partition of n in A026792.

The programs for A392039, there is no canonical definition to state claims against.
-/

/-! ## A392039.P9526903754659548134

`A156552(A334436(n+1))`
-/

namespace A392039.P9526903754659548134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A334436 (n + 1)).toNat

end

end A392039.P9526903754659548134

/-!
# A392040: Numbers that are the concatenation of the digit-wise multiplication of k*m, with 1 < m < k, keeping the leading digits of k when m has fewer digits.

The programs for A392040, there is no canonical definition to state claims against.
-/

/-! ## A392040.P15245135836855253485

`lt[A156752(A135898(n)), A032741(n)]`
-/

namespace A392040.P15245135836855253485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 (A135898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392040.P15245135836855253485

/-! ## A392040.P10002214986792598331

`lt[A077592(n+1), A300436(A304442(n))]`
-/

namespace A392040.P10002214986792598331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300436 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392040.P10002214986792598331

/-! ## A392040.P11877980081243620711

`A337381(n+1)+A083889(A364148(3*n+4))`
-/

namespace A392040.P11877980081243620711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337381 (n + 1) + A083889 (A364148 (3 * n + 4)).toNat

end

end A392040.P11877980081243620711

/-!
# A392042: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,3*(n-3*k)).

The programs for A392042, the canonical program `A392042.P4313322309876102670` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392042 has offset 0).

The definition of A392042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392042.P4313322309876102670

`6*a(n-3)-12*a(n-6)+8*a(n-9)+24*a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=4, a(7)=0, a(8)=0, a(9)=8`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392042

/-- `6*a(n-3)-12*a(n-6)+8*a(n-9)+24*a(n-10)` -/
def P4313322309876102670.Spec : Prop :=
  ∀ n, P4313322309876102670.a n = A392042 n

theorem P4313322309876102670.correct : P4313322309876102670.Spec := by
  intro n
  simp only [A392042]

end A392042

/-!
# A392043: a(n) = Sum_{k=0..floor(n/3)} (k+1) * 2^k * 3^(n-3*k) * binomial(k,3*(n-3*k)).

The programs for A392043, there is no canonical definition to state claims against.
-/

/-! ## A392043.P12472166586736274783

`A055642(A000051(n+3))*A392042(n)`
-/

namespace A392043.P12472166586736274783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000051 (n + 3)).toNat * A392042 n

end

end A392043.P12472166586736274783

/-! ## A392043.P2426791203367264051

`A392075(A087036(n))`
-/

namespace A392043.P2426791203367264051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392075 (A087036 n).toNat

end

end A392043.P2426791203367264051

/-! ## A392043.P6913144584536273007

`A392075(A087051(n))`
-/

namespace A392043.P6913144584536273007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392075 (A087051 n).toNat

end

end A392043.P6913144584536273007

/-! ## A392043.P14859257865142170651

`A079978(A392003(n+4))*A391960(n)`
-/

namespace A392043.P14859257865142170651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A392003 (n + 4)).toNat * A391960 n

end

end A392043.P14859257865142170651

/-! ## A392043.P2887469467465759472

`and(A000203(A288336(n)), A268448(n+1))`
-/

namespace A392043.P2887469467465759472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A288336 n).toNat) (A268448 (n + 1))

end

end A392043.P2887469467465759472

/-!
# A392044: a(n) = Sum_{k=0..n} (k+1) * binomial(k,3*(n-k)).

The programs for A392044, there is no canonical definition to state claims against.
-/

/-! ## A392044.P4876085457349190307

`∑[A241919(A330045(n)+1)]`
-/

namespace A392044.P4876085457349190307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A330045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392044.P4876085457349190307

/-! ## A392044.P880668126392207483

`A117448(12*A034827(n))+n`
-/

namespace A392044.P880668126392207483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (12 * A034827 n).toNat + (n : ℤ)

end

end A392044.P880668126392207483

/-!
# A392045: Odd positive integers whose canonical prime factorization p_1^e_1*...*p_r^e_r satisfies that {p_1, ..., p_r, e_1, ..., e_r} is a set of 2*r consecutive integers.

The programs for A392045, there is no canonical definition to state claims against.
-/

/-! ## A392045.P1331595670799169044

`∩[A144913(n+1), A392047(n+1)]`
-/

namespace A392045.P1331595670799169044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392045.P1331595670799169044

/-! ## A392045.P16460909733758586922

`∩[A392047(n+1), A016754(n)]`
-/

namespace A392045.P16460909733758586922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392045.P16460909733758586922

/-! ## A392045.P17690210791663920185

`∩[A075109(n+1), A392047(n+1)]`
-/

namespace A392045.P17690210791663920185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392045.P17690210791663920185

/-! ## A392045.P8187778988867656522

`∩[A392047(n+1), A000290(n)]`
-/

namespace A392045.P8187778988867656522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392045.P8187778988867656522

/-! ## A392045.P15307630955706387300

`∩[A063735(n+1), A392047(n+1)]`
-/

namespace A392045.P15307630955706387300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392045.P15307630955706387300

/-!
# A392046: Even positive integers whose canonical prime factorization p_1^e_1*...*p_r^e_r satisfies that {p_1, ..., p_r, e_1, ..., e_r} is a set of 2*r consecutive integers.

The programs for A392046, there is no canonical definition to state claims against.
-/

/-! ## A392046.P7520147388030292162

`∩[A085125(n+1), A392047(n+1)]`
-/

namespace A392046.P7520147388030292162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392046.P7520147388030292162

/-! ## A392046.P2606078729208179651

`∩[A068563(n+1), A392047(n+1)]`
-/

namespace A392046.P2606078729208179651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392046.P2606078729208179651

/-! ## A392046.P15931260350826247217

`∩[A090778(n+1), A392047(n+1)]`
-/

namespace A392046.P15931260350826247217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392046.P15931260350826247217

/-! ## A392046.P9094952366440528699

`∩[A124240(n+1), A392047(n+1)]`
-/

namespace A392046.P9094952366440528699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392046.P9094952366440528699

/-! ## A392046.P14959626044610627797

`∩[A177807(n+1), A392047(n+1)]`
-/

namespace A392046.P14959626044610627797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392046.P14959626044610627797

/-!
# A392047: Positive integers whose canonical prime factorization p_1^e_1*...*p_r^e_r satisfies that {p_1, ..., p_r, e_1, ..., e_r} is a set of 2*r consecutive integers.

The programs for A392047, there is no canonical definition to state claims against.
-/

/-! ## A392047.P2785102380885416709

`∪[A392045(n+1), A392046(n+1)]`
-/

namespace A392047.P2785102380885416709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392047.P2785102380885416709

/-!
# A392051: Nonnegative integers such that the harmonic mean of the digits is an integer.

The programs for A392051, there is no canonical definition to state claims against.
-/

/-! ## A392051.P7638262900874445071

`∪[A011540(n+1), A062179(n+1)]`
-/

namespace A392051.P7638262900874445071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392051.P7638262900874445071

/-! ## A392051.P5606314916256948570

`∪[A062179(n+1), A284375(n+1)]`
-/

namespace A392051.P5606314916256948570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392051.P5606314916256948570

/-! ## A392051.P1681481804787978662

`eq[1, A392050(n)]`
-/

namespace A392051.P1681481804787978662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392051.P1681481804787978662

/-! ## A392051.P16110566899139850359

`eq[A004428(n), A392049(n)]`
-/

namespace A392051.P16110566899139850359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392051.P16110566899139850359

/-! ## A392051.P9785842846085171364

`eq[A004429(n), A392049(n)]`
-/

namespace A392051.P9785842846085171364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392051.P9785842846085171364

/-!
# A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

The programs for A392055, the canonical program `A392055.P15206338133621600335` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392055 has offset 1).

The definition of A392055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392055.P17970486261381115783

`A072438(A014963(n+1))`
-/

namespace A392055.P17970486261381115783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A014963 (n + 1)).toNat

end

end A392055.P17970486261381115783

namespace A392055

/-- `A072438(A014963(n+1))` -/
def P17970486261381115783.Spec : Prop :=
  ∀ n, P17970486261381115783.a n = A392055 (n + 1)

end A392055

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A392055

/-- `A014963(A354031(n+1)+n+1)` -/
def P15206338133621600335.Spec : Prop :=
  ∀ n, P15206338133621600335.a n = A392055 (n + 1)

theorem P15206338133621600335.correct : P15206338133621600335.Spec := by
  intro n
  simp only [A392055, Nat.add_sub_cancel]

end A392055

/-! ## A392055.P531521606121078384

`gcd(A004018(∏{p}[n+1, #]), A014963(n+1))`
-/

namespace A392055.P531521606121078384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004018 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A014963 (n + 1))

end

end A392055.P531521606121078384

namespace A392055

/-- `gcd(A004018(∏{p}[n+1, #]), A014963(n+1))` -/
def P531521606121078384.Spec : Prop :=
  ∀ n, (P531521606121078384.a n : ℤ) = A392055 (n + 1)

end A392055

/-! ## A392055.P495100439369822878

`gcd(A014963(n+1), A258228(A020639(n+1)))`
-/

namespace A392055.P495100439369822878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (n + 1)) (A258228 (A020639 (n + 1)).toNat)

end

end A392055.P495100439369822878

namespace A392055

/-- `gcd(A014963(n+1), A258228(A020639(n+1)))` -/
def P495100439369822878.Spec : Prop :=
  ∀ n, (P495100439369822878.a n : ℤ) = A392055 (n + 1)

end A392055

/-! ## A392055.P8823152772522274804

`gcd(A072438(n+1), A084318(n+1))`
-/

namespace A392055.P8823152772522274804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072438 (n + 1)) (A084318 (n + 1))

end

end A392055.P8823152772522274804

namespace A392055

/-- `gcd(A072438(n+1), A084318(n+1))` -/
def P8823152772522274804.Spec : Prop :=
  ∀ n, (P8823152772522274804.a n : ℤ) = A392055 (n + 1)

end A392055

/-! ## A392055.P4218603875953646708

`gcd(A014963(n+1), A245930(n))`
-/

namespace A392055.P4218603875953646708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (n + 1)) (A245930 n)

end

end A392055.P4218603875953646708

namespace A392055

/-- `gcd(A014963(n+1), A245930(n))` -/
def P4218603875953646708.Spec : Prop :=
  ∀ n, (P4218603875953646708.a n : ℤ) = A392055 (n + 1)

end A392055

/-! ## A392055.P16739417125475571144

`A342257(A227553(n+1))`
-/

namespace A392055.P16739417125475571144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (A227553 (n + 1)).toNat

end

end A392055.P16739417125475571144

namespace A392055

/-- `A342257(A227553(n+1))` -/
def P16739417125475571144.Spec : Prop :=
  ∀ n, P16739417125475571144.a n = A392055 (n + 1)

end A392055

/-! ## A392055.P3284682266754367220

`gcd(A337246(n+1), A353387(n+2))`
-/

namespace A392055.P3284682266754367220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337246 (n + 1)) (A353387 (n + 2))

end

end A392055.P3284682266754367220

namespace A392055

/-- `gcd(A337246(n+1), A353387(n+2))` -/
def P3284682266754367220.Spec : Prop :=
  ∀ n, (P3284682266754367220.a n : ℤ) = A392055 (n + 1)

end A392055

/-! ## A392055.P6482308854434397717

`A307641(A356209(n+1))`
-/

namespace A392055.P6482308854434397717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (A356209 (n + 1)).toNat

end

end A392055.P6482308854434397717

namespace A392055

/-- `A307641(A356209(n+1))` -/
def P6482308854434397717.Spec : Prop :=
  ∀ n, P6482308854434397717.a n = A392055 (n + 1)

end A392055

/-!
# A392058: Array read by downward antidiagonals: A(n,k) = A(n-1,k+1) + Sum_{j=0..k} binomial(k+1,j)*A(n-1,j)*A(k-j,0) with A(0,k) = 1.

The programs for A392058, there is no canonical definition to state claims against.
-/

/-! ## A392058.P10287756651053764606

`A325609(A191398(n))`
-/

namespace A392058.P10287756651053764606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325609 (A191398 n).toNat

end

end A392058.P10287756651053764606

/-!
# A392059: a(n) is the product of all p^k such that p is a ramified or inert prime in the Gaussian integers and k is the largest such k satisfying p^k <= n.

The programs for A392059, the canonical program `A392059.P3818747102028578455` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392059 has offset 1).

The definition of A392059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392059.P3818747102028578455

`∏[A392055(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A392059

/-- `∏[A392055(n+1)]` -/
def P3818747102028578455.Spec : Prop :=
  ∀ n, P3818747102028578455.a n = A392059 (n + 1)

theorem P3818747102028578455.correct : P3818747102028578455.Spec := by
  intro n
  simp only [A392059, Nat.add_sub_cancel]

end A392059

/-! ## A392059.P13796763479704755762

`a(n-1)*A392055((n+1)²)` with `a(0)=1`
-/

namespace A392059.P13796763479704755762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A392055 ((n + 1) ^ 2)

end

end A392059.P13796763479704755762

namespace A392059

/-- `a(n-1)*A392055((n+1)²)` -/
def P13796763479704755762.Spec : Prop :=
  ∀ n, P13796763479704755762.a n = A392059 (n + 1)

end A392059

/-! ## A392059.P4318450390439322604

`A116417(2*A325894(n))`
-/

namespace A392059.P4318450390439322604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (2 * A325894 n).toNat

end

end A392059.P4318450390439322604

namespace A392059

/-- `A116417(2*A325894(n))` -/
def P4318450390439322604.Spec : Prop :=
  ∀ n, P4318450390439322604.a n = A392059 (n + 1)

end A392059

/-! ## A392059.P11307928187266893923

`A324500(A005009(n))`
-/

namespace A392059.P11307928187266893923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (A005009 n).toNat

end

end A392059.P11307928187266893923

namespace A392059

/-- `A324500(A005009(n))` -/
def P11307928187266893923.Spec : Prop :=
  ∀ n, P11307928187266893923.a n = A392059 (n + 1)

end A392059

/-! ## A392059.P2004190241792390485

`A060791(A284650(n+1))`
-/

namespace A392059.P2004190241792390485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A284650 (n + 1)).toNat

end

end A392059.P2004190241792390485

namespace A392059

/-- `A060791(A284650(n+1))` -/
def P2004190241792390485.Spec : Prop :=
  ∀ n, P2004190241792390485.a n = A392059 (n + 1)

end A392059

/-!
# A392063: Number of colored partitions of n into distinct parts such that all parts have distinct colors and the color of a part of size i is in {1..i}.

The programs for A392063, there is no canonical definition to state claims against.
-/

/-! ## A392063.P5729803226347273150

`A329978(A369695(n))`
-/

namespace A392063.P5729803226347273150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A369695 n).toNat

end

end A392063.P5729803226347273150

/-! ## A392063.P18294428086331958894

`A239235(A051026(n)-∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A392063.P18294428086331958894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A051026 n - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat

end

end A392063.P18294428086331958894

/-! ## A392063.P14926571491093421803

`A123110(A037955(2*n))+A103650(n+1)`
-/

namespace A392063.P14926571491093421803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 (A037955 (2 * n)).toNat + A103650 (n + 1)

end

end A392063.P14926571491093421803

/-! ## A392063.P4844728385831413779

`A103650(n+1)+A035182(A027642(3*(n+1)))`
-/

namespace A392063.P4844728385831413779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + A035182 (A027642 (3 * (n + 1))).toNat

end

end A392063.P4844728385831413779

/-! ## A392063.P5355956656142746637

`A241035(A250120(2*n)+A070939(3*(n+1)))`
-/

namespace A392063.P5355956656142746637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 (A250120 (2 * n) + A070939 (3 * (n + 1))).toNat

end

end A392063.P5355956656142746637

/-!
# A392065: a(n) = number of primes with unit exponent in the prime factorization of n, or 1 if no such primes exist.

The programs for A392065, the canonical program `A392065.P16173427328749793390` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392065 has offset 1).

The definition of A392065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392065.P16173427328749793390

`∏{e}[∏{e}[n+1, ceil(2/#)], #]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392065

/-- `∏{e}[∏{e}[n+1, ceil(2/#)], #]` -/
def P16173427328749793390.Spec : Prop :=
  ∀ n, (P16173427328749793390.a n : ℤ) = A392065 (n + 1)

theorem P16173427328749793390.correct : P16173427328749793390.Spec := by
  intro n
  simp only [A392065, Nat.add_sub_cancel]

end A392065

/-! ## A392065.P6574363981836331395

`∏{e}[A056671(n+1), #]`
-/

namespace A392065.P6574363981836331395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A392065.P6574363981836331395

namespace A392065

/-- `∏{e}[A056671(n+1), #]` -/
def P6574363981836331395.Spec : Prop :=
  ∀ n, (P6574363981836331395.a n : ℤ) = A392065 (n + 1)

end A392065

/-! ## A392065.P10859119357937286085

`val(A351944(n+1), 2)+1`
-/

namespace A392065.P10859119357937286085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351944 (n + 1)).toNat 2 + 1

end

end A392065.P10859119357937286085

namespace A392065

/-- `val(A351944(n+1), 2)+1` -/
def P10859119357937286085.Spec : Prop :=
  ∀ n, (P10859119357937286085.a n : ℤ) = A392065 (n + 1)

end A392065

/-! ## A392065.P12544410098992777302

`A304407(∏{e}[n+1, ceil(2/#)])`
-/

namespace A392065.P12544410098992777302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304407 (∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉).toNat

end

end A392065.P12544410098992777302

namespace A392065

/-- `A304407(∏{e}[n+1, ceil(2/#)])` -/
def P12544410098992777302.Spec : Prop :=
  ∀ n, P12544410098992777302.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P17211666833067917886

`A064372(A055231(n+1))`
-/

namespace A392065.P17211666833067917886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A055231 (n + 1)).toNat

end

end A392065.P17211666833067917886

namespace A392065

/-- `A064372(A055231(n+1))` -/
def P17211666833067917886.Spec : Prop :=
  ∀ n, P17211666833067917886.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P17963155496808937648

`A290109(A056671(n+1))`
-/

namespace A392065.P17963155496808937648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (A056671 (n + 1)).toNat

end

end A392065.P17963155496808937648

namespace A392065

/-- `A290109(A056671(n+1))` -/
def P17963155496808937648.Spec : Prop :=
  ∀ n, P17963155496808937648.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P13642549797023758878

`A112526(n+1)+A056169(n+1)`
-/

namespace A392065.P13642549797023758878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) + A056169 (n + 1)

end

end A392065.P13642549797023758878

namespace A392065

/-- `A112526(n+1)+A056169(n+1)` -/
def P13642549797023758878.Spec : Prop :=
  ∀ n, P13642549797023758878.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P16332553883440629799

`A072411(A000005(∏{p}[n+1, lcm(n+1, #²)/(n+1)]))`
-/

namespace A392065.P16332553883440629799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A000005 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A392065.P16332553883440629799

namespace A392065

/-- `A072411(A000005(∏{p}[n+1, lcm(n+1, #²)/(n+1)]))` -/
def P16332553883440629799.Spec : Prop :=
  ∀ n, P16332553883440629799.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P6931298417558396216

`A001462(gcd(A351944(n+1), A366637(n)))`
-/

namespace A392065.P6931298417558396216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.gcd (A351944 (n + 1)) (A366637 n))

end

end A392065.P6931298417558396216

namespace A392065

/-- `A001462(gcd(A351944(n+1), A366637(n)))` -/
def P6931298417558396216.Spec : Prop :=
  ∀ n, P6931298417558396216.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P1226499147067803674

`A061704(2^A056671(n+1))`
-/

namespace A392065.P1226499147067803674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056671 (n + 1) : ℤ))).toNat

end

end A392065.P1226499147067803674

namespace A392065

/-- `A061704(2^A056671(n+1))` -/
def P1226499147067803674.Spec : Prop :=
  ∀ n, P1226499147067803674.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P4859823148646424326

`A005361(A365498((n+1)²))`
-/

namespace A392065.P4859823148646424326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A365498 ((n + 1) ^ 2)).toNat

end

end A392065.P4859823148646424326

namespace A392065

/-- `A005361(A365498((n+1)²))` -/
def P4859823148646424326.Spec : Prop :=
  ∀ n, P4859823148646424326.a n = A392065 (n + 1)

end A392065

/-! ## A392065.P8779295146205641443

`A005361(A005361(A363334((n+1)²)))`
-/

namespace A392065.P8779295146205641443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005361 (A363334 ((n + 1) ^ 2)).toNat).toNat

end

end A392065.P8779295146205641443

namespace A392065

/-- `A005361(A005361(A363334((n+1)²)))` -/
def P8779295146205641443.Spec : Prop :=
  ∀ n, P8779295146205641443.a n = A392065 (n + 1)

end A392065

/-!
# A392066: Irregular triangle read by rows: row n lists the primes with exponent > 1 in the prime factorization of n. If no such primes exist, row n = {0}.

The programs for A392066, there is no canonical definition to state claims against.
-/

/-! ## A392066.P7349134521357323483

`and(A346378(n), A392108(n+1))`
-/

namespace A392066.P7349134521357323483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A346378 n) (A392108 (n + 1))

end

end A392066.P7349134521357323483

/-! ## A392066.P10595439628667190064

`and(A392108(n+1), A397262(n))`
-/

namespace A392066.P10595439628667190064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A392108 (n + 1)) (A397262 n)

end

end A392066.P10595439628667190064

/-! ## A392066.P11871541153848036855

`and(A111671(n+1), A392108(n+1))`
-/

namespace A392066.P11871541153848036855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111671 (n + 1)) (A392108 (n + 1))

end

end A392066.P11871541153848036855

/-! ## A392066.P9205141799591901064

`and(A213215(n+1), A392108(n+1))`
-/

namespace A392066.P9205141799591901064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213215 (n + 1)) (A392108 (n + 1))

end

end A392066.P9205141799591901064

/-! ## A392066.P12295878393382525324

`and(A214796(n+1), A392108(n+1))`
-/

namespace A392066.P12295878393382525324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214796 (n + 1)) (A392108 (n + 1))

end

end A392066.P12295878393382525324

/-!
# A392069: Powers k^m divisible by only 1 prime cube, with m > 1 and nonsquarefree weak k (in A332785).

The programs for A392069, there is no canonical definition to state claims against.
-/

/-! ## A392069.P5340237908165328419

`∩[A391491(n+1), n²]`
-/

namespace A392069.P5340237908165328419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A392069.P5340237908165328419

/-! ## A392069.P2813590408576398099

`∩[A030140(n+1), A391491(n+1)]`
-/

namespace A392069.P2813590408576398099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P2813590408576398099

/-! ## A392069.P13014857815026348324

`∩[A000290(n), A391491(n+1)]`
-/

namespace A392069.P13014857815026348324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P13014857815026348324

/-! ## A392069.P15836797769214141687

`∩[A002760(n+1), A391491(n+1)]`
-/

namespace A392069.P15836797769214141687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P15836797769214141687

/-! ## A392069.P1926814696524627701

`∩[A188915(n), A391491(n+1)]`
-/

namespace A392069.P1926814696524627701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P1926814696524627701

/-! ## A392069.P12560918237549402129

`∩[A001597(n+1), A391491(n+1)]`
-/

namespace A392069.P12560918237549402129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P12560918237549402129

/-! ## A392069.P15727425366106261676

`∩[A034793(n+1), A391491(n+1)]`
-/

namespace A392069.P15727425366106261676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P15727425366106261676

/-! ## A392069.P13862710766950332596

`∩[A366854(n+1), A377846(n+1)]`
-/

namespace A392069.P13862710766950332596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P13862710766950332596

/-! ## A392069.P10443588347235285419

`∩[A377846(n+1), A380857(n+1)]`
-/

namespace A392069.P10443588347235285419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P10443588347235285419

/-! ## A392069.P922652545361089810

`∩[A377846(n+1), A386762(n+1)]`
-/

namespace A392069.P922652545361089810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P922652545361089810

/-! ## A392069.P16620815744013354674

`∩[A377846(n+1), A389864(n+1)]`
-/

namespace A392069.P16620815744013354674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P16620815744013354674

/-! ## A392069.P268981809469084103

`∩[A377846(n+1), A390379(n+1)]`
-/

namespace A392069.P268981809469084103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P268981809469084103

/-! ## A392069.P8381435079990208645

`∩[A377846(n+1), A391416(n+1)]`
-/

namespace A392069.P8381435079990208645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P8381435079990208645

/-! ## A392069.P4972877949493348294

`∩[A181385(n), A391491(n+1)]`
-/

namespace A392069.P4972877949493348294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P4972877949493348294

/-! ## A392069.P1763028572151047917

`∩[A155570(n+1), A391491(n+1)]`
-/

namespace A392069.P1763028572151047917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P1763028572151047917

/-! ## A392069.P8279299421847329964

`∩[A155569(n+1), A391491(n+1)]`
-/

namespace A392069.P8279299421847329964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392069.P8279299421847329964

/-!
# A392071: The records of min(d(k), d(k+2)), where d(k) is the number of divisors of k (A000005).

The programs for A392071, there is no canonical definition to state claims against.
-/

/-! ## A392071.P15279834871372056647

`∑[∏[A354579(A027948(3*n))]]`
-/

namespace A392071.P15279834871372056647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A027948 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392071.P15279834871372056647

/-! ## A392071.P16955187676595463997

`lt[A324756(n), A339319(A301291(n))]`
-/

namespace A392071.P16955187676595463997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339319 (A301291 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392071.P16955187676595463997

/-! ## A392071.P6018534489577946222

`A182049(A008725(n+1))`
-/

namespace A392071.P6018534489577946222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A008725 (n + 1)).toNat

end

end A392071.P6018534489577946222

/-! ## A392071.P11288582540195590882

`∑[A000120(∏[A075447(n+1)])]`
-/

namespace A392071.P11288582540195590882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392071.P11288582540195590882

/-! ## A392071.P5969471110813116422

`∑[∑[A002654(A205844(3*n+5))]]`
-/

namespace A392071.P5969471110813116422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A205844 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392071.P5969471110813116422

/-!
# A392072: Smallest integer k such that 1 + x^2 + y^2 = k*prime(n) has at least one solution for some integers x, y.

The programs for A392072, there is no canonical definition to state claims against.
-/

/-! ## A392072.P9807051000185157159

`((A331992(3*n+1)%∏[A093178(n)])%3)²+1`
-/

namespace A392072.P9807051000185157159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A331992 (3 * n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)) 3 ^ 2 + 1

end

end A392072.P9807051000185157159

/-! ## A392072.P2221511455108369061

`A040444(A084637(n))`
-/

namespace A392072.P2221511455108369061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040444 (A084637 n).toNat

end

end A392072.P2221511455108369061

/-! ## A392072.P15596724474098900220

`A281681(A132408(n+1))`
-/

namespace A392072.P15596724474098900220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281681 (A132408 (n + 1)).toNat

end

end A392072.P15596724474098900220

/-! ## A392072.P12500732127658317848

`A016478(A252178(n+2))`
-/

namespace A392072.P12500732127658317848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016478 (A252178 (n + 2)).toNat

end

end A392072.P12500732127658317848

/-! ## A392072.P6146869387857120111

`A161161(n+1)+A046660(A000051(n))`
-/

namespace A392072.P6146869387857120111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161161 (n + 1) + A046660 (A000051 n).toNat

end

end A392072.P6146869387857120111

/-!
# A392075: a(n) = Sum_{k=0..floor(n/3)} (k+1) * 2^k * 3^(n-3*k) * binomial(k,4*(n-3*k)).

The programs for A392075, there is no canonical definition to state claims against.
-/

/-! ## A392075.P4457168840831309474

`A079978(A392003(n+1))*A391960(n)`
-/

namespace A392075.P4457168840831309474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A392003 (n + 1)).toNat * A391960 n

end

end A392075.P4457168840831309474

/-!
# A392076: a(n) = Sum_{k=0..n} (k+1) * binomial(k,4*(n-k)).

The programs for A392076, there is no canonical definition to state claims against.
-/

/-! ## A392076.P9931185081460519858

`A392251(2*n)`
-/

namespace A392076.P9931185081460519858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392251 (2 * n)

end

end A392076.P9931185081460519858

/-! ## A392076.P4852978314137411403

`A354552(n)+A083345(A000302(n))`
-/

namespace A392076.P4852978314137411403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354552 n + A083345 (A000302 n).toNat

end

end A392076.P4852978314137411403

/-! ## A392076.P3459187796095145210

`A356608(n)+A318995(A140429(n+1))`
-/

namespace A392076.P3459187796095145210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356608 n + A318995 (A140429 (n + 1)).toNat

end

end A392076.P3459187796095145210

/-! ## A392076.P16977481466028257511

`A385725(n)+A374249(A288946(n+1))`
-/

namespace A392076.P16977481466028257511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385725 n + A374249 (A288946 (n + 1)).toNat

end

end A392076.P16977481466028257511

/-! ## A392076.P7454744147050335508

`A289207(A029965(n+1)*A365079(n)+3)`
-/

namespace A392076.P7454744147050335508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A029965 (n + 1) * A365079 n + 3).toNat

end

end A392076.P7454744147050335508

/-!
# A392079: a(n) is the maximum count of equal differences among consecutive divisors of A259366(n).

The programs for A392079, there is no canonical definition to state claims against.
-/

/-! ## A392079.P5864616275123376904

`A240755(A000009(n)*A347397(n+1))`
-/

namespace A392079.P5864616275123376904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (A000009 n * A347397 (n + 1)).toNat

end

end A392079.P5864616275123376904

/-!
# A392081: Number of distinct orders of derangements of n items.

The programs for A392081, there is no canonical definition to state claims against.
-/

/-! ## A392081.P18169562522902074027

`A004539(A005897(3*n+4))+A014591(n)-1`
-/

namespace A392081.P18169562522902074027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A005897 (3 * n + 4)).toNat + (A014591 n - 1)

end

end A392081.P18169562522902074027

/-!
# A392082: Number of graceful Prüfer codes on n vertices with n-1 in the first position of the code.

The programs for A392082, there is no canonical definition to state claims against.
-/

/-! ## A392082.P806982583299765177

`A091226(A364747(n))+A000013(2*n+1)`
-/

namespace A392082.P806982583299765177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A364747 n).toNat + A000013 (2 * n + 1)

end

end A392082.P806982583299765177

/-! ## A392082.P9086522724286378317

`A054515(n+1)-A225633(A186370(3*n+1))`
-/

namespace A392082.P9086522724286378317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054515 (n + 1) - A225633 (A186370 (3 * n + 1)).toNat

end

end A392082.P9086522724286378317

/-!
# A392083: a(n) = 2*a(n-1) + 2^(n+1) - 1, a(0) = 0.

The programs for A392083, the canonical program `A392083.P6764457592341736571` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392083 has offset 0).

The definition of A392083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2^(n+1)-1` (program `A392083.P6764457592341736571`, by `A392083.P6764457592341736571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392083.P14210049337350255217

`n*2^(n+1)-2^n+1`
-/

namespace A392083.P14210049337350255217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ (n + 1) : ℤ) - (2 ^ n : ℤ) + 1

end

end A392083.P14210049337350255217

namespace A392083

/-- `n*2^(n+1)-2^n+1` -/
def P14210049337350255217.Spec : Prop :=
  ∀ n, P14210049337350255217.a n = A392083 n

theorem P14210049337350255217.correct : P14210049337350255217.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392083, Nat.add_sub_cancel, A392083.P14210049337350255217.a, A392083.P6764457592341736571.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392083, Nat.add_sub_cancel, A392083.P14210049337350255217.a, A392083.P6764457592341736571.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A392083

/-! ## A392083.P6764457592341736571

`2*a(n-1)+2^(n+1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392083

/-- `2*a(n-1)+2^(n+1)-1` -/
def P6764457592341736571.Spec : Prop :=
  ∀ n, P6764457592341736571.a n = A392083 n

theorem P6764457592341736571.correct : P6764457592341736571.Spec := by
  intro n
  simp only [A392083]

end A392083

/-! ## A392083.P4683902658541471577

`A391958(2^n)`
-/

namespace A392083.P4683902658541471577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391958 (2 ^ n)

end

end A392083.P4683902658541471577

namespace A392083

/-- `A391958(2^n)` -/
def P4683902658541471577.Spec : Prop :=
  ∀ n, P4683902658541471577.a n = A392083 n

end A392083

/-! ## A392083.P9071200439621603564

`∑[ogf((3x-2x^2)/(1-4x+4x^2))]`
-/

namespace A392083.P9071200439621603564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392083.P9071200439621603564

namespace A392083

/-- `∑[ogf((3x-2x^2)/(1-4x+4x^2))]` -/
def P9071200439621603564.Spec : Prop :=
  ∀ n, P9071200439621603564.a n = A392083 n

end A392083

/-! ## A392083.P15648027141398881294

`ogf((3x-2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A392083.P15648027141398881294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -5, 8, -4] n

end

end A392083.P15648027141398881294

namespace A392083

/-- `ogf((3x-2x^2)/(1-5x+8x^2-4x^3))` -/
def P15648027141398881294.Spec : Prop :=
  ∀ n, P15648027141398881294.a n = A392083 n

end A392083

/-! ## A392083.P17973529446636891499

`∑[a(n-1)+a(n-1)+2^n]` with `a(0)=0, a(1)=3`
-/

namespace A392083.P17973529446636891499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392083.P17973529446636891499

namespace A392083

/-- `∑[a(n-1)+a(n-1)+2^n]` -/
def P17973529446636891499.Spec : Prop :=
  ∀ n, (P17973529446636891499.a n : ℤ) = A392083 n

end A392083

/-! ## A392083.P9733299283456094362

`4*(1/4+a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A392083.P9733299283456094362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * ((1 : ℚ) / 4 + (a (n - 1) - a (n - 2)))

end

end A392083.P9733299283456094362

namespace A392083

/-- `4*(1/4+a(n-1)-a(n-2))` -/
def P9733299283456094362.Spec : Prop :=
  ∀ n, P9733299283456094362.a n = (A392083 n : ℚ)

end A392083

/-! ## A392083.P697796581314276057

`4*(a(n-1)-(a(n-2)-1/4))` with `a(0)=0, a(1)=3`
-/

namespace A392083.P697796581314276057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (a (n - 1) - (a (n - 2) - (1 : ℚ) / 4))

end

end A392083.P697796581314276057

namespace A392083

/-- `4*(a(n-1)-(a(n-2)-1/4))` -/
def P697796581314276057.Spec : Prop :=
  ∀ n, P697796581314276057.a n = (A392083 n : ℚ)

end A392083

/-! ## A392083.P7539298364730210141

`∑[A239632(2*n)]`
-/

namespace A392083.P7539298364730210141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392083.P7539298364730210141

namespace A392083

/-- `∑[A239632(2*n)]` -/
def P7539298364730210141.Spec : Prop :=
  ∀ n, P7539298364730210141.a n = A392083 n

end A392083

/-! ## A392083.P4426252925393630323

`xor(A000918(n), A163383(n+1))`
-/

namespace A392083.P4426252925393630323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000918 n) (A163383 (n + 1))

end

end A392083.P4426252925393630323

namespace A392083

/-- `xor(A000918(n), A163383(n+1))` -/
def P4426252925393630323.Spec : Prop :=
  ∀ n, P4426252925393630323.a n = A392083 n

end A392083

/-! ## A392083.P13914500736468886370

`(A339771(n)-1)/2`
-/

namespace A392083.P13914500736468886370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339771 n - 1 : ℚ) / 2

end

end A392083.P13914500736468886370

namespace A392083

/-- `(A339771(n)-1)/2` -/
def P13914500736468886370.Spec : Prop :=
  ∀ n, P13914500736468886370.a n = (A392083 n : ℚ)

theorem P13914500736468886370.correct : P13914500736468886370.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392083, Nat.add_sub_cancel, A392083.P13914500736468886370.a, A392083.P6764457592341736571.a, A339771, A339771.P5084121294361121818.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392083, Nat.add_sub_cancel, A392083.P13914500736468886370.a, A392083.P6764457592341736571.a, A339771, A339771.P5084121294361121818.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392083

/-! ## A392083.P4201650883499033014

`(A027981(n)-1)/3`
-/

namespace A392083.P4201650883499033014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027981 n - 1 : ℚ) / 3

end

end A392083.P4201650883499033014

namespace A392083

/-- `(A027981(n)-1)/3` -/
def P4201650883499033014.Spec : Prop :=
  ∀ n, P4201650883499033014.a n = (A392083 n : ℚ)

theorem P4201650883499033014.correct : P4201650883499033014.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392083, Nat.add_sub_cancel, A392083.P4201650883499033014.a, A392083.P6764457592341736571.a, A027981, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392083, Nat.add_sub_cancel, A392083.P4201650883499033014.a, A392083.P6764457592341736571.a, A027981, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392083

/-! ## A392083.P8328521820072639375

`A048479(n)%A014480(n)`
-/

namespace A392083.P8328521820072639375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048479 n) (A014480 n)

end

end A392083.P8328521820072639375

namespace A392083

/-- `A048479(n)%A014480(n)` -/
def P8328521820072639375.Spec : Prop :=
  ∀ n, P8328521820072639375.a n = A392083 n

end A392083

/-! ## A392083.P15083247157157607212

`A027981(n)%A339771(n)`
-/

namespace A392083.P15083247157157607212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027981 n) (A339771 n)

end

end A392083.P15083247157157607212

namespace A392083

/-- `A027981(n)%A339771(n)` -/
def P15083247157157607212.Spec : Prop :=
  ∀ n, P15083247157157607212.a n = A392083 n

end A392083

/-! ## A392083.P8242354196468149126

`A118415(n+1)%A003261(n+1)`
-/

namespace A392083.P8242354196468149126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118415 (n + 1)) (A003261 (n + 1))

end

end A392083.P8242354196468149126

namespace A392083

/-- `A118415(n+1)%A003261(n+1)` -/
def P8242354196468149126.Spec : Prop :=
  ∀ n, P8242354196468149126.a n = A392083 n

end A392083

/-! ## A392083.P1418875186925999446

`A007664(∑[n]+n)`
-/

namespace A392083.P1418875186925999446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A392083.P1418875186925999446

namespace A392083

/-- `A007664(∑[n]+n)` -/
def P1418875186925999446.Spec : Prop :=
  ∀ n, P1418875186925999446.a n = A392083 n

end A392083

/-! ## A392083.P4732168691778839229

`∑[A209705(∑[n+2])]`
-/

namespace A392083.P4732168691778839229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392083.P4732168691778839229

namespace A392083

/-- `∑[A209705(∑[n+2])]` -/
def P4732168691778839229.Spec : Prop :=
  ∀ n, P4732168691778839229.a n = A392083 n

end A392083

/-!
# A392084: a(n) = 3*a(n-1) + 2*3^n - 1, a(0) = 0.

The programs for A392084, the canonical program `A392084.P2703423043962625915` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392084 has offset 0).

The definition of A392084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*3^n-1` (program `A392084.P2703423043962625915`, by `A392084.P2703423043962625915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392084.P2703423043962625915

`3*a(n-1)+2*3^n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392084

/-- `3*a(n-1)+2*3^n-1` -/
def P2703423043962625915.Spec : Prop :=
  ∀ n, P2703423043962625915.a n = A392084 n

theorem P2703423043962625915.correct : P2703423043962625915.Spec := by
  intro n
  simp only [A392084]

end A392084

/-! ## A392084.P4561608919899775004

`(3^n*(4*n-1)+1)/2`
-/

namespace A392084.P4561608919899775004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * ((4 * n : ℤ) - 1) + 1 : ℚ) / 2

end

end A392084.P4561608919899775004

namespace A392084

/-- `(3^n*(4*n-1)+1)/2` -/
def P4561608919899775004.Spec : Prop :=
  ∀ n, P4561608919899775004.a n = (A392084 n : ℚ)

theorem P4561608919899775004.correct : P4561608919899775004.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A392084, Nat.add_sub_cancel, A392084.P4561608919899775004.a, A392084.P2703423043962625915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A392084, Nat.add_sub_cancel, A392084.P4561608919899775004.a, A392084.P2703423043962625915.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A392084

/-! ## A392084.P523030496561218026

`A391959(3^n)`
-/

namespace A392084.P523030496561218026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391959 (3 ^ n)

end

end A392084.P523030496561218026

namespace A392084

/-- `A391959(3^n)` -/
def P523030496561218026.Spec : Prop :=
  ∀ n, P523030496561218026.a n = A392084 n

end A392084

/-! ## A392084.P18296742838704807989

`∑[ogf((5x-3x^2)/(1-6x+9x^2))]`
-/

namespace A392084.P18296742838704807989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -3] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392084.P18296742838704807989

namespace A392084

/-- `∑[ogf((5x-3x^2)/(1-6x+9x^2))]` -/
def P18296742838704807989.Spec : Prop :=
  ∀ n, P18296742838704807989.a n = A392084 n

end A392084

/-! ## A392084.P13434758712055005050

`A176177(n+1)-3^n`
-/

namespace A392084.P13434758712055005050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176177 (n + 1) - (3 ^ n : ℤ)

end

end A392084.P13434758712055005050

namespace A392084

/-- `A176177(n+1)-3^n` -/
def P13434758712055005050.Spec : Prop :=
  ∀ n, P13434758712055005050.a n = A392084 n

end A392084

/-! ## A392084.P2884093454997428322

`A212337(n)-A372852(n+1)`
-/

namespace A392084.P2884093454997428322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212337 n - A372852 (n + 1)

end

end A392084.P2884093454997428322

namespace A392084

/-- `A212337(n)-A372852(n+1)` -/
def P2884093454997428322.Spec : Prop :=
  ∀ n, P2884093454997428322.a n = A392084 n

end A392084

/-! ## A392084.P16716850091982640913

`A014915(n+1)+A014915(n+1)-A288834(n+1)`
-/

namespace A392084.P16716850091982640913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1) + (A014915 (n + 1) - A288834 (n + 1))

end

end A392084.P16716850091982640913

namespace A392084

/-- `A014915(n+1)+A014915(n+1)-A288834(n+1)` -/
def P16716850091982640913.Spec : Prop :=
  ∀ n, P16716850091982640913.a n = A392084 n

end A392084

/-!
# A392085: The unitary totient of the smallest number whose square is divisible by n.

The programs for A392085, the canonical program `A392085.P14049026985306902224` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392085 has offset 1).

The definition of A392085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392085

/-- `A047994(A019554(n+1))` -/
def P14049026985306902224.Spec : Prop :=
  ∀ n, P14049026985306902224.a n = A392085 (n + 1)

theorem P14049026985306902224.correct : P14049026985306902224.Spec := by
  intro n
  simp only [A392085, Nat.add_sub_cancel]

end A392085

/-! ## A392085.P15967872249200510775

`A047994((n+1)/A000188(n+1))`
-/

namespace A392085.P15967872249200510775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A392085.P15967872249200510775

namespace A392085

/-- `A047994((n+1)/A000188(n+1))` -/
def P15967872249200510775.Spec : Prop :=
  ∀ n, P15967872249200510775.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P10231722963903998721

`A392087(n+1)/A365481(n+1)`
-/

namespace A392085.P10231722963903998721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392087 (n + 1) : ℚ) / (A365481 (n + 1) : ℚ)

end

end A392085.P10231722963903998721

namespace A392085

/-- `A392087(n+1)/A365481(n+1)` -/
def P10231722963903998721.Spec : Prop :=
  ∀ n, P10231722963903998721.a n = (A392085 (n + 1) : ℚ)

end A392085

/-! ## A392085.P10079299312801866739

`A392086(A355264(n+1))`
-/

namespace A392085.P10079299312801866739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392086 (A355264 (n + 1)).toNat

end

end A392085.P10079299312801866739

namespace A392085

/-- `A392086(A355264(n+1))` -/
def P10079299312801866739.Spec : Prop :=
  ∀ n, P10079299312801866739.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P7068343251908632158

`A392086((n+1)*A000188(n+1))`
-/

namespace A392085.P7068343251908632158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392086 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A392085.P7068343251908632158

namespace A392085

/-- `A392086((n+1)*A000188(n+1))` -/
def P7068343251908632158.Spec : Prop :=
  ∀ n, P7068343251908632158.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P5470977202012216123

`A047994(A019555((n+1)*A000188(n+1)))`
-/

namespace A392085.P5470977202012216123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019555 ((n + 1 : ℤ) * A000188 (n + 1)).toNat).toNat

end

end A392085.P5470977202012216123

namespace A392085

/-- `A047994(A019555((n+1)*A000188(n+1)))` -/
def P5470977202012216123.Spec : Prop :=
  ∀ n, P5470977202012216123.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P7258602609159283102

`A047994(A053166((n+1)²))`
-/

namespace A392085.P7258602609159283102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053166 ((n + 1) ^ 2)).toNat

end

end A392085.P7258602609159283102

namespace A392085

/-- `A047994(A053166((n+1)²))` -/
def P7258602609159283102.Spec : Prop :=
  ∀ n, P7258602609159283102.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P5490077973455919901

`A392086((n+1)*A019555(n+1))`
-/

namespace A392085.P5490077973455919901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392086 ((n + 1 : ℤ) * A019555 (n + 1)).toNat

end

end A392085.P5490077973455919901

namespace A392085

/-- `A392086((n+1)*A019555(n+1))` -/
def P5490077973455919901.Spec : Prop :=
  ∀ n, P5490077973455919901.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P3221884119770675008

`A392086((n+1)*A053166(n+1))`
-/

namespace A392085.P3221884119770675008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392086 ((n + 1 : ℤ) * A053166 (n + 1)).toNat

end

end A392085.P3221884119770675008

namespace A392085

/-- `A392086((n+1)*A053166(n+1))` -/
def P3221884119770675008.Spec : Prop :=
  ∀ n, P3221884119770675008.a n = A392085 (n + 1)

end A392085

/-! ## A392085.P15986737923259178926

`A047994(A019555((n+1)*A019555(n+1)))`
-/

namespace A392085.P15986737923259178926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019555 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A392085.P15986737923259178926

namespace A392085

/-- `A047994(A019555((n+1)*A019555(n+1)))` -/
def P15986737923259178926.Spec : Prop :=
  ∀ n, P15986737923259178926.a n = A392085 (n + 1)

end A392085

/-!
# A392086: The unitary totient of the smallest number whose cube is divisible by n.

The programs for A392086, the canonical program `A392086.P15597796412968857212` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392086 has offset 1).

The definition of A392086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392086.P15597796412968857212

`A047994(A019555(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A392086

/-- `A047994(A019555(n+1))` -/
def P15597796412968857212.Spec : Prop :=
  ∀ n, P15597796412968857212.a n = A392086 (n + 1)

theorem P15597796412968857212.correct : P15597796412968857212.Spec := by
  intro n
  simp only [A392086, Nat.add_sub_cancel]

end A392086

/-! ## A392086.P14992183383847450922

`A047994(A254733(n+1)-(n+1))`
-/

namespace A392086.P14992183383847450922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A392086.P14992183383847450922

namespace A392086

/-- `A047994(A254733(n+1)-(n+1))` -/
def P14992183383847450922.Spec : Prop :=
  ∀ n, P14992183383847450922.a n = A392086 (n + 1)

theorem P14992183383847450922.correct : P14992183383847450922.Spec := by
  intro n
  simp only [A392086, Nat.add_sub_cancel, A392086.P14992183383847450922.a, A392086.P15597796412968857212.a, A019555, A019555.P8996553868709767269.a, A047994, A047994.P3003493197761739884.a, A254733, A254733.P14747783543240587922.a, A000010, A000010.P4673923239450215316.a, A000189, A000189.P11210685475351648118.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053149, A053149.P4125189005957149122.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392086

/-! ## A392086.P9665606143810390220

`A047994(A015053((n+1)²))`
-/

namespace A392086.P9665606143810390220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A015053 ((n + 1) ^ 2)).toNat

end

end A392086.P9665606143810390220

namespace A392086

/-- `A047994(A015053((n+1)²))` -/
def P9665606143810390220.Spec : Prop :=
  ∀ n, P9665606143810390220.a n = A392086 (n + 1)

end A392086

/-! ## A392086.P9452505979812465056

`A193024(A019555(n+1)%A292558(n+1))`
-/

namespace A392086.P9452505979812465056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193024 (Int.tmod (A019555 (n + 1)) (A292558 (n + 1))).toNat

end

end A392086.P9452505979812465056

namespace A392086

/-- `A193024(A019555(n+1)%A292558(n+1))` -/
def P9452505979812465056.Spec : Prop :=
  ∀ n, P9452505979812465056.a n = A392086 (n + 1)

end A392086

/-! ## A392086.P7723745669874318956

`lcm(∏{p}[n+1, 1-#], A124768(A375128(3*n+1)))`
-/

namespace A392086.P7723745669874318956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A124768 (A375128 (3 * n + 1)).toNat)

end

end A392086.P7723745669874318956

namespace A392086

/-- `lcm(∏{p}[n+1, 1-#], A124768(A375128(3*n+1)))` -/
def P7723745669874318956.Spec : Prop :=
  ∀ n, (P7723745669874318956.a n : ℤ) = A392086 (n + 1)

end A392086

/-!
# A392087: The unitary totient of the smallest square divisible by n.

The programs for A392087, the canonical program `A392087.P1327224941349964914` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392087 has offset 1).

The definition of A392087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392087.P1327224941349964914

`A047994(A053143(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392087

/-- `A047994(A053143(n+1))` -/
def P1327224941349964914.Spec : Prop :=
  ∀ n, P1327224941349964914.a n = A392087 (n + 1)

theorem P1327224941349964914.correct : P1327224941349964914.Spec := by
  intro n
  simp only [A392087, Nat.add_sub_cancel]

end A392087

/-! ## A392087.P11574687868611454811

`A191414(A019554(n+1))`
-/

namespace A392087.P11574687868611454811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A019554 (n + 1)).toNat

end

end A392087.P11574687868611454811

namespace A392087

/-- `A191414(A019554(n+1))` -/
def P11574687868611454811.Spec : Prop :=
  ∀ n, P11574687868611454811.a n = A392087 (n + 1)

end A392087

/-! ## A392087.P11410784341681978660

`A173557(n+1)*A365337(n+1)`
-/

namespace A392087.P11410784341681978660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A365337 (n + 1)

end

end A392087.P11410784341681978660

namespace A392087

/-- `A173557(n+1)*A365337(n+1)` -/
def P11410784341681978660.Spec : Prop :=
  ∀ n, P11410784341681978660.a n = A392087 (n + 1)

end A392087

/-! ## A392087.P10833605214903048698

`A365481(n+1)*A392085(n+1)`
-/

namespace A392087.P10833605214903048698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (n + 1) * A392085 (n + 1)

end

end A392087.P10833605214903048698

namespace A392087

/-- `A365481(n+1)*A392085(n+1)` -/
def P10833605214903048698.Spec : Prop :=
  ∀ n, P10833605214903048698.a n = A392087 (n + 1)

end A392087

/-! ## A392087.P12669464122166871859

`A047994(A019554(n+1)²)`
-/

namespace A392087.P12669464122166871859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1) ^ 2).toNat

end

end A392087.P12669464122166871859

namespace A392087

/-- `A047994(A019554(n+1)²)` -/
def P12669464122166871859.Spec : Prop :=
  ∀ n, P12669464122166871859.a n = A392087 (n + 1)

end A392087

/-! ## A392087.P13042058446512566118

`A047994(A053166((n+1)²)²)`
-/

namespace A392087.P13042058446512566118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053166 ((n + 1) ^ 2) ^ 2).toNat

end

end A392087.P13042058446512566118

namespace A392087

/-- `A047994(A053166((n+1)²)²)` -/
def P13042058446512566118.Spec : Prop :=
  ∀ n, P13042058446512566118.a n = A392087 (n + 1)

end A392087

/-! ## A392087.P579996053054891367

`A047994(A019554(n+1)*A019554(n+1))`
-/

namespace A392087.P579996053054891367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A392087.P579996053054891367

namespace A392087

/-- `A047994(A019554(n+1)*A019554(n+1))` -/
def P579996053054891367.Spec : Prop :=
  ∀ n, P579996053054891367.a n = A392087 (n + 1)

end A392087

/-!
# A392088: The unitary totient of the smallest cube divisible by n.

The programs for A392088, the canonical program `A392088.P2713772725741587424` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392088 has offset 1).

The definition of A392088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A392088

/-- `A047994(A053149(n+1))` -/
def P2713772725741587424.Spec : Prop :=
  ∀ n, P2713772725741587424.a n = A392088 (n + 1)

theorem P2713772725741587424.correct : P2713772725741587424.Spec := by
  intro n
  simp only [A392088, Nat.add_sub_cancel]

end A392088

/-! ## A392088.P15131206301141094214

`A392090(A187829(n+1))`
-/

namespace A392088.P15131206301141094214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392090 (A187829 (n + 1)).toNat

end

end A392088.P15131206301141094214

namespace A392088

/-- `A392090(A187829(n+1))` -/
def P15131206301141094214.Spec : Prop :=
  ∀ n, P15131206301141094214.a n = A392088 (n + 1)

end A392088

/-! ## A392088.P10289453512741514756

`A392090(n+1)+A293162(-xor(2^n, -1))`
-/

namespace A392088.P10289453512741514756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392090 (n + 1) + A293162 (-Int.xor (2 ^ n : ℤ) (-1)).toNat

end

end A392088.P10289453512741514756

namespace A392088

/-- `A392090(n+1)+A293162(-xor(2^n, -1))` -/
def P10289453512741514756.Spec : Prop :=
  ∀ n, P10289453512741514756.a n = A392088 (n + 1)

end A392088

/-! ## A392088.P12836013611423289062

`A392090(n+1)+A293162(A000051(n))`
-/

namespace A392088.P12836013611423289062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392090 (n + 1) + A293162 (A000051 n).toNat

end

end A392088.P12836013611423289062

namespace A392088

/-- `A392090(n+1)+A293162(A000051(n))` -/
def P12836013611423289062.Spec : Prop :=
  ∀ n, P12836013611423289062.a n = A392088 (n + 1)

end A392088

/-! ## A392088.P10183322350158528519

`A392090(n+1)+A293162(A136417(2*n))`
-/

namespace A392088.P10183322350158528519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392090 (n + 1) + A293162 (A136417 (2 * n)).toNat

end

end A392088.P10183322350158528519

namespace A392088

/-- `A392090(n+1)+A293162(A136417(2*n))` -/
def P10183322350158528519.Spec : Prop :=
  ∀ n, P10183322350158528519.a n = A392088 (n + 1)

end A392088

/-!
# A392089: The unitary totient of the smallest powerful number that is divisible by n.

The programs for A392089, the canonical program `A392089.P14519463081902606176` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392089 has offset 1).

The definition of A392089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392089.P14519463081902606176

`A047994(A197863(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392089

/-- `A047994(A197863(n+1))` -/
def P14519463081902606176.Spec : Prop :=
  ∀ n, P14519463081902606176.a n = A392089 (n + 1)

theorem P14519463081902606176.correct : P14519463081902606176.Spec := by
  intro n
  simp only [A392089, Nat.add_sub_cancel]

end A392089

/-! ## A392089.P12209673607370754084

`A047994(n+1)*A092261(n+1)`
-/

namespace A392089.P12209673607370754084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A092261 (n + 1)

end

end A392089.P12209673607370754084

namespace A392089

/-- `A047994(n+1)*A092261(n+1)` -/
def P12209673607370754084.Spec : Prop :=
  ∀ n, P12209673607370754084.a n = A392089 (n + 1)

end A392089

/-! ## A392089.P6374480719340163380

`A191414(n+1)/A360720(n+1)`
-/

namespace A392089.P6374480719340163380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A360720 (n + 1) : ℚ)

end

end A392089.P6374480719340163380

namespace A392089

/-- `A191414(n+1)/A360720(n+1)` -/
def P6374480719340163380.Spec : Prop :=
  ∀ n, P6374480719340163380.a n = (A392089 (n + 1) : ℚ)

end A392089

/-! ## A392089.P6300698201776008947

`A000203(A055231(n+1))*A047994(n+1)`
-/

namespace A392089.P6300698201776008947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055231 (n + 1)).toNat * A047994 (n + 1)

end

end A392089.P6300698201776008947

namespace A392089

/-- `A000203(A055231(n+1))*A047994(n+1)` -/
def P6300698201776008947.Spec : Prop :=
  ∀ n, P6300698201776008947.a n = A392089 (n + 1)

end A392089

/-! ## A392089.P12188886679674004264

`A047994(lcm(n+1, ∏{p}[n+1, #²]))`
-/

namespace A392089.P12188886679674004264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A392089.P12188886679674004264

namespace A392089

/-- `A047994(lcm(n+1, ∏{p}[n+1, #²]))` -/
def P12188886679674004264.Spec : Prop :=
  ∀ n, P12188886679674004264.a n = A392089 (n + 1)

end A392089

/-! ## A392089.P12166368774349667102

`A047994(A064549(n+1)/A071773(n+1))`
-/

namespace A392089.P12166368774349667102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A392089.P12166368774349667102

namespace A392089

/-- `A047994(A064549(n+1)/A071773(n+1))` -/
def P12166368774349667102.Spec : Prop :=
  ∀ n, P12166368774349667102.a n = A392089 (n + 1)

end A392089

/-!
# A392090: The unitary totient of the smallest cubefull number that is divisible by n.

The programs for A392090, the canonical program `A392090.P974268744326610450` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392090 has offset 1).

The definition of A392090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392090.P974268744326610450

`A047994(A356193(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392090

/-- `A047994(A356193(n+1))` -/
def P974268744326610450.Spec : Prop :=
  ∀ n, P974268744326610450.a n = A392090 (n + 1)

theorem P974268744326610450.correct : P974268744326610450.Spec := by
  intro n
  simp only [A392090, Nat.add_sub_cancel]

end A392090

/-! ## A392090.P10443878506769232725

`A384049((n+1)*A360541(n+1))`
-/

namespace A392090.P10443878506769232725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 ((n + 1 : ℤ) * A360541 (n + 1)).toNat

end

end A392090.P10443878506769232725

namespace A392090

/-- `A384049((n+1)*A360541(n+1))` -/
def P10443878506769232725.Spec : Prop :=
  ∀ n, P10443878506769232725.a n = A392090 (n + 1)

end A392090

/-!
# A392094: a(n) is the number of iterations of process A392093 applied to n required until the remaining single number equals 1.

The programs for A392094, there is no canonical definition to state claims against.
-/

/-! ## A392094.P4816770216388865059

`A000120(lt[A378846(n), A099119(n+4)])`
-/

namespace A392094.P4816770216388865059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392094.P4816770216388865059

/-! ## A392094.P10170015788572885568

`A000120(lt[A006206(n+1), A099119(n+4)])`
-/

namespace A392094.P10170015788572885568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392094.P10170015788572885568

/-! ## A392094.P5403620297262619142

`A000120(lt[A166524(n+1), A099119(n+4)])`
-/

namespace A392094.P5403620297262619142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392094.P5403620297262619142

/-! ## A392094.P8713700921479515984

`A000120(lt[A333255(n+1), A099119(n+4)])`
-/

namespace A392094.P8713700921479515984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392094.P8713700921479515984

/-! ## A392094.P380084550037773949

`A000120(lt[A042948(2*(n+1)), A099119(n+4)])`
-/

namespace A392094.P380084550037773949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099119 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392094.P380084550037773949

/-!
# A392097: a(n) is the smallest number k for which the symmetric representation of sigma for k, SRS(k), has n parts and each i-th part up to the diagonal is unimodal of width i.

The programs for A392097, there is no canonical definition to state claims against.
-/

/-! ## A392097.P782031571178448369

`A275681(a(n-1))-4` with `a(0)=1`
-/

namespace A392097.P782031571178448369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275681 (a (n - 1)).toNat - 4

end

end A392097.P782031571178448369

/-!
# A392098: Powers k^m divisible by at least 2 cubes greater than 1, with m > 1 and nonsquarefree weak k (in A332785).

The programs for A392098, there is no canonical definition to state claims against.
-/

/-! ## A392098.P13261758543312910423

`∩[A376936(n+1), A386762(n+1)]`
-/

namespace A392098.P13261758543312910423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392098.P13261758543312910423

/-! ## A392098.P832097237326962406

`∩[A386762(n+1), A391968(n+1)]`
-/

namespace A392098.P832097237326962406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392098.P832097237326962406

/-!
# A392099: Smallest prime p such that p + 3^n - 1 is also a prime.

The programs for A392099, there is no canonical definition to state claims against.
-/

/-! ## A392099.P11842514070988659275

`A389715(n)-A024023(n)`
-/

namespace A392099.P11842514070988659275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389715 n - A024023 n

end

end A392099.P11842514070988659275

