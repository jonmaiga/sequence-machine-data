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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A208200: 

The programs for A208200, there is no canonical definition to state claims against.
-/

/-! ## A208200.P9238858152502232216

`A208201(eq[4, A219347(n)])`
-/

namespace A208200.P9238858152502232216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208200.P9238858152502232216

/-!
# A208201: T(n,k)=Number of nXk 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208201, there is no canonical definition to state claims against.
-/

/-! ## A208201.P14178240016196246049

`∏{p}[A241119(n+1)², #]-char[4]`
-/

namespace A208201.P14178240016196246049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208201.P14178240016196246049

/-! ## A208201.P12840406091342378031

`A241119(A043316(n+1))-char[4]`
-/

namespace A208201.P12840406091342378031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A043316 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208201.P12840406091342378031

/-! ## A208201.P2443627951104779725

`A240467(A020714(n))+A200801(n+1)`
-/

namespace A208201.P2443627951104779725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A020714 n).toNat + A200801 (n + 1)

end

end A208201.P2443627951104779725

/-! ## A208201.P4457611487208366935

`A241119(n+1)+A240467(A020714(n))`
-/

namespace A208201.P4457611487208366935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (n + 1) + A240467 (A020714 n).toNat

end

end A208201.P4457611487208366935

/-! ## A208201.P14855777813955329408

`A200801(n+1)-A011738(A052542(n))`
-/

namespace A208201.P14855777813955329408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (n + 1) - A011738 (A052542 n).toNat

end

end A208201.P14855777813955329408

/-!
# A208202: a(n) = (a(n-1)*a(n-2)^2+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208202, the canonical program `A208202.P15079630192850428763` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208202 has offset 0).

The definition of A208202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208202.P15079630192850428763

`(a(n-1)*a(n-2)²+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208202

/-- `(a(n-1)*a(n-2)²+1)/a(n-3)` -/
def P15079630192850428763.Spec : Prop :=
  ∀ n, P15079630192850428763.a n = (A208202 n : ℚ)

end A208202

/-!
# A208203: a(n) = (a(n-1)*a(n-2)^3+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208203, the canonical program `A208203.P3022427409171847214` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208203 has offset 0).

The definition of A208203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208203.P3022427409171847214

`(a(n-1)*a(n-2)^3+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208203

/-- `(a(n-1)*a(n-2)^3+1)/a(n-3)` -/
def P3022427409171847214.Spec : Prop :=
  ∀ n, P3022427409171847214.a n = (A208203 n : ℚ)

end A208203

/-! ## A208203.P16548023369248287876

`A119293(a(n-2))-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A208203.P16548023369248287876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  A119293 (a (n - 2)).toNat - 1

end

end A208203.P16548023369248287876

namespace A208203

/-- `A119293(a(n-2))-1` -/
def P16548023369248287876.Spec : Prop :=
  ∀ n, P16548023369248287876.a n = A208203 n

end A208203

/-! ## A208203.P4009874882926030929

`A151552(∑[abs(A061631(n))])`
-/

namespace A208203.P4009874882926030929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061631 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208203.P4009874882926030929

namespace A208203

/-- `A151552(∑[abs(A061631(n))])` -/
def P4009874882926030929.Spec : Prop :=
  ∀ n, P4009874882926030929.a n = A208203 n

end A208203

/-!
# A208204: a(n) = (a(n-1)*a(n-2)^4+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208204, the canonical program `A208204.P3525102432669190358` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208204 has offset 0).

The definition of A208204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208204.P3525102432669190358

`(a(n-1)*a(n-2)^4+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208204

/-- `(a(n-1)*a(n-2)^4+1)/a(n-3)` -/
def P3525102432669190358.Spec : Prop :=
  ∀ n, P3525102432669190358.a n = (A208204 n : ℚ)

end A208204

/-!
# A208205: a(n)=(a(n-1)*a(n-2)^5+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208205, the canonical program `A208205.P15730069253596346360` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208205 has offset 0).

The definition of A208205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208205.P15730069253596346360

`(a(n-1)*a(n-2)^5+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208205

/-- `(a(n-1)*a(n-2)^5+1)/a(n-3)` -/
def P15730069253596346360.Spec : Prop :=
  ∀ n, P15730069253596346360.a n = (A208205 n : ℚ)

end A208205

/-!
# A208206: a(n)=(a(n-1)^2*a(n-2)+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208206, the canonical program `A208206.P11400581975934022524` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208206 has offset 0).

The definition of A208206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208206.P11400581975934022524

`(a(n-1)²*a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208206

/-- `(a(n-1)²*a(n-2)+1)/a(n-3)` -/
def P11400581975934022524.Spec : Prop :=
  ∀ n, P11400581975934022524.a n = (A208206 n : ℚ)

end A208206

/-!
# A208207: a(n)=(a(n-1)^3*a(n-2)+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208207, the canonical program `A208207.P18413893463052794527` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208207 has offset 0).

The definition of A208207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208207.P18413893463052794527

`(a(n-1)^3*a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208207

/-- `(a(n-1)^3*a(n-2)+1)/a(n-3)` -/
def P18413893463052794527.Spec : Prop :=
  ∀ n, P18413893463052794527.a n = (A208207 n : ℚ)

end A208207

/-! ## A208207.P17342758434854107636

`A117729(A289451(n))`
-/

namespace A208207.P17342758434854107636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117729 (A289451 n).toNat

end

end A208207.P17342758434854107636

namespace A208207

/-- `A117729(A289451(n))` -/
def P17342758434854107636.Spec : Prop :=
  ∀ n, P17342758434854107636.a n = A208207 n

end A208207

/-!
# A208208: a(n)=(a(n-1)^4*a(n-2)+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208208, the canonical program `A208208.P15481230254810604715` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208208 has offset 0).

The definition of A208208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208208.P15481230254810604715

`(a(n-1)^4*a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208208

/-- `(a(n-1)^4*a(n-2)+1)/a(n-3)` -/
def P15481230254810604715.Spec : Prop :=
  ∀ n, P15481230254810604715.a n = (A208208 n : ℚ)

end A208208

/-!
# A208209: a(n) = (a(n-1)^2*a(n-2)^2 + 1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208209, the canonical program `A208209.P15370380936130288184` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208209 has offset 0).

The definition of A208209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208209.P15370380936130288184

`(a(n-1)²*a(n-2)²+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208209

/-- `(a(n-1)²*a(n-2)²+1)/a(n-3)` -/
def P15370380936130288184.Spec : Prop :=
  ∀ n, P15370380936130288184.a n = (A208209 n : ℚ)

end A208209

/-! ## A208209.P2788802003632369814

`((a(n-1)*a(n-2))²+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A208209.P2788802003632369814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ((a (n - 1) * a (n - 2)) ^ 2 + 1) / a (n - 3)

end

end A208209.P2788802003632369814

namespace A208209

/-- `((a(n-1)*a(n-2))²+1)/a(n-3)` -/
def P2788802003632369814.Spec : Prop :=
  ∀ n, P2788802003632369814.a n = (A208209 n : ℚ)

end A208209

/-! ## A208209.P3726346252352794104

`sqrt(A276266(n))`
-/

namespace A208209.P3726346252352794104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A276266 n : ℝ)

end

end A208209.P3726346252352794104

namespace A208209

/-- `sqrt(A276266(n))` -/
def P3726346252352794104.Spec : Prop :=
  ∀ n, P3726346252352794104.a n = (A208209 n : ℝ)

end A208209

/-! ## A208209.P2551409724566914960

`root(A276266(n), Δ[A262223(n)])`
-/

namespace A208209.P2551409724566914960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276266 n : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A208209.P2551409724566914960

namespace A208209

/-- `root(A276266(n), Δ[A262223(n)])` -/
def P2551409724566914960.Spec : Prop :=
  ∀ n, P2551409724566914960.a n = (A208209 n : ℝ)

end A208209

/-!
# A208210: a(n)=(a(n-1)^2*a(n-2)^3+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208210, the canonical program `A208210.P8249770729405697883` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208210 has offset 0).

The definition of A208210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208210.P8249770729405697883

`(a(n-1)²*a(n-2)^3+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208210

/-- `(a(n-1)²*a(n-2)^3+1)/a(n-3)` -/
def P8249770729405697883.Spec : Prop :=
  ∀ n, P8249770729405697883.a n = (A208210 n : ℚ)

end A208210

/-! ## A208210.P10675610009846082062

`∏{p}[(Δ[C(n, 4)²]+1)², #]`
-/

namespace A208210.P10675610009846082062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A208210.P10675610009846082062

namespace A208210

/-- `∏{p}[(Δ[C(n, 4)²]+1)², #]` -/
def P10675610009846082062.Spec : Prop :=
  ∀ n, (P10675610009846082062.a n : ℤ) = A208210 n

end A208210

/-!
# A208211: a(n)=(a(n-1)^2*a(n-2)^4+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208211, the canonical program `A208211.P3039413205435589211` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208211 has offset 0).

The definition of A208211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208211.P3039413205435589211

`(a(n-1)²*a(n-2)^4+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208211

/-- `(a(n-1)²*a(n-2)^4+1)/a(n-3)` -/
def P3039413205435589211.Spec : Prop :=
  ∀ n, P3039413205435589211.a n = (A208211 n : ℚ)

end A208211

/-! ## A208211.P13402011088244826933

`A138911(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A208211.P13402011088244826933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A138911 (a (n - 1)).toNat

end

end A208211.P13402011088244826933

namespace A208211

/-- `A138911(a(n-1))` -/
def P13402011088244826933.Spec : Prop :=
  ∀ n, P13402011088244826933.a n = A208211 n

end A208211

/-!
# A208212: a(n) = (a(n-1)^2*a(n-2)^5+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208212, the canonical program `A208212.P2736071881453909077` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208212 has offset 0).

The definition of A208212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208212.P2736071881453909077

`(a(n-1)²*a(n-2)^5+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208212

/-- `(a(n-1)²*a(n-2)^5+1)/a(n-3)` -/
def P2736071881453909077.Spec : Prop :=
  ∀ n, P2736071881453909077.a n = (A208212 n : ℚ)

end A208212

/-! ## A208212.P3213770342963899993

`A365772(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A208212.P3213770342963899993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A365772 (a (n - 1)).toNat

end

end A208212.P3213770342963899993

namespace A208212

/-- `A365772(a(n-1))` -/
def P3213770342963899993.Spec : Prop :=
  ∀ n, P3213770342963899993.a n = A208212 n

end A208212

/-!
# A208213: a(n)=(a(n-1)^3*a(n-2)^2+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208213, the canonical program `A208213.P313858285936303135` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208213 has offset 0).

The definition of A208213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208213.P313858285936303135

`(a(n-1)^3*a(n-2)²+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208213

/-- `(a(n-1)^3*a(n-2)²+1)/a(n-3)` -/
def P313858285936303135.Spec : Prop :=
  ∀ n, P313858285936303135.a n = (A208213 n : ℚ)

end A208213

/-! ## A208213.P12145489545116661919

`A294567(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A208213.P12145489545116661919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A294567 (a (n - 1)).toNat

end

end A208213.P12145489545116661919

namespace A208213

/-- `A294567(a(n-1))` -/
def P12145489545116661919.Spec : Prop :=
  ∀ n, P12145489545116661919.a n = A208213 n

end A208213

/-!
# A208214: a(n)=(a(n-1)^3*a(n-2)^3+1)/a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A208214, the canonical program `A208214.P13925979922889101560` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208214 has offset 0).

The definition of A208214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208214.P13925979922889101560

`(a(n-1)^3*a(n-2)^3+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208214

/-- `(a(n-1)^3*a(n-2)^3+1)/a(n-3)` -/
def P13925979922889101560.Spec : Prop :=
  ∀ n, P13925979922889101560.a n = (A208214 n : ℚ)

end A208214

/-! ## A208214.P9956506108230358348

`((a(n-1)*a(n-2))^3+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A208214.P9956506108230358348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ((a (n - 1) * a (n - 2)) ^ 3 + 1) / a (n - 3)

end

end A208214.P9956506108230358348

namespace A208214

/-- `((a(n-1)*a(n-2))^3+1)/a(n-3)` -/
def P9956506108230358348.Spec : Prop :=
  ∀ n, P9956506108230358348.a n = (A208214 n : ℚ)

end A208214

/-!
# A208215: Number of ways of dividing a 3 X n rectangle into rectangles of integer side lengths.

The programs for A208215, the canonical program `A208215.P5840522652543757035` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208215 has offset 0).

The definition of A208215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208215.P5840522652543757035

`15*a(n-1)-55*a(n-2)+51*a(n-3)` with `a(0)=1, a(1)=4, a(2)=34, a(3)=322`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208215

/-- `15*a(n-1)-55*a(n-2)+51*a(n-3)` -/
def P5840522652543757035.Spec : Prop :=
  ∀ n, P5840522652543757035.a n = A208215 n

theorem P5840522652543757035.correct : P5840522652543757035.Spec := by
  intro n
  simp only [A208215]

end A208215

/-! ## A208215.P16223749041653855930

`A116694(∑[n+2]-1)`
-/

namespace A208215.P16223749041653855930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A208215.P16223749041653855930

namespace A208215

/-- `A116694(∑[n+2]-1)` -/
def P16223749041653855930.Spec : Prop :=
  ∀ n, P16223749041653855930.a n = A208215 n

end A208215

/-! ## A208215.P1850488334814183212

`lcm(A000034(n), A116694(A034856(n+1)))`
-/

namespace A208215.P1850488334814183212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A116694 (A034856 (n + 1)).toNat)

end

end A208215.P1850488334814183212

namespace A208215

/-- `lcm(A000034(n), A116694(A034856(n+1)))` -/
def P1850488334814183212.Spec : Prop :=
  ∀ n, (P1850488334814183212.a n : ℤ) = A208215 n

end A208215

/-! ## A208215.P11185679284319719081

`A007318(∑[n])*A116694(A034856(n+1))`
-/

namespace A208215.P11185679284319719081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A116694 (A034856 (n + 1)).toNat

end

end A208215.P11185679284319719081

namespace A208215

/-- `A007318(∑[n])*A116694(A034856(n+1))` -/
def P11185679284319719081.Spec : Prop :=
  ∀ n, P11185679284319719081.a n = A208215 n

end A208215

/-! ## A208215.P1904074629507934452

`A285007(n+1)+A116694(A034856(n+1))`
-/

namespace A208215.P1904074629507934452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A116694 (A034856 (n + 1)).toNat

end

end A208215.P1904074629507934452

namespace A208215

/-- `A285007(n+1)+A116694(A034856(n+1))` -/
def P1904074629507934452.Spec : Prop :=
  ∀ n, P1904074629507934452.a n = A208215 n

end A208215

/-!
# A208216: Number of ways of making change for n cents using coins of 1, 5, 10, and 25 cents, where each coin that appears is used a different number of times.

The programs for A208216, there is no canonical definition to state claims against.
-/

/-! ## A208216.P1176865964338898672

`A208217(n)-A102683(A306100(n))`
-/

namespace A208216.P1176865964338898672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208217 n - A102683 (A306100 n).toNat

end

end A208216.P1176865964338898672

/-! ## A208216.P16789036446274110525

`A208217(n)+A102683(A306100(n))/A057077(n)`
-/

namespace A208216.P16789036446274110525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208217 n : ℚ) + (A102683 (A306100 n).toNat : ℚ) / (A057077 n : ℚ)

end

end A208216.P16789036446274110525

/-! ## A208216.P9842331955207576961

`A031285(A208217(n))-1`
-/

namespace A208216.P9842331955207576961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A208217 n).toNat - 1

end

end A208216.P9842331955207576961

/-! ## A208216.P15891278278241316399

`A208217(n)%A096672(n+5)`
-/

namespace A208216.P15891278278241316399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208217 n) (A096672 (n + 5))

end

end A208216.P15891278278241316399

/-! ## A208216.P16120187091525822474

`A208217(n)+A000035((2*n)²)`
-/

namespace A208216.P16120187091525822474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208217 n + A000035 ((2 * n) ^ 2)

end

end A208216.P16120187091525822474

/-!
# A208217: Number of ways of making change for n cents using coins of 1, 5, 10, 25, 50, and 100 cents, where each coin that appears is used a different number of times.

The programs for A208217, there is no canonical definition to state claims against.
-/

/-! ## A208217.P16035823961663299583

`A208216(n)+A102683(A306100(n))`
-/

namespace A208217.P16035823961663299583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208216 n + A102683 (A306100 n).toNat

end

end A208217.P16035823961663299583

/-!
# A208218: a(n)=(a(n-1)^2*a(n-3)+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208218, the canonical program `A208218.P1912734802316102169` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208218 has offset 0).

The definition of A208218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208218.P1912734802316102169

`(a(n-1)²*a(n-3)+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208218

/-- `(a(n-1)²*a(n-3)+a(n-2))/a(n-4)` -/
def P1912734802316102169.Spec : Prop :=
  ∀ n, P1912734802316102169.a n = (A208218 n : ℚ)

end A208218

/-! ## A208218.P4892431140555575982

`A208224(n)%A048883(A047889(n))`
-/

namespace A208218.P4892431140555575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208224 n) (A048883 (A047889 n).toNat)

end

end A208218.P4892431140555575982

namespace A208218

/-- `A208224(n)%A048883(A047889(n))` -/
def P4892431140555575982.Spec : Prop :=
  ∀ n, P4892431140555575982.a n = A208218 n

end A208218

/-!
# A208219: a(n)=(a(n-1)^3*a(n-3)+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208219, the canonical program `A208219.P5668775808479347315` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208219 has offset 0).

The definition of A208219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208219.P5668775808479347315

`(a(n-1)^3*a(n-3)+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208219

/-- `(a(n-1)^3*a(n-3)+a(n-2))/a(n-4)` -/
def P5668775808479347315.Spec : Prop :=
  ∀ n, P5668775808479347315.a n = (A208219 n : ℚ)

end A208219

/-!
# A208220: a(n)=(a(n-1)*a(n-3)^2+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208220, the canonical program `A208220.P12214877546785919207` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208220 has offset 0).

The definition of A208220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208220.P12214877546785919207

`(a(n-1)*a(n-3)²+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208220

/-- `(a(n-1)*a(n-3)²+a(n-2))/a(n-4)` -/
def P12214877546785919207.Spec : Prop :=
  ∀ n, P12214877546785919207.a n = (A208220 n : ℚ)

end A208220

/-! ## A208220.P16916634695399353826

`A091946(∑[2^a(n-2)])` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A208220.P16916634695399353826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  2 ^ f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091946 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208220.P16916634695399353826

namespace A208220

/-- `A091946(∑[2^a(n-2)])` -/
def P16916634695399353826.Spec : Prop :=
  ∀ n, P16916634695399353826.a n = A208220 n

end A208220

/-! ## A208220.P3376145354342877726

`A050437(A014281(n+1))`
-/

namespace A208220.P3376145354342877726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050437 (A014281 (n + 1)).toNat

end

end A208220.P3376145354342877726

namespace A208220

/-- `A050437(A014281(n+1))` -/
def P3376145354342877726.Spec : Prop :=
  ∀ n, P3376145354342877726.a n = A208220 n

end A208220

/-! ## A208220.P14126061499504407237

`A002635(A038722(2^(n-1)*a(n-1)))` with `a(0)=1`
-/

namespace A208220.P14126061499504407237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002635 (A038722 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (a (n - 1) : ℚ))).toNat).toNat

end

end A208220.P14126061499504407237

namespace A208220

/-- `A002635(A038722(2^(n-1)*a(n-1)))` -/
def P14126061499504407237.Spec : Prop :=
  ∀ n, P14126061499504407237.a n = A208220 n

end A208220

/-! ## A208220.P13705823192959673523

`A002635(A038722(a(n-1)/2^(1-n)))` with `a(0)=1`
-/

namespace A208220.P13705823192959673523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002635 (A038722 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (2 : ℚ) ^ (1 - (n : ℤ) : ℤ))).toNat).toNat

end

end A208220.P13705823192959673523

namespace A208220

/-- `A002635(A038722(a(n-1)/2^(1-n)))` -/
def P13705823192959673523.Spec : Prop :=
  ∀ n, P13705823192959673523.a n = A208220 n

end A208220

/-!
# A208221: a(n)=(a(n-1)^2*a(n-3)^2+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208221, the canonical program `A208221.P13030784497479778707` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208221 has offset 0).

The definition of A208221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208221.P13030784497479778707

`(a(n-1)²*a(n-3)²+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208221

/-- `(a(n-1)²*a(n-3)²+a(n-2))/a(n-4)` -/
def P13030784497479778707.Spec : Prop :=
  ∀ n, P13030784497479778707.a n = (A208221 n : ℚ)

end A208221

/-! ## A208221.P996068661536830054

`((a(n-1)*a(n-3))²+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A208221.P996068661536830054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  ((a (n - 1) * a (n - 3)) ^ 2 + a (n - 2)) / a (n - 4)

end

end A208221.P996068661536830054

namespace A208221

/-- `((a(n-1)*a(n-3))²+a(n-2))/a(n-4)` -/
def P996068661536830054.Spec : Prop :=
  ∀ n, P996068661536830054.a n = (A208221 n : ℚ)

end A208221

/-!
# A208222: a(n) = (a(n-1)^3*a(n-3)^2+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208222, the canonical program `A208222.P40740132677355763` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208222 has offset 0).

The definition of A208222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208222.P40740132677355763

`(a(n-1)^3*a(n-3)²+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208222

/-- `(a(n-1)^3*a(n-3)²+a(n-2))/a(n-4)` -/
def P40740132677355763.Spec : Prop :=
  ∀ n, P40740132677355763.a n = (A208222 n : ℚ)

end A208222

/-! ## A208222.P4603600493338829008

`A208228(gcd(7*n, n²))`
-/

namespace A208222.P4603600493338829008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208228 (Nat.gcd (7 * n) (n ^ 2))

end

end A208222.P4603600493338829008

namespace A208222

/-- `A208228(gcd(7*n, n²))` -/
def P4603600493338829008.Spec : Prop :=
  ∀ n, P4603600493338829008.a n = A208222 n

end A208222

/-! ## A208222.P11222822640344527344

`A208225(lcm(n, C(2, n%3)))`
-/

namespace A208222.P11222822640344527344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208225 (Nat.lcm n (Nat.choose 2 (n % 3)))

end

end A208222.P11222822640344527344

namespace A208222

/-- `A208225(lcm(n, C(2, n%3)))` -/
def P11222822640344527344.Spec : Prop :=
  ∀ n, P11222822640344527344.a n = A208222 n

end A208222

/-!
# A208223: a(n) = (a(n-1)*a(n-3)^3+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208223, the canonical program `A208223.P10790063316543869136` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208223 has offset 0).

The definition of A208223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208223.P10790063316543869136

`(a(n-1)*a(n-3)^3+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208223

/-- `(a(n-1)*a(n-3)^3+a(n-2))/a(n-4)` -/
def P10790063316543869136.Spec : Prop :=
  ∀ n, P10790063316543869136.a n = (A208223 n : ℚ)

end A208223

/-!
# A208224: a(n)=(a(n-1)^2*a(n-3)^3+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208224, the canonical program `A208224.P10032478634308203167` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208224 has offset 0).

The definition of A208224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208224.P10032478634308203167

`(a(n-1)²*a(n-3)^3+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208224

/-- `(a(n-1)²*a(n-3)^3+a(n-2))/a(n-4)` -/
def P10032478634308203167.Spec : Prop :=
  ∀ n, P10032478634308203167.a n = (A208224 n : ℚ)

end A208224

/-! ## A208224.P16396498397784449838

`A265344(A208221(n))`
-/

namespace A208224.P16396498397784449838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A208221 n).toNat

end

end A208224.P16396498397784449838

namespace A208224

/-- `A265344(A208221(n))` -/
def P16396498397784449838.Spec : Prop :=
  ∀ n, P16396498397784449838.a n = A208224 n

end A208224

/-!
# A208225: a(n)=(a(n-1)^3*a(n-3)^3+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208225, the canonical program `A208225.P7811907521129383082` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208225 has offset 0).

The definition of A208225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208225.P7811907521129383082

`(a(n-1)^3*a(n-3)^3+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208225

/-- `(a(n-1)^3*a(n-3)^3+a(n-2))/a(n-4)` -/
def P7811907521129383082.Spec : Prop :=
  ∀ n, P7811907521129383082.a n = (A208225 n : ℚ)

end A208225

/-!
# A208226: a(n)=(a(n-1)*a(n-3)^4+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208226, the canonical program `A208226.P9619211892315619659` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208226 has offset 0).

The definition of A208226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208226.P9619211892315619659

`(a(n-1)*a(n-3)^4+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208226

/-- `(a(n-1)*a(n-3)^4+a(n-2))/a(n-4)` -/
def P9619211892315619659.Spec : Prop :=
  ∀ n, P9619211892315619659.a n = (A208226 n : ℚ)

end A208226

/-!
# A208227: a(n) = (a(n-1)^2*a(n-3)^4+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208227, the canonical program `A208227.P17257556961624912266` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208227 has offset 0).

The definition of A208227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208227.P17257556961624912266

`(a(n-1)²*a(n-3)^4+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208227

/-- `(a(n-1)²*a(n-3)^4+a(n-2))/a(n-4)` -/
def P17257556961624912266.Spec : Prop :=
  ∀ n, P17257556961624912266.a n = (A208227 n : ℚ)

end A208227

/-!
# A208228: a(n)=(a(n-1)^3*a(n-3)^4+a(n-2))/a(n-4) with a(0)=a(1)=a(2)=a(3)=1.

The programs for A208228, the canonical program `A208228.P6998864397333654330` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208228 has offset 0).

The definition of A208228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208228.P6998864397333654330

`(a(n-1)^3*a(n-3)^4+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208228

/-- `(a(n-1)^3*a(n-3)^4+a(n-2))/a(n-4)` -/
def P6998864397333654330.Spec : Prop :=
  ∀ n, P6998864397333654330.a n = (A208228 n : ℚ)

end A208228

/-!
# A208230: Number of functions f:{1,2,...,n}->{1,2,...,n} with all cycles of length >= 4.

The programs for A208230, there is no canonical definition to state claims against.
-/

/-! ## A208230.P4088645933799616673

`A254882(A330743(n)-A241018(n+2))`
-/

namespace A208230.P4088645933799616673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (A330743 n - A241018 (n + 2)).toNat

end

end A208230.P4088645933799616673

/-! ## A208230.P5419593757513304751

`A047865(n)+A004198(A207386(n))*A060727(n)`
-/

namespace A208230.P5419593757513304751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047865 n + A004198 (A207386 n).toNat * A060727 n

end

end A208230.P5419593757513304751

/-! ## A208230.P9887765481148722266

`A047865(n)+A052766(n)*A219347(A000254(n))`
-/

namespace A208230.P9887765481148722266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047865 n + A052766 n * A219347 (A000254 n).toNat

end

end A208230.P9887765481148722266

/-!
# A208231: Sum of the minimum cycle length over all functions f:{1,2,...,n}->{1,2,...,n} (endofunctions).

The programs for A208231, there is no canonical definition to state claims against.
-/

/-! ## A208231.P12645770324205596053

`A089467(n)-A028310(-∏[2*n-1])`
-/

namespace A208231.P12645770324205596053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089467 n - A028310 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A208231.P12645770324205596053

/-! ## A208231.P17167854297622998876

`A065679(A089467(n)-A001147(n))`
-/

namespace A208231.P17167854297622998876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 (A089467 n - A001147 n).toNat

end

end A208231.P17167854297622998876

/-!
# A208232: Maximum order of a subgroup of the symmetric group of degree n that contains no 2-cycle and no 3-cycle.

The programs for A208232, there is no canonical definition to state claims against.
-/

/-! ## A208232.P197009088093779506

`A069088(lcm(A003483(n), A103620(n)))`
-/

namespace A208232.P197009088093779506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069088 (Int.lcm (A003483 n) (A103620 n))

end

end A208232.P197009088093779506

/-! ## A208232.P15914722922802323018

`A333219(lcm(A133399(n), A169638(n)))`
-/

namespace A208232.P15914722922802323018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (Int.lcm (A133399 n) (A169638 n))

end

end A208232.P15914722922802323018

/-! ## A208232.P17768296150648414094

`lcm(A049614(n+1), A279349(A049614(n)))`
-/

namespace A208232.P17768296150648414094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049614 (n + 1)) (A279349 (A049614 n).toNat)

end

end A208232.P17768296150648414094

/-! ## A208232.P1629131872340544478

`A000142(n+1)/A343122(A115995(n+3))`
-/

namespace A208232.P1629131872340544478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A343122 (A115995 (n + 3)).toNat : ℚ)

end

end A208232.P1629131872340544478

/-!
# A208233: First inverse function (numbers of rows) for pairing function A188568.

The programs for A208233, there is no canonical definition to state claims against.
-/

/-! ## A208233.P14018989088243562600

`A002260(A188568(n+1))`
-/

namespace A208233.P14018989088243562600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A188568 (n + 1)).toNat

end

end A208233.P14018989088243562600

/-! ## A208233.P14254874023972402425

`A208234(A038722(n+1))`
-/

namespace A208233.P14254874023972402425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A038722 (n + 1)).toNat

end

end A208233.P14254874023972402425

/-! ## A208233.P138766694752374149

`A208234(A061579(n)+1)`
-/

namespace A208233.P138766694752374149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A061579 n + 1).toNat

end

end A208233.P138766694752374149

/-! ## A208233.P5263579660525402200

`A389606(A056011(n+1))`
-/

namespace A208233.P5263579660525402200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389606 (A056011 (n + 1)).toNat

end

end A208233.P5263579660525402200

/-! ## A208233.P11968467000364191755

`A188568(n+1)-A057944(n)`
-/

namespace A208233.P11968467000364191755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 1) - A057944 n

end

end A208233.P11968467000364191755

/-! ## A208233.P13259479453686142887

`A003057(n+2)-A208234(n+1)`
-/

namespace A208233.P13259479453686142887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A208234 (n + 1)

end

end A208233.P13259479453686142887

/-! ## A208233.P17077368716848658360

`A003991(n+1)/A208234(n+1)`
-/

namespace A208233.P17077368716848658360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A208234 (n + 1) : ℚ)

end

end A208233.P17077368716848658360

/-! ## A208233.P13601861663441819513

`A057058(n+1)+A188568(n+1)-A057027(n+1)`
-/

namespace A208233.P13601861663441819513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (n + 1) + (A188568 (n + 1) - A057027 (n + 1))

end

end A208233.P13601861663441819513

/-! ## A208233.P7040652217426372304

`A188568(n+1)+A194959(n+1)-A064578(n+1)`
-/

namespace A208233.P7040652217426372304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 1) + (A194959 (n + 1) - A064578 (n + 1))

end

end A208233.P7040652217426372304

/-! ## A208233.P13671448184246484362

`A194959(A057027(A188568(A064578(A057027(n+1)))))`
-/

namespace A208233.P13671448184246484362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A057027 (A188568 (A064578 (A057027 (n + 1)).toNat).toNat).toNat).toNat

end

end A208233.P13671448184246484362

/-! ## A208233.P2995418513256880080

`A209279(A185180(A188568(A057027(A064578(n+1)))))`
-/

namespace A208233.P2995418513256880080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A185180 (A188568 (A057027 (A064578 (n + 1)).toNat).toNat).toNat).toNat

end

end A208233.P2995418513256880080

/-! ## A208233.P17954604780057037107

`A194258(A081344(n+1))`
-/

namespace A208233.P17954604780057037107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A081344 (n + 1)).toNat

end

end A208233.P17954604780057037107

/-! ## A208233.P4410271696771076578

`A208234(A064790(A213928(A064788(A213928(n+1)))))`
-/

namespace A208233.P4410271696771076578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064790 (A213928 (A064788 (A213928 (n + 1)).toNat).toNat).toNat).toNat

end

end A208233.P4410271696771076578

/-! ## A208233.P13289659133806735853

`A208234(A064790(A219159(A064788(A219159(n+1)))))`
-/

namespace A208233.P13289659133806735853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A064790 (A219159 (A064788 (A219159 (n + 1)).toNat).toNat).toNat).toNat

end

end A208233.P13289659133806735853

/-! ## A208233.P5804477212977538408

`A220604(A060736(n+1))`
-/

namespace A208233.P5804477212977538408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A060736 (n + 1)).toNat

end

end A208233.P5804477212977538408

/-! ## A208233.P6780180828982942493

`A220604(A220508(n)+1)`
-/

namespace A208233.P6780180828982942493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A220508 n + 1).toNat

end

end A208233.P6780180828982942493

/-! ## A208233.P6478576742408283736

`A220603(A060734(n+1))`
-/

namespace A208233.P6478576742408283736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A060734 (n + 1)).toNat

end

end A208233.P6478576742408283736

/-! ## A208233.P668397481407129073

`A092542(n+1)+A188568(n+1)-A056023(n+1)`
-/

namespace A208233.P668397481407129073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (n + 1) + (A188568 (n + 1) - A056023 (n + 1))

end

end A208233.P668397481407129073

/-! ## A208233.P14809301329808813632

`A220604(A081344(A188568(A220603(A081346(n)))))`
-/

namespace A208233.P14809301329808813632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A081344 (A188568 (A220603 (A081346 n).toNat).toNat).toNat).toNat

end

end A208233.P14809301329808813632

/-!
# A208234: Second inverse function (numbers of columns) for pairing function A188568.

The programs for A208234, there is no canonical definition to state claims against.
-/

/-! ## A208234.P13219680896069902152

`A004736(A188568(n+1))`
-/

namespace A208234.P13219680896069902152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A188568 (n + 1)).toNat

end

end A208234.P13219680896069902152

/-! ## A208234.P11518818850449720588

`A208233(A038722(n+1))`
-/

namespace A208234.P11518818850449720588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A038722 (n + 1)).toNat

end

end A208234.P11518818850449720588

/-! ## A208234.P14772755789182091605

`A389606(A056023(n+1))`
-/

namespace A208234.P14772755789182091605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389606 (A056023 (n + 1)).toNat

end

end A208234.P14772755789182091605

/-! ## A208234.P2526870640951422220

`A003057(n+2)-A208233(n+1)`
-/

namespace A208234.P2526870640951422220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A208233 (n + 1)

end

end A208234.P2526870640951422220

/-! ## A208234.P15601433547512094145

`A003056(n)+2-A208233(n+1)`
-/

namespace A208234.P15601433547512094145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A208233 (n + 1))

end

end A208234.P15601433547512094145

/-! ## A208234.P17883369416358027194

`A003991(n+1)/A208233(n+1)`
-/

namespace A208234.P17883369416358027194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A208233 (n + 1) : ℚ)

end

end A208234.P17883369416358027194

/-! ## A208234.P8536645125678924911

`A208233(A056023(A056011(n+1)))`
-/

namespace A208234.P8536645125678924911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A208234.P8536645125678924911

/-! ## A208234.P4291184731135342330

`A057058(A064578(A188568(A064578(A057028(n+1)))))`
-/

namespace A208234.P4291184731135342330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A064578 (A188568 (A064578 (A057028 (n + 1)).toNat).toNat).toNat).toNat

end

end A208234.P4291184731135342330

/-! ## A208234.P12234255824089760280

`A209278(A185180(A188568(A064578(A057027(n+1)))))`
-/

namespace A208234.P12234255824089760280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A185180 (A188568 (A064578 (A057027 (n + 1)).toNat).toNat).toNat).toNat

end

end A208234.P12234255824089760280

/-! ## A208234.P2356239937147193014

`A194195(A081344(n+1))`
-/

namespace A208234.P2356239937147193014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A081344 (n + 1)).toNat

end

end A208234.P2356239937147193014

/-! ## A208234.P5145620880399518011

`A208233(A064790(A213928(A064788(A213928(n+1)))))`
-/

namespace A208234.P5145620880399518011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064790 (A213928 (A064788 (A213928 (n + 1)).toNat).toNat).toNat).toNat

end

end A208234.P5145620880399518011

/-! ## A208234.P2250347373116756279

`A208233(A064790(A219159(A064788(A219159(n+1)))))`
-/

namespace A208234.P2250347373116756279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A064790 (A219159 (A064788 (A219159 (n + 1)).toNat).toNat).toNat).toNat

end

end A208234.P2250347373116756279

/-! ## A208234.P6447273852116064298

`A220603(A060736(n+1))`
-/

namespace A208234.P6447273852116064298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A060736 (n + 1)).toNat

end

end A208234.P6447273852116064298

/-! ## A208234.P4403059760266473721

`A220603(A220508(n)+1)`
-/

namespace A208234.P4403059760266473721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A220508 n + 1).toNat

end

end A208234.P4403059760266473721

/-! ## A208234.P6404600498971857873

`A194195(A219159(A194280(A219159(n+1))))`
-/

namespace A208234.P6404600498971857873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A219159 (A194280 (A219159 (n + 1)).toNat).toNat).toNat

end

end A208234.P6404600498971857873

/-! ## A208234.P15227505035155041819

`A220604(A060734(n+1))`
-/

namespace A208234.P15227505035155041819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A060734 (n + 1)).toNat

end

end A208234.P15227505035155041819

/-! ## A208234.P2295669588450956351

`A194195(A213928(A194280(A213928(n+1))))`
-/

namespace A208234.P2295669588450956351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A213928 (A194280 (A213928 (n + 1)).toNat).toNat).toNat

end

end A208234.P2295669588450956351

/-! ## A208234.P2028222109541525958

`A056011(n+1)+A092542(n+1)-A188568(n+1)`
-/

namespace A208234.P2028222109541525958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A092542 (n + 1) - A188568 (n + 1))

end

end A208234.P2028222109541525958

/-! ## A208234.P13467444397126053876

`A220603(A081344(A188568(A220603(A081346(n)))))`
-/

namespace A208234.P13467444397126053876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A081344 (A188568 (A220603 (A081346 n).toNat).toNat).toNat).toNat

end

end A208234.P13467444397126053876

/-!
# A208235: Maximal order of a subgroup of the symmetric group of degree n that contains no 3-cycle.

The programs for A208235, there is no canonical definition to state claims against.
-/

/-! ## A208235.P970755405012804399

`lcm(A000005(A185056(n+1)), A208232(n+1))`
-/

namespace A208235.P970755405012804399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A185056 (n + 1)).toNat) (A208232 (n + 1))

end

end A208235.P970755405012804399

/-! ## A208235.P11343959984386214062

`A390753(A192466(n+1))`
-/

namespace A208235.P11343959984386214062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 (A192466 (n + 1)).toNat

end

end A208235.P11343959984386214062

/-! ## A208235.P10400557735708452150

`A390752(A192467(n+1))`
-/

namespace A208235.P10400557735708452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 (A192467 (n + 1)).toNat

end

end A208235.P10400557735708452150

/-!
# A208236: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 + n*k*x) / (1 + x + n*k*x^2).

The programs for A208236, there is no canonical definition to state claims against.
-/

/-! ## A208236.P3233688519791507555

`A325363(A168317(n))`
-/

namespace A208236.P3233688519791507555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A168317 n).toNat

end

end A208236.P3233688519791507555

/-! ## A208236.P700519730326003129

`A248566(A296533(n))`
-/

namespace A208236.P700519730326003129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A296533 n).toNat

end

end A208236.P700519730326003129

/-! ## A208236.P7211042941727964628

`A003963(A153825(n)+4)`
-/

namespace A208236.P7211042941727964628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A153825 n + 4).toNat

end

end A208236.P7211042941727964628

/-!
# A208237: G.f.: Sum_{n>=0} n! * x^n * Product_{k=1..n} (1 + k*x) / (1 + k*x + k^2*x^2).

The programs for A208237, there is no canonical definition to state claims against.
-/

/-! ## A208237.P12154515490060953161

`A279552(n)+A002265(A263778(n))`
-/

namespace A208237.P12154515490060953161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279552 n + A002265 (A263778 n).toNat

end

end A208237.P12154515490060953161

/-! ## A208237.P5026485127302523887

`A080098(A223897(n))`
-/

namespace A208237.P5026485127302523887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A223897 n).toNat

end

end A208237.P5026485127302523887

/-! ## A208237.P4752772962699932988

`A256133(A115625(n))`
-/

namespace A208237.P4752772962699932988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A115625 n).toNat

end

end A208237.P4752772962699932988

/-!
# A208238: Smallest prime greater than n, containing it in binary representation.

The programs for A208238, there is no canonical definition to state claims against.
-/

/-! ## A208238.P17430901316741504299

`A033676(A086507(2*n+1)*A088732(n))`
-/

namespace A208238.P17430901316741504299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A086507 (2 * n + 1) * A088732 n).toNat

end

end A208238.P17430901316741504299

/-!
# A208239: Triangle read by rows: T(n,m) = n + k - n/k, where k is the m-th divisor of n; 1 <= m <= tau(n).

The programs for A208239, there is no canonical definition to state claims against.
-/

/-! ## A208239.P6322820786017972292

`A027750(n+1)+A061017(n+1)-A056538(n+1)`
-/

namespace A208239.P6322820786017972292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + (A061017 (n + 1) - A056538 (n + 1))

end

end A208239.P6322820786017972292

/-! ## A208239.P13056141900813666387

`A027750(n+1)+A056538(n+1)*A263730(n+2)`
-/

namespace A208239.P13056141900813666387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + A056538 (n + 1) * A263730 (n + 2)

end

end A208239.P13056141900813666387

/-! ## A208239.P11888000678457691283

`A027750(n+1)-A233772(n+1)*A263730(n+2)`
-/

namespace A208239.P11888000678457691283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A233772 (n + 1) * A263730 (n + 2)

end

end A208239.P11888000678457691283

/-! ## A208239.P2614559553876252196

`A061017(n+1)+abs(A233773(n+1))-A056538(n+1)`
-/

namespace A208239.P2614559553876252196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) + (|A233773 (n + 1)| - A056538 (n + 1))

end

end A208239.P2614559553876252196

/-! ## A208239.P7408050018984142809

`A263730(n+2)+1-(A056538(n+1)-A061017(n+1))`
-/

namespace A208239.P7408050018984142809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + 1 - (A056538 (n + 1) - A061017 (n + 1))

end

end A208239.P7408050018984142809

/-! ## A208239.P14794785386708787976

`A002260(A056534(n+1))+A061017(n+1)-A056538(n+1)`
-/

namespace A208239.P14794785386708787976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056534 (n + 1)).toNat + (A061017 (n + 1) - A056538 (n + 1))

end

end A208239.P14794785386708787976

/-! ## A208239.P18261209374841721788

`A061017(n+1)+A000196(A233773(n+1)²)-A056538(n+1)`
-/

namespace A208239.P18261209374841721788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) + (A000196 (A233773 (n + 1) ^ 2).toNat - A056538 (n + 1))

end

end A208239.P18261209374841721788

/-! ## A208239.P13949232514961114904

`A000196(A233773(n+1)²)+A056538(n+1)*A263730(n+2)`
-/

namespace A208239.P13949232514961114904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A233773 (n + 1) ^ 2).toNat + A056538 (n + 1) * A263730 (n + 2)

end

end A208239.P13949232514961114904

/-! ## A208239.P879162334198234754

`A380600(n+1)+A027750(n+1)`
-/

namespace A208239.P879162334198234754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380600 (n + 1) + A027750 (n + 1)

end

end A208239.P879162334198234754

/-! ## A208239.P14555800250655485309

`A134199(A308805(n+1))`
-/

namespace A208239.P14555800250655485309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 (A308805 (n + 1)).toNat

end

end A208239.P14555800250655485309

/-!
# A208240: Number of functions f:{1,2,...,n}->{1,2,...,n} with at least one cycle of length >= 3.

The programs for A208240, there is no canonical definition to state claims against.
-/

/-! ## A208240.P13393659694666590427

`n^n-A209319(n)`
-/

namespace A208240.P13393659694666590427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A209319 n

end

end A208240.P13393659694666590427

/-! ## A208240.P16618476246891807840

`A101334(n)-A163951(n)`
-/

namespace A208240.P16618476246891807840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101334 n - A163951 n

end

end A208240.P16618476246891807840

/-! ## A208240.P16697629752398277812

`abs(A000312(n)-A209319(n))`
-/

namespace A208240.P16697629752398277812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - A209319 n|

end

end A208240.P16697629752398277812

/-! ## A208240.P10351252485743972252

`A101334(n)-A241981(A133263(n))`
-/

namespace A208240.P10351252485743972252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101334 n - A241981 (A133263 n).toNat

end

end A208240.P10351252485743972252

/-! ## A208240.P10265341525608984201

`A000272(n+1)+A101334(n)-A209319(n)`
-/

namespace A208240.P10265341525608984201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) + (A101334 n - A209319 n)

end

end A208240.P10265341525608984201

/-! ## A208240.P1230669602365206923

`A101334(n)-A241981(A057427(n)+A000124(n))`
-/

namespace A208240.P1230669602365206923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101334 n - A241981 (A057427 n + A000124 n).toNat

end

end A208240.P1230669602365206923

/-!
# A208241: Smallest prime greater than n, with n as prefix in binary representation.

The programs for A208241, there is no canonical definition to state claims against.
-/

/-! ## A208241.P13153525832692181874

`A020639(A164022(2*(n+1))*A164022(2*n+3))`
-/

namespace A208241.P13153525832692181874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164022 (2 * (n + 1)) * A164022 (2 * n + 3)).toNat

end

end A208241.P13153525832692181874

/-! ## A208241.P3190668283423865187

`p?[A027642(n)*A050921(n+1)]`
-/

namespace A208241.P3190668283423865187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A050921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208241.P3190668283423865187

/-! ## A208241.P299848517584461606

`p?[A050921(n+1)*A166333(n²)]`
-/

namespace A208241.P299848517584461606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (n + 1) * A166333 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208241.P299848517584461606

/-! ## A208241.P1213852065179875313

`A069359(A050921(record[2-xor(1, -n)])²)`
-/

namespace A208241.P1213852065179875313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A050921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2).toNat

end

end A208241.P1213852065179875313

/-! ## A208241.P6275655741616280257

`A050921((n+1)*a(A053164(n+1)-1))` with `a(0)=2`
-/

namespace A208241.P6275655741616280257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A050921 ((n + 1 : ℤ) * a (A053164 (n + 1) - 1).toNat).toNat

end

end A208241.P6275655741616280257

/-!
# A208243: Number of ways to write 2n-1 = p+q, where p is a prime, and both q and q+2 are practical numbers (A005153).

The programs for A208243, there is no canonical definition to state claims against.
-/

/-! ## A208243.P10669968974710974347

`A209320(n+1)-A187946(A288039(n))`
-/

namespace A208243.P10669968974710974347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209320 (n + 1) - A187946 (A288039 n).toNat

end

end A208243.P10669968974710974347

/-! ## A208243.P5330336132794109976

`A209320(n+1)-A067898(A278397(n+1))`
-/

namespace A208243.P5330336132794109976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209320 (n + 1) - A067898 (A278397 (n + 1)).toNat

end

end A208243.P5330336132794109976

/-! ## A208243.P1106111278690440933

`A010060(A155803(n))+A002375(n+1)`
-/

namespace A208243.P1106111278690440933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A155803 n).toNat + A002375 (n + 1)

end

end A208243.P1106111278690440933

/-! ## A208243.P11799028820587093192

`A071858(A113405(n))+A002375(n+1)`
-/

namespace A208243.P11799028820587093192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A113405 n).toNat + A002375 (n + 1)

end

end A208243.P11799028820587093192

/-! ## A208243.P119450920433388516

`A002375(n+1)+A000035(A210730(n))`
-/

namespace A208243.P119450920433388516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + A000035 (A210730 n).toNat

end

end A208243.P119450920433388516

/-!
# A208244: Number of ways to write n as the sum of a practical number (A005153) and a triangular number (A000217).

The programs for A208244, there is no canonical definition to state claims against.
-/

/-! ## A208244.P548920544842818791

`A000005(gcd(A178036(n), A221876(n+1)))`
-/

namespace A208244.P548920544842818791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A178036 n) (A221876 (n + 1)))

end

end A208244.P548920544842818791

/-! ## A208244.P13216721152987765150

`gcd(A006093(A004736(n+1)), A308361(n+3))`
-/

namespace A208244.P13216721152987765150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (A004736 (n + 1)).toNat) (A308361 (n + 3))

end

end A208244.P13216721152987765150

/-! ## A208244.P14518040872452305174

`A347865(A188548(3*n+1)%A004736(n+1))`
-/

namespace A208244.P14518040872452305174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347865 (Int.tmod (A188548 (3 * n + 1)) (A004736 (n + 1))).toNat

end

end A208244.P14518040872452305174

/-! ## A208244.P16384173081197054689

`A294220(A281891(n))+A001222(A004736(n+1))`
-/

namespace A208244.P16384173081197054689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (A281891 n).toNat + A001222 (A004736 (n + 1)).toNat

end

end A208244.P16384173081197054689

/-! ## A208244.P2480983667601073011

`A123229(A004736(n+1))/A006345(A226234(n))`
-/

namespace A208244.P2480983667601073011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123229 (A004736 (n + 1)).toNat : ℚ) / (A006345 (A226234 n).toNat : ℚ)

end

end A208244.P2480983667601073011

/-!
# A208245: Triangle read by rows: a(n,k) = a(n-2,k) + a(n-2,k-1).

The programs for A208245, there is no canonical definition to state claims against.
-/

/-! ## A208245.P7916234463361670561

`A055801(A099375(n+1)+n+3)`
-/

namespace A208245.P7916234463361670561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A099375 (n + 1) + (n + 3 : ℤ)).toNat

end

end A208245.P7916234463361670561

/-! ## A208245.P7874906123584605094

`A055801(2*A004736(n+1)+n)`
-/

namespace A208245.P7874906123584605094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A208245.P7874906123584605094

/-! ## A208245.P6873887608637738187

`A055801(A061579(n)+A003057(n+2))`
-/

namespace A208245.P6873887608637738187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A061579 n + A003057 (n + 2)).toNat

end

end A208245.P6873887608637738187

/-! ## A208245.P7684871208490007797

`A055801(A038722(n+1)+A002024(n+1))`
-/

namespace A208245.P7684871208490007797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A208245.P7684871208490007797

/-! ## A208245.P9106159721728254131

`A055801(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A208245.P9106159721728254131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A208245.P9106159721728254131

/-!
# A208247: Numbers having exactly one partition into two prime powers.

The programs for A208247, there is no canonical definition to state claims against.
-/

/-! ## A208247.P12754128608152183728

`eq[1, A071330(n+1)]+1`
-/

namespace A208247.P12754128608152183728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A208247.P12754128608152183728

/-! ## A208247.P402850481307218793

`eq[1, A071330(A028310(n))]`
-/

namespace A208247.P402850481307218793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208247.P402850481307218793

/-! ## A208247.P5883454854138300269

`eq[A000034(n), A282062(n)]`
-/

namespace A208247.P5883454854138300269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P5883454854138300269

/-! ## A208247.P17127102615481554800

`eq[A083952(n), A282062(n)]`
-/

namespace A208247.P17127102615481554800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P17127102615481554800

/-! ## A208247.P5195114486315565387

`eq[A084642(n), A282062(n)]`
-/

namespace A208247.P5195114486315565387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P5195114486315565387

/-! ## A208247.P958573021344813620

`eq[A105220(n), A282062(n)]`
-/

namespace A208247.P958573021344813620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P958573021344813620

/-! ## A208247.P13957990918914525076

`eq[A186187(n), A282062(n)]`
-/

namespace A208247.P13957990918914525076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P13957990918914525076

/-! ## A208247.P14975621892844423238

`eq[A282062(n), A329683(n)]`
-/

namespace A208247.P14975621892844423238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P14975621892844423238

/-! ## A208247.P14596483818804296063

`eq[2, A086161(2*A282062(n))]`
-/

namespace A208247.P14596483818804296063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (2 * A282062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208247.P14596483818804296063

/-! ## A208247.P16802542357778655318

`eq[A000035(n)+1, A282062(n)]`
-/

namespace A208247.P16802542357778655318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P16802542357778655318

/-! ## A208247.P12476363869915967008

`eq[A051881(n+1), A282062(n)]`
-/

namespace A208247.P12476363869915967008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P12476363869915967008

/-! ## A208247.P14640636105098255942

`eq[A082067(n+1), A282062(n)]`
-/

namespace A208247.P14640636105098255942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208247.P14640636105098255942

/-! ## A208247.P7456510605367785866

`eq[2, A055396(n+1)*A282062(n)]`
-/

namespace A208247.P7456510605367785866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A282062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208247.P7456510605367785866

/-!
# A208248: Sum of the maximum cycle length over all functions f:{1,2,...,n} -> {1,2,...,n} (endofunctions).

The programs for A208248, there is no canonical definition to state claims against.
-/

/-! ## A208248.P44434712951544633

`A063170(n)-A089258(∑[4*n])`
-/

namespace A208248.P44434712951544633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 n - A089258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208248.P44434712951544633

/-!
# A208250: The sum of the largest preimage over all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A208250, there is no canonical definition to state claims against.
-/

/-! ## A208250.P14871460711714430114

`A265080(∑[4*n])`
-/

namespace A208250.P14871460711714430114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208250.P14871460711714430114

/-! ## A208250.P3155024516586557565

`lcm(n, A265080(A046092(n)))`
-/

namespace A208250.P3155024516586557565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A265080 (A046092 n).toNat)

end

end A208250.P3155024516586557565

/-! ## A208250.P10429504313615966479

`record[gcd(A008482(n), A265080(n))]`
-/

namespace A208250.P10429504313615966479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A265080 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208250.P10429504313615966479

/-! ## A208250.P1613416495218042724

`record[A265080(2*A035106(n+1))]`
-/

namespace A208250.P1613416495218042724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (2 * A035106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208250.P1613416495218042724

/-! ## A208250.P17351065544974986905

`A265080(4*A000217(n))+char[45]`
-/

namespace A208250.P17351065544974986905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (4 * A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208250.P17351065544974986905

/-!
# A208251: Number of refactorable numbers less than or equal to n.

The programs for A208251, the canonical program `A208251.P10196813765732907531` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208251 has offset 1).

The definition of A208251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208251.P6173566924644640981

`∑[A336040(n+1)]`
-/

namespace A208251.P6173566924644640981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P6173566924644640981

namespace A208251

/-- `∑[A336040(n+1)]` -/
def P6173566924644640981.Spec : Prop :=
  ∀ n, P6173566924644640981.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P18124160864100144979

`∑[1-A368625(n+1)]`
-/

namespace A208251.P18124160864100144979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P18124160864100144979

namespace A208251

/-- `∑[1-A368625(n+1)]` -/
def P18124160864100144979.Spec : Prop :=
  ∀ n, P18124160864100144979.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P16222976656485278713

`∑[floor(acot(A054008(n+1)))]`
-/

namespace A208251.P16222976656485278713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054008 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P16222976656485278713

namespace A208251

/-- `∑[floor(acot(A054008(n+1)))]` -/
def P16222976656485278713.Spec : Prop :=
  ∀ n, P16222976656485278713.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P10979647853479485192

`∑[floor(1/A298734(n+1))]`
-/

namespace A208251.P10979647853479485192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A298734 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P10979647853479485192

namespace A208251

/-- `∑[floor(1/A298734(n+1))]` -/
def P10979647853479485192.Spec : Prop :=
  ∀ n, P10979647853479485192.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P14460348553670284811

`∑[char[A033950(n+1)-1]]`
-/

namespace A208251.P14460348553670284811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P14460348553670284811

namespace A208251

/-- `∑[char[A033950(n+1)-1]]` -/
def P14460348553670284811.Spec : Prop :=
  ∀ n, (P14460348553670284811.a n : ℤ) = A208251 (n + 1)

end A208251

/-! ## A208251.P11607109378669402030

`∑[C(2, A090387(n+1)+1)]`
-/

namespace A208251.P11607109378669402030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A090387 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P11607109378669402030

namespace A208251

/-- `∑[C(2, A090387(n+1)+1)]` -/
def P11607109378669402030.Spec : Prop :=
  ∀ n, (P11607109378669402030.a n : ℤ) = A208251 (n + 1)

end A208251

/-! ## A208251.P17434847545507208495

`∑[floor(acot((n+1)%A000005(n+1)))]`
-/

namespace A208251.P17434847545507208495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (n + 1 : ℤ) (A000005 (n + 1)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P17434847545507208495

namespace A208251

/-- `∑[floor(acot((n+1)%A000005(n+1)))]` -/
def P17434847545507208495.Spec : Prop :=
  ∀ n, P17434847545507208495.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P10196813765732907531

`∑[A000007(A054008(n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208251

/-- `∑[A000007(A054008(n+1))]` -/
def P10196813765732907531.Spec : Prop :=
  ∀ n, P10196813765732907531.a n = A208251 (n + 1)

theorem P10196813765732907531.correct : P10196813765732907531.Spec := by
  intro n
  simp only [A208251, Nat.add_sub_cancel]

end A208251

/-! ## A208251.P15632908616307607012

`A001221(val(n+1, A000005(n+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A208251.P15632908616307607012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 (SequenceMachineLib.valuation (n + 1) (A000005 (n + 1)).toNat + 1) + a (n - 1)

end

end A208251.P15632908616307607012

namespace A208251

/-- `A001221(val(n+1, A000005(n+1))+1)+a(n-1)` -/
def P15632908616307607012.Spec : Prop :=
  ∀ n, P15632908616307607012.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P7341713514444853391

`A024693(val(n+1, A000005(n+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A208251.P7341713514444853391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024693 (SequenceMachineLib.valuation (n + 1) (A000005 (n + 1)).toNat + 1) + a (n - 1)

end

end A208251.P7341713514444853391

namespace A208251

/-- `A024693(val(n+1, A000005(n+1))+1)+a(n-1)` -/
def P7341713514444853391.Spec : Prop :=
  ∀ n, P7341713514444853391.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P9264853109826533301

`A052409(val(n+1, A000005(n+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A208251.P9264853109826533301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052409 (SequenceMachineLib.valuation (n + 1) (A000005 (n + 1)).toNat + 1) + a (n - 1)

end

end A208251.P9264853109826533301

namespace A208251

/-- `A052409(val(n+1, A000005(n+1))+1)+a(n-1)` -/
def P9264853109826533301.Spec : Prop :=
  ∀ n, P9264853109826533301.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P12832474693574833241

`∑[char[A272347(n+1)-1]]`
-/

namespace A208251.P12832474693574833241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P12832474693574833241

namespace A208251

/-- `∑[char[A272347(n+1)-1]]` -/
def P12832474693574833241.Spec : Prop :=
  ∀ n, (P12832474693574833241.a n : ℤ) = A208251 (n + 1)

end A208251

/-! ## A208251.P15371004223838990154

`∑[C(A161654(n+1), n+1)]`
-/

namespace A208251.P15371004223838990154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161654 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P15371004223838990154

namespace A208251

/-- `∑[C(A161654(n+1), n+1)]` -/
def P15371004223838990154.Spec : Prop :=
  ∀ n, (P15371004223838990154.a n : ℤ) = A208251 (n + 1)

end A208251

/-! ## A208251.P532289408615729778

`∑[C(n+1, A161655(n+1))]`
-/

namespace A208251.P532289408615729778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A161655 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P532289408615729778

namespace A208251

/-- `∑[C(n+1, A161655(n+1))]` -/
def P532289408615729778.Spec : Prop :=
  ∀ n, (P532289408615729778.a n : ℤ) = A208251 (n + 1)

end A208251

/-! ## A208251.P1783903054158537753

`∑[A051731(∑[n]+A000005(n+1))]`
-/

namespace A208251.P1783903054158537753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P1783903054158537753

namespace A208251

/-- `∑[A051731(∑[n]+A000005(n+1))]` -/
def P1783903054158537753.Spec : Prop :=
  ∀ n, P1783903054158537753.a n = A208251 (n + 1)

end A208251

/-! ## A208251.P3684746586218891446

`∑[A281188(A298734(n+1)²)]`
-/

namespace A208251.P3684746586218891446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (A298734 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208251.P3684746586218891446

namespace A208251

/-- `∑[A281188(A298734(n+1)²)]` -/
def P3684746586218891446.Spec : Prop :=
  ∀ n, P3684746586218891446.a n = A208251 (n + 1)

end A208251

/-!
# A208252: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208252, there is no canonical definition to state claims against.
-/

/-! ## A208252.P7647634429785510506

`A208258(∑[4*n]+1)`
-/

namespace A208252.P7647634429785510506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208252.P7647634429785510506

/-! ## A208252.P8786755507322021532

`ceil(A184687(n+1)/2)`
-/

namespace A208252.P8786755507322021532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184687 (n + 1) : ℚ) / 2⌉

end

end A208252.P8786755507322021532

/-! ## A208252.P5169357345743347684

`A184687(n+1)/(A072576(A119369(n²))-A000007(n))`
-/

namespace A208252.P5169357345743347684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184687 (n + 1) : ℚ) / (A072576 (A119369 (n ^ 2)).toNat - A000007 n : ℚ)

end

end A208252.P5169357345743347684

/-!
# A208253: Number of n X 3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208253, there is no canonical definition to state claims against.
-/

/-! ## A208253.P4782161642048133325

`ceil(A184688(n+1)/2)`
-/

namespace A208253.P4782161642048133325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184688 (n + 1) : ℚ) / 2⌉

end

end A208253.P4782161642048133325

/-! ## A208253.P6100465635902614607

`round((A184688(n+1)+A057428(n))/2)`
-/

namespace A208253.P6100465635902614607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184688 (n + 1) + A057428 n : ℚ) / 2)

end

end A208253.P6100465635902614607

/-! ## A208253.P11885349066445582542

`A208258(∑[n+2]+4)`
-/

namespace A208253.P11885349066445582542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208253.P11885349066445582542

/-! ## A208253.P285094503681013750

`lcm(A003108(n), A208258(A167614(n+1)))`
-/

namespace A208253.P285094503681013750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003108 n) (A208258 (A167614 (n + 1)).toNat)

end

end A208253.P285094503681013750

/-! ## A208253.P8283373891611649901

`or(A088157(n), A208258(A167614(n+1)))`
-/

namespace A208253.P8283373891611649901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088157 n) (A208258 (A167614 (n + 1)).toNat)

end

end A208253.P8283373891611649901

/-!
# A208254: Number of n X 4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208254, there is no canonical definition to state claims against.
-/

/-! ## A208254.P18267607223593706090

`ceil(A184689(n+1)/2)`
-/

namespace A208254.P18267607223593706090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184689 (n + 1) : ℚ) / 2⌉

end

end A208254.P18267607223593706090

/-! ## A208254.P3617142069379234658

`round(A184689(A023443(n+1)+1)/2)`
-/

namespace A208254.P3617142069379234658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184689 (A023443 (n + 1) + 1).toNat : ℚ) / 2)

end

end A208254.P3617142069379234658

/-! ## A208254.P1758156684363557143

`round((A184689(n+1)+A057428(n))/2)`
-/

namespace A208254.P1758156684363557143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184689 (n + 1) + A057428 n : ℚ) / 2)

end

end A208254.P1758156684363557143

/-! ## A208254.P15353900911697082672

`floor((A184689(n+1)+A007318(C(2, n)))/2)`
-/

namespace A208254.P15353900911697082672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184689 (n + 1) + A007318 (Nat.choose 2 n) : ℚ) / 2⌋

end

end A208254.P15353900911697082672

/-! ## A208254.P16559685780378101780

`A208258(∑[n+2]+n+8)`
-/

namespace A208254.P16559685780378101780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A208254.P16559685780378101780

/-!
# A208255: Number of nX5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208255, there is no canonical definition to state claims against.
-/

/-! ## A208255.P16445868516589814085

`ceil(A184690(n+1)/2)`
-/

namespace A208255.P16445868516589814085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184690 (n + 1) : ℚ) / 2⌉

end

end A208255.P16445868516589814085

/-! ## A208255.P14186035787724380231

`(A184690(n+1)+A000007(n))/2`
-/

namespace A208255.P14186035787724380231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184690 (n + 1) + A000007 n : ℚ) / 2

end

end A208255.P14186035787724380231

/-! ## A208255.P12587601911827821340

`round((A184690(n+1)+A057428(n))/2)`
-/

namespace A208255.P12587601911827821340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184690 (n + 1) + A057428 n : ℚ) / 2)

end

end A208255.P12587601911827821340

/-! ## A208255.P11279935256085562797

`floor(A184690(n+1)/2+1-A057427(n))`
-/

namespace A208255.P11279935256085562797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184690 (n + 1) : ℚ) / 2 + (1 - A057427 n : ℚ)⌋

end

end A208255.P11279935256085562797

/-! ## A208255.P8776741988124367152

`A208258(A374005(n+1))`
-/

namespace A208255.P8776741988124367152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (A374005 (n + 1)).toNat

end

end A208255.P8776741988124367152

/-!
# A208256: Number of nX6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208256, there is no canonical definition to state claims against.
-/

/-! ## A208256.P13383174210920397604

`ceil(A184691(n+1)/2)`
-/

namespace A208256.P13383174210920397604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184691 (n + 1) : ℚ) / 2⌉

end

end A208256.P13383174210920397604

/-! ## A208256.P13152233962372881186

`A208258(A374007(n+1))`
-/

namespace A208256.P13152233962372881186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (A374007 (n + 1)).toNat

end

end A208256.P13152233962372881186

/-! ## A208256.P6449879396196900467

`A208258(eq[3, A219347(n)])`
-/

namespace A208256.P6449879396196900467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208256.P6449879396196900467

/-! ## A208256.P5971867138177848815

`A208258(eq[5, A193592(n)])`
-/

namespace A208256.P5971867138177848815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208256.P5971867138177848815

/-!
# A208257: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208257, there is no canonical definition to state claims against.
-/

/-! ## A208257.P9079608772279087544

`ceil(A184692(n+1)/2)`
-/

namespace A208257.P9079608772279087544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184692 (n + 1) : ℚ) / 2⌉

end

end A208257.P9079608772279087544

/-! ## A208257.P3899051007981202893

`round((A184692(n+1)+A057428(n))/2)`
-/

namespace A208257.P3899051007981202893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184692 (n + 1) + A057428 n : ℚ) / 2)

end

end A208257.P3899051007981202893

/-! ## A208257.P4060655092721415799

`A208258(A374008(n+1))`
-/

namespace A208257.P4060655092721415799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (A374008 (n + 1)).toNat

end

end A208257.P4060655092721415799

/-! ## A208257.P7321143014445260691

`A208258(eq[10, A185782(n+1)])`
-/

namespace A208257.P7321143014445260691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208257.P7321143014445260691

/-!
# A208258: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208258, there is no canonical definition to state claims against.
-/

/-! ## A208258.P12860079313547965470

`ceil(A184694(n+1)/2)`
-/

namespace A208258.P12860079313547965470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184694 (n + 1) : ℚ) / 2⌉

end

end A208258.P12860079313547965470

/-! ## A208258.P15454443506796672110

`round(A184694(n+1)/2)%A132753(n)`
-/

namespace A208258.P15454443506796672110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A184694 (n + 1) : ℚ) / 2)) (A132753 n)

end

end A208258.P15454443506796672110

/-! ## A208258.P16096610740315066654

`round(A184694(n+1)/2)+n*A000038(n)`
-/

namespace A208258.P16096610740315066654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184694 (n + 1) : ℚ) / 2) + (n : ℤ) * A000038 n

end

end A208258.P16096610740315066654

/-! ## A208258.P3216738880131209115

`2*n+round(A184694(n+1)/2)-A005843(n)`
-/

namespace A208258.P3216738880131209115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (SequenceMachineLib.roundAway ((A184694 (n + 1) : ℚ) / 2) - A005843 n)

end

end A208258.P3216738880131209115

/-! ## A208258.P9936686657214670507

`(A005408(n)-n-n)*round(A184694(n+1)/2)`
-/

namespace A208258.P9936686657214670507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) - (n : ℤ)) * SequenceMachineLib.roundAway ((A184694 (n + 1) : ℚ) / 2)

end

end A208258.P9936686657214670507

/-! ## A208258.P12663582305893988103

`A007318(∑[n])*round(A184694(n+1)/2)`
-/

namespace A208258.P12663582305893988103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A184694 (n + 1) : ℚ) / 2)

end

end A208258.P12663582305893988103

/-!
# A208259: Numbers starting and ending with digit 1.

The programs for A208259, there is no canonical definition to state claims against.
-/

/-! ## A208259.P15207645385272895248

`∪[A062332(n+1), A208260(n+1)]`
-/

namespace A208259.P15207645385272895248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208259.P15207645385272895248

/-!
# A208260: Nonprime numbers starting and ending with digit 1.

The programs for A208260, there is no canonical definition to state claims against.
-/

/-! ## A208260.P12260960515366101625

`∩[A053178(n+1), A208259(n+1)]`
-/

namespace A208260.P12260960515366101625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P12260960515366101625

/-! ## A208260.P12422879497998398211

`∩[A053178(n+1), A206286(n+1)]`
-/

namespace A208260.P12422879497998398211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P12422879497998398211

/-! ## A208260.P13678682740388397236

`∩[A206286(n+1), A208259(n+1)]`
-/

namespace A208260.P13678682740388397236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P13678682740388397236

/-! ## A208260.P12033577738879964503

`filter[A208259(n+1), A005171(#)]`
-/

namespace A208260.P12033577738879964503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A208260.P12033577738879964503

/-! ## A208260.P9727619247612073344

`filter[A208259(n+1), A292438(#)]`
-/

namespace A208260.P9727619247612073344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A208260.P9727619247612073344

/-! ## A208260.P8898725317746412378

`∩[A206286(n+1), A017281(n)]`
-/

namespace A208260.P8898725317746412378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P8898725317746412378

/-! ## A208260.P11648455885726026163

`∩[A208259(n+1), A100490(n)]`
-/

namespace A208260.P11648455885726026163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P11648455885726026163

/-! ## A208260.P15383575147157357817

`∩[A208259(n+1), A208271(n+1)]`
-/

namespace A208260.P15383575147157357817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208260.P15383575147157357817

/-!
# A208261: Nonprime numbers with all divisors starting and ending with digit 1.

The programs for A208261, there is no canonical definition to state claims against.
-/

/-! ## A208261.P11774767419867786335

`∩[A206288(n+1), A208262(n+1)]`
-/

namespace A208261.P11774767419867786335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208261.P11774767419867786335

/-! ## A208261.P1794937583257372037

`∩[A004615(n+1), A206288(n+1)]`
-/

namespace A208261.P1794937583257372037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208261.P1794937583257372037

/-! ## A208261.P7305299460794597158

`∩[A208260(n+1), A208262(n+1)]`
-/

namespace A208261.P7305299460794597158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208261.P7305299460794597158

/-! ## A208261.P13038440605536453832

`∩[A053178(n+1), A208262(n+1)]`
-/

namespace A208261.P13038440605536453832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208261.P13038440605536453832

/-! ## A208261.P18393243154494544060

`filter[A208262(n+1), A005171(#)]`
-/

namespace A208261.P18393243154494544060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A208261.P18393243154494544060

/-!
# A208262: Numbers with all divisors starting and ending with digit 1.

The programs for A208262, there is no canonical definition to state claims against.
-/

/-! ## A208262.P17015278977043746401

`∪[A062332(n+1), A208261(n+1)]`
-/

namespace A208262.P17015278977043746401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208262.P17015278977043746401

/-! ## A208262.P17503948329210203359

`∩[A004615(n+1), A206287(n+1)]`
-/

namespace A208262.P17503948329210203359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208262.P17503948329210203359

/-! ## A208262.P11086184490730963917

`∩[A016861(n), A306661(n+1)]`
-/

namespace A208262.P11086184490730963917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208262.P11086184490730963917

/-! ## A208262.P7380114085321692155

`∩[A017281(n), A306661(n+1)]`
-/

namespace A208262.P7380114085321692155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208262.P7380114085321692155

/-! ## A208262.P5507753216258005759

`∩[A187331(n), A306661(n+1)]`
-/

namespace A208262.P5507753216258005759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208262.P5507753216258005759

/-!
# A208263: Number of n X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208263, there is no canonical definition to state claims against.
-/

/-! ## A208263.P16104618936330378632

`A208269((n+1)²+n²)`
-/

namespace A208263.P16104618936330378632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 ((n + 1) ^ 2 + n ^ 2)

end

end A208263.P16104618936330378632

/-! ## A208263.P5620135108901300274

`or(1, A208269(Δ[A005900(n)]))`
-/

namespace A208263.P5620135108901300274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208269 (f1 (n + 1) - f1 n).toNat)

end

end A208263.P5620135108901300274

/-! ## A208263.P9403564099924902868

`record[A010052(2*n+1)*A208269(n+1)]`
-/

namespace A208263.P9403564099924902868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A208269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208263.P9403564099924902868

/-! ## A208263.P10150558442416186205

`A133130(n+1)/2`
-/

namespace A208263.P10150558442416186205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133130 (n + 1) : ℚ) / 2

end

end A208263.P10150558442416186205

/-! ## A208263.P11592207188934767624

`Δ[∑[A133130(n)]/2]`
-/

namespace A208263.P11592207188934767624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133130 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208263.P11592207188934767624

/-!
# A208264: Number of n X 3 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208264, the canonical program `A208264.P2236621306530031158` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208264 has offset 1).

The definition of A208264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208264.P9919901785816054150

`ogf((4+x-x^2)/(1-6x-3x^2+2x^3))`
-/

namespace A208264.P9919901785816054150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -1] [1, -6, -3, 2] n

end

end A208264.P9919901785816054150

namespace A208264

/-- `ogf((4+x-x^2)/(1-6x-3x^2+2x^3))` -/
def P9919901785816054150.Spec : Prop :=
  ∀ n, P9919901785816054150.a n = A208264 (n + 1)

end A208264

/-! ## A208264.P2236621306530031158

`6*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=25, a(2)=161`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208264

/-- `6*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P2236621306530031158.Spec : Prop :=
  ∀ n, P2236621306530031158.a n = A208264 (n + 1)

theorem P2236621306530031158.correct : P2236621306530031158.Spec := by
  intro n
  simp only [A208264, Nat.add_sub_cancel]

end A208264

/-! ## A208264.P12490497053031677589

`A133129(n+1)/2`
-/

namespace A208264.P12490497053031677589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133129 (n + 1) : ℚ) / 2

end

end A208264.P12490497053031677589

namespace A208264

/-- `A133129(n+1)/2` -/
def P12490497053031677589.Spec : Prop :=
  ∀ n, P12490497053031677589.a n = (A208264 (n + 1) : ℚ)

end A208264

/-! ## A208264.P10477524150653521525

`sqrt(A181214(2*(n+1)))/2`
-/

namespace A208264.P10477524150653521525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181214 (2 * (n + 1)) : ℝ) / 2

end

end A208264.P10477524150653521525

namespace A208264

/-- `sqrt(A181214(2*(n+1)))/2` -/
def P10477524150653521525.Spec : Prop :=
  ∀ n, P10477524150653521525.a n = (A208264 (n + 1) : ℝ)

end A208264

/-! ## A208264.P11994918783249364850

`A208269(∑[n+2]+4)`
-/

namespace A208264.P11994918783249364850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208264.P11994918783249364850

namespace A208264

/-- `A208269(∑[n+2]+4)` -/
def P11994918783249364850.Spec : Prop :=
  ∀ n, P11994918783249364850.a n = A208264 (n + 1)

end A208264

/-!
# A208265: Number of n X 4 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208265, there is no canonical definition to state claims against.
-/

/-! ## A208265.P830652128591455694

`A181239(n+1)/2`
-/

namespace A208265.P830652128591455694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181239 (n + 1) : ℚ) / 2

end

end A208265.P830652128591455694

/-! ## A208265.P10024557601977930253

`A208269(A374004(n+1))`
-/

namespace A208265.P10024557601977930253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A374004 (n + 1)).toNat

end

end A208265.P10024557601977930253

/-! ## A208265.P18046479350707828946

`A208269(A052905(n)+9)`
-/

namespace A208265.P18046479350707828946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A052905 n + 9).toNat

end

end A208265.P18046479350707828946

/-! ## A208265.P14186843395404238901

`A208269(A055999(n)+10)`
-/

namespace A208265.P14186843395404238901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A055999 n + 10).toNat

end

end A208265.P14186843395404238901

/-! ## A208265.P709944325027673247

`A208269(A167614(n+2)+1)`
-/

namespace A208265.P709944325027673247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A167614 (n + 2) + 1).toNat

end

end A208265.P709944325027673247

/-!
# A208266: Number of nX5 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208266, there is no canonical definition to state claims against.
-/

/-! ## A208266.P9785695969283315189

`A181240(n+1)/2`
-/

namespace A208266.P9785695969283315189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181240 (n + 1) : ℚ) / 2

end

end A208266.P9785695969283315189

/-! ## A208266.P13975409266721755838

`A208269(A374005(n+1))`
-/

namespace A208266.P13975409266721755838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A374005 (n + 1)).toNat

end

end A208266.P13975409266721755838

/-! ## A208266.P8798288515387917979

`A208269(A167499(n+3))`
-/

namespace A208266.P8798288515387917979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A167499 (n + 3)).toNat

end

end A208266.P8798288515387917979

/-! ## A208266.P16070848972893494691

`A208269(A056000(n)+15)`
-/

namespace A208266.P16070848972893494691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A056000 n + 15).toNat

end

end A208266.P16070848972893494691

/-! ## A208266.P15332580086025169700

`A208269(Δ[A264443(n)])`
-/

namespace A208266.P15332580086025169700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (f1 (n + 1) - f1 n).toNat

end

end A208266.P15332580086025169700

/-!
# A208267: Number of nX6 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208267, there is no canonical definition to state claims against.
-/

/-! ## A208267.P15012674464191332663

`A181241(n+1)/2`
-/

namespace A208267.P15012674464191332663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181241 (n + 1) : ℚ) / 2

end

end A208267.P15012674464191332663

/-! ## A208267.P2361965102168519165

`A208269(A374007(n+1))`
-/

namespace A208267.P2361965102168519165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A374007 (n + 1)).toNat

end

end A208267.P2361965102168519165

/-! ## A208267.P3152007126883266346

`A208269(A000217(n+5)+6)`
-/

namespace A208267.P3152007126883266346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A000217 (n + 5) + 6).toNat

end

end A208267.P3152007126883266346

/-! ## A208267.P11450586903032791946

`A208269(eq[7, A131818(n+1)])`
-/

namespace A208267.P11450586903032791946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208267.P11450586903032791946

/-! ## A208267.P3929859052575890406

`A208269(A052905(n+3))`
-/

namespace A208267.P3929859052575890406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A052905 (n + 3)).toNat

end

end A208267.P3929859052575890406

/-!
# A208268: Number of nX7 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208268, there is no canonical definition to state claims against.
-/

/-! ## A208268.P6989133153057401466

`A181242(n+1)/2`
-/

namespace A208268.P6989133153057401466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181242 (n + 1) : ℚ) / 2

end

end A208268.P6989133153057401466

/-! ## A208268.P3879779057657965195

`A208269(A374008(n+1))`
-/

namespace A208268.P3879779057657965195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A374008 (n + 1)).toNat

end

end A208268.P3879779057657965195

/-! ## A208268.P7865129843926567521

`A208269(eq[8, A131818(n+1)])`
-/

namespace A208268.P7865129843926567521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208268.P7865129843926567521

/-! ## A208268.P10212414897787344612

`A208269(A055999(n+4))`
-/

namespace A208268.P10212414897787344612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (A055999 (n + 4)).toNat

end

end A208268.P10212414897787344612

/-! ## A208268.P12850099196802505986

`A208269(eq[4, A219347(n)])`
-/

namespace A208268.P12850099196802505986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208268.P12850099196802505986

/-!
# A208269: T(n,k)=Number of nXk 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208269, there is no canonical definition to state claims against.
-/

/-! ## A208269.P4865080820834172319

`A181245(n+1)/2`
-/

namespace A208269.P4865080820834172319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181245 (n + 1) : ℚ) / 2

end

end A208269.P4865080820834172319

/-! ## A208269.P15330309683060328240

`floor(A181245(-xor(n, -1))/2)`
-/

namespace A208269.P15330309683060328240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181245 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A208269.P15330309683060328240

/-! ## A208269.P2212151129546329232

`ceil(A181245(2*n-(n-1))/2)`
-/

namespace A208269.P2212151129546329232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181245 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2⌉

end

end A208269.P2212151129546329232

/-! ## A208269.P9160295726819723039

`2^A008683(A003629(n+1))*A181245(n+1)`
-/

namespace A208269.P9160295726819723039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A181245 (n + 1) : ℚ)

end

end A208269.P9160295726819723039

/-! ## A208269.P10606052389063934635

`2^A008683(A006450(n+1))*A181245(n+1)`
-/

namespace A208269.P10606052389063934635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A181245 (n + 1) : ℚ)

end

end A208269.P10606052389063934635

/-!
# A208270: Primes containing a digit 1.

The programs for A208270, there is no canonical definition to state claims against.
-/

/-! ## A208270.P17654025563796544733

`p?[A239058(n+1)]`
-/

namespace A208270.P17654025563796544733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208270.P17654025563796544733

/-! ## A208270.P15059650577175601910

`p?[A092911(n+1)]`
-/

namespace A208270.P15059650577175601910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208270.P15059650577175601910

/-! ## A208270.P9913730371244385909

`p?[A092912(n+1)]`
-/

namespace A208270.P9913730371244385909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208270.P9913730371244385909

/-! ## A208270.P4097629463563817847

`p?[A062634(n+1)]`
-/

namespace A208270.P4097629463563817847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208270.P4097629463563817847

/-! ## A208270.P10439426664979206214

`∩[A004139(n+1), A062634(n+1)]`
-/

namespace A208270.P10439426664979206214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P10439426664979206214

/-! ## A208270.P13949784907902142387

`∩[A004139(n+1), A092911(n+1)]`
-/

namespace A208270.P13949784907902142387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P13949784907902142387

/-! ## A208270.P12554376413302968835

`∩[A004139(n+1), A092912(n+1)]`
-/

namespace A208270.P12554376413302968835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P12554376413302968835

/-! ## A208270.P6444960440931654068

`∩[A045319(n+1), A062634(n+1)]`
-/

namespace A208270.P6444960440931654068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P6444960440931654068

/-! ## A208270.P8409380251575695158

`∩[A065091(n+1), A092912(n+1)]`
-/

namespace A208270.P8409380251575695158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P8409380251575695158

/-! ## A208270.P8752063730614952631

`∩[A000040(n+1), A062634(n+1)]`
-/

namespace A208270.P8752063730614952631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P8752063730614952631

/-! ## A208270.P14952130213729459910

`∩[A000040(n+1), A092911(n+1)]`
-/

namespace A208270.P14952130213729459910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P14952130213729459910

/-! ## A208270.P18009576802665353908

`∩[A000040(n+1), A092912(n+1)]`
-/

namespace A208270.P18009576802665353908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P18009576802665353908

/-! ## A208270.P12295628531890881798

`∩[A000040(n+1), A239058(n+1)]`
-/

namespace A208270.P12295628531890881798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P12295628531890881798

/-! ## A208270.P13317297916152435343

`∩[A051948(n+1), A062634(n+1)]`
-/

namespace A208270.P13317297916152435343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P13317297916152435343

/-! ## A208270.P12549515405567937604

`∩[A053813(n+1), A062634(n+1)]`
-/

namespace A208270.P12549515405567937604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P12549515405567937604

/-! ## A208270.P5358690383164515354

`∩[A053577(n+1), A062634(n+1)]`
-/

namespace A208270.P5358690383164515354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P5358690383164515354

/-! ## A208270.P16524099471348942595

`∩[A053577(n+1), A092912(n+1)]`
-/

namespace A208270.P16524099471348942595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P16524099471348942595

/-! ## A208270.P13933705223455281888

`∩[A062634(n+1), A066191(n+1)]`
-/

namespace A208270.P13933705223455281888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208270.P13933705223455281888

/-! ## A208270.P956578729191850745

`record[A006530(A062634(n+2))]`
-/

namespace A208270.P956578729191850745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062634 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208270.P956578729191850745

/-! ## A208270.P8887044853505072203

`record[A006530(A092911(n+2))]`
-/

namespace A208270.P8887044853505072203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092911 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208270.P8887044853505072203

/-!
# A208271: Nonprime numbers containing a digit 1.

The programs for A208271, the canonical program `A208271.P9303695278166639527` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208271 has offset 1).

The definition of A208271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208271.P9303695278166639527

`filter[A011531(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208271

/-- `filter[A011531(n+1), A005171(#)]` -/
def P9303695278166639527.Spec : Prop :=
  ∀ n, P9303695278166639527.a n = A208271 (n + 1)

theorem P9303695278166639527.correct : P9303695278166639527.Spec := by
  intro n
  simp only [A208271, Nat.add_sub_cancel]

end A208271

/-! ## A208271.P17486675085286398680

`∩[A011531(n+1), A018252(n+1)]`
-/

namespace A208271.P17486675085286398680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P17486675085286398680

namespace A208271

/-- `∩[A011531(n+1), A018252(n+1)]` -/
def P17486675085286398680.Spec : Prop :=
  ∀ n, (P17486675085286398680.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P13945985840975843942

`∩[A011531(n+1), A141468(n+1)]`
-/

namespace A208271.P13945985840975843942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P13945985840975843942

namespace A208271

/-- `∩[A011531(n+1), A141468(n+1)]` -/
def P13945985840975843942.Spec : Prop :=
  ∀ n, (P13945985840975843942.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P11145663585496988178

`∩[A011531(n+1), A056653(n+1)]`
-/

namespace A208271.P11145663585496988178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P11145663585496988178

namespace A208271

/-- `∩[A011531(n+1), A056653(n+1)]` -/
def P11145663585496988178.Spec : Prop :=
  ∀ n, (P11145663585496988178.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P7621428482235119225

`∩[A011531(n+1), A065090(n+1)]`
-/

namespace A208271.P7621428482235119225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P7621428482235119225

namespace A208271

/-- `∩[A011531(n+1), A065090(n+1)]` -/
def P7621428482235119225.Spec : Prop :=
  ∀ n, (P7621428482235119225.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P10098423472514376816

`∩[A011531(n+1), A171581(n+1)]`
-/

namespace A208271.P10098423472514376816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P10098423472514376816

namespace A208271

/-- `∩[A011531(n+1), A171581(n+1)]` -/
def P10098423472514376816.Spec : Prop :=
  ∀ n, (P10098423472514376816.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P14720725749065501867

`∩[A011531(n+1), A173905(n+1)]`
-/

namespace A208271.P14720725749065501867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208271.P14720725749065501867

namespace A208271

/-- `∩[A011531(n+1), A173905(n+1)]` -/
def P14720725749065501867.Spec : Prop :=
  ∀ n, (P14720725749065501867.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P13290404455886868628

`lt[A004176(n), A072480(n)]`
-/

namespace A208271.P13290404455886868628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208271.P13290404455886868628

namespace A208271

/-- `lt[A004176(n), A072480(n)]` -/
def P13290404455886868628.Spec : Prop :=
  ∀ n, (P13290404455886868628.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P449011560458372843

`lt[A055671(n), A268643(n)]`
-/

namespace A208271.P449011560458372843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208271.P449011560458372843

namespace A208271

/-- `lt[A055671(n), A268643(n)]` -/
def P449011560458372843.Spec : Prop :=
  ∀ n, (P449011560458372843.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P7419071829979627830

`lt[A055672(n), A268643(n)]`
-/

namespace A208271.P7419071829979627830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208271.P7419071829979627830

namespace A208271

/-- `lt[A055672(n), A268643(n)]` -/
def P7419071829979627830.Spec : Prop :=
  ∀ n, (P7419071829979627830.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P5165169581917669520

`eq[n, A381527(A113638(n))]`
-/

namespace A208271.P5165169581917669520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 (A113638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208271.P5165169581917669520

namespace A208271

/-- `eq[n, A381527(A113638(n))]` -/
def P5165169581917669520.Spec : Prop :=
  ∀ n, (P5165169581917669520.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P7792982060464018045

`eq[A282462(n), A381527(n)]`
-/

namespace A208271.P7792982060464018045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208271.P7792982060464018045

namespace A208271

/-- `eq[A282462(n), A381527(n)]` -/
def P7792982060464018045.Spec : Prop :=
  ∀ n, (P7792982060464018045.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P10188441587905223893

`eq[A113520(n+1), A381527(n)]`
-/

namespace A208271.P10188441587905223893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A208271.P10188441587905223893

namespace A208271

/-- `eq[A113520(n+1), A381527(n)]` -/
def P10188441587905223893.Spec : Prop :=
  ∀ n, (P10188441587905223893.a n : ℤ) = A208271 (n + 1)

end A208271

/-! ## A208271.P13482124961175375620

`eq[n, A381527(A130891(n))]`
-/

namespace A208271.P13482124961175375620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 (A130891 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208271.P13482124961175375620

namespace A208271

/-- `eq[n, A381527(A130891(n))]` -/
def P13482124961175375620.Spec : Prop :=
  ∀ n, (P13482124961175375620.a n : ℤ) = A208271 (n + 1)

end A208271

/-!
# A208272: Primes containing a digit 2.

The programs for A208272, there is no canonical definition to state claims against.
-/

/-! ## A208272.P4964242077964432977

`p?[A062653(n+1)]`
-/

namespace A208272.P4964242077964432977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208272.P4964242077964432977

/-! ## A208272.P11194019523333853489

`∩[A015919(n+1), A062653(n+1)]`
-/

namespace A208272.P11194019523333853489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P11194019523333853489

/-! ## A208272.P7520968934704829869

`∩[A062653(n+1), A339879(n+1)]`
-/

namespace A208272.P7520968934704829869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P7520968934704829869

/-! ## A208272.P4906059440890948967

`A000040(eq[2, A179335(n+1)]+1)`
-/

namespace A208272.P4906059440890948967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208272.P4906059440890948967

/-! ## A208272.P16375907823942264071

`∩[A000040(n+1), A062653(n+1)]`
-/

namespace A208272.P16375907823942264071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P16375907823942264071

/-! ## A208272.P15157458259372595991

`∩[A045319(n+1), A062653(n+1)]`
-/

namespace A208272.P15157458259372595991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P15157458259372595991

/-! ## A208272.P11767254628288480998

`∩[A045344(n+1), A062653(n+1)]`
-/

namespace A208272.P11767254628288480998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P11767254628288480998

/-! ## A208272.P3921166978767134116

`∩[A008578(n+1), A062653(n+1)]`
-/

namespace A208272.P3921166978767134116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P3921166978767134116

/-! ## A208272.P1294440613322854474

`∩[A062653(n+1), A182986(n+1)]`
-/

namespace A208272.P1294440613322854474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P1294440613322854474

/-! ## A208272.P13188254701486232572

`∩[A033946(n+1), A062653(n+1)]`
-/

namespace A208272.P13188254701486232572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P13188254701486232572

/-! ## A208272.P9745311990834665446

`∩[A046022(n+1), A062653(n+1)]`
-/

namespace A208272.P9745311990834665446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P9745311990834665446

/-! ## A208272.P2651213183307289953

`∩[A051948(n+1), A062653(n+1)]`
-/

namespace A208272.P2651213183307289953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P2651213183307289953

/-! ## A208272.P15653690837681988416

`∩[A053813(n+1), A062653(n+1)]`
-/

namespace A208272.P15653690837681988416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P15653690837681988416

/-! ## A208272.P7850940422066007023

`∩[A062653(n+1), A062972(n+1)]`
-/

namespace A208272.P7850940422066007023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P7850940422066007023

/-! ## A208272.P17191572288838395739

`∩[A062653(n+1), A066050(n+1)]`
-/

namespace A208272.P17191572288838395739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P17191572288838395739

/-! ## A208272.P1979560221089391189

`∩[A062653(n+1), A067126(n+1)]`
-/

namespace A208272.P1979560221089391189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P1979560221089391189

/-! ## A208272.P3470223508468981510

`∩[A060634(n+1), A062653(n+1)]`
-/

namespace A208272.P3470223508468981510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P3470223508468981510

/-! ## A208272.P13754438646132773068

`∩[A062653(n+1), A067133(n+1)]`
-/

namespace A208272.P13754438646132773068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P13754438646132773068

/-! ## A208272.P9192356359036923034

`∩[A174090(n+1), A062653(n+1)]`
-/

namespace A208272.P9192356359036923034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208272.P9192356359036923034

/-!
# A208273: Composite numbers containing a digit 2.

The programs for A208273, the canonical program `A208273.P479560889702569818` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208273 has offset 1).

The definition of A208273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208273.P479560889702569818

`filter[A011532(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208273

/-- `filter[A011532(n+1), A005171(#)]` -/
def P479560889702569818.Spec : Prop :=
  ∀ n, P479560889702569818.a n = A208273 (n + 1)

theorem P479560889702569818.correct : P479560889702569818.Spec := by
  intro n
  simp only [A208273, Nat.add_sub_cancel]

end A208273

/-! ## A208273.P10236591331280395391

`filter[A011532(n+1), A066247(#)]`
-/

namespace A208273.P10236591331280395391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A208273.P10236591331280395391

namespace A208273

/-- `filter[A011532(n+1), A066247(#)]` -/
def P10236591331280395391.Spec : Prop :=
  ∀ n, P10236591331280395391.a n = A208273 (n + 1)

end A208273

/-! ## A208273.P12716432591399363474

`∩[A002808(n+1), A011532(n+1)]`
-/

namespace A208273.P12716432591399363474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P12716432591399363474

namespace A208273

/-- `∩[A002808(n+1), A011532(n+1)]` -/
def P12716432591399363474.Spec : Prop :=
  ∀ n, (P12716432591399363474.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P1252296559494582880

`∩[A011532(n+1), A018252(n+1)]`
-/

namespace A208273.P1252296559494582880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P1252296559494582880

namespace A208273

/-- `∩[A011532(n+1), A018252(n+1)]` -/
def P1252296559494582880.Spec : Prop :=
  ∀ n, (P1252296559494582880.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P9912521371506106003

`∩[A011532(n+1), A141468(n+1)]`
-/

namespace A208273.P9912521371506106003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P9912521371506106003

namespace A208273

/-- `∩[A011532(n+1), A141468(n+1)]` -/
def P9912521371506106003.Spec : Prop :=
  ∀ n, (P9912521371506106003.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P12832040388101476897

`∩[A011532(n+1), A117815(n+1)]`
-/

namespace A208273.P12832040388101476897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P12832040388101476897

namespace A208273

/-- `∩[A011532(n+1), A117815(n+1)]` -/
def P12832040388101476897.Spec : Prop :=
  ∀ n, (P12832040388101476897.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P11906638847362528752

`∩[A011532(n+1), A056653(n+1)]`
-/

namespace A208273.P11906638847362528752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P11906638847362528752

namespace A208273

/-- `∩[A011532(n+1), A056653(n+1)]` -/
def P11906638847362528752.Spec : Prop :=
  ∀ n, (P11906638847362528752.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P10772966307421675563

`∩[A011532(n+1), A062973(n+1)]`
-/

namespace A208273.P10772966307421675563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P10772966307421675563

namespace A208273

/-- `∩[A011532(n+1), A062973(n+1)]` -/
def P10772966307421675563.Spec : Prop :=
  ∀ n, (P10772966307421675563.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P17528722176351144884

`∩[A011532(n+1), A176423(n+1)]`
-/

namespace A208273.P17528722176351144884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208273.P17528722176351144884

namespace A208273

/-- `∩[A011532(n+1), A176423(n+1)]` -/
def P17528722176351144884.Spec : Prop :=
  ∀ n, (P17528722176351144884.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P10945683518162774208

`lt[A055671(n), A316863(n)]`
-/

namespace A208273.P10945683518162774208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208273.P10945683518162774208

namespace A208273

/-- `lt[A055671(n), A316863(n)]` -/
def P10945683518162774208.Spec : Prop :=
  ∀ n, (P10945683518162774208.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P7426669053212251804

`lt[A055672(n), A316863(n)]`
-/

namespace A208273.P7426669053212251804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A208273.P7426669053212251804

namespace A208273

/-- `lt[A055672(n), A316863(n)]` -/
def P7426669053212251804.Spec : Prop :=
  ∀ n, (P7426669053212251804.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P4825840734592038712

`eq[2, A211396(n)+A055671(n)]`
-/

namespace A208273.P4825840734592038712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n + A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208273.P4825840734592038712

namespace A208273

/-- `eq[2, A211396(n)+A055671(n)]` -/
def P4825840734592038712.Spec : Prop :=
  ∀ n, (P4825840734592038712.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P16178563173772041554

`eq[2, A211396(n)+A055672(n)]`
-/

namespace A208273.P16178563173772041554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n + A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208273.P16178563173772041554

namespace A208273

/-- `eq[2, A211396(n)+A055672(n)]` -/
def P16178563173772041554.Spec : Prop :=
  ∀ n, (P16178563173772041554.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P11232604284617711603

`eq[2, A211396(n)%A092976(n)]`
-/

namespace A208273.P11232604284617711603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211396 n) (A092976 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208273.P11232604284617711603

namespace A208273

/-- `eq[2, A211396(n)%A092976(n)]` -/
def P11232604284617711603.Spec : Prop :=
  ∀ n, (P11232604284617711603.a n : ℤ) = A208273 (n + 1)

end A208273

/-! ## A208273.P13446267328587272771

`eq[2, A339579(n+1)+A211396(n)]`
-/

namespace A208273.P13446267328587272771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208273.P13446267328587272771

namespace A208273

/-- `eq[2, A339579(n+1)+A211396(n)]` -/
def P13446267328587272771.Spec : Prop :=
  ∀ n, (P13446267328587272771.a n : ℤ) = A208273 (n + 1)

end A208273

/-!
# A208274: Expansion of phi(q) / phi(q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A208274, there is no canonical definition to state claims against.
-/

/-! ## A208274.P14412531617739139290

`(-1)^n*A208604(n)`
-/

namespace A208274.P14412531617739139290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208604 n

end

end A208274.P14412531617739139290

/-! ## A208274.P7844676515852651679

`A127391(n)+A000007(n)`
-/

namespace A208274.P7844676515852651679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n + A000007 n

end

end A208274.P7844676515852651679

/-! ## A208274.P5112004115999920098

`A000038(n)-A208604(n)`
-/

namespace A208274.P5112004115999920098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A208604 n

end

end A208274.P5112004115999920098

/-! ## A208274.P6321198082494818937

`A208604(n)*A219977(n)`
-/

namespace A208274.P6321198082494818937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n * A219977 n

end

end A208274.P6321198082494818937

/-! ## A208274.P7226409546472307824

`A208604(n)*A280193(n)`
-/

namespace A208274.P7226409546472307824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n * A280193 n

end

end A208274.P7226409546472307824

/-! ## A208274.P3778404841713852168

`A208604(n)*A323191(n)`
-/

namespace A208274.P3778404841713852168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n * A323191 n

end

end A208274.P3778404841713852168

/-! ## A208274.P17391532115622254078

`A127391(n)+1-A057427(n)`
-/

namespace A208274.P17391532115622254078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n + (1 - A057427 n)

end

end A208274.P17391532115622254078

/-! ## A208274.P1416344784502541338

`A208604(n)*A309873(n+1)`
-/

namespace A208274.P1416344784502541338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n * A309873 (n + 1)

end

end A208274.P1416344784502541338

/-! ## A208274.P13139953660864406357

`A208604(n)+2*A127391(n)`
-/

namespace A208274.P13139953660864406357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n + 2 * A127391 n

end

end A208274.P13139953660864406357

/-! ## A208274.P5388785098762536346

`2*A000007(n)-A208604(n)`
-/

namespace A208274.P5388785098762536346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A208604 n

end

end A208274.P5388785098762536346

/-! ## A208274.P14940346634233154113

`A127391(n)+A061142(n+1)%2`
-/

namespace A208274.P14940346634233154113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n + Int.tmod (A061142 (n + 1)) 2

end

end A208274.P14940346634233154113

/-! ## A208274.P14877439507820418399

`A000122(A000122(n)+n)-A208604(n)`
-/

namespace A208274.P14877439507820418399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A208604 n

end

end A208274.P14877439507820418399

/-! ## A208274.P1596959183087843757

`A127391(n)+A010054(n+1)*A010054(n)`
-/

namespace A208274.P1596959183087843757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n + A010054 (n + 1) * A010054 n

end

end A208274.P1596959183087843757

/-! ## A208274.P5923857726600260172

`A208933(n)+A208933(n)-A212318(n)`
-/

namespace A208274.P5923857726600260172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 n + (A208933 n - A212318 n)

end

end A208274.P5923857726600260172

/-! ## A208274.P17763686046449551589

`A134746(2*n)+A127391(n)`
-/

namespace A208274.P17763686046449551589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (2 * n) + A127391 n

end

end A208274.P17763686046449551589

/-! ## A208274.P1540253234544996976

`A112128(n)*A208604(n)/A208933(n)`
-/

namespace A208274.P1540253234544996976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 n * A208604 n : ℚ) / (A208933 n : ℚ)

end

end A208274.P1540253234544996976

/-!
# A208275: The number of partitions of the set [n] where each element can be colored 1 or 2 avoiding the patterns 1^11^1 and 1^22^1 in the pattern sense.

The programs for A208275, there is no canonical definition to state claims against.
-/

/-! ## A208275.P5824045291919825680

`A081124(n+1)+A081124(n)-A084261(n)`
-/

namespace A208275.P5824045291919825680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081124 (n + 1) + (A081124 n - A084261 n)

end

end A208275.P5824045291919825680

/-! ## A208275.P15813656119138870239

`∑[A001462(A278391(n))+1]`
-/

namespace A208275.P15813656119138870239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A278391 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208275.P15813656119138870239

/-!
# A208276: Number of Poulet numbers (or pseudoprimes to base 2, A001567) less than 2^n.

The programs for A208276, there is no canonical definition to state claims against.
-/

/-! ## A208276.P12967563170656369347

`A225005(n+1)+∑[A252943(A028310(n))]`
-/

namespace A208276.P12967563170656369347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252943 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225005 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208276.P12967563170656369347

/-! ## A208276.P8847120361719842018

`A225005(n+1)+∑[A252943(n+1)]-A252943(n+1)`
-/

namespace A208276.P8847120361719842018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225005 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A252943 (n + 1))

end

end A208276.P8847120361719842018

/-!
# A208278: Row sums of Pascal's triangle mod 10 (A008975).

The programs for A208278, there is no canonical definition to state claims against.
-/

/-! ## A208278.P9199261000027640323

`∑{digits}[A059734(n), #]`
-/

namespace A208278.P9199261000027640323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A208278.P9199261000027640323

/-!
# A208279: Central terms of Pascal's triangle mod 10 (A008975).

The programs for A208279, the canonical program `A208279.P14773634659230298317` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208279 has offset 0).

The definition of A208279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208279.P2637010411247692063

`A152669(A146951(n))`
-/

namespace A208279.P2637010411247692063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (A146951 n).toNat

end

end A208279.P2637010411247692063

namespace A208279

/-- `A152669(A146951(n))` -/
def P2637010411247692063.Spec : Prop :=
  ∀ n, P2637010411247692063.a n = A208279 n

end A208279

/-! ## A208279.P14773634659230298317

`A053214(A008587(n))%10`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A208279

/-- `A053214(A008587(n))%10` -/
def P14773634659230298317.Spec : Prop :=
  ∀ n, P14773634659230298317.a n = A208279 n

theorem P14773634659230298317.correct : P14773634659230298317.Spec := by
  intro n
  simp only [A208279]

end A208279

/-! ## A208279.P9189650318753793622

`A152669(A297469(n)-1)`
-/

namespace A208279.P9189650318753793622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (A297469 n - 1).toNat

end

end A208279.P9189650318753793622

namespace A208279

/-- `A152669(A297469(n)-1)` -/
def P9189650318753793622.Spec : Prop :=
  ∀ n, P9189650318753793622.a n = A208279 n

end A208279

/-! ## A208279.P12381601869527990283

`A010879((n+1)*A152669(n))`
-/

namespace A208279.P12381601869527990283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n + 1 : ℤ) * A152669 n).toNat

end

end A208279.P12381601869527990283

namespace A208279

/-- `A010879((n+1)*A152669(n))` -/
def P12381601869527990283.Spec : Prop :=
  ∀ n, P12381601869527990283.a n = A208279 n

end A208279

/-! ## A208279.P7508711914571183105

`A152669(25*n)`
-/

namespace A208279.P7508711914571183105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152669 (25 * n)

end

end A208279.P7508711914571183105

namespace A208279

/-- `A152669(25*n)` -/
def P7508711914571183105.Spec : Prop :=
  ∀ n, P7508711914571183105.a n = A208279 n

end A208279

/-! ## A208279.P14478897323148264096

`A000984(n)%10`
-/

namespace A208279.P14478897323148264096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 n) 10

end

end A208279.P14478897323148264096

namespace A208279

/-- `A000984(n)%10` -/
def P14478897323148264096.Spec : Prop :=
  ∀ n, P14478897323148264096.a n = A208279 n

end A208279

/-! ## A208279.P11963761184326608502

`((n+1)*A000108(n))%10`
-/

namespace A208279.P11963761184326608502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000108 n) 10

end

end A208279.P11963761184326608502

namespace A208279

/-- `((n+1)*A000108(n))%10` -/
def P11963761184326608502.Spec : Prop :=
  ∀ n, P11963761184326608502.a n = A208279 n

end A208279

/-! ## A208279.P18429671030461985479

`A001405(A004277(n))%10`
-/

namespace A208279.P18429671030461985479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (A004277 n).toNat) 10

end

end A208279.P18429671030461985479

namespace A208279

/-- `A001405(A004277(n))%10` -/
def P18429671030461985479.Spec : Prop :=
  ∀ n, P18429671030461985479.a n = A208279 n

end A208279

/-! ## A208279.P7732495765071194980

`(A028329(n)/2)%10`
-/

namespace A208279.P7732495765071194980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028329 n : ℚ) / 2)) 10

end

end A208279.P7732495765071194980

namespace A208279

/-- `(A028329(n)/2)%10` -/
def P7732495765071194980.Spec : Prop :=
  ∀ n, P7732495765071194980.a n = A208279 n

end A208279

/-! ## A208279.P13328702822380030896

`round(A100320(n)/2)%10`
-/

namespace A208279.P13328702822380030896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A100320 n : ℚ) / 2)) 10

end

end A208279.P13328702822380030896

namespace A208279

/-- `round(A100320(n)/2)%10` -/
def P13328702822380030896.Spec : Prop :=
  ∀ n, P13328702822380030896.a n = A208279 n

end A208279

/-! ## A208279.P14188518540451395646

`A050490(n)%10`
-/

namespace A208279.P14188518540451395646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050490 n) 10

end

end A208279.P14188518540451395646

namespace A208279

/-- `A050490(n)%10` -/
def P14188518540451395646.Spec : Prop :=
  ∀ n, P14188518540451395646.a n = A208279 n

end A208279

/-! ## A208279.P11206734667374977863

`C(2*n, n)%10`
-/

namespace A208279.P11206734667374977863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n % 10

end

end A208279.P11206734667374977863

namespace A208279

/-- `C(2*n, n)%10` -/
def P11206734667374977863.Spec : Prop :=
  ∀ n, (P11206734667374977863.a n : ℤ) = A208279 n

end A208279

/-! ## A208279.P10225942982341915797

`record[C(n, A064680(n))]%10`
-/

namespace A208279.P10225942982341915797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A064680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % 10

end

end A208279.P10225942982341915797

namespace A208279

/-- `record[C(n, A064680(n))]%10` -/
def P10225942982341915797.Spec : Prop :=
  ∀ n, (P10225942982341915797.a n : ℤ) = A208279 n

end A208279

/-! ## A208279.P6319309630743185287

`record[C(n, gcd(n, A000217(n)))]%10`
-/

namespace A208279.P6319309630743185287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.gcd (n : ℤ) (A000217 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % 10

end

end A208279.P6319309630743185287

namespace A208279

/-- `record[C(n, gcd(n, A000217(n)))]%10` -/
def P6319309630743185287.Spec : Prop :=
  ∀ n, (P6319309630743185287.a n : ℤ) = A208279 n

end A208279

/-!
# A208282: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208282, there is no canonical definition to state claims against.
-/

/-! ## A208282.P7989364459914630746

`A208287(∑[4*n]+1)`
-/

namespace A208282.P7989364459914630746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208282.P7989364459914630746

/-! ## A208282.P1997975619267759527

`lcm(2, A208287(A001844(n)))`
-/

namespace A208282.P1997975619267759527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208287 (A001844 n).toNat)

end

end A208282.P1997975619267759527

/-! ## A208282.P14779925358039034396

`record[gcd(A114327(n), A208287(n+1))]`
-/

namespace A208282.P14779925358039034396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208287 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208282.P14779925358039034396

/-! ## A208282.P4618139480302138532

`gcd(A000038(n), A208287(A001844(n)))`
-/

namespace A208282.P4618139480302138532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208287 (A001844 n).toNat)

end

end A208282.P4618139480302138532

/-! ## A208282.P15228116857479372255

`A014963(10*(n+1))*A208287(A001844(n))`
-/

namespace A208282.P15228116857479372255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A208287 (A001844 n).toNat

end

end A208282.P15228116857479372255

/-!
# A208283: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208283, the canonical program `A208283.P14809712038711706662` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208283 has offset 1).

The definition of A208283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208283.P4670047082586160410

`4/3*(n+1)^4+10*(n+1)^3+2/3*(n+1)²-2*(n+1)`
-/

namespace A208283.P4670047082586160410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * ((n + 1) ^ 4 : ℚ) + (10 * (n + 1) ^ 3 : ℚ) + (2 : ℚ) / 3 * ((n + 1) ^ 2 : ℚ) - (2 * (n + 1) : ℚ)

end

end A208283.P4670047082586160410

namespace A208283

/-- `4/3*(n+1)^4+10*(n+1)^3+2/3*(n+1)²-2*(n+1)` -/
def P4670047082586160410.Spec : Prop :=
  ∀ n, P4670047082586160410.a n = (A208283 (n + 1) : ℚ)

end A208283

/-! ## A208283.P15923818928340868899

`2*(n+1)*sqrt(A207701(n+1))`
-/

namespace A208283.P15923818928340868899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℝ) * Real.sqrt (A207701 (n + 1) : ℝ)

end

end A208283.P15923818928340868899

namespace A208283

/-- `2*(n+1)*sqrt(A207701(n+1))` -/
def P15923818928340868899.Spec : Prop :=
  ∀ n, P15923818928340868899.a n = (A208283 (n + 1) : ℝ)

end A208283

/-! ## A208283.P14809712038711706662

`2*(n+1)*∑[A017569(n)+A005893(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208283

/-- `2*(n+1)*∑[A017569(n)+A005893(n)]` -/
def P14809712038711706662.Spec : Prop :=
  ∀ n, P14809712038711706662.a n = A208283 (n + 1)

theorem P14809712038711706662.correct : P14809712038711706662.Spec := by
  intro n
  simp only [A208283, Nat.add_sub_cancel]

end A208283

/-! ## A208283.P8916965005428994024

`A086113(n+1)/A207399(n+1)*A207700(n+1)`
-/

namespace A208283.P8916965005428994024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A207399 (n + 1) : ℚ) * (A207700 (n + 1) : ℚ)

end

end A208283.P8916965005428994024

namespace A208283

/-- `A086113(n+1)/A207399(n+1)*A207700(n+1)` -/
def P8916965005428994024.Spec : Prop :=
  ∀ n, P8916965005428994024.a n = (A208283 (n + 1) : ℚ)

end A208283

/-! ## A208283.P9641439102024715003

`A086113(n+1)/A207700(n+1)*A207701(n+1)`
-/

namespace A208283.P9641439102024715003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A207700 (n + 1) : ℚ) * (A207701 (n + 1) : ℚ)

end

end A208283.P9641439102024715003

namespace A208283

/-- `A086113(n+1)/A207700(n+1)*A207701(n+1)` -/
def P9641439102024715003.Spec : Prop :=
  ∀ n, P9641439102024715003.a n = (A208283 (n + 1) : ℚ)

end A208283

/-! ## A208283.P15529549227231666849

`sqrt(A207701(n+1))*Δ[A002378(n)]`
-/

namespace A208283.P15529549227231666849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207701 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A208283.P15529549227231666849

namespace A208283

/-- `sqrt(A207701(n+1))*Δ[A002378(n)]` -/
def P15529549227231666849.Spec : Prop :=
  ∀ n, P15529549227231666849.a n = (A208283 (n + 1) : ℝ)

end A208283

/-! ## A208283.P14990852776069994692

`sqrt(A207701(n+1))*Δ[A027689(n)]`
-/

namespace A208283.P14990852776069994692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207701 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A208283.P14990852776069994692

namespace A208283

/-- `sqrt(A207701(n+1))*Δ[A027689(n)]` -/
def P14990852776069994692.Spec : Prop :=
  ∀ n, P14990852776069994692.a n = (A208283 (n + 1) : ℝ)

end A208283

/-! ## A208283.P3248072659068434784

`sqrt(A207701(n+1))*Δ[A027691(n)]`
-/

namespace A208283.P3248072659068434784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207701 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A208283.P3248072659068434784

namespace A208283

/-- `sqrt(A207701(n+1))*Δ[A027691(n)]` -/
def P3248072659068434784.Spec : Prop :=
  ∀ n, P3248072659068434784.a n = (A208283 (n + 1) : ℝ)

end A208283

/-! ## A208283.P17701547887241300858

`(A005900(n)+Δ[A050409(n)])*2*(n+1)`
-/

namespace A208283.P17701547887241300858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005900 n + (f1 (n + 1) - f1 n)) * (2 * (n + 1) : ℤ)

end

end A208283.P17701547887241300858

namespace A208283

/-- `(A005900(n)+Δ[A050409(n)])*2*(n+1)` -/
def P17701547887241300858.Spec : Prop :=
  ∀ n, P17701547887241300858.a n = A208283 (n + 1)

end A208283

/-! ## A208283.P18267127746422504785

`A016742(n+1)/A086113(n+1)*A207700(n+1)`
-/

namespace A208283.P18267127746422504785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016742 (n + 1) : ℚ) / (A086113 (n + 1) : ℚ) * (A207700 (n + 1) : ℚ)

end

end A208283.P18267127746422504785

namespace A208283

/-- `A016742(n+1)/A086113(n+1)*A207700(n+1)` -/
def P18267127746422504785.Spec : Prop :=
  ∀ n, P18267127746422504785.a n = (A208283 (n + 1) : ℚ)

end A208283

/-! ## A208283.P8298528994559169680

`(n+1)*A026057(2*n+3)`
-/

namespace A208283.P8298528994559169680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026057 (2 * n + 3)

end

end A208283.P8298528994559169680

namespace A208283

/-- `(n+1)*A026057(2*n+3)` -/
def P8298528994559169680.Spec : Prop :=
  ∀ n, P8298528994559169680.a n = A208283 (n + 1)

end A208283

/-!
# A208284: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208284, the canonical program `A208284.P8911225460470042451` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208284 has offset 1).

The definition of A208284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208284.P8911225460470042451

`5/6*(n+1)^5+9*(n+1)^4+91/6*(n+1)^3-9*(n+1)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208284

/-- `5/6*(n+1)^5+9*(n+1)^4+91/6*(n+1)^3-9*(n+1)²` -/
def P8911225460470042451.Spec : Prop :=
  ∀ n, P8911225460470042451.a n = (A208284 (n + 1) : ℚ)

end A208284

/-! ## A208284.P13662643950593894285

`A086113(n+1)/A207700(n+1)*A207702(n+1)`
-/

namespace A208284.P13662643950593894285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A207700 (n + 1) : ℚ) * (A207702 (n + 1) : ℚ)

end

end A208284.P13662643950593894285

namespace A208284

/-- `A086113(n+1)/A207700(n+1)*A207702(n+1)` -/
def P13662643950593894285.Spec : Prop :=
  ∀ n, P13662643950593894285.a n = (A208284 (n + 1) : ℚ)

end A208284

/-! ## A208284.P14100476416643654062

`A207702(n+1)/A207701(n+1)*A208283(n+1)`
-/

namespace A208284.P14100476416643654062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207702 (n + 1) : ℚ) / (A207701 (n + 1) : ℚ) * (A208283 (n + 1) : ℚ)

end

end A208284.P14100476416643654062

namespace A208284

/-- `A207702(n+1)/A207701(n+1)*A208283(n+1)` -/
def P14100476416643654062.Spec : Prop :=
  ∀ n, P14100476416643654062.a n = (A208284 (n + 1) : ℚ)

end A208284

/-! ## A208284.P4831693928213781158

`A208287(A046691(n+3))`
-/

namespace A208284.P4831693928213781158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A046691 (n + 3)).toNat

end

end A208284.P4831693928213781158

namespace A208284

/-- `A208287(A046691(n+3))` -/
def P4831693928213781158.Spec : Prop :=
  ∀ n, P4831693928213781158.a n = A208284 (n + 1)

end A208284

/-! ## A208284.P3648004698566378676

`A208287(Δ[A023545(n+1)])`
-/

namespace A208284.P3648004698566378676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (f1 (n + 1) - f1 n).toNat

end

end A208284.P3648004698566378676

namespace A208284

/-- `A208287(Δ[A023545(n+1)])` -/
def P3648004698566378676.Spec : Prop :=
  ∀ n, P3648004698566378676.a n = A208284 (n + 1)

end A208284

/-!
# A208285: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208285, there is no canonical definition to state claims against.
-/

/-! ## A208285.P8017717954346016115

`A208287(A052905(n+3))`
-/

namespace A208285.P8017717954346016115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A052905 (n + 3)).toNat

end

end A208285.P8017717954346016115

/-! ## A208285.P5217179268587993637

`A208287(A055999(n+3)+1)`
-/

namespace A208285.P5217179268587993637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A055999 (n + 3) + 1).toNat

end

end A208285.P5217179268587993637

/-! ## A208285.P1972859223800026196

`A208287(A000217(n+6)-5)`
-/

namespace A208285.P1972859223800026196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 6) - 5).toNat

end

end A208285.P1972859223800026196

/-! ## A208285.P2232319715958239628

`A208287(lt[A208287(n+5), n])`
-/

namespace A208285.P2232319715958239628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A208285.P2232319715958239628

/-! ## A208285.P5795609913125328951

`A208287(Δ[A023545(n+2)]-1)`
-/

namespace A208285.P5795609913125328951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (f1 (n + 1) - f1 n - 1).toNat

end

end A208285.P5795609913125328951

/-!
# A208286: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208286, there is no canonical definition to state claims against.
-/

/-! ## A208286.P9973707764075024867

`A208287(A055999(n+4))`
-/

namespace A208286.P9973707764075024867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A055999 (n + 4)).toNat

end

end A208286.P9973707764075024867

/-! ## A208286.P15489716082649402677

`A208287(A000217(n+7)-6)`
-/

namespace A208286.P15489716082649402677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 7) - 6).toNat

end

end A208286.P15489716082649402677

/-! ## A208286.P919792628382998064

`A208287(A000124(n+7)-7)`
-/

namespace A208286.P919792628382998064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000124 (n + 7) - 7).toNat

end

end A208286.P919792628382998064

/-! ## A208286.P6232532586855116978

`A208287(A145018(n+7)+n-3)`
-/

namespace A208286.P6232532586855116978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A145018 (n + 7) + ((n : ℤ) - 3)).toNat

end

end A208286.P6232532586855116978

/-! ## A208286.P2633455569363372526

`A208287(A005408(n+3)+A000217(n+5))`
-/

namespace A208286.P2633455569363372526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A208286.P2633455569363372526

/-!
# A208287: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208287, there is no canonical definition to state claims against.
-/

/-! ## A208287.P3279570496232302641

`A207254(A038722(n+1))%A139452(n+1)`
-/

namespace A208287.P3279570496232302641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207254 (A038722 (n + 1)).toNat) (A139452 (n + 1))

end

end A208287.P3279570496232302641

/-! ## A208287.P9355722758849101665

`A014963(A158117(n))*A207254(A038722(n+1))`
-/

namespace A208287.P9355722758849101665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158117 n).toNat * A207254 (A038722 (n + 1)).toNat

end

end A208287.P9355722758849101665

/-! ## A208287.P1710293532360609456

`A207254(A038722(n+1))^A007318(A001263(n+1))`
-/

namespace A208287.P1710293532360609456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207254 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 (A001263 (n + 1)).toNat : ℤ)

end

end A208287.P1710293532360609456

/-! ## A208287.P8999903862401311380

`A207453(n+1)+A184944(A109187(n))`
-/

namespace A208287.P8999903862401311380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207453 (n + 1) + A184944 (A109187 n).toNat

end

end A208287.P8999903862401311380

/-!
# A208288: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208288, there is no canonical definition to state claims against.
-/

/-! ## A208288.P220657405844174249

`A208287(A052905(n)+9)`
-/

namespace A208288.P220657405844174249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A052905 n + 9).toNat

end

end A208288.P220657405844174249

/-! ## A208288.P12989572089137659118

`A208287(A167614(n+2)+1)`
-/

namespace A208288.P12989572089137659118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A167614 (n + 2) + 1).toNat

end

end A208288.P12989572089137659118

/-! ## A208288.P7505690315732589294

`A208287(A133263(n+3)+2)`
-/

namespace A208288.P7505690315732589294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A133263 (n + 3) + 2).toNat

end

end A208288.P7505690315732589294

/-! ## A208288.P5076164222545386784

`A208287(A000217(n+3)+4)`
-/

namespace A208288.P5076164222545386784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 3) + 4).toNat

end

end A208288.P5076164222545386784

/-! ## A208288.P11980685832354057486

`A208287(Δ[A023545(n+1)-n²])`
-/

namespace A208288.P11980685832354057486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (f1 (n + 1) - f1 n).toNat

end

end A208288.P11980685832354057486

/-!
# A208289: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208289, there is no canonical definition to state claims against.
-/

/-! ## A208289.P13738281424326299821

`A208287(A167499(n+3))`
-/

namespace A208289.P13738281424326299821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A167499 (n + 3)).toNat

end

end A208289.P13738281424326299821

/-! ## A208289.P16749309512762276103

`A208287(A167614(n+3)+2)`
-/

namespace A208289.P16749309512762276103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A167614 (n + 3) + 2).toNat

end

end A208289.P16749309512762276103

/-! ## A208289.P17135287964636665875

`A208287(A000217(n+4)+5)`
-/

namespace A208289.P17135287964636665875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 4) + 5).toNat

end

end A208289.P17135287964636665875

/-! ## A208289.P603525083588649056

`A208287(Δ[A034857(n+1)]+8)`
-/

namespace A208289.P603525083588649056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (f1 (n + 1) - f1 n + 8).toNat

end

end A208289.P603525083588649056

/-! ## A208289.P18292915329990853370

`A208287(A052905(n+3)-(2*n+1))`
-/

namespace A208289.P18292915329990853370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A208289.P18292915329990853370

/-!
# A208290: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208290, there is no canonical definition to state claims against.
-/

/-! ## A208290.P17825354052732251004

`A208287(A000096(n+4)+7)`
-/

namespace A208290.P17825354052732251004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000096 (n + 4) + 7).toNat

end

end A208290.P17825354052732251004

/-! ## A208290.P3474658900644645261

`A208287(A000217(n+5)+6)`
-/

namespace A208290.P3474658900644645261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 5) + 6).toNat

end

end A208290.P3474658900644645261

/-! ## A208290.P14155194560548083001

`A208287(A046691(n+3)+10)`
-/

namespace A208290.P14155194560548083001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A046691 (n + 3) + 10).toNat

end

end A208290.P14155194560548083001

/-! ## A208290.P12105882889810500920

`A208287(A055999(n+2)+12)`
-/

namespace A208290.P12105882889810500920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A055999 (n + 2) + 12).toNat

end

end A208290.P12105882889810500920

/-! ## A208290.P120176602610428770

`A208287(Δ[A023545(n+1)]+10)`
-/

namespace A208290.P120176602610428770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (f1 (n + 1) - f1 n + 10).toNat

end

end A208290.P120176602610428770

/-!
# A208291: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A208291, there is no canonical definition to state claims against.
-/

/-! ## A208291.P2950991800536879610

`A208287(A056119(n)+28)`
-/

namespace A208291.P2950991800536879610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A056119 n + 28).toNat

end

end A208291.P2950991800536879610

/-! ## A208291.P3786466522268310694

`A208287(A000096(n+5)+8)`
-/

namespace A208291.P3786466522268310694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000096 (n + 5) + 8).toNat

end

end A208291.P3786466522268310694

/-! ## A208291.P4883374444453765297

`A208287(A000217(n+6)+7)`
-/

namespace A208291.P4883374444453765297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000217 (n + 6) + 7).toNat

end

end A208291.P4883374444453765297

/-! ## A208291.P15933124646779520414

`A208287(A055998(n+4)+10)`
-/

namespace A208291.P15933124646779520414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A055998 (n + 4) + 10).toNat

end

end A208291.P15933124646779520414

/-! ## A208291.P16285102566813760185

`A208287(A046691(n+4)+11)`
-/

namespace A208291.P16285102566813760185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A046691 (n + 4) + 11).toNat

end

end A208291.P16285102566813760185

/-!
# A208292: Primes of the form (n^2+1)/26.

The programs for A208292, there is no canonical definition to state claims against.
-/

/-! ## A208292.P12871541917573281211

`round(8*A208294(n+1)/26)`
-/

namespace A208292.P12871541917573281211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 * A208294 (n + 1) : ℚ) / 26)

end

end A208292.P12871541917573281211

/-! ## A208292.P11283077841536932963

`A014442(A208293(n+1))`
-/

namespace A208292.P11283077841536932963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A208293 (n + 1)).toNat

end

end A208292.P11283077841536932963

/-! ## A208292.P13051884584083178737

`A281793(or(1, A208293(n+1)))`
-/

namespace A208292.P13051884584083178737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (Int.lor 1 (A208293 (n + 1))).toNat

end

end A208292.P13051884584083178737

/-! ## A208292.P3514424029121546790

`A014442(ceil(sqrt(8*A208294(n+1))))`
-/

namespace A208292.P3514424029121546790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 ⌈Real.sqrt (8 * A208294 (n + 1) : ℝ)⌉.toNat

end

end A208292.P3514424029121546790

/-! ## A208292.P14973774299228717544

`A281793(A208293(n+1)%A325380(n+1))`
-/

namespace A208292.P14973774299228717544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (Int.tmod (A208293 (n + 1)) (A325380 (n + 1))).toNat

end

end A208292.P14973774299228717544

/-! ## A208292.P6785084843966418325

`A247339(2*n+5)*A281793(A208293(n+1))`
-/

namespace A208292.P6785084843966418325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (2 * n + 5) * A281793 (A208293 (n + 1)).toNat

end

end A208292.P6785084843966418325

/-! ## A208292.P10266210940934665518

`p?[round(n/5)²+n²]`
-/

namespace A208292.P10266210940934665518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 5) ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208292.P10266210940934665518

/-!
# A208293: Numbers n such that (n^2+1)/26 is prime.

The programs for A208293, there is no canonical definition to state claims against.
-/

/-! ## A208293.P6652965019878694548

`sqrt(8*A208294(n+1)+1)`
-/

namespace A208293.P6652965019878694548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A208294 (n + 1) + 1 : ℝ)

end

end A208293.P6652965019878694548

/-! ## A208293.P1403397239828474927

`sqrt(26*A208292(n+1)-1)`
-/

namespace A208293.P1403397239828474927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (26 * A208292 (n + 1) - 1 : ℝ)

end

end A208293.P1403397239828474927

/-! ## A208293.P9983374690252377663

`ceil(sqrt(8*A208294(n+1)))`
-/

namespace A208293.P9983374690252377663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (8 * A208294 (n + 1) : ℝ)⌉

end

end A208293.P9983374690252377663

/-! ## A208293.P13139008858370370799

`floor(sqrt(26*A208292(n+1)))`
-/

namespace A208293.P13139008858370370799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (26 * A208292 (n + 1))

end

end A208293.P13139008858370370799

/-! ## A208293.P12978836295088332507

`A000027(round(sqrt(26*A208292(n+1))))`
-/

namespace A208293.P12978836295088332507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (26 * A208292 (n + 1) : ℝ))).toNat

end

end A208293.P12978836295088332507

/-! ## A208293.P7857499548494936145

`round(sqrt(26*A208292(n+1)))+A339483(n)%3`
-/

namespace A208293.P7857499548494936145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (26 * A208292 (n + 1) : ℝ)) + Int.tmod (A339483 n) 3

end

end A208293.P7857499548494936145

/-! ## A208293.P15848569358034532359

`floor((26*A208292(n+1))^(1/A000005(A020483(n))))`
-/

namespace A208293.P15848569358034532359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(26 * A208292 (n + 1) : ℝ) ^ (1 / (A000005 (A020483 n).toNat : ℚ) : ℝ)⌋

end

end A208293.P15848569358034532359

/-!
# A208294: Triangular numbers T from A000217 such that (4*T+1)/13 is prime.

The programs for A208294, there is no canonical definition to state claims against.
-/

/-! ## A208294.P745511199526839483

`(A208293(n+1)²-1)/8`
-/

namespace A208294.P745511199526839483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208293 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A208294.P745511199526839483

/-! ## A208294.P5351355766032151325

`A000217(floor(A208293(n+1)/2))`
-/

namespace A208294.P5351355766032151325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(A208293 (n + 1) : ℚ) / 2⌋.toNat

end

end A208294.P5351355766032151325

/-! ## A208294.P9690842745261648094

`A000217((A208293(n+1)-1)/2)`
-/

namespace A208294.P9690842745261648094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A208293 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A208294.P9690842745261648094

/-! ## A208294.P16794862370018685435

`A000217(A000217(A208293(n+1))%A208292(n+1))`
-/

namespace A208294.P16794862370018685435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A000217 (A208293 (n + 1)).toNat) (A208292 (n + 1))).toNat

end

end A208294.P16794862370018685435

/-! ## A208294.P17733657645447503677

`A161680((A208293(n+1)+1)/2)`
-/

namespace A208294.P17733657645447503677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.roundAway ((A208293 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A208294.P17733657645447503677

/-! ## A208294.P4839276420153215412

`A001971(A208293(n+1))`
-/

namespace A208294.P4839276420153215412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A208293 (n + 1)).toNat

end

end A208294.P4839276420153215412

/-! ## A208294.P15824916186507402917

`A001972(A208293(n+1)-3)`
-/

namespace A208294.P15824916186507402917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A208293 (n + 1) - 3).toNat

end

end A208294.P15824916186507402917

/-! ## A208294.P15553714003209122772

`A008795(A208293(n+1)-3)`
-/

namespace A208294.P15553714003209122772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A208293 (n + 1) - 3).toNat

end

end A208294.P15553714003209122772

/-! ## A208294.P11353947142965040629

`A008795(A208293(n+1))+A000122(A000040(n+1))`
-/

namespace A208294.P11353947142965040629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A208293 (n + 1)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A208294.P11353947142965040629

/-! ## A208294.P17532215461849485791

`A008795(A208293(n+1))*A128564(A008795(n))`
-/

namespace A208294.P17532215461849485791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A208293 (n + 1)).toNat * A128564 (A008795 n).toNat

end

end A208294.P17532215461849485791

/-!
# A208295: a(n)*(a(n)+1) + A002973(n)^2 = A005098(n), n>=1.

The programs for A208295, there is no canonical definition to state claims against.
-/

/-! ## A208295.P7244201952786040192

`(A002972(n+1)-1)/2`
-/

namespace A208295.P7244201952786040192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002972 (n + 1) - 1 : ℚ) / 2

end

end A208295.P7244201952786040192

/-! ## A208295.P3395890825825686305

`floor(A002972(n+1)/2)`
-/

namespace A208295.P3395890825825686305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002972 (n + 1) : ℚ) / 2⌋

end

end A208295.P3395890825825686305

/-! ## A208295.P1594503817030419191

`floor(abs(A046730(n+1)/2))`
-/

namespace A208295.P1594503817030419191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A046730 (n + 1) : ℚ) / 2|⌋

end

end A208295.P1594503817030419191

/-! ## A208295.P15120212673626499424

`A004524(A002972(n+1))`
-/

namespace A208295.P15120212673626499424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002972 (n + 1)).toNat

end

end A208295.P15120212673626499424

/-! ## A208295.P5229556106723414831

`A001281(A002972(n+1)-1)`
-/

namespace A208295.P5229556106723414831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002972 (n + 1) - 1).toNat

end

end A208295.P5229556106723414831

/-! ## A208295.P12504312191420027329

`A029578(A002972(n+1)-1)`
-/

namespace A208295.P12504312191420027329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A002972 (n + 1) - 1).toNat

end

end A208295.P12504312191420027329

/-! ## A208295.P15583959394479609693

`A096029(n+1)-A002973(n+1)`
-/

namespace A208295.P15583959394479609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (n + 1) - A002973 (n + 1)

end

end A208295.P15583959394479609693

/-! ## A208295.P4390265682467692596

`floor(abs(A002172(n+1)/4))`
-/

namespace A208295.P4390265682467692596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A002172 (n + 1) : ℚ) / 4|⌋

end

end A208295.P4390265682467692596

/-! ## A208295.P1242012356206875830

`floor(abs(A267859(n+1)/4))`
-/

namespace A208295.P1242012356206875830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A267859 (n + 1) : ℚ) / 4|⌋

end

end A208295.P1242012356206875830

/-! ## A208295.P9692693724141742835

`A002265(abs(A002172(n+1)))`
-/

namespace A208295.P9692693724141742835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |A002172 (n + 1)|.toNat

end

end A208295.P9692693724141742835

/-! ## A208295.P17793601488386616324

`A002265(abs(A267859(n+1)))`
-/

namespace A208295.P17793601488386616324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |A267859 (n + 1)|.toNat

end

end A208295.P17793601488386616324

/-!
# A208296: Smallest positive nontrivial odd solution of the congruence x^2 == 1 (mod A001748(n+2)), n >= 1.

The programs for A208296, the canonical program `A208296.P13607806792442396004` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208296 has offset 1).

The definition of A208296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208296.P13607806792442396004

`A249916(p?[2*n+5])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208296

/-- `A249916(p?[2*n+5])` -/
def P13607806792442396004.Spec : Prop :=
  ∀ n, P13607806792442396004.a n = A208296 (n + 1)

theorem P13607806792442396004.correct : P13607806792442396004.Spec := by
  intro n
  simp only [A208296, Nat.add_sub_cancel]

end A208296

/-! ## A208296.P11990541125454279063

`A147666(p?[A147666(n)])`
-/

namespace A208296.P11990541125454279063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208296.P11990541125454279063

namespace A208296

/-- `A147666(p?[A147666(n)])` -/
def P11990541125454279063.Spec : Prop :=
  ∀ n, P11990541125454279063.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P13376525368211910589

`A091998(A181709(n+1))`
-/

namespace A208296.P13376525368211910589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (A181709 (n + 1)).toNat

end

end A208296.P13376525368211910589

namespace A208296

/-- `A091998(A181709(n+1))` -/
def P13376525368211910589.Spec : Prop :=
  ∀ n, P13376525368211910589.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P14357867114721149659

`A147666(A215848(n+1))`
-/

namespace A208296.P14357867114721149659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A215848 (n + 1)).toNat

end

end A208296.P14357867114721149659

namespace A208296

/-- `A147666(A215848(n+1))` -/
def P14357867114721149659.Spec : Prop :=
  ∀ n, P14357867114721149659.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P5692882928185068921

`A047266(A135731(n+2))`
-/

namespace A208296.P5692882928185068921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A135731 (n + 2)).toNat

end

end A208296.P5692882928185068921

namespace A208296

/-- `A047266(A135731(n+2))` -/
def P5692882928185068921.Spec : Prop :=
  ∀ n, P5692882928185068921.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P3948472086620091794

`A147666(A045344(n+2))`
-/

namespace A208296.P3948472086620091794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A045344 (n + 2)).toNat

end

end A208296.P3948472086620091794

namespace A208296

/-- `A147666(A045344(n+2))` -/
def P3948472086620091794.Spec : Prop :=
  ∀ n, P3948472086620091794.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P5702185605634207451

`A147666(A065091(n+2))`
-/

namespace A208296.P5702185605634207451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A065091 (n + 2)).toNat

end

end A208296.P5702185605634207451

namespace A208296

/-- `A147666(A065091(n+2))` -/
def P5702185605634207451.Spec : Prop :=
  ∀ n, P5702185605634207451.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P7699347053254461443

`A147666(A140475(n+2))`
-/

namespace A208296.P7699347053254461443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A140475 (n + 2)).toNat

end

end A208296.P7699347053254461443

namespace A208296

/-- `A147666(A140475(n+2))` -/
def P7699347053254461443.Spec : Prop :=
  ∀ n, P7699347053254461443.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P11742845955694497809

`A007310(A296058(n+2))`
-/

namespace A208296.P11742845955694497809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A296058 (n + 2)).toNat

end

end A208296.P11742845955694497809

namespace A208296

/-- `A007310(A296058(n+2))` -/
def P11742845955694497809.Spec : Prop :=
  ∀ n, P11742845955694497809.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P9622281500484196523

`A305859(A006254(n+2))`
-/

namespace A208296.P9622281500484196523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305859 (A006254 (n + 2)).toNat

end

end A208296.P9622281500484196523

namespace A208296

/-- `A305859(A006254(n+2))` -/
def P9622281500484196523.Spec : Prop :=
  ∀ n, P9622281500484196523.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P4447947958838665720

`A249916(A165972(n+2))`
-/

namespace A208296.P4447947958838665720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A165972 (n + 2)).toNat

end

end A208296.P4447947958838665720

namespace A208296

/-- `A249916(A165972(n+2))` -/
def P4447947958838665720.Spec : Prop :=
  ∀ n, P4447947958838665720.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P16726742192862312118

`A249916(A000040(n+3))`
-/

namespace A208296.P16726742192862312118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A000040 (n + 3)).toNat

end

end A208296.P16726742192862312118

namespace A208296

/-- `A249916(A000040(n+3))` -/
def P16726742192862312118.Spec : Prop :=
  ∀ n, P16726742192862312118.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P3668214209555316211

`A249916(A215848(n+1)-1)`
-/

namespace A208296.P3668214209555316211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A215848 (n + 1) - 1).toNat

end

end A208296.P3668214209555316211

namespace A208296

/-- `A249916(A215848(n+1)-1)` -/
def P3668214209555316211.Spec : Prop :=
  ∀ n, P3668214209555316211.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P17666212149914549153

`A047266(A000040(n+3)+1)`
-/

namespace A208296.P17666212149914549153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A000040 (n + 3) + 1).toNat

end

end A208296.P17666212149914549153

namespace A208296

/-- `A047266(A000040(n+3)+1)` -/
def P17666212149914549153.Spec : Prop :=
  ∀ n, P17666212149914549153.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P5530137238649851778

`A249916(A045344(n+2)-1)`
-/

namespace A208296.P5530137238649851778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A045344 (n + 2) - 1).toNat

end

end A208296.P5530137238649851778

namespace A208296

/-- `A249916(A045344(n+2)-1)` -/
def P5530137238649851778.Spec : Prop :=
  ∀ n, P5530137238649851778.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P5445536947735331830

`A249916(A065091(n+2)-1)`
-/

namespace A208296.P5445536947735331830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A065091 (n + 2) - 1).toNat

end

end A208296.P5445536947735331830

namespace A208296

/-- `A249916(A065091(n+2)-1)` -/
def P5445536947735331830.Spec : Prop :=
  ∀ n, P5445536947735331830.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P18393439763144902804

`A249916(record[p?[A249920(n+1)]])`
-/

namespace A208296.P18393439763144902804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208296.P18393439763144902804

namespace A208296

/-- `A249916(record[p?[A249920(n+1)]])` -/
def P18393439763144902804.Spec : Prop :=
  ∀ n, P18393439763144902804.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P15709373670545209053

`A047266(p?[A047266(n+1)]+1)`
-/

namespace A208296.P15709373670545209053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A208296.P15709373670545209053

namespace A208296

/-- `A047266(p?[A047266(n+1)]+1)` -/
def P15709373670545209053.Spec : Prop :=
  ∀ n, P15709373670545209053.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P13104361554729555755

`A007310(A166711(p?[A007310(n+1)]))`
-/

namespace A208296.P13104361554729555755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A166711 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A208296.P13104361554729555755

namespace A208296

/-- `A007310(A166711(p?[A007310(n+1)]))` -/
def P13104361554729555755.Spec : Prop :=
  ∀ n, P13104361554729555755.a n = A208296 (n + 1)

end A208296

/-! ## A208296.P10168430124746172240

`A064429(A074845(n+4))`
-/

namespace A208296.P10168430124746172240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A074845 (n + 4)).toNat

end

end A208296.P10168430124746172240

namespace A208296

/-- `A064429(A074845(n+4))` -/
def P10168430124746172240.Spec : Prop :=
  ∀ n, P10168430124746172240.a n = A208296 (n + 1)

end A208296

/-!
# A208297: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208297, there is no canonical definition to state claims against.
-/

/-! ## A208297.P4448089103289800053

`A215900(2*(n+1))`
-/

namespace A208297.P4448089103289800053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215900 (2 * (n + 1))

end

end A208297.P4448089103289800053

/-! ## A208297.P10359377111208031519

`A215921(2*(n+1))`
-/

namespace A208297.P10359377111208031519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215921 (2 * (n + 1))

end

end A208297.P10359377111208031519

/-! ## A208297.P3144712576252664118

`record[A215900(A130303(n+1)+1)]`
-/

namespace A208297.P3144712576252664118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215900 (A130303 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208297.P3144712576252664118

/-! ## A208297.P14115982104452983658

`A208301(A034856(n+2))`
-/

namespace A208297.P14115982104452983658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (A034856 (n + 2)).toNat

end

end A208297.P14115982104452983658

/-!
# A208298: Number of nX4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208298, there is no canonical definition to state claims against.
-/

/-! ## A208298.P9468840919479997277

`A216025(4*(n+1))`
-/

namespace A208298.P9468840919479997277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216025 (4 * (n + 1))

end

end A208298.P9468840919479997277

/-! ## A208298.P10711467724086673317

`A208301(A141214(n+1))`
-/

namespace A208298.P10711467724086673317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (A141214 (n + 1)).toNat

end

end A208298.P10711467724086673317

/-! ## A208298.P14597817506362398621

`A208301(A184218(n+5)-2)`
-/

namespace A208298.P14597817506362398621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (A184218 (n + 5) - 2).toNat

end

end A208298.P14597817506362398621

/-! ## A208298.P6613303853129843925

`A208302(2*(n+1))`
-/

namespace A208298.P6613303853129843925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208302 (2 * (n + 1))

end

end A208298.P6613303853129843925

/-!
# A208299: Number of n X 5 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208299, there is no canonical definition to state claims against.
-/

/-! ## A208299.P4849132818862100809

`record[gcd(A215901(n+1), A215922(n+1))]`
-/

namespace A208299.P4849132818862100809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215901 (n + 1)) (A215922 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208299.P4849132818862100809

/-! ## A208299.P11155306927285169079

`record[A215922(n+1)^A103181(n)]`
-/

namespace A208299.P11155306927285169079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215922 (n + 1) : ℚ) ^ (A103181 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208299.P11155306927285169079

