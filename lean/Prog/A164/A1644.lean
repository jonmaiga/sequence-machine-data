import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C027
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C050
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
import Seq.B001.C011
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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

/-!
# A164400: Number of binary strings of length n with no substrings equal to 0001 or 1100.

The programs for A164400, the canonical program `A164400.P17589728889325735112` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164400 has offset 0).

The definition of A164400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164400.P17589728889325735112

`ogf((1-x^5-x^6)/(1-2x+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164400

/-- `ogf((1-x^5-x^6)/(1-2x+2x^4-x^5))` -/
def P17589728889325735112.Spec : Prop :=
  ∀ n, P17589728889325735112.a n = A164400 n

theorem P17589728889325735112.correct : P17589728889325735112.Spec := by
  intro n
  simp only [A164400]

end A164400

/-! ## A164400.P7739452028441071893

`∑[ceil(A001519(2*n+1)/A243853(3*n+2))]`
-/

namespace A164400.P7739452028441071893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001519 (2 * n + 1) : ℚ) / (A243853 (3 * n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P7739452028441071893

namespace A164400

/-- `∑[ceil(A001519(2*n+1)/A243853(3*n+2))]` -/
def P7739452028441071893.Spec : Prop :=
  ∀ n, P7739452028441071893.a n = A164400 n

end A164400

/-! ## A164400.P15792396195419658124

`∑[A003059(A006342(n))]`
-/

namespace A164400.P15792396195419658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A006342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P15792396195419658124

namespace A164400

/-- `∑[A003059(A006342(n))]` -/
def P15792396195419658124.Spec : Prop :=
  ∀ n, P15792396195419658124.a n = A164400 n

end A164400

/-! ## A164400.P2281035964411668336

`∑[A000194(A116409(n))]`
-/

namespace A164400.P2281035964411668336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A116409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P2281035964411668336

namespace A164400

/-- `∑[A000194(A116409(n))]` -/
def P2281035964411668336.Spec : Prop :=
  ∀ n, P2281035964411668336.a n = A164400 n

end A164400

/-! ## A164400.P12988183273942204385

`∑[A000196(A178778(n))]`
-/

namespace A164400.P12988183273942204385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A178778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P12988183273942204385

namespace A164400

/-- `∑[A000196(A178778(n))]` -/
def P12988183273942204385.Spec : Prop :=
  ∀ n, P12988183273942204385.a n = A164400 n

end A164400

/-!
# A164401: Number of binary strings of length n with no substrings equal to 0010 or 0101.

The programs for A164401, the canonical program `A164401.P9074182780316539144` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164401 has offset 0).

The definition of A164401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164401.P18270788642968207280

`ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3-x^6))`
-/

namespace A164401.P18270788642968207280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, 0, 1] [1, -2, 1, -1, 0, 0, -1] n

end

end A164401.P18270788642968207280

namespace A164401

/-- `ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3-x^6))` -/
def P18270788642968207280.Spec : Prop :=
  ∀ n, P18270788642968207280.a n = A164401 n

end A164401

/-! ## A164401.P9074182780316539144

`2*a(n-1)-a(n-2)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=25`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164401

/-- `2*a(n-1)-a(n-2)+a(n-3)+a(n-6)` -/
def P9074182780316539144.Spec : Prop :=
  ∀ n, P9074182780316539144.a n = A164401 n

theorem P9074182780316539144.correct : P9074182780316539144.Spec := by
  intro n
  simp only [A164401]

end A164401

/-! ## A164401.P1011118333426373021

`A238644(n+2)+A238644(n+4)`
-/

namespace A164401.P1011118333426373021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238644 (n + 2) + A238644 (n + 4)

end

end A164401.P1011118333426373021

namespace A164401

/-- `A238644(n+2)+A238644(n+4)` -/
def P1011118333426373021.Spec : Prop :=
  ∀ n, P1011118333426373021.a n = A164401 n

end A164401

/-! ## A164401.P7356059378576624897

`∑[A225687(A088352(n)²)]`
-/

namespace A164401.P7356059378576624897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A088352 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164401.P7356059378576624897

namespace A164401

/-- `∑[A225687(A088352(n)²)]` -/
def P7356059378576624897.Spec : Prop :=
  ∀ n, P7356059378576624897.a n = A164401 n

end A164401

/-! ## A164401.P3895365404485933725

`∑[A068330(A068634(n+2))]`
-/

namespace A164401.P3895365404485933725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068330 (A068634 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164401.P3895365404485933725

namespace A164401

/-- `∑[A068330(A068634(n+2))]` -/
def P3895365404485933725.Spec : Prop :=
  ∀ n, P3895365404485933725.a n = A164401 n

end A164401

/-!
# A164402: Number of binary strings of length n with no substrings equal to 0010 or 0110.

The programs for A164402, the canonical program `A164402.P3635009239224654016` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164402 has offset 0).

The definition of A164402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164402.P2043579683585896747

`ogf((1+2x^3)/(1-2x+2x^3-2x^4))`
-/

namespace A164402.P2043579683585896747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2] [1, -2, 0, 2, -2] n

end

end A164402.P2043579683585896747

namespace A164402

/-- `ogf((1+2x^3)/(1-2x+2x^3-2x^4))` -/
def P2043579683585896747.Spec : Prop :=
  ∀ n, P2043579683585896747.a n = A164402 n

end A164402

/-! ## A164402.P3635009239224654016

`2*a(n-1)-2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164402

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)` -/
def P3635009239224654016.Spec : Prop :=
  ∀ n, P3635009239224654016.a n = A164402 n

theorem P3635009239224654016.correct : P3635009239224654016.Spec := by
  intro n
  simp only [A164402]

end A164402

/-! ## A164402.P6276739244263634224

`Δ[A164404(n+6)]%A164404(n+4)`
-/

namespace A164402.P6276739244263634224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164404 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164404 (n + 4))

end

end A164402.P6276739244263634224

namespace A164402

/-- `Δ[A164404(n+6)]%A164404(n+4)` -/
def P6276739244263634224.Spec : Prop :=
  ∀ n, P6276739244263634224.a n = A164402 n

end A164402

/-! ## A164402.P4519258765459622103

`(A164404(n+7)-A164404(n+6))%A164404(n+4)`
-/

namespace A164402.P4519258765459622103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164404 (n + 7) - A164404 (n + 6)) (A164404 (n + 4))

end

end A164402.P4519258765459622103

namespace A164402

/-- `(A164404(n+7)-A164404(n+6))%A164404(n+4)` -/
def P4519258765459622103.Spec : Prop :=
  ∀ n, P4519258765459622103.a n = A164402 n

end A164402

/-! ## A164402.P15422479917452858717

`A293137(A026165(n))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A164402.P15422479917452858717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A026165 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A164402.P15422479917452858717

namespace A164402

/-- `A293137(A026165(n))+∑{p}[n+1, gcd(n, #)]` -/
def P15422479917452858717.Spec : Prop :=
  ∀ n, P15422479917452858717.a n = A164402 n

end A164402

/-!
# A164403: Number of binary strings of length n with no substrings equal to 0010 or 1001.

The programs for A164403, the canonical program `A164403.P11378959313934342286` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164403 has offset 4).

The definition of A164403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164403.P11378959313934342286

`ogf((14-3x-5x^2+4x^3+8x^4)/(1-2x+x^3-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164403

/-- `ogf((14-3x-5x^2+4x^3+8x^4)/(1-2x+x^3-x^5))` -/
def P11378959313934342286.Spec : Prop :=
  ∀ n, P11378959313934342286.a n = A164403 (n + 4)

theorem P11378959313934342286.correct : P11378959313934342286.Spec := by
  intro n
  simp only [A164403, Nat.add_sub_cancel]

end A164403

/-! ## A164403.P8338050607486636433

`A195181(A329838(a(n-1)))` with `a(0)=14`
-/

namespace A164403.P8338050607486636433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A195181 (A329838 (a (n - 1)).toNat).toNat

end

end A164403.P8338050607486636433

namespace A164403

/-- `A195181(A329838(a(n-1)))` -/
def P8338050607486636433.Spec : Prop :=
  ∀ n, P8338050607486636433.a n = A164403 (n + 4)

end A164403

/-! ## A164403.P3716606223735656466

`A121901(A184189(n+1))`
-/

namespace A164403.P3716606223735656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 (A184189 (n + 1)).toNat

end

end A164403.P3716606223735656466

namespace A164403

/-- `A121901(A184189(n+1))` -/
def P3716606223735656466.Spec : Prop :=
  ∀ n, P3716606223735656466.a n = A164403 (n + 4)

end A164403

/-!
# A164404: Number of binary strings of length n with no substrings equal to 0010 or 1011.

The programs for A164404, the canonical program `A164404.P6773825665800367998` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164404 has offset 4).

The definition of A164404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164404.P6773825665800367998

`ogf((14-4x-7x^2+16x^3)/(1-2x+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164404

/-- `ogf((14-4x-7x^2+16x^3)/(1-2x+2x^3-2x^4))` -/
def P6773825665800367998.Spec : Prop :=
  ∀ n, P6773825665800367998.a n = A164404 (n + 4)

theorem P6773825665800367998.correct : P6773825665800367998.Spec := by
  intro n
  simp only [A164404, Nat.add_sub_cancel]

end A164404

/-! ## A164404.P8510783320141564040

`(A164402(n+2)+A164402(n+5))/2`
-/

namespace A164404.P8510783320141564040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164402 (n + 2) + A164402 (n + 5) : ℚ) / 2

end

end A164404.P8510783320141564040

namespace A164404

/-- `(A164402(n+2)+A164402(n+5))/2` -/
def P8510783320141564040.Spec : Prop :=
  ∀ n, P8510783320141564040.a n = (A164404 (n + 4) : ℚ)

end A164404

/-! ## A164404.P14281491926653213726

`A006370(A164402(n+2)+A164402(n+5))`
-/

namespace A164404.P14281491926653213726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A164402 (n + 2) + A164402 (n + 5)).toNat

end

end A164404.P14281491926653213726

namespace A164404

/-- `A006370(A164402(n+2)+A164402(n+5))` -/
def P14281491926653213726.Spec : Prop :=
  ∀ n, P14281491926653213726.a n = A164404 (n + 4)

end A164404

/-! ## A164404.P11095864044320139907

`A213908(a(n-1))` with `a(0)=14`
-/

namespace A164404.P11095864044320139907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A213908 (a (n - 1)).toNat

end

end A164404.P11095864044320139907

namespace A164404

/-- `A213908(a(n-1))` -/
def P11095864044320139907.Spec : Prop :=
  ∀ n, P11095864044320139907.a n = A164404 (n + 4)

end A164404

/-! ## A164404.P10042672969473790647

`A227568(A115992(n))+A164408(n+4)`
-/

namespace A164404.P10042672969473790647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A115992 n).toNat + A164408 (n + 4)

end

end A164404.P10042672969473790647

namespace A164404

/-- `A227568(A115992(n))+A164408(n+4)` -/
def P10042672969473790647.Spec : Prop :=
  ∀ n, P10042672969473790647.a n = A164404 (n + 4)

end A164404

/-!
# A164405: Number of binary strings of length n with no substrings equal to 0010 or 1100.

The programs for A164405, the canonical program `A164405.P13494739047571857953` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164405 has offset 0).

The definition of A164405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164405.P9950679896667114738

`ogf((1+x^3)/(1-2x+x^3-x^6))`
-/

namespace A164405.P9950679896667114738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1] [1, -2, 0, 1, 0, 0, -1] n

end

end A164405.P9950679896667114738

namespace A164405

/-- `ogf((1+x^3)/(1-2x+x^3-x^6))` -/
def P9950679896667114738.Spec : Prop :=
  ∀ n, P9950679896667114738.a n = A164405 n

end A164405

/-! ## A164405.P13494739047571857953

`2*a(n-1)-a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=24`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164405

/-- `2*a(n-1)-a(n-3)+a(n-6)` -/
def P13494739047571857953.Spec : Prop :=
  ∀ n, P13494739047571857953.a n = A164405 n

theorem P13494739047571857953.correct : P13494739047571857953.Spec := by
  intro n
  simp only [A164405]

end A164405

/-! ## A164405.P5471543559706176556

`A100196(∑[A292460(n)+A051164(n)])`
-/

namespace A164405.P5471543559706176556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + A051164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164405.P5471543559706176556

namespace A164405

/-- `A100196(∑[A292460(n)+A051164(n)])` -/
def P5471543559706176556.Spec : Prop :=
  ∀ n, P5471543559706176556.a n = A164405 n

end A164405

/-! ## A164405.P9309585540596192579

`A100196(A290519(n)+A163271(n+1))`
-/

namespace A164405.P9309585540596192579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A290519 n + A163271 (n + 1)).toNat

end

end A164405.P9309585540596192579

namespace A164405

/-- `A100196(A290519(n)+A163271(n+1))` -/
def P9309585540596192579.Spec : Prop :=
  ∀ n, P9309585540596192579.a n = A164405 n

end A164405

/-! ## A164405.P15655236460099420844

`A094192(A333106(n))-1`
-/

namespace A164405.P15655236460099420844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A333106 n).toNat - 1

end

end A164405.P15655236460099420844

namespace A164405

/-- `A094192(A333106(n))-1` -/
def P15655236460099420844.Spec : Prop :=
  ∀ n, P15655236460099420844.a n = A164405 n

end A164405

/-!
# A164406: Number of binary strings of length n with no substrings equal to 0011 or 0101.

The programs for A164406, the canonical program `A164406.P9724344063056008445` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164406 has offset 0).

The definition of A164406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164406.P9724344063056008445

`ogf((1+x^2)/(1-2x+x^2-2x^3+2x^4+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164406

/-- `ogf((1+x^2)/(1-2x+x^2-2x^3+2x^4+x^6))` -/
def P9724344063056008445.Spec : Prop :=
  ∀ n, P9724344063056008445.a n = A164406 n

theorem P9724344063056008445.correct : P9724344063056008445.Spec := by
  intro n
  simp only [A164406]

end A164406

/-! ## A164406.P600747503632810465

`A291725(n)-A068921(n)`
-/

namespace A164406.P600747503632810465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - A068921 n

end

end A164406.P600747503632810465

namespace A164406

/-- `A291725(n)-A068921(n)` -/
def P600747503632810465.Spec : Prop :=
  ∀ n, P600747503632810465.a n = A164406 n

end A164406

/-! ## A164406.P17779021290634755323

`A291725(n)-A000930(n+1)`
-/

namespace A164406.P17779021290634755323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - A000930 (n + 1)

end

end A164406.P17779021290634755323

namespace A164406

/-- `A291725(n)-A000930(n+1)` -/
def P17779021290634755323.Spec : Prop :=
  ∀ n, P17779021290634755323.a n = A164406 n

end A164406

/-! ## A164406.P7538438548563679437

`A164505(n+4)-A164505(n+8)%A164505(n+6)`
-/

namespace A164406.P7538438548563679437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164505 (n + 4) - Int.tmod (A164505 (n + 8)) (A164505 (n + 6))

end

end A164406.P7538438548563679437

namespace A164406

/-- `A164505(n+4)-A164505(n+8)%A164505(n+6)` -/
def P7538438548563679437.Spec : Prop :=
  ∀ n, P7538438548563679437.a n = A164406 n

end A164406

/-! ## A164406.P1746531243059976824

`A291725(n)-A170935(n)/A000930(n)`
-/

namespace A164406.P1746531243059976824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291725 n : ℚ) - (A170935 n : ℚ) / (A000930 n : ℚ)

end

end A164406.P1746531243059976824

namespace A164406

/-- `A291725(n)-A170935(n)/A000930(n)` -/
def P1746531243059976824.Spec : Prop :=
  ∀ n, P1746531243059976824.a n = (A164406 n : ℚ)

end A164406

/-! ## A164406.P8143654893537335470

`record[A143361(A133263(n))]-A068921(n)`
-/

namespace A164406.P8143654893537335470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A068921 n

end

end A164406.P8143654893537335470

namespace A164406

/-- `record[A143361(A133263(n))]-A068921(n)` -/
def P8143654893537335470.Spec : Prop :=
  ∀ n, P8143654893537335470.a n = A164406 n

end A164406

/-! ## A164406.P1213693458460061605

`record[A143361(A238531(n))]-A068921(n)`
-/

namespace A164406.P1213693458460061605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A068921 n

end

end A164406.P1213693458460061605

namespace A164406

/-- `record[A143361(A238531(n))]-A068921(n)` -/
def P1213693458460061605.Spec : Prop :=
  ∀ n, P1213693458460061605.a n = A164406 n

end A164406

/-! ## A164406.P16388127040577856527

`A143361(A133263(n+2))-A068921(n)`
-/

namespace A164406.P16388127040577856527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A068921 n

end

end A164406.P16388127040577856527

namespace A164406

/-- `A143361(A133263(n+2))-A068921(n)` -/
def P16388127040577856527.Spec : Prop :=
  ∀ n, P16388127040577856527.a n = A164406 n

end A164406

/-! ## A164406.P16570772595542840705

`A143361(A133263(n+2))-A000930(n+1)`
-/

namespace A164406.P16570772595542840705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A000930 (n + 1)

end

end A164406.P16570772595542840705

namespace A164406

/-- `A143361(A133263(n+2))-A000930(n+1)` -/
def P16570772595542840705.Spec : Prop :=
  ∀ n, P16570772595542840705.a n = A164406 n

end A164406

/-! ## A164406.P10852038165410308438

`A143361(A133263(n+2))-A135851(n+6)`
-/

namespace A164406.P10852038165410308438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A135851 (n + 6)

end

end A164406.P10852038165410308438

namespace A164406

/-- `A143361(A133263(n+2))-A135851(n+6)` -/
def P10852038165410308438.Spec : Prop :=
  ∀ n, P10852038165410308438.a n = A164406 n

end A164406

/-!
# A164407: Number of binary strings of length n with no substrings equal to 0000 0001 or 0010.

The programs for A164407, the canonical program `A164407.P6583849532377495148` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164407 has offset 4).

The definition of A164407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164407.P6583849532377495148

`ogf((13+10x+4x^2+8x^3)/(1-x-x^2-x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164407

/-- `ogf((13+10x+4x^2+8x^3)/(1-x-x^2-x^4))` -/
def P6583849532377495148.Spec : Prop :=
  ∀ n, P6583849532377495148.a n = A164407 (n + 4)

theorem P6583849532377495148.correct : P6583849532377495148.Spec := by
  intro n
  simp only [A164407, Nat.add_sub_cancel]

end A164407

/-! ## A164407.P16152494923629625036

`A181532(n)+A164409(n+4)`
-/

namespace A164407.P16152494923629625036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 n + A164409 (n + 4)

end

end A164407.P16152494923629625036

namespace A164407

/-- `A181532(n)+A164409(n+4)` -/
def P16152494923629625036.Spec : Prop :=
  ∀ n, P16152494923629625036.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P9971242313005730117

`A060945(n+1)+A005251(n+7)`
-/

namespace A164407.P9971242313005730117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + A005251 (n + 7)

end

end A164407.P9971242313005730117

namespace A164407

/-- `A060945(n+1)+A005251(n+7)` -/
def P9971242313005730117.Spec : Prop :=
  ∀ n, P9971242313005730117.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P14045840763815145225

`A017818(A103517(n+6))-A017818(2*n+1)`
-/

namespace A164407.P14045840763815145225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A103517 (n + 6)).toNat - A017818 (2 * n + 1)

end

end A164407.P14045840763815145225

namespace A164407

/-- `A017818(A103517(n+6))-A017818(2*n+1)` -/
def P14045840763815145225.Spec : Prop :=
  ∀ n, P14045840763815145225.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P7672143457780497892

`A017818(A005843(n+7))-A017818(2*n+1)`
-/

namespace A164407.P7672143457780497892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A005843 (n + 7)).toNat - A017818 (2 * n + 1)

end

end A164407.P7672143457780497892

namespace A164407

/-- `A017818(A005843(n+7))-A017818(2*n+1)` -/
def P7672143457780497892.Spec : Prop :=
  ∀ n, P7672143457780497892.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P17184883088773562795

`A060945(n+1)+A060945(n+2)+A060945(n+5)`
-/

namespace A164407.P17184883088773562795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + (A060945 (n + 2) + A060945 (n + 5))

end

end A164407.P17184883088773562795

namespace A164407

/-- `A060945(n+1)+A060945(n+2)+A060945(n+5)` -/
def P17184883088773562795.Spec : Prop :=
  ∀ n, P17184883088773562795.a n = A164407 (n + 4)

end A164407

/-!
# A164408: Number of binary strings of length n with no substrings equal to 0000 0001 or 0011.

The programs for A164408, the canonical program `A164408.P10362682633183645367` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164408 has offset 0).

The definition of A164408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164408.P10362682633183645367

`ogf((1+x+x^2+x^3)/(1-x-x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164408

/-- `ogf((1+x+x^2+x^3)/(1-x-x^2-x^3+x^4))` -/
def P10362682633183645367.Spec : Prop :=
  ∀ n, P10362682633183645367.a n = A164408 n

theorem P10362682633183645367.correct : P10362682633183645367.Spec := by
  intro n
  simp only [A164408]

end A164408

/-! ## A164408.P13401702195576236781

`2*(a(n-2)+a(n-3))-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13`
-/

namespace A164408.P13401702195576236781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 13] fun n a =>
  2 * (a (n - 2) + a (n - 3)) - a (n - 5)

end

end A164408.P13401702195576236781

namespace A164408

/-- `2*(a(n-2)+a(n-3))-a(n-5)` -/
def P13401702195576236781.Spec : Prop :=
  ∀ n, P13401702195576236781.a n = A164408 n

end A164408

/-! ## A164408.P9123149072599473192

`A162920(n)-a(n-1)` with `a(0)=1`
-/

namespace A164408.P9123149072599473192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162920 n - a (n - 1)

end

end A164408.P9123149072599473192

namespace A164408

/-- `A162920(n)-a(n-1)` -/
def P9123149072599473192.Spec : Prop :=
  ∀ n, P9123149072599473192.a n = A164408 n

end A164408

/-! ## A164408.P4344929217728155877

`A135431(n+1)+A135431(n)-A116201(n)`
-/

namespace A164408.P4344929217728155877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 (n + 1) + (A135431 n - A116201 n)

end

end A164408.P4344929217728155877

namespace A164408

/-- `A135431(n+1)+A135431(n)-A116201(n)` -/
def P4344929217728155877.Spec : Prop :=
  ∀ n, P4344929217728155877.a n = A164408 n

end A164408

/-! ## A164408.P14627762222748735725

`A116732(n+1)+A135431(n+1)+A116732(n)`
-/

namespace A164408.P14627762222748735725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1) + (A135431 (n + 1) + A116732 n)

end

end A164408.P14627762222748735725

namespace A164408

/-- `A116732(n+1)+A135431(n+1)+A116732(n)` -/
def P14627762222748735725.Spec : Prop :=
  ∀ n, P14627762222748735725.a n = A164408 n

end A164408

/-! ## A164408.P12418117890362505378

`A298810(Δ[n²])/3`
-/

namespace A164408.P12418117890362505378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A164408.P12418117890362505378

namespace A164408

/-- `A298810(Δ[n²])/3` -/
def P12418117890362505378.Spec : Prop :=
  ∀ n, P12418117890362505378.a n = (A164408 n : ℚ)

end A164408

/-! ## A164408.P4337030322285668777

`record[A298810(n)/A298810(A260738(n+1))]`
-/

namespace A164408.P4337030322285668777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298810 n : ℚ) / (A298810 (A260738 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164408.P4337030322285668777

namespace A164408

/-- `record[A298810(n)/A298810(A260738(n+1))]` -/
def P4337030322285668777.Spec : Prop :=
  ∀ n, P4337030322285668777.a n = (A164408 n : ℚ)

end A164408

/-!
# A164409: Number of binary strings of length n with no substrings equal to 0000 0001 or 0100.

The programs for A164409, the canonical program `A164409.P9386467674251624076` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164409 has offset 4).

The definition of A164409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164409.P9386467674251624076

`ogf((13-4x+8x^2)/(1-2x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164409

/-- `ogf((13-4x+8x^2)/(1-2x+x^2-x^3))` -/
def P9386467674251624076.Spec : Prop :=
  ∀ n, P9386467674251624076.a n = A164409 (n + 4)

theorem P9386467674251624076.correct : P9386467674251624076.Spec := by
  intro n
  simp only [A164409, Nat.add_sub_cancel]

end A164409

/-! ## A164409.P3755803672503472147

`A117374(2*(n+4))`
-/

namespace A164409.P3755803672503472147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117374 (2 * (n + 4))

end

end A164409.P3755803672503472147

namespace A164409

/-- `A117374(2*(n+4))` -/
def P3755803672503472147.Spec : Prop :=
  ∀ n, P3755803672503472147.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P4673694466799637215

`abs(Δ[A078065(n+2)])`
-/

namespace A164409.P4673694466799637215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164409.P4673694466799637215

namespace A164409

/-- `abs(Δ[A078065(n+2)])` -/
def P4673694466799637215.Spec : Prop :=
  ∀ n, P4673694466799637215.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11371331618096392223

`A164494(n+4)-A005251(n)`
-/

namespace A164409.P11371331618096392223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164494 (n + 4) - A005251 n

end

end A164409.P11371331618096392223

namespace A164409

/-- `A164494(n+4)-A005251(n)` -/
def P11371331618096392223.Spec : Prop :=
  ∀ n, P11371331618096392223.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P10139996426252596439

`A164407(n+4)-A181532(n)`
-/

namespace A164409.P10139996426252596439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164407 (n + 4) - A181532 n

end

end A164409.P10139996426252596439

namespace A164409

/-- `A164407(n+4)-A181532(n)` -/
def P10139996426252596439.Spec : Prop :=
  ∀ n, P10139996426252596439.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11401387004466299875

`A010901(n+2)+A005251(n+2)`
-/

namespace A164409.P11401387004466299875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 2) + A005251 (n + 2)

end

end A164409.P11401387004466299875

namespace A164409

/-- `A010901(n+2)+A005251(n+2)` -/
def P11401387004466299875.Spec : Prop :=
  ∀ n, P11401387004466299875.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P864358734904430343

`2*A010901(n+1)-A005314(n+1)`
-/

namespace A164409.P864358734904430343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010901 (n + 1) - A005314 (n + 1)

end

end A164409.P864358734904430343

namespace A164409

/-- `2*A010901(n+1)-A005314(n+1)` -/
def P864358734904430343.Spec : Prop :=
  ∀ n, P864358734904430343.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P663031337865925063

`A077855(n+3)+A052954(2*(n+1))`
-/

namespace A164409.P663031337865925063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 3) + A052954 (2 * (n + 1))

end

end A164409.P663031337865925063

namespace A164409

/-- `A077855(n+3)+A052954(2*(n+1))` -/
def P663031337865925063.Spec : Prop :=
  ∀ n, P663031337865925063.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P13312233012497619293

`A134816(2*n+1)+A020720(2*(n+1))`
-/

namespace A164409.P13312233012497619293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 1) + A020720 (2 * (n + 1))

end

end A164409.P13312233012497619293

namespace A164409

/-- `A134816(2*n+1)+A020720(2*(n+1))` -/
def P13312233012497619293.Spec : Prop :=
  ∀ n, P13312233012497619293.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P5959752284438931985

`A182097(2*(n+1))+A020720(2*(n+1))`
-/

namespace A164409.P5959752284438931985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * (n + 1)) + A020720 (2 * (n + 1))

end

end A164409.P5959752284438931985

namespace A164409

/-- `A182097(2*(n+1))+A020720(2*(n+1))` -/
def P5959752284438931985.Spec : Prop :=
  ∀ n, P5959752284438931985.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11968103743763538369

`A084338(2*(n+1))+A084338(A020739(n+1))`
-/

namespace A164409.P11968103743763538369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (2 * (n + 1)) + A084338 (A020739 (n + 1)).toNat

end

end A164409.P11968103743763538369

namespace A164409

/-- `A084338(2*(n+1))+A084338(A020739(n+1))` -/
def P11968103743763538369.Spec : Prop :=
  ∀ n, P11968103743763538369.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P2983646291812242913

`Δ[A005314(n+1)+A005314(n+6)]`
-/

namespace A164409.P2983646291812242913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) + A005314 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164409.P2983646291812242913

namespace A164409

/-- `Δ[A005314(n+1)+A005314(n+6)]` -/
def P2983646291812242913.Spec : Prop :=
  ∀ n, P2983646291812242913.a n = A164409 (n + 4)

end A164409

/-!
# A164410: Number of binary strings of length n with no substrings equal to 0000 0001 or 0101.

The programs for A164410, the canonical program `A164410.P17742219393313290094` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164410 has offset 4).

The definition of A164410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164410.P17742219393313290094

`ogf((13+9x+16x^2)/(1-x-2x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164410

/-- `ogf((13+9x+16x^2)/(1-x-2x^3))` -/
def P17742219393313290094.Spec : Prop :=
  ∀ n, P17742219393313290094.a n = A164410 (n + 4)

theorem P17742219393313290094.correct : P17742219393313290094.Spec := by
  intro n
  simp only [A164410, Nat.add_sub_cancel]

end A164410

/-! ## A164410.P18148346622489512535

`A303714(n+3)+A303714(n+4)`
-/

namespace A164410.P18148346622489512535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303714 (n + 3) + A303714 (n + 4)

end

end A164410.P18148346622489512535

namespace A164410

/-- `A303714(n+3)+A303714(n+4)` -/
def P18148346622489512535.Spec : Prop :=
  ∀ n, P18148346622489512535.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P14684338401634626263

`A164399(n+4)-A003479(n)`
-/

namespace A164410.P14684338401634626263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 4) - A003479 n

end

end A164410.P14684338401634626263

namespace A164410

/-- `A164399(n+4)-A003479(n)` -/
def P14684338401634626263.Spec : Prop :=
  ∀ n, P14684338401634626263.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P15239137240741132290

`A164395(n+4)-A164395(n)`
-/

namespace A164410.P15239137240741132290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (n + 4) - A164395 n

end

end A164410.P15239137240741132290

namespace A164410

/-- `A164395(n+4)-A164395(n)` -/
def P15239137240741132290.Spec : Prop :=
  ∀ n, P15239137240741132290.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P5440910017103376646

`A164399(n+4)-∑[A077949(n)]`
-/

namespace A164410.P5440910017103376646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164410.P5440910017103376646

namespace A164410

/-- `A164399(n+4)-∑[A077949(n)]` -/
def P5440910017103376646.Spec : Prop :=
  ∀ n, P5440910017103376646.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P6407284368348626040

`A003476(n+6)-A003476(n+2)`
-/

namespace A164410.P6407284368348626040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 6) - A003476 (n + 2)

end

end A164410.P6407284368348626040

namespace A164410

/-- `A003476(n+6)-A003476(n+2)` -/
def P6407284368348626040.Spec : Prop :=
  ∀ n, P6407284368348626040.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P2175790820388650377

`Δ[A289260(n+4)]`
-/

namespace A164410.P2175790820388650377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164410.P2175790820388650377

namespace A164410

/-- `Δ[A289260(n+4)]` -/
def P2175790820388650377.Spec : Prop :=
  ∀ n, P2175790820388650377.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P12925755102060613729

`Δ[abs(A279780(n+4))]`
-/

namespace A164410.P12925755102060613729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279780 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164410.P12925755102060613729

namespace A164410

/-- `Δ[abs(A279780(n+4))]` -/
def P12925755102060613729.Spec : Prop :=
  ∀ n, P12925755102060613729.a n = A164410 (n + 4)

end A164410

/-!
# A164411: Number of binary strings of length n with no substrings equal to 0000, 0001, or 0110.

The programs for A164411, the canonical program `A164411.P4606939906619254259` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164411 has offset 0).

The definition of A164411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164411.P4606939906619254259

`ogf((1+x+x^2+2x^3+x^4)/(1-x-x^2-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164411

/-- `ogf((1+x+x^2+2x^3+x^4)/(1-x-x^2-x^5))` -/
def P4606939906619254259.Spec : Prop :=
  ∀ n, P4606939906619254259.a n = A164411 n

theorem P4606939906619254259.correct : P4606939906619254259.Spec := by
  intro n
  simp only [A164411]

end A164411

/-! ## A164411.P5870386763254250035

`A340215(n+4)-2*A340215(n+2)`
-/

namespace A164411.P5870386763254250035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) - 2 * A340215 (n + 2)

end

end A164411.P5870386763254250035

namespace A164411

/-- `A340215(n+4)-2*A340215(n+2)` -/
def P5870386763254250035.Spec : Prop :=
  ∀ n, P5870386763254250035.a n = A164411 n

end A164411

/-! ## A164411.P14487363136620124691

`A020718(n)-A020718(n+6)%A340217(n+7)`
-/

namespace A164411.P14487363136620124691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n - Int.tmod (A020718 (n + 6)) (A340217 (n + 7))

end

end A164411.P14487363136620124691

namespace A164411

/-- `A020718(n)-A020718(n+6)%A340217(n+7)` -/
def P14487363136620124691.Spec : Prop :=
  ∀ n, P14487363136620124691.a n = A164411 n

end A164411

/-! ## A164411.P4919375939828554931

`5*A340217(n+7)-A340217(n+10)`
-/

namespace A164411.P4919375939828554931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A340217 (n + 7) - A340217 (n + 10)

end

end A164411.P4919375939828554931

namespace A164411

/-- `5*A340217(n+7)-A340217(n+10)` -/
def P4919375939828554931.Spec : Prop :=
  ∀ n, P4919375939828554931.a n = A164411 n

end A164411

/-! ## A164411.P14296103821508164474

`A340215(n+4)-A005843(A340215(n+2))`
-/

namespace A164411.P14296103821508164474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) - A005843 (A340215 (n + 2)).toNat

end

end A164411.P14296103821508164474

namespace A164411

/-- `A340215(n+4)-A005843(A340215(n+2))` -/
def P14296103821508164474.Spec : Prop :=
  ∀ n, P14296103821508164474.a n = A164411 n

end A164411

/-!
# A164412: Number of binary strings of length n with no substrings equal to 0000 0001 or 0111.

The programs for A164412, the canonical program `A164412.P9028629250546101702` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164412 has offset 4).

The definition of A164412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164412.P9028629250546101702

`ogf((13+9x+2x^2-12x^3-8x^4)/(1-x-x^2-x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164412

/-- `ogf((13+9x+2x^2-12x^3-8x^4)/(1-x-x^2-x^3+x^4+x^5))` -/
def P9028629250546101702.Spec : Prop :=
  ∀ n, P9028629250546101702.a n = A164412 (n + 4)

theorem P9028629250546101702.correct : P9028629250546101702.Spec := by
  intro n
  simp only [A164412, Nat.add_sub_cancel]

end A164412

/-! ## A164412.P3500626189389507838

`A266339(n+2)+4`
-/

namespace A164412.P3500626189389507838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266339 (n + 2) + 4

end

end A164412.P3500626189389507838

namespace A164412

/-- `A266339(n+2)+4` -/
def P3500626189389507838.Spec : Prop :=
  ∀ n, P3500626189389507838.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P16101084138071241280

`A173714(n+6)-1`
-/

namespace A164412.P16101084138071241280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 6) - 1

end

end A164412.P16101084138071241280

namespace A164412

/-- `A173714(n+6)-1` -/
def P16101084138071241280.Spec : Prop :=
  ∀ n, P16101084138071241280.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P16406330314494169784

`A094103(2*n+9)`
-/

namespace A164412.P16406330314494169784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094103 (2 * n + 9)

end

end A164412.P16406330314494169784

namespace A164412

/-- `A094103(2*n+9)` -/
def P16406330314494169784.Spec : Prop :=
  ∀ n, P16406330314494169784.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P17916165400970519812

`A164397(n+4)-A164397(n)`
-/

namespace A164412.P17916165400970519812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164397 (n + 4) - A164397 n

end

end A164412.P17916165400970519812

namespace A164412

/-- `A164397(n+4)-A164397(n)` -/
def P17916165400970519812.Spec : Prop :=
  ∀ n, P17916165400970519812.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P13809574399520152925

`A260952(A007318(∑[n]))+A173714(n+6)`
-/

namespace A164412.P13809574399520152925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260952 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A173714 (n + 6)

end

end A164412.P13809574399520152925

namespace A164412

/-- `A260952(A007318(∑[n]))+A173714(n+6)` -/
def P13809574399520152925.Spec : Prop :=
  ∀ n, P13809574399520152925.a n = A164412 (n + 4)

end A164412

/-!
# A164413: Number of binary strings of length n with no substrings equal to 0000, 0001 or 1001.

The programs for A164413, the canonical program `A164413.P9155242093717820697` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164413 has offset 0).

The definition of A164413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164413.P12134677317753643673

`ogf((1+x+x^2+2x^3+x^4+x^5+x^6)/(1-x-x^2))`
-/

namespace A164413.P12134677317753643673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 2, 1, 1, 1] [1, -1, -1] n

end

end A164413.P12134677317753643673

namespace A164413

/-- `ogf((1+x+x^2+2x^3+x^4+x^5+x^6)/(1-x-x^2))` -/
def P12134677317753643673.Spec : Prop :=
  ∀ n, P12134677317753643673.a n = A164413 n

end A164413

/-! ## A164413.P9155242093717820697

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=22, a(6)=36`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164413

/-- `a(n-1)+a(n-2)` -/
def P9155242093717820697.Spec : Prop :=
  ∀ n, (P9155242093717820697.a n : ℤ) = A164413 n

theorem P9155242093717820697.correct : P9155242093717820697.Spec := by
  intro n
  simp only [A164413]

end A164413

/-! ## A164413.P10572532816614302536

`ceil(A192960(2*n)/A020701(n))`
-/

namespace A164413.P10572532816614302536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A192960 (2 * n) : ℚ) / (A020701 n : ℚ)⌉

end

end A164413.P10572532816614302536

namespace A164413

/-- `ceil(A192960(2*n)/A020701(n))` -/
def P10572532816614302536.Spec : Prop :=
  ∀ n, P10572532816614302536.a n = A164413 n

end A164413

/-! ## A164413.P10176935312593674017

`ceil(A179991(2*n+1)/A169985(n+2))`
-/

namespace A164413.P10176935312593674017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179991 (2 * n + 1) : ℚ) / (A169985 (n + 2) : ℚ)⌉

end

end A164413.P10176935312593674017

namespace A164413

/-- `ceil(A179991(2*n+1)/A169985(n+2))` -/
def P10176935312593674017.Spec : Prop :=
  ∀ n, P10176935312593674017.a n = A164413 n

end A164413

/-! ## A164413.P17795314982765218247

`floor(A104161(2*(n+1))/A000071(n+4))`
-/

namespace A164413.P17795314982765218247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104161 (2 * (n + 1)) : ℚ) / (A000071 (n + 4) : ℚ)⌋

end

end A164413.P17795314982765218247

namespace A164413

/-- `floor(A104161(2*(n+1))/A000071(n+4))` -/
def P17795314982765218247.Spec : Prop :=
  ∀ n, P17795314982765218247.a n = A164413 n

end A164413

/-! ## A164413.P17332154795810686447

`round(A179991(2*(n+1))/A169985(n+3))`
-/

namespace A164413.P17332154795810686447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A179991 (2 * (n + 1)) : ℚ) / (A169985 (n + 3) : ℚ))

end

end A164413.P17332154795810686447

namespace A164413

/-- `round(A179991(2*(n+1))/A169985(n+3))` -/
def P17332154795810686447.Spec : Prop :=
  ∀ n, P17332154795810686447.a n = A164413 n

end A164413

/-! ## A164413.P13699278751916638626

`round(A005592(n)/A001077(n)*A005592(n))`
-/

namespace A164413.P13699278751916638626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005592 n : ℚ) / (A001077 n : ℚ) * (A005592 n : ℚ))

end

end A164413.P13699278751916638626

namespace A164413

/-- `round(A005592(n)/A001077(n)*A005592(n))` -/
def P13699278751916638626.Spec : Prop :=
  ∀ n, P13699278751916638626.a n = A164413 n

end A164413

/-! ## A164413.P3201874555304322466

`round(A005592(n)²/A001077(n))`
-/

namespace A164413.P3201874555304322466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005592 n ^ 2 : ℚ) / (A001077 n : ℚ))

end

end A164413.P3201874555304322466

namespace A164413

/-- `round(A005592(n)²/A001077(n))` -/
def P3201874555304322466.Spec : Prop :=
  ∀ n, P3201874555304322466.a n = A164413 n

end A164413

/-!
# A164414: Number of binary strings of length n with no substrings equal to 0000, 0001, or 1010.

The programs for A164414, the canonical program `A164414.P16801501112284168521` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164414 has offset 0).

The definition of A164414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164414.P16801501112284168521

`ogf((1+x+2x^2+2x^3+x^4+x^5-x^6)/(1-x-2x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164414

/-- `ogf((1+x+2x^2+2x^3+x^4+x^5-x^6)/(1-x-2x^3))` -/
def P16801501112284168521.Spec : Prop :=
  ∀ n, P16801501112284168521.a n = A164414 n

theorem P16801501112284168521.correct : P16801501112284168521.Spec := by
  intro n
  simp only [A164414]

end A164414

/-! ## A164414.P2388149440574909027

`A000006(A290890(n)+A164413(n))`
-/

namespace A164414.P2388149440574909027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A290890 n + A164413 n).toNat

end

end A164414.P2388149440574909027

namespace A164414

/-- `A000006(A290890(n)+A164413(n))` -/
def P2388149440574909027.Spec : Prop :=
  ∀ n, P2388149440574909027.a n = A164414 n

end A164414

/-! ## A164414.P5588696132525481066

`A265359(A325124(n)+A005773(n))`
-/

namespace A164414.P5588696132525481066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A325124 n + A005773 n).toNat

end

end A164414.P5588696132525481066

namespace A164414

/-- `A265359(A325124(n)+A005773(n))` -/
def P5588696132525481066.Spec : Prop :=
  ∀ n, P5588696132525481066.a n = A164414 n

end A164414

/-! ## A164414.P7583578823123789300

`A276581(∑[A160999(n)])`
-/

namespace A164414.P7583578823123789300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164414.P7583578823123789300

namespace A164414

/-- `A276581(∑[A160999(n)])` -/
def P7583578823123789300.Spec : Prop :=
  ∀ n, P7583578823123789300.a n = A164414 n

end A164414

/-! ## A164414.P14586735269235620193

`A172471(floor(sqrt(A333679(2*(n+2)))))`
-/

namespace A164414.P14586735269235620193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.sqrt (A333679 (2 * (n + 2)))).toNat

end

end A164414.P14586735269235620193

namespace A164414

/-- `A172471(floor(sqrt(A333679(2*(n+2)))))` -/
def P14586735269235620193.Spec : Prop :=
  ∀ n, P14586735269235620193.a n = A164414 n

end A164414

/-!
# A164415: Number of binary strings of length n with no substrings equal to 0000, 0001, or 1100.

The programs for A164415, the canonical program `A164415.P15364172490454912219` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164415 has offset 0).

The definition of A164415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164415.P15364172490454912219

`ogf((1+x+x^2+x^3-x^5-x^6)/(1-x-x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164415

/-- `ogf((1+x+x^2+x^3-x^5-x^6)/(1-x-x^2-x^3+x^4))` -/
def P15364172490454912219.Spec : Prop :=
  ∀ n, P15364172490454912219.a n = A164415 n

theorem P15364172490454912219.correct : P15364172490454912219.Spec := by
  intro n
  simp only [A164415]

end A164415

/-! ## A164415.P4348833979444006033

`A226190(A164402(n+1))`
-/

namespace A164415.P4348833979444006033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A164402 (n + 1)).toNat

end

end A164415.P4348833979444006033

namespace A164415

/-- `A226190(A164402(n+1))` -/
def P4348833979444006033.Spec : Prop :=
  ∀ n, P4348833979444006033.a n = A164415 n

end A164415

/-! ## A164415.P14316412972743071336

`A164509(n)+A151755(A002522(n))`
-/

namespace A164415.P14316412972743071336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n + A151755 (A002522 n).toNat

end

end A164415.P14316412972743071336

namespace A164415

/-- `A164509(n)+A151755(A002522(n))` -/
def P14316412972743071336.Spec : Prop :=
  ∀ n, P14316412972743071336.a n = A164415 n

end A164415

/-! ## A164415.P11212427533207223893

`A164509(n)+A078926(A078918(n+1))`
-/

namespace A164415.P11212427533207223893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n + A078926 (A078918 (n + 1)).toNat

end

end A164415.P11212427533207223893

namespace A164415

/-- `A164509(n)+A078926(A078918(n+1))` -/
def P11212427533207223893.Spec : Prop :=
  ∀ n, P11212427533207223893.a n = A164415 n

end A164415

/-! ## A164415.P753217498250087346

`A185284(A056503(n+1))+A164509(n)`
-/

namespace A164415.P753217498250087346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A056503 (n + 1)).toNat + A164509 n

end

end A164415.P753217498250087346

namespace A164415

/-- `A185284(A056503(n+1))+A164509(n)` -/
def P753217498250087346.Spec : Prop :=
  ∀ n, P753217498250087346.a n = A164415 n

end A164415

/-!
# A164416: Number of binary strings of length n with no substrings equal to 0000 0001 or 1111.

The programs for A164416, the canonical program `A164416.P16492415613445680408` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164416 has offset 4).

The definition of A164416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164416.P16492415613445680408

`ogf((13+23x+27x^2+20x^3+8x^4)/(1-x^2-2x^3-2x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164416

/-- `ogf((13+23x+27x^2+20x^3+8x^4)/(1-x^2-2x^3-2x^4-x^5))` -/
def P16492415613445680408.Spec : Prop :=
  ∀ n, P16492415613445680408.a n = A164416 (n + 4)

theorem P16492415613445680408.correct : P16492415613445680408.Spec := by
  intro n
  simp only [A164416, Nat.add_sub_cancel]

end A164416

/-! ## A164416.P2577009813336469056

`A164391(n+4)-A164391(n)`
-/

namespace A164416.P2577009813336469056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164391 (n + 4) - A164391 n

end

end A164416.P2577009813336469056

namespace A164416

/-- `A164391(n+4)-A164391(n)` -/
def P2577009813336469056.Spec : Prop :=
  ∀ n, P2577009813336469056.a n = A164416 (n + 4)

end A164416

/-! ## A164416.P16211207542508717837

`A123908(n+3)+A123908(n+5)`
-/

namespace A164416.P16211207542508717837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123908 (n + 3) + A123908 (n + 5)

end

end A164416.P16211207542508717837

namespace A164416

/-- `A123908(n+3)+A123908(n+5)` -/
def P16211207542508717837.Spec : Prop :=
  ∀ n, P16211207542508717837.a n = A164416 (n + 4)

end A164416

/-! ## A164416.P4708232581370061338

`A164391(n+4)+A164391(n)/A057428(2*n+3)`
-/

namespace A164416.P4708232581370061338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164391 (n + 4) : ℚ) + (A164391 n : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A164416.P4708232581370061338

namespace A164416

/-- `A164391(n+4)+A164391(n)/A057428(2*n+3)` -/
def P4708232581370061338.Spec : Prop :=
  ∀ n, P4708232581370061338.a n = (A164416 (n + 4) : ℚ)

end A164416

/-!
# A164417: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0100.

The programs for A164417, there is no canonical definition to state claims against.
-/

/-! ## A164417.P10044404858833437972

`A063712(or(1, A030186(n)))`
-/

namespace A164417.P10044404858833437972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (Int.lor 1 (A030186 n)).toNat

end

end A164417.P10044404858833437972

/-! ## A164417.P9700616830859631813

`A063712(A030186(n)+floor(n/3))`
-/

namespace A164417.P9700616830859631813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (A030186 n + ⌊(n : ℚ) / 3⌋).toNat

end

end A164417.P9700616830859631813

/-! ## A164417.P7359256444167344439

`A018173(n)+A001221(A178446(n))`
-/

namespace A164417.P7359256444167344439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n + A001221 (A178446 n).toNat

end

end A164417.P7359256444167344439

/-! ## A164417.P11995986803888327017

`A257639(A296000(n))+A122294(n)`
-/

namespace A164417.P11995986803888327017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A296000 n).toNat + A122294 n

end

end A164417.P11995986803888327017

/-!
# A164418: Number of binary strings of length n with no substrings equal to 0000 0010 or 0101.

The programs for A164418, the canonical program `A164418.P6636798516373322320` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164418 has offset 4).

The definition of A164418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164418.P6636798516373322320

`ogf((13+9x+16x^2+15x^3+14x^4+12x^5+8x^6)/(1-x-x^3-x^4-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164418

/-- `ogf((13+9x+16x^2+15x^3+14x^4+12x^5+8x^6)/(1-x-x^3-x^4-x^5-x^6-x^7))` -/
def P6636798516373322320.Spec : Prop :=
  ∀ n, P6636798516373322320.a n = A164418 (n + 4)

theorem P6636798516373322320.correct : P6636798516373322320.Spec := by
  intro n
  simp only [A164418, Nat.add_sub_cancel]

end A164418

/-! ## A164418.P13987918611985411480

`A189593(n+6)+A189593(n+1)`
-/

namespace A164418.P13987918611985411480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189593 (n + 6) + A189593 (n + 1)

end

end A164418.P13987918611985411480

namespace A164418

/-- `A189593(n+6)+A189593(n+1)` -/
def P13987918611985411480.Spec : Prop :=
  ∀ n, P13987918611985411480.a n = A164418 (n + 4)

end A164418

/-! ## A164418.P2506837446912492342

`A164494(n+4)-A265519(A131577(n))`
-/

namespace A164418.P2506837446912492342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164494 (n + 4) - A265519 (A131577 n).toNat

end

end A164418.P2506837446912492342

namespace A164418

/-- `A164494(n+4)-A265519(A131577(n))` -/
def P2506837446912492342.Spec : Prop :=
  ∀ n, P2506837446912492342.a n = A164418 (n + 4)

end A164418

/-! ## A164418.P12832351892539447775

`A233583(A334636(n+1)+A164477(n+4))`
-/

namespace A164418.P12832351892539447775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A334636 (n + 1) + A164477 (n + 4)).toNat

end

end A164418.P12832351892539447775

namespace A164418

/-- `A233583(A334636(n+1)+A164477(n+4))` -/
def P12832351892539447775.Spec : Prop :=
  ∀ n, P12832351892539447775.a n = A164418 (n + 4)

end A164418

/-!
# A164419: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0110.

The programs for A164419, the canonical program `A164419.P9270243983601456507` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164419 has offset 0).

The definition of A164419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164419.P9270243983601456507

`ogf((1+x+x^2+3x^3+2x^4+x^5)/(1-x-x^2+x^3-x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164419

/-- `ogf((1+x+x^2+3x^3+2x^4+x^5)/(1-x-x^2+x^3-x^4-x^5-x^6))` -/
def P9270243983601456507.Spec : Prop :=
  ∀ n, P9270243983601456507.a n = A164419 n

theorem P9270243983601456507.correct : P9270243983601456507.Spec := by
  intro n
  simp only [A164419]

end A164419

/-! ## A164419.P2004057073644590196

`A000267(A088305(n+1))-A289410(2*(n+1))`
-/

namespace A164419.P2004057073644590196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A088305 (n + 1)).toNat - A289410 (2 * (n + 1))

end

end A164419.P2004057073644590196

namespace A164419

/-- `A000267(A088305(n+1))-A289410(2*(n+1))` -/
def P2004057073644590196.Spec : Prop :=
  ∀ n, P2004057073644590196.a n = A164419 n

end A164419

/-! ## A164419.P194163101224123182

`∑[A122921(A018042(n)+1)]`
-/

namespace A164419.P194163101224123182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A018042 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P194163101224123182

namespace A164419

/-- `∑[A122921(A018042(n)+1)]` -/
def P194163101224123182.Spec : Prop :=
  ∀ n, P194163101224123182.a n = A164419 n

end A164419

/-! ## A164419.P9390180553915380043

`∑[A122921(A018043(n)+1)]`
-/

namespace A164419.P9390180553915380043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A018043 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P9390180553915380043

namespace A164419

/-- `∑[A122921(A018043(n)+1)]` -/
def P9390180553915380043.Spec : Prop :=
  ∀ n, P9390180553915380043.a n = A164419 n

end A164419

/-! ## A164419.P17861770117494591534

`∑[A005185(record[A319149(n+1)])]`
-/

namespace A164419.P17861770117494591534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P17861770117494591534

namespace A164419

/-- `∑[A005185(record[A319149(n+1)])]` -/
def P17861770117494591534.Spec : Prop :=
  ∀ n, P17861770117494591534.a n = A164419 n

end A164419

/-!
# A164420: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0111.

The programs for A164420, the canonical program `A164420.P5083329203442261010` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164420 has offset 0).

The definition of A164420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164420.P5083329203442261010

`ogf((1+x+x^2+2x^3+x^4)/(1-x-x^2+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164420

/-- `ogf((1+x+x^2+2x^3+x^4)/(1-x-x^2+x^6))` -/
def P5083329203442261010.Spec : Prop :=
  ∀ n, P5083329203442261010.a n = A164420 n

theorem P5083329203442261010.correct : P5083329203442261010.Spec := by
  intro n
  simp only [A164420]

end A164420

/-! ## A164420.P13663796949390325508

`∑[A047084(n+2)-A047084(n)]`
-/

namespace A164420.P13663796949390325508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 2) - A047084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P13663796949390325508

namespace A164420

/-- `∑[A047084(n+2)-A047084(n)]` -/
def P13663796949390325508.Spec : Prop :=
  ∀ n, P13663796949390325508.a n = A164420 n

end A164420

/-! ## A164420.P12749756189107760227

`A047084(n+1)+A047084(n+2)-2`
-/

namespace A164420.P12749756189107760227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 1) + (A047084 (n + 2) - 2)

end

end A164420.P12749756189107760227

namespace A164420

/-- `A047084(n+1)+A047084(n+2)-2` -/
def P12749756189107760227.Spec : Prop :=
  ∀ n, P12749756189107760227.a n = A164420 n

end A164420

/-! ## A164420.P15329363595187224033

`∑[A001462(A156258(n+1)+A000975(n))]`
-/

namespace A164420.P15329363595187224033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A156258 (n + 1) + A000975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P15329363595187224033

namespace A164420

/-- `∑[A001462(A156258(n+1)+A000975(n))]` -/
def P15329363595187224033.Spec : Prop :=
  ∀ n, P15329363595187224033.a n = A164420 n

end A164420

/-! ## A164420.P7267936869420707477

`A172471(A072863(n)+A000225(n))`
-/

namespace A164420.P7267936869420707477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A072863 n + A000225 n).toNat

end

end A164420.P7267936869420707477

namespace A164420

/-- `A172471(A072863(n)+A000225(n))` -/
def P7267936869420707477.Spec : Prop :=
  ∀ n, P7267936869420707477.a n = A164420 n

end A164420

/-!
# A164421: Number of binary strings of length n with no substrings equal to 0000 0010 or 1001.

The programs for A164421, the canonical program `A164421.P18066691477411697098` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164421 has offset 4).

The definition of A164421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164421.P18066691477411697098

`ogf((13+9x+3x^2+5x^3+8x^4)/(1-x-x^2-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164421

/-- `ogf((13+9x+3x^2+5x^3+8x^4)/(1-x-x^2-x^5))` -/
def P18066691477411697098.Spec : Prop :=
  ∀ n, P18066691477411697098.a n = A164421 (n + 4)

theorem P18066691477411697098.correct : P18066691477411697098.Spec := by
  intro n
  simp only [A164421, Nat.add_sub_cancel]

end A164421

/-! ## A164421.P12875825263820570006

`A340217(n+1)+A340217(n+5)`
-/

namespace A164421.P12875825263820570006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340217 (n + 1) + A340217 (n + 5)

end

end A164421.P12875825263820570006

namespace A164421

/-- `A340217(n+1)+A340217(n+5)` -/
def P12875825263820570006.Spec : Prop :=
  ∀ n, P12875825263820570006.a n = A164421 (n + 4)

end A164421

/-! ## A164421.P2659768102955376898

`A340215(n+6)-A340215(n+1)`
-/

namespace A164421.P2659768102955376898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 6) - A340215 (n + 1)

end

end A164421.P2659768102955376898

namespace A164421

/-- `A340215(n+6)-A340215(n+1)` -/
def P2659768102955376898.Spec : Prop :=
  ∀ n, P2659768102955376898.a n = A164421 (n + 4)

end A164421

/-! ## A164421.P62459263099615987

`Δ[A020718(n+3)-A020718(n+1)]`
-/

namespace A164421.P62459263099615987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 3) - A020718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164421.P62459263099615987

namespace A164421

/-- `Δ[A020718(n+3)-A020718(n+1)]` -/
def P62459263099615987.Spec : Prop :=
  ∀ n, P62459263099615987.a n = A164421 (n + 4)

end A164421

/-! ## A164421.P2504394311274039014

`Δ[Δ[A020718(n+1)+A020718(n+2)]]`
-/

namespace A164421.P2504394311274039014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 1) + A020718 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164421.P2504394311274039014

namespace A164421

/-- `Δ[Δ[A020718(n+1)+A020718(n+2)]]` -/
def P2504394311274039014.Spec : Prop :=
  ∀ n, P2504394311274039014.a n = A164421 (n + 4)

end A164421

/-!
# A164422: Number of binary strings of length n with no substrings equal to 0000 0010 or 1010.

The programs for A164422, the canonical program `A164422.P4801676896176507129` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164422 has offset 4).

The definition of A164422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164422.P4801676896176507129

`ogf((13+8x+14x^2+12x^3+8x^4)/(1-x-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164422

/-- `ogf((13+8x+14x^2+12x^3+8x^4)/(1-x-x^3-x^4-x^5))` -/
def P4801676896176507129.Spec : Prop :=
  ∀ n, P4801676896176507129.a n = A164422 (n + 4)

theorem P4801676896176507129.correct : P4801676896176507129.Spec := by
  intro n
  simp only [A164422, Nat.add_sub_cancel]

end A164422

/-! ## A164422.P17038356559560906086

`A000570(n+6)+Δ[A000570(n+3)]`
-/

namespace A164422.P17038356559560906086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (n + 6) + (f1 (n + 1) - f1 n)

end

end A164422.P17038356559560906086

namespace A164422

/-- `A000570(n+6)+Δ[A000570(n+3)]` -/
def P17038356559560906086.Spec : Prop :=
  ∀ n, P17038356559560906086.a n = A164422 (n + 4)

end A164422

/-!
# A164423: Number of binary strings of length n with no substrings equal to 0000 0010 or 1100.

The programs for A164423, the canonical program `A164423.P15346722781020574515` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164423 has offset 4).

The definition of A164423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164423.P15346722781020574515

`ogf((13+8x+x^2+3x^3+6x^4+12x^5+8x^6)/(1-x-x^2-x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164423

/-- `ogf((13+8x+x^2+3x^3+6x^4+12x^5+8x^6)/(1-x-x^2-x^6-x^7))` -/
def P15346722781020574515.Spec : Prop :=
  ∀ n, P15346722781020574515.a n = A164423 (n + 4)

theorem P15346722781020574515.correct : P15346722781020574515.Spec := by
  intro n
  simp only [A164423, Nat.add_sub_cancel]

end A164423

/-! ## A164423.P10161877740712099837

`A164501(n+4)-A001222(A319481(n+1))`
-/

namespace A164423.P10161877740712099837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164501 (n + 4) - A001222 (A319481 (n + 1)).toNat

end

end A164423.P10161877740712099837

namespace A164423

/-- `A164501(n+4)-A001222(A319481(n+1))` -/
def P10161877740712099837.Spec : Prop :=
  ∀ n, P10161877740712099837.a n = A164423 (n + 4)

end A164423

/-!
# A164424: Number of binary strings of length n with no substrings equal to 0000 0010 or 1101.

The programs for A164424, the canonical program `A164424.P4462755335717508551` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164424 has offset 4).

The definition of A164424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164424.P4462755335717508551

`ogf((13-5x+4x^2+6x^3-4x^4-8x^5)/(1-2x+x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164424

/-- `ogf((13-5x+4x^2+6x^3-4x^4-8x^5)/(1-2x+x^2-x^4+x^6))` -/
def P4462755335717508551.Spec : Prop :=
  ∀ n, P4462755335717508551.a n = A164424 (n + 4)

theorem P4462755335717508551.correct : P4462755335717508551.Spec := by
  intro n
  simp only [A164424, Nat.add_sub_cancel]

end A164424

/-! ## A164424.P17053406057727136416

`A104103(A200865(n+2)-1)+n`
-/

namespace A164424.P17053406057727136416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A200865 (n + 2) - 1).toNat + (n : ℤ)

end

end A164424.P17053406057727136416

namespace A164424

/-- `A104103(A200865(n+2)-1)+n` -/
def P17053406057727136416.Spec : Prop :=
  ∀ n, P17053406057727136416.a n = A164424 (n + 4)

end A164424

/-! ## A164424.P13234119567515959249

`A020722(∑[A175089(a(n-1))-1])` with `a(0)=5`
-/

namespace A164424.P13234119567515959249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A175089 (f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164424.P13234119567515959249

namespace A164424

/-- `A020722(∑[A175089(a(n-1))-1])` -/
def P13234119567515959249.Spec : Prop :=
  ∀ n, P13234119567515959249.a n = A164424 (n + 4)

end A164424

/-! ## A164424.P2112161033726854041

`A164467(n+4)+A130702(3*n+1)%2+n`
-/

namespace A164424.P2112161033726854041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164467 (n + 4) + (Int.tmod (A130702 (3 * n + 1)) 2 + (n : ℤ))

end

end A164424.P2112161033726854041

namespace A164424

/-- `A164467(n+4)+A130702(3*n+1)%2+n` -/
def P2112161033726854041.Spec : Prop :=
  ∀ n, P2112161033726854041.a n = A164424 (n + 4)

end A164424

/-!
# A164425: Number of binary strings of length n with no substrings equal to 0000 0010 or 1111.

The programs for A164425, the canonical program `A164425.P1368021740870985755` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164425 has offset 4).

The definition of A164425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164425.P1368021740870985755

`ogf((13+9x+15x^2+12x^3+8x^4)/(1-x-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164425

/-- `ogf((13+9x+15x^2+12x^3+8x^4)/(1-x-x^3-x^4-x^5))` -/
def P1368021740870985755.Spec : Prop :=
  ∀ n, P1368021740870985755.a n = A164425 (n + 4)

theorem P1368021740870985755.correct : P1368021740870985755.Spec := by
  intro n
  simp only [A164425, Nat.add_sub_cancel]

end A164425

/-! ## A164425.P9757526233291152058

`A210608(A001405(n))+A164440(n+4)`
-/

namespace A164425.P9757526233291152058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (A001405 n).toNat + A164440 (n + 4)

end

end A164425.P9757526233291152058

namespace A164425

/-- `A210608(A001405(n))+A164440(n+4)` -/
def P9757526233291152058.Spec : Prop :=
  ∀ n, P9757526233291152058.a n = A164425 (n + 4)

end A164425

/-! ## A164425.P3670004057095451646

`A210608(A001405(n))+A164506(n+4)`
-/

namespace A164425.P3670004057095451646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (A001405 n).toNat + A164506 (n + 4)

end

end A164425.P3670004057095451646

namespace A164425

/-- `A210608(A001405(n))+A164506(n+4)` -/
def P3670004057095451646.Spec : Prop :=
  ∀ n, P3670004057095451646.a n = A164425 (n + 4)

end A164425

/-!
# A164426: Number of binary strings of length n with no substrings equal to 0000 0011 or 0101.

The programs for A164426, the canonical program `A164426.P11073829202015276493` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164426 has offset 4).

The definition of A164426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164426.P9726190342012162910

`ogf((13+8x+13x^2-7x^3-14x^4-12x^5-8x^6)/(1-x-2x^3+x^5+x^6+x^7))`
-/

namespace A164426.P9726190342012162910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 8, 13, -7, -14, -12, -8] [1, -1, 0, -2, 0, 1, 1, 1] n

end

end A164426.P9726190342012162910

namespace A164426

/-- `ogf((13+8x+13x^2-7x^3-14x^4-12x^5-8x^6)/(1-x-2x^3+x^5+x^6+x^7))` -/
def P9726190342012162910.Spec : Prop :=
  ∀ n, P9726190342012162910.a n = A164426 (n + 4)

end A164426

/-! ## A164426.P11073829202015276493

`a(n-1)+2*a(n-3)-a(n-5)-a(n-6)-a(n-7)` with `a(0)=13, a(1)=21, a(2)=34, a(3)=53, a(4)=81, a(5)=124, a(6)=188`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164426

/-- `a(n-1)+2*a(n-3)-a(n-5)-a(n-6)-a(n-7)` -/
def P11073829202015276493.Spec : Prop :=
  ∀ n, P11073829202015276493.a n = A164426 (n + 4)

theorem P11073829202015276493.correct : P11073829202015276493.Spec := by
  intro n
  simp only [A164426, Nat.add_sub_cancel]

end A164426

/-!
# A164427: Number of binary strings of length n with no substrings equal to 0000 0011 or 0110.

The programs for A164427, the canonical program `A164427.P5379352325120477163` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164427 has offset 4).

The definition of A164427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164427.P5379352325120477163

`ogf((13+9x+2x^2+4x^3-8x^4)/(1-x-x^2-x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164427

/-- `ogf((13+9x+2x^2+4x^3-8x^4)/(1-x-x^2-x^4+x^5))` -/
def P5379352325120477163.Spec : Prop :=
  ∀ n, P5379352325120477163.a n = A164427 (n + 4)

theorem P5379352325120477163.correct : P5379352325120477163.Spec := by
  intro n
  simp only [A164427, Nat.add_sub_cancel]

end A164427

/-! ## A164427.P2714023317090659865

`∑[∑{e}[n+1, #]]+A164435(n+4)^(A355615(n+1)%2)-n`
-/

namespace A164427.P2714023317090659865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((A164435 (n + 4) : ℚ) ^ (Int.tmod (A355615 (n + 1)) 2 : ℤ) - (n : ℚ))

end

end A164427.P2714023317090659865

namespace A164427

/-- `∑[∑{e}[n+1, #]]+A164435(n+4)^(A355615(n+1)%2)-n` -/
def P2714023317090659865.Spec : Prop :=
  ∀ n, P2714023317090659865.a n = (A164427 (n + 4) : ℚ)

end A164427

/-! ## A164427.P2236624257776992347

`A121854(A018038(n+3))-A325325(n)`
-/

namespace A164427.P2236624257776992347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (A018038 (n + 3)).toNat - A325325 n

end

end A164427.P2236624257776992347

namespace A164427

/-- `A121854(A018038(n+3))-A325325(n)` -/
def P2236624257776992347.Spec : Prop :=
  ∀ n, P2236624257776992347.a n = A164427 (n + 4)

end A164427

/-!
# A164428: Number of binary strings of length n with no substrings equal to 0000, 0011, or 1001.

The programs for A164428, the canonical program `A164428.P10554036992614650271` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164428 has offset 0).

The definition of A164428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164428.P10554036992614650271

`ogf((1+x+x^2+2x^3-x^7)/(1-x-x^2-x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164428

/-- `ogf((1+x+x^2+2x^3-x^7)/(1-x-x^2-x^4+x^5))` -/
def P10554036992614650271.Spec : Prop :=
  ∀ n, P10554036992614650271.a n = A164428 n

theorem P10554036992614650271.correct : P10554036992614650271.Spec := by
  intro n
  simp only [A164428]

end A164428

/-! ## A164428.P18348243320924693600

`A243283(A354109(n+1)+A001792(n))`
-/

namespace A164428.P18348243320924693600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A354109 (n + 1) + A001792 n).toNat

end

end A164428.P18348243320924693600

namespace A164428

/-- `A243283(A354109(n+1)+A001792(n))` -/
def P18348243320924693600.Spec : Prop :=
  ∀ n, P18348243320924693600.a n = A164428 n

end A164428

/-! ## A164428.P8029726307066173561

`A226143(A401100(n))`
-/

namespace A164428.P8029726307066173561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A401100 n).toNat

end

end A164428.P8029726307066173561

namespace A164428

/-- `A226143(A401100(n))` -/
def P8029726307066173561.Spec : Prop :=
  ∀ n, P8029726307066173561.a n = A164428 n

end A164428

/-! ## A164428.P15486025473378452714

`∑[A137734(A127912(n))]`
-/

namespace A164428.P15486025473378452714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A127912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164428.P15486025473378452714

namespace A164428

/-- `∑[A137734(A127912(n))]` -/
def P15486025473378452714.Spec : Prop :=
  ∀ n, P15486025473378452714.a n = A164428 n

end A164428

/-! ## A164428.P4211709515756882674

`A226143(A122595(n+1))`
-/

namespace A164428.P4211709515756882674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A122595 (n + 1)).toNat

end

end A164428.P4211709515756882674

namespace A164428

/-- `A226143(A122595(n+1))` -/
def P4211709515756882674.Spec : Prop :=
  ∀ n, P4211709515756882674.a n = A164428 n

end A164428

/-!
# A164429: Number of binary strings of length n with no substrings equal to 0000, 0011, or 1011.

The programs for A164429, the canonical program `A164429.P13915276554889762475` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164429 has offset 0).

The definition of A164429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164429.P2032909904045380218

`ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3+x^4))`
-/

namespace A164429.P2032909904045380218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, 0, 1] [1, -2, 1, -1, 1] n

end

end A164429.P2032909904045380218

namespace A164429

/-- `ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3+x^4))` -/
def P2032909904045380218.Spec : Prop :=
  ∀ n, P2032909904045380218.a n = A164429 n

end A164429

/-! ## A164429.P13915276554889762475

`a(n-1)+a(n-3)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164429

/-- `a(n-1)+a(n-3)+4` -/
def P13915276554889762475.Spec : Prop :=
  ∀ n, (P13915276554889762475.a n : ℤ) = A164429 n

theorem P13915276554889762475.correct : P13915276554889762475.Spec := by
  intro n
  simp only [A164429]

end A164429

/-! ## A164429.P16549654914357609811

`∑[A179070(n+2)-char[2]]`
-/

namespace A164429.P16549654914357609811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P16549654914357609811

namespace A164429

/-- `∑[A179070(n+2)-char[2]]` -/
def P16549654914357609811.Spec : Prop :=
  ∀ n, P16549654914357609811.a n = A164429 n

end A164429

/-! ## A164429.P5906611487002320338

`∑[A003410(n)]-record[A226916(n)]`
-/

namespace A164429.P5906611487002320338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A164429.P5906611487002320338

namespace A164429

/-- `∑[A003410(n)]-record[A226916(n)]` -/
def P5906611487002320338.Spec : Prop :=
  ∀ n, P5906611487002320338.a n = A164429 n

end A164429

/-! ## A164429.P1456309646686927025

`∑[A266678(n)+A196382(n+1)]`
-/

namespace A164429.P1456309646686927025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n + A196382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P1456309646686927025

namespace A164429

/-- `∑[A266678(n)+A196382(n+1)]` -/
def P1456309646686927025.Spec : Prop :=
  ∀ n, P1456309646686927025.a n = A164429 n

end A164429

/-! ## A164429.P6154201756727339539

`∑[A097333(n+2)-A226275(n)]`
-/

namespace A164429.P6154201756727339539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 2) - A226275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P6154201756727339539

namespace A164429

/-- `∑[A097333(n+2)-A226275(n)]` -/
def P6154201756727339539.Spec : Prop :=
  ∀ n, P6154201756727339539.a n = A164429 n

end A164429

/-! ## A164429.P17816908826713774151

`∑[A226136(n+1)-record[A226916(n)]]`
-/

namespace A164429.P17816908826713774151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226136 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P17816908826713774151

namespace A164429

/-- `∑[A226136(n+1)-record[A226916(n)]]` -/
def P17816908826713774151.Spec : Prop :=
  ∀ n, P17816908826713774151.a n = A164429 n

end A164429

/-! ## A164429.P1621357190284878540

`record[A179070(n+1)-4%A097333(n)]`
-/

namespace A164429.P1621357190284878540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 1) - Int.tmod 4 (A097333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164429.P1621357190284878540

namespace A164429

/-- `record[A179070(n+1)-4%A097333(n)]` -/
def P1621357190284878540.Spec : Prop :=
  ∀ n, P1621357190284878540.a n = A164429 n

end A164429

/-! ## A164429.P3594532291010913134

`A008619(A004280(n+1))+∑[A196382(n+1)]`
-/

namespace A164429.P3594532291010913134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004280 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P3594532291010913134

namespace A164429

/-- `A008619(A004280(n+1))+∑[A196382(n+1)]` -/
def P3594532291010913134.Spec : Prop :=
  ∀ n, P3594532291010913134.a n = A164429 n

end A164429

/-!
# A164430: Number of binary strings of length n with no substrings equal to 0000 0011 or 1100.

The programs for A164430, the canonical program `A164430.P7351154974765904415` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164430 has offset 4).

The definition of A164430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164430.P7351154974765904415

`ogf((13+8x+2x^2-8x^3-14x^4-12x^5-8x^6)/(1-x-x^2-x^3+x^5+x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164430

/-- `ogf((13+8x+2x^2-8x^3-14x^4-12x^5-8x^6)/(1-x-x^2-x^3+x^5+x^6+x^7))` -/
def P7351154974765904415.Spec : Prop :=
  ∀ n, P7351154974765904415.a n = A164430 (n + 4)

theorem P7351154974765904415.correct : P7351154974765904415.Spec := by
  intro n
  simp only [A164430, Nat.add_sub_cancel]

end A164430

/-! ## A164430.P16283342545216514658

`A164495(n+4)-A010051(A001831(n+1))`
-/

namespace A164430.P16283342545216514658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164495 (n + 4) - A010051 (A001831 (n + 1)).toNat

end

end A164430.P16283342545216514658

namespace A164430

/-- `A164495(n+4)-A010051(A001831(n+1))` -/
def P16283342545216514658.Spec : Prop :=
  ∀ n, P16283342545216514658.a n = A164430 (n + 4)

end A164430

/-!
# A164431: Number of binary strings of length n with no substrings equal to 0000, 0011 or 1101.

The programs for A164431, the canonical program `A164431.P5162592454069432442` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164431 has offset 0).

The definition of A164431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164431.P5162592454069432442

`ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3+x^4-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164431

/-- `ogf((1+x^2+x^3+x^5)/(1-2x+x^2-x^3+x^4-x^6))` -/
def P5162592454069432442.Spec : Prop :=
  ∀ n, P5162592454069432442.a n = A164431 n

theorem P5162592454069432442.correct : P5162592454069432442.Spec := by
  intro n
  simp only [A164431]

end A164431

/-! ## A164431.P3569287396318936480

`A074198(A054963(n))`
-/

namespace A164431.P3569287396318936480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A054963 n).toNat

end

end A164431.P3569287396318936480

namespace A164431

/-- `A074198(A054963(n))` -/
def P3569287396318936480.Spec : Prop :=
  ∀ n, P3569287396318936480.a n = A164431 n

end A164431

/-! ## A164431.P15532377891326153670

`A333255(n+1)+A002024(ceil(3^(n-1)))`
-/

namespace A164431.P15532377891326153670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1) + A002024 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A164431.P15532377891326153670

namespace A164431

/-- `A333255(n+1)+A002024(ceil(3^(n-1)))` -/
def P15532377891326153670.Spec : Prop :=
  ∀ n, P15532377891326153670.a n = A164431 n

end A164431

/-! ## A164431.P12888269886883670150

`A003056(A058877(n+1)+A000084(n+1))`
-/

namespace A164431.P12888269886883670150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A058877 (n + 1) + A000084 (n + 1)).toNat

end

end A164431.P12888269886883670150

namespace A164431

/-- `A003056(A058877(n+1)+A000084(n+1))` -/
def P12888269886883670150.Spec : Prop :=
  ∀ n, P12888269886883670150.a n = A164431 n

end A164431

/-! ## A164431.P9553554301707041499

`A088141(A000334(n+1))`
-/

namespace A164431.P9553554301707041499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A000334 (n + 1)).toNat

end

end A164431.P9553554301707041499

namespace A164431

/-- `A088141(A000334(n+1))` -/
def P9553554301707041499.Spec : Prop :=
  ∀ n, P9553554301707041499.a n = A164431 n

end A164431

/-!
# A164432: Number of binary strings of length n with no substrings equal to 0000 0101 or 0110.

The programs for A164432, the canonical program `A164432.P5470583252269508333` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164432 has offset 4).

The definition of A164432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164432.P5470583252269508333

`ogf((13+8x+13x^2+10x^3+4x^4+8x^5)/(1-x-x^3-x^4-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164432

/-- `ogf((13+8x+13x^2+10x^3+4x^4+8x^5)/(1-x-x^3-x^4-x^6))` -/
def P5470583252269508333.Spec : Prop :=
  ∀ n, P5470583252269508333.a n = A164432 (n + 4)

theorem P5470583252269508333.correct : P5470583252269508333.Spec := by
  intro n
  simp only [A164432, Nat.add_sub_cancel]

end A164432

/-! ## A164432.P15842503526552213500

`A164459(n+4)-A001222(A192936(n))`
-/

namespace A164432.P15842503526552213500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A001222 (A192936 n).toNat

end

end A164432.P15842503526552213500

namespace A164432

/-- `A164459(n+4)-A001222(A192936(n))` -/
def P15842503526552213500.Spec : Prop :=
  ∀ n, P15842503526552213500.a n = A164432 (n + 4)

end A164432

/-! ## A164432.P14035798229951060228

`A164496(n+4)-A001221(A192936(n))`
-/

namespace A164432.P14035798229951060228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) - A001221 (A192936 n).toNat

end

end A164432.P14035798229951060228

namespace A164432

/-- `A164496(n+4)-A001221(A192936(n))` -/
def P14035798229951060228.Spec : Prop :=
  ∀ n, P14035798229951060228.a n = A164432 (n + 4)

end A164432

/-!
# A164433: Number of binary strings of length n with no substrings equal to 0000 0101 or 0111.

The programs for A164433, the canonical program `A164433.P10977610598766326005` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164433 has offset 4).

The definition of A164433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164433.P10977610598766326005

`ogf((13+8x+13x^2-6x^3-12x^4-8x^5)/(1-x-2x^3+x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164433

/-- `ogf((13+8x+13x^2-6x^3-12x^4-8x^5)/(1-x-2x^3+x^5+x^6))` -/
def P10977610598766326005.Spec : Prop :=
  ∀ n, P10977610598766326005.a n = A164433 (n + 4)

theorem P10977610598766326005.correct : P10977610598766326005.Spec := by
  intro n
  simp only [A164433, Nat.add_sub_cancel]

end A164433

/-! ## A164433.P8593187419957656566

`A164481(n+4)+A080679(A000153(n))`
-/

namespace A164433.P8593187419957656566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164481 (n + 4) + A080679 (A000153 n).toNat

end

end A164433.P8593187419957656566

namespace A164433

/-- `A164481(n+4)+A080679(A000153(n))` -/
def P8593187419957656566.Spec : Prop :=
  ∀ n, P8593187419957656566.a n = A164433 (n + 4)

end A164433

/-!
# A164434: Number of binary strings of length n with no substrings equal to 0000 0101 or 1010.

The programs for A164434, the canonical program `A164434.P10380527050027693516` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164434 has offset 4).

The definition of A164434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164434.P12580392719338846603

`ogf((13+10x+17x^2+4x^3-7x^4-12x^5-8x^6)/(1-x-2x^3-x^4+x^6+x^7))`
-/

namespace A164434.P12580392719338846603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 10, 17, 4, -7, -12, -8] [1, -1, 0, -2, -1, 0, 1, 1] n

end

end A164434.P12580392719338846603

namespace A164434

/-- `ogf((13+10x+17x^2+4x^3-7x^4-12x^5-8x^6)/(1-x-2x^3-x^4+x^6+x^7))` -/
def P12580392719338846603.Spec : Prop :=
  ∀ n, P12580392719338846603.a n = A164434 (n + 4)

end A164434

/-! ## A164434.P10380527050027693516

`a(n-1)+2*a(n-3)+a(n-4)-a(n-6)-a(n-7)` with `a(0)=13, a(1)=23, a(2)=40, a(3)=70, a(4)=122, a(5)=213, a(6)=372`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164434

/-- `a(n-1)+2*a(n-3)+a(n-4)-a(n-6)-a(n-7)` -/
def P10380527050027693516.Spec : Prop :=
  ∀ n, P10380527050027693516.a n = A164434 (n + 4)

theorem P10380527050027693516.correct : P10380527050027693516.Spec := by
  intro n
  simp only [A164434, Nat.add_sub_cancel]

end A164434

/-! ## A164434.P11813981174059145821

`A233583(Δ[A301789(n+1)])`
-/

namespace A164434.P11813981174059145821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat

end

end A164434.P11813981174059145821

namespace A164434

/-- `A233583(Δ[A301789(n+1)])` -/
def P11813981174059145821.Spec : Prop :=
  ∀ n, P11813981174059145821.a n = A164434 (n + 4)

end A164434

/-! ## A164434.P260528768556555517

`Δ[A301789(A032555(n+1))]-1`
-/

namespace A164434.P260528768556555517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (A032555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A164434.P260528768556555517

namespace A164434

/-- `Δ[A301789(A032555(n+1))]-1` -/
def P260528768556555517.Spec : Prop :=
  ∀ n, P260528768556555517.a n = A164434 (n + 4)

end A164434

/-!
# A164435: Number of binary strings of length n with no substrings equal to 0000 0101 or 1011.

The programs for A164435, the canonical program `A164435.P8614676294007498674` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164435 has offset 4).

The definition of A164435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164435.P8614676294007498674

`ogf((13+9x+15x^2+12x^3+7x^4+12x^5+8x^6)/(1-x-x^3-x^4-x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164435

/-- `ogf((13+9x+15x^2+12x^3+7x^4+12x^5+8x^6)/(1-x-x^3-x^4-x^6-x^7))` -/
def P8614676294007498674.Spec : Prop :=
  ∀ n, P8614676294007498674.a n = A164435 (n + 4)

theorem P8614676294007498674.correct : P8614676294007498674.Spec := by
  intro n
  simp only [A164435, Nat.add_sub_cancel]

end A164435

/-! ## A164435.P8040128996206081870

`A010923(n)-A009194(A176828(n))`
-/

namespace A164435.P8040128996206081870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010923 n - A009194 (A176828 n).toNat

end

end A164435.P8040128996206081870

namespace A164435

/-- `A010923(n)-A009194(A176828(n))` -/
def P8040128996206081870.Spec : Prop :=
  ∀ n, P8040128996206081870.a n = A164435 (n + 4)

end A164435

/-!
# A164436: Number of binary strings of length n with no substrings equal to 0000 0101 or 1110.

The programs for A164436, the canonical program `A164436.P11836264847990076348` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164436 has offset 4).

The definition of A164436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164436.P11836264847990076348

`ogf((13+8x+12x^2-7x^3-13x^4-8x^5)/(1-x-2x^3+x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164436

/-- `ogf((13+8x+12x^2-7x^3-13x^4-8x^5)/(1-x-2x^3+x^5+x^6))` -/
def P11836264847990076348.Spec : Prop :=
  ∀ n, P11836264847990076348.a n = A164436 (n + 4)

theorem P11836264847990076348.correct : P11836264847990076348.Spec := by
  intro n
  simp only [A164436, Nat.add_sub_cancel]

end A164436

/-! ## A164436.P3504262859607926359

`Δ[A021013(n+3)]-A010051(A241483(n+1))`
-/

namespace A164436.P3504262859607926359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010051 (A241483 (n + 1)).toNat

end

end A164436.P3504262859607926359

namespace A164436

/-- `Δ[A021013(n+3)]-A010051(A241483(n+1))` -/
def P3504262859607926359.Spec : Prop :=
  ∀ n, P3504262859607926359.a n = A164436 (n + 4)

end A164436

/-! ## A164436.P5099105671655352415

`A055086(A200880(n+2))`
-/

namespace A164436.P5099105671655352415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A200880 (n + 2)).toNat

end

end A164436.P5099105671655352415

namespace A164436

/-- `A055086(A200880(n+2))` -/
def P5099105671655352415.Spec : Prop :=
  ∀ n, P5099105671655352415.a n = A164436 (n + 4)

end A164436

/-!
# A164437: Number of binary strings of length n with no substrings equal to 0000, 0101, or 1111.

The programs for A164437, the canonical program `A164437.P10901553434260267919` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164437 has offset 0).

The definition of A164437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164437.P10901553434260267919

`ogf((1+2x+4x^2+6x^3+6x^4+6x^5+4x^6+2x^7+x^8)/(1-2x^3-3x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164437

/-- `ogf((1+2x+4x^2+6x^3+6x^4+6x^5+4x^6+2x^7+x^8)/(1-2x^3-3x^4-2x^5-x^6))` -/
def P10901553434260267919.Spec : Prop :=
  ∀ n, P10901553434260267919.a n = A164437 n

theorem P10901553434260267919.correct : P10901553434260267919.Spec := by
  intro n
  simp only [A164437]

end A164437

/-! ## A164437.P6191727486083918749

`A055086(Δ[A173611(n)])`
-/

namespace A164437.P6191727486083918749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n).toNat

end

end A164437.P6191727486083918749

namespace A164437

/-- `A055086(Δ[A173611(n)])` -/
def P6191727486083918749.Spec : Prop :=
  ∀ n, P6191727486083918749.a n = A164437 n

end A164437

/-! ## A164437.P9465110627103186374

`∑[A137735(∑[A001853(n+1)])]`
-/

namespace A164437.P9465110627103186374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001853 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164437.P9465110627103186374

namespace A164437

/-- `∑[A137735(∑[A001853(n+1)])]` -/
def P9465110627103186374.Spec : Prop :=
  ∀ n, P9465110627103186374.a n = A164437 n

end A164437

/-! ## A164437.P119067303102142979

`∑[A137734(A127912(n))]-char[9]`
-/

namespace A164437.P119067303102142979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A127912 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164437.P119067303102142979

namespace A164437

/-- `∑[A137734(A127912(n))]-char[9]` -/
def P119067303102142979.Spec : Prop :=
  ∀ n, P119067303102142979.a n = A164437 n

end A164437

/-! ## A164437.P11061118996038155563

`A226143(A122595(n+1))-char[9]`
-/

namespace A164437.P11061118996038155563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A122595 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164437.P11061118996038155563

namespace A164437

/-- `A226143(A122595(n+1))-char[9]` -/
def P11061118996038155563.Spec : Prop :=
  ∀ n, P11061118996038155563.a n = A164437 n

end A164437

/-!
# A164438: Number of binary strings of length n with no substrings equal to 0000 0110 or 0111.

The programs for A164438, the canonical program `A164438.P11556131656220062559` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164438 has offset 4).

The definition of A164438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164438.P11556131656220062559

`ogf((13+8x-2x^2-4x^3-8x^4)/(1-x-x^2+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164438

/-- `ogf((13+8x-2x^2-4x^3-8x^4)/(1-x-x^2+x^5))` -/
def P11556131656220062559.Spec : Prop :=
  ∀ n, P11556131656220062559.a n = A164438 (n + 4)

theorem P11556131656220062559.correct : P11556131656220062559.Spec := by
  intro n
  simp only [A164438, Nat.add_sub_cancel]

end A164438

/-! ## A164438.P11898394778015943007

`A023435(n+8)-3`
-/

namespace A164438.P11898394778015943007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 8) - 3

end

end A164438.P11898394778015943007

namespace A164438

/-- `A023435(n+8)-3` -/
def P11898394778015943007.Spec : Prop :=
  ∀ n, P11898394778015943007.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P14814223585324050443

`∑[A013979(n+7)]+8`
-/

namespace A164438.P14814223585324050443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164438.P14814223585324050443

namespace A164438

/-- `∑[A013979(n+7)]+8` -/
def P14814223585324050443.Spec : Prop :=
  ∀ n, P14814223585324050443.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P2630513289857265939

`∑[A107458(n+11)]+8`
-/

namespace A164438.P2630513289857265939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164438.P2630513289857265939

namespace A164438

/-- `∑[A107458(n+11)]+8` -/
def P2630513289857265939.Spec : Prop :=
  ∀ n, P2630513289857265939.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P12459623434672900833

`A164464(n+4)+A023435(n)`
-/

namespace A164438.P12459623434672900833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + A023435 n

end

end A164438.P12459623434672900833

namespace A164438

/-- `A164464(n+4)+A023435(n)` -/
def P12459623434672900833.Spec : Prop :=
  ∀ n, P12459623434672900833.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P3543228289623381718

`A164464(n+4)+A219977(2*n+1)+A013979(n+2)`
-/

namespace A164438.P3543228289623381718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + (A219977 (2 * n + 1) + A013979 (n + 2))

end

end A164438.P3543228289623381718

namespace A164438

/-- `A164464(n+4)+A219977(2*n+1)+A013979(n+2)` -/
def P3543228289623381718.Spec : Prop :=
  ∀ n, P3543228289623381718.a n = A164438 (n + 4)

end A164438

/-!
# A164439: Number of binary strings of length n with no substrings equal to 0000 0110 or 1001.

The programs for A164439, the canonical program `A164439.P6401523715684320119` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164439 has offset 4).

The definition of A164439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164439.P6401523715684320119

`ogf((13+8x+14x^3-3x^4+8x^5)/(1-x-x^2+x^3-2x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164439

/-- `ogf((13+8x+14x^3-3x^4+8x^5)/(1-x-x^2+x^3-2x^4+x^5-x^6))` -/
def P6401523715684320119.Spec : Prop :=
  ∀ n, P6401523715684320119.a n = A164439 (n + 4)

theorem P6401523715684320119.correct : P6401523715684320119.Spec := by
  intro n
  simp only [A164439, Nat.add_sub_cancel]

end A164439

/-! ## A164439.P11260275821280001543

`A121855(A010915(n+1))`
-/

namespace A164439.P11260275821280001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (A010915 (n + 1)).toNat

end

end A164439.P11260275821280001543

namespace A164439

/-- `A121855(A010915(n+1))` -/
def P11260275821280001543.Spec : Prop :=
  ∀ n, P11260275821280001543.a n = A164439 (n + 4)

end A164439

/-! ## A164439.P9322387390962642407

`A022308(n+4)-A001222(A002110(n))`
-/

namespace A164439.P9322387390962642407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 4) - A001222 (A002110 n).toNat

end

end A164439.P9322387390962642407

namespace A164439

/-- `A022308(n+4)-A001222(A002110(n))` -/
def P9322387390962642407.Spec : Prop :=
  ∀ n, P9322387390962642407.a n = A164439 (n + 4)

end A164439

/-!
# A164440: Number of binary strings of length n with no substrings equal to 0000 0110 or 1011.

The programs for A164440, the canonical program `A164440.P1856277761140627068` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164440 has offset 4).

The definition of A164440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164440.P15495180118090686344

`ogf((13-4x+6x^2-3x^3+8x^4)/(1-2x+x^2-x^3+x^4-x^5))`
-/

namespace A164440.P15495180118090686344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -4, 6, -3, 8] [1, -2, 1, -1, 1, -1] n

end

end A164440.P15495180118090686344

namespace A164440

/-- `ogf((13-4x+6x^2-3x^3+8x^4)/(1-2x+x^2-x^3+x^4-x^5))` -/
def P15495180118090686344.Spec : Prop :=
  ∀ n, P15495180118090686344.a n = A164440 (n + 4)

end A164440

/-! ## A164440.P1856277761140627068

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=13, a(1)=22, a(2)=37, a(3)=62, a(4)=104`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164440

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P1856277761140627068.Spec : Prop :=
  ∀ n, P1856277761140627068.a n = A164440 (n + 4)

theorem P1856277761140627068.correct : P1856277761140627068.Spec := by
  intro n
  simp only [A164440, Nat.add_sub_cancel]

end A164440

/-! ## A164440.P6806037196774425800

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=13, a(1)=22`
-/

namespace A164440.P6806037196774425800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A164440.P6806037196774425800

namespace A164440

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P6806037196774425800.Spec : Prop :=
  ∀ n, P6806037196774425800.a n = A164440 (n + 4)

end A164440

/-! ## A164440.P849179692132123587

`A120400(n+4)+A120400(n+5)`
-/

namespace A164440.P849179692132123587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120400 (n + 4) + A120400 (n + 5)

end

end A164440.P849179692132123587

namespace A164440

/-- `A120400(n+4)+A120400(n+5)` -/
def P849179692132123587.Spec : Prop :=
  ∀ n, P849179692132123587.a n = A164440 (n + 4)

end A164440

/-! ## A164440.P8247277759680453286

`round(a(n-1)²/a(n-2))` with `a(0)=13, a(1)=22`
-/

namespace A164440.P8247277759680453286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A164440.P8247277759680453286

namespace A164440

/-- `round(a(n-1)²/a(n-2))` -/
def P8247277759680453286.Spec : Prop :=
  ∀ n, P8247277759680453286.a n = A164440 (n + 4)

end A164440

/-!
# A164441: Number of binary strings of length n with no substrings equal to 0000, 0110, or 1111.

The programs for A164441, the canonical program `A164441.P309007213704091010` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164441 has offset 0).

The definition of A164441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164441.P309007213704091010

`ogf((1+2x+3x^2+5x^3+5x^4+5x^5+4x^6+2x^7+x^8)/(1-x^2-x^3-2x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164441

/-- `ogf((1+2x+3x^2+5x^3+5x^4+5x^5+4x^6+2x^7+x^8)/(1-x^2-x^3-2x^4-x^5-x^6))` -/
def P309007213704091010.Spec : Prop :=
  ∀ n, P309007213704091010.a n = A164441 n

theorem P309007213704091010.correct : P309007213704091010.Spec := by
  intro n
  simp only [A164441]

end A164441

/-! ## A164441.P2775026270183527199

`A001462(∑[∑[A249512(n)]])`
-/

namespace A164441.P2775026270183527199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164441.P2775026270183527199

namespace A164441

/-- `A001462(∑[∑[A249512(n)]])` -/
def P2775026270183527199.Spec : Prop :=
  ∀ n, P2775026270183527199.a n = A164441 n

end A164441

/-! ## A164441.P11675820200868141119

`A193832(A002026(n+2))-A132272(n)`
-/

namespace A164441.P11675820200868141119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A002026 (n + 2)).toNat - A132272 n

end

end A164441.P11675820200868141119

namespace A164441

/-- `A193832(A002026(n+2))-A132272(n)` -/
def P11675820200868141119.Spec : Prop :=
  ∀ n, P11675820200868141119.a n = A164441 n

end A164441

/-! ## A164441.P16277439798066867760

`A103128(A018033(n))+A000045(n)`
-/

namespace A164441.P16277439798066867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A018033 n).toNat + A000045 n

end

end A164441.P16277439798066867760

namespace A164441

/-- `A103128(A018033(n))+A000045(n)` -/
def P16277439798066867760.Spec : Prop :=
  ∀ n, P16277439798066867760.a n = A164441 n

end A164441

/-! ## A164441.P11651850852737701334

`A001611(n)+A103128(A018033(n))-1`
-/

namespace A164441.P11651850852737701334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A103128 (A018033 n).toNat - 1)

end

end A164441.P11651850852737701334

namespace A164441

/-- `A001611(n)+A103128(A018033(n))-1` -/
def P11651850852737701334.Spec : Prop :=
  ∀ n, P11651850852737701334.a n = A164441 n

end A164441

/-!
# A164442: Number of binary strings of length n with no substrings equal to 0000 0111 or 1001.

The programs for A164442, the canonical program `A164442.P4416421021040526825` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164442 has offset 4).

The definition of A164442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164442.P4416421021040526825

`ogf((13+8x-x^2-3x^3-5x^4-8x^5)/(1-x-x^2+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164442

/-- `ogf((13+8x-x^2-3x^3-5x^4-8x^5)/(1-x-x^2+x^6))` -/
def P4416421021040526825.Spec : Prop :=
  ∀ n, P4416421021040526825.a n = A164442 (n + 4)

theorem P4416421021040526825.correct : P4416421021040526825.Spec := by
  intro n
  simp only [A164442, Nat.add_sub_cancel]

end A164442

/-! ## A164442.P11344976693792191513

`A185284(A000124(n))+A164499(n+4)`
-/

namespace A164442.P11344976693792191513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A164499 (n + 4)

end

end A164442.P11344976693792191513

namespace A164442

/-- `A185284(A000124(n))+A164499(n+4)` -/
def P11344976693792191513.Spec : Prop :=
  ∀ n, P11344976693792191513.a n = A164442 (n + 4)

end A164442

/-! ## A164442.P7393802165910064848

`A164499(n+4)+A010059(A327644(n))`
-/

namespace A164442.P7393802165910064848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164499 (n + 4) + A010059 (A327644 n).toNat

end

end A164442.P7393802165910064848

namespace A164442

/-- `A164499(n+4)+A010059(A327644(n))` -/
def P7393802165910064848.Spec : Prop :=
  ∀ n, P7393802165910064848.a n = A164442 (n + 4)

end A164442

/-! ## A164442.P13072762655053972976

`A186747(A308822(n))+A164499(n+4)`
-/

namespace A164442.P13072762655053972976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A308822 n).toNat + A164499 (n + 4)

end

end A164442.P13072762655053972976

namespace A164442

/-- `A186747(A308822(n))+A164499(n+4)` -/
def P13072762655053972976.Spec : Prop :=
  ∀ n, P13072762655053972976.a n = A164442 (n + 4)

end A164442

/-! ## A164442.P5884887056363666118

`xor(A151755(A164508(n)), A164499(n+4))`
-/

namespace A164442.P5884887056363666118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A164508 n).toNat) (A164499 (n + 4))

end

end A164442.P5884887056363666118

namespace A164442

/-- `xor(A151755(A164508(n)), A164499(n+4))` -/
def P5884887056363666118.Spec : Prop :=
  ∀ n, P5884887056363666118.a n = A164442 (n + 4)

end A164442

/-!
# A164443: Number of binary strings of length n with no substrings equal to 0000, 0111 or 1110.

The programs for A164443, the canonical program `A164443.P8207089754481361288` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164443 has offset 0).

The definition of A164443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164443.P8207089754481361288

`ogf((1+x+x^2+x^3-x^4-2x^5-3x^6-2x^7-x^8)/(1-x-x^2-x^3+x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164443

/-- `ogf((1+x+x^2+x^3-x^4-2x^5-3x^6-2x^7-x^8)/(1-x-x^2-x^3+x^5+x^6))` -/
def P8207089754481361288.Spec : Prop :=
  ∀ n, P8207089754481361288.a n = A164443 n

theorem P8207089754481361288.correct : P8207089754481361288.Spec := by
  intro n
  simp only [A164443]

end A164443

/-! ## A164443.P5337141395297406288

`A185283(A238531(n)+A029858(n+1))`
-/

namespace A164443.P5337141395297406288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A238531 n + A029858 (n + 1)).toNat

end

end A164443.P5337141395297406288

namespace A164443

/-- `A185283(A238531(n)+A029858(n+1))` -/
def P5337141395297406288.Spec : Prop :=
  ∀ n, P5337141395297406288.a n = A164443 n

end A164443

/-! ## A164443.P1914185833497935959

`floor(sqrt(A349166(3^n)))`
-/

namespace A164443.P1914185833497935959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A349166 (3 ^ n))

end

end A164443.P1914185833497935959

namespace A164443

/-- `floor(sqrt(A349166(3^n)))` -/
def P1914185833497935959.Spec : Prop :=
  ∀ n, P1914185833497935959.a n = A164443 n

end A164443

/-! ## A164443.P7840656290414524536

`A188429(A005956(n+5))`
-/

namespace A164443.P7840656290414524536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (A005956 (n + 5)).toNat

end

end A164443.P7840656290414524536

namespace A164443

/-- `A188429(A005956(n+5))` -/
def P7840656290414524536.Spec : Prop :=
  ∀ n, P7840656290414524536.a n = A164443 n

end A164443

/-! ## A164443.P8379318754594973361

`A006670(A257674(n))+n`
-/

namespace A164443.P8379318754594973361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A257674 n).toNat + (n : ℤ)

end

end A164443.P8379318754594973361

namespace A164443

/-- `A006670(A257674(n))+n` -/
def P8379318754594973361.Spec : Prop :=
  ∀ n, P8379318754594973361.a n = A164443 n

end A164443

/-!
# A164444: Number of binary strings of length n with no substrings equal to 0000 1001 or 1011.

The programs for A164444, the canonical program `A164444.P17521599906760075916` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164444 has offset 4).

The definition of A164444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164444.P17521599906760075916

`ogf((13+8x-2x^2+8x^3)/(1-x-x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164444

/-- `ogf((13+8x-2x^2+8x^3)/(1-x-x^2+x^3-x^4))` -/
def P17521599906760075916.Spec : Prop :=
  ∀ n, P17521599906760075916.a n = A164444 (n + 4)

theorem P17521599906760075916.correct : P17521599906760075916.Spec := by
  intro n
  simp only [A164444, Nat.add_sub_cancel]

end A164444

/-! ## A164444.P17588794379916646895

`A003056(49*(A137531(n)+1))`
-/

namespace A164444.P17588794379916646895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (49 * (A137531 n + 1)).toNat

end

end A164444.P17588794379916646895

namespace A164444

/-- `A003056(49*(A137531(n)+1))` -/
def P17588794379916646895.Spec : Prop :=
  ∀ n, P17588794379916646895.a n = A164444 (n + 4)

end A164444

/-!
# A164445: Number of binary strings of length n with no substrings equal to 0001 0010 or 0100.

The programs for A164445, the canonical program `A164445.P8405493169813149914` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164445 has offset 4).

The definition of A164445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164445.P8405493169813149914

`ogf((13+9x+3x^2+6x^3-4x^4-8x^5)/(1-x-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164445

/-- `ogf((13+9x+3x^2+6x^3-4x^4-8x^5)/(1-x-x^2-x^4+x^6))` -/
def P8405493169813149914.Spec : Prop :=
  ∀ n, P8405493169813149914.a n = A164445 (n + 4)

theorem P8405493169813149914.correct : P8405493169813149914.Spec := by
  intro n
  simp only [A164445, Nat.add_sub_cancel]

end A164445

/-! ## A164445.P3874319974146330830

`A249728(∑[floor(ϕ²*a(n-1))])` with `a(0)=41, a(1)=62`
-/

namespace A164445.P3874319974146330830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41, 62] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164445.P3874319974146330830

namespace A164445

/-- `A249728(∑[floor(ϕ²*a(n-1))])` -/
def P3874319974146330830.Spec : Prop :=
  ∀ n, P3874319974146330830.a n = A164445 (n + 4)

end A164445

/-!
# A164446: Number of binary strings of length n with no substrings equal to 0001 0010 or 0101.

The programs for A164446, the canonical program `A164446.P2139708238904513187` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164446 has offset 4).

The definition of A164446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164446.P2139708238904513187

`ogf((13-4x+6x^2-3x^3-6x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164446

/-- `ogf((13-4x+6x^2-3x^3-6x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^5-x^6+x^7))` -/
def P2139708238904513187.Spec : Prop :=
  ∀ n, P2139708238904513187.a n = A164446 (n + 4)

theorem P2139708238904513187.correct : P2139708238904513187.Spec := by
  intro n
  simp only [A164446, Nat.add_sub_cancel]

end A164446

/-! ## A164446.P16322134283827037285

`A176839(A000111(n))+A164472(n+4)`
-/

namespace A164446.P16322134283827037285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A000111 n).toNat + A164472 (n + 4)

end

end A164446.P16322134283827037285

namespace A164446

/-- `A176839(A000111(n))+A164472(n+4)` -/
def P16322134283827037285.Spec : Prop :=
  ∀ n, P16322134283827037285.a n = A164446 (n + 4)

end A164446

/-!
# A164447: Number of binary strings of length n with no substrings equal to 0001 0010 or 0110.

The programs for A164447, the canonical program `A164447.P10491228386454488481` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164447 has offset 4).

The definition of A164447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164447.P10491228386454488481

`ogf((13-5x-9x^2+14x^3-4x^4-8x^5)/(1-2x+2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164447

/-- `ogf((13-5x-9x^2+14x^3-4x^4-8x^5)/(1-2x+2x^3-2x^4+x^6))` -/
def P10491228386454488481.Spec : Prop :=
  ∀ n, P10491228386454488481.a n = A164447 (n + 4)

theorem P10491228386454488481.correct : P10491228386454488481.Spec := by
  intro n
  simp only [A164447, Nat.add_sub_cancel]

end A164447

/-! ## A164447.P16929820992422671722

`record[A272912(n+13)]-A088911(n+4)`
-/

namespace A164447.P16929820992422671722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088911 (n + 4)

end

end A164447.P16929820992422671722

namespace A164447

/-- `record[A272912(n+13)]-A088911(n+4)` -/
def P16929820992422671722.Spec : Prop :=
  ∀ n, P16929820992422671722.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P5643898610861276599

`A000071(n+7)+A001924(n+2)%2`
-/

namespace A164447.P5643898610861276599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 7) + Int.tmod (A001924 (n + 2)) 2

end

end A164447.P5643898610861276599

namespace A164447

/-- `A000071(n+7)+A001924(n+2)%2` -/
def P5643898610861276599.Spec : Prop :=
  ∀ n, P5643898610861276599.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P2098760177781380075

`A212804(n+8)-Δ[A008615(n+5)]²`
-/

namespace A164447.P2098760177781380075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 8) - (f1 (n + 1) - f1 n) ^ 2

end

end A164447.P2098760177781380075

namespace A164447

/-- `A212804(n+8)-Δ[A008615(n+5)]²` -/
def P2098760177781380075.Spec : Prop :=
  ∀ n, P2098760177781380075.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P14987230237154237940

`A212804(n+8)-A000035(A002264(n+1))`
-/

namespace A164447.P14987230237154237940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 8) - A000035 (A002264 (n + 1)).toNat

end

end A164447.P14987230237154237940

namespace A164447

/-- `A212804(n+8)-A000035(A002264(n+1))` -/
def P14987230237154237940.Spec : Prop :=
  ∀ n, P14987230237154237940.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P7518880338643669166

`A000071(n+7)+and(1, A192951(n+2))`
-/

namespace A164447.P7518880338643669166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 7) + Int.land 1 (A192951 (n + 2))

end

end A164447.P7518880338643669166

namespace A164447

/-- `A000071(n+7)+and(1, A192951(n+2))` -/
def P7518880338643669166.Spec : Prop :=
  ∀ n, P7518880338643669166.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P6618638206961698578

`or(1, A001924(n+5))-A001924(n+4)`
-/

namespace A164447.P6618638206961698578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001924 (n + 5)) - A001924 (n + 4)

end

end A164447.P6618638206961698578

namespace A164447

/-- `or(1, A001924(n+5))-A001924(n+4)` -/
def P6618638206961698578.Spec : Prop :=
  ∀ n, P6618638206961698578.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P5034399699209202975

`Δ[A000071(n+8)]-∑[A131531(n+1)]`
-/

namespace A164447.P5034399699209202975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A164447.P5034399699209202975

namespace A164447

/-- `Δ[A000071(n+8)]-∑[A131531(n+1)]` -/
def P5034399699209202975.Spec : Prop :=
  ∀ n, P5034399699209202975.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P7431444009523430351

`A000975(n+6)-(A113405(n+8)-A140096(n+7))`
-/

namespace A164447.P7431444009523430351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 6) - (A113405 (n + 8) - A140096 (n + 7))

end

end A164447.P7431444009523430351

namespace A164447

/-- `A000975(n+6)-(A113405(n+8)-A140096(n+7))` -/
def P7431444009523430351.Spec : Prop :=
  ∀ n, P7431444009523430351.a n = A164447 (n + 4)

end A164447

/-!
# A164448: Number of binary strings of length n with no substrings equal to 0001 0010 or 0111.

The programs for A164448, the canonical program `A164448.P13986502339937278264` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164448 has offset 4).

The definition of A164448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164448.P13986502339937278264

`ogf((13-5x-9x^2-2x^3-4x^4+8x^5)/(1-2x+x^3+x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164448

/-- `ogf((13-5x-9x^2-2x^3-4x^4+8x^5)/(1-2x+x^3+x^5-x^6))` -/
def P13986502339937278264.Spec : Prop :=
  ∀ n, P13986502339937278264.a n = A164448 (n + 4)

theorem P13986502339937278264.correct : P13986502339937278264.Spec := by
  intro n
  simp only [A164448, Nat.add_sub_cancel]

end A164448

/-! ## A164448.P17168225305762406650

`A164464(n+4)+∑[A023435(n)]`
-/

namespace A164448.P17168225305762406650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164448.P17168225305762406650

namespace A164448

/-- `A164464(n+4)+∑[A023435(n)]` -/
def P17168225305762406650.Spec : Prop :=
  ∀ n, P17168225305762406650.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P11178049819130097570

`∑[A023435(n)]+A164316(n+6)-3`
-/

namespace A164448.P11178049819130097570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A164316 (n + 6) - 3)

end

end A164448.P11178049819130097570

namespace A164448

/-- `∑[A023435(n)]+A164316(n+6)-3` -/
def P11178049819130097570.Spec : Prop :=
  ∀ n, P11178049819130097570.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P14528065897759829509

`∑[A023435(n)]+∑[A164316(n+3)]+8`
-/

namespace A164448.P14528065897759829509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + 8)

end

end A164448.P14528065897759829509

namespace A164448

/-- `∑[A023435(n)]+∑[A164316(n+3)]+8` -/
def P14528065897759829509.Spec : Prop :=
  ∀ n, P14528065897759829509.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P1721181570669032325

`A164438(n+4)+∑[A023435(n)]-A023435(n)`
-/

namespace A164448.P1721181570669032325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164438 (n + 4) + (∑ j ∈ Finset.range (n + 1), f1 j - A023435 n)

end

end A164448.P1721181570669032325

namespace A164448

/-- `A164438(n+4)+∑[A023435(n)]-A023435(n)` -/
def P1721181570669032325.Spec : Prop :=
  ∀ n, P1721181570669032325.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P16311972989137185189

`∑[A023435(n)]+A068921(n+3)-(3-A068921(n+7))`
-/

namespace A164448.P16311972989137185189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A068921 (n + 3) - (3 - A068921 (n + 7)))

end

end A164448.P16311972989137185189

namespace A164448

/-- `∑[A023435(n)]+A068921(n+3)-(3-A068921(n+7))` -/
def P16311972989137185189.Spec : Prop :=
  ∀ n, P16311972989137185189.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P8936299320301659337

`∑[A023435(n)]+A000930(n+4)+A000930(n+8)-3`
-/

namespace A164448.P8936299320301659337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000930 (n + 4) + (A000930 (n + 8) - 3))

end

end A164448.P8936299320301659337

namespace A164448

/-- `∑[A023435(n)]+A000930(n+4)+A000930(n+8)-3` -/
def P8936299320301659337.Spec : Prop :=
  ∀ n, P8936299320301659337.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P15306720689590962622

`∑[A023435(n)]+A135851(n+13)+A135851(n+9)-3`
-/

namespace A164448.P15306720689590962622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A135851 (n + 13) + (A135851 (n + 9) - 3))

end

end A164448.P15306720689590962622

namespace A164448

/-- `∑[A023435(n)]+A135851(n+13)+A135851(n+9)-3` -/
def P15306720689590962622.Spec : Prop :=
  ∀ n, P15306720689590962622.a n = A164448 (n + 4)

end A164448

/-!
# A164449: Number of binary strings of length n with no substrings equal to 0001 0010 or 1010.

The programs for A164449, the canonical program `A164449.P925532381258203535` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164449 has offset 4).

The definition of A164449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164449.P925532381258203535

`ogf((13-5x+5x^2-4x^3-8x^4)/(1-2x+x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164449

/-- `ogf((13-5x+5x^2-4x^3-8x^4)/(1-2x+x^2-x^3+x^5))` -/
def P925532381258203535.Spec : Prop :=
  ∀ n, P925532381258203535.a n = A164449 (n + 4)

theorem P925532381258203535.correct : P925532381258203535.Spec := by
  intro n
  simp only [A164449, Nat.add_sub_cancel]

end A164449

/-! ## A164449.P13622229945600511566

`A164462(n+4)+A074677(n)`
-/

namespace A164449.P13622229945600511566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164462 (n + 4) + A074677 n

end

end A164449.P13622229945600511566

namespace A164449

/-- `A164462(n+4)+A074677(n)` -/
def P13622229945600511566.Spec : Prop :=
  ∀ n, P13622229945600511566.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P9687608175749677541

`A097083(n+2)+A000032(n+5)`
-/

namespace A164449.P9687608175749677541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2) + A000032 (n + 5)

end

end A164449.P9687608175749677541

namespace A164449

/-- `A097083(n+2)+A000032(n+5)` -/
def P9687608175749677541.Spec : Prop :=
  ∀ n, P9687608175749677541.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P1862325254994132937

`A097083(n+2)+A000204(n+5)`
-/

namespace A164449.P1862325254994132937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2) + A000204 (n + 5)

end

end A164449.P1862325254994132937

namespace A164449

/-- `A097083(n+2)+A000204(n+5)` -/
def P1862325254994132937.Spec : Prop :=
  ∀ n, P1862325254994132937.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P6277548020801415854

`A097083(n+6)-(A006498(n+2)+A006498(n))`
-/

namespace A164449.P6277548020801415854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 6) - (A006498 (n + 2) + A006498 n)

end

end A164449.P6277548020801415854

namespace A164449

/-- `A097083(n+6)-(A006498(n+2)+A006498(n))` -/
def P6277548020801415854.Spec : Prop :=
  ∀ n, P6277548020801415854.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P10070013699639934187

`floor(A264080(n+4)/A000204(n+4))`
-/

namespace A164449.P10070013699639934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264080 (n + 4) : ℚ) / (A000204 (n + 4) : ℚ)⌋

end

end A164449.P10070013699639934187

namespace A164449

/-- `floor(A264080(n+4)/A000204(n+4))` -/
def P10070013699639934187.Spec : Prop :=
  ∀ n, P10070013699639934187.a n = A164449 (n + 4)

end A164449

/-!
# A164450: Number of binary strings of length n with no substrings equal to 0001 0010 or 1011.

The programs for A164450, the canonical program `A164450.P5731069385489707534` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164450 has offset 4).

The definition of A164450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164450.P5731069385489707534

`ogf((13-5x-9x^2+11x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164450

/-- `ogf((13-5x-9x^2+11x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))` -/
def P5731069385489707534.Spec : Prop :=
  ∀ n, P5731069385489707534.a n = A164450 (n + 4)

theorem P5731069385489707534.correct : P5731069385489707534.Spec := by
  intro n
  simp only [A164450, Nat.add_sub_cancel]

end A164450

/-! ## A164450.P7029990674150596695

`A110654(n)+A289077(n+3)+2`
-/

namespace A164450.P7029990674150596695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + (A289077 (n + 3) + 2)

end

end A164450.P7029990674150596695

namespace A164450

/-- `A110654(n)+A289077(n+3)+2` -/
def P7029990674150596695.Spec : Prop :=
  ∀ n, P7029990674150596695.a n = A164450 (n + 4)

end A164450

/-! ## A164450.P16716158596978626996

`A289077(n+3)+A140106(n+7)`
-/

namespace A164450.P16716158596978626996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289077 (n + 3) + A140106 (n + 7)

end

end A164450.P16716158596978626996

namespace A164450

/-- `A289077(n+3)+A140106(n+7)` -/
def P16716158596978626996.Spec : Prop :=
  ∀ n, P16716158596978626996.a n = A164450 (n + 4)

end A164450

/-! ## A164450.P10986456348887331434

`A004526(n+1)+A289077(n+3)+2`
-/

namespace A164450.P10986456348887331434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A289077 (n + 3) + 2)

end

end A164450.P10986456348887331434

namespace A164450

/-- `A004526(n+1)+A289077(n+3)+2` -/
def P10986456348887331434.Spec : Prop :=
  ∀ n, P10986456348887331434.a n = A164450 (n + 4)

end A164450

/-! ## A164450.P8365080331962871228

`A007494(n)+A289077(n+3)+2-n`
-/

namespace A164450.P8365080331962871228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (A289077 (n + 3) + 2 - (n : ℤ))

end

end A164450.P8365080331962871228

namespace A164450

/-- `A007494(n)+A289077(n+3)+2-n` -/
def P8365080331962871228.Spec : Prop :=
  ∀ n, P8365080331962871228.a n = A164450 (n + 4)

end A164450

/-! ## A164450.P2644784230709116859

`A289077(n+3)+2-(A008619(n)+A001478(n+1))`
-/

namespace A164450.P2644784230709116859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289077 (n + 3) + 2 - (A008619 n + A001478 (n + 1))

end

end A164450.P2644784230709116859

namespace A164450

/-- `A289077(n+3)+2-(A008619(n)+A001478(n+1))` -/
def P2644784230709116859.Spec : Prop :=
  ∀ n, P2644784230709116859.a n = A164450 (n + 4)

end A164450

/-! ## A164450.P2715897542442175378

`A008621(n+1)+A289077(n+3)+A008621(n+3)`
-/

namespace A164450.P2715897542442175378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 1) + (A289077 (n + 3) + A008621 (n + 3))

end

end A164450.P2715897542442175378

namespace A164450

/-- `A008621(n+1)+A289077(n+3)+A008621(n+3)` -/
def P2715897542442175378.Spec : Prop :=
  ∀ n, P2715897542442175378.a n = A164450 (n + 4)

end A164450

/-!
# A164451: Number of binary strings of length n with no substrings equal to 0001 0010 or 1100.

The programs for A164451, the canonical program `A164451.P3599386254143969433` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164451 has offset 4).

The definition of A164451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164451.P3599386254143969433

`ogf((13-5x-8x^2+x^3+2x^4+4x^5-8x^6)/(1-2x+x^3-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164451

/-- `ogf((13-5x-8x^2+x^3+2x^4+4x^5-8x^6)/(1-2x+x^3-x^6+x^7))` -/
def P3599386254143969433.Spec : Prop :=
  ∀ n, P3599386254143969433.a n = A164451 (n + 4)

theorem P3599386254143969433.correct : P3599386254143969433.Spec := by
  intro n
  simp only [A164451, Nat.add_sub_cancel]

end A164451

/-! ## A164451.P14551548581861105785

`A001462(A159340(n+4))+2`
-/

namespace A164451.P14551548581861105785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A159340 (n + 4)).toNat + 2

end

end A164451.P14551548581861105785

namespace A164451

/-- `A001462(A159340(n+4))+2` -/
def P14551548581861105785.Spec : Prop :=
  ∀ n, P14551548581861105785.a n = A164451 (n + 4)

end A164451

/-! ## A164451.P8157338756702995101

`∑[A325913(A325909(a(n-1)))]` with `a(0)=13, a(1)=8, a(2)=13`
-/

namespace A164451.P8157338756702995101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 8, 13] fun n f1 =>
  A325913 (A325909 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164451.P8157338756702995101

namespace A164451

/-- `∑[A325913(A325909(a(n-1)))]` -/
def P8157338756702995101.Spec : Prop :=
  ∀ n, P8157338756702995101.a n = A164451 (n + 4)

end A164451

/-!
# A164452: Number of binary strings of length n with no substrings equal to 0001 0010 or 1101.

The programs for A164452, the canonical program `A164452.P13424732826828689325` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164452 has offset 4).

The definition of A164452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164452.P13424732826828689325

`ogf((13-18x+8x^2+2x^3-12x^4+8x^5)/(1-3x+3x^2-x^3-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164452

/-- `ogf((13-18x+8x^2+2x^3-12x^4+8x^5)/(1-3x+3x^2-x^3-x^4+2x^5-x^6))` -/
def P13424732826828689325.Spec : Prop :=
  ∀ n, P13424732826828689325.a n = A164452 (n + 4)

theorem P13424732826828689325.correct : P13424732826828689325.Spec := by
  intro n
  simp only [A164452, Nat.add_sub_cancel]

end A164452

/-! ## A164452.P3000043555096228233

`A048590(n+2)+A048590(n+4)-(n+16)`
-/

namespace A164452.P3000043555096228233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 (n + 2) + (A048590 (n + 4) - (n + 16 : ℤ))

end

end A164452.P3000043555096228233

namespace A164452

/-- `A048590(n+2)+A048590(n+4)-(n+16)` -/
def P3000043555096228233.Spec : Prop :=
  ∀ n, P3000043555096228233.a n = A164452 (n + 4)

end A164452

/-! ## A164452.P9025920515659592110

`A176839(A000111(n))+A164458(n+4)`
-/

namespace A164452.P9025920515659592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A000111 n).toNat + A164458 (n + 4)

end

end A164452.P9025920515659592110

namespace A164452

/-- `A176839(A000111(n))+A164458(n+4)` -/
def P9025920515659592110.Spec : Prop :=
  ∀ n, P9025920515659592110.a n = A164452 (n + 4)

end A164452

/-!
# A164453: Number of binary strings of length n with no substrings equal to 0001 0011 or 0100.

The programs for A164453, the canonical program `A164453.P2939799733480647412` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164453 has offset 4).

The definition of A164453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164453.P2939799733480647412

`ogf((13-5x+6x^2-4x^3+8x^4)/(1-2x+x^2-x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164453

/-- `ogf((13-5x+6x^2-4x^3+8x^4)/(1-2x+x^2-x^3+x^4-x^5))` -/
def P2939799733480647412.Spec : Prop :=
  ∀ n, P2939799733480647412.a n = A164453 (n + 4)

theorem P2939799733480647412.correct : P2939799733480647412.Spec := by
  intro n
  simp only [A164453, Nat.add_sub_cancel]

end A164453

/-! ## A164453.P12160442601266819930

`Δ[Δ[A164440(n+9)]]%A164440(n+5)`
-/

namespace A164453.P12160442601266819930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164440 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164440 (n + 5))

end

end A164453.P12160442601266819930

namespace A164453

/-- `Δ[Δ[A164440(n+9)]]%A164440(n+5)` -/
def P12160442601266819930.Spec : Prop :=
  ∀ n, P12160442601266819930.a n = A164453 (n + 4)

end A164453

/-! ## A164453.P10922742326108573677

`A164440(n+10)%(A164440(n+11)%A164440(n+9))`
-/

namespace A164453.P10922742326108573677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164440 (n + 10)) (Int.tmod (A164440 (n + 11)) (A164440 (n + 9)))

end

end A164453.P10922742326108573677

namespace A164453

/-- `A164440(n+10)%(A164440(n+11)%A164440(n+9))` -/
def P10922742326108573677.Spec : Prop :=
  ∀ n, P10922742326108573677.a n = A164453 (n + 4)

end A164453

/-! ## A164453.P14695542689276101603

`A274399(A164451(n+4))`
-/

namespace A164453.P14695542689276101603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A164451 (n + 4)).toNat

end

end A164453.P14695542689276101603

namespace A164453

/-- `A274399(A164451(n+4))` -/
def P14695542689276101603.Spec : Prop :=
  ∀ n, P14695542689276101603.a n = A164453 (n + 4)

end A164453

/-!
# A164454: Number of binary strings of length n with no substrings equal to 0001 0011 or 0101.

The programs for A164454, the canonical program `A164454.P8464166604096083662` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164454 has offset 4).

The definition of A164454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164454.P8464166604096083662

`ogf((13-5x+5x^2-21x^3+6x^4-4x^5+8x^6)/(1-2x+x^2-2x^3+3x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164454

/-- `ogf((13-5x+5x^2-21x^3+6x^4-4x^5+8x^6)/(1-2x+x^2-2x^3+3x^4-x^5+x^6-x^7))` -/
def P8464166604096083662.Spec : Prop :=
  ∀ n, P8464166604096083662.a n = A164454 (n + 4)

theorem P8464166604096083662.correct : P8464166604096083662.Spec := by
  intro n
  simp only [A164454, Nat.add_sub_cancel]

end A164454

/-! ## A164454.P16577046448962556385

`A048626(n+3)-(A004396(n)+6)`
-/

namespace A164454.P16577046448962556385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 (n + 3) - (A004396 n + 6)

end

end A164454.P16577046448962556385

namespace A164454

/-- `A048626(n+3)-(A004396(n)+6)` -/
def P16577046448962556385.Spec : Prop :=
  ∀ n, P16577046448962556385.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P3289049101901362235

`A050228(n+4)+A002264(n+7)`
-/

namespace A164454.P3289049101901362235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 4) + A002264 (n + 7)

end

end A164454.P3289049101901362235

namespace A164454

/-- `A050228(n+4)+A002264(n+7)` -/
def P3289049101901362235.Spec : Prop :=
  ∀ n, P3289049101901362235.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P13093839586922718739

`A000930(n+9)-(A004396(n)+6)`
-/

namespace A164454.P13093839586922718739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - (A004396 n + 6)

end

end A164454.P13093839586922718739

namespace A164454

/-- `A000930(n+9)-(A004396(n)+6)` -/
def P13093839586922718739.Spec : Prop :=
  ∀ n, P13093839586922718739.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P16175698988294012198

`A000930(n+9)-A274616(n+9)`
-/

namespace A164454.P16175698988294012198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - A274616 (n + 9)

end

end A164454.P16175698988294012198

namespace A164454

/-- `A000930(n+9)-A274616(n+9)` -/
def P16175698988294012198.Spec : Prop :=
  ∀ n, P16175698988294012198.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P8344141073573385953

`A020745(n+4)-Δ[A000212(n+7)]`
-/

namespace A164454.P8344141073573385953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 4) - (f1 (n + 1) - f1 n)

end

end A164454.P8344141073573385953

namespace A164454

/-- `A020745(n+4)-Δ[A000212(n+7)]` -/
def P8344141073573385953.Spec : Prop :=
  ∀ n, P8344141073573385953.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P11754591288719879346

`A020745(n+4)+A000212(n+7)-A000212(n+8)`
-/

namespace A164454.P11754591288719879346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 4) + (A000212 (n + 7) - A000212 (n + 8))

end

end A164454.P11754591288719879346

namespace A164454

/-- `A020745(n+4)+A000212(n+7)-A000212(n+8)` -/
def P11754591288719879346.Spec : Prop :=
  ∀ n, P11754591288719879346.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P8701202946631610316

`A000930(n+9)-(A002264(n+8)+A002264(n)+4)`
-/

namespace A164454.P8701202946631610316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - (A002264 (n + 8) + (A002264 n + 4))

end

end A164454.P8701202946631610316

namespace A164454

/-- `A000930(n+9)-(A002264(n+8)+A002264(n)+4)` -/
def P8701202946631610316.Spec : Prop :=
  ∀ n, P8701202946631610316.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P63845175456856237

`Δ[A020745(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P63845175456856237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P63845175456856237

namespace A164454

/-- `Δ[A020745(n+6)]-(A004396(n)+6)` -/
def P63845175456856237.Spec : Prop :=
  ∀ n, P63845175456856237.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P4996082025747174779

`Δ[A048589(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P4996082025747174779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P4996082025747174779

namespace A164454

/-- `Δ[A048589(n+6)]-(A004396(n)+6)` -/
def P4996082025747174779.Spec : Prop :=
  ∀ n, P4996082025747174779.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P11184144932289509102

`Δ[A048591(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P11184144932289509102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P11184144932289509102

namespace A164454

/-- `Δ[A048591(n+6)]-(A004396(n)+6)` -/
def P11184144932289509102.Spec : Prop :=
  ∀ n, P11184144932289509102.a n = A164454 (n + 4)

end A164454

/-!
# A164455: Number of binary strings of length n with no substrings equal to 0001 0011 or 0111.

The programs for A164455, the canonical program `A164455.P2203544670309041550` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164455 has offset 4).

The definition of A164455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164455.P2203544670309041550

`ogf((13-4x-8x^2-16x^3+16x^4)/(1-2x+3x^4-2x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164455

/-- `ogf((13-4x-8x^2-16x^3+16x^4)/(1-2x+3x^4-2x^5))` -/
def P2203544670309041550.Spec : Prop :=
  ∀ n, P2203544670309041550.a n = A164455 (n + 4)

theorem P2203544670309041550.correct : P2203544670309041550.Spec := by
  intro n
  simp only [A164455, Nat.add_sub_cancel]

end A164455

/-! ## A164455.P16172222159608152362

`A276571(4*A211582(n+1))`
-/

namespace A164455.P16172222159608152362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (4 * A211582 (n + 1)).toNat

end

end A164455.P16172222159608152362

namespace A164455

/-- `A276571(4*A211582(n+1))` -/
def P16172222159608152362.Spec : Prop :=
  ∀ n, P16172222159608152362.a n = A164455 (n + 4)

end A164455

/-!
# A164456: Number of binary strings of length n with no substrings equal to 0001 0011 or 1000.

The programs for A164456, the canonical program `A164456.P968171715519126975` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164456 has offset 4).

The definition of A164456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164456.P968171715519126975

`ogf((13-4x-7x^2-11x^3+8x^4)/(1-2x+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164456

/-- `ogf((13-4x-7x^2-11x^3+8x^4)/(1-2x+2x^4-x^5))` -/
def P968171715519126975.Spec : Prop :=
  ∀ n, P968171715519126975.a n = A164456 (n + 4)

theorem P968171715519126975.correct : P968171715519126975.Spec := by
  intro n
  simp only [A164456, Nat.add_sub_cancel]

end A164456

/-! ## A164456.P3672447585452505969

`n+9+∑[A164393(n+2)]`
-/

namespace A164456.P3672447585452505969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164393 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164456.P3672447585452505969

namespace A164456

/-- `n+9+∑[A164393(n+2)]` -/
def P3672447585452505969.Spec : Prop :=
  ∀ n, P3672447585452505969.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P1935708279065720176

`A135431(n+3)+A164393(n+3)+2`
-/

namespace A164456.P1935708279065720176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 (n + 3) + (A164393 (n + 3) + 2)

end

end A164456.P1935708279065720176

namespace A164456

/-- `A135431(n+3)+A164393(n+3)+2` -/
def P1935708279065720176.Spec : Prop :=
  ∀ n, P1935708279065720176.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P9388665561453178366

`A116732(n+4)+A116732(n+8)+1`
-/

namespace A164456.P9388665561453178366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 4) + (A116732 (n + 8) + 1)

end

end A164456.P9388665561453178366

namespace A164456

/-- `A116732(n+4)+A116732(n+8)+1` -/
def P9388665561453178366.Spec : Prop :=
  ∀ n, P9388665561453178366.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P16475358281817135227

`A239909(n+7)+1-A239909(n+4)`
-/

namespace A164456.P16475358281817135227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 7) + (1 - A239909 (n + 4))

end

end A164456.P16475358281817135227

namespace A164456

/-- `A239909(n+7)+1-A239909(n+4)` -/
def P16475358281817135227.Spec : Prop :=
  ∀ n, P16475358281817135227.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P12503392193627525004

`Δ[A020750(n+2)]+1`
-/

namespace A164456.P12503392193627525004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164456.P12503392193627525004

namespace A164456

/-- `Δ[A020750(n+2)]+1` -/
def P12503392193627525004.Spec : Prop :=
  ∀ n, P12503392193627525004.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P16755584450824602700

`Δ[Δ[A164400(n+5)]]+1`
-/

namespace A164456.P16755584450824602700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164400 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164456.P16755584450824602700

namespace A164456

/-- `Δ[Δ[A164400(n+5)]]+1` -/
def P16755584450824602700.Spec : Prop :=
  ∀ n, P16755584450824602700.a n = A164456 (n + 4)

end A164456

/-!
# A164457: Number of binary strings of length n with no substrings equal to 0001, 0011, or 1010.

The programs for A164457, the canonical program `A164457.P16346975365494415027` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164457 has offset 0).

The definition of A164457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164457.P16346975365494415027

`ogf((1+x^2-2x^6+x^7)/(1-2x+x^2-2x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164457

/-- `ogf((1+x^2-2x^6+x^7)/(1-2x+x^2-2x^3+3x^4-x^5))` -/
def P16346975365494415027.Spec : Prop :=
  ∀ n, P16346975365494415027.a n = A164457 n

theorem P16346975365494415027.correct : P16346975365494415027.Spec := by
  intro n
  simp only [A164457]

end A164457

/-! ## A164457.P2348421352263541236

`A286938(n)-C(2, C(n², 5))`
-/

namespace A164457.P2348421352263541236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - (Nat.choose 2 (Nat.choose (n ^ 2) 5) : ℤ)

end

end A164457.P2348421352263541236

namespace A164457

/-- `A286938(n)-C(2, C(n², 5))` -/
def P2348421352263541236.Spec : Prop :=
  ∀ n, P2348421352263541236.a n = A164457 n

end A164457

/-! ## A164457.P12543082486024794769

`A286938(n)-A130716(n)`
-/

namespace A164457.P12543082486024794769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A130716 n

end

end A164457.P12543082486024794769

namespace A164457

/-- `A286938(n)-A130716(n)` -/
def P12543082486024794769.Spec : Prop :=
  ∀ n, P12543082486024794769.a n = A164457 n

end A164457

/-! ## A164457.P9506428069876047923

`A286938(n)-char[A024032(n)]`
-/

namespace A164457.P9506428069876047923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P9506428069876047923

namespace A164457

/-- `A286938(n)-char[A024032(n)]` -/
def P9506428069876047923.Spec : Prop :=
  ∀ n, P9506428069876047923.a n = A164457 n

end A164457

/-! ## A164457.P17662473020506380501

`A286938(n)-char[A060024(n)]`
-/

namespace A164457.P17662473020506380501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060024 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P17662473020506380501

namespace A164457

/-- `A286938(n)-char[A060024(n)]` -/
def P17662473020506380501.Spec : Prop :=
  ∀ n, P17662473020506380501.a n = A164457 n

end A164457

/-! ## A164457.P2096218221702790235

`A286938(n)-A000045(C(2, n))`
-/

namespace A164457.P2096218221702790235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A000045 (Nat.choose 2 n)

end

end A164457.P2096218221702790235

namespace A164457

/-- `A286938(n)-A000045(C(2, n))` -/
def P2096218221702790235.Spec : Prop :=
  ∀ n, P2096218221702790235.a n = A164457 n

end A164457

/-! ## A164457.P4831811726209746840

`A286938(n)-A000081(C(2, n))`
-/

namespace A164457.P4831811726209746840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A000081 (Nat.choose 2 n)

end

end A164457.P4831811726209746840

namespace A164457

/-- `A286938(n)-A000081(C(2, n))` -/
def P4831811726209746840.Spec : Prop :=
  ∀ n, P4831811726209746840.a n = A164457 n

end A164457

/-! ## A164457.P5363072109034943147

`xor(A278105(n+1), A286938(n))`
-/

namespace A164457.P5363072109034943147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278105 (n + 1)) (A286938 n)

end

end A164457.P5363072109034943147

namespace A164457

/-- `xor(A278105(n+1), A286938(n))` -/
def P5363072109034943147.Spec : Prop :=
  ∀ n, P5363072109034943147.a n = A164457 n

end A164457

/-! ## A164457.P1463911508712752747

`A286938(n)-char[2-A053186(n)]`
-/

namespace A164457.P1463911508712752747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P1463911508712752747

namespace A164457

/-- `A286938(n)-char[2-A053186(n)]` -/
def P1463911508712752747.Spec : Prop :=
  ∀ n, P1463911508712752747.a n = A164457 n

end A164457

/-! ## A164457.P17453770658772143760

`A286938(n)-A286912(C(2, n)+1)`
-/

namespace A164457.P17453770658772143760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A286912 (Nat.choose 2 n + 1)

end

end A164457.P17453770658772143760

namespace A164457

/-- `A286938(n)-A286912(C(2, n)+1)` -/
def P17453770658772143760.Spec : Prop :=
  ∀ n, P17453770658772143760.a n = A164457 n

end A164457

/-! ## A164457.P1498167148998605183

`A286938(n)-A023533(n²)`
-/

namespace A164457.P1498167148998605183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A023533 (n ^ 2)

end

end A164457.P1498167148998605183

namespace A164457

/-- `A286938(n)-A023533(n²)` -/
def P1498167148998605183.Spec : Prop :=
  ∀ n, P1498167148998605183.a n = A164457 n

end A164457

/-!
# A164458: Number of binary strings of length n with no substrings equal to 0001 0011 or 1011.

The programs for A164458, the canonical program `A164458.P7898566392889586050` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164458 has offset 4).

The definition of A164458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164458.P7898566392889586050

`ogf((13-5x-10x^2-4x^3+8x^4)/(1-2x+x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164458

/-- `ogf((13-5x-10x^2-4x^3+8x^4)/(1-2x+x^3+x^4-x^5))` -/
def P7898566392889586050.Spec : Prop :=
  ∀ n, P7898566392889586050.a n = A164458 (n + 4)

theorem P7898566392889586050.correct : P7898566392889586050.Spec := by
  intro n
  simp only [A164458, Nat.add_sub_cancel]

end A164458

/-! ## A164458.P637685599849046048

`A007307(n+13)-A020735(n+7)`
-/

namespace A164458.P637685599849046048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 13) - A020735 (n + 7)

end

end A164458.P637685599849046048

namespace A164458

/-- `A007307(n+13)-A020735(n+7)` -/
def P637685599849046048.Spec : Prop :=
  ∀ n, P637685599849046048.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P12913586706706068356

`A008586(n+3)+∑[∑[A007307(n+3)]]`
-/

namespace A164458.P12913586706706068356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164458.P12913586706706068356

namespace A164458

/-- `A008586(n+3)+∑[∑[A007307(n+3)]]` -/
def P12913586706706068356.Spec : Prop :=
  ∀ n, P12913586706706068356.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P16343011038676445127

`A164315(n+3)+A164315(n+6)-A223134(n+5)`
-/

namespace A164458.P16343011038676445127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 3) + (A164315 (n + 6) - A223134 (n + 5))

end

end A164458.P16343011038676445127

namespace A164458

/-- `A164315(n+3)+A164315(n+6)-A223134(n+5)` -/
def P16343011038676445127.Spec : Prop :=
  ∀ n, P16343011038676445127.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P14440083797078464233

`A096231(n+4)+A096231(n+7)-A020742(n+5)`
-/

namespace A164458.P14440083797078464233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A020742 (n + 5))

end

end A164458.P14440083797078464233

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A020742(n+5)` -/
def P14440083797078464233.Spec : Prop :=
  ∀ n, P14440083797078464233.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P11812362554791450431

`A096231(n+4)+A096231(n+7)-A062545(n+7)`
-/

namespace A164458.P11812362554791450431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A062545 (n + 7))

end

end A164458.P11812362554791450431

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A062545(n+7)` -/
def P11812362554791450431.Spec : Prop :=
  ∀ n, P11812362554791450431.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P18348661815605457890

`A096231(n+4)+A096231(n+7)-A005408(n+8)`
-/

namespace A164458.P18348661815605457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A005408 (n + 8))

end

end A164458.P18348661815605457890

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A005408(n+8)` -/
def P18348661815605457890.Spec : Prop :=
  ∀ n, P18348661815605457890.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P12221309078134731917

`A164001(n+7)+A164001(n+10)-A005408(n+8)`
-/

namespace A164458.P12221309078134731917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 7) + (A164001 (n + 10) - A005408 (n + 8))

end

end A164458.P12221309078134731917

namespace A164458

/-- `A164001(n+7)+A164001(n+10)-A005408(n+8)` -/
def P12221309078134731917.Spec : Prop :=
  ∀ n, P12221309078134731917.a n = A164458 (n + 4)

end A164458

/-!
# A164459: Number of binary strings of length n with no substrings equal to 0001 0011 or 1100.

The programs for A164459, the canonical program `A164459.P4722357969111656273` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164459 has offset 4).

The definition of A164459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164459.P17401634662730119312

`ogf((13-5x-7x^2-12x^3+6x^4-4x^5+8x^6)/(1-2x+2x^4-x^5+x^6-x^7))`
-/

namespace A164459.P17401634662730119312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5, -7, -12, 6, -4, 8] [1, -2, 0, 0, 2, -1, 1, -1] n

end

end A164459.P17401634662730119312

namespace A164459

/-- `ogf((13-5x-7x^2-12x^3+6x^4-4x^5+8x^6)/(1-2x+2x^4-x^5+x^6-x^7))` -/
def P17401634662730119312.Spec : Prop :=
  ∀ n, P17401634662730119312.a n = A164459 (n + 4)

end A164459

/-! ## A164459.P4722357969111656273

`2*a(n-1)-2*a(n-4)+a(n-5)-a(n-6)+a(n-7)` with `a(0)=13, a(1)=21, a(2)=35, a(3)=58, a(4)=96, a(5)=159, a(6)=264`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164459

/-- `2*a(n-1)-2*a(n-4)+a(n-5)-a(n-6)+a(n-7)` -/
def P4722357969111656273.Spec : Prop :=
  ∀ n, P4722357969111656273.a n = A164459 (n + 4)

theorem P4722357969111656273.correct : P4722357969111656273.Spec := by
  intro n
  simp only [A164459, Nat.add_sub_cancel]

end A164459

/-! ## A164459.P18301220584207502419

`A164496(n+4)+A107846(A000142(n))`
-/

namespace A164459.P18301220584207502419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) + A107846 (A000142 n).toNat

end

end A164459.P18301220584207502419

namespace A164459

/-- `A164496(n+4)+A107846(A000142(n))` -/
def P18301220584207502419.Spec : Prop :=
  ∀ n, P18301220584207502419.a n = A164459 (n + 4)

end A164459

/-! ## A164459.P1484798852563767706

`A164496(n+4)+A107846(A012075(n))`
-/

namespace A164459.P1484798852563767706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) + A107846 (A012075 n).toNat

end

end A164459.P1484798852563767706

namespace A164459

/-- `A164496(n+4)+A107846(A012075(n))` -/
def P1484798852563767706.Spec : Prop :=
  ∀ n, P1484798852563767706.a n = A164459 (n + 4)

end A164459

/-!
# A164460: Number of binary strings of length n with no substrings equal to 0001 0011 or 1101.

The programs for A164460, the canonical program `A164460.P12512390334361400115` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164460 has offset 4).

The definition of A164460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164460.P12512390334361400115

`ogf((13-5x-9x^2-3x^3+10x^4+4x^5-8x^6)/(1-2x+x^3+x^4-x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164460

/-- `ogf((13-5x-9x^2-3x^3+10x^4+4x^5-8x^6)/(1-2x+x^3+x^4-x^5-x^6+x^7))` -/
def P12512390334361400115.Spec : Prop :=
  ∀ n, P12512390334361400115.a n = A164460 (n + 4)

theorem P12512390334361400115.correct : P12512390334361400115.Spec := by
  intro n
  simp only [A164460, Nat.add_sub_cancel]

end A164460

/-! ## A164460.P12087829792596565309

`A109537(n+7)+A109537(n+10)-2`
-/

namespace A164460.P12087829792596565309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 7) + (A109537 (n + 10) - 2)

end

end A164460.P12087829792596565309

namespace A164460

/-- `A109537(n+7)+A109537(n+10)-2` -/
def P12087829792596565309.Spec : Prop :=
  ∀ n, P12087829792596565309.a n = A164460 (n + 4)

end A164460

/-! ## A164460.P6341804368241378529

`A005041(5*A008998(n+3))`
-/

namespace A164460.P6341804368241378529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (5 * A008998 (n + 3)).toNat

end

end A164460.P6341804368241378529

namespace A164460

/-- `A005041(5*A008998(n+3))` -/
def P6341804368241378529.Spec : Prop :=
  ∀ n, P6341804368241378529.a n = A164460 (n + 4)

end A164460

/-!
# A164461: Number of binary strings of length n with no substrings equal to 0001 0011 or 1110.

The programs for A164461, the canonical program `A164461.P11287365187759530614` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164461 has offset 4).

The definition of A164461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164461.P11287365187759530614

`ogf((13+8x-x^2-16x^3)/(1-x-x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164461

/-- `ogf((13+8x-x^2-16x^3)/(1-x-x^2-x^3+2x^4))` -/
def P11287365187759530614.Spec : Prop :=
  ∀ n, P11287365187759530614.a n = A164461 (n + 4)

theorem P11287365187759530614.correct : P11287365187759530614.Spec := by
  intro n
  simp only [A164461, Nat.add_sub_cancel]

end A164461

/-! ## A164461.P9781043287426906550

`2*Δ[A164484(n+4)]-1`
-/

namespace A164461.P9781043287426906550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A164461.P9781043287426906550

namespace A164461

/-- `2*Δ[A164484(n+4)]-1` -/
def P9781043287426906550.Spec : Prop :=
  ∀ n, P9781043287426906550.a n = A164461 (n + 4)

end A164461

/-! ## A164461.P13474965828327792308

`Δ[A001489(n)+2*A164484(n+4)]`
-/

namespace A164461.P13474965828327792308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164461.P13474965828327792308

namespace A164461

/-- `Δ[A001489(n)+2*A164484(n+4)]` -/
def P13474965828327792308.Spec : Prop :=
  ∀ n, P13474965828327792308.a n = A164461 (n + 4)

end A164461

/-! ## A164461.P12833432259165200384

`Δ[A001478(n+1)+2*A164484(n+4)]`
-/

namespace A164461.P12833432259165200384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164461.P12833432259165200384

namespace A164461

/-- `Δ[A001478(n+1)+2*A164484(n+4)]` -/
def P12833432259165200384.Spec : Prop :=
  ∀ n, P12833432259165200384.a n = A164461 (n + 4)

end A164461

/-! ## A164461.P16988038456510145000

`A153881(n+2)+Δ[2*A164484(n+4)]`
-/

namespace A164461.P16988038456510145000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164461.P16988038456510145000

namespace A164461

/-- `A153881(n+2)+Δ[2*A164484(n+4)]` -/
def P16988038456510145000.Spec : Prop :=
  ∀ n, P16988038456510145000.a n = A164461 (n + 4)

end A164461

/-! ## A164461.P5591234793206979319

`A115638(2*n+1)+Δ[2*A164484(n+4)]`
-/

namespace A164461.P5591234793206979319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A164461.P5591234793206979319

namespace A164461

/-- `A115638(2*n+1)+Δ[2*A164484(n+4)]` -/
def P5591234793206979319.Spec : Prop :=
  ∀ n, P5591234793206979319.a n = A164461 (n + 4)

end A164461

/-! ## A164461.P11812278724869112528

`A144432(∑[n+1])+Δ[2*A164484(n+4)]`
-/

namespace A164461.P11812278724869112528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (∑ j ∈ Finset.range (n + 1), f1 j) + (f2 (n + 1) - f2 n)

end

end A164461.P11812278724869112528

namespace A164461

/-- `A144432(∑[n+1])+Δ[2*A164484(n+4)]` -/
def P11812278724869112528.Spec : Prop :=
  ∀ n, P11812278724869112528.a n = A164461 (n + 4)

end A164461

/-!
# A164462: Number of binary strings of length n with no substrings equal to 0001 0100 or 0101.

The programs for A164462, the canonical program `A164462.P18311663304449538185` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164462 has offset 4).

The definition of A164462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164462.P18311663304449538185

`ogf((13-6x+6x^2-4x^3-8x^4)/(1-2x+x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164462

/-- `ogf((13-6x+6x^2-4x^3-8x^4)/(1-2x+x^2-x^3+x^5))` -/
def P18311663304449538185.Spec : Prop :=
  ∀ n, P18311663304449538185.a n = A164462 (n + 4)

theorem P18311663304449538185.correct : P18311663304449538185.Spec := by
  intro n
  simp only [A164462, Nat.add_sub_cancel]

end A164462

/-! ## A164462.P14348606007212189000

`A000045(n+7)-∑[n]%2`
-/

namespace A164462.P14348606007212189000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 7) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A164462.P14348606007212189000

namespace A164462

/-- `A000045(n+7)-∑[n]%2` -/
def P14348606007212189000.Spec : Prop :=
  ∀ n, P14348606007212189000.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P9735655910814217936

`A164449(n+4)-A074677(n)`
-/

namespace A164462.P9735655910814217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164449 (n + 4) - A074677 n

end

end A164462.P9735655910814217936

namespace A164462

/-- `A164449(n+4)-A074677(n)` -/
def P9735655910814217936.Spec : Prop :=
  ∀ n, P9735655910814217936.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P11164373470448777013

`A020732(n+2)+Δ[A004525(n)]`
-/

namespace A164462.P11164373470448777013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164462.P11164373470448777013

namespace A164462

/-- `A020732(n+2)+Δ[A004525(n)]` -/
def P11164373470448777013.Spec : Prop :=
  ∀ n, P11164373470448777013.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P7861392836624005734

`A098180(n+1)+A001911(n+4)-n`
-/

namespace A164462.P7861392836624005734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (n + 1) + (A001911 (n + 4) - (n : ℤ))

end

end A164462.P7861392836624005734

namespace A164462

/-- `A098180(n+1)+A001911(n+4)-n` -/
def P7861392836624005734.Spec : Prop :=
  ∀ n, P7861392836624005734.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P4546417066522035407

`A042948(A167614(n+1))+∑[A001924(n+1)-n]`
-/

namespace A164462.P4546417066522035407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A167614 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164462.P4546417066522035407

namespace A164462

/-- `A042948(A167614(n+1))+∑[A001924(n+1)-n]` -/
def P4546417066522035407.Spec : Prop :=
  ∀ n, P4546417066522035407.a n = A164462 (n + 4)

end A164462

/-!
# A164463: Number of binary strings of length n with no substrings equal to 0001 0100 or 0110.

The programs for A164463, the canonical program `A164463.P7302855577284514675` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164463 has offset 4).

The definition of A164463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164463.P7302855577284514675

`ogf((13-6x+4x^2+8x^3)/(1-2x+x^2-x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164463

/-- `ogf((13-6x+4x^2+8x^3)/(1-2x+x^2-x^4))` -/
def P7302855577284514675.Spec : Prop :=
  ∀ n, P7302855577284514675.a n = A164463 (n + 4)

theorem P7302855577284514675.correct : P7302855577284514675.Spec := by
  intro n
  simp only [A164463, Nat.add_sub_cancel]

end A164463

/-! ## A164463.P13789395395333063195

`A286311(A020715(n))+A010892(n)`
-/

namespace A164463.P13789395395333063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (A020715 n).toNat + A010892 n

end

end A164463.P13789395395333063195

namespace A164463

/-- `A286311(A020715(n))+A010892(n)` -/
def P13789395395333063195.Spec : Prop :=
  ∀ n, P13789395395333063195.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P18332878289126148114

`A024490(n+3)+Δ[A024490(n+8)]`
-/

namespace A164463.P18332878289126148114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 3) + (f1 (n + 1) - f1 n)

end

end A164463.P18332878289126148114

namespace A164463

/-- `A024490(n+3)+Δ[A024490(n+8)]` -/
def P18332878289126148114.Spec : Prop :=
  ∀ n, P18332878289126148114.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P11529931676221231457

`Δ[A286311(n+8)-A286311(n+6)]`
-/

namespace A164463.P11529931676221231457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 8) - A286311 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164463.P11529931676221231457

namespace A164463

/-- `Δ[A286311(n+8)-A286311(n+6)]` -/
def P11529931676221231457.Spec : Prop :=
  ∀ n, P11529931676221231457.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P2528921165323362686

`A286350(n+8)-Δ[A286350(n+8)]`
-/

namespace A164463.P2528921165323362686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 8) - (f1 (n + 1) - f1 n)

end

end A164463.P2528921165323362686

namespace A164463

/-- `A286350(n+8)-Δ[A286350(n+8)]` -/
def P2528921165323362686.Spec : Prop :=
  ∀ n, P2528921165323362686.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P6285199264339802361

`Δ[Δ[A286311(n+6)+A286311(n+7)]]`
-/

namespace A164463.P6285199264339802361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 6) + A286311 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164463.P6285199264339802361

namespace A164463

/-- `Δ[Δ[A286311(n+6)+A286311(n+7)]]` -/
def P6285199264339802361.Spec : Prop :=
  ∀ n, P6285199264339802361.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P14293494839326184214

`A286311(n+10)-(A286311(n+7)+A286311(n+9))`
-/

namespace A164463.P14293494839326184214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 10) - (A286311 (n + 7) + A286311 (n + 9))

end

end A164463.P14293494839326184214

namespace A164463

/-- `A286311(n+10)-(A286311(n+7)+A286311(n+9))` -/
def P14293494839326184214.Spec : Prop :=
  ∀ n, P14293494839326184214.a n = A164463 (n + 4)

end A164463

/-!
# A164464: Number of binary strings of length n with no substrings equal to 0001, 0100, or 0111.

The programs for A164464, the canonical program `A164464.P12226052964285216476` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164464 has offset 4).

The definition of A164464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164464.P13646396097366314674

`ogf((13-6x+4x^2-8x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A164464.P13646396097366314674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6, 4, -8] [1, -2, 1, -1, 1] n

end

end A164464.P13646396097366314674

namespace A164464

/-- `ogf((13-6x+4x^2-8x^3)/(1-2x+x^2-x^3+x^4))` -/
def P13646396097366314674.Spec : Prop :=
  ∀ n, P13646396097366314674.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P12226052964285216476

`a(n-1)+a(n-3)+3` with `a(0)=13, a(1)=20, a(2)=31`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164464

/-- `a(n-1)+a(n-3)+3` -/
def P12226052964285216476.Spec : Prop :=
  ∀ n, (P12226052964285216476.a n : ℤ) = A164464 (n + 4)

theorem P12226052964285216476.correct : P12226052964285216476.Spec := by
  intro n
  simp only [A164464, Nat.add_sub_cancel]

end A164464

/-! ## A164464.P14194900575013021895

`A164316(n+6)-3`
-/

namespace A164464.P14194900575013021895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 6) - 3

end

end A164464.P14194900575013021895

namespace A164464

/-- `A164316(n+6)-3` -/
def P14194900575013021895.Spec : Prop :=
  ∀ n, P14194900575013021895.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P16597394652232521895

`∑[A164316(n+3)]+8`
-/

namespace A164464.P16597394652232521895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164464.P16597394652232521895

namespace A164464

/-- `∑[A164316(n+3)]+8` -/
def P16597394652232521895.Spec : Prop :=
  ∀ n, P16597394652232521895.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P14139680103523916890

`A164438(n+4)-A023435(n)`
-/

namespace A164464.P14139680103523916890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164438 (n + 4) - A023435 n

end

end A164464.P14139680103523916890

namespace A164464

/-- `A164438(n+4)-A023435(n)` -/
def P14139680103523916890.Spec : Prop :=
  ∀ n, P14139680103523916890.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P608944618922140265

`A020745(n+3)+∑[A000930(n+1)]`
-/

namespace A164464.P608944618922140265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P608944618922140265

namespace A164464

/-- `A020745(n+3)+∑[A000930(n+1)]` -/
def P608944618922140265.Spec : Prop :=
  ∀ n, P608944618922140265.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P14088470162279958498

`A179070(n+8)+∑[A000930(n+2)]`
-/

namespace A164464.P14088470162279958498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P14088470162279958498

namespace A164464

/-- `A179070(n+8)+∑[A000930(n+2)]` -/
def P14088470162279958498.Spec : Prop :=
  ∀ n, P14088470162279958498.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P8059885536220992478

`A068921(n+3)-(3-A068921(n+7))`
-/

namespace A164464.P8059885536220992478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 3) - (3 - A068921 (n + 7))

end

end A164464.P8059885536220992478

namespace A164464

/-- `A068921(n+3)-(3-A068921(n+7))` -/
def P8059885536220992478.Spec : Prop :=
  ∀ n, P8059885536220992478.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P433018541201228357

`A000930(n+4)+A000930(n+8)-3`
-/

namespace A164464.P433018541201228357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 4) + (A000930 (n + 8) - 3)

end

end A164464.P433018541201228357

namespace A164464

/-- `A000930(n+4)+A000930(n+8)-3` -/
def P433018541201228357.Spec : Prop :=
  ∀ n, P433018541201228357.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P6942479470515080439

`A135851(n+13)+A135851(n+9)-3`
-/

namespace A164464.P6942479470515080439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 13) + (A135851 (n + 9) - 3)

end

end A164464.P6942479470515080439

namespace A164464

/-- `A135851(n+13)+A135851(n+9)-3` -/
def P6942479470515080439.Spec : Prop :=
  ∀ n, P6942479470515080439.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P16116743151373934051

`A135851(n+13)+∑[record[A135851(n+1)]]`
-/

namespace A164464.P16116743151373934051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 13) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P16116743151373934051

namespace A164464

/-- `A135851(n+13)+∑[record[A135851(n+1)]]` -/
def P16116743151373934051.Spec : Prop :=
  ∀ n, P16116743151373934051.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P838884083317389813

`A164316(n+9)%(A164316(n+8)+3)`
-/

namespace A164464.P838884083317389813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164316 (n + 9)) (A164316 (n + 8) + 3)

end

end A164464.P838884083317389813

namespace A164464

/-- `A164316(n+9)%(A164316(n+8)+3)` -/
def P838884083317389813.Spec : Prop :=
  ∀ n, P838884083317389813.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P17802615870386120831

`A020711(n+12)%(A020711(n+1)+A020711(n+10))`
-/

namespace A164464.P17802615870386120831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020711 (n + 12)) (A020711 (n + 1) + A020711 (n + 10))

end

end A164464.P17802615870386120831

namespace A164464

/-- `A020711(n+12)%(A020711(n+1)+A020711(n+10))` -/
def P17802615870386120831.Spec : Prop :=
  ∀ n, P17802615870386120831.a n = A164464 (n + 4)

end A164464

/-!
# A164465: Number of binary strings of length n with no substrings equal to 0001 0100 or 1010.

The programs for A164465, the canonical program `A164465.P7190166449619379243` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164465 has offset 4).

The definition of A164465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164465.P7190166449619379243

`ogf((13-5x+6x^2-3x^3-5x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164465

/-- `ogf((13-5x+6x^2-3x^3-5x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^5-x^6+x^7))` -/
def P7190166449619379243.Spec : Prop :=
  ∀ n, P7190166449619379243.a n = A164465 (n + 4)

theorem P7190166449619379243.correct : P7190166449619379243.Spec := by
  intro n
  simp only [A164465, Nat.add_sub_cancel]

end A164465

/-! ## A164465.P2618802238093509745

`A164492(n+4)+A001222(A006125(n))`
-/

namespace A164465.P2618802238093509745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164492 (n + 4) + A001222 (A006125 n).toNat

end

end A164465.P2618802238093509745

namespace A164465

/-- `A164492(n+4)+A001222(A006125(n))` -/
def P2618802238093509745.Spec : Prop :=
  ∀ n, P2618802238093509745.a n = A164465 (n + 4)

end A164465

/-!
# A164466: Number of binary strings of length n with no substrings equal to 0001, 0100, or 1011.

The programs for A164466, the canonical program `A164466.P6924250854396519901` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164466 has offset 0).

The definition of A164466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164466.P6924250854396519901

`ogf((1+x^2+2x^3+x^5+x^6)/(1-2x+x^2-x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164466

/-- `ogf((1+x^2+2x^3+x^5+x^6)/(1-2x+x^2-x^4+x^5))` -/
def P6924250854396519901.Spec : Prop :=
  ∀ n, P6924250854396519901.a n = A164466 n

theorem P6924250854396519901.correct : P6924250854396519901.Spec := by
  intro n
  simp only [A164466]

end A164466

/-! ## A164466.P2888521042451949652

`∑[A003269(A257542(n+1))]`
-/

namespace A164466.P2888521042451949652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A257542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P2888521042451949652

namespace A164466

/-- `∑[A003269(A257542(n+1))]` -/
def P2888521042451949652.Spec : Prop :=
  ∀ n, P2888521042451949652.a n = A164466 n

end A164466

/-! ## A164466.P5517813685809466864

`∑[A179184(n)+∑[A003269(n)]]`
-/

namespace A164466.P5517813685809466864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P5517813685809466864

namespace A164466

/-- `∑[A179184(n)+∑[A003269(n)]]` -/
def P5517813685809466864.Spec : Prop :=
  ∀ n, P5517813685809466864.a n = A164466 n

end A164466

/-! ## A164466.P11834689079550889077

`∑[A003269(A344895(C(3, n))+n)]`
-/

namespace A164466.P11834689079550889077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A344895 (Nat.choose 3 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P11834689079550889077

namespace A164466

/-- `∑[A003269(A344895(C(3, n))+n)]` -/
def P11834689079550889077.Spec : Prop :=
  ∀ n, P11834689079550889077.a n = A164466 n

end A164466

/-! ## A164466.P3798591626725056053

`A004280(n+1)+A145131(n)-n`
-/

namespace A164466.P3798591626725056053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (A145131 n - (n : ℤ))

end

end A164466.P3798591626725056053

namespace A164466

/-- `A004280(n+1)+A145131(n)-n` -/
def P3798591626725056053.Spec : Prop :=
  ∀ n, P3798591626725056053.a n = A164466 n

end A164466

/-! ## A164466.P8737442834760387971

`∑[A267870(∑[n])+A098578(n)]`
-/

namespace A164466.P8737442834760387971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (∑ j ∈ Finset.range (n + 1), f2 j) + A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P8737442834760387971

namespace A164466

/-- `∑[A267870(∑[n])+A098578(n)]` -/
def P8737442834760387971.Spec : Prop :=
  ∀ n, P8737442834760387971.a n = A164466 n

end A164466

/-! ## A164466.P6754616200087810333

`A145131(n)+A130517(A133263(n))`
-/

namespace A164466.P6754616200087810333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n + A130517 (A133263 n).toNat

end

end A164466.P6754616200087810333

namespace A164466

/-- `A145131(n)+A130517(A133263(n))` -/
def P6754616200087810333.Spec : Prop :=
  ∀ n, P6754616200087810333.a n = A164466 n

end A164466

/-! ## A164466.P15736813710866988469

`A145131(n)+A000196(A081350(n))`
-/

namespace A164466.P15736813710866988469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n + A000196 (A081350 n).toNat

end

end A164466.P15736813710866988469

namespace A164466

/-- `A145131(n)+A000196(A081350(n))` -/
def P15736813710866988469.Spec : Prop :=
  ∀ n, P15736813710866988469.a n = A164466 n

end A164466

/-!
# A164467: Number of binary strings of length n with no substrings equal to 0001 0100 or 1101.

The programs for A164467, the canonical program `A164467.P16715183256081902244` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164467 has offset 4).

The definition of A164467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164467.P16715183256081902244

`ogf((13-6x-9x^2+12x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164467

/-- `ogf((13-6x-9x^2+12x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))` -/
def P16715183256081902244.Spec : Prop :=
  ∀ n, P16715183256081902244.a n = A164467 (n + 4)

theorem P16715183256081902244.correct : P16715183256081902244.Spec := by
  intro n
  simp only [A164467, Nat.add_sub_cancel]

end A164467

/-! ## A164467.P1401522100101970543

`A248170(A200865(n+2))`
-/

namespace A164467.P1401522100101970543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A200865 (n + 2)).toNat

end

end A164467.P1401522100101970543

namespace A164467

/-- `A248170(A200865(n+2))` -/
def P1401522100101970543.Spec : Prop :=
  ∀ n, P1401522100101970543.a n = A164467 (n + 4)

end A164467

/-! ## A164467.P11102706536914282126

`A104103(A200865(n+2)-1)`
-/

namespace A164467.P11102706536914282126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A200865 (n + 2) - 1).toNat

end

end A164467.P11102706536914282126

namespace A164467

/-- `A104103(A200865(n+2)-1)` -/
def P11102706536914282126.Spec : Prop :=
  ∀ n, P11102706536914282126.a n = A164467 (n + 4)

end A164467

/-! ## A164467.P1723038647079174325

`A020722(∑[A175089(a(n-1))-1])-n` with `a(0)=5`
-/

namespace A164467.P1723038647079174325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A175089 (f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A164467.P1723038647079174325

namespace A164467

/-- `A020722(∑[A175089(a(n-1))-1])-n` -/
def P1723038647079174325.Spec : Prop :=
  ∀ n, P1723038647079174325.a n = A164467 (n + 4)

end A164467

/-!
# A164468: Number of binary strings of length n with no substrings equal to 0001, 0100, or 1110.

The programs for A164468, the canonical program `A164468.P17099430422981162265` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164468 has offset 4).

The definition of A164468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164468.P18369731814362016562

`ogf((13-6x+3x^2-8x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A164468.P18369731814362016562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6, 3, -8] [1, -2, 1, -1, 1] n

end

end A164468.P18369731814362016562

namespace A164468

/-- `ogf((13-6x+3x^2-8x^3)/(1-2x+x^2-x^3+x^4))` -/
def P18369731814362016562.Spec : Prop :=
  ∀ n, P18369731814362016562.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P17099430422981162265

`a(n-1)+a(n-3)+2` with `a(0)=13, a(1)=20, a(2)=30`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164468

/-- `a(n-1)+a(n-3)+2` -/
def P17099430422981162265.Spec : Prop :=
  ∀ n, (P17099430422981162265.a n : ℤ) = A164468 (n + 4)

theorem P17099430422981162265.correct : P17099430422981162265.Spec := by
  intro n
  simp only [A164468, Nat.add_sub_cancel]

end A164468

/-! ## A164468.P3110702546653765467

`A238383(2*(n+3))+2`
-/

namespace A164468.P3110702546653765467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238383 (2 * (n + 3)) + 2

end

end A164468.P3110702546653765467

namespace A164468

/-- `A238383(2*(n+3))+2` -/
def P3110702546653765467.Spec : Prop :=
  ∀ n, P3110702546653765467.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P4313448759116196596

`A020749(n+1)+A020749(n)`
-/

namespace A164468.P4313448759116196596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1) + A020749 n

end

end A164468.P4313448759116196596

namespace A164468

/-- `A020749(n+1)+A020749(n)` -/
def P4313448759116196596.Spec : Prop :=
  ∀ n, P4313448759116196596.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P10929505680374995912

`A224868(n+1)+A048626(n)`
-/

namespace A164468.P10929505680374995912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224868 (n + 1) + A048626 n

end

end A164468.P10929505680374995912

namespace A164468

/-- `A224868(n+1)+A048626(n)` -/
def P10929505680374995912.Spec : Prop :=
  ∀ n, P10929505680374995912.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P4994910266382293633

`A077868(n+5)+A077868(n)`
-/

namespace A164468.P4994910266382293633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 5) + A077868 n

end

end A164468.P4994910266382293633

namespace A164468

/-- `A077868(n+5)+A077868(n)` -/
def P4994910266382293633.Spec : Prop :=
  ∀ n, P4994910266382293633.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P3636217024427049121

`A020745(n+1)+A020745(n+2)`
-/

namespace A164468.P3636217024427049121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1) + A020745 (n + 2)

end

end A164468.P3636217024427049121

namespace A164468

/-- `A020745(n+1)+A020745(n+2)` -/
def P3636217024427049121.Spec : Prop :=
  ∀ n, P3636217024427049121.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P13685785271181995153

`A164464(n+4)+1-A068921(n)`
-/

namespace A164468.P13685785271181995153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + (1 - A068921 n)

end

end A164468.P13685785271181995153

namespace A164468

/-- `A164464(n+4)+1-A068921(n)` -/
def P13685785271181995153.Spec : Prop :=
  ∀ n, P13685785271181995153.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P1512383376908579870

`A048625(n+1)+A048626(n+1)-2`
-/

namespace A164468.P1512383376908579870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1) + (A048626 (n + 1) - 2)

end

end A164468.P1512383376908579870

namespace A164468

/-- `A048625(n+1)+A048626(n+1)-2` -/
def P1512383376908579870.Spec : Prop :=
  ∀ n, P1512383376908579870.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P9547540224209991529

`A020745(A020705(n))-(A020745(n)+2)`
-/

namespace A164468.P9547540224209991529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (A020705 n).toNat - (A020745 n + 2)

end

end A164468.P9547540224209991529

namespace A164468

/-- `A020745(A020705(n))-(A020745(n)+2)` -/
def P9547540224209991529.Spec : Prop :=
  ∀ n, P9547540224209991529.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P7966131995745100220

`Δ[A266353(n+3)]-2`
-/

namespace A164468.P7966131995745100220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266353 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A164468.P7966131995745100220

namespace A164468

/-- `Δ[A266353(n+3)]-2` -/
def P7966131995745100220.Spec : Prop :=
  ∀ n, P7966131995745100220.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P6771067380898315083

`floor(a(n-1)²/a(n-2))` with `a(0)=13, a(1)=20`
-/

namespace A164468.P6771067380898315083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 20] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A164468.P6771067380898315083

namespace A164468

/-- `floor(a(n-1)²/a(n-2))` -/
def P6771067380898315083.Spec : Prop :=
  ∀ n, P6771067380898315083.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P7172993710629493863

`sqrt(A207069(n+5))-1`
-/

namespace A164468.P7172993710629493863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 5) : ℝ) - 1

end

end A164468.P7172993710629493863

namespace A164468

/-- `sqrt(A207069(n+5))-1` -/
def P7172993710629493863.Spec : Prop :=
  ∀ n, P7172993710629493863.a n = (A164468 (n + 4) : ℝ)

end A164468

/-!
# A164469: Number of binary strings of length n with no substrings equal to 0001 0101 or 0110.

The programs for A164469, the canonical program `A164469.P5604902319045448620` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164469 has offset 4).

The definition of A164469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164469.P7260667038168747363

`ogf((13-6x+5x^2-6x^3+4x^4-8x^5)/(1-2x+x^2-x^3+x^4-x^5+x^6))`
-/

namespace A164469.P7260667038168747363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6, 5, -6, 4, -8] [1, -2, 1, -1, 1, -1, 1] n

end

end A164469.P7260667038168747363

namespace A164469

/-- `ogf((13-6x+5x^2-6x^3+4x^4-8x^5)/(1-2x+x^2-x^3+x^4-x^5+x^6))` -/
def P7260667038168747363.Spec : Prop :=
  ∀ n, P7260667038168747363.a n = A164469 (n + 4)

end A164469

/-! ## A164469.P5604902319045448620

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=13, a(1)=20, a(2)=32, a(3)=51, a(4)=81, a(5)=128`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164469

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P5604902319045448620.Spec : Prop :=
  ∀ n, P5604902319045448620.a n = A164469 (n + 4)

theorem P5604902319045448620.correct : P5604902319045448620.Spec := by
  intro n
  simp only [A164469, Nat.add_sub_cancel]

end A164469

/-! ## A164469.P7804031781885431064

`A004273(A060961(n+6))-A060961(n+3)`
-/

namespace A164469.P7804031781885431064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A060961 (n + 6)).toNat - A060961 (n + 3)

end

end A164469.P7804031781885431064

namespace A164469

/-- `A004273(A060961(n+6))-A060961(n+3)` -/
def P7804031781885431064.Spec : Prop :=
  ∀ n, P7804031781885431064.a n = A164469 (n + 4)

end A164469

/-! ## A164469.P15367418628763886044

`A164478(n+4)+A129308(A000142(n))`
-/

namespace A164469.P15367418628763886044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164478 (n + 4) + A129308 (A000142 n).toNat

end

end A164469.P15367418628763886044

namespace A164469

/-- `A164478(n+4)+A129308(A000142(n))` -/
def P15367418628763886044.Spec : Prop :=
  ∀ n, P15367418628763886044.a n = A164469 (n + 4)

end A164469

/-!
# A164470: Number of binary strings of length n with no substrings equal to 0001 0101 or 0111.

The programs for A164470, the canonical program `A164470.P10338016320916664079` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164470 has offset 4).

The definition of A164470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164470.P10338016320916664079

`ogf((13-6x+5x^2-22x^3+4x^4+8x^5)/(1-2x+x^2-2x^3+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164470

/-- `ogf((13-6x+5x^2-22x^3+4x^4+8x^5)/(1-2x+x^2-2x^3+3x^4-x^6))` -/
def P10338016320916664079.Spec : Prop :=
  ∀ n, P10338016320916664079.a n = A164470 (n + 4)

theorem P10338016320916664079.correct : P10338016320916664079.Spec := by
  intro n
  simp only [A164470, Nat.add_sub_cancel]

end A164470

/-! ## A164470.P11153248483167536715

`A339657(A239455(2*(n+1)))-A004250(n+2)`
-/

namespace A164470.P11153248483167536715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339657 (A239455 (2 * (n + 1))).toNat - A004250 (n + 2)

end

end A164470.P11153248483167536715

namespace A164470

/-- `A339657(A239455(2*(n+1)))-A004250(n+2)` -/
def P11153248483167536715.Spec : Prop :=
  ∀ n, P11153248483167536715.a n = A164470 (n + 4)

end A164470

/-!
# A164471: Number of binary strings of length n with no substrings equal to 0001 0101 or 1000.

The programs for A164471, the canonical program `A164471.P7216192020936630209` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164471 has offset 4).

The definition of A164471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164471.P7216192020936630209

`ogf((13-5x+6x^2-16x^3)/(1-2x+x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164471

/-- `ogf((13-5x+6x^2-16x^3)/(1-2x+x^2-2x^3+2x^4))` -/
def P7216192020936630209.Spec : Prop :=
  ∀ n, P7216192020936630209.a n = A164471 (n + 4)

theorem P7216192020936630209.correct : P7216192020936630209.Spec := by
  intro n
  simp only [A164471, Nat.add_sub_cancel]

end A164471

/-! ## A164471.P3513710247006841702

`A164395(n+1)+A164395(n+3)+3`
-/

namespace A164471.P3513710247006841702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (n + 1) + (A164395 (n + 3) + 3)

end

end A164471.P3513710247006841702

namespace A164471

/-- `A164395(n+1)+A164395(n+3)+3` -/
def P3513710247006841702.Spec : Prop :=
  ∀ n, P3513710247006841702.a n = A164471 (n + 4)

end A164471

/-! ## A164471.P8201408876997854536

`A003476(n+3)+A003476(n+5)+1`
-/

namespace A164471.P8201408876997854536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 3) + (A003476 (n + 5) + 1)

end

end A164471.P8201408876997854536

namespace A164471

/-- `A003476(n+3)+A003476(n+5)+1` -/
def P8201408876997854536.Spec : Prop :=
  ∀ n, P8201408876997854536.a n = A164471 (n + 4)

end A164471

/-! ## A164471.P15845772240374296426

`(A303714(n+6)+2)/2`
-/

namespace A164471.P15845772240374296426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303714 (n + 6) + 2 : ℚ) / 2

end

end A164471.P15845772240374296426

namespace A164471

/-- `(A303714(n+6)+2)/2` -/
def P15845772240374296426.Spec : Prop :=
  ∀ n, P15845772240374296426.a n = (A164471 (n + 4) : ℚ)

end A164471

/-! ## A164471.P15155834396405682839

`Δ[Δ[A164399(n+5)]]+1`
-/

namespace A164471.P15155834396405682839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164471.P15155834396405682839

namespace A164471

/-- `Δ[Δ[A164399(n+5)]]+1` -/
def P15155834396405682839.Spec : Prop :=
  ∀ n, P15155834396405682839.a n = A164471 (n + 4)

end A164471

/-! ## A164471.P5103054623545707670

`(A164399(n+8)-A164399(n+5))%A164399(n+6)`
-/

namespace A164471.P5103054623545707670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164399 (n + 8) - A164399 (n + 5)) (A164399 (n + 6))

end

end A164471.P5103054623545707670

namespace A164471

/-- `(A164399(n+8)-A164399(n+5))%A164399(n+6)` -/
def P5103054623545707670.Spec : Prop :=
  ∀ n, P5103054623545707670.a n = A164471 (n + 4)

end A164471

/-!
# A164472: Number of binary strings of length n with no substrings equal to 0001 0101 or 1010.

The programs for A164472, the canonical program `A164472.P2133971473388946373` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164472 has offset 4).

The definition of A164472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164472.P2133971473388946373

`ogf((13+9x+15x^2-2x^3-4x^4-8x^5)/(1-x-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164472

/-- `ogf((13+9x+15x^2-2x^3-4x^4-8x^5)/(1-x-2x^3+x^6))` -/
def P2133971473388946373.Spec : Prop :=
  ∀ n, P2133971473388946373.a n = A164472 (n + 4)

theorem P2133971473388946373.correct : P2133971473388946373.Spec := by
  intro n
  simp only [A164472, Nat.add_sub_cancel]

end A164472

/-! ## A164472.P4522690123775306761

`A303837(A000051(n))+A298341(n+4)`
-/

namespace A164472.P4522690123775306761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A000051 n).toNat + A298341 (n + 4)

end

end A164472.P4522690123775306761

namespace A164472

/-- `A303837(A000051(n))+A298341(n+4)` -/
def P4522690123775306761.Spec : Prop :=
  ∀ n, P4522690123775306761.a n = A164472 (n + 4)

end A164472

/-!
# A164473: Number of binary strings of length n with no substrings equal to 0001 0101 or 1011.

The programs for A164473, the canonical program `A164473.P15438211634996421805` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164473 has offset 4).

The definition of A164473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164473.P15438211634996421805

`ogf((13-5x+5x^2-7x^3+2x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^4-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164473

/-- `ogf((13-5x+5x^2-7x^3+2x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^4-x^6+x^7))` -/
def P15438211634996421805.Spec : Prop :=
  ∀ n, P15438211634996421805.a n = A164473 (n + 4)

theorem P15438211634996421805.correct : P15438211634996421805.Spec := by
  intro n
  simp only [A164473, Nat.add_sub_cancel]

end A164473

/-! ## A164473.P2039325581268652993

`A164436(n+4)+A001221(A000354(n))`
-/

namespace A164473.P2039325581268652993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164436 (n + 4) + A001221 (A000354 n).toNat

end

end A164473.P2039325581268652993

namespace A164473

/-- `A164436(n+4)+A001221(A000354(n))` -/
def P2039325581268652993.Spec : Prop :=
  ∀ n, P2039325581268652993.a n = A164473 (n + 4)

end A164473

/-! ## A164473.P10920953340958632503

`A239139(A107066(n))+A000070(n+4)`
-/

namespace A164473.P10920953340958632503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A107066 n).toNat + A000070 (n + 4)

end

end A164473.P10920953340958632503

namespace A164473

/-- `A239139(A107066(n))+A000070(n+4)` -/
def P10920953340958632503.Spec : Prop :=
  ∀ n, P10920953340958632503.a n = A164473 (n + 4)

end A164473

/-!
# A164474: Number of binary strings of length n with no substrings equal to 0001 0101 or 1100.

The programs for A164474, the canonical program `A164474.P845654595523885375` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164474 has offset 4).

The definition of A164474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164474.P845654595523885375

`ogf((13-6x+4x^2-20x^3+8x^4)/(1-2x+x^2-2x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164474

/-- `ogf((13-6x+4x^2-20x^3+8x^4)/(1-2x+x^2-2x^3+3x^4-x^5))` -/
def P845654595523885375.Spec : Prop :=
  ∀ n, P845654595523885375.a n = A164474 (n + 4)

theorem P845654595523885375.correct : P845654595523885375.Spec := by
  intro n
  simp only [A164474, Nat.add_sub_cancel]

end A164474

/-! ## A164474.P915032775425265953

`A164457(n+5)-(A286938(n+1)+A286938(n+2))`
-/

namespace A164474.P915032775425265953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164457 (n + 5) - (A286938 (n + 1) + A286938 (n + 2))

end

end A164474.P915032775425265953

namespace A164474

/-- `A164457(n+5)-(A286938(n+1)+A286938(n+2))` -/
def P915032775425265953.Spec : Prop :=
  ∀ n, P915032775425265953.a n = A164474 (n + 4)

end A164474

/-! ## A164474.P9958446715621303832

`A286938(n+5)-(A286938(n+1)+A286938(n+2))`
-/

namespace A164474.P9958446715621303832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 (n + 5) - (A286938 (n + 1) + A286938 (n + 2))

end

end A164474.P9958446715621303832

namespace A164474

/-- `A286938(n+5)-(A286938(n+1)+A286938(n+2))` -/
def P9958446715621303832.Spec : Prop :=
  ∀ n, P9958446715621303832.a n = A164474 (n + 4)

end A164474

/-! ## A164474.P5899370079475345882

`A331859(A057153(n+1)+A000967(n+5))`
-/

namespace A164474.P5899370079475345882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331859 (A057153 (n + 1) + A000967 (n + 5)).toNat

end

end A164474.P5899370079475345882

namespace A164474

/-- `A331859(A057153(n+1)+A000967(n+5))` -/
def P5899370079475345882.Spec : Prop :=
  ∀ n, P5899370079475345882.a n = A164474 (n + 4)

end A164474

/-!
# A164475: Number of binary strings of length n with no substrings equal to 0001 0101 or 1110.

The programs for A164475, the canonical program `A164475.P17646786074635769641` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164475 has offset 4).

The definition of A164475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164475.P17646786074635769641

`ogf((13+7x+10x^2-12x^3-8x^4)/(1-x-2x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164475

/-- `ogf((13+7x+10x^2-12x^3-8x^4)/(1-x-2x^3+x^4+x^5))` -/
def P17646786074635769641.Spec : Prop :=
  ∀ n, P17646786074635769641.a n = A164475 (n + 4)

theorem P17646786074635769641.correct : P17646786074635769641.Spec := by
  intro n
  simp only [A164475, Nat.add_sub_cancel]

end A164475

/-! ## A164475.P4545714696308194519

`A073188(A128443(n+4)+A077847(n))`
-/

namespace A164475.P4545714696308194519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A128443 (n + 4) + A077847 n).toNat

end

end A164475.P4545714696308194519

namespace A164475

/-- `A073188(A128443(n+4)+A077847(n))` -/
def P4545714696308194519.Spec : Prop :=
  ∀ n, P4545714696308194519.a n = A164475 (n + 4)

end A164475

/-! ## A164475.P14916249663334658092

`A002024(A159743(n+2))`
-/

namespace A164475.P14916249663334658092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A159743 (n + 2)).toNat

end

end A164475.P14916249663334658092

namespace A164475

/-- `A002024(A159743(n+2))` -/
def P14916249663334658092.Spec : Prop :=
  ∀ n, P14916249663334658092.a n = A164475 (n + 4)

end A164475

/-!
# A164476: Number of binary strings of length n with no substrings equal to 0001, 0110, or 0111.

The programs for A164476, the canonical program `A164476.P10167830512731810611` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164476 has offset 0).

The definition of A164476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164476.P10167830512731810611

`ogf((1+x^3-x^5)/(1-2x+x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164476

/-- `ogf((1+x^3-x^5)/(1-2x+x^3+x^4-x^5))` -/
def P10167830512731810611.Spec : Prop :=
  ∀ n, P10167830512731810611.a n = A164476 n

theorem P10167830512731810611.correct : P10167830512731810611.Spec := by
  intro n
  simp only [A164476]

end A164476

/-! ## A164476.P4927643170610596393

`a(n-2)+a(n-3)+3+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A164476.P4927643170610596393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 2) + (a (n - 3) + 3) + n

end

end A164476.P4927643170610596393

namespace A164476

/-- `a(n-2)+a(n-3)+3+n` -/
def P4927643170610596393.Spec : Prop :=
  ∀ n, (P4927643170610596393.a n : ℤ) = A164476 n

end A164476

/-! ## A164476.P2583578630671592180

`record[A084338(n+1)-A114637(n+1)]`
-/

namespace A164476.P2583578630671592180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) - A114637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P2583578630671592180

namespace A164476

/-- `record[A084338(n+1)-A114637(n+1)]` -/
def P2583578630671592180.Spec : Prop :=
  ∀ n, P2583578630671592180.a n = A164476 n

end A164476

/-! ## A164476.P1117261598180737373

`record[∑[A000931(n+1)]+A000931(n)-n]`
-/

namespace A164476.P1117261598180737373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A000931 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P1117261598180737373

namespace A164476

/-- `record[∑[A000931(n+1)]+A000931(n)-n]` -/
def P1117261598180737373.Spec : Prop :=
  ∀ n, P1117261598180737373.a n = A164476 n

end A164476

/-! ## A164476.P2320746352759488678

`record[A134816(n+1)+A182097(n)-(n+1)]`
-/

namespace A164476.P2320746352759488678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A182097 n - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P2320746352759488678

namespace A164476

/-- `record[A134816(n+1)+A182097(n)-(n+1)]` -/
def P2320746352759488678.Spec : Prop :=
  ∀ n, P2320746352759488678.a n = A164476 n

end A164476

/-! ## A164476.P9542855854084525765

`record[A084338(n+1)-A028242(A103517(n))]`
-/

namespace A164476.P9542855854084525765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) - A028242 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P9542855854084525765

namespace A164476

/-- `record[A084338(n+1)-A028242(A103517(n))]` -/
def P9542855854084525765.Spec : Prop :=
  ∀ n, P9542855854084525765.a n = A164476 n

end A164476

/-! ## A164476.P8267786811454049404

`record[A084338(A233583(n+1))+A001478(n+1)]`
-/

namespace A164476.P8267786811454049404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (A233583 (n + 1)).toNat + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P8267786811454049404

namespace A164476

/-- `record[A084338(A233583(n+1))+A001478(n+1)]` -/
def P8267786811454049404.Spec : Prop :=
  ∀ n, P8267786811454049404.a n = A164476 n

end A164476

/-!
# A164477: Number of binary strings of length n with no substrings equal to 0001 0110 or 1000.

The programs for A164477, the canonical program `A164477.P10418596633984336571` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164477 has offset 4).

The definition of A164477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164477.P875078420979547978

`ogf((13-5x-7x^2+2x^3+3x^4-8x^5)/(1-2x+x^3-x^5+x^6))`
-/

namespace A164477.P875078420979547978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5, -7, 2, 3, -8] [1, -2, 0, 1, 0, -1, 1] n

end

end A164477.P875078420979547978

namespace A164477

/-- `ogf((13-5x-7x^2+2x^3+3x^4-8x^5)/(1-2x+x^3-x^5+x^6))` -/
def P875078420979547978.Spec : Prop :=
  ∀ n, P875078420979547978.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P10418596633984336571

`2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` with `a(0)=13, a(1)=21, a(2)=35, a(3)=59, a(4)=100, a(5)=170`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164477

/-- `2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` -/
def P10418596633984336571.Spec : Prop :=
  ∀ n, P10418596633984336571.a n = A164477 (n + 4)

theorem P10418596633984336571.correct : P10418596633984336571.Spec := by
  intro n
  simp only [A164477, Nat.add_sub_cancel]

end A164477

/-! ## A164477.P6655641974843971599

`∑[A340215(n+4)]+8`
-/

namespace A164477.P6655641974843971599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164477.P6655641974843971599

namespace A164477

/-- `∑[A340215(n+4)]+8` -/
def P6655641974843971599.Spec : Prop :=
  ∀ n, P6655641974843971599.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P12296483905286382326

`A164421(n+4)+1-A340217(n+1)`
-/

namespace A164477.P12296483905286382326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) + (1 - A340217 (n + 1))

end

end A164477.P12296483905286382326

namespace A164477

/-- `A164421(n+4)+1-A340217(n+1)` -/
def P12296483905286382326.Spec : Prop :=
  ∀ n, P12296483905286382326.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P16326770754828174738

`A340215(n+4)+A340217(n+4)+1`
-/

namespace A164477.P16326770754828174738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) + (A340217 (n + 4) + 1)

end

end A164477.P16326770754828174738

namespace A164477

/-- `A340215(n+4)+A340217(n+4)+1` -/
def P16326770754828174738.Spec : Prop :=
  ∀ n, P16326770754828174738.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P6393106222454863219

`Δ[A020718(n+2)]+1`
-/

namespace A164477.P6393106222454863219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164477.P6393106222454863219

namespace A164477

/-- `Δ[A020718(n+2)]+1` -/
def P6393106222454863219.Spec : Prop :=
  ∀ n, P6393106222454863219.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P1892192484119100029

`A020718(n+3)+1-A020718(n+2)`
-/

namespace A164477.P1892192484119100029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 3) + (1 - A020718 (n + 2))

end

end A164477.P1892192484119100029

namespace A164477

/-- `A020718(n+3)+1-A020718(n+2)` -/
def P1892192484119100029.Spec : Prop :=
  ∀ n, P1892192484119100029.a n = A164477 (n + 4)

end A164477

/-!
# A164478: Number of binary strings of length n with no substrings equal to 0001 0110 or 1010.

The programs for A164478, the canonical program `A164478.P448157652148831822` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164478 has offset 4).

The definition of A164478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164478.P448157652148831822

`ogf((13-6x+4x^2-6x^3+4x^4-8x^5)/(1-2x+x^2-x^3+x^4-x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164478

/-- `ogf((13-6x+4x^2-6x^3+4x^4-8x^5)/(1-2x+x^2-x^3+x^4-x^5+x^6))` -/
def P448157652148831822.Spec : Prop :=
  ∀ n, P448157652148831822.a n = A164478 (n + 4)

theorem P448157652148831822.correct : P448157652148831822.Spec := by
  intro n
  simp only [A164478, Nat.add_sub_cancel]

end A164478

/-! ## A164478.P15608056762850099895

`A225871(A102726(n+4))-n`
-/

namespace A164478.P15608056762850099895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225871 (A102726 (n + 4)).toNat - (n : ℤ)

end

end A164478.P15608056762850099895

namespace A164478

/-- `A225871(A102726(n+4))-n` -/
def P15608056762850099895.Spec : Prop :=
  ∀ n, P15608056762850099895.a n = A164478 (n + 4)

end A164478

/-! ## A164478.P16400817839729506497

`A164469(n+4)-A129308(A000142(n))`
-/

namespace A164478.P16400817839729506497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164469 (n + 4) - A129308 (A000142 n).toNat

end

end A164478.P16400817839729506497

namespace A164478

/-- `A164469(n+4)-A129308(A000142(n))` -/
def P16400817839729506497.Spec : Prop :=
  ∀ n, P16400817839729506497.a n = A164478 (n + 4)

end A164478

/-! ## A164478.P11385210763187339804

`A001950(A225393(n+4)%A352229(2*n+3))`
-/

namespace A164478.P11385210763187339804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (Int.tmod (A225393 (n + 4)) (A352229 (2 * n + 3))).toNat

end

end A164478.P11385210763187339804

namespace A164478

/-- `A001950(A225393(n+4)%A352229(2*n+3))` -/
def P11385210763187339804.Spec : Prop :=
  ∀ n, P11385210763187339804.a n = A164478 (n + 4)

end A164478

/-!
# A164479: Number of binary strings of length n with no substrings equal to 0001 0110 or 1011.

The programs for A164479, the canonical program `A164479.P14383323820158384934` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164479 has offset 4).

The definition of A164479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164479.P14383323820158384934

`ogf((13-5x-8x^2-x^3+11x^4-8x^5)/(1-2x+x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164479

/-- `ogf((13-5x-8x^2-x^3+11x^4-8x^5)/(1-2x+x^3+x^4-2x^5+x^6))` -/
def P14383323820158384934.Spec : Prop :=
  ∀ n, P14383323820158384934.a n = A164479 (n + 4)

theorem P14383323820158384934.correct : P14383323820158384934.Spec := by
  intro n
  simp only [A164479, Nat.add_sub_cancel]

end A164479

/-! ## A164479.P7992261058177106254

`A354535(A154154(n+3))-1`
-/

namespace A164479.P7992261058177106254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354535 (A154154 (n + 3)).toNat - 1

end

end A164479.P7992261058177106254

namespace A164479

/-- `A354535(A154154(n+3))-1` -/
def P7992261058177106254.Spec : Prop :=
  ∀ n, P7992261058177106254.a n = A164479 (n + 4)

end A164479

/-! ## A164479.P6891264765354848623

`A164469(n+4)+A000007(4^n)+n`
-/

namespace A164479.P6891264765354848623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164469 (n + 4) + (A000007 (4 ^ n) + (n : ℤ))

end

end A164479.P6891264765354848623

namespace A164479

/-- `A164469(n+4)+A000007(4^n)+n` -/
def P6891264765354848623.Spec : Prop :=
  ∀ n, P6891264765354848623.a n = A164479 (n + 4)

end A164479

/-!
# A164480: Number of binary strings of length n with no substrings equal to 0001, 0110 or 1100.

The programs for A164480, the canonical program `A164480.P1765826876704746153` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164480 has offset 0).

The definition of A164480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164480.P157459417562802215

`ogf((1+x^3-x^4-x^5-x^8)/(1-2x+x^3))`
-/

namespace A164480.P157459417562802215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, -1, -1, 0, 0, -1] [1, -2, 0, 1] n

end

end A164480.P157459417562802215

namespace A164480

/-- `ogf((1+x^3-x^4-x^5-x^8)/(1-2x+x^3))` -/
def P157459417562802215.Spec : Prop :=
  ∀ n, P157459417562802215.a n = A164480 n

end A164480

/-! ## A164480.P1765826876704746153

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=21, a(6)=34, a(7)=55, a(8)=88`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164480

/-- `2*a(n-1)-a(n-3)` -/
def P1765826876704746153.Spec : Prop :=
  ∀ n, P1765826876704746153.a n = A164480 n

theorem P1765826876704746153.correct : P1765826876704746153.Spec := by
  intro n
  simp only [A164480]

end A164480

/-! ## A164480.P15535777222688763062

`A005041(A134438(n))+n`
-/

namespace A164480.P15535777222688763062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A134438 n).toNat + (n : ℤ)

end

end A164480.P15535777222688763062

namespace A164480

/-- `A005041(A134438(n))+n` -/
def P15535777222688763062.Spec : Prop :=
  ∀ n, P15535777222688763062.a n = A164480 n

end A164480

/-! ## A164480.P2563633915838018822

`A005041(A233320(∑[n+3]+n+3))+n`
-/

namespace A164480.P2563633915838018822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A233320 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))).toNat + (n : ℤ)

end

end A164480.P2563633915838018822

namespace A164480

/-- `A005041(A233320(∑[n+3]+n+3))+n` -/
def P2563633915838018822.Spec : Prop :=
  ∀ n, P2563633915838018822.a n = A164480 n

end A164480

/-! ## A164480.P15688967162988374913

`A225396(n+2)-A010054(A025527(n+1))`
-/

namespace A164480.P15688967162988374913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225396 (n + 2) - A010054 (A025527 (n + 1)).toNat

end

end A164480.P15688967162988374913

namespace A164480

/-- `A225396(n+2)-A010054(A025527(n+1))` -/
def P15688967162988374913.Spec : Prop :=
  ∀ n, P15688967162988374913.a n = A164480 n

end A164480

/-!
# A164481: Number of binary strings of length n with no substrings equal to 0001 0110 or 1101.

The programs for A164481, the canonical program `A164481.P17060668803672350956` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164481 has offset 4).

The definition of A164481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164481.P654235974353941292

`ogf((13-5x-8x^2-2x^3+12x^4-8x^5)/(1-2x+x^3+x^4-2x^5+x^6))`
-/

namespace A164481.P654235974353941292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5, -8, -2, 12, -8] [1, -2, 0, 1, 1, -2, 1] n

end

end A164481.P654235974353941292

namespace A164481

/-- `ogf((13-5x-8x^2-2x^3+12x^4-8x^5)/(1-2x+x^3+x^4-2x^5+x^6))` -/
def P654235974353941292.Spec : Prop :=
  ∀ n, P654235974353941292.a n = A164481 (n + 4)

end A164481

/-! ## A164481.P17060668803672350956

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=13, a(1)=21, a(2)=34, a(3)=53, a(4)=84, a(5)=131`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164481

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P17060668803672350956.Spec : Prop :=
  ∀ n, P17060668803672350956.a n = A164481 (n + 4)

theorem P17060668803672350956.correct : P17060668803672350956.Spec := by
  intro n
  simp only [A164481, Nat.add_sub_cancel]

end A164481

/-! ## A164481.P10576693586912989042

`A164433(n+4)-A080679(A000153(n))`
-/

namespace A164481.P10576693586912989042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164433 (n + 4) - A080679 (A000153 n).toNat

end

end A164481.P10576693586912989042

namespace A164481

/-- `A164433(n+4)-A080679(A000153(n))` -/
def P10576693586912989042.Spec : Prop :=
  ∀ n, P10576693586912989042.a n = A164481 (n + 4)

end A164481

/-! ## A164481.P13208360273643657647

`A164433(n+4)-A288223(A155442(n+6))`
-/

namespace A164481.P13208360273643657647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164433 (n + 4) - A288223 (A155442 (n + 6)).toNat

end

end A164481.P13208360273643657647

namespace A164481

/-- `A164433(n+4)-A288223(A155442(n+6))` -/
def P13208360273643657647.Spec : Prop :=
  ∀ n, P13208360273643657647.a n = A164481 (n + 4)

end A164481

/-!
# A164482: Number of binary strings of length n with no substrings equal to 0001, 0110, or 1110.

The programs for A164482, the canonical program `A164482.P5879313098539383352` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164482 has offset 0).

The definition of A164482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164482.P5879313098539383352

`ogf((1+x+x^2+2x^3+2x^4+x^5)/(1-x-x^2+x^4))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164482

/-- `ogf((1+x+x^2+2x^3+2x^4+x^5)/(1-x-x^2+x^4))` -/
def P5879313098539383352.Spec : Prop :=
  ∀ n, P5879313098539383352.a n = A164482 n

theorem P5879313098539383352.correct : P5879313098539383352.Spec := by
  intro n
  simp only [A164482]

end A164482

/-! ## A164482.P15427782021321627337

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=7`
-/

namespace A164482.P15427782021321627337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 5, 7] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P15427782021321627337

namespace A164482

/-- `∑[a(n-2)+a(n-3)]` -/
def P15427782021321627337.Spec : Prop :=
  ∀ n, (P15427782021321627337.a n : ℤ) = A164482 n

end A164482

/-! ## A164482.P6802875843069346269

`∑[record[A182097(n)]]-A130130(n)`
-/

namespace A164482.P6802875843069346269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130130 n

end

end A164482.P6802875843069346269

namespace A164482

/-- `∑[record[A182097(n)]]-A130130(n)` -/
def P6802875843069346269.Spec : Prop :=
  ∀ n, P6802875843069346269.a n = A164482 n

end A164482

/-! ## A164482.P12085665344428460727

`A289207(n)+∑[A023434(n+1)]`
-/

namespace A164482.P12085665344428460727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P12085665344428460727

namespace A164482

/-- `A289207(n)+∑[A023434(n+1)]` -/
def P12085665344428460727.Spec : Prop :=
  ∀ n, P12085665344428460727.a n = A164482 n

end A164482

/-! ## A164482.P17803855264067369637

`∑[record[A000931(n)]-A171386(n+1)]`
-/

namespace A164482.P17803855264067369637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P17803855264067369637

namespace A164482

/-- `∑[record[A000931(n)]-A171386(n+1)]` -/
def P17803855264067369637.Spec : Prop :=
  ∀ n, P17803855264067369637.a n = A164482 n

end A164482

/-! ## A164482.P11751703987783482866

`∑[record[A182097(n)]-A171386(n+1)]`
-/

namespace A164482.P11751703987783482866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P11751703987783482866

namespace A164482

/-- `∑[record[A182097(n)]-A171386(n+1)]` -/
def P11751703987783482866.Spec : Prop :=
  ∀ n, P11751703987783482866.a n = A164482 n

end A164482

/-! ## A164482.P16805508484222777431

`∑[A164001(n+1)-A171386(n+1)]`
-/

namespace A164482.P16805508484222777431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P16805508484222777431

namespace A164482

/-- `∑[A164001(n+1)-A171386(n+1)]` -/
def P16805508484222777431.Spec : Prop :=
  ∀ n, P16805508484222777431.a n = A164482 n

end A164482

/-! ## A164482.P966205824811165823

`∑[A134816(A016789(n)-A004278(n+1))]`
-/

namespace A164482.P966205824811165823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A016789 n - A004278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P966205824811165823

namespace A164482

/-- `∑[A134816(A016789(n)-A004278(n+1))]` -/
def P966205824811165823.Spec : Prop :=
  ∀ n, P966205824811165823.a n = A164482 n

end A164482

/-! ## A164482.P10667913038305172134

`∑[A164001(n+1)-A178333(A080098(n))]`
-/

namespace A164482.P10667913038305172134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A178333 (A080098 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P10667913038305172134

namespace A164482

/-- `∑[A164001(n+1)-A178333(A080098(n))]` -/
def P10667913038305172134.Spec : Prop :=
  ∀ n, P10667913038305172134.a n = A164482 n

end A164482

/-! ## A164482.P6291536703784465040

`∑[A164001(n+1)-A209229(A206913(n))]`
-/

namespace A164482.P6291536703784465040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A209229 (A206913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P6291536703784465040

namespace A164482

/-- `∑[A164001(n+1)-A209229(A206913(n))]` -/
def P6291536703784465040.Spec : Prop :=
  ∀ n, P6291536703784465040.a n = A164482 n

end A164482

/-! ## A164482.P10623006931398997572

`A220885(n+3)-A023434(n+5)`
-/

namespace A164482.P10623006931398997572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220885 (n + 3) - A023434 (n + 5)

end

end A164482.P10623006931398997572

namespace A164482

/-- `A220885(n+3)-A023434(n+5)` -/
def P10623006931398997572.Spec : Prop :=
  ∀ n, P10623006931398997572.a n = A164482 n

end A164482

/-!
# A164483: Number of binary strings of length n with no substrings equal to 0001 0111 or 1010.

The programs for A164483, the canonical program `A164483.P4916964034134601224` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164483 has offset 4).

The definition of A164483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164483.P11239156983580248122

`ogf((13-6x+3x^2-22x^3+5x^4+8x^5)/(1-2x+x^2-2x^3+3x^4-x^6))`
-/

namespace A164483.P11239156983580248122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6, 3, -22, 5, 8] [1, -2, 1, -2, 3, 0, -1] n

end

end A164483.P11239156983580248122

namespace A164483

/-- `ogf((13-6x+3x^2-22x^3+5x^4+8x^5)/(1-2x+x^2-2x^3+3x^4-x^6))` -/
def P11239156983580248122.Spec : Prop :=
  ∀ n, P11239156983580248122.a n = A164483 (n + 4)

end A164483

/-! ## A164483.P4916964034134601224

`2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-6)` with `a(0)=13, a(1)=20, a(2)=30, a(3)=44, a(4)=64, a(5)=92`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164483

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-6)` -/
def P4916964034134601224.Spec : Prop :=
  ∀ n, P4916964034134601224.a n = A164483 (n + 4)

theorem P4916964034134601224.correct : P4916964034134601224.Spec := by
  intro n
  simp only [A164483, Nat.add_sub_cancel]

end A164483

/-! ## A164483.P16854212224987004386

`A321578(A211460(n+2))`
-/

namespace A164483.P16854212224987004386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A211460 (n + 2)).toNat

end

end A164483.P16854212224987004386

namespace A164483

/-- `A321578(A211460(n+2))` -/
def P16854212224987004386.Spec : Prop :=
  ∀ n, P16854212224987004386.a n = A164483 (n + 4)

end A164483

/-!
# A164484: Number of binary strings of length n with no substrings equal to 0001 0111 or 1100.

The programs for A164484, the canonical program `A164484.P4988101665108253058` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164484 has offset 4).

The definition of A164484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164484.P4988101665108253058

`ogf((13-6x-9x^2-14x^3+17x^4)/(1-2x+3x^4-2x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164484

/-- `ogf((13-6x-9x^2-14x^3+17x^4)/(1-2x+3x^4-2x^5))` -/
def P4988101665108253058.Spec : Prop :=
  ∀ n, P4988101665108253058.a n = A164484 (n + 4)

theorem P4988101665108253058.correct : P4988101665108253058.Spec := by
  intro n
  simp only [A164484, Nat.add_sub_cancel]

end A164484

/-! ## A164484.P11220943544939515583

`A164505(n+4)+A025469(A006131(n))`
-/

namespace A164484.P11220943544939515583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164505 (n + 4) + A025469 (A006131 n).toNat

end

end A164484.P11220943544939515583

namespace A164484

/-- `A164505(n+4)+A025469(A006131(n))` -/
def P11220943544939515583.Spec : Prop :=
  ∀ n, P11220943544939515583.a n = A164484 (n + 4)

end A164484

/-! ## A164484.P10895552604415637964

`A185284(A014374(n))+A164505(n+4)`
-/

namespace A164484.P10895552604415637964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014374 n).toNat + A164505 (n + 4)

end

end A164484.P10895552604415637964

namespace A164484

/-- `A185284(A014374(n))+A164505(n+4)` -/
def P10895552604415637964.Spec : Prop :=
  ∀ n, P10895552604415637964.a n = A164484 (n + 4)

end A164484

/-! ## A164484.P17013446028486455705

`A235145(A000105(n))+A164505(n+4)`
-/

namespace A164484.P17013446028486455705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A000105 n).toNat + A164505 (n + 4)

end

end A164484.P17013446028486455705

namespace A164484

/-- `A235145(A000105(n))+A164505(n+4)` -/
def P17013446028486455705.Spec : Prop :=
  ∀ n, P17013446028486455705.a n = A164484 (n + 4)

end A164484

/-! ## A164484.P15915106425538367849

`A185284(A002229(n+1))+A164505(n+4)`
-/

namespace A164484.P15915106425538367849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A002229 (n + 1)).toNat + A164505 (n + 4)

end

end A164484.P15915106425538367849

namespace A164484

/-- `A185284(A002229(n+1))+A164505(n+4)` -/
def P15915106425538367849.Spec : Prop :=
  ∀ n, P15915106425538367849.a n = A164484 (n + 4)

end A164484

/-!
# A164485: Number of binary strings of length n with no substrings equal to 0001, 1000 or 1001.

The programs for A164485, the canonical program `A164485.P12227170851971904139` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164485 has offset 4).

The definition of A164485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164485.P1739690259225422891

`ogf((13-5x-9x^2)/(1-2x+x^3))`
-/

namespace A164485.P1739690259225422891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -5, -9] [1, -2, 0, 1] n

end

end A164485.P1739690259225422891

namespace A164485

/-- `ogf((13-5x-9x^2)/(1-2x+x^3))` -/
def P1739690259225422891.Spec : Prop :=
  ∀ n, P1739690259225422891.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P8789367861723733914

`4*A000045(n+4)+1`
-/

namespace A164485.P8789367861723733914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) + 1

end

end A164485.P8789367861723733914

namespace A164485

/-- `4*A000045(n+4)+1` -/
def P8789367861723733914.Spec : Prop :=
  ∀ n, P8789367861723733914.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P12227170851971904139

`2*a(n-1)-a(n-3)` with `a(0)=13, a(1)=21, a(2)=33`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164485

/-- `2*a(n-1)-a(n-3)` -/
def P12227170851971904139.Spec : Prop :=
  ∀ n, P12227170851971904139.a n = A164485 (n + 4)

theorem P12227170851971904139.correct : P12227170851971904139.Spec := by
  intro n
  simp only [A164485, Nat.add_sub_cancel]

end A164485

/-! ## A164485.P18429230887377993890

`floor(ϕ*a(n-1))` with `a(0)=13`
-/

namespace A164485.P18429230887377993890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A164485.P18429230887377993890

namespace A164485

/-- `floor(ϕ*a(n-1))` -/
def P18429230887377993890.Spec : Prop :=
  ∀ n, P18429230887377993890.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P14160573976826096808

`a(n-1)+a(n-2)-1` with `a(0)=13, a(1)=21`
-/

namespace A164485.P14160573976826096808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 21] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A164485.P14160573976826096808

namespace A164485

/-- `a(n-1)+a(n-2)-1` -/
def P14160573976826096808.Spec : Prop :=
  ∀ n, P14160573976826096808.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P5851479082844758048

`a(n-1)-(1-a(n-2))` with `a(0)=13, a(1)=21`
-/

namespace A164485.P5851479082844758048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 21] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A164485.P5851479082844758048

namespace A164485

/-- `a(n-1)-(1-a(n-2))` -/
def P5851479082844758048.Spec : Prop :=
  ∀ n, P5851479082844758048.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6065179619430419181

`A022406(n+2)+2`
-/

namespace A164485.P6065179619430419181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 (n + 2) + 2

end

end A164485.P6065179619430419181

namespace A164485

/-- `A022406(n+2)+2` -/
def P6065179619430419181.Spec : Prop :=
  ∀ n, P6065179619430419181.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P2984890931307802026

`A022403(n+3)+2`
-/

namespace A164485.P2984890931307802026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 3) + 2

end

end A164485.P2984890931307802026

namespace A164485

/-- `A022403(n+3)+2` -/
def P2984890931307802026.Spec : Prop :=
  ∀ n, P2984890931307802026.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6774700352333778206

`A355288(n+3)+2`
-/

namespace A164485.P6774700352333778206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 3) + 2

end

end A164485.P6774700352333778206

namespace A164485

/-- `A355288(n+3)+2` -/
def P6774700352333778206.Spec : Prop :=
  ∀ n, P6774700352333778206.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P4897355229457665847

`A192746(n+2)+4`
-/

namespace A164485.P4897355229457665847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 (n + 2) + 4

end

end A164485.P4897355229457665847

namespace A164485

/-- `A192746(n+2)+4` -/
def P4897355229457665847.Spec : Prop :=
  ∀ n, P4897355229457665847.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10071061426289259709

`A204644(n+1)+5`
-/

namespace A164485.P10071061426289259709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204644 (n + 1) + 5

end

end A164485.P10071061426289259709

namespace A164485

/-- `A204644(n+1)+5` -/
def P10071061426289259709.Spec : Prop :=
  ∀ n, P10071061426289259709.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P12528405359884584787

`4*A020701(n)+1`
-/

namespace A164485.P12528405359884584787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020701 n + 1

end

end A164485.P12528405359884584787

namespace A164485

/-- `4*A020701(n)+1` -/
def P12528405359884584787.Spec : Prop :=
  ∀ n, P12528405359884584787.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P11018235730526078780

`4*A020706(n)-3`
-/

namespace A164485.P11018235730526078780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020706 n - 3

end

end A164485.P11018235730526078780

namespace A164485

/-- `4*A020706(n)-3` -/
def P11018235730526078780.Spec : Prop :=
  ∀ n, P11018235730526078780.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P12612758085213670983

`A211253(n+1)-8`
-/

namespace A164485.P12612758085213670983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) - 8

end

end A164485.P12612758085213670983

namespace A164485

/-- `A211253(n+1)-8` -/
def P12612758085213670983.Spec : Prop :=
  ∀ n, P12612758085213670983.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6713647471534702361

`2*A090991(n+1)+1`
-/

namespace A164485.P6713647471534702361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090991 (n + 1) + 1

end

end A164485.P6713647471534702361

namespace A164485

/-- `2*A090991(n+1)+1` -/
def P6713647471534702361.Spec : Prop :=
  ∀ n, P6713647471534702361.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6657863193206618763

`2*A054886(n+2)+1`
-/

namespace A164485.P6657863193206618763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054886 (n + 2) + 1

end

end A164485.P6657863193206618763

namespace A164485

/-- `2*A054886(n+2)+1` -/
def P6657863193206618763.Spec : Prop :=
  ∀ n, P6657863193206618763.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10091503700264510108

`2*A078642(n+2)+1`
-/

namespace A164485.P10091503700264510108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078642 (n + 2) + 1

end

end A164485.P10091503700264510108

namespace A164485

/-- `2*A078642(n+2)+1` -/
def P10091503700264510108.Spec : Prop :=
  ∀ n, P10091503700264510108.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P7145873016689889462

`4*A020695(n+1)+1`
-/

namespace A164485.P7145873016689889462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020695 (n + 1) + 1

end

end A164485.P7145873016689889462

namespace A164485

/-- `4*A020695(n+1)+1` -/
def P7145873016689889462.Spec : Prop :=
  ∀ n, P7145873016689889462.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10161907385090291259

`2*A068922(n+3)+1`
-/

namespace A164485.P10161907385090291259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068922 (n + 3) + 1

end

end A164485.P10161907385090291259

namespace A164485

/-- `2*A068922(n+3)+1` -/
def P10161907385090291259.Spec : Prop :=
  ∀ n, P10161907385090291259.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P8863460033639887088

`2*A001595(n+3)+3`
-/

namespace A164485.P8863460033639887088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 (n + 3) + 3

end

end A164485.P8863460033639887088

namespace A164485

/-- `2*A001595(n+3)+3` -/
def P8863460033639887088.Spec : Prop :=
  ∀ n, P8863460033639887088.a n = A164485 (n + 4)

end A164485

/-!
# A164487: Number of binary strings of length n with no substrings equal to 0001, 1010, or 1100.

The programs for A164487, the canonical program `A164487.P3092606981207047791` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164487 has offset 0).

The definition of A164487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164487.P3092606981207047791

`ogf((1-x+x^2-x^4-x^6)/(1-3x+3x^2-2x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164487

/-- `ogf((1-x+x^2-x^4-x^6)/(1-3x+3x^2-2x^3+2x^4-x^5))` -/
def P3092606981207047791.Spec : Prop :=
  ∀ n, P3092606981207047791.a n = A164487 n

theorem P3092606981207047791.correct : P3092606981207047791.Spec := by
  intro n
  simp only [A164487]

end A164487

/-! ## A164487.P1988641284224178135

`A289207(n)+∑[A068921(n)]`
-/

namespace A164487.P1988641284224178135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1988641284224178135

namespace A164487

/-- `A289207(n)+∑[A068921(n)]` -/
def P1988641284224178135.Spec : Prop :=
  ∀ n, P1988641284224178135.a n = A164487 n

end A164487

/-! ## A164487.P18355013799103951156

`∑[A079981(C(2, n))+A068921(n)]`
-/

namespace A164487.P18355013799103951156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (Nat.choose 2 n) + A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P18355013799103951156

namespace A164487

/-- `∑[A079981(C(2, n))+A068921(n)]` -/
def P18355013799103951156.Spec : Prop :=
  ∀ n, P18355013799103951156.a n = A164487 n

end A164487

/-! ## A164487.P9081083666452404207

`A004280(n+1)+∑[A068921(n)-1]`
-/

namespace A164487.P9081083666452404207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P9081083666452404207

namespace A164487

/-- `A004280(n+1)+∑[A068921(n)-1]` -/
def P9081083666452404207.Spec : Prop :=
  ∀ n, P9081083666452404207.a n = A164487 n

end A164487

/-! ## A164487.P6011611683045757513

`A233583(n+1)+∑[A068921(n)]-2`
-/

namespace A164487.P6011611683045757513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A164487.P6011611683045757513

namespace A164487

/-- `A233583(n+1)+∑[A068921(n)]-2` -/
def P6011611683045757513.Spec : Prop :=
  ∀ n, P6011611683045757513.a n = A164487 n

end A164487

/-! ## A164487.P1727034574543968205

`∑[A254011(C(2, n))+A000930(n+1)]`
-/

namespace A164487.P1727034574543968205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (Nat.choose 2 n) + A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1727034574543968205

namespace A164487

/-- `∑[A254011(C(2, n))+A000930(n+1)]` -/
def P1727034574543968205.Spec : Prop :=
  ∀ n, P1727034574543968205.a n = A164487 n

end A164487

/-! ## A164487.P4450559489173103657

`∑[A068921(n)+A057427(A002264(n))]`
-/

namespace A164487.P4450559489173103657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n + A057427 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P4450559489173103657

namespace A164487

/-- `∑[A068921(n)+A057427(A002264(n))]` -/
def P4450559489173103657.Spec : Prop :=
  ∀ n, P4450559489173103657.a n = A164487 n

end A164487

/-! ## A164487.P1004124146343118992

`∑[A324872(A000196(n+1))+A068921(n)]`
-/

namespace A164487.P1004124146343118992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324872 (A000196 (n + 1)).toNat + A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1004124146343118992

namespace A164487

/-- `∑[A324872(A000196(n+1))+A068921(n)]` -/
def P1004124146343118992.Spec : Prop :=
  ∀ n, P1004124146343118992.a n = A164487 n

end A164487

/-!
# A164488: Number of binary strings of length n with no substrings equal to 0001 1010 or 1101.

The programs for A164488, the canonical program `A164488.P5314830565154780343` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164488 has offset 4).

The definition of A164488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164488.P5314830565154780343

`ogf((13-5x+4x^2-6x^3+2x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^4-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164488

/-- `ogf((13-5x+4x^2-6x^3+2x^4+4x^5-8x^6)/(1-2x+x^2-x^3+x^4-x^6+x^7))` -/
def P5314830565154780343.Spec : Prop :=
  ∀ n, P5314830565154780343.a n = A164488 (n + 4)

theorem P5314830565154780343.correct : P5314830565154780343.Spec := by
  intro n
  simp only [A164488, Nat.add_sub_cancel]

end A164488

/-! ## A164488.P4376827157816179092

`A001462(A110286(n+2)-A018935(3*n+5))`
-/

namespace A164488.P4376827157816179092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A110286 (n + 2) - A018935 (3 * n + 5)).toNat

end

end A164488.P4376827157816179092

namespace A164488

/-- `A001462(A110286(n+2)-A018935(3*n+5))` -/
def P4376827157816179092.Spec : Prop :=
  ∀ n, P4376827157816179092.a n = A164488 (n + 4)

end A164488

/-! ## A164488.P1583300116125101813

`A000267(A211582(n+2))`
-/

namespace A164488.P1583300116125101813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A211582 (n + 2)).toNat

end

end A164488.P1583300116125101813

namespace A164488

/-- `A000267(A211582(n+2))` -/
def P1583300116125101813.Spec : Prop :=
  ∀ n, P1583300116125101813.a n = A164488 (n + 4)

end A164488

/-!
# A164489: Number of binary strings of length n with no substrings equal to 0001 1011 or 1100.

The programs for A164489, the canonical program `A164489.P3012511915913014791` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164489 has offset 4).

The definition of A164489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164489.P3012511915913014791

`ogf((13-6x-10x^2-2x^3+11x^4+4x^5-8x^6)/(1-2x+x^3+x^4-x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164489

/-- `ogf((13-6x-10x^2-2x^3+11x^4+4x^5-8x^6)/(1-2x+x^3+x^4-x^5-x^6+x^7))` -/
def P3012511915913014791.Spec : Prop :=
  ∀ n, P3012511915913014791.a n = A164489 (n + 4)

theorem P3012511915913014791.correct : P3012511915913014791.Spec := by
  intro n
  simp only [A164489, Nat.add_sub_cancel]

end A164489

/-! ## A164489.P7627719625061381392

`A109537(n+10)+∑[A109537(n+3)]`
-/

namespace A164489.P7627719625061381392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109537 (n + 10) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164489.P7627719625061381392

namespace A164489

/-- `A109537(n+10)+∑[A109537(n+3)]` -/
def P7627719625061381392.Spec : Prop :=
  ∀ n, P7627719625061381392.a n = A164489 (n + 4)

end A164489

/-! ## A164489.P16195931649879152373

`A073188(A250577(n+1))+3`
-/

namespace A164489.P16195931649879152373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A250577 (n + 1)).toNat + 3

end

end A164489.P16195931649879152373

namespace A164489

/-- `A073188(A250577(n+1))+3` -/
def P16195931649879152373.Spec : Prop :=
  ∀ n, P16195931649879152373.a n = A164489 (n + 4)

end A164489

/-! ## A164489.P564425542143198738

`A120141(n+1)-A124756(A011782(n))`
-/

namespace A164489.P564425542143198738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120141 (n + 1) - A124756 (A011782 n).toNat

end

end A164489.P564425542143198738

namespace A164489

/-- `A120141(n+1)-A124756(A011782(n))` -/
def P564425542143198738.Spec : Prop :=
  ∀ n, P564425542143198738.a n = A164489 (n + 4)

end A164489

/-!
# A164490: Number of binary strings of length n with no substrings equal to 0010 0011 or 0110.

The programs for A164490, the canonical program `A164490.P5736606995312955222` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164490 has offset 4).

The definition of A164490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164490.P5736606995312955222

`ogf((13-5x-10x^2+12x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164490

/-- `ogf((13-5x-10x^2+12x^3-8x^4)/(1-2x+2x^3-2x^4+x^5))` -/
def P5736606995312955222.Spec : Prop :=
  ∀ n, P5736606995312955222.a n = A164490 (n + 4)

theorem P5736606995312955222.correct : P5736606995312955222.Spec := by
  intro n
  simp only [A164490, Nat.add_sub_cancel]

end A164490

/-! ## A164490.P14874193741949125750

`A130137(n+6)-(A130137(n)+2)`
-/

namespace A164490.P14874193741949125750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 (n + 6) - (A130137 n + 2)

end

end A164490.P14874193741949125750

namespace A164490

/-- `A130137(n+6)-(A130137(n)+2)` -/
def P14874193741949125750.Spec : Prop :=
  ∀ n, P14874193741949125750.a n = A164490 (n + 4)

end A164490

/-! ## A164490.P8232974180733103967

`A198292(A291557(n)+A008619(n))`
-/

namespace A164490.P8232974180733103967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (A291557 n + A008619 n).toNat

end

end A164490.P8232974180733103967

namespace A164490

/-- `A198292(A291557(n)+A008619(n))` -/
def P8232974180733103967.Spec : Prop :=
  ∀ n, P8232974180733103967.a n = A164490 (n + 4)

end A164490

/-!
# A164491: Number of binary strings of length n with no substrings equal to 0010 0100 or 1001.

The programs for A164491, the canonical program `A164491.P11328479357986098957` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164491 has offset 4).

The definition of A164491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164491.P11328479357986098957

`ogf((13+10x+4x^2+7x^3+12x^4+8x^5)/(1-x-x^2-x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164491

/-- `ogf((13+10x+4x^2+7x^3+12x^4+8x^5)/(1-x-x^2-x^5-x^6))` -/
def P11328479357986098957.Spec : Prop :=
  ∀ n, P11328479357986098957.a n = A164491 (n + 4)

theorem P11328479357986098957.correct : P11328479357986098957.Spec := by
  intro n
  simp only [A164491, Nat.add_sub_cancel]

end A164491

/-! ## A164491.P14143353542599236624

`Δ[A079960(n+2)+A079960(n+6)]`
-/

namespace A164491.P14143353542599236624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079960 (n + 2) + A079960 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164491.P14143353542599236624

namespace A164491

/-- `Δ[A079960(n+2)+A079960(n+6)]` -/
def P14143353542599236624.Spec : Prop :=
  ∀ n, P14143353542599236624.a n = A164491 (n + 4)

end A164491

/-! ## A164491.P17887273345765581850

`A233583(Δ[A301789(n+1)])-A070106(A307788(n))`
-/

namespace A164491.P17887273345765581850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat - A070106 (A307788 n).toNat

end

end A164491.P17887273345765581850

namespace A164491

/-- `A233583(Δ[A301789(n+1)])-A070106(A307788(n))` -/
def P17887273345765581850.Spec : Prop :=
  ∀ n, P17887273345765581850.a n = A164491 (n + 4)

end A164491

/-! ## A164491.P12867637220204120667

`A233583(Δ[A301789(n+1)])-A113858(A342762(n))`
-/

namespace A164491.P12867637220204120667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat - A113858 (A342762 n).toNat

end

end A164491.P12867637220204120667

namespace A164491

/-- `A233583(Δ[A301789(n+1)])-A113858(A342762(n))` -/
def P12867637220204120667.Spec : Prop :=
  ∀ n, P12867637220204120667.a n = A164491 (n + 4)

end A164491

/-!
# A164492: Number of binary strings of length n with no substrings equal to 0010 0101 or 0110.

The programs for A164492, the canonical program `A164492.P338345279015077758` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164492 has offset 4).

The definition of A164492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164492.P338345279015077758

`ogf((13-5x+5x^2+9x^3+2x^4+4x^5+8x^6)/(1-2x+x^2-x^4-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164492

/-- `ogf((13-5x+5x^2+9x^3+2x^4+4x^5+8x^6)/(1-2x+x^2-x^4-x^7))` -/
def P338345279015077758.Spec : Prop :=
  ∀ n, P338345279015077758.a n = A164492 (n + 4)

theorem P338345279015077758.correct : P338345279015077758.Spec := by
  intro n
  simp only [A164492, Nat.add_sub_cancel]

end A164492

/-! ## A164492.P638142814714704840

`A164432(n+4)+A001221(A192936(n))-(A004273(n)-n)`
-/

namespace A164492.P638142814714704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164432 (n + 4) + A001221 (A192936 n).toNat - (A004273 n - (n : ℤ))

end

end A164492.P638142814714704840

namespace A164492

/-- `A164432(n+4)+A001221(A192936(n))-(A004273(n)-n)` -/
def P638142814714704840.Spec : Prop :=
  ∀ n, P638142814714704840.a n = A164492 (n + 4)

end A164492

/-! ## A164492.P14142916028632774842

`A164459(n+4)-A107846(A000142(n))-(A004273(n)-n)`
-/

namespace A164492.P14142916028632774842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A000142 n).toNat - (A004273 n - (n : ℤ))

end

end A164492.P14142916028632774842

namespace A164492

/-- `A164459(n+4)-A107846(A000142(n))-(A004273(n)-n)` -/
def P14142916028632774842.Spec : Prop :=
  ∀ n, P14142916028632774842.a n = A164492 (n + 4)

end A164492

/-!
# A164493: Number of binary strings of length n with no substrings equal to 0010 0101 or 1001.

The programs for A164493, the canonical program `A164493.P12813415359424652732` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164493 has offset 4).

The definition of A164493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164493.P12813415359424652732

`ogf((13-4x+7x^2-2x^3+10x^4+4x^5+8x^6)/(1-2x+x^2-x^3+x^4-x^5-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164493

/-- `ogf((13-4x+7x^2-2x^3+10x^4+4x^5+8x^6)/(1-2x+x^2-x^3+x^4-x^5-x^7))` -/
def P12813415359424652732.Spec : Prop :=
  ∀ n, P12813415359424652732.a n = A164493 (n + 4)

theorem P12813415359424652732.correct : P12813415359424652732.Spec := by
  intro n
  simp only [A164493, Nat.add_sub_cancel]

end A164493

/-! ## A164493.P18010120655966778551

`A164421(n+4)+A160380(A195259(n))`
-/

namespace A164493.P18010120655966778551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) + A160380 (A195259 n).toNat

end

end A164493.P18010120655966778551

namespace A164493

/-- `A164421(n+4)+A160380(A195259(n))` -/
def P18010120655966778551.Spec : Prop :=
  ∀ n, P18010120655966778551.a n = A164493 (n + 4)

end A164493

/-! ## A164493.P15861109451788420637

`A326033(A164395(n))+A164421(n+4)`
-/

namespace A164493.P15861109451788420637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A164395 n).toNat + A164421 (n + 4)

end

end A164493.P15861109451788420637

namespace A164493

/-- `A326033(A164395(n))+A164421(n+4)` -/
def P15861109451788420637.Spec : Prop :=
  ∀ n, P15861109451788420637.a n = A164493 (n + 4)

end A164493

/-!
# A164494: Number of binary strings of length n with no substrings equal to 0010 0101 or 1010.

The programs for A164494, the canonical program `A164494.P17393898788326072999` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164494 has offset 4).

The definition of A164494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164494.P17393898788326072999

`ogf((13-3x+7x^2)/(1-2x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164494

/-- `ogf((13-3x+7x^2)/(1-2x+x^2-x^3))` -/
def P17393898788326072999.Spec : Prop :=
  ∀ n, P17393898788326072999.a n = A164494 (n + 4)

theorem P17393898788326072999.correct : P17393898788326072999.Spec := by
  intro n
  simp only [A164494, Nat.add_sub_cancel]

end A164494

/-! ## A164494.P7691253228734499853

`A137495(n+4)`
-/

namespace A164494.P7691253228734499853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 (n + 4)

end

end A164494.P7691253228734499853

namespace A164494

/-- `A137495(n+4)` -/
def P7691253228734499853.Spec : Prop :=
  ∀ n, P7691253228734499853.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P18008634522836662009

`A007307(2*(n+5))`
-/

namespace A164494.P18008634522836662009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * (n + 5))

end

end A164494.P18008634522836662009

namespace A164494

/-- `A007307(2*(n+5))` -/
def P18008634522836662009.Spec : Prop :=
  ∀ n, P18008634522836662009.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P14136457923034853487

`A020713(n+1)+A010901(n)`
-/

namespace A164494.P14136457923034853487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + A010901 n

end

end A164494.P14136457923034853487

namespace A164494

/-- `A020713(n+1)+A010901(n)` -/
def P14136457923034853487.Spec : Prop :=
  ∀ n, P14136457923034853487.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P692732717917553684

`A164409(n+4)+A005251(n)`
-/

namespace A164494.P692732717917553684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + A005251 n

end

end A164494.P692732717917553684

namespace A164494

/-- `A164409(n+4)+A005251(n)` -/
def P692732717917553684.Spec : Prop :=
  ∀ n, P692732717917553684.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P3663260606940628819

`A164392(n+4)-A164392(n)`
-/

namespace A164494.P3663260606940628819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164392 (n + 4) - A164392 n

end

end A164494.P3663260606940628819

namespace A164494

/-- `A164392(n+4)-A164392(n)` -/
def P3663260606940628819.Spec : Prop :=
  ∀ n, P3663260606940628819.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P11653315241708725264

`A020713(n+1)+Δ[A020713(n)]`
-/

namespace A164494.P11653315241708725264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164494.P11653315241708725264

namespace A164494

/-- `A020713(n+1)+Δ[A020713(n)]` -/
def P11653315241708725264.Spec : Prop :=
  ∀ n, P11653315241708725264.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P12040686550255662216

`A010901(n+2)+A005314(n+1)`
-/

namespace A164494.P12040686550255662216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 2) + A005314 (n + 1)

end

end A164494.P12040686550255662216

namespace A164494

/-- `A010901(n+2)+A005314(n+1)` -/
def P12040686550255662216.Spec : Prop :=
  ∀ n, P12040686550255662216.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P11562412033130215427

`A048587(n+2)-A018908(n+1)`
-/

namespace A164494.P11562412033130215427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048587 (n + 2) - A018908 (n + 1)

end

end A164494.P11562412033130215427

namespace A164494

/-- `A048587(n+2)-A018908(n+1)` -/
def P11562412033130215427.Spec : Prop :=
  ∀ n, P11562412033130215427.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P10393279199319039938

`A020736(n)+A020716(2*n+1)`
-/

namespace A164494.P10393279199319039938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 n + A020716 (2 * n + 1)

end

end A164494.P10393279199319039938

namespace A164494

/-- `A020736(n)+A020716(2*n+1)` -/
def P10393279199319039938.Spec : Prop :=
  ∀ n, P10393279199319039938.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P8665831665053600231

`A020713(n+2)-A005314(n+3)`
-/

namespace A164494.P8665831665053600231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 2) - A005314 (n + 3)

end

end A164494.P8665831665053600231

namespace A164494

/-- `A020713(n+2)-A005314(n+3)` -/
def P8665831665053600231.Spec : Prop :=
  ∀ n, P8665831665053600231.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P5948252625484700711

`A020713(n+1)+A077855(n+1)+1`
-/

namespace A164494.P5948252625484700711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + (A077855 (n + 1) + 1)

end

end A164494.P5948252625484700711

namespace A164494

/-- `A020713(n+1)+A077855(n+1)+1` -/
def P5948252625484700711.Spec : Prop :=
  ∀ n, P5948252625484700711.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P3240355572637427797

`A077855(n+3)+A052954(2*n+3)`
-/

namespace A164494.P3240355572637427797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 3) + A052954 (2 * n + 3)

end

end A164494.P3240355572637427797

namespace A164494

/-- `A077855(n+3)+A052954(2*n+3)` -/
def P3240355572637427797.Spec : Prop :=
  ∀ n, P3240355572637427797.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P8769495729701665738

`A164409(n+4)+abs(A124745(2*n+3))`
-/

namespace A164494.P8769495729701665738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + |A124745 (2 * n + 3)|

end

end A164494.P8769495729701665738

namespace A164494

/-- `A164409(n+4)+abs(A124745(2*n+3))` -/
def P8769495729701665738.Spec : Prop :=
  ∀ n, P8769495729701665738.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P16827572691250413774

`A134816(2*(n+1))+A020720(2*(n+1))`
-/

namespace A164494.P16827572691250413774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) + A020720 (2 * (n + 1))

end

end A164494.P16827572691250413774

namespace A164494

/-- `A134816(2*(n+1))+A020720(2*(n+1))` -/
def P16827572691250413774.Spec : Prop :=
  ∀ n, P16827572691250413774.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P13719727897250289706

`A164409(n+4)+A078027(2*(n+1)+1)`
-/

namespace A164494.P13719727897250289706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + A078027 (2 * (n + 1) + 1)

end

end A164494.P13719727897250289706

namespace A164494

/-- `A164409(n+4)+A078027(2*(n+1)+1)` -/
def P13719727897250289706.Spec : Prop :=
  ∀ n, P13719727897250289706.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P14855423364771911328

`A164001(2*(n+2))+A020720(2*n+1)`
-/

namespace A164494.P14855423364771911328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 2)) + A020720 (2 * n + 1)

end

end A164494.P14855423364771911328

namespace A164494

/-- `A164001(2*(n+2))+A020720(2*n+1)` -/
def P14855423364771911328.Spec : Prop :=
  ∀ n, P14855423364771911328.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P4566527871304389654

`A182097(2*n+3)+A020720(2*(n+1))`
-/

namespace A164494.P4566527871304389654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 3) + A020720 (2 * (n + 1))

end

end A164494.P4566527871304389654

namespace A164494

/-- `A182097(2*n+3)+A020720(2*(n+1))` -/
def P4566527871304389654.Spec : Prop :=
  ∀ n, P4566527871304389654.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P15483141142142588996

`A020716(2*n+3)-A023434(2*n+3)`
-/

namespace A164494.P15483141142142588996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (2 * n + 3) - A023434 (2 * n + 3)

end

end A164494.P15483141142142588996

namespace A164494

/-- `A020716(2*n+3)-A023434(2*n+3)` -/
def P15483141142142588996.Spec : Prop :=
  ∀ n, P15483141142142588996.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P4753115380580086309

`A020720(2*n+1)+Δ[Δ[A020716(2*n)]]`
-/

namespace A164494.P4753115380580086309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A164494.P4753115380580086309

namespace A164494

/-- `A020720(2*n+1)+Δ[Δ[A020716(2*n)]]` -/
def P4753115380580086309.Spec : Prop :=
  ∀ n, P4753115380580086309.a n = A164494 (n + 4)

end A164494

/-!
# A164495: Number of binary strings of length n with no substrings equal to 0010 0101 or 1011.

The programs for A164495, the canonical program `A164495.P15928502323414917915` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164495 has offset 4).

The definition of A164495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164495.P5035941221461786736

`ogf((13-4x+6x^2+10x^3+5x^4+8x^5)/(1-2x+x^2-x^4-x^6))`
-/

namespace A164495.P5035941221461786736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -4, 6, 10, 5, 8] [1, -2, 1, 0, -1, 0, -1] n

end

end A164495.P5035941221461786736

namespace A164495

/-- `ogf((13-4x+6x^2+10x^3+5x^4+8x^5)/(1-2x+x^2-x^4-x^6))` -/
def P5035941221461786736.Spec : Prop :=
  ∀ n, P5035941221461786736.a n = A164495 (n + 4)

end A164495

/-! ## A164495.P15928502323414917915

`2*a(n-1)-a(n-2)+a(n-4)+a(n-6)` with `a(0)=13, a(1)=22, a(2)=37, a(3)=62, a(4)=105, a(5)=178`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164495

/-- `2*a(n-1)-a(n-2)+a(n-4)+a(n-6)` -/
def P15928502323414917915.Spec : Prop :=
  ∀ n, P15928502323414917915.a n = A164495 (n + 4)

theorem P15928502323414917915.correct : P15928502323414917915.Spec := by
  intro n
  simp only [A164495, Nat.add_sub_cancel]

end A164495

/-! ## A164495.P15488565056925356505

`A247911(3*a(n-1))-(n+1)` with `a(0)=13`
-/

namespace A164495.P15488565056925356505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A247911 (3 * a (n - 1)).toNat - (n + 1 : ℤ)

end

end A164495.P15488565056925356505

namespace A164495

/-- `A247911(3*a(n-1))-(n+1)` -/
def P15488565056925356505.Spec : Prop :=
  ∀ n, P15488565056925356505.a n = A164495 (n + 4)

end A164495

/-! ## A164495.P1285289256008334023

`A164423(n+4)+lt[A082513(n+1), 1]`
-/

namespace A164495.P1285289256008334023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164423 (n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A164495.P1285289256008334023

namespace A164495

/-- `A164423(n+4)+lt[A082513(n+1), 1]` -/
def P1285289256008334023.Spec : Prop :=
  ∀ n, P1285289256008334023.a n = A164495 (n + 4)

end A164495

/-!
# A164496: Number of binary strings of length n with no substrings equal to 0010 0110 or 1001.

The programs for A164496, the canonical program `A164496.P1111571064567968918` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164496 has offset 4).

The definition of A164496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164496.P1111571064567968918

`ogf((13-5x-7x^2+14x^3-4x^4+8x^5)/(1-2x+2x^3-2x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164496

/-- `ogf((13-5x-7x^2+14x^3-4x^4+8x^5)/(1-2x+2x^3-2x^4+x^5-x^6))` -/
def P1111571064567968918.Spec : Prop :=
  ∀ n, P1111571064567968918.a n = A164496 (n + 4)

theorem P1111571064567968918.correct : P1111571064567968918.Spec := by
  intro n
  simp only [A164496, Nat.add_sub_cancel]

end A164496

/-! ## A164496.P13811187119566116372

`A164432(n+4)+A001221(A192936(n))`
-/

namespace A164496.P13811187119566116372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164432 (n + 4) + A001221 (A192936 n).toNat

end

end A164496.P13811187119566116372

namespace A164496

/-- `A164432(n+4)+A001221(A192936(n))` -/
def P13811187119566116372.Spec : Prop :=
  ∀ n, P13811187119566116372.a n = A164496 (n + 4)

end A164496

/-! ## A164496.P3822060475831482541

`A164459(n+4)-A107846(A000142(n))`
-/

namespace A164496.P3822060475831482541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A000142 n).toNat

end

end A164496.P3822060475831482541

namespace A164496

/-- `A164459(n+4)-A107846(A000142(n))` -/
def P3822060475831482541.Spec : Prop :=
  ∀ n, P3822060475831482541.a n = A164496 (n + 4)

end A164496

/-! ## A164496.P6119724465438917307

`A164459(n+4)-A107846(A177480(n))`
-/

namespace A164496.P6119724465438917307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A177480 n).toNat

end

end A164496.P6119724465438917307

namespace A164496

/-- `A164459(n+4)-A107846(A177480(n))` -/
def P6119724465438917307.Spec : Prop :=
  ∀ n, P6119724465438917307.a n = A164496 (n + 4)

end A164496

/-!
# A164497: Number of binary strings of length n with no substrings equal to 0010 0110 or 1011.

The programs for A164497, the canonical program `A164497.P14116661018336961114` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164497 has offset 4).

The definition of A164497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164497.P14116661018336961114

`ogf((13-5x-8x^2+12x^3+8x^4)/(1-2x+2x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164497

/-- `ogf((13-5x-8x^2+12x^3+8x^4)/(1-2x+2x^3-x^4-x^5))` -/
def P14116661018336961114.Spec : Prop :=
  ∀ n, P14116661018336961114.a n = A164497 (n + 4)

theorem P14116661018336961114.correct : P14116661018336961114.Spec := by
  intro n
  simp only [A164497, Nat.add_sub_cancel]

end A164497

/-! ## A164497.P13966103250479046938

`A205698(A347311(n+1))+2`
-/

namespace A164497.P13966103250479046938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205698 (A347311 (n + 1)).toNat + 2

end

end A164497.P13966103250479046938

namespace A164497

/-- `A205698(A347311(n+1))+2` -/
def P13966103250479046938.Spec : Prop :=
  ∀ n, P13966103250479046938.a n = A164497 (n + 4)

end A164497

/-! ## A164497.P514586518945998733

`A071625(A086618(n))+A022096(n+3)`
-/

namespace A164497.P514586518945998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A086618 n).toNat + A022096 (n + 3)

end

end A164497.P514586518945998733

namespace A164497

/-- `A071625(A086618(n))+A022096(n+3)` -/
def P514586518945998733.Spec : Prop :=
  ∀ n, P514586518945998733.a n = A164497 (n + 4)

end A164497

/-!
# A164498: Number of binary strings of length n with no substrings equal to 0010 0110 or 1100.

The programs for A164498, there is no canonical definition to state claims against.
-/

/-! ## A164498.P2999839409394233511

`A205684(A027961(2*(n+2)))-1`
-/

namespace A164498.P2999839409394233511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205684 (A027961 (2 * (n + 2))).toNat - 1

end

end A164498.P2999839409394233511

/-! ## A164498.P5928667817754168928

`A205867(A124704(n+1))+A000217(n)`
-/

namespace A164498.P5928667817754168928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205867 (A124704 (n + 1)).toNat + A000217 n

end

end A164498.P5928667817754168928

/-! ## A164498.P15332045228725183962

`A184402(A048584(n))+A171826(n+1)`
-/

namespace A164498.P15332045228725183962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (A048584 n).toNat + A171826 (n + 1)

end

end A164498.P15332045228725183962

/-!
# A164499: Number of binary strings of length n with no substrings equal to 0010 0110 or 1101.

The programs for A164499, the canonical program `A164499.P5490548145911945850` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164499 has offset 4).

The definition of A164499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164499.P5490548145911945850

`ogf((13-18x+9x^2+2x^3+4x^4-8x^5)/(1-3x+3x^2-x^3-x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164499

/-- `ogf((13-18x+9x^2+2x^3+4x^4-8x^5)/(1-3x+3x^2-x^3-x^5+x^6))` -/
def P5490548145911945850.Spec : Prop :=
  ∀ n, P5490548145911945850.a n = A164499 (n + 4)

theorem P5490548145911945850.correct : P5490548145911945850.Spec := by
  intro n
  simp only [A164499, Nat.add_sub_cancel]

end A164499

/-! ## A164499.P14838210248412597756

`A164442(n+4)-A185284(A000124(n))`
-/

namespace A164499.P14838210248412597756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A185284 (A000124 n).toNat

end

end A164499.P14838210248412597756

namespace A164499

/-- `A164442(n+4)-A185284(A000124(n))` -/
def P14838210248412597756.Spec : Prop :=
  ∀ n, P14838210248412597756.a n = A164499 (n + 4)

end A164499

/-! ## A164499.P1214517332577884051

`A164442(n+4)-A010059(A327644(n))`
-/

namespace A164499.P1214517332577884051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A010059 (A327644 n).toNat

end

end A164499.P1214517332577884051

namespace A164499

/-- `A164442(n+4)-A010059(A327644(n))` -/
def P1214517332577884051.Spec : Prop :=
  ∀ n, P1214517332577884051.a n = A164499 (n + 4)

end A164499

/-! ## A164499.P3523392003886835586

`A164442(n+4)-A186747(A308822(n))`
-/

namespace A164499.P3523392003886835586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A186747 (A308822 n).toNat

end

end A164499.P3523392003886835586

namespace A164499

/-- `A164442(n+4)-A186747(A308822(n))` -/
def P3523392003886835586.Spec : Prop :=
  ∀ n, P3523392003886835586.a n = A164499 (n + 4)

end A164499

/-! ## A164499.P110289734999837311

`xor(A151755(A164508(n)), A164442(n+4))`
-/

namespace A164499.P110289734999837311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A164508 n).toNat) (A164442 (n + 4))

end

end A164499.P110289734999837311

namespace A164499

/-- `xor(A151755(A164508(n)), A164442(n+4))` -/
def P110289734999837311.Spec : Prop :=
  ∀ n, P110289734999837311.a n = A164499 (n + 4)

end A164499

