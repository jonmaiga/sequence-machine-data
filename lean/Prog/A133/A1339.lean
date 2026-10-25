import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133900: a(n) = period of the sequence {b(m), m>=0}, defined by b(m):=binomial(m+n,n) mod n.

The programs for A133900, the canonical program `A133900.P11325494338453864124` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133900 has offset 1).

The definition of A133900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133900.P11325494338453864124

`(n+1)*A064446(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133900

/-- `(n+1)*A064446(n+1)` -/
def P11325494338453864124.Spec : Prop :=
  ∀ n, P11325494338453864124.a n = A133900 (n + 1)

theorem P11325494338453864124.correct : P11325494338453864124.Spec := by
  intro n
  simp only [A133900, Nat.add_sub_cancel]

end A133900

/-! ## A133900.P7264099004260866131

`(n+1)²*A133910(n+1)`
-/

namespace A133900.P7264099004260866131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A133910 (n + 1)

end

end A133900.P7264099004260866131

namespace A133900

/-- `(n+1)²*A133910(n+1)` -/
def P7264099004260866131.Spec : Prop :=
  ∀ n, P7264099004260866131.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P12547160755888639931

`lcm((n+1)², A396574(n+1))`
-/

namespace A133900.P12547160755888639931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (A396574 (n + 1))

end

end A133900.P12547160755888639931

namespace A133900

/-- `lcm((n+1)², A396574(n+1))` -/
def P12547160755888639931.Spec : Prop :=
  ∀ n, (P12547160755888639931.a n : ℤ) = A133900 (n + 1)

end A133900

/-! ## A133900.P13986764272663606510

`A133910(n+1)*A211547(3*(n+1))`
-/

namespace A133900.P13986764272663606510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A211547 (3 * (n + 1))

end

end A133900.P13986764272663606510

namespace A133900

/-- `A133910(n+1)*A211547(3*(n+1))` -/
def P13986764272663606510.Spec : Prop :=
  ∀ n, P13986764272663606510.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P6414992301194609463

`A133910(n+1)*A289506(record[A006530(n+2)])`
-/

namespace A133900.P6414992301194609463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A289506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133900.P6414992301194609463

namespace A133900

/-- `A133910(n+1)*A289506(record[A006530(n+2)])` -/
def P6414992301194609463.Spec : Prop :=
  ∀ n, P6414992301194609463.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P16820650621175021884

`A081528(n+1)/A038610(n+1)`
-/

namespace A133900.P16820650621175021884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081528 (n + 1) : ℚ) / (A038610 (n + 1) : ℚ)

end

end A133900.P16820650621175021884

namespace A133900

/-- `A081528(n+1)/A038610(n+1)` -/
def P16820650621175021884.Spec : Prop :=
  ∀ n, P16820650621175021884.a n = (A133900 (n + 1) : ℚ)

end A133900

/-! ## A133900.P17104316385226658782

`A133910(n+1)*A168038(A000124(n))`
-/

namespace A133900.P17104316385226658782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A168038 (A000124 n).toNat

end

end A133900.P17104316385226658782

namespace A133900

/-- `A133910(n+1)*A168038(A000124(n))` -/
def P17104316385226658782.Spec : Prop :=
  ∀ n, P17104316385226658782.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P6780362922416483242

`A133910(n+1)*A212891(∑[n+1])`
-/

namespace A133900.P6780362922416483242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A212891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133900.P6780362922416483242

namespace A133900

/-- `A133910(n+1)*A212891(∑[n+1])` -/
def P6780362922416483242.Spec : Prop :=
  ∀ n, P6780362922416483242.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P3774472449232969295

`A133910(n+1)*A281385(∑[n+1])`
-/

namespace A133900.P3774472449232969295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A281385 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133900.P3774472449232969295

namespace A133900

/-- `A133910(n+1)*A281385(∑[n+1])` -/
def P3774472449232969295.Spec : Prop :=
  ∀ n, P3774472449232969295.a n = A133900 (n + 1)

end A133900

/-! ## A133900.P6896835531994076916

`A349593(2*(n+1)²)`
-/

namespace A133900.P6896835531994076916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (2 * (n + 1) ^ 2)

end

end A133900.P6896835531994076916

namespace A133900

/-- `A349593(2*(n+1)²)` -/
def P6896835531994076916.Spec : Prop :=
  ∀ n, P6896835531994076916.a n = A133900 (n + 1)

end A133900

/-!
# A133906: Least number m such that binomial(n+m, m) mod m = 1.

The programs for A133906, there is no canonical definition to state claims against.
-/

/-! ## A133906.P15526823783350494784

`A153687(A133907(n+1))%47`
-/

namespace A133906.P15526823783350494784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153687 (A133907 (n + 1)).toNat) 47

end

end A133906.P15526823783350494784

/-! ## A133906.P17729698990599948420

`A153687(A317358(n+1))%47`
-/

namespace A133906.P17729698990599948420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153687 (A317358 (n + 1)).toNat) 47

end

end A133906.P17729698990599948420

/-! ## A133906.P7343179148743854807

`A317358(n+1)-A067742(A329327(3*n+2))`
-/

namespace A133906.P7343179148743854807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317358 (n + 1) - A067742 (A329327 (3 * n + 2)).toNat

end

end A133906.P7343179148743854807

/-! ## A133906.P13601910876849590266

`A317358(n+1)-A132349(A141523(n))`
-/

namespace A133906.P13601910876849590266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317358 (n + 1) - A132349 (A141523 n).toNat

end

end A133906.P13601910876849590266

/-!
# A133907: Least prime number p such that binomial(n+p, p) mod p = 1.

The programs for A133907, there is no canonical definition to state claims against.
-/

/-! ## A133907.P2270167077486719151

`A020639(A133908(n+1)+A133872(n+1))`
-/

namespace A133907.P2270167077486719151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133908 (n + 1) + A133872 (n + 1)).toNat

end

end A133907.P2270167077486719151

/-! ## A133907.P6607105313837718135

`A007918(A317358(n+1)%A261416(n))`
-/

namespace A133907.P6607105313837718135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A317358 (n + 1)) (A261416 n)).toNat

end

end A133907.P6607105313837718135

/-! ## A133907.P12047167766237612883

`A007918(A317358(n+1))%∑[A176781(n)]`
-/

namespace A133907.P12047167766237612883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A317358 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133907.P12047167766237612883

/-! ## A133907.P2557486795383270832

`A007918(A317358(n+1))*A057427(A015745(n))`
-/

namespace A133907.P2557486795383270832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A317358 (n + 1)).toNat * A057427 (A015745 n).toNat

end

end A133907.P2557486795383270832

/-! ## A133907.P3778050528374897023

`A077018(A317358(n+1))+A000038(A056230(n+1))`
-/

namespace A133907.P3778050528374897023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 (A317358 (n + 1)).toNat + A000038 (A056230 (n + 1)).toNat

end

end A133907.P3778050528374897023

/-!
# A133908: Least odd prime number m such that binomial(n+m,m) mod m = 1.

The programs for A133908, there is no canonical definition to state claims against.
-/

/-! ## A133908.P8609824983200025242

`A007918(A133909(n+1)%A020602(n+1))`
-/

namespace A133908.P8609824983200025242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A133909 (n + 1)) (A020602 (n + 1))).toNat

end

end A133908.P8609824983200025242

/-! ## A133908.P10137462606562386634

`A007918(A133909(n+1))%A332657(n+1)`
-/

namespace A133908.P10137462606562386634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A133909 (n + 1)).toNat) (A332657 (n + 1))

end

end A133908.P10137462606562386634

/-!
# A133910: Period numbers of A133900 divided by n^2.

The programs for A133910, the canonical program `A133910.P7626543162645923989` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133910 has offset 1).

The definition of A133910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133910.P7626543162645923989

`A064446(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133910

/-- `A064446(n+1)/(n+1)` -/
def P7626543162645923989.Spec : Prop :=
  ∀ n, P7626543162645923989.a n = (A133910 (n + 1) : ℚ)

end A133910

/-! ## A133910.P15871918677279982066

`A133900(n+1)/(n+1)²`
-/

namespace A133910.P15871918677279982066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133900 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A133910.P15871918677279982066

namespace A133910

/-- `A133900(n+1)/(n+1)²` -/
def P15871918677279982066.Spec : Prop :=
  ∀ n, P15871918677279982066.a n = (A133910 (n + 1) : ℚ)

end A133910

/-! ## A133910.P18115312322007411974

`A002944(n+1)/A038610(n+1)`
-/

namespace A133910.P18115312322007411974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A038610 (n + 1) : ℚ)

end

end A133910.P18115312322007411974

namespace A133910

/-- `A002944(n+1)/A038610(n+1)` -/
def P18115312322007411974.Spec : Prop :=
  ∀ n, P18115312322007411974.a n = (A133910 (n + 1) : ℚ)

end A133910

/-! ## A133910.P6094562687773051448

`A003418(n+1)/A083268(n+1)`
-/

namespace A133910.P6094562687773051448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A083268 (n + 1) : ℚ)

end

end A133910.P6094562687773051448

namespace A133910

/-- `A003418(n+1)/A083268(n+1)` -/
def P6094562687773051448.Spec : Prop :=
  ∀ n, P6094562687773051448.a n = (A133910 (n + 1) : ℚ)

end A133910

/-! ## A133910.P10723662402189901164

`round(A133900(n+1)/A002620(2*(n+1)))`
-/

namespace A133910.P10723662402189901164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (A002620 (2 * (n + 1)) : ℚ))

end

end A133910.P10723662402189901164

namespace A133910

/-- `round(A133900(n+1)/A002620(2*(n+1)))` -/
def P10723662402189901164.Spec : Prop :=
  ∀ n, P10723662402189901164.a n = A133910 (n + 1)

end A133910

/-! ## A133910.P997423154005691808

`A000027(A133900(n+1)/∑[2*n+1])`
-/

namespace A133910.P997423154005691808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A133910.P997423154005691808

namespace A133910

/-- `A000027(A133900(n+1)/∑[2*n+1])` -/
def P997423154005691808.Spec : Prop :=
  ∀ n, P997423154005691808.a n = A133910 (n + 1)

end A133910

/-! ## A133910.P1520941938878472291

`gcd(A002944(n+1), A017684(n+1))`
-/

namespace A133910.P1520941938878472291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A017684 (n + 1))

end

end A133910.P1520941938878472291

namespace A133910

/-- `gcd(A002944(n+1), A017684(n+1))` -/
def P1520941938878472291.Spec : Prop :=
  ∀ n, (P1520941938878472291.a n : ℤ) = A133910 (n + 1)

end A133910

/-! ## A133910.P18123035459124791076

`gcd(A099946(n+2), A243103(n+1))`
-/

namespace A133910.P18123035459124791076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099946 (n + 2)) (A243103 (n + 1))

end

end A133910.P18123035459124791076

namespace A133910

/-- `gcd(A099946(n+2), A243103(n+1))` -/
def P18123035459124791076.Spec : Prop :=
  ∀ n, (P18123035459124791076.a n : ℤ) = A133910 (n + 1)

end A133910

/-! ## A133910.P14964626225832722475

`gcd(A027449(n+2), A062763(n+1))`
-/

namespace A133910.P14964626225832722475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027449 (n + 2)) (A062763 (n + 1))

end

end A133910.P14964626225832722475

namespace A133910

/-- `gcd(A027449(n+2), A062763(n+1))` -/
def P14964626225832722475.Spec : Prop :=
  ∀ n, (P14964626225832722475.a n : ℤ) = A133910 (n + 1)

end A133910

/-! ## A133910.P13564236799615699124

`A000027(A133900(n+1)/(n+1))/(n+1)`
-/

namespace A133910.P13564236799615699124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (n + 1 : ℚ)

end

end A133910.P13564236799615699124

namespace A133910

/-- `A000027(A133900(n+1)/(n+1))/(n+1)` -/
def P13564236799615699124.Spec : Prop :=
  ∀ n, P13564236799615699124.a n = (A133910 (n + 1) : ℚ)

end A133910

/-! ## A133910.P1306818831729350226

`gcd(A002944(n+1), A152291(n))`
-/

namespace A133910.P1306818831729350226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A152291 n)

end

end A133910.P1306818831729350226

namespace A133910

/-- `gcd(A002944(n+1), A152291(n))` -/
def P1306818831729350226.Spec : Prop :=
  ∀ n, (P1306818831729350226.a n : ℤ) = A133910 (n + 1)

end A133910

/-!
# A133911: Number of prime factors (counted with multiplicity) of the period numbers defined by A133900.

The programs for A133911, the canonical program `A133911.P14989131152538937631` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133911 has offset 1).

The definition of A133911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A133900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133911.P14989131152538937631

`A001222(A133900(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A133911

/-- `A001222(A133900(n+1))` -/
def P14989131152538937631.Spec : Prop :=
  ∀ n, P14989131152538937631.a n = A133911 (n + 1)

theorem P14989131152538937631.correct : P14989131152538937631.Spec := by
  intro n
  simp only [A133911, Nat.add_sub_cancel]

end A133911

/-! ## A133911.P729630233014632072

`∑{e}[(n+1)*A064446(n+1), #]`
-/

namespace A133911.P729630233014632072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A133911.P729630233014632072

namespace A133911

/-- `∑{e}[(n+1)*A064446(n+1), #]` -/
def P729630233014632072.Spec : Prop :=
  ∀ n, (P729630233014632072.a n : ℤ) = A133911 (n + 1)

end A133911

/-! ## A133911.P12854459290856746315

`A361373(n+1)+A000120(A253566(n+1))`
-/

namespace A133911.P12854459290856746315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361373 (n + 1) + A000120 (A253566 (n + 1)).toNat

end

end A133911.P12854459290856746315

namespace A133911

/-- `A361373(n+1)+A000120(A253566(n+1))` -/
def P12854459290856746315.Spec : Prop :=
  ∀ n, P12854459290856746315.a n = A133911 (n + 1)

end A133911

/-! ## A133911.P17892183641900723696

`A001222((n+1)*A064446(n+1))`
-/

namespace A133911.P17892183641900723696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A064446 (n + 1)).toNat

end

end A133911.P17892183641900723696

namespace A133911

/-- `A001222((n+1)*A064446(n+1))` -/
def P17892183641900723696.Spec : Prop :=
  ∀ n, P17892183641900723696.a n = A133911 (n + 1)

end A133911

/-!
# A133912: First differences of A007001.

The programs for A133912, there is no canonical definition to state claims against.
-/

/-! ## A133912.P17803513858654271462

`A007001(a(n-1)+n)-A007001(A028310(n))` with `a(0)=1, a(1)=1`
-/

namespace A133912.P17803513858654271462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007001 (a (n - 1) + (n : ℤ)).toNat - A007001 (A028310 n).toNat

end

end A133912.P17803513858654271462

/-! ## A133912.P16262504064411971034

`A007001(A000007(n)+1+n)-A007001(A028310(n))`
-/

namespace A133912.P16262504064411971034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A000007 n + 1 + (n : ℤ)).toNat - A007001 (A028310 n).toNat

end

end A133912.P16262504064411971034

/-! ## A133912.P9079175828091975358

`A007001(n+1)+A007001(A028310(n))*A057428(n)`
-/

namespace A133912.P9079175828091975358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (n + 1) + A007001 (A028310 n).toNat * A057428 n

end

end A133912.P9079175828091975358

/-! ## A133912.P14365289333987342008

`Δ[Δ[A080336(A004273(n)-n)]]`
-/

namespace A133912.P14365289333987342008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133912.P14365289333987342008

/-! ## A133912.P5934386283359630082

`Δ[A007001(A028310(n))-A057428(n)]`
-/

namespace A133912.P5934386283359630082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133912.P5934386283359630082

/-! ## A133912.P8597011440936284532

`Δ[A007001(record[n/A007001(n+2)]+1)]`
-/

namespace A133912.P8597011440936284532
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007001 (n + 2) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133912.P8597011440936284532

/-!
# A133913: Array read by ascending antidiagonals generated from partial sums of A007001.

The programs for A133913, there is no canonical definition to state claims against.
-/

/-! ## A133913.P2979651721419621996

`∑{digits}[A213057(n), A007001(#)]`
-/

namespace A133913.P2979651721419621996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007001 x).sum

end

end A133913.P2979651721419621996

/-! ## A133913.P18115566556630590265

`A267177(A267177(A060556(n)²))`
-/

namespace A133913.P18115566556630590265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A267177 (A060556 n ^ 2).toNat).toNat

end

end A133913.P18115566556630590265

/-! ## A133913.P16650294426690806993

`A267177(or(A060556(n), A091536(n)))`
-/

namespace A133913.P16650294426690806993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (Int.lor (A060556 n) (A091536 n)).toNat

end

end A133913.P16650294426690806993

/-! ## A133913.P3885352556183450825

`A267177(A060556(n))%p?[A005491(n)]`
-/

namespace A133913.P3885352556183450825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267177 (A060556 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A133913.P3885352556183450825

/-! ## A133913.P2926404770030519120

`A267177(A060556(n)+2*A091536(n))`
-/

namespace A133913.P2926404770030519120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060556 n + 2 * A091536 n).toNat

end

end A133913.P2926404770030519120

/-!
# A133914: Row sums of triangle A133913.

The programs for A133914, there is no canonical definition to state claims against.
-/

/-! ## A133914.P12958176235686397086

`2*a(n-1)+A133912(n+1)` with `a(0)=1`
-/

namespace A133914.P12958176235686397086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A133912 (n + 1)

end

end A133914.P12958176235686397086

/-! ## A133914.P35594471416243437

`A248227(A095121(n)+A007001(n+1))`
-/

namespace A133914.P35594471416243437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A095121 n + A007001 (n + 1)).toNat

end

end A133914.P35594471416243437

/-! ## A133914.P13977021200288048043

`A248186(A126646(n)+A076050(n+1))`
-/

namespace A133914.P13977021200288048043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A126646 n + A076050 (n + 1)).toNat

end

end A133914.P13977021200288048043

/-! ## A133914.P18248890832875920743

`A248227(A095121(n)+∑[A133912(n+1)])`
-/

namespace A133914.P18248890832875920743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A095121 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133914.P18248890832875920743

/-! ## A133914.P10540498127745621200

`Δ[A248186(2^(n+1)+1)]`
-/

namespace A133914.P10540498127745621200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (2 ^ (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133914.P10540498127745621200

/-!
# A133915: a(n) = Sum_{i=0..n} C(2*n-i,n+i)*2^i.

The programs for A133915, the canonical program `A133915.P1448036709764330606` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133915 has offset 0).

The definition of A133915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133915.P1448036709764330606

`A120305(n)+A002450(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133915

/-- `A120305(n)+A002450(n)` -/
def P1448036709764330606.Spec : Prop :=
  ∀ n, P1448036709764330606.a n = A133915 n

theorem P1448036709764330606.correct : P1448036709764330606.Spec := by
  intro n
  simp only [A133915]

end A133915

/-! ## A133915.P6391954418950252978

`A120305(n)+A001045(2*n)`
-/

namespace A133915.P6391954418950252978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120305 n + A001045 (2 * n)

end

end A133915.P6391954418950252978

namespace A133915

/-- `A120305(n)+A001045(2*n)` -/
def P6391954418950252978.Spec : Prop :=
  ∀ n, P6391954418950252978.a n = A133915 n

end A133915

/-! ## A133915.P3278144400138811543

`A002450(n)+∑[A072547(n+1)]`
-/

namespace A133915.P3278144400138811543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133915.P3278144400138811543

namespace A133915

/-- `A002450(n)+∑[A072547(n+1)]` -/
def P3278144400138811543.Spec : Prop :=
  ∀ n, P3278144400138811543.a n = A133915 n

end A133915

/-! ## A133915.P7322952756893725301

`A112556(n+1)-A084247(2*n)`
-/

namespace A133915.P7322952756893725301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (n + 1) - A084247 (2 * n)

end

end A133915.P7322952756893725301

namespace A133915

/-- `A112556(n+1)-A084247(2*n)` -/
def P7322952756893725301.Spec : Prop :=
  ∀ n, P7322952756893725301.a n = A133915 n

end A133915

/-! ## A133915.P15782616378282288250

`A001045(2*n)+∑[A072547(n+1)]`
-/

namespace A133915.P15782616378282288250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133915.P15782616378282288250

namespace A133915

/-- `A001045(2*n)+∑[A072547(n+1)]` -/
def P15782616378282288250.Spec : Prop :=
  ∀ n, P15782616378282288250.a n = A133915 n

end A133915

/-! ## A133915.P4797488642685286980

`A091597(∑[4*n])`
-/

namespace A133915.P4797488642685286980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133915.P4797488642685286980

namespace A133915

/-- `A091597(∑[4*n])` -/
def P4797488642685286980.Spec : Prop :=
  ∀ n, P4797488642685286980.a n = A133915 n

end A133915

/-! ## A133915.P2826154434703947653

`A091598(2*(n+1)²)`
-/

namespace A133915.P2826154434703947653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 (2 * (n + 1) ^ 2)

end

end A133915.P2826154434703947653

namespace A133915

/-- `A091598(2*(n+1)²)` -/
def P2826154434703947653.Spec : Prop :=
  ∀ n, P2826154434703947653.a n = A133915 n

end A133915

/-!
# A133922: a(n) is number of permutations (p(1),p(2),p(3),...,p(n)) of (1,2,3,...,n) such that p(k) is coprime to p(n+1-k) for k = all positive integers <= n.

The programs for A133922, there is no canonical definition to state claims against.
-/

/-! ## A133922.P18325992563175533078

`A000010(lcm(A002568(n+1), A080375(n+1)))`
-/

namespace A133922.P18325992563175533078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A002568 (n + 1)) (A080375 (n + 1)))

end

end A133922.P18325992563175533078

/-! ## A133922.P13390510403686814343

`A000010(lcm(A232097(n+1), A345082(n+1)))`
-/

namespace A133922.P13390510403686814343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A232097 (n + 1)) (A345082 (n + 1)))

end

end A133922.P13390510403686814343

/-! ## A133922.P4329275769698494090

`A010554(12^ceil(n/2))`
-/

namespace A133922.P4329275769698494090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (SequenceMachineLib.roundAway ((12 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A133922.P4329275769698494090

/-!
# A133923: a(1)=1, and for n>1, a(n) = a(n-1)/2, if a(n-1) is divisible by 2, otherwise a(n) = A000005(n*a(n-1)).

The programs for A133923, there is no canonical definition to state claims against.
-/

/-! ## A133923.P1243687059387655662

`gcd(A002620(A352103(n)), A355731(2*n+1))`
-/

namespace A133923.P1243687059387655662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A352103 n).toNat) (A355731 (2 * n + 1))

end

end A133923.P1243687059387655662

/-! ## A133923.P9063755583320050194

`A120221(A036497(n)+A000124(n))`
-/

namespace A133923.P9063755583320050194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A036497 n + A000124 n).toNat

end

end A133923.P9063755583320050194

/-! ## A133923.P12626399121915350834

`A136480(A136322(n+1)+A136248(n+1))`
-/

namespace A133923.P12626399121915350834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A136322 (n + 1) + A136248 (n + 1)).toNat

end

end A133923.P12626399121915350834

/-! ## A133923.P14664908230322905000

`A051903(A102627(2*(n+1))+A102472(3*n+5))`
-/

namespace A133923.P14664908230322905000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A102627 (2 * (n + 1)) + A102472 (3 * n + 5)).toNat

end

end A133923.P14664908230322905000

/-! ## A133923.P14694168935356099400

`A080577(∑[A001590(∏{p}[n+1, #+1])])`
-/

namespace A133923.P14694168935356099400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133923.P14694168935356099400

/-!
# A133924: a(n) = number of exponents occurring only once each in the prime factorization of n!.

The programs for A133924, there is no canonical definition to state claims against.
-/

/-! ## A133924.P14764028497306959280

`∑{e}[A325508(n), #^(1-n^8)]`
-/

namespace A133924.P14764028497306959280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325508 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) ^ (1 - (n ^ 8 : ℤ) : ℤ)

end

end A133924.P14764028497306959280

/-! ## A133924.P11492591634898265791

`A276084(gcd(A034386(n), A307035(n)))`
-/

namespace A133924.P11492591634898265791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (Int.gcd (A034386 n) (A307035 n))

end

end A133924.P11492591634898265791

/-! ## A133924.P9812997667355964334

`A136177(A325508(n))`
-/

namespace A133924.P9812997667355964334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136177 (A325508 n).toNat

end

end A133924.P9812997667355964334

/-! ## A133924.P11140379918982160377

`A276084(∏{p}[A307035(n), #])`
-/

namespace A133924.P11140379918982160377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A133924.P11140379918982160377

/-! ## A133924.P150894803024665245

`A335603(n+1)-A055396(A072873(n+1))`
-/

namespace A133924.P150894803024665245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (n + 1) - A055396 (A072873 (n + 1)).toNat

end

end A133924.P150894803024665245

/-!
# A133925: Number of compositions of n into parts of size 2 and 3 with no three consecutive 2s and no two consecutive 3s.

The programs for A133925, there is no canonical definition to state claims against.
-/

/-! ## A133925.P5449937597403739765

`A033568(A213249(n+2))%A301851(n+1)`
-/

namespace A133925.P5449937597403739765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033568 (A213249 (n + 2)).toNat) (A301851 (n + 1))

end

end A133925.P5449937597403739765

/-!
# A133926: Number of equivalence classes of compositions of n into parts of size 2 and 3 under the following equivalence relation: We make a "move" by changing three consecutive 2s into two consecutive 3s or vice versa. Two compositions are equivalent if we can reach one from the other by a series of moves.

The programs for A133926, the canonical program `A133926.P5567708888298027894` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133926 has offset 0).

The definition of A133926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133926.P5567708888298027894

`a(n-2)+a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133926

/-- `a(n-2)+a(n-3)-a(n-6)` -/
def P5567708888298027894.Spec : Prop :=
  ∀ n, P5567708888298027894.a n = A133926 n

theorem P5567708888298027894.correct : P5567708888298027894.Spec := by
  intro n
  simp only [A133926]

end A133926

/-! ## A133926.P6911591239659738693

`∑[ogf(1/(1+x-x^3-x^4-x^5))]`
-/

namespace A133926.P6911591239659738693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 0, -1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133926.P6911591239659738693

namespace A133926

/-- `∑[ogf(1/(1+x-x^3-x^4-x^5))]` -/
def P6911591239659738693.Spec : Prop :=
  ∀ n, P6911591239659738693.a n = A133926 n

end A133926

/-! ## A133926.P4262838964267993986

`A109700(lt[A175685(n+1), A035688(n+1)])`
-/

namespace A133926.P4262838964267993986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133926.P4262838964267993986

namespace A133926

/-- `A109700(lt[A175685(n+1), A035688(n+1)])` -/
def P4262838964267993986.Spec : Prop :=
  ∀ n, P4262838964267993986.a n = A133926 n

end A133926

/-! ## A133926.P5249126672872208021

`A124767(A003242(n)*A023894(n))`
-/

namespace A133926.P5249126672872208021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A003242 n * A023894 n).toNat

end

end A133926.P5249126672872208021

namespace A133926

/-- `A124767(A003242(n)*A023894(n))` -/
def P5249126672872208021.Spec : Prop :=
  ∀ n, P5249126672872208021.a n = A133926 n

end A133926

/-! ## A133926.P4259927629092383282

`A379672(A219282(n)+A216345(n+1))`
-/

namespace A133926.P4259927629092383282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A219282 n + A216345 (n + 1)).toNat

end

end A133926.P4259927629092383282

namespace A133926

/-- `A379672(A219282(n)+A216345(n+1))` -/
def P4259927629092383282.Spec : Prop :=
  ∀ n, P4259927629092383282.a n = A133926 n

end A133926

/-!
# A133928: Associate each least prime signature value with the corresponding prime number.

The programs for A133928, there is no canonical definition to state claims against.
-/

/-! ## A133928.P11320659470825501660

`A008578(A025487(n+1))`
-/

namespace A133928.P11320659470825501660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A025487 (n + 1)).toNat

end

end A133928.P11320659470825501660

/-! ## A133928.P4982240966268388190

`A008578(A333964(n+1))`
-/

namespace A133928.P4982240966268388190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333964 (n + 1)).toNat

end

end A133928.P4982240966268388190

/-! ## A133928.P6965438390326571928

`A008578(record[A046523(n+1)])`
-/

namespace A133928.P6965438390326571928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133928.P6965438390326571928

/-! ## A133928.P9613368806475731359

`A008578(record[A329899(n+1)])`
-/

namespace A133928.P9613368806475731359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133928.P9613368806475731359

/-! ## A133928.P77063835580310036

`A008578(record[A051466(n+2)])`
-/

namespace A133928.P77063835580310036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133928.P77063835580310036

/-!
# A133931: Expansion of x*(2-4*x^2-x^3)/((1-x)^2*(1-x-x^2)).

The programs for A133931, the canonical program `A133931.P5372285877535900844` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133931 has offset 1).

The definition of A133931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-4x^2-x^3)/(1-3x+2x^2+x^3-x^4))` (program `A133931.P5372285877535900844`, by `A133931.P5372285877535900844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133931.P5372285877535900844

`ogf((2-4x^2-x^3)/(1-3x+2x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133931

/-- `ogf((2-4x^2-x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P5372285877535900844.Spec : Prop :=
  ∀ n, P5372285877535900844.a n = A133931 (n + 1)

theorem P5372285877535900844.correct : P5372285877535900844.Spec := by
  intro n
  simp only [A133931, Nat.add_sub_cancel]

end A133931

/-! ## A133931.P12125205569072205557

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=15`
-/

namespace A133931.P12125205569072205557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 10, 15] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A133931.P12125205569072205557

namespace A133931

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P12125205569072205557.Spec : Prop :=
  ∀ n, P12125205569072205557.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P5737557346727514716

`∑[a(n-1)+a(n-2)-3]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A133931.P5737557346727514716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133931.P5737557346727514716

namespace A133931

/-- `∑[a(n-1)+a(n-2)-3]` -/
def P5737557346727514716.Spec : Prop :=
  ∀ n, P5737557346727514716.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P3266254237547483115

`∑[a(n-1)-(3-a(n-2))]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A133931.P3266254237547483115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133931.P3266254237547483115

namespace A133931

/-- `∑[a(n-1)-(3-a(n-2))]` -/
def P3266254237547483115.Spec : Prop :=
  ∀ n, P3266254237547483115.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P6733530941616234171

`∑[A157726(n)]-1`
-/

namespace A133931.P6733530941616234171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133931.P6733530941616234171

namespace A133931

/-- `∑[A157726(n)]-1` -/
def P6733530941616234171.Spec : Prop :=
  ∀ n, P6733530941616234171.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P13551777068269052414

`∑[A157725(n)]+n`
-/

namespace A133931.P13551777068269052414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133931.P13551777068269052414

namespace A133931

/-- `∑[A157725(n)]+n` -/
def P13551777068269052414.Spec : Prop :=
  ∀ n, P13551777068269052414.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P4025286686655084834

`∑[A001611(n)+2]-1`
-/

namespace A133931.P4025286686655084834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133931.P4025286686655084834

namespace A133931

/-- `∑[A001611(n)+2]-1` -/
def P4025286686655084834.Spec : Prop :=
  ∀ n, P4025286686655084834.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P12122500553637763322

`∑[A157727(n)-1]-1`
-/

namespace A133931.P12122500553637763322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133931.P12122500553637763322

namespace A133931

/-- `∑[A157727(n)-1]-1` -/
def P12122500553637763322.Spec : Prop :=
  ∀ n, P12122500553637763322.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P16485475201906543644

`∑[A000045(n)+3]-1`
-/

namespace A133931.P16485475201906543644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133931.P16485475201906543644

namespace A133931

/-- `∑[A000045(n)+3]-1` -/
def P16485475201906543644.Spec : Prop :=
  ∀ n, P16485475201906543644.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P10873016018820039167

`∑[A157729(n)-2]-1`
-/

namespace A133931.P10873016018820039167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133931.P10873016018820039167

namespace A133931

/-- `∑[A157729(n)-2]-1` -/
def P10873016018820039167.Spec : Prop :=
  ∀ n, P10873016018820039167.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P4412401565943460911

`A129728(n+2)-1+n`
-/

namespace A133931.P4412401565943460911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 2) - 1 + (n : ℤ)

end

end A133931.P4412401565943460911

namespace A133931

/-- `A129728(n+2)-1+n` -/
def P4412401565943460911.Spec : Prop :=
  ∀ n, P4412401565943460911.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P630142501918228494

`A081659(n+1)+2*n`
-/

namespace A133931.P630142501918228494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 (n + 1) + (2 * n : ℤ)

end

end A133931.P630142501918228494

namespace A133931

/-- `A081659(n+1)+2*n` -/
def P630142501918228494.Spec : Prop :=
  ∀ n, P630142501918228494.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P654607999139921469

`3*n+A001611(n+2)`
-/

namespace A133931.P654607999139921469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A001611 (n + 2)

end

end A133931.P654607999139921469

namespace A133931

/-- `3*n+A001611(n+2)` -/
def P654607999139921469.Spec : Prop :=
  ∀ n, P654607999139921469.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P16409898703819019884

`A232896(n+1)+Δ[n²]`
-/

namespace A133931.P16409898703819019884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A133931.P16409898703819019884

namespace A133931

/-- `A232896(n+1)+Δ[n²]` -/
def P16409898703819019884.Spec : Prop :=
  ∀ n, P16409898703819019884.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P16631999612762821868

`3*n+A000045(n+2)+1`
-/

namespace A133931.P16631999612762821868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A000045 (n + 2) + 1)

end

end A133931.P16631999612762821868

namespace A133931

/-- `3*n+A000045(n+2)+1` -/
def P16631999612762821868.Spec : Prop :=
  ∀ n, P16631999612762821868.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P1801462892194847

`3*n+2+A000071(n+2)`
-/

namespace A133931.P1801462892194847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) + A000071 (n + 2)

end

end A133931.P1801462892194847

namespace A133931

/-- `3*n+2+A000071(n+2)` -/
def P1801462892194847.Spec : Prop :=
  ∀ n, P1801462892194847.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P14843151043861446642

`∑[Δ[A000045(n+1)]+2]+n`
-/

namespace A133931.P14843151043861446642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A133931.P14843151043861446642

namespace A133931

/-- `∑[Δ[A000045(n+1)]+2]+n` -/
def P14843151043861446642.Spec : Prop :=
  ∀ n, P14843151043861446642.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P5309100090521559748

`A016789(n)+∑[A000045(n)]`
-/

namespace A133931.P5309100090521559748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133931.P5309100090521559748

namespace A133931

/-- `A016789(n)+∑[A000045(n)]` -/
def P5309100090521559748.Spec : Prop :=
  ∀ n, P5309100090521559748.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P13644865327449417476

`A052952(n)+A007310(n+1)`
-/

namespace A133931.P13644865327449417476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A007310 (n + 1)

end

end A133931.P13644865327449417476

namespace A133931

/-- `A052952(n)+A007310(n+1)` -/
def P13644865327449417476.Spec : Prop :=
  ∀ n, P13644865327449417476.a n = A133931 (n + 1)

end A133931

/-! ## A133931.P14119491202143495499

`A167270(n)+A047209(n+1)`
-/

namespace A133931.P14119491202143495499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 n + A047209 (n + 1)

end

end A133931.P14119491202143495499

namespace A133931

/-- `A167270(n)+A047209(n+1)` -/
def P14119491202143495499.Spec : Prop :=
  ∀ n, P14119491202143495499.a n = A133931 (n + 1)

end A133931

/-!
# A133933: a(n) = (1 + n * (n - 2) + (n - 1)!) mod (4*n).

The programs for A133933, the canonical program `A133933.P17511754460258118187` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133933 has offset 1).

The definition of A133933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+1)*(n-1)+n!)%(4*(n+1))` (program `A133933.P17511754460258118187`, by `A133933.P17511754460258118187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133933.P17511754460258118187

`(1+(n+1)*(n-1)+n!)%(4*(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133933

/-- `(1+(n+1)*(n-1)+n!)%(4*(n+1))` -/
def P17511754460258118187.Spec : Prop :=
  ∀ n, P17511754460258118187.a n = A133933 (n + 1)

theorem P17511754460258118187.correct : P17511754460258118187.Spec := by
  intro n
  simp only [A133933, Nat.add_sub_cancel]

end A133933

/-! ## A133933.P10291232746151987584

`A004664(n)%(4*(n+1))`
-/

namespace A133933.P10291232746151987584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004664 n) (4 * (n + 1) : ℤ)

end

end A133933.P10291232746151987584

namespace A133933

/-- `A004664(n)%(4*(n+1))` -/
def P10291232746151987584.Spec : Prop :=
  ∀ n, P10291232746151987584.a n = A133933 (n + 1)

theorem P10291232746151987584.correct : P10291232746151987584.Spec := by
  intro n
  simp only [A133933, Nat.add_sub_cancel, A133933.P10291232746151987584.a, A133933.P17511754460258118187.a, A004664, A004664.P2016887011664002620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133933

/-! ## A133933.P11334461641692114129

`(n!+n²)%A008574(n+1)`
-/

namespace A133933.P11334461641692114129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n + n ^ 2 : ℤ) (A008574 (n + 1))

end

end A133933.P11334461641692114129

namespace A133933

/-- `(n!+n²)%A008574(n+1)` -/
def P11334461641692114129.Spec : Prop :=
  ∀ n, P11334461641692114129.a n = A133933 (n + 1)

end A133933

/-! ## A133933.P14329578681662680259

`(A047920(∑[n])+n²)%(4*(n+1))`
-/

namespace A133933.P14329578681662680259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047920 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)) (4 * (n + 1) : ℤ)

end

end A133933.P14329578681662680259

namespace A133933

/-- `(A047920(∑[n])+n²)%(4*(n+1))` -/
def P14329578681662680259.Spec : Prop :=
  ∀ n, P14329578681662680259.a n = A133933 (n + 1)

end A133933

/-! ## A133933.P2866624163471358712

`(A000142(n)+n²)%A008586(n+1)`
-/

namespace A133933.P2866624163471358712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n + (n ^ 2 : ℤ)) (A008586 (n + 1))

end

end A133933.P2866624163471358712

namespace A133933

/-- `(A000142(n)+n²)%A008586(n+1)` -/
def P2866624163471358712.Spec : Prop :=
  ∀ n, P2866624163471358712.a n = A133933 (n + 1)

theorem P2866624163471358712.correct : P2866624163471358712.Spec := by
  intro n
  simp only [A133933, Nat.add_sub_cancel, A133933.P2866624163471358712.a, A133933.P17511754460258118187.a, A000142, A000142.P3272619076580183195.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133933

/-! ## A133933.P10512093591774194090

`(A000584(n²)+A000142(n))%A008574(n+1)`
-/

namespace A133933.P10512093591774194090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 (n ^ 2) + A000142 n) (A008574 (n + 1))

end

end A133933.P10512093591774194090

namespace A133933

/-- `(A000584(n²)+A000142(n))%A008574(n+1)` -/
def P10512093591774194090.Spec : Prop :=
  ∀ n, P10512093591774194090.a n = A133933 (n + 1)

end A133933

/-!
# A133934: A007318 * (a diagonalized version of A124625).

The programs for A133934, there is no canonical definition to state claims against.
-/

/-! ## A133934.P1180871028027358002

`A128710(n)-A133935(n)`
-/

namespace A133934.P1180871028027358002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A133935 n

end

end A133934.P1180871028027358002

/-! ## A133934.P7868289680606452229

`gcd(A103406(n), A141665(n))`
-/

namespace A133934.P7868289680606452229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n) (A141665 n)

end

end A133934.P7868289680606452229

/-! ## A133934.P9266308857329674595

`gcd(A135852(n), A359364(n))`
-/

namespace A133934.P9266308857329674595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135852 n) (A359364 n)

end

end A133934.P9266308857329674595

/-! ## A133934.P13833890777682378163

`A124845(n)*A152271(A002262(n))`
-/

namespace A133934.P13833890777682378163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124845 n * A152271 (A002262 n).toNat

end

end A133934.P13833890777682378163

/-! ## A133934.P16277539356128450372

`A103406(n)/A128830(A059268(n))`
-/

namespace A133934.P16277539356128450372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) / (A128830 (A059268 n).toNat : ℚ)

end

end A133934.P16277539356128450372

/-! ## A133934.P12248586737178559056

`A049077(A002260(n+1))*A124845(n)`
-/

namespace A133934.P12248586737178559056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A002260 (n + 1)).toNat * A124845 n

end

end A133934.P12248586737178559056

/-! ## A133934.P1958445282044240064

`A007318(n)*A214060(A002260(n+1))`
-/

namespace A133934.P1958445282044240064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A214060 (A002260 (n + 1)).toNat

end

end A133934.P1958445282044240064

/-! ## A133934.P13638651607639414475

`A007318(n)*A327512(A002262(n)+1)`
-/

namespace A133934.P13638651607639414475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A327512 (A002262 n + 1).toNat

end

end A133934.P13638651607639414475

/-! ## A133934.P12773715547299370443

`A007318(n)*A327512(1-A057944(n)+n)`
-/

namespace A133934.P12773715547299370443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A327512 (1 - A057944 n + (n : ℤ)).toNat

end

end A133934.P12773715547299370443

/-! ## A133934.P12853139781436852421

`A007318(n)*A327529(1-A057944(n)+n)`
-/

namespace A133934.P12853139781436852421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A327529 (1 - A057944 n + (n : ℤ)).toNat

end

end A133934.P12853139781436852421

/-!
# A133935: A007318 * A093178 as a diagonalized matrix.

The programs for A133935, the canonical program `A133935.P2681092979472692680` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133935 has offset 0).

The definition of A133935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133935.P2681092979472692680

`A007318(n)*A093178(A002260(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A133935

/-- `A007318(n)*A093178(A002260(n+1))` -/
def P2681092979472692680.Spec : Prop :=
  ∀ n, P2681092979472692680.a n = A133935 n

theorem P2681092979472692680.correct : P2681092979472692680.Spec := by
  intro n
  simp only [A133935]

end A133935

/-! ## A133935.P14930272263981279615

`A007318(n)*A093178(A002262(n)+1)`
-/

namespace A133935.P14930272263981279615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A093178 (A002262 n + 1).toNat

end

end A133935.P14930272263981279615

namespace A133935

/-- `A007318(n)*A093178(A002262(n)+1)` -/
def P14930272263981279615.Spec : Prop :=
  ∀ n, P14930272263981279615.a n = A133935 n

theorem P14930272263981279615.correct : P14930272263981279615.Spec := by
  intro n
  simp only [A133935, Nat.add_sub_cancel, A133935.P14930272263981279615.a, A133935.P2681092979472692680.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A093178, A093178.P12085837158869515185.a, A057944, A057944.P16851463738746886639.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A133935

/-! ## A133935.P411735932693417300

`A007318(n)*A220603(A002260(n+1)²)`
-/

namespace A133935.P411735932693417300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A220603 (A002260 (n + 1) ^ 2).toNat

end

end A133935.P411735932693417300

namespace A133935

/-- `A007318(n)*A220603(A002260(n+1)²)` -/
def P411735932693417300.Spec : Prop :=
  ∀ n, P411735932693417300.a n = A133935 n

end A133935

/-! ## A133935.P1619253117559778743

`A010027(n+1)%A128710(n)`
-/

namespace A133935.P1619253117559778743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010027 (n + 1)) (A128710 n)

end

end A133935.P1619253117559778743

namespace A133935

/-- `A010027(n+1)%A128710(n)` -/
def P1619253117559778743.Spec : Prop :=
  ∀ n, P1619253117559778743.a n = A133935 n

end A133935

/-! ## A133935.P9169704948027159944

`gcd(A103406(n), A162590(A061579(n)))`
-/

namespace A133935.P9169704948027159944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103406 n) (A162590 (A061579 n).toNat)

end

end A133935.P9169704948027159944

namespace A133935

/-- `gcd(A103406(n), A162590(A061579(n)))` -/
def P9169704948027159944.Spec : Prop :=
  ∀ n, (P9169704948027159944.a n : ℤ) = A133935 n

end A133935

/-! ## A133935.P7869940333726734104

`A007318(n)*A128830(A059268(n))`
-/

namespace A133935.P7869940333726734104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A128830 (A059268 n).toNat

end

end A133935.P7869940333726734104

namespace A133935

/-- `A007318(n)*A128830(A059268(n))` -/
def P7869940333726734104.Spec : Prop :=
  ∀ n, P7869940333726734104.a n = A133935 n

end A133935

/-! ## A133935.P427138220196838562

`A128710(n)-A133934(n+1)`
-/

namespace A133935.P427138220196838562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A133934 (n + 1)

end

end A133935.P427138220196838562

namespace A133935

/-- `A128710(n)-A133934(n+1)` -/
def P427138220196838562.Spec : Prop :=
  ∀ n, P427138220196838562.a n = A133935 n

end A133935

/-!
# A133936: Number of times prime powers occur in the columns of tables A133232 and A133233.

The programs for A133936, there is no canonical definition to state claims against.
-/

/-! ## A133936.P11958896795324918759

`(n+1)*(ceil((n+1)/∏{p}[n+1, (n+1)/#])-1)`
-/

namespace A133936.P11958896795324918759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ - 1)

end

end A133936.P11958896795324918759

/-! ## A133936.P14263131421927091023

`lcm(n+1, 1-ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A133936.P14263131421927091023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉)

end

end A133936.P14263131421927091023

/-! ## A133936.P4881565960781438656

`(n+1)*n%ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A133936.P4881565960781438656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (n : ℤ) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A133936.P4881565960781438656

/-! ## A133936.P5540518766946768530

`(n+1)²/gcd(n+1, ∏{p}[n+1, (n+1)/#])-(n+1)`
-/

namespace A133936.P5540518766946768530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℚ) - (n + 1 : ℚ)

end

end A133936.P5540518766946768530

/-! ## A133936.P863561356951018354

`xor(n, -1)+(n+1)*ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A133936.P863561356951018354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (n + 1 : ℤ) * ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A133936.P863561356951018354

/-! ## A133936.P5461238066592396979

`(n+1)*(∏{p}[n+1, #]^C(∑{p}[n+1, #], ∏{p}[n+1, #])-1)`
-/

namespace A133936.P5461238066592396979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((((∏ p ∈ Nat.primeFactors (f1 n), p) ^ Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ) - 1)

end

end A133936.P5461238066592396979

/-! ## A133936.P6421913515285050687

`(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])^(-1)-(n+1)`
-/

namespace A133936.P6421913515285050687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ) ^ (-1 : ℤ) - (n + 1 : ℚ)

end

end A133936.P6421913515285050687

/-! ## A133936.P5027844185797592365

`lcm((n+1)*∏{p}[n+1, #-1], ∏{p}[n+1, (n+1)/#]%(n+1))`
-/

namespace A133936.P5027844185797592365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))) (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ))

end

end A133936.P5027844185797592365

/-! ## A133936.P17673226017709975946

`A140580(n+1)-(n+1)`
-/

namespace A133936.P17673226017709975946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140580 (n + 1) - (n + 1 : ℤ)

end

end A133936.P17673226017709975946

/-! ## A133936.P9032142489926828009

`(n+1)*(A014963(n+1)-1)`
-/

namespace A133936.P9032142489926828009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A014963 (n + 1) - 1)

end

end A133936.P9032142489926828009

/-!
# A133937: A100994-n/A014963.

The programs for A133937, the canonical program `A133937.P361040303253339586` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133937 has offset 1).

The definition of A133937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133937.P361040303253339586

`A100994(n+1)-A048671(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A133937

/-- `A100994(n+1)-A048671(n+1)` -/
def P361040303253339586.Spec : Prop :=
  ∀ n, P361040303253339586.a n = A133937 (n + 1)

theorem P361040303253339586.correct : P361040303253339586.Spec := by
  intro n
  simp only [A133937, Nat.add_sub_cancel]

end A133937

/-! ## A133937.P3101712613856543987

`A100994(n+1)-(n+1)/A014963(n+1)`
-/

namespace A133937.P3101712613856543987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) : ℚ) - (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

end

end A133937.P3101712613856543987

namespace A133937

/-- `A100994(n+1)-(n+1)/A014963(n+1)` -/
def P3101712613856543987.Spec : Prop :=
  ∀ n, P3101712613856543987.a n = (A133937 (n + 1) : ℚ)

end A133937

/-! ## A133937.P14773168384254612949

`(A133790(n+1)-(n+1))/A014963(n+1)`
-/

namespace A133937.P14773168384254612949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133790 (n + 1) - (n + 1 : ℤ) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A133937.P14773168384254612949

namespace A133937

/-- `(A133790(n+1)-(n+1))/A014963(n+1)` -/
def P14773168384254612949.Spec : Prop :=
  ∀ n, P14773168384254612949.a n = (A133937 (n + 1) : ℚ)

end A133937

/-! ## A133937.P18173289140399592915

`A100994(n+1)-gcd(A002378(n), A205959(n+1))`
-/

namespace A133937.P18173289140399592915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) - (Int.gcd (A002378 n) (A205959 (n + 1)) : ℤ)

end

end A133937.P18173289140399592915

namespace A133937

/-- `A100994(n+1)-gcd(A002378(n), A205959(n+1))` -/
def P18173289140399592915.Spec : Prop :=
  ∀ n, P18173289140399592915.a n = A133937 (n + 1)

end A133937

/-! ## A133937.P15656163514306682994

`(n+1)^A001065(A014963(n+1))-A048671(n+1)`
-/

namespace A133937.P15656163514306682994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001065 (A014963 (n + 1)).toNat : ℤ) - (A048671 (n + 1) : ℚ)

end

end A133937.P15656163514306682994

namespace A133937

/-- `(n+1)^A001065(A014963(n+1))-A048671(n+1)` -/
def P15656163514306682994.Spec : Prop :=
  ∀ n, P15656163514306682994.a n = (A133937 (n + 1) : ℚ)

end A133937

/-! ## A133937.P18037090558903207588

`A020500(n+1)^A037916(n+1)-A048671(n+1)`
-/

namespace A133937.P18037090558903207588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 1) : ℚ) ^ (A037916 (n + 1) : ℤ) - (A048671 (n + 1) : ℚ)

end

end A133937.P18037090558903207588

namespace A133937

/-- `A020500(n+1)^A037916(n+1)-A048671(n+1)` -/
def P18037090558903207588.Spec : Prop :=
  ∀ n, P18037090558903207588.a n = (A133937 (n + 1) : ℚ)

end A133937

/-! ## A133937.P17664182717372017061

`A003557(A133790(n+1))-A048671(n+1)`
-/

namespace A133937.P17664182717372017061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A133790 (n + 1)).toNat - A048671 (n + 1)

end

end A133937.P17664182717372017061

namespace A133937

/-- `A003557(A133790(n+1))-A048671(n+1)` -/
def P17664182717372017061.Spec : Prop :=
  ∀ n, P17664182717372017061.a n = A133937 (n + 1)

end A133937

/-! ## A133937.P9641879790677509574

`A007956(A140580(n+1))/A007956(n+1)-A048671(n+1)`
-/

namespace A133937.P9641879790677509574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (A140580 (n + 1)).toNat : ℚ) / (A007956 (n + 1) : ℚ) - (A048671 (n + 1) : ℚ)

end

end A133937.P9641879790677509574

namespace A133937

/-- `A007956(A140580(n+1))/A007956(n+1)-A048671(n+1)` -/
def P9641879790677509574.Spec : Prop :=
  ∀ n, P9641879790677509574.a n = (A133937 (n + 1) : ℚ)

end A133937

/-!
# A133939: E.g.f. satisfies: A(x) = x*(tan(tan(A(x)))+1).

The programs for A133939, there is no canonical definition to state claims against.
-/

/-! ## A133939.P1395742416243397369

`n*A093466(∑[n²]+1)`
-/

namespace A133939.P1395742416243397369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A133939.P1395742416243397369

/-! ## A133939.P17084456433357015560

`n*A270613(A127383(n))`
-/

namespace A133939.P17084456433357015560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A270613 (A127383 n).toNat

end

end A133939.P17084456433357015560

/-!
# A133940: Numbers n such that (prime(n)^2 + prime(n+1)^2 + prime(n+2)^2)/3 is prime (A084951).

The programs for A133940, there is no canonical definition to state claims against.
-/

/-! ## A133940.P7666887958777801968

`A000720(A084952(n+1)-1)`
-/

namespace A133940.P7666887958777801968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084952 (n + 1) - 1).toNat

end

end A133940.P7666887958777801968

/-! ## A133940.P5940493046676824200

`A000720(xor(1, A084952(n+1)))`
-/

namespace A133940.P5940493046676824200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A084952 (n + 1))).toNat

end

end A133940.P5940493046676824200

/-! ## A133940.P6567196237606037492

`A000720(A000010(A084952(n+1)))`
-/

namespace A133940.P6567196237606037492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A084952 (n + 1)).toNat).toNat

end

end A133940.P6567196237606037492

/-! ## A133940.P17433926664973302886

`A079067(A084952(n+1))`
-/

namespace A133940.P17433926664973302886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A084952 (n + 1)).toNat

end

end A133940.P17433926664973302886

/-! ## A133940.P3385591309909595805

`A084360(A084952(n+1)+2)`
-/

namespace A133940.P3385591309909595805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A084952 (n + 1) + 2).toNat

end

end A133940.P3385591309909595805

/-! ## A133940.P13562664608171926863

`∑{d}[A084952(n+1), A082460(#)]`
-/

namespace A133940.P13562664608171926863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A082460 d

end

end A133940.P13562664608171926863

/-! ## A133940.P4832006947243279202

`A082460(∑{p}[A084952(n+1), #])`
-/

namespace A133940.P4832006947243279202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A133940.P4832006947243279202

/-! ## A133940.P3781147153155088011

`A082460(A084952(n+1)-2)+1`
-/

namespace A133940.P3781147153155088011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A084952 (n + 1) - 2).toNat + 1

end

end A133940.P3781147153155088011

/-! ## A133940.P2256958198802999486

`A000720(A324648(p?[A084952(n+1)]))`
-/

namespace A133940.P2256958198802999486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A324648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A133940.P2256958198802999486

/-! ## A133940.P644714994747564502

`A033270(A084952(n+1)+1)`
-/

namespace A133940.P644714994747564502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A084952 (n + 1) + 1).toNat

end

end A133940.P644714994747564502

/-! ## A133940.P9167838444373496518

`A000720(A138153(p?[A084952(n+1)]))`
-/

namespace A133940.P9167838444373496518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138153 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A133940.P9167838444373496518

/-! ## A133940.P15876950354153010120

`A243503(A084952(n+1))-A115716(A115716(n))`
-/

namespace A133940.P15876950354153010120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A084952 (n + 1)).toNat - A115716 (A115716 n).toNat

end

end A133940.P15876950354153010120

/-! ## A133940.P17219014953478567510

`A243503(A084952(n+1))-A157658(A001097(n+1))`
-/

namespace A133940.P17219014953478567510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A084952 (n + 1)).toNat - A157658 (A001097 (n + 1)).toNat

end

end A133940.P17219014953478567510

/-!
# A133941: E.g.f. satisfies: A(x) = x*(exp(tan(A(x)))).

The programs for A133941, there is no canonical definition to state claims against.
-/

/-! ## A133941.P15400965113507658182

`A000720(∑[(4*n-6)*a(n-2)+(4*n-3)*a(n-1)])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A133941.P15400965113507658182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ((4 * n : ℤ) - 6) * f1 (n - 2) + ((4 * n : ℤ) - 3) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133941.P15400965113507658182

/-! ## A133941.P10673033509865019298

`n*A105806(A002293(n))`
-/

namespace A133941.P10673033509865019298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105806 (A002293 n).toNat

end

end A133941.P10673033509865019298

/-!
# A133942: a(n) = (-1)^n * n!.

The programs for A133942, the canonical program `A133942.P740003747930035981` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133942 has offset 0).

The definition of A133942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*n!` (program `A133942.P740003747930035981`, by `A133942.P740003747930035981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133942.P740003747930035981

`(-1)^n*n!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133942

/-- `(-1)^n*n!` -/
def P740003747930035981.Spec : Prop :=
  ∀ n, P740003747930035981.a n = A133942 n

theorem P740003747930035981.correct : P740003747930035981.Spec := by
  intro n
  simp only [A133942]

end A133942

/-! ## A133942.P13466617598160158316

`(-1)^n*A000142(n)`
-/

namespace A133942.P13466617598160158316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000142 n

end

end A133942.P13466617598160158316

namespace A133942

/-- `(-1)^n*A000142(n)` -/
def P13466617598160158316.Spec : Prop :=
  ∀ n, P13466617598160158316.a n = A133942 n

end A133942

/-! ## A133942.P6964217749645877834

`∏[floor(acot(n)-n)]`
-/

namespace A133942.P6964217749645877834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133942.P6964217749645877834

namespace A133942

/-- `∏[floor(acot(n)-n)]` -/
def P6964217749645877834.Spec : Prop :=
  ∀ n, P6964217749645877834.a n = A133942 n

end A133942

/-! ## A133942.P497558569977671971

`n!/(-1)^n`
-/

namespace A133942.P497558569977671971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((-1) ^ n : ℚ)

end

end A133942.P497558569977671971

namespace A133942

/-- `n!/(-1)^n` -/
def P497558569977671971.Spec : Prop :=
  ∀ n, P497558569977671971.a n = (A133942 n : ℚ)

end A133942

/-! ## A133942.P8032038947045952785

`∏[or(-n, 2^n)]`
-/

namespace A133942.P8032038947045952785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n : ℤ)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133942.P8032038947045952785

namespace A133942

/-- `∏[or(-n, 2^n)]` -/
def P8032038947045952785.Spec : Prop :=
  ∀ n, P8032038947045952785.a n = A133942 n

end A133942

/-! ## A133942.P7482969207380460406

`n!*cos(π*n)`
-/

namespace A133942.P7482969207380460406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) * Real.cos (Real.pi * (n : ℝ))

end

end A133942.P7482969207380460406

namespace A133942

/-- `n!*cos(π*n)` -/
def P7482969207380460406.Spec : Prop :=
  ∀ n, P7482969207380460406.a n = (A133942 n : ℝ)

end A133942

/-! ## A133942.P14256891233669450642

`-(n*a(n-1))` with `a(0)=1`
-/

namespace A133942.P14256891233669450642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -((n : ℤ) * a (n - 1))

end

end A133942.P14256891233669450642

namespace A133942

/-- `-(n*a(n-1))` -/
def P14256891233669450642.Spec : Prop :=
  ∀ n, P14256891233669450642.a n = A133942 n

end A133942

/-! ## A133942.P10536939136400685290

`∏[C(2, n+2)-n]`
-/

namespace A133942.P10536939136400685290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133942.P10536939136400685290

namespace A133942

/-- `∏[C(2, n+2)-n]` -/
def P10536939136400685290.Spec : Prop :=
  ∀ n, P10536939136400685290.a n = A133942 n

end A133942

/-! ## A133942.P7566234757200019712

`∏[(2^n)%2-n]`
-/

namespace A133942.P7566234757200019712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n % 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133942.P7566234757200019712

namespace A133942

/-- `∏[(2^n)%2-n]` -/
def P7566234757200019712.Spec : Prop :=
  ∀ n, P7566234757200019712.a n = A133942 n

end A133942

/-! ## A133942.P14241252760605190034

`∏[and(1, 2^n)-n]`
-/

namespace A133942.P14241252760605190034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133942.P14241252760605190034

namespace A133942

/-- `∏[and(1, 2^n)-n]` -/
def P14241252760605190034.Spec : Prop :=
  ∀ n, P14241252760605190034.a n = A133942 n

end A133942

/-!
# A133943: Sum mu(k), where the sum is over the integers k which are the "isolated divisors" of n and mu(k) is the Moebius function (mu(k) = A008683(k)). A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133943, there is no canonical definition to state claims against.
-/

/-! ## A133943.P5817227339833117235

`A000007(n)-A133944(n+1)`
-/

namespace A133943.P5817227339833117235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A133944 (n + 1)

end

end A133943.P5817227339833117235

/-! ## A133943.P13873169522795907283

`A036987(2*n)-A133944(n+1)`
-/

namespace A133943.P13873169522795907283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) - A133944 (n + 1)

end

end A133943.P13873169522795907283

/-! ## A133943.P7808519623669810536

`(-A133944(n+1))^A160377(n+1)`
-/

namespace A133943.P7808519623669810536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A133944 (n + 1) : ℚ) ^ (A160377 (n + 1) : ℤ)

end

end A133943.P7808519623669810536

/-! ## A133943.P18377872750559208224

`and(1, A324508(n+1))-A133944(n+1)`
-/

namespace A133943.P18377872750559208224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324508 (n + 1)) - A133944 (n + 1)

end

end A133943.P18377872750559208224

/-! ## A133943.P660804272721800030

`A000035(A091223(n+1))-A133944(n+1)`
-/

namespace A133943.P660804272721800030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A091223 (n + 1)).toNat - A133944 (n + 1)

end

end A133943.P660804272721800030

/-! ## A133943.P13246310536599535497

`A174725(A020639(n+1))-A133944(n+1)`
-/

namespace A133943.P13246310536599535497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (A020639 (n + 1)).toNat - A133944 (n + 1)

end

end A133943.P13246310536599535497

/-! ## A133943.P10634758583176457700

`A010057(A010057(n)+n)-A133944(n+1)`
-/

namespace A133943.P10634758583176457700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A010057 n + (n : ℤ)).toNat - A133944 (n + 1)

end

end A133943.P10634758583176457700

/-! ## A133943.P13358975044916582168

`A023533(A023533(n)+n)-A133944(n+1)`
-/

namespace A133943.P13358975044916582168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A023533 n + (n : ℤ)).toNat - A133944 (n + 1)

end

end A133943.P13358975044916582168

/-! ## A133943.P11962537141898797034

`A008683(n+1)*A112526(n+1)-A133944(n+1)`
-/

namespace A133943.P11962537141898797034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A112526 (n + 1) - A133944 (n + 1)

end

end A133943.P11962537141898797034

/-! ## A133943.P15004350968562899735

`A008683(n+1)*A304819(n+1)-A133944(n+1)`
-/

namespace A133943.P15004350968562899735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A304819 (n + 1) - A133944 (n + 1)

end

end A133943.P15004350968562899735

/-! ## A133943.P1199277855903252331

`A162518(A020482(n+2))-A133944(n+1)`
-/

namespace A133943.P1199277855903252331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162518 (A020482 (n + 2)).toNat - A133944 (n + 1)

end

end A133943.P1199277855903252331

/-! ## A133943.P15926627165850216887

`A128145(A008458(n))-A133944(n+1)`
-/

namespace A133943.P15926627165850216887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (A008458 n).toNat - A133944 (n + 1)

end

end A133943.P15926627165850216887

/-! ## A133943.P11262276085569176530

`A162518(A000040(n+1))-A133944(n+1)`
-/

namespace A133943.P11262276085569176530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162518 (A000040 (n + 1)).toNat - A133944 (n + 1)

end

end A133943.P11262276085569176530

/-! ## A133943.P18393075776747892423

`A008683((n+1)*(n+1))-A133944(n+1)`
-/

namespace A133943.P18393075776747892423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * (n + 1)) - A133944 (n + 1)

end

end A133943.P18393075776747892423

/-! ## A133943.P591536201838529898

`A023533(A133263(n))-A133944(n+1)`
-/

namespace A133943.P591536201838529898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A133263 n).toNat - A133944 (n + 1)

end

end A133943.P591536201838529898

/-! ## A133943.P5156437113220424368

`A133944(n+1)^A037952(n)`
-/

namespace A133943.P5156437113220424368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133944 (n + 1) : ℚ) ^ (A037952 n : ℤ)

end

end A133943.P5156437113220424368

/-! ## A133943.P17898138965869686932

`A133944(n+1)²^A008587(n)`
-/

namespace A133943.P17898138965869686932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133944 (n + 1) ^ 2 : ℚ) ^ (A008587 n : ℤ)

end

end A133943.P17898138965869686932

/-! ## A133943.P16101089387188934710

`A276611((A133944(n+1)^n)²)`
-/

namespace A133943.P16101089387188934710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 ((A133944 (n + 1) ^ n) ^ 2).toNat

end

end A133943.P16101089387188934710

/-! ## A133943.P12465527594791621352

`A133944(n+1)^A279851(n+1)`
-/

namespace A133943.P12465527594791621352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133944 (n + 1) : ℚ) ^ (A279851 (n + 1) : ℤ)

end

end A133943.P12465527594791621352

/-! ## A133943.P3567815783556674054

`A162518(n²+2)-A133944(n+1)`
-/

namespace A133943.P3567815783556674054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162518 (n ^ 2 + 2) - A133944 (n + 1)

end

end A133943.P3567815783556674054

/-!
# A133944: Sum mu(k), where the sum is over the integers k which are the "non-isolated divisors" of n and mu(k) is the Moebius function (mu(k) = A008683(k)). A positive divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n.

The programs for A133944, there is no canonical definition to state claims against.
-/

/-! ## A133944.P13452187068878540105

`A000007(n)-A133943(n+1)`
-/

namespace A133944.P13452187068878540105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A133943 (n + 1)

end

end A133944.P13452187068878540105

/-! ## A133944.P180391313669339979

`A057428(n)*A133943(n+1)`
-/

namespace A133944.P180391313669339979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A133943 (n + 1)

end

end A133944.P180391313669339979

/-! ## A133944.P5547026856047977718

`A080301(n)*A133943(n+1)`
-/

namespace A133944.P5547026856047977718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080301 n * A133943 (n + 1)

end

end A133944.P5547026856047977718

/-! ## A133944.P2506965230545076411

`A089263(n)*A133943(n+1)`
-/

namespace A133944.P2506965230545076411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n * A133943 (n + 1)

end

end A133944.P2506965230545076411

/-! ## A133944.P14949692380547111617

`A133943(n+1)*A134824(n)`
-/

namespace A133944.P14949692380547111617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (n + 1) * A134824 n

end

end A133944.P14949692380547111617

/-! ## A133944.P15943220323515106493

`A133943(2*n+1)-A133943(n+1)`
-/

namespace A133944.P15943220323515106493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (2 * n + 1) - A133943 (n + 1)

end

end A133944.P15943220323515106493

/-! ## A133944.P5014455582139867951

`-A133943(A014963(3*(n+1))+n)`
-/

namespace A133944.P5014455582139867951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133943 (A014963 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A133944.P5014455582139867951

/-! ## A133944.P6588696618401453079

`A008683((n+1)²)-A133943(n+1)`
-/

namespace A133944.P6588696618401453079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - A133943 (n + 1)

end

end A133944.P6588696618401453079

/-! ## A133944.P15875157188860495698

`A057764(A331927(n+1))-1`
-/

namespace A133944.P15875157188860495698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057764 (A331927 (n + 1)).toNat - 1

end

end A133944.P15875157188860495698

/-! ## A133944.P901492002835257785

`A074290(8^A129308(n+1))`
-/

namespace A133944.P901492002835257785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A129308 (n + 1) : ℤ))).toNat

end

end A133944.P901492002835257785

/-!
# A133945: Sum phi(k), where the sum is over the integers k which are the "isolated divisors" of n and phi(k) is the Euler totient function (phi(k) = A000010(k)). A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133945, there is no canonical definition to state claims against.
-/

/-! ## A133945.P13828490877046051204

`A006519(A004394(n+2)+1)+n-2*A129308(n+1)`
-/

namespace A133945.P13828490877046051204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A004394 (n + 2) + 1).toNat + (n : ℤ) - 2 * A129308 (n + 1)

end

end A133945.P13828490877046051204

/-! ## A133945.P7017526357700509542

`A000005(2^n)-2*A129308(n+1)`
-/

namespace A133945.P7017526357700509542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - 2 * A129308 (n + 1)

end

end A133945.P7017526357700509542

/-! ## A133945.P7092785669027959675

`A000005(2^n)-A005843(A129308(n+1))`
-/

namespace A133945.P7092785669027959675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - A005843 (A129308 (n + 1)).toNat

end

end A133945.P7092785669027959675

/-! ## A133945.P9360844430079812542

`n+1-A020639(A277324(n))*A129308(n+1)`
-/

namespace A133945.P9360844430079812542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020639 (A277324 n).toNat * A129308 (n + 1)

end

end A133945.P9360844430079812542

/-! ## A133945.P16661683152776796261

`n+1-A005843(A129308(n+1))%A181375(n+1)`
-/

namespace A133945.P16661683152776796261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A005843 (A129308 (n + 1)).toNat) (A181375 (n + 1))

end

end A133945.P16661683152776796261

/-!
# A133946: a(n) = Sum phi(k), where the sum is over the integers k which are the "non-isolated divisors" of 2n and phi(k) is the Euler totient function (phi(k) = A000010(k)). A positive divisor k of n is non-isolated if k-1 and/ or k+1 also divides n.

The programs for A133946, there is no canonical definition to state claims against.
-/

/-! ## A133946.P3096634512173210139

`2*(n+1)-A133945(2*(n+1))`
-/

namespace A133946.P3096634512173210139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A133945 (2 * (n + 1))

end

end A133946.P3096634512173210139

/-! ## A133946.P14411018640572719235

`A145340(A115017(n+1)%A031652(n+1))`
-/

namespace A133946.P14411018640572719235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145340 (Int.tmod (A115017 (n + 1)) (A031652 (n + 1))).toNat

end

end A133946.P14411018640572719235

/-! ## A133946.P10375462239864123967

`A034463(4*A115017(n+1))`
-/

namespace A133946.P10375462239864123967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (4 * A115017 (n + 1)).toNat

end

end A133946.P10375462239864123967

/-! ## A133946.P9508359812831960571

`A001222(6^A083312(n+1))`
-/

namespace A133946.P9508359812831960571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A083312 (n + 1) : ℤ))).toNat

end

end A133946.P9508359812831960571

/-! ## A133946.P8350344140066383018

`A083312(n+1)*A165059(A256341(n+4))`
-/

namespace A133946.P8350344140066383018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (n + 1) * A165059 (A256341 (n + 4)).toNat

end

end A133946.P8350344140066383018

/-!
# A133947: a(n) = the number of "non-isolated divisors" of n(n+1). A positive divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n.

The programs for A133947, there is no canonical definition to state claims against.
-/

/-! ## A133947.P5790991993184890958

`A092517(n+1)-A133948(n+1)`
-/

namespace A133947.P5790991993184890958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A133948 (n + 1)

end

end A133947.P5790991993184890958

/-! ## A133947.P465289838036506971

`A132747(A002378(n+1))`
-/

namespace A133947.P465289838036506971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A002378 (n + 1)).toNat

end

end A133947.P465289838036506971

/-! ## A133947.P8978768006539625252

`2*A063123(n+1)-A133948(n+1)`
-/

namespace A133947.P8978768006539625252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063123 (n + 1) - A133948 (n + 1)

end

end A133947.P8978768006539625252

/-! ## A133947.P16790435353484860069

`A005843(A063123(n+1))-A133948(n+1)`
-/

namespace A133947.P16790435353484860069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063123 (n + 1)).toNat - A133948 (n + 1)

end

end A133947.P16790435353484860069

/-! ## A133947.P16601329924900271403

`A000005(A278256(n+1))-A133948(n+1)`
-/

namespace A133947.P16601329924900271403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278256 (n + 1)).toNat - A133948 (n + 1)

end

end A133947.P16601329924900271403

/-! ## A133947.P6506387849992369389

`A000005(Δ[A064999(n)])-A133948(n+1)`
-/

namespace A133947.P6506387849992369389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A133948 (n + 1)

end

end A133947.P6506387849992369389

/-! ## A133947.P17199431934428006359

`A000005(Δ[A108766(n)])-A133948(n+1)`
-/

namespace A133947.P17199431934428006359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A133948 (n + 1)

end

end A133947.P17199431934428006359

/-! ## A133947.P1041176578103518234

`A000005(A002378(n+1))-A133948(n+1)`
-/

namespace A133947.P1041176578103518234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002378 (n + 1)).toNat - A133948 (n + 1)

end

end A133947.P1041176578103518234

/-! ## A133947.P693094514764839395

`A132747(∑[2*(n+1)])`
-/

namespace A133947.P693094514764839395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133947.P693094514764839395

/-! ## A133947.P7556512477865625175

`A092517(n+1)-A132881(A002378(n+1))`
-/

namespace A133947.P7556512477865625175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A132881 (A002378 (n + 1)).toNat

end

end A133947.P7556512477865625175

/-!
# A133948: a(n) = the number of "isolated divisors" of n(n+1). A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133948, there is no canonical definition to state claims against.
-/

/-! ## A133948.P7091326361470965347

`A092517(n+1)-A133947(n+1)`
-/

namespace A133948.P7091326361470965347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1) - A133947 (n + 1)

end

end A133948.P7091326361470965347

/-! ## A133948.P7044586931475139378

`A132881(A002378(n+1))`
-/

namespace A133948.P7044586931475139378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A002378 (n + 1)).toNat

end

end A133948.P7044586931475139378

/-! ## A133948.P1986359761039990104

`2*A063123(n+1)-A133947(n+1)`
-/

namespace A133948.P1986359761039990104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063123 (n + 1) - A133947 (n + 1)

end

end A133948.P1986359761039990104

/-! ## A133948.P4187122079608025323

`A005843(A063123(n+1))-A133947(n+1)`
-/

namespace A133948.P4187122079608025323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063123 (n + 1)).toNat - A133947 (n + 1)

end

end A133948.P4187122079608025323

/-! ## A133948.P11449809612869259438

`A000005(A278256(n+1))-A133947(n+1)`
-/

namespace A133948.P11449809612869259438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278256 (n + 1)).toNat - A133947 (n + 1)

end

end A133948.P11449809612869259438

/-! ## A133948.P3517301960633367897

`A000005(Δ[A064999(n)])-A133947(n+1)`
-/

namespace A133948.P3517301960633367897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A133947 (n + 1)

end

end A133948.P3517301960633367897

/-! ## A133948.P5282934563503103334

`A000005(Δ[A108766(n)])-A133947(n+1)`
-/

namespace A133948.P5282934563503103334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A133947 (n + 1)

end

end A133948.P5282934563503103334

/-! ## A133948.P3275041086363266851

`A000005(A002378(n+1))-A133947(n+1)`
-/

namespace A133948.P3275041086363266851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002378 (n + 1)).toNat - A133947 (n + 1)

end

end A133948.P3275041086363266851

/-! ## A133948.P4561453156170593807

`A132881(∑[2*(n+1)])`
-/

namespace A133948.P4561453156170593807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133948.P4561453156170593807

/-!
# A133949: a(n) = the number of "non-isolated divisors" of n(n+1)/2. A positive divisor k of n is non-isolated if either k-1 or k+1 also divides n.

The programs for A133949, there is no canonical definition to state claims against.
-/

/-! ## A133949.P6786489440801881459

`A063440(n+1)-A133950(n+1)`
-/

namespace A133949.P6786489440801881459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) - A133950 (n + 1)

end

end A133949.P6786489440801881459

/-! ## A133949.P8037192690666683399

`A132747(A000217(n+1))`
-/

namespace A133949.P8037192690666683399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A000217 (n + 1)).toNat

end

end A133949.P8037192690666683399

/-! ## A133949.P8621325407173877448

`A063440(A000027(n+1))+A001489(A133950(n+1))`
-/

namespace A133949.P8621325407173877448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (A000027 (n + 1)).toNat + A001489 (A133950 (n + 1)).toNat

end

end A133949.P8621325407173877448

/-! ## A133949.P15949720162169480704

`A000005(A278253(n+1))-A133950(n+1)`
-/

namespace A133949.P15949720162169480704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278253 (n + 1)).toNat - A133950 (n + 1)

end

end A133949.P15949720162169480704

/-! ## A133949.P4443161968566577511

`A000005(∑[n+1])-A133950(n+1)`
-/

namespace A133949.P4443161968566577511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) - A133950 (n + 1)

end

end A133949.P4443161968566577511

/-! ## A133949.P10202499904452169135

`A001489(A133950(n+1))+A000005(A000217(n+1))`
-/

namespace A133949.P10202499904452169135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A133950 (n + 1)).toNat + A000005 (A000217 (n + 1)).toNat

end

end A133949.P10202499904452169135

/-! ## A133949.P5623193196745580040

`A320111(A257942(n))-A133950(n+1)`
-/

namespace A133949.P5623193196745580040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257942 n).toNat - A133950 (n + 1)

end

end A133949.P5623193196745580040

/-! ## A133949.P17045836950129589051

`A132747(A000096(n*A000096(n)%2)+1)`
-/

namespace A133949.P17045836950129589051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A000096 ((n : ℤ) * Int.tmod (A000096 n) 2).toNat + 1).toNat

end

end A133949.P17045836950129589051

/-! ## A133949.P3370575191875183966

`A132747(∑[n+1])`
-/

namespace A133949.P3370575191875183966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133949.P3370575191875183966

/-! ## A133949.P13515689366296432131

`2-4/2+A132747(A000096(n)+1)`
-/

namespace A133949.P13515689366296432131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A132747 (A000096 n + 1).toNat : ℚ)

end

end A133949.P13515689366296432131

/-! ## A133949.P1550467817000805593

`A063440(n+1)-A132881(A000217(n+1))`
-/

namespace A133949.P1550467817000805593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) - A132881 (A000217 (n + 1)).toNat

end

end A133949.P1550467817000805593

/-!
# A133950: a(n) = the number of "isolated divisors" of n(n+1)/2. A positive divisor k of n is isolated if neither k-1 nor k+1 divides n.

The programs for A133950, there is no canonical definition to state claims against.
-/

/-! ## A133950.P7886248420596698288

`A063440(n+1)-A133949(n+1)`
-/

namespace A133950.P7886248420596698288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) - A133949 (n + 1)

end

end A133950.P7886248420596698288

/-! ## A133950.P18182017318109110929

`A132881(A000217(n+1))`
-/

namespace A133950.P18182017318109110929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A000217 (n + 1)).toNat

end

end A133950.P18182017318109110929

/-! ## A133950.P3555823256221217412

`A000005(A278253(n+1))-A133949(n+1)`
-/

namespace A133950.P3555823256221217412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278253 (n + 1)).toNat - A133949 (n + 1)

end

end A133950.P3555823256221217412

/-! ## A133950.P3001513956647614628

`A000005(∑[n+1])-A133949(n+1)`
-/

namespace A133950.P3001513956647614628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) - A133949 (n + 1)

end

end A133950.P3001513956647614628

/-! ## A133950.P933634386185540423

`A000005(C(n+2, 2))%(n+3)-A133949(n+1)`
-/

namespace A133950.P933634386185540423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Nat.choose (n + 2) 2)) (n + 3 : ℤ) - A133949 (n + 1)

end

end A133950.P933634386185540423

/-! ## A133950.P3685069332225484684

`A000005(A000217(n+1))%(n+5)-A133949(n+1)`
-/

namespace A133950.P3685069332225484684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000217 (n + 1)).toNat) (n + 5 : ℤ) - A133949 (n + 1)

end

end A133950.P3685069332225484684

/-! ## A133950.P4083437965738648795

`A320111(A257942(n))-A133949(n+1)`
-/

namespace A133950.P4083437965738648795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257942 n).toNat - A133949 (n + 1)

end

end A133950.P4083437965738648795

/-! ## A133950.P17578921564971469485

`A132881(∑[n+1])`
-/

namespace A133950.P17578921564971469485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133950.P17578921564971469485

/-! ## A133950.P14295064448547648925

`A063440(n+1)-A132747(∑[n+1])`
-/

namespace A133950.P14295064448547648925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1) - A132747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133950.P14295064448547648925

/-! ## A133950.P17807403055358306929

`A000005(∑[n+1])-A132747(∑[n+1])`
-/

namespace A133950.P17807403055358306929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) - A132747 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A133950.P17807403055358306929

/-!
# A133951: a(n) is the number of "non-isolated divisors" of n!. A positive divisor k of n is non-isolated if either k-1 or k+1 also divides n.

The programs for A133951, there is no canonical definition to state claims against.
-/

/-! ## A133951.P131195626689468300

`A027423(n+1)-A133952(n+1)`
-/

namespace A133951.P131195626689468300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A133952 (n + 1)

end

end A133951.P131195626689468300

/-! ## A133951.P1335482522561548077

`∑[A038024(n+1)]-A133952(n+1)`
-/

namespace A133951.P1335482522561548077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133952 (n + 1)

end

end A133951.P1335482522561548077

/-! ## A133951.P6929021407848472939

`A048656(n+1)+A048657(n+1)-A133952(n+1)`
-/

namespace A133951.P6929021407848472939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) + (A048657 (n + 1) - A133952 (n + 1))

end

end A133951.P6929021407848472939

/-!
# A133952: a(n) = the number of "isolated divisors" of n!. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133952, there is no canonical definition to state claims against.
-/

/-! ## A133952.P18096441077793401931

`A027423(n+1)-A133951(n+1)`
-/

namespace A133952.P18096441077793401931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A133951 (n + 1)

end

end A133952.P18096441077793401931

/-! ## A133952.P15174912853369070194

`∑[A038024(n+1)]-A133951(n+1)`
-/

namespace A133952.P15174912853369070194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133951 (n + 1)

end

end A133952.P15174912853369070194

/-! ## A133952.P4311039956059413017

`A048656(n+1)+A048657(n+1)-A133951(n+1)`
-/

namespace A133952.P4311039956059413017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) + (A048657 (n + 1) - A133951 (n + 1))

end

end A133952.P4311039956059413017

/-!
# A133953: Expansion of 2*x*(1+x)*(1-2*x)/((1-x)^2*(1-2*x-x^2)).

The programs for A133953, the canonical program `A133953.P9458688832534280613` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133953 has offset 1).

The definition of A133953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-2x-4x^2)/(1-4x+4x^2-x^4))` (program `A133953.P9458688832534280613`, by `A133953.P9458688832534280613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133953.P9458688832534280613

`ogf((2-2x-4x^2)/(1-4x+4x^2-x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133953

/-- `ogf((2-2x-4x^2)/(1-4x+4x^2-x^4))` -/
def P9458688832534280613.Spec : Prop :=
  ∀ n, P9458688832534280613.a n = A133953 (n + 1)

theorem P9458688832534280613.correct : P9458688832534280613.Spec := by
  intro n
  simp only [A133953, Nat.add_sub_cancel]

end A133953

/-! ## A133953.P13392165092361151948

`4*a(n-1)-4*a(n-2)+a(n-4)` with `a(0)=2, a(1)=6, a(2)=12, a(3)=24`
-/

namespace A133953.P13392165092361151948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 12, 24] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 4)

end

end A133953.P13392165092361151948

namespace A133953

/-- `4*a(n-1)-4*a(n-2)+a(n-4)` -/
def P13392165092361151948.Spec : Prop :=
  ∀ n, P13392165092361151948.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P16135383813433528662

`∑[a(n-2)+2*(a(n-1)-2)]` with `a(0)=2, a(1)=4`
-/

namespace A133953.P16135383813433528662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P16135383813433528662

namespace A133953

/-- `∑[a(n-2)+2*(a(n-1)-2)]` -/
def P16135383813433528662.Spec : Prop :=
  ∀ n, P16135383813433528662.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P16986596048403804420

`∑[a(n-2)-2*(2-a(n-1))]` with `a(0)=2, a(1)=4`
-/

namespace A133953.P16986596048403804420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) - 2 * (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P16986596048403804420

namespace A133953

/-- `∑[a(n-2)-2*(2-a(n-1))]` -/
def P16986596048403804420.Spec : Prop :=
  ∀ n, P16986596048403804420.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P3853348514247665315

`∑[a(n-1)-4+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=4`
-/

namespace A133953.P3853348514247665315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - 4 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P3853348514247665315

namespace A133953

/-- `∑[a(n-1)-4+a(n-1)+a(n-2)]` -/
def P3853348514247665315.Spec : Prop :=
  ∀ n, P3853348514247665315.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P14823506536998162007

`∑[a(n-1)-(4-a(n-1)-a(n-2))]` with `a(0)=2, a(1)=4`
-/

namespace A133953.P14823506536998162007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - (4 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P14823506536998162007

namespace A133953

/-- `∑[a(n-1)-(4-a(n-1)-a(n-2))]` -/
def P14823506536998162007.Spec : Prop :=
  ∀ n, P14823506536998162007.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P15945480347118248199

`∑[2*A174191(n)]`
-/

namespace A133953.P15945480347118248199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P15945480347118248199

namespace A133953

/-- `∑[2*A174191(n)]` -/
def P15945480347118248199.Spec : Prop :=
  ∀ n, P15945480347118248199.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P5963289137112787218

`2*(A024537(n)+n)`
-/

namespace A133953.P5963289137112787218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024537 n + (n : ℤ))

end

end A133953.P5963289137112787218

namespace A133953

/-- `2*(A024537(n)+n)` -/
def P5963289137112787218.Spec : Prop :=
  ∀ n, P5963289137112787218.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P17061068276807211666

`A182780(n)+2*n`
-/

namespace A133953.P17061068276807211666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n + (2 * n : ℤ)

end

end A133953.P17061068276807211666

namespace A133953

/-- `A182780(n)+2*n` -/
def P17061068276807211666.Spec : Prop :=
  ∀ n, P17061068276807211666.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P9251020205577825308

`∑[Δ[A001333(n)]+2]`
-/

namespace A133953.P9251020205577825308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P9251020205577825308

namespace A133953

/-- `∑[Δ[A001333(n)]+2]` -/
def P9251020205577825308.Spec : Prop :=
  ∀ n, P9251020205577825308.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P5936833639151182141

`∑[Δ[A293004(n)]+2]`
-/

namespace A133953.P5936833639151182141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P5936833639151182141

namespace A133953

/-- `∑[Δ[A293004(n)]+2]` -/
def P5936833639151182141.Spec : Prop :=
  ∀ n, P5936833639151182141.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P8902908666984632856

`A078057(n)+Δ[n²]`
-/

namespace A133953.P8902908666984632856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A133953.P8902908666984632856

namespace A133953

/-- `A078057(n)+Δ[n²]` -/
def P8902908666984632856.Spec : Prop :=
  ∀ n, P8902908666984632856.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P7412220624059546890

`∑[A163271(n+1)+2]`
-/

namespace A133953.P7412220624059546890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P7412220624059546890

namespace A133953

/-- `∑[A163271(n+1)+2]` -/
def P7412220624059546890.Spec : Prop :=
  ∀ n, P7412220624059546890.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P16787283853608541058

`∑[A052542(n)+2]-1`
-/

namespace A133953.P16787283853608541058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A133953.P16787283853608541058

namespace A133953

/-- `∑[A052542(n)+2]-1` -/
def P16787283853608541058.Spec : Prop :=
  ∀ n, P16787283853608541058.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P2096280311990352571

`∑[2*(A000129(n)+1)]`
-/

namespace A133953.P2096280311990352571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000129 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P2096280311990352571

namespace A133953

/-- `∑[2*(A000129(n)+1)]` -/
def P2096280311990352571.Spec : Prop :=
  ∀ n, P2096280311990352571.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P6003746252649939041

`2*(∑[A215928(n)]+n)`
-/

namespace A133953.P6003746252649939041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A133953.P6003746252649939041

namespace A133953

/-- `2*(∑[A215928(n)]+n)` -/
def P6003746252649939041.Spec : Prop :=
  ∀ n, P6003746252649939041.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P12076676335882653811

`2*(Δ[A100131(n)]+n)`
-/

namespace A133953.P12076676335882653811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + (n : ℤ))

end

end A133953.P12076676335882653811

namespace A133953

/-- `2*(Δ[A100131(n)]+n)` -/
def P12076676335882653811.Spec : Prop :=
  ∀ n, P12076676335882653811.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P12616227370334924251

`2*(A171842(n+1)+n)`
-/

namespace A133953.P12616227370334924251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171842 (n + 1) + (n : ℤ))

end

end A133953.P12616227370334924251

namespace A133953

/-- `2*(A171842(n+1)+n)` -/
def P12616227370334924251.Spec : Prop :=
  ∀ n, P12616227370334924251.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P5312097278517596170

`∑[Δ[A119016(2*n)]+2]`
-/

namespace A133953.P5312097278517596170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133953.P5312097278517596170

namespace A133953

/-- `∑[Δ[A119016(2*n)]+2]` -/
def P5312097278517596170.Spec : Prop :=
  ∀ n, P5312097278517596170.a n = A133953 (n + 1)

end A133953

/-! ## A133953.P17862897887126885589

`A001333(n+1)+Δ[n²]`
-/

namespace A133953.P17862897887126885589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A133953.P17862897887126885589

namespace A133953

/-- `A001333(n+1)+Δ[n²]` -/
def P17862897887126885589.Spec : Prop :=
  ∀ n, P17862897887126885589.a n = A133953 (n + 1)

end A133953

/-!
# A133954: Difference between the numbers of nonnegative evil and odious multiples of p_n less than 2^p_n, where p_n = n-th prime.

The programs for A133954, there is no canonical definition to state claims against.
-/

/-! ## A133954.P15151858335724793905

`A225855(Δ[A007504(n)])%A155632(n)`
-/

namespace A133954.P15151858335724793905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225855 (f1 (n + 1) - f1 n).toNat) (A155632 n)

end

end A133954.P15151858335724793905

/-! ## A133954.P15038816459337162204

`A225855(A000040(n+1))+A000007(n)`
-/

namespace A133954.P15038816459337162204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225855 (A000040 (n + 1)).toNat + A000007 n

end

end A133954.P15038816459337162204

/-! ## A133954.P9686399905239165200

`A225855(A216883(n+1))+A000007(n)`
-/

namespace A133954.P9686399905239165200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225855 (A216883 (n + 1)).toNat + A000007 n

end

end A133954.P9686399905239165200

/-! ## A133954.P1077810399248526912

`A225855(A216884(n+1))+A000007(n)`
-/

namespace A133954.P1077810399248526912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225855 (A216884 (n + 1)).toNat + A000007 n

end

end A133954.P1077810399248526912

/-! ## A133954.P13738047413175244129

`A225855(A216885(n+1))+A000007(n)`
-/

namespace A133954.P13738047413175244129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225855 (A216885 (n + 1)).toNat + A000007 n

end

end A133954.P13738047413175244129

/-!
# A133955: The smallest prime p for which there is an integer m such that the home sequence of m has n terms and terminates at p.

The programs for A133955, there is no canonical definition to state claims against.
-/

/-! ## A133955.P378317505660538038

`A118756(∏{d}[ceil((lcm(2, n)+1+n)/2), #])`
-/

namespace A133955.P378317505660538038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118756 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A133955.P378317505660538038

/-!
# A133956: Complement of A133957.

The programs for A133956, there is no canonical definition to state claims against.
-/

/-! ## A133956.P14101154209099570790

`record[A259277(n+1)]`
-/

namespace A133956.P14101154209099570790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133956.P14101154209099570790

/-! ## A133956.P8867946685305353852

`filter[A259277(n+1), A010051(#)]`
-/

namespace A133956.P8867946685305353852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133956.P8867946685305353852

/-! ## A133956.P2275470771295770024

`filter[A259277(n+1), A080339(#)]`
-/

namespace A133956.P2275470771295770024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A133956.P2275470771295770024

/-! ## A133956.P896991055070667229

`filter[A259277(n+1), A174897(#)]`
-/

namespace A133956.P896991055070667229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A133956.P896991055070667229

/-! ## A133956.P13418839146385160045

`filter[A259277(n+1), A257000(#)]`
-/

namespace A133956.P13418839146385160045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A133956.P13418839146385160045

/-! ## A133956.P9546675067206515934

`filter[A259277(n+1), A283991(#)]`
-/

namespace A133956.P9546675067206515934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A133956.P9546675067206515934

/-! ## A133956.P4074342932074172622

`filter[A259277(n+1), A294905(#)]`
-/

namespace A133956.P4074342932074172622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A133956.P4074342932074172622

/-! ## A133956.P9866544939025863428

`filter[A259277(n+1), A353787(#)]`
-/

namespace A133956.P9866544939025863428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A133956.P9866544939025863428

/-! ## A133956.P11969309041480104239

`filter[A259277(n+1), A353817(#)]`
-/

namespace A133956.P11969309041480104239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A133956.P11969309041480104239

/-! ## A133956.P8377626753285934609

`filter[A259277(n+1), A358751(#)]`
-/

namespace A133956.P8377626753285934609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A133956.P8377626753285934609

/-!
# A133957: Form the list of home primes A037274(c) for c composite, and sort into increasing order.

The programs for A133957, there is no canonical definition to state claims against.
-/

/-! ## A133957.P17096139505331031396

`∪[A133958(n+1), A133980(n+1)]`
-/

namespace A133957.P17096139505331031396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133957.P17096139505331031396

/-!
# A133958: Home primes whose homeliness is 2.

The programs for A133958, there is no canonical definition to state claims against.
-/

/-! ## A133958.P1599188528693080423

`A133957(∑[A193474(2*(n+1))+1])`
-/

namespace A133958.P1599188528693080423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133957 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133958.P1599188528693080423

/-! ## A133958.P14369640025338183534

`A133957(n+4)%A001358(A130811(n+5))`
-/

namespace A133958.P14369640025338183534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133957 (n + 4)) (A001358 (A130811 (n + 5)).toNat)

end

end A133958.P14369640025338183534

/-!
# A133959: Home primes whose homeliness is greater than 2.

The programs for A133959, there is no canonical definition to state claims against.
-/

/-! ## A133959.P17841855073455594667

`∪[A133960(n+1), A133961(n+1)]`
-/

namespace A133959.P17841855073455594667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133959.P17841855073455594667

/-! ## A133959.P13595190755304389364

`A133960(n+1)-A004198(A049464(n))`
-/

namespace A133959.P13595190755304389364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133960 (n + 1) - A004198 (A049464 n).toNat

end

end A133959.P13595190755304389364

/-!
# A133960: Home primes whose homeliness is 3.

The programs for A133960, there is no canonical definition to state claims against.
-/

/-! ## A133960.P1051389577959841536

`A133959(lt[A324750(n), A300249(n+1)])`
-/

namespace A133960.P1051389577959841536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133960.P1051389577959841536

/-! ## A133960.P10311971271044182255

`A133959(lt[A085629(n+1), A226627(n+1)])`
-/

namespace A133960.P10311971271044182255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133960.P10311971271044182255

/-! ## A133960.P13677330629252033675

`A133959(A133811(n+1)^A133880(n))`
-/

namespace A133960.P13677330629252033675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133959 (SequenceMachineLib.roundAway ((A133811 (n + 1) : ℚ) ^ (A133880 n : ℤ))).toNat

end

end A133960.P13677330629252033675

/-! ## A133960.P7544502482251299400

`A133959(C(A133811(n+1), A133880(n)))`
-/

namespace A133960.P7544502482251299400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133959 (Nat.choose (A133811 (n + 1)).toNat (A133880 n).toNat)

end

end A133960.P7544502482251299400

/-! ## A133960.P12318910002638416508

`A133959(A133880(n)²*A133811(n+1))`
-/

namespace A133960.P12318910002638416508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133959 (A133880 n ^ 2 * A133811 (n + 1)).toNat

end

end A133960.P12318910002638416508

/-!
# A133961: Home primes whose homeliness is greater than 3.

The programs for A133961, there is no canonical definition to state claims against.
-/

/-! ## A133961.P3609762021176832509

`∪[A133962(n+1), A133963(n+1)]`
-/

namespace A133961.P3609762021176832509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133961.P3609762021176832509

/-! ## A133961.P4604434373345327644

`∪[A133962(n+1), A133964(n+1)]%A133968(3*n+2)`
-/

namespace A133961.P4604434373345327644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133964 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133968 (3 * n + 2))

end

end A133961.P4604434373345327644

/-! ## A133961.P16121791443491398755

`∪[A133964(n+1), A133962(n+1)]%A133967(3*n+5)`
-/

namespace A133961.P16121791443491398755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133967 (3 * n + 5))

end

end A133961.P16121791443491398755

/-!
# A133962: Home primes whose homeliness is 4.

The programs for A133962, there is no canonical definition to state claims against.
-/

/-! ## A133962.P1875108978070786869

`A133961(A162016(n+1))`
-/

namespace A133962.P1875108978070786869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133961 (A162016 (n + 1)).toNat

end

end A133962.P1875108978070786869

/-! ## A133962.P13672902223700123162

`A133961(∪[A133999(3*n+5), A115762(n+1)])`
-/

namespace A133962.P13672902223700123162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133999 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115762 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A133962.P13672902223700123162

/-!
# A133963: Home primes whose homeliness is greater than 4.

The programs for A133963, there is no canonical definition to state claims against.
-/

/-! ## A133963.P8635540735889827241

`∪[A133964(n+1), A133965(n+1)]`
-/

namespace A133963.P8635540735889827241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133963.P8635540735889827241

/-! ## A133963.P5884682876635515573

`A133961(A359071(n+2)+A064989(n+1))`
-/

namespace A133963.P5884682876635515573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133961 (A359071 (n + 2) + A064989 (n + 1)).toNat

end

end A133963.P5884682876635515573

/-!
# A133964: Home primes whose homeliness is 5.

The programs for A133964, there is no canonical definition to state claims against.
-/

/-! ## A133964.P10177221675331454035

`A133963(record[A046951(n+1)])`
-/

namespace A133964.P10177221675331454035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133964.P10177221675331454035

/-! ## A133964.P7025616361743451450

`A133963(record[A339491(n+1)])`
-/

namespace A133964.P7025616361743451450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133964.P7025616361743451450

/-! ## A133964.P16129255950635186063

`A133963(record[A355302(n+1)])`
-/

namespace A133964.P16129255950635186063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133964.P16129255950635186063

/-! ## A133964.P8690569099388283801

`A133963(∑[A075402(n+1)!])`
-/

namespace A133964.P8690569099388283801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A075402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133964.P8690569099388283801

/-!
# A133965: Home primes whose homeliness is greater than 5.

The programs for A133965, there is no canonical definition to state claims against.
-/

/-! ## A133965.P12513040236406045485

`∪[A133966(n+1), A133967(n+1)]`
-/

namespace A133965.P12513040236406045485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133965.P12513040236406045485

/-! ## A133965.P1201620977803953196

`A133963(p?[A329391(n)])`
-/

namespace A133965.P1201620977803953196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133965.P1201620977803953196

/-!
# A133967: Home primes whose homeliness is greater than 6.

The programs for A133967, there is no canonical definition to state claims against.
-/

/-! ## A133967.P6280822475631871204

`∪[A133968(n+1), A133969(n+1)]`
-/

namespace A133967.P6280822475631871204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133967.P6280822475631871204

/-! ## A133967.P10532515710808970899

`∪[A133968(n+1), A133970(n+1)]%A133968(3*n+2)`
-/

namespace A133967.P10532515710808970899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133968 (3 * n + 2))

end

end A133967.P10532515710808970899

/-! ## A133967.P16809266492195225903

`A133965(A056804(n+1)+A001263(n+1))`
-/

namespace A133967.P16809266492195225903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133965 (A056804 (n + 1) + A001263 (n + 1)).toNat

end

end A133967.P16809266492195225903

/-!
# A133968: Home primes whose homeliness is 7.

The programs for A133968, there is no canonical definition to state claims against.
-/

/-! ## A133968.P8094225606217645900

`p?[A133985(A133983(n+1))+A133967(n+1)]`
-/

namespace A133968.P8094225606217645900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 (A133983 (n + 1)).toNat + A133967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133968.P8094225606217645900

/-! ## A133968.P6605132205506894668

`A133967(A133956(n+1)+A012123(n))`
-/

namespace A133968.P6605132205506894668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133967 (A133956 (n + 1) + A012123 n).toNat

end

end A133968.P6605132205506894668

/-!
# A133969: Home primes whose homeliness is greater than 7.

The programs for A133969, there is no canonical definition to state claims against.
-/

/-! ## A133969.P5486912807517699910

`∪[A133970(n+1), A133971(n+1)]`
-/

namespace A133969.P5486912807517699910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133969.P5486912807517699910

/-!
# A133970: Home primes whose homeliness is 8.

The programs for A133970, there is no canonical definition to state claims against.
-/

/-! ## A133970.P14871573085266733088

`A133969(A233271(n)+A146808(n+1))`
-/

namespace A133970.P14871573085266733088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133969 (A233271 n + A146808 (n + 1)).toNat

end

end A133970.P14871573085266733088

/-! ## A133970.P2206484707303054676

`A133969(A233271(n)+A147232(n+1))`
-/

namespace A133970.P2206484707303054676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133969 (A233271 n + A147232 (n + 1)).toNat

end

end A133970.P2206484707303054676

/-!
# A133971: Home primes whose homeliness is greater than 8.

The programs for A133971, there is no canonical definition to state claims against.
-/

/-! ## A133971.P9601874453992320473

`∪[A133972(n+1), A133973(n+1)]`
-/

namespace A133971.P9601874453992320473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133971.P9601874453992320473

/-! ## A133971.P3755100053382150251

`∪[A133972(n+1), A133974(n+1)]%A133978(n+1)`
-/

namespace A133971.P3755100053382150251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133974 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A133978 (n + 1))

end

end A133971.P3755100053382150251

/-!
# A133972: Home primes whose homeliness is 9.

The programs for A133972, there is no canonical definition to state claims against.
-/

/-! ## A133972.P11624387572800054838

`A133971(A355547(n+2))`
-/

namespace A133972.P11624387572800054838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133971 (A355547 (n + 2)).toNat

end

end A133972.P11624387572800054838

/-!
# A133973: Home primes whose homeliness is greater than 9.

The programs for A133973, there is no canonical definition to state claims against.
-/

/-! ## A133973.P11741156484889535609

`∪[A133974(n+1), A133975(n+1)]`
-/

namespace A133973.P11741156484889535609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133973.P11741156484889535609

/-!
# A133974: Home primes whose homeliness is 10.

The programs for A133974, there is no canonical definition to state claims against.
-/

/-! ## A133974.P1314728142987070737

`A133973(A199191(n+1)-1)`
-/

namespace A133974.P1314728142987070737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133973 (A199191 (n + 1) - 1).toNat

end

end A133974.P1314728142987070737

/-! ## A133974.P14919328784085352340

`p?[or(A078391(n), A133973(n+1))]`
-/

namespace A133974.P14919328784085352340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078391 n) (A133973 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133974.P14919328784085352340

/-! ## A133974.P2484859787524827662

`A133973(∑[(A006530(n+1)-n)²])`
-/

namespace A133974.P2484859787524827662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133974.P2484859787524827662

/-!
# A133975: Home primes whose homeliness is greater than 10.

The programs for A133975, there is no canonical definition to state claims against.
-/

/-! ## A133975.P8413648808714368101

`∪[A133976(n+1), A133977(n+1)]`
-/

namespace A133975.P8413648808714368101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133975.P8413648808714368101

/-!
# A133976: Home primes whose homeliness is 11.

The programs for A133976, there is no canonical definition to state claims against.
-/

/-! ## A133976.P5269497243554180039

`A133975(A174706(n+1)+A108910(n+1))`
-/

namespace A133976.P5269497243554180039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133975 (A174706 (n + 1) + A108910 (n + 1)).toNat

end

end A133976.P5269497243554180039

/-!
# A133977: Home primes whose homeliness is greater than 11.

The programs for A133977, there is no canonical definition to state claims against.
-/

/-! ## A133977.P191298366524434926

`∪[A133978(n+1), A133979(n+1)]`
-/

namespace A133977.P191298366524434926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133977.P191298366524434926

/-! ## A133977.P11168750305287509034

`A133975(∑[∑[A259876(n)]])`
-/

namespace A133977.P11168750305287509034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133977.P11168750305287509034

/-!
# A133978: Home primes whose homeliness is 12.

The programs for A133978, there is no canonical definition to state claims against.
-/

/-! ## A133978.P12209537164939038437

`A133975(A120252(n+1))`
-/

namespace A133978.P12209537164939038437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133975 (A120252 (n + 1)).toNat

end

end A133978.P12209537164939038437

/-!
# A133979: Home primes whose homeliness is greater than 12.

The programs for A133979, there is no canonical definition to state claims against.
-/

/-! ## A133979.P14132446144364624705

`A133977(A256458(n+1))`
-/

namespace A133979.P14132446144364624705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133977 (A256458 (n + 1)).toNat

end

end A133979.P14132446144364624705

/-!
# A133980: Home primes of semiprimes (A001358).

The programs for A133980, there is no canonical definition to state claims against.
-/

/-! ## A133980.P10594204754605410206

`∪[A165243(n+1), A165292(n+1)]%A327915(3*n+5)`
-/

namespace A133980.P10594204754605410206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A327915 (3 * n + 5))

end

end A133980.P10594204754605410206

/-! ## A133980.P12337910712020567018

`A133957(C(A088881(n), A275043(n)))`
-/

namespace A133980.P12337910712020567018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133957 (Nat.choose (A088881 n).toNat (A275043 n).toNat)

end

end A133980.P12337910712020567018

/-! ## A133980.P15077005528576545857

`A133957(A275043(n)²*A088881(n))`
-/

namespace A133980.P15077005528576545857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133957 (A275043 n ^ 2 * A088881 n).toNat

end

end A133980.P15077005528576545857

/-!
# A133981: Triangle read by rows: A000012 * A127701 + A127701 * A000012 - A000012 as infinite lower triangular matrices.

The programs for A133981, the canonical program `A133981.P4660398222137622557` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133981 has offset 1).

The definition of A133981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133981.P4660398222137622557

`A108872(n+1)-A154990(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133981

/-- `A108872(n+1)-A154990(n+1)` -/
def P4660398222137622557.Spec : Prop :=
  ∀ n, P4660398222137622557.a n = A133981 (n + 1)

theorem P4660398222137622557.correct : P4660398222137622557.Spec := by
  intro n
  simp only [A133981, Nat.add_sub_cancel]

end A133981

/-! ## A133981.P8643813476937079564

`A002262(n)-A154990(n+1)+comp[∑[n]]-n`
-/

namespace A133981.P8643813476937079564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A154990 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A133981.P8643813476937079564

namespace A133981

/-- `A002262(n)-A154990(n+1)+comp[∑[n]]-n` -/
def P8643813476937079564.Spec : Prop :=
  ∀ n, P8643813476937079564.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P5175124791242269843

`A094727(n+1)+A000038(A158897(n+1))`
-/

namespace A133981.P5175124791242269843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A000038 (A158897 (n + 1)).toNat

end

end A133981.P5175124791242269843

namespace A133981

/-- `A094727(n+1)+A000038(A158897(n+1))` -/
def P5175124791242269843.Spec : Prop :=
  ∀ n, P5175124791242269843.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P297785712278073535

`A094727(n+1)+A008472(A059268(n+1))`
-/

namespace A133981.P297785712278073535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A008472 (A059268 (n + 1)).toNat

end

end A133981.P297785712278073535

namespace A133981

/-- `A094727(n+1)+A008472(A059268(n+1))` -/
def P297785712278073535.Spec : Prop :=
  ∀ n, P297785712278073535.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P2894561964116888966

`A108872(n+1)+A033999(A059268(n+1))`
-/

namespace A133981.P2894561964116888966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + A033999 (A059268 (n + 1)).toNat

end

end A133981.P2894561964116888966

namespace A133981

/-- `A108872(n+1)+A033999(A059268(n+1))` -/
def P2894561964116888966.Spec : Prop :=
  ∀ n, P2894561964116888966.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P7640260443479356857

`A108872(n+1)+A033999(A130321(n))`
-/

namespace A133981.P7640260443479356857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + A033999 (A130321 n).toNat

end

end A133981.P7640260443479356857

namespace A133981

/-- `A108872(n+1)+A033999(A130321(n))` -/
def P7640260443479356857.Spec : Prop :=
  ∀ n, P7640260443479356857.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P13589837129163382868

`A122553(A089840(n))+A051162(n)`
-/

namespace A133981.P13589837129163382868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A089840 n).toNat + A051162 n

end

end A133981.P13589837129163382868

namespace A133981

/-- `A122553(A089840(n))+A051162(n)` -/
def P13589837129163382868.Spec : Prop :=
  ∀ n, P13589837129163382868.a n = A133981 (n + 1)

end A133981

/-! ## A133981.P16135634751321690193

`A051162(n)+A020639(A140303(n))`
-/

namespace A133981.P16135634751321690193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A020639 (A140303 n).toNat

end

end A133981.P16135634751321690193

namespace A133981

/-- `A051162(n)+A020639(A140303(n))` -/
def P16135634751321690193.Spec : Prop :=
  ∀ n, P16135634751321690193.a n = A133981 (n + 1)

end A133981

/-!
# A133983: Number of nonisomorphic n-element self-dual posets (or partially ordered sets).

The programs for A133983, there is no canonical definition to state claims against.
-/

/-! ## A133983.P10496749374572552484

`A179182(record[A176120(n)])`
-/

namespace A133983.P10496749374572552484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133983.P10496749374572552484

/-! ## A133983.P1753197867017238059

`A179182(A056953(n+1))`
-/

namespace A133983.P1753197867017238059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (A056953 (n + 1)).toNat

end

end A133983.P1753197867017238059

/-!
# A133984: E.g.f. satisfies: A(x) = x*(tan(exp(A(x))-1)+1).

The programs for A133984, there is no canonical definition to state claims against.
-/

/-! ## A133984.P4426200404440322102

`exp(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=72, a(5)=845`
-/

namespace A133984.P4426200404440322102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2, 9, 72, 845] fun n a =>
  Real.exp (a (n - 1))

end

end A133984.P4426200404440322102

/-! ## A133984.P5239157306530797233

`A163234(A000045(∑[n]))`
-/

namespace A133984.P5239157306530797233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A000045 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A133984.P5239157306530797233

/-!
# A133985: Expansion of f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A133985, the canonical program `A133985.P8073439026630697214` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133985 has offset 0).

The definition of A133985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133985.P8073439026630697214

`(-1)^n*A080995(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133985

/-- `(-1)^n*A080995(n)` -/
def P8073439026630697214.Spec : Prop :=
  ∀ n, P8073439026630697214.a n = A133985 n

theorem P8073439026630697214.correct : P8073439026630697214.Spec := by
  intro n
  simp only [A133985]

end A133985

/-! ## A133985.P3411206342368323374

`(-1)^n*char[∑[gcd(n, ∑[n])]]`
-/

namespace A133985.P3411206342368323374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133985.P3411206342368323374

namespace A133985

/-- `(-1)^n*char[∑[gcd(n, ∑[n])]]` -/
def P3411206342368323374.Spec : Prop :=
  ∀ n, P3411206342368323374.a n = A133985 n

end A133985

/-! ## A133985.P14388843165460903744

`A081360(n)%2`
-/

namespace A133985.P14388843165460903744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081360 n) 2

end

end A133985.P14388843165460903744

namespace A133985

/-- `A081360(n)%2` -/
def P14388843165460903744.Spec : Prop :=
  ∀ n, P14388843165460903744.a n = A133985 n

end A133985

/-! ## A133985.P15045050085058984377

`A293072(n)%2`
-/

namespace A133985.P15045050085058984377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293072 n) 2

end

end A133985.P15045050085058984377

namespace A133985

/-- `A293072(n)%2` -/
def P15045050085058984377.Spec : Prop :=
  ∀ n, P15045050085058984377.a n = A133985 n

end A133985

/-! ## A133985.P17113006762345886394

`(-A010815(n)²)^n`
-/

namespace A133985.P17113006762345886394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(A010815 n ^ 2)) ^ n

end

end A133985.P17113006762345886394

namespace A133985

/-- `(-A010815(n)²)^n` -/
def P17113006762345886394.Spec : Prop :=
  ∀ n, P17113006762345886394.a n = A133985 n

end A133985

/-! ## A133985.P14099743823493001338

`(-A121373(n)²)^n`
-/

namespace A133985.P14099743823493001338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(A121373 n ^ 2)) ^ n

end

end A133985.P14099743823493001338

namespace A133985

/-- `(-A121373(n)²)^n` -/
def P14099743823493001338.Spec : Prop :=
  ∀ n, P14099743823493001338.a n = A133985 n

end A133985

/-! ## A133985.P1824309746617048108

`A010815(n)*A121373(n)`
-/

namespace A133985.P1824309746617048108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A121373 n

end

end A133985.P1824309746617048108

namespace A133985

/-- `A010815(n)*A121373(n)` -/
def P1824309746617048108.Spec : Prop :=
  ∀ n, P1824309746617048108.a n = A133985 n

end A133985

/-! ## A133985.P1802760191928151976

`A206958(n)*A206959(n)`
-/

namespace A133985.P1802760191928151976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 n * A206959 n

end

end A133985.P1802760191928151976

namespace A133985

/-- `A206958(n)*A206959(n)` -/
def P1802760191928151976.Spec : Prop :=
  ∀ n, P1802760191928151976.a n = A133985 n

end A133985

/-! ## A133985.P13916402615936244673

`A080995(n)/A033999(n)`
-/

namespace A133985.P13916402615936244673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080995 n : ℚ) / (A033999 n : ℚ)

end

end A133985.P13916402615936244673

namespace A133985

/-- `A080995(n)/A033999(n)` -/
def P13916402615936244673.Spec : Prop :=
  ∀ n, P13916402615936244673.a n = (A133985 n : ℚ)

end A133985

/-! ## A133985.P17175589280766896659

`A010815(n)²*A033999(n)`
-/

namespace A133985.P17175589280766896659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2 * A033999 n

end

end A133985.P17175589280766896659

namespace A133985

/-- `A010815(n)²*A033999(n)` -/
def P17175589280766896659.Spec : Prop :=
  ∀ n, P17175589280766896659.a n = A133985 n

end A133985

/-! ## A133985.P5673982079068470769

`A121373(n)²*A033999(n)`
-/

namespace A133985.P5673982079068470769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n ^ 2 * A033999 n

end

end A133985.P5673982079068470769

namespace A133985

/-- `A121373(n)²*A033999(n)` -/
def P5673982079068470769.Spec : Prop :=
  ∀ n, P5673982079068470769.a n = A133985 n

end A133985

/-! ## A133985.P4146743819023938669

`A199918(n)²*A033999(n)`
-/

namespace A133985.P4146743819023938669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199918 n ^ 2 * A033999 n

end

end A133985.P4146743819023938669

namespace A133985

/-- `A199918(n)²*A033999(n)` -/
def P4146743819023938669.Spec : Prop :=
  ∀ n, P4146743819023938669.a n = A133985 n

end A133985

/-! ## A133985.P10301626001615404123

`A206958(n)²*A033999(n)`
-/

namespace A133985.P10301626001615404123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 n ^ 2 * A033999 n

end

end A133985.P10301626001615404123

namespace A133985

/-- `A206958(n)²*A033999(n)` -/
def P10301626001615404123.Spec : Prop :=
  ∀ n, P10301626001615404123.a n = A133985 n

end A133985

/-! ## A133985.P663092166605878563

`A206959(n)²*A033999(n)`
-/

namespace A133985.P663092166605878563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206959 n ^ 2 * A033999 n

end

end A133985.P663092166605878563

namespace A133985

/-- `A206959(n)²*A033999(n)` -/
def P663092166605878563.Spec : Prop :=
  ∀ n, P663092166605878563.a n = A133985 n

end A133985

/-! ## A133985.P15084540502296086343

`2*A247223(n)-A121373(n)`
-/

namespace A133985.P15084540502296086343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247223 n - A121373 n

end

end A133985.P15084540502296086343

namespace A133985

/-- `2*A247223(n)-A121373(n)` -/
def P15084540502296086343.Spec : Prop :=
  ∀ n, P15084540502296086343.a n = A133985 n

end A133985

/-! ## A133985.P4830320113480117772

`((A000005((A121373(n)^(2*n)+2)²+1)+2)%3-1)^n`
-/

namespace A133985.P4830320113480117772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000005 ((A121373 n ^ (2 * n) + 2) ^ 2 + 1).toNat + 2) 3 - 1) ^ n

end

end A133985.P4830320113480117772

namespace A133985

/-- `((A000005((A121373(n)^(2*n)+2)²+1)+2)%3-1)^n` -/
def P4830320113480117772.Spec : Prop :=
  ∀ n, P4830320113480117772.a n = A133985 n

end A133985

/-! ## A133985.P15394235602393444608

`A000035(A010815(n)+n)-A000035(n)`
-/

namespace A133985.P15394235602393444608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010815 n + (n : ℤ)).toNat - A000035 n

end

end A133985.P15394235602393444608

namespace A133985

/-- `A000035(A010815(n)+n)-A000035(n)` -/
def P15394235602393444608.Spec : Prop :=
  ∀ n, P15394235602393444608.a n = A133985 n

end A133985

/-! ## A133985.P10997585658590652374

`A000034(A080995(n)+n)-A000034(n)`
-/

namespace A133985.P10997585658590652374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A080995 n + (n : ℤ)).toNat - A000034 n

end

end A133985.P10997585658590652374

namespace A133985

/-- `A000034(A080995(n)+n)-A000034(n)` -/
def P10997585658590652374.Spec : Prop :=
  ∀ n, P10997585658590652374.a n = A133985 n

end A133985

/-! ## A133985.P18417869713920949539

`A000035(A080995(n)+n)-A000035(n)`
-/

namespace A133985.P18417869713920949539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080995 n + (n : ℤ)).toNat - A000035 n

end

end A133985.P18417869713920949539

namespace A133985

/-- `A000035(A080995(n)+n)-A000035(n)` -/
def P18417869713920949539.Spec : Prop :=
  ∀ n, P18417869713920949539.a n = A133985 n

end A133985

/-! ## A133985.P14467620649347777271

`A010815(n)²*ratio[A057077(n)]`
-/

namespace A133985.P14467620649347777271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n ^ 2 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A133985.P14467620649347777271

namespace A133985

/-- `A010815(n)²*ratio[A057077(n)]` -/
def P14467620649347777271.Spec : Prop :=
  ∀ n, P14467620649347777271.a n = (A133985 n : ℚ)

end A133985

/-!
# A133986: Consecutive prime pairs which after concatenation are prime (ascending or descending order).

The programs for A133986, there is no canonical definition to state claims against.
-/

/-! ## A133986.P3154982370217781276

`A020639(∪[A030461(n+1), A088784(n+1)])`
-/

namespace A133986.P3154982370217781276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A133986.P3154982370217781276

/-!
# A133987: a(n) = A005704( (3^n + (-1)^n - 2)/4 ), where A005704(n) = number of partitions of 3n into powers of 3.

The programs for A133987, the canonical program `A133987.P12300878041056720244` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133987 has offset 0).

The definition of A133987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133987.P12300878041056720244

`A005704((3^n+(-1)^n-2)/4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133987

/-- `A005704((3^n+(-1)^n-2)/4)` -/
def P12300878041056720244.Spec : Prop :=
  ∀ n, P12300878041056720244.a n = A133987 n

theorem P12300878041056720244.correct : P12300878041056720244.Spec := by
  intro n
  simp only [A133987]

end A133987

/-! ## A133987.P9863054562030629942

`A254296(A060925(n+1))`
-/

namespace A133987.P9863054562030629942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A060925 (n + 1)).toNat

end

end A133987.P9863054562030629942

namespace A133987

/-- `A254296(A060925(n+1))` -/
def P9863054562030629942.Spec : Prop :=
  ∀ n, P9863054562030629942.a n = A133987 n

end A133987

/-! ## A133987.P9879971902006930969

`A254296(A081250(n+1))`
-/

namespace A133987.P9879971902006930969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A081250 (n + 1)).toNat

end

end A133987.P9879971902006930969

namespace A133987

/-- `A254296(A081250(n+1))` -/
def P9879971902006930969.Spec : Prop :=
  ∀ n, P9879971902006930969.a n = A133987 n

end A133987

/-! ## A133987.P16499213385097815335

`A254296(A135522(n+1))`
-/

namespace A133987.P16499213385097815335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A135522 (n + 1)).toNat

end

end A133987.P16499213385097815335

namespace A133987

/-- `A254296(A135522(n+1))` -/
def P16499213385097815335.Spec : Prop :=
  ∀ n, P16499213385097815335.a n = A133987 n

end A133987

/-! ## A133987.P9868533253791043672

`A062051(floor(3^(n+1)/4))`
-/

namespace A133987.P9868533253791043672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 ⌊(3 ^ (n + 1) : ℚ) / 4⌋.toNat

end

end A133987.P9868533253791043672

namespace A133987

/-- `A062051(floor(3^(n+1)/4))` -/
def P9868533253791043672.Spec : Prop :=
  ∀ n, P9868533253791043672.a n = A133987 n

end A133987

/-!
# A133988: Expansion of phi(x) / chi(x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A133988, the canonical program `A133988.P925296802653209893` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133988 has offset 0).

The definition of A133988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133988.P925296802653209893

`(-1)^n*A089812(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133988

/-- `(-1)^n*A089812(n)` -/
def P925296802653209893.Spec : Prop :=
  ∀ n, P925296802653209893.a n = A133988 n

theorem P925296802653209893.correct : P925296802653209893.Spec := by
  intro n
  simp only [A133988]

end A133988

/-! ## A133988.P15103140548327241187

`(xor(n, char[∑[n]])-n)*(-2)^(∑[n]%3)`
-/

namespace A133988.P15103140548327241187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ)) * (-2) ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

end

end A133988.P15103140548327241187

namespace A133988

/-- `(xor(n, char[∑[n]])-n)*(-2)^(∑[n]%3)` -/
def P15103140548327241187.Spec : Prop :=
  ∀ n, P15103140548327241187.a n = A133988 n

end A133988

/-! ## A133988.P798746476821305408

`char[∑[n]]*A057079(n)`
-/

namespace A133988.P798746476821305408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A057079 n

end

end A133988.P798746476821305408

namespace A133988

/-- `char[∑[n]]*A057079(n)` -/
def P798746476821305408.Spec : Prop :=
  ∀ n, P798746476821305408.a n = A133988 n

end A133988

/-! ## A133988.P6979738911457935333

`(char[∑[n]]*A187307(n))%3`
-/

namespace A133988.P6979738911457935333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A187307 n) 3

end

end A133988.P6979738911457935333

namespace A133988

/-- `(char[∑[n]]*A187307(n))%3` -/
def P6979738911457935333.Spec : Prop :=
  ∀ n, P6979738911457935333.a n = A133988 n

end A133988

/-! ## A133988.P6825345192659121714

`C(char[C(n, 2)]+1, 2)*A132954(n)`
-/

namespace A133988.P6825345192659121714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2 : ℤ) * A132954 n

end

end A133988.P6825345192659121714

namespace A133988

/-- `C(char[C(n, 2)]+1, 2)*A132954(n)` -/
def P6825345192659121714.Spec : Prop :=
  ∀ n, P6825345192659121714.a n = A133988 n

end A133988

/-! ## A133988.P10954523963525724073

`A010054(n)*A132954(n)`
-/

namespace A133988.P10954523963525724073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A132954 n

end

end A133988.P10954523963525724073

namespace A133988

/-- `A010054(n)*A132954(n)` -/
def P10954523963525724073.Spec : Prop :=
  ∀ n, P10954523963525724073.a n = A133988 n

end A133988

/-! ## A133988.P2577561170801701890

`A089812(n)*A106459(n)`
-/

namespace A133988.P2577561170801701890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n * A106459 n

end

end A133988.P2577561170801701890

namespace A133988

/-- `A089812(n)*A106459(n)` -/
def P2577561170801701890.Spec : Prop :=
  ∀ n, P2577561170801701890.a n = A133988 n

end A133988

/-! ## A133988.P10881647108031716094

`A089812(n)*A108086(n)`
-/

namespace A133988.P10881647108031716094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n * A108086 n

end

end A133988.P10881647108031716094

namespace A133988

/-- `A089812(n)*A108086(n)` -/
def P10881647108031716094.Spec : Prop :=
  ∀ n, P10881647108031716094.a n = A133988 n

end A133988

/-! ## A133988.P4145967621391250438

`A089812(n)*A130777(n)`
-/

namespace A133988.P4145967621391250438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n * A130777 n

end

end A133988.P4145967621391250438

namespace A133988

/-- `A089812(n)*A130777(n)` -/
def P4145967621391250438.Spec : Prop :=
  ∀ n, P4145967621391250438.a n = A133988 n

end A133988

/-! ## A133988.P13751611497087656372

`A106459(n)*A131713(n)`
-/

namespace A133988.P13751611497087656372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A131713 n

end

end A133988.P13751611497087656372

namespace A133988

/-- `A106459(n)*A131713(n)` -/
def P13751611497087656372.Spec : Prop :=
  ∀ n, P13751611497087656372.a n = A133988 n

end A133988

/-! ## A133988.P3752695136958313863

`A089812(n)/A033999(n)`
-/

namespace A133988.P3752695136958313863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089812 n : ℚ) / (A033999 n : ℚ)

end

end A133988.P3752695136958313863

namespace A133988

/-- `A089812(n)/A033999(n)` -/
def P3752695136958313863.Spec : Prop :=
  ∀ n, P3752695136958313863.a n = (A133988 n : ℚ)

end A133988

/-! ## A133988.P13739403760936072753

`A089799(n)/A087204(n)`
-/

namespace A133988.P13739403760936072753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089799 n : ℚ) / (A087204 n : ℚ)

end

end A133988.P13739403760936072753

namespace A133988

/-- `A089799(n)/A087204(n)` -/
def P13739403760936072753.Spec : Prop :=
  ∀ n, P13739403760936072753.a n = (A133988 n : ℚ)

end A133988

/-! ## A133988.P9305802253420928546

`A106459(n)²*A132954(n)`
-/

namespace A133988.P9305802253420928546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n ^ 2 * A132954 n

end

end A133988.P9305802253420928546

namespace A133988

/-- `A106459(n)²*A132954(n)` -/
def P9305802253420928546.Spec : Prop :=
  ∀ n, P9305802253420928546.a n = A133988 n

end A133988

/-! ## A133988.P3189278239419393473

`A089812(n)²/A057079(n)`
-/

namespace A133988.P3189278239419393473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089812 n ^ 2 : ℚ) / (A057079 n : ℚ)

end

end A133988.P3189278239419393473

namespace A133988

/-- `A089812(n)²/A057079(n)` -/
def P3189278239419393473.Spec : Prop :=
  ∀ n, P3189278239419393473.a n = (A133988 n : ℚ)

end A133988

/-! ## A133988.P1693832344407505765

`A089812(n)²/A132954(n)`
-/

namespace A133988.P1693832344407505765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089812 n ^ 2 : ℚ) / (A132954 n : ℚ)

end

end A133988.P1693832344407505765

namespace A133988

/-- `A089812(n)²/A132954(n)` -/
def P1693832344407505765.Spec : Prop :=
  ∀ n, P1693832344407505765.a n = (A133988 n : ℚ)

end A133988

/-! ## A133988.P16605112091695398871

`A089812(n)*A204172(n+1)`
-/

namespace A133988.P16605112091695398871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n * A204172 (n + 1)

end

end A133988.P16605112091695398871

namespace A133988

/-- `A089812(n)*A204172(n+1)` -/
def P16605112091695398871.Spec : Prop :=
  ∀ n, P16605112091695398871.a n = A133988 n

end A133988

/-! ## A133988.P1724338989401093007

`A132954(A010054(n)+n)-A132954(n)`
-/

namespace A133988.P1724338989401093007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (A010054 n + (n : ℤ)).toNat - A132954 n

end

end A133988.P1724338989401093007

namespace A133988

/-- `A132954(A010054(n)+n)-A132954(n)` -/
def P1724338989401093007.Spec : Prop :=
  ∀ n, P1724338989401093007.a n = A133988 n

end A133988

/-! ## A133988.P11980027625737017428

`A089800(2*n)/A087204(n)`
-/

namespace A133988.P11980027625737017428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089800 (2 * n) : ℚ) / (A087204 n : ℚ)

end

end A133988.P11980027625737017428

namespace A133988

/-- `A089800(2*n)/A087204(n)` -/
def P11980027625737017428.Spec : Prop :=
  ∀ n, P11980027625737017428.a n = (A133988 n : ℚ)

end A133988

/-! ## A133988.P14176576982385077074

`(A133089(n)*A202394(n))%4`
-/

namespace A133988.P14176576982385077074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133089 n * A202394 n) 4

end

end A133988.P14176576982385077074

namespace A133988

/-- `(A133089(n)*A202394(n))%4` -/
def P14176576982385077074.Spec : Prop :=
  ∀ n, P14176576982385077074.a n = A133988 n

end A133988

/-! ## A133988.P4390465719872757324

`A204850(n)/A084930(n)`
-/

namespace A133988.P4390465719872757324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204850 n : ℚ) / (A084930 n : ℚ)

end

end A133988.P4390465719872757324

namespace A133988

/-- `A204850(n)/A084930(n)` -/
def P4390465719872757324.Spec : Prop :=
  ∀ n, P4390465719872757324.a n = (A133988 n : ℚ)

end A133988

/-!
# A133990: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(2^k + n - 1,n).

The programs for A133990, there is no canonical definition to state claims against.
-/

/-! ## A133990.P15524111355682397031

`A005378(A342529(n²))`
-/

namespace A133990.P15524111355682397031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A342529 (n ^ 2)).toNat

end

end A133990.P15524111355682397031

/-!
# A133991: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(2^k+n-1,n).

The programs for A133991, there is no canonical definition to state claims against.
-/

/-! ## A133991.P14337762231180919476

`A163335(A342245(n)-A357410(n))`
-/

namespace A133991.P14337762231180919476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A342245 n - A357410 n).toNat

end

end A133991.P14337762231180919476

/-!
# A133992: a(n) = tau( prime(n)*prime(prime(n)) - 1 ).

The programs for A133992, the canonical program `A133992.P16766147261455074917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133992 has offset 1).

The definition of A133992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073065, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133992.P16766147261455074917

`A000005(A073065(n+1)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133992

/-- `A000005(A073065(n+1)-1)` -/
def P16766147261455074917.Spec : Prop :=
  ∀ n, P16766147261455074917.a n = A133992 (n + 1)

theorem P16766147261455074917.correct : P16766147261455074917.Spec := by
  intro n
  simp only [A133992, Nat.add_sub_cancel]

end A133992

/-! ## A133992.P1834497380782829996

`∏{e}[A033286(A000040(n+1))-1, #+1]`
-/

namespace A133992.P1834497380782829996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A000040 (n + 1)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A133992.P1834497380782829996

namespace A133992

/-- `∏{e}[A033286(A000040(n+1))-1, #+1]` -/
def P1834497380782829996.Spec : Prop :=
  ∀ n, (P1834497380782829996.a n : ℤ) = A133992 (n + 1)

end A133992

/-! ## A133992.P2934009985508987121

`A000005(xor(1, A073065(n+1)))`
-/

namespace A133992.P2934009985508987121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 1 (A073065 (n + 1))).toNat

end

end A133992.P2934009985508987121

namespace A133992

/-- `A000005(xor(1, A073065(n+1)))` -/
def P2934009985508987121.Spec : Prop :=
  ∀ n, P2934009985508987121.a n = A133992 (n + 1)

end A133992

/-! ## A133992.P4062639893781940788

`A000005(A033286(A000040(n+1))-1)`
-/

namespace A133992.P4062639893781940788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033286 (A000040 (n + 1)).toNat - 1).toNat

end

end A133992.P4062639893781940788

namespace A133992

/-- `A000005(A033286(A000040(n+1))-1)` -/
def P4062639893781940788.Spec : Prop :=
  ∀ n, P4062639893781940788.a n = A133992 (n + 1)

end A133992

/-! ## A133992.P8549662210568240811

`A000005(A000040(n+1)*A006450(n+1)-1)`
-/

namespace A133992.P8549662210568240811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) * A006450 (n + 1) - 1).toNat

end

end A133992.P8549662210568240811

namespace A133992

/-- `A000005(A000040(n+1)*A006450(n+1)-1)` -/
def P8549662210568240811.Spec : Prop :=
  ∀ n, P8549662210568240811.a n = A133992 (n + 1)

end A133992

/-!
# A133993: a(n) = a(n-1) + 3*a(n-2) - a(n-3) - 2*a(n-4), n > 3.

The programs for A133993, the canonical program `A133993.P14004164260443838000` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133993 has offset 0).

The definition of A133993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` (program `A133993.P14004164260443838000`, by `A133993.P14004164260443838000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133993.P16062158630688625455

`3*a(n-2)+2*a(n-3)-4` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A133993.P16062158630688625455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 2) + 2 * a (n - 3) - 4

end

end A133993.P16062158630688625455

namespace A133993

/-- `3*a(n-2)+2*a(n-3)-4` -/
def P16062158630688625455.Spec : Prop :=
  ∀ n, P16062158630688625455.a n = A133993 n

end A133993

/-! ## A133993.P14004164260443838000

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133993

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` -/
def P14004164260443838000.Spec : Prop :=
  ∀ n, P14004164260443838000.a n = A133993 n

theorem P14004164260443838000.correct : P14004164260443838000.Spec := by
  intro n
  simp only [A133993]

end A133993

/-! ## A133993.P18413210976027146945

`1+4*2^n/9+(-1)^n*(n/3-4/9)`
-/

namespace A133993.P18413210976027146945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (4 * 2 ^ n : ℚ) / 9 + ((-1) ^ n : ℚ) * ((n : ℚ) / 3 - (4 : ℚ) / 9)

end

end A133993.P18413210976027146945

namespace A133993

/-- `1+4*2^n/9+(-1)^n*(n/3-4/9)` -/
def P18413210976027146945.Spec : Prop :=
  ∀ n, P18413210976027146945.a n = (A133993 n : ℚ)

theorem P18413210976027146945.correct : P18413210976027146945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A133993, Nat.add_sub_cancel, A133993.P18413210976027146945.a, A133993.P14004164260443838000.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A133993, Nat.add_sub_cancel, A133993.P18413210976027146945.a, A133993.P14004164260443838000.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133993

/-! ## A133993.P241094174970814302

`ogf((1+x-2x^2-4x^3)/(1-x-3x^2+x^3+2x^4))`
-/

namespace A133993.P241094174970814302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -4] [1, -1, -3, 1, 2] n

end

end A133993.P241094174970814302

namespace A133993

/-- `ogf((1+x-2x^2-4x^3)/(1-x-3x^2+x^3+2x^4))` -/
def P241094174970814302.Spec : Prop :=
  ∀ n, P241094174970814302.a n = A133993 n

end A133993

/-! ## A133993.P9435656585364185777

`xor(1, a(n-1)+2*(a(n-2)-1))` with `a(0)=1, a(1)=2`
-/

namespace A133993.P9435656585364185777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (a (n - 1) + 2 * (a (n - 2) - 1))

end

end A133993.P9435656585364185777

namespace A133993

/-- `xor(1, a(n-1)+2*(a(n-2)-1))` -/
def P9435656585364185777.Spec : Prop :=
  ∀ n, P9435656585364185777.a n = A133993 n

end A133993

/-! ## A133993.P8654805569935021287

`xor(1, a(n-1)-2*(1-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A133993.P8654805569935021287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (a (n - 1) - 2 * (1 - a (n - 2)))

end

end A133993.P8654805569935021287

namespace A133993

/-- `xor(1, a(n-1)-2*(1-a(n-2)))` -/
def P8654805569935021287.Spec : Prop :=
  ∀ n, P8654805569935021287.a n = A133993 n

end A133993

/-! ## A133993.P298103678108679728

`∑[abs(Δ[A113954(n)])]`
-/

namespace A133993.P298103678108679728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133993.P298103678108679728

namespace A133993

/-- `∑[abs(Δ[A113954(n)])]` -/
def P298103678108679728.Spec : Prop :=
  ∀ n, P298103678108679728.a n = A133993 n

end A133993

/-! ## A133993.P14053977037857868469

`∑[abs(2-∑[A151575(n)])]`
-/

namespace A133993.P14053977037857868469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133993.P14053977037857868469

namespace A133993

/-- `∑[abs(2-∑[A151575(n)])]` -/
def P14053977037857868469.Spec : Prop :=
  ∀ n, P14053977037857868469.a n = A133993 n

end A133993

/-!
# A133994: Irregular array read by rows: n-th row contains (in numerical order) both the positive integers <= n that are divisors of n and those that are coprime to n.

The programs for A133994, the canonical program `A133994.P15079085757915823484` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133994 has offset 1).

The definition of A133994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133994.P15079085757915823484

`A002260(eq[1, A304571(n+1)+1]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133994

/-- `A002260(eq[1, A304571(n+1)+1]+1)` -/
def P15079085757915823484.Spec : Prop :=
  ∀ n, P15079085757915823484.a n = A133994 (n + 1)

theorem P15079085757915823484.correct : P15079085757915823484.Spec := by
  intro n
  simp only [A133994, Nat.add_sub_cancel]

end A133994

/-! ## A133994.P16633935324365224044

`A002260(lt[A054654(n), A113381(n)])`
-/

namespace A133994.P16633935324365224044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133994.P16633935324365224044

namespace A133994

/-- `A002260(lt[A054654(n), A113381(n)])` -/
def P16633935324365224044.Spec : Prop :=
  ∀ n, P16633935324365224044.a n = A133994 (n + 1)

end A133994

/-! ## A133994.P363086737141862377

`A002260(∑[A053164(A238003(n+1))])`
-/

namespace A133994.P363086737141862377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A238003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133994.P363086737141862377

namespace A133994

/-- `A002260(∑[A053164(A238003(n+1))])` -/
def P363086737141862377.Spec : Prop :=
  ∀ n, P363086737141862377.a n = A133994 (n + 1)

end A133994

/-! ## A133994.P12488572262948331395

`A002260(∑[A346418(A027465(n))])`
-/

namespace A133994.P12488572262948331395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (A027465 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133994.P12488572262948331395

namespace A133994

/-- `A002260(∑[A346418(A027465(n))])` -/
def P12488572262948331395.Spec : Prop :=
  ∀ n, P12488572262948331395.a n = A133994 (n + 1)

end A133994

/-! ## A133994.P5988598764981916226

`A002260(record[A008619(n)%A342940(n+2)])`
-/

namespace A133994.P5988598764981916226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) (A342940 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133994.P5988598764981916226

namespace A133994

/-- `A002260(record[A008619(n)%A342940(n+2)])` -/
def P5988598764981916226.Spec : Prop :=
  ∀ n, P5988598764981916226.a n = A133994 (n + 1)

end A133994

/-!
# A133996: a(n) = the smallest positive integer with exactly n positive "non-isolated divisors". A divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n.

The programs for A133996, there is no canonical definition to state claims against.
-/

/-! ## A133996.P13295164407281709728

`A134000(∑[n]+2)`
-/

namespace A133996.P13295164407281709728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134000 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A133996.P13295164407281709728

/-! ## A133996.P9911882751868415999

`record[A134000(n+2)/A174410(n)]`
-/

namespace A133996.P9911882751868415999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134000 (n + 2) : ℚ) / (A174410 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133996.P9911882751868415999

/-! ## A133996.P12031544585396143933

`record[A134000(n+2)/A198060(n)]`
-/

namespace A133996.P12031544585396143933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134000 (n + 2) : ℚ) / (A198060 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133996.P12031544585396143933

/-! ## A133996.P10336406007209038431

`∩[A317089(n+1), A362804(n+1)]`
-/

namespace A133996.P10336406007209038431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133996.P10336406007209038431

/-!
# A133997: a(n) = the smallest positive integer with exactly n positive "isolated divisors". A divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133997, there is no canonical definition to state claims against.
-/

/-! ## A133997.P3966017334338020719

`A304683(A005893(n))+A002944(n+1)`
-/

namespace A133997.P3966017334338020719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304683 (A005893 n).toNat + A002944 (n + 1)

end

end A133997.P3966017334338020719

/-! ## A133997.P1117536746621842019

`A364350(A048720(n)+A048716(3*n+5))`
-/

namespace A133997.P1117536746621842019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A048720 n + A048716 (3 * n + 5)).toNat

end

end A133997.P1117536746621842019

/-!
# A133998: Number of isomers of the soccerball C_60H_n Buckminster fullerene.

The programs for A133998, there is no canonical definition to state claims against.
-/

/-! ## A133998.P18384218964769471585

`A160941(A243945(n)-A243934(n+1))`
-/

namespace A133998.P18384218964769471585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (A243945 n - A243934 (n + 1)).toNat

end

end A133998.P18384218964769471585

/-!
# A133999: a(1) = a(2) = 1; a(n+1) = round( a(n) + sqrt(3)*a(n-1) ).

The programs for A133999, the canonical program `A133999.P8491821705950889966` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133999 has offset 1).

The definition of A133999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133999.P8491821705950889966

`floor(a(n-1)+sqrt(3)*a(n-2)+1/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133999

/-- `floor(a(n-1)+sqrt(3)*a(n-2)+1/2)` -/
def P8491821705950889966.Spec : Prop :=
  ∀ n, P8491821705950889966.a n = A133999 (n + 1)

theorem P8491821705950889966.correct : P8491821705950889966.Spec := by
  intro n
  simp only [A133999, Nat.add_sub_cancel]

end A133999

/-! ## A133999.P9631682460771263754

`A097337(3*a(n-2)+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A133999.P9631682460771263754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097337 (3 * a (n - 2) + 1).toNat + a (n - 1)

end

end A133999.P9631682460771263754

namespace A133999

/-- `A097337(3*a(n-2)+1)+a(n-1)` -/
def P9631682460771263754.Spec : Prop :=
  ∀ n, P9631682460771263754.a n = A133999 (n + 1)

end A133999

/-! ## A133999.P15444968838001987001

`A158943(n+1)+A102681(A001654(n))`
-/

namespace A133999.P15444968838001987001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (n + 1) + A102681 (A001654 n).toNat

end

end A133999.P15444968838001987001

namespace A133999

/-- `A158943(n+1)+A102681(A001654(n))` -/
def P15444968838001987001.Spec : Prop :=
  ∀ n, P15444968838001987001.a n = A133999 (n + 1)

end A133999

/-! ## A133999.P8645822532813858900

`or(A085268(A309863(n)), A158943(n+1))`
-/

namespace A133999.P8645822532813858900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085268 ((A309863 n).toNat + 32)) (A158943 (n + 1))

end

end A133999.P8645822532813858900

namespace A133999

/-- `or(A085268(A309863(n)), A158943(n+1))` -/
def P8645822532813858900.Spec : Prop :=
  ∀ n, P8645822532813858900.a n = A133999 (n + 1)

end A133999

/-! ## A133999.P4972291400540716648

`or(A158943(n+1), A307597(A178963(n)))`
-/

namespace A133999.P4972291400540716648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158943 (n + 1)) (A307597 (A178963 n).toNat)

end

end A133999.P4972291400540716648

namespace A133999

/-- `or(A158943(n+1), A307597(A178963(n)))` -/
def P4972291400540716648.Spec : Prop :=
  ∀ n, P4972291400540716648.a n = A133999 (n + 1)

end A133999

