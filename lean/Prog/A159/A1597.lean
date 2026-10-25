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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159700: Number of different pairs of primes p,q such that : p<(q-2), p is a twin prime of p-2 or p+2 and q is a twin prime of q-2 or q+2, 2*n=p+q.

The programs for A159700, there is no canonical definition to state claims against.
-/

/-! ## A159700.P7073058306333572359

`A129363(n+1)-A164292(n-A164292(n+2)+1)`
-/

namespace A159700.P7073058306333572359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1) - A164292 ((n : ℤ) - A164292 (n + 2) + 1).toNat

end

end A159700.P7073058306333572359

/-!
# A159704: Number of different pairs of primes p,q such that : p

The programs for A159704, there is no canonical definition to state claims against.
-/

/-! ## A159704.P9187668869222393474

`A078134(A344404(n+1))%A094501(n)`
-/

namespace A159704.P9187668869222393474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078134 (A344404 (n + 1)).toNat) (A094501 n)

end

end A159704.P9187668869222393474

/-! ## A159704.P13641267081803696584

`A078134(A344404(n+1))^Δ[A024648(n)]`
-/

namespace A159704.P13641267081803696584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024648 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078134 (A344404 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A159704.P13641267081803696584

/-! ## A159704.P16350602195463691889

`A078134(A344404(n+1))^A007318(A004084(n+1))`
-/

namespace A159704.P16350602195463691889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078134 (A344404 (n + 1)).toNat : ℚ) ^ (A007318 (A004084 (n + 1)).toNat : ℤ)

end

end A159704.P16350602195463691889

/-! ## A159704.P9865269643575803916

`A078134(A344404(n+1)%A352223(n+1))`
-/

namespace A159704.P9865269643575803916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (Int.tmod (A344404 (n + 1)) (A352223 (n + 1))).toNat

end

end A159704.P9865269643575803916

/-! ## A159704.P14122002629974361880

`A000002(n+1)%A329340(A329297(n+2))`
-/

namespace A159704.P14122002629974361880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (n + 1)) (A329340 (A329297 (n + 2)).toNat)

end

end A159704.P14122002629974361880

/-!
# A159708: Number a of different pairs of primes p,q (not consecutive) and such that p-6,p or p,p+6 are consecutive primes q-6,q or q,q+6 are consecutive primes and p+q=2*n.

The programs for A159708, there is no canonical definition to state claims against.
-/

/-! ## A159708.P1080157791662592466

`val(A003132(A000726(n)), 6)`
-/

namespace A159708.P1080157791662592466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003132 (A000726 n).toNat).toNat 6

end

end A159708.P1080157791662592466

/-! ## A159708.P5223149548615978213

`A073484(A023636(n+1)^A029421(n))`
-/

namespace A159708.P5223149548615978213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (SequenceMachineLib.roundAway ((A023636 (n + 1) : ℚ) ^ (A029421 n : ℤ))).toNat

end

end A159708.P5223149548615978213

/-! ## A159708.P7603467431597809217

`A224613(A079596(n))%A339255(2*n+1)`
-/

namespace A159708.P7603467431597809217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224613 (A079596 n).toNat) (A339255 (2 * n + 1))

end

end A159708.P7603467431597809217

/-! ## A159708.P9590041601547044562

`A124198(A124225(n+1))%A177849(3*n+1)`
-/

namespace A159708.P9590041601547044562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124198 (A124225 (n + 1)).toNat) (A177849 (3 * n + 1))

end

end A159708.P9590041601547044562

/-! ## A159708.P7522118481590374098

`val(A070939(A034461(n+1)), 3)`
-/

namespace A159708.P7522118481590374098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A070939 (A034461 (n + 1)).toNat).toNat 3

end

end A159708.P7522118481590374098

/-!
# A159710: Number of permutations of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159710, the canonical program `A159710.P6503886363121990557` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159710 has offset 0).

The definition of A159710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159710.P6503886363121990557

`n*A000431((2*n)%(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159710

/-- `n*A000431((2*n)%(n+1))` -/
def P6503886363121990557.Spec : Prop :=
  ∀ n, P6503886363121990557.a n = A159710 n

theorem P6503886363121990557.correct : P6503886363121990557.Spec := by
  intro n
  simp only [A159710]

end A159710

/-! ## A159710.P14819237789143732006

`n*A000431(log2(A011782(n)))`
-/

namespace A159710.P14819237789143732006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000431 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A159710.P14819237789143732006

namespace A159710

/-- `n*A000431(log2(A011782(n)))` -/
def P14819237789143732006.Spec : Prop :=
  ∀ n, P14819237789143732006.a n = A159710 n

end A159710

/-! ## A159710.P13835195058023537804

`n*A000431(A028310(n)-1)`
-/

namespace A159710.P13835195058023537804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000431 (A028310 n - 1).toNat

end

end A159710.P13835195058023537804

namespace A159710

/-- `n*A000431(A028310(n)-1)` -/
def P13835195058023537804.Spec : Prop :=
  ∀ n, P13835195058023537804.a n = A159710 n

end A159710

/-! ## A159710.P11848553747668415617

`(A166444(n)+A024000(n))*A049610(n)`
-/

namespace A159710.P11848553747668415617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166444 n + A024000 n) * A049610 n

end

end A159710.P11848553747668415617

namespace A159710

/-- `(A166444(n)+A024000(n))*A049610(n)` -/
def P11848553747668415617.Spec : Prop :=
  ∀ n, P11848553747668415617.a n = A159710 n

end A159710

/-! ## A159710.P13086243437175938581

`(A049610(n)-A161680(n))*A034008(n)`
-/

namespace A159710.P13086243437175938581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049610 n - A161680 n) * A034008 n

end

end A159710.P13086243437175938581

namespace A159710

/-- `(A049610(n)-A161680(n))*A034008(n)` -/
def P13086243437175938581.Spec : Prop :=
  ∀ n, P13086243437175938581.a n = A159710 n

end A159710

/-! ## A159710.P4218007968173195940

`(A049610(n)-A161680(n))*A166444(n)`
-/

namespace A159710.P4218007968173195940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049610 n - A161680 n) * A166444 n

end

end A159710.P4218007968173195940

namespace A159710

/-- `(A049610(n)-A161680(n))*A166444(n)` -/
def P4218007968173195940.Spec : Prop :=
  ∀ n, P4218007968173195940.a n = A159710 n

end A159710

/-!
# A159711: Number of permutations of 1..n arranged in a circle with exactly 3 local maxima.

The programs for A159711, there is no canonical definition to state claims against.
-/

/-! ## A159711.P3036644583433514497

`A341915(C(A006053(n), 5))`
-/

namespace A159711.P3036644583433514497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (Nat.choose (A006053 n).toNat 5)

end

end A159711.P3036644583433514497

/-! ## A159711.P17602821915495918486

`n*A292254(A130660(n))`
-/

namespace A159711.P17602821915495918486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292254 (A130660 n).toNat

end

end A159711.P17602821915495918486

/-! ## A159711.P882090811669464226

`n*A219904(A219754(n))`
-/

namespace A159711.P882090811669464226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A219904 (A219754 n).toNat

end

end A159711.P882090811669464226

/-! ## A159711.P10765678680869979510

`Δ[A314015(A309861(n))²]`
-/

namespace A159711.P10765678680869979510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 (A309861 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159711.P10765678680869979510

/-!
# A159712: Number of permutations of 1..n arranged in a circle with exactly 4 local maxima.

The programs for A159712, there is no canonical definition to state claims against.
-/

/-! ## A159712.P15111346318593108525

`lcm(A028310(A009725(n)), A308989(n))`
-/

namespace A159712.P15111346318593108525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A009725 n).toNat) (A308989 n)

end

end A159712.P15111346318593108525

/-!
# A159713: Number of permutations of 1..n arranged in a circle with exactly 5 local maxima.

The programs for A159713, there is no canonical definition to state claims against.
-/

/-! ## A159713.P621996628860192979

`lcm(A009725(n), A326474(A309864(n)))`
-/

namespace A159713.P621996628860192979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009725 n) (A326474 (A309864 n).toNat)

end

end A159713.P621996628860192979

/-!
# A159715: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159715, the canonical program `A159715.P7674003241616951973` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159715 has offset 2).

The definition of A159715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159715.P7674003241616951973

`2*(n+2)*3^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159715

/-- `2*(n+2)*3^n` -/
def P7674003241616951973.Spec : Prop :=
  ∀ n, (P7674003241616951973.a n : ℤ) = A159715 (n + 2)

theorem P7674003241616951973.correct : P7674003241616951973.Spec := by
  intro n
  simp only [A159715, Nat.add_sub_cancel]

end A159715

/-! ## A159715.P18430010908984526447

`A027261(n+1)`
-/

namespace A159715.P18430010908984526447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 (n + 1)

end

end A159715.P18430010908984526447

namespace A159715

/-- `A027261(n+1)` -/
def P18430010908984526447.Spec : Prop :=
  ∀ n, P18430010908984526447.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P10594712666128145054

`ogf((4-6x)/(1-6x+9x^2))`
-/

namespace A159715.P10594712666128145054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -6, 9] n

end

end A159715.P10594712666128145054

namespace A159715

/-- `ogf((4-6x)/(1-6x+9x^2))` -/
def P10594712666128145054.Spec : Prop :=
  ∀ n, P10594712666128145054.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P13729049014996002497

`3*a(n-1)/ratio[9/(n+1)]` with `a(0)=4`
-/

namespace A159715.P13729049014996002497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  3 * a (n - 1) / (f1 (n + 1) / f1 n)

end

end A159715.P13729049014996002497

namespace A159715

/-- `3*a(n-1)/ratio[9/(n+1)]` -/
def P13729049014996002497.Spec : Prop :=
  ∀ n, P13729049014996002497.a n = (A159715 (n + 2) : ℚ)

end A159715

/-! ## A159715.P15373234625700992420

`Δ[3^n]+a(n-1)/cot(atan(3))` with `a(0)=4`
-/

namespace A159715.P15373234625700992420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A159715.P15373234625700992420

namespace A159715

/-- `Δ[3^n]+a(n-1)/cot(atan(3))` -/
def P15373234625700992420.Spec : Prop :=
  ∀ n, P15373234625700992420.a n = (A159715 (n + 2) : ℝ)

end A159715

/-! ## A159715.P4796204232778746754

`Δ[3^n]+a(n-1)/sqrt(1/9)` with `a(0)=4`
-/

namespace A159715.P4796204232778746754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A159715.P4796204232778746754

namespace A159715

/-- `Δ[3^n]+a(n-1)/sqrt(1/9)` -/
def P4796204232778746754.Spec : Prop :=
  ∀ n, P4796204232778746754.a n = (A159715 (n + 2) : ℝ)

theorem P4796204232778746754.correct : P4796204232778746754.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159715, Nat.add_sub_cancel, A159715.P4796204232778746754.f1, A159715.P4796204232778746754.a, A159715.P7674003241616951973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159715, Nat.add_sub_cancel, A159715.P4796204232778746754.f1, A159715.P4796204232778746754.a, A159715.P7674003241616951973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159715

/-! ## A159715.P2689919560367351748

`a(n-1)/cot(atan(3))+3^n+3^n` with `a(0)=4`
-/

namespace A159715.P2689919560367351748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) + (3 ^ n + 3 ^ n : ℝ)

end

end A159715.P2689919560367351748

namespace A159715

/-- `a(n-1)/cot(atan(3))+3^n+3^n` -/
def P2689919560367351748.Spec : Prop :=
  ∀ n, P2689919560367351748.a n = (A159715 (n + 2) : ℝ)

end A159715

/-! ## A159715.P6044055997973357374

`a(n-1)+(3/(n+1)+2)*a(n-1)` with `a(0)=4`
-/

namespace A159715.P6044055997973357374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (3 / (n + 1 : ℚ) + 2) * a (n - 1)

end

end A159715.P6044055997973357374

namespace A159715

/-- `a(n-1)+(3/(n+1)+2)*a(n-1)` -/
def P6044055997973357374.Spec : Prop :=
  ∀ n, P6044055997973357374.a n = (A159715 (n + 2) : ℚ)

end A159715

/-! ## A159715.P9152274214563918192

`a(n-1)/sqrt(1/9)+3^n/tan(acot(2))` with `a(0)=4`
-/

namespace A159715.P9152274214563918192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) + (3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A159715.P9152274214563918192

namespace A159715

/-- `a(n-1)/sqrt(1/9)+3^n/tan(acot(2))` -/
def P9152274214563918192.Spec : Prop :=
  ∀ n, P9152274214563918192.a n = (A159715 (n + 2) : ℝ)

end A159715

/-! ## A159715.P15374174405695540356

`record[A027261(abs(1-n))]`
-/

namespace A159715.P15374174405695540356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159715.P15374174405695540356

namespace A159715

/-- `record[A027261(abs(1-n))]` -/
def P15374174405695540356.Spec : Prop :=
  ∀ n, P15374174405695540356.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P3102833778627381404

`A124647(n)+3^(n+1)`
-/

namespace A159715.P3102833778627381404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n + (3 ^ (n + 1) : ℤ)

end

end A159715.P3102833778627381404

namespace A159715

/-- `A124647(n)+3^(n+1)` -/
def P3102833778627381404.Spec : Prop :=
  ∀ n, P3102833778627381404.a n = A159715 (n + 2)

theorem P3102833778627381404.correct : P3102833778627381404.Spec := by
  intro n
  simp only [A159715, Nat.add_sub_cancel, A159715.P3102833778627381404.a, A159715.P7674003241616951973.a, A124647, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A159715

/-! ## A159715.P17428825185324334399

`A229277(n+1)+3^n`
-/

namespace A159715.P17428825185324334399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 (n + 1) + (3 ^ n : ℤ)

end

end A159715.P17428825185324334399

namespace A159715

/-- `A229277(n+1)+3^n` -/
def P17428825185324334399.Spec : Prop :=
  ∀ n, P17428825185324334399.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P1704848550422237396

`A081038(n+1)-3^n`
-/

namespace A159715.P1704848550422237396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (n + 1) - (3 ^ n : ℤ)

end

end A159715.P1704848550422237396

namespace A159715

/-- `A081038(n+1)-3^n` -/
def P1704848550422237396.Spec : Prop :=
  ∀ n, P1704848550422237396.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P1714744150008174524

`and(2*A288834(n+1), -2)`
-/

namespace A159715.P1714744150008174524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A288834 (n + 1)) (-2)

end

end A159715.P1714744150008174524

namespace A159715

/-- `and(2*A288834(n+1), -2)` -/
def P1714744150008174524.Spec : Prop :=
  ∀ n, P1714744150008174524.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P16403788062841475614

`A048473(n)+3*a(n-1)+1` with `a(0)=4`
-/

namespace A159715.P16403788062841475614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A048473 n + (3 * a (n - 1) + 1)

end

end A159715.P16403788062841475614

namespace A159715

/-- `A048473(n)+3*a(n-1)+1` -/
def P16403788062841475614.Spec : Prop :=
  ∀ n, P16403788062841475614.a n = A159715 (n + 2)

theorem P16403788062841475614.correct : P16403788062841475614.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159715, Nat.add_sub_cancel, A159715.P16403788062841475614.a, A159715.P7674003241616951973.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159715, Nat.add_sub_cancel, A159715.P16403788062841475614.a, A159715.P7674003241616951973.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159715

/-! ## A159715.P11372060694774260352

`A100774(n)+3*a(n-1)+2` with `a(0)=4`
-/

namespace A159715.P11372060694774260352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A100774 n + (3 * a (n - 1) + 2)

end

end A159715.P11372060694774260352

namespace A159715

/-- `A100774(n)+3*a(n-1)+2` -/
def P11372060694774260352.Spec : Prop :=
  ∀ n, P11372060694774260352.a n = A159715 (n + 2)

theorem P11372060694774260352.correct : P11372060694774260352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159715, Nat.add_sub_cancel, A159715.P11372060694774260352.a, A159715.P7674003241616951973.a, A100774, A100774.P2437826719099000407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159715, Nat.add_sub_cancel, A159715.P11372060694774260352.a, A159715.P7674003241616951973.a, A100774, A100774.P2437826719099000407.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159715

/-! ## A159715.P14795161580408851983

`A212697(n+1)+A008776(n)`
-/

namespace A159715.P14795161580408851983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212697 (n + 1) + A008776 n

end

end A159715.P14795161580408851983

namespace A159715

/-- `A212697(n+1)+A008776(n)` -/
def P14795161580408851983.Spec : Prop :=
  ∀ n, P14795161580408851983.a n = A159715 (n + 2)

theorem P14795161580408851983.correct : P14795161580408851983.Spec := by
  intro n
  simp only [A159715, Nat.add_sub_cancel, A159715.P14795161580408851983.a, A159715.P7674003241616951973.a, A008776, A008776.P11088121667404015999.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159715

/-! ## A159715.P3179735082226806230

`A036290(n)+A006234(n+4)`
-/

namespace A159715.P3179735082226806230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + A006234 (n + 4)

end

end A159715.P3179735082226806230

namespace A159715

/-- `A036290(n)+A006234(n+4)` -/
def P3179735082226806230.Spec : Prop :=
  ∀ n, P3179735082226806230.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P1897873919295817911

`A064017(n+2)+A027471(n+2)`
-/

namespace A159715.P1897873919295817911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (n + 2) + A027471 (n + 2)

end

end A159715.P1897873919295817911

namespace A159715

/-- `A064017(n+2)+A027471(n+2)` -/
def P1897873919295817911.Spec : Prop :=
  ∀ n, P1897873919295817911.a n = A159715 (n + 2)

end A159715

/-! ## A159715.P84791433348044853

`6*a(n-1)-9*a(n-2)` with `a(0)=4, a(1)=18`
-/

namespace A159715.P84791433348044853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 18] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A159715.P84791433348044853

namespace A159715

/-- `6*a(n-1)-9*a(n-2)` -/
def P84791433348044853.Spec : Prop :=
  ∀ n, P84791433348044853.a n = A159715 (n + 2)

theorem P84791433348044853.correct : P84791433348044853.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159715, Nat.add_sub_cancel, A159715.P84791433348044853.a, A159715.P7674003241616951973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159715, Nat.add_sub_cancel, A159715.P84791433348044853.a, A159715.P7674003241616951973.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159715

/-!
# A159716: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159716, the canonical program `A159716.P833117748496745779` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159716 has offset 2).

The definition of A159716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159716.P833117748496745779

`(n+2)*(169*10^n+48*3^n-84*(n+2)*3^n)/49`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159716

/-- `(n+2)*(169*10^n+48*3^n-84*(n+2)*3^n)/49` -/
def P833117748496745779.Spec : Prop :=
  ∀ n, P833117748496745779.a n = (A159716 (n + 2) : ℚ)

end A159716

/-! ## A159716.P5028945079435539480

`A334772(∑[n+1]+1)`
-/

namespace A159716.P5028945079435539480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A159716.P5028945079435539480

namespace A159716

/-- `A334772(∑[n+1]+1)` -/
def P5028945079435539480.Spec : Prop :=
  ∀ n, P5028945079435539480.a n = A159716 (n + 2)

end A159716

/-! ## A159716.P4832115444273748281

`record[root(A334772(n+2), A110522(n))]`
-/

namespace A159716.P4832115444273748281
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334772 (n + 2) : ℝ) ^ (1 / (A110522 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159716.P4832115444273748281

namespace A159716

/-- `record[root(A334772(n+2), A110522(n))]` -/
def P4832115444273748281.Spec : Prop :=
  ∀ n, P4832115444273748281.a n = (A159716 (n + 2) : ℝ)

end A159716

/-! ## A159716.P47861313645628767

`record[gcd(A025581(n), A334772(n+2))]`
-/

namespace A159716.P47861313645628767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A334772 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159716.P47861313645628767

namespace A159716

/-- `record[gcd(A025581(n), A334772(n+2))]` -/
def P47861313645628767.Spec : Prop :=
  ∀ n, (P47861313645628767.a n : ℤ) = A159716 (n + 2)

end A159716

/-! ## A159716.P2211307658145823563

`record[root(A334772(n+2), A039683(n+1))]`
-/

namespace A159716.P2211307658145823563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334772 (n + 2) : ℝ) ^ (1 / (A039683 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159716.P2211307658145823563

namespace A159716

/-- `record[root(A334772(n+2), A039683(n+1))]` -/
def P2211307658145823563.Spec : Prop :=
  ∀ n, P2211307658145823563.a n = (A159716 (n + 2) : ℝ)

end A159716

/-!
# A159717: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 3 local maxima.

The programs for A159717, there is no canonical definition to state claims against.
-/

/-! ## A159717.P8323582160655278904

`A334778(∑[round(acot(n)+n)+1])`
-/

namespace A159717.P8323582160655278904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159717.P8323582160655278904

/-! ## A159717.P12080581008424522459

`A334778(A253145(n)+3)`
-/

namespace A159717.P12080581008424522459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (A253145 n + 3).toNat

end

end A159717.P12080581008424522459

/-! ## A159717.P11909801318107243164

`A334778(A133263(n)+2+n)`
-/

namespace A159717.P11909801318107243164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (A133263 n + 2 + (n : ℤ)).toNat

end

end A159717.P11909801318107243164

/-! ## A159717.P11930366429452946390

`A334778(C(n+3, 2)+1-A028310(n))`
-/

namespace A159717.P11930366429452946390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 ((Nat.choose (n + 3) 2 + 1 : ℤ) - A028310 n).toNat

end

end A159717.P11930366429452946390

/-! ## A159717.P18249941324031002808

`A334778(A167614(n+1)-A114637(n+1))`
-/

namespace A159717.P18249941324031002808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (A167614 (n + 1) - A114637 (n + 1)).toNat

end

end A159717.P18249941324031002808

/-!
# A159718: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 4 local maxima.

The programs for A159718, there is no canonical definition to state claims against.
-/

/-! ## A159718.P4925511008680255026

`8*A025875(A224323(n))`
-/

namespace A159718.P4925511008680255026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A025875 (A224323 n).toNat

end

end A159718.P4925511008680255026

/-!
# A159719: Number of permutations of 2 indistinguishable copies of 1..n arranged in a circle with exactly 5 local maxima.

The programs for A159719, there is no canonical definition to state claims against.
-/

/-! ## A159719.P195243371738804144

`A334778(A167499(n))%A294463(2*n)`
-/

namespace A159719.P195243371738804144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334778 (A167499 n).toNat) (A294463 (2 * n))

end

end A159719.P195243371738804144

/-! ## A159719.P15370837857131550740

`A334778(A167499(n)^A343319(n))`
-/

namespace A159719.P15370837857131550740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334778 (SequenceMachineLib.roundAway ((A167499 n : ℚ) ^ (A343319 n : ℤ))).toNat

end

end A159719.P15370837857131550740

/-! ## A159719.P648140384777374567

`A334778(A167499(n))%A326868(n)`
-/

namespace A159719.P648140384777374567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334778 (A167499 n).toNat) (A326868 n)

end

end A159719.P648140384777374567

/-!
# A159721: Number of permutations of 3 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159721, the canonical program `A159721.P1085248719356941629` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159721 has offset 2).

The definition of A159721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159721.P1969363240582118180

`3*(n+2)*4^n`
-/

namespace A159721.P1969363240582118180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2) * 4 ^ n

end

end A159721.P1969363240582118180

namespace A159721

/-- `3*(n+2)*4^n` -/
def P1969363240582118180.Spec : Prop :=
  ∀ n, (P1969363240582118180.a n : ℤ) = A159721 (n + 2)

theorem P1969363240582118180.correct : P1969363240582118180.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159721, Nat.add_sub_cancel, A159721.P1969363240582118180.a, A159721.P1085248719356941629.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159721, Nat.add_sub_cancel, A159721.P1969363240582118180.a, A159721.P1085248719356941629.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159721

/-! ## A159721.P1085248719356941629

`8*a(n-1)-16*a(n-2)` with `a(0)=6, a(1)=36`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159721

/-- `8*a(n-1)-16*a(n-2)` -/
def P1085248719356941629.Spec : Prop :=
  ∀ n, P1085248719356941629.a n = A159721 (n + 2)

theorem P1085248719356941629.correct : P1085248719356941629.Spec := by
  intro n
  simp only [A159721, Nat.add_sub_cancel]

end A159721

/-! ## A159721.P6582815518477037782

`ogf((6-12x)/(1-8x+16x^2))`
-/

namespace A159721.P6582815518477037782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -12] [1, -8, 16] n

end

end A159721.P6582815518477037782

namespace A159721

/-- `ogf((6-12x)/(1-8x+16x^2))` -/
def P6582815518477037782.Spec : Prop :=
  ∀ n, P6582815518477037782.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P7232778784328704041

`A084860(2*(n+1))`
-/

namespace A159721.P7232778784328704041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 (2 * (n + 1))

end

end A159721.P7232778784328704041

namespace A159721

/-- `A084860(2*(n+1))` -/
def P7232778784328704041.Spec : Prop :=
  ∀ n, P7232778784328704041.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P874240675660509863

`(n+2)*A002023(n)/2`
-/

namespace A159721.P874240675660509863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A002023 n : ℚ) / 2

end

end A159721.P874240675660509863

namespace A159721

/-- `(n+2)*A002023(n)/2` -/
def P874240675660509863.Spec : Prop :=
  ∀ n, P874240675660509863.a n = (A159721 (n + 2) : ℚ)

theorem P874240675660509863.correct : P874240675660509863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159721, Nat.add_sub_cancel, A159721.P874240675660509863.a, A159721.P1085248719356941629.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159721, Nat.add_sub_cancel, A159721.P874240675660509863.a, A159721.P1085248719356941629.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159721

/-! ## A159721.P18034103652999692641

`abs((n+2)*Δ[A000302(n)])`
-/

namespace A159721.P18034103652999692641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A159721.P18034103652999692641

namespace A159721

/-- `abs((n+2)*Δ[A000302(n)])` -/
def P18034103652999692641.Spec : Prop :=
  ∀ n, P18034103652999692641.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P5363558870059844301

`record[(n+6)*A078029(2*n)]`
-/

namespace A159721.P5363558870059844301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A078029 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159721.P5363558870059844301

namespace A159721

/-- `record[(n+6)*A078029(2*n)]` -/
def P5363558870059844301.Spec : Prop :=
  ∀ n, P5363558870059844301.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P17828705001060642720

`Δ[4^n/3*A016789(n)]`
-/

namespace A159721.P17828705001060642720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 3 * (A016789 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159721.P17828705001060642720

namespace A159721

/-- `Δ[4^n/3*A016789(n)]` -/
def P17828705001060642720.Spec : Prop :=
  ∀ n, P17828705001060642720.a n = (A159721 (n + 2) : ℚ)

theorem P17828705001060642720.correct : P17828705001060642720.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159721, Nat.add_sub_cancel, A159721.P17828705001060642720.f1, A159721.P17828705001060642720.a, A159721.P1085248719356941629.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159721, Nat.add_sub_cancel, A159721.P17828705001060642720.f1, A159721.P17828705001060642720.a, A159721.P1085248719356941629.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159721

/-! ## A159721.P6893922516104001371

`(n+2)*A164908(n+1)/2`
-/

namespace A159721.P6893922516104001371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A164908 (n + 1) : ℚ) / 2

end

end A159721.P6893922516104001371

namespace A159721

/-- `(n+2)*A164908(n+1)/2` -/
def P6893922516104001371.Spec : Prop :=
  ∀ n, P6893922516104001371.a n = (A159721 (n + 2) : ℚ)

end A159721

/-! ## A159721.P6859968266271286740

`(n+2)*A084509(n+3)/2`
-/

namespace A159721.P6859968266271286740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A084509 (n + 3) : ℚ) / 2

end

end A159721.P6859968266271286740

namespace A159721

/-- `(n+2)*A084509(n+3)/2` -/
def P6859968266271286740.Spec : Prop :=
  ∀ n, P6859968266271286740.a n = (A159721 (n + 2) : ℚ)

end A159721

/-! ## A159721.P6837498103418420714

`(n+2)*A007283(2*n+1)/2`
-/

namespace A159721.P6837498103418420714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A007283 (2 * n + 1) : ℚ) / 2

end

end A159721.P6837498103418420714

namespace A159721

/-- `(n+2)*A007283(2*n+1)/2` -/
def P6837498103418420714.Spec : Prop :=
  ∀ n, P6837498103418420714.a n = (A159721 (n + 2) : ℚ)

theorem P6837498103418420714.correct : P6837498103418420714.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159721, Nat.add_sub_cancel, A159721.P6837498103418420714.a, A159721.P1085248719356941629.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159721, Nat.add_sub_cancel, A159721.P6837498103418420714.a, A159721.P1085248719356941629.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159721

/-! ## A159721.P13393835868347906458

`record[A040041(n)*A045891(n)]`
-/

namespace A159721.P13393835868347906458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 n * A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159721.P13393835868347906458

namespace A159721

/-- `record[A040041(n)*A045891(n)]` -/
def P13393835868347906458.Spec : Prop :=
  ∀ n, P13393835868347906458.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P4154281413551364172

`A081039(n+1)-A000079(n)²`
-/

namespace A159721.P4154281413551364172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 (n + 1) - A000079 n ^ 2

end

end A159721.P4154281413551364172

namespace A159721

/-- `A081039(n+1)-A000079(n)²` -/
def P4154281413551364172.Spec : Prop :=
  ∀ n, P4154281413551364172.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P5885245434030179453

`A081039(n+1)-A000079(2*n)`
-/

namespace A159721.P5885245434030179453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 (n + 1) - A000079 (2 * n)

end

end A159721.P5885245434030179453

namespace A159721

/-- `A081039(n+1)-A000079(2*n)` -/
def P5885245434030179453.Spec : Prop :=
  ∀ n, P5885245434030179453.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P2991332480658000417

`Δ[A001792(2*n)]-A000079(n)²`
-/

namespace A159721.P2991332480658000417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000079 n ^ 2

end

end A159721.P2991332480658000417

namespace A159721

/-- `Δ[A001792(2*n)]-A000079(n)²` -/
def P2991332480658000417.Spec : Prop :=
  ∀ n, P2991332480658000417.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P1487540625783311533

`A081039(n+1)-A011782(n+1)²`
-/

namespace A159721.P1487540625783311533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 (n + 1) - A011782 (n + 1) ^ 2

end

end A159721.P1487540625783311533

namespace A159721

/-- `A081039(n+1)-A011782(n+1)²` -/
def P1487540625783311533.Spec : Prop :=
  ∀ n, P1487540625783311533.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P3921687625942792413

`Δ[A001792(2*n)]-A000079(2*n)`
-/

namespace A159721.P3921687625942792413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000079 (2 * n)

end

end A159721.P3921687625942792413

namespace A159721

/-- `Δ[A001792(2*n)]-A000079(2*n)` -/
def P3921687625942792413.Spec : Prop :=
  ∀ n, P3921687625942792413.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P16726785323924104803

`A045623(2*(n+1))+A002697(n+1)`
-/

namespace A159721.P16726785323924104803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * (n + 1)) + A002697 (n + 1)

end

end A159721.P16726785323924104803

namespace A159721

/-- `A045623(2*(n+1))+A002697(n+1)` -/
def P16726785323924104803.Spec : Prop :=
  ∀ n, P16726785323924104803.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P12089801053010622772

`A081039(n+1)-A011782(2*n+1)`
-/

namespace A159721.P12089801053010622772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 (n + 1) - A011782 (2 * n + 1)

end

end A159721.P12089801053010622772

namespace A159721

/-- `A081039(n+1)-A011782(2*n+1)` -/
def P12089801053010622772.Spec : Prop :=
  ∀ n, P12089801053010622772.a n = A159721 (n + 2)

end A159721

/-! ## A159721.P4113030972961340305

`A268965(n+1)-A084858(2*n+1)`
-/

namespace A159721.P4113030972961340305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268965 (n + 1) - A084858 (2 * n + 1)

end

end A159721.P4113030972961340305

namespace A159721

/-- `A268965(n+1)-A084858(2*n+1)` -/
def P4113030972961340305.Spec : Prop :=
  ∀ n, P4113030972961340305.a n = A159721 (n + 2)

end A159721

/-!
# A159722: Number of permutations of 3 indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159722, the canonical program `A159722.P15320583058747889478` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159722 has offset 2).

The definition of A159722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159722.P15320583058747889478

`3*(n+2)*(121*20^n+15*4^n-36*(n+2)*4^n)/32`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159722

/-- `3*(n+2)*(121*20^n+15*4^n-36*(n+2)*4^n)/32` -/
def P15320583058747889478.Spec : Prop :=
  ∀ n, P15320583058747889478.a n = (A159722 (n + 2) : ℚ)

end A159722

/-! ## A159722.P10100893631211532919

`A334772(C(n+3, 2))`
-/

namespace A159722.P10100893631211532919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (Nat.choose (n + 3) 2)

end

end A159722.P10100893631211532919

namespace A159722

/-- `A334772(C(n+3, 2))` -/
def P10100893631211532919.Spec : Prop :=
  ∀ n, P10100893631211532919.a n = A159722 (n + 2)

end A159722

/-! ## A159722.P13406901897902106895

`A334772(∑[n+2]+1)`
-/

namespace A159722.P13406901897902106895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A159722.P13406901897902106895

namespace A159722

/-- `A334772(∑[n+2]+1)` -/
def P13406901897902106895.Spec : Prop :=
  ∀ n, P13406901897902106895.a n = A159722 (n + 2)

end A159722

/-! ## A159722.P6635791690553044555

`lcm(2, A334772(A000217(n+2)))`
-/

namespace A159722.P6635791690553044555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A334772 (A000217 (n + 2)).toNat)

end

end A159722.P6635791690553044555

namespace A159722

/-- `lcm(2, A334772(A000217(n+2)))` -/
def P6635791690553044555.Spec : Prop :=
  ∀ n, (P6635791690553044555.a n : ℤ) = A159722 (n + 2)

end A159722

/-! ## A159722.P14960782244697221502

`record[A334772(A333531(n+1))]`
-/

namespace A159722.P14960782244697221502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (A333531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159722.P14960782244697221502

namespace A159722

/-- `record[A334772(A333531(n+1))]` -/
def P14960782244697221502.Spec : Prop :=
  ∀ n, P14960782244697221502.a n = A159722 (n + 2)

end A159722

/-!
# A159727: Number of permutations of 4 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159727, the canonical program `A159727.P8144564074636686899` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159727 has offset 2).

The definition of A159727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159727.P15941955283763829656

`4*(n+2)*5^n`
-/

namespace A159727.P15941955283763829656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2) * 5 ^ n

end

end A159727.P15941955283763829656

namespace A159727

/-- `4*(n+2)*5^n` -/
def P15941955283763829656.Spec : Prop :=
  ∀ n, (P15941955283763829656.a n : ℤ) = A159727 (n + 2)

theorem P15941955283763829656.correct : P15941955283763829656.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159727, Nat.add_sub_cancel, A159727.P15941955283763829656.a, A159727.P8144564074636686899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159727, Nat.add_sub_cancel, A159727.P15941955283763829656.a, A159727.P8144564074636686899.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159727

/-! ## A159727.P8144564074636686899

`10*a(n-1)-25*a(n-2)` with `a(0)=8, a(1)=60`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159727

/-- `10*a(n-1)-25*a(n-2)` -/
def P8144564074636686899.Spec : Prop :=
  ∀ n, P8144564074636686899.a n = A159727 (n + 2)

theorem P8144564074636686899.correct : P8144564074636686899.Spec := by
  intro n
  simp only [A159727, Nat.add_sub_cancel]

end A159727

/-! ## A159727.P15417727911857110409

`ogf((8-20x)/(1-10x+25x^2))`
-/

namespace A159727.P15417727911857110409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -20] [1, -10, 25] n

end

end A159727.P15417727911857110409

namespace A159727

/-- `ogf((8-20x)/(1-10x+25x^2))` -/
def P15417727911857110409.Spec : Prop :=
  ∀ n, P15417727911857110409.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P144717650015353128

`A026955(2*(n+1))`
-/

namespace A159727.P144717650015353128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026955 (2 * (n + 1))

end

end A159727.P144717650015353128

namespace A159727

/-- `A026955(2*(n+1))` -/
def P144717650015353128.Spec : Prop :=
  ∀ n, P144717650015353128.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P8124766605545746850

`abs((n+2)*Δ[A000351(n)])`
-/

namespace A159727.P8124766605545746850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A159727.P8124766605545746850

namespace A159727

/-- `abs((n+2)*Δ[A000351(n)])` -/
def P8124766605545746850.Spec : Prop :=
  ∀ n, P8124766605545746850.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P1573788864263958763

`abs((n+2)*Δ[A034474(n)])`
-/

namespace A159727.P1573788864263958763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A159727.P1573788864263958763

namespace A159727

/-- `abs((n+2)*Δ[A034474(n)])` -/
def P1573788864263958763.Spec : Prop :=
  ∀ n, P1573788864263958763.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P2842888257684800172

`A081040(n+1)-A000351(n)`
-/

namespace A159727.P2842888257684800172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081040 (n + 1) - A000351 n

end

end A159727.P2842888257684800172

namespace A159727

/-- `A081040(n+1)-A000351(n)` -/
def P2842888257684800172.Spec : Prop :=
  ∀ n, P2842888257684800172.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P7543315244824202039

`2*A020729(n)+(n+1)*2*A020729(n)`
-/

namespace A159727.P7543315244824202039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020729 n + (n + 1 : ℤ) * (2 * A020729 n)

end

end A159727.P7543315244824202039

namespace A159727

/-- `2*A020729(n)+(n+1)*2*A020729(n)` -/
def P7543315244824202039.Spec : Prop :=
  ∀ n, P7543315244824202039.a n = A159727 (n + 2)

theorem P7543315244824202039.correct : P7543315244824202039.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159727, Nat.add_sub_cancel, A159727.P7543315244824202039.a, A159727.P8144564074636686899.a, A020729, A020729.P10295770726716872561.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159727, Nat.add_sub_cancel, A159727.P7543315244824202039.a, A159727.P8144564074636686899.a, A020729, A020729.P10295770726716872561.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159727

/-! ## A159727.P10577478240073834243

`abs((n+2)*Δ[A003463(n)-A003463(n+1)])`
-/

namespace A159727.P10577478240073834243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A003463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A159727.P10577478240073834243

namespace A159727

/-- `abs((n+2)*Δ[A003463(n)-A003463(n+1)])` -/
def P10577478240073834243.Spec : Prop :=
  ∀ n, P10577478240073834243.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P13412031498394243056

`A056451(2*(n+1))+(4*n+3)*A056451(2*n)`
-/

namespace A159727.P13412031498394243056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * (n + 1)) + (4 * n + 3 : ℤ) * A056451 (2 * n)

end

end A159727.P13412031498394243056

namespace A159727

/-- `A056451(2*(n+1))+(4*n+3)*A056451(2*n)` -/
def P13412031498394243056.Spec : Prop :=
  ∀ n, P13412031498394243056.a n = A159727 (n + 2)

end A159727

/-! ## A159727.P14783871373829871670

`A212699(n+2)/5`
-/

namespace A159727.P14783871373829871670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212699 (n + 2) : ℚ) / 5

end

end A159727.P14783871373829871670

namespace A159727

/-- `A212699(n+2)/5` -/
def P14783871373829871670.Spec : Prop :=
  ∀ n, P14783871373829871670.a n = (A159727 (n + 2) : ℚ)

end A159727

/-!
# A159728: Number of permutations of 4 indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159728, the canonical program `A159728.P2805258692283251426` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159728 has offset 2).

The definition of A159728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159728.P2805258692283251426

`2*(n+2)*(121*35^n+8*5^n-24*(n+2)*5^n)/9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159728

/-- `2*(n+2)*(121*35^n+8*5^n-24*(n+2)*5^n)/9` -/
def P2805258692283251426.Spec : Prop :=
  ∀ n, P2805258692283251426.a n = (A159728 (n + 2) : ℚ)

end A159728

/-! ## A159728.P16469802063530972372

`A334772(∑[n+3]+2)`
-/

namespace A159728.P16469802063530972372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A159728.P16469802063530972372

namespace A159728

/-- `A334772(∑[n+3]+2)` -/
def P16469802063530972372.Spec : Prop :=
  ∀ n, P16469802063530972372.a n = A159728 (n + 2)

end A159728

/-!
# A159733: Number of permutations of 5 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159733, the canonical program `A159733.P1069676204604834355` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159733 has offset 2).

The definition of A159733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159733.P6550971135996945945

`5*(n+2)*6^n`
-/

namespace A159733.P6550971135996945945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2) * 6 ^ n

end

end A159733.P6550971135996945945

namespace A159733

/-- `5*(n+2)*6^n` -/
def P6550971135996945945.Spec : Prop :=
  ∀ n, (P6550971135996945945.a n : ℤ) = A159733 (n + 2)

theorem P6550971135996945945.correct : P6550971135996945945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159733, Nat.add_sub_cancel, A159733.P6550971135996945945.a, A159733.P1069676204604834355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159733, Nat.add_sub_cancel, A159733.P6550971135996945945.a, A159733.P1069676204604834355.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159733

/-! ## A159733.P1069676204604834355

`12*a(n-1)-36*a(n-2)` with `a(0)=10, a(1)=90`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159733

/-- `12*a(n-1)-36*a(n-2)` -/
def P1069676204604834355.Spec : Prop :=
  ∀ n, P1069676204604834355.a n = A159733 (n + 2)

theorem P1069676204604834355.correct : P1069676204604834355.Spec := by
  intro n
  simp only [A159733, Nat.add_sub_cancel]

end A159733

/-! ## A159733.P16999842021826689288

`abs((n+2)*Δ[A024062(n)])`
-/

namespace A159733.P16999842021826689288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A159733.P16999842021826689288

namespace A159733

/-- `abs((n+2)*Δ[A024062(n)])` -/
def P16999842021826689288.Spec : Prop :=
  ∀ n, P16999842021826689288.a n = A159733 (n + 2)

end A159733

/-! ## A159733.P4264618672050192092

`(n+2)*A199320(n)-(n+2)`
-/

namespace A159733.P4264618672050192092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A199320 n - (n + 2 : ℤ)

end

end A159733.P4264618672050192092

namespace A159733

/-- `(n+2)*A199320(n)-(n+2)` -/
def P4264618672050192092.Spec : Prop :=
  ∀ n, P4264618672050192092.a n = A159733 (n + 2)

theorem P4264618672050192092.correct : P4264618672050192092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159733, Nat.add_sub_cancel, A159733.P4264618672050192092.a, A159733.P1069676204604834355.a, A199320, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159733, Nat.add_sub_cancel, A159733.P4264618672050192092.a, A159733.P1069676204604834355.a, A199320, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159733

/-! ## A159733.P13348537308927250573

`A081041(n+1)-A000400(n)`
-/

namespace A159733.P13348537308927250573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 (n + 1) - A000400 n

end

end A159733.P13348537308927250573

namespace A159733

/-- `A081041(n+1)-A000400(n)` -/
def P13348537308927250573.Spec : Prop :=
  ∀ n, P13348537308927250573.a n = A159733 (n + 2)

end A159733

/-! ## A159733.P10579692981405639312

`Δ[A053469(n+1)]-A000400(n)`
-/

namespace A159733.P10579692981405639312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000400 n

end

end A159733.P10579692981405639312

namespace A159733

/-- `Δ[A053469(n+1)]-A000400(n)` -/
def P10579692981405639312.Spec : Prop :=
  ∀ n, P10579692981405639312.a n = A159733 (n + 2)

theorem P10579692981405639312.correct : P10579692981405639312.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159733, Nat.add_sub_cancel, A159733.P10579692981405639312.f1, A159733.P10579692981405639312.a, A159733.P1069676204604834355.a, A000400, A000400.P10889281521385558416.a, A053469, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159733, Nat.add_sub_cancel, A159733.P10579692981405639312.f1, A159733.P10579692981405639312.a, A159733.P1069676204604834355.a, A000400, A000400.P10889281521385558416.a, A053469, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159733

/-! ## A159733.P2532204253977681351

`A081041(n+1)-(A395827(n)+A180033(n))`
-/

namespace A159733.P2532204253977681351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 (n + 1) - (A395827 n + A180033 n)

end

end A159733.P2532204253977681351

namespace A159733

/-- `A081041(n+1)-(A395827(n)+A180033(n))` -/
def P2532204253977681351.Spec : Prop :=
  ∀ n, P2532204253977681351.a n = A159733 (n + 2)

end A159733

/-! ## A159733.P8754777401996421612

`A212700(n+2)/6`
-/

namespace A159733.P8754777401996421612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212700 (n + 2) : ℚ) / 6

end

end A159733.P8754777401996421612

namespace A159733

/-- `A212700(n+2)/6` -/
def P8754777401996421612.Spec : Prop :=
  ∀ n, P8754777401996421612.a n = (A159733 (n + 2) : ℚ)

theorem P8754777401996421612.correct : P8754777401996421612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159733, Nat.add_sub_cancel, A159733.P8754777401996421612.a, A159733.P1069676204604834355.a, A212700, A212700.P17843632432292983955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159733, Nat.add_sub_cancel, A159733.P8754777401996421612.a, A159733.P1069676204604834355.a, A212700, A212700.P17843632432292983955.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159733

/-! ## A159733.P5259484845276863387

`A178756(A000217(n+5)+6)/18`
-/

namespace A159733.P5259484845276863387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178756 (A000217 (n + 5) + 6).toNat : ℚ) / 18

end

end A159733.P5259484845276863387

namespace A159733

/-- `A178756(A000217(n+5)+6)/18` -/
def P5259484845276863387.Spec : Prop :=
  ∀ n, P5259484845276863387.a n = (A159733 (n + 2) : ℚ)

end A159733

/-!
# A159734: Number of permutations of 5 indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159734, there is no canonical definition to state claims against.
-/

/-! ## A159734.P13730451013211982152

`A334772((n+3)²-∑[n+1])`
-/

namespace A159734.P13730451013211982152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159734.P13730451013211982152

/-!
# A159736: Number of permutations of 6 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159736, the canonical program `A159736.P7602501987900332431` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159736 has offset 2).

The definition of A159736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159736.P13754793067259259704

`6*(n+2)*7^n`
-/

namespace A159736.P13754793067259259704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 2) * 7 ^ n

end

end A159736.P13754793067259259704

namespace A159736

/-- `6*(n+2)*7^n` -/
def P13754793067259259704.Spec : Prop :=
  ∀ n, (P13754793067259259704.a n : ℤ) = A159736 (n + 2)

theorem P13754793067259259704.correct : P13754793067259259704.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159736, Nat.add_sub_cancel, A159736.P13754793067259259704.a, A159736.P7602501987900332431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159736, Nat.add_sub_cancel, A159736.P13754793067259259704.a, A159736.P7602501987900332431.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159736

/-! ## A159736.P7602501987900332431

`14*a(n-1)-49*a(n-2)` with `a(0)=12, a(1)=126`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159736

/-- `14*a(n-1)-49*a(n-2)` -/
def P7602501987900332431.Spec : Prop :=
  ∀ n, P7602501987900332431.a n = A159736 (n + 2)

theorem P7602501987900332431.correct : P7602501987900332431.Spec := by
  intro n
  simp only [A159736, Nat.add_sub_cancel]

end A159736

/-! ## A159736.P11974259034804158375

`(n+2)*A198688(n)+2+n`
-/

namespace A159736.P11974259034804158375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A198688 n + 2 + (n : ℤ)

end

end A159736.P11974259034804158375

namespace A159736

/-- `(n+2)*A198688(n)+2+n` -/
def P11974259034804158375.Spec : Prop :=
  ∀ n, P11974259034804158375.a n = A159736 (n + 2)

theorem P11974259034804158375.correct : P11974259034804158375.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159736, Nat.add_sub_cancel, A159736.P11974259034804158375.a, A159736.P7602501987900332431.a, A198688, A198688.P14860372083485364830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159736, Nat.add_sub_cancel, A159736.P11974259034804158375.a, A159736.P7602501987900332431.a, A198688, A198688.P14860372083485364830.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159736

/-! ## A159736.P13350614809159007156

`A081042(n+1)-A000420(n)`
-/

namespace A159736.P13350614809159007156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081042 (n + 1) - A000420 n

end

end A159736.P13350614809159007156

namespace A159736

/-- `A081042(n+1)-A000420(n)` -/
def P13350614809159007156.Spec : Prop :=
  ∀ n, P13350614809159007156.a n = A159736 (n + 2)

end A159736

/-! ## A159736.P754391035825328618

`Δ[A027473(n+1)]-A000420(n)`
-/

namespace A159736.P754391035825328618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000420 n

end

end A159736.P754391035825328618

namespace A159736

/-- `Δ[A027473(n+1)]-A000420(n)` -/
def P754391035825328618.Spec : Prop :=
  ∀ n, P754391035825328618.a n = A159736 (n + 2)

end A159736

/-! ## A159736.P11978455355657795289

`A212701(n+1)+6*A000420(n)`
-/

namespace A159736.P11978455355657795289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212701 (n + 1) + 6 * A000420 n

end

end A159736.P11978455355657795289

namespace A159736

/-- `A212701(n+1)+6*A000420(n)` -/
def P11978455355657795289.Spec : Prop :=
  ∀ n, P11978455355657795289.a n = A159736 (n + 2)

end A159736

/-! ## A159736.P15088072417029480411

`A027473(n+2)-(n+2)*A000420(n)`
-/

namespace A159736.P15088072417029480411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 2) - (n + 2 : ℤ) * A000420 n

end

end A159736.P15088072417029480411

namespace A159736

/-- `A027473(n+2)-(n+2)*A000420(n)` -/
def P15088072417029480411.Spec : Prop :=
  ∀ n, P15088072417029480411.a n = A159736 (n + 2)

end A159736

/-! ## A159736.P1941594215369684278

`2*A169634(n)+(n+1)*2*A169634(n)`
-/

namespace A159736.P1941594215369684278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169634 n + (n + 1 : ℤ) * (2 * A169634 n)

end

end A159736.P1941594215369684278

namespace A159736

/-- `2*A169634(n)+(n+1)*2*A169634(n)` -/
def P1941594215369684278.Spec : Prop :=
  ∀ n, P1941594215369684278.a n = A159736 (n + 2)

theorem P1941594215369684278.correct : P1941594215369684278.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159736, Nat.add_sub_cancel, A159736.P1941594215369684278.a, A159736.P7602501987900332431.a, A169634, A169634.P5176651036239165802.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159736, Nat.add_sub_cancel, A159736.P1941594215369684278.a, A159736.P7602501987900332431.a, A169634, A169634.P5176651036239165802.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159736

/-! ## A159736.P15026093122926287041

`A000420(n+1)+A000420(n)*A016969(n)`
-/

namespace A159736.P15026093122926287041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 1) + A000420 n * A016969 n

end

end A159736.P15026093122926287041

namespace A159736

/-- `A000420(n+1)+A000420(n)*A016969(n)` -/
def P15026093122926287041.Spec : Prop :=
  ∀ n, P15026093122926287041.a n = A159736 (n + 2)

theorem P15026093122926287041.correct : P15026093122926287041.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159736, Nat.add_sub_cancel, A159736.P15026093122926287041.a, A159736.P7602501987900332431.a, A000420, A000420.P3695589171832359676.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159736, Nat.add_sub_cancel, A159736.P15026093122926287041.a, A159736.P7602501987900332431.a, A000420, A000420.P3695589171832359676.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159736

/-! ## A159736.P1122873320529114030

`A027473(n+2)-(A027473(n+1)+A000420(n))`
-/

namespace A159736.P1122873320529114030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 2) - (A027473 (n + 1) + A000420 n)

end

end A159736.P1122873320529114030

namespace A159736

/-- `A027473(n+2)-(A027473(n+1)+A000420(n))` -/
def P1122873320529114030.Spec : Prop :=
  ∀ n, P1122873320529114030.a n = A159736 (n + 2)

end A159736

/-! ## A159736.P1661145404890776538

`A212701(n+2)/7`
-/

namespace A159736.P1661145404890776538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212701 (n + 2) : ℚ) / 7

end

end A159736.P1661145404890776538

namespace A159736

/-- `A212701(n+2)/7` -/
def P1661145404890776538.Spec : Prop :=
  ∀ n, P1661145404890776538.a n = (A159736 (n + 2) : ℚ)

end A159736

/-!
# A159737: Number of permutations of 6 indistinguishable copies of 1..n arranged in a circle with exactly 2 local maxima.

The programs for A159737, there is no canonical definition to state claims against.
-/

/-! ## A159737.P10639248866645312815

`A334772(A027379(n+3))`
-/

namespace A159737.P10639248866645312815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (A027379 (n + 3)).toNat

end

end A159737.P10639248866645312815

/-! ## A159737.P11544214101314545573

`A334772(A055998(n+3))`
-/

namespace A159737.P11544214101314545573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (A055998 (n + 3)).toNat

end

end A159737.P11544214101314545573

/-! ## A159737.P18339423479504449943

`A334772(eq[3, A089688(n)])`
-/

namespace A159737.P18339423479504449943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159737.P18339423479504449943

/-! ## A159737.P861868340052115497

`A334772(eq[7, A293808(n)])`
-/

namespace A159737.P861868340052115497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159737.P861868340052115497

/-! ## A159737.P12037096646707187587

`A334772(Δ[A264443(n)]+1)`
-/

namespace A159737.P12037096646707187587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (f1 (n + 1) - f1 n + 1).toNat

end

end A159737.P12037096646707187587

/-!
# A159738: Number of permutations of 7 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159738, the canonical program `A159738.P1251976313827774827` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159738 has offset 2).

The definition of A159738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159738.P3447331521129617057

`7*(n+2)*8^n`
-/

namespace A159738.P3447331521129617057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 2) * 8 ^ n

end

end A159738.P3447331521129617057

namespace A159738

/-- `7*(n+2)*8^n` -/
def P3447331521129617057.Spec : Prop :=
  ∀ n, (P3447331521129617057.a n : ℤ) = A159738 (n + 2)

theorem P3447331521129617057.correct : P3447331521129617057.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159738, Nat.add_sub_cancel, A159738.P3447331521129617057.a, A159738.P1251976313827774827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159738, Nat.add_sub_cancel, A159738.P3447331521129617057.a, A159738.P1251976313827774827.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159738

/-! ## A159738.P1251976313827774827

`16*a(n-1)-64*a(n-2)` with `a(0)=14, a(1)=168`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159738

/-- `16*a(n-1)-64*a(n-2)` -/
def P1251976313827774827.Spec : Prop :=
  ∀ n, P1251976313827774827.a n = A159738 (n + 2)

theorem P1251976313827774827.correct : P1251976313827774827.Spec := by
  intro n
  simp only [A159738, Nat.add_sub_cancel]

end A159738

/-! ## A159738.P11319557000533498527

`(n+2)*A198855(n)+n+2`
-/

namespace A159738.P11319557000533498527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A198855 n + (n + 2 : ℤ)

end

end A159738.P11319557000533498527

namespace A159738

/-- `(n+2)*A198855(n)+n+2` -/
def P11319557000533498527.Spec : Prop :=
  ∀ n, P11319557000533498527.a n = A159738 (n + 2)

theorem P11319557000533498527.correct : P11319557000533498527.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159738, Nat.add_sub_cancel, A159738.P11319557000533498527.a, A159738.P1251976313827774827.a, A198855, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159738, Nat.add_sub_cancel, A159738.P11319557000533498527.a, A159738.P1251976313827774827.a, A198855, A198855.P2327602423510526595.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159738

/-! ## A159738.P4674477008656479972

`(n+2)*A199555(n)-(n+2)`
-/

namespace A159738.P4674477008656479972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A199555 n - (n + 2 : ℤ)

end

end A159738.P4674477008656479972

namespace A159738

/-- `(n+2)*A199555(n)-(n+2)` -/
def P4674477008656479972.Spec : Prop :=
  ∀ n, P4674477008656479972.a n = A159738 (n + 2)

theorem P4674477008656479972.correct : P4674477008656479972.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159738, Nat.add_sub_cancel, A159738.P4674477008656479972.a, A159738.P1251976313827774827.a, A199555, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159738, Nat.add_sub_cancel, A159738.P4674477008656479972.a, A159738.P1251976313827774827.a, A199555, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159738

/-! ## A159738.P5717333147813585534

`Δ[A053539(n+1)]-A001018(n)`
-/

namespace A159738.P5717333147813585534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001018 n

end

end A159738.P5717333147813585534

namespace A159738

/-- `Δ[A053539(n+1)]-A001018(n)` -/
def P5717333147813585534.Spec : Prop :=
  ∀ n, P5717333147813585534.a n = A159738 (n + 2)

end A159738

/-! ## A159738.P8557646979608690674

`A001792(n)+A001792(n)*A206372(n)`
-/

namespace A159738.P8557646979608690674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + A001792 n * A206372 n

end

end A159738.P8557646979608690674

namespace A159738

/-- `A001792(n)+A001792(n)*A206372(n)` -/
def P8557646979608690674.Spec : Prop :=
  ∀ n, P8557646979608690674.a n = A159738 (n + 2)

end A159738

/-! ## A159738.P13683181664500626815

`A036294(n+1)+A083233(n+1)-A036294(n)`
-/

namespace A159738.P13683181664500626815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036294 (n + 1) + (A083233 (n + 1) - A036294 n)

end

end A159738.P13683181664500626815

namespace A159738

/-- `A036294(n+1)+A083233(n+1)-A036294(n)` -/
def P13683181664500626815.Spec : Prop :=
  ∀ n, P13683181664500626815.a n = A159738 (n + 2)

end A159738

/-! ## A159738.P12465760775638216717

`A212702(n+2)/8`
-/

namespace A159738.P12465760775638216717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212702 (n + 2) : ℚ) / 8

end

end A159738.P12465760775638216717

namespace A159738

/-- `A212702(n+2)/8` -/
def P12465760775638216717.Spec : Prop :=
  ∀ n, P12465760775638216717.a n = (A159738 (n + 2) : ℚ)

end A159738

/-! ## A159738.P18352288813488021733

`A027473(n+2)*A053539(n+1)/A027473(n+1)`
-/

namespace A159738.P18352288813488021733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027473 (n + 2) * A053539 (n + 1) : ℚ) / (A027473 (n + 1) : ℚ)

end

end A159738.P18352288813488021733

namespace A159738

/-- `A027473(n+2)*A053539(n+1)/A027473(n+1)` -/
def P18352288813488021733.Spec : Prop :=
  ∀ n, P18352288813488021733.a n = (A159738 (n + 2) : ℚ)

end A159738

/-!
# A159739: Number of permutations of 8 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159739, the canonical program `A159739.P17814658657997540826` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159739 has offset 2).

The definition of A159739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159739.P11836777929640593314

`8*(n+2)*9^n`
-/

namespace A159739.P11836777929640593314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2) * 9 ^ n

end

end A159739.P11836777929640593314

namespace A159739

/-- `8*(n+2)*9^n` -/
def P11836777929640593314.Spec : Prop :=
  ∀ n, (P11836777929640593314.a n : ℤ) = A159739 (n + 2)

theorem P11836777929640593314.correct : P11836777929640593314.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159739, Nat.add_sub_cancel, A159739.P11836777929640593314.a, A159739.P17814658657997540826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159739, Nat.add_sub_cancel, A159739.P11836777929640593314.a, A159739.P17814658657997540826.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159739

/-! ## A159739.P17814658657997540826

`18*a(n-1)-81*a(n-2)` with `a(0)=16, a(1)=216`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159739

/-- `18*a(n-1)-81*a(n-2)` -/
def P17814658657997540826.Spec : Prop :=
  ∀ n, P17814658657997540826.a n = A159739 (n + 2)

theorem P17814658657997540826.correct : P17814658657997540826.Spec := by
  intro n
  simp only [A159739, Nat.add_sub_cancel]

end A159739

/-! ## A159739.P4604052127879828414

`Δ[A119916(Δ[n²])]`
-/

namespace A159739.P4604052127879828414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159739.P4604052127879828414

namespace A159739

/-- `Δ[A119916(Δ[n²])]` -/
def P4604052127879828414.Spec : Prop :=
  ∀ n, P4604052127879828414.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P16749774859299778367

`A120926(2*n+3)`
-/

namespace A159739.P16749774859299778367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (2 * n + 3)

end

end A159739.P16749774859299778367

namespace A159739

/-- `A120926(2*n+3)` -/
def P16749774859299778367.Spec : Prop :=
  ∀ n, P16749774859299778367.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P1439560929019126329

`A212703(n+1)+Δ[9^n]`
-/

namespace A159739.P1439560929019126329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212703 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159739.P1439560929019126329

namespace A159739

/-- `A212703(n+1)+Δ[9^n]` -/
def P1439560929019126329.Spec : Prop :=
  ∀ n, P1439560929019126329.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P554879438816200417

`Δ[A053540(n+1)]-A001019(n)`
-/

namespace A159739.P554879438816200417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001019 n

end

end A159739.P554879438816200417

namespace A159739

/-- `Δ[A053540(n+1)]-A001019(n)` -/
def P554879438816200417.Spec : Prop :=
  ∀ n, P554879438816200417.a n = A159739 (n + 2)

theorem P554879438816200417.correct : P554879438816200417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159739, Nat.add_sub_cancel, A159739.P554879438816200417.f1, A159739.P554879438816200417.a, A159739.P17814658657997540826.a, A001019, A001019.P4632907595368420400.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159739, Nat.add_sub_cancel, A159739.P554879438816200417.f1, A159739.P554879438816200417.a, A159739.P17814658657997540826.a, A001019, A001019.P4632907595368420400.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159739

/-! ## A159739.P653987942495357981

`A081038(2*(n+1))-A081038(2*n+1)`
-/

namespace A159739.P653987942495357981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (2 * (n + 1)) - A081038 (2 * n + 1)

end

end A159739.P653987942495357981

namespace A159739

/-- `A081038(2*(n+1))-A081038(2*n+1)` -/
def P653987942495357981.Spec : Prop :=
  ∀ n, P653987942495357981.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P3008036380944092353

`A119916(2*n+3)-A119916(2*n+1)`
-/

namespace A159739.P3008036380944092353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 (2 * n + 3) - A119916 (2 * n + 1)

end

end A159739.P3008036380944092353

namespace A159739

/-- `A119916(2*n+3)-A119916(2*n+1)` -/
def P3008036380944092353.Spec : Prop :=
  ∀ n, P3008036380944092353.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P17682618576860956189

`A027471(2*(n+1))+A006234(2*n+5)`
-/

namespace A159739.P17682618576860956189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (2 * (n + 1)) + A006234 (2 * n + 5)

end

end A159739.P17682618576860956189

namespace A159739

/-- `A027471(2*(n+1))+A006234(2*n+5)` -/
def P17682618576860956189.Spec : Prop :=
  ∀ n, P17682618576860956189.a n = A159739 (n + 2)

end A159739

/-! ## A159739.P5450073290954031763

`A053540(n+2)-(A053540(n+1)+A001019(n))`
-/

namespace A159739.P5450073290954031763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 2) - (A053540 (n + 1) + A001019 n)

end

end A159739.P5450073290954031763

namespace A159739

/-- `A053540(n+2)-(A053540(n+1)+A001019(n))` -/
def P5450073290954031763.Spec : Prop :=
  ∀ n, P5450073290954031763.a n = A159739 (n + 2)

theorem P5450073290954031763.correct : P5450073290954031763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159739, Nat.add_sub_cancel, A159739.P5450073290954031763.a, A159739.P17814658657997540826.a, A001019, A001019.P4632907595368420400.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159739, Nat.add_sub_cancel, A159739.P5450073290954031763.a, A159739.P17814658657997540826.a, A001019, A001019.P4632907595368420400.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A159739

/-! ## A159739.P16071626309169968381

`A212703(n+2)/9`
-/

namespace A159739.P16071626309169968381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212703 (n + 2) : ℚ) / 9

end

end A159739.P16071626309169968381

namespace A159739

/-- `A212703(n+2)/9` -/
def P16071626309169968381.Spec : Prop :=
  ∀ n, P16071626309169968381.a n = (A159739 (n + 2) : ℚ)

end A159739

/-! ## A159739.P12840476376119125620

`A081038(n+1)²-A229277(n+1)²`
-/

namespace A159739.P12840476376119125620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (n + 1) ^ 2 - A229277 (n + 1) ^ 2

end

end A159739.P12840476376119125620

namespace A159739

/-- `A081038(n+1)²-A229277(n+1)²` -/
def P12840476376119125620.Spec : Prop :=
  ∀ n, P12840476376119125620.a n = A159739 (n + 2)

end A159739

/-!
# A159740: Number of permutations of 9 indistinguishable copies of 1..n arranged in a circle with exactly 1 local maximum.

The programs for A159740, the canonical program `A159740.P15823862714621735625` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159740 has offset 2).

The definition of A159740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159740.P15823862714621735625

`9*(n+2)*10^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159740

/-- `9*(n+2)*10^n` -/
def P15823862714621735625.Spec : Prop :=
  ∀ n, (P15823862714621735625.a n : ℤ) = A159740 (n + 2)

theorem P15823862714621735625.correct : P15823862714621735625.Spec := by
  intro n
  simp only [A159740, Nat.add_sub_cancel]

end A159740

/-! ## A159740.P597252624486621593

`Δ[A294327(n)]`
-/

namespace A159740.P597252624486621593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P597252624486621593

namespace A159740

/-- `Δ[A294327(n)]` -/
def P597252624486621593.Spec : Prop :=
  ∀ n, P597252624486621593.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P9204053761523810850

`Δ[9*A294328(n)]`
-/

namespace A159740.P9204053761523810850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A294328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P9204053761523810850

namespace A159740

/-- `Δ[9*A294328(n)]` -/
def P9204053761523810850.Spec : Prop :=
  ∀ n, P9204053761523810850.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P1381043769822649476

`Δ[A033713(n+1)+10^n]`
-/

namespace A159740.P1381043769822649476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033713 (n + 1) + (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P1381043769822649476

namespace A159740

/-- `Δ[A033713(n+1)+10^n]` -/
def P1381043769822649476.Spec : Prop :=
  ∀ n, P1381043769822649476.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P17655933269272504995

`Δ[A033714(n+1)+10^n]`
-/

namespace A159740.P17655933269272504995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033714 (n + 1) + (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P17655933269272504995

namespace A159740

/-- `Δ[A033714(n+1)+10^n]` -/
def P17655933269272504995.Spec : Prop :=
  ∀ n, P17655933269272504995.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P12923391217750335839

`Δ[A053541(n+1)]-10^n`
-/

namespace A159740.P12923391217750335839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (10 ^ n : ℤ)

end

end A159740.P12923391217750335839

namespace A159740

/-- `Δ[A053541(n+1)]-10^n` -/
def P12923391217750335839.Spec : Prop :=
  ∀ n, P12923391217750335839.a n = A159740 (n + 2)

theorem P12923391217750335839.correct : P12923391217750335839.Spec := by
  intro n
  simp only [A159740, Nat.add_sub_cancel, A159740.P12923391217750335839.f1, A159740.P12923391217750335839.a, A159740.P15823862714621735625.a, A053541, A053541.P11218500027747377237.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159740

/-! ## A159740.P11401050713064325544

`Δ[9*A081541(A000124(n))]`
-/

namespace A159740.P11401050713064325544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A081541 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P11401050713064325544

namespace A159740

/-- `Δ[9*A081541(A000124(n))]` -/
def P11401050713064325544.Spec : Prop :=
  ∀ n, P11401050713064325544.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P17611710928391783221

`Δ[A294329(n)+A294328(n)]`
-/

namespace A159740.P17611710928391783221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294329 n + A294328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159740.P17611710928391783221

namespace A159740

/-- `Δ[A294329(n)+A294328(n)]` -/
def P17611710928391783221.Spec : Prop :=
  ∀ n, P17611710928391783221.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P9271592099691404331

`A081045(n+1)-A011557(n)`
-/

namespace A159740.P9271592099691404331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 (n + 1) - A011557 n

end

end A159740.P9271592099691404331

namespace A159740

/-- `A081045(n+1)-A011557(n)` -/
def P9271592099691404331.Spec : Prop :=
  ∀ n, P9271592099691404331.a n = A159740 (n + 2)

end A159740

/-! ## A159740.P17572921913725525266

`A294327(n+1)-A294327(n)`
-/

namespace A159740.P17572921913725525266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294327 (n + 1) - A294327 n

end

end A159740.P17572921913725525266

namespace A159740

/-- `A294327(n+1)-A294327(n)` -/
def P17572921913725525266.Spec : Prop :=
  ∀ n, P17572921913725525266.a n = A159740 (n + 2)

end A159740

/-!
# A159741: a(n) = 8*(2^n - 1).

The programs for A159741, the canonical program `A159741.P12178551765370653186` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159741 has offset 1).

The definition of A159741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(2^(n+1)-1)` (program `A159741.P12178551765370653186`, by `A159741.P12178551765370653186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159741.P12178551765370653186

`8*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159741

/-- `8*(2^(n+1)-1)` -/
def P12178551765370653186.Spec : Prop :=
  ∀ n, P12178551765370653186.a n = A159741 (n + 1)

theorem P12178551765370653186.correct : P12178551765370653186.Spec := by
  intro n
  simp only [A159741, Nat.add_sub_cancel]

end A159741

/-! ## A159741.P8334006734094450841

`a(n-1)+2^(n+3)` with `a(0)=8`
-/

namespace A159741.P8334006734094450841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 2 ^ (n + 3)

end

end A159741.P8334006734094450841

namespace A159741

/-- `a(n-1)+2^(n+3)` -/
def P8334006734094450841.Spec : Prop :=
  ∀ n, (P8334006734094450841.a n : ℤ) = A159741 (n + 1)

theorem P8334006734094450841.correct : P8334006734094450841.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159741, Nat.add_sub_cancel, A159741.P8334006734094450841.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159741, Nat.add_sub_cancel, A159741.P8334006734094450841.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159741

/-! ## A159741.P13595842896653224264

`3*a(n-1)-2*a(n-2)` with `a(0)=8, a(1)=24`
-/

namespace A159741.P13595842896653224264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 24] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A159741.P13595842896653224264

namespace A159741

/-- `3*a(n-1)-2*a(n-2)` -/
def P13595842896653224264.Spec : Prop :=
  ∀ n, P13595842896653224264.a n = A159741 (n + 1)

theorem P13595842896653224264.correct : P13595842896653224264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159741, Nat.add_sub_cancel, A159741.P13595842896653224264.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159741, Nat.add_sub_cancel, A159741.P13595842896653224264.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159741

/-! ## A159741.P5155451955202024711

`A175166(2*(n+1))/A175161(n+1)`
-/

namespace A159741.P5155451955202024711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175166 (2 * (n + 1)) : ℚ) / (A175161 (n + 1) : ℚ)

end

end A159741.P5155451955202024711

namespace A159741

/-- `A175166(2*(n+1))/A175161(n+1)` -/
def P5155451955202024711.Spec : Prop :=
  ∀ n, P5155451955202024711.a n = (A159741 (n + 1) : ℚ)

theorem P5155451955202024711.correct : P5155451955202024711.Spec := by
  intro n
  simp only [A159741, Nat.add_sub_cancel, A159741.P5155451955202024711.a, A159741.P12178551765370653186.a, A175161, A175161.P2150735603067975038.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A159741

/-! ## A159741.P13313153990119685424

`lcm(8, ∑[2^n])`
-/

namespace A159741.P13313153990119685424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159741.P13313153990119685424

namespace A159741

/-- `lcm(8, ∑[2^n])` -/
def P13313153990119685424.Spec : Prop :=
  ∀ n, (P13313153990119685424.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P9134987499645992090

`ogf(8/(1-3x+2x^2))`
-/

namespace A159741.P9134987499645992090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -3, 2] n

end

end A159741.P9134987499645992090

namespace A159741

/-- `ogf(8/(1-3x+2x^2))` -/
def P9134987499645992090.Spec : Prop :=
  ∀ n, P9134987499645992090.a n = A159741 (n + 1)

end A159741

/-! ## A159741.P7981164024665788600

`2*a(n-1)+8` with `a(0)=8`
-/

namespace A159741.P7981164024665788600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  2 * a (n - 1) + 8

end

end A159741.P7981164024665788600

namespace A159741

/-- `2*a(n-1)+8` -/
def P7981164024665788600.Spec : Prop :=
  ∀ n, (P7981164024665788600.a n : ℤ) = A159741 (n + 1)

theorem P7981164024665788600.correct : P7981164024665788600.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159741, Nat.add_sub_cancel, A159741.P7981164024665788600.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159741, Nat.add_sub_cancel, A159741.P7981164024665788600.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159741

/-! ## A159741.P4206681162731698780

`or(8, 16*(2^n-1))`
-/

namespace A159741.P4206681162731698780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (16 * ((2 ^ n : ℤ) - 1))

end

end A159741.P4206681162731698780

namespace A159741

/-- `or(8, 16*(2^n-1))` -/
def P4206681162731698780.Spec : Prop :=
  ∀ n, P4206681162731698780.a n = A159741 (n + 1)

end A159741

/-! ## A159741.P6680814046665487811

`xor(8, 16*(2^n-1))`
-/

namespace A159741.P6680814046665487811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (16 * ((2 ^ n : ℤ) - 1))

end

end A159741.P6680814046665487811

namespace A159741

/-- `xor(8, 16*(2^n-1))` -/
def P6680814046665487811.Spec : Prop :=
  ∀ n, P6680814046665487811.a n = A159741 (n + 1)

end A159741

/-! ## A159741.P3158659704516543964

`abs(∑[2*a(n-1)])` with `a(0)=8`
-/

namespace A159741.P3158659704516543964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159741.P3158659704516543964

namespace A159741

/-- `abs(∑[2*a(n-1)])` -/
def P3158659704516543964.Spec : Prop :=
  ∀ n, (P3158659704516543964.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P14472419332974110319

`floor(∑[2*a(n-1)])` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A159741.P14472419332974110319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159741.P14472419332974110319

namespace A159741

/-- `floor(∑[2*a(n-1)])` -/
def P14472419332974110319.Spec : Prop :=
  ∀ n, (P14472419332974110319.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P3321930892934037721

`ceil(∑[2*a(n-1)])` with `a(0)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A159741.P3321930892934037721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159741.P3321930892934037721

namespace A159741

/-- `ceil(∑[2*a(n-1)])` -/
def P3321930892934037721.Spec : Prop :=
  ∀ n, (P3321930892934037721.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P4268089971350148374

`round(∑[2*a(n-1)])` with `a(0)=8`

`round` is left out, it is the identity on integers.
-/

namespace A159741.P4268089971350148374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159741.P4268089971350148374

namespace A159741

/-- `round(∑[2*a(n-1)])` -/
def P4268089971350148374.Spec : Prop :=
  ∀ n, (P4268089971350148374.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P8718007119429212483

`∑[4*a(n-1)/2]` with `a(0)=8`
-/

namespace A159741.P8718007119429212483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f1 =>
  4 * f1 (n - 1) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159741.P8718007119429212483

namespace A159741

/-- `∑[4*a(n-1)/2]` -/
def P8718007119429212483.Spec : Prop :=
  ∀ n, P8718007119429212483.a n = (A159741 (n + 1) : ℚ)

end A159741

/-! ## A159741.P5552486667684848809

`10-2*(1-a(n-1))` with `a(0)=8`
-/

namespace A159741.P5552486667684848809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  10 - 2 * (1 - a (n - 1))

end

end A159741.P5552486667684848809

namespace A159741

/-- `10-2*(1-a(n-1))` -/
def P5552486667684848809.Spec : Prop :=
  ∀ n, P5552486667684848809.a n = A159741 (n + 1)

theorem P5552486667684848809.correct : P5552486667684848809.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159741, Nat.add_sub_cancel, A159741.P5552486667684848809.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159741, Nat.add_sub_cancel, A159741.P5552486667684848809.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159741

/-! ## A159741.P12505200071771145501

`∑[or(1, 2^(n+3))]-(n+1)`
-/

namespace A159741.P12505200071771145501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A159741.P12505200071771145501

namespace A159741

/-- `∑[or(1, 2^(n+3))]-(n+1)` -/
def P12505200071771145501.Spec : Prop :=
  ∀ n, P12505200071771145501.a n = A159741 (n + 1)

end A159741

/-! ## A159741.P6553566285730522434

`∑[xor(1, 2^(n+3))]-(n+1)`
-/

namespace A159741.P6553566285730522434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A159741.P6553566285730522434

namespace A159741

/-- `∑[xor(1, 2^(n+3))]-(n+1)` -/
def P6553566285730522434.Spec : Prop :=
  ∀ n, P6553566285730522434.a n = A159741 (n + 1)

end A159741

/-! ## A159741.P14631264120639617909

`floor(a(n-1)+a(n-1)+8)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A159741.P14631264120639617909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (a (n - 1) + 8)

end

end A159741.P14631264120639617909

namespace A159741

/-- `floor(a(n-1)+a(n-1)+8)` -/
def P14631264120639617909.Spec : Prop :=
  ∀ n, (P14631264120639617909.a n : ℤ) = A159741 (n + 1)

theorem P14631264120639617909.correct : P14631264120639617909.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159741, Nat.add_sub_cancel, A159741.P14631264120639617909.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159741, Nat.add_sub_cancel, A159741.P14631264120639617909.a, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159741

/-! ## A159741.P6044280887955590637

`∑[a(n-1)+a(n-1)+1]+n+1` with `a(0)=7`
-/

namespace A159741.P6044280887955590637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A159741.P6044280887955590637

namespace A159741

/-- `∑[a(n-1)+a(n-1)+1]+n+1` -/
def P6044280887955590637.Spec : Prop :=
  ∀ n, (P6044280887955590637.a n : ℤ) = A159741 (n + 1)

end A159741

/-! ## A159741.P7728798881737387890

`A175164(n)+8`
-/

namespace A159741.P7728798881737387890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175164 n + 8

end

end A159741.P7728798881737387890

namespace A159741

/-- `A175164(n)+8` -/
def P7728798881737387890.Spec : Prop :=
  ∀ n, P7728798881737387890.a n = A159741 (n + 1)

theorem P7728798881737387890.correct : P7728798881737387890.Spec := by
  intro n
  simp only [A159741, Nat.add_sub_cancel, A159741.P7728798881737387890.a, A159741.P12178551765370653186.a, A175164, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A159741

/-!
# A159742: If an array is made of columns of -nacci sequences (Fibonacci, tribonacci, etc.), all starting with 1,1,2,..., the NW-to-SE diagonals can be extended by computation. This sequence is diagonal 6. See A159741 for details.

The programs for A159742, the canonical program `A159742.P7422334752639687292` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159742 has offset 1).

The definition of A159742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159742.P7422334752639687292

`3*a(n-1)-2*a(n-2)` with `a(0)=13, a(1)=44, a(2)=108`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159742

/-- `3*a(n-1)-2*a(n-2)` -/
def P7422334752639687292.Spec : Prop :=
  ∀ n, P7422334752639687292.a n = A159742 (n + 1)

theorem P7422334752639687292.correct : P7422334752639687292.Spec := by
  intro n
  simp only [A159742, Nat.add_sub_cancel]

end A159742

/-! ## A159742.P279858383246534495

`ogf((13+5x+2x^2)/(1-3x+2x^2))`
-/

namespace A159742.P279858383246534495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 5, 2] [1, -3, 2] n

end

end A159742.P279858383246534495

namespace A159742

/-- `ogf((13+5x+2x^2)/(1-3x+2x^2))` -/
def P279858383246534495.Spec : Prop :=
  ∀ n, P279858383246534495.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P10298863665554073912

`2*or(3, a(n-1))+14` with `a(0)=13`
-/

namespace A159742.P10298863665554073912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  2 * Nat.lor 3 (a (n - 1)) + 14

end

end A159742.P10298863665554073912

namespace A159742

/-- `2*or(3, a(n-1))+14` -/
def P10298863665554073912.Spec : Prop :=
  ∀ n, (P10298863665554073912.a n : ℤ) = A159742 (n + 1)

end A159742

/-! ## A159742.P11435190702644042232

`a(n-1)+a(n-1)+20` with `a(0)=13, a(1)=44`
-/

namespace A159742.P11435190702644042232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13, 44] fun n a =>
  a (n - 1) + (a (n - 1) + 20)

end

end A159742.P11435190702644042232

namespace A159742

/-- `a(n-1)+a(n-1)+20` -/
def P11435190702644042232.Spec : Prop :=
  ∀ n, (P11435190702644042232.a n : ℤ) = A159742 (n + 1)

end A159742

/-! ## A159742.P5334048848404686966

`a(n-1)-xor(21, 1-a(n-1))` with `a(0)=13`
-/

namespace A159742.P5334048848404686966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) - Int.xor 21 (1 - a (n - 1))

end

end A159742.P5334048848404686966

namespace A159742

/-- `a(n-1)-xor(21, 1-a(n-1))` -/
def P5334048848404686966.Spec : Prop :=
  ∀ n, P5334048848404686966.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P7827830443272442705

`A166118(n+1)-A157532(n+1)`
-/

namespace A159742.P7827830443272442705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166118 (n + 1) - A157532 (n + 1)

end

end A159742.P7827830443272442705

namespace A159742

/-- `A166118(n+1)-A157532(n+1)` -/
def P7827830443272442705.Spec : Prop :=
  ∀ n, P7827830443272442705.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P9511228869880967697

`A173034(n+1)+2*A173033(n+1)`
-/

namespace A159742.P9511228869880967697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173034 (n + 1) + 2 * A173033 (n + 1)

end

end A159742.P9511228869880967697

namespace A159742

/-- `A173034(n+1)+2*A173033(n+1)` -/
def P9511228869880967697.Spec : Prop :=
  ∀ n, P9511228869880967697.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P10143283280351646088

`A265207(2*n+1)+A007283(n+2)`
-/

namespace A159742.P10143283280351646088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265207 (2 * n + 1) + A007283 (n + 2)

end

end A159742.P10143283280351646088

namespace A159742

/-- `A265207(2*n+1)+A007283(n+2)` -/
def P10143283280351646088.Spec : Prop :=
  ∀ n, P10143283280351646088.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P3166588477740006846

`A175164(n+1)-A266447(A266447(n+3))`
-/

namespace A159742.P3166588477740006846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175164 (n + 1) - A266447 (A266447 (n + 3)).toNat

end

end A159742.P3166588477740006846

namespace A159742

/-- `A175164(n+1)-A266447(A266447(n+3))` -/
def P3166588477740006846.Spec : Prop :=
  ∀ n, P3166588477740006846.a n = A159742 (n + 1)

end A159742

/-! ## A159742.P15893335019843270126

`A323513((n+1)²)+A175164(n+1)-4`
-/

namespace A159742.P15893335019843270126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 ((n + 1) ^ 2) + (A175164 (n + 1) - 4)

end

end A159742.P15893335019843270126

namespace A159742

/-- `A323513((n+1)²)+A175164(n+1)-4` -/
def P15893335019843270126.Spec : Prop :=
  ∀ n, P15893335019843270126.a n = A159742 (n + 1)

end A159742

/-!
# A159743: If an array is made of columns of -nacci sequences, fibo-, tribo- etc. all starting w. 1,1,2 etc, the NW to SE diagonals can be extended by computation. The above is diagonal 7. See A159741 for details.

The programs for A159743, there is no canonical definition to state claims against.
-/

/-! ## A159743.P8157798653398361592

`A126198(A052905(n+4))`
-/

namespace A159743.P8157798653398361592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A052905 (n + 4)).toNat

end

end A159743.P8157798653398361592

/-! ## A159743.P2423227091199513789

`A048887(A153037(n)+12)`
-/

namespace A159743.P2423227091199513789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A153037 n + 12).toNat

end

end A159743.P2423227091199513789

/-! ## A159743.P11300922413982433151

`A126198(eq[4, A092921(n)])`
-/

namespace A159743.P11300922413982433151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159743.P11300922413982433151

/-! ## A159743.P10590928403087611466

`A126198(A000124(n+6)+n+1)`
-/

namespace A159743.P10590928403087611466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000124 (n + 6) + (n + 1 : ℤ)).toNat

end

end A159743.P10590928403087611466

/-!
# A159744: If an array is made of columns of -nacci sequences, fibo-, tribo- etc. all starting w. 1,1,2 etc, the NW to SE diagonals can be extended by computation. The above is diagonal 8. See A159741 for details.

The programs for A159744, there is no canonical definition to state claims against.
-/

/-! ## A159744.P17700489272674205941

`A048887(4*A000124(n+4))`
-/

namespace A159744.P17700489272674205941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (4 * A000124 (n + 4)).toNat

end

end A159744.P17700489272674205941

/-! ## A159744.P15476410223490280168

`A092921(4*A000096(n+4))`
-/

namespace A159744.P15476410223490280168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (4 * A000096 (n + 4)).toNat

end

end A159744.P15476410223490280168

/-! ## A159744.P10865204160465529329

`A126198(∑[A248794(n+2)+6]+22)`
-/

namespace A159744.P10865204160465529329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248794 (n + 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A159744.P10865204160465529329

/-!
# A159746: If an array is made of columns of -nacci sequences, fibo-, tribo- etc. all starting w. 1,1,2 etc, the NW to SE diagonals can be extended by computation. The above is diagonal 9. See A159741 for details.

The programs for A159746, there is no canonical definition to state claims against.
-/

/-! ## A159746.P2429650204336646722

`A126198(A000096(n+8)-6)`
-/

namespace A159746.P2429650204336646722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000096 (n + 8) - 6).toNat

end

end A159746.P2429650204336646722

/-! ## A159746.P14991816761170556796

`A126198(A000217(n+8)+n+2)`
-/

namespace A159746.P14991816761170556796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000217 (n + 8) + (n + 2 : ℤ)).toNat

end

end A159746.P14991816761170556796

/-! ## A159746.P5850741697012965546

`A126198(A052905(n+5)+n+7)`
-/

namespace A159746.P5850741697012965546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A052905 (n + 5) + (n + 7 : ℤ)).toNat

end

end A159746.P5850741697012965546

/-! ## A159746.P11569057301594612119

`A048887(A001105(n+5)+4)`
-/

namespace A159746.P11569057301594612119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A001105 (n + 5) + 4).toNat

end

end A159746.P11569057301594612119

/-! ## A159746.P164888509174877174

`A092921(A001105(n+6)-5)`
-/

namespace A159746.P164888509174877174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A001105 (n + 6) - 5).toNat

end

end A159746.P164888509174877174

/-!
# A159747: If an array is made of columns of -nacci sequences, fibo-, tribo- etc. all starting w. 1,1,2 etc, the NW to SE diagonals can be extended by computation. The above is diagonal 10. See A159741 for details.

The programs for A159747, there is no canonical definition to state claims against.
-/

/-! ## A159747.P9890746553907356578

`A048887((n+4)²+(n+7)²)`
-/

namespace A159747.P9890746553907356578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((n + 4) ^ 2 + (n + 7) ^ 2)

end

end A159747.P9890746553907356578

/-! ## A159747.P18251886143678241242

`A126198(A155212(n+6))`
-/

namespace A159747.P18251886143678241242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A155212 (n + 6)).toNat

end

end A159747.P18251886143678241242

/-! ## A159747.P16487333330158460931

`A126198(A000217(n+10)-8)`
-/

namespace A159747.P16487333330158460931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000217 (n + 10) - 8).toNat

end

end A159747.P16487333330158460931

/-! ## A159747.P6277824671270914026

`A126198(A000217(n+9)+n+2)`
-/

namespace A159747.P6277824671270914026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000217 (n + 9) + (n : ℤ) + 2).toNat

end

end A159747.P6277824671270914026

/-! ## A159747.P9500254718788117424

`A126198(A103517(n+5)+A000096(n+7))`
-/

namespace A159747.P9500254718788117424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A103517 (n + 5) + A000096 (n + 7)).toNat

end

end A159747.P9500254718788117424

/-!
# A159748: If an array is made of columns of -nacci sequences, fibo-, tribo- etc. all starting w. 1,1,2 etc, the NW to SE diagonals can be extended by computation. The above is diagonal 11. See A159741 for details.

The programs for A159748, there is no canonical definition to state claims against.
-/

/-! ## A159748.P6323289826123776495

`A126198(A056000(n+7)+1)`
-/

namespace A159748.P6323289826123776495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A056000 (n + 7) + 1).toNat

end

end A159748.P6323289826123776495

/-! ## A159748.P2850142851334685148

`A126198(A000217(n+10)+n+2)`
-/

namespace A159748.P2850142851334685148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A000217 (n + 10) + (n + 2 : ℤ)).toNat

end

end A159748.P2850142851334685148

/-! ## A159748.P15848145840373251967

`A126198(A017413(n+5)+A000217(n))`
-/

namespace A159748.P15848145840373251967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (A017413 (n + 5) + A000217 n).toNat

end

end A159748.P15848145840373251967

/-! ## A159748.P8773623000391344286

`A048887(A001105(n+6)+5)`
-/

namespace A159748.P8773623000391344286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A001105 (n + 6) + 5).toNat

end

end A159748.P8773623000391344286

/-! ## A159748.P3746914226874776348

`A092921(A001105(n+7)-6)`
-/

namespace A159748.P3746914226874776348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A001105 (n + 7) - 6).toNat

end

end A159748.P3746914226874776348

/-!
# A159749: The decomposition of a certain labeled universe (A052584), triangle read by rows.

The programs for A159749, there is no canonical definition to state claims against.
-/

/-! ## A159749.P1629248974683063470

`2*A059268(n)*A080779(n)`
-/

namespace A159749.P1629248974683063470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A080779 n)

end

end A159749.P1629248974683063470

/-! ## A159749.P6075858881340692321

`2^A002260(n+1)*A080779(n)`
-/

namespace A159749.P6075858881340692321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A080779 n : ℚ)

end

end A159749.P6075858881340692321

/-! ## A159749.P9628701121909200954

`A004277(A059268(n))*A080779(n)`
-/

namespace A159749.P9628701121909200954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A059268 n).toNat * A080779 n

end

end A159749.P9628701121909200954

/-! ## A159749.P6881029075523942770

`A000079(A002260(n+1))*A080779(n)`
-/

namespace A159749.P6881029075523942770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A080779 n

end

end A159749.P6881029075523942770

/-! ## A159749.P12525504926849895385

`A001316(∑[A057728(n+1)])*A080779(n)`
-/

namespace A159749.P12525504926849895385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A080779 n

end

end A159749.P12525504926849895385

/-!
# A159750: Positive numbers y such that y^2 is of the form x^2+(x+47)^2 with integer x.

The programs for A159750, the canonical program `A159750.P9727173333098446830` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159750 has offset 1).

The definition of A159750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159750.P9727173333098446830

`6*a(n-3)-a(n-6)` with `a(0)=37, a(1)=47, a(2)=65, a(3)=157, a(4)=235, a(5)=353`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159750

/-- `6*a(n-3)-a(n-6)` -/
def P9727173333098446830.Spec : Prop :=
  ∀ n, P9727173333098446830.a n = A159750 (n + 1)

theorem P9727173333098446830.correct : P9727173333098446830.Spec := by
  intro n
  simp only [A159750, Nat.add_sub_cancel]

end A159750

/-! ## A159750.P16805653568372626431

`A159893(n+1)%(A159809(n+1)-A159844(n+1))`
-/

namespace A159750.P16805653568372626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159893 (n + 1)) (A159809 (n + 1) - A159844 (n + 1))

end

end A159750.P16805653568372626431

namespace A159750

/-- `A159893(n+1)%(A159809(n+1)-A159844(n+1))` -/
def P16805653568372626431.Spec : Prop :=
  ∀ n, P16805653568372626431.a n = A159750 (n + 1)

end A159750

/-!
# A159754: Numbers n with property that n^2 ends with 81.

The programs for A159754, the canonical program `A159754.P11025149330586213191` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159754 has offset 1).

The definition of A159754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159754.P11025149330586213191

`a(n-2)+50` with `a(0)=9, a(1)=41`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159754

/-- `a(n-2)+50` -/
def P11025149330586213191.Spec : Prop :=
  ∀ n, (P11025149330586213191.a n : ℤ) = A159754 (n + 1)

theorem P11025149330586213191.correct : P11025149330586213191.Spec := by
  intro n
  simp only [A159754, Nat.add_sub_cancel]

end A159754

/-! ## A159754.P13309136889732387219

`1/2*(50*(n+1)-25+7*(-1)^(n+1))`
-/

namespace A159754.P13309136889732387219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((50 * (n + 1) : ℤ) - 25 + 7 * (-1) ^ (n + 1) : ℚ)

end

end A159754.P13309136889732387219

namespace A159754

/-- `1/2*(50*(n+1)-25+7*(-1)^(n+1))` -/
def P13309136889732387219.Spec : Prop :=
  ∀ n, P13309136889732387219.a n = (A159754 (n + 1) : ℚ)

theorem P13309136889732387219.correct : P13309136889732387219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159754, Nat.add_sub_cancel, A159754.P13309136889732387219.a, A159754.P11025149330586213191.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A159754, Nat.add_sub_cancel, A159754.P13309136889732387219.a, A159754.P11025149330586213191.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159754

/-! ## A159754.P1527438329512211560

`∑[floor(a(n-2))]` with `a(0)=9, a(1)=32, a(2)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A159754.P1527438329512211560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 32, 18] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159754.P1527438329512211560

namespace A159754

/-- `∑[floor(a(n-2))]` -/
def P1527438329512211560.Spec : Prop :=
  ∀ n, (P1527438329512211560.a n : ℤ) = A159754 (n + 1)

end A159754

/-! ## A159754.P13733760666911161378

`∑[50-a(n-1)]` with `a(0)=9, a(1)=32`
-/

namespace A159754.P13733760666911161378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 32] fun n f1 =>
  50 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159754.P13733760666911161378

namespace A159754

/-- `∑[50-a(n-1)]` -/
def P13733760666911161378.Spec : Prop :=
  ∀ n, P13733760666911161378.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P566991721824685244

`50*n-a(n-1)` with `a(0)=9`
-/

namespace A159754.P566991721824685244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (50 * n : ℤ) - a (n - 1)

end

end A159754.P566991721824685244

namespace A159754

/-- `50*n-a(n-1)` -/
def P566991721824685244.Spec : Prop :=
  ∀ n, P566991721824685244.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P15605677520430424627

`A164131(n+1)+∑[4^(2*and(1, n))]+n`
-/

namespace A159754.P15605677520430424627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (2 * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A159754.P15605677520430424627

namespace A159754

/-- `A164131(n+1)+∑[4^(2*and(1, n))]+n` -/
def P15605677520430424627.Spec : Prop :=
  ∀ n, P15605677520430424627.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P5126553289347886278

`A166517(n)+A164135(n+1)`
-/

namespace A159754.P5126553289347886278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n + A164135 (n + 1)

end

end A159754.P5126553289347886278

namespace A159754

/-- `A166517(n)+A164135(n+1)` -/
def P5126553289347886278.Spec : Prop :=
  ∀ n, P5126553289347886278.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P5585746682521551810

`A008607(n)+(A000034(n)+2)²`
-/

namespace A159754.P5585746682521551810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n + (A000034 n + 2) ^ 2

end

end A159754.P5585746682521551810

namespace A159754

/-- `A008607(n)+(A000034(n)+2)²` -/
def P5585746682521551810.Spec : Prop :=
  ∀ n, P5585746682521551810.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P6928293648555338521

`A164131(n+1)+A113541(n+1)`
-/

namespace A159754.P6928293648555338521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + A113541 (n + 1)

end

end A159754.P6928293648555338521

namespace A159754

/-- `A164131(n+1)+A113541(n+1)` -/
def P6928293648555338521.Spec : Prop :=
  ∀ n, P6928293648555338521.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P18241337452661066572

`A168419(n+1)+A155098(n+1)`
-/

namespace A159754.P18241337452661066572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + A155098 (n + 1)

end

end A159754.P18241337452661066572

namespace A159754

/-- `A168419(n+1)+A155098(n+1)` -/
def P18241337452661066572.Spec : Prop :=
  ∀ n, P18241337452661066572.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P17202563368609676877

`A166639(n)+2*A113541(n+1)`
-/

namespace A159754.P17202563368609676877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 n + 2 * A113541 (n + 1)

end

end A159754.P17202563368609676877

namespace A159754

/-- `A166639(n)+2*A113541(n+1)` -/
def P17202563368609676877.Spec : Prop :=
  ∀ n, P17202563368609676877.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P17716752675375666311

`A109613(n)+2*A259755(n+1)`
-/

namespace A159754.P17716752675375666311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + 2 * A259755 (n + 1)

end

end A159754.P17716752675375666311

namespace A159754

/-- `A109613(n)+2*A259755(n+1)` -/
def P17716752675375666311.Spec : Prop :=
  ∀ n, P17716752675375666311.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P5485618630029482576

`A010689(n)+8*A016777(n)+n`
-/

namespace A159754.P5485618630029482576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + (8 * A016777 n + (n : ℤ))

end

end A159754.P5485618630029482576

namespace A159754

/-- `A010689(n)+8*A016777(n)+n` -/
def P5485618630029482576.Spec : Prop :=
  ∀ n, P5485618630029482576.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P10526253713049650882

`A063226(n+1)+2*A322490(n+1)`
-/

namespace A159754.P10526253713049650882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) + 2 * A322490 (n + 1)

end

end A159754.P10526253713049650882

namespace A159754

/-- `A063226(n+1)+2*A322490(n+1)` -/
def P10526253713049650882.Spec : Prop :=
  ∀ n, P10526253713049650882.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P9125343306432247293

`A317316(n+1)+A317316(n)+A051062(n)`
-/

namespace A159754.P9125343306432247293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 (n + 1) + (A317316 n + A051062 n)

end

end A159754.P9125343306432247293

namespace A159754

/-- `A317316(n+1)+A317316(n)+A051062(n)` -/
def P9125343306432247293.Spec : Prop :=
  ∀ n, P9125343306432247293.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P6821857350217617103

`A106389(n+1)+A153080(n)+A106387(n+2)`
-/

namespace A159754.P6821857350217617103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) + (A153080 n + A106387 (n + 2))

end

end A159754.P6821857350217617103

namespace A159754

/-- `A106389(n+1)+A153080(n)+A106387(n+2)` -/
def P6821857350217617103.Spec : Prop :=
  ∀ n, P6821857350217617103.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P16177636788238755428

`A045801(n+1)+A045800(n+2)-A045804(n+1)`
-/

namespace A159754.P16177636788238755428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + (A045800 (n + 2) - A045804 (n + 1))

end

end A159754.P16177636788238755428

namespace A159754

/-- `A045801(n+1)+A045800(n+2)-A045804(n+1)` -/
def P16177636788238755428.Spec : Prop :=
  ∀ n, P16177636788238755428.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P15089871841689514171

`A045801(n+1)+A045802(n+2)-A045806(n+1)`
-/

namespace A159754.P15089871841689514171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + (A045802 (n + 2) - A045806 (n + 1))

end

end A159754.P15089871841689514171

namespace A159754

/-- `A045801(n+1)+A045802(n+2)-A045806(n+1)` -/
def P15089871841689514171.Spec : Prop :=
  ∀ n, P15089871841689514171.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P9467671763732857347

`A045801(n+1)+A045803(n+2)-A045802(n+2)`
-/

namespace A159754.P9467671763732857347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + (A045803 (n + 2) - A045802 (n + 2))

end

end A159754.P9467671763732857347

namespace A159754

/-- `A045801(n+1)+A045803(n+2)-A045802(n+2)` -/
def P9467671763732857347.Spec : Prop :=
  ∀ n, P9467671763732857347.a n = A159754 (n + 1)

end A159754

/-! ## A159754.P9594806577035073435

`A127547(2*n+1)-2*A168230(n+2)`
-/

namespace A159754.P9594806577035073435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) - 2 * A168230 (n + 2)

end

end A159754.P9594806577035073435

namespace A159754

/-- `A127547(2*n+1)-2*A168230(n+2)` -/
def P9594806577035073435.Spec : Prop :=
  ∀ n, P9594806577035073435.a n = A159754 (n + 1)

end A159754

/-!
# A159755: Triangle of C. A. Laisant for k<=0 (see A062111 and A152920).

The programs for A159755, there is no canonical definition to state claims against.
-/

/-! ## A159755.P8667215130548371483

`A159756(∑[2*n]%comp[∑[n]])`
-/

namespace A159755.P8667215130548371483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159756 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A159755.P8667215130548371483

/-! ## A159755.P1914630383848570346

`A159756(∑[char[∑[n]]]²-(n+1))`
-/

namespace A159755.P1914630383848570346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159756 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A159755.P1914630383848570346

/-! ## A159755.P4221617995389715832

`A053218(n+1)-A135764(n+1)`
-/

namespace A159755.P4221617995389715832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (n + 1) - A135764 (n + 1)

end

end A159755.P4221617995389715832

/-! ## A159755.P9810055641476311072

`A036289(A002262(n))-A152920(n)`
-/

namespace A159755.P9810055641476311072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (A002262 n).toNat - A152920 n

end

end A159755.P9810055641476311072

/-! ## A159755.P16506290122167693151

`A066959(A059268(n))-A152920(n)`
-/

namespace A159755.P16506290122167693151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A059268 n).toNat - A152920 n

end

end A159755.P16506290122167693151

/-! ## A159755.P15307126754648067517

`A001792(A002262(n))-A130128(n+1)`
-/

namespace A159755.P15307126754648067517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A002262 n).toNat - A130128 (n + 1)

end

end A159755.P15307126754648067517

/-! ## A159755.P3298168206246664943

`A002262(n)*A059268(n)-A152920(n)`
-/

namespace A159755.P3298168206246664943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A059268 n - A152920 n

end

end A159755.P3298168206246664943

/-! ## A159755.P1946498913080122690

`A001787(A002260(n+1))-A053218(n+1)`
-/

namespace A159755.P1946498913080122690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A002260 (n + 1)).toNat - A053218 (n + 1)

end

end A159755.P1946498913080122690

/-! ## A159755.P15271493659391766311

`A053218(n+1)-A054582(A038722(n+1)-1)`
-/

namespace A159755.P15271493659391766311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (n + 1) - A054582 (A038722 (n + 1) - 1).toNat

end

end A159755.P15271493659391766311

/-! ## A159755.P9385328548673959187

`A393901(n+1)-(A152920(n)+A053218(n+1))`
-/

namespace A159755.P9385328548673959187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393901 (n + 1) - (A152920 n + A053218 (n + 1))

end

end A159755.P9385328548673959187

/-!
# A159756: Triangle A159755 reversed .

The programs for A159756, there is no canonical definition to state claims against.
-/

/-! ## A159756.P5532196987310722907

`A159755(∑[2*n]%comp[∑[n]])`
-/

namespace A159756.P5532196987310722907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159755 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A159756.P5532196987310722907

/-! ## A159756.P13490172847645859893

`A159755(∑[char[∑[n]]]²-n-1)`
-/

namespace A159756.P13490172847645859893
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159755 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A159756.P13490172847645859893

/-! ## A159756.P3848166572501216366

`A053219(n+1)-A054582(n)`
-/

namespace A159756.P3848166572501216366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - A054582 n

end

end A159756.P3848166572501216366

/-! ## A159756.P6859141823708472237

`A130322(n)-A053219(n+1)`
-/

namespace A159756.P6859141823708472237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130322 n - A053219 (n + 1)

end

end A159756.P6859141823708472237

/-! ## A159756.P7241952993135170924

`A053219(n+1)+1-A288870(n)`
-/

namespace A159756.P7241952993135170924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) + (1 - A288870 n)

end

end A159756.P7241952993135170924

/-! ## A159756.P11516843953080064011

`A053219(n+1)-A257791(n+1)/4`
-/

namespace A159756.P11516843953080064011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053219 (n + 1) : ℚ) - (A257791 (n + 1) : ℚ) / 4

end

end A159756.P11516843953080064011

/-! ## A159756.P11631232444762474344

`A053219(n+1)-ceil(A241957(n+1)/2)`
-/

namespace A159756.P11631232444762474344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - ⌈(A241957 (n + 1) : ℚ) / 2⌉

end

end A159756.P11631232444762474344

/-! ## A159756.P12059660803005907263

`A036289(A025581(n))-A062111(n)`
-/

namespace A159756.P12059660803005907263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (A025581 n).toNat - A062111 n

end

end A159756.P12059660803005907263

/-! ## A159756.P4430394685419765055

`A066959(A130321(n))-A062111(n)`
-/

namespace A159756.P4430394685419765055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A130321 n).toNat - A062111 n

end

end A159756.P4430394685419765055

/-! ## A159756.P7112083405642567821

`A053218(A038722(n+1))-A054582(n)`
-/

namespace A159756.P7112083405642567821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A038722 (n + 1)).toNat - A054582 n

end

end A159756.P7112083405642567821

/-!
# A159758: Positive numbers y such that y^2 is of the form x^2+(x+79)^2 with integer x.

The programs for A159758, the canonical program `A159758.P11483823204806202307` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159758 has offset 1).

The definition of A159758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159758.P11483823204806202307

`6*a(n-3)-a(n-6)` with `a(0)=65, a(1)=79, a(2)=101, a(3)=289, a(4)=395, a(5)=541`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159758

/-- `6*a(n-3)-a(n-6)` -/
def P11483823204806202307.Spec : Prop :=
  ∀ n, P11483823204806202307.a n = A159758 (n + 1)

theorem P11483823204806202307.correct : P11483823204806202307.Spec := by
  intro n
  simp only [A159758, Nat.add_sub_cancel]

end A159758

/-! ## A159758.P14130167610716455531

`A000045(a(n-1))` with `a(0)=65, a(1)=79, a(2)=101, a(3)=289, a(4)=395, a(5)=541`
-/

namespace A159758.P14130167610716455531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [65, 79, 101, 289, 395, 541] fun n a =>
  A000045 (a (n - 1)).toNat

end

end A159758.P14130167610716455531

namespace A159758

/-- `A000045(a(n-1))` -/
def P14130167610716455531.Spec : Prop :=
  ∀ n, P14130167610716455531.a n = A159758 (n + 1)

end A159758

/-!
# A159764: Riordan array (1/(1+4x+x^2), x/(1+4x+x^2)).

The programs for A159764, there is no canonical definition to state claims against.
-/

/-! ## A159764.P8462322485010411697

`A097807(n)*A207823(n)`
-/

namespace A159764.P8462322485010411697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A207823 n

end

end A159764.P8462322485010411697

/-! ## A159764.P4472035205202275555

`A033999(A051162(n))*A207823(n)`
-/

namespace A159764.P4472035205202275555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A207823 n

end

end A159764.P4472035205202275555

/-! ## A159764.P10697755456893779496

`A033999(A051933(n))*A207823(n)`
-/

namespace A159764.P10697755456893779496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A207823 n

end

end A159764.P10697755456893779496

/-! ## A159764.P12396013695040617955

`A034947(A099375(n))*A207823(n)`
-/

namespace A159764.P12396013695040617955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A207823 n

end

end A159764.P12396013695040617955

/-! ## A159764.P5828247913500490491

`A053122(n)/A078812(n)*A207823(n)`
-/

namespace A159764.P5828247913500490491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A207823 n : ℚ)

end

end A159764.P5828247913500490491

/-! ## A159764.P701570732889076188

`A125662(n)/A207815(n)*A207823(n)`
-/

namespace A159764.P701570732889076188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125662 n : ℚ) / (A207815 n : ℚ) * (A207823 n : ℚ)

end

end A159764.P701570732889076188

/-! ## A159764.P6928175075264151654

`A123967(n)/A207824(n)*A207823(n)`
-/

namespace A159764.P6928175075264151654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A207824 n : ℚ) * (A207823 n : ℚ)

end

end A159764.P6928175075264151654

/-! ## A159764.P12794852498087730341

`A087960(A133280(n))*A207823(n)`
-/

namespace A159764.P12794852498087730341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A133280 n).toNat * A207823 n

end

end A159764.P12794852498087730341

/-! ## A159764.P7617132437989313701

`A158388(A178112(n))*A207823(n)`
-/

namespace A159764.P7617132437989313701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A178112 n).toNat * A207823 n

end

end A159764.P7617132437989313701

/-! ## A159764.P10651270761399429597

`A207823(n)*A309873(A130321(n))`
-/

namespace A159764.P10651270761399429597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207823 n * A309873 (A130321 n).toNat

end

end A159764.P10651270761399429597

/-!
# A159765: Divisors of 1000000.

The programs for A159765, there is no canonical definition to state claims against.
-/

/-! ## A159765.P12832827784656803690

`∩[A003592(n+1), A067939(n+1)]`
-/

namespace A159765.P12832827784656803690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159765.P12832827784656803690

/-! ## A159765.P7341790436733766621

`∩[A067939(n+1), A067940(n+1)]`
-/

namespace A159765.P7341790436733766621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159765.P7341790436733766621

/-! ## A159765.P2790730280911560169

`∩[A067939(n+1), A108513(n+1)]`
-/

namespace A159765.P2790730280911560169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159765.P2790730280911560169

/-! ## A159765.P12232664497886888955

`∩[A067939(n+1), A192716(n+1)]`
-/

namespace A159765.P12232664497886888955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159765.P12232664497886888955

/-! ## A159765.P14811839700559116342

`∩[A003592(n+1), A187390(n+1)]`
-/

namespace A159765.P14811839700559116342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159765.P14811839700559116342

/-!
# A159768: Number of n-leaf binary trees that do not contain (()(()(()((()())())))) as a subtree.

The programs for A159768, there is no canonical definition to state claims against.
-/

/-! ## A159768.P13365572890443265791

`A159771(n+1)+A011734(A159712(n))`
-/

namespace A159768.P13365572890443265791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159771 (n + 1) + A011734 (A159712 n).toNat

end

end A159768.P13365572890443265791

/-! ## A159768.P13774259319650043215

`A159771(n+1)+A011734(A185544(n))`
-/

namespace A159768.P13774259319650043215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159771 (n + 1) + A011734 (A185544 n).toNat

end

end A159768.P13774259319650043215

/-! ## A159768.P1609081217554140274

`A340998(A190162(n))+A159771(n+1)`
-/

namespace A159768.P1609081217554140274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A190162 n).toNat + 140) + A159771 (n + 1)

end

end A159768.P1609081217554140274

/-! ## A159768.P16451653649851673575

`A128739(n)-A075206(A032559(n+1))`
-/

namespace A159768.P16451653649851673575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128739 n - A075206 (A032559 (n + 1)).toNat

end

end A159768.P16451653649851673575

/-! ## A159768.P7910700410926522831

`or(A011734(A044046(n)), A159771(n+1))`
-/

namespace A159768.P7910700410926522831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011734 (A044046 n).toNat) (A159771 (n + 1))

end

end A159768.P7910700410926522831

/-!
# A159769: Number of n-leaf binary trees that do not contain (((()())())(()(()()))) as a subtree.

The programs for A159769, there is no canonical definition to state claims against.
-/

/-! ## A159769.P7528007224715642430

`(A056010(n)+a(n-1))/2` with `a(0)=1`
-/

namespace A159769.P7528007224715642430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A056010 n : ℚ) + a (n - 1)) / 2

end

end A159769.P7528007224715642430

/-! ## A159769.P552477640757744589

`(Δ[A157100(n)]+a(n-1))/2` with `a(0)=1`
-/

namespace A159769.P552477640757744589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) - f1 n : ℚ) + a (n - 1)) / 2

end

end A159769.P552477640757744589

/-! ## A159769.P6602789384321954997

`A185044(A038207(n))+A159773(n+1)`
-/

namespace A159769.P6602789384321954997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A038207 n).toNat + A159773 (n + 1)

end

end A159769.P6602789384321954997

/-! ## A159769.P16174901763456186230

`A159773(n+1)+A025466(A307577(n))`
-/

namespace A159769.P16174901763456186230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159773 (n + 1) + A025466 (A307577 n).toNat

end

end A159769.P16174901763456186230

/-! ## A159769.P8347284034256635089

`A004151(A159773(n+1))`
-/

namespace A159769.P8347284034256635089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A159773 (n + 1)).toNat

end

end A159769.P8347284034256635089

/-!
# A159770: Number of n-leaf binary trees that do not contain (()(()(((()())())()))) as a subtree.

The programs for A159770, there is no canonical definition to state claims against.
-/

/-! ## A159770.P13663475213040127006

`A001281(A159772(n+1)+A159769(n+1))`
-/

namespace A159770.P13663475213040127006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A159772 (n + 1) + A159769 (n + 1)).toNat

end

end A159770.P13663475213040127006

/-! ## A159770.P7495860303562317951

`A001281(A159773(n+1)+A159772(n+1))`
-/

namespace A159770.P7495860303562317951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A159773 (n + 1) + A159772 (n + 1)).toNat

end

end A159770.P7495860303562317951

/-! ## A159770.P14109844018524377677

`A004525(A159772(n+1)+A159769(n+1))`
-/

namespace A159770.P14109844018524377677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A159772 (n + 1) + A159769 (n + 1)).toNat

end

end A159770.P14109844018524377677

/-! ## A159770.P14850570854592642105

`A004526(A159772(n+1)+A159769(n+1))`
-/

namespace A159770.P14850570854592642105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159772 (n + 1) + A159769 (n + 1)).toNat

end

end A159770.P14850570854592642105

/-! ## A159770.P16975718200295552526

`A004525(A159773(n+1)+A159772(n+1))`
-/

namespace A159770.P16975718200295552526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A159773 (n + 1) + A159772 (n + 1)).toNat

end

end A159770.P16975718200295552526

/-!
# A159771: Number of n-leaf binary trees that do not contain (()((()())((()())()))) as a subtree.

The programs for A159771, there is no canonical definition to state claims against.
-/

/-! ## A159771.P12724681084591356952

`ceil(A187256(n)/2)`
-/

namespace A159771.P12724681084591356952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187256 n : ℚ) / 2⌉

end

end A159771.P12724681084591356952

/-! ## A159771.P12888407648221628608

`A187256(n)/A036453(n+1)`
-/

namespace A159771.P12888407648221628608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A159771.P12888407648221628608

/-! ## A159771.P3168893458072455047

`A187256(n)/A014963(A001316(n))`
-/

namespace A159771.P3168893458072455047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A159771.P3168893458072455047

/-! ## A159771.P14673334637176293087

`A187256(n)/A020639(A000118(n))`
-/

namespace A159771.P14673334637176293087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A020639 (A000118 n).toNat : ℚ)

end

end A159771.P14673334637176293087

/-! ## A159771.P17890765682045939520

`A187256(n)/A000034(A000040(n+1))`
-/

namespace A159771.P17890765682045939520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A000034 (A000040 (n + 1)).toNat : ℚ)

end

end A159771.P17890765682045939520

/-! ## A159771.P5437814422135040859

`A187256(n)/A000005(A008578(n+1))`
-/

namespace A159771.P5437814422135040859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A159771.P5437814422135040859

/-! ## A159771.P11825484053636202725

`A187256(n)/A020639(A001223(n+1))`
-/

namespace A159771.P11825484053636202725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

end

end A159771.P11825484053636202725

/-! ## A159771.P8997746503808778461

`∑[A114464(n+1)]/A014963(A001316(n))`
-/

namespace A159771.P8997746503808778461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114464 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A159771.P8997746503808778461

/-! ## A159771.P4711485173367407118

`A187256(n)/A020639(A000040(n+1)-1)`
-/

namespace A159771.P4711485173367407118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187256 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A159771.P4711485173367407118

/-!
# A159772: Number of n-leaf binary trees that do not contain (()((((()())())())())) as a subtree.

The programs for A159772, there is no canonical definition to state claims against.
-/

/-! ## A159772.P12011421034547006876

`A295679(∑[n+3]+n+3)`
-/

namespace A159772.P12011421034547006876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A159772.P12011421034547006876

/-! ## A159772.P6554729217565951684

`or(A000007(n), A295679(A046691(n+2)))`
-/

namespace A159772.P6554729217565951684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295679 (A046691 (n + 2)).toNat)

end

end A159772.P6554729217565951684

/-! ## A159772.P2509492453517119432

`A295679(A046691(n+2))+A063524(2*n)`
-/

namespace A159772.P2509492453517119432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A046691 (n + 2)).toNat + A063524 (2 * n)

end

end A159772.P2509492453517119432

/-! ## A159772.P15557749736904136582

`A295679(A046691(n+2))%A100068(n+1)`
-/

namespace A159772.P15557749736904136582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295679 (A046691 (n + 2)).toNat) (A100068 (n + 1))

end

end A159772.P15557749736904136582

/-! ## A159772.P15453261981568602807

`A295679(A046691(n+2))+A000007(2*n+1)`
-/

namespace A159772.P15453261981568602807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (A046691 (n + 2)).toNat + A000007 (2 * n + 1)

end

end A159772.P15453261981568602807

/-!
# A159773: Number of n-leaf binary trees that do not contain ((()())(()((()())()))) as a subtree.

The programs for A159773, there is no canonical definition to state claims against.
-/

/-! ## A159773.P7249096368589312550

`A159769(n+1)-A185044(A038207(n))`
-/

namespace A159773.P7249096368589312550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159769 (n + 1) - A185044 (A038207 n).toNat

end

end A159773.P7249096368589312550

/-! ## A159773.P12294734526549727796

`A159769(n+1)-A025466(A307577(n))`
-/

namespace A159773.P12294734526549727796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159769 (n + 1) - A025466 (A307577 n).toNat

end

end A159773.P12294734526549727796

/-! ## A159773.P4100250267649170745

`A159769(n+1)-A169674(A288320(n)²)`
-/

namespace A159773.P4100250267649170745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159769 (n + 1) - A169674 (A288320 n ^ 2).toNat

end

end A159773.P4100250267649170745

/-! ## A159773.P13157664524541347345

`A159769(n+1)-A221836(A202047(n+1))`
-/

namespace A159773.P13157664524541347345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159769 (n + 1) - A221836 (A202047 (n + 1)).toNat

end

end A159773.P13157664524541347345

/-!
# A159780: Inner product of the binary representation of n and its reverse.

The programs for A159780, the canonical program `A159780.P2765697705373744263` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159780 has offset 0).

The definition of A159780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159780.P14680331169374205535

`A000120(and(n, A030101(n)))`
-/

namespace A159780.P14680331169374205535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A030101 n)).toNat

end

end A159780.P14680331169374205535

namespace A159780

/-- `A000120(and(n, A030101(n)))` -/
def P14680331169374205535.Spec : Prop :=
  ∀ n, P14680331169374205535.a n = A159780 n

end A159780

/-! ## A159780.P7342604261859856542

`A000120(and(n, A264618(n)))`
-/

namespace A159780.P7342604261859856542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A264618 n)).toNat

end

end A159780.P7342604261859856542

namespace A159780

/-- `A000120(and(n, A264618(n)))` -/
def P7342604261859856542.Spec : Prop :=
  ∀ n, P7342604261859856542.a n = A159780 n

end A159780

/-! ## A159780.P2765697705373744263

`A000120(and(n, A145341(n+1)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A159780

/-- `A000120(and(n, A145341(n+1)))` -/
def P2765697705373744263.Spec : Prop :=
  ∀ n, P2765697705373744263.a n = A159780 n

theorem P2765697705373744263.correct : P2765697705373744263.Spec := by
  intro n
  simp only [A159780]

end A159780

/-! ## A159780.P14858635586279634147

`A000120(and(n, A055944(n)-n))`
-/

namespace A159780.P14858635586279634147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A055944 n - (n : ℤ))).toNat

end

end A159780.P14858635586279634147

namespace A159780

/-- `A000120(and(n, A055944(n)-n))` -/
def P14858635586279634147.Spec : Prop :=
  ∀ n, P14858635586279634147.a n = A159780 n

end A159780

/-! ## A159780.P10522516663460513800

`A000120(n-and(n, A175919(n)))`
-/

namespace A159780.P10522516663460513800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - Int.land (n : ℤ) (A175919 n)).toNat

end

end A159780.P10522516663460513800

namespace A159780

/-- `A000120(n-and(n, A175919(n)))` -/
def P10522516663460513800.Spec : Prop :=
  ∀ n, P10522516663460513800.a n = A159780 n

end A159780

/-! ## A159780.P18181935417128804906

`A000120(n)-A000120(A370427(n))`
-/

namespace A159780.P18181935417128804906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A370427 n).toNat

end

end A159780.P18181935417128804906

namespace A159780

/-- `A000120(n)-A000120(A370427(n))` -/
def P18181935417128804906.Spec : Prop :=
  ∀ n, P18181935417128804906.a n = A159780 n

end A159780

/-! ## A159780.P11617784111410914676

`A000120((A055944(n)-A175919(n))/2)`
-/

namespace A159780.P11617784111410914676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A055944 n - A175919 n : ℚ) / 2)).toNat

end

end A159780.P11617784111410914676

namespace A159780

/-- `A000120((A055944(n)-A175919(n))/2)` -/
def P11617784111410914676.Spec : Prop :=
  ∀ n, P11617784111410914676.a n = A159780 n

end A159780

/-! ## A159780.P9839018126200373624

`A000120(n)-A000120(A175298(n)-n)`
-/

namespace A159780.P9839018126200373624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A175298 n - (n : ℤ)).toNat

end

end A159780.P9839018126200373624

namespace A159780

/-- `A000120(n)-A000120(A175298(n)-n)` -/
def P9839018126200373624.Spec : Prop :=
  ∀ n, P9839018126200373624.a n = A159780 n

end A159780

/-! ## A159780.P5165941207283018690

`A000120(n)-A000120(A175919(n))/2`
-/

namespace A159780.P5165941207283018690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) - (A000120 (A175919 n).toNat : ℚ) / 2

end

end A159780.P5165941207283018690

namespace A159780

/-- `A000120(n)-A000120(A175919(n))/2` -/
def P5165941207283018690.Spec : Prop :=
  ∀ n, P5165941207283018690.a n = (A159780 n : ℚ)

end A159780

/-! ## A159780.P8710123735868844804

`A000120(and(n, A057889(2*n+1)))`
-/

namespace A159780.P8710123735868844804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A057889 (2 * n + 1))).toNat

end

end A159780.P8710123735868844804

namespace A159780

/-- `A000120(and(n, A057889(2*n+1)))` -/
def P8710123735868844804.Spec : Prop :=
  ∀ n, P8710123735868844804.a n = A159780 n

end A159780

/-! ## A159780.P14545767323218005864

`A000120(n)-A000120(A344220(n))`
-/

namespace A159780.P14545767323218005864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A344220 n).toNat

end

end A159780.P14545767323218005864

namespace A159780

/-- `A000120(n)-A000120(A344220(n))` -/
def P14545767323218005864.Spec : Prop :=
  ∀ n, P14545767323218005864.a n = A159780 n

end A159780

/-! ## A159780.P5435499221815001171

`A000120(A055944(n)-A175919(n))`
-/

namespace A159780.P5435499221815001171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055944 n - A175919 n).toNat

end

end A159780.P5435499221815001171

namespace A159780

/-- `A000120(A055944(n)-A175919(n))` -/
def P5435499221815001171.Spec : Prop :=
  ∀ n, P5435499221815001171.a n = A159780 n

end A159780

/-! ## A159780.P3516486699134435106

`A173920(∑[n]+n)`
-/

namespace A159780.P3516486699134435106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A159780.P3516486699134435106

namespace A159780

/-- `A173920(∑[n]+n)` -/
def P3516486699134435106.Spec : Prop :=
  ∀ n, P3516486699134435106.a n = A159780 n

end A159780

/-!
# A159781: Values of hypotenuse of primitive Pythagorean triples which can have exactly four different shapes (that is, four different sets of "legs").

The programs for A159781, there is no canonical definition to state claims against.
-/

/-! ## A159781.P5562177856153525102

`filter[A281877(n+1), A353673(#)]`
-/

namespace A159781.P5562177856153525102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A159781.P5562177856153525102

/-! ## A159781.P3432566534642686664

`record[A000265(A003641(n+1)*A281877(n+1))]`
-/

namespace A159781.P3432566534642686664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003641 (n + 1) * A281877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P3432566534642686664

/-! ## A159781.P11164750140914557848

`record[A000265(4*A281877(n+1))]`
-/

namespace A159781.P11164750140914557848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A281877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P11164750140914557848

/-! ## A159781.P2530987607474931891

`A000265(record[lcm(4, A281877(n+1))])`
-/

namespace A159781.P2530987607474931891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A281877 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A159781.P2530987607474931891

/-! ## A159781.P7191195105285843217

`A130507(n²)+record[A000265(A281877(n+1))]`
-/

namespace A159781.P7191195105285843217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A281877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P7191195105285843217

/-! ## A159781.P14211512642618988419

`record[A009001(A281877(n+1))]`
-/

namespace A159781.P14211512642618988419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A281877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P14211512642618988419

/-! ## A159781.P693144248103565728

`A327938(record[A000265(A281877(n+1))])`
-/

namespace A159781.P693144248103565728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A281877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A159781.P693144248103565728

/-! ## A159781.P15533772977405031291

`record[A141310(A281877(n+1)-1)]`
-/

namespace A159781.P15533772977405031291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A281877 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P15533772977405031291

/-! ## A159781.P7669972189104164241

`record[A342918(A281877(n+1)-1)]`
-/

namespace A159781.P7669972189104164241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 (A281877 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P7669972189104164241

/-! ## A159781.P4262005770088452060

`record[A342918(xor(1, A281877(n+1)))]`
-/

namespace A159781.P4262005770088452060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 (Int.xor 1 (A281877 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159781.P4262005770088452060

/-!
# A159782: a(0)=1; a(1)=a(2)=a(3)=a(4)=2; a(2n+1)=0 for n >= 2; a(4n)=a(4n-2) = a(n) + a(n+1) for n >= 2.

The programs for A159782, there is no canonical definition to state claims against.
-/

/-! ## A159782.P5250990043490627940

`2*A373700(n)-A005942(n)`
-/

namespace A159782.P5250990043490627940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373700 n - A005942 n

end

end A159782.P5250990043490627940

/-! ## A159782.P6610446899973615352

`A005843(A373700(n))-A005942(n)`
-/

namespace A159782.P6610446899973615352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373700 n).toNat - A005942 n

end

end A159782.P6610446899973615352

/-! ## A159782.P12645131785670148462

`A005843(A373700(n))-(A214214(n)+1-A214212(n))`
-/

namespace A159782.P12645131785670148462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373700 n).toNat - (A214214 n + (1 - A214212 n))

end

end A159782.P12645131785670148462

/-! ## A159782.P6472114712485404260

`A005843(A373700(n))-A373700(A004275(n+1)-1)`
-/

namespace A159782.P6472114712485404260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373700 n).toNat - A373700 (A004275 (n + 1) - 1).toNat

end

end A159782.P6472114712485404260

/-! ## A159782.P17243323349968884357

`A005843(A373700(n))-A373700(A028310(n)-1+n)`
-/

namespace A159782.P17243323349968884357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373700 n).toNat - A373700 (A028310 n - 1 + (n : ℤ)).toNat

end

end A159782.P17243323349968884357

/-!
# A159783: Hankel transform of ordered Bell numbers A000670. a(n)=det(A000670(i+j-1)), i,j=1,2..n.

The programs for A159783, the canonical program `A159783.P10788161440935704845` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159783 has offset 1).

The definition of A159783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159783.P10788161440935704845

`2^(n*(n+1)/2)*A000178(n)*A000178(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159783

/-- `2^(n*(n+1)/2)*A000178(n)*A000178(n+1)` -/
def P10788161440935704845.Spec : Prop :=
  ∀ n, P10788161440935704845.a n = (A159783 (n + 1) : ℝ)

end A159783

/-! ## A159783.P2676920973913428134

`∏[∑[4*n]*a(n-1)]` with `a(0)=1`
-/

namespace A159783.P2676920973913428134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159783.P2676920973913428134

namespace A159783

/-- `∏[∑[4*n]*a(n-1)]` -/
def P2676920973913428134.Spec : Prop :=
  ∀ n, (P2676920973913428134.a n : ℤ) = A159783 (n + 1)

end A159783

/-! ## A159783.P6184858382491461387

`∏[2*n*(n+1)*a(n-1)]` with `a(0)=1`
-/

namespace A159783.P6184858382491461387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * ((n + 1) * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159783.P6184858382491461387

namespace A159783

/-- `∏[2*n*(n+1)*a(n-1)]` -/
def P6184858382491461387.Spec : Prop :=
  ∀ n, (P6184858382491461387.a n : ℤ) = A159783 (n + 1)

end A159783

/-! ## A159783.P16327989506360525166

`∏[(2*n+1)!*∏[(n+1)/(2*n+1)]]`
-/

namespace A159783.P16327989506360525166
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 * n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159783.P16327989506360525166

namespace A159783

/-- `∏[(2*n+1)!*∏[(n+1)/(2*n+1)]]` -/
def P16327989506360525166.Spec : Prop :=
  ∀ n, P16327989506360525166.a n = (A159783 (n + 1) : ℚ)

end A159783

/-! ## A159783.P17083900556361341733

`∏[∏[A008574(∑[n])]]`
-/

namespace A159783.P17083900556361341733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159783.P17083900556361341733

namespace A159783

/-- `∏[∏[A008574(∑[n])]]` -/
def P17083900556361341733.Spec : Prop :=
  ∀ n, P17083900556361341733.a n = A159783 (n + 1)

end A159783

/-!
# A159785: a(n) = A152980(n)*3.

The programs for A159785, there is no canonical definition to state claims against.
-/

/-! ## A159785.P16833732433450675967

`A152980(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159785.P16833732433450675967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n * 3

end

end A159785.P16833732433450675967

/-! ## A159785.P6080048717208830911

`Δ[A159794(n)]`
-/

namespace A159785.P6080048717208830911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159785.P6080048717208830911

/-! ## A159785.P12184171703752914543

`Δ[3*A153006(n)]`
-/

namespace A159785.P12184171703752914543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159785.P12184171703752914543

/-! ## A159785.P5322142829477495540

`3/2*A151688(n)`
-/

namespace A159785.P5322142829477495540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A151688 n : ℚ)

end

end A159785.P5322142829477495540

/-! ## A159785.P12983445262305215182

`3/2*Δ[A159793(n)]`
-/

namespace A159785.P12983445262305215182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A159785.P12983445262305215182

/-! ## A159785.P6464481988377399835

`3/4*A147646(n+1)`
-/

namespace A159785.P6464481988377399835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A147646 (n + 1) : ℚ)

end

end A159785.P6464481988377399835

/-! ## A159785.P9962616427307288377

`A152980(n)+A151688(n)`
-/

namespace A159785.P9962616427307288377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + A151688 n

end

end A159785.P9962616427307288377

/-! ## A159785.P17635570479925569811

`A152980(n)+Δ[A159793(n)]`
-/

namespace A159785.P17635570479925569811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + (f1 (n + 1) - f1 n)

end

end A159785.P17635570479925569811

/-! ## A159785.P9899896722957897101

`A147646(n+1)-A152980(n)`
-/

namespace A159785.P9899896722957897101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) - A152980 n

end

end A159785.P9899896722957897101

/-! ## A159785.P75913316406723595

`A159794(n+1)-A159794(n)`
-/

namespace A159785.P75913316406723595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 (n + 1) - A159794 n

end

end A159785.P75913316406723595

/-! ## A159785.P511305874226485742

`A151550(n)+A152980(n)+A151555(n)`
-/

namespace A159785.P511305874226485742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 n + (A152980 n + A151555 n)

end

end A159785.P511305874226485742

/-! ## A159785.P17279793811799064750

`A151548(n+1)+A151548(n)-A152980(n)`
-/

namespace A159785.P17279793811799064750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 (n + 1) + (A151548 n - A152980 n)

end

end A159785.P17279793811799064750

/-! ## A159785.P781230388373541658

`A153006(n+1)+A151688(n)-A153006(n)`
-/

namespace A159785.P781230388373541658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) + (A151688 n - A153006 n)

end

end A159785.P781230388373541658

/-! ## A159785.P14880211240530384348

`A159793(n+1)+A152980(n)-A159793(n)`
-/

namespace A159785.P14880211240530384348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (n + 1) + (A152980 n - A159793 n)

end

end A159785.P14880211240530384348

/-! ## A159785.P18403147724506527564

`A159795(n+1)-(A159795(n)+A152980(n))`
-/

namespace A159785.P18403147724506527564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 (n + 1) - (A159795 n + A152980 n)

end

end A159785.P18403147724506527564

/-! ## A159785.P11884324372367937995

`A194811(n+1)-(A194811(n)+A152980(n))`
-/

namespace A159785.P11884324372367937995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 (n + 1) - (A194811 n + A152980 n)

end

end A159785.P11884324372367937995

/-! ## A159785.P2111370325637254860

`A147646(n+1)+A153006(n)-A153006(n+1)`
-/

namespace A159785.P2111370325637254860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) + (A153006 n - A153006 (n + 1))

end

end A159785.P2111370325637254860

/-! ## A159785.P12154183403608272496

`A139251(n+1)+A152980(n)+A152968(n+1)`
-/

namespace A159785.P12154183403608272496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A152980 n + A152968 (n + 1))

end

end A159785.P12154183403608272496

/-! ## A159785.P10703109612206399126

`A008486(A152980(n))`
-/

namespace A159785.P10703109612206399126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A152980 n).toNat

end

end A159785.P10703109612206399126

/-! ## A159785.P7183319188014358317

`A008486(Δ[A153006(n)])`
-/

namespace A159785.P7183319188014358317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A159785.P7183319188014358317

/-!
# A159786: Total area of all squares and rectangles after n-th stage in the toothpick structure of A139250, assuming the toothpicks have length 2.

The programs for A159786, there is no canonical definition to state claims against.
-/

/-! ## A159786.P9355525543778920709

`2*A159788(abs(1-n))`
-/

namespace A159786.P9355525543778920709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159788 |1 - (n : ℤ)|.toNat

end

end A159786.P9355525543778920709

/-! ## A159786.P11822549160910853297

`4*A159789(abs(1-n))`
-/

namespace A159786.P11822549160910853297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A159789 |1 - (n : ℤ)|.toNat

end

end A159786.P11822549160910853297

/-! ## A159786.P7488186734089387311

`∑[A159796(round(acot(n)+n))]`
-/

namespace A159786.P7488186734089387311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159796 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159786.P7488186734089387311

/-! ## A159786.P4985490356665499403

`A159796(n)+a(n-1)` with `a(0)=0`
-/

namespace A159786.P4985490356665499403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159796 n + a (n - 1)

end

end A159786.P4985490356665499403

/-! ## A159786.P16912449375556581856

`∑[A159796(round(sqrt(n²+1)))]`
-/

namespace A159786.P16912449375556581856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159796 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159786.P16912449375556581856

/-! ## A159786.P6855173285040803205

`A005843(A159788(abs(1-n)))`
-/

namespace A159786.P6855173285040803205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A159788 |1 - (n : ℤ)|.toNat).toNat

end

end A159786.P6855173285040803205

/-! ## A159786.P8733525719577475376

`∑[A159796(n+1)]-A159796(n+1)`
-/

namespace A159786.P8733525719577475376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159796 (n + 1)

end

end A159786.P8733525719577475376

/-! ## A159786.P7708301974952499124

`A159787(n)+A159789(n)-A159796(n+1)`
-/

namespace A159786.P7708301974952499124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159787 n + (A159789 n - A159796 (n + 1))

end

end A159786.P7708301974952499124

/-!
# A159787: a(n) = A159786(n+1)*3/4.

The programs for A159787, there is no canonical definition to state claims against.
-/

/-! ## A159787.P1926004226506992375

`A159786(n+1)*3/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159787.P1926004226506992375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159786 (n + 1) * 3 : ℚ) / 4

end

end A159787.P1926004226506992375

/-! ## A159787.P8158843202368963662

`3*A159789(n)`
-/

namespace A159787.P8158843202368963662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A159789 n

end

end A159787.P8158843202368963662

/-! ## A159787.P5533858020515474031

`3/2*A159788(n)`
-/

namespace A159787.P5533858020515474031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A159788 n : ℚ)

end

end A159787.P5533858020515474031

/-! ## A159787.P15182229838509941772

`∑[3/4*Δ[A159786(n)]]`
-/

namespace A159787.P15182229838509941772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159787.P15182229838509941772

/-! ## A159787.P4907715383218535659

`∑[3*A159796(n+1)/4]`
-/

namespace A159787.P4907715383218535659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A159796 (n + 1) : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159787.P4907715383218535659

/-! ## A159787.P8477114991333078990

`A006368(A159788(n))`
-/

namespace A159787.P8477114991333078990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A159788 n).toNat

end

end A159787.P8477114991333078990

/-! ## A159787.P16760457776193599408

`A008585(A159789(n))`
-/

namespace A159787.P16760457776193599408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A159789 n).toNat

end

end A159787.P16760457776193599408

/-! ## A159787.P4673908706075629505

`A057353(A159786(n+1))`
-/

namespace A159787.P4673908706075629505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A159786 (n + 1)).toNat

end

end A159787.P4673908706075629505

/-! ## A159787.P7610461411791731564

`A001281(3*A159788(n))`
-/

namespace A159787.P7610461411791731564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (3 * A159788 n).toNat

end

end A159787.P7610461411791731564

/-! ## A159787.P16471829751011455873

`A159789(n)+A159788(n)`
-/

namespace A159787.P16471829751011455873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159789 n + A159788 n

end

end A159787.P16471829751011455873

/-!
# A159788: a(n) = A159786(n+1)/2.

The programs for A159788, there is no canonical definition to state claims against.
-/

/-! ## A159788.P2666024330483324526

`A159786(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159788.P2666024330483324526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159786 (n + 1) : ℚ) / 2

end

end A159788.P2666024330483324526

/-! ## A159788.P17249893338463422307

`2*A159789(n)`
-/

namespace A159788.P17249893338463422307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159789 n

end

end A159788.P17249893338463422307

/-! ## A159788.P2118803416967583846

`2/3*A159787(n)`
-/

namespace A159788.P2118803416967583846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A159787 n : ℚ)

end

end A159788.P2118803416967583846

/-! ## A159788.P243066504351144076

`Δ[∑[A159786(n)]/2]`
-/

namespace A159788.P243066504351144076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159788.P243066504351144076

/-! ## A159788.P10788428772043175312

`∑[A159796(n+1)/2]`
-/

namespace A159788.P10788428772043175312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159796 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159788.P10788428772043175312

/-! ## A159788.P14576935121445898868

`A004396(A159787(n))`
-/

namespace A159788.P14576935121445898868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A159787 n).toNat

end

end A159788.P14576935121445898868

/-! ## A159788.P3556661088559986685

`A005843(A159789(n))`
-/

namespace A159788.P3556661088559986685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A159789 n).toNat

end

end A159788.P3556661088559986685

/-! ## A159788.P16047454816415359996

`A001281(A159786(n+1))`
-/

namespace A159788.P16047454816415359996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A159786 (n + 1)).toNat

end

end A159788.P16047454816415359996

/-! ## A159788.P17062175799068429168

`A002264(2*A159787(n))`
-/

namespace A159788.P17062175799068429168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A159787 n).toNat

end

end A159788.P17062175799068429168

/-! ## A159788.P17133078092584709505

`A159787(n)-A159789(n)`
-/

namespace A159788.P17133078092584709505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159787 n - A159789 n

end

end A159788.P17133078092584709505

/-!
# A159789: a(n) = A159786(n+1)/4.

The programs for A159789, there is no canonical definition to state claims against.
-/

/-! ## A159789.P4376278524675029634

`A159786(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159789.P4376278524675029634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159786 (n + 1) : ℚ) / 4

end

end A159789.P4376278524675029634

/-! ## A159789.P16399977798832910304

`A159788(n)/2`
-/

namespace A159789.P16399977798832910304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159788 n : ℚ) / 2

end

end A159789.P16399977798832910304

/-! ## A159789.P18125031865205992165

`A159787(n)/3`
-/

namespace A159789.P18125031865205992165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159787 n : ℚ) / 3

end

end A159789.P18125031865205992165

/-! ## A159789.P16745248750635235993

`∑[Δ[A159786(n)]/4]`
-/

namespace A159789.P16745248750635235993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159789.P16745248750635235993

/-! ## A159789.P1271843789085783084

`∑[A159796(n+1)/4]`
-/

namespace A159789.P1271843789085783084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159796 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159789.P1271843789085783084

/-! ## A159789.P4283906278784069690

`A159799(n)+a(n-1)` with `a(0)=0`
-/

namespace A159789.P4283906278784069690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159799 n + a (n - 1)

end

end A159789.P4283906278784069690

/-! ## A159789.P2743667881722740484

`A001281(A159788(n))`
-/

namespace A159789.P2743667881722740484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A159788 n).toNat

end

end A159789.P2743667881722740484

/-! ## A159789.P10481341911183737222

`A002264(A159787(n))`
-/

namespace A159789.P10481341911183737222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A159787 n).toNat

end

end A159789.P10481341911183737222

/-! ## A159789.P7811328068856426253

`A002265(A159786(n+1))`
-/

namespace A159789.P7811328068856426253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A159786 (n + 1)).toNat

end

end A159789.P7811328068856426253

/-! ## A159789.P7566871763007182319

`A159787(n)-A159788(n)`
-/

namespace A159789.P7566871763007182319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159787 n - A159788 n

end

end A159789.P7566871763007182319

/-!
# A159790: Toothpick number A139250(n) minus triangular number A000217(n).

The programs for A159790, there is no canonical definition to state claims against.
-/

/-! ## A159790.P7584900776774515321

`A139250(n)-∑[n]`
-/

namespace A159790.P7584900776774515321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159790.P7584900776774515321

/-! ## A159790.P17360919106990056384

`∑[A139251(n)-n]`
-/

namespace A159790.P17360919106990056384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159790.P17360919106990056384

/-! ## A159790.P14783282477781935176

`A160164(n)/2-∑[n]`
-/

namespace A159790.P14783282477781935176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A159790.P14783282477781935176

/-! ## A159790.P16308790229989637779

`A266530(Δ[n²])-∑[n]`
-/

namespace A159790.P16308790229989637779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A159790.P16308790229989637779

/-! ## A159790.P12082914171404347052

`∑[Δ[floor(A187220(n)/2)]-n]`
-/

namespace A159790.P12082914171404347052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159790.P12082914171404347052

/-! ## A159790.P18131400453527469234

`ceil(A187220(n+1)/2-(∑[n]+1))`
-/

namespace A159790.P18131400453527469234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187220 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ)⌉

end

end A159790.P18131400453527469234

/-! ## A159790.P6874843457413079531

`A002662(n)-A220499(n)`
-/

namespace A159790.P6874843457413079531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - A220499 n

end

end A159790.P6874843457413079531

/-! ## A159790.P15482214533619895686

`A004525(A160164(n))-∑[n]`
-/

namespace A159790.P15482214533619895686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A160164 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159790.P15482214533619895686

/-! ## A159790.P15846507366333967248

`A139250(n)+1-A000124(n)`
-/

namespace A159790.P15846507366333967248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + 1 - A000124 n

end

end A159790.P15846507366333967248

/-! ## A159790.P3206889758118635749

`A139250(n)+n-A000096(n)`
-/

namespace A159790.P3206889758118635749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (n : ℤ) - A000096 n

end

end A159790.P3206889758118635749

/-!
# A159791: Bisection of toothpick sequence A139250.

The programs for A159791, there is no canonical definition to state claims against.
-/

/-! ## A159791.P14649111811089889112

`A139250(2*n)`
-/

namespace A159791.P14649111811089889112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 * n)

end

end A159791.P14649111811089889112

/-! ## A159791.P3126897495163607519

`record[A139250(and(n, n-1))]`
-/

namespace A159791.P3126897495163607519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159791.P3126897495163607519

/-! ## A159791.P3739454058607633152

`record[A139250(n%12+n)]`
-/

namespace A159791.P3739454058607633152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n % 12 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159791.P3739454058607633152

/-! ## A159791.P17387407726432623489

`record[A139250(n)/(-1)^n]`
-/

namespace A159791.P17387407726432623489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159791.P17387407726432623489

/-! ## A159791.P8937146280750161306

`and(-1, A139250(A005843(n)))`
-/

namespace A159791.P8937146280750161306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A139250 (A005843 n).toNat)

end

end A159791.P8937146280750161306

/-! ## A159791.P4986790566458024749

`record[A139250(A093178(n)-1)]`
-/

namespace A159791.P4986790566458024749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159791.P4986790566458024749

/-! ## A159791.P16018430608090460410

`A139250(A005843(n))%A003336(n+1)`
-/

namespace A159791.P16018430608090460410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139250 (A005843 n).toNat) (A003336 (n + 1))

end

end A159791.P16018430608090460410

/-! ## A159791.P15536508519953077798

`A139250(n+n)^A000120(A001316(n))`
-/

namespace A159791.P15536508519953077798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + n) : ℚ) ^ (A000120 (A001316 n).toNat : ℤ)

end

end A159791.P15536508519953077798

/-! ## A159791.P5445401820274618572

`A160424(2*n+1)-(A160424(2*n)+A139251(2*n+1))`
-/

namespace A159791.P5445401820274618572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 (2 * n + 1) - (A160424 (2 * n) + A139251 (2 * n + 1))

end

end A159791.P5445401820274618572

/-! ## A159791.P5611470691139417515

`A160164(2*n)/2`
-/

namespace A159791.P5611470691139417515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 (2 * n) : ℚ) / 2

end

end A159791.P5611470691139417515

/-! ## A159791.P12741648962726273947

`A173522(2*n)+A173454(2*n)`
-/

namespace A159791.P12741648962726273947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (2 * n) + A173454 (2 * n)

end

end A159791.P12741648962726273947

/-! ## A159791.P12969497633577520475

`floor(A187220(2*n+1)/2)`
-/

namespace A159791.P12969497633577520475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 (2 * n + 1) : ℚ) / 2⌋

end

end A159791.P12969497633577520475

/-! ## A159791.P11109441360488881671

`2*A153006(2*n)-A152998(2*n)`
-/

namespace A159791.P11109441360488881671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 (2 * n) - A152998 (2 * n)

end

end A159791.P11109441360488881671

/-! ## A159791.P439171655702217369

`2*A255747(2*n)-A160552(2*n)`
-/

namespace A159791.P439171655702217369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 (2 * n) - A160552 (2 * n)

end

end A159791.P439171655702217369

/-! ## A159791.P14914864476078992328

`A255747(2*n)+A255747(A004273(n))`
-/

namespace A159791.P14914864476078992328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (2 * n) + A255747 (A004273 n).toNat

end

end A159791.P14914864476078992328

/-! ## A159791.P13655906827232940200

`A159793(2*n)-A152998(2*n)`
-/

namespace A159791.P13655906827232940200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (2 * n) - A152998 (2 * n)

end

end A159791.P13655906827232940200

/-! ## A159791.P11994519209136288155

`A266530(4*n+1)`
-/

namespace A159791.P11994519209136288155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (4 * n + 1)

end

end A159791.P11994519209136288155

/-! ## A159791.P5102377463831013701

`record[A033999(n)*A266530(Δ[n²])]`
-/

namespace A159791.P5102377463831013701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A266530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159791.P5102377463831013701

/-! ## A159791.P11118929515061541316

`A000225(2*n)-A220499(2*n)`
-/

namespace A159791.P11118929515061541316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n) - A220499 (2 * n)

end

end A159791.P11118929515061541316

/-!
# A159792: Bisection of toothpick sequence A139250.

The programs for A159792, there is no canonical definition to state claims against.
-/

/-! ## A159792.P1045233975227726257

`A139250(Δ[n²])`
-/

namespace A159792.P1045233975227726257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A159792.P1045233975227726257

/-! ## A159792.P17955729631993647705

`record[A139250(xor(1, n))]`
-/

namespace A159792.P17955729631993647705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159792.P17955729631993647705

/-! ## A159792.P2206579965630605624

`A266530(record[xor(3, n)])`
-/

namespace A159792.P2206579965630605624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A159792.P2206579965630605624

/-! ## A159792.P16285381857381020818

`A266530(4*n+3)`
-/

namespace A159792.P16285381857381020818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (4 * n + 3)

end

end A159792.P16285381857381020818

/-! ## A159792.P17482299836694611763

`A160164(Δ[n²])/2`
-/

namespace A159792.P17482299836694611763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A159792.P17482299836694611763

/-!
# A159793: a(n) = A153006(n)*2.

The programs for A159793, there is no canonical definition to state claims against.
-/

/-! ## A159793.P17292797711584883635

`A153006(n)*2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159793.P17292797711584883635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n * 2

end

end A159793.P17292797711584883635

/-! ## A159793.P4727184452083850050

`A159795(n)/2`
-/

namespace A159793.P4727184452083850050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 2

end

end A159793.P4727184452083850050

/-! ## A159793.P21910876009564087

`(A194811(n)-1)/2`
-/

namespace A159793.P21910876009564087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194811 n - 1 : ℚ) / 2

end

end A159793.P21910876009564087

/-! ## A159793.P8343130161683295784

`2/3*A159794(n)`
-/

namespace A159793.P8343130161683295784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A159794 n : ℚ)

end

end A159793.P8343130161683295784

/-! ## A159793.P10439542228072490428

`2*(∑[n]-A153007(n))`
-/

namespace A159793.P10439542228072490428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153007 n)

end

end A159793.P10439542228072490428

/-! ## A159793.P16118496740792573576

`A152998(n)+A139250(n)`
-/

namespace A159793.P16118496740792573576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + A139250 n

end

end A159793.P16118496740792573576

/-! ## A159793.P15820512511558432450

`A159794(n)-A153006(n)`
-/

namespace A159793.P15820512511558432450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n - A153006 n

end

end A159793.P15820512511558432450

/-! ## A159793.P6623672625240729549

`A152998(n)+∑[A139251(n)]`
-/

namespace A159793.P6623672625240729549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159793.P6623672625240729549

/-! ## A159793.P1182897681869344885

`∑[A151688(n)]-A151688(n)`
-/

namespace A159793.P1182897681869344885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151688 n

end

end A159793.P1182897681869344885

/-! ## A159793.P9542565240048523714

`2*(A160166(n)+A001318(n))`
-/

namespace A159793.P9542565240048523714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160166 n + A001318 n)

end

end A159793.P9542565240048523714

/-! ## A159793.P11519952758219302730

`A002378(n)-2*A153007(n)`
-/

namespace A159793.P11519952758219302730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - 2 * A153007 n

end

end A159793.P11519952758219302730

/-! ## A159793.P9322430458328291030

`2*A159794(n)-A159795(n)`
-/

namespace A159793.P9322430458328291030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159794 n - A159795 n

end

end A159793.P9322430458328291030

/-! ## A159793.P3088989353245216620

`2*(∑[A152980(n)]-A152980(n))`
-/

namespace A159793.P3088989353245216620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A152980 n)

end

end A159793.P3088989353245216620

/-! ## A159793.P13574543902693882865

`∑[A162777(n)+A139251(n)]+n`
-/

namespace A159793.P13574543902693882865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n + A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159793.P13574543902693882865

/-! ## A159793.P14551273314817069646

`A001318(n)+A160166(n)+A153006(n)`
-/

namespace A159793.P14551273314817069646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (A160166 n + A153006 n)

end

end A159793.P14551273314817069646

/-! ## A159793.P869145450910283118

`A000217(n)+A153006(n)-A153007(n)`
-/

namespace A159793.P869145450910283118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A153006 n - A153007 n)

end

end A159793.P869145450910283118

/-! ## A159793.P5488714234916829814

`A159795(n)-(A153006(n)+A153006(n))`
-/

namespace A159793.P5488714234916829814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 n - (A153006 n + A153006 n)

end

end A159793.P5488714234916829814

/-! ## A159793.P3818731524817504915

`A153006(n+1)+A153006(n)-A152980(n)`
-/

namespace A159793.P3818731524817504915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) + (A153006 n - A152980 n)

end

end A159793.P3818731524817504915

/-! ## A159793.P16322083234546809237

`A153006(n+1)+A153006(n+1)-A151688(n)`
-/

namespace A159793.P16322083234546809237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) + (A153006 (n + 1) - A151688 n)

end

end A159793.P16322083234546809237

/-! ## A159793.P13443337279816087959

`(∑[A147646(n+1)]-A147646(n+1))/2`
-/

namespace A159793.P13443337279816087959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A147646 (n + 1) : ℤ) : ℚ) / 2

end

end A159793.P13443337279816087959

/-!
# A159794: a(n) = A153006(n)*3.

The programs for A159794, there is no canonical definition to state claims against.
-/

/-! ## A159794.P15567169064786455944

`A153006(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159794.P15567169064786455944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n * 3

end

end A159794.P15567169064786455944

/-! ## A159794.P7651907975409414477

`3/2*A159793(n)`
-/

namespace A159794.P7651907975409414477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A159793 n : ℚ)

end

end A159794.P7651907975409414477

/-! ## A159794.P9058967815129974300

`3/4*A159795(n)`
-/

namespace A159794.P9058967815129974300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A159795 n : ℚ)

end

end A159794.P9058967815129974300

/-! ## A159794.P4650339005538381642

`3*(∑[n]-A153007(n))`
-/

namespace A159794.P4650339005538381642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153007 n)

end

end A159794.P4650339005538381642

/-! ## A159794.P1228368361957554684

`3*(A194811(n)-1)/4`
-/

namespace A159794.P1228368361957554684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A194811 n - 1 : ℚ) / 4)

end

end A159794.P1228368361957554684

/-! ## A159794.P5064666227091956217

`A159793(n)+A153006(n)`
-/

namespace A159794.P5064666227091956217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n + A153006 n

end

end A159794.P5064666227091956217

/-! ## A159794.P1086017366637802446

`A159795(n)-A153006(n)`
-/

namespace A159794.P1086017366637802446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 n - A153006 n

end

end A159794.P1086017366637802446

/-! ## A159794.P4726357036388493983

`3*(∑[A152980(n)]-A152980(n))`
-/

namespace A159794.P4726357036388493983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - A152980 n)

end

end A159794.P4726357036388493983

/-! ## A159794.P14812792694803564609

`A139250(n)+A153006(n)+A152998(n)`
-/

namespace A159794.P14812792694803564609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A153006 n + A152998 n)

end

end A159794.P14812792694803564609

/-! ## A159794.P17090510533687326532

`∑[A159785(n+1)]-A159785(n+1)`
-/

namespace A159794.P17090510533687326532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159785 (n + 1)

end

end A159794.P17090510533687326532

/-! ## A159794.P7245796517661643725

`A008585(n)+A008585(A153006(n)-n)`
-/

namespace A159794.P7245796517661643725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A008585 (A153006 n - (n : ℤ)).toNat

end

end A159794.P7245796517661643725

/-! ## A159794.P9587872145232521416

`A008585(A153006(n))`
-/

namespace A159794.P9587872145232521416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A153006 n).toNat

end

end A159794.P9587872145232521416

/-! ## A159794.P6561559524717382415

`A008486(A153006(n)+n)-A008486(n)`
-/

namespace A159794.P6561559524717382415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A153006 n + (n : ℤ)).toNat - A008486 n

end

end A159794.P6561559524717382415

/-! ## A159794.P8644723059002938767

`A006368(A159793(n))`
-/

namespace A159794.P8644723059002938767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A159793 n).toNat

end

end A159794.P8644723059002938767

/-! ## A159794.P9564664806031130965

`A159795(n)-A001281(A159795(n)/2)`
-/

namespace A159794.P9564664806031130965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 n - A001281 (SequenceMachineLib.roundAway ((A159795 n : ℚ) / 2)).toNat

end

end A159794.P9564664806031130965

/-!
# A159795: a(n) = 4*A153006(n).

The programs for A159795, there is no canonical definition to state claims against.
-/

/-! ## A159795.P144635415245259090

`4*A153006(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159795.P144635415245259090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153006 n

end

end A159795.P144635415245259090

/-! ## A159795.P7084893864016276318

`2*(A152998(n)+A139250(n))`
-/

namespace A159795.P7084893864016276318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152998 n + A139250 n)

end

end A159795.P7084893864016276318

/-! ## A159795.P4108978959365491885

`∑[A139251(A004760(n+2))]-1`
-/

namespace A159795.P4108978959365491885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159795.P4108978959365491885

/-! ## A159795.P3209662413176173870

`A153006(n)/(A033999(n)/2)²`
-/

namespace A159795.P3209662413176173870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153006 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A159795.P3209662413176173870

/-! ## A159795.P13361629321840235163

`2*(A152998(n)+∑[A139251(n)])`
-/

namespace A159795.P13361629321840235163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152998 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159795.P13361629321840235163

/-! ## A159795.P11240253568907342085

`4*(∑[A152980(n)]-A152980(n))`
-/

namespace A159795.P11240253568907342085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A152980 n)

end

end A159795.P11240253568907342085

/-! ## A159795.P1123512910352818265

`A194811(n)-1`
-/

namespace A159795.P1123512910352818265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 n - 1

end

end A159795.P1123512910352818265

/-! ## A159795.P4404697691160861182

`2*A159793(n)`
-/

namespace A159795.P4404697691160861182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159793 n

end

end A159795.P4404697691160861182

/-! ## A159795.P9325493742920931409

`4/3*A159794(n)`
-/

namespace A159795.P9325493742920931409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A159794 n : ℚ)

end

end A159795.P9325493742920931409

/-! ## A159795.P7655016056482432718

`4*(∑[n]-A153007(n))`
-/

namespace A159795.P7655016056482432718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153007 n)

end

end A159795.P7655016056482432718

/-! ## A159795.P8276349093392341701

`A159794(n)+A153006(n)`
-/

namespace A159795.P8276349093392341701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n + A153006 n

end

end A159795.P8276349093392341701

/-! ## A159795.P18224138598644061722

`A159794(n)+A159793(n)/2`
-/

namespace A159795.P18224138598644061722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159794 n : ℚ) + (A159793 n : ℚ) / 2

end

end A159795.P18224138598644061722

/-! ## A159795.P11123705342586738349

`A153006(n)+A159793(n)+A153006(n)`
-/

namespace A159795.P11123705342586738349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n + (A159793 n + A153006 n)

end

end A159795.P11123705342586738349

/-! ## A159795.P10336380681644464964

`A159793(n)-(A153006(n)-A159794(n))`
-/

namespace A159795.P10336380681644464964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n - (A153006 n - A159794 n)

end

end A159795.P10336380681644464964

/-! ## A159795.P12277866472982245562

`∑[A147646(n+1)]-A147646(n+1)`
-/

namespace A159795.P12277866472982245562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147646 (n + 1)

end

end A159795.P12277866472982245562

/-! ## A159795.P13646755996019050401

`A159793(n+1)+A159793(n)-A151688(n)`
-/

namespace A159795.P13646755996019050401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (n + 1) + (A159793 n - A151688 n)

end

end A159795.P13646755996019050401

/-! ## A159795.P17483281262394948017

`A159793(n+1)+A159793(n+1)-A147646(n+1)`
-/

namespace A159795.P17483281262394948017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (n + 1) + (A159793 (n + 1) - A147646 (n + 1))

end

end A159795.P17483281262394948017

/-! ## A159795.P6809633015964940009

`and(A014131(n), A194811(n))`
-/

namespace A159795.P6809633015964940009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014131 n) (A194811 n)

end

end A159795.P6809633015964940009

/-! ## A159795.P4907082612182607002

`and(A028399(n+2), A194811(n))`
-/

namespace A159795.P4907082612182607002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028399 (n + 2)) (A194811 n)

end

end A159795.P4907082612182607002

/-! ## A159795.P11015917636606568105

`and(A194811(n), A196514(n))`
-/

namespace A159795.P11015917636606568105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194811 n) (A196514 n)

end

end A159795.P11015917636606568105

/-!
# A159796: First differences of A159786.

The programs for A159796, there is no canonical definition to state claims against.
-/

/-! ## A159796.P17160874279996291778

`Δ[A159786(n)]`
-/

namespace A159796.P17160874279996291778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159796.P17160874279996291778

/-! ## A159796.P16015489162140395223

`Δ[2*A159788(abs(1-n))]`
-/

namespace A159796.P16015489162140395223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159788 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159796.P16015489162140395223

/-! ## A159796.P991698526950497494

`Δ[4*A159789(abs(1-n))]`
-/

namespace A159796.P991698526950497494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A159789 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159796.P991698526950497494

/-! ## A159796.P10703952808995627563

`4*A159799(round(sqrt(n²+1)))`
-/

namespace A159796.P10703952808995627563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A159799 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A159796.P10703952808995627563

/-! ## A159796.P8333368169309102163

`A159786(n+1)-A159786(n)`
-/

namespace A159796.P8333368169309102163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (n + 1) - A159786 n

end

end A159796.P8333368169309102163

/-! ## A159796.P16000207178291855458

`2*A159788(n)-A159786(n)`
-/

namespace A159796.P16000207178291855458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159788 n - A159786 n

end

end A159796.P16000207178291855458

/-! ## A159796.P2771051664814543725

`A005843(Δ[A159788(abs(1-n))])`
-/

namespace A159796.P2771051664814543725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A159796.P2771051664814543725

/-! ## A159796.P12156455772984710953

`A005843(A159788(n))-A159786(n)`
-/

namespace A159796.P12156455772984710953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A159788 n).toNat - A159786 n

end

end A159796.P12156455772984710953

/-! ## A159796.P2096104744492052264

`A159787(n)-(A159786(n)-A159789(n))`
-/

namespace A159796.P2096104744492052264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159787 n - (A159786 n - A159789 n)

end

end A159796.P2096104744492052264

/-!
# A159797: Triangle read by rows in which row n lists n+1 terms, starting with n, such that the difference between successive terms is equal to n-1.

The programs for A159797, the canonical program `A159797.P12777153155351090962` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159797 has offset 0).

The definition of A159797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159797.P7418128691660267947

`A144204(n+1)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A159797.P7418128691660267947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A159797.P7418128691660267947

namespace A159797

/-- `A144204(n+1)+C(comp[∑[n]]-n, 2)-n` -/
def P7418128691660267947.Spec : Prop :=
  ∀ n, P7418128691660267947.a n = A159797 n

end A159797

/-! ## A159797.P12777153155351090962

`A079904(n)+A025581(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A159797

/-- `A079904(n)+A025581(n)` -/
def P12777153155351090962.Spec : Prop :=
  ∀ n, P12777153155351090962.a n = A159797 n

theorem P12777153155351090962.correct : P12777153155351090962.Spec := by
  intro n
  simp only [A159797]

end A159797

/-! ## A159797.P12898684204323246729

`A126890(n)-A083920(n)`
-/

namespace A159797.P12898684204323246729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n - A083920 n

end

end A159797.P12898684204323246729

namespace A159797

/-- `A126890(n)-A083920(n)` -/
def P12898684204323246729.Spec : Prop :=
  ∀ n, P12898684204323246729.a n = A159797 n

end A159797

/-! ## A159797.P3496933302437049244

`A143844(n)+A094053(n+1)`
-/

namespace A159797.P3496933302437049244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A094053 (n + 1)

end

end A159797.P3496933302437049244

namespace A159797

/-- `A143844(n)+A094053(n+1)` -/
def P3496933302437049244.Spec : Prop :=
  ∀ n, P3496933302437049244.a n = A159797 n

end A159797

/-! ## A159797.P11846607381240569230

`A176798(n)-A122797(n+1)`
-/

namespace A159797.P11846607381240569230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - A122797 (n + 1)

end

end A159797.P11846607381240569230

namespace A159797

/-- `A176798(n)-A122797(n+1)` -/
def P11846607381240569230.Spec : Prop :=
  ∀ n, P11846607381240569230.a n = A159797 n

end A159797

/-! ## A159797.P5613151146097233475

`A128136(n+1)-A191532(n)`
-/

namespace A159797.P5613151146097233475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128136 (n + 1) - A191532 n

end

end A159797.P5613151146097233475

namespace A159797

/-- `A128136(n+1)-A191532(n)` -/
def P5613151146097233475.Spec : Prop :=
  ∀ n, P5613151146097233475.a n = A159797 n

end A159797

/-! ## A159797.P10604666935951221135

`∑[A114327(n)]+A002262(n)²`
-/

namespace A159797.P10604666935951221135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A002262 n ^ 2

end

end A159797.P10604666935951221135

namespace A159797

/-- `∑[A114327(n)]+A002262(n)²` -/
def P10604666935951221135.Spec : Prop :=
  ∀ n, P10604666935951221135.a n = A159797 n

end A159797

/-! ## A159797.P14705853475733053085

`A094053(n+1)+A002262(n)²`
-/

namespace A159797.P14705853475733053085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A002262 n ^ 2

end

end A159797.P14705853475733053085

namespace A159797

/-- `A094053(n+1)+A002262(n)²` -/
def P14705853475733053085.Spec : Prop :=
  ∀ n, P14705853475733053085.a n = A159797 n

end A159797

/-! ## A159797.P10787972256507748889

`A144204(n+1)+A004736(n+1)`
-/

namespace A159797.P10787972256507748889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + A004736 (n + 1)

end

end A159797.P10787972256507748889

namespace A159797

/-- `A144204(n+1)+A004736(n+1)` -/
def P10787972256507748889.Spec : Prop :=
  ∀ n, P10787972256507748889.a n = A159797 n

theorem P10787972256507748889.correct : P10787972256507748889.Spec := by
  intro n
  simp only [A159797, Nat.add_sub_cancel, A159797.P10787972256507748889.a, A159797.P12777153155351090962.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A079904, A079904.P1795222969403769225.a, A144204, A144204.P15164700038722631133.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A076110, A076110.P10148523856418061428.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A159797

/-! ## A159797.P18376506664913734481

`A081493(n+1)-A002260(n+1)`
-/

namespace A159797.P18376506664913734481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - A002260 (n + 1)

end

end A159797.P18376506664913734481

namespace A159797

/-- `A081493(n+1)-A002260(n+1)` -/
def P18376506664913734481.Spec : Prop :=
  ∀ n, P18376506664913734481.a n = A159797 n

end A159797

/-! ## A159797.P15647058269453842672

`A081493(n+1)-(A002262(n)+1)`
-/

namespace A159797.P15647058269453842672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - (A002262 n + 1)

end

end A159797.P15647058269453842672

namespace A159797

/-- `A081493(n+1)-(A002262(n)+1)` -/
def P15647058269453842672.Spec : Prop :=
  ∀ n, P15647058269453842672.a n = A159797 n

end A159797

/-! ## A159797.P14925729999904570105

`A004736(n+1)+A079904(n)-1`
-/

namespace A159797.P14925729999904570105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A079904 n - 1)

end

end A159797.P14925729999904570105

namespace A159797

/-- `A004736(n+1)+A079904(n)-1` -/
def P14925729999904570105.Spec : Prop :=
  ∀ n, P14925729999904570105.a n = A159797 n

theorem P14925729999904570105.correct : P14925729999904570105.Spec := by
  intro n
  simp only [A159797, Nat.add_sub_cancel, A159797.P14925729999904570105.a, A159797.P12777153155351090962.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A079904, A079904.P1795222969403769225.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A076110, A076110.P10148523856418061428.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A159797

/-! ## A159797.P12531635464464784281

`A075362(n+1)-A158405(n+1)`
-/

namespace A159797.P12531635464464784281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A158405 (n + 1)

end

end A159797.P12531635464464784281

namespace A159797

/-- `A075362(n+1)-A158405(n+1)` -/
def P12531635464464784281.Spec : Prop :=
  ∀ n, P12531635464464784281.a n = A159797 n

end A159797

/-! ## A159797.P12592358954455662960

`A162610(n+1)-A094727(n+1)`
-/

namespace A159797.P12592358954455662960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - A094727 (n + 1)

end

end A159797.P12592358954455662960

namespace A159797

/-- `A162610(n+1)-A094727(n+1)` -/
def P12592358954455662960.Spec : Prop :=
  ∀ n, P12592358954455662960.a n = A159797 n

end A159797

/-! ## A159797.P15029102697863977233

`A214604(n+1)-A182491(n+1)`
-/

namespace A159797.P15029102697863977233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - A182491 (n + 1)

end

end A159797.P15029102697863977233

namespace A159797

/-- `A214604(n+1)-A182491(n+1)` -/
def P15029102697863977233.Spec : Prop :=
  ∀ n, P15029102697863977233.a n = A159797 n

theorem P15029102697863977233.correct : P15029102697863977233.Spec := by
  intro n
  simp only [A159797, Nat.add_sub_cancel, A159797.P15029102697863977233.a, A159797.P12777153155351090962.a, A025581, A025581.P420762180635059694.a, A079904, A079904.P1795222969403769225.a, A182491, A182491.P13648676650091010467.a, A214604, A214604.P6900025003978506193.a, A004736, A004736.P10337537277358081527.a, A076110, A076110.P10148523856418061428.a, A131421, A131421.P18127152066384474577.a, A132111, A132111.P3713491471241087217.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A051162, A051162.P14261216125704105833.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A159797

/-! ## A159797.P5621054565246890527

`A094053(n+1)+(n-A057944(n))²`
-/

namespace A159797.P5621054565246890527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + ((n : ℤ) - A057944 n) ^ 2

end

end A159797.P5621054565246890527

namespace A159797

/-- `A094053(n+1)+(n-A057944(n))²` -/
def P5621054565246890527.Spec : Prop :=
  ∀ n, P5621054565246890527.a n = A159797 n

end A159797

/-! ## A159797.P2179355437532223633

`(A002262(n)+1)*(A003056(n)-1)+1`
-/

namespace A159797.P2179355437532223633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (A003056 n - 1) + 1

end

end A159797.P2179355437532223633

namespace A159797

/-- `(A002262(n)+1)*(A003056(n)-1)+1` -/
def P2179355437532223633.Spec : Prop :=
  ∀ n, P2179355437532223633.a n = A159797 n

end A159797

/-! ## A159797.P15858539870225565516

`A094053(n+1)+(1-A002260(n+1))²`
-/

namespace A159797.P15858539870225565516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (1 - A002260 (n + 1)) ^ 2

end

end A159797.P15858539870225565516

namespace A159797

/-- `A094053(n+1)+(1-A002260(n+1))²` -/
def P15858539870225565516.Spec : Prop :=
  ∀ n, P15858539870225565516.a n = A159797 n

end A159797

/-! ## A159797.P4450274298936413967

`A025581(n)+A002262(n)*A003056(n)`
-/

namespace A159797.P4450274298936413967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002262 n * A003056 n

end

end A159797.P4450274298936413967

namespace A159797

/-- `A025581(n)+A002262(n)*A003056(n)` -/
def P4450274298936413967.Spec : Prop :=
  ∀ n, P4450274298936413967.a n = A159797 n

end A159797

/-! ## A159797.P1909332526931428495

`A002262(n)²+A059036(n)-A002262(n)`
-/

namespace A159797.P1909332526931428495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A059036 n - A002262 n)

end

end A159797.P1909332526931428495

namespace A159797

/-- `A002262(n)²+A059036(n)-A002262(n)` -/
def P1909332526931428495.Spec : Prop :=
  ∀ n, P1909332526931428495.a n = A159797 n

end A159797

/-!
# A159798: Triangle read by rows in which row n lists n terms, starting with 1, such that the difference between successive terms is equal to n-3.

The programs for A159798, the canonical program `A159798.P10840948543157147368` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159798 has offset 1).

The definition of A159798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159798.P8831328996659173426

`(∑[char[∑[n+1]]]-2)*A002262(n)+1`
-/

namespace A159798.P8831328996659173426
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * A002262 n + 1

end

end A159798.P8831328996659173426

namespace A159798

/-- `(∑[char[∑[n+1]]]-2)*A002262(n)+1` -/
def P8831328996659173426.Spec : Prop :=
  ∀ n, P8831328996659173426.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P9121977008477516803

`A162609(n+1)-A002262(n)`
-/

namespace A159798.P9121977008477516803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) - A002262 n

end

end A159798.P9121977008477516803

namespace A159798

/-- `A162609(n+1)-A002262(n)` -/
def P9121977008477516803.Spec : Prop :=
  ∀ n, P9121977008477516803.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P2661086258100754565

`A176798(n)-(A002262(n)+n)`
-/

namespace A159798.P2661086258100754565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - (A002262 n + (n : ℤ))

end

end A159798.P2661086258100754565

namespace A159798

/-- `A176798(n)-(A002262(n)+n)` -/
def P2661086258100754565.Spec : Prop :=
  ∀ n, P2661086258100754565.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P10840948543157147368

`A004247(n)+(1-A002262(n))²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A159798

/-- `A004247(n)+(1-A002262(n))²` -/
def P10840948543157147368.Spec : Prop :=
  ∀ n, P10840948543157147368.a n = A159798 (n + 1)

theorem P10840948543157147368.correct : P10840948543157147368.Spec := by
  intro n
  simp only [A159798, Nat.add_sub_cancel]

end A159798

/-! ## A159798.P7161613076791434308

`A079904(n)+2-A158405(n+1)`
-/

namespace A159798.P7161613076791434308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (2 - A158405 (n + 1))

end

end A159798.P7161613076791434308

namespace A159798

/-- `A079904(n)+2-A158405(n+1)` -/
def P7161613076791434308.Spec : Prop :=
  ∀ n, P7161613076791434308.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P14830211062201373015

`A159797(n)+2-A094727(n+1)`
-/

namespace A159798.P14830211062201373015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + (2 - A094727 (n + 1))

end

end A159798.P14830211062201373015

namespace A159798

/-- `A159797(n)+2-A094727(n+1)` -/
def P14830211062201373015.Spec : Prop :=
  ∀ n, P14830211062201373015.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P9219000822390623236

`A076110(n+1)-2*A002262(n)`
-/

namespace A159798.P9219000822390623236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - 2 * A002262 n

end

end A159798.P9219000822390623236

namespace A159798

/-- `A076110(n+1)-2*A002262(n)` -/
def P9219000822390623236.Spec : Prop :=
  ∀ n, P9219000822390623236.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P12301029760348845502

`A126890(n)+1-n-A002262(n)`
-/

namespace A159798.P12301029760348845502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n + (1 - (n : ℤ)) - A002262 n

end

end A159798.P12301029760348845502

namespace A159798

/-- `A126890(n)+1-n-A002262(n)` -/
def P12301029760348845502.Spec : Prop :=
  ∀ n, P12301029760348845502.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P785775549635003133

`A004247(n)+(2-A002260(n+1))²`
-/

namespace A159798.P785775549635003133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (2 - A002260 (n + 1)) ^ 2

end

end A159798.P785775549635003133

namespace A159798

/-- `A004247(n)+(2-A002260(n+1))²` -/
def P785775549635003133.Spec : Prop :=
  ∀ n, P785775549635003133.a n = A159798 (n + 1)

theorem P785775549635003133.correct : P785775549635003133.Spec := by
  intro n
  simp only [A159798, Nat.add_sub_cancel, A159798.P785775549635003133.a, A159798.P10840948543157147368.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004247, A004247.P14233945955703425283.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A159798

/-! ## A159798.P9578012184862343404

`A076110(n+1)+1-A158405(n+1)`
-/

namespace A159798.P9578012184862343404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (1 - A158405 (n + 1))

end

end A159798.P9578012184862343404

namespace A159798

/-- `A076110(n+1)+1-A158405(n+1)` -/
def P9578012184862343404.Spec : Prop :=
  ∀ n, P9578012184862343404.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P12880895737504053032

`2*A162609(n+1)-A076110(n+1)`
-/

namespace A159798.P12880895737504053032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162609 (n + 1) - A076110 (n + 1)

end

end A159798.P12880895737504053032

namespace A159798

/-- `2*A162609(n+1)-A076110(n+1)` -/
def P12880895737504053032.Spec : Prop :=
  ∀ n, P12880895737504053032.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P11070218283784692706

`A076110(n+1)-A005843(A002262(n))`
-/

namespace A159798.P11070218283784692706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - A005843 (A002262 n).toNat

end

end A159798.P11070218283784692706

namespace A159798

/-- `A076110(n+1)-A005843(A002262(n))` -/
def P11070218283784692706.Spec : Prop :=
  ∀ n, P11070218283784692706.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P3025672918512326913

`A076110(n+1)-A004442(A158405(n+1))`
-/

namespace A159798.P3025672918512326913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - A004442 (A158405 (n + 1)).toNat

end

end A159798.P3025672918512326913

namespace A159798

/-- `A076110(n+1)-A004442(A158405(n+1))` -/
def P3025672918512326913.Spec : Prop :=
  ∀ n, P3025672918512326913.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P12929177638068109385

`A004736(n+1)+A079904(n)-A051162(n)`
-/

namespace A159798.P12929177638068109385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A079904 n - A051162 n)

end

end A159798.P12929177638068109385

namespace A159798

/-- `A004736(n+1)+A079904(n)-A051162(n)` -/
def P12929177638068109385.Spec : Prop :=
  ∀ n, P12929177638068109385.a n = A159798 (n + 1)

end A159798

/-! ## A159798.P16536139584746176113

`2*A162609(n+1)-A162609(A014132(n+1))`
-/

namespace A159798.P16536139584746176113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162609 (n + 1) - A162609 (A014132 (n + 1)).toNat

end

end A159798.P16536139584746176113

namespace A159798

/-- `2*A162609(n+1)-A162609(A014132(n+1))` -/
def P16536139584746176113.Spec : Prop :=
  ∀ n, P16536139584746176113.a n = A159798 (n + 1)

end A159798

/-!
# A159799: First differences of A159789.

The programs for A159799, there is no canonical definition to state claims against.
-/

/-! ## A159799.P1004672742752683401

`A159796(n+2)/4`
-/

namespace A159799.P1004672742752683401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159796 (n + 2) : ℚ) / 4

end

end A159799.P1004672742752683401

/-! ## A159799.P8961951078382868416

`Δ[A159789(n)]`
-/

namespace A159799.P8961951078382868416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159799.P8961951078382868416

/-! ## A159799.P9034987659775646111

`Δ[A159788(n)/2]`
-/

namespace A159799.P9034987659775646111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159788 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159799.P9034987659775646111

/-! ## A159799.P10306070477276391639

`Δ[A159787(n)/3]`
-/

namespace A159799.P10306070477276391639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159787 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159799.P10306070477276391639

/-! ## A159799.P1217418162994588492

`Δ[A159786(n+1)/4]`
-/

namespace A159799.P1217418162994588492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159786 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159799.P1217418162994588492

