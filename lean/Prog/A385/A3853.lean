import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A385304: Expansion of e.g.f. 1/(1 - 2 * sinh(x))^(1/2).

The programs for A385304, there is no canonical definition to state claims against.
-/

/-! ## A385304.P1082398760042599647

`∑{#}[n, A001147(#)*A136630(C(n+1, 2)+#)]`
-/

namespace A385304.P1082398760042599647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001147 k * A136630 (Nat.choose (n + 1) 2 + k)

end

end A385304.P1082398760042599647

/-! ## A385304.P17488406095571842976

`A143599(n)+A093391(A066068(n))`
-/

namespace A385304.P17488406095571842976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143599 n + A093391 (A066068 n).toNat

end

end A385304.P17488406095571842976

/-!
# A385305: Expansion of e.g.f. 1/(1 - 3 * sinh(x))^(1/3).

The programs for A385305, there is no canonical definition to state claims against.
-/

/-! ## A385305.P1915933647910145870

`∑{#}[n, A007559(#)*A136630(C(n+1, 2)+#)]`
-/

namespace A385305.P1915933647910145870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007559 k * A136630 (Nat.choose (n + 1) 2 + k)

end

end A385305.P1915933647910145870

/-! ## A385305.P4364407504366740177

`A397181(A062497(n))+A000312(n)`
-/

namespace A385305.P4364407504366740177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397181 (A062497 n).toNat + A000312 n

end

end A385305.P4364407504366740177

/-!
# A385306: Expansion of e.g.f. 1/(1 - 2 * sin(x))^(1/2).

The programs for A385306, there is no canonical definition to state claims against.
-/

/-! ## A385306.P598586856567527155

`A195134(A001096(n))`
-/

namespace A385306.P598586856567527155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195134 (A001096 n).toNat

end

end A385306.P598586856567527155

/-! ## A385306.P14500087767530538954

`A026741(2*A195134(n))`
-/

namespace A385306.P14500087767530538954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A195134 n).toNat

end

end A385306.P14500087767530538954

/-!
# A385307: Expansion of e.g.f. 1/(1 - 3 * sin(x))^(1/3).

The programs for A385307, there is no canonical definition to state claims against.
-/

/-! ## A385307.P8564544709809114855

`A380817(A381174(n))`
-/

namespace A385307.P8564544709809114855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A381174 n).toNat

end

end A385307.P8564544709809114855

/-! ## A385307.P13778543435111701294

`and(A256655(A108447(n)), A381174(n))`
-/

namespace A385307.P13778543435111701294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256655 (A108447 n).toNat) (A381174 n)

end

end A385307.P13778543435111701294

/-!
# A385308: Expansion of e.g.f. 1/(1 - 2 * x * cosh(x))^(1/2).

The programs for A385308, there is no canonical definition to state claims against.
-/

/-! ## A385308.P6277316138376098321

`A322467(n^n)`
-/

namespace A385308.P6277316138376098321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322467 (n ^ n)

end

end A385308.P6277316138376098321

/-!
# A385309: Expansion of e.g.f. 1/(1 - 3 * x * cosh(x))^(1/3).

The programs for A385309, there is no canonical definition to state claims against.
-/

/-! ## A385309.P5591115682445477895

`A130354(∏[floor(abs(3*n-ϕ))])`
-/

namespace A385309.P5591115682445477895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130354 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385309.P5591115682445477895

/-!
# A385310: Expansion of e.g.f. 1/(1 - 2 * x * cos(x))^(1/2).

The programs for A385310, there is no canonical definition to state claims against.
-/

/-! ## A385310.P9762098525695325473

`A247176(A000262(n))+1`
-/

namespace A385310.P9762098525695325473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A000262 n).toNat + 1

end

end A385310.P9762098525695325473

/-! ## A385310.P13578123449155758766

`A076885(A383380(n)+1)`
-/

namespace A385310.P13578123449155758766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A383380 n + 1).toNat

end

end A385310.P13578123449155758766

/-!
# A385311: Expansion of e.g.f. 1/(1 - 3 * x * cos(x))^(1/3).

The programs for A385311, there is no canonical definition to state claims against.
-/

/-! ## A385311.P765192753001568971

`A176554(C(∑[n], n))`
-/

namespace A385311.P765192753001568971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176554 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A385311.P765192753001568971

/-!
# A385312: a(n) is the number of ternary strings of length n with at least one 0, at least two 1's and at least three 2's.

The programs for A385312, there is no canonical definition to state claims against.
-/

/-! ## A385312.P16754052551447654923

`A048720(C(A000041(n), 8))`
-/

namespace A385312.P16754052551447654923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Nat.choose (A000041 n).toNat 8)

end

end A385312.P16754052551447654923

/-! ## A385312.P9166807336316647820

`A048720(C(A027131(n), 8))`
-/

namespace A385312.P9166807336316647820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Nat.choose (A027131 n).toNat 8)

end

end A385312.P9166807336316647820

/-! ## A385312.P14742239721310456087

`A048720(C(A280938(n), 8))`
-/

namespace A385312.P14742239721310456087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Nat.choose (A280938 n).toNat 8)

end

end A385312.P14742239721310456087

/-! ## A385312.P13741984540913727008

`A048720(C(A382754(n), 8))`
-/

namespace A385312.P13741984540913727008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (Nat.choose (A382754 n).toNat 8)

end

end A385312.P13741984540913727008

/-!
# A385313: a(n) = c(n) + Sum_{d|n} d * phi(n/d) * (1 - c(d)), where c = A010051.

The programs for A385313, the canonical program `A385313.P15017568967422953247` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385313 has offset 1).

The definition of A385313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385313.P15017568967422953247

`∑{d}[n+1, A380447(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A385313

/-- `∑{d}[n+1, A380447(#)*A008683((n+1)/#)]` -/
def P15017568967422953247.Spec : Prop :=
  ∀ n, P15017568967422953247.a n = A385313 (n + 1)

theorem P15017568967422953247.correct : P15017568967422953247.Spec := by
  intro n
  simp only [A385313, Nat.add_sub_cancel]

end A385313

/-! ## A385313.P2090871860569150372

`∑{d}[n+1, A008683(#)*A380447((n+1)/#)]`
-/

namespace A385313.P2090871860569150372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A380447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385313.P2090871860569150372

namespace A385313

/-- `∑{d}[n+1, A008683(#)*A380447((n+1)/#)]` -/
def P2090871860569150372.Spec : Prop :=
  ∀ n, P2090871860569150372.a n = A385313 (n + 1)

end A385313

/-!
# A385317: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^3*A(x)^3.

The programs for A385317, the canonical program `A385317.P4080566454469139856` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385317 has offset 0).

The definition of A385317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385317.P4080566454469139856

`∑{#}[floor(n/2), C(3*(n-2*#), #)*A001764(n-2*#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385317

/-- `∑{#}[floor(n/2), C(3*(n-2*#), #)*A001764(n-2*#)]` -/
def P4080566454469139856.Spec : Prop :=
  ∀ n, P4080566454469139856.a n = A385317 n

theorem P4080566454469139856.correct : P4080566454469139856.Spec := by
  intro n
  simp only [A385317]

end A385317

/-! ## A385317.P14349709498728823316

`A187185(A006130(2*n))`
-/

namespace A385317.P14349709498728823316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A006130 (2 * n)).toNat

end

end A385317.P14349709498728823316

namespace A385317

/-- `A187185(A006130(2*n))` -/
def P14349709498728823316.Spec : Prop :=
  ∀ n, P14349709498728823316.a n = A385317 n

end A385317

/-!
# A385319: a(n) = Sum_{k=0..n} 2^k * binomial(2*n,k) * binomial(2*n-k-1,n-k).

The programs for A385319, the canonical program `A385319.P11795296348781785083` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385319 has offset 0).

The definition of A385319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385319.P11795296348781785083

`∑{#}[n, 3^#*(-1)^(n-#)*C(2*n, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385319

/-- `∑{#}[n, 3^#*(-1)^(n-#)*C(2*n, #)]` -/
def P11795296348781785083.Spec : Prop :=
  ∀ n, P11795296348781785083.a n = (A385319 n : ℚ)

end A385319

/-! ## A385319.P4813507514849984864

`A193856(2*n²)`
-/

namespace A385319.P4813507514849984864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (2 * n ^ 2)

end

end A385319.P4813507514849984864

namespace A385319

/-- `A193856(2*n²)` -/
def P4813507514849984864.Spec : Prop :=
  ∀ n, P4813507514849984864.a n = A385319 n

end A385319

/-! ## A385319.P18168861290705017749

`A193857(A001105(n)-A178334(n))`
-/

namespace A385319.P18168861290705017749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A001105 n - A178334 n).toNat

end

end A385319.P18168861290705017749

namespace A385319

/-- `A193857(A001105(n)-A178334(n))` -/
def P18168861290705017749.Spec : Prop :=
  ∀ n, P18168861290705017749.a n = A385319 n

end A385319

/-! ## A385319.P3905403040211641073

`A193857(A056220(n)%A110520(n))`
-/

namespace A385319.P3905403040211641073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (Int.tmod (A056220 n) (A110520 n)).toNat

end

end A385319.P3905403040211641073

namespace A385319

/-- `A193857(A056220(n)%A110520(n))` -/
def P3905403040211641073.Spec : Prop :=
  ∀ n, P3905403040211641073.a n = A385319 n

end A385319

/-! ## A385319.P13124794214384407293

`A178334(n+4)*A193856(A001105(n))`
-/

namespace A385319.P13124794214384407293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 4) * A193856 (A001105 n).toNat

end

end A385319.P13124794214384407293

namespace A385319

/-- `A178334(n+4)*A193856(A001105(n))` -/
def P13124794214384407293.Spec : Prop :=
  ∀ n, P13124794214384407293.a n = A385319 n

end A385319

/-! ## A385319.P16224034453975006777

`A193856(A001105(n))+A007814(2*n+1)`
-/

namespace A385319.P16224034453975006777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A007814 (2 * n + 1)

end

end A385319.P16224034453975006777

namespace A385319

/-- `A193856(A001105(n))+A007814(2*n+1)` -/
def P16224034453975006777.Spec : Prop :=
  ∀ n, P16224034453975006777.a n = A385319 n

end A385319

/-! ## A385319.P7580512520162614082

`A193856(A001105(n))+A000038(3*n+1)`
-/

namespace A385319.P7580512520162614082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A000038 (3 * n + 1)

end

end A385319.P7580512520162614082

namespace A385319

/-- `A193856(A001105(n))+A000038(3*n+1)` -/
def P7580512520162614082.Spec : Prop :=
  ∀ n, P7580512520162614082.a n = A385319 n

end A385319

/-! ## A385319.P17744572735263214968

`A193856(A001105(n))+A000007(2*n+3)`
-/

namespace A385319.P17744572735263214968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A001105 n).toNat + A000007 (2 * n + 3)

end

end A385319.P17744572735263214968

namespace A385319

/-- `A193856(A001105(n))+A000007(2*n+3)` -/
def P17744572735263214968.Spec : Prop :=
  ∀ n, P17744572735263214968.a n = A385319 n

end A385319

/-!
# A385320: a(n) = Sum_{k=0..n} 2^k * binomial(3*n,k) * binomial(3*n-k-1,n-k).

The programs for A385320, the canonical program `A385320.P18211122891976287979` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385320 has offset 0).

The definition of A385320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385320.P18211122891976287979

`∑{#}[n, 3^#*(-1)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385320

/-- `∑{#}[n, 3^#*(-1)^(n-#)*C(3*n, #)]` -/
def P18211122891976287979.Spec : Prop :=
  ∀ n, P18211122891976287979.a n = (A385320 n : ℚ)

end A385320

/-! ## A385320.P18113905023886913060

`A193856(A022266(n))`
-/

namespace A385320.P18113905023886913060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A022266 n).toNat

end

end A385320.P18113905023886913060

namespace A385320

/-- `A193856(A022266(n))` -/
def P18113905023886913060.Spec : Prop :=
  ∀ n, P18113905023886913060.a n = A385320 n

end A385320

/-!
# A385321: Number of 3-dimensional permutation arrays of size n X n X n.

The programs for A385321, there is no canonical definition to state claims against.
-/

/-! ## A385321.P13922099453044252096

`A330490(A167614(n+1))`
-/

namespace A385321.P13922099453044252096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330490 (A167614 (n + 1)).toNat

end

end A385321.P13922099453044252096

/-! ## A385321.P7134551914638187668

`A330490(eq[3, A002260(n+1)]+1)`
-/

namespace A385321.P7134551914638187668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A385321.P7134551914638187668

/-!
# A385322: E.g.f. A(x) satisfies A(x) = exp(x + x^2/2 * A'(x)).

The programs for A385322, there is no canonical definition to state claims against.
-/

/-! ## A385322.P462989484626511508

`A381243(n)+A381226(A362362(n))`
-/

namespace A385322.P462989484626511508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381243 n + A381226 (A362362 n).toNat

end

end A385322.P462989484626511508

/-! ## A385322.P13307823574758515346

`A201595(n)-A023443(A222865(n))`
-/

namespace A385322.P13307823574758515346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201595 n - A023443 (A222865 n).toNat

end

end A385322.P13307823574758515346

/-!
# A385324: Numbers whose digits are all powers of the same single-digit base.

The programs for A385324, there is no canonical definition to state claims against.
-/

/-! ## A385324.P9448158952336090937

`lt[A269987(2*(n+2)), A068459(A375407(n+2))]`
-/

namespace A385324.P9448158952336090937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269987 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068459 (A375407 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385324.P9448158952336090937

/-! ## A385324.P15169516289916736104

`lt[A304714(n+1), A171922(A389812(n+1))]`
-/

namespace A385324.P15169516289916736104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171922 (A389812 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385324.P15169516289916736104

/-!
# A385325: Numbers x such that there exist two integers y, z both >0 such that sigma(x)^3 = x^3 + y^3 + z^3.

The programs for A385325, there is no canonical definition to state claims against.
-/

/-! ## A385325.P1674307482639263545

`A396309(A113929(n+1))`
-/

namespace A385325.P1674307482639263545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396309 (A113929 (n + 1)).toNat

end

end A385325.P1674307482639263545

/-! ## A385325.P10762311477738410348

`∩[A103841(n+1), A396309(n+1)]`
-/

namespace A385325.P10762311477738410348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385325.P10762311477738410348

/-!
# A385326: The number of positive k <= 2*n + 1 such that 2*n + 1 divides (2^k + 2*n + 1)^2 - 1.

The programs for A385326, there is no canonical definition to state claims against.
-/

/-! ## A385326.P4911166733786208989

`floor(Δ[n²]/A053447(n))`
-/

namespace A385326.P4911166733786208989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A053447 n : ℚ)⌋

end

end A385326.P4911166733786208989

/-!
# A385327: The numbers of people such that, in the variant of the Josephus problem in which three people are skipped and then one is eliminated, the first person is the last to be eliminated.

The programs for A385327, there is no canonical definition to state claims against.
-/

/-! ## A385327.P5549777131100632799

`eq[0, (4+a(n-1))%n]` with `a(0)=-1`
-/

namespace A385327.P5549777131100632799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  Int.tmod (4 + f2 (n - 1)) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385327.P5549777131100632799

/-! ## A385327.P16639106019273690428

`eq[1, A088333(n+1)]+1`
-/

namespace A385327.P16639106019273690428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385327.P16639106019273690428

/-! ## A385327.P10550026196574422075

`filter[A211377(n+1), A088333(#)]`
-/

namespace A385327.P10550026196574422075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088333 (f1 j).toNat = 1) n)

end

end A385327.P10550026196574422075

/-! ## A385327.P11656506825646417734

`filter[A325360(n+1), A088333(#)]`
-/

namespace A385327.P11656506825646417734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088333 (f1 j).toNat = 1) n)

end

end A385327.P11656506825646417734

/-! ## A385327.P4497865342148202975

`filter[A249815(n+1), A088333(#)]`
-/

namespace A385327.P4497865342148202975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088333 (f1 j).toNat = 1) n)

end

end A385327.P4497865342148202975

/-!
# A385329: a(n) = 5^n - 2*4^(n-1)*(n+4) + 3^(n-2)*(n^2+5*n+9).

The programs for A385329, the canonical program `A385329.P12246320153405122947` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385329 has offset 0).

The definition of A385329 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A385329.anchor (n : ℕ) : (A385329 n : ℚ) = (5 ^ n : ℚ) - 2 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 4 : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 5 * n + 9 : ℚ)` in `Proof.A385.A385329`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385329.P12246320153405122947

`5^n-2*4^(n-1)*(n+4)+3^(n-2)*(n²+5*n+9)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385329

/-- `5^n-2*4^(n-1)*(n+4)+3^(n-2)*(n²+5*n+9)` -/
def P12246320153405122947.Spec : Prop :=
  ∀ n, P12246320153405122947.a n = (A385329 n : ℚ)

end A385329

/-! ## A385329.P6936944623980748986

`∑{#}[n, C(n, #)*A381646(#)]`
-/

namespace A385329.P6936944623980748986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A381646 k

end

end A385329.P6936944623980748986

namespace A385329

/-- `∑{#}[n, C(n, #)*A381646(#)]` -/
def P6936944623980748986.Spec : Prop :=
  ∀ n, P6936944623980748986.a n = A385329 n

end A385329

/-! ## A385329.P11114184625102151103

`A178109(or(2, A383313(n)))`
-/

namespace A385329.P11114184625102151103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178109 (Int.lor 2 (A383313 n)).toNat

end

end A385329.P11114184625102151103

namespace A385329

/-- `A178109(or(2, A383313(n)))` -/
def P11114184625102151103.Spec : Prop :=
  ∀ n, P11114184625102151103.a n = A385329 n

end A385329

/-!
# A385330: The point numbers encountered by a rotating marker following the process described in the Comments.

The programs for A385330, there is no canonical definition to state claims against.
-/

/-! ## A385330.P9997679982252646619

`A366902(A215366(3*n)*A227360(n))`
-/

namespace A385330.P9997679982252646619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A215366 (3 * n) * A227360 n).toNat

end

end A385330.P9997679982252646619

/-! ## A385330.P4358807454790900393

`A057515(A010352(n+1)-A074206(n))`
-/

namespace A385330.P4358807454790900393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A010352 (n + 1) - A074206 n).toNat

end

end A385330.P4358807454790900393

/-! ## A385330.P14970386799932613487

`A244316(or(A048692(n+1), A298501(n+1)))`
-/

namespace A385330.P14970386799932613487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 (Int.lor (A048692 (n + 1)) (A298501 (n + 1))).toNat

end

end A385330.P14970386799932613487

/-! ## A385330.P11488087404786612678

`A357137(A364297(2*(n+2)))*A357138(n+1)`
-/

namespace A385330.P11488087404786612678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A364297 (2 * (n + 2))).toNat * A357138 (n + 1)

end

end A385330.P11488087404786612678

/-! ## A385330.P10288955606397037974

`A161789(A023106(n+1))`
-/

namespace A385330.P10288955606397037974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (A023106 (n + 1)).toNat

end

end A385330.P10288955606397037974

/-!
# A385333: The numbers of people such that, in the variant of the Josephus problem in which three people are skipped and then one is eliminated, the last person is the last to be eliminated.

The programs for A385333, there is no canonical definition to state claims against.
-/

/-! ## A385333.P16350787974249090132

`record[C(A088333(n+1), n)]`
-/

namespace A385333.P16350787974249090132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088333 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385333.P16350787974249090132

/-! ## A385333.P11084346080889083163

`eq[n, A088333(A028310(n))]`
-/

namespace A385333.P11084346080889083163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385333.P11084346080889083163

/-! ## A385333.P13065846691237995636

`eq[A000027(n+1), A088333(n+1)]+1`
-/

namespace A385333.P13065846691237995636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A385333.P13065846691237995636

/-! ## A385333.P16831764759345827039

`A088333(eq[n+1, A088333(n+1)]+1)`
-/

namespace A385333.P16831764759345827039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A385333.P16831764759345827039

/-!
# A385334: Cat number of complete graphs on n vertices.

The programs for A385334, the canonical program `A385334.P15710315618376552621` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385334 has offset 1).

The definition of A385334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385334.P15710315618376552621

`floor((n+1)/2)*ceil((n+1)/2)+a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385334

/-- `floor((n+1)/2)*ceil((n+1)/2)+a(ceil((n+1)/2)-1)` -/
def P15710315618376552621.Spec : Prop :=
  ∀ n, P15710315618376552621.a n = A385334 (n + 1)

theorem P15710315618376552621.correct : P15710315618376552621.Spec := by
  intro n
  simp only [A385334, Nat.add_sub_cancel]

end A385334

/-! ## A385334.P1140849644983520429

`xor(A007952(n), A288991(A101127(n)))`
-/

namespace A385334.P1140849644983520429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007952 n) (A288991 (A101127 n).toNat)

end

end A385334.P1140849644983520429

namespace A385334

/-- `xor(A007952(n), A288991(A101127(n)))` -/
def P1140849644983520429.Spec : Prop :=
  ∀ n, P1140849644983520429.a n = A385334 (n + 1)

end A385334

/-! ## A385334.P3279396530418209998

`A007952(n)-A355943(A249780(n+2))`
-/

namespace A385334.P3279396530418209998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n - A355943 (A249780 (n + 2)).toNat

end

end A385334.P3279396530418209998

namespace A385334

/-- `A007952(n)-A355943(A249780(n+2))` -/
def P3279396530418209998.Spec : Prop :=
  ∀ n, P3279396530418209998.a n = A385334 (n + 1)

end A385334

/-! ## A385334.P7920834712192969417

`A135013(n+1)-A094603(A000108(n))`
-/

namespace A385334.P7920834712192969417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 1) - A094603 (A000108 n).toNat

end

end A385334.P7920834712192969417

namespace A385334

/-- `A135013(n+1)-A094603(A000108(n))` -/
def P7920834712192969417.Spec : Prop :=
  ∀ n, P7920834712192969417.a n = A385334 (n + 1)

end A385334

/-! ## A385334.P15663398332474804448

`lt[A193044(n), A131327(A067774(3*n+5))]`
-/

namespace A385334.P15663398332474804448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131327 (A067774 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385334.P15663398332474804448

namespace A385334

/-- `lt[A193044(n), A131327(A067774(3*n+5))]` -/
def P15663398332474804448.Spec : Prop :=
  ∀ n, (P15663398332474804448.a n : ℤ) = A385334 (n + 1)

end A385334

/-!
# A385342: Square array A(n,k) read by descending antidiagonals, where each row n starts with an ordered list of positive integers then we swap A(n,k) with the number in the position A(n, A(n,k*n)).

The programs for A385342, there is no canonical definition to state claims against.
-/

/-! ## A385342.P4067861409654569493

`A070939(A184761(n+1)*A204016(n+1))`
-/

namespace A385342.P4067861409654569493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A184761 (n + 1) * A204016 (n + 1)).toNat

end

end A385342.P4067861409654569493

/-!
# A385343: Exponential Riordan array (1, arcsin(x)).

The programs for A385343, there is no canonical definition to state claims against.
-/

/-! ## A385343.P12056196624165978483

`A326441(A256041(n))`
-/

namespace A385343.P12056196624165978483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A256041 n).toNat

end

end A385343.P12056196624165978483

/-! ## A385343.P1327712412353624576

`A027082(A136630(3*n+2))*A136630(n)`
-/

namespace A385343.P1327712412353624576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A136630 (3 * n + 2)).toNat * A136630 n

end

end A385343.P1327712412353624576

/-! ## A385343.P2794155460703841888

`A136630(n)*A225336(A000040(n+1))`
-/

namespace A385343.P2794155460703841888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A225336 (A000040 (n + 1)).toNat

end

end A385343.P2794155460703841888

/-! ## A385343.P13933762152108040997

`A136630(n)*A241479(A252574(n+1)+2)`
-/

namespace A385343.P13933762152108040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A241479 (A252574 (n + 1) + 2).toNat

end

end A385343.P13933762152108040997

/-! ## A385343.P16730623458361599482

`A136630(n)*A153452(A334337(n+2))`
-/

namespace A385343.P16730623458361599482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 n * A153452 (A334337 (n + 2)).toNat

end

end A385343.P16730623458361599482

/-!
# A385345: Numbers without a prime factor with a digit larger than 1.

The programs for A385345, there is no canonical definition to state claims against.
-/

/-! ## A385345.P13781522111421018648

`∪[A036928(n+1), A209930(n+1)]`
-/

namespace A385345.P13781522111421018648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385345.P13781522111421018648

/-! ## A385345.P15681644593587165169

`filter[A073880(2*n+1), A189097(#)]`
-/

namespace A385345.P15681644593587165169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189097 (f1 j).toNat = 1) n)

end

end A385345.P15681644593587165169

/-!
# A385346: Expansion of e.g.f. 1/(1 - 2 * arcsin(x)).

The programs for A385346, there is no canonical definition to state claims against.
-/

/-! ## A385346.P3631323412477784131

`∑{#}[n, 2^#*#!*A385343(C(n+1, 2)+#)]`
-/

namespace A385346.P3631323412477784131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k * Nat.factorial k : ℤ) * A385343 (Nat.choose (n + 1) 2 + k)

end

end A385346.P3631323412477784131

/-! ## A385346.P2474845720537843121

`A235049(A063074(n)+A001221(n+3))`
-/

namespace A385346.P2474845720537843121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A063074 n + A001221 (n + 3)).toNat

end

end A385346.P2474845720537843121

/-!
# A385347: Expansion of e.g.f. 1/(1 - 3 * arcsin(x)).

The programs for A385347, there is no canonical definition to state claims against.
-/

/-! ## A385347.P10914099254091004829

`∑{#}[n, 3^#*#!*A385343(C(n+1, 2)+#)]`
-/

namespace A385347.P10914099254091004829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k * Nat.factorial k : ℤ) * A385343 (Nat.choose (n + 1) 2 + k)

end

end A385347.P10914099254091004829

/-!
# A385349: Product of odd proper divisors of n.

The programs for A385349, the canonical program `A385349.P6182123105730510131` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385349 has offset 1).

The definition of A385349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385349.P6182123105730510131

`gcd(A007956(n+1), A136655(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A385349

/-- `gcd(A007956(n+1), A136655(n+1))` -/
def P6182123105730510131.Spec : Prop :=
  ∀ n, (P6182123105730510131.a n : ℤ) = A385349 (n + 1)

theorem P6182123105730510131.correct : P6182123105730510131.Spec := by
  intro n
  simp only [A385349, Nat.add_sub_cancel]

end A385349

/-! ## A385349.P10280416093557433147

`A396067(A097053(n+1))`
-/

namespace A385349.P10280416093557433147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396067 (A097053 (n + 1)).toNat

end

end A385349.P10280416093557433147

namespace A385349

/-- `A396067(A097053(n+1))` -/
def P10280416093557433147.Spec : Prop :=
  ∀ n, P10280416093557433147.a n = A385349 (n + 1)

end A385349

/-! ## A385349.P10502066200704345704

`gcd(A162444(n+1), A205959(n+1))`
-/

namespace A385349.P10502066200704345704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162444 (n + 1)) (A205959 (n + 1))

end

end A385349.P10502066200704345704

namespace A385349

/-- `gcd(A162444(n+1), A205959(n+1))` -/
def P10502066200704345704.Spec : Prop :=
  ∀ n, (P10502066200704345704.a n : ℤ) = A385349 (n + 1)

end A385349

/-! ## A385349.P13850825595159970690

`A000265(A205959(n+1)%A206523(3*n+5))`
-/

namespace A385349.P13850825595159970690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A205959 (n + 1)) (A206523 (3 * n + 5))).toNat

end

end A385349.P13850825595159970690

namespace A385349

/-- `A000265(A205959(n+1)%A206523(3*n+5))` -/
def P13850825595159970690.Spec : Prop :=
  ∀ n, P13850825595159970690.a n = A385349 (n + 1)

end A385349

/-! ## A385349.P14501452906282284673

`A000265(∏{p}[n+1, ceil(n/#)]%A129152(n))`
-/

namespace A385349.P14501452906282284673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉) (A129152 n)).toNat

end

end A385349.P14501452906282284673

namespace A385349

/-- `A000265(∏{p}[n+1, ceil(n/#)]%A129152(n))` -/
def P14501452906282284673.Spec : Prop :=
  ∀ n, P14501452906282284673.a n = A385349 (n + 1)

end A385349

/-!
# A385350: Numbers j such that the product of odd proper divisors of j is j.

The programs for A385350, the canonical program `A385350.P15169529232628226014` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385350 has offset 1).

The definition of A385350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385350.P15169529232628226014

`filter[1+2*n, A354927(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A385350

/-- `filter[1+2*n, A354927(#)]` -/
def P15169529232628226014.Spec : Prop :=
  ∀ n, (P15169529232628226014.a n : ℤ) = A385350 (n + 1)

theorem P15169529232628226014.correct : P15169529232628226014.Spec := by
  intro n
  simp only [A385350, Nat.add_sub_cancel]

end A385350

/-! ## A385350.P2333429679386865232

`∩[1+2*n, A007422(n+1)]`
-/

namespace A385350.P2333429679386865232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P2333429679386865232

namespace A385350

/-- `∩[1+2*n, A007422(n+1)]` -/
def P2333429679386865232.Spec : Prop :=
  ∀ n, (P2333429679386865232.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P12053780490632146866

`filter[A007422(1+n), A035263(#)]`
-/

namespace A385350.P12053780490632146866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A385350.P12053780490632146866

namespace A385350

/-- `filter[A007422(1+n), A035263(#)]` -/
def P12053780490632146866.Spec : Prop :=
  ∀ n, P12053780490632146866.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P8447724565172778352

`filter[A007422(n+1), A322980(#)]`
-/

namespace A385350.P8447724565172778352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A385350.P8447724565172778352

namespace A385350

/-- `filter[A007422(n+1), A322980(#)]` -/
def P8447724565172778352.Spec : Prop :=
  ∀ n, P8447724565172778352.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P2193350094783250321

`filter[A007422(n+1), A374134(#)]`
-/

namespace A385350.P2193350094783250321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A385350.P2193350094783250321

namespace A385350

/-- `filter[A007422(n+1), A374134(#)]` -/
def P2193350094783250321.Spec : Prop :=
  ∀ n, P2193350094783250321.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P4878993245307445157

`filter[A007422(n+1), A374136(#)]`
-/

namespace A385350.P4878993245307445157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A385350.P4878993245307445157

namespace A385350

/-- `filter[A007422(n+1), A374136(#)]` -/
def P4878993245307445157.Spec : Prop :=
  ∀ n, P4878993245307445157.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P15149026604308124917

`filter[A007422(n+1), A379952(#)]`
-/

namespace A385350.P15149026604308124917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A385350.P15149026604308124917

namespace A385350

/-- `filter[A007422(n+1), A379952(#)]` -/
def P15149026604308124917.Spec : Prop :=
  ∀ n, P15149026604308124917.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P15168995187246729834

`∩[A007422(n+1), A014076(n+1)]`
-/

namespace A385350.P15168995187246729834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P15168995187246729834

namespace A385350

/-- `∩[A007422(n+1), A014076(n+1)]` -/
def P15168995187246729834.Spec : Prop :=
  ∀ n, (P15168995187246729834.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P7796756220881656561

`∩[A007422(n+1), A223134(n)]`
-/

namespace A385350.P7796756220881656561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P7796756220881656561

namespace A385350

/-- `∩[A007422(n+1), A223134(n)]` -/
def P7796756220881656561.Spec : Prop :=
  ∀ n, (P7796756220881656561.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P2330710291872021613

`∩[A007422(n+1), A060747(n)]`
-/

namespace A385350.P2330710291872021613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P2330710291872021613

namespace A385350

/-- `∩[A007422(n+1), A060747(n)]` -/
def P2330710291872021613.Spec : Prop :=
  ∀ n, (P2330710291872021613.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P13049843632827093974

`∩[A007422(n+1), A163985(n)]`
-/

namespace A385350.P13049843632827093974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P13049843632827093974

namespace A385350

/-- `∩[A007422(n+1), A163985(n)]` -/
def P13049843632827093974.Spec : Prop :=
  ∀ n, (P13049843632827093974.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P3596723920043170161

`∩[A007422(n+1), A020486(n+1)]`
-/

namespace A385350.P3596723920043170161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385350.P3596723920043170161

namespace A385350

/-- `∩[A007422(n+1), A020486(n+1)]` -/
def P3596723920043170161.Spec : Prop :=
  ∀ n, (P3596723920043170161.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P8579451430524029750

`filter[2*n+1, A131802(#)]`
-/

namespace A385350.P8579451430524029750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131802 (f1 j) = 1) n)

end

end A385350.P8579451430524029750

namespace A385350

/-- `filter[2*n+1, A131802(#)]` -/
def P8579451430524029750.Spec : Prop :=
  ∀ n, (P8579451430524029750.a n : ℤ) = A385350 (n + 1)

end A385350

/-! ## A385350.P1359944708399763108

`filter[A007422(n+1), A000035(#)]`
-/

namespace A385350.P1359944708399763108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A385350.P1359944708399763108

namespace A385350

/-- `filter[A007422(n+1), A000035(#)]` -/
def P1359944708399763108.Spec : Prop :=
  ∀ n, P1359944708399763108.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P1835407216115257973

`filter[A007422(n+1), A001511(#)]`
-/

namespace A385350.P1835407216115257973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001511 (f1 j).toNat = 1) n)

end

end A385350.P1835407216115257973

namespace A385350

/-- `filter[A007422(n+1), A001511(#)]` -/
def P1835407216115257973.Spec : Prop :=
  ∀ n, P1835407216115257973.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P12469675045210936172

`filter[A007422(n+1), A104106(#)]`
-/

namespace A385350.P12469675045210936172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A385350.P12469675045210936172

namespace A385350

/-- `filter[A007422(n+1), A104106(#)]` -/
def P12469675045210936172.Spec : Prop :=
  ∀ n, P12469675045210936172.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P14375933080566527089

`filter[A007422(n+1), A141260(#)]`
-/

namespace A385350.P14375933080566527089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A385350.P14375933080566527089

namespace A385350

/-- `filter[A007422(n+1), A141260(#)]` -/
def P14375933080566527089.Spec : Prop :=
  ∀ n, P14375933080566527089.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P3710432624388863361

`filter[A007422(n+1), A259044(#)]`
-/

namespace A385350.P3710432624388863361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A385350.P3710432624388863361

namespace A385350

/-- `filter[A007422(n+1), A259044(#)]` -/
def P3710432624388863361.Spec : Prop :=
  ∀ n, P3710432624388863361.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P14722835676946481411

`filter[A007422(n+1), A259599(#)]`
-/

namespace A385350.P14722835676946481411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A385350.P14722835676946481411

namespace A385350

/-- `filter[A007422(n+1), A259599(#)]` -/
def P14722835676946481411.Spec : Prop :=
  ∀ n, P14722835676946481411.a n = A385350 (n + 1)

end A385350

/-! ## A385350.P1830830461141745665

`filter[A007422(n+1), A260390(#)]`
-/

namespace A385350.P1830830461141745665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A385350.P1830830461141745665

namespace A385350

/-- `filter[A007422(n+1), A260390(#)]` -/
def P1830830461141745665.Spec : Prop :=
  ∀ n, P1830830461141745665.a n = A385350 (n + 1)

end A385350

/-!
# A385351: Perfect powers whose digits are all powers of the same single-digit base.

The programs for A385351, there is no canonical definition to state claims against.
-/

/-! ## A385351.P5172591914157921245

`∩[A001597(n+1), A385324(n+1)]`
-/

namespace A385351.P5172591914157921245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385351.P5172591914157921245

/-! ## A385351.P4167183537823387999

`filter[A385324(n+2), A075802(#)]`
-/

namespace A385351.P4167183537823387999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A385351.P4167183537823387999

/-! ## A385351.P17509315977930055936

`∩[A359493(n+1), A385324(n+1)]`
-/

namespace A385351.P17509315977930055936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385351.P17509315977930055936

/-! ## A385351.P8061588668712286901

`A001597(A132027(n+1)%A355966(n))`
-/

namespace A385351.P8061588668712286901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.tmod (A132027 (n + 1)) (A355966 (n + 11))).toNat

end

end A385351.P8061588668712286901

/-!
# A385352: Number of sums i^2 + j^2 that occur more than once for 1 <= i <= j <= n.

The programs for A385352, there is no canonical definition to state claims against.
-/

/-! ## A385352.P10793822528992993319

`A061790(n+1)%A343577(n)`
-/

namespace A385352.P10793822528992993319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061790 (n + 1)) (A343577 n)

end

end A385352.P10793822528992993319

/-! ## A385352.P11427868256682703293

`A001221(A000079(n))*A061790(n+1)`
-/

namespace A385352.P11427868256682703293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A061790 (n + 1)

end

end A385352.P11427868256682703293

/-! ## A385352.P10662153997060871623

`lcm(A011596(A210736(n)), A061790(n+1))`
-/

namespace A385352.P10662153997060871623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011596 (A210736 n).toNat) (A061790 (n + 1))

end

end A385352.P10662153997060871623

/-! ## A385352.P2875288204175414176

`A057427(A000769(n+1))*A061790(n+1)`
-/

namespace A385352.P2875288204175414176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000769 (n + 1)).toNat * A061790 (n + 1)

end

end A385352.P2875288204175414176

/-! ## A385352.P8530732827817174366

`A057427(A159065(n+1))*A061790(n+1)`
-/

namespace A385352.P8530732827817174366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A159065 (n + 1)).toNat * A061790 (n + 1)

end

end A385352.P8530732827817174366

/-!
# A385355: Triangular array read by rows: T(n,k) is the number of n X n matrices A over GF(2) such that the dimension of the null space of A^n is equal to k, n>=0, 0<=k<=n.

The programs for A385355, there is no canonical definition to state claims against.
-/

/-! ## A385355.P12590482458785323070

`A348958(A061579(n))`
-/

namespace A385355.P12590482458785323070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348958 (A061579 n).toNat

end

end A385355.P12590482458785323070

/-! ## A385355.P11438347665722148645

`A336134(A296339(3*n+1)+A151827(n+2))`
-/

namespace A385355.P11438347665722148645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336134 (A296339 (3 * n + 1) + A151827 (n + 2)).toNat

end

end A385355.P11438347665722148645

/-! ## A385355.P6416995201833138227

`A008480(3*A121393(n))`
-/

namespace A385355.P6416995201833138227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (3 * A121393 n).toNat

end

end A385355.P6416995201833138227

/-!
# A385364: Numbers whose cube is the sum of four distinct nonnegative cubes.

The programs for A385364, there is no canonical definition to state claims against.
-/

/-! ## A385364.P10928251727789216694

`comp[A384132(n+1)-1]+1`
-/

namespace A385364.P10928251727789216694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384132 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385364.P10928251727789216694

/-! ## A385364.P10517291648199759882

`eq[char[A384132(n+1)], A000007(n)]`
-/

namespace A385364.P10517291648199759882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384132 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A385364.P10517291648199759882

/-! ## A385364.P1801392980464480953

`row(A126790(A007459(n+5)-1))-3`
-/

namespace A385364.P1801392980464480953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A126790 (A007459 (n + 5) - 1).toNat).toNat : ℤ) - 3

end

end A385364.P1801392980464480953

/-!
# A385366: a(n) = Sum_{permutations p of [n]} des(p^2), where des(p) is the number of descents of p.

The programs for A385366, there is no canonical definition to state claims against.
-/

/-! ## A385366.P10507427933523106293

`(∑[n]-2)*and(n!, -2)`
-/

namespace A385366.P10507427933523106293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * Int.land (Nat.factorial n : ℤ) (-2)

end

end A385366.P10507427933523106293

/-! ## A385366.P11344930851653417271

`(a(n-1)+n!)*n` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A385366.P11344930851653417271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (a (n - 1) + Nat.factorial n) * n

end

end A385366.P11344930851653417271

/-! ## A385366.P15168583796225189171

`n!*A289207(∑[n])`
-/

namespace A385366.P15168583796225189171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A289207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385366.P15168583796225189171

/-! ## A385366.P15381951200068692835

`A000142(n)*A289207(∑[n])`
-/

namespace A385366.P15381951200068692835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A289207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385366.P15381951200068692835

/-! ## A385366.P17719629762380499832

`(A212342(n)-1)*A000142(n)`
-/

namespace A385366.P17719629762380499832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212342 n - 1) * A000142 n

end

end A385366.P17719629762380499832

/-! ## A385366.P10756109708256177034

`A104150(n+1)*A289207(∑[n])`
-/

namespace A385366.P10756109708256177034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) * A289207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385366.P10756109708256177034

/-! ## A385366.P1962269007033209750

`∑[n-A010051(A027379(n))]*A000142(n)`
-/

namespace A385366.P1962269007033209750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010051 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A385366.P1962269007033209750

/-!
# A385367: Expansion of e.g.f. 1/(1 - 2 * arcsinh(x)).

The programs for A385367, there is no canonical definition to state claims against.
-/

/-! ## A385367.P2837675878015498623

`record[A004719(A161198(n)^A051168(n))]`
-/

namespace A385367.P2837675878015498623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway ((A161198 n : ℚ) ^ (A051168 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385367.P2837675878015498623

/-! ## A385367.P15050342392218901190

`A161198(A389617(n+2)%A196418(n+5))`
-/

namespace A385367.P15050342392218901190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161198 (Int.tmod (A389617 (n + 2)) (A196418 (n + 5))).toNat

end

end A385367.P15050342392218901190

/-!
# A385369: Expansion of e.g.f. x + sqrt(x^2 + 1).

The programs for A385369, there is no canonical definition to state claims against.
-/

/-! ## A385369.P10715978793875928438

`(1-(2-n)²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A385369.P10715978793875928438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (2 - (n : ℤ)) ^ 2) * a (n - 2)

end

end A385369.P10715978793875928438

/-! ## A385369.P10575185524123972654

`(1-n)*(n-3)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A385369.P10575185524123972654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (n : ℤ)) * (((n : ℤ) - 3) * a (n - 2))

end

end A385369.P10575185524123972654

/-! ## A385369.P14652102467671182401

`A177698(A233583(1+n)-1)`
-/

namespace A385369.P14652102467671182401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177698 (A233583 (1 + n) - 1).toNat

end

end A385369.P14652102467671182401

/-! ## A385369.P17421110636960856637

`A384216(A186752(n+2))`
-/

namespace A385369.P17421110636960856637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 (A186752 (n + 2)).toNat

end

end A385369.P17421110636960856637

/-! ## A385369.P14184111729557227073

`A384216(abs(A000217(n+1)-2))`
-/

namespace A385369.P14184111729557227073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 |A000217 (n + 1) - 2|.toNat

end

end A385369.P14184111729557227073

/-! ## A385369.P17632725611876528144

`A384216(A000096(n)-A057427(n))`
-/

namespace A385369.P17632725611876528144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 (A000096 n - A057427 n).toNat

end

end A385369.P17632725611876528144

/-!
# A385371: Expansion of e.g.f. 1/(1 - 2 * arcsinh(x))^(1/2).

The programs for A385371, there is no canonical definition to state claims against.
-/

/-! ## A385371.P3855399295591554064

`A195177(A276929(n+1)+1)`
-/

namespace A385371.P3855399295591554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A276929 (n + 1) + 1).toNat

end

end A385371.P3855399295591554064

/-! ## A385371.P12205101264160982312

`A110654((n+1)*A107877(n))`
-/

namespace A385371.P12205101264160982312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * A107877 n).toNat

end

end A385371.P12205101264160982312

/-!
# A385372: Expansion of e.g.f. 1/(1 - 3 * arcsinh(x))^(1/3).

The programs for A385372, there is no canonical definition to state claims against.
-/

/-! ## A385372.P12492378476807300356

`A046080(A002465(n))+A002465(n)`
-/

namespace A385372.P12492378476807300356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A002465 n).toNat + A002465 n

end

end A385372.P12492378476807300356

/-! ## A385372.P16367609293227881852

`A362681(A001927(n))+A002465(n)`
-/

namespace A385372.P16367609293227881852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362681 (A001927 n).toNat + A002465 n

end

end A385372.P16367609293227881852

/-!
# A385373: Number of solid partitions with multiplicities (1, ..., n).

The programs for A385373, there is no canonical definition to state claims against.
-/

/-! ## A385373.P14976224601558170851

`A379277(A000085(n)*A120959(n))`
-/

namespace A385373.P14976224601558170851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A000085 n * A120959 n).toNat

end

end A385373.P14976224601558170851

/-!
# A385374: a(n) is the number of partitions of n into tau(n) distinct parts.

The programs for A385374, the canonical program `A385374.P17225711820736057586` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385374 has offset 1).

The definition of A385374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385374.P17225711820736057586

`A060016(A000005(1+n)+∑[n])`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A385374

/-- `A060016(A000005(1+n)+∑[n])` -/
def P17225711820736057586.Spec : Prop :=
  ∀ n, P17225711820736057586.a n = A385374 (n + 1)

theorem P17225711820736057586.correct : P17225711820736057586.Spec := by
  intro n
  simp only [A385374, Nat.add_sub_cancel]

end A385374

/-! ## A385374.P16992889272686071672

`A060016(C(n+1, 2)+A000005(n+1))`
-/

namespace A385374.P16992889272686071672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 ((Nat.choose (n + 1) 2 : ℤ) + A000005 (n + 1)).toNat

end

end A385374.P16992889272686071672

namespace A385374

/-- `A060016(C(n+1, 2)+A000005(n+1))` -/
def P16992889272686071672.Spec : Prop :=
  ∀ n, P16992889272686071672.a n = A385374 (n + 1)

end A385374

/-! ## A385374.P11808179741006704137

`A060016((n+1)*n/2+A000005(n+1))`
-/

namespace A385374.P11808179741006704137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2) + (A000005 (n + 1) : ℚ))).toNat

end

end A385374.P11808179741006704137

namespace A385374

/-- `A060016((n+1)*n/2+A000005(n+1))` -/
def P11808179741006704137.Spec : Prop :=
  ∀ n, P11808179741006704137.a n = A385374 (n + 1)

end A385374

/-! ## A385374.P6976216816106550909

`A349136(n+1)+A342019(A266941(n))`
-/

namespace A385374.P6976216816106550909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (n + 1) + A342019 (A266941 n).toNat

end

end A385374.P6976216816106550909

namespace A385374

/-- `A349136(n+1)+A342019(A266941(n))` -/
def P6976216816106550909.Spec : Prop :=
  ∀ n, P6976216816106550909.a n = A385374 (n + 1)

end A385374

/-! ## A385374.P6286902379264451428

`A046073(n+1)+A010892(A011782(n+2))`
-/

namespace A385374.P6286902379264451428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) + A010892 (A011782 (n + 2)).toNat

end

end A385374.P6286902379264451428

namespace A385374

/-- `A046073(n+1)+A010892(A011782(n+2))` -/
def P6286902379264451428.Spec : Prop :=
  ∀ n, P6286902379264451428.a n = A385374 (n + 1)

end A385374

/-!
# A385375: Numbers k that can't be partitioned into tau(k) distinct parts.

The programs for A385375, there is no canonical definition to state claims against.
-/

/-! ## A385375.P8192088595548349998

`lt[A385374(n+1), 1]+1`
-/

namespace A385375.P8192088595548349998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385374 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385375.P8192088595548349998

/-! ## A385375.P3223141298618773610

`lt[n+1, A184389(n+1)]+1`
-/

namespace A385375.P3223141298618773610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A385375.P3223141298618773610

/-! ## A385375.P5741501613799320809

`lt[n+1+C(row(n)+1, 2), A035116(n+1)]+1`
-/

namespace A385375.P5741501613799320809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + Nat.choose (SequenceMachineLib.triRow n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A385375.P5741501613799320809

/-! ## A385375.P8661289012494488801

`lt[n, A253145(A032741(n))]`
-/

namespace A385375.P8661289012494488801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A385375.P8661289012494488801

/-! ## A385375.P9167409271597302720

`∩[A067698(n+1), A352107(n+1)]`
-/

namespace A385375.P9167409271597302720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385375.P9167409271597302720

/-!
# A385376: Expansion of e.g.f. 1/(1 - 2 * arcsin(x))^(1/2).

The programs for A385376, there is no canonical definition to state claims against.
-/

/-! ## A385376.P14993129248041116723

`∑{#}[n, A001147(#)*A385343(C(n+1, 2)+#)]`
-/

namespace A385376.P14993129248041116723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001147 k * A385343 (Nat.choose (n + 1) 2 + k)

end

end A385376.P14993129248041116723

/-! ## A385376.P16621391333132836349

`A385304(n)+A249421(A383984(n))`
-/

namespace A385376.P16621391333132836349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385304 n + A249421 (A383984 n).toNat

end

end A385376.P16621391333132836349

/-!
# A385377: Expansion of e.g.f. 1/(1 - 3 * arcsin(x))^(1/3).

The programs for A385377, there is no canonical definition to state claims against.
-/

/-! ## A385377.P12799230369763822556

`∑{#}[n, A007559(#)*A385343(C(n+1, 2)+#)]`
-/

namespace A385377.P12799230369763822556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007559 k * A385343 (Nat.choose (n + 1) 2 + k)

end

end A385377.P12799230369763822556

/-! ## A385377.P188897532706011941

`A385305(n)+A184945(A290436(n))`
-/

namespace A385377.P188897532706011941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385305 n + A184945 (A290436 n).toNat

end

end A385377.P188897532706011941

/-!
# A385378: The maximum possible number of distinct factors in the factorization of n into prime powers (A246655).

The programs for A385378, the canonical program `A385378.P4816559102020145976` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385378 has offset 1).

The definition of A385378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385378.P4816559102020145976

`∑{e}[1+n, row(#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385378

/-- `∑{e}[1+n, row(#)]` -/
def P4816559102020145976.Spec : Prop :=
  ∀ n, (P4816559102020145976.a n : ℤ) = A385378 (n + 1)

theorem P4816559102020145976.correct : P4816559102020145976.Spec := by
  intro n
  simp only [A385378, Nat.add_sub_cancel]

end A385378

/-! ## A385378.P9006599440035141033

`∑{e}[1+n, A003056(#)]`
-/

namespace A385378.P9006599440035141033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003056 (Nat.factorization (f1 n) p)

end

end A385378.P9006599440035141033

namespace A385378

/-- `∑{e}[1+n, A003056(#)]` -/
def P9006599440035141033.Spec : Prop :=
  ∀ n, P9006599440035141033.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P7703798951274609705

`∑{e}[n+1, A087834(#)]`
-/

namespace A385378.P7703798951274609705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A087834 (Nat.factorization (f1 n) p)

end

end A385378.P7703798951274609705

namespace A385378

/-- `∑{e}[n+1, A087834(#)]` -/
def P7703798951274609705.Spec : Prop :=
  ∀ n, P7703798951274609705.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P8540910939872913165

`∑{e}[n+1, A117707(#)]`
-/

namespace A385378.P8540910939872913165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A117707 (Nat.factorization (f1 n) p)

end

end A385378.P8540910939872913165

namespace A385378

/-- `∑{e}[n+1, A117707(#)]` -/
def P8540910939872913165.Spec : Prop :=
  ∀ n, P8540910939872913165.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P6367879075664388579

`∑{e}[n+1, A163352(#)]`
-/

namespace A385378.P6367879075664388579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A163352 (Nat.factorization (f1 n) p)

end

end A385378.P6367879075664388579

namespace A385378

/-- `∑{e}[n+1, A163352(#)]` -/
def P6367879075664388579.Spec : Prop :=
  ∀ n, P6367879075664388579.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P12269322822160048954

`∑{e}[n+1, A373813(#)]`
-/

namespace A385378.P12269322822160048954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A373813 (Nat.factorization (f1 n) p)

end

end A385378.P12269322822160048954

namespace A385378

/-- `∑{e}[n+1, A373813(#)]` -/
def P12269322822160048954.Spec : Prop :=
  ∀ n, P12269322822160048954.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P17038805416060314229

`∑{e}[(n+1)*∏{p}[n+1, #], A202453(#)]`
-/

namespace A385378.P17038805416060314229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A202453 (Nat.factorization (f1 n) p)

end

end A385378.P17038805416060314229

namespace A385378

/-- `∑{e}[(n+1)*∏{p}[n+1, #], A202453(#)]` -/
def P17038805416060314229.Spec : Prop :=
  ∀ n, P17038805416060314229.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P14361909027945089231

`A257089(n+1)-A046660(n+1)`
-/

namespace A385378.P14361909027945089231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (n + 1) - A046660 (n + 1)

end

end A385378.P14361909027945089231

namespace A385378

/-- `A257089(n+1)-A046660(n+1)` -/
def P14361909027945089231.Spec : Prop :=
  ∀ n, P14361909027945089231.a n = A385378 (n + 1)

end A385378

/-! ## A385378.P5333308305321460766

`A257089(n+1)-A001222(A003557(n+1))`
-/

namespace A385378.P5333308305321460766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (n + 1) - A001222 (A003557 (n + 1)).toNat

end

end A385378.P5333308305321460766

namespace A385378

/-- `A257089(n+1)-A001222(A003557(n+1))` -/
def P5333308305321460766.Spec : Prop :=
  ∀ n, P5333308305321460766.a n = A385378 (n + 1)

end A385378

/-!
# A385379: The maximum possible number of distinct composite prime powers (A246547) in the factorization of n into prime powers.

The programs for A385379, the canonical program `A385379.P14406378956787540873` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385379 has offset 1).

The definition of A385379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385379.P14406378956787540873

`∑{e}[n+1, A029835(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A385379

/-- `∑{e}[n+1, A029835(#)]` -/
def P14406378956787540873.Spec : Prop :=
  ∀ n, P14406378956787540873.a n = A385379 (n + 1)

theorem P14406378956787540873.correct : P14406378956787540873.Spec := by
  intro n
  simp only [A385379, Nat.add_sub_cancel]

end A385379

/-! ## A385379.P287722156198755505

`A029837(A368978(1+n))`
-/

namespace A385379.P287722156198755505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A368978 (1 + n)).toNat

end

end A385379.P287722156198755505

namespace A385379

/-- `A029837(A368978(1+n))` -/
def P287722156198755505.Spec : Prop :=
  ∀ n, P287722156198755505.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P11221030562071166476

`A303401(A000688(n+1)%A397493(3*n+2))`
-/

namespace A385379.P11221030562071166476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303401 (Int.tmod (A000688 (n + 1)) (A397493 (3 * n + 2))).toNat

end

end A385379.P11221030562071166476

namespace A385379

/-- `A303401(A000688(n+1)%A397493(3*n+2))` -/
def P11221030562071166476.Spec : Prop :=
  ∀ n, P11221030562071166476.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P8808421986141723260

`A001222(A321167((n+1)²))`
-/

namespace A385379.P8808421986141723260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A321167 ((n + 1) ^ 2)).toNat

end

end A385379.P8808421986141723260

namespace A385379

/-- `A001222(A321167((n+1)²))` -/
def P8808421986141723260.Spec : Prop :=
  ∀ n, P8808421986141723260.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P2086659703093548025

`A384422(A321167((1+n)²)²)`
-/

namespace A385379.P2086659703093548025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A321167 ((1 + n) ^ 2) ^ 2).toNat

end

end A385379.P2086659703093548025

namespace A385379

/-- `A384422(A321167((1+n)²)²)` -/
def P2086659703093548025.Spec : Prop :=
  ∀ n, P2086659703093548025.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P9763298964905212064

`A366123((n+1)*A050985(n+1))`
-/

namespace A385379.P9763298964905212064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 ((n + 1 : ℤ) * A050985 (n + 1)).toNat

end

end A385379.P9763298964905212064

namespace A385379

/-- `A366123((n+1)*A050985(n+1))` -/
def P9763298964905212064.Spec : Prop :=
  ∀ n, P9763298964905212064.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P15283380980671072025

`A366123((n+1)*A056552(n+1))`
-/

namespace A385379.P15283380980671072025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 ((n + 1 : ℤ) * A056552 (n + 1)).toNat

end

end A385379.P15283380980671072025

namespace A385379

/-- `A366123((n+1)*A056552(n+1))` -/
def P15283380980671072025.Spec : Prop :=
  ∀ n, P15283380980671072025.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P8245199549587750754

`A019269(A111219(n+1))`
-/

namespace A385379.P8245199549587750754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A111219 (n + 1)).toNat

end

end A385379.P8245199549587750754

namespace A385379

/-- `A019269(A111219(n+1))` -/
def P8245199549587750754.Spec : Prop :=
  ∀ n, P8245199549587750754.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P12334588695426549510

`A065339(A111220(n+1))`
-/

namespace A385379.P12334588695426549510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A111220 (n + 1)).toNat

end

end A385379.P12334588695426549510

namespace A385379

/-- `A065339(A111220(n+1))` -/
def P12334588695426549510.Spec : Prop :=
  ∀ n, P12334588695426549510.a n = A385379 (n + 1)

end A385379

/-! ## A385379.P2639655283127144459

`A092779(A112624(n+1))`
-/

namespace A385379.P2639655283127144459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092779 (A112624 (n + 1)).toNat

end

end A385379.P2639655283127144459

namespace A385379

/-- `A092779(A112624(n+1))` -/
def P2639655283127144459.Spec : Prop :=
  ∀ n, P2639655283127144459.a n = A385379 (n + 1)

end A385379

/-!
# A385380: Partial products of the sequence nonprime powers of primes (A025475).

The programs for A385380, there is no canonical definition to state claims against.
-/

/-! ## A385380.P25326970430336844

`∏[A025475(1+n)]`
-/

namespace A385380.P25326970430336844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P25326970430336844

/-! ## A385380.P14709292861077690734

`∏[record[A163813(n+1)]]`
-/

namespace A385380.P14709292861077690734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P14709292861077690734

/-! ## A385380.P13423824358298094537

`∏[record[A274006(n+1)]]`
-/

namespace A385380.P13423824358298094537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P13423824358298094537

/-! ## A385380.P2746409278518846977

`∏[A249435(n+1)+1]`
-/

namespace A385380.P2746409278518846977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A385380.P2746409278518846977

/-! ## A385380.P11227850636830688757

`a(n-1)*A134612(n)` with `a(0)=1`
-/

namespace A385380.P11227850636830688757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A134612 n

end

end A385380.P11227850636830688757

/-!
# A385382: Number of polyominoes, i.e., connected nonempty subsets of square cells (or vertices), of the n X n flat torus, up to cyclic shifts and reflections of rows and columns.

The programs for A385382, there is no canonical definition to state claims against.
-/

/-! ## A385382.P18096582282019898403

`A385381(∑[1+n])`
-/

namespace A385382.P18096582282019898403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385382.P18096582282019898403

/-!
# A385391: a(n) is the smallest integer k such that A384237(k) = n.

The programs for A385391, there is no canonical definition to state claims against.
-/

/-! ## A385391.P6673315841293128097

`A002322(A000108(n)*A393436(n+1))`
-/

namespace A385391.P6673315841293128097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A000108 n * A393436 (n + 1)).toNat

end

end A385391.P6673315841293128097

/-! ## A385391.P16277677571957464159

`A282212(A058843(n+1))+A117481(n+1)`
-/

namespace A385391.P16277677571957464159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282212 (A058843 (n + 1)).toNat + A117481 (n + 1)

end

end A385391.P16277677571957464159

/-!
# A385392: The number of divisors d of n such that -(d^d) == d (mod n).

The programs for A385392, there is no canonical definition to state claims against.
-/

/-! ## A385392.P9133739428231090361

`gcd(A108884(n), A394362(n+1))`
-/

namespace A385392.P9133739428231090361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108884 n) (A394362 (n + 1))

end

end A385392.P9133739428231090361

/-! ## A385392.P9902607151789622736

`A002024(gcd(A099969(n), A353832(n+1)))`
-/

namespace A385392.P9902607151789622736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.gcd (A099969 n) (A353832 (n + 1)))

end

end A385392.P9902607151789622736

/-! ## A385392.P9116552326456206869

`A004216(A256691(3*n+1)+A189657(n))`
-/

namespace A385392.P9116552326456206869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A256691 (3 * n + 1) + A189657 n).toNat

end

end A385392.P9116552326456206869

/-! ## A385392.P8746159534117076735

`A322338(A361966(3*n+5))+1`
-/

namespace A385392.P8746159534117076735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A361966 (3 * n + 5)).toNat + 1

end

end A385392.P8746159534117076735

/-! ## A385392.P4689479769999482723

`A051903(A235154(n+1)+A062928(n+1))`
-/

namespace A385392.P4689479769999482723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A235154 (n + 1) + A062928 (n + 1)).toNat

end

end A385392.P4689479769999482723

/-!
# A385393: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 4)) / 2^bitcount(n).

The programs for A385393, the canonical program `A385393.P12160656990847827648` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385393 has offset 0).

The definition of A385393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385393.P12160656990847827648

`A384715(n)/A001316(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385393

/-- `A384715(n)/A001316(n)` -/
def P12160656990847827648.Spec : Prop :=
  ∀ n, P12160656990847827648.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P15348690486913119397

`A384715(n)/2^A000120(n)`
-/

namespace A385393.P15348690486913119397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A385393.P15348690486913119397

namespace A385393

/-- `A384715(n)/2^A000120(n)` -/
def P15348690486913119397.Spec : Prop :=
  ∀ n, P15348690486913119397.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P9840289466485425868

`A384715(n)/sqrt(A102376(n))`
-/

namespace A385393.P9840289466485425868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A385393.P9840289466485425868

namespace A385393

/-- `A384715(n)/sqrt(A102376(n))` -/
def P9840289466485425868.Spec : Prop :=
  ∀ n, P9840289466485425868.a n = (A385393 n : ℝ)

end A385393

/-! ## A385393.P16908763012079342266

`A033264(n)-A085357(n)+2`
-/

namespace A385393.P16908763012079342266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n - A085357 n + 2

end

end A385393.P16908763012079342266

namespace A385393

/-- `A033264(n)-A085357(n)+2` -/
def P16908763012079342266.Spec : Prop :=
  ∀ n, P16908763012079342266.a n = A385393 n

end A385393

/-! ## A385393.P17695400121275178610

`A384715(n)/(A038573(n)+1)`
-/

namespace A385393.P17695400121275178610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A385393.P17695400121275178610

namespace A385393

/-- `A384715(n)/(A038573(n)+1)` -/
def P17695400121275178610.Spec : Prop :=
  ∀ n, P17695400121275178610.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P6239396727332654345

`A384715(n)/A060632(2*n)`
-/

namespace A385393.P6239396727332654345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A060632 (2 * n) : ℚ)

end

end A385393.P6239396727332654345

namespace A385393

/-- `A384715(n)/A060632(2*n)` -/
def P6239396727332654345.Spec : Prop :=
  ∀ n, P6239396727332654345.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P2549614632573071802

`A384715(n)/floor(A117973(n)/2)`
-/

namespace A385393.P2549614632573071802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (⌊(A117973 n : ℚ) / 2⌋ : ℚ)

end

end A385393.P2549614632573071802

namespace A385393

/-- `A384715(n)/floor(A117973(n)/2)` -/
def P2549614632573071802.Spec : Prop :=
  ∀ n, P2549614632573071802.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P15102198698990541228

`A384715(n)/A000079(A000120(n))`
-/

namespace A385393.P15102198698990541228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A385393.P15102198698990541228

namespace A385393

/-- `A384715(n)/A000079(A000120(n))` -/
def P15102198698990541228.Spec : Prop :=
  ∀ n, P15102198698990541228.a n = (A385393 n : ℚ)

end A385393

/-! ## A385393.P13356564479942596410

`A384715(n)/A385285(n)*A385394(n)`
-/

namespace A385393.P13356564479942596410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384715 n : ℚ) / (A385285 n : ℚ) * (A385394 n : ℚ)

end

end A385393.P13356564479942596410

namespace A385393

/-- `A384715(n)/A385285(n)*A385394(n)` -/
def P13356564479942596410.Spec : Prop :=
  ∀ n, P13356564479942596410.a n = (A385393 n : ℚ)

end A385393

/-!
# A385394: a(n) = (Sum_{k=0..n} (binomial(n, k) mod 8)) / 2^bitcount(n).

The programs for A385394, the canonical program `A385394.P16313321602323093945` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385394 has offset 0).

The definition of A385394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385394.P16313321602323093945

`A385285(n)/A001316(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A385394

/-- `A385285(n)/A001316(n)` -/
def P16313321602323093945.Spec : Prop :=
  ∀ n, P16313321602323093945.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P11824244522218748550

`A385285(n)/2^A000120(n)`
-/

namespace A385394.P11824244522218748550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A385394.P11824244522218748550

namespace A385394

/-- `A385285(n)/2^A000120(n)` -/
def P11824244522218748550.Spec : Prop :=
  ∀ n, P11824244522218748550.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P10057200185196364534

`A385285(n)/sqrt(A102376(n))`
-/

namespace A385394.P10057200185196364534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A385394.P10057200185196364534

namespace A385394

/-- `A385285(n)/sqrt(A102376(n))` -/
def P10057200185196364534.Spec : Prop :=
  ∀ n, P10057200185196364534.a n = (A385394 n : ℝ)

end A385394

/-! ## A385394.P15283300671629194803

`A385285(n)/A060632(2*n)`
-/

namespace A385394.P15283300671629194803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A060632 (2 * n) : ℚ)

end

end A385394.P15283300671629194803

namespace A385394

/-- `A385285(n)/A060632(2*n)` -/
def P15283300671629194803.Spec : Prop :=
  ∀ n, P15283300671629194803.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P17673880282956159915

`A385285(n)/floor(A117973(n)/2)`
-/

namespace A385394.P17673880282956159915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (⌊(A117973 n : ℚ) / 2⌋ : ℚ)

end

end A385394.P17673880282956159915

namespace A385394

/-- `A385285(n)/floor(A117973(n)/2)` -/
def P17673880282956159915.Spec : Prop :=
  ∀ n, P17673880282956159915.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P4444208148327851

`A385285(n)/A000079(A000120(n))`
-/

namespace A385394.P4444208148327851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A385394.P4444208148327851

namespace A385394

/-- `A385285(n)/A000079(A000120(n))` -/
def P4444208148327851.Spec : Prop :=
  ∀ n, P4444208148327851.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P16389381960491354645

`A385285(n)/A384715(n)*A385393(n)`
-/

namespace A385394.P16389381960491354645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (A384715 n : ℚ) * (A385393 n : ℚ)

end

end A385394.P16389381960491354645

namespace A385394

/-- `A385285(n)/A384715(n)*A385393(n)` -/
def P16389381960491354645.Spec : Prop :=
  ∀ n, P16389381960491354645.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P13541842633821853991

`∑{#}[n, C(n, #)%8]/sqrt(A102376(n))`
-/

namespace A385394.P13541842633821853991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k % 8 : ℕ) : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A385394.P13541842633821853991

namespace A385394

/-- `∑{#}[n, C(n, #)%8]/sqrt(A102376(n))` -/
def P13541842633821853991.Spec : Prop :=
  ∀ n, P13541842633821853991.a n = (A385394 n : ℝ)

end A385394

/-! ## A385394.P1222882845306209741

`A385285(n)/(2^n-2*∑{#}[n, floor(C(n, #)/2)])`
-/

namespace A385394.P1222882845306209741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (((2 ^ n : ℤ) - 2 * (∑ k ∈ Finset.range (f1 n + 1), ⌊(Nat.choose n k : ℚ) / 2⌋) : ℤ) : ℚ)

end

end A385394.P1222882845306209741

namespace A385394

/-- `A385285(n)/(2^n-2*∑{#}[n, floor(C(n, #)/2)])` -/
def P1222882845306209741.Spec : Prop :=
  ∀ n, P1222882845306209741.a n = (A385394 n : ℚ)

end A385394

/-! ## A385394.P5303644348924461100

`A385285(n)/floor(lcm(n!, 2^n)/n!)`
-/

namespace A385394.P5303644348924461100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385285 n : ℚ) / (⌊(Nat.lcm (Nat.factorial n) (2 ^ n) : ℚ) / (Nat.factorial n : ℚ)⌋ : ℚ)

end

end A385394.P5303644348924461100

namespace A385394

/-- `A385285(n)/floor(lcm(n!, 2^n)/n!)` -/
def P5303644348924461100.Spec : Prop :=
  ∀ n, P5303644348924461100.a n = (A385394 n : ℚ)

end A385394

/-!
# A385395: Triangle read by rows: T(n, k) = [A047999(n, k) = 1 or A385456(n, k) = 1], where [.] is the Iverson bracket.

The programs for A385395, there is no canonical definition to state claims against.
-/

/-! ## A385395.P12842829144352788849

`(C(row(n), col(n))%2)^A385458(n)`
-/

namespace A385395.P12842829144352788849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) % 2 : ℕ) : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P12842829144352788849

/-! ## A385395.P15588973110754990444

`A385456(gcd(n, A143200(n)))`
-/

namespace A385395.P15588973110754990444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385456 (Int.gcd (n : ℤ) (A143200 n))

end

end A385395.P15588973110754990444

/-! ## A385395.P10927165487721097686

`max(A047999(n), A385456(n))`
-/

namespace A385395.P10927165487721097686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A047999 n) (A385456 n)

end

end A385395.P10927165487721097686

/-! ## A385395.P17341887577757920856

`abs(A143200(n))^A385458(n)`
-/

namespace A385395.P17341887577757920856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A143200 n| : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P17341887577757920856

/-! ## A385395.P13572204314817751007

`or(abs(A143200(n)), A385456(n))`
-/

namespace A385395.P13572204314817751007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A143200 n| (A385456 n)

end

end A385395.P13572204314817751007

/-! ## A385395.P14169240560660989833

`A385456(C(n, A047999(n)+1))`
-/

namespace A385395.P14169240560660989833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385456 (Nat.choose n (A047999 n + 1).toNat)

end

end A385395.P14169240560660989833

/-! ## A385395.P1869756492419089052

`(A008459(n)%2)^A385458(n)`
-/

namespace A385395.P1869756492419089052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A008459 n) 2 : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P1869756492419089052

/-! ## A385395.P1112471976102871549

`(A008975(n)%2)^A385458(n)`
-/

namespace A385395.P1112471976102871549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A008975 n) 2 : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P1112471976102871549

/-! ## A385395.P9262787377532047706

`(A013610(n)%2)^A385458(n)`
-/

namespace A385395.P9262787377532047706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A013610 n) 2 : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P9262787377532047706

/-! ## A385395.P14250308658092481597

`(A024462(n)%2)^A385458(n)`
-/

namespace A385395.P14250308658092481597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A024462 n) 2 : ℚ) ^ (A385458 n : ℤ)

end

end A385395.P14250308658092481597

/-!
# A385396: Numbers k such that 8 does not divide binomial(k, j) for any j in 0..k.

The programs for A385396, the canonical program `A385396.P3098394090964017503` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385396 has offset 1).

The definition of A385396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385396.P3098394090964017503

`a(n-1)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A385396

/-- `a(n-1)+2*a(n-4)-2*a(n-5)` -/
def P3098394090964017503.Spec : Prop :=
  ∀ n, P3098394090964017503.a n = A385396 (n + 1)

theorem P3098394090964017503.correct : P3098394090964017503.Spec := by
  intro n
  simp only [A385396, Nat.add_sub_cancel]

end A385396

/-! ## A385396.P10632285061209086265

`2*a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`
-/

namespace A385396.P10632285061209086265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7] fun n a =>
  2 * a (n - 4) + 1

end

end A385396.P10632285061209086265

namespace A385396

/-- `2*a(n-4)+1` -/
def P10632285061209086265.Spec : Prop :=
  ∀ n, (P10632285061209086265.a n : ℤ) = A385396 (n + 1)

end A385396

/-! ## A385396.P12019529858689642966

`A029750(n+1)-1`
-/

namespace A385396.P12019529858689642966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1) - 1

end

end A385396.P12019529858689642966

namespace A385396

/-- `A029750(n+1)-1` -/
def P12019529858689642966.Spec : Prop :=
  ∀ n, P12019529858689642966.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P13156340108159723757

`∑[A158780(A004525(n))]`
-/

namespace A385396.P13156340108159723757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385396.P13156340108159723757

namespace A385396

/-- `∑[A158780(A004525(n))]` -/
def P13156340108159723757.Spec : Prop :=
  ∀ n, P13156340108159723757.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P12751488803900241534

`A057428(n+1)+A029750(n+1)`
-/

namespace A385396.P12751488803900241534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A029750 (n + 1)

end

end A385396.P12751488803900241534

namespace A385396

/-- `A057428(n+1)+A029750(n+1)` -/
def P12751488803900241534.Spec : Prop :=
  ∀ n, P12751488803900241534.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P8995758286350360015

`A064179(A049591(n+1))+A029750(n+1)`
-/

namespace A385396.P8995758286350360015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A049591 (n + 1)).toNat + A029750 (n + 1)

end

end A385396.P8995758286350360015

namespace A385396

/-- `A064179(A049591(n+1))+A029750(n+1)` -/
def P8995758286350360015.Spec : Prop :=
  ∀ n, P8995758286350360015.a n = A385396 (n + 1)

end A385396

/-! ## A385396.P7830804608029900618

`A064179(A053184(n+1))+A029750(n+1)`
-/

namespace A385396.P7830804608029900618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A053184 (n + 1)).toNat + A029750 (n + 1)

end

end A385396.P7830804608029900618

namespace A385396

/-- `A064179(A053184(n+1))+A029750(n+1)` -/
def P7830804608029900618.Spec : Prop :=
  ∀ n, P7830804608029900618.a n = A385396 (n + 1)

end A385396

/-!
# A385399: a(n) is the number of free polyominoids that have faces aligned to precisely 2 planes.

The programs for A385399, there is no canonical definition to state claims against.
-/

/-! ## A385399.P13321295442077987838

`A075679(n+1)-A385400(n+1)-A000105(n+1)`
-/

namespace A385399.P13321295442077987838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075679 (n + 1) - A385400 (n + 1) - A000105 (n + 1)

end

end A385399.P13321295442077987838

