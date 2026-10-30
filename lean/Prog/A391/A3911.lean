import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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

/-!
# A391100: Expansion of g/(1 - x^3*g^3), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391100, there is no canonical definition to state claims against.
-/

/-! ## A391100.P10463091626945647457

`A051933(A095983(n))+A002293(n)`
-/

namespace A391100.P10463091626945647457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (A095983 n).toNat + A002293 n

end

end A391100.P10463091626945647457

/-! ## A391100.P4075571213358586137

`A256474(A251181(n)-A048298(n))`
-/

namespace A391100.P4075571213358586137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256474 (A251181 n - A048298 n).toNat

end

end A391100.P4075571213358586137

/-!
# A391101: Expansion of g/(1 - x^3*g^4), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391101, there is no canonical definition to state claims against.
-/

/-! ## A391101.P1892357297759535108

`A305199(n)-lt[∑{e}[A189598(n+5), #]%2, 1]`
-/

namespace A391101.P1892357297759535108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189598 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305199 n - (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ)

end

end A391101.P1892357297759535108

/-! ## A391101.P7491497716331070108

`A187181(A246538(n))-A074429(n+1)`
-/

namespace A391101.P7491497716331070108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A246538 n).toNat - A074429 (n + 1)

end

end A391101.P7491497716331070108

/-!
# A391102: Expansion of g^3/(1 - x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391102, there is no canonical definition to state claims against.
-/

/-! ## A391102.P10111588072937311968

`A377137(A076035(n)+A051366(n))`
-/

namespace A391102.P10111588072937311968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377137 (A076035 n + A051366 n).toNat

end

end A391102.P10111588072937311968

/-!
# A391103: Expansion of g^3/(1 - x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391103, there is no canonical definition to state claims against.
-/

/-! ## A391103.P7484895949714456784

`A125987(A001436(n+1))+A006632(n+1)`
-/

namespace A391103.P7484895949714456784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125987 (A001436 (n + 1)).toNat + A006632 (n + 1)

end

end A391103.P7484895949714456784

/-!
# A391104: Expansion of g/(1 - x^2*g^6), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391104, the canonical program `A391104.P2454600983676168327` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391104 has offset 0).

The definition of A391104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391104.P2454600983676168327

`1/(3*n+1)*∑{#}[floor(n/2), (6*#+1)*C(4*n-2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391104

/-- `1/(3*n+1)*∑{#}[floor(n/2), (6*#+1)*C(4*n-2*#, n-2*#)]` -/
def P2454600983676168327.Spec : Prop :=
  ∀ n, P2454600983676168327.a n = (A391104 n : ℚ)

end A391104

/-! ## A391104.P8807018897817402580

`∑{#}[n, (-1)^#*(3*#+2)*C(4*n-#+2, n-#)/(4*n-#+2)]`
-/

namespace A391104.P8807018897817402580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k * (3 * k + 2 : ℤ) * (Nat.choose ((4 * n : ℤ) - (k : ℤ) + 2).toNat ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / ((4 * n : ℤ) - (k : ℤ) + 2 : ℚ)

end

end A391104.P8807018897817402580

namespace A391104

/-- `∑{#}[n, (-1)^#*(3*#+2)*C(4*n-#+2, n-#)/(4*n-#+2)]` -/
def P8807018897817402580.Spec : Prop :=
  ∀ n, P8807018897817402580.a n = (A391104 n : ℚ)

end A391104

/-!
# A391105: a(n) = binomial(4*n,n) - binomial(3*n,n).

The programs for A391105, the canonical program `A391105.P9636538939398143610` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391105 has offset 0).

The definition of A391105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, n)-C(3*n, n)` (program `A391105.P9636538939398143610`, by `A391105.P9636538939398143610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391105.P16093925430873800075

`∑{#}[n-1, C(n, #+1)*C(3*n, n-(#+1))]`
-/

namespace A391105.P16093925430873800075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (k + 1) * Nat.choose (3 * n) ((n : ℤ) - (k + 1 : ℤ)).toNat

end

end A391105.P16093925430873800075

namespace A391105

/-- `∑{#}[n-1, C(n, #+1)*C(3*n, n-(#+1))]` -/
def P16093925430873800075.Spec : Prop :=
  ∀ n, (P16093925430873800075.a n : ℤ) = A391105 n

end A391105

/-! ## A391105.P9636538939398143610

`C(4*n, n)-C(3*n, n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391105

/-- `C(4*n, n)-C(3*n, n)` -/
def P9636538939398143610.Spec : Prop :=
  ∀ n, P9636538939398143610.a n = A391105 n

theorem P9636538939398143610.correct : P9636538939398143610.Spec := by
  intro n
  simp only [A391105]

end A391105

/-! ## A391105.P11887272469698798555

`1/n!*((4*n)!/(3*n)!-(3*n)!/(2*n)!)`
-/

namespace A391105.P11887272469698798555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * ((Nat.factorial (4 * n) : ℚ) / (Nat.factorial (3 * n) : ℚ) - (Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ))

end

end A391105.P11887272469698798555

namespace A391105

/-- `1/n!*((4*n)!/(3*n)!-(3*n)!/(2*n)!)` -/
def P11887272469698798555.Spec : Prop :=
  ∀ n, P11887272469698798555.a n = (A391105 n : ℚ)

end A391105

/-! ## A391105.P4035589622233310174

`A005810(n)-A005809(n)`
-/

namespace A391105.P4035589622233310174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - A005809 n

end

end A391105.P4035589622233310174

namespace A391105

/-- `A005810(n)-A005809(n)` -/
def P4035589622233310174.Spec : Prop :=
  ∀ n, P4035589622233310174.a n = A391105 n

end A391105

/-! ## A391105.P8341490312691081458

`A005810(n)-A119301(∑[n])`
-/

namespace A391105.P8341490312691081458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - A119301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391105.P8341490312691081458

namespace A391105

/-- `A005810(n)-A119301(∑[n])` -/
def P8341490312691081458.Spec : Prop :=
  ∀ n, P8341490312691081458.a n = A391105 n

end A391105

/-! ## A391105.P18181229847135038154

`A005810(n)-(2*n+1)*A001764(n)`
-/

namespace A391105.P18181229847135038154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - (2 * n + 1 : ℤ) * A001764 n

end

end A391105.P18181229847135038154

namespace A391105

/-- `A005810(n)-(2*n+1)*A001764(n)` -/
def P18181229847135038154.Spec : Prop :=
  ∀ n, P18181229847135038154.a n = A391105 n

end A391105

/-! ## A391105.P590505800642528417

`A005810(n)-lcm(2*n+1, A303259(2*n+1))`
-/

namespace A391105.P590505800642528417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - (Int.lcm (2 * n + 1 : ℤ) (A303259 (2 * n + 1)) : ℤ)

end

end A391105.P590505800642528417

namespace A391105

/-- `A005810(n)-lcm(2*n+1, A303259(2*n+1))` -/
def P590505800642528417.Spec : Prop :=
  ∀ n, P590505800642528417.a n = A391105 n

end A391105

/-! ## A391105.P6176725163395428275

`A119304(A000217(n))-A119301(∑[n])`
-/

namespace A391105.P6176725163395428275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (A000217 n).toNat - A119301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391105.P6176725163395428275

namespace A391105

/-- `A119304(A000217(n))-A119301(∑[n])` -/
def P6176725163395428275.Spec : Prop :=
  ∀ n, P6176725163395428275.a n = A391105 n

end A391105

/-! ## A391105.P13403070548417288128

`A119304(A000217(n))-record[A119301(n)]`
-/

namespace A391105.P13403070548417288128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (A000217 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391105.P13403070548417288128

namespace A391105

/-- `A119304(A000217(n))-record[A119301(n)]` -/
def P13403070548417288128.Spec : Prop :=
  ∀ n, P13403070548417288128.a n = A391105 n

end A391105

/-! ## A391105.P4966567753942785452

`A119304(A000217(n))-A081204(2*n)`
-/

namespace A391105.P4966567753942785452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (A000217 n).toNat - A081204 (2 * n)

end

end A391105.P4966567753942785452

namespace A391105

/-- `A119304(A000217(n))-A081204(2*n)` -/
def P4966567753942785452.Spec : Prop :=
  ∀ n, P4966567753942785452.a n = A391105 n

end A391105

/-! ## A391105.P9058672411263171459

`A002293(n)*A016777(n)-A005809(n)`
-/

namespace A391105.P9058672411263171459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016777 n - A005809 n

end

end A391105.P9058672411263171459

namespace A391105

/-- `A002293(n)*A016777(n)-A005809(n)` -/
def P9058672411263171459.Spec : Prop :=
  ∀ n, P9058672411263171459.a n = A391105 n

end A391105

/-!
# A391106: When constructing the sequence of the positive integers > 1 from prime factors, we reuse the prime factors of the smallest earlier constructed numbers where we can. The sequence is the numbers whose prime factors were first reused entirely in the process.

The programs for A391106, there is no canonical definition to state claims against.
-/

/-! ## A391106.P15174728161009381364

`A268335(n+1)+A164660(A283042(n+1))`
-/

namespace A391106.P15174728161009381364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) + A164660 (A283042 (n + 1)).toNat

end

end A391106.P15174728161009381364

/-!
# A391115: Numbers that are neither 4-free nor 4-full.

The programs for A391115, there is no canonical definition to state claims against.
-/

/-! ## A391115.P17277409943131201781

`∪[A391591(n+1), A391593(n+1)]`
-/

namespace A391115.P17277409943131201781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P17277409943131201781

/-! ## A391115.P480020152266092558

`∩[A102467(n+1), A375146(n+1)]`
-/

namespace A391115.P480020152266092558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P480020152266092558

/-! ## A391115.P10876738623583941746

`∩[A046101(n+1), A324455(n+1)]`
-/

namespace A391115.P10876738623583941746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P10876738623583941746

/-! ## A391115.P17126855504574002368

`∩[A324455(n+1), A375146(n+1)]`
-/

namespace A391115.P17126855504574002368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P17126855504574002368

/-! ## A391115.P10192459535323610913

`∩[A046101(n+1), A278638(n+1)]`
-/

namespace A391115.P10192459535323610913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391115.P10192459535323610913

/-!
# A391117: Powers of 7 that do not contain the digit 7 (in base 10).

The programs for A391117, there is no canonical definition to state claims against.
-/

/-! ## A391117.P15964959160022388576

`7^A189025(A177131(n))`
-/

namespace A391117.P15964959160022388576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A189025 (A177131 n).toNat : ℤ)

end

end A391117.P15964959160022388576

/-!
# A391121: First of four consecutive primes with product p and sum s such that |s^2-p| and s^2+p are both prime.

The programs for A391121, there is no canonical definition to state claims against.
-/

/-! ## A391121.P15849496321238970387

`p?[A029981(a(n-1))]` with `a(0)=1`
-/

namespace A391121.P15849496321238970387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029981 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A391121.P15849496321238970387

/-!
# A391122: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391122, there is no canonical definition to state claims against.
-/

/-! ## A391122.P15008101886505599086

`A391058(n+2)-A001764(n+2)`
-/

namespace A391122.P15008101886505599086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391058 (n + 2) - A001764 (n + 2)

end

end A391122.P15008101886505599086

/-!
# A391123: Expansion of g^2/(1 - x^3*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391123, there is no canonical definition to state claims against.
-/

/-! ## A391123.P18280049670792650121

`A391296(n)+A243822(A047796(n))`
-/

namespace A391123.P18280049670792650121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391296 n + A243822 (A047796 n).toNat

end

end A391123.P18280049670792650121

/-!
# A391124: Expansion of g^2/(1 - x^3*g^2), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391124, there is no canonical definition to state claims against.
-/

/-! ## A391124.P11545367876540353799

`A285879(A292760(n+1)-A000096(n))`
-/

namespace A391124.P11545367876540353799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A292760 (n + 1) - A000096 n).toNat

end

end A391124.P11545367876540353799

/-!
# A391125: Expansion of g^2/(2 - g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391125, the canonical program `A391125.P13453355747424246160` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391125 has offset 0).

The definition of A391125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391125.P13453355747424246160

`1/(3*n+2)*∑{#}[n, (3*#+2)*C(3*n+2, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391125

/-- `1/(3*n+2)*∑{#}[n, (3*#+2)*C(3*n+2, n-#)]` -/
def P13453355747424246160.Spec : Prop :=
  ∀ n, P13453355747424246160.a n = (A391125 n : ℚ)

end A391125

/-! ## A391125.P12508910916025753382

`A126042(3*n+1)`
-/

namespace A391125.P12508910916025753382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 (3 * n + 1)

end

end A391125.P12508910916025753382

namespace A391125

/-- `A126042(3*n+1)` -/
def P12508910916025753382.Spec : Prop :=
  ∀ n, P12508910916025753382.a n = A391125 n

end A391125

/-! ## A391125.P9418888809291049878

`A047098(n)+A047098(n)-A001764(n)`
-/

namespace A391125.P9418888809291049878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 n + (A047098 n - A001764 n)

end

end A391125.P9418888809291049878

namespace A391125

/-- `A047098(n)+A047098(n)-A001764(n)` -/
def P9418888809291049878.Spec : Prop :=
  ∀ n, P9418888809291049878.a n = A391125 n

end A391125

/-! ## A391125.P17164032589547174816

`A045721(n)+A045721(n)-A160906(n)`
-/

namespace A391125.P17164032589547174816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + (A045721 n - A160906 n)

end

end A391125.P17164032589547174816

namespace A391125

/-- `A045721(n)+A045721(n)-A160906(n)` -/
def P17164032589547174816.Spec : Prop :=
  ∀ n, P17164032589547174816.a n = A391125 n

end A391125

/-! ## A391125.P596703466502679355

`A047089(A062708(n+1))`
-/

namespace A391125.P596703466502679355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A062708 (n + 1)).toNat

end

end A391125.P596703466502679355

namespace A391125

/-- `A047089(A062708(n+1))` -/
def P596703466502679355.Spec : Prop :=
  ∀ n, P596703466502679355.a n = A391125 n

end A391125

/-!
# A391126: Expansion of g^2/(1 - x^2*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391126, there is no canonical definition to state claims against.
-/

/-! ## A391126.P5490411267196646785

`A256182(n)+A008679(A004213(n))`
-/

namespace A391126.P5490411267196646785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256182 n + A008679 (A004213 n).toNat

end

end A391126.P5490411267196646785

/-! ## A391126.P7469975303539390079

`A326016(A263620(n+1))+A011791(n)`
-/

namespace A391126.P7469975303539390079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A263620 (n + 1)).toNat + A011791 n

end

end A391126.P7469975303539390079

/-!
# A391127: Expansion of g^2/(1 - x^3*g^3), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391127, there is no canonical definition to state claims against.
-/

/-! ## A391127.P11223917869374841223

`A185063(A177988(n+1))+A006013(n)`
-/

namespace A391127.P11223917869374841223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A177988 (n + 1)).toNat + A006013 n

end

end A391127.P11223917869374841223

/-! ## A391127.P10290265022303581392

`A077467(A366118(n))-A004125(n+1)`
-/

namespace A391127.P10290265022303581392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A366118 n).toNat - A004125 (n + 1)

end

end A391127.P10290265022303581392

/-!
# A391128: Expansion of g^2/(1 - x*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391128, the canonical program `A391128.P10953034263892495896` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391128 has offset 0).

The definition of A391128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391128.P10953034263892495896

`∑{#}[n, (4*#+2)*C(3*n+#+2, n-#)/(3*n+#+2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391128

/-- `∑{#}[n, (4*#+2)*C(3*n+#+2, n-#)/(3*n+#+2)]` -/
def P10953034263892495896.Spec : Prop :=
  ∀ n, P10953034263892495896.a n = (A391128 n : ℚ)

end A391128

/-! ## A391128.P3910911922473726975

`A191321(3*n+n+1)`
-/

namespace A391128.P3910911922473726975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (3 * n + (n + 1))

end

end A391128.P3910911922473726975

namespace A391128

/-- `A191321(3*n+n+1)` -/
def P3910911922473726975.Spec : Prop :=
  ∀ n, P3910911922473726975.a n = A391128 n

end A391128

/-!
# A391129: Expansion of g^2/(1 - x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391129, the canonical program `A391129.P13219459186878549978` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391129 has offset 0).

The definition of A391129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391129.P13219459186878549978

`1/(n+1)*∑{#}[floor(n/2), (2*#+1)*C(3*n-2*#+1, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391129

/-- `1/(n+1)*∑{#}[floor(n/2), (2*#+1)*C(3*n-2*#+1, n-2*#)]` -/
def P13219459186878549978.Spec : Prop :=
  ∀ n, P13219459186878549978.a n = (A391129 n : ℚ)

end A391129

/-! ## A391129.P10858568737806591265

`∑{#}[n, (-1)^#*(2*#+3)*C(3*n-#+3, n-#)/(3*n-#+3)]`
-/

namespace A391129.P10858568737806591265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k * (2 * k + 3 : ℤ) * (Nat.choose ((3 * n : ℤ) - (k : ℤ) + 3).toNat ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / ((3 * n : ℤ) - (k : ℤ) + 3 : ℚ)

end

end A391129.P10858568737806591265

namespace A391129

/-- `∑{#}[n, (-1)^#*(2*#+3)*C(3*n-#+3, n-#)/(3*n-#+3)]` -/
def P10858568737806591265.Spec : Prop :=
  ∀ n, P10858568737806591265.a n = (A391129 n : ℚ)

end A391129

/-!
# A391130: Expansion of g^2/(1 - x^3*g^4), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391130, there is no canonical definition to state claims against.
-/

/-! ## A391130.P6619123715242848594

`A374638(A374618(n))+A006013(n)`
-/

namespace A391130.P6619123715242848594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (A374618 n).toNat + A006013 n

end

end A391130.P6619123715242848594

/-! ## A391130.P15586357273003118834

`A374638(A374619(n))+A006013(n)`
-/

namespace A391130.P15586357273003118834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (A374619 n).toNat + A006013 n

end

end A391130.P15586357273003118834

/-!
# A391131: Areas of Pythagorean triangles that are sums of two or more consecutive primes.

The programs for A391131, there is no canonical definition to state claims against.
-/

/-! ## A391131.P1348214779058650780

`∩[A009112(n+1), A050936(n+1)]`
-/

namespace A391131.P1348214779058650780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P1348214779058650780

/-! ## A391131.P8834814151477154418

`∩[A009112(n+1), A338446(n+1)]`
-/

namespace A391131.P8834814151477154418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P8834814151477154418

/-! ## A391131.P17865568386159876423

`∩[A009112(n+1), A034707(n+1)]`
-/

namespace A391131.P17865568386159876423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P17865568386159876423

/-! ## A391131.P14333583314108217886

`∩[A009112(n+1), A346002(n+1)]`
-/

namespace A391131.P14333583314108217886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391131.P14333583314108217886

/-!
# A391132: Number of planar graphs on n unlabeled vertices with a planar complement.

The programs for A391132, there is no canonical definition to state claims against.
-/

/-! ## A391132.P17709785834888467678

`A132881(A203014(n))+A002931(n+1)`
-/

namespace A391132.P17709785834888467678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (A203014 n).toNat + A002931 (n + 1)

end

end A391132.P17709785834888467678

/-! ## A391132.P18271538238137591165

`A133557(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A391132.P18271538238137591165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A133557 (a (n - 1)).toNat + 1

end

end A391132.P18271538238137591165

/-!
# A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

The programs for A391134, the canonical program `A391134.P1699678046192407440` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391134 has offset 0).

The definition of A391134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A391134

/-- `A030238(n+1)-A132364(n+1)` -/
def P1699678046192407440.Spec : Prop :=
  ∀ n, P1699678046192407440.a n = A391134 n

theorem P1699678046192407440.correct : P1699678046192407440.Spec := by
  intro n
  simp only [A391134]

end A391134

/-! ## A391134.P16142027815412087808

`A132364(n+3)-A132364(n+1)`
-/

namespace A391134.P16142027815412087808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 (n + 3) - A132364 (n + 1)

end

end A391134.P16142027815412087808

namespace A391134

/-- `A132364(n+3)-A132364(n+1)` -/
def P16142027815412087808.Spec : Prop :=
  ∀ n, P16142027815412087808.a n = A391134 n

end A391134

/-! ## A391134.P954343826229904996

`A030238(n+2)-A000108(n+2)`
-/

namespace A391134.P954343826229904996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 2) - A000108 (n + 2)

end

end A391134.P954343826229904996

namespace A391134

/-- `A030238(n+2)-A000108(n+2)` -/
def P954343826229904996.Spec : Prop :=
  ∀ n, P954343826229904996.a n = A391134 n

end A391134

/-! ## A391134.P4668713042121344751

`A014138(n+1)-A086425(A014138(n))`
-/

namespace A391134.P4668713042121344751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) - A086425 (A014138 n).toNat

end

end A391134.P4668713042121344751

namespace A391134

/-- `A014138(n+1)-A086425(A014138(n))` -/
def P4668713042121344751.Spec : Prop :=
  ∀ n, P4668713042121344751.a n = A391134 n

end A391134

/-!
# A391135: Primes p == 9 (mod 16) for which the real part of the octonic Gauss sum ("normalized", i.e., divided by sqrt(p) ) is greater than 1.

The programs for A391135, there is no canonical definition to state claims against.
-/

/-! ## A391135.P17476758021260364558

`filter[A387776(n+1), A144603(#)]`
-/

namespace A391135.P17476758021260364558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A391135.P17476758021260364558

/-! ## A391135.P6315858321687030410

`filter[A387776(n+1), A169672(#)]`
-/

namespace A391135.P6315858321687030410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A391135.P6315858321687030410

/-! ## A391135.P5258419241749732886

`∩[A049638(n), A387776(n+1)]`
-/

namespace A391135.P5258419241749732886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391135.P5258419241749732886

/-! ## A391135.P5538094420677429705

`∩[A296368(n), A387776(n+1)]`
-/

namespace A391135.P5538094420677429705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391135.P5538094420677429705

/-! ## A391135.P9047439796087546502

`∩[A105126(n+1), A387776(n+1)]`
-/

namespace A391135.P9047439796087546502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391135.P9047439796087546502

/-!
# A391136: Primes p == 9 (mod 16) for which the real part of the octonic Gauss sum ("normalized", i.e., divided by sqrt(p) ) is less than 1.

The programs for A391136, there is no canonical definition to state claims against.
-/

/-! ## A391136.P11200871725632602891

`filter[A390354(n+1), A144603(#)]`
-/

namespace A391136.P11200871725632602891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144603 (f1 j).toNat = 1) n)

end

end A391136.P11200871725632602891

/-! ## A391136.P4593798224133937097

`filter[A390354(n+1), A169672(#)]`
-/

namespace A391136.P4593798224133937097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A391136.P4593798224133937097

/-! ## A391136.P297626863256483316

`∩[A273420(n), A390354(n+1)]`
-/

namespace A391136.P297626863256483316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391136.P297626863256483316

/-! ## A391136.P10769867248690457253

`∩[A273834(n), A390354(n+1)]`
-/

namespace A391136.P10769867248690457253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391136.P10769867248690457253

/-! ## A391136.P18314339184426395936

`∩[A296368(n), A390354(n+1)]`
-/

namespace A391136.P18314339184426395936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391136.P18314339184426395936

/-!
# A391137: Numbers k such that the divisors of k^2 + 1 are all of the form m^2 + 1.

The programs for A391137, there is no canonical definition to state claims against.
-/

/-! ## A391137.P1622819204511961022

`sqrt(A054964(n+1)-1)`
-/

namespace A391137.P1622819204511961022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054964 (n + 1) - 1 : ℝ)

end

end A391137.P1622819204511961022

/-! ## A391137.P18443931729466095534

`eq[A130008(n), A397263(n)]`
-/

namespace A391137.P18443931729466095534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P18443931729466095534

/-! ## A391137.P4385959304539117399

`eq[A266722(n), A278162(n)]`
-/

namespace A391137.P4385959304539117399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P4385959304539117399

/-! ## A391137.P11875474563452987876

`eq[A152271(n), A397263(n)]`
-/

namespace A391137.P11875474563452987876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P11875474563452987876

/-! ## A391137.P9201502414171178713

`eq[A069932(n+1), A193432(n)]`
-/

namespace A391137.P9201502414171178713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P9201502414171178713

/-! ## A391137.P6461890421374910308

`eq[A078315(n+1), A397263(n)]`
-/

namespace A391137.P6461890421374910308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391137.P6461890421374910308

/-! ## A391137.P97880956007137887

`∪[A003674(n), A005574(n+1)]`
-/

namespace A391137.P97880956007137887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P97880956007137887

/-! ## A391137.P4571078505802677461

`∪[A005574(n+1), A175285(n)]`
-/

namespace A391137.P4571078505802677461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P4571078505802677461

/-! ## A391137.P14459772333299987861

`∪[A005574(n+1), A258089(n)]`
-/

namespace A391137.P14459772333299987861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P14459772333299987861

/-! ## A391137.P4669951500037459378

`∪[A005574(n+1), A272686(n)]`
-/

namespace A391137.P4669951500037459378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391137.P4669951500037459378

/-!
# A391139: Primitive coreful Zumkeller numbers (second definition): coreful Zumkeller numbers (A339979) that are powerful numbers (A001694).

The programs for A391139, there is no canonical definition to state claims against.
-/

/-! ## A391139.P7782705352101363823

`∩[A001694(n+1), A339979(n+1)]`
-/

namespace A391139.P7782705352101363823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P7782705352101363823

/-! ## A391139.P9735782797424053293

`∩[A192636(n+1), A339979(n+1)]`
-/

namespace A391139.P9735782797424053293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P9735782797424053293

/-! ## A391139.P3547389002445077899

`∩[A286708(n+1), A339979(n+1)]`
-/

namespace A391139.P3547389002445077899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P3547389002445077899

/-! ## A391139.P18030824451098725288

`∩[A339979(n+1), A363169(n+1)]`
-/

namespace A391139.P18030824451098725288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P18030824451098725288

/-! ## A391139.P2048342640829027469

`∩[A339979(n+1), A376217(n+1)]`
-/

namespace A391139.P2048342640829027469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391139.P2048342640829027469

/-! ## A391139.P4302765722734991594

`filter[A339979(n+1), A112526(#)]`
-/

namespace A391139.P4302765722734991594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A391139.P4302765722734991594

/-!
# A391140: Powerful terms in A339983.

The programs for A391140, there is no canonical definition to state claims against.
-/

/-! ## A391140.P17539387339341412676

`∩[A001694(n+1), A339983(n+1)]`
-/

namespace A391140.P17539387339341412676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P17539387339341412676

/-! ## A391140.P16227595228501003598

`∩[A102834(n+1), A339983(n+1)]`
-/

namespace A391140.P16227595228501003598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P16227595228501003598

/-! ## A391140.P2315032558207916119

`∩[A192636(n+1), A339983(n+1)]`
-/

namespace A391140.P2315032558207916119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P2315032558207916119

/-! ## A391140.P18193065296465501203

`∩[A286708(n+1), A339983(n+1)]`
-/

namespace A391140.P18193065296465501203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P18193065296465501203

/-! ## A391140.P4906717470679505738

`∩[A320966(n+1), A339983(n+1)]`
-/

namespace A391140.P4906717470679505738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P4906717470679505738

/-! ## A391140.P8659488490937754099

`∩[A335851(n+1), A339983(n+1)]`
-/

namespace A391140.P8659488490937754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P8659488490937754099

/-! ## A391140.P13783597130638700019

`∩[A339983(n+1), A356871(n+1)]`
-/

namespace A391140.P13783597130638700019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P13783597130638700019

/-! ## A391140.P9366832253185546288

`∩[A339983(n+1), A363169(n+1)]`
-/

namespace A391140.P9366832253185546288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P9366832253185546288

/-! ## A391140.P14302192136253286699

`∩[A339983(n+1), A363216(n+1)]`
-/

namespace A391140.P14302192136253286699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P14302192136253286699

/-! ## A391140.P5779833522822462853

`∩[A339983(n+1), A372404(n+1)]`
-/

namespace A391140.P5779833522822462853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P5779833522822462853

/-! ## A391140.P4280286944722091756

`∩[A339983(n+1), A390010(n+1)]`
-/

namespace A391140.P4280286944722091756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391140.P4280286944722091756

/-!
# A391141: Coreful abundant numbers (A308053) that are powerful odd exponentially odd numbers (A001694 and A376218).

The programs for A391141, there is no canonical definition to state claims against.
-/

/-! ## A391141.P14244775090102761225

`∩[A339982(n+1), A381825(n+1)]`
-/

namespace A391141.P14244775090102761225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391141.P14244775090102761225

/-!
# A391143: Primitive exponential pseudoperfect numbers: powerful numbers equal to the sum of a subset of their proper exponential divisors.

The programs for A391143, there is no canonical definition to state claims against.
-/

/-! ## A391143.P15876916956593868844

`∩[A001694(n+1), A318100(n+1)]`
-/

namespace A391143.P15876916956593868844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P15876916956593868844

/-! ## A391143.P7532279642046659141

`∩[A192636(n+1), A318100(n+1)]`
-/

namespace A391143.P7532279642046659141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7532279642046659141

/-! ## A391143.P7193046108203138166

`∩[A286708(n+1), A318100(n+1)]`
-/

namespace A391143.P7193046108203138166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7193046108203138166

/-! ## A391143.P13748682873990531983

`∩[A318100(n+1), A325240(n+1)]`
-/

namespace A391143.P13748682873990531983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P13748682873990531983

/-! ## A391143.P12313902010696763147

`∩[A318100(n+1), A335851(n+1)]`
-/

namespace A391143.P12313902010696763147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P12313902010696763147

/-! ## A391143.P12934443543334475176

`∩[A318100(n+1), A363169(n+1)]`
-/

namespace A391143.P12934443543334475176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P12934443543334475176

/-! ## A391143.P16578930787946440125

`∩[A318100(n+1), A363216(n+1)]`
-/

namespace A391143.P16578930787946440125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P16578930787946440125

/-! ## A391143.P6851335002640766340

`∩[A318100(n+1), A376172(n+1)]`
-/

namespace A391143.P6851335002640766340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P6851335002640766340

/-! ## A391143.P14328668502079802315

`∩[A318100(n+1), A376217(n+1)]`
-/

namespace A391143.P14328668502079802315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P14328668502079802315

/-! ## A391143.P13134700217629308614

`∩[A318100(n+1), A387256(n+1)]`
-/

namespace A391143.P13134700217629308614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P13134700217629308614

/-! ## A391143.P782896321343188561

`∩[A318100(n+1), A390010(n+1)]`
-/

namespace A391143.P782896321343188561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P782896321343188561

/-! ## A391143.P15446121361010260063

`∩[A318100(n+1), A391087(n+1)]`
-/

namespace A391143.P15446121361010260063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P15446121361010260063

/-! ## A391143.P7245568265742362031

`∩[A318100(n+1), A391139(n+1)]`
-/

namespace A391143.P7245568265742362031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391143.P7245568265742362031

/-!
# A391152: a(0) = 1; a(n) = n * Sum_{k=1..n} binomial(n,k-1) * a(n-k).

The programs for A391152, there is no canonical definition to state claims against.
-/

/-! ## A391152.P1260853856668641909

`A026238(A328212(n+1)+A052801(n))`
-/

namespace A391152.P1260853856668641909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A328212 (n + 1) + A052801 n).toNat

end

end A391152.P1260853856668641909

/-!
# A391154: Triangle read by rows: T(n,k) is the number of labeled magmas with n elements whose center contains k elements.

The programs for A391154, there is no canonical definition to state claims against.
-/

/-! ## A391154.P9835029448551006812

`A360620(A145142(n+1))*A386681(n)`
-/

namespace A391154.P9835029448551006812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360620 (A145142 (n + 1)).toNat * A386681 n

end

end A391154.P9835029448551006812

/-!
# A391155: Triangle read by rows: T(n,k) is the number of nonisomorphic magmas with n elements whose center contains k elements.

The programs for A391155, there is no canonical definition to state claims against.
-/

/-! ## A391155.P1456440926726981398

`A391161(A141769(n+1)-1)`
-/

namespace A391155.P1456440926726981398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391161 (A141769 (n + 1) - 1).toNat

end

end A391155.P1456440926726981398

/-! ## A391155.P14454812724266546863

`A391161(n)%record[A127820(n+1)]`
-/

namespace A391155.P14454812724266546863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391161 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A391155.P14454812724266546863

/-! ## A391155.P5512599701492917631

`A391161(n)+A000007(A000629(n))`
-/

namespace A391155.P5512599701492917631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391161 n + A000007 (A000629 n).toNat

end

end A391155.P5512599701492917631

/-!
# A391156: Number of nonisomorphic magmas with n elements and empty center.

The programs for A391156, there is no canonical definition to state claims against.
-/

/-! ## A391156.P12922640694983708956

`A391155(∑[n])`
-/

namespace A391156.P12922640694983708956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391156.P12922640694983708956

/-!
# A391158: Number of labeled semigroups with n elements and empty center.

The programs for A391158, there is no canonical definition to state claims against.
-/

/-! ## A391158.P4207837552904053015

`A391157(∑[n])`
-/

namespace A391158.P4207837552904053015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391158.P4207837552904053015

/-! ## A391158.P10035595701964756576

`lcm(A280253(n), A391157(A000217(n)))`
-/

namespace A391158.P10035595701964756576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280253 n) (A391157 (A000217 n).toNat)

end

end A391158.P10035595701964756576

/-!
# A391160: Number of nonisomorphic semigroups with n elements and empty center.

The programs for A391160, there is no canonical definition to state claims against.
-/

/-! ## A391160.P12507325269609427320

`A391159(∑[n])`
-/

namespace A391160.P12507325269609427320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391160.P12507325269609427320

/-! ## A391160.P12483292816712810078

`A181939(A038106(n+1))-A130400(n)`
-/

namespace A391160.P12483292816712810078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181939 (A038106 (n + 1)).toNat - A130400 n

end

end A391160.P12483292816712810078

/-!
# A391163: Numbers whose final digit is at most 2.

The programs for A391163, the canonical program `A391163.P12705108012069157976` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391163 has offset 0).

The definition of A391163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391163.P15989667924820170188

`10*floor(n/3)+n%3`
-/

namespace A391163.P15989667924820170188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n : ℚ) / 3⌋ + ((n % 3 : ℕ) : ℤ)

end

end A391163.P15989667924820170188

namespace A391163

/-- `10*floor(n/3)+n%3` -/
def P15989667924820170188.Spec : Prop :=
  ∀ n, P15989667924820170188.a n = A391163 n

end A391163

/-! ## A391163.P8386738842172087823

`ogf((x+x^2+8x^3)/(1-x-x^3+x^4))`
-/

namespace A391163.P8386738842172087823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 8] [1, -1, 0, -1, 1] n

end

end A391163.P8386738842172087823

namespace A391163

/-- `ogf((x+x^2+8x^3)/(1-x-x^3+x^4))` -/
def P8386738842172087823.Spec : Prop :=
  ∀ n, P8386738842172087823.a n = A391163 n

end A391163

/-! ## A391163.P12705108012069157976

`10*A002264(n)+A010872(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391163

/-- `10*A002264(n)+A010872(n)` -/
def P12705108012069157976.Spec : Prop :=
  ∀ n, P12705108012069157976.a n = A391163 n

theorem P12705108012069157976.correct : P12705108012069157976.Spec := by
  intro n
  simp only [A391163]

end A391163

/-! ## A391163.P3430596610023790046

`7*floor(n/3)+n`
-/

namespace A391163.P3430596610023790046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A391163.P3430596610023790046

namespace A391163

/-- `7*floor(n/3)+n` -/
def P3430596610023790046.Spec : Prop :=
  ∀ n, P3430596610023790046.a n = A391163 n

end A391163

/-! ## A391163.P15628872447695309235

`lt[n%10+n, n+3]`
-/

namespace A391163.P15628872447695309235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391163.P15628872447695309235

namespace A391163

/-- `lt[n%10+n, n+3]` -/
def P15628872447695309235.Spec : Prop :=
  ∀ n, (P15628872447695309235.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P4996612924400854025

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A391163.P4996612924400854025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P4996612924400854025

namespace A391163

/-- `∑[floor(a(n-3))]` -/
def P4996612924400854025.Spec : Prop :=
  ∀ n, (P4996612924400854025.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P15166160634023976259

`2*(a(n-3)/2+5)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A391163.P15166160634023976259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 3) / 2 + 5)

end

end A391163.P15166160634023976259

namespace A391163

/-- `2*(a(n-3)/2+5)` -/
def P15166160634023976259.Spec : Prop :=
  ∀ n, P15166160634023976259.a n = (A391163 n : ℚ)

end A391163

/-! ## A391163.P7630145726556596826

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`
-/

namespace A391163.P7630145726556596826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 8] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P7630145726556596826

namespace A391163

/-- `∑[a(n-3)^a(n-1)]` -/
def P7630145726556596826.Spec : Prop :=
  ∀ n, (P7630145726556596826.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P4927842582078425390

`∑[8/(a(n-1)*a(n-2))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A391163.P4927842582078425390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  8 / (f1 (n - 1) * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391163.P4927842582078425390

namespace A391163

/-- `∑[8/(a(n-1)*a(n-2))]` -/
def P4927842582078425390.Spec : Prop :=
  ∀ n, P4927842582078425390.a n = (A391163 n : ℚ)

end A391163

/-! ## A391163.P10098850673101334674

`∪[A197652(n+1), A017293(n)]`
-/

namespace A391163.P10098850673101334674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P10098850673101334674

namespace A391163

/-- `∪[A197652(n+1), A017293(n)]` -/
def P10098850673101334674.Spec : Prop :=
  ∀ n, (P10098850673101334674.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P11258878299576395361

`∪[A197652(n+1), A277589(n+1)]`
-/

namespace A391163.P11258878299576395361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P11258878299576395361

namespace A391163

/-- `∪[A197652(n+1), A277589(n+1)]` -/
def P11258878299576395361.Spec : Prop :=
  ∀ n, (P11258878299576395361.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P5951399598789431521

`A390774(A004773(n))`
-/

namespace A391163.P5951399598789431521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 (A004773 n).toNat

end

end A391163.P5951399598789431521

namespace A391163

/-- `A390774(A004773(n))` -/
def P5951399598789431521.Spec : Prop :=
  ∀ n, P5951399598789431521.a n = A391163 n

end A391163

/-! ## A391163.P3536569422566497676

`A390774(A002264(n)+n)`
-/

namespace A391163.P3536569422566497676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 (A002264 n + (n : ℤ)).toNat

end

end A391163.P3536569422566497676

namespace A391163

/-- `A390774(A002264(n)+n)` -/
def P3536569422566497676.Spec : Prop :=
  ∀ n, P3536569422566497676.a n = A391163 n

end A391163

/-! ## A391163.P15733023012944483119

`A235499(A047217(n+1))`
-/

namespace A391163.P15733023012944483119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 (A047217 (n + 1)).toNat

end

end A391163.P15733023012944483119

namespace A391163

/-- `A235499(A047217(n+1))` -/
def P15733023012944483119.Spec : Prop :=
  ∀ n, P15733023012944483119.a n = A391163 n

end A391163

/-! ## A391163.P13136672258535775745

`A293292(A047223(n+1))`
-/

namespace A391163.P13136672258535775745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (A047223 (n + 1)).toNat

end

end A391163.P13136672258535775745

namespace A391163

/-- `A293292(A047223(n+1))` -/
def P13136672258535775745.Spec : Prop :=
  ∀ n, P13136672258535775745.a n = A391163 n

end A391163

/-! ## A391163.P14665443105704719927

`∩[A237415(n), A390774(n)]`
-/

namespace A391163.P14665443105704719927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P14665443105704719927

namespace A391163

/-- `∩[A237415(n), A390774(n)]` -/
def P14665443105704719927.Spec : Prop :=
  ∀ n, (P14665443105704719927.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P1496337323736055369

`∩[A293292(n+1), A237415(n)]`
-/

namespace A391163.P1496337323736055369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P1496337323736055369

namespace A391163

/-- `∩[A293292(n+1), A237415(n)]` -/
def P1496337323736055369.Spec : Prop :=
  ∀ n, (P1496337323736055369.a n : ℤ) = A391163 n

end A391163

/-! ## A391163.P17795735087874309121

`A047217(A047245(n+1))`
-/

namespace A391163.P17795735087874309121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A047245 (n + 1)).toNat

end

end A391163.P17795735087874309121

namespace A391163

/-- `A047217(A047245(n+1))` -/
def P17795735087874309121.Spec : Prop :=
  ∀ n, P17795735087874309121.a n = A391163 n

end A391163

/-! ## A391163.P14236475085590418627

`A391164(A047240(n+1))`
-/

namespace A391163.P14236475085590418627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A047240 (n + 1)).toNat

end

end A391163.P14236475085590418627

namespace A391163

/-- `A391164(A047240(n+1))` -/
def P14236475085590418627.Spec : Prop :=
  ∀ n, P14236475085590418627.a n = A391163 n

end A391163

/-! ## A391163.P6696443006917371023

`∩[A237415(n), A391164(n)]`
-/

namespace A391163.P6696443006917371023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391163.P6696443006917371023

namespace A391163

/-- `∩[A237415(n), A391164(n)]` -/
def P6696443006917371023.Spec : Prop :=
  ∀ n, (P6696443006917371023.a n : ℤ) = A391163 n

end A391163

/-!
# A391164: Numbers whose final digit is at most 5.

The programs for A391164, the canonical program `A391164.P14227226670676293853` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391164 has offset 0).

The definition of A391164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391164.P8813967031200208778

`10*floor(n/6)+n%6`
-/

namespace A391164.P8813967031200208778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n : ℚ) / 6⌋ + ((n % 6 : ℕ) : ℤ)

end

end A391164.P8813967031200208778

namespace A391164

/-- `10*floor(n/6)+n%6` -/
def P8813967031200208778.Spec : Prop :=
  ∀ n, P8813967031200208778.a n = A391164 n

end A391164

/-! ## A391164.P9195281242373651124

`ogf((x+x^2+x^3+x^4+x^5+5x^6)/(1-x-x^6+x^7))`
-/

namespace A391164.P9195281242373651124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1, 5] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A391164.P9195281242373651124

namespace A391164

/-- `ogf((x+x^2+x^3+x^4+x^5+5x^6)/(1-x-x^6+x^7))` -/
def P9195281242373651124.Spec : Prop :=
  ∀ n, P9195281242373651124.a n = A391164 n

end A391164

/-! ## A391164.P14227226670676293853

`10*A152467(n)+A010875(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391164

/-- `10*A152467(n)+A010875(n)` -/
def P14227226670676293853.Spec : Prop :=
  ∀ n, P14227226670676293853.a n = A391164 n

theorem P14227226670676293853.correct : P14227226670676293853.Spec := by
  intro n
  simp only [A391164]

end A391164

/-! ## A391164.P288406007953336757

`4*floor(n/6)+n`
-/

namespace A391164.P288406007953336757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℚ) / 6⌋ + (n : ℤ)

end

end A391164.P288406007953336757

namespace A391164

/-- `4*floor(n/6)+n` -/
def P288406007953336757.Spec : Prop :=
  ∀ n, P288406007953336757.a n = A391164 n

end A391164

/-! ## A391164.P767815680722138233

`comp[A390774(n)-4]`
-/

namespace A391164.P767815680722138233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A391164.P767815680722138233

namespace A391164

/-- `comp[A390774(n)-4]` -/
def P767815680722138233.Spec : Prop :=
  ∀ n, (P767815680722138233.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P13302470291308087112

`∪[A293292(n+1), A008587(n)]`
-/

namespace A391164.P13302470291308087112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P13302470291308087112

namespace A391164

/-- `∪[A293292(n+1), A008587(n)]` -/
def P13302470291308087112.Spec : Prop :=
  ∀ n, (P13302470291308087112.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P16586738169383170389

`∪[A293292(n+1), A008706(n)]`
-/

namespace A391164.P16586738169383170389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P16586738169383170389

namespace A391164

/-- `∪[A293292(n+1), A008706(n)]` -/
def P16586738169383170389.Spec : Prop :=
  ∀ n, (P16586738169383170389.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P8116825099798109311

`∪[A293292(n+1), A017329(n)]`
-/

namespace A391164.P8116825099798109311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P8116825099798109311

namespace A391164

/-- `∪[A293292(n+1), A017329(n)]` -/
def P8116825099798109311.Spec : Prop :=
  ∀ n, (P8116825099798109311.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P1098437618684306337

`∪[A293292(n+1), A135042(n)]`
-/

namespace A391164.P1098437618684306337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P1098437618684306337

namespace A391164

/-- `∪[A293292(n+1), A135042(n)]` -/
def P1098437618684306337.Spec : Prop :=
  ∀ n, (P1098437618684306337.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P17274878899195341028

`∪[A121025(n+1), A293292(n+1)]`
-/

namespace A391164.P17274878899195341028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P17274878899195341028

namespace A391164

/-- `∪[A121025(n+1), A293292(n+1)]` -/
def P17274878899195341028.Spec : Prop :=
  ∀ n, (P17274878899195341028.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P2873512822102959138

`∪[A187715(n+1), A293292(n+1)]`
-/

namespace A391164.P2873512822102959138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P2873512822102959138

namespace A391164

/-- `∪[A187715(n+1), A293292(n+1)]` -/
def P2873512822102959138.Spec : Prop :=
  ∀ n, (P2873512822102959138.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P3620918292215028762

`∪[A277592(n+1), A293292(n+1)]`
-/

namespace A391164.P3620918292215028762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391164.P3620918292215028762

namespace A391164

/-- `∪[A277592(n+1), A293292(n+1)]` -/
def P3620918292215028762.Spec : Prop :=
  ∀ n, (P3620918292215028762.a n : ℤ) = A391164 n

end A391164

/-! ## A391164.P12899158458856876457

`A272576(A047602(n+1))`
-/

namespace A391164.P12899158458856876457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 (A047602 (n + 1)).toNat

end

end A391164.P12899158458856876457

namespace A391164

/-- `A272576(A047602(n+1))` -/
def P12899158458856876457.Spec : Prop :=
  ∀ n, P12899158458856876457.a n = A391164 n

end A391164

/-!
# A391165: Primitive cubic pyritohedral numbers: a(n) = 864*n^3 - 2484*n^2 + 2384*n - 763.

The programs for A391165, the canonical program `A391165.P178877086553410402` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391165 has offset 1).

The definition of A391165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391165.P178877086553410402

`(108*(n+1)*(n-1)+109)*(8*(n+1)-7)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391165

/-- `(108*(n+1)*(n-1)+109)*(8*(n+1)-7)` -/
def P178877086553410402.Spec : Prop :=
  ∀ n, P178877086553410402.a n = A391165 (n + 1)

theorem P178877086553410402.correct : P178877086553410402.Spec := by
  intro n
  simp only [A391165, Nat.add_sub_cancel]

end A391165

/-!
# A391166: Body-centered cubic pyritohedral numbers: a(n) = 1728*n^3 - 5076*n^2 + 4984*n - 1635.

The programs for A391166, the canonical program `A391166.P16730452323879448182` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391166 has offset 1).

The definition of A391166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391166.P16730452323879448182

`(108*(n+1)*(n-1)+109)*(16*(n+1)-15)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391166

/-- `(108*(n+1)*(n-1)+109)*(16*(n+1)-15)` -/
def P16730452323879448182.Spec : Prop :=
  ∀ n, P16730452323879448182.a n = A391166 (n + 1)

theorem P16730452323879448182.correct : P16730452323879448182.Spec := by
  intro n
  simp only [A391166, Nat.add_sub_cancel]

end A391166

/-!
# A391168: Expansion of g/(1 - x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391168, the canonical program `A391168.P11310318594406092969` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391168 has offset 0).

The definition of A391168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391168.P11310318594406092969

`∑{#}[n, (#+1)²*C(3*n-2*#+1, n-#)/(3*n-2*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391168

/-- `∑{#}[n, (#+1)²*C(3*n-2*#+1, n-#)/(3*n-2*#+1)]` -/
def P11310318594406092969.Spec : Prop :=
  ∀ n, P11310318594406092969.a n = (A391168 n : ℚ)

end A391168

/-! ## A391168.P240137838093683252

`A008615(A007863(n)+A000110(n+3))`
-/

namespace A391168.P240137838093683252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A007863 n + A000110 (n + 3)).toNat

end

end A391168.P240137838093683252

namespace A391168

/-- `A008615(A007863(n)+A000110(n+3))` -/
def P240137838093683252.Spec : Prop :=
  ∀ n, P240137838093683252.a n = A391168 n

end A391168

/-!
# A391169: Expansion of g/(1 - x*g)^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391169, there is no canonical definition to state claims against.
-/

/-! ## A391169.P8848655928725779527

`A371627(A087650(n+3)-A121412(n))`
-/

namespace A391169.P8848655928725779527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371627 (A087650 (n + 3) - A121412 n).toNat

end

end A391169.P8848655928725779527

/-! ## A391169.P12265078324466786698

`A371627(A087650(n+3)-A051903(n+1))`
-/

namespace A391169.P12265078324466786698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371627 (A087650 (n + 3) - A051903 (n + 1)).toNat

end

end A391169.P12265078324466786698

/-!
# A391170: Expansion of g/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391170, there is no canonical definition to state claims against.
-/

/-! ## A391170.P4837430094583906641

`A100826(A083586(n+1))`
-/

namespace A391170.P4837430094583906641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100826 (A083586 (n + 1)).toNat

end

end A391170.P4837430094583906641

/-!
# A391171: Expansion of (g/(1 - x*g))^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391171, there is no canonical definition to state claims against.
-/

/-! ## A391171.P5027571004570213461

`A391168(n+1)-A098746(n+2)`
-/

namespace A391171.P5027571004570213461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391168 (n + 1) - A098746 (n + 2)

end

end A391171.P5027571004570213461

/-!
# A391172: Expansion of g^2/(1 - x*g)^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391172, there is no canonical definition to state claims against.
-/

/-! ## A391172.P14409286437471309254

`A156562(A000351(n))+A000217(n)`
-/

namespace A391172.P14409286437471309254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A000351 n).toNat + A000217 n

end

end A391172.P14409286437471309254

/-!
# A391173: Expansion of g^2/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391173, the canonical program `A391173.P5451114859997772929` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391173 has offset 0).

The definition of A391173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391173.P5451114859997772929

`∑{#}[n, A391168(#)*A391168(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391173

/-- `∑{#}[n, A391168(#)*A391168(n-#)]` -/
def P5451114859997772929.Spec : Prop :=
  ∀ n, P5451114859997772929.a n = A391173 n

theorem P5451114859997772929.correct : P5451114859997772929.Spec := by
  intro n
  simp only [A391173]

end A391173

/-!
# A391174: Expansion of g^3/(1 - x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391174, there is no canonical definition to state claims against.
-/

/-! ## A391174.P8413144446322339351

`A241827(A008253(n+1))`
-/

namespace A391174.P8413144446322339351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A008253 (n + 1)).toNat

end

end A391174.P8413144446322339351

/-!
# A391175: Expansion of (g/(1 - x*g))^3, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391175, there is no canonical definition to state claims against.
-/

/-! ## A391175.P11621088362843299588

`∑[5^n]-A004197(A094856(n))`
-/

namespace A391175.P11621088362843299588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004197 (A094856 n).toNat

end

end A391175.P11621088362843299588

/-!
# A391176: Expansion of g^3/(1 - x*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391176, there is no canonical definition to state claims against.
-/

/-! ## A391176.P5360159633853982881

`A328331(n+1)+A001222(A058891(n+1))`
-/

namespace A391176.P5360159633853982881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328331 (n + 1) + A001222 (A058891 (n + 1)).toNat

end

end A391176.P5360159633853982881

/-!
# A391177: Expansion of (g/(1 - x*g))^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391177, there is no canonical definition to state claims against.
-/

/-! ## A391177.P16967244753498412045

`∑{#}[n, A391171(#)*A391171(n-#)]`
-/

namespace A391177.P16967244753498412045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391171 k * A391171 (n - k)

end

end A391177.P16967244753498412045

/-!
# A391178: Expansion of g^3/(1 - x*g), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391178, the canonical program `A391178.P16063037273847297636` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391178 has offset 0).

The definition of A391178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391178.P15666155515668941147

`A098746(n+2)-A098746(n+1)`
-/

namespace A391178.P15666155515668941147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 2) - A098746 (n + 1)

end

end A391178.P15666155515668941147

namespace A391178

/-- `A098746(n+2)-A098746(n+1)` -/
def P15666155515668941147.Spec : Prop :=
  ∀ n, P15666155515668941147.a n = A391178 n

end A391178

/-! ## A391178.P16063037273847297636

`∑{#}[n, (#+3)*C(3*n-2*#+3, n-#)/(3*n-2*#+3)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391178

/-- `∑{#}[n, (#+3)*C(3*n-2*#+3, n-#)/(3*n-2*#+3)]` -/
def P16063037273847297636.Spec : Prop :=
  ∀ n, P16063037273847297636.a n = (A391178 n : ℚ)

end A391178

/-! ## A391178.P17355058547821786461

`Δ[A098746(n+1)]`
-/

namespace A391178.P17355058547821786461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391178.P17355058547821786461

namespace A391178

/-- `Δ[A098746(n+1)]` -/
def P17355058547821786461.Spec : Prop :=
  ∀ n, P17355058547821786461.a n = A391178 n

end A391178

/-!
# A391179: Expansion of g^4/(1 - x*g)^5, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A391179, there is no canonical definition to state claims against.
-/

/-! ## A391179.P3416127701789394633

`A155633(n)-A363807(A155633(n))`
-/

namespace A391179.P3416127701789394633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155633 n - A363807 (A155633 n).toNat

end

end A391179.P3416127701789394633

/-!
# A391181: Total number of 132 patterns in all heapable permutations of length n.

The programs for A391181, there is no canonical definition to state claims against.
-/

/-! ## A391181.P2829377761465194287

`A348469(A130583(n))`
-/

namespace A391181.P2829377761465194287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A130583 n).toNat

end

end A391181.P2829377761465194287

/-! ## A391181.P1096346350461698287

`∑[A132292(A198953(n))]`
-/

namespace A391181.P1096346350461698287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A198953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391181.P1096346350461698287

/-!
# A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

The programs for A391183, the canonical program `A391183.P5927529628571283999` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391183 has offset 0).

The definition of A391183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391183.P5927529628571283999

`char[A002479(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A391183

/-- `char[A002479(n+1)]` -/
def P5927529628571283999.Spec : Prop :=
  ∀ n, (P5927529628571283999.a n : ℤ) = A391183 n

theorem P5927529628571283999.correct : P5927529628571283999.Spec := by
  intro n
  simp only [A391183]

end A391183

/-! ## A391183.P14197109443693287741

`char[lt[0, A033715(n)]]`
-/

namespace A391183.P14197109443693287741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A391183.P14197109443693287741

namespace A391183

/-- `char[lt[0, A033715(n)]]` -/
def P14197109443693287741.Spec : Prop :=
  ∀ n, (P14197109443693287741.a n : ℤ) = A391183 n

end A391183

/-! ## A391183.P5161017440493282574

`1-char[A097700(n+1)]`
-/

namespace A391183.P5161017440493282574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A391183.P5161017440493282574

namespace A391183

/-- `1-char[A097700(n+1)]` -/
def P5161017440493282574.Spec : Prop :=
  ∀ n, P5161017440493282574.a n = A391183 n

end A391183

/-! ## A391183.P477083149025353349

`ceil(abs(A133692(n)/(n+2)))`
-/

namespace A391183.P477083149025353349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A133692 n : ℚ) / (n + 2 : ℚ)|⌉

end

end A391183.P477083149025353349

namespace A391183

/-- `ceil(abs(A133692(n)/(n+2)))` -/
def P477083149025353349.Spec : Prop :=
  ∀ n, P477083149025353349.a n = A391183 n

end A391183

/-! ## A391183.P2675429257832859375

`abs(A057428(A033715(n)))`
-/

namespace A391183.P2675429257832859375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (A033715 n).toNat|

end

end A391183.P2675429257832859375

namespace A391183

/-- `abs(A057428(A033715(n)))` -/
def P2675429257832859375.Spec : Prop :=
  ∀ n, P2675429257832859375.a n = A391183 n

end A391183

/-! ## A391183.P14577164180506267672

`A165471(A124452(n)²)`
-/

namespace A391183.P14577164180506267672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A124452 n ^ 2).toNat

end

end A391183.P14577164180506267672

namespace A391183

/-- `A165471(A124452(n)²)` -/
def P14577164180506267672.Spec : Prop :=
  ∀ n, P14577164180506267672.a n = A391183 n

end A391183

/-! ## A391183.P3321820207402718841

`A025428(A004018(A033715(n)²))`
-/

namespace A391183.P3321820207402718841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A004018 (A033715 n ^ 2).toNat).toNat

end

end A391183.P3321820207402718841

namespace A391183

/-- `A025428(A004018(A033715(n)²))` -/
def P3321820207402718841.Spec : Prop :=
  ∀ n, P3321820207402718841.a n = A391183 n

end A391183

/-! ## A391183.P11661181106415783568

`A002479(A318984(A033715(n)²))`
-/

namespace A391183.P11661181106415783568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (A318984 (A033715 n ^ 2).toNat).toNat

end

end A391183.P11661181106415783568

namespace A391183

/-- `A002479(A318984(A033715(n)²))` -/
def P11661181106415783568.Spec : Prop :=
  ∀ n, P11661181106415783568.a n = A391183 n

end A391183

/-! ## A391183.P3531566422795272699

`A000007(n*A000007(A033715(n)))`
-/

namespace A391183.P3531566422795272699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A000007 (A033715 n).toNat).toNat

end

end A391183.P3531566422795272699

namespace A391183

/-- `A000007(n*A000007(A033715(n)))` -/
def P3531566422795272699.Spec : Prop :=
  ∀ n, P3531566422795272699.a n = A391183 n

end A391183

/-! ## A391183.P2599627946077028040

`ceil(A033715(2*n)/(n+1))`
-/

namespace A391183.P2599627946077028040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033715 (2 * n) : ℚ) / (n + 1 : ℚ)⌉

end

end A391183.P2599627946077028040

namespace A391183

/-- `ceil(A033715(2*n)/(n+1))` -/
def P2599627946077028040.Spec : Prop :=
  ∀ n, P2599627946077028040.a n = A391183 n

end A391183

/-! ## A391183.P9508998529782774462

`A002283(A033715(2*n))%2`
-/

namespace A391183.P9508998529782774462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002283 (A033715 (2 * n)).toNat) 2

end

end A391183.P9508998529782774462

namespace A391183

/-- `A002283(A033715(2*n))%2` -/
def P9508998529782774462.Spec : Prop :=
  ∀ n, P9508998529782774462.a n = A391183 n

end A391183

/-! ## A391183.P2267593229379228104

`A165471(A124452(n)^4)`
-/

namespace A391183.P2267593229379228104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A124452 n ^ 4).toNat

end

end A391183.P2267593229379228104

namespace A391183

/-- `A165471(A124452(n)^4)` -/
def P2267593229379228104.Spec : Prop :=
  ∀ n, P2267593229379228104.a n = A391183 n

end A391183

/-! ## A391183.P17800081500552770758

`char[A345440(n)]`
-/

namespace A391183.P17800081500552770758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391183.P17800081500552770758

namespace A391183

/-- `char[A345440(n)]` -/
def P17800081500552770758.Spec : Prop :=
  ∀ n, (P17800081500552770758.a n : ℤ) = A391183 n

end A391183

/-!
# A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

The programs for A391184, the canonical program `A391184.P7621874213617609093` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391184 has offset 1).

The definition of A391184 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391184

/-- `∑{d}[n+1, A391183(#)]` -/
def P7621874213617609093.Spec : Prop :=
  ∀ n, P7621874213617609093.a n = A391184 (n + 1)

theorem P7621874213617609093.correct : P7621874213617609093.Spec := by
  intro n
  simp only [A391184, Nat.add_sub_cancel]

end A391184

/-! ## A391184.P248806829171091680

`A360326(A033047(n+1))`
-/

namespace A391184.P248806829171091680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (A033047 (n + 1)).toNat

end

end A391184.P248806829171091680

namespace A391184

/-- `A360326(A033047(n+1))` -/
def P248806829171091680.Spec : Prop :=
  ∀ n, P248806829171091680.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P17637327000806351949

`A368542(A033050(n+1))`
-/

namespace A391184.P17637327000806351949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368542 (A033050 (n + 1)).toNat

end

end A391184.P17637327000806351949

namespace A391184

/-- `A368542(A033050(n+1))` -/
def P17637327000806351949.Spec : Prop :=
  ∀ n, P17637327000806351949.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P6535550975833860335

`A279060(A166667(n+1))`
-/

namespace A391184.P6535550975833860335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A166667 (n + 1)).toNat

end

end A391184.P6535550975833860335

namespace A391184

/-- `A279060(A166667(n+1))` -/
def P6535550975833860335.Spec : Prop :=
  ∀ n, P6535550975833860335.a n = A391184 (n + 1)

end A391184

/-! ## A391184.P5588155949064992183

`A279060(A166668(n+1))`
-/

namespace A391184.P5588155949064992183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A166668 (n + 1)).toNat

end

end A391184.P5588155949064992183

namespace A391184

/-- `A279060(A166668(n+1))` -/
def P5588155949064992183.Spec : Prop :=
  ∀ n, P5588155949064992183.a n = A391184 (n + 1)

end A391184

/-!
# A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

The programs for A391185, the canonical program `A391185.P11876342438448710948` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391185 has offset 1).

The definition of A391185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391183, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391185.P11876342438448710948

`∑{d}[n+1, A391183(#)*#]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391185

/-- `∑{d}[n+1, A391183(#)*#]` -/
def P11876342438448710948.Spec : Prop :=
  ∀ n, P11876342438448710948.a n = A391185 (n + 1)

theorem P11876342438448710948.correct : P11876342438448710948.Spec := by
  intro n
  simp only [A391185, Nat.add_sub_cancel]

end A391185

/-! ## A391185.P10323156669665891004

`∑{d}[n+1, #*A391183(#)]`
-/

namespace A391185.P10323156669665891004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A391183 d

end

end A391185.P10323156669665891004

namespace A391185

/-- `∑{d}[n+1, #*A391183(#)]` -/
def P10323156669665891004.Spec : Prop :=
  ∀ n, P10323156669665891004.a n = A391185 (n + 1)

end A391185

/-! ## A391185.P14184941779018481254

`floor(A000203(n+1)/gcd(A139206(n+1), n+1))`
-/

namespace A391185.P14184941779018481254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (Int.gcd (A139206 (n + 1)) (n + 1 : ℤ) : ℚ)⌋

end

end A391185.P14184941779018481254

namespace A391185

/-- `floor(A000203(n+1)/gcd(A139206(n+1), n+1))` -/
def P14184941779018481254.Spec : Prop :=
  ∀ n, P14184941779018481254.a n = A391185 (n + 1)

end A391185

/-! ## A391185.P12044292448205960211

`A000203(A391186(n+1)%A108318(n+1))`
-/

namespace A391185.P12044292448205960211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A391186 (n + 1)) (A108318 (n + 1))).toNat

end

end A391185.P12044292448205960211

namespace A391185

/-- `A000203(A391186(n+1)%A108318(n+1))` -/
def P12044292448205960211.Spec : Prop :=
  ∀ n, P12044292448205960211.a n = A391185 (n + 1)

end A391185

/-! ## A391185.P12951426270423551873

`gcd(A000203(n+1), A343379(A263703(2*(n+1))))`
-/

namespace A391185.P12951426270423551873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A343379 (A263703 (2 * (n + 1))).toNat)

end

end A391185.P12951426270423551873

namespace A391185

/-- `gcd(A000203(n+1), A343379(A263703(2*(n+1))))` -/
def P12951426270423551873.Spec : Prop :=
  ∀ n, (P12951426270423551873.a n : ℤ) = A391185 (n + 1)

end A391185

/-!
# A391186: The largest divisor of n that is a number of the form x^2 + 2*y^2 (A002479).

The programs for A391186, there is no canonical definition to state claims against.
-/

/-! ## A391186.P6869001235756033350

`(n+1)/A391187(n+1)`
-/

namespace A391186.P6869001235756033350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A391187 (n + 1) : ℚ)

end

end A391186.P6869001235756033350

/-! ## A391186.P17302380586193617352

`gcd(n+1, A359078(A366727(3*n+1)))`
-/

namespace A391186.P17302380586193617352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A359078 (A366727 (3 * n + 1)).toNat)

end

end A391186.P17302380586193617352

/-! ## A391186.P3233966324316656474

`gcd(A000027(n+1), A064722(A003215(3*n+4)))`
-/

namespace A391186.P3233966324316656474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A064722 (A003215 (3 * n + 4)).toNat)

end

end A391186.P3233966324316656474

/-! ## A391186.P2658026039141960565

`gcd(n+1, A216350(A005898(n)))`
-/

namespace A391186.P2658026039141960565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A216350 (A005898 n).toNat)

end

end A391186.P2658026039141960565

/-! ## A391186.P15584822841426885718

`gcd(A246097(n+1), A322858(A209196(n)))`
-/

namespace A391186.P15584822841426885718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246097 (n + 1)) (A322858 (A209196 n).toNat)

end

end A391186.P15584822841426885718

/-!
# A391187: a(n) is the smallest positive integer such that a(n) * n is a number of the form x^2 + 2*y^2 (A002479).

The programs for A391187, there is no canonical definition to state claims against.
-/

/-! ## A391187.P16604570803066498607

`(n+1)/A391186(n+1)`
-/

namespace A391187.P16604570803066498607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A391186 (n + 1) : ℚ)

end

end A391187.P16604570803066498607

/-! ## A391187.P7203726829363176473

`A007913((n+1)*A391186(n+1))`
-/

namespace A391187.P7203726829363176473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A391186 (n + 1)).toNat

end

end A391187.P7203726829363176473

/-! ## A391187.P11502801961504754823

`gcd(A065330(n+1), A335469(A332307(n+2)))`
-/

namespace A391187.P11502801961504754823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065330 (n + 1)) (A335469 (A332307 (n + 2)).toNat)

end

end A391187.P11502801961504754823

/-! ## A391187.P13937854000134956016

`gcd(A046080(A121334(n)), A065330(n+1))`
-/

namespace A391187.P13937854000134956016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046080 (A121334 n).toNat) (A065330 (n + 1))

end

end A391187.P13937854000134956016

/-! ## A391187.P14783170243092817805

`gcd(A014682(2*(n+1)), A212489(A072994(3*n+1)))`
-/

namespace A391187.P14783170243092817805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (2 * (n + 1))) (A212489 (A072994 (3 * n + 1)).toNat)

end

end A391187.P14783170243092817805

/-!
# A391188: a(n) = floor( prime(n) / floor(log(prime(n))) ), where prime(n) is the n-th prime.

The programs for A391188, the canonical program `A391188.P16383289770167184422` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391188 has offset 2).

The definition of A391188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)/floor(log(A000040(n+2))))` (program `A391188.P16383289770167184422`, by `A391188.P16383289770167184422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391188.P16383289770167184422

`floor(A000040(n+2)/floor(log(A000040(n+2))))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391188

/-- `floor(A000040(n+2)/floor(log(A000040(n+2))))` -/
def P16383289770167184422.Spec : Prop :=
  ∀ n, P16383289770167184422.a n = A391188 (n + 2)

theorem P16383289770167184422.correct : P16383289770167184422.Spec := by
  intro n
  simp only [A391188, Nat.add_sub_cancel]

end A391188

/-!
# A391191: Irregular triangle read by rows: T(n,k) is the number of free polyaboloes (or polytans) with n cells of which 2*k share a hypotenuse in pairs (making up k squares), 0 <= k <= n/2.

The programs for A391191, there is no canonical definition to state claims against.
-/

/-! ## A391191.P16243833820826081818

`A391192(A091018(n))`
-/

namespace A391191.P16243833820826081818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391192 (A091018 n).toNat

end

end A391191.P16243833820826081818

/-!
# A391194: Number of ternary trees with n internal nodes labeled 1 or 2; nodes labeled 1 have three linearly ordered children, but nodes labeled 2 have three children which are reversible (the first and third children may be transposed but the middle child must remain in place).

The programs for A391194, there is no canonical definition to state claims against.
-/

/-! ## A391194.P4827063369796422310

`A397149(2*(n+1))+A003963(A212722(n))`
-/

namespace A391194.P4827063369796422310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397149 (2 * (n + 1)) + A003963 (A212722 n).toNat

end

end A391194.P4827063369796422310

/-!
# A391195: Integers which can be expressed as the sum of two distinct perfect powers.

The programs for A391195, there is no canonical definition to state claims against.
-/

/-! ## A391195.P8822633966623656572

`∪[A216765(n+1), A298591(n+1)]`
-/

namespace A391195.P8822633966623656572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391195.P8822633966623656572

/-! ## A391195.P4823136090172123570

`lt[0, A362424(n)]`
-/

namespace A391195.P4823136090172123570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391195.P4823136090172123570

/-! ## A391195.P13895924393393032785

`lt[1, A362426(n)]`
-/

namespace A391195.P13895924393393032785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391195.P13895924393393032785

/-! ## A391195.P11481815139405228933

`lt[A000038(n), A131555(A331923(n))]`
-/

namespace A391195.P11481815139405228933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A331923 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391195.P11481815139405228933

/-!
# A391196: a(n) = (2^(n-2) * (n-2)! + floor(n/2)) mod n for n > 1.

The programs for A391196, the canonical program `A391196.P8311857454480616872` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391196 has offset 2).

The definition of A391196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n*n!+floor((n+2)/2))%(n+2)` (program `A391196.P8311857454480616872`, by `A391196.P8311857454480616872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391196.P8311857454480616872

`(2^n*n!+floor((n+2)/2))%(n+2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391196

/-- `(2^n*n!+floor((n+2)/2))%(n+2)` -/
def P8311857454480616872.Spec : Prop :=
  ∀ n, P8311857454480616872.a n = A391196 (n + 2)

theorem P8311857454480616872.correct : P8311857454480616872.Spec := by
  intro n
  simp only [A391196, Nat.add_sub_cancel]

end A391196

/-! ## A391196.P15563642159302227929

`lcm(floor(1/∑{p}[n+2, #-(n-1)]), ∑[(n+1)%2])`
-/

namespace A391196.P15563642159302227929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊1 / ((∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - ((n : ℤ) - 1)) : ℤ) : ℚ)⌋ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A391196.P15563642159302227929

namespace A391196

/-- `lcm(floor(1/∑{p}[n+2, #-(n-1)]), ∑[(n+1)%2])` -/
def P15563642159302227929.Spec : Prop :=
  ∀ n, (P15563642159302227929.a n : ℤ) = A391196 (n + 2)

end A391196

/-! ## A391196.P1715864105427365524

`(1+floor(n/2))*A005171(n+2)`
-/

namespace A391196.P1715864105427365524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋) * A005171 (n + 2)

end

end A391196.P1715864105427365524

namespace A391196

/-- `(1+floor(n/2))*A005171(n+2)` -/
def P1715864105427365524.Spec : Prop :=
  ∀ n, P1715864105427365524.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P8959721799399608590

`(1+floor(n/2))%A072869(n+2)²`
-/

namespace A391196.P8959721799399608590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + ⌊(n : ℚ) / 2⌋) (A072869 (n + 2) ^ 2)

end

end A391196.P8959721799399608590

namespace A391196

/-- `(1+floor(n/2))%A072869(n+2)²` -/
def P8959721799399608590.Spec : Prop :=
  ∀ n, P8959721799399608590.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P12753570277924246305

`lcm(A008619(n), A056051(n+2))`
-/

namespace A391196.P12753570277924246305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 n) (A056051 (n + 2))

end

end A391196.P12753570277924246305

namespace A391196

/-- `lcm(A008619(n), A056051(n+2))` -/
def P12753570277924246305.Spec : Prop :=
  ∀ n, (P12753570277924246305.a n : ℤ) = A391196 (n + 2)

end A391196

/-! ## A391196.P6900125361854713059

`Δ[A065855(n+1)]*A008619(n)`
-/

namespace A391196.P6900125361854713059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 n

end

end A391196.P6900125361854713059

namespace A391196

/-- `Δ[A065855(n+1)]*A008619(n)` -/
def P6900125361854713059.Spec : Prop :=
  ∀ n, P6900125361854713059.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P17768367347406920115

`floor(A005451(n+2)/2)`
-/

namespace A391196.P17768367347406920115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005451 (n + 2) : ℚ) / 2⌋

end

end A391196.P17768367347406920115

namespace A391196

/-- `floor(A005451(n+2)/2)` -/
def P17768367347406920115.Spec : Prop :=
  ∀ n, P17768367347406920115.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P7160222712408781075

`floor(A191558(n+2)/2)`
-/

namespace A391196.P7160222712408781075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191558 (n + 2) : ℚ) / 2⌋

end

end A391196.P7160222712408781075

namespace A391196

/-- `floor(A191558(n+2)/2)` -/
def P7160222712408781075.Spec : Prop :=
  ∀ n, P7160222712408781075.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P13729340598242930214

`(1+floor(n/2))*Δ[A062298(n+1)]`
-/

namespace A391196.P13729340598242930214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ⌊(n : ℚ) / 2⌋) * (f1 (n + 1) - f1 n)

end

end A391196.P13729340598242930214

namespace A391196

/-- `(1+floor(n/2))*Δ[A062298(n+1)]` -/
def P13729340598242930214.Spec : Prop :=
  ∀ n, P13729340598242930214.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P4117919652759056765

`A004526(A005451(n+2))`
-/

namespace A391196.P4117919652759056765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005451 (n + 2)).toNat

end

end A391196.P4117919652759056765

namespace A391196

/-- `A004526(A005451(n+2))` -/
def P4117919652759056765.Spec : Prop :=
  ∀ n, P4117919652759056765.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P16343175844166399618

`A004526(A191558(n+2))`
-/

namespace A391196.P16343175844166399618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191558 (n + 2)).toNat

end

end A391196.P16343175844166399618

namespace A391196

/-- `A004526(A191558(n+2))` -/
def P16343175844166399618.Spec : Prop :=
  ∀ n, P16343175844166399618.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P7200571620447380618

`A004526((n+2)*A066247(n+2))`
-/

namespace A391196.P7200571620447380618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) * A066247 (n + 2)).toNat

end

end A391196.P7200571620447380618

namespace A391196

/-- `A004526((n+2)*A066247(n+2))` -/
def P7200571620447380618.Spec : Prop :=
  ∀ n, P7200571620447380618.a n = A391196 (n + 2)

end A391196

/-! ## A391196.P9625459273165656995

`(floor(n/2)+1)%A356775(n+2)`
-/

namespace A391196.P9625459273165656995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / 2⌋ + 1) (A356775 (n + 2))

end

end A391196.P9625459273165656995

namespace A391196

/-- `(floor(n/2)+1)%A356775(n+2)` -/
def P9625459273165656995.Spec : Prop :=
  ∀ n, P9625459273165656995.a n = A391196 (n + 2)

end A391196

/-!
# A391197: Number of fixed polyominoes with perimeter 2n.

The programs for A391197, there is no canonical definition to state claims against.
-/

/-! ## A391197.P9620672800620462558

`A324748(A038391(n))`
-/

namespace A391197.P9620672800620462558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324748 (A038391 n).toNat

end

end A391197.P9620672800620462558

/-! ## A391197.P2425252094600073718

`A366844(A062482(n+1))`
-/

namespace A391197.P2425252094600073718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (A062482 (n + 1)).toNat

end

end A391197.P2425252094600073718

/-! ## A391197.P2034977499224271067

`floor(A019503(n+1)/A101803(3*n+2))`
-/

namespace A391197.P2034977499224271067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019503 (n + 1) : ℚ) / (A101803 (3 * n + 2) : ℚ)⌋

end

end A391197.P2034977499224271067

/-!
# A391198: Expansion of g/(1 - x*g^2)^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391198, there is no canonical definition to state claims against.
-/

/-! ## A391198.P2383676174940272641

`A000079(n)-A024000(A114582(2*n+1))`
-/

namespace A391198.P2383676174940272641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A024000 (A114582 (2 * n + 1)).toNat

end

end A391198.P2383676174940272641

/-!
# A391199: Expansion of (g/(1 - x*g^2))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391199, the canonical program `A391199.P13785422348428106823` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391199 has offset 0).

The definition of A391199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391199.P13785422348428106823

`∑{#}[n, (#+1)²*C(4*n-2*#+2, n-#)/(2*n-#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391199

/-- `∑{#}[n, (#+1)²*C(4*n-2*#+2, n-#)/(2*n-#+1)]` -/
def P13785422348428106823.Spec : Prop :=
  ∀ n, P13785422348428106823.a n = (A391199 n : ℚ)

end A391199

