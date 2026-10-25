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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A209200: G.f.: (1-4*x)^(-1/2) * (1-8*x)^(-1/4).

The programs for A209200, there is no canonical definition to state claims against.
-/

/-! ## A209200.P16307340729284960799

`A004525(A025225(n+2)-A214760(n+1))`
-/

namespace A209200.P16307340729284960799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A025225 (n + 2) - A214760 (n + 1)).toNat

end

end A209200.P16307340729284960799

/-!
# A209202: Values of the difference d for 3 primes in geometric-arithmetic progression with the minimal sequence {3*3^j + j*d}, j = 0 to 2.

The programs for A209202, the canonical program `A209202.P7856621708581531134` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209202 has offset 1).

The definition of A209202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209202.P7856621708581531134

`A000203(A023207(n+4))-10`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209202

/-- `A000203(A023207(n+4))-10` -/
def P7856621708581531134.Spec : Prop :=
  ∀ n, P7856621708581531134.a n = A209202 (n + 1)

theorem P7856621708581531134.correct : P7856621708581531134.Spec := by
  intro n
  simp only [A209202, Nat.add_sub_cancel]

end A209202

/-! ## A209202.P3586692634843271436

`eq[A000045(A034693(n+13)), A010051(n+9)]`
-/

namespace A209202.P3586692634843271436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A034693 (n + 13)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209202.P3586692634843271436

namespace A209202

/-- `eq[A000045(A034693(n+13)), A010051(n+9)]` -/
def P3586692634843271436.Spec : Prop :=
  ∀ n, (P3586692634843271436.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P6667422820666527707

`eq[A016014(n+13), A300251(n+9)]`
-/

namespace A209202.P6667422820666527707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209202.P6667422820666527707

namespace A209202

/-- `eq[A016014(n+13), A300251(n+9)]` -/
def P6667422820666527707.Spec : Prop :=
  ∀ n, (P6667422820666527707.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P6676458833673590038

`eq[log2(A195352(n+15)), A185091(n+10)]`
-/

namespace A209202.P6676458833673590038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A195352 (n + 15) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A209202.P6676458833673590038

namespace A209202

/-- `eq[log2(A195352(n+15)), A185091(n+10)]` -/
def P6676458833673590038.Spec : Prop :=
  ∀ n, (P6676458833673590038.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P2559652473253366510

`eq[A000203(A195352(n+15)), A103506(n+10)]`
-/

namespace A209202.P2559652473253366510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A195352 (n + 15)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209202.P2559652473253366510

namespace A209202

/-- `eq[A000203(A195352(n+15)), A103506(n+10)]` -/
def P2559652473253366510.Spec : Prop :=
  ∀ n, (P2559652473253366510.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P9906487460596294855

`eq[A103509(n+10)!, A195352(n+15)]`
-/

namespace A209202.P9906487460596294855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A103509 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195352 (n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209202.P9906487460596294855

namespace A209202

/-- `eq[A103509(n+10)!, A195352(n+15)]` -/
def P9906487460596294855.Spec : Prop :=
  ∀ n, (P9906487460596294855.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P461934458904642139

`eq[A000005(A020742(n+10)), A053204(n+9)]`
-/

namespace A209202.P461934458904642139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020742 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209202.P461934458904642139

namespace A209202

/-- `eq[A000005(A020742(n+10)), A053204(n+9)]` -/
def P461934458904642139.Spec : Prop :=
  ∀ n, (P461934458904642139.a n : ℤ) = A209202 (n + 1)

end A209202

/-! ## A209202.P5974049112104778381

`eq[A010051(n+9), A050412(n+13)]`
-/

namespace A209202.P5974049112104778381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209202.P5974049112104778381

namespace A209202

/-- `eq[A010051(n+9), A050412(n+13)]` -/
def P5974049112104778381.Spec : Prop :=
  ∀ n, (P5974049112104778381.a n : ℤ) = A209202 (n + 1)

end A209202

/-!
# A209211: Numbers k such that k-1 and phi(k) are relatively prime.

The programs for A209211, the canonical program `A209211.P11824110619297163653` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209211 has offset 1).

The definition of A209211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209211.P5189608234317402753

`eq[n, A318827(n+1)]+1`
-/

namespace A209211.P5189608234317402753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P5189608234317402753

namespace A209211

/-- `eq[n, A318827(n+1)]+1` -/
def P5189608234317402753.Spec : Prop :=
  ∀ n, (P5189608234317402753.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P11824110619297163653

`eq[n, A318828(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A209211

/-- `eq[n, A318828(n+1)]+1` -/
def P11824110619297163653.Spec : Prop :=
  ∀ n, (P11824110619297163653.a n : ℤ) = A209211 (n + 1)

theorem P11824110619297163653.correct : P11824110619297163653.Spec := by
  intro n
  simp only [A209211, Nat.add_sub_cancel]

end A209211

/-! ## A209211.P14513554204065853326

`eq[1, gcd(n, A000010(n+1))]+1`
-/

namespace A209211.P14513554204065853326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209211.P14513554204065853326

namespace A209211

/-- `eq[1, gcd(n, A000010(n+1))]+1` -/
def P14513554204065853326.Spec : Prop :=
  ∀ n, (P14513554204065853326.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P4420907236075033727

`lt[n, A050014(A330747(n+1))]+1`
-/

namespace A209211.P4420907236075033727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050014 (A330747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A209211.P4420907236075033727

namespace A209211

/-- `lt[n, A050014(A330747(n+1))]+1` -/
def P4420907236075033727.Spec : Prop :=
  ∀ n, (P4420907236075033727.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P3088994219567412410

`lt[A348259(n+1), 1]+1`
-/

namespace A209211.P3088994219567412410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209211.P3088994219567412410

namespace A209211

/-- `lt[A348259(n+1), 1]+1` -/
def P3088994219567412410.Spec : Prop :=
  ∀ n, (P3088994219567412410.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P2361802119581813726

`∩[A280196(n+1), A004277(n)]`
-/

namespace A209211.P2361802119581813726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209211.P2361802119581813726

namespace A209211

/-- `∩[A280196(n+1), A004277(n)]` -/
def P2361802119581813726.Spec : Prop :=
  ∀ n, (P2361802119581813726.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P11381499716766620265

`∩[A280196(n+1), A004275(n)]`
-/

namespace A209211.P11381499716766620265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209211.P11381499716766620265

namespace A209211

/-- `∩[A280196(n+1), A004275(n)]` -/
def P11381499716766620265.Spec : Prop :=
  ∀ n, (P11381499716766620265.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P16082081712309958790

`eq[1, A340081(n+1)]+1`
-/

namespace A209211.P16082081712309958790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P16082081712309958790

namespace A209211

/-- `eq[1, A340081(n+1)]+1` -/
def P16082081712309958790.Spec : Prop :=
  ∀ n, (P16082081712309958790.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P4364272819083046640

`record[A340083(n+1)+1]`
-/

namespace A209211.P4364272819083046640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340083 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209211.P4364272819083046640

namespace A209211

/-- `record[A340083(n+1)+1]` -/
def P4364272819083046640.Spec : Prop :=
  ∀ n, P4364272819083046640.a n = A209211 (n + 1)

end A209211

/-! ## A209211.P13861797689868549218

`record[A340086(n+1)+1]`
-/

namespace A209211.P13861797689868549218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340086 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209211.P13861797689868549218

namespace A209211

/-- `record[A340086(n+1)+1]` -/
def P13861797689868549218.Spec : Prop :=
  ∀ n, P13861797689868549218.a n = A209211 (n + 1)

end A209211

/-! ## A209211.P5986932027023310030

`record[A105222(n+1)-1]`
-/

namespace A209211.P5986932027023310030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209211.P5986932027023310030

namespace A209211

/-- `record[A105222(n+1)-1]` -/
def P5986932027023310030.Spec : Prop :=
  ∀ n, P5986932027023310030.a n = A209211 (n + 1)

end A209211

/-! ## A209211.P5682248191428679937

`eq[1, A049559(n+1)]+1`
-/

namespace A209211.P5682248191428679937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P5682248191428679937

namespace A209211

/-- `eq[1, A049559(n+1)]+1` -/
def P5682248191428679937.Spec : Prop :=
  ∀ n, (P5682248191428679937.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P11314994061803363751

`eq[1, A063994(n+1)]+1`
-/

namespace A209211.P11314994061803363751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P11314994061803363751

namespace A209211

/-- `eq[1, A063994(n+1)]+1` -/
def P11314994061803363751.Spec : Prop :=
  ∀ n, (P11314994061803363751.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P10795047957641167147

`eq[1, A187730(n+1)]+1`
-/

namespace A209211.P10795047957641167147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P10795047957641167147

namespace A209211

/-- `eq[1, A187730(n+1)]+1` -/
def P10795047957641167147.Spec : Prop :=
  ∀ n, (P10795047957641167147.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P9384385449984042483

`filter[A280196(n+1), A135528(#)]`
-/

namespace A209211.P9384385449984042483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A209211.P9384385449984042483

namespace A209211

/-- `filter[A280196(n+1), A135528(#)]` -/
def P9384385449984042483.Spec : Prop :=
  ∀ n, P9384385449984042483.a n = A209211 (n + 1)

end A209211

/-! ## A209211.P15247357021753838079

`eq[n+1, A105222(A185048(n+1))]`
-/

namespace A209211.P15247357021753838079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A185048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209211.P15247357021753838079

namespace A209211

/-- `eq[n+1, A105222(A185048(n+1))]` -/
def P15247357021753838079.Spec : Prop :=
  ∀ n, (P15247357021753838079.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P14256316811184500176

`record[A227140(n/A340084(n+1))]+1`
-/

namespace A209211.P14256316811184500176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((n : ℚ) / (A340084 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A209211.P14256316811184500176

namespace A209211

/-- `record[A227140(n/A340084(n+1))]+1` -/
def P14256316811184500176.Spec : Prop :=
  ∀ n, P14256316811184500176.a n = A209211 (n + 1)

end A209211

/-! ## A209211.P4118624026888074583

`lt[gcd(n-A219428(n+1), A219428(n+1)), 2]+1`
-/

namespace A209211.P4118624026888074583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) (A219428 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A209211.P4118624026888074583

namespace A209211

/-- `lt[gcd(n-A219428(n+1), A219428(n+1)), 2]+1` -/
def P4118624026888074583.Spec : Prop :=
  ∀ n, (P4118624026888074583.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P9240492775836123650

`eq[n, A028310(n)*A049559(A028310(n))]`
-/

namespace A209211.P9240492775836123650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A049559 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209211.P9240492775836123650

namespace A209211

/-- `eq[n, A028310(n)*A049559(A028310(n))]` -/
def P9240492775836123650.Spec : Prop :=
  ∀ n, (P9240492775836123650.a n : ℤ) = A209211 (n + 1)

end A209211

/-! ## A209211.P11458411417500430314

`filter[A280196(n+1), A266591(#)]`
-/

namespace A209211.P11458411417500430314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A209211.P11458411417500430314

namespace A209211

/-- `filter[A280196(n+1), A266591(#)]` -/
def P11458411417500430314.Spec : Prop :=
  ∀ n, P11458411417500430314.a n = A209211 (n + 1)

end A209211

/-!
# A209212: Number of nX1 1..7 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209212, there is no canonical definition to state claims against.
-/

/-! ## A209212.P2068415346123947256

`A209215(∑[n]+1)`
-/

namespace A209212.P2068415346123947256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209212.P2068415346123947256

/-! ## A209212.P16171577500461766330

`and(-5, A209215(A000124(n)))`
-/

namespace A209212.P16171577500461766330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A209215 (A000124 n).toNat)

end

end A209212.P16171577500461766330

/-! ## A209212.P13466650844442932125

`A308920(n)+A209215(A000124(n))`
-/

namespace A209212.P13466650844442932125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n + A209215 (A000124 n).toNat

end

end A209212.P13466650844442932125

/-! ## A209212.P5881821578975132246

`A326524(n)+A209215(A000124(n))`
-/

namespace A209212.P5881821578975132246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326524 n + A209215 (A000124 n).toNat

end

end A209212.P5881821578975132246

/-!
# A209213: Number of nX2 1..7 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209213, there is no canonical definition to state claims against.
-/

/-! ## A209213.P14764249334140440307

`A209215(∑[n+1]+2)`
-/

namespace A209213.P14764249334140440307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209213.P14764249334140440307

/-! ## A209213.P11549527784155608280

`record[A209215(A034807(n))]`
-/

namespace A209213.P11549527784155608280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (A034807 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209213.P11549527784155608280

/-! ## A209213.P14269605389119101784

`record[A209215(record[A162514(n)])]`
-/

namespace A209213.P14269605389119101784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209213.P14269605389119101784

/-!
# A209214: Number of nX3 1..7 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209214, there is no canonical definition to state claims against.
-/

/-! ## A209214.P2144068511240109972

`A209215(∑[n+2]+4)`
-/

namespace A209214.P2144068511240109972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209214.P2144068511240109972

/-!
# A209216: Number of nX1 0..7 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209216, there is no canonical definition to state claims against.
-/

/-! ## A209216.P10549316304963810313

`A209218(∑[n]+1)`
-/

namespace A209216.P10549316304963810313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209216.P10549316304963810313

/-! ## A209216.P13157551572013118274

`record[A209218(A114091(n+1))]`
-/

namespace A209216.P13157551572013118274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209216.P13157551572013118274

/-! ## A209216.P10792680924695847679

`A209218(A000124(n))+char[8]`
-/

namespace A209216.P10792680924695847679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209216.P10792680924695847679

/-! ## A209216.P11667206997086574757

`record[A209218(Δ[A053436(n+1)])]`
-/

namespace A209216.P11667206997086574757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209216.P11667206997086574757

/-!
# A209217: Number of nX2 0..7 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209217, there is no canonical definition to state claims against.
-/

/-! ## A209217.P12818525470138603121

`A209218(∑[n+1]+2)`
-/

namespace A209217.P12818525470138603121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209217.P12818525470138603121

/-! ## A209217.P3352553611141852568

`record[A209218(record[A209187(n+2)])]`
-/

namespace A209217.P3352553611141852568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209217.P3352553611141852568

/-! ## A209217.P2540721334767993319

`record[A209218(A114091(n+1)+1)]`
-/

namespace A209217.P2540721334767993319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209217.P2540721334767993319

/-!
# A209219: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209219, there is no canonical definition to state claims against.
-/

/-! ## A209219.P12760242791290265967

`A209224((n+1)²+n²)`
-/

namespace A209219.P12760242791290265967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 ((n + 1) ^ 2 + n ^ 2)

end

end A209219.P12760242791290265967

/-! ## A209219.P4356829047754796169

`lcm(2, A209224(A001844(n)))`
-/

namespace A209219.P4356829047754796169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209224 (A001844 n).toNat)

end

end A209219.P4356829047754796169

/-! ## A209219.P2254815871902927748

`record[A003982(n)*A209224(n+1)]`
-/

namespace A209219.P2254815871902927748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209219.P2254815871902927748

/-! ## A209219.P1260074850172651165

`record[gcd(A008482(n), A209224(n+1))]`
-/

namespace A209219.P1260074850172651165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A209224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209219.P1260074850172651165

/-! ## A209219.P12365096210023949273

`or(A000038(n), A209224(A001844(n)))`
-/

namespace A209219.P12365096210023949273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A209224 (A001844 n).toNat)

end

end A209219.P12365096210023949273

/-!
# A209220: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209220, there is no canonical definition to state claims against.
-/

/-! ## A209220.P11648058050354063158

`A209221(n+1)/A209222(n+1)*A209221(n+1)`
-/

namespace A209220.P11648058050354063158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209221 (n + 1) : ℚ) / (A209222 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A209220.P11648058050354063158

/-! ## A209220.P11942397139279056474

`A208496(n+1)/A208497(n+1)*A209221(n+1)`
-/

namespace A209220.P11942397139279056474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A208497 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A209220.P11942397139279056474

/-! ## A209220.P2427904658290075683

`(A208496(n+1)/A208497(n+1))²*A209222(n+1)`
-/

namespace A209220.P2427904658290075683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208496 (n + 1) : ℚ) / (A208497 (n + 1) : ℚ)) ^ 2 * (A209222 (n + 1) : ℚ)

end

end A209220.P2427904658290075683

/-! ## A209220.P8037008221003077600

`A208496(n+1)/A207170(n+1)*A208496(n+1)`
-/

namespace A209220.P8037008221003077600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208496 (n + 1) : ℚ)

end

end A209220.P8037008221003077600

/-! ## A209220.P17511060447280825505

`A209221(n+1)²/A209222(n+1)`
-/

namespace A209220.P17511060447280825505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209221 (n + 1) ^ 2 : ℚ) / (A209222 (n + 1) : ℚ)

end

end A209220.P17511060447280825505

/-! ## A209220.P2978065819304228595

`A208496(n+1)²/A207170(n+1)`
-/

namespace A209220.P2978065819304228595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A209220.P2978065819304228595

/-!
# A209221: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209221, there is no canonical definition to state claims against.
-/

/-! ## A209221.P13250486511458389305

`sqrt(A209220(n+1))*sqrt(A209222(n+1))`
-/

namespace A209221.P13250486511458389305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A209220 (n + 1) : ℝ) * Real.sqrt (A209222 (n + 1) : ℝ)

end

end A209221.P13250486511458389305

/-! ## A209221.P5914701249509567270

`A208496(n+1)/A208497(n+1)*A209222(n+1)`
-/

namespace A209221.P5914701249509567270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A208497 (n + 1) : ℚ) * (A209222 (n + 1) : ℚ)

end

end A209221.P5914701249509567270

/-! ## A209221.P13878229226142708648

`A208497(n+1)/A208496(n+1)*A209220(n+1)`
-/

namespace A209221.P13878229226142708648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) : ℚ) / (A208496 (n + 1) : ℚ) * (A209220 (n + 1) : ℚ)

end

end A209221.P13878229226142708648

/-! ## A209221.P7933949528604743816

`A208496(n+1)/A207170(n+1)*A208497(n+1)`
-/

namespace A209221.P7933949528604743816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208497 (n + 1) : ℚ)

end

end A209221.P7933949528604743816

/-! ## A209221.P11173329004093140658

`sqrt(A209220(n+1)/A207170(n+1))*A208497(n+1)`
-/

namespace A209221.P11173329004093140658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A209220 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) : ℝ) * (A208497 (n + 1) : ℝ)

end

end A209221.P11173329004093140658

/-! ## A209221.P18169539054977769785

`sqrt(A209220(n+1)*A209222(n+1))`
-/

namespace A209221.P18169539054977769785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A209220 (n + 1) * A209222 (n + 1) : ℝ)

end

end A209221.P18169539054977769785

/-!
# A209222: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209222, there is no canonical definition to state claims against.
-/

/-! ## A209222.P10308086808327622788

`A209221(n+1)/A209220(n+1)*A209221(n+1)`
-/

namespace A209222.P10308086808327622788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209221 (n + 1) : ℚ) / (A209220 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A209222.P10308086808327622788

/-! ## A209222.P7038133372930531929

`A208497(n+1)/A208496(n+1)*A209221(n+1)`
-/

namespace A209222.P7038133372930531929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) : ℚ) / (A208496 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A209222.P7038133372930531929

/-! ## A209222.P7187397460069222667

`(A208497(n+1)/A208496(n+1))²*A209220(n+1)`
-/

namespace A209222.P7187397460069222667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208497 (n + 1) : ℚ) / (A208496 (n + 1) : ℚ)) ^ 2 * (A209220 (n + 1) : ℚ)

end

end A209222.P7187397460069222667

/-! ## A209222.P10564885892819897647

`A208497(n+1)/A207170(n+1)*A208497(n+1)`
-/

namespace A209222.P10564885892819897647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208497 (n + 1) : ℚ)

end

end A209222.P10564885892819897647

/-! ## A209222.P8954645219183486211

`(A209221(n+1)/A208496(n+1))²*A207170(n+1)`
-/

namespace A209222.P8954645219183486211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A209221 (n + 1) : ℚ) / (A208496 (n + 1) : ℚ)) ^ 2 * (A207170 (n + 1) : ℚ)

end

end A209222.P8954645219183486211

/-! ## A209222.P680758818292811193

`A209221(n+1)²/A209220(n+1)`
-/

namespace A209222.P680758818292811193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209221 (n + 1) ^ 2 : ℚ) / (A209220 (n + 1) : ℚ)

end

end A209222.P680758818292811193

/-! ## A209222.P15057088951792109747

`A208497(n+1)²/A207170(n+1)`
-/

namespace A209222.P15057088951792109747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) ^ 2 : ℚ) / (A207170 (n + 1) : ℚ)

end

end A209222.P15057088951792109747

/-!
# A209223: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209223, there is no canonical definition to state claims against.
-/

/-! ## A209223.P6307289668699858888

`A208497(n+1)/A207170(n+1)*A208498(n+1)`
-/

namespace A209223.P6307289668699858888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208497 (n + 1) : ℚ) / (A207170 (n + 1) : ℚ) * (A208498 (n + 1) : ℚ)

end

end A209223.P6307289668699858888

/-! ## A209223.P10380530274276907586

`A209224(A000124(n+7)-7)`
-/

namespace A209223.P10380530274276907586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000124 (n + 7) - 7).toNat

end

end A209223.P10380530274276907586

/-! ## A209223.P14825977114419081881

`A209224(eq[7, A004736(n+1)]+1)`
-/

namespace A209223.P14825977114419081881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209223.P14825977114419081881

/-! ## A209223.P14785887603447675098

`A209224(A000096(n+5)+n+2)`
-/

namespace A209223.P14785887603447675098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A209223.P14785887603447675098

/-! ## A209223.P15649162339749117963

`A209224(A000217(n+6)+n+1)`
-/

namespace A209223.P15649162339749117963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A209223.P15649162339749117963

/-!
# A209224: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209224, there is no canonical definition to state claims against.
-/

/-! ## A209224.P17843747452147529611

`A207693(n+1)-A210709(A067747(n+1))`
-/

namespace A209224.P17843747452147529611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A209224.P17843747452147529611

/-!
# A209225: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209225, there is no canonical definition to state claims against.
-/

/-! ## A209225.P2708448825632043386

`A209224(A145018(n+4))`
-/

namespace A209225.P2708448825632043386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A145018 (n + 4)).toNat

end

end A209225.P2708448825632043386

/-! ## A209225.P7969981190450818610

`A209224(A052905(n)+9)`
-/

namespace A209225.P7969981190450818610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A052905 n + 9).toNat

end

end A209225.P7969981190450818610

/-! ## A209225.P4916191184077286840

`A209224(A055999(n)+10)`
-/

namespace A209225.P4916191184077286840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A055999 n + 10).toNat

end

end A209225.P4916191184077286840

/-! ## A209225.P13009846829360206307

`A209224(A167614(n+2)+1)`
-/

namespace A209225.P13009846829360206307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A167614 (n + 2) + 1).toNat

end

end A209225.P13009846829360206307

/-! ## A209225.P379446597399060632

`A209224(A166136(n+2)-2)`
-/

namespace A209225.P379446597399060632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A166136 (n + 2) - 2).toNat

end

end A209225.P379446597399060632

/-!
# A209226: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209226, there is no canonical definition to state claims against.
-/

/-! ## A209226.P17058832954926695955

`A209224(A167499(n+3))`
-/

namespace A209226.P17058832954926695955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A167499 (n + 3)).toNat

end

end A209226.P17058832954926695955

/-! ## A209226.P16034584428655266865

`A209224(A155212(n)+13)`
-/

namespace A209226.P16034584428655266865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A155212 n + 13).toNat

end

end A209226.P16034584428655266865

/-! ## A209226.P15147235821065681191

`A209224(A000217(n+4)+5)`
-/

namespace A209226.P15147235821065681191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000217 (n + 4) + 5).toNat

end

end A209226.P15147235821065681191

/-! ## A209226.P8615830589019090948

`A209224(A000096(n+4)-(n-1))`
-/

namespace A209226.P8615830589019090948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A209226.P8615830589019090948

/-! ## A209226.P13456089290918348159

`A209224(A000124(n+5)-(n+1))`
-/

namespace A209226.P13456089290918348159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A209226.P13456089290918348159

/-!
# A209227: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209227, there is no canonical definition to state claims against.
-/

/-! ## A209227.P1798899364755656531

`A209224(∑[n+5]+16)`
-/

namespace A209227.P1798899364755656531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A209227.P1798899364755656531

/-! ## A209227.P17767878083617480769

`or(char[1], A209224(A000124(n+5)+5))`
-/

namespace A209227.P17767878083617480769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A209224 (A000124 (n + 5) + 5).toNat)

end

end A209227.P17767878083617480769

/-! ## A209227.P10918259719367030499

`A008683(A002146(n))²*A209224(A000124(n+5)+5)`
-/

namespace A209227.P10918259719367030499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat ^ 2 * A209224 (A000124 (n + 5) + 5).toNat

end

end A209227.P10918259719367030499

/-! ## A209227.P6184879113226833334

`A001222(A045714(n+1))*A209224(A000124(n+5)+5)`
-/

namespace A209227.P6184879113226833334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045714 (n + 1)).toNat * A209224 (A000124 (n + 5) + 5).toNat

end

end A209227.P6184879113226833334

/-!
# A209228: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A209228, there is no canonical definition to state claims against.
-/

/-! ## A209228.P10604886556397747787

`A209224(∑[n+6]+22)`
-/

namespace A209228.P10604886556397747787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A209228.P10604886556397747787

/-!
# A209229: Characteristic function of powers of 2, cf. A000079.

The programs for A209229, the canonical program `A209229.P14119267658822519212` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209229 has offset 0).

The definition of A209229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209229.P492743375700895107

`char[2^n]`
-/

namespace A209229.P492743375700895107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A209229.P492743375700895107

namespace A209229

/-- `char[2^n]` -/
def P492743375700895107.Spec : Prop :=
  ∀ n, (P492743375700895107.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P14119267658822519212

`a(∑[n]%n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209229

/-- `a(∑[n]%n)` -/
def P14119267658822519212.Spec : Prop :=
  ∀ n, (P14119267658822519212.a n : ℤ) = A209229 n

theorem P14119267658822519212.correct : P14119267658822519212.Spec := by
  intro n
  simp only [A209229]

end A209229

/-! ## A209229.P936233697593803339

`floor(n^(2-∑{p}[n, #]))`
-/

namespace A209229.P936233697593803339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (2 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ)⌋

end

end A209229.P936233697593803339

namespace A209229

/-- `floor(n^(2-∑{p}[n, #]))` -/
def P936233697593803339.Spec : Prop :=
  ∀ n, P936233697593803339.a n = A209229 n

end A209229

/-! ## A209229.P9872703368711073951

`floor(n^(2-∏{p}[n, #]))`
-/

namespace A209229.P9872703368711073951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (2 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ)⌋

end

end A209229.P9872703368711073951

namespace A209229

/-- `floor(n^(2-∏{p}[n, #]))` -/
def P9872703368711073951.Spec : Prop :=
  ∀ n, P9872703368711073951.a n = A209229 n

end A209229

/-! ## A209229.P569550853760482092

`round(n^(2-∑{p}[n, #]))`
-/

namespace A209229.P569550853760482092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))

end

end A209229.P569550853760482092

namespace A209229

/-- `round(n^(2-∑{p}[n, #]))` -/
def P569550853760482092.Spec : Prop :=
  ∀ n, P569550853760482092.a n = A209229 n

end A209229

/-! ## A209229.P6598006805012886128

`round(n^(2-∏{p}[n, #]))`
-/

namespace A209229.P6598006805012886128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))

end

end A209229.P6598006805012886128

namespace A209229

/-- `round(n^(2-∏{p}[n, #]))` -/
def P6598006805012886128.Spec : Prop :=
  ∀ n, P6598006805012886128.a n = A209229 n

end A209229

/-! ## A209229.P17221592912084710052

`round(n/∏{p}[n, n*#])`
-/

namespace A209229.P17221592912084710052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), n * p : ℕ) : ℚ))

end

end A209229.P17221592912084710052

namespace A209229

/-- `round(n/∏{p}[n, n*#])` -/
def P17221592912084710052.Spec : Prop :=
  ∀ n, P17221592912084710052.a n = A209229 n

end A209229

/-! ## A209229.P11395333575118434984

`and(1, char[ogf(1/(1-2x))])`
-/

namespace A209229.P11395333575118434984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A209229.P11395333575118434984

namespace A209229

/-- `and(1, char[ogf(1/(1-2x))])` -/
def P11395333575118434984.Spec : Prop :=
  ∀ n, (P11395333575118434984.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P11258665169403896888

`(3%∏{p}[2*n, #])%3`
-/

namespace A209229.P11258665169403896888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (∏ p ∈ Nat.primeFactors (f1 n), p) % 3

end

end A209229.P11258665169403896888

namespace A209229

/-- `(3%∏{p}[2*n, #])%3` -/
def P11258665169403896888.Spec : Prop :=
  ∀ n, (P11258665169403896888.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P9016794151260351600

`a(n-gcd(n, ∑[n]))` with `a(0)=0, a(1)=1`
-/

namespace A209229.P9016794151260351600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A209229.P9016794151260351600

namespace A209229

/-- `a(n-gcd(n, ∑[n]))` -/
def P9016794151260351600.Spec : Prop :=
  ∀ n, (P9016794151260351600.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P3422389262085236422

`∏{p}[n, val(#, 2)]%(n+1)`
-/

namespace A209229.P3422389262085236422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2) % (n + 1)

end

end A209229.P3422389262085236422

namespace A209229

/-- `∏{p}[n, val(#, 2)]%(n+1)` -/
def P3422389262085236422.Spec : Prop :=
  ∀ n, (P3422389262085236422.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P8376752427071913876

`C(2, ∑{p}[n, #])%(n+1)`
-/

namespace A209229.P8376752427071913876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) % (n + 1)

end

end A209229.P8376752427071913876

namespace A209229

/-- `C(2, ∑{p}[n, #])%(n+1)` -/
def P8376752427071913876.Spec : Prop :=
  ∀ n, (P8376752427071913876.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P10024079550937933838

`∏{p}[n, C(2, #)]%(n+1)`
-/

namespace A209229.P10024079550937933838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p) % (n + 1)

end

end A209229.P10024079550937933838

namespace A209229

/-- `∏{p}[n, C(2, #)]%(n+1)` -/
def P10024079550937933838.Spec : Prop :=
  ∀ n, (P10024079550937933838.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P11707671261047005128

`round(and(n, -n)/(n+1))`
-/

namespace A209229.P11707671261047005128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ))

end

end A209229.P11707671261047005128

namespace A209229

/-- `round(and(n, -n)/(n+1))` -/
def P11707671261047005128.Spec : Prop :=
  ∀ n, P11707671261047005128.a n = A209229 n

end A209229

/-! ## A209229.P972399317678568974

`C(2, (2-∑{p}[2*n, #])²)`
-/

namespace A209229.P972399317678568974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)) ^ 2).toNat

end

end A209229.P972399317678568974

namespace A209229

/-- `C(2, (2-∑{p}[2*n, #])²)` -/
def P972399317678568974.Spec : Prop :=
  ∀ n, (P972399317678568974.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P10718980669178199643

`round(n/or(n, 2*(n-1)))`
-/

namespace A209229.P10718980669178199643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Int.lor (n : ℤ) (2 * ((n : ℤ) - 1)) : ℚ))

end

end A209229.P10718980669178199643

namespace A209229

/-- `round(n/or(n, 2*(n-1)))` -/
def P10718980669178199643.Spec : Prop :=
  ∀ n, P10718980669178199643.a n = A209229 n

end A209229

/-! ## A209229.P15749644800191290700

`floor(-(xor(n, -n)/(n+1)))`
-/

namespace A209229.P15749644800191290700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ))⌋

end

end A209229.P15749644800191290700

namespace A209229

/-- `floor(-(xor(n, -n)/(n+1)))` -/
def P15749644800191290700.Spec : Prop :=
  ∀ n, P15749644800191290700.a n = A209229 n

end A209229

/-! ## A209229.P2244099323731324585

`char[1]+char[2*a(n-1)]` with `a(0)=2`
-/

namespace A209229.P2244099323731324585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A209229.P2244099323731324585

namespace A209229

/-- `char[1]+char[2*a(n-1)]` -/
def P2244099323731324585.Spec : Prop :=
  ∀ n, (P2244099323731324585.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P11265060172745226888

`a((n+1)%2*n/2)` with `a(0)=0, a(1)=1`
-/

namespace A209229.P11265060172745226888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((((n + 1) % 2 : ℕ) : ℚ) * ((n : ℚ) / 2))).toNat

end

end A209229.P11265060172745226888

namespace A209229

/-- `a((n+1)%2*n/2)` -/
def P11265060172745226888.Spec : Prop :=
  ∀ n, (P11265060172745226888.a n : ℤ) = A209229 n

end A209229

/-! ## A209229.P11309920371893203034

`a((1-n%2)*n/2)` with `a(0)=0, a(1)=1`
-/

namespace A209229.P11309920371893203034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((1 - ((n % 2 : ℕ) : ℤ) : ℚ) * ((n : ℚ) / 2))).toNat

end

end A209229.P11309920371893203034

namespace A209229

/-- `a((1-n%2)*n/2)` -/
def P11309920371893203034.Spec : Prop :=
  ∀ n, (P11309920371893203034.a n : ℤ) = A209229 n

end A209229

/-!
# A209230: Number of set partitions of [n] that avoid 1231 and 1121.

The programs for A209230, the canonical program `A209230.P7984411256712672077` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209230 has offset 0).

The definition of A209230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209230.P7984411256712672077

`Δ[floor(A100132(n)/2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209230

/-- `Δ[floor(A100132(n)/2)]` -/
def P7984411256712672077.Spec : Prop :=
  ∀ n, P7984411256712672077.a n = A209230 n

theorem P7984411256712672077.correct : P7984411256712672077.Spec := by
  intro n
  simp only [A209230]

end A209230

/-! ## A209230.P3902564170952605661

`Δ[A100132(n)]/A000032(C(2, n+2))`
-/

namespace A209230.P3902564170952605661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100132 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A209230.P3902564170952605661

namespace A209230

/-- `Δ[A100132(n)]/A000032(C(2, n+2))` -/
def P3902564170952605661.Spec : Prop :=
  ∀ n, P3902564170952605661.a n = (A209230 n : ℚ)

end A209230

/-! ## A209230.P10636228132952098840

`Δ[A100132(n)]/A014963(A001316(n))`
-/

namespace A209230.P10636228132952098840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100132 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A209230.P10636228132952098840

namespace A209230

/-- `Δ[A100132(n)]/A014963(A001316(n))` -/
def P10636228132952098840.Spec : Prop :=
  ∀ n, P10636228132952098840.a n = (A209230 n : ℚ)

end A209230

/-! ## A209230.P11670016991163610087

`Δ[A100132(n)]/A020639(A004277(n))`
-/

namespace A209230.P11670016991163610087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100132 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A209230.P11670016991163610087

namespace A209230

/-- `Δ[A100132(n)]/A020639(A004277(n))` -/
def P11670016991163610087.Spec : Prop :=
  ∀ n, P11670016991163610087.a n = (A209230 n : ℚ)

end A209230

/-! ## A209230.P70468147652385124

`Δ[A100132(n)]/A020639(A008574(n))`
-/

namespace A209230.P70468147652385124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100132 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A209230.P70468147652385124

namespace A209230

/-- `Δ[A100132(n)]/A020639(A008574(n))` -/
def P70468147652385124.Spec : Prop :=
  ∀ n, P70468147652385124.a n = (A209230 n : ℚ)

end A209230

/-!
# A209231: Number of binary words of length n such that there is at least one 0 and every run of consecutive 0's is of length >= 4.

The programs for A209231, the canonical program `A209231.P5618915818047327057` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209231 has offset 0).

The definition of A209231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209231.P5618915818047327057

`A005253(n)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A209231

/-- `A005253(n)-1` -/
def P5618915818047327057.Spec : Prop :=
  ∀ n, P5618915818047327057.a n = A209231 n

theorem P5618915818047327057.correct : P5618915818047327057.Spec := by
  intro n
  simp only [A209231]

end A209231

/-! ## A209231.P5326203313516862185

`A001687(2*n+3)-1`
-/

namespace A209231.P5326203313516862185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * n + 3) - 1

end

end A209231.P5326203313516862185

namespace A209231

/-- `A001687(2*n+3)-1` -/
def P5326203313516862185.Spec : Prop :=
  ∀ n, P5326203313516862185.a n = A209231 n

end A209231

/-! ## A209231.P14947219460632461982

`abs(A001687(Δ[(n+1)²])-1)`
-/

namespace A209231.P14947219460632461982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1|

end

end A209231.P14947219460632461982

namespace A209231

/-- `abs(A001687(Δ[(n+1)²])-1)` -/
def P14947219460632461982.Spec : Prop :=
  ∀ n, P14947219460632461982.a n = A209231 n

end A209231

/-! ## A209231.P11191998045932935865

`A007384(A004281(n))`
-/

namespace A209231.P11191998045932935865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007384 (A004281 n).toNat

end

end A209231.P11191998045932935865

namespace A209231

/-- `A007384(A004281(n))` -/
def P11191998045932935865.Spec : Prop :=
  ∀ n, P11191998045932935865.a n = A209231 n

end A209231

/-! ## A209231.P12640021232721247668

`A007384(A004276(n+1))`
-/

namespace A209231.P12640021232721247668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007384 (A004276 (n + 1)).toNat

end

end A209231.P12640021232721247668

namespace A209231

/-- `A007384(A004276(n+1))` -/
def P12640021232721247668.Spec : Prop :=
  ∀ n, P12640021232721247668.a n = A209231 n

end A209231

/-! ## A209231.P14169713214990260672

`∑[A001687(2*n)]-A001687(2*n)`
-/

namespace A209231.P14169713214990260672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001687 (2 * n)

end

end A209231.P14169713214990260672

namespace A209231

/-- `∑[A001687(2*n)]-A001687(2*n)` -/
def P14169713214990260672.Spec : Prop :=
  ∀ n, P14169713214990260672.a n = A209231 n

end A209231

/-! ## A209231.P4381702229320688656

`Δ[ogf(1/(1-2x+x^2-x^5))]-1`
-/

namespace A209231.P4381702229320688656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A209231.P4381702229320688656

namespace A209231

/-- `Δ[ogf(1/(1-2x+x^2-x^5))]-1` -/
def P4381702229320688656.Spec : Prop :=
  ∀ n, P4381702229320688656.a n = A209231 n

end A209231

/-! ## A209231.P12821249434527362314

`Δ[A392540(n)]-1`
-/

namespace A209231.P12821249434527362314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A209231.P12821249434527362314

namespace A209231

/-- `Δ[A392540(n)]-1` -/
def P12821249434527362314.Spec : Prop :=
  ∀ n, P12821249434527362314.a n = A209231 n

end A209231

/-! ## A209231.P2992075703288733576

`Δ[record[A001687(A103517(n))]]-1`
-/

namespace A209231.P2992075703288733576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A103517 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A209231.P2992075703288733576

namespace A209231

/-- `Δ[record[A001687(A103517(n))]]-1` -/
def P2992075703288733576.Spec : Prop :=
  ∀ n, P2992075703288733576.a n = A209231 n

end A209231

/-! ## A209231.P7801506402588053111

`Δ[record[A001687(A004278(n+1))]]-1`
-/

namespace A209231.P7801506402588053111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A004278 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A209231.P7801506402588053111

namespace A209231

/-- `Δ[record[A001687(A004278(n+1))]]-1` -/
def P7801506402588053111.Spec : Prop :=
  ∀ n, P7801506402588053111.a n = A209231 n

end A209231

/-! ## A209231.P12780375744643569682

`A007384(2*(n+1))-A007384(A004278(n+2))`
-/

namespace A209231.P12780375744643569682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007384 (2 * (n + 1)) - A007384 (A004278 (n + 2)).toNat

end

end A209231.P12780375744643569682

namespace A209231

/-- `A007384(2*(n+1))-A007384(A004278(n+2))` -/
def P12780375744643569682.Spec : Prop :=
  ∀ n, P12780375744643569682.a n = A209231 n

end A209231

/-!
# A209232: a(n) is 2^n times the expected value of the shortest run of 0's in a binary word of length n.

The programs for A209232, there is no canonical definition to state claims against.
-/

/-! ## A209232.P3604756308676857468

`∑[∑[A135664(A091468(n+1))]]`
-/

namespace A209232.P3604756308676857468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A091468 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209232.P3604756308676857468

/-! ## A209232.P6379226812957793981

`∑[A172471(A000108(n+2))-2]`
-/

namespace A209232.P6379226812957793981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000108 (n + 2)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209232.P6379226812957793981

/-! ## A209232.P4519392149777882374

`∑[∑[A000194(A054174(2*(n+1)))]]`
-/

namespace A209232.P4519392149777882374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A054174 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209232.P4519392149777882374

/-! ## A209232.P15224473202133593657

`∑[∑[A307707(A071718(n))]]`
-/

namespace A209232.P15224473202133593657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A071718 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209232.P15224473202133593657

/-!
# A209235: Rectangular array read by antidiagonals, with entry k in row n given by T(n,k) = 2^{k-1}*Sum_{j=1..n} (cos((2*j-1)*Pi/(2*n+1)))^{k-1}.

The programs for A209235, there is no canonical definition to state claims against.
-/

/-! ## A209235.P6702300725836562018

`A376498(lt[2, A235797(n+1)])`
-/

namespace A209235.P6702300725836562018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A209235.P6702300725836562018

/-! ## A209235.P17411086533817647470

`A070939(A038207(n)^A266632(n+1))`
-/

namespace A209235.P17411086533817647470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A038207 n : ℚ) ^ (A266632 (n + 1) : ℤ))).toNat

end

end A209235.P17411086533817647470

/-! ## A209235.P11980833250947819713

`A004736(A133805(n)%A127400(n+3))`
-/

namespace A209235.P11980833250947819713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.tmod (A133805 n) (A127400 (n + 3))).toNat

end

end A209235.P11980833250947819713

/-! ## A209235.P269100446726923280

`A108244(A363948(n+1))`
-/

namespace A209235.P269100446726923280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A363948 (n + 1)).toNat

end

end A209235.P269100446726923280

/-! ## A209235.P4528339761430354518

`A370883(A194583(n+1))`
-/

namespace A209235.P4528339761430354518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370883 (A194583 (n + 1)).toNat

end

end A209235.P4528339761430354518

/-!
# A209236: List of integers m>0 with m-1 and m+1 both prime, and m-2, m, m+2 all practical.

The programs for A209236, there is no canonical definition to state claims against.
-/

/-! ## A209236.P1315355095463191374

`∩[A258838(n+1), A287682(n+1)]`
-/

namespace A209236.P1315355095463191374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P1315355095463191374

/-! ## A209236.P6066442374739221689

`∩[A014574(n+1), A287682(n+1)]`
-/

namespace A209236.P6066442374739221689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P6066442374739221689

/-! ## A209236.P14804942674693876776

`∩[A217259(n+1), A287682(n+1)]`
-/

namespace A209236.P14804942674693876776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P14804942674693876776

/-! ## A209236.P3499478248127555285

`∩[A120432(n+1), A287682(n+1)]`
-/

namespace A209236.P3499478248127555285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P3499478248127555285

/-! ## A209236.P1016079976558395291

`∩[A287682(n+1), A306298(n+1)]`
-/

namespace A209236.P1016079976558395291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P1016079976558395291

/-! ## A209236.P8563452756102841933

`∩[A056853(n+1), A287682(n+1)]`
-/

namespace A209236.P8563452756102841933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209236.P8563452756102841933

/-!
# A209237: Number of practical numbers not exceeding 2^n.

The programs for A209237, there is no canonical definition to state claims against.
-/

/-! ## A209237.P12003070962301148222

`A225559(2^n)`
-/

namespace A209237.P12003070962301148222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (2 ^ n)

end

end A209237.P12003070962301148222

/-! ## A209237.P17459682584472071175

`∑[A214932(abs(1-n))]`
-/

namespace A209237.P17459682584472071175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214932 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209237.P17459682584472071175

/-! ## A209237.P16292066687509916556

`A214932(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A209237.P16292066687509916556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214932 (n - 1) + a (n - 1)

end

end A209237.P16292066687509916556

/-! ## A209237.P12522310233153989906

`∑[A214932(n)]+1-A214932(n)`
-/

namespace A209237.P12522310233153989906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A214932 n)

end

end A209237.P12522310233153989906

/-! ## A209237.P2120513484142812652

`record[A225559(A060548(n+2))]`
-/

namespace A209237.P2120513484142812652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A060548 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209237.P2120513484142812652

/-!
# A209238: G.f.: A(x) = Sum_{n>=0} x^n * A(n*x) / A(x)^n.

The programs for A209238, there is no canonical definition to state claims against.
-/

/-! ## A209238.P2118315984853576222

`A008350(A014335(n))`
-/

namespace A209238.P2118315984853576222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (A014335 n).toNat

end

end A209238.P2118315984853576222

/-! ## A209238.P402690923460556656

`A347663(A078008(n))`
-/

namespace A209238.P402690923460556656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (A078008 n).toNat

end

end A209238.P402690923460556656

/-! ## A209238.P8997539309436850346

`A347663(abs(A151575(n)))`
-/

namespace A209238.P8997539309436850346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 |A151575 n|.toNat

end

end A209238.P8997539309436850346

/-! ## A209238.P17229884879016552959

`A347663(Δ[A001045(n)])`
-/

namespace A209238.P17229884879016552959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (f1 (n + 1) - f1 n).toNat

end

end A209238.P17229884879016552959

/-!
# A209239: Number of length n words on {0,1,2} with no four consecutive 0's.

The programs for A209239, the canonical program `A209239.P2900253402716688208` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209239 has offset 0).

The definition of A209239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209239.P2900253402716688208

`2*(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209239

/-- `2*(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P2900253402716688208.Spec : Prop :=
  ∀ n, (P2900253402716688208.a n : ℤ) = A209239 n

theorem P2900253402716688208.correct : P2900253402716688208.Spec := by
  intro n
  simp only [A209239]

end A209239

/-! ## A209239.P5473474679998490466

`ogf((1+x+x^2+x^3)/(1-2x-2x^2-2x^3-2x^4))`
-/

namespace A209239.P5473474679998490466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -2, -2, -2, -2] n

end

end A209239.P5473474679998490466

namespace A209239

/-- `ogf((1+x+x^2+x^3)/(1-2x-2x^2-2x^3-2x^4))` -/
def P5473474679998490466.Spec : Prop :=
  ∀ n, P5473474679998490466.a n = A209239 n

end A209239

/-! ## A209239.P9859559094713639063

`A160175(n+1)/2`
-/

namespace A209239.P9859559094713639063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160175 (n + 1) : ℚ) / 2

end

end A209239.P9859559094713639063

namespace A209239

/-- `A160175(n+1)/2` -/
def P9859559094713639063.Spec : Prop :=
  ∀ n, P9859559094713639063.a n = (A209239 n : ℚ)

end A209239

/-! ## A209239.P6681246517352282729

`A181140(n+1)/3`
-/

namespace A209239.P6681246517352282729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181140 (n + 1) : ℚ) / 3

end

end A209239.P6681246517352282729

namespace A209239

/-- `A181140(n+1)/3` -/
def P6681246517352282729.Spec : Prop :=
  ∀ n, P6681246517352282729.a n = (A209239 n : ℚ)

theorem P6681246517352282729.correct : P6681246517352282729.Spec := by
  intro n
  simp only [A209239, Nat.add_sub_cancel, A209239.P6681246517352282729.a, A209239.P2900253402716688208.a, A181140, A181140.P8140830859380223308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209239

/-! ## A209239.P14001790823614676339

`Δ[∑[A160175(n)]/2]`
-/

namespace A209239.P14001790823614676339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160175 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209239.P14001790823614676339

namespace A209239

/-- `Δ[∑[A160175(n)]/2]` -/
def P14001790823614676339.Spec : Prop :=
  ∀ n, P14001790823614676339.a n = (A209239 n : ℚ)

end A209239

/-! ## A209239.P15246370946958047389

`1/2*A160175(ϕ²-(ϕ-n))`
-/

namespace A209239.P15246370946958047389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A160175 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ)

end

end A209239.P15246370946958047389

namespace A209239

/-- `1/2*A160175(ϕ²-(ϕ-n))` -/
def P15246370946958047389.Spec : Prop :=
  ∀ n, P15246370946958047389.a n = (A209239 n : ℚ)

end A209239

/-!
# A209241: 3^n times the expected value of the longest run of 0's in all length n words on {0,1,2}.

The programs for A209241, there is no canonical definition to state claims against.
-/

/-! ## A209241.P10836109384415021289

`∑[∑[A194511(A163069(n))]]`
-/

namespace A209241.P10836109384415021289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A163069 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209241.P10836109384415021289

/-! ## A209241.P10030325158695339922

`A087448(n)-A257144(A147274(n+1))`
-/

namespace A209241.P10030325158695339922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087448 n - A257144 (A147274 (n + 1)).toNat

end

end A209241.P10030325158695339922

/-! ## A209241.P17942525534011654023

`A179070(3*n+2)-A352826(A011782(n+1))`
-/

namespace A209241.P17942525534011654023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (3 * n + 2) - A352826 (A011782 (n + 1)).toNat

end

end A209241.P17942525534011654023

/-!
# A209243: 3^n times the expected value of the shortest run of 0's in a length n word on alphabet {0,1,2}.

The programs for A209243, there is no canonical definition to state claims against.
-/

/-! ## A209243.P739155156808452706

`A299905(A141214(n))+A094706(n)`
-/

namespace A209243.P739155156808452706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A141214 n).toNat + A094706 n

end

end A209243.P739155156808452706

/-! ## A209243.P15640068422797177705

`A299905(A141214(n))+A106514(n)-A000129(n+1)`
-/

namespace A209243.P15640068422797177705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A141214 n).toNat + (A106514 n - A000129 (n + 1))

end

end A209243.P15640068422797177705

/-! ## A209243.P7261672586100544467

`A299905(A141214(n))+A005409(n+2)-A000225(n+1)`
-/

namespace A209243.P7261672586100544467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A141214 n).toNat + (A005409 (n + 2) - A000225 (n + 1))

end

end A209243.P7261672586100544467

/-! ## A209243.P7862587688855344864

`A299905(A141214(n))+A052937(n+1)-(A000079(n+1)+1)`
-/

namespace A209243.P7862587688855344864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A141214 n).toNat + (A052937 (n + 1) - (A000079 (n + 1) + 1))

end

end A209243.P7862587688855344864

/-!
# A209245: Main diagonal of the triple recurrence x(i,j,k) = x(i-1,j,k) + x(i,j-1,k) + x(i,j,k-1) with x(i,j,k) = 1 if 0 in {i,j,k}.

The programs for A209245, there is no canonical definition to state claims against.
-/

/-! ## A209245.P900048937809500852

`A210472(∑[n+3]+n+3)`
-/

namespace A209245.P900048937809500852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A209245.P900048937809500852

/-! ## A209245.P14569279279903333081

`record[A210472(abs(A046691(n)))]`
-/

namespace A209245.P14569279279903333081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209245.P14569279279903333081

/-! ## A209245.P11676977380042656540

`record[A210472(eq[1, A210472(n+2)])]`
-/

namespace A209245.P11676977380042656540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209245.P11676977380042656540

/-! ## A209245.P92186802630800981

`record[gcd(A002262(n+4), A210472(n))]`
-/

namespace A209245.P92186802630800981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 4)) (A210472 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209245.P92186802630800981

/-! ## A209245.P17631486827194548827

`record[C(A210472(n), A343097(n+2))]`
-/

namespace A209245.P17631486827194548827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A210472 n).toNat (A343097 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209245.P17631486827194548827

/-!
# A209246: Row sums of triangle A196020.

The programs for A209246, there is no canonical definition to state claims against.
-/

/-! ## A209246.P9855871476344668320

`A353154(n+1)+A353149(n+1)`
-/

namespace A209246.P9855871476344668320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A353149 (n + 1)

end

end A209246.P9855871476344668320

/-! ## A209246.P17995751035433996010

`2*A353149(n+1)-Δ[A160664(n)]`
-/

namespace A209246.P17995751035433996010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353149 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209246.P17995751035433996010

/-! ## A209246.P3519119021152317538

`A000203(n+1)+2*A353154(n+1)`
-/

namespace A209246.P3519119021152317538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A353154 (n + 1)

end

end A209246.P3519119021152317538

/-! ## A209246.P2126836308374933672

`A097012(n+1)+2*A353154(n+1)`
-/

namespace A209246.P2126836308374933672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) + 2 * A353154 (n + 1)

end

end A209246.P2126836308374933672

/-! ## A209246.P14786537931784212589

`2*A286014(n+1)-A001227(n+1)`
-/

namespace A209246.P14786537931784212589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286014 (n + 1) - A001227 (n + 1)

end

end A209246.P14786537931784212589

/-! ## A209246.P17504867445350070747

`2*A353149(n+1)-A000203(n+1)`
-/

namespace A209246.P17504867445350070747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353149 (n + 1) - A000203 (n + 1)

end

end A209246.P17504867445350070747

/-! ## A209246.P16501145615050847212

`2*A353149(n+1)-A097012(n+1)`
-/

namespace A209246.P16501145615050847212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353149 (n + 1) - A097012 (n + 1)

end

end A209246.P16501145615050847212

/-! ## A209246.P15171084751637953896

`A004277(A353149(n+1))-Δ[A160664(n)]`
-/

namespace A209246.P15171084751637953896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A353149 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A209246.P15171084751637953896

/-! ## A209246.P6575525452281692557

`A005843(A286014(n+1))-A001227(n+1)`
-/

namespace A209246.P6575525452281692557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A286014 (n + 1)).toNat - A001227 (n + 1)

end

end A209246.P6575525452281692557

/-! ## A209246.P8981166724908009910

`A005843(A353149(n+1))-A000203(n+1)`
-/

namespace A209246.P8981166724908009910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A353149 (n + 1)).toNat - A000203 (n + 1)

end

end A209246.P8981166724908009910

/-!
# A209248: 

The programs for A209248, there is no canonical definition to state claims against.
-/

/-! ## A209248.P3423839359142105141

`4^∑[∑[2^n]]/2`
-/

namespace A209248.P3423839359142105141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A209248.P3423839359142105141

/-!
# A209249: Even numbers that are not the sum of two untouchable numbers.

The programs for A209249, there is no canonical definition to state claims against.
-/

/-! ## A209249.P15748333925353011636

`A004277(lt[A216201(3*n+2), A254632(n)])`
-/

namespace A209249.P15748333925353011636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216201 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209249.P15748333925353011636

/-! ## A209249.P13929876902477222112

`lt[A010054(A195313(n+1)), A033999(n)]`
-/

namespace A209249.P13929876902477222112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A195313 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A209249.P13929876902477222112

/-! ## A209249.P16593329550211352095

`∑[A079208((n+1)²)+2]`
-/

namespace A209249.P16593329550211352095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 ((n + 1) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209249.P16593329550211352095

/-! ## A209249.P820906998763979961

`∑[A261891(A000079(n)+4)]`
-/

namespace A209249.P820906998763979961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261891 (A000079 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209249.P820906998763979961

/-!
# A209251: Number of n X n checkered tori, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A209251, there is no canonical definition to state claims against.
-/

/-! ## A209251.P2369687994408530799

`record[A265902(A191493(n))]`
-/

namespace A209251.P2369687994408530799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 (A191493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209251.P2369687994408530799

/-!
# A209253: Number of ways to write 2n-1 as the sum of a Sophie Germain prime and a practical number.

The programs for A209253, there is no canonical definition to state claims against.
-/

/-! ## A209253.P4338559785161915571

`A167439(A066656(n+1)+A002264(n))`
-/

namespace A209253.P4338559785161915571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A066656 (n + 1) + A002264 n).toNat

end

end A209253.P4338559785161915571

/-! ## A209253.P3391037045770798774

`A001221(lcm(A184342(n+1), A184389(n+1)))`
-/

namespace A209253.P3391037045770798774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A184342 (n + 1)) (A184389 (n + 1)))

end

end A209253.P3391037045770798774

/-!
# A209254: Number of ways to write 2n-1 = p+q with q practical, p and p^4+q^4 both prime.

The programs for A209254, there is no canonical definition to state claims against.
-/

/-! ## A209254.P9140496168866028618

`A363455(A014578(n)+A005179(n+1))`
-/

namespace A209254.P9140496168866028618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363455 (A014578 n + A005179 (n + 1)).toNat

end

end A209254.P9140496168866028618

/-! ## A209254.P4464943557697939787

`A064547(A132875(n)+n²)`
-/

namespace A209254.P4464943557697939787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A132875 n + (n ^ 2 : ℤ)).toNat

end

end A209254.P4464943557697939787

/-! ## A209254.P18222955973377795191

`A001221(A286209(n+4)+A286207(n))`
-/

namespace A209254.P18222955973377795191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286209 (n + 4) + A286207 n).toNat

end

end A209254.P18222955973377795191

/-! ## A209254.P13940541746556873330

`A115623(A269174(n)+2^n-1)`
-/

namespace A209254.P13940541746556873330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A269174 n + ((2 ^ n : ℤ) - 1)).toNat

end

end A209254.P13940541746556873330

/-! ## A209254.P10234965321079378803

`A001221(A018010(n)+n*gcd(2, n))`
-/

namespace A209254.P10234965321079378803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A018010 n + (n * Nat.gcd 2 n : ℤ)).toNat

end

end A209254.P10234965321079378803

/-!
# A209255: Integers k such that (prime(k)*prime(k+1)+1)/2 is prime.

The programs for A209255, there is no canonical definition to state claims against.
-/

/-! ## A209255.P15867268841089878235

`A000720(A266163(n+1))`
-/

namespace A209255.P15867268841089878235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A266163 (n + 1)).toNat

end

end A209255.P15867268841089878235

/-! ## A209255.P7656600410006581447

`A061395(p?[A266163(n+1)])`
-/

namespace A209255.P7656600410006581447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209255.P7656600410006581447

/-! ## A209255.P15465478622512476869

`A061395(or(1, A266163(n+1)))`
-/

namespace A209255.P15465478622512476869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A266163 (n + 1))).toNat

end

end A209255.P15465478622512476869

/-! ## A209255.P65224976328182411

`∑{d}[A266163(n+1), A061395(#)]`
-/

namespace A209255.P65224976328182411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A209255.P65224976328182411

/-! ## A209255.P5503926363547398357

`A061395(∏{d}[A266163(n+1), #])`
-/

namespace A209255.P5503926363547398357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A209255.P5503926363547398357

/-! ## A209255.P8775825578709880758

`A061395(∏{p}[A266163(n+1), #])`
-/

namespace A209255.P8775825578709880758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A209255.P8775825578709880758

/-! ## A209255.P5096857738645229729

`A061395(A266163(n+1))%A017032(n)`
-/

namespace A209255.P5096857738645229729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A266163 (n + 1)).toNat) (A017032 n)

end

end A209255.P5096857738645229729

/-! ## A209255.P5146722673233413511

`A061395(A266163(n+1)%A272798(n+1))`
-/

namespace A209255.P5146722673233413511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A266163 (n + 1)) (A272798 (n + 1))).toNat

end

end A209255.P5146722673233413511

/-!
# A209256: Number of permutations of [n] that contain at least two fixed points in a succession.

The programs for A209256, there is no canonical definition to state claims against.
-/

/-! ## A209256.P14682220780600637985

`A248180(A014513(n))%A000142(n)`
-/

namespace A209256.P14682220780600637985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248180 (A014513 n).toNat) (A000142 n)

end

end A209256.P14682220780600637985

/-! ## A209256.P2319806965295202368

`A001221(A261590(n))*A261585(A261600(n))`
-/

namespace A209256.P2319806965295202368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261590 n).toNat * A261585 (A261600 n).toNat

end

end A209256.P2319806965295202368

/-! ## A209256.P17348532762171617330

`A001221(A261591(n))*A261585(A261600(n))`
-/

namespace A209256.P17348532762171617330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261591 n).toNat * A261585 (A261600 n).toNat

end

end A209256.P17348532762171617330

/-!
# A209261: a(n) = n^13 + 13*n + 13^n.

The programs for A209261, the canonical program `A209261.P153909747189309318` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209261 has offset 0).

The definition of A209261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^13+13*n+13^n` (program `A209261.P153909747189309318`, by `A209261.P153909747189309318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209261.P153909747189309318

`n^13+13*n+13^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209261

/-- `n^13+13*n+13^n` -/
def P153909747189309318.Spec : Prop :=
  ∀ n, (P153909747189309318.a n : ℤ) = A209261 n

theorem P153909747189309318.correct : P153909747189309318.Spec := by
  intro n
  simp only [A209261]

end A209261

/-!
# A209262: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4.

The programs for A209262, the canonical program `A209262.P6111464388595152157` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209262 has offset 0).

The definition of A209262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n²+3*n^3+4*n^4` (program `A209262.P6111464388595152157`, by `A209262.P6111464388595152157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209262.P6111464388595152157

`1+2*n²+3*n^3+4*n^4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209262

/-- `1+2*n²+3*n^3+4*n^4` -/
def P6111464388595152157.Spec : Prop :=
  ∀ n, (P6111464388595152157.a n : ℤ) = A209262 n

theorem P6111464388595152157.correct : P6111464388595152157.Spec := by
  intro n
  simp only [A209262]

end A209262

/-! ## A209262.P618861496005128913

`abs(n-A130886(n))`
-/

namespace A209262.P618861496005128913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A130886 n|

end

end A209262.P618861496005128913

namespace A209262

/-- `abs(n-A130886(n))` -/
def P618861496005128913.Spec : Prop :=
  ∀ n, P618861496005128913.a n = A209262 n

end A209262

/-! ## A209262.P9372770230237184684

`abs(n-1-n*A056578(n))`
-/

namespace A209262.P9372770230237184684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (n : ℤ) * A056578 n|

end

end A209262.P9372770230237184684

namespace A209262

/-- `abs(n-1-n*A056578(n))` -/
def P9372770230237184684.Spec : Prop :=
  ∀ n, P9372770230237184684.a n = A209262 n

end A209262

/-! ## A209262.P12980480442918156496

`abs(A130886(n)+A001489(n))`
-/

namespace A209262.P12980480442918156496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130886 n + A001489 n|

end

end A209262.P12980480442918156496

namespace A209262

/-- `abs(A130886(n)+A001489(n))` -/
def P12980480442918156496.Spec : Prop :=
  ∀ n, P12980480442918156496.a n = A209262 n

end A209262

/-! ## A209262.P6193842125760139342

`(A130886(n)-n)%A017141(n)`
-/

namespace A209262.P6193842125760139342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130886 n - (n : ℤ)) (A017141 n)

end

end A209262.P6193842125760139342

namespace A209262

/-- `(A130886(n)-n)%A017141(n)` -/
def P6193842125760139342.Spec : Prop :=
  ∀ n, P6193842125760139342.a n = A209262 n

end A209262

/-! ## A209262.P4547048240754038376

`abs(A024000(n+1)+n*A056578(n)+1)`
-/

namespace A209262.P4547048240754038376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (n + 1) + ((n : ℤ) * A056578 n + 1)|

end

end A209262.P4547048240754038376

namespace A209262

/-- `abs(A024000(n+1)+n*A056578(n)+1)` -/
def P4547048240754038376.Spec : Prop :=
  ∀ n, P4547048240754038376.a n = A209262 n

end A209262

/-!
# A209263: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4 + 5*n^5.

The programs for A209263, the canonical program `A209263.P11233925961121856749` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209263 has offset 0).

The definition of A209263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n²+3*n^3+4*n^4+5*n^5` (program `A209263.P11233925961121856749`, by `A209263.P11233925961121856749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209263.P11233925961121856749

`1+2*n²+3*n^3+4*n^4+5*n^5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209263

/-- `1+2*n²+3*n^3+4*n^4+5*n^5` -/
def P11233925961121856749.Spec : Prop :=
  ∀ n, (P11233925961121856749.a n : ℤ) = A209263 n

theorem P11233925961121856749.correct : P11233925961121856749.Spec := by
  intro n
  simp only [A209263]

end A209263

/-!
# A209264: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4 +5*n^5 + 6*n^6.

The programs for A209264, the canonical program `A209264.P11065434224927509037` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209264 has offset 0).

The definition of A209264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*n²+3*n^3+4*n^4+5*n^5+6*n^6` (program `A209264.P11065434224927509037`, by `A209264.P11065434224927509037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209264.P11065434224927509037

`1+2*n²+3*n^3+4*n^4+5*n^5+6*n^6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209264

/-- `1+2*n²+3*n^3+4*n^4+5*n^5+6*n^6` -/
def P11065434224927509037.Spec : Prop :=
  ∀ n, (P11065434224927509037.a n : ℤ) = A209264 n

theorem P11065434224927509037.correct : P11065434224927509037.Spec := by
  intro n
  simp only [A209264]

end A209264

/-!
# A209265: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4 +5*n^5 + 6*n^6 + 7*n^7.

The programs for A209265, there is no canonical definition to state claims against.
-/

/-! ## A209265.P5543803955610041022

`1-n*(1-A113532(n))`
-/

namespace A209265.P5543803955610041022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (1 - A113532 n)

end

end A209265.P5543803955610041022

/-! ## A209265.P15121643469302995646

`A024000(n)+n*A113532(n)`
-/

namespace A209265.P15121643469302995646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (n : ℤ) * A113532 n

end

end A209265.P15121643469302995646

/-!
# A209267: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4 + 5*n^5 + 6*n^6 + 7*n^7 + 8*n^8.

The programs for A209267, there is no canonical definition to state claims against.
-/

/-! ## A209267.P8007430764859481237

`n*A113618(n)-(n-1)`
-/

namespace A209267.P8007430764859481237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113618 n - ((n : ℤ) - 1)

end

end A209267.P8007430764859481237

/-!
# A209268: Inverse permutation A054582.

The programs for A209268, the canonical program `A209268.P13650169059364209089` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209268 has offset 1).

The definition of A209268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209268.P13271935762057879963

`A075301(n)+1`
-/

namespace A209268.P13271935762057879963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 n + 1

end

end A209268.P13271935762057879963

namespace A209268

/-- `A075301(n)+1` -/
def P13271935762057879963.Spec : Prop :=
  ∀ n, P13271935762057879963.a n = A209268 (n + 1)

theorem P13271935762057879963.correct : P13271935762057879963.Spec := by
  intro n
  simp only [A209268, Nat.add_sub_cancel, A209268.P13271935762057879963.a, A209268.P13650169059364209089.a, A000217, A000217.P10269402890581615239.a, A003602, A003602.P7612175048291952394.a, A007814, A007814.P13537437864234730737.a, A075301, A075301.P17074256541668552297.a, A001511, A001511.P17146462531039486101.a, A110963, A110963.P3344771894533151408.a, A006519, A006519.P10435570611646570274.a, A025480, A025480.P15873863116418380882.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209268

/-! ## A209268.P18125697069048056776

`A003602(n+1)+A249725(n+1)-A001511(n+1)`
-/

namespace A209268.P18125697069048056776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + (A249725 (n + 1) - A001511 (n + 1))

end

end A209268.P18125697069048056776

namespace A209268

/-- `A003602(n+1)+A249725(n+1)-A001511(n+1)` -/
def P18125697069048056776.Spec : Prop :=
  ∀ n, P18125697069048056776.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P13650169059364209089

`A000217(A007814(n+1)+A003602(n+1))-A007814(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209268

/-- `A000217(A007814(n+1)+A003602(n+1))-A007814(n+1)` -/
def P13650169059364209089.Spec : Prop :=
  ∀ n, P13650169059364209089.a n = A209268 (n + 1)

theorem P13650169059364209089.correct : P13650169059364209089.Spec := by
  intro n
  simp only [A209268, Nat.add_sub_cancel]

end A209268

/-! ## A209268.P653310820907070780

`A250252(A249811(n+1))`
-/

namespace A209268.P653310820907070780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A249811 (n + 1)).toNat

end

end A209268.P653310820907070780

namespace A209268

/-- `A250252(A249811(n+1))` -/
def P653310820907070780.Spec : Prop :=
  ∀ n, P653310820907070780.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P14102958445205487559

`A250252(A207801(n+2)-1)`
-/

namespace A209268.P14102958445205487559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A207801 (n + 2) - 1).toNat

end

end A209268.P14102958445205487559

namespace A209268

/-- `A250252(A207801(n+2)-1)` -/
def P14102958445205487559.Spec : Prop :=
  ∀ n, P14102958445205487559.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P10440607652313363966

`A038722(A249725(n+1))`
-/

namespace A209268.P10440607652313363966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A249725 (n + 1)).toNat

end

end A209268.P10440607652313363966

namespace A209268

/-- `A038722(A249725(n+1))` -/
def P10440607652313363966.Spec : Prop :=
  ∀ n, P10440607652313363966.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P7236255781656965500

`A038722(A249742(A249811(A038722(A038722(n+1)))))`
-/

namespace A209268.P7236255781656965500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A249742 (A249811 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A209268.P7236255781656965500

namespace A209268

/-- `A038722(A249742(A249811(A038722(A038722(n+1)))))` -/
def P7236255781656965500.Spec : Prop :=
  ∀ n, P7236255781656965500.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P3457947181069252232

`A061579(A075303(n))+1`
-/

namespace A209268.P3457947181069252232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A075303 n).toNat + 1

end

end A209268.P3457947181069252232

namespace A209268

/-- `A061579(A075303(n))+1` -/
def P3457947181069252232.Spec : Prop :=
  ∀ n, P3457947181069252232.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P18192975532659905216

`A249725(n+1)+A114327(A249725(n+1)-1)`
-/

namespace A209268.P18192975532659905216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249725 (n + 1) + A114327 (A249725 (n + 1) - 1).toNat

end

end A209268.P18192975532659905216

namespace A209268

/-- `A249725(n+1)+A114327(A249725(n+1)-1)` -/
def P18192975532659905216.Spec : Prop :=
  ∀ n, P18192975532659905216.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P4055796048799920720

`A246274(A246676(n+1))`
-/

namespace A209268.P4055796048799920720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246676 (n + 1)).toNat

end

end A209268.P4055796048799920720

namespace A209268

/-- `A246274(A246676(n+1))` -/
def P4055796048799920720.Spec : Prop :=
  ∀ n, P4055796048799920720.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P861354226594839232

`A250252(A249741(A249725(A249742(A249741(n+1)))))`
-/

namespace A209268.P861354226594839232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250252 (A249741 (A249725 (A249742 (A249741 (n + 1)).toNat).toNat).toNat).toNat

end

end A209268.P861354226594839232

namespace A209268

/-- `A250252(A249741(A249725(A249742(A249741(n+1)))))` -/
def P861354226594839232.Spec : Prop :=
  ∀ n, P861354226594839232.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P12142149480125030356

`A191362(n+1)+A075303(n)+1`
-/

namespace A209268.P12142149480125030356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (n + 1) + (A075303 n + 1)

end

end A209268.P12142149480125030356

namespace A209268

/-- `A191362(n+1)+A075303(n)+1` -/
def P12142149480125030356.Spec : Prop :=
  ∀ n, P12142149480125030356.a n = A209268 (n + 1)

end A209268

/-! ## A209268.P12095249457662334515

`A249725(n+1)+A191362(n+1)`
-/

namespace A209268.P12095249457662334515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249725 (n + 1) + A191362 (n + 1)

end

end A209268.P12095249457662334515

namespace A209268

/-- `A249725(n+1)+A191362(n+1)` -/
def P12095249457662334515.Spec : Prop :=
  ∀ n, P12095249457662334515.a n = A209268 (n + 1)

end A209268

/-!
# A209269: a(1) = 1 and, for n >= 2, a(n) is the least integer such that the numerator of the continued fraction [a(1),a(2),...,a(n)] is a perfect square.

The programs for A209269, there is no canonical definition to state claims against.
-/

/-! ## A209269.P2173132491133880001

`A132827(A059075(n+1))+A002264(n)`
-/

namespace A209269.P2173132491133880001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 (A059075 (n + 1)).toNat + A002264 n

end

end A209269.P2173132491133880001

/-! ## A209269.P9966056167247286541

`A027750(A143554(n)*A303304(n+1))`
-/

namespace A209269.P9966056167247286541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A143554 n * A303304 (n + 1)).toNat

end

end A209269.P9966056167247286541

/-!
# A209271: Primes p such that A066272(p)*p+1 is also prime, where A066272 is the number of anti-divisors.

The programs for A209271, there is no canonical definition to state claims against.
-/

/-! ## A209271.P3969561906722490406

`p?[record[A271391(A343382(n))]]`
-/

namespace A209271.P3969561906722490406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 (A343382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209271.P3969561906722490406

/-!
# A209272: a(1) = 1 and, for n >= 2, a(n) is the least integer such that both p(n) and q(n) are squarefree where p(n)/q(n) is the n-th convergent of the continued fraction [a(1),a(2),...,a(n)].

The programs for A209272, there is no canonical definition to state claims against.
-/

/-! ## A209272.P12830597438723235889

`A350942(A298805(n))+A226873(n)`
-/

namespace A209272.P12830597438723235889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (A298805 n).toNat + A226873 n

end

end A209272.P12830597438723235889

/-! ## A209272.P8489103117024516636

`A001222(A106741(n+1)-A123183(n+1))`
-/

namespace A209272.P8489103117024516636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A106741 (n + 1) - A123183 (n + 1)).toNat

end

end A209272.P8489103117024516636

/-! ## A209272.P11560058837911799077

`A062756(A321964(n)+A210755(3*n+2))`
-/

namespace A209272.P11560058837911799077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A321964 n + A210755 (3 * n + 2)).toNat

end

end A209272.P11560058837911799077

/-!
# A209274: Table T(n,k) = n*(n+2^k-1)/2, n, k > 0 read by antidiagonals.

The programs for A209274, the canonical program `A209274.P3948110471466051432` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209274 has offset 1).

The definition of A209274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209274.P3948110471466051432

`A002260(n+1)*(A002260(n+1)+2^A004736(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209274

/-- `A002260(n+1)*(A002260(n+1)+2^A004736(n+1)-1)/2` -/
def P3948110471466051432.Spec : Prop :=
  ∀ n, P3948110471466051432.a n = (A209274 (n + 1) : ℚ)

end A209274

/-! ## A209274.P2695128524090253922

`A048483(n)+n-A049780(n)`
-/

namespace A209274.P2695128524090253922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n + ((n : ℤ) - A049780 n)

end

end A209274.P2695128524090253922

namespace A209274

/-- `A048483(n)+n-A049780(n)` -/
def P2695128524090253922.Spec : Prop :=
  ∀ n, P2695128524090253922.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P1830707870671176117

`A048483(n)+A000096(n-C(∑[char[∑[n]]], 2))`
-/

namespace A209274.P1830707870671176117
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n + A000096 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A209274.P1830707870671176117

namespace A209274

/-- `A048483(n)+A000096(n-C(∑[char[∑[n]]], 2))` -/
def P1830707870671176117.Spec : Prop :=
  ∀ n, P1830707870671176117.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P17279874956180246807

`A048483(n)+A000096(A002262(n))`
-/

namespace A209274.P17279874956180246807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n + A000096 (A002262 n).toNat

end

end A209274.P17279874956180246807

namespace A209274

/-- `A048483(n)+A000096(A002262(n))` -/
def P17279874956180246807.Spec : Prop :=
  ∀ n, P17279874956180246807.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P15516467576067229240

`A061579(A112367(n))+A048483(n)`
-/

namespace A209274.P15516467576067229240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A112367 n).toNat + A048483 n

end

end A209274.P15516467576067229240

namespace A209274

/-- `A061579(A112367(n))+A048483(n)` -/
def P15516467576067229240.Spec : Prop :=
  ∀ n, P15516467576067229240.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P3439909581178262680

`A130128(A038722(n+1))+A112367(n)`
-/

namespace A209274.P3439909581178262680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A038722 (n + 1)).toNat + A112367 n

end

end A209274.P3439909581178262680

namespace A209274

/-- `A130128(A038722(n+1))+A112367(n)` -/
def P3439909581178262680.Spec : Prop :=
  ∀ n, P3439909581178262680.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P9680389804761448706

`A130128(A038722(n+1))+A000217(A002262(n))`
-/

namespace A209274.P9680389804761448706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A038722 (n + 1)).toNat + A000217 (A002262 n).toNat

end

end A209274.P9680389804761448706

namespace A209274

/-- `A130128(A038722(n+1))+A000217(A002262(n))` -/
def P9680389804761448706.Spec : Prop :=
  ∀ n, P9680389804761448706.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P1883517324055941923

`A140472(A054582(n))+A112367(n)`
-/

namespace A209274.P1883517324055941923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A054582 n).toNat + A112367 n

end

end A209274.P1883517324055941923

namespace A209274

/-- `A140472(A054582(n))+A112367(n)` -/
def P1883517324055941923.Spec : Prop :=
  ∀ n, P1883517324055941923.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P17543799838655134615

`A140472(A054582(n))+A000217(A002262(n))`
-/

namespace A209274.P17543799838655134615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A054582 n).toNat + A000217 (A002262 n).toNat

end

end A209274.P17543799838655134615

namespace A209274

/-- `A140472(A054582(n))+A000217(A002262(n))` -/
def P17543799838655134615.Spec : Prop :=
  ∀ n, P17543799838655134615.a n = A209274 (n + 1)

end A209274

/-! ## A209274.P10036178644832901542

`A303548(A224195(n+2))+A000096(A002262(n))`
-/

namespace A209274.P10036178644832901542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (A224195 (n + 2)).toNat + A000096 (A002262 n).toNat

end

end A209274.P10036178644832901542

namespace A209274

/-- `A303548(A224195(n+2))+A000096(A002262(n))` -/
def P10036178644832901542.Spec : Prop :=
  ∀ n, P10036178644832901542.a n = A209274 (n + 1)

end A209274

/-!
# A209275: a(n) = 1 + 2*n^2 + 3*n^3 + 4*n^4 + 5*n^5 + 6*n^6 + 7*n^7 + 8*n^8 + 9*n^9.

The programs for A209275, there is no canonical definition to state claims against.
-/

/-! ## A209275.P1693469613978934483

`n*(A113630(n)-1)+1`
-/

namespace A209275.P1693469613978934483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A113630 n - 1) + 1

end

end A209275.P1693469613978934483

/-! ## A209275.P13294335435386074355

`or(n*(A113630(n)-1), A007318(A161680(n)))`
-/

namespace A209275.P13294335435386074355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * (A113630 n - 1)) (A007318 (A161680 n).toNat)

end

end A209275.P13294335435386074355

/-! ## A209275.P4424697534072672312

`or(n*(A113630(n)-1), A007318(∑[n]))`
-/

namespace A209275.P4424697534072672312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * (A113630 n - 1)) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A209275.P4424697534072672312

/-! ## A209275.P118082203571144142

`xor(n*(A113630(n)-1), A007318(A000217(n)))`
-/

namespace A209275.P118082203571144142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * (A113630 n - 1)) (A007318 (A000217 n).toNat)

end

end A209275.P118082203571144142

/-! ## A209275.P15947836390389032159

`or(n*(A113630(n)-1), A130321(A000096(n)))`
-/

namespace A209275.P15947836390389032159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * (A113630 n - 1)) (A130321 (A000096 n).toNat)

end

end A209275.P15947836390389032159

/-! ## A209275.P406241637320130262

`or(n*(A113630(n)-1), A305962(A000124(n)))`
-/

namespace A209275.P406241637320130262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * (A113630 n - 1)) (A305962 (A000124 n).toNat)

end

end A209275.P406241637320130262

/-!
# A209276: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+2)^n * x^n * A((n+2)*x)^n/n! * exp(-(n+2)*x*A((n+2)*x)).

The programs for A209276, there is no canonical definition to state claims against.
-/

/-! ## A209276.P10153520528338372511

`A036537(A015030(n))`
-/

namespace A209276.P10153520528338372511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (A015030 n).toNat

end

end A209276.P10153520528338372511

/-!
# A209278: Second inverse function (numbers of rows) for pairing function A185180.

The programs for A209278, the canonical program `A209278.P2209721378979805351` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209278 has offset 1).

The definition of A209278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209278.P2209721378979805351

`floor((A003056(n)+3)/2)+floor(A002260(n+1)/2)*(-1)^(A002260(n+1)+A003056(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209278

/-- `floor((A003056(n)+3)/2)+floor(A002260(n+1)/2)*(-1)^(A002260(n+1)+A003056(n))` -/
def P2209721378979805351.Spec : Prop :=
  ∀ n, P2209721378979805351.a n = (A209278 (n + 1) : ℚ)

end A209278

/-! ## A209278.P11964182673180031178

`A057058(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A209278.P11964182673180031178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A209278.P11964182673180031178

namespace A209278

/-- `A057058(∑[2*n]%comp[∑[n]]+1)` -/
def P11964182673180031178.Spec : Prop :=
  ∀ n, P11964182673180031178.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P9064405990168728965

`A002260(A057028(n+1))`
-/

namespace A209278.P9064405990168728965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057028 (n + 1)).toNat

end

end A209278.P9064405990168728965

namespace A209278

/-- `A002260(A057028(n+1))` -/
def P9064405990168728965.Spec : Prop :=
  ∀ n, P9064405990168728965.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P9487282062458463193

`A057058(A038722(n+1))`
-/

namespace A209278.P9487282062458463193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A038722 (n + 1)).toNat

end

end A209278.P9487282062458463193

namespace A209278

/-- `A057058(A038722(n+1))` -/
def P9487282062458463193.Spec : Prop :=
  ∀ n, P9487282062458463193.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P1432477596010758720

`A057058(A061579(n)+1)`
-/

namespace A209278.P1432477596010758720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A061579 n + 1).toNat

end

end A209278.P1432477596010758720

namespace A209278

/-- `A057058(A061579(n)+1)` -/
def P1432477596010758720.Spec : Prop :=
  ∀ n, P1432477596010758720.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P11766176472621669336

`A004736(A209293(n+1))`
-/

namespace A209278.P11766176472621669336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A209293 (n + 1)).toNat

end

end A209278.P11766176472621669336

namespace A209278

/-- `A004736(A209293(n+1))` -/
def P11766176472621669336.Spec : Prop :=
  ∀ n, P11766176472621669336.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P11904363565483175009

`A239304(A064789(n+1))`
-/

namespace A209278.P11904363565483175009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239304 (A064789 (n + 1)).toNat

end

end A209278.P11904363565483175009

namespace A209278

/-- `A239304(A064789(n+1))` -/
def P11904363565483175009.Spec : Prop :=
  ∀ n, P11904363565483175009.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P6374435178335076206

`A276669(A189151(n+1))`
-/

namespace A209278.P6374435178335076206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276669 (A189151 (n + 1)).toNat

end

end A209278.P6374435178335076206

namespace A209278

/-- `A276669(A189151(n+1))` -/
def P6374435178335076206.Spec : Prop :=
  ∀ n, P6374435178335076206.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P2326190265262453077

`A057028(n+1)-A057944(n)`
-/

namespace A209278.P2326190265262453077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) - A057944 n

end

end A209278.P2326190265262453077

namespace A209278

/-- `A057028(n+1)-A057944(n)` -/
def P2326190265262453077.Spec : Prop :=
  ∀ n, P2326190265262453077.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P9693698708278890043

`A003057(n+2)-A209279(n+1)`
-/

namespace A209278.P9693698708278890043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A209279 (n + 1)

end

end A209278.P9693698708278890043

namespace A209278

/-- `A003057(n+2)-A209279(n+1)` -/
def P9693698708278890043.Spec : Prop :=
  ∀ n, P9693698708278890043.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P8289357948222718001

`A003056(n)+2-A209279(n+1)`
-/

namespace A209278.P8289357948222718001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A209279 (n + 1))

end

end A209278.P8289357948222718001

namespace A209278

/-- `A003056(n)+2-A209279(n+1)` -/
def P8289357948222718001.Spec : Prop :=
  ∀ n, P8289357948222718001.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P15155868855784288884

`A128590(n+1)/A209279(n+1)`
-/

namespace A209278.P15155868855784288884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128590 (n + 1) : ℚ) / (A209279 (n + 1) : ℚ)

end

end A209278.P15155868855784288884

namespace A209278

/-- `A128590(n+1)/A209279(n+1)` -/
def P15155868855784288884.Spec : Prop :=
  ∀ n, P15155868855784288884.a n = (A209278 (n + 1) : ℚ)

end A209278

/-! ## A209278.P16133755037766930687

`A002024(n+1)+1-A209279(n+1)`
-/

namespace A209278.P16133755037766930687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A209279 (n + 1))

end

end A209278.P16133755037766930687

namespace A209278

/-- `A002024(n+1)+1-A209279(n+1)` -/
def P16133755037766930687.Spec : Prop :=
  ∀ n, P16133755037766930687.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P5927129322345850151

`A014132(n+1)-(A209279(n+1)+n)`
-/

namespace A209278.P5927129322345850151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A209279 (n + 1) + (n : ℤ))

end

end A209278.P5927129322345850151

namespace A209278

/-- `A014132(n+1)-(A209279(n+1)+n)` -/
def P5927129322345850151.Spec : Prop :=
  ∀ n, P5927129322345850151.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P14077445650231947361

`A057058(A064789(A057027(n+1)))`
-/

namespace A209278.P14077445650231947361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A064789 (A057027 (n + 1)).toNat).toNat

end

end A209278.P14077445650231947361

namespace A209278

/-- `A057058(A064789(A057027(n+1)))` -/
def P14077445650231947361.Spec : Prop :=
  ∀ n, P14077445650231947361.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P15735188704858299325

`A057058(A057028(A185180(n+1)))`
-/

namespace A209278.P15735188704858299325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A209278.P15735188704858299325

namespace A209278

/-- `A057058(A057028(A185180(n+1)))` -/
def P15735188704858299325.Spec : Prop :=
  ∀ n, P15735188704858299325.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P9903885739592766151

`A057028(n+1)+1-A057028(A127739(n+1))`
-/

namespace A209278.P9903885739592766151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) + (1 - A057028 (A127739 (n + 1)).toNat)

end

end A209278.P9903885739592766151

namespace A209278

/-- `A057028(n+1)+1-A057028(A127739(n+1))` -/
def P9903885739592766151.Spec : Prop :=
  ∀ n, P9903885739592766151.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P4757844712506927012

`A128590(n+1)/A128180(n+1)*A097807(n)`
-/

namespace A209278.P4757844712506927012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128590 (n + 1) : ℚ) / (A128180 (n + 1) : ℚ) * (A097807 n : ℚ)

end

end A209278.P4757844712506927012

namespace A209278

/-- `A128590(n+1)/A128180(n+1)*A097807(n)` -/
def P4757844712506927012.Spec : Prop :=
  ∀ n, P4757844712506927012.a n = (A209278 (n + 1) : ℚ)

end A209278

/-! ## A209278.P1526350400757840026

`A057028(n+1)+A057058(n+1)-A057027(n+1)`
-/

namespace A209278.P1526350400757840026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) + (A057058 (n + 1) - A057027 (n + 1))

end

end A209278.P1526350400757840026

namespace A209278

/-- `A057028(n+1)+A057058(n+1)-A057027(n+1)` -/
def P1526350400757840026.Spec : Prop :=
  ∀ n, P1526350400757840026.a n = A209278 (n + 1)

end A209278

/-! ## A209278.P17552747014241943033

`A057028(n+1)+A194959(n+1)-A064578(n+1)`
-/

namespace A209278.P17552747014241943033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) + (A194959 (n + 1) - A064578 (n + 1))

end

end A209278.P17552747014241943033

namespace A209278

/-- `A057028(n+1)+A194959(n+1)-A064578(n+1)` -/
def P17552747014241943033.Spec : Prop :=
  ∀ n, P17552747014241943033.a n = A209278 (n + 1)

end A209278

/-!
# A209279: First inverse function (numbers of rows) for pairing function A185180.

The programs for A209279, the canonical program `A209279.P3268424504752399846` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209279 has offset 1).

The definition of A209279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209279.P3268424504752399846

`floor((A003056(n)+2)/2)+floor(A002260(n+1)/2)*(-1)^(A002260(n+1)+A003056(n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209279

/-- `floor((A003056(n)+2)/2)+floor(A002260(n+1)/2)*(-1)^(A002260(n+1)+A003056(n)+1)` -/
def P3268424504752399846.Spec : Prop :=
  ∀ n, P3268424504752399846.a n = (A209279 (n + 1) : ℚ)

end A209279

/-! ## A209279.P12749659051702261472

`abs(A128180(n+1))`
-/

namespace A209279.P12749659051702261472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128180 (n + 1)|

end

end A209279.P12749659051702261472

namespace A209279

/-- `abs(A128180(n+1))` -/
def P12749659051702261472.Spec : Prop :=
  ∀ n, P12749659051702261472.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P8779630020015186238

`A004526(A131307(n+1)+1)`
-/

namespace A209279.P8779630020015186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131307 (n + 1) + 1).toNat

end

end A209279.P8779630020015186238

namespace A209279

/-- `A004526(A131307(n+1)+1)` -/
def P8779630020015186238.Spec : Prop :=
  ∀ n, P8779630020015186238.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P14976039899923540379

`A097807(n)*A128180(n+1)`
-/

namespace A209279.P14976039899923540379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A128180 (n + 1)

end

end A209279.P14976039899923540379

namespace A209279

/-- `A097807(n)*A128180(n+1)` -/
def P14976039899923540379.Spec : Prop :=
  ∀ n, P14976039899923540379.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P10456898465502042968

`gcd(A000038(n), A128180(n+1))`
-/

namespace A209279.P10456898465502042968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128180 (n + 1))

end

end A209279.P10456898465502042968

namespace A209279

/-- `gcd(A000038(n), A128180(n+1))` -/
def P10456898465502042968.Spec : Prop :=
  ∀ n, (P10456898465502042968.a n : ℤ) = A209279 (n + 1)

end A209279

/-! ## A209279.P6181837545315928140

`lcm(A020985(n), A128180(n+1))`
-/

namespace A209279.P6181837545315928140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128180 (n + 1))

end

end A209279.P6181837545315928140

namespace A209279

/-- `lcm(A020985(n), A128180(n+1))` -/
def P6181837545315928140.Spec : Prop :=
  ∀ n, (P6181837545315928140.a n : ℤ) = A209279 (n + 1)

end A209279

/-! ## A209279.P5540046615307416320

`A095800(n+1)/A002260(n+1)`
-/

namespace A209279.P5540046615307416320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095800 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A209279.P5540046615307416320

namespace A209279

/-- `A095800(n+1)/A002260(n+1)` -/
def P5540046615307416320.Spec : Prop :=
  ∀ n, P5540046615307416320.a n = (A209279 (n + 1) : ℚ)

end A209279

/-! ## A209279.P12659713907975615175

`gcd(A049777(n+1), A128590(n+1))`
-/

namespace A209279.P12659713907975615175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049777 (n + 1)) (A128590 (n + 1))

end

end A209279.P12659713907975615175

namespace A209279

/-- `gcd(A049777(n+1), A128590(n+1))` -/
def P12659713907975615175.Spec : Prop :=
  ∀ n, (P12659713907975615175.a n : ℤ) = A209279 (n + 1)

end A209279

/-! ## A209279.P9837633180252096180

`A127739(n+1)+1-A057028(n+1)`
-/

namespace A209279.P9837633180252096180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (1 - A057028 (n + 1))

end

end A209279.P9837633180252096180

namespace A209279

/-- `A127739(n+1)+1-A057028(n+1)` -/
def P9837633180252096180.Spec : Prop :=
  ∀ n, P9837633180252096180.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P5692183295682861548

`floor((A140756(n+1)+A003057(n+2))/2)`
-/

namespace A209279.P5692183295682861548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140756 (n + 1) + A003057 (n + 2) : ℚ) / 2⌋

end

end A209279.P5692183295682861548

namespace A209279

/-- `floor((A140756(n+1)+A003057(n+2))/2)` -/
def P5692183295682861548.Spec : Prop :=
  ∀ n, P5692183295682861548.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P10024199796573004761

`A057027(n+1)+A057059(n+1)-A057028(n+1)`
-/

namespace A209279.P10024199796573004761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1) + (A057059 (n + 1) - A057028 (n + 1))

end

end A209279.P10024199796573004761

namespace A209279

/-- `A057027(n+1)+A057059(n+1)-A057028(n+1)` -/
def P10024199796573004761.Spec : Prop :=
  ∀ n, P10024199796573004761.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P5233856381222062407

`A092543(A385406(n+1))`
-/

namespace A209279.P5233856381222062407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A385406 (n + 1)).toNat

end

end A209279.P5233856381222062407

namespace A209279

/-- `A092543(A385406(n+1))` -/
def P5233856381222062407.Spec : Prop :=
  ∀ n, P5233856381222062407.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P11871817762135715087

`A004736(A057028(n+1))`
-/

namespace A209279.P11871817762135715087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A057028 (n + 1)).toNat

end

end A209279.P11871817762135715087

namespace A209279

/-- `A004736(A057028(n+1))` -/
def P11871817762135715087.Spec : Prop :=
  ∀ n, P11871817762135715087.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P14390888952772248248

`A025581(A057028(n+1)-1)+1`
-/

namespace A209279.P14390888952772248248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A057028 (n + 1) - 1).toNat + 1

end

end A209279.P14390888952772248248

namespace A209279

/-- `A025581(A057028(n+1)-1)+1` -/
def P14390888952772248248.Spec : Prop :=
  ∀ n, P14390888952772248248.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P4720428095962274979

`A194959(A057028(A057028(A064578(A057027(n+1)))))`
-/

namespace A209279.P4720428095962274979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A057028 (A057028 (A064578 (A057027 (n + 1)).toNat).toNat).toNat).toNat

end

end A209279.P4720428095962274979

namespace A209279

/-- `A194959(A057028(A057028(A064578(A057027(n+1)))))` -/
def P4720428095962274979.Spec : Prop :=
  ∀ n, P4720428095962274979.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P1548806722104086694

`A057059(A038722(n+1))`
-/

namespace A209279.P1548806722104086694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A038722 (n + 1)).toNat

end

end A209279.P1548806722104086694

namespace A209279

/-- `A057059(A038722(n+1))` -/
def P1548806722104086694.Spec : Prop :=
  ∀ n, P1548806722104086694.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P16136083471928112681

`A057059(A061579(n)+1)`
-/

namespace A209279.P16136083471928112681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A061579 n + 1).toNat

end

end A209279.P16136083471928112681

namespace A209279

/-- `A057059(A061579(n)+1)` -/
def P16136083471928112681.Spec : Prop :=
  ∀ n, P16136083471928112681.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P6567740625111330670

`A002260(A209293(n+1))`
-/

namespace A209279.P6567740625111330670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A209293 (n + 1)).toNat

end

end A209279.P6567740625111330670

namespace A209279

/-- `A002260(A209293(n+1))` -/
def P6567740625111330670.Spec : Prop :=
  ∀ n, P6567740625111330670.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P15990958422187739110

`A057554(A189151(n+1))`
-/

namespace A209279.P15990958422187739110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A189151 (n + 1)).toNat

end

end A209279.P15990958422187739110

namespace A209279

/-- `A057554(A189151(n+1))` -/
def P15990958422187739110.Spec : Prop :=
  ∀ n, P15990958422187739110.a n = A209279 (n + 1)

end A209279

/-! ## A209279.P3359633022497856549

`A209293(n+1)-A057944(n)`
-/

namespace A209279.P3359633022497856549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (n + 1) - A057944 n

end

end A209279.P3359633022497856549

namespace A209279

/-- `A209293(n+1)-A057944(n)` -/
def P3359633022497856549.Spec : Prop :=
  ∀ n, P3359633022497856549.a n = A209279 (n + 1)

end A209279

/-!
# A209281: Start with first run [0,1] then, for n >= 2, the n-th run has length 2^n and is the concatenation of [a(1),a(2),...,a(2^n/2)] and [n-a(1),n-a(2),...,n-a(2^n/2)].

The programs for A209281, the canonical program `A209281.P8916768534846602315` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209281 has offset 1).

The definition of A209281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209281.P5450534490540475263

`A089215(n+1)-1`
-/

namespace A209281.P5450534490540475263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089215 (n + 1) - 1

end

end A209281.P5450534490540475263

namespace A209281

/-- `A089215(n+1)-1` -/
def P5450534490540475263.Spec : Prop :=
  ∀ n, P5450534490540475263.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P7929787061631811623

`A029837(n+1)-A346633(n)`
-/

namespace A209281.P7929787061631811623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A346633 n

end

end A209281.P7929787061631811623

namespace A209281

/-- `A029837(n+1)-A346633(n)` -/
def P7929787061631811623.Spec : Prop :=
  ∀ n, P7929787061631811623.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P8916768534846602315

`(A029837(n+1)+A124754(n))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209281

/-- `(A029837(n+1)+A124754(n))/2` -/
def P8916768534846602315.Spec : Prop :=
  ∀ n, P8916768534846602315.a n = (A209281 (n + 1) : ℚ)

end A209281

/-! ## A209281.P7947676651171822314

`A000120(A006068(n))`
-/

namespace A209281.P7947676651171822314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006068 n).toNat

end

end A209281.P7947676651171822314

namespace A209281

/-- `A000120(A006068(n))` -/
def P7947676651171822314.Spec : Prop :=
  ∀ n, P7947676651171822314.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P7300991450830014355

`A029837(A346702(n)+1)`
-/

namespace A209281.P7300991450830014355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A346702 n + 1).toNat

end

end A209281.P7300991450830014355

namespace A209281

/-- `A029837(A346702(n)+1)` -/
def P7300991450830014355.Spec : Prop :=
  ∀ n, P7300991450830014355.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P11968775786362959519

`a(floor(n/2))+1-char[xor(n, 2*n)]` with `a(0)=0`
-/

namespace A209281.P11968775786362959519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A209281.P11968775786362959519

namespace A209281

/-- `a(floor(n/2))+1-char[xor(n, 2*n)]` -/
def P11968775786362959519.Spec : Prop :=
  ∀ n, P11968775786362959519.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P13258864483165755097

`a(floor(n/2))+comp[xor(n, 2*n+1)]%2` with `a(0)=0`
-/

namespace A209281.P13258864483165755097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A209281.P13258864483165755097

namespace A209281

/-- `a(floor(n/2))+comp[xor(n, 2*n+1)]%2` -/
def P13258864483165755097.Spec : Prop :=
  ∀ n, (P13258864483165755097.a n : ℤ) = A209281 (n + 1)

end A209281

/-! ## A209281.P11810738195993415741

`char[xor(n+1, 2*n+1)+1]+a(floor(n/2))` with `a(0)=0`
-/

namespace A209281.P11810738195993415741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A209281.P11810738195993415741

namespace A209281

/-- `char[xor(n+1, 2*n+1)+1]+a(floor(n/2))` -/
def P11810738195993415741.Spec : Prop :=
  ∀ n, (P11810738195993415741.a n : ℤ) = A209281 (n + 1)

end A209281

/-! ## A209281.P11987745367354832709

`a(floor(n/2))+2*n+1-comp[xor(n, 2*n)]` with `a(0)=0`
-/

namespace A209281.P11987745367354832709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + ((2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A209281.P11987745367354832709

namespace A209281

/-- `a(floor(n/2))+2*n+1-comp[xor(n, 2*n)]` -/
def P11987745367354832709.Spec : Prop :=
  ∀ n, P11987745367354832709.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P5221053200723083239

`A290251(A233279(n))`
-/

namespace A209281.P5221053200723083239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A233279 n).toNat

end

end A209281.P5221053200723083239

namespace A209281

/-- `A290251(A233279(n))` -/
def P5221053200723083239.Spec : Prop :=
  ∀ n, P5221053200723083239.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P14028172546184517302

`A088748(A064707(n))-1`
-/

namespace A209281.P14028172546184517302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A064707 n).toNat - 1

end

end A209281.P14028172546184517302

namespace A209281

/-- `A088748(A064707(n))-1` -/
def P14028172546184517302.Spec : Prop :=
  ∀ n, P14028172546184517302.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P6281161800499074605

`A346633(n)+A124754(n)`
-/

namespace A209281.P6281161800499074605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 n + A124754 n

end

end A209281.P6281161800499074605

namespace A209281

/-- `A346633(n)+A124754(n)` -/
def P6281161800499074605.Spec : Prop :=
  ∀ n, P6281161800499074605.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P14341714908841143239

`A070941(n)-(A346633(n)+1)`
-/

namespace A209281.P14341714908841143239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - (A346633 n + 1)

end

end A209281.P14341714908841143239

namespace A209281

/-- `A070941(n)-(A346633(n)+1)` -/
def P14341714908841143239.Spec : Prop :=
  ∀ n, P14341714908841143239.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P7612689813662745458

`A142150(A124754(n)+A070939(n))`
-/

namespace A209281.P7612689813662745458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A124754 n + A070939 n).toNat

end

end A209281.P7612689813662745458

namespace A209281

/-- `A142150(A124754(n)+A070939(n))` -/
def P7612689813662745458.Spec : Prop :=
  ∀ n, P7612689813662745458.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P1009404104634016196

`A268716(n)-A005187(A006068(n))`
-/

namespace A209281.P1009404104634016196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268716 n - A005187 (A006068 n).toNat

end

end A209281.P1009404104634016196

namespace A209281

/-- `A268716(n)-A005187(A006068(n))` -/
def P1009404104634016196.Spec : Prop :=
  ∀ n, P1009404104634016196.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P9464987620618744745

`A001281(A124754(n)+A029837(n+1))`
-/

namespace A209281.P9464987620618744745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A124754 n + A029837 (n + 1)).toNat

end

end A209281.P9464987620618744745

namespace A209281

/-- `A001281(A124754(n)+A029837(n+1))` -/
def P9464987620618744745.Spec : Prop :=
  ∀ n, P9464987620618744745.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P10833688967022715664

`A005811(A064707(n))`
-/

namespace A209281.P10833688967022715664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A064707 n).toNat

end

end A209281.P10833688967022715664

namespace A209281

/-- `A005811(A064707(n))` -/
def P10833688967022715664.Spec : Prop :=
  ∀ n, P10833688967022715664.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P6656787271417916476

`A234022(A234612(n))`
-/

namespace A209281.P6656787271417916476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (A234612 n).toNat

end

end A209281.P6656787271417916476

namespace A209281

/-- `A234022(A234612(n))` -/
def P6656787271417916476.Spec : Prop :=
  ∀ n, P6656787271417916476.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P131407781728288333

`A000120(A268716(n)/2)`
-/

namespace A209281.P131407781728288333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A209281.P131407781728288333

namespace A209281

/-- `A000120(A268716(n)/2)` -/
def P131407781728288333.Spec : Prop :=
  ∀ n, P131407781728288333.a n = A209281 (n + 1)

end A209281

/-! ## A209281.P8360432041925453429

`A000120(A066194(n+1)-1)`
-/

namespace A209281.P8360432041925453429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066194 (n + 1) - 1).toNat

end

end A209281.P8360432041925453429

namespace A209281

/-- `A000120(A066194(n+1)-1)` -/
def P8360432041925453429.Spec : Prop :=
  ∀ n, P8360432041925453429.a n = A209281 (n + 1)

end A209281

/-!
# A209283: a(n) is difference of indices of terms >= 6 in A187824.

The programs for A209283, there is no canonical definition to state claims against.
-/

/-! ## A209283.P3217069051342631264

`Δ[eq[A321775(n+5), A321775(n+6)]]`
-/

namespace A209283.P3217069051342631264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321775 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321775 (n + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A209283.P3217069051342631264

/-!
# A209284: Number of "semiperiodic" binary words of length n.

The programs for A209284, there is no canonical definition to state claims against.
-/

/-! ## A209284.P8460280260085299724

`A325765(A006228(n))+A082550(n+1)`
-/

namespace A209284.P8460280260085299724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A006228 n).toNat + A082550 (n + 1)

end

end A209284.P8460280260085299724

/-!
# A209285: a(n) is difference of indices of terms = 6 in A187824.

The programs for A209285, there is no canonical definition to state claims against.
-/

/-! ## A209285.P17709620633050348533

`Δ[eq[6, A187824(n+2)]]`
-/

namespace A209285.P17709620633050348533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187824 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A209285.P17709620633050348533

/-!
# A209286: a(n) = a(n-1) + (1+a(n-2))*a(n-3) for n>1, a(1) = 1, a(n) = 0 for n

The programs for A209286, the canonical program `A209286.P15497294714645578158` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209286 has offset 0).

The definition of A209286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(1+a(n-2))*a(n-3)` (program `A209286.P15497294714645578158`, by `A209286.P15497294714645578158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209286.P15497294714645578158

`a(n-1)+(1+a(n-2))*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209286

/-- `a(n-1)+(1+a(n-2))*a(n-3)` -/
def P15497294714645578158.Spec : Prop :=
  ∀ n, (P15497294714645578158.a n : ℤ) = A209286 n

theorem P15497294714645578158.correct : P15497294714645578158.Spec := by
  intro n
  simp only [A209286]

end A209286

/-! ## A209286.P13630901094690374220

`A260353(n)+A032741(A353893(n+1))`
-/

namespace A209286.P13630901094690374220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260353 n + A032741 (A353893 (n + 1)).toNat

end

end A209286.P13630901094690374220

namespace A209286

/-- `A260353(n)+A032741(A353893(n+1))` -/
def P13630901094690374220.Spec : Prop :=
  ∀ n, P13630901094690374220.a n = A209286 n

end A209286

/-! ## A209286.P76955156633237465

`A358639(A352819(n+1)+A132972(n))`
-/

namespace A209286.P76955156633237465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358639 (A352819 (n + 1) + A132972 n).toNat

end

end A209286.P76955156633237465

namespace A209286

/-- `A358639(A352819(n+1)+A132972(n))` -/
def P76955156633237465.Spec : Prop :=
  ∀ n, P76955156633237465.a n = A209286 n

end A209286

/-! ## A209286.P14047376965408670694

`or(A135660(n+1), A135660(A110128(n)))`
-/

namespace A209286.P14047376965408670694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135660 (n + 1)) (A135660 (A110128 n).toNat)

end

end A209286.P14047376965408670694

namespace A209286

/-- `or(A135660(n+1), A135660(A110128(n)))` -/
def P14047376965408670694.Spec : Prop :=
  ∀ n, P14047376965408670694.a n = A209286 n

end A209286

/-! ## A209286.P7196024544834552201

`or(A135660(n+1), A135660(A328437(n)))`
-/

namespace A209286.P7196024544834552201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135660 (n + 1)) (A135660 (A328437 n).toNat)

end

end A209286.P7196024544834552201

namespace A209286

/-- `or(A135660(n+1), A135660(A328437(n)))` -/
def P7196024544834552201.Spec : Prop :=
  ∀ n, P7196024544834552201.a n = A209286 n

end A209286

/-!
# A209287: Minimal m>=0 such that prime(n)+2*m-1 has form 2^k*p, where k>=0 and p is prime.

The programs for A209287, there is no canonical definition to state claims against.
-/

/-! ## A209287.P11135545836911818883

`A325135(A006093(n+1))^A327778(n)`
-/

namespace A209287.P11135545836911818883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325135 (A006093 (n + 1)).toNat : ℚ) ^ (A327778 n : ℤ)

end

end A209287.P11135545836911818883

/-! ## A209287.P5149868627312799826

`A325135(A006093(n+1))^A059260(A020639(n+1)²)`
-/

namespace A209287.P5149868627312799826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325135 (A006093 (n + 1)).toNat : ℚ) ^ (A059260 (A020639 (n + 1) ^ 2).toNat : ℤ)

end

end A209287.P5149868627312799826

/-! ## A209287.P9404043532169940518

`A025904(∑{e}[Δ[A038505(n+1)], #])`
-/

namespace A209287.P9404043532169940518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A209287.P9404043532169940518

/-!
# A209288: Main diagonal of the quadruple recurrence x(i,j,k,m) = x(i-1,j,k,m) + x(i,j-1,k,m) + x(i,j,k-1,m) + x(i,j,k,m-1) with x(i,j,k,m) = 1 if 0 in {i,j,k,m}.

The programs for A209288, there is no canonical definition to state claims against.
-/

/-! ## A209288.P18035604683775807776

`record[A210472(A052905(n))]`
-/

namespace A209288.P18035604683775807776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209288.P18035604683775807776

/-! ## A209288.P3641885568227020048

`A210472(A052905(n+2))`
-/

namespace A209288.P3641885568227020048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A052905 (n + 2)).toNat

end

end A209288.P3641885568227020048

/-! ## A209288.P3771843170143911024

`A210472(eq[4, A025581(n)])`
-/

namespace A209288.P3771843170143911024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209288.P3771843170143911024

/-! ## A209288.P12911819616400505498

`A210472(eq[9, A099375(n)])`
-/

namespace A209288.P12911819616400505498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209288.P12911819616400505498

/-! ## A209288.P8544004515238746632

`A210472(Δ[A264443(n)]-1)`
-/

namespace A209288.P8544004515238746632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (f1 (n + 1) - f1 n - 1).toNat

end

end A209288.P8544004515238746632

/-!
# A209289: Number of functions f:{1,2,...,2n}->{1,2,...,2n} such that every preimage has an even cardinality.

The programs for A209289, there is no canonical definition to state claims against.
-/

/-! ## A209289.P3957789349042281363

`A225942(n*(n+2))`
-/

namespace A209289.P3957789349042281363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225942 (n * (n + 2))

end

end A209289.P3957789349042281363

/-! ## A209289.P1329779754331503425

`lcm(A003842(n), A225942(A005563(n)))`
-/

namespace A209289.P1329779754331503425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003842 n) (A225942 (A005563 n).toNat)

end

end A209289.P1329779754331503425

/-! ## A209289.P2134484334397206124

`A007318(∑[n])*A225942(A005563(n))`
-/

namespace A209289.P2134484334397206124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A225942 (A005563 n).toNat

end

end A209289.P2134484334397206124

/-! ## A209289.P18381124702746958351

`A225942(A005563(n))+A000007(n+1)`
-/

namespace A209289.P18381124702746958351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225942 (A005563 n).toNat + A000007 (n + 1)

end

end A209289.P18381124702746958351

/-! ## A209289.P3407557966957745670

`A225942(A005563(n))+1-A000108(A326292(n))`
-/

namespace A209289.P3407557966957745670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225942 (A005563 n).toNat + (1 - A000108 (A326292 n).toNat)

end

end A209289.P3407557966957745670

/-!
# A209290: Number of elements whose preimage is the empty set summed over all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A209290, the canonical program `A209290.P794830543941775094` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209290 has offset 0).

The definition of A209290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209290.P794830543941775094

`n*(n-1)^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209290

/-- `n*(n-1)^n` -/
def P794830543941775094.Spec : Prop :=
  ∀ n, P794830543941775094.a n = A209290 n

theorem P794830543941775094.correct : P794830543941775094.Spec := by
  intro n
  simp only [A209290]

end A209290

/-! ## A209290.P7740022258696133821

`lcm(n, (1-n)^n)`
-/

namespace A209290.P7740022258696133821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ n)

end

end A209290.P7740022258696133821

namespace A209290

/-- `lcm(n, (1-n)^n)` -/
def P7740022258696133821.Spec : Prop :=
  ∀ n, (P7740022258696133821.a n : ℤ) = A209290 n

end A209290

/-! ## A209290.P17208477991679667061

`∏{digits}[10^n, n-1+#]`
-/

namespace A209290.P17208477991679667061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℤ) - 1 + (x : ℤ)).prod

end

end A209290.P17208477991679667061

namespace A209290

/-- `∏{digits}[10^n, n-1+#]` -/
def P17208477991679667061.Spec : Prop :=
  ∀ n, P17208477991679667061.a n = A209290 n

end A209290

/-! ## A209290.P9584838589011205823

`A210457(∑[n])`
-/

namespace A209290.P9584838589011205823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209290.P9584838589011205823

namespace A209290

/-- `A210457(∑[n])` -/
def P9584838589011205823.Spec : Prop :=
  ∀ n, P9584838589011205823.a n = A209290 n

end A209290

/-! ## A209290.P190112227307087288

`n*A085606(n)+n`
-/

namespace A209290.P190112227307087288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085606 n + (n : ℤ)

end

end A209290.P190112227307087288

namespace A209290

/-- `n*A085606(n)+n` -/
def P190112227307087288.Spec : Prop :=
  ∀ n, P190112227307087288.a n = A209290 n

theorem P190112227307087288.correct : P190112227307087288.Spec := by
  intro n
  simp only [A209290, Nat.add_sub_cancel, A209290.P190112227307087288.a, A209290.P794830543941775094.a, A085606, A085606.P9291025308928995895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209290

/-! ## A209290.P2043053528297965468

`A007778(n)+A065440(n)-A085283(n)`
-/

namespace A209290.P2043053528297965468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n + (A065440 n - A085283 n)

end

end A209290.P2043053528297965468

namespace A209290

/-- `A007778(n)+A065440(n)-A085283(n)` -/
def P2043053528297965468.Spec : Prop :=
  ∀ n, P2043053528297965468.a n = A209290 n

theorem P2043053528297965468.correct : P2043053528297965468.Spec := by
  intro n
  simp only [A209290, Nat.add_sub_cancel, A209290.P2043053528297965468.a, A209290.P794830543941775094.a, A007778, A007778.P16810824566142427032.a, A065440, A065440.P10983116689325036244.a, A085283, A085283.P5394755465249716377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209290

/-! ## A209290.P16196770370116317188

`A065440(n+1)+A065440(n)-A085283(n)`
-/

namespace A209290.P16196770370116317188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (n + 1) + (A065440 n - A085283 n)

end

end A209290.P16196770370116317188

namespace A209290

/-- `A065440(n+1)+A065440(n)-A085283(n)` -/
def P16196770370116317188.Spec : Prop :=
  ∀ n, P16196770370116317188.a n = A209290 n

theorem P16196770370116317188.correct : P16196770370116317188.Spec := by
  intro n
  simp only [A209290, Nat.add_sub_cancel, A209290.P16196770370116317188.a, A209290.P794830543941775094.a, A065440, A065440.P10983116689325036244.a, A085283, A085283.P5394755465249716377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209290

/-!
# A209291: Sum of the refactorable numbers less than or equal to n.

The programs for A209291, the canonical program `A209291.P18360299347997775299` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209291 has offset 1).

The definition of A209291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209291.P9929272949633922060

`∑[C(A122377(n+1), n)]`
-/

namespace A209291.P9929272949633922060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122377 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P9929272949633922060

namespace A209291

/-- `∑[C(A122377(n+1), n)]` -/
def P9929272949633922060.Spec : Prop :=
  ∀ n, (P9929272949633922060.a n : ℤ) = A209291 (n + 1)

end A209291

/-! ## A209291.P18360299347997775299

`∑[(n+1)*A336040(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A209291

/-- `∑[(n+1)*A336040(n+1)]` -/
def P18360299347997775299.Spec : Prop :=
  ∀ n, P18360299347997775299.a n = A209291 (n + 1)

theorem P18360299347997775299.correct : P18360299347997775299.Spec := by
  intro n
  simp only [A209291, Nat.add_sub_cancel]

end A209291

/-! ## A209291.P1958803864220283254

`∑[(n+1)*(1-A368625(n+1))]`
-/

namespace A209291.P1958803864220283254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A368625 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P1958803864220283254

namespace A209291

/-- `∑[(n+1)*(1-A368625(n+1))]` -/
def P1958803864220283254.Spec : Prop :=
  ∀ n, P1958803864220283254.a n = A209291 (n + 1)

theorem P1958803864220283254.correct : P1958803864220283254.Spec := by
  intro n
  simp only [A209291, Nat.add_sub_cancel, A209291.P1958803864220283254.f1, A209291.P1958803864220283254.a, A209291.P18360299347997775299.f1, A209291.P18360299347997775299.a, A336040, A336040.P10759286012738272429.a, A368625, A368625.P10862241457077750444.a, A009230, A009230.P1819466597498337279.f1, A009230.P1819466597498337279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209291

/-! ## A209291.P8418670527728965513

`∑[floor(1/A298734(n+1))*A122377(n+1)]`
-/

namespace A209291.P8418670527728965513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A298734 (n + 1) : ℚ)⌋ * A122377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P8418670527728965513

namespace A209291

/-- `∑[floor(1/A298734(n+1))*A122377(n+1)]` -/
def P8418670527728965513.Spec : Prop :=
  ∀ n, P8418670527728965513.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P9728687743312347338

`∑[A063524(A124332(n+1))*A122377(n+1)]`
-/

namespace A209291.P9728687743312347338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A124332 (n + 1)).toNat * A122377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P9728687743312347338

namespace A209291

/-- `∑[A063524(A124332(n+1))*A122377(n+1)]` -/
def P9728687743312347338.Spec : Prop :=
  ∀ n, P9728687743312347338.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P1400099347295775270

`∑[floor(1/A090387(n+1))*A026741(2*(n+1))]`
-/

namespace A209291.P1400099347295775270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A090387 (n + 1) : ℚ)⌋ * A026741 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P1400099347295775270

namespace A209291

/-- `∑[floor(1/A090387(n+1))*A026741(2*(n+1))]` -/
def P1400099347295775270.Spec : Prop :=
  ∀ n, P1400099347295775270.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P3899210089735484580

`∑[A127446(A000217(n)+A000005(n+1))]`
-/

namespace A209291.P3899210089735484580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (A000217 n + A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P3899210089735484580

namespace A209291

/-- `∑[A127446(A000217(n)+A000005(n+1))]` -/
def P3899210089735484580.Spec : Prop :=
  ∀ n, P3899210089735484580.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P8966437260687191649

`∑[A336040(n+1)*A360780(n)]`
-/

namespace A209291.P8966437260687191649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1) * A360780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209291.P8966437260687191649

namespace A209291

/-- `∑[A336040(n+1)*A360780(n)]` -/
def P8966437260687191649.Spec : Prop :=
  ∀ n, P8966437260687191649.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P6872985763866590552

`A368817(n+1)+A335182(n+1)`
-/

namespace A209291.P6872985763866590552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368817 (n + 1) + A335182 (n + 1)

end

end A209291.P6872985763866590552

namespace A209291

/-- `A368817(n+1)+A335182(n+1)` -/
def P6872985763866590552.Spec : Prop :=
  ∀ n, P6872985763866590552.a n = A209291 (n + 1)

end A209291

/-! ## A209291.P3821991938014572725

`A368817(n+1)+∑{d}[n+1, #*A336040(#)]`
-/

namespace A209291.P3821991938014572725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368817 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A336040 d

end

end A209291.P3821991938014572725

namespace A209291

/-- `A368817(n+1)+∑{d}[n+1, #*A336040(#)]` -/
def P3821991938014572725.Spec : Prop :=
  ∀ n, P3821991938014572725.a n = A209291 (n + 1)

end A209291

/-!
# A209292: Non-semiprimes n such that 2n+1 are non-semiprimes.

The programs for A209292, there is no canonical definition to state claims against.
-/

/-! ## A209292.P1266030542420886302

`lt[2, A109824(n+1)]+1`
-/

namespace A209292.P1266030542420886302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A209292.P1266030542420886302

/-! ## A209292.P8087367482453030089

`comp[A179312(n+1)-A027656(n)]`
-/

namespace A209292.P8087367482453030089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1) - A027656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A209292.P8087367482453030089

/-! ## A209292.P11068684597579743100

`comp[A179312(n+1)%A008619(n)]`
-/

namespace A209292.P11068684597579743100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179312 (n + 1)) (A008619 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A209292.P11068684597579743100

/-! ## A209292.P1841489384468063042

`eq[A064911(n+1), A174956(2*n+3)]+1`
-/

namespace A209292.P1841489384468063042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209292.P1841489384468063042

/-! ## A209292.P2706798678814568823

`eq[A174956(2*n+3), A174956(n+1)]+1`
-/

namespace A209292.P2706798678814568823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209292.P2706798678814568823

/-!
# A209293: Inverse permutation of A185180.

The programs for A209293, the canonical program `A209293.P16549262265327354364` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209293 has offset 1).

The definition of A209293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209293.P3934963089395360161

`A038722(A057028(n+1))`
-/

namespace A209293.P3934963089395360161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A057028 (n + 1)).toNat

end

end A209293.P3934963089395360161

namespace A209293

/-- `A038722(A057028(n+1))` -/
def P3934963089395360161.Spec : Prop :=
  ∀ n, P3934963089395360161.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P16428853641827610212

`A059399(A038722(n+1))`
-/

namespace A209293.P16428853641827610212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A038722 (n + 1)).toNat

end

end A209293.P16428853641827610212

namespace A209293

/-- `A059399(A038722(n+1))` -/
def P16428853641827610212.Spec : Prop :=
  ∀ n, P16428853641827610212.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P3572464907840358468

`A056011(A385406(n+1))`
-/

namespace A209293.P3572464907840358468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A385406 (n + 1)).toNat

end

end A209293.P3572464907840358468

namespace A209293

/-- `A056011(A385406(n+1))` -/
def P3572464907840358468.Spec : Prop :=
  ∀ n, P3572464907840358468.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P16549262265327354364

`A209279(n+1)+A057944(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209293

/-- `A209279(n+1)+A057944(n)` -/
def P16549262265327354364.Spec : Prop :=
  ∀ n, P16549262265327354364.a n = A209293 (n + 1)

theorem P16549262265327354364.correct : P16549262265327354364.Spec := by
  intro n
  simp only [A209293, Nat.add_sub_cancel]

end A209293

/-! ## A209293.P15574670410508740156

`A265129(n+1)-A057028(n+1)`
-/

namespace A209293.P15574670410508740156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A057028 (n + 1)

end

end A209293.P15574670410508740156

namespace A209293

/-- `A265129(n+1)-A057028(n+1)` -/
def P15574670410508740156.Spec : Prop :=
  ∀ n, P15574670410508740156.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P7450885836986220911

`A059399(A265129(n+1)-(n+1))`
-/

namespace A209293.P7450885836986220911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A209293.P7450885836986220911

namespace A209293

/-- `A059399(A265129(n+1)-(n+1))` -/
def P7450885836986220911.Spec : Prop :=
  ∀ n, P7450885836986220911.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P2128829416642227410

`A209279(n+1)+n-A002262(n)`
-/

namespace A209293.P2128829416642227410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) + ((n : ℤ) - A002262 n)

end

end A209293.P2128829416642227410

namespace A209293

/-- `A209279(n+1)+n-A002262(n)` -/
def P2128829416642227410.Spec : Prop :=
  ∀ n, P2128829416642227410.a n = A209293 (n + 1)

theorem P2128829416642227410.correct : P2128829416642227410.Spec := by
  intro n
  simp only [A209293, Nat.add_sub_cancel, A209293.P2128829416642227410.a, A209293.P16549262265327354364.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, A209279, A209279.P3268424504752399846.a, A000217, A000217.P10269402890581615239.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209293

/-! ## A209293.P7748785826186712801

`A093995(n+1)+1-A057028(n+1)`
-/

namespace A209293.P7748785826186712801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A057028 (n + 1))

end

end A209293.P7748785826186712801

namespace A209293

/-- `A093995(n+1)+1-A057028(n+1)` -/
def P7748785826186712801.Spec : Prop :=
  ∀ n, P7748785826186712801.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P11092178809102805810

`A127739(n+1)+1-A209278(n+1)`
-/

namespace A209293.P11092178809102805810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (1 - A209278 (n + 1))

end

end A209293.P11092178809102805810

namespace A209293

/-- `A127739(n+1)+1-A209278(n+1)` -/
def P11092178809102805810.Spec : Prop :=
  ∀ n, P11092178809102805810.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P13057704198431024144

`A002024(n+1)²+1-A057028(n+1)`
-/

namespace A209293.P13057704198431024144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A057028 (n + 1))

end

end A209293.P13057704198431024144

namespace A209293

/-- `A002024(n+1)²+1-A057028(n+1)` -/
def P13057704198431024144.Spec : Prop :=
  ∀ n, P13057704198431024144.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P4371440564429081000

`A209279(n+1)+n+1-A002260(n+1)`
-/

namespace A209293.P4371440564429081000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A209293.P4371440564429081000

namespace A209293

/-- `A209279(n+1)+n+1-A002260(n+1)` -/
def P4371440564429081000.Spec : Prop :=
  ∀ n, P4371440564429081000.a n = A209293 (n + 1)

theorem P4371440564429081000.correct : P4371440564429081000.Spec := by
  intro n
  simp only [A209293, Nat.add_sub_cancel, A209293.P4371440564429081000.a, A209293.P16549262265327354364.a, A002260, A002260.P769748059679640451.a, A057944, A057944.P16851463738746886639.a, A209279, A209279.P3268424504752399846.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209293

/-! ## A209293.P3390331457591818007

`A059399(A185180(A059399(n+1)))`
-/

namespace A209293.P3390331457591818007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A185180 (A059399 (n + 1)).toNat).toNat

end

end A209293.P3390331457591818007

namespace A209293

/-- `A059399(A185180(A059399(n+1)))` -/
def P3390331457591818007.Spec : Prop :=
  ∀ n, P3390331457591818007.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P15174280804881242385

`A000096(A003056(n))+2-A209278(n+1)`
-/

namespace A209293.P15174280804881242385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat + (2 - A209278 (n + 1))

end

end A209293.P15174280804881242385

namespace A209293

/-- `A000096(A003056(n))+2-A209278(n+1)` -/
def P15174280804881242385.Spec : Prop :=
  ∀ n, P15174280804881242385.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P15520476566938144335

`A056011(n+1)+A056023(n+1)-A057028(n+1)`
-/

namespace A209293.P15520476566938144335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A056023 (n + 1) - A057028 (n + 1))

end

end A209293.P15520476566938144335

namespace A209293

/-- `A056011(n+1)+A056023(n+1)-A057028(n+1)` -/
def P15520476566938144335.Spec : Prop :=
  ∀ n, P15520476566938144335.a n = A209293 (n + 1)

theorem P15520476566938144335.correct : P15520476566938144335.Spec := by
  intro n
  simp only [A209293, Nat.add_sub_cancel, A209293.P15520476566938144335.a, A209293.P16549262265327354364.a, A056011, A056011.P1549659588632935802.a, A056023, A056023.P18301880220554603864.a, A057028, A057028.P8117438138446753169.a, A057944, A057944.P16851463738746886639.a, A209279, A209279.P3268424504752399846.a, A000217, A000217.P10269402890581615239.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A038722, A038722.P244822054879230948.a, A092543, A092543.P4363946767756583020.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010751, A010751.P13596492722488707234.a, A110654, A110654.P360289776162656549.a, A007590, A007590.P9530274664467440414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209293

/-! ## A209293.P15017841400455830009

`A064578(n+1)+A064789(n+1)-A057028(n+1)`
-/

namespace A209293.P15017841400455830009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) + (A064789 (n + 1) - A057028 (n + 1))

end

end A209293.P15017841400455830009

namespace A209293

/-- `A064578(n+1)+A064789(n+1)-A057028(n+1)` -/
def P15017841400455830009.Spec : Prop :=
  ∀ n, P15017841400455830009.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P5207884465550524259

`A056011(n+1)+A209279(n+1)-A092543(n+1)`
-/

namespace A209293.P5207884465550524259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A209279 (n + 1) - A092543 (n + 1))

end

end A209293.P5207884465550524259

namespace A209293

/-- `A056011(n+1)+A209279(n+1)-A092543(n+1)` -/
def P5207884465550524259.Spec : Prop :=
  ∀ n, P5207884465550524259.a n = A209293 (n + 1)

theorem P5207884465550524259.correct : P5207884465550524259.Spec := by
  intro n
  simp only [A209293, Nat.add_sub_cancel, A209293.P5207884465550524259.a, A209293.P16549262265327354364.a, A056011, A056011.P1549659588632935802.a, A057944, A057944.P16851463738746886639.a, A092543, A092543.P4363946767756583020.a, A209279, A209279.P3268424504752399846.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A010751, A010751.P13596492722488707234.a, A110654, A110654.P360289776162656549.a, A002262, A002262.P12129691700837801527.a, A007590, A007590.P9530274664467440414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209293

/-! ## A209293.P12037658823238275566

`A056023(n+1)+A092543(n+1)-A209278(n+1)`
-/

namespace A209293.P12037658823238275566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209278 (n + 1))

end

end A209293.P12037658823238275566

namespace A209293

/-- `A056023(n+1)+A092543(n+1)-A209278(n+1)` -/
def P12037658823238275566.Spec : Prop :=
  ∀ n, P12037658823238275566.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P4691326873752329125

`A185180(n+1)+A210535(n+1)-A209278(n+1)`
-/

namespace A209293.P4691326873752329125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) + (A210535 (n + 1) - A209278 (n + 1))

end

end A209293.P4691326873752329125

namespace A209293

/-- `A185180(n+1)+A210535(n+1)-A209278(n+1)` -/
def P4691326873752329125.Spec : Prop :=
  ∀ n, P4691326873752329125.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P12665203655784206356

`A127739(n+1)+A057028(A127739(n+1))-A057028(n+1)`
-/

namespace A209293.P12665203655784206356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (A057028 (A127739 (n + 1)).toNat - A057028 (n + 1))

end

end A209293.P12665203655784206356

namespace A209293

/-- `A127739(n+1)+A057028(A127739(n+1))-A057028(n+1)` -/
def P12665203655784206356.Spec : Prop :=
  ∀ n, P12665203655784206356.a n = A209293 (n + 1)

end A209293

/-! ## A209293.P13503265559242200893

`A056023(A056011(A057027(A056023(A056011(n+1)))))`
-/

namespace A209293.P13503265559242200893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A056011 (A057027 (A056023 (A056011 (n + 1)).toNat).toNat).toNat).toNat

end

end A209293.P13503265559242200893

namespace A209293

/-- `A056023(A056011(A057027(A056023(A056011(n+1)))))` -/
def P13503265559242200893.Spec : Prop :=
  ∀ n, P13503265559242200893.a n = A209293 (n + 1)

end A209293

/-!
# A209294: a(n) = (7*n^2 - 7*n + 4)/2.

The programs for A209294, the canonical program `A209294.P7138500833774320511` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209294 has offset 1).

The definition of A209294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209294.P7138500833774320511

`7*(n+1)*n/2+2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209294

/-- `7*(n+1)*n/2+2` -/
def P7138500833774320511.Spec : Prop :=
  ∀ n, P7138500833774320511.a n = (A209294 (n + 1) : ℚ)

end A209294

/-! ## A209294.P8077105105682155843

`(7*(n+1)²-7*(n+1)+4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209294.P8077105105682155843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 4 : ℚ) / 2

end

end A209294.P8077105105682155843

namespace A209294

/-- `(7*(n+1)²-7*(n+1)+4)/2` -/
def P8077105105682155843.Spec : Prop :=
  ∀ n, P8077105105682155843.a n = (A209294 (n + 1) : ℚ)

end A209294

/-! ## A209294.P12701841211223413096

`∑[a(n-1)+7]` with `a(0)=2, a(1)=7`
-/

namespace A209294.P12701841211223413096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P12701841211223413096

namespace A209294

/-- `∑[a(n-1)+7]` -/
def P12701841211223413096.Spec : Prop :=
  ∀ n, (P12701841211223413096.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P9856791931607881544

`∑[ogf((2+3x+2x^2)/(1-2x+x^2))]`
-/

namespace A209294.P9856791931607881544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P9856791931607881544

namespace A209294

/-- `∑[ogf((2+3x+2x^2)/(1-2x+x^2))]` -/
def P9856791931607881544.Spec : Prop :=
  ∀ n, P9856791931607881544.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P14707023419496671407

`ogf((2+3x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A209294.P14707023419496671407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, -3, 3, -1] n

end

end A209294.P14707023419496671407

namespace A209294

/-- `ogf((2+3x+2x^2)/(1-3x+3x^2-x^3))` -/
def P14707023419496671407.Spec : Prop :=
  ∀ n, P14707023419496671407.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P6482928982378692420

`abs(a(n-1)+7*n)` with `a(0)=2`
-/

namespace A209294.P6482928982378692420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 7 * n

end

end A209294.P6482928982378692420

namespace A209294

/-- `abs(a(n-1)+7*n)` -/
def P6482928982378692420.Spec : Prop :=
  ∀ n, (P6482928982378692420.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P8695830711905437408

`floor(a(n-1)+7*n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A209294.P8695830711905437408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 7 * n

end

end A209294.P8695830711905437408

namespace A209294

/-- `floor(a(n-1)+7*n)` -/
def P8695830711905437408.Spec : Prop :=
  ∀ n, (P8695830711905437408.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P11181894536673705729

`ceil(a(n-1)+7*n)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A209294.P11181894536673705729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 7 * n

end

end A209294.P11181894536673705729

namespace A209294

/-- `ceil(a(n-1)+7*n)` -/
def P11181894536673705729.Spec : Prop :=
  ∀ n, (P11181894536673705729.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P17899510464772592788

`round(a(n-1)+7*n)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A209294.P17899510464772592788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 7 * n

end

end A209294.P17899510464772592788

namespace A209294

/-- `round(a(n-1)+7*n)` -/
def P17899510464772592788.Spec : Prop :=
  ∀ n, (P17899510464772592788.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P14761800510192772164

`∑[7*n%a(n-1)]` with `a(0)=2`
-/

namespace A209294.P14761800510192772164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  7 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P14761800510192772164

namespace A209294

/-- `∑[7*n%a(n-1)]` -/
def P14761800510192772164.Spec : Prop :=
  ∀ n, (P14761800510192772164.a n : ℤ) = A209294 (n + 1)

end A209294

/-! ## A209294.P3372694240710831248

`floor(8*n-(n-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A209294.P3372694240710831248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (8 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A209294.P3372694240710831248

namespace A209294

/-- `floor(8*n-(n-a(n-1)))` -/
def P3372694240710831248.Spec : Prop :=
  ∀ n, P3372694240710831248.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P14856162980048537037

`floor((2*n+1)²+ϕ-C(n+1, 2))`
-/

namespace A209294.P14856162980048537037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℝ) + (Real.goldenRatio - (Nat.choose (n + 1) 2 : ℝ))⌋

end

end A209294.P14856162980048537037

namespace A209294

/-- `floor((2*n+1)²+ϕ-C(n+1, 2))` -/
def P14856162980048537037.Spec : Prop :=
  ∀ n, P14856162980048537037.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P2995219357462207267

`Δ[C(n+3, 3)+(n+1)*(1-n)²]`
-/

namespace A209294.P2995219357462207267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + (n + 1 : ℤ) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209294.P2995219357462207267

namespace A209294

/-- `Δ[C(n+3, 3)+(n+1)*(1-n)²]` -/
def P2995219357462207267.Spec : Prop :=
  ∀ n, P2995219357462207267.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P6429595743716879195

`∑[A133655(n)+1-n]`
-/

namespace A209294.P6429595743716879195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P6429595743716879195

namespace A209294

/-- `∑[A133655(n)+1-n]` -/
def P6429595743716879195.Spec : Prop :=
  ∀ n, P6429595743716879195.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P5025800128519228867

`∑[2*A008574(n)-n]`
-/

namespace A209294.P5025800128519228867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P5025800128519228867

namespace A209294

/-- `∑[2*A008574(n)-n]` -/
def P5025800128519228867.Spec : Prop :=
  ∀ n, P5025800128519228867.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P16127061498675311761

`abs(∑[A016921(n)+n]+1-n)`
-/

namespace A209294.P16127061498675311761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)|

end

end A209294.P16127061498675311761

namespace A209294

/-- `abs(∑[A016921(n)+n]+1-n)` -/
def P16127061498675311761.Spec : Prop :=
  ∀ n, P16127061498675311761.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P9802343618236104089

`A060820(n+1)%A081270(n)`
-/

namespace A209294.P9802343618236104089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060820 (n + 1)) (A081270 n)

end

end A209294.P9802343618236104089

namespace A209294

/-- `A060820(n+1)%A081270(n)` -/
def P9802343618236104089.Spec : Prop :=
  ∀ n, P9802343618236104089.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P17583098523989988481

`Δ[A004126(n)+n]`
-/

namespace A209294.P17583098523989988481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209294.P17583098523989988481

namespace A209294

/-- `Δ[A004126(n)+n]` -/
def P17583098523989988481.Spec : Prop :=
  ∀ n, P17583098523989988481.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P11954962360101836383

`Δ[A101165(n)-n²]`
-/

namespace A209294.P11954962360101836383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209294.P11954962360101836383

namespace A209294

/-- `Δ[A101165(n)-n²]` -/
def P11954962360101836383.Spec : Prop :=
  ∀ n, P11954962360101836383.a n = A209294 (n + 1)

end A209294

/-! ## A209294.P17872474657700060802

`∑[A253472(a(n-1))]` with `a(0)=2`
-/

namespace A209294.P17872474657700060802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A253472 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209294.P17872474657700060802

namespace A209294

/-- `∑[A253472(a(n-1))]` -/
def P17872474657700060802.Spec : Prop :=
  ∀ n, P17872474657700060802.a n = A209294 (n + 1)

end A209294

/-!
# A209295: Antidiagonal sums of the gcd(.,.) array A109004.

The programs for A209295, the canonical program `A209295.P12511635555149130807` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209295 has offset 0).

The definition of A209295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209295.P12511635555149130807

`∑{d}[n, A029935(#)]+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209295

/-- `∑{d}[n, A029935(#)]+n` -/
def P12511635555149130807.Spec : Prop :=
  ∀ n, P12511635555149130807.a n = A209295 n

theorem P12511635555149130807.correct : P12511635555149130807.Spec := by
  intro n
  simp only [A209295]

end A209295

/-! ## A209295.P10979986313230003609

`∑{d}[n, (n/#+1)*A000010(#)]`
-/

namespace A209295.P10979986313230003609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℚ) / (d : ℚ) + 1) * (A000010 d : ℚ)

end

end A209295.P10979986313230003609

namespace A209295

/-- `∑{d}[n, (n/#+1)*A000010(#)]` -/
def P10979986313230003609.Spec : Prop :=
  ∀ n, P10979986313230003609.a n = (A209295 n : ℚ)

end A209295

/-! ## A209295.P6640404464878571771

`A006579(A028310(n))+2*n`
-/

namespace A209295.P6640404464878571771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (A028310 n).toNat + (2 * n : ℤ)

end

end A209295.P6640404464878571771

namespace A209295

/-- `A006579(A028310(n))+2*n` -/
def P6640404464878571771.Spec : Prop :=
  ∀ n, P6640404464878571771.a n = A209295 n

end A209295

/-! ## A209295.P4385502891294269835

`A006579(A123108(2*n))+A005843(n)`
-/

namespace A209295.P4385502891294269835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (A123108 (2 * n)).toNat + A005843 n

end

end A209295.P4385502891294269835

namespace A209295

/-- `A006579(A123108(2*n))+A005843(n)` -/
def P4385502891294269835.Spec : Prop :=
  ∀ n, P4385502891294269835.a n = A209295 n

end A209295

/-! ## A209295.P5853806154832578187

`∑{d}[n², A000010(gcd(n, #))]+n`
-/

namespace A209295.P5853806154832578187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.gcd n d) + (n : ℤ)

end

end A209295.P5853806154832578187

namespace A209295

/-- `∑{d}[n², A000010(gcd(n, #))]+n` -/
def P5853806154832578187.Spec : Prop :=
  ∀ n, P5853806154832578187.a n = A209295 n

end A209295

/-! ## A209295.P7474765219150078214

`A006579(log2(A011782(n))+1)+2*n`
-/

namespace A209295.P7474765219150078214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + 1)).toNat + (2 * n : ℤ)

end

end A209295.P7474765219150078214

namespace A209295

/-- `A006579(log2(A011782(n))+1)+2*n` -/
def P7474765219150078214.Spec : Prop :=
  ∀ n, P7474765219150078214.a n = A209295 n

end A209295

/-!
# A209297: Triangle read by rows: T(n,k) = k*n + k - n, 1 <= k <= n.

The programs for A209297, the canonical program `A209297.P10344563550441563358` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209297 has offset 1).

The definition of A209297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209297.P4138859669925404957

`∑[2-char[∑[n]]]-A091435(n)`
-/

namespace A209297.P4138859669925404957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091435 n

end

end A209297.P4138859669925404957

namespace A209297

/-- `∑[2-char[∑[n]]]-A091435(n)` -/
def P4138859669925404957.Spec : Prop :=
  ∀ n, P4138859669925404957.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P10344563550441563358

`2*(n+1)-A128140(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209297

/-- `2*(n+1)-A128140(n+1)` -/
def P10344563550441563358.Spec : Prop :=
  ∀ n, P10344563550441563358.a n = A209297 (n + 1)

theorem P10344563550441563358.correct : P10344563550441563358.Spec := by
  intro n
  simp only [A209297, Nat.add_sub_cancel]

end A209297

/-! ## A209297.P12017554081032276386

`(comp[∑[n]]-n)*A002262(n)+1`
-/

namespace A209297.P12017554081032276386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A002262 n + 1

end

end A209297.P12017554081032276386

namespace A209297

/-- `(comp[∑[n]]-n)*A002262(n)+1` -/
def P12017554081032276386.Spec : Prop :=
  ∀ n, P12017554081032276386.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P10428966467067151242

`A075362(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A209297.P10428966467067151242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A209297.P10428966467067151242

namespace A209297

/-- `A075362(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P10428966467067151242.Spec : Prop :=
  ∀ n, P10428966467067151242.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P8316881584367892615

`A223544(n+1)+2-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A209297.P8316881584367892615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + 2 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A209297.P8316881584367892615

namespace A209297

/-- `A223544(n+1)+2-(C(comp[∑[n]]-n, 2)-n)` -/
def P8316881584367892615.Spec : Prop :=
  ∀ n, P8316881584367892615.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P4299841954204005932

`2*n+1-∑[char[∑[n+1]]]*A004736(n+1)`
-/

namespace A209297.P4299841954204005932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004736 (n + 1)

end

end A209297.P4299841954204005932

namespace A209297

/-- `2*n+1-∑[char[∑[n+1]]]*A004736(n+1)` -/
def P4299841954204005932.Spec : Prop :=
  ∀ n, P4299841954204005932.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P4424065548472095977

`A133819(n+1)+A004247(n)`
-/

namespace A209297.P4424065548472095977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + A004247 n

end

end A209297.P4424065548472095977

namespace A209297

/-- `A133819(n+1)+A004247(n)` -/
def P4424065548472095977.Spec : Prop :=
  ∀ n, P4424065548472095977.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P9073887361172716428

`A158405(n+1)+A079904(n)`
-/

namespace A209297.P9073887361172716428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + A079904 n

end

end A209297.P9073887361172716428

namespace A209297

/-- `A158405(n+1)+A079904(n)` -/
def P9073887361172716428.Spec : Prop :=
  ∀ n, P9073887361172716428.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P4650550298829402478

`A075362(n+1)-A025581(n)`
-/

namespace A209297.P4650550298829402478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A025581 n

end

end A209297.P4650550298829402478

namespace A209297

/-- `A075362(n+1)-A025581(n)` -/
def P4650550298829402478.Spec : Prop :=
  ∀ n, P4650550298829402478.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P9079444399886071146

`A081493(n+1)-A114327(n)`
-/

namespace A209297.P9079444399886071146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - A114327 n

end

end A209297.P9079444399886071146

namespace A209297

/-- `A081493(n+1)-A114327(n)` -/
def P9079444399886071146.Spec : Prop :=
  ∀ n, P9079444399886071146.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P1819003761803638825

`A154614(n+1)-A131507(n)`
-/

namespace A209297.P1819003761803638825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) - A131507 n

end

end A209297.P1819003761803638825

namespace A209297

/-- `A154614(n+1)-A131507(n)` -/
def P1819003761803638825.Spec : Prop :=
  ∀ n, P1819003761803638825.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P14657942678783549926

`A244418(n+1)-A159797(n)`
-/

namespace A209297.P14657942678783549926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) - A159797 n

end

end A209297.P14657942678783549926

namespace A209297

/-- `A244418(n+1)-A159797(n)` -/
def P14657942678783549926.Spec : Prop :=
  ∀ n, P14657942678783549926.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P5865448640160267629

`A323956(A099375(n)+2+n)`
-/

namespace A209297.P5865448640160267629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (A099375 n + 2 + (n : ℤ)).toNat

end

end A209297.P5865448640160267629

namespace A209297

/-- `A323956(A099375(n)+2+n)` -/
def P5865448640160267629.Spec : Prop :=
  ∀ n, P5865448640160267629.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P3043030417649960320

`A128139(n)+2*A112367(n)`
-/

namespace A209297.P3043030417649960320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + 2 * A112367 n

end

end A209297.P3043030417649960320

namespace A209297

/-- `A128139(n)+2*A112367(n)` -/
def P3043030417649960320.Spec : Prop :=
  ∀ n, P3043030417649960320.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P10088274727052600990

`A004247(n)+A002260(n+1)²`
-/

namespace A209297.P10088274727052600990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A002260 (n + 1) ^ 2

end

end A209297.P10088274727052600990

namespace A209297

/-- `A004247(n)+A002260(n+1)²` -/
def P10088274727052600990.Spec : Prop :=
  ∀ n, P10088274727052600990.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P3100197458843731271

`A004247(n)+(A002262(n)+1)²`
-/

namespace A209297.P3100197458843731271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A002262 n + 1) ^ 2

end

end A209297.P3100197458843731271

namespace A209297

/-- `A004247(n)+(A002262(n)+1)²` -/
def P3100197458843731271.Spec : Prop :=
  ∀ n, P3100197458843731271.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P400385741527390772

`A004201(n+1)-A095834(n+1)`
-/

namespace A209297.P400385741527390772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A095834 (n + 1)

end

end A209297.P400385741527390772

namespace A209297

/-- `A004201(n+1)-A095834(n+1)` -/
def P400385741527390772.Spec : Prop :=
  ∀ n, P400385741527390772.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P817152997607143715

`A004202(n+1)-A095833(n+1)`
-/

namespace A209297.P817152997607143715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A095833 (n + 1)

end

end A209297.P817152997607143715

namespace A209297

/-- `A004202(n+1)-A095833(n+1)` -/
def P817152997607143715.Spec : Prop :=
  ∀ n, P817152997607143715.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P7589936718784628774

`A063930(n+1)-A092283(n+1)`
-/

namespace A209297.P7589936718784628774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063930 (n + 1) - A092283 (n + 1)

end

end A209297.P7589936718784628774

namespace A209297

/-- `A063930(n+1)-A092283(n+1)` -/
def P7589936718784628774.Spec : Prop :=
  ∀ n, P7589936718784628774.a n = A209297 (n + 1)

end A209297

/-! ## A209297.P5301031821744028648

`A215630(n+1)-A095832(n+1)`
-/

namespace A209297.P5301031821744028648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A095832 (n + 1)

end

end A209297.P5301031821744028648

namespace A209297

/-- `A215630(n+1)-A095832(n+1)` -/
def P5301031821744028648.Spec : Prop :=
  ∀ n, P5301031821744028648.a n = A209297 (n + 1)

end A209297

/-!
# A209298: E.g.f.: Product_{n>=1} (cos(x^n/n) + sin(x^n/n)).

The programs for A209298, there is no canonical definition to state claims against.
-/

/-! ## A209298.P11090127959593827875

`A289498(A014307(n)*A384047(3*n+1))`
-/

namespace A209298.P11090127959593827875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A014307 n * A384047 (3 * n + 1)).toNat

end

end A209298.P11090127959593827875

/-!
# A209299: E.g.f.: 1 / Product_{n>=1} (cos(x^n/n) - sin(x^n/n)).

The programs for A209299, there is no canonical definition to state claims against.
-/

/-! ## A209299.P5173526119831911295

`A325707(∑[3*n]+1)`
-/

namespace A209299.P5173526119831911295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209299.P5173526119831911295

/-! ## A209299.P17262844426069607521

`A071903(A086018(n))`
-/

namespace A209299.P17262844426069607521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (A086018 n).toNat

end

end A209299.P17262844426069607521

