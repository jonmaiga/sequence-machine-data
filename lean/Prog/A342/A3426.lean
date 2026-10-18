import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A342600: a(n) = f(n,n) where f(m,n) = max(m,n) if m < 2 or n < 2; f(m,n) = f(m-1,n-1) + f(m-1,n-2) + f(m-2,n-1) otherwise. Diagonal of A342859.

The programs for A342600, there is no canonical definition to state claims against.
-/

/-! ## A342600.P13439842428679069801

`A131710(n)+A024317(A047046(n))`
-/

namespace A342600.P13439842428679069801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131710 n + A024317 (A047046 n).toNat

end

end A342600.P13439842428679069801

/-! ## A342600.P13885664111060574993

`A023190(A087223(n))-1`
-/

namespace A342600.P13885664111060574993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A087223 n).toNat - 1

end

end A342600.P13885664111060574993

/-! ## A342600.P9171861601191916662

`A262689(2*A015535(n))`
-/

namespace A342600.P9171861601191916662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A015535 n).toNat

end

end A342600.P9171861601191916662

/-!
# A342602: Number of solutions to 1 +-* 2 +-* 3 +-* ... +-* n = 0.

The programs for A342602, there is no canonical definition to state claims against.
-/

/-! ## A342602.P14246371172546566496

`A259361(A125658(n))-A164349(n)`
-/

namespace A342602.P14246371172546566496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A125658 n).toNat - A164349 n

end

end A342602.P14246371172546566496

/-! ## A342602.P4411520141057674570

`A135664(A229046(n))-A135664(A097724(n))`
-/

namespace A342602.P4411520141057674570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A229046 n).toNat - A135664 (A097724 n).toNat

end

end A342602.P4411520141057674570

/-!
# A342603: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 6*a(n) + a(n+1).

The programs for A342603, there is no canonical definition to state claims against.
-/

/-! ## A342603.P2316339627077928964

`A303789(A342636(n))`
-/

namespace A342603.P2316339627077928964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A342636 n).toNat

end

end A342603.P2316339627077928964

/-! ## A342603.P779081935565678399

`A037465(A342635(n))^A000041(and(32, n-1))`
-/

namespace A342603.P779081935565678399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037465 (A342635 n).toNat : ℚ) ^ (A000041 (Int.land 32 ((n : ℤ) - 1)).toNat : ℤ)

end

end A342603.P779081935565678399

/-! ## A342603.P7905348647683839042

`A037465(A342635(n)%A003528(n+1))`
-/

namespace A342603.P7905348647683839042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A342635 n) (A003528 (n + 1))).toNat

end

end A342603.P7905348647683839042

/-! ## A342603.P663442706631443258

`A037465(A342635(n))%A034700(n+1)`
-/

namespace A342603.P663442706631443258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037465 (A342635 n).toNat) (A034700 (n + 1))

end

end A342603.P663442706631443258

/-!
# A342604: a(n) = Sum_{j=1..n} A003718(j-1)*prime(j).

The programs for A342604, the canonical program `A342604.P8903697158238511034` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342604 has offset 1).

The definition of A342604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342604.P8903697158238511034

`∑[A000040(n+1)*A007318(n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342604

/-- `∑[A000040(n+1)*A007318(n)]` -/
def P8903697158238511034.Spec : Prop :=
  ∀ n, P8903697158238511034.a n = A342604 (n + 1)

theorem P8903697158238511034.correct : P8903697158238511034.Spec := by
  intro n
  simp only [A342604, Nat.add_sub_cancel]

end A342604

/-! ## A342604.P6254220116574692200

`∑[A006005(n+1)*A007318(n)]+1`
-/

namespace A342604.P6254220116574692200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A342604.P6254220116574692200

namespace A342604

/-- `∑[A006005(n+1)*A007318(n)]+1` -/
def P6254220116574692200.Spec : Prop :=
  ∀ n, P6254220116574692200.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P12373353479561931373

`∑[(A006093(n+1)+1)*A007318(n)]`
-/

namespace A342604.P12373353479561931373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P12373353479561931373

namespace A342604

/-- `∑[(A006093(n+1)+1)*A007318(n)]` -/
def P12373353479561931373.Spec : Prop :=
  ∀ n, P12373353479561931373.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P9183455254292506657

`∑[(A008864(n+1)-1)*A007318(n)]`
-/

namespace A342604.P9183455254292506657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P9183455254292506657

namespace A342604

/-- `∑[(A008864(n+1)-1)*A007318(n)]` -/
def P9183455254292506657.Spec : Prop :=
  ∀ n, P9183455254292506657.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P4880763779273476153

`∑[(A014692(n+1)+n)*A007318(n)]`
-/

namespace A342604.P4880763779273476153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P4880763779273476153

namespace A342604

/-- `∑[(A014692(n+1)+n)*A007318(n)]` -/
def P4880763779273476153.Spec : Prop :=
  ∀ n, P4880763779273476153.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P7875962748796757475

`∑[A007318(n)*A008578(n+2)]`
-/

namespace A342604.P7875962748796757475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P7875962748796757475

namespace A342604

/-- `∑[A007318(n)*A008578(n+2)]` -/
def P7875962748796757475.Spec : Prop :=
  ∀ n, P7875962748796757475.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P13300730095758641628

`∑[A007318(n)*record[A006530(n+2)]]`
-/

namespace A342604.P13300730095758641628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P13300730095758641628

namespace A342604

/-- `∑[A007318(n)*record[A006530(n+2)]]` -/
def P13300730095758641628.Spec : Prop :=
  ∀ n, P13300730095758641628.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P14447216324625465526

`∑[(record[A000010(n+1)]+1)*A007318(n)]`
-/

namespace A342604.P14447216324625465526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P14447216324625465526

namespace A342604

/-- `∑[(record[A000010(n+1)]+1)*A007318(n)]` -/
def P14447216324625465526.Spec : Prop :=
  ∀ n, P14447216324625465526.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P10403649480762332046

`∑[p?[A206074(n+1)]*A007318(n)]`
-/

namespace A342604.P10403649480762332046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P10403649480762332046

namespace A342604

/-- `∑[p?[A206074(n+1)]*A007318(n)]` -/
def P10403649480762332046.Spec : Prop :=
  ∀ n, P10403649480762332046.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P18357604915044460778

`∑[A007318(n)*A207790(2*(n+1))]`
-/

namespace A342604.P18357604915044460778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A207790 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P18357604915044460778

namespace A342604

/-- `∑[A007318(n)*A207790(2*(n+1))]` -/
def P18357604915044460778.Spec : Prop :=
  ∀ n, P18357604915044460778.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P5004685531733288487

`∑[A007318(n)*record[A014963(n+2)]]`
-/

namespace A342604.P5004685531733288487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P5004685531733288487

namespace A342604

/-- `∑[A007318(n)*record[A014963(n+2)]]` -/
def P5004685531733288487.Spec : Prop :=
  ∀ n, P5004685531733288487.a n = A342604 (n + 1)

end A342604

/-! ## A342604.P2824206656168639703

`∑[record[A051664(n+1)]*A007318(n)]`
-/

namespace A342604.P2824206656168639703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342604.P2824206656168639703

namespace A342604

/-- `∑[record[A051664(n+1)]*A007318(n)]` -/
def P2824206656168639703.Spec : Prop :=
  ∀ n, P2824206656168639703.a n = A342604 (n + 1)

end A342604

/-!
# A342605: Numbers k such that A342604(k) is prime.

The programs for A342605, there is no canonical definition to state claims against.
-/

/-! ## A342605.P8959530142346275870

`eq[2, A000005(A342604(n+1))]+1`
-/

namespace A342605.P8959530142346275870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A342604 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342605.P8959530142346275870

/-!
# A342606: Primes in A342604.

The programs for A342606, there is no canonical definition to state claims against.
-/

/-! ## A342606.P2100000777953759765

`A342604(A342605(n+1))`
-/

namespace A342606.P2100000777953759765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342604 (A342605 (n + 1)).toNat

end

end A342606.P2100000777953759765

/-! ## A342606.P12160102318300434910

`p?[A342604(n+1)]`
-/

namespace A342606.P12160102318300434910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342606.P12160102318300434910

/-! ## A342606.P14567620380079971257

`p?[record[A342604(A106466(n))]]`
-/

namespace A342606.P14567620380079971257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342604 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342606.P14567620380079971257

/-! ## A342606.P2135771879993555316

`p?[record[A342604(A133310(n))]]`
-/

namespace A342606.P2135771879993555316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342604 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342606.P2135771879993555316

/-! ## A342606.P4529525802779991989

`p?[∑[A000040(n+1)*A007318(n)]]`
-/

namespace A342606.P4529525802779991989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342606.P4529525802779991989

/-!
# A342607: a(n) = Sum_{d|n} phi(d)^(n-d).

The programs for A342607, the canonical program `A342607.P1887899099928198745` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342607 has offset 1).

The definition of A342607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342607.P1887899099928198745

`∑{d}[n+1, A000010(#)^(n+1-#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342607

/-- `∑{d}[n+1, A000010(#)^(n+1-#)]` -/
def P1887899099928198745.Spec : Prop :=
  ∀ n, P1887899099928198745.a n = (A342607 (n + 1) : ℚ)

end A342607

/-! ## A342607.P3449506001608631468

`A329449(A214205(n)+n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+2)`
-/

namespace A342607.P3449506001608631468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329449 (SequenceMachineLib.roundAway ((A214205 n : ℚ) + ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 2))).toNat

end

end A342607.P3449506001608631468

namespace A342607

/-- `A329449(A214205(n)+n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+2)` -/
def P3449506001608631468.Spec : Prop :=
  ∀ n, P3449506001608631468.a n = A342607 (n + 1)

end A342607

/-! ## A342607.P6377104417529120615

`and(A010000(A245823(3*n+1)), A010000(n))`
-/

namespace A342607.P6377104417529120615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010000 (A245823 (3 * n + 1)).toNat) (A010000 n)

end

end A342607.P6377104417529120615

namespace A342607

/-- `and(A010000(A245823(3*n+1)), A010000(n))` -/
def P6377104417529120615.Spec : Prop :=
  ∀ n, P6377104417529120615.a n = A342607 (n + 1)

end A342607

/-! ## A342607.P15342904701487859364

`A302635(A000005(3*n+1))+and(n², A028307(3*n+4))`
-/

namespace A342607.P15342904701487859364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000005 (3 * n + 1)).toNat + Int.land (n ^ 2 : ℤ) (A028307 (3 * n + 4))

end

end A342607.P15342904701487859364

namespace A342607

/-- `A302635(A000005(3*n+1))+and(n², A028307(3*n+4))` -/
def P15342904701487859364.Spec : Prop :=
  ∀ n, P15342904701487859364.a n = A342607 (n + 1)

end A342607

/-! ## A342607.P11359772913545041233

`A302635(A000005(3*n+1))+and(n²+n, A230385(2*(n+2)))`
-/

namespace A342607.P11359772913545041233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A000005 (3 * n + 1)).toNat + Int.land (n ^ 2 + n : ℤ) (A230385 (2 * (n + 2)))

end

end A342607.P11359772913545041233

namespace A342607

/-- `A302635(A000005(3*n+1))+and(n²+n, A230385(2*(n+2)))` -/
def P11359772913545041233.Spec : Prop :=
  ∀ n, P11359772913545041233.a n = A342607 (n + 1)

end A342607

/-!
# A342608: a(n) = Sum_{d|n} phi(d)^(n+d).

The programs for A342608, there is no canonical definition to state claims against.
-/

/-! ## A342608.P908983890750534239

`∑{d}[n+1, A000010(#)^(n+1+#)]`
-/

namespace A342608.P908983890750534239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1 + d)

end

end A342608.P908983890750534239

/-!
# A342610: a(0) = 0, a(1) = 1; a(2*n) = 5*a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A342610, there is no canonical definition to state claims against.
-/

/-! ## A342610.P17534180964868944255

`A090882(A277330(n))+A090882(A283983(n)²)`
-/

namespace A342610.P17534180964868944255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (A277330 n).toNat + A090882 (A283983 n ^ 2).toNat

end

end A342610.P17534180964868944255

/-! ## A342610.P4100079343919209714

`A090882(A260443(n))`
-/

namespace A342610.P4100079343919209714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (A260443 n).toNat

end

end A342610.P4100079343919209714

/-! ## A342610.P4293856405387999594

`A090882(A283983(n)²*A277330(n))`
-/

namespace A342610.P4293856405387999594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (A283983 n ^ 2 * A277330 n).toNat

end

end A342610.P4293856405387999594

/-! ## A342610.P1281126038653796669

`A090882(∑[A277197(n)]+1-A277197(n))`
-/

namespace A342610.P1281126038653796669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A277197 n)).toNat

end

end A342610.P1281126038653796669

/-! ## A342610.P16354889770328433981

`A090882(A277330(n)*A283983(n)*A283983(n))`
-/

namespace A342610.P16354889770328433981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (A277330 n * A283983 n * A283983 n).toNat

end

end A342610.P16354889770328433981

/-!
# A342611: a(0) = 0, a(1) = 1; a(2*n) = 7*a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A342611, there is no canonical definition to state claims against.
-/

/-! ## A342611.P10118475801111613699

`A303789(A342614(n)%A067254(n+1))`
-/

namespace A342611.P10118475801111613699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (Int.tmod (A342614 n) (A067254 (n + 1))).toNat

end

end A342611.P10118475801111613699

/-! ## A342611.P5778387888625828520

`A303789(A342614(n))%A328445(n+1)`
-/

namespace A342611.P5778387888625828520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303789 (A342614 n).toNat) (A328445 (n + 1))

end

end A342611.P5778387888625828520

/-! ## A342611.P8168276921184752345

`A001221(A198277(n))*A303789(A342614(n))`
-/

namespace A342611.P8168276921184752345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A198277 n).toNat * A303789 (A342614 n).toNat

end

end A342611.P8168276921184752345

/-! ## A342611.P15224569165590818185

`A014963(A110288(n))*A303789(A342614(n))`
-/

namespace A342611.P15224569165590818185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A110288 n).toNat * A303789 (A342614 n).toNat

end

end A342611.P15224569165590818185

/-! ## A342611.P5479877954094019777

`A033044(n+1)%A006881(A186756(2*n+1))`
-/

namespace A342611.P5479877954094019777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033044 (n + 1)) (A006881 (A186756 (2 * n + 1)).toNat)

end

end A342611.P5479877954094019777

/-!
# A342612: a(n) = Sum_{d|n} phi(n/d)^(n-d).

The programs for A342612, there is no canonical definition to state claims against.
-/

/-! ## A342612.P2418245303445933365

`A002522(A265352(n)^A268679(n+1))`
-/

namespace A342612.P2418245303445933365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.roundAway ((A265352 n : ℚ) ^ (A268679 (n + 1) : ℤ))).toNat

end

end A342612.P2418245303445933365

/-!
# A342613: a(n) = Sum_{d|n} phi(n/d)^(n+d).

The programs for A342613, there is no canonical definition to state claims against.
-/

/-! ## A342613.P3759814626242820107

`A008619(ceil(A342620(n+1)/A007318(n)))`
-/

namespace A342613.P3759814626242820107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈(A342620 (n + 1) : ℚ) / (A007318 n : ℚ)⌉.toNat

end

end A342613.P3759814626242820107

/-! ## A342613.P8896323479867720325

`A008619(round(A342620(n+1)/A007318(n)))`
-/

namespace A342613.P8896323479867720325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A342620 (n + 1) : ℚ) / (A007318 n : ℚ))).toNat

end

end A342613.P8896323479867720325

/-!
# A342614: a(0) = 0, a(1) = 1; a(2*n) = 8*a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A342614, there is no canonical definition to state claims against.
-/

/-! ## A342614.P8884462670938387636

`A037474(A342611(n))`
-/

namespace A342614.P8884462670938387636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A342611 n).toNat

end

end A342614.P8884462670938387636

/-!
# A342615: a(0) = 0, a(1) = 1; a(2*n) = 9*a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A342615, there is no canonical definition to state claims against.
-/

/-! ## A342615.P9608892407974643669

`A037475(A342611(n))`
-/

namespace A342615.P9608892407974643669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A342611 n).toNat

end

end A342615.P9608892407974643669

/-! ## A342615.P8954181634642574795

`A037477(A342614(n))`
-/

namespace A342615.P8954181634642574795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A342614 n).toNat

end

end A342615.P8954181634642574795

/-! ## A342615.P14739939076889135215

`A037474(A342614(n))%A000040(A100071(n+1))`
-/

namespace A342615.P14739939076889135215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A342614 n).toNat) (A000040 (A100071 (n + 1)).toNat)

end

end A342615.P14739939076889135215

/-! ## A342615.P8044294218917656818

`A001221(A198277(n))*A037474(A342614(n))`
-/

namespace A342615.P8044294218917656818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A198277 n).toNat * A037474 (A342614 n).toNat

end

end A342615.P8044294218917656818

/-!
# A342617: a(n) = Sum_{d|n} phi(d)^(n-d+1).

The programs for A342617, the canonical program `A342617.P12995369555951692482` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342617 has offset 1).

The definition of A342617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342617.P12995369555951692482

`∑{d}[n+1, A000010(#)^(n+2-#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342617

/-- `∑{d}[n+1, A000010(#)^(n+2-#)]` -/
def P12995369555951692482.Spec : Prop :=
  ∀ n, P12995369555951692482.a n = (A342617 (n + 1) : ℚ)

end A342617

/-!
# A342618: a(n) = Sum_{d|n} phi(d)^(n+d+1).

The programs for A342618, there is no canonical definition to state claims against.
-/

/-! ## A342618.P13011104823594680691

`∑{d}[n+1, A000010(#)^(n+2+#)]`
-/

namespace A342618.P13011104823594680691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 2 + d)

end

end A342618.P13011104823594680691

/-!
# A342620: a(n) = Sum_{d|n} phi(n/d)^(n+d+1).

The programs for A342620, there is no canonical definition to state claims against.
-/

/-! ## A342620.P12925245418990504779

`A274859(A071734(n))+∑{e}[n+1, #]`
-/

namespace A342620.P12925245418990504779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A071734 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A342620.P12925245418990504779

/-!
# A342621: Sum of the partition number of the prime factors of n with multiplicity.

The programs for A342621, there is no canonical definition to state claims against.
-/

/-! ## A342621.P18268757770171319971

`∑{p}[n+1, val(n+1, #)*A000041(#)]`
-/

namespace A342621.P18268757770171319971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000041 p

end

end A342621.P18268757770171319971

/-! ## A342621.P9588761840502935144

`∑{d}[n+1, A141670(A014963(#))]`
-/

namespace A342621.P9588761840502935144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A141670 (A014963 d).toNat

end

end A342621.P9588761840502935144

/-! ## A342621.P8715017581617061214

`∑{d}[n+1, A018783(A014963(#)²)]`
-/

namespace A342621.P8715017581617061214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018783 (A014963 d ^ 2).toNat

end

end A342621.P8715017581617061214

/-! ## A342621.P18050667791440308296

`∑{d}[n+1, A018783(A014963(#)*A014963(#))]`
-/

namespace A342621.P18050667791440308296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018783 (A014963 d * A014963 d).toNat

end

end A342621.P18050667791440308296

/-! ## A342621.P11512879887933722592

`∑{e}[A181821(n+1), A000041(A000040(#))]`
-/

namespace A342621.P11512879887933722592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A342621.P11512879887933722592

/-!
# A342622: The x-coordinates of the vertices of the Babylonian Wurm.

The programs for A342622, there is no canonical definition to state claims against.
-/

/-! ## A342622.P16861350250878735469

`A342624(n)+a(n-1)` with `a(0)=0`
-/

namespace A342622.P16861350250878735469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342624 n + a (n - 1)

end

end A342622.P16861350250878735469

/-! ## A342622.P11620435181785026889

`∑[A342624(round(sqrt(n²+1)))]`
-/

namespace A342622.P11620435181785026889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342624 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342622.P11620435181785026889

/-! ## A342622.P16906619189899278949

`∑[A342624(n+1)]-A342624(n+1)`
-/

namespace A342622.P16906619189899278949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342624 (n + 1)

end

end A342622.P16906619189899278949

/-!
# A342623: The y-coordinates of the vertices of the Babylonian Wurm.

The programs for A342623, there is no canonical definition to state claims against.
-/

/-! ## A342623.P11110087166631856309

`A342625(n)+a(n-1)` with `a(0)=0`
-/

namespace A342623.P11110087166631856309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342625 n + a (n - 1)

end

end A342623.P11110087166631856309

/-! ## A342623.P14387295679727668390

`∑[A342625(A028310(n))]-1`
-/

namespace A342623.P14387295679727668390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342625 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A342623.P14387295679727668390

/-! ## A342623.P11892711834757653542

`∑[A342625(n+1)]-A342625(n+1)`
-/

namespace A342623.P11892711834757653542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342625 (n + 1)

end

end A342623.P11892711834757653542

/-! ## A342623.P14895251749823564971

`∑[A342625(A028310(n))%A000124(n)]`
-/

namespace A342623.P14895251749823564971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342625 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342623.P14895251749823564971

/-! ## A342623.P7276915431582968143

`∑[A342625(A065033(2*n))]-1`
-/

namespace A342623.P7276915431582968143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342625 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A342623.P7276915431582968143

/-! ## A342623.P6682008282922969952

`∑[A342625(A065033(2*n))%A000124(n)]`
-/

namespace A342623.P6682008282922969952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342625 (A065033 (2 * n)).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342623.P6682008282922969952

/-!
# A342624: The x-coordinates of the vectors used to construct the Babylonian Wurm.

The programs for A342624, there is no canonical definition to state claims against.
-/

/-! ## A342624.P5016734180036070620

`A342622(n+2)-A342622(n+1)`
-/

namespace A342624.P5016734180036070620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342622 (n + 2) - A342622 (n + 1)

end

end A342624.P5016734180036070620

/-! ## A342624.P11884448607812262843

`A342626(n)+a(n-1)` with `a(0)=0`
-/

namespace A342624.P11884448607812262843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342626 n + a (n - 1)

end

end A342624.P11884448607812262843

/-! ## A342624.P13388633867758232681

`∑[A342626(A028310(n))]-1`
-/

namespace A342624.P13388633867758232681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342626 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A342624.P13388633867758232681

/-! ## A342624.P12170276199624511264

`∑[A342626(n+1)]-A342626(n+1)`
-/

namespace A342624.P12170276199624511264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342626 (n + 1)

end

end A342624.P12170276199624511264

/-! ## A342624.P923633692297732252

`Δ[A342622(n+1)]`
-/

namespace A342624.P923633692297732252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342624.P923633692297732252

/-!
# A342625: The y-coordinates of the vectors used to construct the Babylonian Wurm.

The programs for A342625, there is no canonical definition to state claims against.
-/

/-! ## A342625.P4746885922057696221

`A342623(n+2)-A342623(n+1)`
-/

namespace A342625.P4746885922057696221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342623 (n + 2) - A342623 (n + 1)

end

end A342625.P4746885922057696221

/-! ## A342625.P7396408224518990109

`A342627(n)+a(n-1)` with `a(0)=1`
-/

namespace A342625.P7396408224518990109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342627 n + a (n - 1)

end

end A342625.P7396408224518990109

/-! ## A342625.P12900044075263350762

`∑[A342627(abs(1-n)+1)]+2`
-/

namespace A342625.P12900044075263350762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342627 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A342625.P12900044075263350762

/-! ## A342625.P11793626433269126417

`∑[A342627(n*a(A000038(n)))]` with `a(0)=1`
-/

namespace A342625.P11793626433269126417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A342627 ((n : ℤ) * f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342625.P11793626433269126417

/-! ## A342625.P3690440033972951356

`Δ[A342623(n+1)]`
-/

namespace A342625.P3690440033972951356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342625.P3690440033972951356

/-!
# A342626: Second differences of the x-coordinates of the vertices of the Babylonian Wurm.

The programs for A342626, there is no canonical definition to state claims against.
-/

/-! ## A342626.P13519387278597986740

`A342622(n+3)-2*A342622(n+2)+A342622(n+1)`
-/

namespace A342626.P13519387278597986740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342622 (n + 3) - 2 * A342622 (n + 2) + A342622 (n + 1)

end

end A342626.P13519387278597986740

/-! ## A342626.P8017838010813337528

`Δ[A342624(n+1)]`
-/

namespace A342626.P8017838010813337528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342626.P8017838010813337528

/-! ## A342626.P9598506299521358896

`A342624(n+2)-A342624(n+1)`
-/

namespace A342626.P9598506299521358896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342624 (n + 2) - A342624 (n + 1)

end

end A342626.P9598506299521358896

/-! ## A342626.P17933241965985350388

`Δ[Δ[A342622(n+1)]]`
-/

namespace A342626.P17933241965985350388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342622 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342626.P17933241965985350388

/-!
# A342627: Second differences of the y-coordinates of the vertices of the Babylonian Wurm.

The programs for A342627, there is no canonical definition to state claims against.
-/

/-! ## A342627.P11069352975905217399

`A342623(n+3)-2*A342623(n+2)+A342623(n+1)`
-/

namespace A342627.P11069352975905217399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342623 (n + 3) - 2 * A342623 (n + 2) + A342623 (n + 1)

end

end A342627.P11069352975905217399

/-! ## A342627.P2948252846466103437

`Δ[A342625(n+1)]`
-/

namespace A342627.P2948252846466103437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342627.P2948252846466103437

/-! ## A342627.P3664838997817448306

`A342625(n+2)-A342625(n+1)`
-/

namespace A342627.P3664838997817448306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342625 (n + 2) - A342625 (n + 1)

end

end A342627.P3664838997817448306

/-! ## A342627.P4459323760479086142

`Δ[Δ[A342623(n+1)]]`
-/

namespace A342627.P4459323760479086142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342627.P4459323760479086142

/-!
# A342628: a(n) = Sum_{d|n} d^(n-d).

The programs for A342628, the canonical program `A342628.P16561493156493499180` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342628 has offset 1).

The definition of A342628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342628.P16561493156493499180

`∑{d}[n+1, #^(n+1-#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342628

/-- `∑{d}[n+1, #^(n+1-#)]` -/
def P16561493156493499180.Spec : Prop :=
  ∀ n, P16561493156493499180.a n = (A342628 (n + 1) : ℚ)

end A342628

/-! ## A342628.P912687874856706196

`Δ[floor(∑[∑{d}[n, #^(n-#)]])]`
-/

namespace A342628.P912687874856706196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (d : ℚ) ^ ((n : ℤ) - (d : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342628.P912687874856706196

namespace A342628

/-- `Δ[floor(∑[∑{d}[n, #^(n-#)]])]` -/
def P912687874856706196.Spec : Prop :=
  ∀ n, P912687874856706196.a n = A342628 (n + 1)

end A342628

/-!
# A342629: a(n) = Sum_{d|n} (n/d)^(n-d).

The programs for A342629, the canonical program `A342629.P828086183392144114` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342629 has offset 1).

The definition of A342629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342629.P828086183392144114

`∑{d}[n+1, ((n+1)/#)^(n+1-#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342629

/-- `∑{d}[n+1, ((n+1)/#)^(n+1-#)]` -/
def P828086183392144114.Spec : Prop :=
  ∀ n, P828086183392144114.a n = (A342629 (n + 1) : ℚ)

end A342629

/-! ## A342629.P1843266841428953386

`A073666(A323646(n)+A000169(n+1))`
-/

namespace A342629.P1843266841428953386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (A323646 n + A000169 (n + 1)).toNat

end

end A342629.P1843266841428953386

namespace A342629

/-- `A073666(A323646(n)+A000169(n+1))` -/
def P1843266841428953386.Spec : Prop :=
  ∀ n, P1843266841428953386.a n = A342629 (n + 1)

end A342629

/-!
# A342631: Number of Hamiltonian paths (or Gray codes) on n-cube with the origin as the starting node, up to a permutation of the coordinates.

The programs for A342631, there is no canonical definition to state claims against.
-/

/-! ## A342631.P6057556658227240176

`A003043(n+1)/(n+1)!`
-/

namespace A342631.P6057556658227240176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003043 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A342631.P6057556658227240176

/-!
# A342632: Number of ordered pairs (x, y) with gcd(x, y) = 1 and 1 <= {x, y} <= 2^n.

The programs for A342632, there is no canonical definition to state claims against.
-/

/-! ## A342632.P2647497145539547464

`A018805(2^n)`
-/

namespace A342632.P2647497145539547464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (2 ^ n)

end

end A342632.P2647497145539547464

/-! ## A342632.P1112163352245116823

`record[A018805(A029930(n))]`
-/

namespace A342632.P1112163352245116823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342632.P1112163352245116823

/-! ## A342632.P1400760008607431244

`record[A018805(A048483(n))]`
-/

namespace A342632.P1400760008607431244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342632.P1400760008607431244

/-! ## A342632.P15931347035469906371

`record[A018805(A055248(n))]`
-/

namespace A342632.P15931347035469906371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342632.P15931347035469906371

/-! ## A342632.P1460847087386764231

`record[A018805(A059268(n))]`
-/

namespace A342632.P1460847087386764231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342632.P1460847087386764231

/-!
# A342633: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 3*a(n) + a(n+1).

The programs for A342633, there is no canonical definition to state claims against.
-/

/-! ## A342633.P14362601555199231531

`A163325(4*A342638(n))`
-/

namespace A342633.P14362601555199231531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (4 * A342638 n).toNat

end

end A342633.P14362601555199231531

/-! ## A342633.P13728493144215197502

`A203580(A342637(n)%A268394(n+1))`
-/

namespace A342633.P13728493144215197502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (Int.tmod (A342637 n) (A268394 (n + 1))).toNat

end

end A342633.P13728493144215197502

/-! ## A342633.P14573166633744498325

`A203580(A342637(n))%A328165(3*(n+1))`
-/

namespace A342633.P14573166633744498325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203580 (A342637 n).toNat) (A328165 (3 * (n + 1)))

end

end A342633.P14573166633744498325

/-! ## A342633.P4643123358283582338

`A203580(A342637(n))^A014963(A157149(n))`
-/

namespace A342633.P4643123358283582338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203580 (A342637 n).toNat : ℚ) ^ (A014963 (A157149 n).toNat : ℤ)

end

end A342633.P4643123358283582338

/-! ## A342633.P2435199059302065170

`A203580(A342637(n))*A342637(A000079(n))`
-/

namespace A342633.P2435199059302065170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A342637 n).toNat * A342637 (A000079 n).toNat

end

end A342633.P2435199059302065170

/-!
# A342634: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 4*a(n) + a(n+1).

The programs for A342634, there is no canonical definition to state claims against.
-/

/-! ## A342634.P12773246849666903152

`A342633(n)+A108611(A342603(n))`
-/

namespace A342634.P12773246849666903152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 n + A108611 (A342603 n).toNat

end

end A342634.P12773246849666903152

/-!
# A342636: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 7*a(n) + a(n+1).

The programs for A342636, there is no canonical definition to state claims against.
-/

/-! ## A342636.P6893081795705212825

`A303789(A342637(n)%A268394(n+1))`
-/

namespace A342636.P6893081795705212825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (Int.tmod (A342637 n) (A268394 (n + 1))).toNat

end

end A342636.P6893081795705212825

/-! ## A342636.P12978483946422898524

`A303789(A342637(n))^A014963(A105213(n+1))`
-/

namespace A342636.P12978483946422898524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303789 (A342637 n).toNat : ℚ) ^ (A014963 (A105213 (n + 1)).toNat : ℤ)

end

end A342636.P12978483946422898524

/-! ## A342636.P16749948561276888462

`A303789(A342637(n))^A014963(A043786(n+13))`
-/

namespace A342636.P16749948561276888462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303789 (A342637 n).toNat : ℚ) ^ (A014963 (A043786 (n + 13)).toNat : ℤ)

end

end A342636.P16749948561276888462

/-!
# A342637: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 8*a(n) + a(n+1).

The programs for A342637, there is no canonical definition to state claims against.
-/

/-! ## A342637.P4596617745039693908

`A037474(A342636(n))`
-/

namespace A342637.P4596617745039693908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A342636 n).toNat

end

end A342637.P4596617745039693908

/-!
# A342638: a(0) = 0, a(1) = 1; a(2*n) = a(n), a(2*n+1) = 9*a(n) + a(n+1).

The programs for A342638, there is no canonical definition to state claims against.
-/

/-! ## A342638.P4673771014808679630

`A037475(A342636(n))`
-/

namespace A342638.P4673771014808679630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A342636 n).toNat

end

end A342638.P4673771014808679630

/-! ## A342638.P17684433340880460745

`A037477(A342637(n))`
-/

namespace A342638.P17684433340880460745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A342637 n).toNat

end

end A342638.P17684433340880460745

/-! ## A342638.P10709471743296875219

`A037468(A342635(n))%A071865(n+4)`
-/

namespace A342638.P10709471743296875219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037468 (A342635 n).toNat) (A071865 (n + 4))

end

end A342638.P10709471743296875219

/-! ## A342638.P831744555716717097

`A037468(A342635(n)%A003528(n+1))`
-/

namespace A342638.P831744555716717097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (Int.tmod (A342635 n) (A003528 (n + 1))).toNat

end

end A342638.P831744555716717097

/-! ## A342638.P1785906155494874932

`A037474(A342637(n)%A268394(n+1))`
-/

namespace A342638.P1785906155494874932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A342637 n) (A268394 (n + 1))).toNat

end

end A342638.P1785906155494874932

/-!
# A342639: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = g(f(n) + f(k)) where g maps the complement, say s, of a finite set of nonnegative integers to the value Sum_{e >= 0 not in s} 2^e, f is the inverse of g, and "+" denotes the Minkowski sum.

The programs for A342639, there is no canonical definition to state claims against.
-/

/-! ## A342639.P3785181935278982710

`A157358(n+1)%A325566(A003991(n+1))`
-/

namespace A342639.P3785181935278982710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157358 (n + 1)) (A325566 (A003991 (n + 1)).toNat)

end

end A342639.P3785181935278982710

/-! ## A342639.P6097901410612228931

`A336551(round(log2(A220109(n+1))))`
-/

namespace A342639.P6097901410612228931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (SequenceMachineLib.roundAway (Real.logb 2 (A220109 (n + 1) : ℝ))).toNat

end

end A342639.P6097901410612228931

/-! ## A342639.P16631594611635863626

`A062241(n)%A325566(A003991(n+1))`
-/

namespace A342639.P16631594611635863626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062241 n) (A325566 (A003991 (n + 1)).toNat)

end

end A342639.P16631594611635863626

/-! ## A342639.P1275931874208489626

`A378887(A300804(n+1))-1`
-/

namespace A342639.P1275931874208489626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378887 (A300804 (n + 1)).toNat - 1

end

end A342639.P1275931874208489626

/-! ## A342639.P16643561208713191689

`A056973(A045663(A003991(n+1)))`
-/

namespace A342639.P16643561208713191689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A045663 (A003991 (n + 1)).toNat).toNat

end

end A342639.P16643561208713191689

/-!
# A342640: a(n) = A342639(n, n).

The programs for A342640, there is no canonical definition to state claims against.
-/

/-! ## A342640.P13392338877620682459

`A342639(∑[4*n])`
-/

namespace A342640.P13392338877620682459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342640.P13392338877620682459

/-! ## A342640.P2673637426714374722

`and(-1, A342639(A046092(n)))`
-/

namespace A342640.P2673637426714374722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A342639 (A046092 n).toNat)

end

end A342640.P2673637426714374722

/-! ## A342640.P13806378788907062372

`A342639(A106232(n+1))%(n+1)²`
-/

namespace A342640.P13806378788907062372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342639 (A106232 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A342640.P13806378788907062372

/-! ## A342640.P16122654431478679027

`A057427(n)*A342639(A046092(n))`
-/

namespace A342640.P16122654431478679027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A342639 (A046092 n).toNat

end

end A342640.P16122654431478679027

/-! ## A342640.P8526473311793942050

`A342639(A046092(n))%A001845(n)`
-/

namespace A342640.P8526473311793942050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342639 (A046092 n).toNat) (A001845 n)

end

end A342640.P8526473311793942050

/-! ## A342640.P9764312122632047389

`∑{d}[A342639(A046092(n)), A000010(#)]`
-/

namespace A342640.P9764312122632047389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342639 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A342640.P9764312122632047389

/-! ## A342640.P937777594253643880

`A342639(A046092(n))+A000007(n+1)`
-/

namespace A342640.P937777594253643880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342639 (A046092 n).toNat + A000007 (n + 1)

end

end A342640.P937777594253643880

/-! ## A342640.P17057056695406622609

`A007318(C(2, n))*A342639(A046092(n))`
-/

namespace A342640.P17057056695406622609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A342639 (A046092 n).toNat

end

end A342640.P17057056695406622609

/-! ## A342640.P10792948394197402554

`ceil(1/A007318(n))*A342639(A046092(n))`
-/

namespace A342640.P10792948394197402554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A342639 (A046092 n).toNat

end

end A342640.P10792948394197402554

/-! ## A342640.P14047972555351608702

`A342639(A046092(n))+char[A000045(n+13)]`
-/

namespace A342640.P14047972555351608702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 13)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342639 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A342640.P14047972555351608702

/-!
# A342641: Numbers k such that A342640(k) = k.

The programs for A342641, there is no canonical definition to state claims against.
-/

/-! ## A342641.P17286550913552878284

`eq[n, A342640(n)]`
-/

namespace A342641.P17286550913552878284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342641.P17286550913552878284

/-! ## A342641.P12194984066902457404

`record[A342640(A342640(lcm(2, n)))]`
-/

namespace A342641.P12194984066902457404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 (A342640 (Nat.lcm 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342641.P12194984066902457404

/-! ## A342641.P4933004136521898530

`record[A342640(A342640(and(5, n+2)+n))]`
-/

namespace A342641.P4933004136521898530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 (A342640 (Nat.land 5 (n + 2) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342641.P4933004136521898530

/-! ## A342641.P8258613340802799233

`lt[(n-A342640(n))², A038712(n+1)]`
-/

namespace A342641.P8258613340802799233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A342640 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342641.P8258613340802799233

/-! ## A342641.P7700946994097464944

`lt[(n-A342640(n))², A007814(abs(1-n)+1)]`
-/

namespace A342641.P7700946994097464944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A342640 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342641.P7700946994097464944

/-! ## A342641.P13249911476850402455

`record[A342640(A342640(A130824(n)))]`
-/

namespace A342641.P13249911476850402455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 (A342640 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342641.P13249911476850402455

/-! ## A342641.P16530858587652717236

`record[A342640(A342640(A342640(2*n)))]`
-/

namespace A342641.P16530858587652717236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 (A342640 (A342640 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342641.P16530858587652717236

/-!
# A342642: Numbers k such that A342640(k) = 0.

The programs for A342642, there is no canonical definition to state claims against.
-/

/-! ## A342642.P2054507281978772947

`eq[0, A342640(n)]`
-/

namespace A342642.P2054507281978772947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342642.P2054507281978772947

/-! ## A342642.P15469068691206740973

`2*lt[A342640(2*n), 1]`
-/

namespace A342642.P15469068691206740973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342642.P15469068691206740973

/-! ## A342642.P5778342166455848434

`record[n-A342640(A080412(n))]`
-/

namespace A342642.P5778342166455848434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342640 (A080412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P5778342166455848434

/-! ## A342642.P3751299287516305471

`A282462(record[n-A342640(n)])`
-/

namespace A342642.P3751299287516305471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342642.P3751299287516305471

/-! ## A342642.P17257492914417239345

`lt[A342640(n), atan(A293664(n))]`
-/

namespace A342642.P17257492914417239345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A293664 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A342642.P17257492914417239345

/-! ## A342642.P11065636618700836036

`lt[A342640(n), A038712(n+1)]`
-/

namespace A342642.P11065636618700836036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342642.P11065636618700836036

/-! ## A342642.P18032553696793062542

`record[n-A092942(n)*A342640(n)]`
-/

namespace A342642.P18032553696793062542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A092942 n * A342640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P18032553696793062542

/-! ## A342642.P12587931893563610378

`record[n-A144129(n)*A342640(n)]`
-/

namespace A342642.P12587931893563610378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A144129 n * A342640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P12587931893563610378

/-! ## A342642.P10060168379388976118

`lt[A342640(n)², A007814(n+2)+1]`
-/

namespace A342642.P10060168379388976118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342642.P10060168379388976118

/-! ## A342642.P14259495015455035370

`record[n-A000203(n+1)*A342640(n)]`
-/

namespace A342642.P14259495015455035370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A342640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P14259495015455035370

/-! ## A342642.P12337868795966083264

`record[n-A100152(n+1)*A342640(n)]`
-/

namespace A342642.P12337868795966083264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100152 (n + 1) * A342640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P12337868795966083264

/-! ## A342642.P15621791470326757440

`lt[A342640(n), A293664(A135481(n))]`
-/

namespace A342642.P15621791470326757440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 (A135481 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342642.P15621791470326757440

/-! ## A342642.P11179904395412572431

`record[A013928(n+1)-A342640(A013928(n+1))]`
-/

namespace A342642.P11179904395412572431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A342640 (A013928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342642.P11179904395412572431

/-! ## A342642.P11291055016713599023

`lt[A342640(n), atan(A342640(n+3))]`
-/

namespace A342642.P11291055016713599023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342640 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A342640 (n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A342642.P11291055016713599023

/-! ## A342642.P15672172079424645825

`lt[A000041(n)*A342640(n), 1]`
-/

namespace A342642.P15672172079424645825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A342640 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342642.P15672172079424645825

/-!
# A342644: Primes in A340180.

The programs for A342644, there is no canonical definition to state claims against.
-/

/-! ## A342644.P4958701197236983688

`A340180(A342630(n+1))`
-/

namespace A342644.P4958701197236983688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340180 (A342630 (n + 1)).toNat

end

end A342644.P4958701197236983688

/-! ## A342644.P1167386370203722015

`p?[A340180(n+1)]`
-/

namespace A342644.P1167386370203722015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342644.P1167386370203722015

/-!
# A342646: Maximal number of 4213 patterns in a permutation of 1,2,...,n.

The programs for A342646, there is no canonical definition to state claims against.
-/

/-! ## A342646.P9260027930041054664

`∑[∑[A211263(A003320(n))]]`
-/

namespace A342646.P9260027930041054664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (A003320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342646.P9260027930041054664

/-! ## A342646.P3960819973422401472

`A327036(A011891(n))`
-/

namespace A342646.P3960819973422401472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A011891 n).toNat

end

end A342646.P3960819973422401472

/-! ## A342646.P6220680433563982990

`A306878(A275548(n))`
-/

namespace A342646.P6220680433563982990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306878 (A275548 n).toNat

end

end A342646.P6220680433563982990

/-! ## A342646.P8800392021462830592

`A327036(A256309(n))`
-/

namespace A342646.P8800392021462830592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A256309 n).toNat

end

end A342646.P8800392021462830592

/-! ## A342646.P16051458288507841147

`A248333(A207033(n+1))`
-/

namespace A342646.P16051458288507841147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A207033 (n + 1)).toNat

end

end A342646.P16051458288507841147

/-!
# A342648: Composite numbers k such that k-A238525(k) and k+A238525(k) are prime.

The programs for A342648, there is no canonical definition to state claims against.
-/

/-! ## A342648.P2473608012498999631

`A167159(a(n-1)+5)` with `a(0)=6, a(1)=10`
-/

namespace A342648.P2473608012498999631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  A167159 (a (n - 1) + 5).toNat

end

end A342648.P2473608012498999631

/-!
# A342649: Numbers k such that A238525(k) divides k.

The programs for A342649, there is no canonical definition to state claims against.
-/

/-! ## A342649.P12151626204997878073

`eq[2, A329656(n+1)]+1`
-/

namespace A342649.P12151626204997878073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342649.P12151626204997878073

/-! ## A342649.P5176944780116663050

`A061767(eq[2, A329656(n+1)])`
-/

namespace A342649.P5176944780116663050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342649.P5176944780116663050

/-! ## A342649.P2355172977605553067

`A181569(eq[2, A329656(n+1)])`
-/

namespace A342649.P2355172977605553067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342649.P2355172977605553067

/-! ## A342649.P6614000081048977478

`eq[2, A329656(A008619(A004275(n)))]`
-/

namespace A342649.P6614000081048977478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342649.P6614000081048977478

/-! ## A342649.P13526471004935403815

`eq[2, A329656(A065033(2*n))]`
-/

namespace A342649.P13526471004935403815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342649.P13526471004935403815

/-! ## A342649.P6856752532012485495

`eq[2, A329656(A060819(A008574(n)))]`
-/

namespace A342649.P6856752532012485495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (A060819 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342649.P6856752532012485495

/-! ## A342649.P10354438813785647510

`eq[2, A329656(A233583(n+1))]`
-/

namespace A342649.P10354438813785647510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342649.P10354438813785647510

/-!
# A342650: Numbers divisible both by their nonzero individual digits and by the sum of their digits.

The programs for A342650, there is no canonical definition to state claims against.
-/

/-! ## A342650.P16874950194315904697

`filter[A002796(n+1), A188641(#)]`
-/

namespace A342650.P16874950194315904697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A342650.P16874950194315904697

/-! ## A342650.P13411756898425730807

`∩[A002796(n+1), A005349(n+1)]`
-/

namespace A342650.P13411756898425730807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342650.P13411756898425730807

/-! ## A342650.P10873670582192361334

`∩[A002796(n+1), A234474(n+1)]`
-/

namespace A342650.P10873670582192361334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342650.P10873670582192361334

/-! ## A342650.P9446057106855460697

`∪[A051004(n+1), A328273(n+1)]`
-/

namespace A342650.P9446057106855460697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342650.P9446057106855460697

/-! ## A342650.P8182917929980844044

`∩[eq[0, A070635(n+1)]+1, A002796(n+1)]`
-/

namespace A342650.P8182917929980844044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A342650.P8182917929980844044

/-! ## A342650.P7452068717075362575

`∩[eq[1, A188641(n+1)]+1, A002796(n+1)]`
-/

namespace A342650.P7452068717075362575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A342650.P7452068717075362575

/-! ## A342650.P88420488505605572

`∩[A002796(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A342650.P88420488505605572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342650.P88420488505605572

/-!
# A342651: a(n) = A329697(A156552(n)).

The programs for A342651, the canonical program `A342651.P14835572400052172115` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342651 has offset 2).

The definition of A342651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342651.P4465728446021252501

`A329697(A342666(n+2))+A342656(n+2)`
-/

namespace A342651.P4465728446021252501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A342666 (n + 2)).toNat + A342656 (n + 2)

end

end A342651.P4465728446021252501

namespace A342651

/-- `A329697(A342666(n+2))+A342656(n+2)` -/
def P4465728446021252501.Spec : Prop :=
  ∀ n, P4465728446021252501.a n = A342651 (n + 2)

end A342651

/-! ## A342651.P4193241048785051464

`A329697(A322993(n+2))`
-/

namespace A342651.P4193241048785051464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A322993 (n + 2)).toNat

end

end A342651.P4193241048785051464

namespace A342651

/-- `A329697(A322993(n+2))` -/
def P4193241048785051464.Spec : Prop :=
  ∀ n, P4193241048785051464.a n = A342651 (n + 2)

end A342651

/-! ## A342651.P14835572400052172115

`A329697(A156552(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342651

/-- `A329697(A156552(n+2))` -/
def P14835572400052172115.Spec : Prop :=
  ∀ n, P14835572400052172115.a n = A342651 (n + 2)

theorem P14835572400052172115.correct : P14835572400052172115.Spec := by
  intro n
  simp only [A342651, Nat.add_sub_cancel]

end A342651

/-! ## A342651.P16468089745070013210

`A329697(A342666(n+2))+A001222(A350063(n+2))`
-/

namespace A342651.P16468089745070013210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A342666 (n + 2)).toNat + A001222 (A350063 (n + 2)).toNat

end

end A342651.P16468089745070013210

namespace A342651

/-- `A329697(A342666(n+2))+A001222(A350063(n+2))` -/
def P16468089745070013210.Spec : Prop :=
  ∀ n, P16468089745070013210.a n = A342651 (n + 2)

end A342651

/-! ## A342651.P6076724240997296509

`A342655(A348717(n+2))+A329697(A342666(n+2))`
-/

namespace A342651.P6076724240997296509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A348717 (n + 2)).toNat + A329697 (A342666 (n + 2)).toNat

end

end A342651.P6076724240997296509

namespace A342651

/-- `A342655(A348717(n+2))+A329697(A342666(n+2))` -/
def P6076724240997296509.Spec : Prop :=
  ∀ n, P6076724240997296509.a n = A342651 (n + 2)

end A342651

/-! ## A342651.P8997443635021934929

`A329697(A342666(n+2))+A342655(n+2)-A342655(A020639(n+2))`
-/

namespace A342651.P8997443635021934929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A342666 (n + 2)).toNat + (A342655 (n + 2) - A342655 (A020639 (n + 2)).toNat)

end

end A342651.P8997443635021934929

namespace A342651

/-- `A329697(A342666(n+2))+A342655(n+2)-A342655(A020639(n+2))` -/
def P8997443635021934929.Spec : Prop :=
  ∀ n, P8997443635021934929.a n = A342651 (n + 2)

end A342651

/-!
# A342652: a(n) = A331410(A156552(n)).

The programs for A342652, the canonical program `A342652.P13786797168414532036` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342652 has offset 2).

The definition of A342652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A331410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342652.P13786797168414532036

`A331410(A156552(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342652

/-- `A331410(A156552(n+2))` -/
def P13786797168414532036.Spec : Prop :=
  ∀ n, P13786797168414532036.a n = A342652 (n + 2)

theorem P13786797168414532036.correct : P13786797168414532036.Spec := by
  intro n
  simp only [A342652, Nat.add_sub_cancel]

end A342652

/-! ## A342652.P8819439269851422263

`A331410(A322993(n+2))`
-/

namespace A342652.P8819439269851422263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A322993 (n + 2)).toNat

end

end A342652.P8819439269851422263

namespace A342652

/-- `A331410(A322993(n+2))` -/
def P8819439269851422263.Spec : Prop :=
  ∀ n, P8819439269851422263.a n = A342652 (n + 2)

end A342652

/-! ## A342652.P8846114293216939696

`A331410(A005941(2*(n+2))-2)`
-/

namespace A342652.P8846114293216939696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A005941 (2 * (n + 2)) - 2).toNat

end

end A342652.P8846114293216939696

namespace A342652

/-- `A331410(A005941(2*(n+2))-2)` -/
def P8846114293216939696.Spec : Prop :=
  ∀ n, P8846114293216939696.a n = A342652 (n + 2)

end A342652

/-! ## A342652.P6510436398764203177

`A334108(A322864(n+2))`
-/

namespace A342652.P6510436398764203177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A322864 (n + 2)).toNat

end

end A342652.P6510436398764203177

namespace A342652

/-- `A334108(A322864(n+2))` -/
def P6510436398764203177.Spec : Prop :=
  ∀ n, P6510436398764203177.a n = A342652 (n + 2)

end A342652

/-! ## A342652.P8883407410236109335

`A328615((n^A328620(n))²)`
-/

namespace A342652.P8883407410236109335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (SequenceMachineLib.roundAway (((n : ℚ) ^ (A328620 n : ℤ)) ^ 2)).toNat

end

end A342652.P8883407410236109335

namespace A342652

/-- `A328615((n^A328620(n))²)` -/
def P8883407410236109335.Spec : Prop :=
  ∀ n, P8883407410236109335.a n = A342652 (n + 2)

end A342652

/-!
# A342653: a(n) = mu(A156552(n)), where mu is Möbius mu function.

The programs for A342653, the canonical program `A342653.P13444710018547680518` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342653 has offset 2).

The definition of A342653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342653.P13444710018547680518

`A008683(A156552(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A342653

/-- `A008683(A156552(n+2))` -/
def P13444710018547680518.Spec : Prop :=
  ∀ n, P13444710018547680518.a n = A342653 (n + 2)

theorem P13444710018547680518.correct : P13444710018547680518.Spec := by
  intro n
  simp only [A342653, Nat.add_sub_cancel]

end A342653

/-! ## A342653.P12370714397271807147

`∏{e}[A156552(n+2), A240330(#)]`
-/

namespace A342653.P12370714397271807147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A240330 (Nat.factorization (f1 n).natAbs p)

end

end A342653.P12370714397271807147

namespace A342653

/-- `∏{e}[A156552(n+2), A240330(#)]` -/
def P12370714397271807147.Spec : Prop :=
  ∀ n, P12370714397271807147.a n = A342653 (n + 2)

end A342653

/-! ## A342653.P13228006514179513299

`A008683(A350062(n+2))`
-/

namespace A342653.P13228006514179513299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A350062 (n + 2)).toNat

end

end A342653.P13228006514179513299

namespace A342653

/-- `A008683(A350062(n+2))` -/
def P13228006514179513299.Spec : Prop :=
  ∀ n, P13228006514179513299.a n = A342653 (n + 2)

end A342653

/-! ## A342653.P17907654621956222050

`A008683(A005941(n+2)-1)`
-/

namespace A342653.P17907654621956222050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005941 (n + 2) - 1).toNat

end

end A342653.P17907654621956222050

namespace A342653

/-- `A008683(A005941(n+2)-1)` -/
def P17907654621956222050.Spec : Prop :=
  ∀ n, P17907654621956222050.a n = A342653 (n + 2)

end A342653

/-! ## A342653.P1904433255062454027

`A008683(∑{d}[n+2, A297112(#)])`
-/

namespace A342653.P1904433255062454027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A342653.P1904433255062454027

namespace A342653

/-- `A008683(∑{d}[n+2, A297112(#)])` -/
def P1904433255062454027.Spec : Prop :=
  ∀ n, P1904433255062454027.a n = A342653 (n + 2)

end A342653

/-! ## A342653.P1574004438466802495

`A008683(A244153(A048673(n+2)))`
-/

namespace A342653.P1574004438466802495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A244153 (A048673 (n + 2)).toNat).toNat

end

end A342653.P1574004438466802495

namespace A342653

/-- `A008683(A244153(A048673(n+2)))` -/
def P1574004438466802495.Spec : Prop :=
  ∀ n, P1574004438466802495.a n = A342653 (n + 2)

end A342653

/-! ## A342653.P2745707745010443976

`A008683(A332816(A108548(n+2)))`
-/

namespace A342653.P2745707745010443976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A332816 (A108548 (n + 2)).toNat).toNat

end

end A342653.P2745707745010443976

namespace A342653

/-- `A008683(A332816(A108548(n+2)))` -/
def P2745707745010443976.Spec : Prop :=
  ∀ n, P2745707745010443976.a n = A342653 (n + 2)

end A342653

/-!
# A342654: a(n) = A005940(1+A324104(n)); Euler totient phi conjugated by A156552.

The programs for A342654, there is no canonical definition to state claims against.
-/

/-! ## A342654.P17538792801191034183

`A005940(1+A324104(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342654.P17538792801191034183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A324104 (n + 1)).toNat

end

end A342654.P17538792801191034183

/-! ## A342654.P9132771290060625990

`A322863(∑{d}[A324104(n+1), A329034(#)])`
-/

namespace A342654.P9132771290060625990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d).toNat

end

end A342654.P9132771290060625990

/-! ## A342654.P4860152522779262837

`A122111(A253563(A324104(n+1)))`
-/

namespace A342654.P4860152522779262837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253563 (A324104 (n + 1)).toNat).toNat

end

end A342654.P4860152522779262837

/-! ## A342654.P4955353467120729810

`A297165(A324104(n+1)%A099381(n+1))`
-/

namespace A342654.P4955353467120729810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 (Int.tmod (A324104 (n + 1)) (A099381 (n + 1))).toNat

end

end A342654.P4955353467120729810

/-! ## A342654.P6604712227254790346

`A252753(A324104(n+1)^Δ[A250245(n+1)])`
-/

namespace A342654.P6604712227254790346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (SequenceMachineLib.roundAway ((A324104 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A342654.P6604712227254790346

/-!
# A342655: Number of prime factors (counted with multiplicity) in A156552(n).

The programs for A342655, the canonical program `A342655.P3591896914257476547` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342655 has offset 2).

The definition of A342655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342655.P5974562828929142654

`A342656(n+2)+A055396(n+2)-1`
-/

namespace A342655.P5974562828929142654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (n + 2) + A055396 (n + 2) - 1

end

end A342655.P5974562828929142654

namespace A342655

/-- `A342656(n+2)+A055396(n+2)-1` -/
def P5974562828929142654.Spec : Prop :=
  ∀ n, P5974562828929142654.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P3591896914257476547

`A001222(A156552(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A342655

/-- `A001222(A156552(n+2))` -/
def P3591896914257476547.Spec : Prop :=
  ∀ n, P3591896914257476547.a n = A342655 (n + 2)

theorem P3591896914257476547.correct : P3591896914257476547.Spec := by
  intro n
  simp only [A342655, Nat.add_sub_cancel]

end A342655

/-! ## A342655.P6921770485800550431

`A342656(n+2)+A277892(A020639(n+2))`
-/

namespace A342655.P6921770485800550431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (n + 2) + A277892 (A020639 (n + 2)).toNat

end

end A342655.P6921770485800550431

namespace A342655

/-- `A342656(n+2)+A277892(A020639(n+2))` -/
def P6921770485800550431.Spec : Prop :=
  ∀ n, P6921770485800550431.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P3576525152275051349

`A342656(n+2)+A277892(A092028(n+3))`
-/

namespace A342655.P3576525152275051349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (n + 2) + A277892 (A092028 (n + 3)).toNat

end

end A342655.P3576525152275051349

namespace A342655

/-- `A342656(n+2)+A277892(A092028(n+3))` -/
def P3576525152275051349.Spec : Prop :=
  ∀ n, P3576525152275051349.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P5444528366293403434

`A342656(n+2)+A033270(A014673(2*(n+2)))`
-/

namespace A342655.P5444528366293403434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (n + 2) + A033270 (A014673 (2 * (n + 2))).toNat

end

end A342655.P5444528366293403434

namespace A342655

/-- `A342656(n+2)+A033270(A014673(2*(n+2)))` -/
def P5444528366293403434.Spec : Prop :=
  ∀ n, P5444528366293403434.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P9311257442585454413

`A342656(n+2)+val(A246675(n+1), 2)`
-/

namespace A342655.P9311257442585454413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (n + 2) + (SequenceMachineLib.valuation (A246675 (n + 1)).toNat 2 : ℤ)

end

end A342655.P9311257442585454413

namespace A342655

/-- `A342656(n+2)+val(A246675(n+1), 2)` -/
def P9311257442585454413.Spec : Prop :=
  ∀ n, P9311257442585454413.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P1423661849044001312

`A033270(A092028(n+3))+A001222(A350063(n+2))`
-/

namespace A342655.P1423661849044001312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A092028 (n + 3)).toNat + A001222 (A350063 (n + 2)).toNat

end

end A342655.P1423661849044001312

namespace A342655

/-- `A033270(A092028(n+3))+A001222(A350063(n+2))` -/
def P1423661849044001312.Spec : Prop :=
  ∀ n, P1423661849044001312.a n = A342655 (n + 2)

end A342655

/-! ## A342655.P1304077258286589251

`∑{e}[A350062(n+2), #]`
-/

namespace A342655.P1304077258286589251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342655.P1304077258286589251

namespace A342655

/-- `∑{e}[A350062(n+2), #]` -/
def P1304077258286589251.Spec : Prop :=
  ∀ n, (P1304077258286589251.a n : ℤ) = A342655 (n + 2)

end A342655

/-! ## A342655.P8752160492102655583

`∑{e}[1-A005941(n+2), #]`
-/

namespace A342655.P8752160492102655583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005941 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342655.P8752160492102655583

namespace A342655

/-- `∑{e}[1-A005941(n+2), #]` -/
def P8752160492102655583.Spec : Prop :=
  ∀ n, (P8752160492102655583.a n : ℤ) = A342655 (n + 2)

end A342655

/-!
# A342656: a(n) = A087436(A156552(n)); Number of odd prime factors in A156552(n), counted with repetitions.

The programs for A342656, the canonical program `A342656.P18308073440426204089` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342656 has offset 2).

The definition of A342656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087436, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342656.P10272352297913350536

`A342655(2*A246277(n+2))`
-/

namespace A342656.P10272352297913350536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (2 * A246277 (n + 2)).toNat

end

end A342656.P10272352297913350536

namespace A342656

/-- `A342655(2*A246277(n+2))` -/
def P10272352297913350536.Spec : Prop :=
  ∀ n, P10272352297913350536.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P14278031329137698351

`1+A342655(n+2)-A055396(n+2)`
-/

namespace A342656.P14278031329137698351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A342655 (n + 2) - A055396 (n + 2)

end

end A342656.P14278031329137698351

namespace A342656

/-- `1+A342655(n+2)-A055396(n+2)` -/
def P14278031329137698351.Spec : Prop :=
  ∀ n, P14278031329137698351.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P9268982940153930956

`A001222(A322993(n+2))`
-/

namespace A342656.P9268982940153930956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322993 (n + 2)).toNat

end

end A342656.P9268982940153930956

namespace A342656

/-- `A001222(A322993(n+2))` -/
def P9268982940153930956.Spec : Prop :=
  ∀ n, P9268982940153930956.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P18308073440426204089

`A087436(A156552(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342656

/-- `A087436(A156552(n+2))` -/
def P18308073440426204089.Spec : Prop :=
  ∀ n, P18308073440426204089.a n = A342656 (n + 2)

theorem P18308073440426204089.correct : P18308073440426204089.Spec := by
  intro n
  simp only [A342656, Nat.add_sub_cancel]

end A342656

/-! ## A342656.P4045370979951541086

`A342655(A348717(n+2))`
-/

namespace A342656.P4045370979951541086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A348717 (n + 2)).toNat

end

end A342656.P4045370979951541086

namespace A342656

/-- `A342655(A348717(n+2))` -/
def P4045370979951541086.Spec : Prop :=
  ∀ n, P4045370979951541086.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P17718107733947567531

`A342655(n+2)-A342655(A020639(n+2))`
-/

namespace A342656.P17718107733947567531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (n + 2) - A342655 (A020639 (n + 2)).toNat

end

end A342656.P17718107733947567531

namespace A342656

/-- `A342655(n+2)-A342655(A020639(n+2))` -/
def P17718107733947567531.Spec : Prop :=
  ∀ n, P17718107733947567531.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P5346675185652565911

`A342655(n+2)-A342655(A092028(n+3))`
-/

namespace A342656.P5346675185652565911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (n + 2) - A342655 (A092028 (n + 3)).toNat

end

end A342656.P5346675185652565911

namespace A342656

/-- `A342655(n+2)-A342655(A092028(n+3))` -/
def P5346675185652565911.Spec : Prop :=
  ∀ n, P5346675185652565911.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P7767425226363172233

`A342655(n+2)-A033270(A014673(2*(n+2)))`
-/

namespace A342656.P7767425226363172233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (n + 2) - A033270 (A014673 (2 * (n + 2))).toNat

end

end A342656.P7767425226363172233

namespace A342656

/-- `A342655(n+2)-A033270(A014673(2*(n+2)))` -/
def P7767425226363172233.Spec : Prop :=
  ∀ n, P7767425226363172233.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P17575011017356829668

`∑{e}[A350063(n+2), #]`
-/

namespace A342656.P17575011017356829668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342656.P17575011017356829668

namespace A342656

/-- `∑{e}[A350063(n+2), #]` -/
def P17575011017356829668.Spec : Prop :=
  ∀ n, (P17575011017356829668.a n : ℤ) = A342656 (n + 2)

end A342656

/-! ## A342656.P2792411580185664359

`A001222(A350063(n+2))`
-/

namespace A342656.P2792411580185664359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350063 (n + 2)).toNat

end

end A342656.P2792411580185664359

namespace A342656

/-- `A001222(A350063(n+2))` -/
def P2792411580185664359.Spec : Prop :=
  ∀ n, P2792411580185664359.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P16970771571153430527

`A342651(n+2)-A329697(A342666(n+2))`
-/

namespace A342656.P16970771571153430527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342651 (n + 2) - A329697 (A342666 (n + 2)).toNat

end

end A342656.P16970771571153430527

namespace A342656

/-- `A342651(n+2)-A329697(A342666(n+2))` -/
def P16970771571153430527.Spec : Prop :=
  ∀ n, P16970771571153430527.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P10162305237115157433

`A001222(∑{d}[n+2, A322994(#)])`
-/

namespace A342656.P10162305237115157433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), A322994 d).toNat

end

end A342656.P10162305237115157433

namespace A342656

/-- `A001222(∑{d}[n+2, A322994(#)])` -/
def P10162305237115157433.Spec : Prop :=
  ∀ n, P10162305237115157433.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P3802446519412741422

`A087436(A322993(A003961(n+2)))`
-/

namespace A342656.P3802446519412741422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A322993 (A003961 (n + 2)).toNat).toNat

end

end A342656.P3802446519412741422

namespace A342656

/-- `A087436(A322993(A003961(n+2)))` -/
def P3802446519412741422.Spec : Prop :=
  ∀ n, P3802446519412741422.a n = A342656 (n + 2)

end A342656

/-! ## A342656.P110694166021578845

`A087436(A322993(n+1)+Δ[A322993(n+1)])`
-/

namespace A342656.P110694166021578845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A322993 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A342656.P110694166021578845

namespace A342656

/-- `A087436(A322993(n+1)+Δ[A322993(n+1)])` -/
def P110694166021578845.Spec : Prop :=
  ∀ n, P110694166021578845.a n = A342656 (n + 2)

end A342656

/-!
# A342657: The difference between floor(log_2(.)) of and the number of prime factors in A156552(n) (when counted with multiplicity).

The programs for A342657, the canonical program `A342657.P4250325100183927900` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342657 has offset 2).

The definition of A342657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, A342655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342657.P4250325100183927900

`A252464(n+2)-A342655(n+2)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342657

/-- `A252464(n+2)-A342655(n+2)-1` -/
def P4250325100183927900.Spec : Prop :=
  ∀ n, P4250325100183927900.a n = A342657 (n + 2)

theorem P4250325100183927900.correct : P4250325100183927900.Spec := by
  intro n
  simp only [A342657, Nat.add_sub_cancel]

end A342657

/-! ## A342657.P15434260919122084627

`A325134(n+2)-A342655(n+2)-2`
-/

namespace A342657.P15434260919122084627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 2) - A342655 (n + 2) - 2

end

end A342657.P15434260919122084627

namespace A342657

/-- `A325134(n+2)-A342655(n+2)-2` -/
def P15434260919122084627.Spec : Prop :=
  ∀ n, P15434260919122084627.a n = A342657 (n + 2)

end A342657

/-! ## A342657.P14077518893281662554

`A339893(A322993(n+2))`
-/

namespace A342657.P14077518893281662554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (A322993 (n + 2)).toNat

end

end A342657.P14077518893281662554

namespace A342657

/-- `A339893(A322993(n+2))` -/
def P14077518893281662554.Spec : Prop :=
  ∀ n, P14077518893281662554.a n = A342657 (n + 2)

end A342657

/-! ## A342657.P4224572129915118619

`A339893(A156552(n+2))`
-/

namespace A342657.P4224572129915118619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (A156552 (n + 2)).toNat

end

end A342657.P4224572129915118619

namespace A342657

/-- `A339893(A156552(n+2))` -/
def P4224572129915118619.Spec : Prop :=
  ∀ n, P4224572129915118619.a n = A342657 (n + 2)

end A342657

/-! ## A342657.P17868644434848673653

`A339895(A322864(n+2))`
-/

namespace A342657.P17868644434848673653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (A322864 (n + 2)).toNat

end

end A342657.P17868644434848673653

namespace A342657

/-- `A339895(A322864(n+2))` -/
def P17868644434848673653.Spec : Prop :=
  ∀ n, P17868644434848673653.a n = A342657 (n + 2)

end A342657

/-!
# A342658: Number of prime factors in the n-th multiply perfect number, counted with multiplicity: a(n) = bigomega(A007691(n)).

The programs for A342658, there is no canonical definition to state claims against.
-/

/-! ## A342658.P482365391456852863

`A134665(n+1)+∑{e}[A320024(n+1), #]`
-/

namespace A342658.P482365391456852863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134665 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A342658.P482365391456852863

/-! ## A342658.P10023764480802806388

`xor(A093714(n+1), A093719(A093698(n+3)))`
-/

namespace A342658.P10023764480802806388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A093714 (n + 1)) (A093719 (A093698 (n + 3)).toNat)

end

end A342658.P10023764480802806388

/-!
# A342659: The least prime that does not divide the n-th multiply perfect number: a(n) = A053669(A007691(n)).

The programs for A342659, there is no canonical definition to state claims against.
-/

/-! ## A342659.P13528589929147255092

`A053669(gcd(A007691(n+1), A147572(n+2)))`
-/

namespace A342659.P13528589929147255092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Int.gcd (A007691 (n + 1)) (A147572 (n + 2)))

end

end A342659.P13528589929147255092

/-!
# A342660: The largest prime that divides the n-th multiply perfect number: a(n) = A006530(A007691(n)); a(1) = 1.

The programs for A342660, there is no canonical definition to state claims against.
-/

/-! ## A342660.P13840369140736150429

`A006530(∏{p}[A320024(n+1), #])`
-/

namespace A342660.P13840369140736150429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342660.P13840369140736150429

/-! ## A342660.P5732212339858695302

`A006530(A007691(n+1)/A098204(n+1))`
-/

namespace A342660.P5732212339858695302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A007691 (n + 1) : ℚ) / (A098204 (n + 1) : ℚ))).toNat

end

end A342660.P5732212339858695302

/-! ## A342660.P7647493523917224957

`A034699(A007691(n+1)/A098204(n+1))`
-/

namespace A342660.P7647493523917224957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A007691 (n + 1) : ℚ) / (A098204 (n + 1) : ℚ))).toNat

end

end A342660.P7647493523917224957

/-! ## A342660.P7955991479050983852

`A006530((A089748(n+1)-C(2, n+2))/A098204(n+1))`
-/

namespace A342660.P7955991479050983852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A089748 (n + 1) - (Nat.choose 2 (n + 2) : ℤ) : ℚ) / (A098204 (n + 1) : ℚ))).toNat

end

end A342660.P7955991479050983852

/-! ## A342660.P1061616889329613468

`A006530(A307741(n+1)/A098204(n+1))`
-/

namespace A342660.P1061616889329613468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A307741 (n + 1) : ℚ) / (A098204 (n + 1) : ℚ))).toNat

end

end A342660.P1061616889329613468

/-!
# A342661: a(n) = n * sigma(A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma gives the sum of the divisors of its argument.

The programs for A342661, the canonical program `A342661.P11301202128606198755` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342661 has offset 1).

The definition of A342661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326041, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342661.P11301202128606198755

`(n+1)*A326041(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342661

/-- `(n+1)*A326041(n+1)` -/
def P11301202128606198755.Spec : Prop :=
  ∀ n, P11301202128606198755.a n = A342661 (n + 1)

theorem P11301202128606198755.correct : P11301202128606198755.Spec := by
  intro n
  simp only [A342661, Nat.add_sub_cancel]

end A342661

/-! ## A342661.P14453427561393418862

`(n+1)*A000203(A064989(n+1))`
-/

namespace A342661.P14453427561393418862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A064989 (n + 1)).toNat

end

end A342661.P14453427561393418862

namespace A342661

/-- `(n+1)*A000203(A064989(n+1))` -/
def P14453427561393418862.Spec : Prop :=
  ∀ n, P14453427561393418862.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P2430612991017938519

`(n+1)*A285703(A003602(n+1))`
-/

namespace A342661.P2430612991017938519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285703 (A003602 (n + 1)).toNat

end

end A342661.P2430612991017938519

namespace A342661

/-- `(n+1)*A285703(A003602(n+1))` -/
def P2430612991017938519.Spec : Prop :=
  ∀ n, P2430612991017938519.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P11293841724597355404

`A342663(n+1)*A342670(n+1)`
-/

namespace A342661.P11293841724597355404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342663 (n + 1) * A342670 (n + 1)

end

end A342661.P11293841724597355404

namespace A342661

/-- `A342663(n+1)*A342670(n+1)` -/
def P11293841724597355404.Spec : Prop :=
  ∀ n, P11293841724597355404.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P9484676941195108144

`(n+1)*A000203(abs(A290099(n+1)))`
-/

namespace A342661.P9484676941195108144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 |A290099 (n + 1)|.toNat

end

end A342661.P9484676941195108144

namespace A342661

/-- `(n+1)*A000203(abs(A290099(n+1)))` -/
def P9484676941195108144.Spec : Prop :=
  ∀ n, P9484676941195108144.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P14741163526488812534

`∑{d}[n+1, A193356(#)*A200746((n+1)/#)]`
-/

namespace A342661.P14741163526488812534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A200746 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342661.P14741163526488812534

namespace A342661

/-- `∑{d}[n+1, A193356(#)*A200746((n+1)/#)]` -/
def P14741163526488812534.Spec : Prop :=
  ∀ n, P14741163526488812534.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P11806879821858309499

`(n+1)*A000203(A252463(A000265(n+1)))`
-/

namespace A342661.P11806879821858309499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A252463 (A000265 (n + 1)).toNat).toNat

end

end A342661.P11806879821858309499

namespace A342661

/-- `(n+1)*A000203(A252463(A000265(n+1)))` -/
def P11806879821858309499.Spec : Prop :=
  ∀ n, P11806879821858309499.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P13202600011357909369

`(n+1)*A000203(A349126(4*(n+1)))`
-/

namespace A342661.P13202600011357909369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A349126 (4 * (n + 1))).toNat

end

end A342661.P13202600011357909369

namespace A342661

/-- `(n+1)*A000203(A349126(4*(n+1)))` -/
def P13202600011357909369.Spec : Prop :=
  ∀ n, P13202600011357909369.a n = A342661 (n + 1)

end A342661

/-! ## A342661.P8376974133239481693

`(n+1)*A000203(A285728(2*(n+1)))`
-/

namespace A342661.P8376974133239481693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A285728 (2 * (n + 1))).toNat

end

end A342661.P8376974133239481693

namespace A342661

/-- `(n+1)*A000203(A285728(2*(n+1)))` -/
def P8376974133239481693.Spec : Prop :=
  ∀ n, P8376974133239481693.a n = A342661 (n + 1)

end A342661

/-!
# A342662: a(n) = sigma(n) * A064989(n), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma is the sum of the divisors of n.

The programs for A342662, the canonical program `A342662.P18301386623075577230` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342662 has offset 1).

The definition of A342662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342662.P18301386623075577230

`A000203(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342662

/-- `A000203(n+1)*A064989(n+1)` -/
def P18301386623075577230.Spec : Prop :=
  ∀ n, P18301386623075577230.a n = A342662 (n + 1)

theorem P18301386623075577230.correct : P18301386623075577230.Spec := by
  intro n
  simp only [A342662, Nat.add_sub_cancel]

end A342662

/-! ## A342662.P7506018138777544069

`∑{d}[n+1, A200746(n+1)/#]`
-/

namespace A342662.P7506018138777544069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A200746 (n + 1) : ℚ) / (d : ℚ)

end

end A342662.P7506018138777544069

namespace A342662

/-- `∑{d}[n+1, A200746(n+1)/#]` -/
def P7506018138777544069.Spec : Prop :=
  ∀ n, P7506018138777544069.a n = (A342662 (n + 1) : ℚ)

end A342662

/-! ## A342662.P12770071264840557914

`∑{d}[n+1, #]*A252463((n+1)/2^val(n+1, 2))`
-/

namespace A342662.P12770071264840557914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A342662.P12770071264840557914

namespace A342662

/-- `∑{d}[n+1, #]*A252463((n+1)/2^val(n+1, 2))` -/
def P12770071264840557914.Spec : Prop :=
  ∀ n, P12770071264840557914.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P2510766439858982968

`∑{d}[n+1, #]*A252463((n+1)/and(n+1, -(n+1)))`
-/

namespace A342662.P2510766439858982968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A342662.P2510766439858982968

namespace A342662

/-- `∑{d}[n+1, #]*A252463((n+1)/and(n+1, -(n+1)))` -/
def P2510766439858982968.Spec : Prop :=
  ∀ n, P2510766439858982968.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P2553119583393881133

`∑{d}[n+1, #]*A064216(((n+1)/2^val(n+1, 2)+1)/2)`
-/

namespace A342662.P2553119583393881133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A064216 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat

end

end A342662.P2553119583393881133

namespace A342662

/-- `∑{d}[n+1, #]*A064216(((n+1)/2^val(n+1, 2)+1)/2)` -/
def P2553119583393881133.Spec : Prop :=
  ∀ n, P2553119583393881133.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P13618033587102467841

`Δ[A160664(n)]*A064989(n+1)`
-/

namespace A342662.P13618033587102467841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064989 (n + 1)

end

end A342662.P13618033587102467841

namespace A342662

/-- `Δ[A160664(n)]*A064989(n+1)` -/
def P13618033587102467841.Spec : Prop :=
  ∀ n, P13618033587102467841.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P4106595892062655906

`A342664(n+1)*A342670(n+1)`
-/

namespace A342662.P4106595892062655906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342664 (n + 1) * A342670 (n + 1)

end

end A342662.P4106595892062655906

namespace A342662

/-- `A342664(n+1)*A342670(n+1)` -/
def P4106595892062655906.Spec : Prop :=
  ∀ n, P4106595892062655906.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P1718091255190055027

`abs(A000203(n+1)*A290099(n+1))`
-/

namespace A342662.P1718091255190055027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) * A290099 (n + 1)|

end

end A342662.P1718091255190055027

namespace A342662

/-- `abs(A000203(n+1)*A290099(n+1))` -/
def P1718091255190055027.Spec : Prop :=
  ∀ n, P1718091255190055027.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P11684069808524229083

`sqrt(A072861(n+1))*A064989(n+1)`
-/

namespace A342662.P11684069808524229083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A064989 (n + 1) : ℝ)

end

end A342662.P11684069808524229083

namespace A342662

/-- `sqrt(A072861(n+1))*A064989(n+1)` -/
def P11684069808524229083.Spec : Prop :=
  ∀ n, P11684069808524229083.a n = (A342662 (n + 1) : ℝ)

end A342662

/-! ## A342662.P402214719916436263

`A064989(n+1)*A245092(2*n+1)`
-/

namespace A342662.P402214719916436263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A245092 (2 * n + 1)

end

end A342662.P402214719916436263

namespace A342662

/-- `A064989(n+1)*A245092(2*n+1)` -/
def P402214719916436263.Spec : Prop :=
  ∀ n, P402214719916436263.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P11391445349949216921

`A000203(n+1)*∑{d}[n+1, A349127(#)]`
-/

namespace A342662.P11391445349949216921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A349127 d)

end

end A342662.P11391445349949216921

namespace A342662

/-- `A000203(n+1)*∑{d}[n+1, A349127(#)]` -/
def P11391445349949216921.Spec : Prop :=
  ∀ n, P11391445349949216921.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P11311197894783631224

`A000203(n+1)*A252463(A000265(n+1))`
-/

namespace A342662.P11311197894783631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A252463 (A000265 (n + 1)).toNat

end

end A342662.P11311197894783631224

namespace A342662

/-- `A000203(n+1)*A252463(A000265(n+1))` -/
def P11311197894783631224.Spec : Prop :=
  ∀ n, P11311197894783631224.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P1518989877439442246

`(A353747(n+1)-A000010(n+1))*A000203(n+1)`
-/

namespace A342662.P1518989877439442246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353747 (n + 1) - A000010 (n + 1)) * A000203 (n + 1)

end

end A342662.P1518989877439442246

namespace A342662

/-- `(A353747(n+1)-A000010(n+1))*A000203(n+1)` -/
def P1518989877439442246.Spec : Prop :=
  ∀ n, P1518989877439442246.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P15180207806018383854

`(A005187(n+1)-A294898(n+1))*A064989(n+1)`
-/

namespace A342662.P15180207806018383854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A294898 (n + 1)) * A064989 (n + 1)

end

end A342662.P15180207806018383854

namespace A342662

/-- `(A005187(n+1)-A294898(n+1))*A064989(n+1)` -/
def P15180207806018383854.Spec : Prop :=
  ∀ n, P15180207806018383854.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P5597448385525455615

`A000593(n+1)*A038712(n+1)*A064989(n+1)`
-/

namespace A342662.P5597448385525455615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A038712 (n + 1) * A064989 (n + 1)

end

end A342662.P5597448385525455615

namespace A342662

/-- `A000593(n+1)*A038712(n+1)*A064989(n+1)` -/
def P5597448385525455615.Spec : Prop :=
  ∀ n, P5597448385525455615.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P7786674811868625365

`A064989(n+1)*A092261(n+1)*A295294(n+1)`
-/

namespace A342662.P7786674811868625365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A092261 (n + 1) * A295294 (n + 1)

end

end A342662.P7786674811868625365

namespace A342662

/-- `A064989(n+1)*A092261(n+1)*A295294(n+1)` -/
def P7786674811868625365.Spec : Prop :=
  ∀ n, P7786674811868625365.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P15227572002209679270

`A064989(n+1)*A342671(n+1)*A349162(n+1)`
-/

namespace A342662.P15227572002209679270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A342671 (n + 1) * A349162 (n + 1)

end

end A342662.P15227572002209679270

namespace A342662

/-- `A064989(n+1)*A342671(n+1)*A349162(n+1)` -/
def P15227572002209679270.Spec : Prop :=
  ∀ n, P15227572002209679270.a n = A342662 (n + 1)

end A342662

/-! ## A342662.P17173031626098000561

`A000203(n+1)/A003958(n+1)*A353791(n+1)`
-/

namespace A342662.P17173031626098000561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A353791 (n + 1) : ℚ)

end

end A342662.P17173031626098000561

namespace A342662

/-- `A000203(n+1)/A003958(n+1)*A353791(n+1)` -/
def P17173031626098000561.Spec : Prop :=
  ∀ n, P17173031626098000561.a n = (A342662 (n + 1) : ℚ)

end A342662

/-! ## A342662.P3349985886355950095

`A064989(n+1)/A003961(n+1)*A341529(n+1)`
-/

namespace A342662.P3349985886355950095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A341529 (n + 1) : ℚ)

end

end A342662.P3349985886355950095

namespace A342662

/-- `A064989(n+1)/A003961(n+1)*A341529(n+1)` -/
def P3349985886355950095.Spec : Prop :=
  ∀ n, P3349985886355950095.a n = (A342662 (n + 1) : ℚ)

end A342662

/-! ## A342662.P2409769796149800134

`A342661(n+1)/A342663(n+1)*A342664(n+1)`
-/

namespace A342662.P2409769796149800134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342661 (n + 1) : ℚ) / (A342663 (n + 1) : ℚ) * (A342664 (n + 1) : ℚ)

end

end A342662.P2409769796149800134

namespace A342662

/-- `A342661(n+1)/A342663(n+1)*A342664(n+1)` -/
def P2409769796149800134.Spec : Prop :=
  ∀ n, P2409769796149800134.a n = (A342662 (n + 1) : ℚ)

end A342662

/-!
# A342663: Numerator of ratio A342661(n)/A342662(n): a(n) = A342661(n) / gcd(A342661(n), A342662(n)).

The programs for A342663, the canonical program `A342663.P18374206184251468612` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342663 has offset 1).

The definition of A342663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342661, A342670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342663.P18374206184251468612

`A342661(n+1)/A342670(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342663

/-- `A342661(n+1)/A342670(n+1)` -/
def P18374206184251468612.Spec : Prop :=
  ∀ n, P18374206184251468612.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P7303508307191807014

`(n+1)*A326041(n+1)/A342670(n+1)`
-/

namespace A342663.P7303508307191807014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A326041 (n + 1) : ℚ) / (A342670 (n + 1) : ℚ))

end

end A342663.P7303508307191807014

namespace A342663

/-- `(n+1)*A326041(n+1)/A342670(n+1)` -/
def P7303508307191807014.Spec : Prop :=
  ∀ n, P7303508307191807014.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P5080771162321238539

`∑{d}[A064989(n+1), #*(n+1)]/A342670(n+1)`
-/

namespace A342663.P5080771162321238539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1) : ℕ) : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342663.P5080771162321238539

namespace A342663

/-- `∑{d}[A064989(n+1), #*(n+1)]/A342670(n+1)` -/
def P5080771162321238539.Spec : Prop :=
  ∀ n, P5080771162321238539.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P15538388498500604984

`(n+1)*A000203(A064989(n+1))/A342670(n+1)`
-/

namespace A342663.P15538388498500604984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000203 (A064989 (n + 1)).toNat : ℚ) / (A342670 (n + 1) : ℚ))

end

end A342663.P15538388498500604984

namespace A342663

/-- `(n+1)*A000203(A064989(n+1))/A342670(n+1)` -/
def P15538388498500604984.Spec : Prop :=
  ∀ n, P15538388498500604984.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P9380995857976495784

`A342661(n+1)/A342662(n+1)*A342664(n+1)`
-/

namespace A342663.P9380995857976495784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342661 (n + 1) : ℚ) / (A342662 (n + 1) : ℚ) * (A342664 (n + 1) : ℚ)

end

end A342663.P9380995857976495784

namespace A342663

/-- `A342661(n+1)/A342662(n+1)*A342664(n+1)` -/
def P9380995857976495784.Spec : Prop :=
  ∀ n, P9380995857976495784.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P16131076175183101792

`(n+1)*A000203(abs(A290099(n+1)))/A342670(n+1)`
-/

namespace A342663.P16131076175183101792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 |A290099 (n + 1)|.toNat : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342663.P16131076175183101792

namespace A342663

/-- `(n+1)*A000203(abs(A290099(n+1)))/A342670(n+1)` -/
def P16131076175183101792.Spec : Prop :=
  ∀ n, P16131076175183101792.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P18220873909305071029

`(n+1)*A000203(A349126(4*(n+1)))/A342670(n+1)`
-/

namespace A342663.P18220873909305071029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 (A349126 (4 * (n + 1))).toNat : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342663.P18220873909305071029

namespace A342663

/-- `(n+1)*A000203(A349126(4*(n+1)))/A342670(n+1)` -/
def P18220873909305071029.Spec : Prop :=
  ∀ n, P18220873909305071029.a n = (A342663 (n + 1) : ℚ)

end A342663

/-! ## A342663.P15666311492072631826

`(n+1)*A000203(A285728(2*(n+1)))/A342670(n+1)`
-/

namespace A342663.P15666311492072631826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 (A285728 (2 * (n + 1))).toNat : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342663.P15666311492072631826

namespace A342663

/-- `(n+1)*A000203(A285728(2*(n+1)))/A342670(n+1)` -/
def P15666311492072631826.Spec : Prop :=
  ∀ n, P15666311492072631826.a n = (A342663 (n + 1) : ℚ)

end A342663

/-!
# A342664: Denominator of ratio A342661(n)/A342662(n).

The programs for A342664, the canonical program `A342664.P15676902756011627641` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342664 has offset 1).

The definition of A342664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342662, A342670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342664.P15676902756011627641

`A342662(n+1)/A342670(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342664

/-- `A342662(n+1)/A342670(n+1)` -/
def P15676902756011627641.Spec : Prop :=
  ∀ n, P15676902756011627641.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P18210633690114337664

`∑{d}[n+1, #]*A064989(n+1)/A342670(n+1)`
-/

namespace A342664.P18210633690114337664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A064989 (n + 1) : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P18210633690114337664

namespace A342664

/-- `∑{d}[n+1, #]*A064989(n+1)/A342670(n+1)` -/
def P18210633690114337664.Spec : Prop :=
  ∀ n, P18210633690114337664.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P6174598018816789699

`∑{d}[n+1, #]*A252463((n+1)/2^val(n+1, 2))/A342670(n+1)`
-/

namespace A342664.P6174598018816789699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P6174598018816789699

namespace A342664

/-- `∑{d}[n+1, #]*A252463((n+1)/2^val(n+1, 2))/A342670(n+1)` -/
def P6174598018816789699.Spec : Prop :=
  ∀ n, P6174598018816789699.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P6213628836791867328

`∑{d}[n+1, #]*A064216(((n+1)/2^val(n+1, 2)+1)/2)/A342670(n+1)`
-/

namespace A342664.P6213628836791867328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A064216 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P6213628836791867328

namespace A342664

/-- `∑{d}[n+1, #]*A064216(((n+1)/2^val(n+1, 2)+1)/2)/A342670(n+1)` -/
def P6213628836791867328.Spec : Prop :=
  ∀ n, P6213628836791867328.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P9199310919615124569

`A064989(n+1)/A342670(n+1)*Δ[A160664(n)]`
-/

namespace A342664.P9199310919615124569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A342670 (n + 1) : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A342664.P9199310919615124569

namespace A342664

/-- `A064989(n+1)/A342670(n+1)*Δ[A160664(n)]` -/
def P9199310919615124569.Spec : Prop :=
  ∀ n, P9199310919615124569.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P1588965887720680702

`A000203(n+1)*A064989(n+1)/A342670(n+1)`
-/

namespace A342664.P1588965887720680702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A064989 (n + 1) : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P1588965887720680702

namespace A342664

/-- `A000203(n+1)*A064989(n+1)/A342670(n+1)` -/
def P1588965887720680702.Spec : Prop :=
  ∀ n, P1588965887720680702.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P4579785206775153552

`A342662(n+1)/A342661(n+1)*A342663(n+1)`
-/

namespace A342664.P4579785206775153552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342662 (n + 1) : ℚ) / (A342661 (n + 1) : ℚ) * (A342663 (n + 1) : ℚ)

end

end A342664.P4579785206775153552

namespace A342664

/-- `A342662(n+1)/A342661(n+1)*A342663(n+1)` -/
def P4579785206775153552.Spec : Prop :=
  ∀ n, P4579785206775153552.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P9997551553590259310

`abs(A000203(n+1)*A290099(n+1)/A342670(n+1))`
-/

namespace A342664.P9997551553590259310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000203 (n + 1) * A290099 (n + 1) : ℚ) / (A342670 (n + 1) : ℚ)|

end

end A342664.P9997551553590259310

namespace A342664

/-- `abs(A000203(n+1)*A290099(n+1)/A342670(n+1))` -/
def P9997551553590259310.Spec : Prop :=
  ∀ n, P9997551553590259310.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P9888754046949045972

`A000203(n+1)*∑{d}[n+1, A349127(#)]/A342670(n+1)`
-/

namespace A342664.P9888754046949045972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000203 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A349127 d) : ℤ) : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P9888754046949045972

namespace A342664

/-- `A000203(n+1)*∑{d}[n+1, A349127(#)]/A342670(n+1)` -/
def P9888754046949045972.Spec : Prop :=
  ∀ n, P9888754046949045972.a n = (A342664 (n + 1) : ℚ)

end A342664

/-! ## A342664.P17563561107033769876

`A000203(n+1)*A349126(4*(n+1))/A342670(n+1)`
-/

namespace A342664.P17563561107033769876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A349126 (4 * (n + 1)) : ℚ) / (A342670 (n + 1) : ℚ)

end

end A342664.P17563561107033769876

namespace A342664

/-- `A000203(n+1)*A349126(4*(n+1))/A342670(n+1)` -/
def P17563561107033769876.Spec : Prop :=
  ∀ n, P17563561107033769876.a n = (A342664 (n + 1) : ℚ)

end A342664

/-!
# A342665: Numbers k for which phi(k)+1 is a multiple of d(k), where phi is Euler totient function (A000010) and d(n) gives the number of divisors of n (A000005).

The programs for A342665, there is no canonical definition to state claims against.
-/

/-! ## A342665.P10160026629615390145

`record[C(A124331(n+1), n)]`
-/

namespace A342665.P10160026629615390145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124331 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342665.P10160026629615390145

/-! ## A342665.P11857477843780458087

`eq[n, A124331(round(sqrt(n²+1)))]`
-/

namespace A342665.P11857477843780458087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342665.P11857477843780458087

/-! ## A342665.P8344141321136662481

`record[A124331(A124331(n+1))]`
-/

namespace A342665.P8344141321136662481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (A124331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342665.P8344141321136662481

/-! ## A342665.P8778347127321842200

`eq[A000027(n+1), A124331(n+1)]+1`
-/

namespace A342665.P8778347127321842200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342665.P8778347127321842200

/-! ## A342665.P2516633001568962217

`lt[A274616(n), A124331(n+1)]+1`
-/

namespace A342665.P2516633001568962217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A342665.P2516633001568962217

/-!
# A342666: a(n) = A336466(A156552(n)).

The programs for A342666, the canonical program `A342666.P2794440531727793622` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342666 has offset 2).

The definition of A342666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342666.P4712976898619955987

`A336466(A322993(n+2))`
-/

namespace A342666.P4712976898619955987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A322993 (n + 2)).toNat

end

end A342666.P4712976898619955987

namespace A342666

/-- `A336466(A322993(n+2))` -/
def P4712976898619955987.Spec : Prop :=
  ∀ n, P4712976898619955987.a n = A342666 (n + 2)

end A342666

/-! ## A342666.P2794440531727793622

`A336466(A156552(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342666

/-- `A336466(A156552(n+2))` -/
def P2794440531727793622.Spec : Prop :=
  ∀ n, P2794440531727793622.a n = A342666 (n + 2)

theorem P2794440531727793622.correct : P2794440531727793622.Spec := by
  intro n
  simp only [A342666, Nat.add_sub_cancel]

end A342666

/-! ## A342666.P6815039877661430343

`A053575(A331602(n+2))`
-/

namespace A342666.P6815039877661430343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A331602 (n + 2)).toNat

end

end A342666.P6815039877661430343

namespace A342666

/-- `A053575(A331602(n+2))` -/
def P6815039877661430343.Spec : Prop :=
  ∀ n, P6815039877661430343.a n = A342666 (n + 2)

end A342666

/-!
# A342667: Largest prime in the numerator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

The programs for A342667, the canonical program `A342667.P311384965998967573` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342667 has offset 1).

The definition of A342667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A006530, A342664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342667.P5760743977481673202

`A006530(A341526(n+1))`
-/

namespace A342667.P5760743977481673202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341526 (n + 1)).toNat

end

end A342667.P5760743977481673202

namespace A342667

/-- `A006530(A341526(n+1))` -/
def P5760743977481673202.Spec : Prop :=
  ∀ n, P5760743977481673202.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P311384965998967573

`A006530(A342664(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342667

/-- `A006530(A342664(A003961(n+1)))` -/
def P311384965998967573.Spec : Prop :=
  ∀ n, P311384965998967573.a n = A342667 (n + 1)

theorem P311384965998967573.correct : P311384965998967573.Spec := by
  intro n
  simp only [A342667, Nat.add_sub_cancel]

end A342667

/-! ## A342667.P2030796072412583565

`A034699(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P2030796072412583565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P2030796072412583565

namespace A342667

/-- `A034699(∏{p}[A341526(n+1), #])` -/
def P2030796072412583565.Spec : Prop :=
  ∀ n, P2030796072412583565.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P3935547435695540834

`A088387(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P3935547435695540834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P3935547435695540834

namespace A342667

/-- `A088387(∏{p}[A341526(n+1), #])` -/
def P3935547435695540834.Spec : Prop :=
  ∀ n, P3935547435695540834.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P2309815412102516466

`A006530(A341528(n+1)/A341530(n+1))`
-/

namespace A342667.P2309815412102516466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A341528 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ))).toNat

end

end A342667.P2309815412102516466

namespace A342667

/-- `A006530(A341528(n+1)/A341530(n+1))` -/
def P2309815412102516466.Spec : Prop :=
  ∀ n, P2309815412102516466.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P10485297961262907044

`A002034(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P10485297961262907044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P10485297961262907044

namespace A342667

/-- `A002034(∏{p}[A341526(n+1), #])` -/
def P10485297961262907044.Spec : Prop :=
  ∀ n, P10485297961262907044.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P14375702476040371366

`A025492(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P14375702476040371366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P14375702476040371366

namespace A342667

/-- `A025492(∏{p}[A341526(n+1), #])` -/
def P14375702476040371366.Spec : Prop :=
  ∀ n, P14375702476040371366.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P5925590978949783394

`A053585(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P5925590978949783394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P5925590978949783394

namespace A342667

/-- `A053585(∏{p}[A341526(n+1), #])` -/
def P5925590978949783394.Spec : Prop :=
  ∀ n, P5925590978949783394.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P7914751947498644195

`A217434(∏{p}[A341526(n+1), #])`
-/

namespace A342667.P7914751947498644195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342667.P7914751947498644195

namespace A342667

/-- `A217434(∏{p}[A341526(n+1), #])` -/
def P7914751947498644195.Spec : Prop :=
  ∀ n, P7914751947498644195.a n = A342667 (n + 1)

end A342667

/-! ## A342667.P13963245875920871830

`A002034(∏{p}[A341528(n+1)/A341530(n+1), #])`
-/

namespace A342667.P13963245875920871830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A342667.P13963245875920871830

namespace A342667

/-- `A002034(∏{p}[A341528(n+1)/A341530(n+1), #])` -/
def P13963245875920871830.Spec : Prop :=
  ∀ n, P13963245875920871830.a n = A342667 (n + 1)

end A342667

/-!
# A342668: Largest prime in the denominator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

The programs for A342668, the canonical program `A342668.P4029046594404538909` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342668 has offset 1).

The definition of A342668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342668.P4029046594404538909

`A006530(A341527(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342668

/-- `A006530(A341527(n+1))` -/
def P4029046594404538909.Spec : Prop :=
  ∀ n, P4029046594404538909.a n = A342668 (n + 1)

theorem P4029046594404538909.correct : P4029046594404538909.Spec := by
  intro n
  simp only [A342668, Nat.add_sub_cancel]

end A342668

/-! ## A342668.P3537094515062839000

`A034699(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P3537094515062839000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P3537094515062839000

namespace A342668

/-- `A034699(∏{p}[A341527(n+1), #])` -/
def P3537094515062839000.Spec : Prop :=
  ∀ n, P3537094515062839000.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P458763469365034760

`A088387(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P458763469365034760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P458763469365034760

namespace A342668

/-- `A088387(∏{p}[A341527(n+1), #])` -/
def P458763469365034760.Spec : Prop :=
  ∀ n, P458763469365034760.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P2565518352750851464

`A002034(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P2565518352750851464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P2565518352750851464

namespace A342668

/-- `A002034(∏{p}[A341527(n+1), #])` -/
def P2565518352750851464.Spec : Prop :=
  ∀ n, P2565518352750851464.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P8257383629971414694

`A025492(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P8257383629971414694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P8257383629971414694

namespace A342668

/-- `A025492(∏{p}[A341527(n+1), #])` -/
def P8257383629971414694.Spec : Prop :=
  ∀ n, P8257383629971414694.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P415405732935603462

`A053585(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P415405732935603462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P415405732935603462

namespace A342668

/-- `A053585(∏{p}[A341527(n+1), #])` -/
def P415405732935603462.Spec : Prop :=
  ∀ n, P415405732935603462.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P948068529749822119

`A217434(∏{p}[A341527(n+1), #])`
-/

namespace A342668.P948068529749822119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A342668.P948068529749822119

namespace A342668

/-- `A217434(∏{p}[A341527(n+1), #])` -/
def P948068529749822119.Spec : Prop :=
  ∀ n, P948068529749822119.a n = A342668 (n + 1)

end A342668

/-! ## A342668.P11526109406087863607

`A006530(A341529(n+1)/A341530(n+1))`
-/

namespace A342668.P11526109406087863607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ))).toNat

end

end A342668.P11526109406087863607

namespace A342668

/-- `A006530(A341529(n+1)/A341530(n+1))` -/
def P11526109406087863607.Spec : Prop :=
  ∀ n, P11526109406087863607.a n = A342668 (n + 1)

end A342668

/-!
# A342669: Even numbers which are either primitively nondeficient (A006039), or become such after applying prime shift A003961 some number of times to them.

The programs for A342669, there is no canonical definition to state claims against.
-/

/-! ## A342669.P12854790689194837598

`eq[A165326(n), A341624(n+1)]+1`
-/

namespace A342669.P12854790689194837598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342669.P12854790689194837598

/-! ## A342669.P9041807680065498380

`eq[-A033999(n), A341624(n+1)]+1`
-/

namespace A342669.P9041807680065498380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342669.P9041807680065498380

/-! ## A342669.P10099055675640288807

`eq[A158416(n+2), A341624(n+1)]+1`
-/

namespace A342669.P10099055675640288807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342669.P10099055675640288807

/-! ## A342669.P8117585233002303663

`A326178(eq[A158416(n), A341624(n+1)])`
-/

namespace A342669.P8117585233002303663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342669.P8117585233002303663

/-! ## A342669.P11091131564041178866

`eq[A005171(A259730(n+1)+1), A341624(n+1)]+1`
-/

namespace A342669.P11091131564041178866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A259730 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342669.P11091131564041178866

/-!
# A342670: a(n) = gcd(n*sigma(A064989(n)), sigma(n)*A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and sigma gives the sum of the divisors of its argument.

The programs for A342670, the canonical program `A342670.P5649988660826761331` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342670 has offset 1).

The definition of A342670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342670.P7559702420547217426

`A342661(n+1)/A342663(n+1)`
-/

namespace A342670.P7559702420547217426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342661 (n + 1) : ℚ) / (A342663 (n + 1) : ℚ)

end

end A342670.P7559702420547217426

namespace A342670

/-- `A342661(n+1)/A342663(n+1)` -/
def P7559702420547217426.Spec : Prop :=
  ∀ n, P7559702420547217426.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P10004124469439750796

`A342662(n+1)/A342664(n+1)`
-/

namespace A342670.P10004124469439750796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342662 (n + 1) : ℚ) / (A342664 (n + 1) : ℚ)

end

end A342670.P10004124469439750796

namespace A342670

/-- `A342662(n+1)/A342664(n+1)` -/
def P10004124469439750796.Spec : Prop :=
  ∀ n, P10004124469439750796.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P5649988660826761331

`gcd(A342661(n+1), A342662(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A342670

/-- `gcd(A342661(n+1), A342662(n+1))` -/
def P5649988660826761331.Spec : Prop :=
  ∀ n, (P5649988660826761331.a n : ℤ) = A342670 (n + 1)

theorem P5649988660826761331.correct : P5649988660826761331.Spec := by
  intro n
  simp only [A342670, Nat.add_sub_cancel]

end A342670

/-! ## A342670.P8539434050087560775

`(n+1)*A326041(n+1)/A342663(n+1)`
-/

namespace A342670.P8539434050087560775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A326041 (n + 1) : ℚ) / (A342663 (n + 1) : ℚ))

end

end A342670.P8539434050087560775

namespace A342670

/-- `(n+1)*A326041(n+1)/A342663(n+1)` -/
def P8539434050087560775.Spec : Prop :=
  ∀ n, P8539434050087560775.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P6523691256098940894

`∑{d}[A064989(n+1), #*(n+1)]/A342663(n+1)`
-/

namespace A342670.P6523691256098940894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1) : ℕ) : ℚ) / (A342663 (n + 1) : ℚ)

end

end A342670.P6523691256098940894

namespace A342670

/-- `∑{d}[A064989(n+1), #*(n+1)]/A342663(n+1)` -/
def P6523691256098940894.Spec : Prop :=
  ∀ n, P6523691256098940894.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P12044658445811066202

`gcd((n+1)*A326041(n+1), ∑{d}[n+1, A200746(n+1)/#])`
-/

namespace A342670.P12044658445811066202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A326041 (n + 1)) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (A200746 (n + 1) : ℚ) / (d : ℚ)))

end

end A342670.P12044658445811066202

namespace A342670

/-- `gcd((n+1)*A326041(n+1), ∑{d}[n+1, A200746(n+1)/#])` -/
def P12044658445811066202.Spec : Prop :=
  ∀ n, (P12044658445811066202.a n : ℤ) = A342670 (n + 1)

end A342670

/-! ## A342670.P327970766138836611

`(n+1)*A000203(A064989(n+1))/A342663(n+1)`
-/

namespace A342670.P327970766138836611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000203 (A064989 (n + 1)).toNat : ℚ) / (A342663 (n + 1) : ℚ))

end

end A342670.P327970766138836611

namespace A342670

/-- `(n+1)*A000203(A064989(n+1))/A342663(n+1)` -/
def P327970766138836611.Spec : Prop :=
  ∀ n, P327970766138836611.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P1141840146991352908

`(n+1)*A000203(abs(A290099(n+1)))/A342663(n+1)`
-/

namespace A342670.P1141840146991352908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 |A290099 (n + 1)|.toNat : ℚ) / (A342663 (n + 1) : ℚ)

end

end A342670.P1141840146991352908

namespace A342670

/-- `(n+1)*A000203(abs(A290099(n+1)))/A342663(n+1)` -/
def P1141840146991352908.Spec : Prop :=
  ∀ n, P1141840146991352908.a n = (A342670 (n + 1) : ℚ)

end A342670

/-! ## A342670.P8309619932678418458

`gcd(A000203(n+1)*A349126(4*(n+1)), ∑{d}[A064989(n+1), #*(n+1)])`
-/

namespace A342670.P8309619932678418458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) * A349126 (4 * (n + 1))) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1) : ℕ) : ℤ)

end

end A342670.P8309619932678418458

namespace A342670

/-- `gcd(A000203(n+1)*A349126(4*(n+1)), ∑{d}[A064989(n+1), #*(n+1)])` -/
def P8309619932678418458.Spec : Prop :=
  ∀ n, (P8309619932678418458.a n : ℤ) = A342670 (n + 1)

end A342670

/-! ## A342670.P16253267616245577596

`(n+1)*A000203(A285728(2*(n+1)))/A342663(n+1)`
-/

namespace A342670.P16253267616245577596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000203 (A285728 (2 * (n + 1))).toNat : ℚ) / (A342663 (n + 1) : ℚ)

end

end A342670.P16253267616245577596

namespace A342670

/-- `(n+1)*A000203(A285728(2*(n+1)))/A342663(n+1)` -/
def P16253267616245577596.Spec : Prop :=
  ∀ n, P16253267616245577596.a n = (A342670 (n + 1) : ℚ)

end A342670

/-!
# A342671: a(n) = gcd(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

The programs for A342671, the canonical program `A342671.P17132639632393477342` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342671 has offset 1).

The definition of A342671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342671.P17132639632393477342

`A003961(A349163(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342671

/-- `A003961(A349163(n+1))` -/
def P17132639632393477342.Spec : Prop :=
  ∀ n, P17132639632393477342.a n = A342671 (n + 1)

theorem P17132639632393477342.correct : P17132639632393477342.Spec := by
  intro n
  simp only [A342671, Nat.add_sub_cancel]

end A342671

/-! ## A342671.P9957654158781559026

`A000203(n+1)/A349162(n+1)`
-/

namespace A342671.P9957654158781559026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ)

end

end A342671.P9957654158781559026

namespace A342671

/-- `A000203(n+1)/A349162(n+1)` -/
def P9957654158781559026.Spec : Prop :=
  ∀ n, P9957654158781559026.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P10871170000029089391

`A003961((n+1)/A349164(n+1))`
-/

namespace A342671.P10871170000029089391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A349164 (n + 1) : ℚ))).toNat

end

end A342671.P10871170000029089391

namespace A342671

/-- `A003961((n+1)/A349164(n+1))` -/
def P10871170000029089391.Spec : Prop :=
  ∀ n, P10871170000029089391.a n = A342671 (n + 1)

end A342671

/-! ## A342671.P15383171134002954247

`A003961(n+1)/A349161(n+1)`
-/

namespace A342671.P15383171134002954247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A349161 (n + 1) : ℚ)

end

end A342671.P15383171134002954247

namespace A342671

/-- `A003961(n+1)/A349161(n+1)` -/
def P15383171134002954247.Spec : Prop :=
  ∀ n, P15383171134002954247.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P9255907607235942309

`A161942(n+1)/A348992(n+1)`
-/

namespace A342671.P9255907607235942309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ)

end

end A342671.P9255907607235942309

namespace A342671

/-- `A161942(n+1)/A348992(n+1)` -/
def P9255907607235942309.Spec : Prop :=
  ∀ n, P9255907607235942309.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P15466906614161411421

`A341529(n+1)/A342672(n+1)`
-/

namespace A342671.P15466906614161411421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A342672 (n + 1) : ℚ)

end

end A342671.P15466906614161411421

namespace A342671

/-- `A341529(n+1)/A342672(n+1)` -/
def P15466906614161411421.Spec : Prop :=
  ∀ n, P15466906614161411421.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P6552215637124843285

`gcd(Δ[A160664(n)], A003961(n+1))`
-/

namespace A342671.P6552215637124843285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003961 (n + 1))

end

end A342671.P6552215637124843285

namespace A342671

/-- `gcd(Δ[A160664(n)], A003961(n+1))` -/
def P6552215637124843285.Spec : Prop :=
  ∀ n, (P6552215637124843285.a n : ℤ) = A342671 (n + 1)

end A342671

/-! ## A342671.P11892948945342986975

`A379488(n+1)/A324198(n+1)`
-/

namespace A342671.P11892948945342986975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379488 (n + 1) : ℚ) / (A324198 (n + 1) : ℚ)

end

end A342671.P11892948945342986975

namespace A342671

/-- `A379488(n+1)/A324198(n+1)` -/
def P11892948945342986975.Spec : Prop :=
  ∀ n, P11892948945342986975.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P6945758033379285843

`gcd(A143348(n+1), A286385(n+1))`
-/

namespace A342671.P6945758033379285843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A286385 (n + 1))

end

end A342671.P6945758033379285843

namespace A342671

/-- `gcd(A143348(n+1), A286385(n+1))` -/
def P6945758033379285843.Spec : Prop :=
  ∀ n, (P6945758033379285843.a n : ℤ) = A342671 (n + 1)

end A342671

/-! ## A342671.P10767170381132719405

`gcd(A161942(n+1), A283980(n+1))`
-/

namespace A342671.P10767170381132719405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161942 (n + 1)) (A283980 (n + 1))

end

end A342671.P10767170381132719405

namespace A342671

/-- `gcd(A161942(n+1), A283980(n+1))` -/
def P10767170381132719405.Spec : Prop :=
  ∀ n, (P10767170381132719405.a n : ℤ) = A342671 (n + 1)

end A342671

/-! ## A342671.P1252022417515380541

`A000265(A000203(n+1)/A348992(n+1))`
-/

namespace A342671.P1252022417515380541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ))).toNat

end

end A342671.P1252022417515380541

namespace A342671

/-- `A000265(A000203(n+1)/A348992(n+1))` -/
def P1252022417515380541.Spec : Prop :=
  ∀ n, P1252022417515380541.a n = A342671 (n + 1)

end A342671

/-! ## A342671.P6203496749682113534

`A161942(n+1)/A000265(A349162(n+1))`
-/

namespace A342671.P6203496749682113534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A000265 (A349162 (n + 1)).toNat : ℚ)

end

end A342671.P6203496749682113534

namespace A342671

/-- `A161942(n+1)/A000265(A349162(n+1))` -/
def P6203496749682113534.Spec : Prop :=
  ∀ n, P6203496749682113534.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P14280074570449147060

`(A003961(n+1)-A286385(n+1))/A349162(n+1)`
-/

namespace A342671.P14280074570449147060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ)

end

end A342671.P14280074570449147060

namespace A342671

/-- `(A003961(n+1)-A286385(n+1))/A349162(n+1)` -/
def P14280074570449147060.Spec : Prop :=
  ∀ n, P14280074570449147060.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P7880445200491096434

`(A379487(n+1)-A379489(n+1))/A324198(n+1)`
-/

namespace A342671.P7880445200491096434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379487 (n + 1) - A379489 (n + 1) : ℚ) / (A324198 (n + 1) : ℚ)

end

end A342671.P7880445200491096434

namespace A342671

/-- `(A379487(n+1)-A379489(n+1))/A324198(n+1)` -/
def P7880445200491096434.Spec : Prop :=
  ∀ n, P7880445200491096434.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P13346053233062576939

`A000203(n+1)*A003961(n+1)/A342672(n+1)`
-/

namespace A342671.P13346053233062576939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A003961 (n + 1) : ℚ) / (A342672 (n + 1) : ℚ)

end

end A342671.P13346053233062576939

namespace A342671

/-- `A000203(n+1)*A003961(n+1)/A342672(n+1)` -/
def P13346053233062576939.Spec : Prop :=
  ∀ n, P13346053233062576939.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P9380244635068934435

`A341529(n+1)/(A003961(n+1)*A349162(n+1))`
-/

namespace A342671.P9380244635068934435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) * A349162 (n + 1) : ℚ)

end

end A342671.P9380244635068934435

namespace A342671

/-- `A341529(n+1)/(A003961(n+1)*A349162(n+1))` -/
def P9380244635068934435.Spec : Prop :=
  ∀ n, P9380244635068934435.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P10015852246646317700

`A322361(n+1)*A348994(n+1)/A349161(n+1)`
-/

namespace A342671.P10015852246646317700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322361 (n + 1) * A348994 (n + 1) : ℚ) / (A349161 (n + 1) : ℚ)

end

end A342671.P10015852246646317700

namespace A342671

/-- `A322361(n+1)*A348994(n+1)/A349161(n+1)` -/
def P10015852246646317700.Spec : Prop :=
  ∀ n, P10015852246646317700.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P7290228978859201651

`A351544(n+1)/A349162(n+1)*A351546(n+1)`
-/

namespace A342671.P7290228978859201651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ) * (A351546 (n + 1) : ℚ)

end

end A342671.P7290228978859201651

namespace A342671

/-- `A351544(n+1)/A349162(n+1)*A351546(n+1)` -/
def P7290228978859201651.Spec : Prop :=
  ∀ n, P7290228978859201651.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P16872733931482947147

`A351545(n+1)/A349162(n+1)*A351547(n+1)`
-/

namespace A342671.P16872733931482947147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351545 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ)

end

end A342671.P16872733931482947147

namespace A342671

/-- `A351545(n+1)/A349162(n+1)*A351547(n+1)` -/
def P16872733931482947147.Spec : Prop :=
  ∀ n, P16872733931482947147.a n = (A342671 (n + 1) : ℚ)

end A342671

/-! ## A342671.P5052766618064859382

`A355932(n+1)/A349162(n+1)*A355934(n+1)`
-/

namespace A342671.P5052766618064859382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355932 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ) * (A355934 (n + 1) : ℚ)

end

end A342671.P5052766618064859382

namespace A342671

/-- `A355932(n+1)/A349162(n+1)*A355934(n+1)` -/
def P5052766618064859382.Spec : Prop :=
  ∀ n, P5052766618064859382.a n = (A342671 (n + 1) : ℚ)

end A342671

/-!
# A342672: a(n) = lcm(sigma(n), A003961(n)), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

The programs for A342672, the canonical program `A342672.P8879413423596289557` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342672 has offset 1).

The definition of A342672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A342671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342672.P8879413423596289557

`A341529(n+1)/A342671(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342672

/-- `A341529(n+1)/A342671(n+1)` -/
def P8879413423596289557.Spec : Prop :=
  ∀ n, P8879413423596289557.a n = (A342672 (n + 1) : ℚ)

end A342672

/-! ## A342672.P11350085334505141021

`lcm(1-A243501(n+1), ∑{d}[n+1, #])`
-/

namespace A342672.P11350085334505141021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A243501 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A342672.P11350085334505141021

namespace A342672

/-- `lcm(1-A243501(n+1), ∑{d}[n+1, #])` -/
def P11350085334505141021.Spec : Prop :=
  ∀ n, (P11350085334505141021.a n : ℤ) = A342672 (n + 1)

end A342672

/-! ## A342672.P9870297873854564106

`Δ[A160664(n)]*A349161(n+1)`
-/

namespace A342672.P9870297873854564106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A349161 (n + 1)

end

end A342672.P9870297873854564106

namespace A342672

/-- `Δ[A160664(n)]*A349161(n+1)` -/
def P9870297873854564106.Spec : Prop :=
  ∀ n, P9870297873854564106.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P1447952845645159204

`lcm(Δ[A160664(n)], A003961(n+1))`
-/

namespace A342672.P1447952845645159204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A003961 (n + 1))

end

end A342672.P1447952845645159204

namespace A342672

/-- `lcm(Δ[A160664(n)], A003961(n+1))` -/
def P1447952845645159204.Spec : Prop :=
  ∀ n, (P1447952845645159204.a n : ℤ) = A342672 (n + 1)

end A342672

/-! ## A342672.P8601767430394014084

`A000203(n+1)*A349161(n+1)`
-/

namespace A342672.P8601767430394014084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A349161 (n + 1)

end

end A342672.P8601767430394014084

namespace A342672

/-- `A000203(n+1)*A349161(n+1)` -/
def P8601767430394014084.Spec : Prop :=
  ∀ n, P8601767430394014084.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P10967969545343175156

`A003961(n+1)*A349162(n+1)`
-/

namespace A342672.P10967969545343175156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A349162 (n + 1)

end

end A342672.P10967969545343175156

namespace A342672

/-- `A003961(n+1)*A349162(n+1)` -/
def P10967969545343175156.Spec : Prop :=
  ∀ n, P10967969545343175156.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P835461121335403432

`(A253885(n)+1)*A349162(n+1)`
-/

namespace A342672.P835461121335403432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) * A349162 (n + 1)

end

end A342672.P835461121335403432

namespace A342672

/-- `(A253885(n)+1)*A349162(n+1)` -/
def P835461121335403432.Spec : Prop :=
  ∀ n, P835461121335403432.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P3503885014766449795

`lcm(2*(n+1)-A033879(n+1), 2*A048673(n+1)-1)`
-/

namespace A342672.P3503885014766449795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * (n + 1) : ℤ) - A033879 (n + 1)) (2 * A048673 (n + 1) - 1)

end

end A342672.P3503885014766449795

namespace A342672

/-- `lcm(2*(n+1)-A033879(n+1), 2*A048673(n+1)-1)` -/
def P3503885014766449795.Spec : Prop :=
  ∀ n, (P3503885014766449795.a n : ℤ) = A342672 (n + 1)

end A342672

/-! ## A342672.P2802284672260975710

`A000203(n+1)*A003961(A349164(n+1))`
-/

namespace A342672.P2802284672260975710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A003961 (A349164 (n + 1)).toNat

end

end A342672.P2802284672260975710

namespace A342672

/-- `A000203(n+1)*A003961(A349164(n+1))` -/
def P2802284672260975710.Spec : Prop :=
  ∀ n, P2802284672260975710.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P6198398804938501045

`A341529(n+1)/A003961(A349163(n+1))`
-/

namespace A342672.P6198398804938501045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (A349163 (n + 1)).toNat : ℚ)

end

end A342672.P6198398804938501045

namespace A342672

/-- `A341529(n+1)/A003961(A349163(n+1))` -/
def P6198398804938501045.Spec : Prop :=
  ∀ n, P6198398804938501045.a n = (A342672 (n + 1) : ℚ)

end A342672

/-! ## A342672.P9498729593858641179

`(A286385(n+1)+A000203(n+1))*A349162(n+1)`
-/

namespace A342672.P9498729593858641179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1)) * A349162 (n + 1)

end

end A342672.P9498729593858641179

namespace A342672

/-- `(A286385(n+1)+A000203(n+1))*A349162(n+1)` -/
def P9498729593858641179.Spec : Prop :=
  ∀ n, P9498729593858641179.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P6782355715799766989

`(A003961(n+1)-A286385(n+1))*A349161(n+1)`
-/

namespace A342672.P6782355715799766989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1)) * A349161 (n + 1)

end

end A342672.P6782355715799766989

namespace A342672

/-- `(A003961(n+1)-A286385(n+1))*A349161(n+1)` -/
def P6782355715799766989.Spec : Prop :=
  ∀ n, P6782355715799766989.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P3290340228391812654

`(A341528(n+1)+A341512(n+1))/A342671(n+1)`
-/

namespace A342672.P3290340228391812654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) + A341512 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A342672.P3290340228391812654

namespace A342672

/-- `(A341528(n+1)+A341512(n+1))/A342671(n+1)` -/
def P3290340228391812654.Spec : Prop :=
  ∀ n, P3290340228391812654.a n = (A342672 (n + 1) : ℚ)

end A342672

/-! ## A342672.P71146612461481300

`A082903(n+1)*A161942(n+1)*A349161(n+1)`
-/

namespace A342672.P71146612461481300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082903 (n + 1) * A161942 (n + 1) * A349161 (n + 1)

end

end A342672.P71146612461481300

namespace A342672

/-- `A082903(n+1)*A161942(n+1)*A349161(n+1)` -/
def P71146612461481300.Spec : Prop :=
  ∀ n, P71146612461481300.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P8119428222578738700

`A342671(n+1)*A349161(n+1)*A349162(n+1)`
-/

namespace A342672.P8119428222578738700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A349161 (n + 1) * A349162 (n + 1)

end

end A342672.P8119428222578738700

namespace A342672

/-- `A342671(n+1)*A349161(n+1)*A349162(n+1)` -/
def P8119428222578738700.Spec : Prop :=
  ∀ n, P8119428222578738700.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P17327930316737290371

`A349161(n+1)*A351544(n+1)*A351546(n+1)`
-/

namespace A342672.P17327930316737290371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (n + 1) * A351544 (n + 1) * A351546 (n + 1)

end

end A342672.P17327930316737290371

namespace A342672

/-- `A349161(n+1)*A351544(n+1)*A351546(n+1)` -/
def P17327930316737290371.Spec : Prop :=
  ∀ n, P17327930316737290371.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P17267591101092505876

`A349161(n+1)*A351545(n+1)*A351547(n+1)`
-/

namespace A342672.P17267591101092505876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (n + 1) * A351545 (n + 1) * A351547 (n + 1)

end

end A342672.P17267591101092505876

namespace A342672

/-- `A349161(n+1)*A351545(n+1)*A351547(n+1)` -/
def P17267591101092505876.Spec : Prop :=
  ∀ n, P17267591101092505876.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P12825434587721764256

`A349161(n+1)*A355932(n+1)*A355934(n+1)`
-/

namespace A342672.P12825434587721764256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (n + 1) * A355932 (n + 1) * A355934 (n + 1)

end

end A342672.P12825434587721764256

namespace A342672

/-- `A349161(n+1)*A355932(n+1)*A355934(n+1)` -/
def P12825434587721764256.Spec : Prop :=
  ∀ n, P12825434587721764256.a n = A342672 (n + 1)

end A342672

/-! ## A342672.P471127898065196710

`A000203(n+1)*A003961(n+1)/A342671(n+1)`
-/

namespace A342672.P471127898065196710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A003961 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A342672.P471127898065196710

namespace A342672

/-- `A000203(n+1)*A003961(n+1)/A342671(n+1)` -/
def P471127898065196710.Spec : Prop :=
  ∀ n, P471127898065196710.a n = (A342672 (n + 1) : ℚ)

end A342672

/-! ## A342672.P7435519867849398156

`A341529(n+1)/A003961(n+1)*A349161(n+1)`
-/

namespace A342672.P7435519867849398156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A342672.P7435519867849398156

namespace A342672

/-- `A341529(n+1)/A003961(n+1)*A349161(n+1)` -/
def P7435519867849398156.Spec : Prop :=
  ∀ n, P7435519867849398156.a n = (A342672 (n + 1) : ℚ)

end A342672

/-!
# A342673: a(n) = gcd(n, sigma(A003961(n))), where A003961 is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors of n.

The programs for A342673, the canonical program `A342673.P12954868903649756801` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342673 has offset 1).

The definition of A342673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342673.P12954868903649756801

`gcd(n+1, A003973(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342673

/-- `gcd(n+1, A003973(n+1))` -/
def P12954868903649756801.Spec : Prop :=
  ∀ n, (P12954868903649756801.a n : ℤ) = A342673 (n + 1)

theorem P12954868903649756801.correct : P12954868903649756801.Spec := by
  intro n
  simp only [A342673, Nat.add_sub_cancel]

end A342673

/-! ## A342673.P11548107967579259131

`gcd((n+1)², A341528(n+1))/(n+1)`
-/

namespace A342673.P11548107967579259131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n + 1) ^ 2 : ℤ) (A341528 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A342673.P11548107967579259131

namespace A342673

/-- `gcd((n+1)², A341528(n+1))/(n+1)` -/
def P11548107967579259131.Spec : Prop :=
  ∀ n, P11548107967579259131.a n = (A342673 (n + 1) : ℚ)

end A342673

/-! ## A342673.P14100350581947748049

`gcd(A003973(n+1), A131738(n))`
-/

namespace A342673.P14100350581947748049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003973 (n + 1)) (A131738 n)

end

end A342673.P14100350581947748049

namespace A342673

/-- `gcd(A003973(n+1), A131738(n))` -/
def P14100350581947748049.Spec : Prop :=
  ∀ n, (P14100350581947748049.a n : ℤ) = A342673 (n + 1)

end A342673

/-! ## A342673.P12167078421682403691

`gcd(A336846(n+1)*A336848(n+1), A000027(n+1))`
-/

namespace A342673.P12167078421682403691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336846 (n + 1) * A336848 (n + 1)) (A000027 (n + 1))

end

end A342673.P12167078421682403691

namespace A342673

/-- `gcd(A336846(n+1)*A336848(n+1), A000027(n+1))` -/
def P12167078421682403691.Spec : Prop :=
  ∀ n, (P12167078421682403691.a n : ℤ) = A342673 (n + 1)

end A342673

/-! ## A342673.P13560767503272206838

`gcd(xor(n, -1), A000203(A003961(n+1)))`
-/

namespace A342673.P13560767503272206838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A000203 (A003961 (n + 1)).toNat)

end

end A342673.P13560767503272206838

namespace A342673

/-- `gcd(xor(n, -1), A000203(A003961(n+1)))` -/
def P13560767503272206838.Spec : Prop :=
  ∀ n, (P13560767503272206838.a n : ℤ) = A342673 (n + 1)

end A342673

/-! ## A342673.P2166869236504935883

`gcd(C(n+1, n), A000203(A045965(n+1)))`
-/

namespace A342673.P2166869236504935883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (A000203 (A045965 (n + 1)).toNat)

end

end A342673.P2166869236504935883

namespace A342673

/-- `gcd(C(n+1, n), A000203(A045965(n+1)))` -/
def P2166869236504935883.Spec : Prop :=
  ∀ n, (P2166869236504935883.a n : ℤ) = A342673 (n + 1)

end A342673

/-! ## A342673.P13098434124439382658

`gcd(A000203(A297166(2*n+2)), A000027(n+1))`
-/

namespace A342673.P13098434124439382658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A297166 (2 * n + 2)).toNat) (A000027 (n + 1))

end

end A342673.P13098434124439382658

namespace A342673

/-- `gcd(A000203(A297166(2*n+2)), A000027(n+1))` -/
def P13098434124439382658.Spec : Prop :=
  ∀ n, (P13098434124439382658.a n : ℤ) = A342673 (n + 1)

end A342673

/-!
# A342674: Square array A(n,k) = A341530(A246278(n,k)), read by falling antidiagonals; A341530 as applied onto prime shift array A246278.

The programs for A342674, there is no canonical definition to state claims against.
-/

/-! ## A342674.P7568965556727073630

`A341530(A246278(n+2)%A341528(n+4))`
-/

namespace A342674.P7568965556727073630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (Int.tmod (A246278 (n + 2)) (A341528 (n + 4))).toNat

end

end A342674.P7568965556727073630

/-! ## A342674.P18385811662081645396

`A341530(A246278(n+2))`
-/

namespace A342674.P18385811662081645396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A246278 (n + 2)).toNat

end

end A342674.P18385811662081645396

/-! ## A342674.P6333819659854762375

`A341530(A246275(n+1)+1)`
-/

namespace A342674.P6333819659854762375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A246275 (n + 1) + 1).toNat

end

end A342674.P6333819659854762375

/-! ## A342674.P13707461754241282388

`A341530(A341606(n+1)*A355925(n+1))`
-/

namespace A342674.P13707461754241282388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A342674.P13707461754241282388

/-! ## A342674.P9953392635742513676

`A341530(2*A379010(n+1)-A379011(n+1))`
-/

namespace A342674.P9953392635742513676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (2 * A379010 (n + 1) - A379011 (n + 1)).toNat

end

end A342674.P9953392635742513676

/-! ## A342674.P12039488509091115422

`A341528(A246278(n+2))/A341626(n+1)`
-/

namespace A342674.P12039488509091115422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (A246278 (n + 2)).toNat : ℚ) / (A341626 (n + 1) : ℚ)

end

end A342674.P12039488509091115422

/-! ## A342674.P6148655639816889282

`A341529(A246278(n+2))/A341627(n+1)`
-/

namespace A342674.P6148655639816889282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (A246278 (n + 2)).toNat : ℚ) / (A341627 (n + 1) : ℚ)

end

end A342674.P6148655639816889282

/-!
# A342675: a(n) = Sum_{d|n} d^(n-d+1).

The programs for A342675, there is no canonical definition to state claims against.
-/

/-! ## A342675.P14738566653819180227

`∑{d}[n+1, #^(n+2-#)]`
-/

namespace A342675.P14738566653819180227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((n + 2 : ℤ) - (d : ℤ) : ℤ)

end

end A342675.P14738566653819180227

/-! ## A342675.P7316551696565045377

`A356529(n+1)/n!`
-/

namespace A342675.P7316551696565045377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356529 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A342675.P7316551696565045377

/-! ## A342675.P11908616887286827864

`A356529(n+1)/A000142(n)`
-/

namespace A342675.P11908616887286827864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356529 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A342675.P11908616887286827864

/-! ## A342675.P2273529007060025473

`A356529(n+1)/∏[A028310(n)]`
-/

namespace A342675.P2273529007060025473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356529 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A342675.P2273529007060025473

/-! ## A342675.P7070297031667663561

`A356529(n+1)/A080779(A000096(n))`
-/

namespace A342675.P7070297031667663561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356529 (n + 1) : ℚ) / (A080779 (A000096 n).toNat : ℚ)

end

end A342675.P7070297031667663561

/-!
# A342676: a(n) is the number of lunar primes less than or equal to n.

The programs for A342676, there is no canonical definition to state claims against.
-/

/-! ## A342676.P18439164681991047031

`floor(abs((8-n)/10))`
-/

namespace A342676.P18439164681991047031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(8 - (n : ℤ) : ℚ) / 10|⌋

end

end A342676.P18439164681991047031

/-! ## A342676.P13631849501520380595

`dr(∑[char[10*n+18]])`
-/

namespace A342676.P13631849501520380595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 18

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342676.P13631849501520380595

/-! ## A342676.P2258889777896507448

`∑[char[2*(lcm(5, n)+9)]]`
-/

namespace A342676.P2258889777896507448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lcm 5 n + 9)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P2258889777896507448

/-! ## A342676.P14485046741739904644

`∑[char[lcm(10, n+1)+8]]`
-/

namespace A342676.P14485046741739904644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (n + 1) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P14485046741739904644

/-! ## A342676.P5773670878153316789

`∑[char[a(n-1)+10]]` with `a(0)=18`
-/

namespace A342676.P5773670878153316789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f2 =>
  f2 (n - 1) + 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P5773670878153316789

/-! ## A342676.P6851997465762654445

`∑[val(n+1-9%(n+1), 10)]`
-/

namespace A342676.P6851997465762654445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) - ((9 % (n + 1) : ℕ) : ℤ)).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P6851997465762654445

/-! ## A342676.P1673411147720490834

`∑[val(11%(n+1)+n+1, 10)]`
-/

namespace A342676.P1673411147720490834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (11 % (n + 1) + (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P1673411147720490834

/-! ## A342676.P1042020596152005508

`∑[char[A017365(n+1)]]`
-/

namespace A342676.P1042020596152005508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342676.P1042020596152005508

/-!
# A342677: a(n) = Sum_{d|n} (n/d)^(n-d+1).

The programs for A342677, there is no canonical definition to state claims against.
-/

/-! ## A342677.P10914147210365020618

`A343573(n+1)+A328221(A266503(n+1))`
-/

namespace A342677.P10914147210365020618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343573 (n + 1) + A328221 (A266503 (n + 1)).toNat

end

end A342677.P10914147210365020618

/-!
# A342678: a(n) is the number of base-2 lunar primes less than or equal to n.

The programs for A342678, there is no canonical definition to state claims against.
-/

/-! ## A342678.P15855176313024236497

`∑[A342704(n+1)]`
-/

namespace A342678.P15855176313024236497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P15855176313024236497

/-! ## A342678.P11141301028106337887

`∑[char[eq[2, A067399(n+1)]]]`
-/

namespace A342678.P11141301028106337887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P11141301028106337887

/-! ## A342678.P890754158143641986

`∑[A185012(A067399(n+1))]`
-/

namespace A342678.P890754158143641986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A067399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P890754158143641986

/-! ## A342678.P17134701143418045611

`∑[A000007(xor(2, A067399(n+1)))]`
-/

namespace A342678.P17134701143418045611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A067399 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P17134701143418045611

/-! ## A342678.P13500074900682332856

`∑[A063524(A066376(n+1))]`
-/

namespace A342678.P13500074900682332856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A066376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P13500074900682332856

/-! ## A342678.P4531990902266523493

`∑[A000007(xor(1, A066376(n+1)))]`
-/

namespace A342678.P4531990902266523493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A066376 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P4531990902266523493

/-! ## A342678.P13598216468512553463

`∑[∑{d}[A066376(n+1), A008683(#)]]`
-/

namespace A342678.P13598216468512553463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P13598216468512553463

/-! ## A342678.P10252058831002056187

`∑[A010058(A066376(n+1)²)]`
-/

namespace A342678.P10252058831002056187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A066376 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342678.P10252058831002056187

/-!
# A342679: Number of steps for n to reach 1 or n by repeated application of A037916, or -1 if they are never reached.

The programs for A342679, there is no canonical definition to state claims against.
-/

/-! ## A342679.P16073608677853935795

`A073855(A037916(A037916(n+2)))+1`
-/

namespace A342679.P16073608677853935795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A037916 (A037916 (n + 2)).toNat).toNat + 1

end

end A342679.P16073608677853935795

/-! ## A342679.P1332395080347521752

`A001222(A002586(n+1)*A037916(n+2))`
-/

namespace A342679.P1332395080347521752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002586 (n + 1) * A037916 (n + 2)).toNat

end

end A342679.P1332395080347521752

/-! ## A342679.P18269279311922612510

`A001222(A002313(n+1)*A037916(n+2))`
-/

namespace A342679.P18269279311922612510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002313 (n + 1) * A037916 (n + 2)).toNat

end

end A342679.P18269279311922612510

/-! ## A342679.P764119410032526737

`A001222(A037916(n+2)*A102540(n+1))`
-/

namespace A342679.P764119410032526737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037916 (n + 2) * A102540 (n + 1)).toNat

end

end A342679.P764119410032526737

/-! ## A342679.P11353104530178099704

`A001222(p?[A007064(n+1)]*A037916(n+2))`
-/

namespace A342679.P11353104530178099704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A037916 (n + 2)).toNat

end

end A342679.P11353104530178099704

/-! ## A342679.P388672392969933650

`A001222(p?[A000414(2*(n+1))]*A037916(n+2))`
-/

namespace A342679.P388672392969933650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A037916 (n + 2)).toNat

end

end A342679.P388672392969933650

/-! ## A342679.P10413276781909326393

`A001222(p?[A287322(2*n+1)]*A037916(n+2))`
-/

namespace A342679.P10413276781909326393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287322 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A037916 (n + 2)).toNat

end

end A342679.P10413276781909326393

/-!
# A342681: Primes which, when added to their reversals, produce palindromic primes.

The programs for A342681, there is no canonical definition to state claims against.
-/

/-! ## A342681.P1390087798581635406

`∩[A061783(n+1), A244392(n+1)]`
-/

namespace A342681.P1390087798581635406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342681.P1390087798581635406

/-! ## A342681.P13905921186392877397

`∩[A072366(n+1), A244392(n+1)]`
-/

namespace A342681.P13905921186392877397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342681.P13905921186392877397

/-! ## A342681.P11397766815808340848

`∩[A061783(n+1), A065206(n+1)]`
-/

namespace A342681.P11397766815808340848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342681.P11397766815808340848

/-! ## A342681.P15596297077749240123

`∩[p?[A015976(n+1)], A061783(n+1)]`
-/

namespace A342681.P15596297077749240123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A342681.P15596297077749240123

/-! ## A342681.P13939498039988769328

`∩[A015976(A029742(n+1)), A061783(n+1)]`
-/

namespace A342681.P13939498039988769328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (A029742 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342681.P13939498039988769328

/-!
# A342682: a(1) = 1; for n > 0: a(2*n) = -a(n+1), a(2*n+1) = a(n) + a(n+1).

The programs for A342682, there is no canonical definition to state claims against.
-/

/-! ## A342682.P13039902066667315407

`A054635(A085844(n+2))-A333750(n+1)`
-/

namespace A342682.P13039902066667315407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A085844 (n + 2)).toNat - A333750 (n + 1)

end

end A342682.P13039902066667315407

/-! ## A342682.P11829070328717137558

`Δ[A001222(record[A085685(n)])]`
-/

namespace A342682.P11829070328717137558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342682.P11829070328717137558

/-! ## A342682.P17403326720978810262

`Δ[A008481(record[A085685(n)])]`
-/

namespace A342682.P17403326720978810262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342682.P17403326720978810262

/-! ## A342682.P13589619394267670378

`Δ[A010553(record[A085685(n)])]`
-/

namespace A342682.P13589619394267670378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342682.P13589619394267670378

/-! ## A342682.P16485384372235933124

`Δ[A056924(record[A085685(n)])]`
-/

namespace A342682.P16485384372235933124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342682.P16485384372235933124

/-!
# A342684: Number of knapsack partitions of n with largest part 8.

The programs for A342684, there is no canonical definition to state claims against.
-/

/-! ## A342684.P11903199557199301796

`A326017(∑[A160755(n+1)])`
-/

namespace A342684.P11903199557199301796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342684.P11903199557199301796

/-!
# A342688: 

The programs for A342688, there is no canonical definition to state claims against.
-/

/-! ## A342688.P10046477334491565401

`∪[A342687(n+1), A342687(A088224(n+3))]`
-/

namespace A342688.P10046477334491565401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342687 (A088224 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342688.P10046477334491565401

/-! ## A342688.P1463032444804493639

`∪[A342687(A133576(n+1)), A342687(n+1)]`
-/

namespace A342688.P1463032444804493639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342687 (A133576 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342688.P1463032444804493639

/-!
# A342689: Square array read by antidiagonals (upwards): A(n,k) = (k^Fibonacci(n) - 1) / (k - 1) for k >= 0 and n >= 0 with lim_{k -> 1} A(n,k) = A(n,1) = Fibonacci(n).

The programs for A342689, there is no canonical definition to state claims against.
-/

/-! ## A342689.P3921349051498469353

`or(A057212(A143495(n+3)), A090824(n))`
-/

namespace A342689.P3921349051498469353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057212 (A143495 (n + 3)).toNat) (A090824 n)

end

end A342689.P3921349051498469353

/-! ## A342689.P3818069489774237560

`or(A060959(n), A342721(A018048(n)))`
-/

namespace A342689.P3818069489774237560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060959 n) (A342721 (A018048 n).toNat)

end

end A342689.P3818069489774237560

/-! ## A342689.P15812707812417567297

`A285007(A035607(n))+A060959(n)`
-/

namespace A342689.P15812707812417567297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A035607 n).toNat + A060959 n

end

end A342689.P15812707812417567297

/-! ## A342689.P1206069690875076041

`A309785(A331562(n))+A060959(n)`
-/

namespace A342689.P1206069690875076041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A060959 n

end

end A342689.P1206069690875076041

/-! ## A342689.P2891851763687390911

`A309785(A347621(n))+A060959(n)`
-/

namespace A342689.P2891851763687390911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A060959 n

end

end A342689.P2891851763687390911

/-!
# A342690: Prime powers q in A246655 such that q^2 + q + 1 is prime.

The programs for A342690, there is no canonical definition to state claims against.
-/

/-! ## A342690.P7837552771814294811

`floor(sqrt(A342691(n+1)))`
-/

namespace A342690.P7837552771814294811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A342691 (n + 1))

end

end A342690.P7837552771814294811

/-! ## A342690.P14762014928626456214

`round(sqrt(A342691(n+1)-A251549(n+1)))`
-/

namespace A342690.P14762014928626456214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A342691 (n + 1) - A251549 (n + 1) : ℝ))

end

end A342690.P14762014928626456214

/-! ## A342690.P16038195227954809862

`round(sqrt(A342691(n+1)-A328585(n+1)))`
-/

namespace A342690.P16038195227954809862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A342691 (n + 1) - A328585 (n + 1) : ℝ))

end

end A342690.P16038195227954809862

/-! ## A342690.P3189328410482383301

`filter[A002384(n+1), A069513(#)]`
-/

namespace A342690.P3189328410482383301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A342690.P3189328410482383301

/-! ## A342690.P8744796844582323782

`filter[A096176(n+1), A069513(#)]`
-/

namespace A342690.P8744796844582323782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A342690.P8744796844582323782

/-! ## A342690.P15929870300643603631

`∩[A000961(n+1), A096176(n+1)]`
-/

namespace A342690.P15929870300643603631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P15929870300643603631

/-! ## A342690.P7595751054589405339

`∩[A002384(n+1), A096165(n+1)]`
-/

namespace A342690.P7595751054589405339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P7595751054589405339

/-! ## A342690.P16268118059992731589

`∩[A002384(n+1), A186285(n+1)]`
-/

namespace A342690.P16268118059992731589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P16268118059992731589

/-! ## A342690.P17565343826989517988

`∩[A096165(n+1), A096176(n+1)]`
-/

namespace A342690.P17565343826989517988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P17565343826989517988

/-! ## A342690.P18408520038016849469

`∩[A002384(n+1), A246551(n+1)]`
-/

namespace A342690.P18408520038016849469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P18408520038016849469

/-! ## A342690.P15495804230286140455

`∩[A002384(n+1), A246655(n+1)]`
-/

namespace A342690.P15495804230286140455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P15495804230286140455

/-! ## A342690.P2509727421986709960

`∩[A096176(n+1), A164336(n+1)]`
-/

namespace A342690.P2509727421986709960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P2509727421986709960

/-! ## A342690.P5499705475550055144

`∩[A096176(n+1), A186285(n+1)]`
-/

namespace A342690.P5499705475550055144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P5499705475550055144

/-! ## A342690.P15146955825011244027

`∩[A002384(n+1), A283262(n+1)]`
-/

namespace A342690.P15146955825011244027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P15146955825011244027

/-! ## A342690.P5045398493324299440

`∩[A096176(n+1), A246551(n+1)]`
-/

namespace A342690.P5045398493324299440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P5045398493324299440

/-! ## A342690.P3962519572235800368

`∩[A096176(n+1), A246655(n+1)]`
-/

namespace A342690.P3962519572235800368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P3962519572235800368

/-! ## A342690.P4668503800785908452

`∩[A096176(n+1), A283262(n+1)]`
-/

namespace A342690.P4668503800785908452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342690.P4668503800785908452

/-! ## A342690.P16217864404559758600

`record[A034699(A096176(n+1))]`
-/

namespace A342690.P16217864404559758600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A096176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342690.P16217864404559758600

/-! ## A342690.P2856862937548884833

`filter[A002384(n+1), A353817(#)]`
-/

namespace A342690.P2856862937548884833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A342690.P2856862937548884833

/-! ## A342690.P5539569774177983944

`filter[A096176(n+1), A353817(#)]`
-/

namespace A342690.P5539569774177983944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A342690.P5539569774177983944

/-!
# A342691: Primes of the form (p^k)^2 + p^k + 1 with prime p and positive integer k.

The programs for A342691, there is no canonical definition to state claims against.
-/

/-! ## A342691.P2246228442358204533

`A342690(n+1)+A342690(n+1)²+1`
-/

namespace A342691.P2246228442358204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1) + (A342690 (n + 1) ^ 2 + 1)

end

end A342691.P2246228442358204533

/-! ## A342691.P18377454793366818718

`2*A000217(A342690(n+1))+1`
-/

namespace A342691.P18377454793366818718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A342690 (n + 1)).toNat + 1

end

end A342691.P18377454793366818718

/-! ## A342691.P4252723078684625001

`A046163(A342690(n+1))`
-/

namespace A342691.P4252723078684625001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A342690 (n + 1)).toNat

end

end A342691.P4252723078684625001

/-! ## A342691.P6341000658451770188

`record[A081257(A246655(n+1))]`
-/

namespace A342691.P6341000658451770188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081257 (A246655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342691.P6341000658451770188

/-! ## A342691.P13891384501141547048

`A002061(A342690(n+1)+1)`
-/

namespace A342691.P13891384501141547048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A342690 (n + 1) + 1).toNat

end

end A342691.P13891384501141547048

/-! ## A342691.P12885415163776849649

`A081256(A342690(n+1)+1)`
-/

namespace A342691.P12885415163776849649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A342690 (n + 1) + 1).toNat

end

end A342691.P12885415163776849649

/-! ## A342691.P4336502771479068641

`A108154(A342690(n+1)+1)`
-/

namespace A342691.P4336502771479068641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A342690 (n + 1) + 1).toNat

end

end A342691.P4336502771479068641

/-! ## A342691.P274594527818519049

`record[A081256(A246655(n+1)+1)]`
-/

namespace A342691.P274594527818519049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A246655 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342691.P274594527818519049

/-! ## A342691.P10366766329979202497

`record[A081256(A000961(n+2)+1)]`
-/

namespace A342691.P10366766329979202497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A000961 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342691.P10366766329979202497

/-! ## A342691.P9052465134196097788

`A130770(A342690(n+1)+A000038(n))`
-/

namespace A342691.P9052465134196097788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (A342690 (n + 1) + A000038 n).toNat

end

end A342691.P9052465134196097788

/-! ## A342691.P6807256989957730519

`or(A057427(n), A130770(A342690(n+1)))`
-/

namespace A342691.P6807256989957730519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A130770 (A342690 (n + 1)).toNat)

end

end A342691.P6807256989957730519

/-! ## A342691.P11122269668865552049

`A130770(2*A342690(n+1)-A342690(n+1))`
-/

namespace A342691.P11122269668865552049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (2 * A342690 (n + 1) - A342690 (n + 1)).toNat

end

end A342691.P11122269668865552049

/-!
# A342692: a(n) is the smallest prime p which is greater than the exponent of the n-th Mersenne prime.

The programs for A342692, there is no canonical definition to state claims against.
-/

/-! ## A342692.P5025457977641101168

`A151800(A000043(n+1))`
-/

namespace A342692.P5025457977641101168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000043 (n + 1)).toNat

end

end A342692.P5025457977641101168

/-! ## A342692.P14189388745542827886

`A001223(A016027(n+1))+A000043(n+1)`
-/

namespace A342692.P14189388745542827886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A016027 (n + 1)).toNat + A000043 (n + 1)

end

end A342692.P14189388745542827886

/-! ## A342692.P11875004057237546641

`A001223(A016027(n+1))+A090748(n+1)+1`
-/

namespace A342692.P11875004057237546641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A016027 (n + 1)).toNat + (A090748 (n + 1) + 1)

end

end A342692.P11875004057237546641

/-! ## A342692.P17570470956994159580

`A001223(A016027(n+1))+A050475(n+1)-1`
-/

namespace A342692.P17570470956994159580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A016027 (n + 1)).toNat + (A050475 (n + 1) - 1)

end

end A342692.P17570470956994159580

/-! ## A342692.P5796653611937250697

`A001223(A016027(n+1))+A153798(n+1)+2`
-/

namespace A342692.P5796653611937250697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A016027 (n + 1)).toNat + (A153798 (n + 1) + 2)

end

end A342692.P5796653611937250697

/-!
# A342693: a(n) = Sum_{d|n} mu(d) * floor(n/d^2).

The programs for A342693, there is no canonical definition to state claims against.
-/

/-! ## A342693.P8114131731361590352

`A060681(n+1)+A043537(A271654(n+1)+1)`
-/

namespace A342693.P8114131731361590352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A043537 (A271654 (n + 1) + 1).toNat

end

end A342693.P8114131731361590352

/-! ## A342693.P6698839280114550427

`2-A104564(A072195(n+1))+n`
-/

namespace A342693.P6698839280114550427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A104564 (A072195 (n + 1)).toNat + (n : ℤ)

end

end A342693.P6698839280114550427

/-! ## A342693.P3243272377878187531

`2-A161148(A055645(n+1))+n`
-/

namespace A342693.P3243272377878187531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A161148 (A055645 (n + 1)).toNat + (n : ℤ)

end

end A342693.P3243272377878187531

/-! ## A342693.P11253633350400239998

`2-A161148(A187829(n+1))+n`
-/

namespace A342693.P11253633350400239998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A161148 (A187829 (n + 1)).toNat + (n : ℤ)

end

end A342693.P11253633350400239998

/-! ## A342693.P17931737555818875377

`A003313(A020707(n))-A161148(n+1)`
-/

namespace A342693.P17931737555818875377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A020707 n).toNat - A161148 (n + 1)

end

end A342693.P17931737555818875377

/-!
# A342694: a(n) = Sum_{d|n} d * mu(d) * floor(n/d^2).

The programs for A342694, there is no canonical definition to state claims against.
-/

/-! ## A342694.P7830508059702535305

`2*(n+1)-A344403(A187829(n+1))`
-/

namespace A342694.P7830508059702535305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344403 (A187829 (n + 1)).toNat

end

end A342694.P7830508059702535305

/-! ## A342694.P675594554621271104

`A005843(A187829(n+1))-A344403(n+1)`
-/

namespace A342694.P675594554621271104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A187829 (n + 1)).toNat - A344403 (n + 1)

end

end A342694.P675594554621271104

/-! ## A342694.P10069027145269665280

`record[A213723(n)]+2-A344403(A187829(n+1))`
-/

namespace A342694.P10069027145269665280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 - A344403 (A187829 (n + 1)).toNat)

end

end A342694.P10069027145269665280

/-! ## A342694.P6521126457964597248

`A187829(A187829(n+1)+A187829(n+1)-A344403(n+1))`
-/

namespace A342694.P6521126457964597248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A187829 (n + 1) + (A187829 (n + 1) - A344403 (n + 1))).toNat

end

end A342694.P6521126457964597248

/-! ## A342694.P15910271046352617388

`A000005(A110288(n))-A344403(n+1)`
-/

namespace A342694.P15910271046352617388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A110288 n).toNat - A344403 (n + 1)

end

end A342694.P15910271046352617388

/-!
# A342695: a(n) is the number of primes in an n X n square array that do not appear on its border, with the elements of the square array being the numbers from 1..n^2, listed in increasing order by rows.

The programs for A342695, there is no canonical definition to state claims against.
-/

/-! ## A342695.P3619297760482882126

`∑[A014085(n)]-A344316(n+1)`
-/

namespace A342695.P3619297760482882126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344316 (n + 1)

end

end A342695.P3619297760482882126

/-! ## A342695.P975511196713068695

`A038107(n+1)-A344316(n+1)`
-/

namespace A342695.P975511196713068695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A344316 (n + 1)

end

end A342695.P975511196713068695

/-! ## A342695.P9907830676562513116

`A000720((n+1)²)-A344316(n+1)`
-/

namespace A342695.P9907830676562513116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A344316 (n + 1)

end

end A342695.P9907830676562513116

/-! ## A342695.P15712399515288092123

`A230980((n+1)²)-A344316(n+1)`
-/

namespace A342695.P15712399515288092123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n + 1) ^ 2) - A344316 (n + 1)

end

end A342695.P15712399515288092123

/-!
# A342696: a(n) = floor(n/12).

The programs for A342696, the canonical program `A342696.P7585314576565855211` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342696 has offset 0).

The definition of A342696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/12)` (program `A342696.P7585314576565855211`, by `A342696.P7585314576565855211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342696.P7585314576565855211

`floor(n/12)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A342696

/-- `floor(n/12)` -/
def P7585314576565855211.Spec : Prop :=
  ∀ n, P7585314576565855211.a n = A342696 n

theorem P7585314576565855211.correct : P7585314576565855211.Spec := by
  intro n
  simp only [A342696]

end A342696

/-! ## A342696.P9560798680790265623

`(n-n%12)/12`
-/

namespace A342696.P9560798680790265623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 12 : ℕ) : ℤ) : ℚ) / 12

end

end A342696.P9560798680790265623

namespace A342696

/-- `(n-n%12)/12` -/
def P9560798680790265623.Spec : Prop :=
  ∀ n, P9560798680790265623.a n = (A342696 n : ℚ)

end A342696

/-! ## A342696.P5989068610588743617

`∑[char[lcm(12, n+1)]]`
-/

namespace A342696.P5989068610588743617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P5989068610588743617

namespace A342696

/-- `∑[char[lcm(12, n+1)]]` -/
def P5989068610588743617.Spec : Prop :=
  ∀ n, (P5989068610588743617.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P5894426412619240872

`ceil(or(1, n)/12)-1`
-/

namespace A342696.P5894426412619240872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 12⌉ - 1

end

end A342696.P5894426412619240872

namespace A342696

/-- `ceil(or(1, n)/12)-1` -/
def P5894426412619240872.Spec : Prop :=
  ∀ n, P5894426412619240872.a n = A342696 n

end A342696

/-! ## A342696.P15694384608621737439

`comp[13*n]%(n+1)`
-/

namespace A342696.P15694384608621737439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A342696.P15694384608621737439

namespace A342696

/-- `comp[13*n]%(n+1)` -/
def P15694384608621737439.Spec : Prop :=
  ∀ n, (P15694384608621737439.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P9947491212237491277

`∑[char[3*(or(3, n)+1)]]`
-/

namespace A342696.P9947491212237491277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lor 3 n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P9947491212237491277

namespace A342696

/-- `∑[char[3*(or(3, n)+1)]]` -/
def P9947491212237491277.Spec : Prop :=
  ∀ n, (P9947491212237491277.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P16518825561261536085

`∑[char[12*C(n+1, n)]]`
-/

namespace A342696.P16518825561261536085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (n + 1) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P16518825561261536085

namespace A342696

/-- `∑[char[12*C(n+1, n)]]` -/
def P16518825561261536085.Spec : Prop :=
  ∀ n, (P16518825561261536085.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P8495495840455785002

`∑[char[3*(record[xor(3, n)]+1)]]`
-/

namespace A342696.P8495495840455785002
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P8495495840455785002

namespace A342696

/-- `∑[char[3*(record[xor(3, n)]+1)]]` -/
def P8495495840455785002.Spec : Prop :=
  ∀ n, (P8495495840455785002.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P11284726575363278193

`∑[char[12*∑[∑{e}[2-n, #]%2]]]`
-/

namespace A342696.P11284726575363278193
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P11284726575363278193

namespace A342696

/-- `∑[char[12*∑[∑{e}[2-n, #]%2]]]` -/
def P11284726575363278193.Spec : Prop :=
  ∀ n, (P11284726575363278193.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P14568169309330499110

`A008647(or(3, n))`
-/

namespace A342696.P14568169309330499110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Nat.lor 3 n)

end

end A342696.P14568169309330499110

namespace A342696

/-- `A008647(or(3, n))` -/
def P14568169309330499110.Spec : Prop :=
  ∀ n, P14568169309330499110.a n = A342696 n

end A342696

/-! ## A342696.P6889767194927747065

`∑[val(A027642(n), 13)]`
-/

namespace A342696.P6889767194927747065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027642 n).toNat 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P6889767194927747065

namespace A342696

/-- `∑[val(A027642(n), 13)]` -/
def P6889767194927747065.Spec : Prop :=
  ∀ n, (P6889767194927747065.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P10743378482044722115

`n-∑[A168185(n)]`
-/

namespace A342696.P10743378482044722115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P10743378482044722115

namespace A342696

/-- `n-∑[A168185(n)]` -/
def P10743378482044722115.Spec : Prop :=
  ∀ n, P10743378482044722115.a n = A342696 n

end A342696

/-! ## A342696.P1117217298550789810

`A081753(or(1, n))-1`
-/

namespace A342696.P1117217298550789810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Nat.lor 1 n) - 1

end

end A342696.P1117217298550789810

namespace A342696

/-- `A081753(or(1, n))-1` -/
def P1117217298550789810.Spec : Prop :=
  ∀ n, P1117217298550789810.a n = A342696 n

end A342696

/-! ## A342696.P3495762251270788242

`Δ[A221912(abs(1-n))]`
-/

namespace A342696.P3495762251270788242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342696.P3495762251270788242

namespace A342696

/-- `Δ[A221912(abs(1-n))]` -/
def P3495762251270788242.Spec : Prop :=
  ∀ n, P3495762251270788242.a n = A342696 n

end A342696

/-! ## A342696.P13251507003853479919

`∑[char[A008594(n+1)]]`
-/

namespace A342696.P13251507003853479919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P13251507003853479919

namespace A342696

/-- `∑[char[A008594(n+1)]]` -/
def P13251507003853479919.Spec : Prop :=
  ∀ n, (P13251507003853479919.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P15539789501741179764

`∑[char[A109053(n+1)]]`
-/

namespace A342696.P15539789501741179764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109053 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P15539789501741179764

namespace A342696

/-- `∑[char[A109053(n+1)]]` -/
def P15539789501741179764.Spec : Prop :=
  ∀ n, (P15539789501741179764.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P6055158651015834187

`∑[char[A298036(n+1)]]`
-/

namespace A342696.P6055158651015834187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342696.P6055158651015834187

namespace A342696

/-- `∑[char[A298036(n+1)]]` -/
def P6055158651015834187.Spec : Prop :=
  ∀ n, (P6055158651015834187.a n : ℤ) = A342696 n

end A342696

/-! ## A342696.P16216977405964541856

`∑[char[A008594(n)]]-1`
-/

namespace A342696.P16216977405964541856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A342696.P16216977405964541856

namespace A342696

/-- `∑[char[A008594(n)]]-1` -/
def P16216977405964541856.Spec : Prop :=
  ∀ n, P16216977405964541856.a n = A342696 n

end A342696

/-! ## A342696.P12468768486135309458

`∑[char[A109053(n)]]-1`
-/

namespace A342696.P12468768486135309458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A342696.P12468768486135309458

namespace A342696

/-- `∑[char[A109053(n)]]-1` -/
def P12468768486135309458.Spec : Prop :=
  ∀ n, P12468768486135309458.a n = A342696 n

end A342696

/-! ## A342696.P11451391259849711301

`ceil(A097992(n)/2)-1`
-/

namespace A342696.P11451391259849711301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097992 n : ℚ) / 2⌉ - 1

end

end A342696.P11451391259849711301

namespace A342696

/-- `ceil(A097992(n)/2)-1` -/
def P11451391259849711301.Spec : Prop :=
  ∀ n, P11451391259849711301.a n = A342696 n

end A342696

/-!
# A342697: For any number n with binary expansion Sum_{k >= 0} b(k) * 2^k, the binary expansion of a(n) is Sum_{k >= 0} floor((b(k) + b(k+1) + b(k+2))/2) * 2^k.

The programs for A342697, the canonical program `A342697.P17790718882655099389` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342697 has offset 0).

The definition of A342697 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048733, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342697.P17790718882655099389

`floor(A048733(n)/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342697

/-- `floor(A048733(n)/2)` -/
def P17790718882655099389.Spec : Prop :=
  ∀ n, P17790718882655099389.a n = A342697 n

theorem P17790718882655099389.correct : P17790718882655099389.Spec := by
  intro n
  simp only [A342697]

end A342697

/-! ## A342697.P729581247172526142

`floor(A048730(n)/8)`
-/

namespace A342697.P729581247172526142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048730 n : ℚ) / 8⌋

end

end A342697.P729581247172526142

namespace A342697

/-- `floor(A048730(n)/8)` -/
def P729581247172526142.Spec : Prop :=
  ∀ n, P729581247172526142.a n = A342697 n

end A342697

/-! ## A342697.P5897565389016437225

`A004525(A048733(n))`
-/

namespace A342697.P5897565389016437225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048733 n).toNat

end

end A342697.P5897565389016437225

namespace A342697

/-- `A004525(A048733(n))` -/
def P5897565389016437225.Spec : Prop :=
  ∀ n, P5897565389016437225.a n = A342697 n

end A342697

/-! ## A342697.P3590894202897445934

`A004524(or(1, A048733(n)))`
-/

namespace A342697.P3590894202897445934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A048733 n)).toNat

end

end A342697.P3590894202897445934

namespace A342697

/-- `A004524(or(1, A048733(n)))` -/
def P3590894202897445934.Spec : Prop :=
  ∀ n, P3590894202897445934.a n = A342697 n

end A342697

/-! ## A342697.P15273733616771668064

`xor(n, A292272(A003188(n)))`
-/

namespace A342697.P15273733616771668064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292272 (A003188 n).toNat)

end

end A342697.P15273733616771668064

namespace A342697

/-- `xor(n, A292272(A003188(n)))` -/
def P15273733616771668064.Spec : Prop :=
  ∀ n, P15273733616771668064.a n = A342697 n

end A342697

/-! ## A342697.P15633463360740637626

`xor(n, and(A003188(n), A064706(n)))`
-/

namespace A342697.P15633463360740637626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (A003188 n) (A064706 n))

end

end A342697.P15633463360740637626

namespace A342697

/-- `xor(n, and(A003188(n), A064706(n)))` -/
def P15633463360740637626.Spec : Prop :=
  ∀ n, P15633463360740637626.a n = A342697 n

end A342697

/-! ## A342697.P3236081153524971932

`A048733(n)-A004524(A048733(n)+1)`
-/

namespace A342697.P3236081153524971932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n - A004524 (A048733 n + 1).toNat

end

end A342697.P3236081153524971932

namespace A342697

/-- `A048733(n)-A004524(A048733(n)+1)` -/
def P3236081153524971932.Spec : Prop :=
  ∀ n, P3236081153524971932.a n = A342697 n

end A342697

/-! ## A342697.P17913390374523978849

`xor(A004526(n), A048735(A003188(n)))`
-/

namespace A342697.P17913390374523978849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A048735 (A003188 n).toNat)

end

end A342697.P17913390374523978849

namespace A342697

/-- `xor(A004526(n), A048735(A003188(n)))` -/
def P17913390374523978849.Spec : Prop :=
  ∀ n, P17913390374523978849.a n = A342697 n

end A342697

/-! ## A342697.P4010352746045712430

`xor(A002265(n), A229762(A003188(n)))`
-/

namespace A342697.P4010352746045712430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 n) (A229762 (A003188 n).toNat)

end

end A342697.P4010352746045712430

namespace A342697

/-- `xor(A002265(n), A229762(A003188(n)))` -/
def P4010352746045712430.Spec : Prop :=
  ∀ n, P4010352746045712430.a n = A342697 n

end A342697

/-! ## A342697.P10647390423291840416

`A002265(2*A048733(n))`
-/

namespace A342697.P10647390423291840416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A048733 n).toNat

end

end A342697.P10647390423291840416

namespace A342697

/-- `A002265(2*A048733(n))` -/
def P10647390423291840416.Spec : Prop :=
  ∀ n, P10647390423291840416.a n = A342697 n

end A342697

/-! ## A342697.P9693498883935781168

`A002265(A048730(n)/2)`
-/

namespace A342697.P9693498883935781168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A048730 n : ℚ) / 2)).toNat

end

end A342697.P9693498883935781168

namespace A342697

/-- `A002265(A048730(n)/2)` -/
def P9693498883935781168.Spec : Prop :=
  ∀ n, P9693498883935781168.a n = A342697 n

end A342697

/-! ## A342697.P7392800429221542951

`A004524(2*A048733(n))/2`
-/

namespace A342697.P7392800429221542951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A048733 n).toNat : ℚ) / 2

end

end A342697.P7392800429221542951

namespace A342697

/-- `A004524(2*A048733(n))/2` -/
def P7392800429221542951.Spec : Prop :=
  ∀ n, P7392800429221542951.a n = (A342697 n : ℚ)

end A342697

/-! ## A342697.P11800700453858617709

`A002265(A048733(n)+A048733(n)+1)`
-/

namespace A342697.P11800700453858617709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A048733 n + (A048733 n + 1)).toNat

end

end A342697.P11800700453858617709

namespace A342697

/-- `A002265(A048733(n)+A048733(n)+1)` -/
def P11800700453858617709.Spec : Prop :=
  ∀ n, P11800700453858617709.a n = A342697 n

end A342697

/-! ## A342697.P7981704620250657482

`A008619(A048733(n))-A010690(2*n)`
-/

namespace A342697.P7981704620250657482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048733 n).toNat - A010690 (2 * n)

end

end A342697.P7981704620250657482

namespace A342697

/-- `A008619(A048733(n))-A010690(2*n)` -/
def P7981704620250657482.Spec : Prop :=
  ∀ n, P7981704620250657482.a n = A342697 n

end A342697

/-! ## A342697.P12565292359253969109

`floor(A342698(2*n)/4)`
-/

namespace A342697.P12565292359253969109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342698 (2 * n) : ℚ) / 4⌋

end

end A342697.P12565292359253969109

namespace A342697

/-- `floor(A342698(2*n)/4)` -/
def P12565292359253969109.Spec : Prop :=
  ∀ n, P12565292359253969109.a n = A342697 n

end A342697

/-! ## A342697.P13006984266602783457

`A002265(A342698(2*n))`
-/

namespace A342697.P13006984266602783457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A342698 (2 * n)).toNat

end

end A342697.P13006984266602783457

namespace A342697

/-- `A002265(A342698(2*n))` -/
def P13006984266602783457.Spec : Prop :=
  ∀ n, P13006984266602783457.a n = A342697 n

end A342697

/-! ## A342697.P8084407640351814021

`A319571(A048733(n)²)`
-/

namespace A342697.P8084407640351814021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A048733 n ^ 2).toNat

end

end A342697.P8084407640351814021

namespace A342697

/-- `A319571(A048733(n)²)` -/
def P8084407640351814021.Spec : Prop :=
  ∀ n, P8084407640351814021.a n = A342697 n

end A342697

/-!
# A342698: For any number n with binary expansion (b(1), b(2), ..., b(k)), the binary expansion of a(n) is (floor((b(k)+b(1)+b(2))/2), floor((b(1)+b(2)+b(3))/2), ..., floor((b(k-1)+b(k)+b(1))/2)).

The programs for A342698, there is no canonical definition to state claims against.
-/

/-! ## A342698.P10082681154655914515

`A003817(n)-A342700(n)`
-/

namespace A342698.P10082681154655914515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A342700 n

end

end A342698.P10082681154655914515

/-! ## A342698.P18297218071701669933

`A062383(n)-(A342700(n)+1)`
-/

namespace A342698.P18297218071701669933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A342700 n + 1)

end

end A342698.P18297218071701669933

/-! ## A342698.P17585965224040269307

`A092323(2*n+1)-A342700(n)`
-/

namespace A342698.P17585965224040269307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (2 * n + 1) - A342700 n

end

end A342698.P17585965224040269307

/-! ## A342698.P17825623218242117836

`A035327(A062383(n))-A342700(n)`
-/

namespace A342698.P17825623218242117836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A062383 n).toNat - A342700 n

end

end A342698.P17825623218242117836

/-! ## A342698.P10393341562168821517

`xor(A003817(A053644(n)), A342700(n))`
-/

namespace A342698.P10393341562168821517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A053644 n).toNat) (A342700 n)

end

end A342698.P10393341562168821517

/-! ## A342698.P4479897869605904927

`xor(A003817(A122155(n)), A342700(n))`
-/

namespace A342698.P4479897869605904927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A122155 n).toNat) (A342700 n)

end

end A342698.P4479897869605904927

/-! ## A342698.P818765157788919355

`xor(A003817(n)%A033001(n+1), A342700(n))`
-/

namespace A342698.P818765157788919355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A003817 n) (A033001 (n + 1))) (A342700 n)

end

end A342698.P818765157788919355

/-! ## A342698.P7534201953397187

`A086099(2*n)-A342700(n)`
-/

namespace A342698.P7534201953397187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (2 * n) - A342700 n

end

end A342698.P7534201953397187

/-! ## A342698.P7322818729365840601

`A035327(A342700(n)+A062383(n))`
-/

namespace A342698.P7322818729365840601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A342700 n + A062383 n).toNat

end

end A342698.P7322818729365840601

/-! ## A342698.P2567150196943477805

`A035327(or(A062383(n), A342700(n)))`
-/

namespace A342698.P2567150196943477805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (A062383 n) (A342700 n)).toNat

end

end A342698.P2567150196943477805

/-! ## A342698.P1385686956578984275

`A035327(xor(A062383(n), A342700(n)))`
-/

namespace A342698.P1385686956578984275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.xor (A062383 n) (A342700 n)).toNat

end

end A342698.P1385686956578984275

/-!
# A342699: Numbers k such that A342698(k) = k.

The programs for A342699, there is no canonical definition to state claims against.
-/

/-! ## A342699.P1879072135630004910

`eq[n, A342698(n)]`
-/

namespace A342699.P1879072135630004910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342699.P1879072135630004910

/-! ## A342699.P82664536333156403

`record[A342698(and(n, 2*n+1))]`
-/

namespace A342699.P82664536333156403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 (Nat.land n (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342699.P82664536333156403

/-! ## A342699.P17993287578586114538

`record[A342698(gcd(n, A342698(n)))]`
-/

namespace A342699.P17993287578586114538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342698 (Int.gcd (n : ℤ) (A342698 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342699.P17993287578586114538

/-! ## A342699.P3056159052781354536

`eq[A342700(n)+n, A003817(n)]`
-/

namespace A342699.P3056159052781354536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342700 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342699.P3056159052781354536

/-! ## A342699.P1724825405286466485

`record[A342698(n)%A020725(n+1)]`
-/

namespace A342699.P1724825405286466485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342698 n) (A020725 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342699.P1724825405286466485

