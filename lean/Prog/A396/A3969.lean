import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C033
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A396900: E.g.f. A(x) satisfies A(x) = 1 + x * exp(x) * A(x * exp(x)).

The programs for A396900, there is no canonical definition to state claims against.
-/

/-! ## A396900.P16314980884702576498

`A395666(n+1)/(n+1)`
-/

namespace A396900.P16314980884702576498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395666 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A396900.P16314980884702576498

/-!
# A396901: a(n) = Sum_{k=1..n} gcd(k^4,n^2).

The programs for A396901, the canonical program `A396901.P13470344737756848060` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396901 has offset 1).

The definition of A396901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)²)]` (program `A396901.P13470344737756848060`, by `A396901.P13470344737756848060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396901.P13470344737756848060

`∑{#}[n, gcd((#+1)^4, (n+1)²)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396901

/-- `∑{#}[n, gcd((#+1)^4, (n+1)²)]` -/
def P13470344737756848060.Spec : Prop :=
  ∀ n, (P13470344737756848060.a n : ℤ) = A396901 (n + 1)

theorem P13470344737756848060.correct : P13470344737756848060.Spec := by
  intro n
  simp only [A396901, Nat.add_sub_cancel]

end A396901

/-! ## A396901.P8547235962934187294

`A393808((n+1)²)/(n+1)`
-/

namespace A396901.P8547235962934187294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393808 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A396901.P8547235962934187294

namespace A396901

/-- `A393808((n+1)²)/(n+1)` -/
def P8547235962934187294.Spec : Prop :=
  ∀ n, P8547235962934187294.a n = (A396901 (n + 1) : ℚ)

end A396901

/-!
# A396903: a(n) = Sum_{k=1..n} gcd(k^4,n^3).

The programs for A396903, the canonical program `A396903.P1799447587724595297` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396903 has offset 1).

The definition of A396903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)^3)]` (program `A396903.P1799447587724595297`, by `A396903.P1799447587724595297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396903.P1799447587724595297

`∑{#}[n, gcd((#+1)^4, (n+1)^3)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396903

/-- `∑{#}[n, gcd((#+1)^4, (n+1)^3)]` -/
def P1799447587724595297.Spec : Prop :=
  ∀ n, (P1799447587724595297.a n : ℤ) = A396903 (n + 1)

theorem P1799447587724595297.correct : P1799447587724595297.Spec := by
  intro n
  simp only [A396903, Nat.add_sub_cancel]

end A396903

/-!
# A396904: a(n) = number of total diagonals in Johnson solid J_n.

The programs for A396904, there is no canonical definition to state claims against.
-/

/-! ## A396904.P16118189284948021434

`A396905(n+1)+A396906(n+1)`
-/

namespace A396904.P16118189284948021434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396905 (n + 1) + A396906 (n + 1)

end

end A396904.P16118189284948021434

/-! ## A396904.P4788667289962428549

`C(A242733(n+1), 2)-A242732(n+1)`
-/

namespace A396904.P4788667289962428549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A242733 (n + 1)).toNat 2 : ℤ) - A242732 (n + 1)

end

end A396904.P4788667289962428549

/-!
# A396905: a(n) = number of space diagonals in Johnson solid J_n.

The programs for A396905, there is no canonical definition to state claims against.
-/

/-! ## A396905.P7980108019266545560

`A396904(n+1)-A396906(n+1)`
-/

namespace A396905.P7980108019266545560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396904 (n + 1) - A396906 (n + 1)

end

end A396905.P7980108019266545560

/-!
# A396906: a(n) = number of face diagonals in Johnson solid J_n.

The programs for A396906, there is no canonical definition to state claims against.
-/

/-! ## A396906.P2353481751802830708

`A396904(n+1)-A396905(n+1)`
-/

namespace A396906.P2353481751802830708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396904 (n + 1) - A396905 (n + 1)

end

end A396906.P2353481751802830708

/-!
# A396908: Number of decimal places which are known after using n terms of A390946 and treating them as the coefficients of a continued fraction.

The programs for A396908, there is no canonical definition to state claims against.
-/

/-! ## A396908.P3044901928523477287

`A398548(A001401(n))`
-/

namespace A396908.P3044901928523477287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398548 (A001401 n).toNat

end

end A396908.P3044901928523477287

/-! ## A396908.P11118393640723749293

`A398548(A325548(n))`
-/

namespace A396908.P11118393640723749293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398548 (A325548 n).toNat

end

end A396908.P11118393640723749293

/-! ## A396908.P2990417237866146308

`A398548(A341912(n))`
-/

namespace A396908.P2990417237866146308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398548 (A341912 (n + 15)).toNat

end

end A396908.P2990417237866146308

/-! ## A396908.P9331829452351759068

`A064415(A248876(n+1))`
-/

namespace A396908.P9331829452351759068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A248876 (n + 1)).toNat

end

end A396908.P9331829452351759068

/-! ## A396908.P13507215372199670623

`A398548(A318155(n+1))`
-/

namespace A396908.P13507215372199670623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398548 (A318155 (n + 1)).toNat

end

end A396908.P13507215372199670623

/-!
# A396909: Numbers that are the sum of two nonzero generalized pentagonal numbers (A001318).

The programs for A396909, there is no canonical definition to state claims against.
-/

/-! ## A396909.P7813389585347979039

`A328169(A220815(n+1))`
-/

namespace A396909.P7813389585347979039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328169 (A220815 (n + 1)).toNat

end

end A396909.P7813389585347979039

/-! ## A396909.P8822954026322712575

`A295280(A220815(n+1))`
-/

namespace A396909.P8822954026322712575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A220815 (n + 1)).toNat

end

end A396909.P8822954026322712575

/-! ## A396909.P708195185719717741

`A061420(A329397(n+2))`
-/

namespace A396909.P708195185719717741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A329397 (n + 2)).toNat

end

end A396909.P708195185719717741

/-! ## A396909.P10237971310934937449

`lt[A055642(n), A280514(A280512(3*n+1))]`
-/

namespace A396909.P10237971310934937449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (A280512 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396909.P10237971310934937449

/-!
# A396912: a(n) is the number of partitions of n into parts m^k such that m, k, and m + k are prime.

The programs for A396912, there is no canonical definition to state claims against.
-/

/-! ## A396912.P11637874194627890389

`and(A090677(n), A225240(n+1))`
-/

namespace A396912.P11637874194627890389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090677 n) (A225240 (n + 1))

end

end A396912.P11637874194627890389

/-!
# A396914: Expansion of e.g.f. cosh( 1 / (2 - exp(x)) - 1 ).

The programs for A396914, there is no canonical definition to state claims against.
-/

/-! ## A396914.P15263740114274792690

`A075729(n)-A397802(n)`
-/

namespace A396914.P15263740114274792690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075729 n - A397802 n

end

end A396914.P15263740114274792690

/-!
# A396916: E.g.f. A(x) satisfies A(x) = 1 + x * exp(2*x) * A(x * exp(x)).

The programs for A396916, there is no canonical definition to state claims against.
-/

/-! ## A396916.P19983503234082837

`A144329((n+2)^n)`
-/

namespace A396916.P19983503234082837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 ((n + 2) ^ n)

end

end A396916.P19983503234082837

/-!
# A396919: Numbers of the form 4*p or 2*p^2, where p is an odd prime.

The programs for A396919, the canonical program `A396919.P3561420194489919644` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396919 has offset 1).

The definition of A396919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396919.P13759572477511145375

`∩[2*n, A054753(n+1)]`
-/

namespace A396919.P13759572477511145375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396919.P13759572477511145375

namespace A396919

/-- `∩[2*n, A054753(n+1)]` -/
def P13759572477511145375.Spec : Prop :=
  ∀ n, (P13759572477511145375.a n : ℤ) = A396919 (n + 1)

end A396919

/-! ## A396919.P14749641799458919544

`∩[2*n, A285508(n+2)]`
-/

namespace A396919.P14749641799458919544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396919.P14749641799458919544

namespace A396919

/-- `∩[2*n, A285508(n+2)]` -/
def P14749641799458919544.Spec : Prop :=
  ∀ n, (P14749641799458919544.a n : ℤ) = A396919 (n + 1)

end A396919

/-! ## A396919.P10531882249622640334

`∩[2*n, A286228(n+3)]`
-/

namespace A396919.P10531882249622640334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396919.P10531882249622640334

namespace A396919

/-- `∩[2*n, A286228(n+3)]` -/
def P10531882249622640334.Spec : Prop :=
  ∀ n, (P10531882249622640334.a n : ℤ) = A396919 (n + 1)

end A396919

/-! ## A396919.P3561420194489919644

`filter[A054753(n+1), A359770(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A396919

/-- `filter[A054753(n+1), A359770(#)]` -/
def P3561420194489919644.Spec : Prop :=
  ∀ n, P3561420194489919644.a n = A396919 (n + 1)

theorem P3561420194489919644.correct : P3561420194489919644.Spec := by
  intro n
  simp only [A396919, Nat.add_sub_cancel]

end A396919

/-! ## A396919.P1117948214996871897

`filter[A054753(n+1), A359816(#)]`
-/

namespace A396919.P1117948214996871897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A396919.P1117948214996871897

namespace A396919

/-- `filter[A054753(n+1), A359816(#)]` -/
def P1117948214996871897.Spec : Prop :=
  ∀ n, P1117948214996871897.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P8090116947549804477

`filter[A285508(n+1), A359816(#)]`
-/

namespace A396919.P8090116947549804477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A396919.P8090116947549804477

namespace A396919

/-- `filter[A285508(n+1), A359816(#)]` -/
def P8090116947549804477.Spec : Prop :=
  ∀ n, P8090116947549804477.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P11122305783448854038

`filter[A388980(n+1), A353798(#)]`
-/

namespace A396919.P11122305783448854038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A396919.P11122305783448854038

namespace A396919

/-- `filter[A388980(n+1), A353798(#)]` -/
def P11122305783448854038.Spec : Prop :=
  ∀ n, P11122305783448854038.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P14908586271391223252

`filter[A388984(n+1), A353798(#)]`
-/

namespace A396919.P14908586271391223252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A396919.P14908586271391223252

namespace A396919

/-- `filter[A388984(n+1), A353798(#)]` -/
def P14908586271391223252.Spec : Prop :=
  ∀ n, P14908586271391223252.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P8814891603190934837

`filter[A388980(n+1), A359474(#)]`
-/

namespace A396919.P8814891603190934837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A396919.P8814891603190934837

namespace A396919

/-- `filter[A388980(n+1), A359474(#)]` -/
def P8814891603190934837.Spec : Prop :=
  ∀ n, P8814891603190934837.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P5019405049980714389

`filter[A388980(n+1), A359475(#)]`
-/

namespace A396919.P5019405049980714389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A396919.P5019405049980714389

namespace A396919

/-- `filter[A388980(n+1), A359475(#)]` -/
def P5019405049980714389.Spec : Prop :=
  ∀ n, P5019405049980714389.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P4772304057377408466

`filter[A388984(n+1), A359471(#)]`
-/

namespace A396919.P4772304057377408466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A396919.P4772304057377408466

namespace A396919

/-- `filter[A388984(n+1), A359471(#)]` -/
def P4772304057377408466.Spec : Prop :=
  ∀ n, P4772304057377408466.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P5398654853732160315

`filter[A388984(n+1), A359474(#)]`
-/

namespace A396919.P5398654853732160315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A396919.P5398654853732160315

namespace A396919

/-- `filter[A388984(n+1), A359474(#)]` -/
def P5398654853732160315.Spec : Prop :=
  ∀ n, P5398654853732160315.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P13395418259611673908

`filter[A388984(n+1), A359475(#)]`
-/

namespace A396919.P13395418259611673908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A396919.P13395418259611673908

namespace A396919

/-- `filter[A388984(n+1), A359475(#)]` -/
def P13395418259611673908.Spec : Prop :=
  ∀ n, P13395418259611673908.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P3270994677277838567

`filter[A285508(n+2), A359770(#)]`
-/

namespace A396919.P3270994677277838567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A396919.P3270994677277838567

namespace A396919

/-- `filter[A285508(n+2), A359770(#)]` -/
def P3270994677277838567.Spec : Prop :=
  ∀ n, P3270994677277838567.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P4926686019677773167

`filter[A388980(n+2), A359471(#)]`
-/

namespace A396919.P4926686019677773167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A396919.P4926686019677773167

namespace A396919

/-- `filter[A388980(n+2), A359471(#)]` -/
def P4926686019677773167.Spec : Prop :=
  ∀ n, P4926686019677773167.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P16687846285146793365

`filter[A100367(n+1), A353798(#)]`
-/

namespace A396919.P16687846285146793365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A396919.P16687846285146793365

namespace A396919

/-- `filter[A100367(n+1), A353798(#)]` -/
def P16687846285146793365.Spec : Prop :=
  ∀ n, P16687846285146793365.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P13659050136315506958

`filter[A100367(n+1), A359474(#)]`
-/

namespace A396919.P13659050136315506958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A396919.P13659050136315506958

namespace A396919

/-- `filter[A100367(n+1), A359474(#)]` -/
def P13659050136315506958.Spec : Prop :=
  ∀ n, P13659050136315506958.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P1603190476422069729

`filter[A100367(n+1), A359475(#)]`
-/

namespace A396919.P1603190476422069729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A396919.P1603190476422069729

namespace A396919

/-- `filter[A100367(n+1), A359475(#)]` -/
def P1603190476422069729.Spec : Prop :=
  ∀ n, P1603190476422069729.a n = A396919 (n + 1)

end A396919

/-! ## A396919.P5888479299003270122

`∩[A030515(n+1), A100367(n+1)]`
-/

namespace A396919.P5888479299003270122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396919.P5888479299003270122

namespace A396919

/-- `∩[A030515(n+1), A100367(n+1)]` -/
def P5888479299003270122.Spec : Prop :=
  ∀ n, (P5888479299003270122.a n : ℤ) = A396919 (n + 1)

end A396919

/-! ## A396919.P14721241344379058392

`filter[A076364(n+1), A359475(#)]`
-/

namespace A396919.P14721241344379058392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A396919.P14721241344379058392

namespace A396919

/-- `filter[A076364(n+1), A359475(#)]` -/
def P14721241344379058392.Spec : Prop :=
  ∀ n, P14721241344379058392.a n = A396919 (n + 1)

end A396919

/-!
# A396920: E.g.f. A(x) satisfies A( x / A(log(A(x))) ) = exp(x).

The programs for A396920, there is no canonical definition to state claims against.
-/

/-! ## A396920.P9459339021049688775

`A379175(n²*a(n-1))` with `a(0)=1`
-/

namespace A396920.P9459339021049688775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379175 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A396920.P9459339021049688775

/-!
# A396921: E.g.f. A(x) satisfies A( x / A(log(A(log(A(x))))) ) = exp(x).

The programs for A396921, there is no canonical definition to state claims against.
-/

/-! ## A396921.P12038488934935845296

`A110534(A002110(n)*A371063(n))`
-/

namespace A396921.P12038488934935845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110534 (A002110 n * A371063 n).toNat

end

end A396921.P12038488934935845296

/-!
# A396922: E.g.f. A(x) satisfies A( x / A(log(A(log(A(log(A(x))))))) ) = exp(x).

The programs for A396922, there is no canonical definition to state claims against.
-/

/-! ## A396922.P18408058703154159

`A371794(A001792(n))-n`
-/

namespace A396922.P18408058703154159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371794 (A001792 n).toNat - (n : ℤ)

end

end A396922.P18408058703154159

/-!
# A396923: a(n) is the number of grand Motzkin paths with air pockets of length n.

The programs for A396923, there is no canonical definition to state claims against.
-/

/-! ## A396923.P6185430648525527907

`A187188(A061419(3*n+2)-A187200(n+1))`
-/

namespace A396923.P6185430648525527907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A061419 (3 * n + 2) - A187200 (n + 1)).toNat

end

end A396923.P6185430648525527907

/-! ## A396923.P348799795417620599

`A183233(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A396923.P348799795417620599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A183233 (2 * a (n - 1)).toNat

end

end A396923.P348799795417620599

/-!
# A396927: Breadth-first search (BFS) layer sizes of the Coxeter group of the 5-dimensional right-corner orthoscheme with five pairwise distinct leg lengths.

The programs for A396927, the canonical program `A396927.P10677914664923563345` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396927 has offset 0).

The definition of A396927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396927.P13527597229042153175

`ogf((1+3x+3x^2+x^3)/(1-3x+x^2+x^3))`
-/

namespace A396927.P13527597229042153175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 1] [1, -3, 1, 1] n

end

end A396927.P13527597229042153175

namespace A396927

/-- `ogf((1+3x+3x^2+x^3)/(1-3x+x^2+x^3))` -/
def P13527597229042153175.Spec : Prop :=
  ∀ n, P13527597229042153175.a n = A396927 n

end A396927

/-! ## A396927.P10677914664923563345

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=54`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396927

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P10677914664923563345.Spec : Prop :=
  ∀ n, P10677914664923563345.a n = A396927 n

theorem P10677914664923563345.correct : P10677914664923563345.Spec := by
  intro n
  simp only [A396927]

end A396927

/-! ## A396927.P8117898593788553092

`Δ[A213667(n+1)]-4`
-/

namespace A396927.P8117898593788553092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A396927.P8117898593788553092

namespace A396927

/-- `Δ[A213667(n+1)]-4` -/
def P8117898593788553092.Spec : Prop :=
  ∀ n, P8117898593788553092.a n = A396927 n

end A396927

/-! ## A396927.P3796584786800486473

`∑[A002203(n+1)]-A036453(n+1)`
-/

namespace A396927.P3796584786800486473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036453 (n + 1)

end

end A396927.P3796584786800486473

namespace A396927

/-- `∑[A002203(n+1)]-A036453(n+1)` -/
def P3796584786800486473.Spec : Prop :=
  ∀ n, P3796584786800486473.a n = A396927 n

end A396927

/-! ## A396927.P18115127919851948497

`A378212(A133654(n+2))`
-/

namespace A396927.P18115127919851948497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378212 (A133654 (n + 2)).toNat

end

end A396927.P18115127919851948497

namespace A396927

/-- `A378212(A133654(n+2))` -/
def P18115127919851948497.Spec : Prop :=
  ∀ n, P18115127919851948497.a n = A396927 n

end A396927

/-!
# A396934: Number of pairs (i,j) with 0 <= i,j < 2^n, i AND j = 0, and gcd(i,j) = 1.

The programs for A396934, there is no canonical definition to state claims against.
-/

/-! ## A396934.P4232679643124036970

`A337788(A081904(n))`
-/

namespace A396934.P4232679643124036970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A081904 n).toNat

end

end A396934.P4232679643124036970

/-! ## A396934.P13198415795772570026

`eq[A120447(n+1), A283893(n+1)]`
-/

namespace A396934.P13198415795772570026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396934.P13198415795772570026

/-!
# A396936: A knight starts at the origin on an infinite chessboard. In each step, it makes a knight's move to the unvisited point closest to the origin, avoiding steps that inevitably lead to a dead end at some point in the future. See comments for how ties are resolved. a(n) is the x-coordinate of the knight after the n-th step.

The programs for A396936, there is no canonical definition to state claims against.
-/

/-! ## A396936.P7637678326937104638

`A324606(A004918(n+2))`
-/

namespace A396936.P7637678326937104638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324606 (A004918 (n + 2)).toNat

end

end A396936.P7637678326937104638

/-! ## A396936.P17235154881615241760

`A324606(n+1)^A028246(A028246(n+1))`
-/

namespace A396936.P17235154881615241760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324606 (n + 1) : ℚ) ^ (A028246 (A028246 (n + 1)).toNat : ℤ)

end

end A396936.P17235154881615241760

/-!
# A396938: a(1) = 1, a(n) = Product_{i=1..omega(n)} prime(i)^(m_i-1), with n = Product_{i=1..omega(n)} p_i^m_i, omega = A001221, and p_i < p_(i+1).

The programs for A396938, there is no canonical definition to state claims against.
-/

/-! ## A396938.P11563617934266723761

`A003557(A071364(n+1))`
-/

namespace A396938.P11563617934266723761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A071364 (n + 1)).toNat

end

end A396938.P11563617934266723761

/-! ## A396938.P13524542953522718278

`A397499(A077462(n+1))`
-/

namespace A396938.P13524542953522718278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (A077462 (n + 1)).toNat

end

end A396938.P13524542953522718278

/-! ## A396938.P9988485482985340974

`A071364(n+1)/A292586(n+1)`
-/

namespace A396938.P9988485482985340974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (n + 1) : ℚ) / (A292586 (n + 1) : ℚ)

end

end A396938.P9988485482985340974

/-! ## A396938.P9791664468222397321

`A071364(n+1)/A071364(A007947(n+1))`
-/

namespace A396938.P9791664468222397321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (n + 1) : ℚ) / (A071364 (A007947 (n + 1)).toNat : ℚ)

end

end A396938.P9791664468222397321

/-! ## A396938.P1606937668382434082

`A071364(n+1)/A071364(A329607(n+1))`
-/

namespace A396938.P1606937668382434082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (n + 1) : ℚ) / (A071364 (A329607 (n + 1)).toNat : ℚ)

end

end A396938.P1606937668382434082

/-! ## A396938.P8348363672103403659

`A341392(A334032(n+1))`
-/

namespace A396938.P8348363672103403659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A334032 (n + 1)).toNat

end

end A396938.P8348363672103403659

/-! ## A396938.P16860308814183970720

`A351944(A108951(A329607(n+1)))`
-/

namespace A396938.P16860308814183970720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (A108951 (A329607 (n + 1)).toNat).toNat

end

end A396938.P16860308814183970720

/-!
# A396939: Numbers having isolated ones or isolated double ones in their binary representations.

The programs for A396939, the canonical program `A396939.P3152846793651132362` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396939 has offset 1).

The definition of A396939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396939.P3152846793651132362

`comp[A173024(n+1)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396939

/-- `comp[A173024(n+1)]` -/
def P3152846793651132362.Spec : Prop :=
  ∀ n, (P3152846793651132362.a n : ℤ) = A396939 (n + 1)

theorem P3152846793651132362.correct : P3152846793651132362.Spec := by
  intro n
  simp only [A396939, Nat.add_sub_cancel]

end A396939

/-! ## A396939.P6984133866622734911

`comp[or(n, A269160(n))]`
-/

namespace A396939.P6984133866622734911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A269160 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P6984133866622734911

namespace A396939

/-- `comp[or(n, A269160(n))]` -/
def P6984133866622734911.Spec : Prop :=
  ∀ n, (P6984133866622734911.a n : ℤ) = A396939 (n + 1)

end A396939

/-! ## A396939.P4884204161772976252

`comp[A163617(A163617(n))]`
-/

namespace A396939.P4884204161772976252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A163617 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P4884204161772976252

namespace A396939

/-- `comp[A163617(A163617(n))]` -/
def P4884204161772976252.Spec : Prop :=
  ∀ n, (P4884204161772976252.a n : ℤ) = A396939 (n + 1)

end A396939

/-! ## A396939.P8424269126073555517

`comp[A115770(A326153(n+2))]`
-/

namespace A396939.P8424269126073555517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (A326153 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P8424269126073555517

namespace A396939

/-- `comp[A115770(A326153(n+2))]` -/
def P8424269126073555517.Spec : Prop :=
  ∀ n, (P8424269126073555517.a n : ℤ) = A396939 (n + 1)

end A396939

/-! ## A396939.P2085658904971133170

`lt[A344947(n), A007504(A038556(2*n))]`
-/

namespace A396939.P2085658904971133170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038556 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396939.P2085658904971133170

namespace A396939

/-- `lt[A344947(n), A007504(A038556(2*n))]` -/
def P2085658904971133170.Spec : Prop :=
  ∀ n, (P2085658904971133170.a n : ℤ) = A396939 (n + 1)

end A396939

/-!
# A396940: Lexicographically earliest Latin squares of increasing order, read by rows.

The programs for A396940, there is no canonical definition to state claims against.
-/

/-! ## A396940.P16714911611457881343

`A036431(A069818(n+1))`
-/

namespace A396940.P16714911611457881343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A069818 (n + 1)).toNat

end

end A396940.P16714911611457881343

/-! ## A396940.P16004186476545254036

`A106844(A156146(n+1))`
-/

namespace A396940.P16004186476545254036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106844 (A156146 (n + 1)).toNat

end

end A396940.P16004186476545254036

/-! ## A396940.P4188822472669283020

`A111891(gcd(A138800(n+1), A337797(n)))`
-/

namespace A396940.P4188822472669283020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111891 (Int.gcd (A138800 (n + 1)) (A337797 n))

end

end A396940.P4188822472669283020

/-! ## A396940.P2550045151364712517

`A083919(A135973(n+1))`
-/

namespace A396940.P2550045151364712517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A135973 (n + 1)).toNat

end

end A396940.P2550045151364712517

/-! ## A396940.P6700051720848019493

`A116683(A129945(n+1))`
-/

namespace A396940.P6700051720848019493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116683 (A129945 (n + 1)).toNat

end

end A396940.P6700051720848019493

/-!
# A396944: a(n) is the smallest integer k such that the iterated multiplicative-order chain k -> ord_k(2) -> ord_{ord_k(2)}(2) -> ... reaches an even number in exactly n steps.

The programs for A396944, there is no canonical definition to state claims against.
-/

/-! ## A396944.P7205482650835273222

`filter[A346161(n+1), A361121(#)]`
-/

namespace A396944.P7205482650835273222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361121 (f1 j).toNat = 1) n)

end

end A396944.P7205482650835273222

/-!
# A396945: Number of divisors of n^3 + 1.

The programs for A396945, the canonical program `A396945.P1470108520854866059` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396945 has offset 0).

The definition of A396945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396945.P1470108520854866059

`A000005(n^3+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396945

/-- `A000005(n^3+1)` -/
def P1470108520854866059.Spec : Prop :=
  ∀ n, P1470108520854866059.a n = A396945 n

theorem P1470108520854866059.correct : P1470108520854866059.Spec := by
  intro n
  simp only [A396945]

end A396945

/-! ## A396945.P912619964047640132

`∏{e}[n^3+1, #+1]`
-/

namespace A396945.P912619964047640132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A396945.P912619964047640132

namespace A396945

/-- `∏{e}[n^3+1, #+1]` -/
def P912619964047640132.Spec : Prop :=
  ∀ n, (P912619964047640132.a n : ℤ) = A396945 n

theorem P912619964047640132.correct : P912619964047640132.Spec := by
  intro n
  simp only [A396945, Nat.add_sub_cancel, A396945.P912619964047640132.f1, A396945.P912619964047640132.a, A396945.P1470108520854866059.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396945

/-! ## A396945.P11759188456786240260

`∑{d}[n^3+1, gcd(n, #)]`
-/

namespace A396945.P11759188456786240260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A396945.P11759188456786240260

namespace A396945

/-- `∑{d}[n^3+1, gcd(n, #)]` -/
def P11759188456786240260.Spec : Prop :=
  ∀ n, (P11759188456786240260.a n : ℤ) = A396945 n

end A396945

/-! ## A396945.P4975017490041607100

`A357977(A000005(n*n²+1))`
-/

namespace A396945.P4975017490041607100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357977 (A000005 (n * n ^ 2 + 1)).toNat

end

end A396945.P4975017490041607100

namespace A396945

/-- `A357977(A000005(n*n²+1))` -/
def P4975017490041607100.Spec : Prop :=
  ∀ n, P4975017490041607100.a n = A396945 n

end A396945

/-! ## A396945.P6332338966487997814

`A331308(n^3+1)`
-/

namespace A396945.P6332338966487997814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (n ^ 3 + 1)

end

end A396945.P6332338966487997814

namespace A396945

/-- `A331308(n^3+1)` -/
def P6332338966487997814.Spec : Prop :=
  ∀ n, P6332338966487997814.a n = A396945 n

end A396945

/-!
# A396946: Primes p such that both Mordell equations y^2 = x^3 + p^2 and y^2 = x^3 - p^2 have nonzero integer solutions.

The programs for A396946, there is no canonical definition to state claims against.
-/

/-! ## A396946.P13989090963816558375

`A156902(A052996(n))`
-/

namespace A396946.P13989090963816558375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156902 (A052996 n).toNat

end

end A396946.P13989090963816558375

/-!
# A396947: Primes of the form x^^y - w^^z, where x >= w >= 2 and y >= z >= 2, and ^^ denotes tetration.

The programs for A396947, there is no canonical definition to state claims against.
-/

/-! ## A396947.P4489420643581663547

`A068146(n+2)`
-/

namespace A396947.P4489420643581663547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068146 (n + 2)

end

end A396947.P4489420643581663547

/-!
# A396949: Integers k such that omega(k) + Omega(k) = sopf(k), where omega is the number of distinct prime factors (A001221), Omega is the number of prime factors with multiplicity (A001222), and sopf is the sum of the distinct prime factors (A008472).

The programs for A396949, there is no canonical definition to state claims against.
-/

/-! ## A396949.P5813953445191776408

`A353849(A098588(n))*A360453(n+1)`
-/

namespace A396949.P5813953445191776408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A098588 n).toNat * A360453 (n + 1)

end

end A396949.P5813953445191776408

/-!
# A396951: Sprague-Grundy value of the subtraction game on a pile of n counters in which a player subtracts any positive square if n == 1 (mod 4), and otherwise subtracts 3, 8, or 9.

The programs for A396951, there is no canonical definition to state claims against.
-/

/-! ## A396951.P10525762022046404030

`A363807(A134389(n+1))`
-/

namespace A396951.P10525762022046404030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A134389 (n + 1)).toNat

end

end A396951.P10525762022046404030

/-! ## A396951.P8917237226948997431

`A215935(A288295(n+1))`
-/

namespace A396951.P8917237226948997431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215935 (A288295 (n + 1)).toNat

end

end A396951.P8917237226948997431

/-!
# A396953: Number of elements of word-length n in the reflection group of a seven-dimensional orthoscheme with distinct edge lengths.

The programs for A396953, the canonical program `A396953.P1454756326558987831` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396953 has offset 0).

The definition of A396953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396953.P8752304235239759053

`ogf((1+4x+6x^2+4x^3+x^4)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A396953.P8752304235239759053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 4, 1] [1, -4, 3, 2, -1] n

end

end A396953.P8752304235239759053

namespace A396953

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-4x+3x^2+2x^3-x^4))` -/
def P8752304235239759053.Spec : Prop :=
  ∀ n, P8752304235239759053.a n = A396953 n

end A396953

/-! ## A396953.P1454756326558987831

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=35, a(3)=118, a(4)=353`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396953

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P1454756326558987831.Spec : Prop :=
  ∀ n, P1454756326558987831.a n = A396953 n

theorem P1454756326558987831.correct : P1454756326558987831.Spec := by
  intro n
  simp only [A396953]

end A396953

/-!
# A396954: Number of rooted binary time-consistent leaf-labeled galled trees with n leaves and exactly 1 gall.

The programs for A396954, the canonical program `A396954.P5032689482050111643` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396954 has offset 1).

The definition of A396954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396954.P5032689482050111643

`(n+3)*(2*(n+1))!/((n+1)!*2^(n+1))-3*2^n*(n+1)!`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396954

/-- `(n+3)*(2*(n+1))!/((n+1)!*2^(n+1))-3*2^n*(n+1)!` -/
def P5032689482050111643.Spec : Prop :=
  ∀ n, P5032689482050111643.a n = (A396954 (n + 1) : ℚ)

end A396954

/-! ## A396954.P9388748686237762914

`3*A035119(n+1)`
-/

namespace A396954.P9388748686237762914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035119 (n + 1)

end

end A396954.P9388748686237762914

namespace A396954

/-- `3*A035119(n+1)` -/
def P9388748686237762914.Spec : Prop :=
  ∀ n, P9388748686237762914.a n = A396954 (n + 1)

end A396954

/-! ## A396954.P13648631895758265254

`A397580(n+1)-(A035101(n+1)+A035101(n+1))`
-/

namespace A396954.P13648631895758265254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397580 (n + 1) - (A035101 (n + 1) + A035101 (n + 1))

end

end A396954.P13648631895758265254

namespace A396954

/-- `A397580(n+1)-(A035101(n+1)+A035101(n+1))` -/
def P13648631895758265254.Spec : Prop :=
  ∀ n, P13648631895758265254.a n = A396954 (n + 1)

end A396954

/-!
# A396960: Conjectured list of numbers whose trajectory under the 15x+1 map eventually reaches 1, where the map sends odd x to 15x+1 and even x to x/2.

The programs for A396960, there is no canonical definition to state claims against.
-/

/-! ## A396960.P9533438430035623650

`filter[A336232(n+1), A225183(#)]`
-/

namespace A396960.P9533438430035623650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225183 (f1 j).toNat = 1) n)

end

end A396960.P9533438430035623650

/-! ## A396960.P16799738441138821397

`∩[A302594(n+1), A048715(n)]`
-/

namespace A396960.P16799738441138821397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396960.P16799738441138821397

/-! ## A396960.P3964563497636392701

`∩[A302594(n+1), A336232(n+1)]`
-/

namespace A396960.P3964563497636392701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396960.P3964563497636392701

/-! ## A396960.P12483563214034415404

`∩[A108549(n+1), A048715(n)]`
-/

namespace A396960.P12483563214034415404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396960.P12483563214034415404

/-! ## A396960.P8288919004501035034

`∩[A320230(n+1), A048715(n)]`
-/

namespace A396960.P8288919004501035034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396960.P8288919004501035034

/-!
# A396961: Number of bipartite partitions of (n, n) into distinct parts containing at least one part with both coordinates strictly positive.

The programs for A396961, there is no canonical definition to state claims against.
-/

/-! ## A396961.P9163925642662864372

`A219554(n)-A000009(n)²`
-/

namespace A396961.P9163925642662864372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A000009 n ^ 2

end

end A396961.P9163925642662864372

/-! ## A396961.P11886260933408688334

`A219554(n)-A304990(n)`
-/

namespace A396961.P11886260933408688334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A304990 n

end

end A396961.P11886260933408688334

/-!
# A396963: Last term of a 2 X n generalized arithmetic progression (GAP) of primes with smallest last term.

The programs for A396963, there is no canonical definition to state claims against.
-/

/-! ## A396963.P7208320287354347086

`A098103(A179633(n+2))`
-/

namespace A396963.P7208320287354347086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098103 (A179633 (n + 2)).toNat

end

end A396963.P7208320287354347086

/-!
# A396965: E.g.f. A(x) satisfies A(x) = 1 + x * A(x * exp(2*x)).

The programs for A396965, there is no canonical definition to state claims against.
-/

/-! ## A396965.P12481552790235437715

`A238970(n^n)`
-/

namespace A396965.P12481552790235437715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238970 (n ^ n)

end

end A396965.P12481552790235437715

/-!
# A396966: a(n) is the number of obstruction residues modulo 2^n for the Collatz-type 3n-1 map T(x) = (3x-1)/2^A007814(3x-1).

The programs for A396966, there is no canonical definition to state claims against.
-/

/-! ## A396966.P16049855014750310056

`A159325(A014605(n))`
-/

namespace A396966.P16049855014750310056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159325 (A014605 n).toNat

end

end A396966.P16049855014750310056

/-! ## A396966.P17184241380383285951

`A073719(A075853(n))`
-/

namespace A396966.P17184241380383285951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A075853 n).toNat

end

end A396966.P17184241380383285951

/-! ## A396966.P13993006170649126408

`A091245(A094057(n))`
-/

namespace A396966.P13993006170649126408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A094057 n).toNat

end

end A396966.P13993006170649126408

/-! ## A396966.P17892366475567998733

`A135661(A148414(n))`
-/

namespace A396966.P17892366475567998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A148414 n).toNat

end

end A396966.P17892366475567998733

/-! ## A396966.P17106106540440086860

`A135661(A148431(n))`
-/

namespace A396966.P17106106540440086860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A148431 n).toNat

end

end A396966.P17106106540440086860

/-!
# A396967: Numbers k that are neither powers of primes nor have residues r (mod k) for which s = r + m*k is such that rad(s) | k but rad(r) does not divide k, and rad(k) does not divide r, where rad = A007947.

The programs for A396967, there is no canonical definition to state claims against.
-/

/-! ## A396967.P9794082370273999119

`A381750(A031980(n+1))`
-/

namespace A396967.P9794082370273999119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A031980 (n + 1)).toNat

end

end A396967.P9794082370273999119

/-! ## A396967.P10738177862138652276

`A381750(A265999(n+1))`
-/

namespace A396967.P10738177862138652276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A265999 (n + 1)).toNat

end

end A396967.P10738177862138652276

/-! ## A396967.P5790799763763136126

`A381750(A316495(n+1))`
-/

namespace A396967.P5790799763763136126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A316495 (n + 1)).toNat

end

end A396967.P5790799763763136126

/-! ## A396967.P10212034801725675361

`A381750(A316502(n+1))`
-/

namespace A396967.P10212034801725675361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A316502 (n + 1)).toNat

end

end A396967.P10212034801725675361

/-! ## A396967.P8820361163854618255

`A381750(A317492(n+1))`
-/

namespace A396967.P8820361163854618255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381750 (A317492 (n + 1)).toNat

end

end A396967.P8820361163854618255

/-!
# A396968: Numbers that are neither squarefree, powerful, nor in A396324.

The programs for A396968, there is no canonical definition to state claims against.
-/

/-! ## A396968.P5641764240096902375

`∩[A172121(n+1), A392537(n+1)]`
-/

namespace A396968.P5641764240096902375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396968.P5641764240096902375

/-! ## A396968.P13472263000849464834

`A059404(lt[A118013(2*(n+2)), A175427(3*n+5)])`
-/

namespace A396968.P13472263000849464834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118013 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396968.P13472263000849464834

/-!
# A396969: Intersection of A332785 and A396324.

The programs for A396969, there is no canonical definition to state claims against.
-/

/-! ## A396969.P17933108055462723667

`filter[A396324(n+1), A389905(#)]`
-/

namespace A396969.P17933108055462723667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A396969.P17933108055462723667

/-! ## A396969.P3818802776795580375

`∩[A332785(n+1), A396324(n+1)]`
-/

namespace A396969.P3818802776795580375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396969.P3818802776795580375

/-! ## A396969.P5777602859938889494

`∩[A389065(n+1), A396324(n+1)]`
-/

namespace A396969.P5777602859938889494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396969.P5777602859938889494

/-! ## A396969.P8690887343334868582

`∩[A052485(n+1), A396324(n+1)]`
-/

namespace A396969.P8690887343334868582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396969.P8690887343334868582

/-!
# A396970: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B^k(x), where B(x) is the e.g.f. of A001028.

The programs for A396970, there is no canonical definition to state claims against.
-/

/-! ## A396970.P3660945221876039706

`A240600(A320253(n))`
-/

namespace A396970.P3660945221876039706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A320253 n).toNat

end

end A396970.P3660945221876039706

/-! ## A396970.P4450838168411828380

`or(A124550(n), A322308(A244987(n+1)))`
-/

namespace A396970.P4450838168411828380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124550 n) (A322308 (A244987 (n + 1)).toNat)

end

end A396970.P4450838168411828380

/-!
# A396971: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B^k(x), where B(x) is the e.g.f. of A193098.

The programs for A396971, there is no canonical definition to state claims against.
-/

/-! ## A396971.P9247573901020707223

`A265539(A340798(n))`
-/

namespace A396971.P9247573901020707223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A340798 n).toNat

end

end A396971.P9247573901020707223

/-! ## A396971.P1909654458465041507

`A265521(A340986(n))`
-/

namespace A396971.P1909654458465041507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265521 (A340986 n).toNat

end

end A396971.P1909654458465041507

/-! ## A396971.P953743846983708082

`A382764(A396998(n+1))`
-/

namespace A396971.P953743846983708082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382764 (A396998 (n + 1)).toNat

end

end A396971.P953743846983708082

/-! ## A396971.P11536412817158490188

`A378323(n)-A055641(A378323(3*n+1))`
-/

namespace A396971.P11536412817158490188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378323 n - A055641 (A378323 (3 * n + 1)).toNat

end

end A396971.P11536412817158490188

/-! ## A396971.P7523215625575119363

`A066517(A384987(n))`
-/

namespace A396971.P7523215625575119363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066517 (A384987 n).toNat

end

end A396971.P7523215625575119363

/-!
# A396972: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B^k(x), where B(x) is the e.g.f. of A193099.

The programs for A396972, there is no canonical definition to state claims against.
-/

/-! ## A396972.P13873436661549250651

`A396447(A055648(n))`
-/

namespace A396972.P13873436661549250651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396447 (A055648 n).toNat

end

end A396972.P13873436661549250651

/-! ## A396972.P6412432423081440736

`A102705(A381602(n))`
-/

namespace A396972.P6412432423081440736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A381602 n).toNat

end

end A396972.P6412432423081440736

/-! ## A396972.P2917486581247924545

`A102705(A394901(n))`
-/

namespace A396972.P2917486581247924545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A394901 n).toNat

end

end A396972.P2917486581247924545

/-! ## A396972.P13200646763887801382

`A122347(A384751(n))`
-/

namespace A396972.P13200646763887801382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122347 (A384751 n).toNat

end

end A396972.P13200646763887801382

/-! ## A396972.P5050991765748095307

`A372592(A341268(n))`
-/

namespace A396972.P5050991765748095307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372592 (A341268 n).toNat

end

end A396972.P5050991765748095307

/-!
# A396973: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B^k(x), where B(x) is the e.g.f. of A395269.

The programs for A396973, there is no canonical definition to state claims against.
-/

/-! ## A396973.P15719361035267426571

`or(A326474(A326474(n)), A379168(n))`
-/

namespace A396973.P15719361035267426571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A326474 (A326474 n).toNat) (A379168 n)

end

end A396973.P15719361035267426571

/-! ## A396973.P3031681986497410716

`A379168(n)+A058348(A333650(n+2))`
-/

namespace A396973.P3031681986497410716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379168 n + A058348 (A333650 (n + 2)).toNat

end

end A396973.P3031681986497410716

/-! ## A396973.P2007086132611083769

`or(A030308(A351694(n+1)), A379168(n))`
-/

namespace A396973.P2007086132611083769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A351694 (n + 1)).toNat) (A379168 n)

end

end A396973.P2007086132611083769

/-! ## A396973.P13507544985357594684

`A102705(A118349(n))`
-/

namespace A396973.P13507544985357594684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A118349 n).toNat

end

end A396973.P13507544985357594684

/-! ## A396973.P5894266107168335641

`A055570(A379168(n))`
-/

namespace A396973.P5894266107168335641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A379168 n).toNat

end

end A396973.P5894266107168335641

/-!
# A396975: Follow along the squares in the Hilbert curve. Place a chess king at each square that is not attacked by an existing king. This sequence gives the squares occupied by the kings.

The programs for A396975, there is no canonical definition to state claims against.
-/

/-! ## A396975.P12795609038014076831

`A047540(n+1)*A105023(A002386(n+1))`
-/

namespace A396975.P12795609038014076831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (n + 1) * A105023 (A002386 (n + 1)).toNat

end

end A396975.P12795609038014076831

/-! ## A396975.P6201033385745639530

`A020639(A235797(2*n+1))*A047540(n+1)`
-/

namespace A396975.P6201033385745639530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235797 (2 * n + 1)).toNat * A047540 (n + 1)

end

end A396975.P6201033385745639530

/-! ## A396975.P12444084858286851643

`A236840(A029903(3*n+1))`
-/

namespace A396975.P12444084858286851643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 (A029903 (3 * n + 1)).toNat

end

end A396975.P12444084858286851643

/-! ## A396975.P6239157396555044230

`A020639(A208796(2*n+5))*A047540(n+1)`
-/

namespace A396975.P6239157396555044230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A208796 (2 * n + 5)).toNat * A047540 (n + 1)

end

end A396975.P6239157396555044230

/-!
# A396980: Abundant numbers whose preceding five numbers and following five numbers are nonabundant.

The programs for A396980, there is no canonical definition to state claims against.
-/

/-! ## A396980.P13108050282937794740

`A272270(A116522(n+1))`
-/

namespace A396980.P13108050282937794740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272270 (A116522 (n + 1)).toNat

end

end A396980.P13108050282937794740

/-!
# A396981: Array read by ascending antidiagonals: A(n, k) = A(n, k-A002024(k)) + (n+A002024(k)-1) * A(n-1, k) with A(n, 0) = 0^n, A(0, k) = 1.

The programs for A396981, there is no canonical definition to state claims against.
-/

/-! ## A396981.P17712441583189968618

`A084938(n)+A006927(A028326(n))`
-/

namespace A396981.P17712441583189968618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n + A006927 (A028326 n).toNat

end

end A396981.P17712441583189968618

/-! ## A396981.P3173484437093222285

`A084938(n)+A059841(A157156(n))`
-/

namespace A396981.P3173484437093222285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n + A059841 (A157156 n).toNat

end

end A396981.P3173484437093222285

/-! ## A396981.P11045238760206296388

`A284772(A172343(n))+A084938(n)`
-/

namespace A396981.P11045238760206296388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284772 (A172343 n).toNat + A084938 n

end

end A396981.P11045238760206296388

/-! ## A396981.P12407054395556882937

`A333382(A331315(n))+A084938(n)`
-/

namespace A396981.P12407054395556882937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A331315 n).toNat + A084938 n

end

end A396981.P12407054395556882937

/-! ## A396981.P14186832710522483174

`A084938(n)+A010894(A001263(n+1))`
-/

namespace A396981.P14186832710522483174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n + A010894 ((A001263 (n + 1)).toNat + 21)

end

end A396981.P14186832710522483174

/-!
# A396985: Numbers whose Fibonacci-Lucas and Lucas-Fibonacci representations have the same number of terms.

The programs for A396985, there is no canonical definition to state claims against.
-/

/-! ## A396985.P5090228897916802633

`eq[A000007(n), A353657(A028310(n))]`
-/

namespace A396985.P5090228897916802633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353657 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396985.P5090228897916802633

/-!
# A396987: The number of n-colorings of the faces of the triakis tetrahedron up to rotation.

The programs for A396987, the canonical program `A396987.P1592483923655048899` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396987 has offset 0).

The definition of A396987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396987.P1592483923655048899

`n^4*(n^8+3*n²+8)/12`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A396987

/-- `n^4*(n^8+3*n²+8)/12` -/
def P1592483923655048899.Spec : Prop :=
  ∀ n, P1592483923655048899.a n = (A396987 n : ℚ)

end A396987

/-!
# A396988: Number of convexities on an n set induced by preorders.

The programs for A396988, there is no canonical definition to state claims against.
-/

/-! ## A396988.P12172917400810792100

`A326947(A211984(n+1)+A006506(n))`
-/

namespace A396988.P12172917400810792100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326947 (A211984 (n + 1) + A006506 n).toNat

end

end A396988.P12172917400810792100

/-!
# A396991: Consider a prime number prime(i) with k digits d_1, d_2, ..., d_k, where d_k is the units digit. Consider the next k prime numbers prime(i+1), prime(i+2), ..., prime(i+k) and the numbers obtained by concatenating [d_1, prime(i+1)], [d_2, prime(i+2)], ..., [d_k, prime(i+k)]. If the latter are all prime, then prime(i) belongs to the sequence.

The programs for A396991, there is no canonical definition to state claims against.
-/

/-! ## A396991.P12218402840801307338

`∩[A002152(n+1), A158017(n+1)]`
-/

namespace A396991.P12218402840801307338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396991.P12218402840801307338

/-!
# A396992: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of B^k(x), where B(x) is the g.f. of A091713.

The programs for A396992, there is no canonical definition to state claims against.
-/

/-! ## A396992.P4748964382862145153

`A357434(A384741(n))`
-/

namespace A396992.P4748964382862145153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (A384741 n).toNat

end

end A396992.P4748964382862145153

/-! ## A396992.P6713420610512374540

`A357434(A384804(n))`
-/

namespace A396992.P6713420610512374540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (A384804 n).toNat

end

end A396992.P6713420610512374540

/-! ## A396992.P2776091851779004820

`A400671(A287318(n))`
-/

namespace A396992.P2776091851779004820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400671 (A287318 n).toNat

end

end A396992.P2776091851779004820

/-!
# A396995: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of B^k(x), where B(x) is the g.f. of A378576.

The programs for A396995, there is no canonical definition to state claims against.
-/

/-! ## A396995.P11263961884430295644

`A055570(A118354(n))`
-/

namespace A396995.P11263961884430295644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A118354 n).toNat

end

end A396995.P11263961884430295644

/-! ## A396995.P10548541066870153922

`A055570(A381603(n))`
-/

namespace A396995.P10548541066870153922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A381603 n).toNat

end

end A396995.P10548541066870153922

/-! ## A396995.P12081042372522561485

`A055570(A384621(n))`
-/

namespace A396995.P12081042372522561485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A384621 n).toNat

end

end A396995.P12081042372522561485

/-! ## A396995.P3836662934150188501

`A123580(A396501(n))`
-/

namespace A396995.P3836662934150188501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A396501 n).toNat

end

end A396995.P3836662934150188501

/-! ## A396995.P509581032629687334

`A123731(A396500(n))`
-/

namespace A396995.P509581032629687334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A396500 n).toNat

end

end A396995.P509581032629687334

/-!
# A396996: E.g.f. A(x) satisfies A'(x) = exp(A^3(x)), with A(0) = 0.

The programs for A396996, there is no canonical definition to state claims against.
-/

/-! ## A396996.P17825150006863672335

`A397000(∑[n+2])`
-/

namespace A396996.P17825150006863672335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396996.P17825150006863672335

/-! ## A396996.P6698515823950096483

`A397001(A000217(n+4)-4)`
-/

namespace A396996.P6698515823950096483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397001 (A000217 (n + 4) - 4).toNat

end

end A396996.P6698515823950096483

/-! ## A396996.P15834673590402435104

`A397001(xor(4, A000217(n+4)))`
-/

namespace A396996.P15834673590402435104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397001 (Int.xor 4 (A000217 (n + 4))).toNat

end

end A396996.P15834673590402435104

/-!
# A396997: Expansion of e.g.f. exp(F(x)), where F(x) is the e.g.f. of A396996.

The programs for A396997, there is no canonical definition to state claims against.
-/

/-! ## A396997.P2062474451608084237

`A397001(∑[n+1]+n)`
-/

namespace A396997.P2062474451608084237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397001 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A396997.P2062474451608084237

/-! ## A396997.P18038669805582954642

`A350127(A112936(n)+1)`
-/

namespace A396997.P18038669805582954642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350127 (A112936 n + 1).toNat

end

end A396997.P18038669805582954642

/-!
# A396998: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. F^k(x), where F(x) is the e.g.f. of A214645.

The programs for A396998, there is no canonical definition to state claims against.
-/

/-! ## A396998.P2500020992185648828

`A181578(A340986(n))`
-/

namespace A396998.P2500020992185648828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A340986 n).toNat

end

end A396998.P2500020992185648828

/-! ## A396998.P8773788060418130085

`and(A105287(A094531(n)), A122078(n))`
-/

namespace A396998.P8773788060418130085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105287 (A094531 n).toNat) (A122078 n)

end

end A396998.P8773788060418130085

/-! ## A396998.P7539248842822794786

`and(A122078(n), A375009(3*n+4))`
-/

namespace A396998.P7539248842822794786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122078 n) (A375009 (3 * n + 4))

end

end A396998.P7539248842822794786

/-! ## A396998.P9036006796627938624

`and(A122078(n), A360228(A360228(n+1)))`
-/

namespace A396998.P9036006796627938624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122078 n) (A360228 (A360228 (n + 1)).toNat)

end

end A396998.P9036006796627938624

