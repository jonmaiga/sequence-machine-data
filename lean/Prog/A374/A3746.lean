import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A374601: Defined by: Sum_{i=1..n} i*a(i)/n^i = 1, n>=1.

The programs for A374601, there is no canonical definition to state claims against.
-/

/-! ## A374601.P15264982435491142174

`A374562(n+1)/(n+1)`
-/

namespace A374601.P15264982435491142174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374562 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A374601.P15264982435491142174

/-! ## A374601.P2387646068092479483

`A394530(∑[n+1]+1)`
-/

namespace A374601.P2387646068092479483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374601.P2387646068092479483

/-!
# A374603: Numerators of sorted rationals r(n) of the form k/d, where d=(i+1)^m, 1 <= m < bigomega(k), bigomega(k) == 0 (mod i), bigomega(d) == 0 (mod i) and gcd(k, prime(j)) = 1 for all j <= i.

The programs for A374603, there is no canonical definition to state claims against.
-/

/-! ## A374603.P6253323734871905325

`A112932(lt[A120327(n+1), A112932(n)])`
-/

namespace A374603.P6253323734871905325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374603.P6253323734871905325

/-! ## A374603.P217945839144830206

`A112932(lt[A000720(3*(n+1)), A112932(n)])`
-/

namespace A374603.P217945839144830206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374603.P217945839144830206

/-!
# A374604: Denominators of sorted rationals r(n) of the form k/d, where d=(i+1)^m, 1 <= m < bigomega(k), bigomega(k) == 0 (mod i), bigomega(d) == 0 (mod i) and gcd(k, prime(j)) = 1 for all j <= i.

The programs for A374604, there is no canonical definition to state claims against.
-/

/-! ## A374604.P7756127027203537186

`A172305(gcd(A206960(2*(n+2)), A304370(n)))`
-/

namespace A374604.P7756127027203537186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 (Int.gcd (A206960 (2 * (n + 2))) (A304370 n))

end

end A374604.P7756127027203537186

/-! ## A374604.P4745172746265133027

`A006519(A060626(n)*A065307(n+1))`
-/

namespace A374604.P4745172746265133027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A060626 n * A065307 (n + 1)).toNat

end

end A374604.P4745172746265133027

/-! ## A374604.P8136462996596619969

`A194402(gcd(A065307(n+1), A246907(n+1)))`
-/

namespace A374604.P8136462996596619969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194402 (Int.gcd (A065307 (n + 1)) (A246907 (n + 1)))

end

end A374604.P8136462996596619969

/-! ## A374604.P6278400513524886988

`A069780(A069780(n+2)+A033484(n))`
-/

namespace A374604.P6278400513524886988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069780 (A069780 (n + 2) + A033484 n).toNat

end

end A374604.P6278400513524886988

/-!
# A374605: a(n) = Sum_{k = 0..n} binomial(n, k)^2*binomial(n+k, k)*binomial(3*n+2*k, n).

The programs for A374605, the canonical program `A374605.P1824920584378244756` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374605 has offset 0).

The definition of A374605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#, n)]` (program `A374605.P1824920584378244756`, by `A374605.P1824920584378244756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374605.P1824920584378244756

`∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#, n)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374605

/-- `∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#, n)]` -/
def P1824920584378244756.Spec : Prop :=
  ∀ n, (P1824920584378244756.a n : ℤ) = A374605 n

theorem P1824920584378244756.correct : P1824920584378244756.Spec := by
  intro n
  simp only [A374605]

end A374605

/-!
# A374606: a(n) = Sum_{k = 0..n} binomial(n, k)^2*binomial(n+k, k)*binomial(3*n+2*k+1, n).

The programs for A374606, the canonical program `A374606.P8368458830457705617` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374606 has offset 0).

The definition of A374606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#+1, n)]` (program `A374606.P8368458830457705617`, by `A374606.P8368458830457705617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374606.P8368458830457705617

`∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#+1, n)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374606

/-- `∑{#}[n, C(n, #)²*C(n+#, #)*C(3*n+2*#+1, n)]` -/
def P8368458830457705617.Spec : Prop :=
  ∀ n, (P8368458830457705617.a n : ℤ) = A374606 n

theorem P8368458830457705617.correct : P8368458830457705617.Spec := by
  intro n
  simp only [A374606]

end A374606

/-!
# A374609: Numbers k such that k*(k+1) is primorial (a term in A002110).

The programs for A374609, there is no canonical definition to state claims against.
-/

/-! ## A374609.P2954677365678782577

`714*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A374609.P2954677365678782577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  714 * a (n - 4)

end

end A374609.P2954677365678782577

/-!
# A374613: Prime numbers p with the property that neither of 2*(p+next prime to p)+/ -1 is prime.

The programs for A374613, there is no canonical definition to state claims against.
-/

/-! ## A374613.P17707490682730600338

`A000040(lt[A250583(n+5), A214958(3*n+2)])`
-/

namespace A374613.P17707490682730600338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374613.P17707490682730600338

/-!
# A374614: a(n) = Sum_{k=0..n} (k/n)^2 * binomial(n,k)^5.

The programs for A374614, the canonical program `A374614.P11481964541672866436` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374614 has offset 1).

The definition of A374614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374614.P11481964541672866436

`∑{#}[n, C(n, #)²*C(n+1, #)^3]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374614

/-- `∑{#}[n, C(n, #)²*C(n+1, #)^3]` -/
def P11481964541672866436.Spec : Prop :=
  ∀ n, (P11481964541672866436.a n : ℤ) = A374614 (n + 1)

theorem P11481964541672866436.correct : P11481964541672866436.Spec := by
  intro n
  simp only [A374614, Nat.add_sub_cancel]

end A374614

/-! ## A374614.P15454181284614851206

`∑{#}[n+1, (#/(n+1))²*C(n+1, #)^5]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374614.P15454181284614851206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k : ℚ) / (n + 1 : ℚ)) ^ 2 * (Nat.choose (n + 1) k ^ 5 : ℚ)

end

end A374614.P15454181284614851206

namespace A374614

/-- `∑{#}[n+1, (#/(n+1))²*C(n+1, #)^5]` -/
def P15454181284614851206.Spec : Prop :=
  ∀ n, P15454181284614851206.a n = (A374614 (n + 1) : ℚ)

end A374614

/-!
# A374615: a(n) = Sum_{k=0..n} (k/n)^3 * binomial(n,k)^5.

The programs for A374615, the canonical program `A374615.P14167323670886894590` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374615 has offset 1).

The definition of A374615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374615.P14167323670886894590

`∑{#}[n, C(n, #)^3*C(n+1, #)²]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374615

/-- `∑{#}[n, C(n, #)^3*C(n+1, #)²]` -/
def P14167323670886894590.Spec : Prop :=
  ∀ n, (P14167323670886894590.a n : ℤ) = A374615 (n + 1)

theorem P14167323670886894590.correct : P14167323670886894590.Spec := by
  intro n
  simp only [A374615, Nat.add_sub_cancel]

end A374615

/-! ## A374615.P12229399305645985841

`∑{#}[n+1, (#/(n+1))^3*C(n+1, #)^5]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374615.P12229399305645985841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k : ℚ) / (n + 1 : ℚ)) ^ 3 * (Nat.choose (n + 1) k ^ 5 : ℚ)

end

end A374615.P12229399305645985841

namespace A374615

/-- `∑{#}[n+1, (#/(n+1))^3*C(n+1, #)^5]` -/
def P12229399305645985841.Spec : Prop :=
  ∀ n, P12229399305645985841.a n = (A374615 (n + 1) : ℚ)

end A374615

/-!
# A374616: a(n) = Sum_{k=0..n} (k/n)^4 * binomial(n,k)^5.

The programs for A374616, the canonical program `A374616.P10127857504825373816` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374616 has offset 1).

The definition of A374616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374616.P10127857504825373816

`∑{#}[n, C(n, #)^4*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374616

/-- `∑{#}[n, C(n, #)^4*C(n+1, #)]` -/
def P10127857504825373816.Spec : Prop :=
  ∀ n, (P10127857504825373816.a n : ℤ) = A374616 (n + 1)

theorem P10127857504825373816.correct : P10127857504825373816.Spec := by
  intro n
  simp only [A374616, Nat.add_sub_cancel]

end A374616

/-! ## A374616.P7633378050944704113

`∑{#}[n+1, (#/(n+1))^4*C(n+1, #)^5]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374616.P7633378050944704113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k : ℚ) / (n + 1 : ℚ)) ^ 4 * (Nat.choose (n + 1) k ^ 5 : ℚ)

end

end A374616.P7633378050944704113

namespace A374616

/-- `∑{#}[n+1, (#/(n+1))^4*C(n+1, #)^5]` -/
def P7633378050944704113.Spec : Prop :=
  ∀ n, P7633378050944704113.a n = (A374616 (n + 1) : ℚ)

end A374616

/-!
# A374617: a(n) is the number of distinct values of the determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374617, there is no canonical definition to state claims against.
-/

/-! ## A374617.P17039497287803866991

`A322849(A086072(n)+A007489(n))`
-/

namespace A374617.P17039497287803866991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322849 (A086072 n + A007489 n).toNat

end

end A374617.P17039497287803866991

/-! ## A374617.P752248005441458545

`A161336(A000083(n))`
-/

namespace A374617.P752248005441458545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161336 (A000083 n).toNat

end

end A374617.P752248005441458545

/-! ## A374617.P5553552890220411870

`A161336(A007476(n))`
-/

namespace A374617.P5553552890220411870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161336 (A007476 n).toNat

end

end A374617.P5553552890220411870

/-!
# A374618: a(n) is the number of distinct values of the determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the integers 1, 2, ..., n-1 off-diagonal.

The programs for A374618, there is no canonical definition to state claims against.
-/

/-! ## A374618.P7188903162010879574

`A265538(A000988(n))`
-/

namespace A374618.P7188903162010879574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265538 (A000988 n).toNat

end

end A374618.P7188903162010879574

/-! ## A374618.P4978101907624848815

`A347625(A000104(n))`
-/

namespace A374618.P4978101907624848815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A000104 n).toNat

end

end A374618.P4978101907624848815

/-! ## A374618.P6740725199178044651

`A347625(A000105(n))`
-/

namespace A374618.P6740725199178044651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A000105 n).toNat

end

end A374618.P6740725199178044651

/-!
# A374619: a(n) is the number of distinct values of the determinant of an n X n symmetric Toeplitz matrix having 1 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374619, there is no canonical definition to state claims against.
-/

/-! ## A374619.P15626879699553628279

`A374620(n)-A225099(A086153(n+1))`
-/

namespace A374619.P15626879699553628279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374620 n - A225099 (A086153 (n + 1)).toNat

end

end A374619.P15626879699553628279

/-! ## A374619.P6440067347240396802

`A334243(A370703(3*(n+1)))+A223905(A085158(n)-1)`
-/

namespace A374619.P6440067347240396802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334243 (A370703 (3 * (n + 1))).toNat + A223905 (A085158 n - 1).toNat

end

end A374619.P6440067347240396802

/-! ## A374619.P7043881377076250064

`A181551(A001383(n))`
-/

namespace A374619.P7043881377076250064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181551 (A001383 n).toNat

end

end A374619.P7043881377076250064

/-!
# A374620: a(n) is the number of distinct values of the determinant of an n X n symmetric Toeplitz matrix having 0 on the main diagonal and all the first n-1 primes off-diagonal.

The programs for A374620, there is no canonical definition to state claims against.
-/

/-! ## A374620.P14023335892231530604

`A185387(n)-A124010(A185387(n))`
-/

namespace A374620.P14023335892231530604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 n - A124010 (A185387 n).toNat

end

end A374620.P14023335892231530604

/-! ## A374620.P16514071698496460235

`A223905(A085158(n)-1)`
-/

namespace A374620.P16514071698496460235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223905 (A085158 n - 1).toNat

end

end A374620.P16514071698496460235

/-! ## A374620.P15239570201737758186

`A223905(lcm(n-1, A000700(n)))`
-/

namespace A374620.P15239570201737758186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223905 (Int.lcm ((n : ℤ) - 1) (A000700 n))

end

end A374620.P15239570201737758186

/-! ## A374620.P13695606219493705018

`A221916(floor(2^(n-1)))-A348945(n+1)`
-/

namespace A374620.P13695606219493705018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221916 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - A348945 (n + 1)

end

end A374620.P13695606219493705018

/-!
# A374621: Expansion of e.g.f. 1 - x^4/24 - log(1 - x).

The programs for A374621, the canonical program `A374621.P9032341510515200819` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374621 has offset 0).

The definition of A374621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374621.P9032341510515200819

`(n-1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=24`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374621

/-- `(n-1)*a(n-1)` -/
def P9032341510515200819.Spec : Prop :=
  ∀ n, P9032341510515200819.a n = A374621 n

theorem P9032341510515200819.correct : P9032341510515200819.Spec := by
  intro n
  simp only [A374621]

end A374621

/-! ## A374621.P15146776719570130643

`abs(1-n)!-char[4]`
-/

namespace A374621.P15146776719570130643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A374621.P15146776719570130643

namespace A374621

/-- `abs(1-n)!-char[4]` -/
def P15146776719570130643.Spec : Prop :=
  ∀ n, P15146776719570130643.a n = A374621 n

end A374621

/-! ## A374621.P15160644856509016920

`A254876(A092944(n+1))`
-/

namespace A374621.P15160644856509016920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254876 (A092944 (n + 1)).toNat

end

end A374621.P15160644856509016920

namespace A374621

/-- `A254876(A092944(n+1))` -/
def P15160644856509016920.Spec : Prop :=
  ∀ n, P15160644856509016920.a n = A374621 n

end A374621

/-! ## A374621.P16536898483310703150

`A104150(n)+A015342(A121034(n+1))`
-/

namespace A374621.P16536898483310703150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n + A015342 (A121034 (n + 1)).toNat

end

end A374621.P16536898483310703150

namespace A374621

/-- `A104150(n)+A015342(A121034(n+1))` -/
def P16536898483310703150.Spec : Prop :=
  ∀ n, P16536898483310703150.a n = A374621 n

end A374621

/-!
# A374622: Maximum number of vertices of a chordal ring mixed graph CRM(N,c) with diameter n.

The programs for A374622, there is no canonical definition to state claims against.
-/

/-! ## A374622.P17531195811911809568

`ogf((8+2x+8x^2-2x^3-2x^5-2x^7+4x^8)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A374622.P17531195811911809568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 2, 8, -2, 0, -2, 0, -2, 4] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A374622.P17531195811911809568

/-!
# A374624: a(n) is the number of irreducible finite Coxeter groups in n dimensions, or -1 if there are an infinite number.

The programs for A374624, the canonical program `A374624.P17214517616561662623` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374624 has offset 1).

The definition of A374624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374624.P17214517616561662623

`ogf((1-2x+4x^2+2x^3-2x^4+x^5-x^8)/(1-x))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374624

/-- `ogf((1-2x+4x^2+2x^3-2x^4+x^5-x^8)/(1-x))` -/
def P17214517616561662623.Spec : Prop :=
  ∀ n, P17214517616561662623.a n = A374624 (n + 1)

theorem P17214517616561662623.correct : P17214517616561662623.Spec := by
  intro n
  simp only [A374624, Nat.add_sub_cancel]

end A374624

/-!
# A374625: In the binary expansion of n, expand bits 1 -> 01 and 0 -> 10.

The programs for A374625, the canonical program `A374625.P6516257093902246467` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374625 has offset 0).

The definition of A374625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374625.P15060560635551664714

`A383976(n)-A062880(n)`
-/

namespace A374625.P15060560635551664714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383976 n - A062880 n

end

end A374625.P15060560635551664714

namespace A374625

/-- `A383976(n)-A062880(n)` -/
def P15060560635551664714.Spec : Prop :=
  ∀ n, P15060560635551664714.a n = A374625 n

end A374625

/-! ## A374625.P6516257093902246467

`A020988(A070939(n))-A000695(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374625

/-- `A020988(A070939(n))-A000695(n)` -/
def P6516257093902246467.Spec : Prop :=
  ∀ n, P6516257093902246467.a n = A374625 n

theorem P6516257093902246467.correct : P6516257093902246467.Spec := by
  intro n
  simp only [A374625]

end A374625

/-! ## A374625.P12547303960973740648

`A048647(A383976(n))`
-/

namespace A374625.P12547303960973740648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A383976 n).toNat

end

end A374625.P12547303960973740648

namespace A374625

/-- `A048647(A383976(n))` -/
def P12547303960973740648.Spec : Prop :=
  ∀ n, P12547303960973740648.a n = A374625 n

end A374625

/-! ## A374625.P2389554287594128083

`A006015(record[A379578(n)])`
-/

namespace A374625.P2389554287594128083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374625.P2389554287594128083

namespace A374625

/-- `A006015(record[A379578(n)])` -/
def P2389554287594128083.Spec : Prop :=
  ∀ n, P2389554287594128083.a n = A374625 n

end A374625

/-!
# A374626: Expansion of Product_{k>=0} 1 / (1 - 3*x^(3^k)).

The programs for A374626, there is no canonical definition to state claims against.
-/

/-! ## A374626.P14506885161341959897

`A119353(A398042(n))`
-/

namespace A374626.P14506885161341959897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A398042 n).toNat

end

end A374626.P14506885161341959897

/-! ## A374626.P11946729012555065442

`A097992(A015518(n+3))-A164281(n)`
-/

namespace A374626.P11946729012555065442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A015518 (n + 3)).toNat - A164281 n

end

end A374626.P11946729012555065442

/-!
# A374627: Expansion of Product_{k>=0} 1 / (1 - x^(3^k))^3.

The programs for A374627, there is no canonical definition to state claims against.
-/

/-! ## A374627.P9766390168025024500

`∑[∑[A164798(A060828(n))]]`
-/

namespace A374627.P9766390168025024500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164798 (A060828 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374627.P9766390168025024500

/-! ## A374627.P12931544595952780652

`∑[A189374(n)%A024774(n+1)]`
-/

namespace A374627.P12931544595952780652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189374 n) (A024774 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374627.P12931544595952780652

/-! ## A374627.P5212514243162587580

`∑[A189374(n)]%A071380(n+1)`
-/

namespace A374627.P5212514243162587580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A071380 (n + 1))

end

end A374627.P5212514243162587580

/-!
# A374629: Irregular triangle listing the leaders of maximal weakly increasing runs in the n-th composition in standard order.

The programs for A374629, there is no canonical definition to state claims against.
-/

/-! ## A374629.P10380186716056991881

`A036037(lt[A258210(n), A297537(n+1)])`
-/

namespace A374629.P10380186716056991881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374629.P10380186716056991881

/-! ## A374629.P11904438661922110751

`A080577(lt[A367912(3*n+4), A361623(n+1)])`
-/

namespace A374629.P11904438661922110751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367912 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374629.P11904438661922110751

/-! ## A374629.P11844505959742186341

`A080577(lt[A000010(n+1), A114538(n+1)])`
-/

namespace A374629.P11844505959742186341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374629.P11844505959742186341

/-! ## A374629.P17160403773463121762

`A080577(lt[A353846(3*n), A067538(n+1)])`
-/

namespace A374629.P17160403773463121762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374629.P17160403773463121762

/-! ## A374629.P3382213332728286752

`A283325(A129987(n))`
-/

namespace A374629.P3382213332728286752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283325 (A129987 n).toNat

end

end A374629.P3382213332728286752

/-!
# A374630: Sum of leaders of weakly increasing runs in the n-th composition in standard order.

The programs for A374630, there is no canonical definition to state claims against.
-/

/-! ## A374630.P15554784925885990086

`A374684(n)-A373954(n)`
-/

namespace A374630.P15554784925885990086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n - A373954 n

end

end A374630.P15554784925885990086

/-! ## A374630.P312795522461512392

`A374684(n)-(A000523(2*n+1)-A373953(n))`
-/

namespace A374630.P312795522461512392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n - (A000523 (2 * n + 1) - A373953 n)

end

end A374630.P312795522461512392

/-! ## A374630.P17027818541683979971

`A374684(n)-(A373953(A053644(n))-A373953(n))`
-/

namespace A374630.P17027818541683979971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n - (A373953 (A053644 n).toNat - A373953 n)

end

end A374630.P17027818541683979971

/-! ## A374630.P1994682778806052048

`ceil(log2(A375123(n)+1))`
-/

namespace A374630.P1994682778806052048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A375123 n + 1 : ℝ)⌉

end

end A374630.P1994682778806052048

/-! ## A374630.P16957690038603031246

`A029837(A375123(n)+1)`
-/

namespace A374630.P16957690038603031246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A375123 n + 1).toNat

end

end A374630.P16957690038603031246

/-! ## A374630.P5782372935783166721

`A070939(A375123(n))-A000007(n)`
-/

namespace A374630.P5782372935783166721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375123 n).toNat - A000007 n

end

end A374630.P5782372935783166721

/-! ## A374630.P12366936310418437611

`A070939(A375123(n))*A178334(n)`
-/

namespace A374630.P12366936310418437611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375123 n).toNat * A178334 n

end

end A374630.P12366936310418437611

/-! ## A374630.P8648172844018807849

`A070939(A375123(n))%A000143(n)`
-/

namespace A374630.P8648172844018807849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A375123 n).toNat) (A000143 n)

end

end A374630.P8648172844018807849

/-! ## A374630.P14024844604465169910

`A278044(A375123(n))%A341526(n+1)`
-/

namespace A374630.P14024844604465169910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278044 (A375123 n).toNat) (A341526 (n + 1))

end

end A374630.P14024844604465169910

/-! ## A374630.P17803951727912423867

`A374684(A373948(n))`
-/

namespace A374630.P17803951727912423867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A373948 n).toNat

end

end A374630.P17803951727912423867

/-!
# A374631: Number of integer compositions of n whose leaders of weakly increasing runs are identical.

The programs for A374631, there is no canonical definition to state claims against.
-/

/-! ## A374631.P11069715791551363045

`A003056(A129366(n))`
-/

namespace A374631.P11069715791551363045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A129366 n).toNat

end

end A374631.P11069715791551363045

/-! ## A374631.P8939073371750939251

`A103128(A110490(n))`
-/

namespace A374631.P8939073371750939251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A110490 n).toNat

end

end A374631.P8939073371750939251

/-! ## A374631.P560149468313158658

`A074712(A148585(n))`
-/

namespace A374631.P560149468313158658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A148585 n).toNat

end

end A374631.P560149468313158658

/-! ## A374631.P7430377815994860637

`A082447(A148246(n))`
-/

namespace A374631.P7430377815994860637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148246 n).toNat

end

end A374631.P7430377815994860637

/-! ## A374631.P2346169193098926752

`A225687(A052855(n))`
-/

namespace A374631.P2346169193098926752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A052855 n).toNat

end

end A374631.P2346169193098926752

/-!
# A374632: Number of integer compositions of n whose leaders of weakly increasing runs are distinct.

The programs for A374632, there is no canonical definition to state claims against.
-/

/-! ## A374632.P6142964410630727808

`A374764(n)+A244413(A063489(3*n+4))`
-/

namespace A374632.P6142964410630727808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374764 n + A244413 (A063489 (3 * n + 4)).toNat

end

end A374632.P6142964410630727808

/-! ## A374632.P4301349756056690503

`A274312(A178354(n+1)+n)+A127239(A271269(2*n+3))`
-/

namespace A374632.P4301349756056690503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274312 (A178354 (n + 1) + (n : ℤ)).toNat + A127239 (A271269 (2 * n + 3)).toNat

end

end A374632.P4301349756056690503

/-! ## A374632.P2783432879256913396

`A003056(A180305(n))`
-/

namespace A374632.P2783432879256913396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A180305 n).toNat

end

end A374632.P2783432879256913396

/-! ## A374632.P7725152154147069804

`A006670(A307062(n))`
-/

namespace A374632.P7725152154147069804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A307062 n).toNat

end

end A374632.P7725152154147069804

/-! ## A374632.P13828197150427203373

`A067086(A192672(n+1))`
-/

namespace A374632.P13828197150427203373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A192672 (n + 1)).toNat

end

end A374632.P13828197150427203373

/-!
# A374633: Numbers k such that the leaders of weakly increasing runs in the k-th composition in standard order (A066099) are identical.

The programs for A374633, there is no canonical definition to state claims against.
-/

/-! ## A374633.P15262907465634627217

`eq[A334028(n), A382288(n)]`
-/

namespace A374633.P15262907465634627217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374633.P15262907465634627217

/-! ## A374633.P9595305352462190168

`eq[0, A333382(A375123(n))]`
-/

namespace A374633.P9595305352462190168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374633.P9595305352462190168

/-! ## A374633.P1280298046930036110

`eq[A124761(n), A124762(A375123(n))]`
-/

namespace A374633.P1280298046930036110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374633.P1280298046930036110

/-! ## A374633.P17022015358044840016

`eq[A124766(n), A333381(A375123(n))]`
-/

namespace A374633.P17022015358044840016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374633.P17022015358044840016

/-! ## A374633.P14968569985847784478

`lt[A124767(A375123(n)), A036453(n+1)]`
-/

namespace A374633.P14968569985847784478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A375123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374633.P14968569985847784478

/-!
# A374634: Number of integer compositions of n whose leaders of weakly increasing runs are strictly increasing.

The programs for A374634, there is no canonical definition to state claims against.
-/

/-! ## A374634.P907787001327411648

`A307707(A022543(n+2))`
-/

namespace A374634.P907787001327411648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A022543 (n + 2)).toNat

end

end A374634.P907787001327411648

/-! ## A374634.P3637465725153196160

`A182850(A001372(n))+A006498(n)`
-/

namespace A374634.P3637465725153196160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A001372 n).toNat + A006498 n

end

end A374634.P3637465725153196160

/-! ## A374634.P5716895128008222729

`A274199(n)-A086010(A274199(2*n+1))`
-/

namespace A374634.P5716895128008222729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n - A086010 (A274199 (2 * n + 1)).toNat

end

end A374634.P5716895128008222729

/-! ## A374634.P9995789679144267689

`A178779(A007093(n))+A080528(A062399(n))`
-/

namespace A374634.P9995789679144267689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A007093 n).toNat + A080528 (A062399 n).toNat

end

end A374634.P9995789679144267689

/-! ## A374634.P12050887837339488224

`A334271(C(n, ∑{digits}[n, 10^#]%9))`
-/

namespace A374634.P12050887837339488224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334271 (Nat.choose n (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A374634.P12050887837339488224

/-!
# A374635: Number of integer compositions of n whose leaders of weakly increasing runs are themselves weakly increasing.

The programs for A374635, there is no canonical definition to state claims against.
-/

/-! ## A374635.P4163555487694301266

`A100196(A052827(n+1))`
-/

namespace A374635.P4163555487694301266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052827 (n + 1)).toNat

end

end A374635.P4163555487694301266

/-! ## A374635.P2323716149191342812

`A003056(A317757(n)+n)`
-/

namespace A374635.P2323716149191342812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A317757 n + (n : ℤ)).toNat

end

end A374635.P2323716149191342812

/-! ## A374635.P7595407713959633049

`A334265(A334271(n))+A008550(n)`
-/

namespace A374635.P7595407713959633049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (A334271 n).toNat + A008550 n

end

end A374635.P7595407713959633049

/-! ## A374635.P14895666706377040281

`A334265(A334271(n))+A064094(n)`
-/

namespace A374635.P14895666706377040281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (A334271 n).toNat + A064094 n

end

end A374635.P14895666706377040281

/-! ## A374635.P10805153492165433682

`A334265(A334271(n))+A309049(n)`
-/

namespace A374635.P10805153492165433682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (A334271 n).toNat + A309049 n

end

end A374635.P10805153492165433682

/-!
# A374636: Number of integer compositions of n whose leaders of maximal weakly increasing runs are not weakly decreasing.

The programs for A374636, there is no canonical definition to state claims against.
-/

/-! ## A374636.P5085319881065325992

`A011782(n)-A189076(n)`
-/

namespace A374636.P5085319881065325992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A189076 n

end

end A374636.P5085319881065325992

/-! ## A374636.P5273537951913998550

`∑[A034008(n)]-A189076(n)`
-/

namespace A374636.P5273537951913998550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189076 n

end

end A374636.P5273537951913998550

/-! ## A374636.P13579149848576357929

`Δ[A094373(n)]-A189076(n)`
-/

namespace A374636.P13579149848576357929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189076 n

end

end A374636.P13579149848576357929

/-! ## A374636.P13526828710838970802

`Δ[A131577(n)]-A189076(n)`
-/

namespace A374636.P13526828710838970802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189076 n

end

end A374636.P13526828710838970802

/-! ## A374636.P10619715241505808794

`A035002(A000124(n))-A189076(n)`
-/

namespace A374636.P10619715241505808794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (A000124 n).toNat - A189076 n

end

end A374636.P10619715241505808794

/-!
# A374637: Triangle read by rows where T(n,k) is the number of integer compositions of n whose leaders of weakly increasing runs sum to k.

The programs for A374637, there is no canonical definition to state claims against.
-/

/-! ## A374637.P11387192077449199551

`A243978(n)+A101605(A000219(n))`
-/

namespace A374637.P11387192077449199551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 n + A101605 (A000219 n).toNat

end

end A374637.P11387192077449199551

/-! ## A374637.P2711414438994347445

`A357705(n)+A288670(A109448(3*n+2))`
-/

namespace A374637.P2711414438994347445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357705 n + A288670 (A109448 (3 * n + 2)).toNat

end

end A374637.P2711414438994347445

/-! ## A374637.P17615507297423989178

`A257217(A117732(n+1)+1)`
-/

namespace A374637.P17615507297423989178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (A117732 (n + 1) + 1).toNat

end

end A374637.P17615507297423989178

/-! ## A374637.P13428115709039137578

`A321436(n)+A124010(A097190(n))`
-/

namespace A374637.P13428115709039137578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321436 n + A124010 (A097190 n).toNat

end

end A374637.P13428115709039137578

/-! ## A374637.P17910057449717157150

`A000688(A046826(n))*A243978(n)`
-/

namespace A374637.P17910057449717157150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A046826 n).toNat * A243978 n

end

end A374637.P17910057449717157150

/-!
# A374638: Numbers k such that the leaders of anti-runs in the k-th composition in standard order (A066099) are distinct.

The programs for A374638, there is no canonical definition to state claims against.
-/

/-! ## A374638.P1670913081572126178

`comp[A374639(n+1)]`
-/

namespace A374638.P1670913081572126178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374638.P1670913081572126178

/-! ## A374638.P17025400174216203208

`eq[char[A374520(n+1)], A124762(n)]`
-/

namespace A374638.P17025400174216203208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A374638.P17025400174216203208

/-! ## A374638.P7655219333669628866

`eq[0, A124762(A375127(n))]`
-/

namespace A374638.P7655219333669628866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374638.P7655219333669628866

/-! ## A374638.P6917877581117061289

`eq[A124767(A375127(n)), A333381(n)]`
-/

namespace A374638.P6917877581117061289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374638.P6917877581117061289

/-! ## A374638.P4032748042283348423

`eq[A178334(n), A357137(A375127(n))]`
-/

namespace A374638.P4032748042283348423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374638.P4032748042283348423

/-! ## A374638.P2836819639624242207

`eq[A373953(A375127(n)), A374516(n)]`
-/

namespace A374638.P2836819639624242207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374638.P2836819639624242207

/-! ## A374638.P4074060374819774211

`lt[A124762(A375127(n)), A057427(3*n+1)]`
-/

namespace A374638.P4074060374819774211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374638.P4074060374819774211

/-! ## A374638.P10594972227715462117

`lt[A373954(A375127(n)), A000035(2*n+3)]`
-/

namespace A374638.P10594972227715462117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374638.P10594972227715462117

/-! ## A374638.P5220247319758490378

`eq[A033322(3*n+4), A373954(A375127(n))]`
-/

namespace A374638.P5220247319758490378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374638.P5220247319758490378

/-!
# A374639: Numbers k such that the leaders of maximal anti-runs in the k-th composition in standard order (A066099) are not distinct.

The programs for A374639, there is no canonical definition to state claims against.
-/

/-! ## A374639.P15919702399080012159

`comp[A374638(n+1)]`
-/

namespace A374639.P15919702399080012159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374639.P15919702399080012159

/-! ## A374639.P7077520157408915158

`lt[char[A374520(n+1)], A124762(n)]`
-/

namespace A374639.P7077520157408915158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374520 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A374639.P7077520157408915158

/-! ## A374639.P10594841473859673676

`lt[0, A124762(A375127(n))]`
-/

namespace A374639.P10594841473859673676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374639.P10594841473859673676

/-! ## A374639.P2748005419063065993

`lt[A063524(n), A373954(A375127(n))]`
-/

namespace A374639.P2748005419063065993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374639.P2748005419063065993

/-!
# A374640: Number of integer compositions of n whose leaders of maximal anti-runs are not identical.

The programs for A374640, there is no canonical definition to state claims against.
-/

/-! ## A374640.P3037132569536910018

`ceil(2^(n-1))-A374517(n)`
-/

namespace A374640.P3037132569536910018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A374517 n

end

end A374640.P3037132569536910018

/-! ## A374640.P6671450827172781101

`abs(A011782(n)-A374517(n))`
-/

namespace A374640.P6671450827172781101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A374517 n|

end

end A374640.P6671450827172781101

/-! ## A374640.P15672683567932908622

`A008615(A007283(n))%A374517(n)`
-/

namespace A374640.P15672683567932908622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (A007283 n).toNat) (A374517 n)

end

end A374640.P15672683567932908622

/-! ## A374640.P14405422828165715138

`A380408(A006979(n+1))`
-/

namespace A374640.P14405422828165715138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (A006979 (n + 1)).toNat

end

end A374640.P14405422828165715138

/-! ## A374640.P17275708891184800730

`floor(2^(n-1))%A374517(A306593(n))`
-/

namespace A374640.P17275708891184800730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A374517 (A306593 n).toNat)

end

end A374640.P17275708891184800730

/-!
# A374646: Paradiddle version of Thue-Morse sequence.

The programs for A374646, the canonical program `A374646.P1262386193735930242` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374646 has offset 0).

The definition of A374646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374646.P1262386193735930242

`(a(floor(n/4))+(C(n+2, 3)^2)%2)%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374646

/-- `(a(floor(n/4))+(C(n+2, 3)^2)%2)%2` -/
def P1262386193735930242.Spec : Prop :=
  ∀ n, (P1262386193735930242.a n : ℤ) = A374646 n

theorem P1262386193735930242.correct : P1262386193735930242.Spec := by
  intro n
  simp only [A374646]

end A374646

/-! ## A374646.P9830082207530829960

`log2(gcd(2, A160381(n)))`
-/

namespace A374646.P9830082207530829960
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A160381 n) : ℝ)

end

end A374646.P9830082207530829960

namespace A374646

/-- `log2(gcd(2, A160381(n)))` -/
def P9830082207530829960.Spec : Prop :=
  ∀ n, P9830082207530829960.a n = (A374646 n : ℝ)

end A374646

/-! ## A374646.P16218364742827381191

`(A023733(n+1)+1)%2`
-/

namespace A374646.P16218364742827381191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023733 (n + 1) + 1) 2

end

end A374646.P16218364742827381191

namespace A374646

/-- `(A023733(n+1)+1)%2` -/
def P16218364742827381191.Spec : Prop :=
  ∀ n, P16218364742827381191.a n = A374646 n

end A374646

/-! ## A374646.P18222199411415585779

`A364912(a(and(n, floor(-(n/2)))-1))` with `a(0)=1`
-/

namespace A374646.P18222199411415585779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364912 (a (Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋ - 1).toNat).toNat

end

end A374646.P18222199411415585779

namespace A374646

/-- `A364912(a(and(n, floor(-(n/2)))-1))` -/
def P18222199411415585779.Spec : Prop :=
  ∀ n, P18222199411415585779.a n = A374646 n

end A374646

/-! ## A374646.P8192610058345963462

`A002324(A268444(n))`
-/

namespace A374646.P8192610058345963462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A268444 n).toNat

end

end A374646.P8192610058345963462

namespace A374646

/-- `A002324(A268444(n))` -/
def P8192610058345963462.Spec : Prop :=
  ∀ n, P8192610058345963462.a n = A374646 n

end A374646

/-! ## A374646.P10817629920265761441

`xor(A112539(n+1), A283316(n+1))`
-/

namespace A374646.P10817629920265761441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112539 (n + 1)) (A283316 (n + 1))

end

end A374646.P10817629920265761441

namespace A374646

/-- `xor(A112539(n+1), A283316(n+1))` -/
def P10817629920265761441.Spec : Prop :=
  ∀ n, P10817629920265761441.a n = A374646 n

end A374646

/-! ## A374646.P8689015249317291222

`A059841(A023733(n+1))`
-/

namespace A374646.P8689015249317291222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A023733 (n + 1)).toNat

end

end A374646.P8689015249317291222

namespace A374646

/-- `A059841(A023733(n+1))` -/
def P8689015249317291222.Spec : Prop :=
  ∀ n, P8689015249317291222.a n = A374646 n

end A374646

/-! ## A374646.P1223288734362268180

`A010059(A006068(A213064(2*n)))`
-/

namespace A374646.P1223288734362268180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A006068 (A213064 (2 * n)).toNat).toNat

end

end A374646.P1223288734362268180

namespace A374646

/-- `A010059(A006068(A213064(2*n)))` -/
def P1223288734362268180.Spec : Prop :=
  ∀ n, P1223288734362268180.a n = A374646 n

end A374646

/-! ## A374646.P4164964220196596519

`A010059(A006068(A048724(n)+n))`
-/

namespace A374646.P4164964220196596519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A006068 (A048724 n + (n : ℤ)).toNat).toNat

end

end A374646.P4164964220196596519

namespace A374646

/-- `A010059(A006068(A048724(n)+n))` -/
def P4164964220196596519.Spec : Prop :=
  ∀ n, P4164964220196596519.a n = A374646 n

end A374646

/-!
# A374647: a(n) = n! / floor(2n/3)!.

The programs for A374647, the canonical program `A374647.P2503324486256256109` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374647 has offset 0).

The definition of A374647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374647.P2503324486256256109

`n!/floor(2*n/3)!`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374647

/-- `n!/floor(2*n/3)!` -/
def P2503324486256256109.Spec : Prop :=
  ∀ n, P2503324486256256109.a n = (A374647 n : ℚ)

end A374647

/-! ## A374647.P841224534385390736

`A094587(A218470(3*n+4)+n)`
-/

namespace A374647.P841224534385390736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A218470 (3 * n + 4) + (n : ℤ)).toNat

end

end A374647.P841224534385390736

namespace A374647

/-- `A094587(A218470(3*n+4)+n)` -/
def P841224534385390736.Spec : Prop :=
  ∀ n, P841224534385390736.a n = A374647 n

end A374647

/-! ## A374647.P1872613227163543656

`A000142(n)/A000142(A004523(n))`
-/

namespace A374647.P1872613227163543656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000142 (A004523 n).toNat : ℚ)

end

end A374647.P1872613227163543656

namespace A374647

/-- `A000142(n)/A000142(A004523(n))` -/
def P1872613227163543656.Spec : Prop :=
  ∀ n, P1872613227163543656.a n = (A374647 n : ℚ)

end A374647

/-! ## A374647.P4337655954556245860

`A000142(n)/A000142(A002264(2*n))`
-/

namespace A374647.P4337655954556245860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000142 (A002264 (2 * n)).toNat : ℚ)

end

end A374647.P4337655954556245860

namespace A374647

/-- `A000142(n)/A000142(A002264(2*n))` -/
def P4337655954556245860.Spec : Prop :=
  ∀ n, P4337655954556245860.a n = (A374647 n : ℚ)

end A374647

/-! ## A374647.P8650953618565904029

`A355988(2*n)/A081125(2*n)`
-/

namespace A374647.P8650953618565904029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355988 (2 * n) : ℚ) / (A081125 (2 * n) : ℚ)

end

end A374647.P8650953618565904029

namespace A374647

/-- `A355988(2*n)/A081125(2*n)` -/
def P8650953618565904029.Spec : Prop :=
  ∀ n, P8650953618565904029.a n = (A374647 n : ℚ)

end A374647

/-!
# A374648: a(n) = n! / (floor(n/3))! - n! / (floor(n/2))!.

The programs for A374648, the canonical program `A374648.P14007990213428452594` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374648 has offset 0).

The definition of A374648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374648.P14007990213428452594

`A355988(n)-A081125(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374648

/-- `A355988(n)-A081125(n)` -/
def P14007990213428452594.Spec : Prop :=
  ∀ n, P14007990213428452594.a n = A374648 n

theorem P14007990213428452594.correct : P14007990213428452594.Spec := by
  intro n
  simp only [A374648]

end A374648

/-! ## A374648.P13025949469420011090

`n!/floor(n/3)!-n!/floor(n/2)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374648.P13025949469420011090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 3⌋.toNat : ℚ) - (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A374648.P13025949469420011090

namespace A374648

/-- `n!/floor(n/3)!-n!/floor(n/2)!` -/
def P13025949469420011090.Spec : Prop :=
  ∀ n, P13025949469420011090.a n = (A374648 n : ℚ)

end A374648

/-! ## A374648.P2038943400213304790

`A396544(A366368(n))`
-/

namespace A374648.P2038943400213304790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396544 (A366368 n).toNat

end

end A374648.P2038943400213304790

namespace A374648

/-- `A396544(A366368(n))` -/
def P2038943400213304790.Spec : Prop :=
  ∀ n, P2038943400213304790.a n = A374648 n

end A374648

/-! ## A374648.P16963603280561985417

`2*A336563(A003483(n))`
-/

namespace A374648.P16963603280561985417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336563 (A003483 n).toNat

end

end A374648.P16963603280561985417

namespace A374648

/-- `2*A336563(A003483(n))` -/
def P16963603280561985417.Spec : Prop :=
  ∀ n, P16963603280561985417.a n = A374648 n

end A374648

/-!
# A374649: a(n) = n! - 2(n-1)! + 3(n-2)!.

The programs for A374649, the canonical program `A374649.P3241703457384750770` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374649 has offset 2).

The definition of A374649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!-2*(n+1)!+3*n!` (program `A374649.P3241703457384750770`, by `A374649.P3241703457384750770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374649.P3241703457384750770

`(n+2)!-2*(n+1)!+3*n!`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374649

/-- `(n+2)!-2*(n+1)!+3*n!` -/
def P3241703457384750770.Spec : Prop :=
  ∀ n, P3241703457384750770.a n = A374649 (n + 2)

theorem P3241703457384750770.correct : P3241703457384750770.Spec := by
  intro n
  simp only [A374649, Nat.add_sub_cancel]

end A374649

/-! ## A374649.P2098252554777687688

`(∑[2*n]+3)*n!`
-/

namespace A374649.P2098252554777687688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) * Nat.factorial n

end

end A374649.P2098252554777687688

namespace A374649

/-- `(∑[2*n]+3)*n!` -/
def P2098252554777687688.Spec : Prop :=
  ∀ n, (P2098252554777687688.a n : ℤ) = A374649 (n + 2)

end A374649

/-! ## A374649.P11791583308137597041

`A062119(n+1)+A052560(n)`
-/

namespace A374649.P11791583308137597041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) + A052560 n

end

end A374649.P11791583308137597041

namespace A374649

/-- `A062119(n+1)+A052560(n)` -/
def P11791583308137597041.Spec : Prop :=
  ∀ n, P11791583308137597041.a n = A374649 (n + 2)

end A374649

/-! ## A374649.P15478025812993854212

`A001564(n)+2*A000142(n)`
-/

namespace A374649.P15478025812993854212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 n + 2 * A000142 n

end

end A374649.P15478025812993854212

namespace A374649

/-- `A001564(n)+2*A000142(n)` -/
def P15478025812993854212.Spec : Prop :=
  ∀ n, P15478025812993854212.a n = A374649 (n + 2)

end A374649

/-! ## A374649.P1641508032243803077

`A000142(n)+A000142(n)*A014206(n)`
-/

namespace A374649.P1641508032243803077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A000142 n * A014206 n

end

end A374649.P1641508032243803077

namespace A374649

/-- `A000142(n)+A000142(n)*A014206(n)` -/
def P1641508032243803077.Spec : Prop :=
  ∀ n, P1641508032243803077.a n = A374649 (n + 2)

end A374649

/-! ## A374649.P18070650873229498417

`A027688(n)+A027688(n)*A033312(n)`
-/

namespace A374649.P18070650873229498417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n + A027688 n * A033312 n

end

end A374649.P18070650873229498417

namespace A374649

/-- `A027688(n)+A027688(n)*A033312(n)` -/
def P18070650873229498417.Spec : Prop :=
  ∀ n, P18070650873229498417.a n = A374649 (n + 2)

end A374649

/-! ## A374649.P9401967494789733002

`A121635(n+2)+A121635(n+2)+A000142(n)`
-/

namespace A374649.P9401967494789733002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121635 (n + 2) + (A121635 (n + 2) + A000142 n)

end

end A374649.P9401967494789733002

namespace A374649

/-- `A121635(n+2)+A121635(n+2)+A000142(n)` -/
def P9401967494789733002.Spec : Prop :=
  ∀ n, P9401967494789733002.a n = A374649 (n + 2)

end A374649

/-! ## A374649.P10680639714597237801

`A000142(n)*A117950(n+1)-A000142(n+1)`
-/

namespace A374649.P10680639714597237801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A117950 (n + 1) - A000142 (n + 1)

end

end A374649.P10680639714597237801

namespace A374649

/-- `A000142(n)*A117950(n+1)-A000142(n+1)` -/
def P10680639714597237801.Spec : Prop :=
  ∀ n, P10680639714597237801.a n = A374649 (n + 2)

end A374649

/-!
# A374650: a(n) = n! - 2(n-1)! + 3(n-2)! - 4(n-3)!.

The programs for A374650, the canonical program `A374650.P477836496722015725` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374650 has offset 3).

The definition of A374650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)!-2*(n+2)!+3*(n+1)!-4*n!` (program `A374650.P477836496722015725`, by `A374650.P477836496722015725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374650.P477836496722015725

`(n+3)!-2*(n+2)!+3*(n+1)!-4*n!`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374650

/-- `(n+3)!-2*(n+2)!+3*(n+1)!-4*n!` -/
def P477836496722015725.Spec : Prop :=
  ∀ n, P477836496722015725.a n = A374650 (n + 3)

theorem P477836496722015725.correct : P477836496722015725.Spec := by
  intro n
  simp only [A374650, Nat.add_sub_cancel]

end A374650

/-!
# A374651: a(n) = Sum_{k=1..n+1} (-1)^(k-1) k (n - k + 1)!.

The programs for A374651, there is no canonical definition to state claims against.
-/

/-! ## A374651.P2499635544564954549

`Δ[A136580(n)-a(n-1)]` with `a(0)=1`
-/

namespace A374651.P2499635544564954549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A136580 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A374651.P2499635544564954549

/-!
# A374652: a(n) = Sum_{k=1..n+1} (-1)^(k - 1)*(k + 1)*(n - k + 1)!.

The programs for A374652, the canonical program `A374652.P17389295093329975884` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374652 has offset 1).

The definition of A374652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1, (-1)^#*(#+2)*(n+1-(#+1)+1)!]` (program `A374652.P17389295093329975884`, by `A374652.P17389295093329975884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374652.P17389295093329975884

`∑{#}[n+1, (-1)^#*(#+2)*(n+1-(#+1)+1)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374652

/-- `∑{#}[n+1, (-1)^#*(#+2)*(n+1-(#+1)+1)!]` -/
def P17389295093329975884.Spec : Prop :=
  ∀ n, P17389295093329975884.a n = A374652 (n + 1)

theorem P17389295093329975884.correct : P17389295093329975884.Spec := by
  intro n
  simp only [A374652, Nat.add_sub_cancel]

end A374652

/-! ## A374652.P1637234855335080635

`A000142(n+2)-A374651(n+2)`
-/

namespace A374652.P1637234855335080635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A374651 (n + 2)

end

end A374652.P1637234855335080635

namespace A374652

/-- `A000142(n+2)-A374651(n+2)` -/
def P1637234855335080635.Spec : Prop :=
  ∀ n, P1637234855335080635.a n = A374652 (n + 1)

end A374652

/-!
# A374653: a(n) = Sum_{k=1..n+1} (k + 1)(n - k + 1)!.

The programs for A374653, the canonical program `A374653.P9700836837789172386` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374653 has offset 1).

The definition of A374653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1, (#+2)*(n+1-(#+1)+1)!]` (program `A374653.P9700836837789172386`, by `A374653.P9700836837789172386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374653.P9700836837789172386

`∑{#}[n+1, (#+2)*(n+1-(#+1)+1)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374653

/-- `∑{#}[n+1, (#+2)*(n+1-(#+1)+1)!]` -/
def P9700836837789172386.Spec : Prop :=
  ∀ n, (P9700836837789172386.a n : ℤ) = A374653 (n + 1)

theorem P9700836837789172386.correct : P9700836837789172386.Spec := by
  intro n
  simp only [A374653, Nat.add_sub_cancel]

end A374653

/-! ## A374653.P3654525491616353291

`∑[∑[A007680(n)]+1]+n+3`
-/

namespace A374653.P3654525491616353291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A374653.P3654525491616353291

namespace A374653

/-- `∑[∑[A007680(n)]+1]+n+3` -/
def P3654525491616353291.Spec : Prop :=
  ∀ n, P3654525491616353291.a n = A374653 (n + 1)

end A374653

/-! ## A374653.P1264321962426356488

`A014144(n+2)+A003422(n+2)`
-/

namespace A374653.P1264321962426356488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 (n + 2) + A003422 (n + 2)

end

end A374653.P1264321962426356488

namespace A374653

/-- `A014144(n+2)+A003422(n+2)` -/
def P1264321962426356488.Spec : Prop :=
  ∀ n, P1264321962426356488.a n = A374653 (n + 1)

end A374653

/-! ## A374653.P17084468638569736546

`A007489(n+1)+∑[A007489(n+1)+1]+2`
-/

namespace A374653.P17084468638569736546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A374653.P17084468638569736546

namespace A374653

/-- `A007489(n+1)+∑[A007489(n+1)+1]+2` -/
def P17084468638569736546.Spec : Prop :=
  ∀ n, P17084468638569736546.a n = A374653 (n + 1)

end A374653

/-! ## A374653.P1107509919762751786

`A014144(n+3)-A104150(n+3)`
-/

namespace A374653.P1107509919762751786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 (n + 3) - A104150 (n + 3)

end

end A374653.P1107509919762751786

namespace A374653

/-- `A014144(n+3)-A104150(n+3)` -/
def P1107509919762751786.Spec : Prop :=
  ∀ n, P1107509919762751786.a n = A374653 (n + 1)

end A374653

/-! ## A374653.P12021432074439217512

`Δ[A152689(n+4)]-A104150(n+3)`
-/

namespace A374653.P12021432074439217512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104150 (n + 3)

end

end A374653.P12021432074439217512

namespace A374653

/-- `Δ[A152689(n+4)]-A104150(n+3)` -/
def P12021432074439217512.Spec : Prop :=
  ∀ n, P12021432074439217512.a n = A374653 (n + 1)

end A374653

/-!
# A374654: a(n) = Product_{k=0..n} (L(k)+1), where L=A000032 (Lucas numbers).

The programs for A374654, the canonical program `A374654.P11429514948306727037` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374654 has offset 0).

The definition of A374654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374654.P11429514948306727037

`a(n-1)²/a(n-2)+a(n-1)*a(n-2)/a(n-3)-a(n-1)` with `a(0)=3, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374654

/-- `a(n-1)²/a(n-2)+a(n-1)*a(n-2)/a(n-3)-a(n-1)` -/
def P11429514948306727037.Spec : Prop :=
  ∀ n, P11429514948306727037.a n = (A374654 n : ℚ)

end A374654

/-! ## A374654.P2135223477828378340

`∏[a(n-1)+a(n-2)-1]` with `a(0)=3, a(1)=2`
-/

namespace A374654.P2135223477828378340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374654.P2135223477828378340

namespace A374654

/-- `∏[a(n-1)+a(n-2)-1]` -/
def P2135223477828378340.Spec : Prop :=
  ∀ n, P2135223477828378340.a n = A374654 n

end A374654

/-! ## A374654.P1348404066340591954

`∏[a(n-1)-(1-a(n-2))]` with `a(0)=3, a(1)=2`
-/

namespace A374654.P1348404066340591954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374654.P1348404066340591954

namespace A374654

/-- `∏[a(n-1)-(1-a(n-2))]` -/
def P1348404066340591954.Spec : Prop :=
  ∀ n, P1348404066340591954.a n = A374654 n

end A374654

/-! ## A374654.P15496654318908883703

`∏[A001612(n)]`
-/

namespace A374654.P15496654318908883703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374654.P15496654318908883703

namespace A374654

/-- `∏[A001612(n)]` -/
def P15496654318908883703.Spec : Prop :=
  ∀ n, P15496654318908883703.a n = A374654 n

end A374654

/-! ## A374654.P3541766656923549954

`3*A374655(n)`
-/

namespace A374654.P3541766656923549954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A374655 n

end

end A374654.P3541766656923549954

namespace A374654

/-- `3*A374655(n)` -/
def P3541766656923549954.Spec : Prop :=
  ∀ n, P3541766656923549954.a n = A374654 n

end A374654

/-!
# A374655: a(n) = (1/3)*A374654(n).

The programs for A374655, the canonical program `A374655.P15978509805491680972` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374655 has offset 0).

The definition of A374655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374655.P15978509805491680972

`1/3*A374654(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374655

/-- `1/3*A374654(n)` -/
def P15978509805491680972.Spec : Prop :=
  ∀ n, P15978509805491680972.a n = (A374655 n : ℚ)

end A374655

/-! ## A374655.P1888241677754329989

`∏[∑[2-(4/2-a(n-1)-a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A374655.P1888241677754329989
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f2 =>
  2 - ((4 : ℚ) / 2 - f2 (n - 1) - f2 (n - 2))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374655.P1888241677754329989

namespace A374655

/-- `∏[∑[2-(4/2-a(n-1)-a(n-2))]]` -/
def P1888241677754329989.Spec : Prop :=
  ∀ n, P1888241677754329989.a n = (A374655 n : ℚ)

end A374655

/-! ## A374655.P12079133598267629221

`A374654(n)/3`
-/

namespace A374655.P12079133598267629221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374654 n : ℚ) / 3

end

end A374655.P12079133598267629221

namespace A374655

/-- `A374654(n)/3` -/
def P12079133598267629221.Spec : Prop :=
  ∀ n, P12079133598267629221.a n = (A374655 n : ℚ)

end A374655

/-! ## A374655.P14726332471341913226

`∏[∑[A329723(n)]]`
-/

namespace A374655.P14726332471341913226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374655.P14726332471341913226

namespace A374655

/-- `∏[∑[A329723(n)]]` -/
def P14726332471341913226.Spec : Prop :=
  ∀ n, P14726332471341913226.a n = A374655 n

end A374655

/-! ## A374655.P1003047508623583579

`∏[A001612(n)]/3`
-/

namespace A374655.P1003047508623583579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A374655.P1003047508623583579

namespace A374655

/-- `∏[A001612(n)]/3` -/
def P1003047508623583579.Spec : Prop :=
  ∀ n, P1003047508623583579.a n = (A374655 n : ℚ)

end A374655

/-!
# A374656: a(n) = Product_{k=0..n} L(k)+2, where L=A000032 (Lucas numbers).

The programs for A374656, there is no canonical definition to state claims against.
-/

/-! ## A374656.P1285558284796439957

`∏[a(n-1)+a(n-2)-2]` with `a(0)=4, a(1)=3`
-/

namespace A374656.P1285558284796439957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374656.P1285558284796439957

/-! ## A374656.P9889791403572940141

`∏[a(n-1)-(2-a(n-2))]` with `a(0)=4, a(1)=3`
-/

namespace A374656.P9889791403572940141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374656.P9889791403572940141

/-! ## A374656.P9933470624531830037

`∏[A000211(n)]`
-/

namespace A374656.P9933470624531830037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374656.P9933470624531830037

/-! ## A374656.P15033681806683966181

`4*A374657(n)`
-/

namespace A374656.P15033681806683966181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A374657 n

end

end A374656.P15033681806683966181

/-! ## A374656.P107227432796482526

`∏[A001612(n)+1]`
-/

namespace A374656.P107227432796482526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374656.P107227432796482526

/-!
# A374657: a(n) = (1/4) A374656(n).

The programs for A374657, there is no canonical definition to state claims against.
-/

/-! ## A374657.P2887376934380547182

`1/4*A374656(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374657.P2887376934380547182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A374656 n : ℚ)

end

end A374657.P2887376934380547182

/-! ## A374657.P1537523164441352626

`A374656(n)/4`
-/

namespace A374657.P1537523164441352626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374656 n : ℚ) / 4

end

end A374657.P1537523164441352626

/-! ## A374657.P9287506021376499183

`∏[A000211(n)]/4`
-/

namespace A374657.P9287506021376499183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A374657.P9287506021376499183

/-! ## A374657.P14712994564341864088

`∏[A000032(n)+2]/4`
-/

namespace A374657.P14712994564341864088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A374657.P14712994564341864088

/-! ## A374657.P10714477778102806412

`∏[A000211(n)%A062699(n+1)]`
-/

namespace A374657.P10714477778102806412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000211 n) (A062699 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374657.P10714477778102806412

/-!
# A374658: a(n) = Product_{k=0..n} L(k)+3, where L=A000032 (Lucas numbers).

The programs for A374658, there is no canonical definition to state claims against.
-/

/-! ## A374658.P9310780133421066457

`∏[a(n-1)+a(n-2)-3]` with `a(0)=5, a(1)=4`
-/

namespace A374658.P9310780133421066457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374658.P9310780133421066457

/-! ## A374658.P12779304027913725770

`∏[a(n-1)-(3-a(n-2))]` with `a(0)=5, a(1)=4`
-/

namespace A374658.P12779304027913725770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374658.P12779304027913725770

/-! ## A374658.P14207574288516009550

`5*A374659(n)`
-/

namespace A374658.P14207574288516009550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A374659 n

end

end A374658.P14207574288516009550

/-! ## A374658.P17373005835341969586

`∏[A000211(n)+1]`
-/

namespace A374658.P17373005835341969586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374658.P17373005835341969586

/-! ## A374658.P9886895251019393958

`∏[A001612(n)+2]`
-/

namespace A374658.P9886895251019393958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374658.P9886895251019393958

/-!
# A374659: a(n) = (1/5) A374658(n).

The programs for A374659, there is no canonical definition to state claims against.
-/

/-! ## A374659.P14157988048764767131

`1/5*A374658(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374659.P14157988048764767131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A374658 n : ℚ)

end

end A374659.P14157988048764767131

/-! ## A374659.P3623130957024152221

`A374658(n)/5`
-/

namespace A374659.P3623130957024152221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374658 n : ℚ) / 5

end

end A374659.P3623130957024152221

/-! ## A374659.P17754938863961626285

`a(n-1)*A366506(n)` with `a(0)=1`
-/

namespace A374659.P17754938863961626285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A366506 n

end

end A374659.P17754938863961626285

/-! ## A374659.P13897120089514754682

`(A000211(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374659.P13897120089514754682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000211 n + 1) * a (n - 1)

end

end A374659.P13897120089514754682

/-! ## A374659.P2020401301246112898

`(A000032(n)+3)*a(n-1)` with `a(0)=1`
-/

namespace A374659.P2020401301246112898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 n + 3) * a (n - 1)

end

end A374659.P2020401301246112898

/-!
# A374660: a(n) = Product_{k=0..n+1} L(k)+4, where L=A000032 (Lucas numbers).

The programs for A374660, there is no canonical definition to state claims against.
-/

/-! ## A374660.P3705488308270691791

`6*A374661(n)`
-/

namespace A374660.P3705488308270691791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A374661 n

end

end A374660.P3705488308270691791

/-! ## A374660.P814535284268197618

`∏[A000211(n)+2]`
-/

namespace A374660.P814535284268197618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374660.P814535284268197618

/-! ## A374660.P11048712794722702760

`∏[A001612(n)+3]`
-/

namespace A374660.P11048712794722702760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374660.P11048712794722702760

/-! ## A374660.P9266764027737771766

`∏[A000032(n)+4]`
-/

namespace A374660.P9266764027737771766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374660.P9266764027737771766

/-! ## A374660.P15382947725959065716

`∏[Δ[A033817(n+2)]]`
-/

namespace A374660.P15382947725959065716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033817 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374660.P15382947725959065716

/-!
# A374661: a(n) = (1/6)*A374660(n).

The programs for A374661, there is no canonical definition to state claims against.
-/

/-! ## A374661.P2598813615720051612

`1/6*A374660(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374661.P2598813615720051612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A374660 n : ℚ)

end

end A374661.P2598813615720051612

/-! ## A374661.P7228366234504423238

`A374660(n)/6`
-/

namespace A374661.P7228366234504423238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374660 n : ℚ) / 6

end

end A374661.P7228366234504423238

/-! ## A374661.P13764715315911402237

`(A000211(n)+2)*a(n-1)` with `a(0)=1`
-/

namespace A374661.P13764715315911402237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000211 n + 2) * a (n - 1)

end

end A374661.P13764715315911402237

/-! ## A374661.P10074002565610412175

`(A000032(n)+4)*a(n-1)` with `a(0)=1`
-/

namespace A374661.P10074002565610412175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 n + 4) * a (n - 1)

end

end A374661.P10074002565610412175

/-! ## A374661.P4823474817249176044

`(A000204(n)+4)*a(n-1)` with `a(0)=1`
-/

namespace A374661.P4823474817249176044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000204 n + 4) * a (n - 1)

end

end A374661.P4823474817249176044

/-!
# A374662: a(n) = (1/2)*Product_{k=0..n} (F(k)+2), where F=A000045 (Fibonacci numbers).

The programs for A374662, there is no canonical definition to state claims against.
-/

/-! ## A374662.P5417352038567697287

`∏[A157725(n)]/2`
-/

namespace A374662.P5417352038567697287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A374662.P5417352038567697287

/-! ## A374662.P2059712309322998321

`∏[A000045(n)+2]/2`
-/

namespace A374662.P2059712309322998321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A374662.P2059712309322998321

/-! ## A374662.P10447547795285399875

`∏[A157729(n)-3]/2`
-/

namespace A374662.P10447547795285399875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A374662.P10447547795285399875

/-! ## A374662.P13066468638162369139

`(A001611(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374662.P13066468638162369139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A001611 n + 1) * a (n - 1)

end

end A374662.P13066468638162369139

/-!
# A374663: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} 1 / (k*a(k)) < 1.

The programs for A374663, there is no canonical definition to state claims against.
-/

/-! ## A374663.P15584149525239695304

`floor(A375516(n)/(n+1))+1`
-/

namespace A374663.P15584149525239695304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A375516 n : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A374663.P15584149525239695304

/-! ## A374663.P10550268567301743650

`A375517(n+1)/A375518(n)*A375516(n)`
-/

namespace A374663.P10550268567301743650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375517 (n + 1) : ℚ) / (A375518 n : ℚ) * (A375516 n : ℚ)

end

end A374663.P10550268567301743650

/-!
# A374664: Nonnegative numbers whose binary expansion has no ones in common with some of its cyclic shifts.

The programs for A374664, there is no canonical definition to state claims against.
-/

/-! ## A374664.P6423537125956927521

`lt[A077406(A124771(n)), A053644(2*n+1)]`
-/

namespace A374664.P6423537125956927521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077406 (A124771 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374664.P6423537125956927521

/-! ## A374664.P17101807163429906453

`lt[A334968(n)-1, A070939(n)]`
-/

namespace A374664.P17101807163429906453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374664.P17101807163429906453

/-! ## A374664.P2892355946700036602

`lt[A334032(A333219(n+1)), A070939(n)]`
-/

namespace A374664.P2892355946700036602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A333219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374664.P2892355946700036602

/-! ## A374664.P18029138680913326948

`lt[A334968(n), A334968(A000015(n+1))]`
-/

namespace A374664.P18029138680913326948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (A000015 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374664.P18029138680913326948

/-! ## A374664.P12161032777964446343

`lt[A124770(n), A023416(A001196(n))]`
-/

namespace A374664.P12161032777964446343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374664.P12161032777964446343

/-!
# A374665: a(n) is the first number that is the concatenation of n primes and also the product of n primes (counted with multiplicity).

The programs for A374665, there is no canonical definition to state claims against.
-/

/-! ## A374665.P4513135751562185143

`A007090(or(A061547(2*n+3), A346751(n)))`
-/

namespace A374665.P4513135751562185143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.lor (A061547 (2 * n + 3)) (A346751 n)).toNat

end

end A374665.P4513135751562185143

/-!
# A374666: Orders of groups for which there exists at least one group G of order k such that |Aut(G)|/GCD(|Aut(G)|,k) = (k/GCD(|Aut(G)|,k))-1.

The programs for A374666, there is no canonical definition to state claims against.
-/

/-! ## A374666.P7375526892671773721

`∪[A128603(n+1), A375162(n+1)]`
-/

namespace A374666.P7375526892671773721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P7375526892671773721

/-! ## A374666.P123726517230601191

`∪[A137944(n+1), A375162(n+1)]`
-/

namespace A374666.P123726517230601191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P123726517230601191

/-! ## A374666.P13309367132817746023

`∪[A246655(n+1), A375162(n+1)]`
-/

namespace A374666.P13309367132817746023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P13309367132817746023

/-! ## A374666.P9405649929991110588

`∪[A326837(n+1), A375162(n+1)]`
-/

namespace A374666.P9405649929991110588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P9405649929991110588

/-! ## A374666.P15866966496455880524

`∪[A326847(n+1), A375162(n+1)]`
-/

namespace A374666.P15866966496455880524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P15866966496455880524

/-! ## A374666.P8793074515859293298

`∪[A337935(n+1), A375162(n+1)]`
-/

namespace A374666.P8793074515859293298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P8793074515859293298

/-! ## A374666.P11386045558412048039

`∪[A375162(n+1), A385030(n+1)]`
-/

namespace A374666.P11386045558412048039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374666.P11386045558412048039

/-!
# A374667: Triangle T(n,k) (1 <= k <= n) read by rows: T(n,k) = c_n * F(k)/F(k+2) where c_n = LCM of F(3), F(4), ... F(n+2) (and F() are the Fibonacci numbers).

The programs for A374667, there is no canonical definition to state claims against.
-/

/-! ## A374667.P14677884966480560350

`A035105(row(n)+3)*A000045(col(n)+1)/A000045(col(n)+3)`
-/

namespace A374667.P14677884966480560350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035105 (SequenceMachineLib.triRow n + 3) * A000045 (SequenceMachineLib.triCol n + 1) : ℚ) / (A000045 (SequenceMachineLib.triCol n + 3) : ℚ)

end

end A374667.P14677884966480560350

/-!
# A374669: a(n) is the least number with n prime factors (counted with multiplicity) that is the concatenation of two primes.

The programs for A374669, there is no canonical definition to state claims against.
-/

/-! ## A374669.P12265705388069801772

`A374376(∑[n+2])`
-/

namespace A374669.P12265705388069801772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374669.P12265705388069801772

/-! ## A374669.P8320038590736403303

`abs(A374376(A000096(n+1)))`
-/

namespace A374669.P8320038590736403303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A374376 (A000096 (n + 1)).toNat|

end

end A374669.P8320038590736403303

/-!
# A374672: Numbers k such that k! has more infinitary divisors than (k+1)!.

The programs for A374672, there is no canonical definition to state claims against.
-/

/-! ## A374672.P8382397915958558503

`lt[Δ[A375635(n)], 0]`
-/

namespace A374672.P8382397915958558503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A374672.P8382397915958558503

/-! ## A374672.P9229703258518817295

`lt[A375635(n+1), A375635(n)]`
-/

namespace A374672.P9229703258518817295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374672.P9229703258518817295

/-!
# A374675: a(n) = Sum_{k=0..n} binomial(n+k-1,n) * binomial(n+k,n).

The programs for A374675, there is no canonical definition to state claims against.
-/

/-! ## A374675.P16833781805217165938

`A229998(n+1)*A244224(A365775(n))`
-/

namespace A374675.P16833781805217165938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (n + 1) * A244224 (A365775 n).toNat

end

end A374675.P16833781805217165938

/-!
# A374678: Number of integer compositions of n whose leaders of maximal anti-runs are not distinct.

The programs for A374678, there is no canonical definition to state claims against.
-/

/-! ## A374678.P17281852193840224057

`ceil(2^(n-1))-A374518(n)`
-/

namespace A374678.P17281852193840224057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A374518 n

end

end A374678.P17281852193840224057

/-! ## A374678.P10388619268887898711

`abs(A011782(n)-A374518(n))`
-/

namespace A374678.P10388619268887898711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A374518 n|

end

end A374678.P10388619268887898711

/-! ## A374678.P15135619360151092343

`A000079(n)-A131577(n)-A000027(A374518(n))`
-/

namespace A374678.P15135619360151092343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A131577 n - A000027 (A374518 n).toNat

end

end A374678.P15135619360151092343

/-! ## A374678.P8935150416092967581

`A135660(A149008(n))`
-/

namespace A374678.P8935150416092967581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A149008 n).toNat

end

end A374678.P8935150416092967581

/-! ## A374678.P3429301316611338599

`A085141(A063689(n+1))`
-/

namespace A374678.P3429301316611338599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A063689 (n + 1)).toNat

end

end A374678.P3429301316611338599

/-!
# A374679: Number of integer compositions of n whose leaders of anti-runs are strictly increasing.

The programs for A374679, there is no canonical definition to state claims against.
-/

/-! ## A374679.P18001311110049127948

`A390393(A334125(n+2))`
-/

namespace A374679.P18001311110049127948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390393 (A334125 (n + 2)).toNat

end

end A374679.P18001311110049127948

/-! ## A374679.P13725789558579815905

`A362607(n)+A358636(A000213(n))`
-/

namespace A374679.P13725789558579815905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362607 n + A358636 (A000213 n).toNat

end

end A374679.P13725789558579815905

/-! ## A374679.P12587366690770539240

`A245636(A001037(2*n))+A002264(n)`
-/

namespace A374679.P12587366690770539240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (A001037 (2 * n)).toNat + A002264 n

end

end A374679.P12587366690770539240

/-! ## A374679.P17481002590007924812

`A122921(A088218(n))+A025884(A005117(n+1))`
-/

namespace A374679.P17481002590007924812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A088218 n).toNat + A025884 (A005117 (n + 1)).toNat

end

end A374679.P17481002590007924812

/-!
# A374680: Number of integer compositions of n whose leaders of anti-runs are strictly decreasing.

The programs for A374680, there is no canonical definition to state claims against.
-/

/-! ## A374680.P2061493506694798603

`A113007(A354910(n))`
-/

namespace A374680.P2061493506694798603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113007 (A354910 n).toNat

end

end A374680.P2061493506694798603

/-! ## A374680.P6576150821423446195

`A272978(A217615(n))`
-/

namespace A374680.P6576150821423446195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (A217615 n).toNat

end

end A374680.P6576150821423446195

/-! ## A374680.P10805162303617896775

`A354910(n)-A341027(ceil(2^(n+1-log2(n+1))))`
-/

namespace A374680.P10805162303617896775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354910 n - A341027 (⌈(2 : ℝ) ^ ((n + 1 : ℝ) - Real.logb 2 (n + 1 : ℝ))⌉.toNat + 220)

end

end A374680.P10805162303617896775

/-! ## A374680.P549182856120076452

`A010761(A320921(n)+A077028(n))`
-/

namespace A374680.P549182856120076452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (A320921 n + A077028 n).toNat

end

end A374680.P549182856120076452

/-! ## A374680.P12999871567316751242

`A354910(n)-A056170(A000110(n))`
-/

namespace A374680.P12999871567316751242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354910 n - A056170 (A000110 n).toNat

end

end A374680.P12999871567316751242

/-!
# A374681: Number of integer compositions of n whose leaders of anti-runs are weakly increasing.

The programs for A374681, there is no canonical definition to state claims against.
-/

/-! ## A374681.P5017168518677763016

`A287864(A164182(n))`
-/

namespace A374681.P5017168518677763016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A164182 n).toNat

end

end A374681.P5017168518677763016

/-! ## A374681.P7406665899386086439

`A287864(A164183(n))`
-/

namespace A374681.P7406665899386086439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A164183 n).toNat

end

end A374681.P7406665899386086439

/-! ## A374681.P744858110483963524

`A287864(A164184(n))`
-/

namespace A374681.P744858110483963524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A164184 n).toNat

end

end A374681.P744858110483963524

/-! ## A374681.P3445160759919264652

`A287864(A164190(n))`
-/

namespace A374681.P3445160759919264652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A164190 n).toNat

end

end A374681.P3445160759919264652

/-! ## A374681.P1397778974865326842

`A235963(A246653(n))`
-/

namespace A374681.P1397778974865326842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A246653 n).toNat

end

end A374681.P1397778974865326842

/-!
# A374682: Number of integer compositions of n whose leaders of anti-runs are weakly decreasing.

The programs for A374682, there is no canonical definition to state claims against.
-/

/-! ## A374682.P4286558335134697819

`2^((n-1)%(n+1))-A374699(n)`
-/

namespace A374682.P4286558335134697819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) - (A374699 n : ℚ)

end

end A374682.P4286558335134697819

/-! ## A374682.P4220696360272005464

`A011782(n)-A374699(n)`
-/

namespace A374682.P4220696360272005464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A374699 n

end

end A374682.P4220696360272005464

/-! ## A374682.P4957958822963589789

`ceil((A000225(n)+1)/2)-A374699(n)`
-/

namespace A374682.P4957958822963589789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n + 1 : ℚ) / 2⌉ - A374699 n

end

end A374682.P4957958822963589789

/-! ## A374682.P3721589478142114836

`A279212(A000217(n))-A374699(n)`
-/

namespace A374682.P3721589478142114836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279212 (A000217 n).toNat - A374699 n

end

end A374682.P3721589478142114836

/-! ## A374682.P207943069547672019

`A000010(A000079(n))-A374699(n)`
-/

namespace A374682.P207943069547672019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A374699 n

end

end A374682.P207943069547672019

/-!
# A374683: Irregular triangle read by rows where row n lists the leaders of strictly increasing runs in the n-th composition in standard order.

The programs for A374683, there is no canonical definition to state claims against.
-/

/-! ## A374683.P13710464800745042977

`gcd(A329359(n+1), A376192(n+1))`
-/

namespace A374683.P13710464800745042977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329359 (n + 1)) (A376192 (n + 1))

end

end A374683.P13710464800745042977

/-! ## A374683.P17174949412856568525

`gcd(A123233(n), A340581(n+1))`
-/

namespace A374683.P17174949412856568525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123233 n) (A340581 (n + 1))

end

end A374683.P17174949412856568525

/-! ## A374683.P7428619076734095792

`A066099(C(comp[12*n], A333765(3*n+2)))`
-/

namespace A374683.P7428619076734095792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A333765 (3 * n + 2)).toNat)

end

end A374683.P7428619076734095792

/-! ## A374683.P14362879111096461253

`A066099(A031980(n+1)%A344899(2*n+5))`
-/

namespace A374683.P14362879111096461253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.tmod (A031980 (n + 1)) (A344899 (2 * n + 5))).toNat

end

end A374683.P14362879111096461253

/-! ## A374683.P8559421795223470258

`A374515(A024606(n+1)-A008683(3*n+2))`
-/

namespace A374683.P8559421795223470258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A024606 (n + 1) - A008683 (3 * n + 2)).toNat

end

end A374683.P8559421795223470258

/-!
# A374684: Sum of leaders of strictly increasing runs in the n-th composition in standard order.

The programs for A374684, there is no canonical definition to state claims against.
-/

/-! ## A374684.P6605394553806996579

`A374630(n)+A373954(n)`
-/

namespace A374684.P6605394553806996579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n + A373954 n

end

end A374684.P6605394553806996579

/-! ## A374684.P13114902290072150733

`A374516(n)+A374630(n)-A065120(n)`
-/

namespace A374684.P13114902290072150733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n + (A374630 n - A065120 n)

end

end A374684.P13114902290072150733

/-! ## A374684.P901361096219510369

`A374630(n)+A374758(n)-A374741(n)`
-/

namespace A374684.P901361096219510369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n + (A374758 n - A374741 n)

end

end A374684.P901361096219510369

/-! ## A374684.P7645247280393643211

`A374630(n)+∑[A209229(n)]-A373953(n)`
-/

namespace A374684.P7645247280393643211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n + (∑ j ∈ Finset.range (n + 1), f1 j - A373953 n)

end

end A374684.P7645247280393643211

/-! ## A374684.P16746760397029903223

`A373954(n)+A070939(A375123(n))%A000143(n)`
-/

namespace A374684.P16746760397029903223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + Int.tmod (A070939 (A375123 n).toNat) (A000143 n)

end

end A374684.P16746760397029903223

/-! ## A374684.P7239063666298703767

`A029837(A375125(n)+1)`
-/

namespace A374684.P7239063666298703767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A375125 n + 1).toNat

end

end A374684.P7239063666298703767

/-! ## A374684.P13569892520736574547

`A070939(A375125(n))-A000007(n)`
-/

namespace A374684.P13569892520736574547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A375125 n).toNat - A000007 n

end

end A374684.P13569892520736574547

/-! ## A374684.P4465174013183075819

`A070939(A375125(n))%A002326(n)`
-/

namespace A374684.P4465174013183075819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A375125 n).toNat) (A002326 n)

end

end A374684.P4465174013183075819

/-!
# A374685: Numbers k such that the leaders of strictly increasing runs in the k-th composition in standard order are identical.

The programs for A374685, there is no canonical definition to state claims against.
-/

/-! ## A374685.P13073021137608208312

`∩[A374519(n+1), A374633(n+1)]`
-/

namespace A374685.P13073021137608208312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374685.P13073021137608208312

/-! ## A374685.P2677532101983613026

`eq[0, A333382(A375125(n))]`
-/

namespace A374685.P2677532101983613026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374685.P2677532101983613026

/-! ## A374685.P5051936176778332892

`eq[A124762(A375125(n)), A124763(n)]`
-/

namespace A374685.P5051936176778332892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375125 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374685.P5051936176778332892

/-! ## A374685.P2731493684442205159

`eq[A065120(n), A373953(A375125(n))]`
-/

namespace A374685.P2731493684442205159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A375125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374685.P2731493684442205159

/-! ## A374685.P798770943231684006

`eq[A374516(A375125(n)), A374684(n)]`
-/

namespace A374685.P798770943231684006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (A375125 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374685.P798770943231684006

/-!
# A374686: Number of integer compositions of n whose leaders of strictly increasing runs are identical.

The programs for A374686, there is no canonical definition to state claims against.
-/

/-! ## A374686.P10514178850125806964

`A400101(A007054(n+1))`
-/

namespace A374686.P10514178850125806964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400101 (A007054 (n + 1)).toNat

end

end A374686.P10514178850125806964

/-! ## A374686.P14742957016842007328

`A101888(A039828(n+2))`
-/

namespace A374686.P14742957016842007328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101888 (A039828 (n + 2)).toNat

end

end A374686.P14742957016842007328

/-! ## A374686.P16885377605358969836

`A000196(A063834(n)+A014334(n))`
-/

namespace A374686.P16885377605358969836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063834 n + A014334 n).toNat

end

end A374686.P16885377605358969836

/-! ## A374686.P15485778038152318287

`A003056(A243965(n)+A075900(n))`
-/

namespace A374686.P15485778038152318287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A243965 n + A075900 n).toNat

end

end A374686.P15485778038152318287

/-! ## A374686.P13209958976743115997

`A000196(A294860(n)*A300913(n))`
-/

namespace A374686.P13209958976743115997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A294860 n * A300913 n).toNat

end

end A374686.P13209958976743115997

/-!
# A374687: Number of integer compositions of n whose leaders of strictly increasing runs are distinct.

The programs for A374687, there is no canonical definition to state claims against.
-/

/-! ## A374687.P5853093034851609067

`or(A001222(A251177(n)), A005169(n))`
-/

namespace A374687.P5853093034851609067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A251177 n).toNat) (A005169 n)

end

end A374687.P5853093034851609067

/-! ## A374687.P11432269866684481234

`or(A025147(n), A239086(A005169(n)))`
-/

namespace A374687.P11432269866684481234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025147 n) (A239086 (A005169 n).toNat)

end

end A374687.P11432269866684481234

/-! ## A374687.P13850087948378747130

`or(A006721(n), A181578(A181532(n)))`
-/

namespace A374687.P13850087948378747130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006721 n) (A181578 (A181532 n).toNat)

end

end A374687.P13850087948378747130

/-! ## A374687.P17594724469449208028

`or(A025147(n), A181578(A181532(n)))`
-/

namespace A374687.P17594724469449208028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025147 n) (A181578 (A181532 n).toNat)

end

end A374687.P17594724469449208028

/-! ## A374687.P770431112408125411

`or(A005169(n), A095407(A351283(n)))`
-/

namespace A374687.P770431112408125411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005169 n) (A095407 (A351283 n).toNat)

end

end A374687.P770431112408125411

/-!
# A374688: Number of integer compositions of n whose leaders of strictly increasing runs are themselves strictly increasing.

The programs for A374688, there is no canonical definition to state claims against.
-/

/-! ## A374688.P14672173004442942983

`A056556(A001006(n))-A359546(3*n+5)`
-/

namespace A374688.P14672173004442942983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A001006 n).toNat - A359546 (3 * n + 5)

end

end A374688.P14672173004442942983

/-! ## A374688.P13263108368983618832

`A374769(A143572(n+1))+A143644(2*(n+2))`
-/

namespace A374688.P13263108368983618832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374769 (A143572 (n + 1)).toNat + A143644 (2 * (n + 2))

end

end A374688.P13263108368983618832

/-!
# A374689: Number of integer compositions of n whose leaders of strictly increasing runs are strictly decreasing.

The programs for A374689, there is no canonical definition to state claims against.
-/

/-! ## A374689.P331266215365255132

`Δ[A374634(n+2)-A122079(A374634(n))]`
-/

namespace A374689.P331266215365255132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374634 (n + 2) - A122079 (A374634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A374689.P331266215365255132

/-!
# A374690: Number of integer compositions of n whose leaders of strictly increasing runs are weakly increasing.

The programs for A374690, there is no canonical definition to state claims against.
-/

/-! ## A374690.P13063775642767878855

`A082447(A148315(n))`
-/

namespace A374690.P13063775642767878855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148315 n).toNat

end

end A374690.P13063775642767878855

/-! ## A374690.P3671329960537552151

`A202304(A148344(n))`
-/

namespace A374690.P3671329960537552151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148344 n).toNat

end

end A374690.P3671329960537552151

/-! ## A374690.P11134111116345443455

`A202304(A148345(n))`
-/

namespace A374690.P11134111116345443455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148345 n).toNat

end

end A374690.P11134111116345443455

/-! ## A374690.P15886430525455757859

`A202304(A148346(n))`
-/

namespace A374690.P15886430525455757859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148346 n).toNat

end

end A374690.P15886430525455757859

/-! ## A374690.P18006760154913826642

`A202304(A148347(n))`
-/

namespace A374690.P18006760154913826642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148347 n).toNat

end

end A374690.P18006760154913826642

/-!
# A374691: The smallest m+k such that n can be written as n=binomial(m,k).

The programs for A374691, there is no canonical definition to state claims against.
-/

/-! ## A374691.P13223464337962502664

`A357327(n+1)+A058084(n+1)`
-/

namespace A374691.P13223464337962502664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (n + 1) + A058084 (n + 1)

end

end A374691.P13223464337962502664

/-! ## A374691.P14255738738363732641

`∑{e}[A355391(n+1), #+1]`
-/

namespace A374691.P14255738738363732641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A374691.P14255738738363732641

/-!
# A374692: Number of partitions of [n] such that the element sum of each block is one more than a multiple of three.

The programs for A374692, there is no canonical definition to state claims against.
-/

/-! ## A374692.P11603648205014252362

`A375924(∑[n+4]+2)`
-/

namespace A374692.P11603648205014252362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A374692.P11603648205014252362

/-!
# A374695: a(1) = 2; a(n) is the second smallest multiple of n different from a(1), ..., a(n-1).

The programs for A374695, there is no canonical definition to state claims against.
-/

/-! ## A374695.P12808199660782882440

`(n+1)*A333229(A374259(n))`
-/

namespace A374695.P12808199660782882440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333229 (A374259 n).toNat

end

end A374695.P12808199660782882440

/-! ## A374695.P1897698625660153133

`(A211985(A063886(n))+1)*(n+1)`
-/

namespace A374695.P1897698625660153133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211985 (A063886 n).toNat + 1) * (n + 1 : ℤ)

end

end A374695.P1897698625660153133

/-! ## A374695.P14928080743239286564

`(n+1)*A248140(A030068(Δ[n²]))`
-/

namespace A374695.P14928080743239286564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A248140 (A030068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A374695.P14928080743239286564

/-! ## A374695.P6965718163134651461

`(A001221(A179756(n+1))+1)*(n+1)`
-/

namespace A374695.P6965718163134651461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (A179756 (n + 1)).toNat + 1) * (n + 1 : ℤ)

end

end A374695.P6965718163134651461

/-! ## A374695.P5074861027829387070

`(A279387(2*n+1)+1)*A039616(2*n+3)`
-/

namespace A374695.P5074861027829387070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279387 (2 * n + 1) + 1) * A039616 (2 * n + 3)

end

end A374695.P5074861027829387070

/-!
# A374697: Number of integer compositions of n whose leaders of strictly increasing runs are weakly decreasing.

The programs for A374697, there is no canonical definition to state claims against.
-/

/-! ## A374697.P5654517305077183407

`ceil(2^(n-1))-A375135(n)`
-/

namespace A374697.P5654517305077183407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A375135 n

end

end A374697.P5654517305077183407

/-! ## A374697.P16327780915788106059

`abs(A011782(n)-A375135(n))`
-/

namespace A374697.P16327780915788106059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A375135 n|

end

end A374697.P16327780915788106059

/-! ## A374697.P15820698234945643620

`A189076(n)+A374636(n)-A375135(n)`
-/

namespace A374697.P15820698234945643620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189076 n + (A374636 n - A375135 n)

end

end A374697.P15820698234945643620

/-! ## A374697.P2818684128067777173

`A000027(A011782(n)-A375135(n))`
-/

namespace A374697.P2818684128067777173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011782 n - A375135 n).toNat

end

end A374697.P2818684128067777173

/-! ## A374697.P17128524833915003944

`A317137(A383765(n))`
-/

namespace A374697.P17128524833915003944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A383765 n).toNat

end

end A374697.P17128524833915003944

/-!
# A374699: Number of integer compositions of n whose leaders of maximal anti-runs are not weakly decreasing.

The programs for A374699, there is no canonical definition to state claims against.
-/

/-! ## A374699.P1488724669012691563

`ceil(2^(n-1))-A374682(n)`
-/

namespace A374699.P1488724669012691563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A374682 n

end

end A374699.P1488724669012691563

/-! ## A374699.P7604981524273408436

`A011782(n)%A374682(n)`
-/

namespace A374699.P7604981524273408436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A374682 n)

end

end A374699.P7604981524273408436

/-! ## A374699.P2469773014586415929

`A131577(n)%A374682(n)`
-/

namespace A374699.P2469773014586415929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 n) (A374682 n)

end

end A374699.P2469773014586415929

/-! ## A374699.P12268636409341706306

`A090129(n+1)%A374682(n)`
-/

namespace A374699.P12268636409341706306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090129 (n + 1)) (A374682 n)

end

end A374699.P12268636409341706306

/-! ## A374699.P4079169217892701559

`A053646(A374682(n))`
-/

namespace A374699.P4079169217892701559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A374682 n).toNat

end

end A374699.P4079169217892701559

