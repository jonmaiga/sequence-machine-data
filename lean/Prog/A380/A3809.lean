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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

/-!
# A380902: Integers k with at least 1 proper factorization for which the sum of the squares of the factors equals k.

The programs for A380902, there is no canonical definition to state claims against.
-/

/-! ## A380902.P14813845571273452798

`filter[A380760(n+1), A166280(#)]`
-/

namespace A380902.P14813845571273452798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A380902.P14813845571273452798

/-! ## A380902.P3951498302528516486

`A380760(∑[A266167(n+1)!])`
-/

namespace A380902.P3951498302528516486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A266167 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380902.P3951498302528516486

/-!
# A380905: Smallest number k such that k^(2*3^n) - 6 is prime.

The programs for A380905, there is no canonical definition to state claims against.
-/

/-! ## A380905.P4315876934149851445

`A382246(Δ[3^n])`
-/

namespace A380905.P4315876934149851445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A380905.P4315876934149851445

/-! ## A380905.P12760340656239304458

`lcm(A327791(n+1), A382246(A008776(n)))`
-/

namespace A380905.P12760340656239304458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327791 (n + 1)) (A382246 (A008776 n).toNat)

end

end A380905.P12760340656239304458

/-!
# A380906: Primes without {3, 5} as digits.

The programs for A380906, the canonical program `A380906.P1124574358086231309` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380906 has offset 1).

The definition of A380906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380906.P1124574358086231309

`∩[A038611(n+1), A038613(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A380906

/-- `∩[A038611(n+1), A038613(n+1)]` -/
def P1124574358086231309.Spec : Prop :=
  ∀ n, (P1124574358086231309.a n : ℤ) = A380906 (n + 1)

theorem P1124574358086231309.correct : P1124574358086231309.Spec := by
  intro n
  simp only [A380906, Nat.add_sub_cancel]

end A380906

/-! ## A380906.P11273841835550804674

`∩[A038611(n+1), A039136(n+1)]`
-/

namespace A380906.P11273841835550804674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P11273841835550804674

namespace A380906

/-- `∩[A038611(n+1), A039136(n+1)]` -/
def P11273841835550804674.Spec : Prop :=
  ∀ n, (P11273841835550804674.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P3053441402127213471

`∩[A038613(n+1), A039136(n+1)]`
-/

namespace A380906.P3053441402127213471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P3053441402127213471

namespace A380906

/-- `∩[A038613(n+1), A039136(n+1)]` -/
def P3053441402127213471.Spec : Prop :=
  ∀ n, (P3053441402127213471.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P8213956763876189970

`∩[A038613(n+1), A052405(n+1)]`
-/

namespace A380906.P8213956763876189970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P8213956763876189970

namespace A380906

/-- `∩[A038613(n+1), A052405(n+1)]` -/
def P8213956763876189970.Spec : Prop :=
  ∀ n, (P8213956763876189970.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P13595055107712352167

`∩[A038611(n+1), A052413(n+1)]`
-/

namespace A380906.P13595055107712352167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P13595055107712352167

namespace A380906

/-- `∩[A038611(n+1), A052413(n+1)]` -/
def P13595055107712352167.Spec : Prop :=
  ∀ n, (P13595055107712352167.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P1464456871969274379

`eq[n, A062584(A222235(n))]`
-/

namespace A380906.P1464456871969274379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380906.P1464456871969274379

namespace A380906

/-- `eq[n, A062584(A222235(n))]` -/
def P1464456871969274379.Spec : Prop :=
  ∀ n, (P1464456871969274379.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P7917673477224407871

`eq[A064502(n), A222235(n)]`
-/

namespace A380906.P7917673477224407871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P7917673477224407871

namespace A380906

/-- `eq[A064502(n), A222235(n)]` -/
def P7917673477224407871.Spec : Prop :=
  ∀ n, (P7917673477224407871.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P3936831407064978790

`eq[A084413(n), A222235(n)]`
-/

namespace A380906.P3936831407064978790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P3936831407064978790

namespace A380906

/-- `eq[A084413(n), A222235(n)]` -/
def P3936831407064978790.Spec : Prop :=
  ∀ n, (P3936831407064978790.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P11518288737487163147

`eq[A222235(n), A272476(n)]`
-/

namespace A380906.P11518288737487163147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P11518288737487163147

namespace A380906

/-- `eq[A222235(n), A272476(n)]` -/
def P11518288737487163147.Spec : Prop :=
  ∀ n, (P11518288737487163147.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P16166806070643226993

`eq[A222235(n), A327420(n)]`
-/

namespace A380906.P16166806070643226993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P16166806070643226993

namespace A380906

/-- `eq[A222235(n), A327420(n)]` -/
def P16166806070643226993.Spec : Prop :=
  ∀ n, (P16166806070643226993.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P13837176696679086311

`eq[A038700(n+1), A222235(n)]`
-/

namespace A380906.P13837176696679086311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P13837176696679086311

namespace A380906

/-- `eq[A038700(n+1), A222235(n)]` -/
def P13837176696679086311.Spec : Prop :=
  ∀ n, (P13837176696679086311.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P9530624403893629416

`eq[A057637(n+1), A222235(n)]`
-/

namespace A380906.P9530624403893629416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P9530624403893629416

namespace A380906

/-- `eq[A057637(n+1), A222235(n)]` -/
def P9530624403893629416.Spec : Prop :=
  ∀ n, (P9530624403893629416.a n : ℤ) = A380906 (n + 1)

end A380906

/-! ## A380906.P12525233531614679408

`eq[A093868(n+1), A222235(n)]`
-/

namespace A380906.P12525233531614679408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380906.P12525233531614679408

namespace A380906

/-- `eq[A093868(n+1), A222235(n)]` -/
def P12525233531614679408.Spec : Prop :=
  ∀ n, (P12525233531614679408.a n : ℤ) = A380906 (n + 1)

end A380906

/-!
# A380908: Decimal expansion of lim_{s->1} (zeta(s) - Pi^(s/2)/((s-1)*Gamma(s/2))) (negated).

The programs for A380908, there is no canonical definition to state claims against.
-/

/-! ## A380908.P15995603662519570561

`9-A074760(n)`
-/

namespace A380908.P15995603662519570561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A074760 n

end

end A380908.P15995603662519570561

/-!
# A380909: a(n) = numerator(n!! / (n - 1)!!).

The programs for A380909, the canonical program `A380909.P658941744693780821` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380909 has offset 0).

The definition of A380909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380909.P7218204629476243989

`A004731(n+1)`
-/

namespace A380909.P7218204629476243989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (n + 1)

end

end A380909.P7218204629476243989

namespace A380909

/-- `A004731(n+1)` -/
def P7218204629476243989.Spec : Prop :=
  ∀ n, P7218204629476243989.a n = A380909 n

end A380909

/-! ## A380909.P658941744693780821

`A006882(n)/A095987(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A380909

/-- `A006882(n)/A095987(n)` -/
def P658941744693780821.Spec : Prop :=
  ∀ n, P658941744693780821.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P9961938352140301693

`A004730(n)*A086767(n)`
-/

namespace A380909.P9961938352140301693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 n * A086767 n

end

end A380909.P9961938352140301693

namespace A380909

/-- `A004730(n)*A086767(n)` -/
def P9961938352140301693.Spec : Prop :=
  ∀ n, P9961938352140301693.a n = A380909 n

end A380909

/-! ## A380909.P3537335211558382280

`A086767(n)*A380910(n+1)`
-/

namespace A380909.P3537335211558382280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n * A380910 (n + 1)

end

end A380909.P3537335211558382280

namespace A380909

/-- `A086767(n)*A380910(n+1)` -/
def P3537335211558382280.Spec : Prop :=
  ∀ n, P3537335211558382280.a n = A380909 n

end A380909

/-! ## A380909.P11275299443630834888

`A380949(n+1)/A004730(n)`
-/

namespace A380909.P11275299443630834888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380949 (n + 1) : ℚ) / (A004730 n : ℚ)

end

end A380909.P11275299443630834888

namespace A380909

/-- `A380949(n+1)/A004730(n)` -/
def P11275299443630834888.Spec : Prop :=
  ∀ n, P11275299443630834888.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P182632912499045433

`A380949(n+1)/A380910(n+1)`
-/

namespace A380909.P182632912499045433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380949 (n + 1) : ℚ) / (A380910 (n + 1) : ℚ)

end

end A380909.P182632912499045433

namespace A380909

/-- `A380949(n+1)/A380910(n+1)` -/
def P182632912499045433.Spec : Prop :=
  ∀ n, P182632912499045433.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P5785919326167373225

`A095987(n+1)/A095987(n)*A004730(n)`
-/

namespace A380909.P5785919326167373225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095987 (n + 1) : ℚ) / (A095987 n : ℚ) * (A004730 n : ℚ)

end

end A380909.P5785919326167373225

namespace A380909

/-- `A095987(n+1)/A095987(n)*A004730(n)` -/
def P5785919326167373225.Spec : Prop :=
  ∀ n, P5785919326167373225.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P2713084014265943643

`A095987(n+1)/A095987(n)*A380910(n+1)`
-/

namespace A380909.P2713084014265943643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095987 (n + 1) : ℚ) / (A095987 n : ℚ) * (A380910 (n + 1) : ℚ)

end

end A380909.P2713084014265943643

namespace A380909

/-- `A095987(n+1)/A095987(n)*A380910(n+1)` -/
def P2713084014265943643.Spec : Prop :=
  ∀ n, P2713084014265943643.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P1098892348092157791

`A036064(∑[n+1]+1)`
-/

namespace A380909.P1098892348092157791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380909.P1098892348092157791

namespace A380909

/-- `A036064(∑[n+1]+1)` -/
def P1098892348092157791.Spec : Prop :=
  ∀ n, P1098892348092157791.a n = A380909 n

end A380909

/-! ## A380909.P9277964335648882975

`A095987(n+1)*A380910(n+1)/A095987(n)`
-/

namespace A380909.P9277964335648882975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095987 (n + 1) * A380910 (n + 1) : ℚ) / (A095987 n : ℚ)

end

end A380909.P9277964335648882975

namespace A380909

/-- `A095987(n+1)*A380910(n+1)/A095987(n)` -/
def P9277964335648882975.Spec : Prop :=
  ∀ n, P9277964335648882975.a n = (A380909 n : ℚ)

end A380909

/-! ## A380909.P44296068689710929

`A087299(n)/gcd(A087299(n), A094941(n))`
-/

namespace A380909.P44296068689710929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087299 n : ℚ) / (Int.gcd (A087299 n) (A094941 n) : ℚ)

end

end A380909.P44296068689710929

namespace A380909

/-- `A087299(n)/gcd(A087299(n), A094941(n))` -/
def P44296068689710929.Spec : Prop :=
  ∀ n, P44296068689710929.a n = (A380909 n : ℚ)

end A380909

/-!
# A380910: a(n) = denominator(n!! / (n - 1)!!).

The programs for A380910, the canonical program `A380910.P6919724403864687655` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380910 has offset 0).

The definition of A380910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380910.P6919724403864687655

`A004730(abs(1-n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380910

/-- `A004730(abs(1-n))` -/
def P6919724403864687655.Spec : Prop :=
  ∀ n, P6919724403864687655.a n = A380910 n

theorem P6919724403864687655.correct : P6919724403864687655.Spec := by
  intro n
  simp only [A380910]

end A380910

/-! ## A380910.P4615064693543841760

`lcm(2, A036069(n))/2`
-/

namespace A380910.P4615064693543841760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A036069 n) : ℚ) / 2

end

end A380910.P4615064693543841760

namespace A380910

/-- `lcm(2, A036069(n))/2` -/
def P4615064693543841760.Spec : Prop :=
  ∀ n, P4615064693543841760.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P14733958978832838993

`A036069(n)/A000034(n)`
-/

namespace A380910.P14733958978832838993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 n : ℚ) / (A000034 n : ℚ)

end

end A380910.P14733958978832838993

namespace A380910

/-- `A036069(n)/A000034(n)` -/
def P14733958978832838993.Spec : Prop :=
  ∀ n, P14733958978832838993.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P8045647975727381709

`A036069(n)/Δ[A032766(n)]`
-/

namespace A380910.P8045647975727381709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A380910.P8045647975727381709

namespace A380910

/-- `A036069(n)/Δ[A032766(n)]` -/
def P8045647975727381709.Spec : Prop :=
  ∀ n, P8045647975727381709.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P10075864014874150779

`A036069(n)/A134451(n+1)`
-/

namespace A380910.P10075864014874150779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A380910.P10075864014874150779

namespace A380910

/-- `A036069(n)/A134451(n+1)` -/
def P10075864014874150779.Spec : Prop :=
  ∀ n, P10075864014874150779.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P15139407301321106354

`A036069(n)/Δ[A008619(A008585(n))]`
-/

namespace A380910.P15139407301321106354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008585 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A380910.P15139407301321106354

namespace A380910

/-- `A036069(n)/Δ[A008619(A008585(n))]` -/
def P15139407301321106354.Spec : Prop :=
  ∀ n, P15139407301321106354.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P14170688427411738830

`A036069(n)/A036069(Δ[A008619(n)])`
-/

namespace A380910.P14170688427411738830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 n : ℚ) / (A036069 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A380910.P14170688427411738830

namespace A380910

/-- `A036069(n)/A036069(Δ[A008619(n)])` -/
def P14170688427411738830.Spec : Prop :=
  ∀ n, P14170688427411738830.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P273438628514619863

`gcd(A004731(n), A036069(n))`
-/

namespace A380910.P273438628514619863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004731 n) (A036069 n)

end

end A380910.P273438628514619863

namespace A380910

/-- `gcd(A004731(n), A036069(n))` -/
def P273438628514619863.Spec : Prop :=
  ∀ n, (P273438628514619863.a n : ℤ) = A380910 n

end A380910

/-! ## A380910.P636549480359646752

`A004730(A014681(n))/A006519(n+1)`
-/

namespace A380910.P636549480359646752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 (A014681 n).toNat : ℚ) / (A006519 (n + 1) : ℚ)

end

end A380910.P636549480359646752

namespace A380910

/-- `A004730(A014681(n))/A006519(n+1)` -/
def P636549480359646752.Spec : Prop :=
  ∀ n, P636549480359646752.a n = (A380910 n : ℚ)

end A380910

/-! ## A380910.P3512340864767536620

`sqrt(A094083(n+1))`
-/

namespace A380910.P3512340864767536620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A094083 (n + 1) : ℝ)

end

end A380910.P3512340864767536620

namespace A380910

/-- `sqrt(A094083(n+1))` -/
def P3512340864767536620.Spec : Prop :=
  ∀ n, P3512340864767536620.a n = (A380910 n : ℝ)

end A380910

/-! ## A380910.P5239419369275719472

`A380950(n+1)/A380909(n+1)`
-/

namespace A380910.P5239419369275719472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380950 (n + 1) : ℚ) / (A380909 (n + 1) : ℚ)

end

end A380910.P5239419369275719472

namespace A380910

/-- `A380950(n+1)/A380909(n+1)` -/
def P5239419369275719472.Spec : Prop :=
  ∀ n, P5239419369275719472.a n = (A380910 n : ℚ)

end A380910

/-!
# A380912: Two-Catalan Triangle read by rows, for n>=0 and k>=0.

The programs for A380912, there is no canonical definition to state claims against.
-/

/-! ## A380912.P10739375871393566969

`A089942(A161983(n))`
-/

namespace A380912.P10739375871393566969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A161983 n).toNat

end

end A380912.P10739375871393566969

/-! ## A380912.P4258867283254700453

`A089942(A007606(n+1)-1)`
-/

namespace A380912.P4258867283254700453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A007606 (n + 1) - 1).toNat

end

end A380912.P4258867283254700453

/-! ## A380912.P4374490331421028796

`A089942(A005843(n)-A196199(n))`
-/

namespace A380912.P4374490331421028796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A005843 n - A196199 n).toNat

end

end A380912.P4374490331421028796

/-! ## A380912.P12070153821956425901

`A089942(lt[A111999(n+1), 1])`
-/

namespace A380912.P12070153821956425901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111999 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A380912.P12070153821956425901

/-!
# A380913: Squarefree semiprimes that are centered triangular numbers.

The programs for A380913, there is no canonical definition to state claims against.
-/

/-! ## A380913.P10149697658608431490

`filter[A184481(n+1), A008966(#)]`
-/

namespace A380913.P10149697658608431490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A380913.P10149697658608431490

/-! ## A380913.P16717742360018730515

`filter[A184481(n+1), A354353(#)]`
-/

namespace A380913.P16717742360018730515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A380913.P16717742360018730515

/-! ## A380913.P2579648222441543124

`filter[A184481(n+1), A354819(#)]`
-/

namespace A380913.P2579648222441543124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A380913.P2579648222441543124

/-! ## A380913.P15064542908619943484

`filter[A184481(n+1), A354927(#)]`
-/

namespace A380913.P15064542908619943484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A380913.P15064542908619943484

/-! ## A380913.P12666534728066352665

`filter[A184481(n+1), A359377(#)]`
-/

namespace A380913.P12666534728066352665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A380913.P12666534728066352665

/-! ## A380913.P14739080441999615391

`filter[A184481(n+1), A359464(#)]`
-/

namespace A380913.P14739080441999615391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A380913.P14739080441999615391

/-! ## A380913.P5661326740901194100

`filter[A184481(n+1), A359473(#)]`
-/

namespace A380913.P5661326740901194100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A380913.P5661326740901194100

/-! ## A380913.P17718718824727963979

`filter[A005448(n+2), A354927(#)]`
-/

namespace A380913.P17718718824727963979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A380913.P17718718824727963979

/-! ## A380913.P9131434672314924052

`filter[A184481(n+2), A359156(#)]`
-/

namespace A380913.P9131434672314924052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A380913.P9131434672314924052

/-! ## A380913.P13811618412882257379

`filter[A381647(n+2), A354927(#)]`
-/

namespace A380913.P13811618412882257379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381647 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A380913.P13811618412882257379

/-!
# A380914: E.g.f. A(x) satisfies A(x) = exp(x / (1 - x*A(x))) / (1 - x*A(x)).

The programs for A380914, there is no canonical definition to state claims against.
-/

/-! ## A380914.P10090173663947258519

`∑{#}[n, n!*(n-#+1)^(#-1)/#!*C(2*n-#, n)]`
-/

namespace A380914.P10090173663947258519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n : ℚ) * ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) / (Nat.factorial k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n : ℚ)

end

end A380914.P10090173663947258519

/-!
# A380916: E.g.f. A(x) satisfies A(x) = exp(2 * x / (1 - x*A(x))) / (1 - x*A(x)).

The programs for A380916, the canonical program `A380916.P11715812670804866077` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380916 has offset 0).

The definition of A380916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380916.P11715812670804866077

`n!*∑{#}[n, 2^#*(n-#+1)^(#-1)*C(2*n-#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380916

/-- `n!*∑{#}[n, 2^#*(n-#+1)^(#-1)*C(2*n-#, n-#)/#!]` -/
def P11715812670804866077.Spec : Prop :=
  ∀ n, P11715812670804866077.a n = (A380916 n : ℚ)

end A380916

/-! ## A380916.P5371789052322143222

`∑{#}[n, n!*(n-#+1)^(#-1)*2^#/#!*C(2*n-#, n)]`
-/

namespace A380916.P5371789052322143222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n : ℚ) * ((n : ℤ) - (k : ℤ) + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (2 ^ k : ℚ) / (Nat.factorial k : ℚ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n : ℚ)

end

end A380916.P5371789052322143222

namespace A380916

/-- `∑{#}[n, n!*(n-#+1)^(#-1)*2^#/#!*C(2*n-#, n)]` -/
def P5371789052322143222.Spec : Prop :=
  ∀ n, P5371789052322143222.a n = (A380916 n : ℚ)

end A380916

/-!
# A380918: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-2*x/(1 - x)) ).

The programs for A380918, the canonical program `A380918.P15959904306383180428` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380918 has offset 0).

The definition of A380918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380918.P15959904306383180428

`n!*∑{#}[n, 2^#*(n+1)^(#-1)*C(2*n, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380918

/-- `n!*∑{#}[n, 2^#*(n+1)^(#-1)*C(2*n, n-#)/#!]` -/
def P15959904306383180428.Spec : Prop :=
  ∀ n, P15959904306383180428.a n = (A380918 n : ℚ)

end A380918

/-!
# A380919: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-3*x/(1 - x)) ).

The programs for A380919, the canonical program `A380919.P13913286703077133722` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380919 has offset 0).

The definition of A380919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380919.P13913286703077133722

`n!*∑{#}[n, 3^#*(n+1)^(#-1)*C(2*n, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380919

/-- `n!*∑{#}[n, 3^#*(n+1)^(#-1)*C(2*n, n-#)/#!]` -/
def P13913286703077133722.Spec : Prop :=
  ∀ n, P13913286703077133722.a n = (A380919 n : ℚ)

end A380919

/-!
# A380920: Triangle read by rows: Define function b(n,k,i) where b(n,k,1) = n/k and b(n,k,i+1) = (i*b(n,k,i))/floor(i*b(n,k,i)). T(n,k) is the smallest number i such that b(n,k,i) = 1.

The programs for A380920, there is no canonical definition to state claims against.
-/

/-! ## A380920.P9160895452485260186

`A181842(n+2)%A325486(A007318(2*n))`
-/

namespace A380920.P9160895452485260186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181842 (n + 2)) (A325486 (A007318 (2 * n)).toNat)

end

end A380920.P9160895452485260186

/-! ## A380920.P7623823798047718905

`A085033(A212267(n+2))`
-/

namespace A380920.P7623823798047718905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A212267 (n + 2)).toNat

end

end A380920.P7623823798047718905

/-! ## A380920.P9318539352197450540

`A279061(A037415(n+2))`
-/

namespace A380920.P9318539352197450540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A037415 (n + 2)).toNat

end

end A380920.P9318539352197450540

/-! ## A380920.P6055904175217748550

`A296132(A248842(n+2))`
-/

namespace A380920.P6055904175217748550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (A248842 (n + 2)).toNat

end

end A380920.P6055904175217748550

/-! ## A380920.P4127718338685172178

`A333416(A396255(n+2))`
-/

namespace A380920.P4127718338685172178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333416 (A396255 (n + 2)).toNat

end

end A380920.P4127718338685172178

/-!
# A380921: Least k such that A380783(k) = n.

The programs for A380921, there is no canonical definition to state claims against.
-/

/-! ## A380921.P4875535918305903291

`A028310(n)*A213711(A196265(n+1))`
-/

namespace A380921.P4875535918305903291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A213711 (A196265 (n + 1)).toNat

end

end A380921.P4875535918305903291

/-!
# A380922: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s + 1/p^(3*s)).

The programs for A380922, the canonical program `A380922.P14080248536527490904` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380922 has offset 1).

The definition of A380922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380922.P13967257954561578995

`A061389(A058035(n+1))`
-/

namespace A380922.P13967257954561578995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A058035 (n + 1)).toNat

end

end A380922.P13967257954561578995

namespace A380922

/-- `A061389(A058035(n+1))` -/
def P13967257954561578995.Spec : Prop :=
  ∀ n, P13967257954561578995.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P4037146306850919749

`A079065(A061389(n+1))`
-/

namespace A380922.P4037146306850919749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A061389 (n + 1)).toNat

end

end A380922.P4037146306850919749

namespace A380922

/-- `A079065(A061389(n+1))` -/
def P4037146306850919749.Spec : Prop :=
  ∀ n, P4037146306850919749.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P470357391412956566

`A049599(A372379(n+1))`
-/

namespace A380922.P470357391412956566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A372379 (n + 1)).toNat

end

end A380922.P470357391412956566

namespace A380922

/-- `A049599(A372379(n+1))` -/
def P470357391412956566.Spec : Prop :=
  ∀ n, P470357391412956566.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P5462780278841564640

`A073184(A366765(n+1))`
-/

namespace A380922.P5462780278841564640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A366765 (n + 1)).toNat

end

end A380922.P5462780278841564640

namespace A380922

/-- `A073184(A366765(n+1))` -/
def P5462780278841564640.Spec : Prop :=
  ∀ n, P5462780278841564640.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P389646158868889934

`A056671(n+1)*A383292(n+1)`
-/

namespace A380922.P389646158868889934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A383292 (n + 1)

end

end A380922.P389646158868889934

namespace A380922

/-- `A056671(n+1)*A383292(n+1)` -/
def P389646158868889934.Spec : Prop :=
  ∀ n, P389646158868889934.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P14080248536527490904

`A365498(n+1)*A368247(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A380922

/-- `A365498(n+1)*A368247(n+1)` -/
def P14080248536527490904.Spec : Prop :=
  ∀ n, P14080248536527490904.a n = A380922 (n + 1)

theorem P14080248536527490904.correct : P14080248536527490904.Spec := by
  intro n
  simp only [A380922, Nat.add_sub_cancel]

end A380922

/-! ## A380922.P12458134719368794685

`∑{d}[n+1, A008966(#)*A368168((n+1)/#)]`
-/

namespace A380922.P12458134719368794685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A368168 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380922.P12458134719368794685

namespace A380922

/-- `∑{d}[n+1, A008966(#)*A368168((n+1)/#)]` -/
def P12458134719368794685.Spec : Prop :=
  ∀ n, P12458134719368794685.a n = A380922 (n + 1)

end A380922

/-! ## A380922.P10786998248161270520

`A386470(A356194(n+1))`
-/

namespace A380922.P10786998248161270520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386470 (A356194 (n + 1)).toNat

end

end A380922.P10786998248161270520

namespace A380922

/-- `A386470(A356194(n+1))` -/
def P10786998248161270520.Spec : Prop :=
  ∀ n, P10786998248161270520.a n = A380922 (n + 1)

end A380922

/-!
# A380929: Numbers k such that A380845(k) > 2*k.

The programs for A380929, there is no canonical definition to state claims against.
-/

/-! ## A380929.P17647046099563874182

`A065475(lt[A004442(2*(n+1)), A380845(n+1)])`
-/

namespace A380929.P17647046099563874182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380929.P17647046099563874182

/-! ## A380929.P339582464368676836

`lt[A258050(n+4), A380845(n+1)]+1`
-/

namespace A380929.P339582464368676836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258050 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380929.P339582464368676836

/-!
# A380934: Elias delta encoding of n converted from base 2 to integer.

The programs for A380934, there is no canonical definition to state claims against.
-/

/-! ## A380934.P8659606001199046090

`(2*a(n-1)+2)/(2-char[2^n-1])` with `a(0)=1`
-/

namespace A380934.P8659606001199046090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) + 2) / (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A380934.P8659606001199046090

/-! ## A380934.P13844290008631193995

`A002064(floor(log2(n+1)))+n`
-/

namespace A380934.P13844290008631193995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (Nat.log 2 (n + 1)) + (n : ℤ)

end

end A380934.P13844290008631193995

/-! ## A380934.P336528380448075710

`A036289(floor(log2(n+1)))+n+1`
-/

namespace A380934.P336528380448075710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (Nat.log 2 (n + 1)) + (n + 1 : ℤ)

end

end A380934.P336528380448075710

/-! ## A380934.P11342028178878158402

`A062319(A053644(n+1))+n`
-/

namespace A380934.P11342028178878158402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (A053644 (n + 1)).toNat + (n : ℤ)

end

end A380934.P11342028178878158402

/-! ## A380934.P1384149918020185002

`lt[A329860(A347697(2*n+1)), 1]`
-/

namespace A380934.P1384149918020185002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329860 (A347697 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380934.P1384149918020185002

/-!
# A380935: Number of connected cubic identity graphs on 2n vertices.

The programs for A380935, there is no canonical definition to state claims against.
-/

/-! ## A380935.P17095522999582138236

`A360952(Δ[floor(2^(n-1))])`
-/

namespace A380935.P17095522999582138236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360952 (f1 (n + 1) - f1 n).toNat

end

end A380935.P17095522999582138236

/-! ## A380935.P16156874365243649728

`A065295(∏[C(n, floor(n/5))²])`
-/

namespace A380935.P16156874365243649728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 5⌋.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A380935.P16156874365243649728

/-!
# A380936: Number of connected cubic planar identity graphs on 2n vertices.

The programs for A380936, there is no canonical definition to state claims against.
-/

/-! ## A380936.P13247625166496184903

`A338333(A045687(n))`
-/

namespace A380936.P13247625166496184903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 (A045687 n).toNat

end

end A380936.P13247625166496184903

/-! ## A380936.P17721689688789660305

`A338333(A131885(n))`
-/

namespace A380936.P17721689688789660305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 (A131885 n).toNat

end

end A380936.P17721689688789660305

/-! ## A380936.P10588874553428729025

`A338333(A075220(n+1))`
-/

namespace A380936.P10588874553428729025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 (A075220 (n + 1)).toNat

end

end A380936.P10588874553428729025

/-! ## A380936.P12545659041009285219

`A338333(A075221(n+1))`
-/

namespace A380936.P12545659041009285219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 (A075221 (n + 1)).toNat

end

end A380936.P12545659041009285219

/-!
# A380939: a(n) is the number of positive integers v that belong alongside their opposites -v to the minimal set of integers to add to the set {A377091(k), k = 0..A380938(n)} in order to obtain an integer interval.

The programs for A380939, there is no canonical definition to state claims against.
-/

/-! ## A380939.P10476151801190956310

`gcd(A030597(3*n+2), A132121(A000009(n)))`
-/

namespace A380939.P10476151801190956310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030597 (3 * n + 2)) (A132121 (A000009 n).toNat)

end

end A380939.P10476151801190956310

/-! ## A380939.P13954835213063577070

`gcd(A061395(A342742(n+1)), A124010(3*n+2))`
-/

namespace A380939.P13954835213063577070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061395 (A342742 (n + 1)).toNat) (A124010 (3 * n + 2))

end

end A380939.P13954835213063577070

/-! ## A380939.P5185095901186345011

`and(A030597(3*(n+1)), A353432(n+1))!`
-/

namespace A380939.P5185095901186345011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (A030597 (3 * (n + 1))) (A353432 (n + 1))).toNat

end

end A380939.P5185095901186345011

/-! ## A380939.P16446808701460890139

`A333254(A125626(n+4)+A097032(n+1))`
-/

namespace A380939.P16446808701460890139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A125626 (n + 4) + A097032 (n + 1)).toNat

end

end A380939.P16446808701460890139

/-! ## A380939.P6385497897145454534

`A008480(gcd(A234524(n+1), A326158(n+1)))`
-/

namespace A380939.P6385497897145454534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.gcd (A234524 (n + 1)) (A326158 (n + 1)))

end

end A380939.P6385497897145454534

/-!
# A380943: Primes written in decimal representation by the concatenation of primes p and q such that the concatenation of q and p also forms a prime.

The programs for A380943, there is no canonical definition to state claims against.
-/

/-! ## A380943.P1190892121214802513

`filter[A240898(2*(n+1)), A011719(#)]`
-/

namespace A380943.P1190892121214802513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011719 (f1 j).toNat = 1) n)

end

end A380943.P1190892121214802513

/-!
# A380944: a(n) = b(n,A000120(n)) for n >= 0 where b(n,k) is defined in Comments.

The programs for A380944, there is no canonical definition to state claims against.
-/

/-! ## A380944.P4077976365967176535

`A130209(A327473(3*n+5))+A002487(n+1)`
-/

namespace A380944.P4077976365967176535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A327473 (3 * n + 5)).toNat + A002487 (n + 1)

end

end A380944.P4077976365967176535

/-! ## A380944.P16912940103956551962

`A346097(A347205(gcd(n, A239836(n))))`
-/

namespace A380944.P16912940103956551962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346097 (A347205 (Int.gcd (n : ℤ) (A239836 n))).toNat

end

end A380944.P16912940103956551962

/-! ## A380944.P18441517916932699020

`A329044(A347205(n)%A210338(2*n+1))`
-/

namespace A380944.P18441517916932699020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329044 (Int.tmod (A347205 n) (A210338 (2 * n + 1))).toNat

end

end A380944.P18441517916932699020

/-! ## A380944.P17554879880558783239

`A384323(A382734(n))+A002487(n+1)`
-/

namespace A380944.P17554879880558783239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A382734 n).toNat + A002487 (n + 1)

end

end A380944.P17554879880558783239

/-! ## A380944.P12509655146172258774

`A000120(lcm(A101624(n), A189150(n+1)))`
-/

namespace A380944.P12509655146172258774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A101624 n) (A189150 (n + 1)))

end

end A380944.P12509655146172258774

/-!
# A380945: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^2 * exp(-2*x) ).

The programs for A380945, the canonical program `A380945.P13117965526547433390` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380945 has offset 0).

The definition of A380945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380945.P13117965526547433390

`2*n!*∑{#}[n, (2*n+2)^(#-1)*C(3*n-#+1, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380945

/-- `2*n!*∑{#}[n, (2*n+2)^(#-1)*C(3*n-#+1, n-#)/#!]` -/
def P13117965526547433390.Spec : Prop :=
  ∀ n, P13117965526547433390.a n = (A380945 n : ℚ)

end A380945

/-!
# A380946: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^3 * exp(-3*x) ).

The programs for A380946, the canonical program `A380946.P15609598554663036257` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380946 has offset 0).

The definition of A380946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380946.P15609598554663036257

`3*n!*∑{#}[n, (3*n+3)^(#-1)*C(4*n-#+2, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380946

/-- `3*n!*∑{#}[n, (3*n+3)^(#-1)*C(4*n-#+2, n-#)/#!]` -/
def P15609598554663036257.Spec : Prop :=
  ∀ n, P15609598554663036257.a n = (A380946 n : ℚ)

end A380946

/-!
# A380947: Numerators of rational coefficients which are ratio of Brent's coefficients -A[n,2]/A343480.

The programs for A380947, there is no canonical definition to state claims against.
-/

/-! ## A380947.P13721424566824038662

`A106617(A381085(n+1))`
-/

namespace A380947.P13721424566824038662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A381085 (n + 1)).toNat

end

end A380947.P13721424566824038662

/-! ## A380947.P11827683337704435188

`A146358(A001105(3*n+4))%A325676(n)`
-/

namespace A380947.P11827683337704435188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146358 (A001105 (3 * n + 4)).toNat) (A325676 n)

end

end A380947.P11827683337704435188

/-!
# A380949: a(n) = numerator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

The programs for A380949, there is no canonical definition to state claims against.
-/

/-! ## A380949.P617599329874795717

`lcm(A094083(n+1), A124760(A124783(n)))`
-/

namespace A380949.P617599329874795717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094083 (n + 1)) (A124760 (A124783 n).toNat)

end

end A380949.P617599329874795717

/-!
# A380950: a(n) = denominator(r(n)) where r(n) = (n/2)*(Pi/2)^cos(Pi*(n-1))*((n/2-1/2)!/(n/2)!)^2.

The programs for A380950, the canonical program `A380950.P16297941268626771220` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380950 has offset 0).

The definition of A380950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380950.P16297941268626771220

`A004730(A289207(n))*A380909(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380950

/-- `A004730(A289207(n))*A380909(n)` -/
def P16297941268626771220.Spec : Prop :=
  ∀ n, P16297941268626771220.a n = A380950 n

theorem P16297941268626771220.correct : P16297941268626771220.Spec := by
  intro n
  simp only [A380950]

end A380950

/-! ## A380950.P15114016921283549481

`A087808(A330628(n)+A292943(n+1))`
-/

namespace A380950.P15114016921283549481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A330628 n + A292943 (n + 1)).toNat

end

end A380950.P15114016921283549481

namespace A380950

/-- `A087808(A330628(n)+A292943(n+1))` -/
def P15114016921283549481.Spec : Prop :=
  ∀ n, P15114016921283549481.a n = A380950 n

end A380950

/-!
# A380951: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((1 - x)^(-5/2) - (x - 1)^(-2)).

The programs for A380951, there is no canonical definition to state claims against.
-/

/-! ## A380951.P10848961121016775380

`A303151(A305404(n)+A000045(n))`
-/

namespace A380951.P10848961121016775380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303151 (A305404 n + A000045 n).toNat

end

end A380951.P10848961121016775380

/-!
# A380952: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x - 1)^(-2) - (1 - x)^(-3/2)).

The programs for A380952, the canonical program `A380952.P15515145725321038377` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380952 has offset 0).

The definition of A380952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380952.P15515145725321038377

`n*A046161(n)-A173384(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A380952

/-- `n*A046161(n)-A173384(n)` -/
def P15515145725321038377.Spec : Prop :=
  ∀ n, P15515145725321038377.a n = A380952 n

theorem P15515145725321038377.correct : P15515145725321038377.Spec := by
  intro n
  simp only [A380952]

end A380952

/-! ## A380952.P8558054193203830053

`A153338(n+1)/A001316(n)`
-/

namespace A380952.P8558054193203830053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153338 (n + 1) : ℚ) / (A001316 n : ℚ)

end

end A380952.P8558054193203830053

namespace A380952

/-- `A153338(n+1)/A001316(n)` -/
def P8558054193203830053.Spec : Prop :=
  ∀ n, P8558054193203830053.a n = (A380952 n : ℚ)

end A380952

/-! ## A380952.P7063963408997688107

`2/A001316(n)*A018218(n)`
-/

namespace A380952.P7063963408997688107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001316 n : ℚ) * (A018218 n : ℚ)

end

end A380952.P7063963408997688107

namespace A380952

/-- `2/A001316(n)*A018218(n)` -/
def P7063963408997688107.Spec : Prop :=
  ∀ n, P7063963408997688107.a n = (A380952 n : ℚ)

end A380952

/-! ## A380952.P12367106342418474880

`2*A153338(n+1)/A167275(n)`
-/

namespace A380952.P12367106342418474880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A153338 (n + 1) : ℚ) / (A167275 n : ℚ))

end

end A380952.P12367106342418474880

namespace A380952

/-- `2*A153338(n+1)/A167275(n)` -/
def P12367106342418474880.Spec : Prop :=
  ∀ n, P12367106342418474880.a n = (A380952 n : ℚ)

end A380952

/-! ## A380952.P426685796844284723

`4*A018218(n)/A117973(n)`
-/

namespace A380952.P426685796844284723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A018218 n : ℚ) / (A117973 n : ℚ)

end

end A380952.P426685796844284723

namespace A380952

/-- `4*A018218(n)/A117973(n)` -/
def P426685796844284723.Spec : Prop :=
  ∀ n, P426685796844284723.a n = (A380952 n : ℚ)

end A380952

/-!
# A380955: Sum of prime indices of n (with multiplicity) minus sum of distinct prime indices of n.

The programs for A380955, the canonical program `A380955.P4555660258455395016` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380955 has offset 1).

The definition of A380955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A066328, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380955.P4555660258455395016

`A056239(n+1)-A066328(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380955

/-- `A056239(n+1)-A066328(n+1)` -/
def P4555660258455395016.Spec : Prop :=
  ∀ n, P4555660258455395016.a n = A380955 (n + 1)

theorem P4555660258455395016.correct : P4555660258455395016.Spec := by
  intro n
  simp only [A380955, Nat.add_sub_cancel]

end A380955

/-! ## A380955.P16250243121085740465

`A056239((n+1)/∏{p}[n+1, #])`
-/

namespace A380955.P16250243121085740465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A380955.P16250243121085740465

namespace A380955

/-- `A056239((n+1)/∏{p}[n+1, #])` -/
def P16250243121085740465.Spec : Prop :=
  ∀ n, P16250243121085740465.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P16496949501175533649

`(n+1)/∏{p}[n+1, #]-A178503((n+1)/∏{p}[n+1, #])`
-/

namespace A380955.P16496949501175533649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A178503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A380955.P16496949501175533649

namespace A380955

/-- `(n+1)/∏{p}[n+1, #]-A178503((n+1)/∏{p}[n+1, #])` -/
def P16496949501175533649.Spec : Prop :=
  ∀ n, P16496949501175533649.a n = (A380955 (n + 1) : ℚ)

end A380955

/-! ## A380955.P15782752964080765857

`A056239(A003557(n+1))`
-/

namespace A380955.P15782752964080765857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A003557 (n + 1)).toNat

end

end A380955.P15782752964080765857

namespace A380955

/-- `A056239(A003557(n+1))` -/
def P15782752964080765857.Spec : Prop :=
  ∀ n, P15782752964080765857.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P13608965673317378844

`A056239((n+1)/A007947(n+1))`
-/

namespace A380955.P13608965673317378844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A380955.P13608965673317378844

namespace A380955

/-- `A056239((n+1)/A007947(n+1))` -/
def P13608965673317378844.Spec : Prop :=
  ∀ n, P13608965673317378844.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P17396622910313720281

`A056239(n+1)-A056239(A007947(n+1))`
-/

namespace A380955.P17396622910313720281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A007947 (n + 1)).toNat

end

end A380955.P17396622910313720281

namespace A380955

/-- `A056239(n+1)-A056239(A007947(n+1))` -/
def P17396622910313720281.Spec : Prop :=
  ∀ n, P17396622910313720281.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P14866101429355136532

`A001222(A108951((n+1)/A007947(n+1)))`
-/

namespace A380955.P14866101429355136532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A380955.P14866101429355136532

namespace A380955

/-- `A001222(A108951((n+1)/A007947(n+1)))` -/
def P14866101429355136532.Spec : Prop :=
  ∀ n, P14866101429355136532.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P1014450700228502184

`A374706(n+1)-A055396(n+1)`
-/

namespace A380955.P1014450700228502184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (n + 1) - A055396 (n + 1)

end

end A380955.P1014450700228502184

namespace A380955

/-- `A374706(n+1)-A055396(n+1)` -/
def P1014450700228502184.Spec : Prop :=
  ∀ n, P1014450700228502184.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P5061386262994250303

`A363486(n+1)*A368251(n+1)`
-/

namespace A380955.P5061386262994250303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (n + 1) * A368251 (n + 1)

end

end A380955.P5061386262994250303

namespace A380955

/-- `A363486(n+1)*A368251(n+1)` -/
def P5061386262994250303.Spec : Prop :=
  ∀ n, P5061386262994250303.a n = A380955 (n + 1)

end A380955

/-! ## A380955.P8145156476978079608

`A363941(n+1)*A368251(n+1)`
-/

namespace A380955.P8145156476978079608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (n + 1) * A368251 (n + 1)

end

end A380955.P8145156476978079608

namespace A380955

/-- `A363941(n+1)*A368251(n+1)` -/
def P8145156476978079608.Spec : Prop :=
  ∀ n, P8145156476978079608.a n = A380955 (n + 1)

end A380955

/-!
# A380956: Position of first appearance of n in A380955 (sum of prime indices minus sum of distinct prime indices).

The programs for A380956, there is no canonical definition to state claims against.
-/

/-! ## A380956.P16242925578953307294

`A380957(A029804(n+2))`
-/

namespace A380956.P16242925578953307294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380957 (A029804 (n + 2)).toNat

end

end A380956.P16242925578953307294

/-! ## A380956.P635089441987257379

`A380957(A029964(n+1)+1)`
-/

namespace A380956.P635089441987257379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380957 (A029964 (n + 1) + 1).toNat

end

end A380956.P635089441987257379

/-! ## A380956.P8337280300916810366

`∩[A030173(n+1), A380957(n+1)]`
-/

namespace A380956.P8337280300916810366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380956.P8337280300916810366

/-! ## A380956.P9760991582190501206

`∩[A380957(n+1), A382475(n+1)]`
-/

namespace A380956.P9760991582190501206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380956.P9760991582190501206

/-!
# A380957: Sorted positions of first appearances in A380955 (sum of prime indices minus sum of distinct prime indices).

The programs for A380957, there is no canonical definition to state claims against.
-/

/-! ## A380957.P15293768717171763514

`∪[A380956(2*n+1), A380956(A005843(n))]`
-/

namespace A380957.P15293768717171763514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 (A005843 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380957.P15293768717171763514

/-! ## A380957.P8846487543032374990

`record[A380956(A380955(n+1))]`
-/

namespace A380957.P8846487543032374990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 (A380955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380957.P8846487543032374990

/-! ## A380957.P17969555490720690688

`record[A380956(A124010(3*n+5)-1)]`
-/

namespace A380957.P17969555490720690688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380956 (A124010 (3 * n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380957.P17969555490720690688

/-! ## A380957.P4804225494514602621

`A325127(lt[A098361(n), A305901(n+1)])`
-/

namespace A380957.P4804225494514602621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325127 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A380957.P4804225494514602621

/-!
# A380958: Number of prime factors of n (with multiplicity) minus sum of distinct prime exponents of n.

The programs for A380958, the canonical program `A380958.P14733008319918646715` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380958 has offset 1).

The definition of A380958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136565, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380958.P14733008319918646715

`A001222(n+1)-A136565(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A380958

/-- `A001222(n+1)-A136565(n+1)` -/
def P14733008319918646715.Spec : Prop :=
  ∀ n, P14733008319918646715.a n = A380958 (n + 1)

theorem P14733008319918646715.correct : P14733008319918646715.Spec := by
  intro n
  simp only [A380958, Nat.add_sub_cancel]

end A380958

/-! ## A380958.P17089125202703683612

`ceil(log(A351944(n+1)))`
-/

namespace A380958.P17089125202703683612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A351944 (n + 1) : ℝ)⌉

end

end A380958.P17089125202703683612

namespace A380958

/-- `ceil(log(A351944(n+1)))` -/
def P17089125202703683612.Spec : Prop :=
  ∀ n, P17089125202703683612.a n = A380958 (n + 1)

end A380958

/-! ## A380958.P16357251114859075477

`∏{e}[n+1, round(1/#)]*A268374(n+1)`
-/

namespace A380958.P16357251114859075477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))) * A268374 (n + 1)

end

end A380958.P16357251114859075477

namespace A380958

/-- `∏{e}[n+1, round(1/#)]*A268374(n+1)` -/
def P16357251114859075477.Spec : Prop :=
  ∀ n, P16357251114859075477.a n = A380958 (n + 1)

end A380958

/-! ## A380958.P8677526968384084395

`val(A180054(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 2)`
-/

namespace A380958.P8677526968384084395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A180054 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat).toNat 2

end

end A380958.P8677526968384084395

namespace A380958

/-- `val(A180054(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 2)` -/
def P8677526968384084395.Spec : Prop :=
  ∀ n, (P8677526968384084395.a n : ℤ) = A380958 (n + 1)

end A380958

/-! ## A380958.P15252792167932036733

`val(A042019(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 4)`
-/

namespace A380958.P15252792167932036733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042019 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat).toNat 4

end

end A380958.P15252792167932036733

namespace A380958

/-- `val(A042019(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 4)` -/
def P15252792167932036733.Spec : Prop :=
  ∀ n, (P15252792167932036733.a n : ℤ) = A380958 (n + 1)

end A380958

/-! ## A380958.P5871529980344587099

`val(A045918(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 4)`
-/

namespace A380958.P5871529980344587099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045918 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat).toNat 4

end

end A380958.P5871529980344587099

namespace A380958

/-- `val(A045918(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 4)` -/
def P5871529980344587099.Spec : Prop :=
  ∀ n, (P5871529980344587099.a n : ℤ) = A380958 (n + 1)

end A380958

/-! ## A380958.P4416031796225827697

`A058190(A181819(n+1))`
-/

namespace A380958.P4416031796225827697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (A181819 (n + 1)).toNat

end

end A380958.P4416031796225827697

namespace A380958

/-- `A058190(A181819(n+1))` -/
def P4416031796225827697.Spec : Prop :=
  ∀ n, P4416031796225827697.a n = A380958 (n + 1)

end A380958

/-! ## A380958.P10514446479971476440

`A268374(A056192(n+1))`
-/

namespace A380958.P10514446479971476440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (A056192 (n + 1)).toNat

end

end A380958.P10514446479971476440

namespace A380958

/-- `A268374(A056192(n+1))` -/
def P10514446479971476440.Spec : Prop :=
  ∀ n, P10514446479971476440.a n = A380958 (n + 1)

end A380958

/-! ## A380958.P13165748747805552159

`A000720(A351944(n+1))`
-/

namespace A380958.P13165748747805552159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A351944 (n + 1)).toNat

end

end A380958.P13165748747805552159

namespace A380958

/-- `A000720(A351944(n+1))` -/
def P13165748747805552159.Spec : Prop :=
  ∀ n, P13165748747805552159.a n = A380958 (n + 1)

end A380958

/-! ## A380958.P8543767306669332544

`A256852(A008480(n+1)+1)`
-/

namespace A380958.P8543767306669332544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256852 (A008480 (n + 1) + 1).toNat

end

end A380958.P8543767306669332544

namespace A380958

/-- `A256852(A008480(n+1)+1)` -/
def P8543767306669332544.Spec : Prop :=
  ∀ n, P8543767306669332544.a n = A380958 (n + 1)

end A380958

/-!
# A380959: Array read by antidiagonals downward where A(n,k) is the number of integer partitions of k with product n.

The programs for A380959, there is no canonical definition to state claims against.
-/

/-! ## A380959.P16906750995314022075

`A379666(∑[char[∑[n]]]²-n)`
-/

namespace A380959.P16906750995314022075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A380959.P16906750995314022075

/-! ## A380959.P18351282248846439965

`A379666(A038722(n+1))%3`
-/

namespace A380959.P18351282248846439965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379666 (A038722 (n + 1)).toNat) 3

end

end A380959.P18351282248846439965

/-! ## A380959.P12698309077386266593

`A379666(A038722(n+1))^A112538(n+2)`
-/

namespace A380959.P12698309077386266593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379666 (A038722 (n + 1)).toNat : ℚ) ^ (A112538 (n + 2) : ℤ)

end

end A380959.P12698309077386266593

/-! ## A380959.P2238020509520259848

`A379666(A038722(n+1))+A347438(3*n+5)`
-/

namespace A380959.P2238020509520259848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 (A038722 (n + 1)).toNat + A347438 (3 * n + 5)

end

end A380959.P2238020509520259848

/-! ## A380959.P10946994915111509887

`A379666(A038722(n+1))^A006928(3*(n+1))`
-/

namespace A380959.P10946994915111509887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379666 (A038722 (n + 1)).toNat : ℚ) ^ (A006928 (3 * (n + 1)) : ℤ)

end

end A380959.P10946994915111509887

/-! ## A380959.P7293277717782314043

`and(3, A379666(ceil(sqrt(2*n+1))²-n))`
-/

namespace A380959.P7293277717782314043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A379666 (⌈Real.sqrt (2 * n + 1 : ℝ)⌉ ^ 2 - (n : ℤ)).toNat)

end

end A380959.P7293277717782314043

/-!
# A380960: Sum of n and the n-th bit of the infinite Fibonacci word.

The programs for A380960, the canonical program `A380960.P14528990618773538882` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380960 has offset 0).

The definition of A380960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380960.P14528990618773538882

`A003849(n)+n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A380960

/-- `A003849(n)+n` -/
def P14528990618773538882.Spec : Prop :=
  ∀ n, P14528990618773538882.a n = A380960 n

theorem P14528990618773538882.correct : P14528990618773538882.Spec := by
  intro n
  simp only [A380960]

end A380960

/-! ## A380960.P13076292738703996586

`Δ[floor((n+1)/ϕ²)]+n`
-/

namespace A380960.P13076292738703996586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A380960.P13076292738703996586

namespace A380960

/-- `Δ[floor((n+1)/ϕ²)]+n` -/
def P13076292738703996586.Spec : Prop :=
  ∀ n, P13076292738703996586.a n = A380960 n

end A380960

/-! ## A380960.P9582901435063872780

`Δ[floor(C(n+1, 2)-(n+1)/ϕ)]`
-/

namespace A380960.P9582901435063872780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℝ) - (n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380960.P9582901435063872780

namespace A380960

/-- `Δ[floor(C(n+1, 2)-(n+1)/ϕ)]` -/
def P9582901435063872780.Spec : Prop :=
  ∀ n, P9582901435063872780.a n = A380960 n

end A380960

/-! ## A380960.P5529269663371721152

`Δ[C(n+2, 2)-floor(ϕ*(n+1))]`
-/

namespace A380960.P5529269663371721152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380960.P5529269663371721152

namespace A380960

/-- `Δ[C(n+2, 2)-floor(ϕ*(n+1))]` -/
def P5529269663371721152.Spec : Prop :=
  ∀ n, P5529269663371721152.a n = A380960 n

end A380960

/-! ## A380960.P12721819609893735079

`∑[1-A014677(n)]`
-/

namespace A380960.P12721819609893735079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380960.P12721819609893735079

namespace A380960

/-- `∑[1-A014677(n)]` -/
def P12721819609893735079.Spec : Prop :=
  ∀ n, P12721819609893735079.a n = A380960 n

end A380960

/-! ## A380960.P12029470225049173127

`A022342(A005206(n)+1)`
-/

namespace A380960.P12029470225049173127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A005206 n + 1).toNat

end

end A380960.P12029470225049173127

namespace A380960

/-- `A022342(A005206(n)+1)` -/
def P12029470225049173127.Spec : Prop :=
  ∀ n, P12029470225049173127.a n = A380960 n

end A380960

/-! ## A380960.P1489602906166336480

`A022342(A019446(n+1))`
-/

namespace A380960.P1489602906166336480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A019446 (n + 1)).toNat

end

end A380960.P1489602906166336480

namespace A380960

/-- `A022342(A019446(n+1))` -/
def P1489602906166336480.Spec : Prop :=
  ∀ n, P1489602906166336480.a n = A380960 n

end A380960

/-! ## A380960.P10887647660513866911

`A319433(A000201(n+1))`
-/

namespace A380960.P10887647660513866911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A000201 (n + 1)).toNat

end

end A380960.P10887647660513866911

namespace A380960

/-- `A319433(A000201(n+1))` -/
def P10887647660513866911.Spec : Prop :=
  ∀ n, P10887647660513866911.a n = A380960 n

end A380960

/-! ## A380960.P9924305350654615200

`A319433(A066096(n+1))`
-/

namespace A380960.P9924305350654615200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A066096 (n + 1)).toNat

end

end A380960.P9924305350654615200

namespace A380960

/-- `A319433(A066096(n+1))` -/
def P9924305350654615200.Spec : Prop :=
  ∀ n, P9924305350654615200.a n = A380960 n

end A380960

/-! ## A380960.P3021920407644556120

`A022342(A060143(n+1)+1)`
-/

namespace A380960.P3021920407644556120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A060143 (n + 1) + 1).toNat

end

end A380960.P3021920407644556120

namespace A380960

/-- `A022342(A060143(n+1)+1)` -/
def P3021920407644556120.Spec : Prop :=
  ∀ n, P3021920407644556120.a n = A380960 n

end A380960

/-! ## A380960.P12739876249744731627

`A022342(A000201(n+1)-n)`
-/

namespace A380960.P12739876249744731627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A000201 (n + 1) - (n : ℤ)).toNat

end

end A380960.P12739876249744731627

namespace A380960

/-- `A022342(A000201(n+1)-n)` -/
def P12739876249744731627.Spec : Prop :=
  ∀ n, P12739876249744731627.a n = A380960 n

end A380960

/-! ## A380960.P11866720074039560609

`A016789(n)%A287659(n+1)`
-/

namespace A380960.P11866720074039560609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A287659 (n + 1))

end

end A380960.P11866720074039560609

namespace A380960

/-- `A016789(n)%A287659(n+1)` -/
def P11866720074039560609.Spec : Prop :=
  ∀ n, P11866720074039560609.a n = A380960 n

end A380960

/-! ## A380960.P12861402500055495193

`A003231(n+1)%A026274(n+1)`
-/

namespace A380960.P12861402500055495193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A026274 (n + 1))

end

end A380960.P12861402500055495193

namespace A380960

/-- `A003231(n+1)%A026274(n+1)` -/
def P12861402500055495193.Spec : Prop :=
  ∀ n, P12861402500055495193.a n = A380960 n

end A380960

/-! ## A380960.P8746314484186774099

`A287803(n+1)%A287658(n+1)`
-/

namespace A380960.P8746314484186774099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287803 (n + 1)) (A287658 (n + 1))

end

end A380960.P8746314484186774099

namespace A380960

/-- `A287803(n+1)%A287658(n+1)` -/
def P8746314484186774099.Spec : Prop :=
  ∀ n, P8746314484186774099.a n = A380960 n

end A380960

/-! ## A380960.P5734769567520438134

`A004526(A287658(n+1))`
-/

namespace A380960.P5734769567520438134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A287658 (n + 1)).toNat

end

end A380960.P5734769567520438134

namespace A380960

/-- `A004526(A287658(n+1))` -/
def P5734769567520438134.Spec : Prop :=
  ∀ n, P5734769567520438134.a n = A380960 n

end A380960

/-! ## A380960.P5341084667042741514

`A002264(A287803(n+1))`
-/

namespace A380960.P5341084667042741514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A287803 (n + 1)).toNat

end

end A380960.P5341084667042741514

namespace A380960

/-- `A002264(A287803(n+1))` -/
def P5341084667042741514.Spec : Prop :=
  ∀ n, P5341084667042741514.a n = A380960 n

end A380960

/-! ## A380960.P1031366779234837701

`A022342(A379663((n+1)²))`
-/

namespace A380960.P1031366779234837701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A379663 ((n + 1) ^ 2)).toNat

end

end A380960.P1031366779234837701

namespace A380960

/-- `A022342(A379663((n+1)²))` -/
def P1031366779234837701.Spec : Prop :=
  ∀ n, P1031366779234837701.a n = A380960 n

end A380960

/-!
# A380961: Primes prime(k) such that (prime(k) + prime(k+1)) mod (prime(k) - prime(k-1)) != 0.

The programs for A380961, there is no canonical definition to state claims against.
-/

/-! ## A380961.P553761057271823001

`∩[A105731(n+1), A272367(n+1)]`
-/

namespace A380961.P553761057271823001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380961.P553761057271823001

/-!
# A380962: Number of ways to place eight distinct positive integers on a square, four on the corners and four on the sides such that the sum of the three values on each side is n.

The programs for A380962, there is no canonical definition to state claims against.
-/

/-! ## A380962.P11122092722077581377

`A035936(A131471(n+1))`
-/

namespace A380962.P11122092722077581377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A131471 (n + 1)).toNat

end

end A380962.P11122092722077581377

/-! ## A380962.P1155921429457238677

`∑[∑[A327613(A032020(2*n))]]`
-/

namespace A380962.P1155921429457238677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327613 (A032020 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380962.P1155921429457238677

/-!
# A380963: The number of perimeter-magic pentagons of order 3 with magic sum n.

The programs for A380963, there is no canonical definition to state claims against.
-/

/-! ## A380963.P10015348931392805275

`or(A124625(n), A260643(A035706(n)))`
-/

namespace A380963.P10015348931392805275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124625 n) (A260643 (A035706 n).toNat)

end

end A380963.P10015348931392805275

/-!
# A380967: a(n) is the largest number in row n of A380920.

The programs for A380967, there is no canonical definition to state claims against.
-/

/-! ## A380967.P9927889864861034512

`(n+1)*A055640(A071724(n))`
-/

namespace A380967.P9927889864861034512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055640 (A071724 n).toNat

end

end A380967.P9927889864861034512

/-! ## A380967.P2709117871769043149

`(n+1)*A124765(A006372(n))`
-/

namespace A380967.P2709117871769043149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124765 (A006372 n).toNat

end

end A380967.P2709117871769043149

/-! ## A380967.P4830178880798681182

`(n+1)*A043537(A218540(n))`
-/

namespace A380967.P4830178880798681182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A043537 (A218540 n).toNat

end

end A380967.P4830178880798681182

/-! ## A380967.P11948043686949931194

`(n+1)*A069010(A320740(n))`
-/

namespace A380967.P11948043686949931194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069010 (A320740 n).toNat

end

end A380967.P11948043686949931194

/-!
# A380968: Lexicographically earliest sequence of positive integers such that for any value k, no two sets of one or more indices at which k occurs have the same mean.

The programs for A380968, there is no canonical definition to state claims against.
-/

/-! ## A380968.P8520390426017662959

`A331251(A362607(n)+A280743(n+1))`
-/

namespace A380968.P8520390426017662959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331251 (A362607 n + A280743 (n + 1)).toNat

end

end A380968.P8520390426017662959

/-! ## A380968.P3322907722763134272

`A128428(A249401(n))`
-/

namespace A380968.P3322907722763134272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A249401 n).toNat

end

end A380968.P3322907722763134272

/-! ## A380968.P9767640390585351537

`A001222(A136690(n)+A076876(n))`
-/

namespace A380968.P9767640390585351537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136690 n + A076876 n).toNat

end

end A380968.P9767640390585351537

/-! ## A380968.P14845970408866367301

`A302242(n+1)+A115575(A019565(n))`
-/

namespace A380968.P14845970408866367301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A115575 (A019565 n).toNat

end

end A380968.P14845970408866367301

/-! ## A380968.P13891429477741899719

`A358333(A385103(n+1)+A325832(n))`
-/

namespace A380968.P13891429477741899719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358333 (A385103 (n + 1) + A325832 n).toNat

end

end A380968.P13891429477741899719

/-!
# A380969: a(n) is the smallest k such that tau(k^2 + 1) is equal to 2^n, where tau = A000005 and a(n) = -1 if no such k exists.

The programs for A380969, there is no canonical definition to state claims against.
-/

/-! ## A380969.P1874972390184909864

`A316504(A006727(n))`
-/

namespace A380969.P1874972390184909864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (A006727 n).toNat

end

end A380969.P1874972390184909864

/-! ## A380969.P10736957669526374607

`A316504(A196723(n))`
-/

namespace A380969.P10736957669526374607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (A196723 n).toNat

end

end A380969.P10736957669526374607

/-!
# A380972: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x*exp(2*x)) ).

The programs for A380972, the canonical program `A380972.P2877732117634908943` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380972 has offset 0).

The definition of A380972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380972.P2877732117634908943

`∑{#}[n, (2*#)^(n-#)*(n+1)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380972

/-- `∑{#}[n, (2*#)^(n-#)*(n+1)^(#-1)*C(n, #)]` -/
def P2877732117634908943.Spec : Prop :=
  ∀ n, P2877732117634908943.a n = (A380972 n : ℚ)

end A380972

/-!
# A380973: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x*exp(3*x)) ).

The programs for A380973, the canonical program `A380973.P4231807127189273857` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380973 has offset 0).

The definition of A380973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380973.P4231807127189273857

`∑{#}[n, (3*#)^(n-#)*(n+1)^(#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380973

/-- `∑{#}[n, (3*#)^(n-#)*(n+1)^(#-1)*C(n, #)]` -/
def P4231807127189273857.Spec : Prop :=
  ∀ n, P4231807127189273857.a n = (A380973 n : ℚ)

end A380973

/-!
# A380976: a(0) = 0, a(1) = 1. Thereafter, a(n) = a(n-1) + a(n-2) converted to base n, read in base n+1.

The programs for A380976, there is no canonical definition to state claims against.
-/

/-! ## A380976.P11594457268797717260

`A003002(A335472(n))+A000045(n)`
-/

namespace A380976.P11594457268797717260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A335472 n).toNat + A000045 n

end

end A380976.P11594457268797717260

/-! ## A380976.P12583386473012641430

`A024327(A078358(n+1)+A002426(n))`
-/

namespace A380976.P12583386473012641430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A078358 (n + 1) + A002426 n).toNat

end

end A380976.P12583386473012641430

/-! ## A380976.P4469845627535940332

`A218543(n)+A198316(A029969(n+1))`
-/

namespace A380976.P4469845627535940332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218543 n + A198316 (A029969 (n + 1)).toNat

end

end A380976.P4469845627535940332

/-! ## A380976.P5508614598984413139

`A000194(A122121(n))-A060969(n+1)`
-/

namespace A380976.P5508614598984413139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A122121 n).toNat - A060969 (n + 1)

end

end A380976.P5508614598984413139

/-! ## A380976.P17164103778145389634

`A003056(A124344(n+1)-A115720(n))`
-/

namespace A380976.P17164103778145389634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A124344 (n + 1) - A115720 n).toNat

end

end A380976.P17164103778145389634

/-!
# A380977: Triangle read by rows: T(n,m) (1<=m<=n) = number of surjections f:[n]->[m] with f(n) != f(j), j<n.

The programs for A380977, there is no canonical definition to state claims against.
-/

/-! ## A380977.P12803964583777892096

`T(n-1,k-1)+(T(n-1,k-1)+T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A380977.P12803964583777892096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triCol n

end

end A380977.P12803964583777892096

/-! ## A380977.P2953468070441488474

`(n+1-C(round(sqrt(2*n)), 2))!*A048993(n)`
-/

namespace A380977.P2953468070441488474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ)).toNat : ℤ) * A048993 n

end

end A380977.P2953468070441488474

/-! ## A380977.P5946613896675013811

`(n+1-C(floor(1/2+sqrt(2*(n+1))), 2))*A131689(n)`
-/

namespace A380977.P5946613896675013811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ)) * A131689 n

end

end A380977.P5946613896675013811

/-! ## A380977.P14856529671593989976

`A002260(n+1)*A131689(n)`
-/

namespace A380977.P14856529671593989976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A131689 n

end

end A380977.P14856529671593989976

/-! ## A380977.P12922245587946853844

`(A002262(n)+1)*A131689(n)`
-/

namespace A380977.P12922245587946853844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A131689 n

end

end A380977.P12922245587946853844

/-! ## A380977.P14314015179281822442

`A048993(n)*A166350(n+1)`
-/

namespace A380977.P14314015179281822442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A166350 (n + 1)

end

end A380977.P14314015179281822442

/-! ## A380977.P12047807619252361061

`A131689(n)*A131818(n+1)`
-/

namespace A380977.P12047807619252361061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A131818 (n + 1)

end

end A380977.P12047807619252361061

/-! ## A380977.P3135346926910822950

`A131689(n)*A134868(n+1)`
-/

namespace A380977.P3135346926910822950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A134868 (n + 1)

end

end A380977.P3135346926910822950

/-! ## A380977.P5175964241926835994

`A131689(n)*A135223(n+1)`
-/

namespace A380977.P5175964241926835994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A135223 (n + 1)

end

end A380977.P5175964241926835994

/-! ## A380977.P2815928915772782398

`A140756(n+1)*A278075(n)`
-/

namespace A380977.P2815928915772782398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) * A278075 n

end

end A380977.P2815928915772782398

/-!
# A380980: Place 2n distinct positive integers on an n-gon, n on the vertices and n on the sides such that the sums of the three values on all sides are equal. a(n) is the minimal sum of all the integers used.

The programs for A380980, there is no canonical definition to state claims against.
-/

/-! ## A380980.P8739119134959573690

`A292564(A400961(n+1))`
-/

namespace A380980.P8739119134959573690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 (A400961 (n + 1)).toNat

end

end A380980.P8739119134959573690

/-!
# A380983: Numbers m whose sum of unitary divisors different from 1 and m is prime.

The programs for A380983, there is no canonical definition to state claims against.
-/

/-! ## A380983.P9675417770186606790

`record[2*A126014(2*n+5)]`
-/

namespace A380983.P9675417770186606790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126014 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380983.P9675417770186606790

/-! ## A380983.P12780907081663246617

`eq[A010892(A134593(n)), A365805(n)]`
-/

namespace A380983.P12780907081663246617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A134593 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380983.P12780907081663246617

/-! ## A380983.P4021255351339883890

`lt[A000005(A116555(n)), A029837(n+1)]`
-/

namespace A380983.P4021255351339883890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A116555 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380983.P4021255351339883890

/-! ## A380983.P7777117794695532082

`lt[A051953(n+1), A032741(A347704(n))]`
-/

namespace A380983.P7777117794695532082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A347704 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380983.P7777117794695532082

/-! ## A380983.P960403499644793498

`lt[A037278(n+1), A333774(A236912(n))]`
-/

namespace A380983.P960403499644793498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333774 (A236912 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380983.P960403499644793498

/-!
# A380984: Primes p such that p*(p-1) consists of exactly two different decimal digits.

The programs for A380984, there is no canonical definition to state claims against.
-/

/-! ## A380984.P7414365394221065210

`p?[A380974(n+1)]`
-/

namespace A380984.P7414365394221065210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A380984.P7414365394221065210

/-! ## A380984.P2886678334533999854

`∩[A038604(n+1), A380974(n+1)]`
-/

namespace A380984.P2886678334533999854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380984.P2886678334533999854

/-! ## A380984.P14542617048289735281

`∩[A038611(n+1), A380974(n+1)]`
-/

namespace A380984.P14542617048289735281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380984.P14542617048289735281

/-! ## A380984.P10169327580932241251

`∩[A038616(n+1), A380974(n+1)]`
-/

namespace A380984.P10169327580932241251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380984.P10169327580932241251

/-! ## A380984.P16456444310411135077

`∩[A038617(n+1), A380974(n+1)]`
-/

namespace A380984.P16456444310411135077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380984.P16456444310411135077

/-!
# A380986: Product of prime indices of n (with multiplicity) minus product of distinct prime indices of n.

The programs for A380986, the canonical program `A380986.P1159317715938728299` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380986 has offset 1).

The definition of A380986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380986.P1159317715938728299

`A003963(n+1)-A156061(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380986

/-- `A003963(n+1)-A156061(n+1)` -/
def P1159317715938728299.Spec : Prop :=
  ∀ n, P1159317715938728299.a n = A380986 (n + 1)

theorem P1159317715938728299.correct : P1159317715938728299.Spec := by
  intro n
  simp only [A380986, Nat.add_sub_cancel]

end A380986

/-! ## A380986.P4925755240850586963

`(A290106(n+1)-1)*A156061(n+1)`
-/

namespace A380986.P4925755240850586963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290106 (n + 1) - 1) * A156061 (n + 1)

end

end A380986.P4925755240850586963

namespace A380986

/-- `(A290106(n+1)-1)*A156061(n+1)` -/
def P4925755240850586963.Spec : Prop :=
  ∀ n, P4925755240850586963.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P9216250047186415679

`A003963(n+1)-A003963(∏{p}[n+1, #])`
-/

namespace A380986.P9216250047186415679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A003963 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A380986.P9216250047186415679

namespace A380986

/-- `A003963(n+1)-A003963(∏{p}[n+1, #])` -/
def P9216250047186415679.Spec : Prop :=
  ∀ n, P9216250047186415679.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P14661691349151128695

`A003963(n+1)-A003963(2^∑{p}[n+1, log2(#)])`
-/

namespace A380986.P14661691349151128695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A003963 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A380986.P14661691349151128695

namespace A380986

/-- `A003963(n+1)-A003963(2^∑{p}[n+1, log2(#)])` -/
def P14661691349151128695.Spec : Prop :=
  ∀ n, P14661691349151128695.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P5113195643598721972

`A003963(n+1)-A003963(A007947(n+1))`
-/

namespace A380986.P5113195643598721972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A003963 (A007947 (n + 1)).toNat

end

end A380986.P5113195643598721972

namespace A380986

/-- `A003963(n+1)-A003963(A007947(n+1))` -/
def P5113195643598721972.Spec : Prop :=
  ∀ n, P5113195643598721972.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P14086205470698822942

`A003963(n+1)-A003963(A204455(n+1))`
-/

namespace A380986.P14086205470698822942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A003963 (A204455 (n + 1)).toNat

end

end A380986.P14086205470698822942

namespace A380986

/-- `A003963(n+1)-A003963(A204455(n+1))` -/
def P14086205470698822942.Spec : Prop :=
  ∀ n, P14086205470698822942.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P12382956028402231387

`A290103(n+1)*A290104(n+1)-A156061(n+1)`
-/

namespace A380986.P12382956028402231387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) * A290104 (n + 1) - A156061 (n + 1)

end

end A380986.P12382956028402231387

namespace A380986

/-- `A290103(n+1)*A290104(n+1)-A156061(n+1)` -/
def P12382956028402231387.Spec : Prop :=
  ∀ n, P12382956028402231387.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P14426447168124139177

`(A290104(n+1)-A290105(n+1))*A290103(n+1)`
-/

namespace A380986.P14426447168124139177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290104 (n + 1) - A290105 (n + 1)) * A290103 (n + 1)

end

end A380986.P14426447168124139177

namespace A380986

/-- `(A290104(n+1)-A290105(n+1))*A290103(n+1)` -/
def P14426447168124139177.Spec : Prop :=
  ∀ n, P14426447168124139177.a n = A380986 (n + 1)

end A380986

/-! ## A380986.P15487509662123610440

`A003963(n+1)-A003963(n+1)/A290106(n+1)`
-/

namespace A380986.P15487509662123610440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) - (A003963 (n + 1) : ℚ) / (A290106 (n + 1) : ℚ)

end

end A380986.P15487509662123610440

namespace A380986

/-- `A003963(n+1)-A003963(n+1)/A290106(n+1)` -/
def P15487509662123610440.Spec : Prop :=
  ∀ n, P15487509662123610440.a n = (A380986 (n + 1) : ℚ)

end A380986

/-!
# A380987: Position of first appearance of n in A290106 (product of prime indices divided by product of distinct prime indices).

The programs for A380987, there is no canonical definition to state claims against.
-/

/-! ## A380987.P14704764975165516423

`∩[A007072(n+1), A380988(n+1)]`
-/

namespace A380987.P14704764975165516423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380987.P14704764975165516423

/-! ## A380987.P18063307077517738617

`A380988(A005705(n)^A054123(n))`
-/

namespace A380987.P18063307077517738617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380988 (SequenceMachineLib.roundAway ((A005705 n : ℚ) ^ (A054123 n : ℤ))).toNat

end

end A380987.P18063307077517738617

/-! ## A380987.P15000509190248731463

`A380988(A002093(n+1))%A109153(3*n+4)`
-/

namespace A380987.P15000509190248731463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380988 (A002093 (n + 1)).toNat) (A109153 (3 * n + 4))

end

end A380987.P15000509190248731463

/-!
# A380988: Sorted positions of first appearances in A290106 (product of prime indices divided by product of distinct prime indices).

The programs for A380988, there is no canonical definition to state claims against.
-/

/-! ## A380988.P12922151403988875038

`filter[A302497(n+1), A347246(#)]`
-/

namespace A380988.P12922151403988875038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A380988.P12922151403988875038

/-! ## A380988.P5664188156790570200

`filter[A382304(n+1), A347246(#)]`
-/

namespace A380988.P5664188156790570200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A380988.P5664188156790570200

/-! ## A380988.P2060385555743011868

`∩[A014076(n+1), A302497(n+1)]`
-/

namespace A380988.P2060385555743011868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380988.P2060385555743011868

/-! ## A380988.P17973971961061818661

`∩[A046446(n+1), A302497(n+1)]`
-/

namespace A380988.P17973971961061818661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380988.P17973971961061818661

/-! ## A380988.P7797287594780309232

`∩[A062739(n+1), A302497(n+1)]`
-/

namespace A380988.P7797287594780309232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380988.P7797287594780309232

/-!
# A380989: Position of first appearance of n in A380958 (number of prime factors minus sum of distinct prime exponents).

The programs for A380989, there is no canonical definition to state claims against.
-/

/-! ## A380989.P18085237196394014297

`A316532(A230037(2*(n+1))*A316522(n+1))`
-/

namespace A380989.P18085237196394014297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316532 (A230037 (2 * (n + 1)) * A316522 (n + 1)).toNat

end

end A380989.P18085237196394014297

/-! ## A380989.P8169024152727257204

`A317087(record[A054995(3*n+2)-A030137(n+1)+n])`
-/

namespace A380989.P8169024152727257204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054995 (3 * n + 2) - A030137 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380989.P8169024152727257204

/-!
# A380990: Number of free polyominoes with n cells with at most 4 collinear cell centers on any line in the plane.

The programs for A380990, there is no canonical definition to state claims against.
-/

/-! ## A380990.P916124064461783403

`A113215(A113226(n))+A104412(n+4)`
-/

namespace A380990.P916124064461783403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A113226 n).toNat + A104412 (n + 4)

end

end A380990.P916124064461783403

/-!
# A380992: Powers of two which produce a prime number when their digits are reversed.

The programs for A380992, there is no canonical definition to state claims against.
-/

/-! ## A380992.P1392049142604171831

`2^A057708(n+1)`
-/

namespace A380992.P1392049142604171831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057708 (n + 1) : ℤ)

end

end A380992.P1392049142604171831

/-! ## A380992.P5857989151396459408

`A000079(A057708(n+1))`
-/

namespace A380992.P5857989151396459408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A057708 (n + 1)).toNat

end

end A380992.P5857989151396459408

/-! ## A380992.P40792029861485328

`A011782(A057708(n+1)+1)`
-/

namespace A380992.P40792029861485328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A057708 (n + 1) + 1).toNat

end

end A380992.P40792029861485328

/-! ## A380992.P9491189239275104074

`A016116(2*A057708(n+1))`
-/

namespace A380992.P9491189239275104074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A057708 (n + 1)).toNat

end

end A380992.P9491189239275104074

/-! ## A380992.P7628578655427324372

`2^record[(n+1)/A102383(n+1)]`
-/

namespace A380992.P7628578655427324372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A102383 (n + 1) : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A380992.P7628578655427324372

/-!
# A380995: Integers k that are the product of 3 distinct primes, the smallest of which is larger than the 4th root of k: k = p*q*r, where p, q, r are primes and k^(1/4) < p < q < r.

The programs for A380995, there is no canonical definition to state claims against.
-/

/-! ## A380995.P10358966747337964238

`∩[A289691(n+1), A377713(n+1)]`
-/

namespace A380995.P10358966747337964238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P10358966747337964238

/-! ## A380995.P2114523191924812117

`∩[A377713(n+1), A379872(n+1)]`
-/

namespace A380995.P2114523191924812117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P2114523191924812117

/-! ## A380995.P8877633404498416184

`∩[A377713(n+1), A380438(n+1)]`
-/

namespace A380995.P8877633404498416184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P8877633404498416184

/-! ## A380995.P6147610890590211531

`∩[A377713(n+1), A381736(n+1)]`
-/

namespace A380995.P6147610890590211531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P6147610890590211531

/-! ## A380995.P15066922364657377522

`∩[A377713(n+1), A395899(n+1)]`
-/

namespace A380995.P15066922364657377522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P15066922364657377522

/-! ## A380995.P2248646958319012581

`∩[A380438(n+1), A399864(n+1)]`
-/

namespace A380995.P2248646958319012581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P2248646958319012581

/-! ## A380995.P14238692731274220537

`∩[A381736(n+1), A399864(n+1)]`
-/

namespace A380995.P14238692731274220537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P14238692731274220537

/-! ## A380995.P13317438441986334038

`∩[A395899(n+1), A399864(n+1)]`
-/

namespace A380995.P13317438441986334038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P13317438441986334038

/-! ## A380995.P12322136250676808038

`∩[A377713(n+1), A038513(n)]`
-/

namespace A380995.P12322136250676808038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P12322136250676808038

/-! ## A380995.P17699698064008947780

`∩[A066681(n+1), A377713(n+1)]`
-/

namespace A380995.P17699698064008947780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P17699698064008947780

/-! ## A380995.P2507659980114902086

`∩[A373837(n+1), A377713(n+1)]`
-/

namespace A380995.P2507659980114902086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380995.P2507659980114902086

/-! ## A380995.P3840821037320021449

`filter[A377713(n+1), A066829(#)]`
-/

namespace A380995.P3840821037320021449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A380995.P3840821037320021449

/-! ## A380995.P14732191420809890015

`filter[A377713(n+1), A354926(#)]`
-/

namespace A380995.P14732191420809890015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A380995.P14732191420809890015

/-! ## A380995.P16710811247728192342

`filter[A377713(n+1), A358753(#)]`
-/

namespace A380995.P16710811247728192342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A380995.P16710811247728192342

/-! ## A380995.P17192697514004180918

`filter[A377713(n+1), A358773(#)]`
-/

namespace A380995.P17192697514004180918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A380995.P17192697514004180918

/-! ## A380995.P17147533870581705197

`filter[A377713(n+1), A359158(#)]`
-/

namespace A380995.P17147533870581705197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A380995.P17147533870581705197

/-! ## A380995.P16495764805805342062

`filter[A377713(n+1), A359172(#)]`
-/

namespace A380995.P16495764805805342062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A380995.P16495764805805342062

/-! ## A380995.P13174931192709502512

`filter[A377713(n+1), A359372(#)]`
-/

namespace A380995.P13174931192709502512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A380995.P13174931192709502512

/-! ## A380995.P13059226302852935453

`filter[A377713(n+1), A369058(#)]`
-/

namespace A380995.P13059226302852935453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A380995.P13059226302852935453

/-! ## A380995.P6039159044199161533

`filter[A377713(n+1), A373141(#)]`
-/

namespace A380995.P6039159044199161533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A380995.P6039159044199161533

/-!
# A380996: a(n) is the number of vertices in the n-fold iterated barycentric subdivision of a triangle (or 2-simplex).

The programs for A380996, the canonical program `A380996.P14981010916159585957` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380996 has offset 0).

The definition of A380996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380996.P16409620632432053402

`ogf((3-20x+22x^2)/(1-9x+20x^2-12x^3))`
-/

namespace A380996.P16409620632432053402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -20, 22] [1, -9, 20, -12] n

end

end A380996.P16409620632432053402

namespace A380996

/-- `ogf((3-20x+22x^2)/(1-9x+20x^2-12x^3))` -/
def P16409620632432053402.Spec : Prop :=
  ∀ n, P16409620632432053402.a n = A380996 n

end A380996

/-! ## A380996.P14981010916159585957

`(6^n+3*2^n)/2+1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380996

/-- `(6^n+3*2^n)/2+1` -/
def P14981010916159585957.Spec : Prop :=
  ∀ n, P14981010916159585957.a n = (A380996 n : ℚ)

end A380996

/-! ## A380996.P2852625338203585271

`or(A000051(n+1), A036551(n))`
-/

namespace A380996.P2852625338203585271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (n + 1)) (A036551 n)

end

end A380996.P2852625338203585271

namespace A380996

/-- `or(A000051(n+1), A036551(n))` -/
def P2852625338203585271.Spec : Prop :=
  ∀ n, P2852625338203585271.a n = A380996 n

end A380996

/-! ## A380996.P7170502932794697888

`or(A000079(n+1), A036551(n))`
-/

namespace A380996.P7170502932794697888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1)) (A036551 n)

end

end A380996.P7170502932794697888

namespace A380996

/-- `or(A000079(n+1), A036551(n))` -/
def P7170502932794697888.Spec : Prop :=
  ∀ n, P7170502932794697888.a n = A380996 n

end A380996

/-! ## A380996.P7711940652875156915

`floor(A048578(n)+A155597(n)/2)`
-/

namespace A380996.P7711940652875156915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048578 n : ℚ) + (A155597 n : ℚ) / 2⌋

end

end A380996.P7711940652875156915

namespace A380996

/-- `floor(A048578(n)+A155597(n)/2)` -/
def P7711940652875156915.Spec : Prop :=
  ∀ n, P7711940652875156915.a n = A380996 n

end A380996

/-! ## A380996.P8942744225952237901

`ceil((A062394(n)+A007283(n))/2)`
-/

namespace A380996.P8942744225952237901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062394 n + A007283 n : ℚ) / 2⌉

end

end A380996.P8942744225952237901

namespace A380996

/-- `ceil((A062394(n)+A007283(n))/2)` -/
def P8942744225952237901.Spec : Prop :=
  ∀ n, P8942744225952237901.a n = A380996 n

end A380996

/-!
# A380999: Least number k such that there exist two different subsets of {n, n+1, ..., n+A380998(n)} whose products both are equal to k.

The programs for A380999, there is no canonical definition to state claims against.
-/

/-! ## A380999.P4375068483727971908

`(n+1+A380998(n+1))*A381000(n+1)`
-/

namespace A380999.P4375068483727971908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A380998 (n + 1)) * A381000 (n + 1)

end

end A380999.P4375068483727971908

