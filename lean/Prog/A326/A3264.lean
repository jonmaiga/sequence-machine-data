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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A326400: Expansion of Sum_{k>=1} k * x^(2*k) / (1 - x^(3*k)).

The programs for A326400, the canonical program `A326400.P10409424007396242524` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326400 has offset 1).

The definition of A326400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326400.P10409424007396242524

`A078708(n+1)-A326399(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326400

/-- `A078708(n+1)-A326399(n+1)` -/
def P10409424007396242524.Spec : Prop :=
  ∀ n, P10409424007396242524.a n = A326400 (n + 1)

theorem P10409424007396242524.correct : P10409424007396242524.Spec := by
  intro n
  simp only [A326400, Nat.add_sub_cancel]

end A326400

/-! ## A326400.P18054941161687236887

`A326399(n+1)-A326401(n+1)`
-/

namespace A326400.P18054941161687236887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1) - A326401 (n + 1)

end

end A326400.P18054941161687236887

namespace A326400

/-- `A326399(n+1)-A326401(n+1)` -/
def P18054941161687236887.Spec : Prop :=
  ∀ n, P18054941161687236887.a n = A326400 (n + 1)

theorem P18054941161687236887.correct : P18054941161687236887.Spec := by
  intro n
  simp only [A326400, Nat.add_sub_cancel, A326400.P18054941161687236887.a, A326400.P10409424007396242524.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A326401, A326401.P8847676069389999364.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326400

/-! ## A326400.P5519308127453180540

`(A078708(n+1)-A326401(n+1))/2`
-/

namespace A326400.P5519308127453180540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078708 (n + 1) - A326401 (n + 1) : ℚ) / 2

end

end A326400.P5519308127453180540

namespace A326400

/-- `(A078708(n+1)-A326401(n+1))/2` -/
def P5519308127453180540.Spec : Prop :=
  ∀ n, P5519308127453180540.a n = (A326400 (n + 1) : ℚ)

theorem P5519308127453180540.correct : P5519308127453180540.Spec := by
  intro n
  simp only [A326400, Nat.add_sub_cancel, A326400.P5519308127453180540.a, A326400.P10409424007396242524.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A326401, A326401.P8847676069389999364.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326400

/-! ## A326400.P6758650311461495665

`∑{d}[n+1, A000010(#)*A001822((n+1)/#)]`
-/

namespace A326400.P6758650311461495665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326400.P6758650311461495665

namespace A326400

/-- `∑{d}[n+1, A000010(#)*A001822((n+1)/#)]` -/
def P6758650311461495665.Spec : Prop :=
  ∀ n, P6758650311461495665.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P10824941925565573440

`∑{d}[n+1, A162728(#)*A364205((n+1)/#)]`
-/

namespace A326400.P10824941925565573440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A364205 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326400.P10824941925565573440

namespace A326400

/-- `∑{d}[n+1, A162728(#)*A364205((n+1)/#)]` -/
def P10824941925565573440.Spec : Prop :=
  ∀ n, P10824941925565573440.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P11883308691275978675

`A078708(n+1)-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]`
-/

namespace A326400.P11883308691275978675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326400.P11883308691275978675

namespace A326400

/-- `A078708(n+1)-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]` -/
def P11883308691275978675.Spec : Prop :=
  ∀ n, P11883308691275978675.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P9320478865405563672

`∑{d}[n+1, A000010(#)*A001817((n+1)/#)]-A326401(n+1)`
-/

namespace A326400.P9320478865405563672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A326401 (n + 1)

end

end A326400.P9320478865405563672

namespace A326400

/-- `∑{d}[n+1, A000010(#)*A001817((n+1)/#)]-A326401(n+1)` -/
def P9320478865405563672.Spec : Prop :=
  ∀ n, P9320478865405563672.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P1164098199484922327

`∑{d}[n+1, A000010(#)*A001817((n+1)/#)]-∑{d}[n+1, #*A049347((n+1)/#-1)]`
-/

namespace A326400.P1164098199484922327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A049347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326400.P1164098199484922327

namespace A326400

/-- `∑{d}[n+1, A000010(#)*A001817((n+1)/#)]-∑{d}[n+1, #*A049347((n+1)/#-1)]` -/
def P1164098199484922327.Spec : Prop :=
  ∀ n, P1164098199484922327.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P5453103007849707420

`∑{d}[n+1, A186101(#)]-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]`
-/

namespace A326400.P5453103007849707420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186101 d - ∑ d ∈ Nat.divisors (f2 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326400.P5453103007849707420

namespace A326400

/-- `∑{d}[n+1, A186101(#)]-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]` -/
def P5453103007849707420.Spec : Prop :=
  ∀ n, P5453103007849707420.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P12865877218488417042

`∑{d}[n+1, #*A011655((n+1)/#)]-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]`
-/

namespace A326400.P12865877218488417042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ∑ d ∈ Nat.divisors (f2 n), A000010 d * A001817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326400.P12865877218488417042

namespace A326400

/-- `∑{d}[n+1, #*A011655((n+1)/#)]-∑{d}[n+1, A000010(#)*A001817((n+1)/#)]` -/
def P12865877218488417042.Spec : Prop :=
  ∀ n, P12865877218488417042.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P2174160323679982173

`A001281(A078708(n+1)-A326401(n+1))`
-/

namespace A326400.P2174160323679982173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A078708 (n + 1) - A326401 (n + 1)).toNat

end

end A326400.P2174160323679982173

namespace A326400

/-- `A001281(A078708(n+1)-A326401(n+1))` -/
def P2174160323679982173.Spec : Prop :=
  ∀ n, P2174160323679982173.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P2949845421830487419

`A004526(A078708(n+1)-A326401(n+1))`
-/

namespace A326400.P2949845421830487419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078708 (n + 1) - A326401 (n + 1)).toNat

end

end A326400.P2949845421830487419

namespace A326400

/-- `A004526(A078708(n+1)-A326401(n+1))` -/
def P2949845421830487419.Spec : Prop :=
  ∀ n, P2949845421830487419.a n = A326400 (n + 1)

end A326400

/-! ## A326400.P18210649676419210534

`A006370(A078708(n+1)-A326401(n+1))`
-/

namespace A326400.P18210649676419210534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A078708 (n + 1) - A326401 (n + 1)).toNat

end

end A326400.P18210649676419210534

namespace A326400

/-- `A006370(A078708(n+1)-A326401(n+1))` -/
def P18210649676419210534.Spec : Prop :=
  ∀ n, P18210649676419210534.a n = A326400 (n + 1)

end A326400

/-!
# A326401: Expansion of Sum_{k>=1} k * x^k / (1 + x^k + x^(2*k)).

The programs for A326401, the canonical program `A326401.P8847676069389999364` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326401 has offset 1).

The definition of A326401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326399, A326400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326401.P8847676069389999364

`A326399(n+1)-A326400(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A326401

/-- `A326399(n+1)-A326400(n+1)` -/
def P8847676069389999364.Spec : Prop :=
  ∀ n, P8847676069389999364.a n = A326401 (n + 1)

theorem P8847676069389999364.correct : P8847676069389999364.Spec := by
  intro n
  simp only [A326401, Nat.add_sub_cancel]

end A326401

/-! ## A326401.P3560519222610580528

`∑{d}[n+1, #*A049347((n+1)/#-1)]`
-/

namespace A326401.P3560519222610580528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A049347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326401.P3560519222610580528

namespace A326401

/-- `∑{d}[n+1, #*A049347((n+1)/#-1)]` -/
def P3560519222610580528.Spec : Prop :=
  ∀ n, P3560519222610580528.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P18139105473923718938

`2*A326399(n+1)-A078708(n+1)`
-/

namespace A326401.P18139105473923718938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326399 (n + 1) - A078708 (n + 1)

end

end A326401.P18139105473923718938

namespace A326401

/-- `2*A326399(n+1)-A078708(n+1)` -/
def P18139105473923718938.Spec : Prop :=
  ∀ n, P18139105473923718938.a n = A326401 (n + 1)

theorem P18139105473923718938.correct : P18139105473923718938.Spec := by
  intro n
  simp only [A326401, Nat.add_sub_cancel, A326401.P18139105473923718938.a, A326401.P8847676069389999364.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A326400, A326400.P10409424007396242524.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326401

/-! ## A326401.P10415388490066963125

`A078708(n+1)-2*A326400(n+1)`
-/

namespace A326401.P10415388490066963125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n + 1) - 2 * A326400 (n + 1)

end

end A326401.P10415388490066963125

namespace A326401

/-- `A078708(n+1)-2*A326400(n+1)` -/
def P10415388490066963125.Spec : Prop :=
  ∀ n, P10415388490066963125.a n = A326401 (n + 1)

theorem P10415388490066963125.correct : P10415388490066963125.Spec := by
  intro n
  simp only [A326401, Nat.add_sub_cancel, A326401.P10415388490066963125.a, A326401.P8847676069389999364.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A326400, A326400.P10409424007396242524.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326401

/-! ## A326401.P7114928610779106418

`∑{d}[n+1, A000010(#)*A002324((n+1)/#)]`
-/

namespace A326401.P7114928610779106418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A002324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P7114928610779106418

namespace A326401

/-- `∑{d}[n+1, A000010(#)*A002324((n+1)/#)]` -/
def P7114928610779106418.Spec : Prop :=
  ∀ n, P7114928610779106418.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P5676763502973410141

`∑{d}[n+1, A062570(#)*A093829((n+1)/#)]`
-/

namespace A326401.P5676763502973410141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A093829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P5676763502973410141

namespace A326401

/-- `∑{d}[n+1, A062570(#)*A093829((n+1)/#)]` -/
def P5676763502973410141.Spec : Prop :=
  ∀ n, P5676763502973410141.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P611652751712129105

`∑{d}[n+1, A000086(#)*A206369((n+1)/#)]`
-/

namespace A326401.P611652751712129105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000086 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P611652751712129105

namespace A326401

/-- `∑{d}[n+1, A000086(#)*A206369((n+1)/#)]` -/
def P611652751712129105.Spec : Prop :=
  ∀ n, P611652751712129105.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P18330646193474977125

`∑{d}[n+1, A122860(#)*A162728((n+1)/#)]`
-/

namespace A326401.P18330646193474977125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122860 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P18330646193474977125

namespace A326401

/-- `∑{d}[n+1, A122860(#)*A162728((n+1)/#)]` -/
def P18330646193474977125.Spec : Prop :=
  ∀ n, P18330646193474977125.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P3530218551220569068

`∑{d}[n+1, A154269(#)*A326575((n+1)/#)]`
-/

namespace A326401.P3530218551220569068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A326575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P3530218551220569068

namespace A326401

/-- `∑{d}[n+1, A154269(#)*A326575((n+1)/#)]` -/
def P3530218551220569068.Spec : Prop :=
  ∀ n, P3530218551220569068.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P14337238166589366986

`∑{d}[n+1, #*A102283((n+1)/#)]`
-/

namespace A326401.P14337238166589366986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A102283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P14337238166589366986

namespace A326401

/-- `∑{d}[n+1, #*A102283((n+1)/#)]` -/
def P14337238166589366986.Spec : Prop :=
  ∀ n, P14337238166589366986.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P7510298636041848416

`∑{d}[n+1, #*A106510((n+1)/#)]`
-/

namespace A326401.P7510298636041848416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A106510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P7510298636041848416

namespace A326401

/-- `∑{d}[n+1, #*A106510((n+1)/#)]` -/
def P7510298636041848416.Spec : Prop :=
  ∀ n, P7510298636041848416.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P10435514726540810621

`∑{d}[n+1, A186101(#)*A343785((n+1)/#)]`
-/

namespace A326401.P10435514726540810621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186101 d * A343785 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326401.P10435514726540810621

namespace A326401

/-- `∑{d}[n+1, A186101(#)*A343785((n+1)/#)]` -/
def P10435514726540810621.Spec : Prop :=
  ∀ n, P10435514726540810621.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P18138240841938104246

`A364012(2*(n+1))-A364012(n+1)`
-/

namespace A326401.P18138240841938104246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (2 * (n + 1)) - A364012 (n + 1)

end

end A326401.P18138240841938104246

namespace A326401

/-- `A364012(2*(n+1))-A364012(n+1)` -/
def P18138240841938104246.Spec : Prop :=
  ∀ n, P18138240841938104246.a n = A326401 (n + 1)

end A326401

/-! ## A326401.P17196273731692509480

`A364015(2*(n+1))-A364015(n+1)`
-/

namespace A326401.P17196273731692509480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364015 (2 * (n + 1)) - A364015 (n + 1)

end

end A326401.P17196273731692509480

namespace A326401

/-- `A364015(2*(n+1))-A364015(n+1)` -/
def P17196273731692509480.Spec : Prop :=
  ∀ n, P17196273731692509480.a n = A326401 (n + 1)

end A326401

/-!
# A326402: Record high values in A326344.

The programs for A326402, there is no canonical definition to state claims against.
-/

/-! ## A326402.P12015304766318636636

`A326344(A326298(n+1))`
-/

namespace A326402.P12015304766318636636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326344 (A326298 (n + 1)).toNat

end

end A326402.P12015304766318636636

/-! ## A326402.P7061687619332967171

`record[A326344(n+1)]`
-/

namespace A326402.P7061687619332967171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326402.P7061687619332967171

/-! ## A326402.P2279940654087721120

`A000027(record[A326344(Δ[n²]-n)])`
-/

namespace A326402.P2279940654087721120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326344 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326402.P2279940654087721120

/-! ## A326402.P7240695795587714021

`A097807(n)²*record[A326344(Δ[n²]-n)]`
-/

namespace A326402.P7240695795587714021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326344 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326402.P7240695795587714021

/-! ## A326402.P14100016722382017404

`record[A326344(Δ[n²]-n)]%A016839(3*n)`
-/

namespace A326402.P14100016722382017404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326344 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016839 (3 * n))

end

end A326402.P14100016722382017404

/-!
# A326403: Numbers k such that iphi(k) = iphi(k+1), where iphi(k) is an infinitary analog to the Euler totient function (A091732).

The programs for A326403, there is no canonical definition to state claims against.
-/

/-! ## A326403.P5379070053598555376

`eq[A091732(n+1), A091732(n+2)]+1`
-/

namespace A326403.P5379070053598555376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A326403.P5379070053598555376

/-! ## A326403.P11894126103750885644

`A287055(lt[A176837(n+1), A206914(n)])`
-/

namespace A326403.P11894126103750885644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287055 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326403.P11894126103750885644

/-! ## A326403.P769001237509832496

`A287055(A004709(n+1)^A321167(2*n+3)²)`
-/

namespace A326403.P769001237509832496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287055 (SequenceMachineLib.roundAway ((A004709 (n + 1) : ℚ) ^ (A321167 (2 * n + 3) ^ 2 : ℤ))).toNat

end

end A326403.P769001237509832496

/-! ## A326403.P1516883298459786194

`A287055(A004709(n+1))^A295657(A000041(3*n+1))`
-/

namespace A326403.P1516883298459786194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287055 (A004709 (n + 1)).toNat : ℚ) ^ (A295657 (A000041 (3 * n + 1)).toNat : ℤ)

end

end A326403.P1516883298459786194

/-! ## A326403.P1013620426448224742

`A287055(A180499(n+1)-(n+1)^3)^A295657(A000041(3*n+1))`
-/

namespace A326403.P1013620426448224742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287055 (A180499 (n + 1) - ((n + 1) ^ 3 : ℤ)).toNat : ℚ) ^ (A295657 (A000041 (3 * n + 1)).toNat : ℤ)

end

end A326403.P1013620426448224742

/-!
# A326404: Triangle T(n,k) read by rows: T(n,k) = number of ways of seating n people around a table for the second time so that k pairs are maintained. Rotated sequences are counted as one.

The programs for A326404, there is no canonical definition to state claims against.
-/

/-! ## A326404.P7078418752036951966

`A211665(n+1)*A326411(n)`
-/

namespace A326404.P7078418752036951966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211665 (n + 1) * A326411 n

end

end A326404.P7078418752036951966

/-! ## A326404.P14672777467501946550

`A237684(n+1)*A326411(n)`
-/

namespace A326404.P14672777467501946550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237684 (n + 1) * A326411 n

end

end A326404.P14672777467501946550

/-! ## A326404.P5382210161124013398

`ceil(A326390(n)/A003056(n+1))`
-/

namespace A326404.P5382210161124013398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326390 n : ℚ) / (A003056 (n + 1) : ℚ)⌉

end

end A326404.P5382210161124013398

/-! ## A326404.P4978076866998650455

`round(A326390(n)/∑[A010054(n+1)])`
-/

namespace A326404.P4978076866998650455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326390 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A326404.P4978076866998650455

/-! ## A326404.P18081708648983726157

`A046698(A006949(n))*A326411(n)`
-/

namespace A326404.P18081708648983726157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A006949 n).toNat * A326411 n

end

end A326404.P18081708648983726157

/-! ## A326404.P8929411236078928003

`A046698(A008611(n))*A326411(n)`
-/

namespace A326404.P8929411236078928003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A008611 n).toNat * A326411 n

end

end A326404.P8929411236078928003

/-! ## A326404.P921103050184315070

`A046698(A008621(n))*A326411(n)`
-/

namespace A326404.P921103050184315070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A008621 n).toNat * A326411 n

end

end A326404.P921103050184315070

/-! ## A326404.P3488028152086419407

`A034258(A070939(n))*A326411(n)`
-/

namespace A326404.P3488028152086419407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034258 (A070939 n).toNat * A326411 n

end

end A326404.P3488028152086419407

/-! ## A326404.P8388521919844419392

`A326411(n)*A329683(A000196(n))`
-/

namespace A326404.P8388521919844419392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326411 n * A329683 (A000196 n).toNat

end

end A326404.P8388521919844419392

/-! ## A326404.P2429627490559759074

`A326411(n)*A329683(A003056(n))`
-/

namespace A326404.P2429627490559759074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326411 n * A329683 (A003056 n).toNat

end

end A326404.P2429627490559759074

/-! ## A326404.P9281575762265462840

`A262190(A100637(n))*A326411(n)`
-/

namespace A326404.P9281575762265462840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A100637 n).toNat * A326411 n

end

end A326404.P9281575762265462840

/-! ## A326404.P5346695619625542263

`A326390(n)/A028310(A003056(n))`
-/

namespace A326404.P5346695619625542263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A028310 (A003056 n).toNat : ℚ)

end

end A326404.P5346695619625542263

/-! ## A326404.P696977394187244954

`A020639(A010554(n+1))*A326411(n)`
-/

namespace A326404.P696977394187244954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010554 (n + 1)).toNat * A326411 n

end

end A326404.P696977394187244954

/-! ## A326404.P15204455097480042864

`A001227(A056813(n+1))*A326411(n)`
-/

namespace A326404.P15204455097480042864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A056813 (n + 1)).toNat * A326411 n

end

end A326404.P15204455097480042864

/-! ## A326404.P11978488395529154811

`A326390(n)/A000005(A113402(n+1))`
-/

namespace A326404.P11978488395529154811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A000005 (A113402 (n + 1)).toNat : ℚ)

end

end A326404.P11978488395529154811

/-! ## A326404.P1244810333700962717

`A326411(n)+A326411(n)%A115205(n)`
-/

namespace A326404.P1244810333700962717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326411 n + Int.tmod (A326411 n) (A115205 n)

end

end A326404.P1244810333700962717

/-! ## A326404.P7851138548601792217

`A326390(n)/A028310(A002024(n+1)-1)`
-/

namespace A326404.P7851138548601792217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A028310 (A002024 (n + 1) - 1).toNat : ℚ)

end

end A326404.P7851138548601792217

/-! ## A326404.P16150681294434513389

`A326390(n)/(A002024(n+1)-A057427(n))`
-/

namespace A326404.P16150681294434513389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326390 n : ℚ) / (A002024 (n + 1) - A057427 n : ℚ)

end

end A326404.P16150681294434513389

/-! ## A326404.P4324923253253177930

`A046698(A065033(A065033(n)))*A326411(n)`
-/

namespace A326404.P4324923253253177930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A065033 (A065033 n).toNat).toNat * A326411 n

end

end A326404.P4324923253253177930

/-!
# A326410: Minesweeper sequence of positive integers arranged on a square spiral on a 2D grid.

The programs for A326410, there is no canonical definition to state claims against.
-/

/-! ## A326410.P16097374355234055629

`or(Δ[-A230980(n)], A136626(n+1))`
-/

namespace A326410.P16097374355234055629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A136626 (n + 1))

end

end A326410.P16097374355234055629

/-! ## A326410.P13752050068181806289

`or(Δ[-A230980(n)], A136627(n+1))`
-/

namespace A326410.P13752050068181806289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A136627 (n + 1))

end

end A326410.P13752050068181806289

/-! ## A326410.P15907673594474419922

`or(-A010051(n+1), A136626(n+1))`
-/

namespace A326410.P15907673594474419922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A010051 (n + 1)) (A136626 (n + 1))

end

end A326410.P15907673594474419922

/-! ## A326410.P17592984324265234919

`or(-A010051(n+1), A136627(n+1))`
-/

namespace A326410.P17592984324265234919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A010051 (n + 1)) (A136627 (n + 1))

end

end A326410.P17592984324265234919

/-! ## A326410.P3478508088352971760

`or(-char[A006093(n+1)], A136627(n+1))`
-/

namespace A326410.P3478508088352971760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A136627 (n + 1))

end

end A326410.P3478508088352971760

/-! ## A326410.P17262513208803213736

`or(-char[A057237(n+1)], A136627(n+1))`
-/

namespace A326410.P17262513208803213736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A136627 (n + 1))

end

end A326410.P17262513208803213736

/-! ## A326410.P4169994517312668445

`or(A136626(n+1), A159075(A240545(n)))`
-/

namespace A326410.P4169994517312668445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136626 (n + 1)) (A159075 (A240545 n).toNat)

end

end A326410.P4169994517312668445

/-! ## A326410.P7569243999037019122

`or(A136627(n+1), A159075(A240545(n)))`
-/

namespace A326410.P7569243999037019122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136627 (n + 1)) (A159075 (A240545 n).toNat)

end

end A326410.P7569243999037019122

/-! ## A326410.P13206804747629540300

`or(A136626(n+1), A159075(A001222(n+1)))`
-/

namespace A326410.P13206804747629540300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136626 (n + 1)) (A159075 (A001222 (n + 1)).toNat)

end

end A326410.P13206804747629540300

/-! ## A326410.P7244186901122321541

`or(A136626(n+1), A159075(A008481(n+1)))`
-/

namespace A326410.P7244186901122321541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136626 (n + 1)) (A159075 (A008481 (n + 1)).toNat)

end

end A326410.P7244186901122321541

/-! ## A326410.P8586962645031853579

`or(A136627(n+1), A159075(A008481(n+1)))`
-/

namespace A326410.P8586962645031853579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136627 (n + 1)) (A159075 (A008481 (n + 1)).toNat)

end

end A326410.P8586962645031853579

/-! ## A326410.P1979256586965142254

`or(A159075(n)-A010051(n+1), A136627(n+1))`
-/

namespace A326410.P1979256586965142254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159075 n - A010051 (n + 1)) (A136627 (n + 1))

end

end A326410.P1979256586965142254

/-! ## A326410.P4487627127890441721

`A136626(n+1)-A010051(n+1)*A136627(n+1)`
-/

namespace A326410.P4487627127890441721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) - A010051 (n + 1) * A136627 (n + 1)

end

end A326410.P4487627127890441721

/-!
# A326411: Triangle T(n,k) read by rows: T(n,k) = the number of ways of seating n people around a table for the second time so that k pairs are maintained. Reflected and rotated sequences are counted as one.

The programs for A326411, there is no canonical definition to state claims against.
-/

/-! ## A326411.P10873889618283936613

`ceil(A326404(n)/2)`
-/

namespace A326411.P10873889618283936613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326404 n : ℚ) / 2⌉

end

end A326411.P10873889618283936613

/-! ## A326411.P3004410468401607517

`round(A326404(n)/A329683(n))`
-/

namespace A326411.P3004410468401607517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (A329683 n : ℚ))

end

end A326411.P3004410468401607517

/-! ## A326411.P17722613492576175892

`A326404(n)/A211665(n+1)`
-/

namespace A326411.P17722613492576175892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A211665 (n + 1) : ℚ)

end

end A326411.P17722613492576175892

/-! ## A326411.P13387036318949624128

`A326404(n)/A237684(n+1)`
-/

namespace A326411.P13387036318949624128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A237684 (n + 1) : ℚ)

end

end A326411.P13387036318949624128

/-! ## A326411.P7944810919286888660

`round(A326404(n)/A036453(n+1))`
-/

namespace A326411.P7944810919286888660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A326411.P7944810919286888660

/-! ## A326411.P9886220461336456651

`round(A326404(n)/(2-A000007(n)))`
-/

namespace A326411.P9886220461336456651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (2 - A000007 n : ℚ))

end

end A326411.P9886220461336456651

/-! ## A326411.P3940835923923204483

`round(A326404(n)/A040001(2*n))`
-/

namespace A326411.P3940835923923204483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (A040001 (2 * n) : ℚ))

end

end A326411.P3940835923923204483

/-! ## A326411.P86395460431824452

`round(A326404(n)/2*A000038(n)!)`
-/

namespace A326411.P86395460431824452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / 2 * (Nat.factorial (A000038 n).toNat : ℚ))

end

end A326411.P86395460431824452

/-! ## A326411.P11517567874049417069

`round(A326404(n)/A000034(2*n+1))`
-/

namespace A326411.P11517567874049417069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (A000034 (2 * n + 1) : ℚ))

end

end A326411.P11517567874049417069

/-! ## A326411.P9745073444588231545

`round(A326404(n)/gcd(2, A030143(n+1)))`
-/

namespace A326411.P9745073444588231545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (Int.gcd 2 (A030143 (n + 1)) : ℚ))

end

end A326411.P9745073444588231545

/-! ## A326411.P14382720468194726652

`A326404(n)/A046698(A006949(n))`
-/

namespace A326411.P14382720468194726652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A046698 (A006949 n).toNat : ℚ)

end

end A326411.P14382720468194726652

/-! ## A326411.P47207708217560067

`A326404(n)/A046698(A008621(n))`
-/

namespace A326411.P47207708217560067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A046698 (A008621 n).toNat : ℚ)

end

end A326411.P47207708217560067

/-! ## A326411.P8901859674772209384

`A326404(n)/A329683(A000196(n))`
-/

namespace A326411.P8901859674772209384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A329683 (A000196 n).toNat : ℚ)

end

end A326411.P8901859674772209384

/-! ## A326411.P10350562182838924715

`A326404(n)/A348674(A100637(n))`
-/

namespace A326411.P10350562182838924715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A348674 (A100637 n).toNat : ℚ)

end

end A326411.P10350562182838924715

/-! ## A326411.P11366769021814020820

`round(A326397(n)/A028310(A003056(n)))`
-/

namespace A326411.P11366769021814020820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326397 n : ℚ) / (A028310 (A003056 n).toNat : ℚ))

end

end A326411.P11366769021814020820

/-! ## A326411.P5975368456840673444

`round(A326404(n)/A020639(A315216(n)))`
-/

namespace A326411.P5975368456840673444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326404 n : ℚ) / (A020639 (A315216 n).toNat : ℚ))

end

end A326411.P5975368456840673444

/-! ## A326411.P14103488747659038528

`A326404(n)/A020639(A010554(n+1))`
-/

namespace A326411.P14103488747659038528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326404 n : ℚ) / (A020639 (A010554 (n + 1)).toNat : ℚ)

end

end A326411.P14103488747659038528

/-! ## A326411.P8425590479896260835

`round(A000122(A000040(n+1))+A326404(n)/2)`
-/

namespace A326411.P8425590479896260835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000122 (A000040 (n + 1)).toNat : ℚ) + (A326404 n : ℚ) / 2)

end

end A326411.P8425590479896260835

/-!
# A326412: Number of inversion sequences of length n where all consecutive subsequences i,j,k satisfy i >= j <= k or i <= j >= k.

The programs for A326412, there is no canonical definition to state claims against.
-/

/-! ## A326412.P4240675609591920336

`A243283(∑[∑[A053871(n)]])`
-/

namespace A326412.P4240675609591920336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326412.P4240675609591920336

/-! ## A326412.P3435176108102117577

`A054899(11*A048192(n+1))`
-/

namespace A326412.P3435176108102117577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (11 * A048192 (n + 1)).toNat

end

end A326412.P3435176108102117577

/-! ## A326412.P16040169798267320217

`A008616(ceil(8*sqrt(A363529(n))))`
-/

namespace A326412.P16040169798267320217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ⌈8 * Real.sqrt (A363529 n : ℝ)⌉.toNat

end

end A326412.P16040169798267320217

/-!
# A326413: Successive squares visited by a knight on the single-digit square spiral, with ties resolved towards the left.

The programs for A326413, there is no canonical definition to state claims against.
-/

/-! ## A326413.P64176118973857075

`A329171(n)/ceil(A228202(n+1)/98)`
-/

namespace A326413.P64176118973857075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329171 n : ℚ) / (⌈(A228202 (n + 1) : ℚ) / 98⌉ : ℚ)

end

end A326413.P64176118973857075

/-! ## A326413.P13426492525385154391

`gcd(A185246(A241069(n)), A326918(n))`
-/

namespace A326413.P13426492525385154391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185246 (A241069 n).toNat) (A326918 n)

end

end A326413.P13426492525385154391

/-! ## A326413.P11058316427909426453

`A326918(n)/A178334(A228202(n+1))`
-/

namespace A326413.P11058316427909426453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326918 n : ℚ) / (A178334 (A228202 (n + 1)).toNat : ℚ)

end

end A326413.P11058316427909426453

/-! ## A326413.P9900375131596605473

`A329171(n)/A178334(A228202(n+1))`
-/

namespace A326413.P9900375131596605473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329171 n : ℚ) / (A178334 (A228202 (n + 1)).toNat : ℚ)

end

end A326413.P9900375131596605473

/-! ## A326413.P1757183526372952791

`A329171(C(2, n²)+n)-A178334(A228202(n+1))+1`
-/

namespace A326413.P1757183526372952791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329171 (Nat.choose 2 (n ^ 2) + n) - A178334 (A228202 (n + 1)).toNat + 1

end

end A326413.P1757183526372952791

/-! ## A326413.P10313404392099013071

`A007376(A326916(n))/A178334(A228202(n+1))`
-/

namespace A326413.P10313404392099013071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A326916 n).toNat : ℚ) / (A178334 (A228202 (n + 1)).toNat : ℚ)

end

end A326413.P10313404392099013071

/-! ## A326413.P16814995498561680779

`A326918(A028310(n))-A178334(A228202(n+1))+1`
-/

namespace A326413.P16814995498561680779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 (A028310 n).toNat - A178334 (A228202 (n + 1)).toNat + 1

end

end A326413.P16814995498561680779

/-! ## A326413.P17141690720246308684

`A326918(A151810(n)+n)`
-/

namespace A326413.P17141690720246308684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 (A151810 n + (n : ℤ)).toNat

end

end A326413.P17141690720246308684

/-! ## A326413.P9954326718431461154

`A329171(A151810(n)+n)`
-/

namespace A326413.P9954326718431461154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329171 (A151810 n + (n : ℤ)).toNat

end

end A326413.P9954326718431461154

/-! ## A326413.P1655590761007040943

`A329171(n)^A040533(n)²`
-/

namespace A326413.P1655590761007040943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329171 n : ℚ) ^ (A040533 n ^ 2 : ℤ)

end

end A326413.P1655590761007040943

/-!
# A326415: Dirichlet g.f.: zeta(2*s) / zeta(s)^3.

The programs for A326415, the canonical program `A326415.P3514450629391365891` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326415 has offset 1).

The definition of A326415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326415.P18118822252665442836

`∑{d}[n+1, A007427(#)*A008836((n+1)/#)]`
-/

namespace A326415.P18118822252665442836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P18118822252665442836

namespace A326415

/-- `∑{d}[n+1, A007427(#)*A008836((n+1)/#)]` -/
def P18118822252665442836.Spec : Prop :=
  ∀ n, P18118822252665442836.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P11970703871713481258

`∑{d}[n+1, A007428(#)*A010052((n+1)/#)]`
-/

namespace A326415.P11970703871713481258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P11970703871713481258

namespace A326415

/-- `∑{d}[n+1, A007428(#)*A010052((n+1)/#)]` -/
def P11970703871713481258.Spec : Prop :=
  ∀ n, P11970703871713481258.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P3514450629391365891

`∑{d}[n+1, A046692(#)*A074722((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A326415

/-- `∑{d}[n+1, A046692(#)*A074722((n+1)/#)]` -/
def P3514450629391365891.Spec : Prop :=
  ∀ n, P3514450629391365891.a n = A326415 (n + 1)

theorem P3514450629391365891.correct : P3514450629391365891.Spec := by
  intro n
  simp only [A326415, Nat.add_sub_cancel]

end A326415

/-! ## A326415.P17658245181732998897

`∑{d}[n+1, A008683(#)*A158522((n+1)/#)]`
-/

namespace A326415.P17658245181732998897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P17658245181732998897

namespace A326415

/-- `∑{d}[n+1, A008683(#)*A158522((n+1)/#)]` -/
def P17658245181732998897.Spec : Prop :=
  ∀ n, P17658245181732998897.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P4001763784209999383

`∑{d}[n+1, A046951(#)*A247343((n+1)/#)]`
-/

namespace A326415.P4001763784209999383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P4001763784209999383

namespace A326415

/-- `∑{d}[n+1, A046951(#)*A247343((n+1)/#)]` -/
def P4001763784209999383.Spec : Prop :=
  ∀ n, P4001763784209999383.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P7990793328779149568

`∑{d}[n+1, A007431(#)*A323363((n+1)/#)]`
-/

namespace A326415.P7990793328779149568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P7990793328779149568

namespace A326415

/-- `∑{d}[n+1, A007431(#)*A323363((n+1)/#)]` -/
def P7990793328779149568.Spec : Prop :=
  ∀ n, P7990793328779149568.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P13923323863681713065

`∑{d}[n+1, A124315(#)*A341831((n+1)/#)]`
-/

namespace A326415.P13923323863681713065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P13923323863681713065

namespace A326415

/-- `∑{d}[n+1, A124315(#)*A341831((n+1)/#)]` -/
def P13923323863681713065.Spec : Prop :=
  ∀ n, P13923323863681713065.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P9573046740643146814

`∑{d}[n+1, A143275(#)*A347092((n+1)/#)]`
-/

namespace A326415.P9573046740643146814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P9573046740643146814

namespace A326415

/-- `∑{d}[n+1, A143275(#)*A347092((n+1)/#)]` -/
def P9573046740643146814.Spec : Prop :=
  ∀ n, P9573046740643146814.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P3130153009662750570

`∑{d}[n+1, A307445(#)*A329484((n+1)/#)]`
-/

namespace A326415.P3130153009662750570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P3130153009662750570

namespace A326415

/-- `∑{d}[n+1, A307445(#)*A329484((n+1)/#)]` -/
def P3130153009662750570.Spec : Prop :=
  ∀ n, P3130153009662750570.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P1659427657770043265

`∑{d}[n+1, A321322(#)*A328639((n+1)/#)]`
-/

namespace A326415.P1659427657770043265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P1659427657770043265

namespace A326415

/-- `∑{d}[n+1, A321322(#)*A328639((n+1)/#)]` -/
def P1659427657770043265.Spec : Prop :=
  ∀ n, P1659427657770043265.a n = A326415 (n + 1)

end A326415

/-! ## A326415.P9230722533677836967

`∑{d}[n+1, A355837(#)*A390490((n+1)/#)]`
-/

namespace A326415.P9230722533677836967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P9230722533677836967

namespace A326415

/-- `∑{d}[n+1, A355837(#)*A390490((n+1)/#)]` -/
def P9230722533677836967.Spec : Prop :=
  ∀ n, P9230722533677836967.a n = A326415 (n + 1)

end A326415

/-!
# A326417: Dirichlet g.f.: zeta(s)^4 * (1 - 2^(-s)).

The programs for A326417, the canonical program `A326417.P3226228404223211668` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326417 has offset 1).

The definition of A326417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326417.P3226228404223211668

`∑{d}[n+1, A133700(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A326417

/-- `∑{d}[n+1, A133700(#)]` -/
def P3226228404223211668.Spec : Prop :=
  ∀ n, P3226228404223211668.a n = A326417 (n + 1)

theorem P3226228404223211668.correct : P3226228404223211668.Spec := by
  intro n
  simp only [A326417, Nat.add_sub_cancel]

end A326417

/-! ## A326417.P11316366788851219890

`∑{d}[n+1, A000005(#)*A001227((n+1)/#)]`
-/

namespace A326417.P11316366788851219890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A001227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P11316366788851219890

namespace A326417

/-- `∑{d}[n+1, A000005(#)*A001227((n+1)/#)]` -/
def P11316366788851219890.Spec : Prop :=
  ∀ n, P11316366788851219890.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P7431206010507027122

`∑{d}[n+1, A061200(#)*A092673((n+1)/#)]`
-/

namespace A326417.P7431206010507027122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P7431206010507027122

namespace A326417

/-- `∑{d}[n+1, A061200(#)*A092673((n+1)/#)]` -/
def P7431206010507027122.Spec : Prop :=
  ∀ n, P7431206010507027122.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P5637842267065969648

`∑{d}[n+1, A007426(#)*A154955((n+1)/#)]`
-/

namespace A326417.P5637842267065969648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P5637842267065969648

namespace A326417

/-- `∑{d}[n+1, A007426(#)*A154955((n+1)/#)]` -/
def P5637842267065969648.Spec : Prop :=
  ∀ n, P5637842267065969648.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P16351157935089298987

`∑{d}[n+1, A035116(#)*A143259((n+1)/#)]`
-/

namespace A326417.P16351157935089298987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P16351157935089298987

namespace A326417

/-- `∑{d}[n+1, A035116(#)*A143259((n+1)/#)]` -/
def P16351157935089298987.Spec : Prop :=
  ∀ n, P16351157935089298987.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P711242669446691385

`∑{d}[n+1, A048272(#)*A174238((n+1)/#)]`
-/

namespace A326417.P711242669446691385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A174238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P711242669446691385

namespace A326417

/-- `∑{d}[n+1, A048272(#)*A174238((n+1)/#)]` -/
def P711242669446691385.Spec : Prop :=
  ∀ n, P711242669446691385.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P7292631674636734992

`∑{d}[n+1, A069733(#)*A174273((n+1)/#)]`
-/

namespace A326417.P7292631674636734992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069733 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P7292631674636734992

namespace A326417

/-- `∑{d}[n+1, A069733(#)*A174273((n+1)/#)]` -/
def P7292631674636734992.Spec : Prop :=
  ∀ n, P7292631674636734992.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P2395211474381292980

`∑{d}[n+1, A006519(#)*A288571((n+1)/#)]`
-/

namespace A326417.P2395211474381292980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P2395211474381292980

namespace A326417

/-- `∑{d}[n+1, A006519(#)*A288571((n+1)/#)]` -/
def P2395211474381292980.Spec : Prop :=
  ∀ n, P2395211474381292980.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P15218822875915712759

`∑{d}[n+1, A065704(#)*A275367((n+1)/#)]`
-/

namespace A326417.P15218822875915712759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A275367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P15218822875915712759

namespace A326417

/-- `∑{d}[n+1, A065704(#)*A275367((n+1)/#)]` -/
def P15218822875915712759.Spec : Prop :=
  ∀ n, P15218822875915712759.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P11503342061883391247

`∑{d}[n+1, A035218(#)*A328484((n+1)/#)]`
-/

namespace A326417.P11503342061883391247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035218 d * A328484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P11503342061883391247

namespace A326417

/-- `∑{d}[n+1, A035218(#)*A328484((n+1)/#)]` -/
def P11503342061883391247.Spec : Prop :=
  ∀ n, P11503342061883391247.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P2835129769748613955

`∑{d}[n+1, A048691(#)*A328372((n+1)/#)]`
-/

namespace A326417.P2835129769748613955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A328372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P2835129769748613955

namespace A326417

/-- `∑{d}[n+1, A048691(#)*A328372((n+1)/#)]` -/
def P2835129769748613955.Spec : Prop :=
  ∀ n, P2835129769748613955.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P1549277052138857364

`∑{d}[n+1, A078644(#)*A298735((n+1)/#)]`
-/

namespace A326417.P1549277052138857364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P1549277052138857364

namespace A326417

/-- `∑{d}[n+1, A078644(#)*A298735((n+1)/#)]` -/
def P1549277052138857364.Spec : Prop :=
  ∀ n, P1549277052138857364.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P472115592286373780

`∑{d}[n+1, A053866(#)*A335841((n+1)/#)]`
-/

namespace A326417.P472115592286373780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A335841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326417.P472115592286373780

namespace A326417

/-- `∑{d}[n+1, A053866(#)*A335841((n+1)/#)]` -/
def P472115592286373780.Spec : Prop :=
  ∀ n, P472115592286373780.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P15701340225789998185

`∑{d}[n+1, A007425(#)*A059841((n+1)/#-1)]`
-/

namespace A326417.P15701340225789998185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326417.P15701340225789998185

namespace A326417

/-- `∑{d}[n+1, A007425(#)*A059841((n+1)/#-1)]` -/
def P15701340225789998185.Spec : Prop :=
  ∀ n, P15701340225789998185.a n = A326417 (n + 1)

end A326417

/-! ## A326417.P888144591693960217

`(A318768(A003961(n+1))+A318768(n+1))/2`
-/

namespace A326417.P888144591693960217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (A003961 (n + 1)).toNat + A318768 (n + 1) : ℚ) / 2

end

end A326417.P888144591693960217

namespace A326417

/-- `(A318768(A003961(n+1))+A318768(n+1))/2` -/
def P888144591693960217.Spec : Prop :=
  ∀ n, P888144591693960217.a n = (A326417 (n + 1) : ℚ)

end A326417

/-! ## A326417.P4960542024021842734

`(A318768(n+1)+A318768(A332818(n+1)))/2`
-/

namespace A326417.P4960542024021842734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (n + 1) + A318768 (A332818 (n + 1)).toNat : ℚ) / 2

end

end A326417.P4960542024021842734

namespace A326417

/-- `(A318768(n+1)+A318768(A332818(n+1)))/2` -/
def P4960542024021842734.Spec : Prop :=
  ∀ n, P4960542024021842734.a n = (A326417 (n + 1) : ℚ)

end A326417

/-! ## A326417.P10075700790009286101

`(A318768(A064988(n+1))+A318768(n+1))/2`
-/

namespace A326417.P10075700790009286101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (A064988 (n + 1)).toNat + A318768 (n + 1) : ℚ) / 2

end

end A326417.P10075700790009286101

namespace A326417

/-- `(A318768(A064988(n+1))+A318768(n+1))/2` -/
def P10075700790009286101.Spec : Prop :=
  ∀ n, P10075700790009286101.a n = (A326417 (n + 1) : ℚ)

end A326417

/-! ## A326417.P2986848205458719626

`(A318768(n+1)+A318768(A348746(n+1)))/2`
-/

namespace A326417.P2986848205458719626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (n + 1) + A318768 (A348746 (n + 1)).toNat : ℚ) / 2

end

end A326417.P2986848205458719626

namespace A326417

/-- `(A318768(n+1)+A318768(A348746(n+1)))/2` -/
def P2986848205458719626.Spec : Prop :=
  ∀ n, P2986848205458719626.a n = (A326417 (n + 1) : ℚ)

end A326417

/-! ## A326417.P5931309951641555366

`(A318768(A297002(n+1))+A318768(n+1))/2`
-/

namespace A326417.P5931309951641555366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (A297002 (n + 1)).toNat + A318768 (n + 1) : ℚ) / 2

end

end A326417.P5931309951641555366

namespace A326417

/-- `(A318768(A297002(n+1))+A318768(n+1))/2` -/
def P5931309951641555366.Spec : Prop :=
  ∀ n, P5931309951641555366.a n = (A326417 (n + 1) : ℚ)

end A326417

/-! ## A326417.P1753898058807711149

`(A318768(n+1)+A318768(A354091(n+1)))/2`
-/

namespace A326417.P1753898058807711149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318768 (n + 1) + A318768 (A354091 (n + 1)).toNat : ℚ) / 2

end

end A326417.P1753898058807711149

namespace A326417

/-- `(A318768(n+1)+A318768(A354091(n+1)))/2` -/
def P1753898058807711149.Spec : Prop :=
  ∀ n, P1753898058807711149.a n = (A326417 (n + 1) : ℚ)

end A326417

/-!
# A326418: Nonnegative numbers k such that, in decimal representation, the subsequence of digits of k^2 occupying an odd position is equal to the digits of k.

The programs for A326418, there is no canonical definition to state claims against.
-/

/-! ## A326418.P4015384083929605357

`A018834(n+1)%A004277(A068111(n))`
-/

namespace A326418.P4015384083929605357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018834 (n + 1)) (A004277 (A068111 n).toNat)

end

end A326418.P4015384083929605357

/-! ## A326418.P14639650911406205892

`A029943(n+1)%A004277(A068111(n))`
-/

namespace A326418.P14639650911406205892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029943 (n + 1)) (A004277 (A068111 n).toNat)

end

end A326418.P14639650911406205892

/-! ## A326418.P12235768389252739138

`A018834(n+1)-A221702(A221677(n+1))`
-/

namespace A326418.P12235768389252739138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1) - A221702 (A221677 (n + 1)).toNat

end

end A326418.P12235768389252739138

/-! ## A326418.P6151133917263324606

`∩[A191853(n+1), A074913(n)]`
-/

namespace A326418.P6151133917263324606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326418.P6151133917263324606

/-! ## A326418.P6900747815558325231

`∩[A046829(n+1), A191853(n+1)]`
-/

namespace A326418.P6900747815558325231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326418.P6900747815558325231

/-!
# A326419: a(n) is the number of distinct Horadam sequences of period n.

The programs for A326419, the canonical program `A326419.P9387149327570643325` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326419 has offset 1).

The definition of A326419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326419.P17425576536164935931

`round(1/acot(A102309(n+1)))`
-/

namespace A326419.P17425576536164935931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A102309 (n + 1) : ℝ))

end

end A326419.P17425576536164935931

namespace A326419

/-- `round(1/acot(A102309(n+1)))` -/
def P17425576536164935931.Spec : Prop :=
  ∀ n, P17425576536164935931.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P9387149327570643325

`A102309(A028310(n)+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326419

/-- `A102309(A028310(n)+1)` -/
def P9387149327570643325.Spec : Prop :=
  ∀ n, P9387149327570643325.a n = A326419 (n + 1)

theorem P9387149327570643325.correct : P9387149327570643325.Spec := by
  intro n
  simp only [A326419, Nat.add_sub_cancel]

end A326419

/-! ## A326419.P10503768775737362659

`A102309(n+1)+A000007(n)`
-/

namespace A326419.P10503768775737362659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A000007 n

end

end A326419.P10503768775737362659

namespace A326419

/-- `A102309(n+1)+A000007(n)` -/
def P10503768775737362659.Spec : Prop :=
  ∀ n, P10503768775737362659.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P582366274514440338

`A000741(n+1)+A000010(n+1)`
-/

namespace A326419.P582366274514440338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 1) + A000010 (n + 1)

end

end A326419.P582366274514440338

namespace A326419

/-- `A000741(n+1)+A000010(n+1)` -/
def P582366274514440338.Spec : Prop :=
  ∀ n, P582366274514440338.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P10758552162890700570

`A102309(A010051(2*(n+1))+n+1)`
-/

namespace A326419.P10758552162890700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A010051 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A326419.P10758552162890700570

namespace A326419

/-- `A102309(A010051(2*(n+1))+n+1)` -/
def P10758552162890700570.Spec : Prop :=
  ∀ n, P10758552162890700570.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P13957067235299244145

`∑{d}[n+1, A000124(#-1)*A008683((n+1)/#)]`
-/

namespace A326419.P13957067235299244145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000124 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326419.P13957067235299244145

namespace A326419

/-- `∑{d}[n+1, A000124(#-1)*A008683((n+1)/#)]` -/
def P13957067235299244145.Spec : Prop :=
  ∀ n, P13957067235299244145.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P13954895728940441614

`A102309(n+1)+A322315(A036044(n)+1)-1`
-/

namespace A326419.P13954895728940441614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + (A322315 (A036044 n + 1).toNat - 1)

end

end A326419.P13954895728940441614

namespace A326419

/-- `A102309(n+1)+A322315(A036044(n)+1)-1` -/
def P13954895728940441614.Spec : Prop :=
  ∀ n, P13954895728940441614.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P14875541573636283263

`A000741(n+1)+A005728(n+1)-A005728(n)`
-/

namespace A326419.P14875541573636283263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 1) + (A005728 (n + 1) - A005728 n)

end

end A326419.P14875541573636283263

namespace A326419

/-- `A000741(n+1)+A005728(n+1)-A005728(n)` -/
def P14875541573636283263.Spec : Prop :=
  ∀ n, P14875541573636283263.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P7208880815098501819

`A102309(A254667(n+1))`
-/

namespace A326419.P7208880815098501819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A254667 (n + 1)).toNat

end

end A326419.P7208880815098501819

namespace A326419

/-- `A102309(A254667(n+1))` -/
def P7208880815098501819.Spec : Prop :=
  ∀ n, P7208880815098501819.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P7015271376296396963

`A048240(n+1)-(A000010(n+1)+A000010(n+1))`
-/

namespace A326419.P7015271376296396963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 (n + 1) - (A000010 (n + 1) + A000010 (n + 1))

end

end A326419.P7015271376296396963

namespace A326419

/-- `A048240(n+1)-(A000010(n+1)+A000010(n+1))` -/
def P7015271376296396963.Spec : Prop :=
  ∀ n, P7015271376296396963.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P674846347568916401

`A102309(n+1)+A037213(A020639(2*n+1))`
-/

namespace A326419.P674846347568916401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A037213 (A020639 (2 * n + 1)).toNat

end

end A326419.P674846347568916401

namespace A326419

/-- `A102309(n+1)+A037213(A020639(2*n+1))` -/
def P674846347568916401.Spec : Prop :=
  ∀ n, P674846347568916401.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P15721778757300342243

`A102309(n+1)+A037213(A005117(2*n+1))`
-/

namespace A326419.P15721778757300342243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A037213 (A005117 (2 * n + 1)).toNat

end

end A326419.P15721778757300342243

namespace A326419

/-- `A102309(n+1)+A037213(A005117(2*n+1))` -/
def P15721778757300342243.Spec : Prop :=
  ∀ n, P15721778757300342243.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P14639053511067803983

`A102309(A233583(n+2))`
-/

namespace A326419.P14639053511067803983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A233583 (n + 2)).toNat

end

end A326419.P14639053511067803983

namespace A326419

/-- `A102309(A233583(n+2))` -/
def P14639053511067803983.Spec : Prop :=
  ∀ n, P14639053511067803983.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P1715231800034754036

`A027375(n+1)+A102309(n+1)-A038199(n+1)`
-/

namespace A326419.P1715231800034754036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (n + 1) + (A102309 (n + 1) - A038199 (n + 1))

end

end A326419.P1715231800034754036

namespace A326419

/-- `A027375(n+1)+A102309(n+1)-A038199(n+1)` -/
def P1715231800034754036.Spec : Prop :=
  ∀ n, P1715231800034754036.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P9921349908152191052

`A102309(A049727(A000217(n+1)-n))`
-/

namespace A326419.P9921349908152191052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A049727 (A000217 (n + 1) - (n : ℤ)).toNat).toNat

end

end A326419.P9921349908152191052

namespace A326419

/-- `A102309(A049727(A000217(n+1)-n))` -/
def P9921349908152191052.Spec : Prop :=
  ∀ n, P9921349908152191052.a n = A326419 (n + 1)

end A326419

/-! ## A326419.P10919507159984006845

`A102309(A020921(A000217(n+1))+n+1)`
-/

namespace A326419.P10919507159984006845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A020921 (A000217 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A326419.P10919507159984006845

namespace A326419

/-- `A102309(A020921(A000217(n+1))+n+1)` -/
def P10919507159984006845.Spec : Prop :=
  ∀ n, P10919507159984006845.a n = A326419 (n + 1)

end A326419

/-!
# A326420: Fixed point of the morphism 1->13, 2->132, 3->1322.

The programs for A326420, the canonical program `A326420.P15749464054433305275` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326420 has offset 1).

The definition of A326420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326420.P15749464054433305275

`Δ[A284907(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A326420

/-- `Δ[A284907(n+1)]` -/
def P15749464054433305275.Spec : Prop :=
  ∀ n, P15749464054433305275.a n = A326420 (n + 1)

theorem P15749464054433305275.correct : P15749464054433305275.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel]

end A326420

/-! ## A326420.P16847691398289806086

`Δ[A285347(n+1)]`
-/

namespace A326420.P16847691398289806086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326420.P16847691398289806086

namespace A326420

/-- `Δ[A285347(n+1)]` -/
def P16847691398289806086.Spec : Prop :=
  ∀ n, P16847691398289806086.a n = A326420 (n + 1)

theorem P16847691398289806086.correct : P16847691398289806086.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel, A326420.P16847691398289806086.f1, A326420.P16847691398289806086.a, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, A284907, A284907.P2959481405445577709.a, A285347, A285347.P10878793886673022585.a, A189670, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326420

/-! ## A326420.P1784834874621385447

`Δ[A189670(n+1)]-1`
-/

namespace A326420.P1784834874621385447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A326420.P1784834874621385447

namespace A326420

/-- `Δ[A189670(n+1)]-1` -/
def P1784834874621385447.Spec : Prop :=
  ∀ n, P1784834874621385447.a n = A326420 (n + 1)

theorem P1784834874621385447.correct : P1784834874621385447.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel, A326420.P1784834874621385447.f1, A326420.P1784834874621385447.a, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, A189670, A189670.P13812974504116450926.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326420

/-! ## A326420.P5636683667521537338

`Δ[A285353(n+1)]-1`
-/

namespace A326420.P5636683667521537338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A326420.P5636683667521537338

namespace A326420

/-- `Δ[A285353(n+1)]-1` -/
def P5636683667521537338.Spec : Prop :=
  ∀ n, P5636683667521537338.a n = A326420 (n + 1)

end A326420

/-! ## A326420.P11722406692879885455

`4-Δ[A284906(n+1)]`
-/

namespace A326420.P11722406692879885455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A326420.P11722406692879885455

namespace A326420

/-- `4-Δ[A284906(n+1)]` -/
def P11722406692879885455.Spec : Prop :=
  ∀ n, P11722406692879885455.a n = A326420 (n + 1)

theorem P11722406692879885455.correct : P11722406692879885455.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel, A326420.P11722406692879885455.f1, A326420.P11722406692879885455.a, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326420

/-! ## A326420.P3627963622124596595

`A285353(n+2)-A189670(n+1)`
-/

namespace A326420.P3627963622124596595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 2) - A189670 (n + 1)

end

end A326420.P3627963622124596595

namespace A326420

/-- `A285353(n+2)-A189670(n+1)` -/
def P3627963622124596595.Spec : Prop :=
  ∀ n, P3627963622124596595.a n = A326420 (n + 1)

end A326420

/-! ## A326420.P12371324375177877060

`A284907(n+2)-A284907(n+1)`
-/

namespace A326420.P12371324375177877060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 2) - A284907 (n + 1)

end

end A326420.P12371324375177877060

namespace A326420

/-- `A284907(n+2)-A284907(n+1)` -/
def P12371324375177877060.Spec : Prop :=
  ∀ n, P12371324375177877060.a n = A326420 (n + 1)

theorem P12371324375177877060.correct : P12371324375177877060.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel, A326420.P12371324375177877060.a, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, SequenceMachineLib.memo_apply]

end A326420

/-! ## A326420.P6698862412166244536

`A285347(n+2)-A285347(n+1)`
-/

namespace A326420.P6698862412166244536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 2) - A285347 (n + 1)

end

end A326420.P6698862412166244536

namespace A326420

/-- `A285347(n+2)-A285347(n+1)` -/
def P6698862412166244536.Spec : Prop :=
  ∀ n, P6698862412166244536.a n = A326420 (n + 1)

theorem P6698862412166244536.correct : P6698862412166244536.Spec := by
  intro n
  simp only [A326420, Nat.add_sub_cancel, A326420.P6698862412166244536.a, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, A284907, A284907.P2959481405445577709.a, A285347, A285347.P10878793886673022585.a, A189670, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326420

/-! ## A326420.P8762225387770042067

`Δ[A284905(2*(n+1))]+2`
-/

namespace A326420.P8762225387770042067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A326420.P8762225387770042067

namespace A326420

/-- `Δ[A284905(2*(n+1))]+2` -/
def P8762225387770042067.Spec : Prop :=
  ∀ n, P8762225387770042067.a n = A326420 (n + 1)

end A326420

/-! ## A326420.P5024439443792978454

`Δ[A285345(2*n+1)]+2`
-/

namespace A326420.P5024439443792978454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A326420.P5024439443792978454

namespace A326420

/-- `Δ[A285345(2*n+1)]+2` -/
def P5024439443792978454.Spec : Prop :=
  ∀ n, P5024439443792978454.a n = A326420 (n + 1)

end A326420

/-! ## A326420.P1784586882785333596

`2-Δ[A189632(2*n+1)]`
-/

namespace A326420.P1784586882785333596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A326420.P1784586882785333596

namespace A326420

/-- `2-Δ[A189632(2*n+1)]` -/
def P1784586882785333596.Spec : Prop :=
  ∀ n, P1784586882785333596.a n = A326420 (n + 1)

end A326420

/-!
# A326421: Least numbers k such that A088534(k) is nondecreasing.

The programs for A326421, there is no canonical definition to state claims against.
-/

/-! ## A326421.P1140728634706418486

`lt[A077459(A138902(2*(n+1))), A004016(n)]`
-/

namespace A326421.P1140728634706418486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (A138902 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326421.P1140728634706418486

/-! ## A326421.P10961068544614937920

`lt[A198727(2*n+1), A198773(n+1)^A088534(n)]`
-/

namespace A326421.P10961068544614937920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198727 (2 * n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198773 (n + 1) : ℚ) ^ (A088534 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A326421.P10961068544614937920

/-! ## A326421.P4150221048733267386

`lt[A198727(2*n+1), A155565(2*(n+2))^A088534(n)]`
-/

namespace A326421.P4150221048733267386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198727 (2 * n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155565 (2 * (n + 2)) : ℚ) ^ (A088534 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A326421.P4150221048733267386

/-! ## A326421.P2396692625085076751

`eq[A088534(n), A279222(A137735(n))]`
-/

namespace A326421.P2396692625085076751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279222 (A137735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326421.P2396692625085076751

/-! ## A326421.P10599211310064733101

`lt[A034742(A004233(n+4)), A004016(n)]`
-/

namespace A326421.P10599211310064733101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034742 (A004233 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326421.P10599211310064733101

/-!
# A326422: Numbers k such that A000045(k) mod 5 is prime.

The programs for A326422, the canonical program `A326422.P3861247142127060209` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326422 has offset 1).

The definition of A326422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326422.P3861247142127060209

`∑[dr(gcd(4, n)!)]-3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326422

/-- `∑[dr(gcd(4, n)!)]-3` -/
def P3861247142127060209.Spec : Prop :=
  ∀ n, P3861247142127060209.a n = A326422 (n + 1)

theorem P3861247142127060209.correct : P3861247142127060209.Spec := by
  intro n
  simp only [A326422, Nat.add_sub_cancel]

end A326422

/-! ## A326422.P3667952258017224818

`∑[gcd(6, n²%8)]-3`
-/

namespace A326422.P3667952258017224818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n ^ 2 % 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A326422.P3667952258017224818

namespace A326422

/-- `∑[gcd(6, n²%8)]-3` -/
def P3667952258017224818.Spec : Prop :=
  ∀ n, P3667952258017224818.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P9964554584058158119

`a(n-4)+10` with `a(0)=3, a(1)=4, a(2)=6, a(3)=7`
-/

namespace A326422.P9964554584058158119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6, 7] fun n a =>
  a (n - 4) + 10

end

end A326422.P9964554584058158119

namespace A326422

/-- `a(n-4)+10` -/
def P9964554584058158119.Spec : Prop :=
  ∀ n, (P9964554584058158119.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P11716650371486687253

`ceil(xor(3, 5*n)/2)+1`
-/

namespace A326422.P11716650371486687253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (5 * n) : ℚ) / 2⌉ + 1

end

end A326422.P11716650371486687253

namespace A326422

/-- `ceil(xor(3, 5*n)/2)+1` -/
def P11716650371486687253.Spec : Prop :=
  ∀ n, P11716650371486687253.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P13940063345990388646

`floor((xor(3, 5*n)+3)/2)`
-/

namespace A326422.P13940063345990388646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (5 * n) + 3 : ℚ) / 2⌋

end

end A326422.P13940063345990388646

namespace A326422

/-- `floor((xor(3, 5*n)+3)/2)` -/
def P13940063345990388646.Spec : Prop :=
  ∀ n, P13940063345990388646.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P16155088003162327273

`floor(3*n/2)+or(3, n)`
-/

namespace A326422.P16155088003162327273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋ + (Nat.lor 3 n : ℤ)

end

end A326422.P16155088003162327273

namespace A326422

/-- `floor(3*n/2)+or(3, n)` -/
def P16155088003162327273.Spec : Prop :=
  ∀ n, P16155088003162327273.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P15160171779361686768

`∑[3-n%2]-n%4`
-/

namespace A326422.P15160171779361686768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 4 : ℕ) : ℤ)

end

end A326422.P15160171779361686768

namespace A326422

/-- `∑[3-n%2]-n%4` -/
def P15160171779361686768.Spec : Prop :=
  ∀ n, P15160171779361686768.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P9629590813434357258

`∑[3-and(1, n)]-and(3, n)`
-/

namespace A326422.P9629590813434357258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 3 n : ℤ)

end

end A326422.P9629590813434357258

namespace A326422

/-- `∑[3-and(1, n)]-and(3, n)` -/
def P9629590813434357258.Spec : Prop :=
  ∀ n, P9629590813434357258.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P3357253456611293211

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=1, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A326422.P3357253456611293211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 1, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P3357253456611293211

namespace A326422

/-- `∑[floor(a(n-4))]` -/
def P3357253456611293211.Spec : Prop :=
  ∀ n, (P3357253456611293211.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P47988759403811751

`round(xor(3, n)/2+2*n+1)`
-/

namespace A326422.P47988759403811751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 n : ℚ) / 2 + (2 * n + 1 : ℚ))

end

end A326422.P47988759403811751

namespace A326422

/-- `round(xor(3, n)/2+2*n+1)` -/
def P47988759403811751.Spec : Prop :=
  ∀ n, P47988759403811751.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P8354947991993199271

`∑[a(n-4)^a(n-1)]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=1, a(4)=6`
-/

namespace A326422.P8354947991993199271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 1, 6] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P8354947991993199271

namespace A326422

/-- `∑[a(n-4)^a(n-1)]` -/
def P8354947991993199271.Spec : Prop :=
  ∀ n, (P8354947991993199271.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P12099399803697077476

`∑[∑[ogf((x+2x^2+x^3+6x^4)/(1+x+x^2+x^3))]]+3`
-/

namespace A326422.P12099399803697077476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 6] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A326422.P12099399803697077476

namespace A326422

/-- `∑[∑[ogf((x+2x^2+x^3+6x^4)/(1+x+x^2+x^3))]]+3` -/
def P12099399803697077476.Spec : Prop :=
  ∀ n, P12099399803697077476.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P2729250286910873293

`∑[A010123(n)]`
-/

namespace A326422.P2729250286910873293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P2729250286910873293

namespace A326422

/-- `∑[A010123(n)]` -/
def P2729250286910873293.Spec : Prop :=
  ∀ n, P2729250286910873293.a n = A326422 (n + 1)

end A326422

/-! ## A326422.P10606150198839452002

`∑[dr(A010215(n))]`
-/

namespace A326422.P10606150198839452002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010215 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P10606150198839452002

namespace A326422

/-- `∑[dr(A010215(n))]` -/
def P10606150198839452002.Spec : Prop :=
  ∀ n, (P10606150198839452002.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P9932710063977379250

`∑[dr(A040451(n))]`
-/

namespace A326422.P9932710063977379250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040451 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P9932710063977379250

namespace A326422

/-- `∑[dr(A040451(n))]` -/
def P9932710063977379250.Spec : Prop :=
  ∀ n, (P9932710063977379250.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P14430874852555109275

`∑[dr(A040460(n))]`
-/

namespace A326422.P14430874852555109275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040460 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P14430874852555109275

namespace A326422

/-- `∑[dr(A040460(n))]` -/
def P14430874852555109275.Spec : Prop :=
  ∀ n, (P14430874852555109275.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P17456037436602740885

`∑[dr(A040928(n))]`
-/

namespace A326422.P17456037436602740885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040928 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326422.P17456037436602740885

namespace A326422

/-- `∑[dr(A040928(n))]` -/
def P17456037436602740885.Spec : Prop :=
  ∀ n, (P17456037436602740885.a n : ℤ) = A326422 (n + 1)

end A326422

/-! ## A326422.P7661836356362352408

`(A045797(n+1)+5)/2`
-/

namespace A326422.P7661836356362352408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045797 (n + 1) + 5 : ℚ) / 2

end

end A326422.P7661836356362352408

namespace A326422

/-- `(A045797(n+1)+5)/2` -/
def P7661836356362352408.Spec : Prop :=
  ∀ n, P7661836356362352408.a n = (A326422 (n + 1) : ℚ)

end A326422

/-! ## A326422.P5612155400110729550

`(A045798(n+1)-5)/2`
-/

namespace A326422.P5612155400110729550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045798 (n + 1) - 5 : ℚ) / 2

end

end A326422.P5612155400110729550

namespace A326422

/-- `(A045798(n+1)-5)/2` -/
def P5612155400110729550.Spec : Prop :=
  ∀ n, P5612155400110729550.a n = (A326422 (n + 1) : ℚ)

end A326422

/-! ## A326422.P14232412517398877099

`xor(1, A047348(n+1))-n`
-/

namespace A326422.P14232412517398877099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A047348 (n + 1)) - (n : ℤ)

end

end A326422.P14232412517398877099

namespace A326422

/-- `xor(1, A047348(n+1))-n` -/
def P14232412517398877099.Spec : Prop :=
  ∀ n, P14232412517398877099.a n = A326422 (n + 1)

end A326422

/-!
# A326423: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n*(n+1)/2) * x^n = Sum_{n>=0} x^n / (1-x)^(n*(n-1)/2).

The programs for A326423, there is no canonical definition to state claims against.
-/

/-! ## A326423.P8224713686216436530

`A033183(xor(19, A028283(n)))`
-/

namespace A326423.P8224713686216436530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (Int.xor 19 (A028283 n)).toNat

end

end A326423.P8224713686216436530

/-! ## A326423.P14600512591842356255

`A008618(∑[A300652(n)+1])`
-/

namespace A326423.P14600512591842356255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300652 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326423.P14600512591842356255

/-! ## A326423.P13070487644339680456

`A033183(A028283(n)-A028304(n))`
-/

namespace A326423.P13070487644339680456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A028283 n - A028304 n).toNat

end

end A326423.P13070487644339680456

/-! ## A326423.P5695720109195821093

`A008618(∑[A300652(n)]-A008618(n))`
-/

namespace A326423.P5695720109195821093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j - A008618 n).toNat

end

end A326423.P5695720109195821093

/-!
# A326427: E.g.f.: Sum_{n>=0} ((1+x)^n + 1)^n * exp(-x*(1+x)^n) * x^n / n!.

The programs for A326427, there is no canonical definition to state claims against.
-/

/-! ## A326427.P4695231295038745782

`A000265(A218222(n+1))`
-/

namespace A326427.P4695231295038745782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A218222 (n + 1)).toNat

end

end A326427.P4695231295038745782

/-! ## A326427.P7412022688468337719

`A028234(2*A088716(n))`
-/

namespace A326427.P7412022688468337719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A088716 n).toNat

end

end A326427.P7412022688468337719

/-!
# A326428: E.g.f.: Sum_{n>=0} (exp(n*x) + 1)^n * exp(-x*exp(n*x)) * x^n / n!.

The programs for A326428, there is no canonical definition to state claims against.
-/

/-! ## A326428.P10911426283297739231

`A309559(Δ[A330954(n²+1)])`
-/

namespace A326428.P10911426283297739231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330954 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 (f1 (n + 1) - f1 n).toNat

end

end A326428.P10911426283297739231

/-! ## A326428.P11613432055103054317

`A188346(A047974(n))+A007718(n)`
-/

namespace A326428.P11613432055103054317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188346 (A047974 n).toNat + A007718 n

end

end A326428.P11613432055103054317

/-!
# A326430: E.g.f.: exp(-1) * Sum_{n>=0} (exp(n*x) + x)^n / n!.

The programs for A326430, there is no canonical definition to state claims against.
-/

/-! ## A326430.P6298946063236307485

`A320340(A362506(n+1)+A301581(n))`
-/

namespace A326430.P6298946063236307485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (A362506 (n + 1) + A301581 n).toNat

end

end A326430.P6298946063236307485

/-!
# A326431: E.g.f.: exp(-2) * Sum_{n>=0} ((1+x)^n + 1)^n / n!.

The programs for A326431, there is no canonical definition to state claims against.
-/

/-! ## A326431.P13396871055103717960

`A127242(2*A100016(n))+A319122(n+1)-1`
-/

namespace A326431.P13396871055103717960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (2 * A100016 n).toNat + (A319122 (n + 1) - 1)

end

end A326431.P13396871055103717960

/-!
# A326434: E.g.f.: exp(-3) * Sum_{n>=0} (exp(n*x) + 2)^n / n!.

The programs for A326434, there is no canonical definition to state claims against.
-/

/-! ## A326434.P6620515289728897248

`A137288(and(3*a(n-1), -n))` with `a(0)=1`
-/

namespace A326434.P6620515289728897248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137288 (Int.land (3 * a (n - 1)) (-(n : ℤ))).toNat

end

end A326434.P6620515289728897248

/-!
# A326438: Number of subsets of {1..n} such that no two elements have the same sorted prime signature.

The programs for A326438, there is no canonical definition to state claims against.
-/

/-! ## A326438.P4624099165240190175

`A325263(n)+a(n-1)` with `a(0)=1`
-/

namespace A326438.P4624099165240190175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325263 n + a (n - 1)

end

end A326438.P4624099165240190175

/-! ## A326438.P15362226546725819144

`∑[A325263(round(sqrt(n²+1)))]`
-/

namespace A326438.P15362226546725819144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325263 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326438.P15362226546725819144

/-! ## A326438.P16922755259693107481

`A064839(n+1)*A325263(n+1)`
-/

namespace A326438.P16922755259693107481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (n + 1) * A325263 (n + 1)

end

end A326438.P16922755259693107481

/-! ## A326438.P16236076874033709229

`A326439(n+1)/A325365(n+1)*A325263(n+1)`
-/

namespace A326438.P16236076874033709229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326439 (n + 1) : ℚ) / (A325365 (n + 1) : ℚ) * (A325263 (n + 1) : ℚ)

end

end A326438.P16236076874033709229

/-! ## A326438.P1590169425416494246

`(A335286(n+1)+A276404(A063072(n+1)))*A325263(n+1)`
-/

namespace A326438.P1590169425416494246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A335286 (n + 1) + A276404 (A063072 (n + 1)).toNat) * A325263 (n + 1)

end

end A326438.P1590169425416494246

/-!
# A326439: Number of maximal subsets of {1..n} such that no two elements have the same sorted prime signature.

The programs for A326439, there is no canonical definition to state claims against.
-/

/-! ## A326439.P8263394486339047839

`A064839(A028310(n))*A325365(A028310(n))`
-/

namespace A326439.P8263394486339047839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A028310 n).toNat * A325365 (A028310 n).toNat

end

end A326439.P8263394486339047839

/-! ## A326439.P8372875719855988957

`∏{e}[∏[A007318(A048785(n))], #]`
-/

namespace A326439.P8372875719855988957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A048785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A326439.P8372875719855988957

/-! ## A326439.P13888693562681909732

`A005361(∏[A007318(A048785(n))])`
-/

namespace A326439.P13888693562681909732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A048785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326439.P13888693562681909732

/-!
# A326440: a(n) = 1 - tau(1) + tau(2) - tau(3) + ... + (-1)^n tau(n), where tau = A000005 is number of divisors.

The programs for A326440, the canonical program `A326440.P14970949069833636215` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326440 has offset 0).

The definition of A326440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326440.P14970949069833636215

`∑[(-1)^n*∏{e}[n, #+1]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326440

/-- `∑[(-1)^n*∏{e}[n, #+1]]` -/
def P14970949069833636215.Spec : Prop :=
  ∀ n, P14970949069833636215.a n = A326440 n

theorem P14970949069833636215.correct : P14970949069833636215.Spec := by
  intro n
  simp only [A326440]

end A326440

/-! ## A326440.P18267243894745225996

`∑[∏{e}[n, #+1]/(-1)^n]`
-/

namespace A326440.P18267243894745225996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P18267243894745225996

namespace A326440

/-- `∑[∏{e}[n, #+1]/(-1)^n]` -/
def P18267243894745225996.Spec : Prop :=
  ∀ n, P18267243894745225996.a n = (A326440 n : ℚ)

end A326440

/-! ## A326440.P2940729758190349208

`∑[(A032741(n)+1)*(-1)^n]`
-/

namespace A326440.P2940729758190349208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 n + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P2940729758190349208

namespace A326440

/-- `∑[(A032741(n)+1)*(-1)^n]` -/
def P2940729758190349208.Spec : Prop :=
  ∀ n, P2940729758190349208.a n = A326440 n

theorem P2940729758190349208.correct : P2940729758190349208.Spec := by
  intro n
  simp only [A326440, Nat.add_sub_cancel, A326440.P2940729758190349208.f1, A326440.P2940729758190349208.a, A326440.P14970949069833636215.f2, A326440.P14970949069833636215.f1, A326440.P14970949069833636215.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326440

/-! ## A326440.P3708113026458837795

`∑[(-1)^n*A000005(A028310(n))]`
-/

namespace A326440.P3708113026458837795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000005 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P3708113026458837795

namespace A326440

/-- `∑[(-1)^n*A000005(A028310(n))]` -/
def P3708113026458837795.Spec : Prop :=
  ∀ n, P3708113026458837795.a n = A326440 n

end A326440

/-! ## A326440.P2702744109146458801

`∑{d}[A000005(n)-a(n-1), A000010(#)]` with `a(0)=1`
-/

namespace A326440.P2702744109146458801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A326440.P2702744109146458801

namespace A326440

/-- `∑{d}[A000005(n)-a(n-1), A000010(#)]` -/
def P2702744109146458801.Spec : Prop :=
  ∀ n, P2702744109146458801.a n = A326440 n

end A326440

/-! ## A326440.P4700184170633522832

`∑[(-1)^n*A000005(A065033(2*n))]`
-/

namespace A326440.P4700184170633522832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000005 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P4700184170633522832

namespace A326440

/-- `∑[(-1)^n*A000005(A065033(2*n))]` -/
def P4700184170633522832.Spec : Prop :=
  ∀ n, P4700184170633522832.a n = A326440 n

end A326440

/-! ## A326440.P793477980443451609

`∑[A000005(A065033(2*n))*A062157(n+1)]`
-/

namespace A326440.P793477980443451609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P793477980443451609

namespace A326440

/-- `∑[A000005(A065033(2*n))*A062157(n+1)]` -/
def P793477980443451609.Spec : Prop :=
  ∀ n, P793477980443451609.a n = A326440 n

end A326440

/-! ## A326440.P1454634905519890883

`∑[(-1)^n*A299480(A008574(n))]`
-/

namespace A326440.P1454634905519890883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A299480 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P1454634905519890883

namespace A326440

/-- `∑[(-1)^n*A299480(A008574(n))]` -/
def P1454634905519890883.Spec : Prop :=
  ∀ n, P1454634905519890883.a n = A326440 n

end A326440

/-! ## A326440.P17613124484269388034

`∑[(-1)^n*A238353(A179865(n+1))]`
-/

namespace A326440.P17613124484269388034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A238353 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326440.P17613124484269388034

namespace A326440

/-- `∑[(-1)^n*A238353(A179865(n+1))]` -/
def P17613124484269388034.Spec : Prop :=
  ∀ n, P17613124484269388034.a n = A326440 n

end A326440

/-!
# A326441: Number of subsets of {1..n} whose sum is equal to the product of their complement.

The programs for A326441, there is no canonical definition to state claims against.
-/

/-! ## A326441.P8373753699630792509

`A178830(or(n, A127802(n)))`
-/

namespace A326441.P8373753699630792509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (Int.lor (n : ℤ) (A127802 n)).toNat

end

end A326441.P8373753699630792509

/-! ## A326441.P14655580065645922890

`A178830(or(n, A233583(n+1)))`
-/

namespace A326441.P14655580065645922890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (Int.lor (n : ℤ) (A233583 (n + 1))).toNat

end

end A326441.P14655580065645922890

/-! ## A326441.P4935231547288551909

`A178830(A233583(n+1)+char[1])`
-/

namespace A326441.P4935231547288551909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (A233583 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A326441.P4935231547288551909

/-! ## A326441.P11514068011578366345

`A178830(2*A233583(n+1)-n)`
-/

namespace A326441.P11514068011578366345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (2 * A233583 (n + 1) - (n : ℤ)).toNat

end

end A326441.P11514068011578366345

/-! ## A326441.P15028181996654965976

`A178830(A052938(A004275(n)))`
-/

namespace A326441.P15028181996654965976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (A052938 (A004275 n).toNat).toNat

end

end A326441.P15028181996654965976

/-! ## A326441.P5074578577677035447

`A178830(A267458(n)+A000034(n))`
-/

namespace A326441.P5074578577677035447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (A267458 n + A000034 n).toNat

end

end A326441.P5074578577677035447

/-! ## A326441.P14974874600921691515

`A178830(or(n, A254667(A028310(n))))`
-/

namespace A326441.P14974874600921691515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (Int.lor (n : ℤ) (A254667 (A028310 n).toNat)).toNat

end

end A326441.P14974874600921691515

/-!
# A326442: Emirp-indexed emirps: emirps with emirp subscripts.

The programs for A326442, there is no canonical definition to state claims against.
-/

/-! ## A326442.P16546191459271703717

`∩[A000040(A006567(n+1)), A006567(n+3)]`
-/

namespace A326442.P16546191459271703717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006567 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326442.P16546191459271703717

/-! ## A326442.P16656347886378883887

`∩[A006005(A006567(n+1)), A006567(n+4)]`
-/

namespace A326442.P16656347886378883887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006567 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326442.P16656347886378883887

/-! ## A326442.P656387338316527173

`A008578(∩[A006567(n+1), A156793(n+1)]+1)`
-/

namespace A326442.P656387338316527173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A326442.P656387338316527173

/-!
# A326443: Number of partitions of n into 8 squarefree parts.

The programs for A326443, there is no canonical definition to state claims against.
-/

/-! ## A326443.P12863914531058724612

`A326444(n)/round(1/acot(n))`
-/

namespace A326443.P12863914531058724612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A326443.P12863914531058724612

/-! ## A326443.P5307684237305894880

`A326444(n)/A028310(n)`
-/

namespace A326443.P5307684237305894880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A028310 n : ℚ)

end

end A326443.P5307684237305894880

/-! ## A326443.P8955637604286473353

`A326444(n)/A233583(n+1)`
-/

namespace A326443.P8955637604286473353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A326443.P8955637604286473353

/-! ## A326443.P13845488032928684331

`A326444(n)/(A000007(n)+n)`
-/

namespace A326443.P13845488032928684331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A326443.P13845488032928684331

/-! ## A326443.P5806454973254787089

`2/A316571(n+1)*A326444(n)`
-/

namespace A326443.P5806454973254787089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A316571 (n + 1) : ℚ) * (A326444 n : ℚ)

end

end A326443.P5806454973254787089

/-! ## A326443.P2824948245966033111

`A326444(n)/A001281(A316571(n+1))`
-/

namespace A326443.P2824948245966033111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A001281 (A316571 (n + 1)).toNat : ℚ)

end

end A326443.P2824948245966033111

/-! ## A326443.P14501695857022607692

`A326444(n)/A137734(n²)`
-/

namespace A326443.P14501695857022607692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A137734 (n ^ 2) : ℚ)

end

end A326443.P14501695857022607692

/-! ## A326443.P12598448341769734323

`A326444(n)/A160755(n+1)`
-/

namespace A326443.P12598448341769734323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326444 n : ℚ) / (A160755 (n + 1) : ℚ)

end

end A326443.P12598448341769734323

/-!
# A326444: Sum of all the parts in the partitions of n into 8 squarefree parts.

The programs for A326444, there is no canonical definition to state claims against.
-/

/-! ## A326444.P13965021211207368627

`n*A326443(n)`
-/

namespace A326444.P13965021211207368627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326443 n

end

end A326444.P13965021211207368627

/-! ## A326444.P10959438371511379808

`A326445(n)+A326446(n)+A326447(n)+A326448(n)+A326449(n)+A326450(n)+A326451(n)+A326452(n)`
-/

namespace A326444.P10959438371511379808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326445 n + A326446 n + A326447 n + A326448 n + A326449 n + A326450 n + A326451 n + A326452 n

end

end A326444.P10959438371511379808

/-! ## A326444.P1752791096777716838

`log2(A000079(n)^A326443(n))`
-/

namespace A326444.P1752791096777716838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 n : ℚ) ^ (A326443 n : ℤ) : ℝ)

end

end A326444.P1752791096777716838

/-! ## A326444.P14183181147156755914

`A001222(A000079(n))*A326522(n+1)`
-/

namespace A326444.P14183181147156755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 n).toNat * A326522 (n + 1)

end

end A326444.P14183181147156755914

/-! ## A326444.P4981138506899520062

`A001222(A000079(n))*A326626(n+2)`
-/

namespace A326444.P4981138506899520062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 n).toNat * A326626 (n + 2)

end

end A326444.P4981138506899520062

/-!
# A326445: Sum of the smallest parts of the partitions of n into 8 squarefree parts.

The programs for A326445, there is no canonical definition to state claims against.
-/

/-! ## A326445.P15919827996826807933

`A326444(n)-A326446(n)-A326447(n)-A326448(n)-A326449(n)-A326450(n)-A326451(n)-A326452(n)`
-/

namespace A326445.P15919827996826807933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326446 n - A326447 n - A326448 n - A326449 n - A326450 n - A326451 n - A326452 n

end

end A326445.P15919827996826807933

/-! ## A326445.P2795844911169989977

`A026814(n)-A111660(A326593(n+1))`
-/

namespace A326445.P2795844911169989977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n - A111660 (A326593 (n + 1)).toNat

end

end A326445.P2795844911169989977

/-! ## A326445.P6325853914652114450

`A028904(A326446(n)%A121371(n+1))`
-/

namespace A326445.P6325853914652114450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Int.tmod (A326446 n) (A121371 (n + 1))).toNat

end

end A326445.P6325853914652114450

/-!
# A326446: Sum of the seventh largest parts of the partitions of n into 8 squarefree parts.

The programs for A326446, there is no canonical definition to state claims against.
-/

/-! ## A326446.P14390613466874179464

`A326444(n)-A326445(n)-A326447(n)-A326448(n)-A326449(n)-A326450(n)-A326451(n)-A326452(n)`
-/

namespace A326446.P14390613466874179464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326447 n - A326448 n - A326449 n - A326450 n - A326451 n - A326452 n

end

end A326446.P14390613466874179464

/-! ## A326446.P4964355244196507903

`A319473(n)-A111660(A026815(n))`
-/

namespace A326446.P4964355244196507903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319473 n - A111660 (A026815 n).toNat

end

end A326446.P4964355244196507903

/-! ## A326446.P1296989425173308561

`A007095(A326445(n)%A121371(n+1))`
-/

namespace A326446.P1296989425173308561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A326445 n) (A121371 (n + 1))).toNat

end

end A326446.P1296989425173308561

/-!
# A326447: Sum of the sixth largest parts in the partitions of n into 8 squarefree parts.

The programs for A326447, there is no canonical definition to state claims against.
-/

/-! ## A326447.P16046340754482005216

`A326444(n)-A326445(n)-A326446(n)-A326448(n)-A326449(n)-A326450(n)-A326451(n)-A326452(n)`
-/

namespace A326447.P16046340754482005216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326448 n - A326449 n - A326450 n - A326451 n - A326452 n

end

end A326447.P16046340754482005216

/-! ## A326447.P2126787341600194629

`A037477(A326446(n)%A121371(n+1))`
-/

namespace A326447.P2126787341600194629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A326446 n) (A121371 (n + 1))).toNat

end

end A326447.P2126787341600194629

/-!
# A326448: Sum of the fifth largest parts of the partitions of n into 8 squarefree parts.

The programs for A326448, there is no canonical definition to state claims against.
-/

/-! ## A326448.P6328589343689684443

`A326444(n)-A326445(n)-A326446(n)-A326447(n)-A326449(n)-A326450(n)-A326451(n)-A326452(n)`
-/

namespace A326448.P6328589343689684443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326447 n - A326449 n - A326450 n - A326451 n - A326452 n

end

end A326448.P6328589343689684443

/-! ## A326448.P14387194163253414668

`A302405(A326450(n)%A121371(n+1))`
-/

namespace A326448.P14387194163253414668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (Int.tmod (A326450 n) (A121371 (n + 1))).toNat

end

end A326448.P14387194163253414668

/-! ## A326448.P5154016330163352890

`A302405(A326450(n))^Δ[A007953(n)]²`
-/

namespace A326448.P5154016330163352890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302405 (A326450 n).toNat : ℚ) ^ ((f1 (n + 1) - f1 n) ^ 2 : ℤ)

end

end A326448.P5154016330163352890

/-! ## A326448.P1606700108734156328

`A302405(A326450(n))^A014963(A311193(n))`
-/

namespace A326448.P1606700108734156328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302405 (A326450 n).toNat : ℚ) ^ (A014963 (A311193 n).toNat : ℤ)

end

end A326448.P1606700108734156328

/-!
# A326449: Sum of the fourth largest parts of the partitions of n into 8 squarefree parts.

The programs for A326449, there is no canonical definition to state claims against.
-/

/-! ## A326449.P12150371644899930939

`A326444(n)-A326445(n)-A326446(n)-A326447(n)-A326448(n)-A326450(n)-A326451(n)-A326452(n)`
-/

namespace A326449.P12150371644899930939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326447 n - A326448 n - A326450 n - A326451 n - A326452 n

end

end A326449.P12150371644899930939

/-!
# A326450: Sum of the third largest parts of the partitions of n into 8 squarefree parts.

The programs for A326450, there is no canonical definition to state claims against.
-/

/-! ## A326450.P13172552299412383109

`A326444(n)-A326445(n)-A326446(n)-A326447(n)-A326448(n)-A326449(n)-A326451(n)-A326452(n)`
-/

namespace A326450.P13172552299412383109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326447 n - A326448 n - A326449 n - A326451 n - A326452 n

end

end A326450.P13172552299412383109

/-!
# A326451: Sum of the second largest parts of the partitions of n into 8 squarefree parts.

The programs for A326451, there is no canonical definition to state claims against.
-/

/-! ## A326451.P13235058458898318148

`A326444(n)-A326445(n)-A326446(n)-A326447(n)-A326448(n)-A326449(n)-A326450(n)-A326452(n)`
-/

namespace A326451.P13235058458898318148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326447 n - A326448 n - A326449 n - A326450 n - A326452 n

end

end A326451.P13235058458898318148

/-! ## A326451.P7963041730591663013

`A326636(n+2)+A226289(A134951(n+5))`
-/

namespace A326451.P7963041730591663013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (n + 2) + A226289 (A134951 (n + 5)).toNat

end

end A326451.P7963041730591663013

/-! ## A326451.P3205895106010364089

`A326636(A151764(n+2))`
-/

namespace A326451.P3205895106010364089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A151764 (n + 2)).toNat

end

end A326451.P3205895106010364089

/-! ## A326451.P1597456096366461245

`A326531(A000005(2^n))`
-/

namespace A326451.P1597456096366461245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 (A000005 (2 ^ n)).toNat

end

end A326451.P1597456096366461245

/-! ## A326451.P13470418886981455836

`A053865(A080014(n))*A326531(n+1)`
-/

namespace A326451.P13470418886981455836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (A080014 n).toNat * A326531 (n + 1)

end

end A326451.P13470418886981455836

/-!
# A326452: Sum of the largest parts of the partitions of n into 8 squarefree parts.

The programs for A326452, there is no canonical definition to state claims against.
-/

/-! ## A326452.P13592643779627417966

`A326444(n)-A326445(n)-A326446(n)-A326447(n)-A326448(n)-A326449(n)-A326450(n)-A326451(n)`
-/

namespace A326452.P13592643779627417966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326444 n - A326445 n - A326446 n - A326447 n - A326448 n - A326449 n - A326450 n - A326451 n

end

end A326452.P13592643779627417966

/-! ## A326452.P4485582037085135219

`A097448(A326532(n+1))`
-/

namespace A326452.P4485582037085135219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A326532 (n + 1)).toNat

end

end A326452.P4485582037085135219

/-! ## A326452.P6076077613946533956

`A326637(A151764(n+2))`
-/

namespace A326452.P6076077613946533956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (A151764 (n + 2)).toNat

end

end A326452.P6076077613946533956

/-!
# A326453: Triangle read by rows: T(n,k) is the number of small Schröder paths of semilength k such that the area between the path and the x-axis is equal to n (n >= 0; 0 <= k <= n).

The programs for A326453, there is no canonical definition to state claims against.
-/

/-! ## A326453.P17181657307858934563

`A248639(A208673(n))+A177517(n+1)`
-/

namespace A326453.P17181657307858934563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A208673 n).toNat + A177517 (n + 1)

end

end A326453.P17181657307858934563

/-! ## A326453.P18152648296728133243

`A352522(n)%A110648(A112899(n))`
-/

namespace A326453.P18152648296728133243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352522 n) (A110648 (A112899 n).toNat)

end

end A326453.P18152648296728133243

/-! ## A326453.P16392006076450088981

`A339070(A080036(n))%p?[A118340(n)]`
-/

namespace A326453.P16392006076450088981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339070 (A080036 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A326453.P16392006076450088981

/-! ## A326453.P4781600264440814921

`A386258(A185315(n+1))+A177517(n+1)`
-/

namespace A326453.P4781600264440814921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386258 (A185315 (n + 1)).toNat + A177517 (n + 1)

end

end A326453.P4781600264440814921

/-! ## A326453.P9769458149671031553

`A033802(A089204(n+2))`
-/

namespace A326453.P9769458149671031553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033802 (A089204 (n + 2)).toNat

end

end A326453.P9769458149671031553

/-!
# A326454: Irregular triangle read by rows: T(n,k) is the number of small Schröder paths such that the area between the path and the x-axis is equal to n and contains k down-triangles.

The programs for A326454, there is no canonical definition to state claims against.
-/

/-! ## A326454.P11299850470253898829

`or(A015070(n)!, A055327(n+1))`
-/

namespace A326454.P11299850470253898829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A015070 n).toNat : ℤ) (A055327 (n + 1))

end

end A326454.P11299850470253898829

/-! ## A326454.P4474764063310845172

`or(A023532(A004111(n)), A055327(n+1))`
-/

namespace A326454.P4474764063310845172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 (A004111 n).toNat) (A055327 (n + 1))

end

end A326454.P4474764063310845172

/-! ## A326454.P5266616806011881235

`or(A001222(A014234(n+1)), A055327(n+1))`
-/

namespace A326454.P5266616806011881235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A014234 (n + 1)).toNat) (A055327 (n + 1))

end

end A326454.P5266616806011881235

/-! ## A326454.P4942440386361149134

`or(A049559(A005179(n+1)), A055327(n+1))`
-/

namespace A326454.P4942440386361149134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049559 (A005179 (n + 1)).toNat) (A055327 (n + 1))

end

end A326454.P4942440386361149134

/-! ## A326454.P14737185430868573141

`or(A051903(A002997(n+1)), A055327(n+1))`
-/

namespace A326454.P14737185430868573141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (A002997 (n + 1)).toNat) (A055327 (n + 1))

end

end A326454.P14737185430868573141

/-!
# A326455: Sum of all the parts in the partitions of n into 8 primes.

The programs for A326455, there is no canonical definition to state claims against.
-/

/-! ## A326455.P7029134661577976591

`A326456(n)+A326457(n)+A326458(n)+A326459(n)+A326460(n)+A326461(n)+A326462(n)+A326463(n)`
-/

namespace A326455.P7029134661577976591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A326457 n + A326458 n + A326459 n + A326460 n + A326461 n + A326462 n + A326463 n

end

end A326455.P7029134661577976591

/-! ## A326455.P16936456565264940851

`n*A001221(A326456(n)!)`
-/

namespace A326455.P16936456565264940851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326456 n).toNat)

end

end A326455.P16936456565264940851

/-! ## A326455.P1087493879994016223

`n*A061395(A326456(n)!)`
-/

namespace A326455.P1087493879994016223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061395 (Nat.factorial (A326456 n).toNat)

end

end A326455.P1087493879994016223

/-! ## A326455.P7719196545704193001

`n*A001221(A326457(n)!)`
-/

namespace A326455.P7719196545704193001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326457 n).toNat)

end

end A326455.P7719196545704193001

/-! ## A326455.P12143094177254450733

`n*A097795(A212368(n))`
-/

namespace A326455.P12143094177254450733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097795 (A212368 n).toNat

end

end A326455.P12143094177254450733

/-!
# A326456: Sum of the smallest parts of the partitions of n into 8 primes.

The programs for A326456, there is no canonical definition to state claims against.
-/

/-! ## A326456.P5689661505055270816

`A326455(n)-A326457(n)-A326458(n)-A326459(n)-A326460(n)-A326461(n)-A326462(n)-A326463(n)`
-/

namespace A326456.P5689661505055270816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326457 n - A326458 n - A326459 n - A326460 n - A326461 n - A326462 n - A326463 n

end

end A326456.P5689661505055270816

/-! ## A326456.P2580079915428649995

`and(A256059(A256038(n)), A326457(n))`
-/

namespace A326456.P2580079915428649995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256059 (A256038 n).toNat) (A326457 n)

end

end A326456.P2580079915428649995

/-!
# A326457: Sum of the seventh largest parts in the partitions of n into 8 primes.

The programs for A326457, there is no canonical definition to state claims against.
-/

/-! ## A326457.P6087882818351680210

`A326455(n)-A326456(n)-A326458(n)-A326459(n)-A326460(n)-A326461(n)-A326462(n)-A326463(n)`
-/

namespace A326457.P6087882818351680210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326458 n - A326459 n - A326460 n - A326461 n - A326462 n - A326463 n

end

end A326457.P6087882818351680210

/-!
# A326458: Sum of the sixth largest parts of the partitions of n into 8 primes.

The programs for A326458, there is no canonical definition to state claims against.
-/

/-! ## A326458.P6527018498116620003

`A326455(n)-A326456(n)-A326457(n)-A326459(n)-A326460(n)-A326461(n)-A326462(n)-A326463(n)`
-/

namespace A326458.P6527018498116620003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326459 n - A326460 n - A326461 n - A326462 n - A326463 n

end

end A326458.P6527018498116620003

/-!
# A326459: Sum of the fifth largest parts of the partitions of n into 8 primes.

The programs for A326459, there is no canonical definition to state claims against.
-/

/-! ## A326459.P7711974355124395985

`A326455(n)-A326456(n)-A326457(n)-A326458(n)-A326460(n)-A326461(n)-A326462(n)-A326463(n)`
-/

namespace A326459.P7711974355124395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326458 n - A326460 n - A326461 n - A326462 n - A326463 n

end

end A326459.P7711974355124395985

/-!
# A326460: Sum of the fourth largest parts of the partitions of n into 8 primes.

The programs for A326460, there is no canonical definition to state claims against.
-/

/-! ## A326460.P5191598674313624180

`A326455(n)-A326456(n)-A326457(n)-A326458(n)-A326459(n)-A326461(n)-A326462(n)-A326463(n)`
-/

namespace A326460.P5191598674313624180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326458 n - A326459 n - A326461 n - A326462 n - A326463 n

end

end A326460.P5191598674313624180

/-!
# A326461: Sum of the third largest parts in the partitions of n into 8 primes.

The programs for A326461, there is no canonical definition to state claims against.
-/

/-! ## A326461.P1742151308996534260

`A326455(n)-A326456(n)-A326457(n)-A326458(n)-A326459(n)-A326460(n)-A326462(n)-A326463(n)`
-/

namespace A326461.P1742151308996534260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326458 n - A326459 n - A326460 n - A326462 n - A326463 n

end

end A326461.P1742151308996534260

/-!
# A326462: Sum of the second largest parts in the partitions of n into 8 primes.

The programs for A326462, there is no canonical definition to state claims against.
-/

/-! ## A326462.P3970844180770710585

`A326455(n)-A326456(n)-A326457(n)-A326458(n)-A326459(n)-A326460(n)-A326461(n)-A326463(n)`
-/

namespace A326462.P3970844180770710585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326458 n - A326459 n - A326460 n - A326461 n - A326463 n

end

end A326462.P3970844180770710585

/-!
# A326463: Sum of the largest parts of the partitions of n into 8 primes.

The programs for A326463, there is no canonical definition to state claims against.
-/

/-! ## A326463.P11817127271299760696

`A326455(n)-A326456(n)-A326457(n)-A326458(n)-A326459(n)-A326460(n)-A326461(n)-A326462(n)`
-/

namespace A326463.P11817127271299760696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n - A326456 n - A326457 n - A326458 n - A326459 n - A326460 n - A326461 n - A326462 n

end

end A326463.P11817127271299760696

/-!
# A326464: Sum of all the parts in the partitions of n into 9 parts.

The programs for A326464, there is no canonical definition to state claims against.
-/

/-! ## A326464.P7620619045757714251

`A326465(n)+A326466(n)+A326467(n)+A326468(n)+A326469(n)+A326470(n)+A326471(n)+A326472(n)+A326473(n)`
-/

namespace A326464.P7620619045757714251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326465 n + A326466 n + A326467 n + A326468 n + A326469 n + A326470 n + A326471 n + A326472 n + A326473 n

end

end A326464.P7620619045757714251

/-! ## A326464.P15578249381087633582

`n*A026815(n)`
-/

namespace A326464.P15578249381087633582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026815 n

end

end A326464.P15578249381087633582

/-! ## A326464.P10704426174836445759

`n*(A008638(n)-A008637(n))`
-/

namespace A326464.P10704426174836445759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008638 n - A008637 n)

end

end A326464.P10704426174836445759

/-! ## A326464.P3771015885580293713

`n*(A266777(n)-A060028(n))`
-/

namespace A326464.P3771015885580293713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266777 n - A060028 n)

end

end A326464.P3771015885580293713

/-! ## A326464.P7178720697284322843

`A026815(n)/tan(acot(A028310(n)))`
-/

namespace A326464.P7178720697284322843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026815 n : ℝ) / Real.tan (SequenceMachineLib.acot (A028310 n : ℝ))

end

end A326464.P7178720697284322843

/-! ## A326464.P15118747393255714411

`n*(∑[A266777(n)]-A008637(n))`
-/

namespace A326464.P15118747393255714411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A008637 n)

end

end A326464.P15118747393255714411

/-! ## A326464.P16154226711724118017

`A309659(n)+A309657(n)`
-/

namespace A326464.P16154226711724118017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309659 n + A309657 n

end

end A326464.P16154226711724118017

/-!
# A326465: Sum of the smallest parts of the partitions of n into 9 parts.

The programs for A326465, there is no canonical definition to state claims against.
-/

/-! ## A326465.P13780076851626873188

`A326464(n)-A326466(n)-A326467(n)-A326468(n)-A326469(n)-A326470(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326465.P13780076851626873188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326466 n - A326467 n - A326468 n - A326469 n - A326470 n - A326471 n - A326472 n - A326473 n

end

end A326465.P13780076851626873188

/-! ## A326465.P8111630422325462666

`A353489(A034571(2*(n+1)))+A026816(n+1)`
-/

namespace A326465.P8111630422325462666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A034571 (2 * (n + 1))).toNat + A026816 (n + 1)

end

end A326465.P8111630422325462666

/-! ## A326465.P3752195400268189722

`A111660(A218024(n))`
-/

namespace A326465.P3752195400268189722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A218024 n).toNat

end

end A326465.P3752195400268189722

/-! ## A326465.P12690009272387490448

`A326590(A077342(n+1))`
-/

namespace A326465.P12690009272387490448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 (A077342 (n + 1)).toNat

end

end A326465.P12690009272387490448

/-! ## A326465.P16837643878250877113

`A326590(A242474(n+1))`
-/

namespace A326465.P16837643878250877113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 (A242474 (n + 1)).toNat

end

end A326465.P16837643878250877113

/-!
# A326466: Sum of the eighth largest parts in the partitions of n into 9 parts.

The programs for A326466, there is no canonical definition to state claims against.
-/

/-! ## A326466.P14150308917444394412

`A326464(n)-A326465(n)-A326467(n)-A326468(n)-A326469(n)-A326470(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326466.P14150308917444394412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326467 n - A326468 n - A326469 n - A326470 n - A326471 n - A326472 n - A326473 n

end

end A326466.P14150308917444394412

/-! ## A326466.P1224945203442869389

`A326591(A077342(n+1))`
-/

namespace A326466.P1224945203442869389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 (A077342 (n + 1)).toNat

end

end A326466.P1224945203442869389

/-! ## A326466.P12003602416517507483

`A326591(A242474(n+1))`
-/

namespace A326466.P12003602416517507483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 (A242474 (n + 1)).toNat

end

end A326466.P12003602416517507483

/-! ## A326466.P455309277833364901

`A326591(A351374(n+1))`
-/

namespace A326466.P455309277833364901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 (A351374 (n + 1)).toNat

end

end A326466.P455309277833364901

/-! ## A326466.P11648631418403000929

`A326591(n+1)%A082672(n+1)`
-/

namespace A326466.P11648631418403000929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326591 (n + 1)) (A082672 (n + 1))

end

end A326466.P11648631418403000929

/-!
# A326467: Sum of the seventh largest parts in the partitions of n into 9 parts.

The programs for A326467, there is no canonical definition to state claims against.
-/

/-! ## A326467.P11971422491646692318

`A326464(n)-A326465(n)-A326466(n)-A326468(n)-A326469(n)-A326470(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326467.P11971422491646692318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326468 n - A326469 n - A326470 n - A326471 n - A326472 n - A326473 n

end

end A326467.P11971422491646692318

/-! ## A326467.P594683112888822129

`A028904(A326468(n))%A215972(n+1)`
-/

namespace A326467.P594683112888822129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A326468 n).toNat) (A215972 (n + 1))

end

end A326467.P594683112888822129

/-! ## A326467.P18407321627744332901

`A326592(A077342(n+1))`
-/

namespace A326467.P18407321627744332901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 (A077342 (n + 1)).toNat

end

end A326467.P18407321627744332901

/-! ## A326467.P3751991026490159022

`A326592(A242474(n+1))`
-/

namespace A326467.P3751991026490159022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 (A242474 (n + 1)).toNat

end

end A326467.P3751991026490159022

/-! ## A326467.P4960256378972706821

`A326592(A351374(n+1))`
-/

namespace A326467.P4960256378972706821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 (A351374 (n + 1)).toNat

end

end A326467.P4960256378972706821

/-!
# A326468: Sum of the sixth largest parts of the partitions of n into 9 parts.

The programs for A326468, there is no canonical definition to state claims against.
-/

/-! ## A326468.P8086617469176363610

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326469(n)-A326470(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326468.P8086617469176363610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326469 n - A326470 n - A326471 n - A326472 n - A326473 n

end

end A326468.P8086617469176363610

/-! ## A326468.P222928945772350307

`A007095(A326467(n)%A324840(n+1))`
-/

namespace A326468.P222928945772350307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A326467 n) (A324840 (n + 1))).toNat

end

end A326468.P222928945772350307

/-! ## A326468.P6950985791623096288

`A055572(A326467(n))`
-/

namespace A326468.P6950985791623096288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A326467 n).toNat

end

end A326468.P6950985791623096288

/-! ## A326468.P9489722626041649410

`A055572(A326592(n+1))`
-/

namespace A326468.P9489722626041649410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A326592 (n + 1)).toNat

end

end A326468.P9489722626041649410

/-! ## A326468.P9935581174233975676

`A326593(A077342(n+1))`
-/

namespace A326468.P9935581174233975676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326593 (A077342 (n + 1)).toNat

end

end A326468.P9935581174233975676

/-!
# A326469: Sum of the fifth largest parts of the partitions of n into 9 parts.

The programs for A326469, there is no canonical definition to state claims against.
-/

/-! ## A326469.P5922912760308324275

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326468(n)-A326470(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326469.P5922912760308324275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326468 n - A326470 n - A326471 n - A326472 n - A326473 n

end

end A326469.P5922912760308324275

/-! ## A326469.P64375931469655157

`A326594(A077342(n+1))`
-/

namespace A326469.P64375931469655157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 (A077342 (n + 1)).toNat

end

end A326469.P64375931469655157

/-! ## A326469.P14575686492759670258

`A326594(A242474(n+1))`
-/

namespace A326469.P14575686492759670258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 (A242474 (n + 1)).toNat

end

end A326469.P14575686492759670258

/-! ## A326469.P16170150792095198446

`A326594(A351374(n+1))`
-/

namespace A326469.P16170150792095198446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 (A351374 (n + 1)).toNat

end

end A326469.P16170150792095198446

/-! ## A326469.P14886461634921937281

`A326594(n+1)%A326745(n)`
-/

namespace A326469.P14886461634921937281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326594 (n + 1)) (A326745 n)

end

end A326469.P14886461634921937281

/-!
# A326470: Sum of the fourth largest parts of the partitions of n into 9 parts.

The programs for A326470, there is no canonical definition to state claims against.
-/

/-! ## A326470.P4635144719427339310

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326468(n)-A326469(n)-A326471(n)-A326472(n)-A326473(n)`
-/

namespace A326470.P4635144719427339310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326468 n - A326469 n - A326471 n - A326472 n - A326473 n

end

end A326470.P4635144719427339310

/-! ## A326470.P2818266965284606919

`A326595(A077342(n+1))`
-/

namespace A326470.P2818266965284606919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (A077342 (n + 1)).toNat

end

end A326470.P2818266965284606919

/-! ## A326470.P3673812939203269578

`A097449(A326595(n+1))`
-/

namespace A326470.P3673812939203269578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A326595 (n + 1)).toNat

end

end A326470.P3673812939203269578

/-! ## A326470.P13287626932889715884

`A326595(A242474(n+1))`
-/

namespace A326470.P13287626932889715884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (A242474 (n + 1)).toNat

end

end A326470.P13287626932889715884

/-! ## A326470.P7529624104406473660

`A326595(A351374(n+1))`
-/

namespace A326470.P7529624104406473660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (A351374 (n + 1)).toNat

end

end A326470.P7529624104406473660

/-!
# A326471: Sum of the third largest parts of the partitions of n into 9 parts.

The programs for A326471, there is no canonical definition to state claims against.
-/

/-! ## A326471.P17242581401941346679

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326468(n)-A326469(n)-A326470(n)-A326472(n)-A326473(n)`
-/

namespace A326471.P17242581401941346679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326468 n - A326469 n - A326470 n - A326472 n - A326473 n

end

end A326471.P17242581401941346679

/-! ## A326471.P1483907235414388485

`A326596(A077342(n+1))`
-/

namespace A326471.P1483907235414388485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 (A077342 (n + 1)).toNat

end

end A326471.P1483907235414388485

/-! ## A326471.P8848749487125544035

`A089867(A326596(n+1))`
-/

namespace A326471.P8848749487125544035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A326596 (n + 1)).toNat

end

end A326471.P8848749487125544035

/-! ## A326471.P15191796384673340286

`A326596(A242474(n+1))`
-/

namespace A326471.P15191796384673340286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 (A242474 (n + 1)).toNat

end

end A326471.P15191796384673340286

/-! ## A326471.P7129258039343902392

`A326596(A351374(n+1))`
-/

namespace A326471.P7129258039343902392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 (A351374 (n + 1)).toNat

end

end A326471.P7129258039343902392

/-!
# A326472: Sum of the second largest parts of the partitions of n into 9 parts.

The programs for A326472, there is no canonical definition to state claims against.
-/

/-! ## A326472.P12416639922592053625

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326468(n)-A326469(n)-A326470(n)-A326471(n)-A326473(n)`
-/

namespace A326472.P12416639922592053625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326468 n - A326469 n - A326470 n - A326471 n - A326473 n

end

end A326472.P12416639922592053625

/-! ## A326472.P7892214064144268608

`A326597(A077342(n+1))`
-/

namespace A326472.P7892214064144268608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (A077342 (n + 1)).toNat

end

end A326472.P7892214064144268608

/-! ## A326472.P17103147227371217268

`A118759(A326597(n+1))`
-/

namespace A326472.P17103147227371217268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A326597 (n + 1)).toNat

end

end A326472.P17103147227371217268

/-! ## A326472.P11081577687122807855

`A326597(A242474(n+1))`
-/

namespace A326472.P11081577687122807855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (A242474 (n + 1)).toNat

end

end A326472.P11081577687122807855

/-! ## A326472.P13901229830025210642

`A326597(A351374(n+1))`
-/

namespace A326472.P13901229830025210642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (A351374 (n + 1)).toNat

end

end A326472.P13901229830025210642

/-!
# A326473: Sum of the largest parts of the partitions of n into 9 parts.

The programs for A326473, there is no canonical definition to state claims against.
-/

/-! ## A326473.P8749635083252227717

`A326464(n)-A326465(n)-A326466(n)-A326467(n)-A326468(n)-A326469(n)-A326470(n)-A326471(n)-A326472(n)`
-/

namespace A326473.P8749635083252227717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A326465 n - A326466 n - A326467 n - A326468 n - A326469 n - A326470 n - A326471 n - A326472 n

end

end A326473.P8749635083252227717

/-! ## A326473.P13648362928601831245

`A326598(A077342(n+1))`
-/

namespace A326473.P13648362928601831245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (A077342 (n + 1)).toNat

end

end A326473.P13648362928601831245

/-! ## A326473.P13732881773345276201

`A326598(A242474(n+1))`
-/

namespace A326473.P13732881773345276201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (A242474 (n + 1)).toNat

end

end A326473.P13732881773345276201

/-! ## A326473.P10254529238964116840

`A326598(A351374(n+1))`
-/

namespace A326473.P10254529238964116840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (A351374 (n + 1)).toNat

end

end A326473.P10254529238964116840

/-! ## A326473.P5561950663862728417

`A318623(A001595(n))*A326598(n+1)`
-/

namespace A326473.P5561950663862728417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318623 (A001595 n).toNat * A326598 (n + 1)

end

end A326473.P5561950663862728417

/-!
# A326474: A(n, k) = (m*k)! [x^k] MittagLefflerE(m, x)^n, for m = 3, n >= 0, k >= 0; square array read by descending antidiagonals.

The programs for A326474, there is no canonical definition to state claims against.
-/

/-! ## A326474.P1227330986250254725

`A003056((n-C(∑[char[∑[n]]], 2))²^(n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A326474.P1227330986250254725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2 : ℚ) ^ (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 : ℤ))).toNat

end

end A326474.P1227330986250254725

/-! ## A326474.P4391186893731945984

`A097448(A266886(n+2))`
-/

namespace A326474.P4391186893731945984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A266886 (n + 2)).toNat

end

end A326474.P4391186893731945984

/-! ## A326474.P7652554741174712858

`A185214(2^A004248(n))`
-/

namespace A326474.P7652554741174712858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A326474.P7652554741174712858

/-! ## A326474.P3592341147957858361

`A135662(3^A321615(n))`
-/

namespace A326474.P3592341147957858361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A321615 n : ℤ))).toNat

end

end A326474.P3592341147957858361

/-! ## A326474.P10335187426389091799

`A241088(A294522(n+1)+1)`
-/

namespace A326474.P10335187426389091799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241088 (A294522 (n + 1) + 1).toNat

end

end A326474.P10335187426389091799

/-!
# A326476: A(n, k) = (m*k)! [x^k] MittagLefflerE(m, x)^n, for m = 2, n >= 0, k >= 0; square array read by descending antidiagonals.

The programs for A326476, there is no canonical definition to state claims against.
-/

/-! ## A326476.P5866998901623676144

`A113221(A004248(n)*A108934(n))`
-/

namespace A326476.P5866998901623676144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A004248 n * A108934 n).toNat

end

end A326476.P5866998901623676144

/-! ## A326476.P10406524841808246499

`A113221(A004248(n)*A108947(n))`
-/

namespace A326476.P10406524841808246499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A004248 n * A108947 n).toNat

end

end A326476.P10406524841808246499

/-! ## A326476.P4208595920789513424

`and(p?[A104980(n)], A253286(n))`
-/

namespace A326476.P4208595920789513424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A253286 n)

end

end A326476.P4208595920789513424

/-! ## A326476.P3899464475104381199

`A004248(n)*A005136(A122016(n))`
-/

namespace A326476.P3899464475104381199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A005136 (A122016 n).toNat

end

end A326476.P3899464475104381199

/-! ## A326476.P2065018626264198880

`A101211(A256977(n+3))*A369326(n)`
-/

namespace A326476.P2065018626264198880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A256977 (n + 3)).toNat * A369326 n

end

end A326476.P2065018626264198880

/-!
# A326478: a(n) = n*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)).

The programs for A326478, the canonical program `A326478.P1216846664701973033` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326478 has offset 1).

The definition of A326478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326478.P16811305938347894723

`A326578(n+1)/(n+1)`
-/

namespace A326478.P16811305938347894723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326578 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A326478.P16811305938347894723

namespace A326478

/-- `A326578(n+1)/(n+1)` -/
def P16811305938347894723.Spec : Prop :=
  ∀ n, P16811305938347894723.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P14442951913122575589

`(n+1)/A326584(n+1)`
-/

namespace A326478.P14442951913122575589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326584 (n + 1) : ℚ)

end

end A326478.P14442951913122575589

namespace A326478

/-- `(n+1)/A326584(n+1)` -/
def P14442951913122575589.Spec : Prop :=
  ∀ n, P14442951913122575589.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P8102271700113124538

`(n+1)/gcd((n+1)², A027642(n))`
-/

namespace A326478.P8102271700113124538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A027642 n) : ℚ)

end

end A326478.P8102271700113124538

namespace A326478

/-- `(n+1)/gcd((n+1)², A027642(n))` -/
def P8102271700113124538.Spec : Prop :=
  ∀ n, P8102271700113124538.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P9619363929017020445

`lcm(n+1, A309132(n+1))/(n+1)`
-/

namespace A326478.P9619363929017020445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A309132 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A326478.P9619363929017020445

namespace A326478

/-- `lcm(n+1, A309132(n+1))/(n+1)` -/
def P9619363929017020445.Spec : Prop :=
  ∀ n, P9619363929017020445.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P4603513241027188124

`A326579(n+1)/A027642(n)`
-/

namespace A326478.P4603513241027188124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (n + 1) : ℚ) / (A027642 n : ℚ)

end

end A326478.P4603513241027188124

namespace A326478

/-- `A326579(n+1)/A027642(n)` -/
def P4603513241027188124.Spec : Prop :=
  ∀ n, P4603513241027188124.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P1216846664701973033

`A005451(n+1)/A166123(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A326478

/-- `A005451(n+1)/A166123(n+1)` -/
def P1216846664701973033.Spec : Prop :=
  ∀ n, P1216846664701973033.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P5041934376558951627

`A309132(n+1)/gcd(A002378(n), A309132(n+1))`
-/

namespace A326478.P5041934376558951627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309132 (n + 1) : ℚ) / (Int.gcd (A002378 n) (A309132 (n + 1)) : ℚ)

end

end A326478.P5041934376558951627

namespace A326478

/-- `A309132(n+1)/gcd(A002378(n), A309132(n+1))` -/
def P5041934376558951627.Spec : Prop :=
  ∀ n, P5041934376558951627.a n = (A326478 (n + 1) : ℚ)

end A326478

/-! ## A326478.P257399953100109014

`gcd(n+1, A046094(n+1))`
-/

namespace A326478.P257399953100109014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A046094 (n + 1))

end

end A326478.P257399953100109014

namespace A326478

/-- `gcd(n+1, A046094(n+1))` -/
def P257399953100109014.Spec : Prop :=
  ∀ n, (P257399953100109014.a n : ℤ) = A326478 (n + 1)

end A326478

/-! ## A326478.P2366964256523320477

`gcd(n+1, A050925(n))`
-/

namespace A326478.P2366964256523320477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A050925 n)

end

end A326478.P2366964256523320477

namespace A326478

/-- `gcd(n+1, A050925(n))` -/
def P2366964256523320477.Spec : Prop :=
  ∀ n, (P2366964256523320477.a n : ℤ) = A326478 (n + 1)

end A326478

/-! ## A326478.P1313743905232356218

`A000188(A309132(n+1))`
-/

namespace A326478.P1313743905232356218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A309132 (n + 1)).toNat

end

end A326478.P1313743905232356218

namespace A326478

/-- `A000188(A309132(n+1))` -/
def P1313743905232356218.Spec : Prop :=
  ∀ n, P1313743905232356218.a n = A326478 (n + 1)

end A326478

/-! ## A326478.P12964944096987677675

`A000188(A326578(n+1))`
-/

namespace A326478.P12964944096987677675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A326578 (n + 1)).toNat

end

end A326478.P12964944096987677675

namespace A326478

/-- `A000188(A326578(n+1))` -/
def P12964944096987677675.Spec : Prop :=
  ∀ n, P12964944096987677675.a n = A326478 (n + 1)

end A326478

/-!
# A326481: a(n) = E2_{n}(0) with E2_{n} the polynomials defined in A326480.

The programs for A326481, there is no canonical definition to state claims against.
-/

/-! ## A326481.P9225803767301133956

`A342314(∑[n])-A155585(n+1)`
-/

namespace A326481.P9225803767301133956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342314 (∑ j ∈ Finset.range (n + 1), f1 j) - A155585 (n + 1)

end

end A326481.P9225803767301133956

/-! ## A326481.P17072072696354658976

`A326480(∑[n])`
-/

namespace A326481.P17072072696354658976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326481.P17072072696354658976

/-! ## A326481.P12713326315998362158

`A326480(A000217(n))+char[9]`
-/

namespace A326481.P12713326315998362158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326480 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326481.P12713326315998362158

/-! ## A326481.P16251250666831940663

`A326480(A130489(n))+A064458(n)`
-/

namespace A326481.P16251250666831940663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326480 (A130489 n).toNat + A064458 n

end

end A326481.P16251250666831940663

/-! ## A326481.P10737873783818672007

`A326525(n)+A326480(A000217(n))`
-/

namespace A326481.P10737873783818672007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326525 n + A326480 (A000217 n).toNat

end

end A326481.P10737873783818672007

/-!
# A326483: a(n) = 2^n*E2_{n}(1/2) with E2_{n} the polynomials defined in A326480.

The programs for A326483, there is no canonical definition to state claims against.
-/

/-! ## A326483.P7159718486172203687

`2^n*A347598(and(1, n)+n)`
-/

namespace A326483.P7159718486172203687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A347598 (Nat.land 1 n + n)

end

end A326483.P7159718486172203687

/-! ## A326483.P17751020564254094685

`A000079(n)*A028296(∑[and(1, n)])`
-/

namespace A326483.P17751020564254094685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A028296 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326483.P17751020564254094685

/-! ## A326483.P14654117815413931663

`A117575(2*n+1)*A241209(n)`
-/

namespace A326483.P14654117815413931663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n + 1) * A241209 n

end

end A326483.P14654117815413931663

/-! ## A326483.P10585618641087374748

`A000079(n)*A028296(A110654(n))`
-/

namespace A326483.P10585618641087374748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A028296 (A110654 n).toNat

end

end A326483.P10585618641087374748

/-! ## A326483.P16173737605416911470

`sqrt(A000302(n))*A028296(A110654(n))`
-/

namespace A326483.P16173737605416911470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * (A028296 (A110654 n).toNat : ℝ)

end

end A326483.P16173737605416911470

/-!
# A326486: Number of partitions of n where each part is a power of a factor of n.

The programs for A326486, there is no canonical definition to state claims against.
-/

/-! ## A326486.P2525541879825742251

`A128401(A343371(n)%A128394(n+2))`
-/

namespace A326486.P2525541879825742251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128401 (Int.tmod (A343371 n) (A128394 (n + 2))).toNat

end

end A326486.P2525541879825742251

/-! ## A326486.P17646165030257401407

`A128401(A343371(n))%A141214(3*n+1)`
-/

namespace A326486.P17646165030257401407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128401 (A343371 n).toNat) (A141214 (3 * n + 1))

end

end A326486.P17646165030257401407

/-! ## A326486.P14130831593174607858

`A104433(A044050(∏{d}[n, #]))+A073490(n+1)`
-/

namespace A326486.P14130831593174607858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104433 (A044050 (∏ d ∈ Nat.divisors (f1 n), d)).toNat + A073490 (n + 1)

end

end A326486.P14130831593174607858

/-!
# A326489: Number of product-free subsets of {1..n}.

The programs for A326489, there is no canonical definition to state claims against.
-/

/-! ## A326489.P11846460928602588378

`ceil(acot(n))*A327591(n)-1`
-/

namespace A326489.P11846460928602588378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A327591 n - 1

end

end A326489.P11846460928602588378

/-! ## A326489.P13802181835783827931

`A327591(n)+A057428(n)`
-/

namespace A326489.P13802181835783827931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n + A057428 n

end

end A326489.P13802181835783827931

/-! ## A326489.P11814920936313720247

`A327591(n)-A057427(n)`
-/

namespace A326489.P11814920936313720247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - A057427 n

end

end A326489.P11814920936313720247

/-! ## A326489.P509047255411858859

`A327591(n)-char[A132196(n)]`
-/

namespace A326489.P509047255411858859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326489.P509047255411858859

/-! ## A326489.P2714495510388396605

`A327591(n)-char[A344180(n)]`
-/

namespace A326489.P2714495510388396605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326489.P2714495510388396605

/-! ## A326489.P1521910434822528936

`A327591(A065033(2*n))-1`
-/

namespace A326489.P1521910434822528936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 (A065033 (2 * n)).toNat - 1

end

end A326489.P1521910434822528936

/-! ## A326489.P49726382393008148

`A327591(n)-char[A250249(n+1)]`
-/

namespace A326489.P49726382393008148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326489.P49726382393008148

/-! ## A326489.P4911065431113551438

`A327591(n)-A051026(n+1)%2`
-/

namespace A326489.P4911065431113551438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - Int.tmod (A051026 (n + 1)) 2

end

end A326489.P4911065431113551438

/-! ## A326489.P4103404208476414124

`floor(A327591(n)-A078120(n+1)/6)`
-/

namespace A326489.P4103404208476414124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327591 n : ℚ) - (A078120 (n + 1) : ℚ) / 6⌋

end

end A326489.P4103404208476414124

/-! ## A326489.P179316553170094391

`floor(A327591(n)-n/A018252(n+1))`
-/

namespace A326489.P179316553170094391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327591 n : ℚ) - (n : ℚ) / (A018252 (n + 1) : ℚ)⌋

end

end A326489.P179316553170094391

/-! ## A326489.P1862201512110494125

`A327591(n)+A249121(round(n/(n+1)))`
-/

namespace A326489.P1862201512110494125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n + A249121 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A326489.P1862201512110494125

/-! ## A326489.P9188545858502587659

`A327591(n)-A078120(round(n/(n+1))+1)`
-/

namespace A326489.P9188545858502587659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - A078120 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A326489.P9188545858502587659

/-! ## A326489.P605789342240028454

`A327591(n)-A001222(A027746(n+1))`
-/

namespace A326489.P605789342240028454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327591 n - A001222 (A027746 (n + 1)).toNat

end

end A326489.P605789342240028454

/-!
# A326490: Number of subsets of {1..n} containing no differences or quotients of pairs of distinct elements.

The programs for A326490, there is no canonical definition to state claims against.
-/

/-! ## A326490.P1868290707044084918

`A326495(n)+ceil(n/98)`
-/

namespace A326490.P1868290707044084918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326495 n + ⌈(n : ℚ) / 98⌉

end

end A326490.P1868290707044084918

/-! ## A326490.P11447843332675743280

`A326495(n)-A000007(n)+1`
-/

namespace A326490.P11447843332675743280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326495 n - A000007 n + 1

end

end A326490.P11447843332675743280

/-! ## A326490.P701541275636970048

`A178334(n)*A326495(n)+1`
-/

namespace A326490.P701541275636970048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A326495 n + 1

end

end A326490.P701541275636970048

/-! ## A326490.P1840986020757043743

`and(A000225(n), A326495(n))+1`
-/

namespace A326490.P1840986020757043743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A326495 n) + 1

end

end A326490.P1840986020757043743

/-! ## A326490.P3665775794837766750

`floor(A326495(n)+sqrt(A001221(n+1)))`
-/

namespace A326490.P3665775794837766750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326495 n : ℝ) + Real.sqrt (A001221 (n + 1) : ℝ)⌋

end

end A326490.P3665775794837766750

/-! ## A326490.P11849264761640609792

`A352894(A000040(n+1))+A326495(n)`
-/

namespace A326490.P11849264761640609792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352894 (A000040 (n + 1)).toNat + A326495 n

end

end A326490.P11849264761640609792

/-! ## A326490.P8742224222419297047

`A352894(A242752(n+1))+A326495(n)`
-/

namespace A326490.P8742224222419297047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352894 (A242752 (n + 1)).toNat + A326495 n

end

end A326490.P8742224222419297047

/-!
# A326491: Number of maximal subsets of {1..n} containing no differences or quotients of pairs of distinct elements.

The programs for A326491, there is no canonical definition to state claims against.
-/

/-! ## A326491.P1616707365007237801

`floor(A326497(n)+atan(n))`
-/

namespace A326491.P1616707365007237801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326497 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A326491.P1616707365007237801

/-! ## A326491.P11537375758185531357

`A326497(n)+A157928(n)`
-/

namespace A326491.P11537375758185531357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326497 n + A157928 n

end

end A326491.P11537375758185531357

/-! ## A326491.P3313736225968094651

`A326497(n)+A043545(n²)`
-/

namespace A326491.P3313736225968094651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326497 n + A043545 (n ^ 2)

end

end A326491.P3313736225968094651

/-! ## A326491.P3352565670907811580

`A326497(n)+A274070(n+1)`
-/

namespace A326491.P3352565670907811580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326497 n + A274070 (n + 1)

end

end A326491.P3352565670907811580

/-! ## A326491.P8857122574167897352

`A326497(n)+A267537(n+2)`
-/

namespace A326491.P8857122574167897352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326497 n + A267537 (n + 2)

end

end A326491.P8857122574167897352

/-!
# A326492: Number of maximal subsets of {1..n} containing no quotients of pairs of distinct elements.

The programs for A326492, there is no canonical definition to state claims against.
-/

/-! ## A326492.P3575640344107983087

`floor(A326496(n)+atan(n))`
-/

namespace A326492.P3575640344107983087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326496 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A326492.P3575640344107983087

/-! ## A326492.P4959844914866861346

`A326496(n)+A157928(n)`
-/

namespace A326492.P4959844914866861346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A157928 n

end

end A326492.P4959844914866861346

/-! ## A326492.P11137354864988836098

`A326496(n)+A043545(n²)`
-/

namespace A326492.P11137354864988836098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A043545 (n ^ 2)

end

end A326492.P11137354864988836098

/-! ## A326492.P2224214845711815843

`A326496(n)+A179184(n+1)`
-/

namespace A326492.P2224214845711815843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A179184 (n + 1)

end

end A326492.P2224214845711815843

/-! ## A326492.P5122620611994689026

`A326496(n)+A274070(n+1)`
-/

namespace A326492.P5122620611994689026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A274070 (n + 1)

end

end A326492.P5122620611994689026

/-! ## A326492.P4584411658358761146

`A326496(n)%A000293(n)+1`
-/

namespace A326492.P4584411658358761146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326496 n) (A000293 n) + 1

end

end A326492.P4584411658358761146

/-! ## A326492.P14174376821684319260

`A326496(n)+A019426(n)%2`
-/

namespace A326492.P14174376821684319260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + Int.tmod (A019426 n) 2

end

end A326492.P14174376821684319260

/-! ## A326492.P9923254118969772315

`A326496(n)+A004197(∑[n]+1)`
-/

namespace A326492.P9923254118969772315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A004197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A326492.P9923254118969772315

/-! ## A326492.P17945665116732162367

`A326496(n)+A001221(A060632(n))`
-/

namespace A326492.P17945665116732162367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326496 n + A001221 (A060632 n).toNat

end

end A326492.P17945665116732162367

/-!
# A326493: Sum of multinomials M(n-k; p_1-1, ..., p_k-1), where p = (p_1, ..., p_k) ranges over all partitions of n into distinct parts (k is a partition length).

The programs for A326493, there is no canonical definition to state claims against.
-/

/-! ## A326493.P17344704770034573156

`A117385(A275312(n))`
-/

namespace A326493.P17344704770034573156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117385 (A275312 n).toNat

end

end A326493.P17344704770034573156

/-! ## A326493.P10929171028946754198

`A119605(A286496(n))`
-/

namespace A326493.P10929171028946754198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A286496 n).toNat

end

end A326493.P10929171028946754198

/-! ## A326493.P3992937042620324565

`A146985(A304710(n))`
-/

namespace A326493.P3992937042620324565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 (A304710 n).toNat

end

end A326493.P3992937042620324565

/-! ## A326493.P796425917100628840

`A195098(A002990(n+1))`
-/

namespace A326493.P796425917100628840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A002990 (n + 1)).toNat

end

end A326493.P796425917100628840

/-! ## A326493.P1805357089478221870

`A251629(A000992(n+1))`
-/

namespace A326493.P1805357089478221870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A000992 (n + 1)).toNat

end

end A326493.P1805357089478221870

/-!
# A326494: Number of subsets of {1..n} containing all differences and quotients of pairs of distinct elements.

The programs for A326494, the canonical program `A326494.P9866001270718932447` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326494 has offset 0).

The definition of A326494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326494.P9866001270718932447

`C(4, n)!%2+2*n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326494

/-- `C(4, n)!%2+2*n` -/
def P9866001270718932447.Spec : Prop :=
  ∀ n, (P9866001270718932447.a n : ℤ) = A326494 n

theorem P9866001270718932447.correct : P9866001270718932447.Spec := by
  intro n
  simp only [A326494]

end A326494

/-!
# A326495: Number of subsets of {1..n} containing no sums or products of pairs of elements.

The programs for A326495, there is no canonical definition to state claims against.
-/

/-! ## A326495.P10608064623156906534

`A326490(n)-ceil(abs(sin(n)))`
-/

namespace A326495.P10608064623156906534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326490 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A326495.P10608064623156906534

/-! ## A326495.P4966622481117558379

`A326490(round(sqrt(n²+1)))-1`
-/

namespace A326495.P4966622481117558379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326490 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A326495.P4966622481117558379

/-! ## A326495.P7157540345067712683

`abs(A326490(n)+A057428(n))`
-/

namespace A326495.P7157540345067712683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326490 n + A057428 n|

end

end A326495.P7157540345067712683

/-! ## A326495.P8176704350852785953

`abs(A057427(n)-A326490(n))`
-/

namespace A326495.P8176704350852785953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A326490 n|

end

end A326495.P8176704350852785953

/-! ## A326495.P12422837611614831406

`abs(A178334(n)-A326490(n))`
-/

namespace A326495.P12422837611614831406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178334 n - A326490 n|

end

end A326495.P12422837611614831406

/-! ## A326495.P16412955222421864876

`abs(A141044(n+1)-A326490(n))`
-/

namespace A326495.P16412955222421864876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141044 (n + 1) - A326490 n|

end

end A326495.P16412955222421864876

/-! ## A326495.P4174583410413544356

`abs(1-A326490(n)%A288809(n))`
-/

namespace A326495.P4174583410413544356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod (A326490 n) (A288809 n)|

end

end A326495.P4174583410413544356

/-! ## A326495.P5681886338791411809

`A326490(n)+1-A000032(C(2, n+2))`
-/

namespace A326495.P5681886338791411809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326490 n + 1 - A000032 (Nat.choose 2 (n + 2))

end

end A326495.P5681886338791411809

/-! ## A326495.P9225112712065069709

`A326489(n)+A326490(n)-A327591(n)`
-/

namespace A326495.P9225112712065069709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326489 n + (A326490 n - A327591 n)

end

end A326495.P9225112712065069709

/-! ## A326495.P9651435536534065217

`lcm(A326490(n)+A057428(n), A033999(n))`
-/

namespace A326495.P9651435536534065217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326490 n + A057428 n) (A033999 n)

end

end A326495.P9651435536534065217

/-!
# A326496: Number of maximal product-free subsets of {1..n}.

The programs for A326496, there is no canonical definition to state claims against.
-/

/-! ## A326496.P7574959612395442523

`A326492(n)-floor(atan(n))`
-/

namespace A326496.P7574959612395442523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n - ⌊Real.arctan (n : ℝ)⌋

end

end A326496.P7574959612395442523

/-! ## A326496.P10485723152122390287

`A326492(round(acot(n)+n))-1`
-/

namespace A326496.P10485723152122390287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A326496.P10485723152122390287

/-! ## A326496.P5308796741475619807

`A326492(C(2, n+1)+n)-1`
-/

namespace A326496.P5308796741475619807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 (Nat.choose 2 (n + 1) + n) - 1

end

end A326496.P5308796741475619807

/-! ## A326496.P545262047388728220

`A326492(char[1]+n)-ceil(sin(n)²)`
-/

namespace A326496.P545262047388728220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 ((if ∃ j, f1 j = n then 1 else 0) + n) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A326496.P545262047388728220

/-! ## A326496.P2549234315397066661

`A326492(n)-A157928(n)`
-/

namespace A326496.P2549234315397066661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n - A157928 n

end

end A326496.P2549234315397066661

/-! ## A326496.P1508663308240438941

`abs(A141044(n)-A326492(n))`
-/

namespace A326496.P1508663308240438941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141044 n - A326492 n|

end

end A326496.P1508663308240438941

/-! ## A326496.P5443326612659657640

`A326492(n)-A043545(n²)`
-/

namespace A326496.P5443326612659657640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n - A043545 (n ^ 2)

end

end A326496.P5443326612659657640

/-! ## A326496.P7429664602994230647

`A326492(n)-A274070(n+1)`
-/

namespace A326496.P7429664602994230647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n - A274070 (n + 1)

end

end A326496.P7429664602994230647

/-! ## A326496.P18212920738086115293

`char[1]+A326492(n)-and(1, A000040(n+1))`
-/

namespace A326496.P18212920738086115293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A326492 n - Int.land 1 (A000040 (n + 1)))

end

end A326496.P18212920738086115293

/-! ## A326496.P16742372107420273910

`A326492(n)-A001221(A060632(n))`
-/

namespace A326496.P16742372107420273910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326492 n - A001221 (A060632 n).toNat

end

end A326496.P16742372107420273910

/-!
# A326497: Number of maximal sum-free and product-free subsets of {1..n}.

The programs for A326497, there is no canonical definition to state claims against.
-/

/-! ## A326497.P5388777519065722161

`A326491(n)-floor(atan(n))`
-/

namespace A326497.P5388777519065722161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326491 n - ⌊Real.arctan (n : ℝ)⌋

end

end A326497.P5388777519065722161

/-! ## A326497.P16413060576502640318

`A326491(round(acot(n)+n))-1`
-/

namespace A326497.P16413060576502640318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326491 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A326497.P16413060576502640318

/-! ## A326497.P4991061036406713524

`A326491(char[1]+n)+C(2, n+2)-1`
-/

namespace A326497.P4991061036406713524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326491 ((if ∃ j, f1 j = n then 1 else 0) + n) + ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A326497.P4991061036406713524

/-! ## A326497.P8316991223100171337

`A326491(n)-A157928(n)`
-/

namespace A326497.P8316991223100171337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326491 n - A157928 n

end

end A326497.P8316991223100171337

/-! ## A326497.P3044136885607441744

`abs(A141044(n)-A326491(n))`
-/

namespace A326497.P3044136885607441744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141044 n - A326491 n|

end

end A326497.P3044136885607441744

/-!
# A326498: Number of maximal subsets of {1..n} containing no sums of distinct elements.

The programs for A326498, there is no canonical definition to state claims against.
-/

/-! ## A326498.P8857165890116062746

`A342697(n)+A056556(A123020(n))`
-/

namespace A326498.P8857165890116062746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 n + A056556 (A123020 n).toNat

end

end A326498.P8857165890116062746

/-! ## A326498.P3912695278876937817

`A300300(n)+A279228(A300300(n))`
-/

namespace A326498.P3912695278876937817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300300 n + A279228 (A300300 n).toNat

end

end A326498.P3912695278876937817

/-! ## A326498.P13248281866213646275

`A327045(n)-A001221(A000110(n))`
-/

namespace A326498.P13248281866213646275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327045 n - A001221 (A000110 n).toNat

end

end A326498.P13248281866213646275

/-! ## A326498.P4304180661662917024

`A325244(n+3)-A059841(A000108(n))`
-/

namespace A326498.P4304180661662917024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325244 (n + 3) - A059841 (A000108 n).toNat

end

end A326498.P4304180661662917024

/-! ## A326498.P3944758900877982864

`A338006(A349977(n+2))+A332305(A003557(n+2))`
-/

namespace A326498.P3944758900877982864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A349977 (n + 2)).toNat + A332305 (A003557 (n + 2)).toNat

end

end A326498.P3944758900877982864

/-!
# A326499: a(n) = A046693(n) - A309407(n). Excess E of a length n sparse ruler.

The programs for A326499, there is no canonical definition to state claims against.
-/

/-! ## A326499.P4001427259992188703

`char[A308766(n+1)-51]`
-/

namespace A326499.P4001427259992188703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (n + 1) - 51

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P4001427259992188703

/-! ## A326499.P7915803865612383581

`char[Δ[A308766(A051340(n))]]`
-/

namespace A326499.P7915803865612383581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P7915803865612383581

/-! ## A326499.P13588253512355892001

`char[Δ[A308766(A100727(n))]]`
-/

namespace A326499.P13588253512355892001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P13588253512355892001

/-! ## A326499.P17767052226851530762

`char[Δ[A308766(A152271(n))]]`
-/

namespace A326499.P17767052226851530762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P17767052226851530762

/-! ## A326499.P14242177753786647099

`char[Δ[A308766(A193592(n))]]`
-/

namespace A326499.P14242177753786647099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P14242177753786647099

/-! ## A326499.P5344247497297688235

`char[eq[2*A103298(n), A000267(3*n+2)]-51]`
-/

namespace A326499.P5344247497297688235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103298 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 51

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P5344247497297688235

/-! ## A326499.P10329711350931524481

`char[Δ[A308766(A120885(n+1))]]`
-/

namespace A326499.P10329711350931524481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A120885 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326499.P10329711350931524481

/-! ## A326499.P402309545427327229

`A010057(A276502(n+1)+A105108(n))`
-/

namespace A326499.P402309545427327229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A276502 (n + 1) + A105108 n).toNat

end

end A326499.P402309545427327229

/-! ## A326499.P6282481783391882429

`A000045(and(A033762(n+1), A131182(n)))`
-/

namespace A326499.P6282481783391882429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A033762 (n + 1)) (A131182 n)).toNat

end

end A326499.P6282481783391882429

/-! ## A326499.P17978398536045246403

`A023533(A191925(n+1)+n+1)`
-/

namespace A326499.P17978398536045246403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A191925 (n + 1) + (n + 1 : ℤ)).toNat

end

end A326499.P17978398536045246403

