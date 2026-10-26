import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153500: First 3 terms coincide with A152756. For n>3, a(n) is the palindromic number formed from concatenation of 1, 0, A147759(n-3), 0, A147759(n-3), 0 and 1.

The programs for A153500, there is no canonical definition to state claims against.
-/

/-! ## A153500.P12368986149727124082

`A007088(A153499(n+1))`
-/

namespace A153500.P12368986149727124082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A153499 (n + 1)).toNat

end

end A153500.P12368986149727124082

/-! ## A153500.P3533072160318431841

`A215256(or(1, A153499(n+1)))`
-/

namespace A153500.P3533072160318431841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.lor 1 (A153499 (n + 1))).toNat

end

end A153500.P3533072160318431841

/-! ## A153500.P5509855569367471346

`A305989(or(1, A153499(n+1)))`
-/

namespace A153500.P5509855569367471346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A153499 (n + 1))).toNat

end

end A153500.P5509855569367471346

/-!
# A153501: Abundant numbers n such that n/(sigma(n)-2n) is an integer.

The programs for A153501, there is no canonical definition to state claims against.
-/

/-! ## A153501.P6295077922872827878

`∩[A097498(n+1), A383148(n+1)]`
-/

namespace A153501.P6295077922872827878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153501.P6295077922872827878

/-! ## A153501.P1180761980250338287

`filter[A097498(n+1), A294936(#)]`
-/

namespace A153501.P1180761980250338287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A153501.P1180761980250338287

/-! ## A153501.P12932311426163426634

`∩[A005101(n+1), A097498(n+1)]`
-/

namespace A153501.P12932311426163426634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153501.P12932311426163426634

/-! ## A153501.P1352464267017357535

`∩[A005835(n+1), A097498(n+1)]`
-/

namespace A153501.P1352464267017357535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153501.P1352464267017357535

/-!
# A153502: Primes of the form 3*n^2 - 3*n + 11.

The programs for A153502, the canonical program `A153502.P6536647041228335970` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153502 has offset 1).

The definition of A153502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153502.P6536647041228335970

`p?[∑[6*n]+11]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153502

/-- `p?[∑[6*n]+11]` -/
def P6536647041228335970.Spec : Prop :=
  ∀ n, (P6536647041228335970.a n : ℤ) = A153502 (n + 1)

theorem P6536647041228335970.correct : P6536647041228335970.Spec := by
  intro n
  simp only [A153502, Nat.add_sub_cancel]

end A153502

/-! ## A153502.P16906233441047858000

`or(1, p?[a(n-1)+6*n])` with `a(0)=11`
-/

namespace A153502.P16906233441047858000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A153502.P16906233441047858000

namespace A153502

/-- `or(1, p?[a(n-1)+6*n])` -/
def P16906233441047858000.Spec : Prop :=
  ∀ n, (P16906233441047858000.a n : ℤ) = A153502 (n + 1)

end A153502

/-! ## A153502.P3543747188271694017

`or(1, p?[7*n-(n-a(n-1))])` with `a(0)=11`
-/

namespace A153502.P3543747188271694017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  (7 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A153502.P3543747188271694017

namespace A153502

/-- `or(1, p?[7*n-(n-a(n-1))])` -/
def P3543747188271694017.Spec : Prop :=
  ∀ n, P3543747188271694017.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P7833192743978642240

`or(1, p?[A096777(n+1)+9])`
-/

namespace A153502.P7833192743978642240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A153502.P7833192743978642240

namespace A153502

/-- `or(1, p?[A096777(n+1)+9])` -/
def P7833192743978642240.Spec : Prop :=
  ∀ n, P7833192743978642240.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P6607161300547380184

`or(1, p?[6*A000124(n)+5])`
-/

namespace A153502.P6607161300547380184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000124 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A153502.P6607161300547380184

namespace A153502

/-- `or(1, p?[6*A000124(n)+5])` -/
def P6607161300547380184.Spec : Prop :=
  ∀ n, P6607161300547380184.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P3347707230912699631

`A000007(n+1)+p?[A096777(n+1)+9]`
-/

namespace A153502.P3347707230912699631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P3347707230912699631

namespace A153502

/-- `A000007(n+1)+p?[A096777(n+1)+9]` -/
def P3347707230912699631.Spec : Prop :=
  ∀ n, P3347707230912699631.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P16953732898456078552

`A007318(C(2, n))*p?[A096777(n+1)+9]`
-/

namespace A153502.P16953732898456078552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P16953732898456078552

namespace A153502

/-- `A007318(C(2, n))*p?[A096777(n+1)+9]` -/
def P16953732898456078552.Spec : Prop :=
  ∀ n, P16953732898456078552.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P7323803423710251211

`p?[A096777(n+1)+9]/A007318(C(3, n))`
-/

namespace A153502.P7323803423710251211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A153502.P7323803423710251211

namespace A153502

/-- `p?[A096777(n+1)+9]/A007318(C(3, n))` -/
def P7323803423710251211.Spec : Prop :=
  ∀ n, P7323803423710251211.a n = (A153502 (n + 1) : ℚ)

end A153502

/-! ## A153502.P16295204308091474577

`A007318(C(2, n))*p?[6*A000124(n)+5]`
-/

namespace A153502.P16295204308091474577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000124 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P16295204308091474577

namespace A153502

/-- `A007318(C(2, n))*p?[6*A000124(n)+5]` -/
def P16295204308091474577.Spec : Prop :=
  ∀ n, P16295204308091474577.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P12796627625384137914

`p?[A096777(n+1)+9]%A000041(n+13)`
-/

namespace A153502.P12796627625384137914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000041 (n + 13))

end

end A153502.P12796627625384137914

namespace A153502

/-- `p?[A096777(n+1)+9]%A000041(n+13)` -/
def P12796627625384137914.Spec : Prop :=
  ∀ n, P12796627625384137914.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P8263565917278913692

`A014963(6*(n+1))*p?[A096777(n+1)+9]`
-/

namespace A153502.P8263565917278913692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P8263565917278913692

namespace A153502

/-- `A014963(6*(n+1))*p?[A096777(n+1)+9]` -/
def P8263565917278913692.Spec : Prop :=
  ∀ n, P8263565917278913692.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P14419390842131779072

`gcd(2, A000040(n+2))*p?[6*A000124(n)+5]`
-/

namespace A153502.P14419390842131779072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000124 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P14419390842131779072

namespace A153502

/-- `gcd(2, A000040(n+2))*p?[6*A000124(n)+5]` -/
def P14419390842131779072.Spec : Prop :=
  ∀ n, P14419390842131779072.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P2991553459360489938

`A007318(gcd(n+1, 1-n))*p?[A096777(n+1)+9]`
-/

namespace A153502.P2991553459360489938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.gcd (n + 1 : ℤ) (1 - (n : ℤ))) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P2991553459360489938

namespace A153502

/-- `A007318(gcd(n+1, 1-n))*p?[A096777(n+1)+9]` -/
def P2991553459360489938.Spec : Prop :=
  ∀ n, P2991553459360489938.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P12185352070183720824

`A008683(A014963(n+1))²*p?[6*A000124(n)+5]`
-/

namespace A153502.P12185352070183720824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000124 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P12185352070183720824

namespace A153502

/-- `A008683(A014963(n+1))²*p?[6*A000124(n)+5]` -/
def P12185352070183720824.Spec : Prop :=
  ∀ n, P12185352070183720824.a n = A153502 (n + 1)

end A153502

/-! ## A153502.P4687206347312727928

`A007318(A020639(2*(n+1)))*p?[A096777(n+1)+9]`
-/

namespace A153502.P4687206347312727928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153502.P4687206347312727928

namespace A153502

/-- `A007318(A020639(2*(n+1)))*p?[A096777(n+1)+9]` -/
def P4687206347312727928.Spec : Prop :=
  ∀ n, P4687206347312727928.a n = A153502 (n + 1)

end A153502

/-!
# A153503: Primes p such that 2^(p-1)+3 is prime.

The programs for A153503, there is no canonical definition to state claims against.
-/

/-! ## A153503.P14191510847707269863

`p?[A057732(n+1)+1]`
-/

namespace A153503.P14191510847707269863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057732 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153503.P14191510847707269863

/-! ## A153503.P8995524460925987090

`record[A020639(A057732(n+1)+1)]`
-/

namespace A153503.P8995524460925987090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153503.P8995524460925987090

/-! ## A153503.P2941139855339436931

`record[A058977(A057732(n+1))]`
-/

namespace A153503.P2941139855339436931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (A057732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153503.P2941139855339436931

/-! ## A153503.P195853367444128966

`record[A014963(A057732(n+1)+1)]`
-/

namespace A153503.P195853367444128966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A057732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153503.P195853367444128966

/-! ## A153503.P5865937319839614907

`record[A089026(A057732(n+1)+1)]`
-/

namespace A153503.P5865937319839614907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A057732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153503.P5865937319839614907

/-!
# A153504: Numbers n such that n^8+(n+1)^8 is a prime.

The programs for A153504, there is no canonical definition to state claims against.
-/

/-! ## A153504.P9786848701166046788

`A168149(n+1)-1`
-/

namespace A153504.P9786848701166046788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168149 (n + 1) - 1

end

end A153504.P9786848701166046788

/-! ## A153504.P2704521876368048116

`eq[n+2, A244932(n+1)]+1`
-/

namespace A153504.P2704521876368048116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153504.P2704521876368048116

/-! ## A153504.P12600193862998352886

`A023443(A168149(n+1))`
-/

namespace A153504.P12600193862998352886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A168149 (n + 1)).toNat

end

end A153504.P12600193862998352886

/-! ## A153504.P3897708149012271272

`eq[n+1, A244932(A028310(n))]`
-/

namespace A153504.P3897708149012271272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153504.P3897708149012271272

/-! ## A153504.P14024137488900599572

`eq[n+1, A244932(A000007(n)+n)]`
-/

namespace A153504.P14024137488900599572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153504.P14024137488900599572

/-! ## A153504.P8033924400831408052

`lt[A244932(A028310(n)), A020725(n+1)]`
-/

namespace A153504.P8033924400831408052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153504.P8033924400831408052

/-! ## A153504.P17206688691834926068

`lt[A244932(n+1), A020725(A020725(n+1))]+1`
-/

namespace A153504.P17206688691834926068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A153504.P17206688691834926068

/-! ## A153504.P1553078527645626768

`A028310(A168149(n+1))+A008683(A053998(n))`
-/

namespace A153504.P1553078527645626768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168149 (n + 1)).toNat + A008683 (A053998 n).toNat

end

end A153504.P1553078527645626768

/-!
# A153507: Primes p such that 2*p^3 + 3 is also prime.

The programs for A153507, there is no canonical definition to state claims against.
-/

/-! ## A153507.P16514572171982759381

`p?[∑[A216195(A183884(n+1))]]`
-/

namespace A153507.P16514572171982759381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216195 (A183884 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153507.P16514572171982759381

/-!
# A153508: Sarrus numbers A001567 that are not Carmichael numbers A002997.

The programs for A153508, there is no canonical definition to state claims against.
-/

/-! ## A153508.P7012120509110945554

`∩[A001567(n+1), A290960(n+1)]`
-/

namespace A153508.P7012120509110945554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153508.P7012120509110945554

/-! ## A153508.P5138376335491807595

`A001567(A377436(n+1)%A109226(∑[n+1]))`
-/

namespace A153508.P5138376335491807595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (Int.tmod (A377436 (n + 1)) (A109226 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A153508.P5138376335491807595

/-! ## A153508.P4838951784681100170

`A001567(A377436(n+1)^A250665(n))`
-/

namespace A153508.P4838951784681100170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.roundAway ((A377436 (n + 1) : ℚ) ^ (A250665 n : ℤ))).toNat

end

end A153508.P4838951784681100170

/-! ## A153508.P18041231232699498399

`A001567(eq[A205295(n), A355607(n+4)])`
-/

namespace A153508.P18041231232699498399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A153508.P18041231232699498399

/-!
# A153509: Period 9: repeat [6, 6, 6, 3, 3, 3, 0, 0, 0].

The programs for A153509, the canonical program `A153509.P2606442898540075334` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153509 has offset 0).

The definition of A153509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153509.P2606442898540075334

`(6*C(n+3, 3))%9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153509

/-- `(6*C(n+3, 3))%9` -/
def P2606442898540075334.Spec : Prop :=
  ∀ n, (P2606442898540075334.a n : ℤ) = A153509 n

theorem P2606442898540075334.correct : P2606442898540075334.Spec := by
  intro n
  simp only [A153509]

end A153509

/-!
# A153511: a(n) = 4 * A051189(n).

The programs for A153511, the canonical program `A153511.P12346412399723121567` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153511 has offset 0).

The definition of A153511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153511.P696099514827410838

`4*n!*8^n`
-/

namespace A153511.P696099514827410838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.factorial n * 8 ^ n

end

end A153511.P696099514827410838

namespace A153511

/-- `4*n!*8^n` -/
def P696099514827410838.Spec : Prop :=
  ∀ n, (P696099514827410838.a n : ℤ) = A153511 n

theorem P696099514827410838.correct : P696099514827410838.Spec := by
  intro n
  simp only [A153511, Nat.add_sub_cancel, A153511.P696099514827410838.a, A153511.P12346412399723121567.a, A051189, A051189.P16387431370213277791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153511

/-! ## A153511.P12346412399723121567

`4*A051189(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153511

/-- `4*A051189(n)` -/
def P12346412399723121567.Spec : Prop :=
  ∀ n, P12346412399723121567.a n = A153511 n

theorem P12346412399723121567.correct : P12346412399723121567.Spec := by
  intro n
  simp only [A153511]

end A153511

/-! ## A153511.P13339019883907458658

`∏[4*floor(2/acot(n))]`
-/

namespace A153511.P13339019883907458658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153511.P13339019883907458658

namespace A153511

/-- `∏[4*floor(2/acot(n))]` -/
def P13339019883907458658.Spec : Prop :=
  ∀ n, P13339019883907458658.a n = A153511 n

end A153511

/-! ## A153511.P13372455014733890761

`∏[a(n-1)+8]` with `a(0)=4, a(1)=8`
-/

namespace A153511.P13372455014733890761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153511.P13372455014733890761

namespace A153511

/-- `∏[a(n-1)+8]` -/
def P13372455014733890761.Spec : Prop :=
  ∀ n, (P13372455014733890761.a n : ℤ) = A153511 n

end A153511

/-! ## A153511.P1455828401700491566

`8*n*a(n-1)` with `a(0)=4`
-/

namespace A153511.P1455828401700491566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  8 * (n * a (n - 1))

end

end A153511.P1455828401700491566

namespace A153511

/-- `8*n*a(n-1)` -/
def P1455828401700491566.Spec : Prop :=
  ∀ n, (P1455828401700491566.a n : ℤ) = A153511 n

end A153511

/-!
# A153512: Triangle T(n,m) = (A006882(2*n + 1))^2 / ( A006882(2*m+1) * A006882(2*n-2*m+1) ).

The programs for A153512, the canonical program `A153512.P16980830928248728390` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153512 has offset 0).

The definition of A153512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153512.P16980830928248728390

`A006882(2*row(n)+1)²/(A006882(2*col(n)+1)*A006882(2*row(n)-2*col(n)+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153512

/-- `A006882(2*row(n)+1)²/(A006882(2*col(n)+1)*A006882(2*row(n)-2*col(n)+1))` -/
def P16980830928248728390.Spec : Prop :=
  ∀ n, P16980830928248728390.a n = (A153512 n : ℚ)

end A153512

/-! ## A153512.P4965303516718533412

`A181996(A176159(n))`
-/

namespace A153512.P4965303516718533412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181996 (A176159 n).toNat

end

end A153512.P4965303516718533412

namespace A153512

/-- `A181996(A176159(n))` -/
def P4965303516718533412.Spec : Prop :=
  ∀ n, P4965303516718533412.a n = A153512 n

end A153512

/-! ## A153512.P1563222865364102117

`A368729(floor(abs(A183622(n+1)-1)/5)+1)`
-/

namespace A153512.P1563222865364102117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (⌊(|A183622 (n + 1) - 1| : ℚ) / 5⌋ + 1).toNat

end

end A153512.P1563222865364102117

namespace A153512

/-- `A368729(floor(abs(A183622(n+1)-1)/5)+1)` -/
def P1563222865364102117.Spec : Prop :=
  ∀ n, P1563222865364102117.a n = A153512 n

end A153512

/-!
# A153513: Composite numbers k such that 2^k-2 and 3^k-3 are both divisible by k and k is not a Carmichael number (A002997).

The programs for A153513, there is no canonical definition to state claims against.
-/

/-! ## A153513.P11946169470637536503

`∩[A127073(n+1), A153508(n+1)]`
-/

namespace A153513.P11946169470637536503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P11946169470637536503

/-! ## A153513.P9458917371048662586

`∩[A122780(n+1), A153508(n+1)]`
-/

namespace A153513.P9458917371048662586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P9458917371048662586

/-! ## A153513.P3513553337312852573

`∩[A001567(n+1), A153514(n+1)]`
-/

namespace A153513.P3513553337312852573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P3513553337312852573

/-! ## A153513.P5841567282899072507

`∩[A127073(n+1), A153514(n+1)]`
-/

namespace A153513.P5841567282899072507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P5841567282899072507

/-! ## A153513.P3741441983093112419

`∩[A153508(n+1), A153514(n+1)]`
-/

namespace A153513.P3741441983093112419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P3741441983093112419

/-! ## A153513.P2882639061354926085

`∩[A122783(n+1), A153508(n+1)]`
-/

namespace A153513.P2882639061354926085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153513.P2882639061354926085

/-!
# A153514: Terms of A122780 which are not Carmichael numbers A002997.

The programs for A153514, there is no canonical definition to state claims against.
-/

/-! ## A153514.P5851585699165059602

`A122780(record[A349258(n+1)+1])`
-/

namespace A153514.P5851585699165059602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153514.P5851585699165059602

/-! ## A153514.P7509617479638298281

`A122780(A047304(n+1)%A174217(2*(n+2)))`
-/

namespace A153514.P7509617479638298281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (Int.tmod (A047304 (n + 1)) (A174217 (2 * (n + 2)))).toNat

end

end A153514.P7509617479638298281

/-! ## A153514.P13866863418414137263

`A122780(A302478(n+1)%A085809(3*n+2))`
-/

namespace A153514.P13866863418414137263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (Int.tmod (A302478 (n + 1)) (A085809 (3 * n + 2))).toNat

end

end A153514.P13866863418414137263

/-!
# A153515: Terms of A122782 which are not Carmichael numbers A002997.

The programs for A153515, there is no canonical definition to state claims against.
-/

/-! ## A153515.P12817170503412536949

`A122782(lt[A301629(n), A152999(3*n+2)]+1)`
-/

namespace A153515.P12817170503412536949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152999 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A153515.P12817170503412536949

/-! ## A153515.P5093563857486945940

`A122782(lt[A122789(n), 2*n/gcd(8, n+4)])`
-/

namespace A153515.P5093563857486945940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A153515.P5093563857486945940

/-! ## A153515.P17387001278264704697

`record[gcd(A122782(n+1), A343344(n))]`
-/

namespace A153515.P17387001278264704697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122782 (n + 1)) (A343344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153515.P17387001278264704697

/-!
# A153516: Triangle T(n,k,p,q,j) = T(n-1,k,p,q,j) + T(n-1,k-1,p,q,j) + (p*j+q)*prime(j)*T(n-2,k-1,p,q,j) with T(2,k,p,q,j) = prime(j) and (p,q,j) = (0,1,2), read by rows.

The programs for A153516, there is no canonical definition to state claims against.
-/

/-! ## A153516.P13735719951417856383

`A167975(A153283(n))`
-/

namespace A153516.P13735719951417856383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167975 (A153283 n).toNat

end

end A153516.P13735719951417856383

/-! ## A153516.P5620841273836802601

`A167975(A153288(n))`
-/

namespace A153516.P5620841273836802601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167975 (A153288 n).toNat

end

end A153516.P5620841273836802601

/-! ## A153516.P12930320462971340814

`A167975(A153311(n))`
-/

namespace A153516.P12930320462971340814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167975 (A153311 n).toNat

end

end A153516.P12930320462971340814

/-! ## A153516.P5638170228397203424

`A167975(A153312(n))`
-/

namespace A153516.P5638170228397203424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167975 (A153312 n).toNat

end

end A153516.P5638170228397203424

/-! ## A153516.P10658618873399765187

`A153310(n)-A335681(A176560(n))`
-/

namespace A153516.P10658618873399765187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153310 n - A335681 (A176560 n).toNat

end

end A153516.P10658618873399765187

/-!
# A153517: Floor of reciprocal of Zeta'(n), where Zeta'(n) is the derivative of Riemann zeta function.

The programs for A153517, there is no canonical definition to state claims against.
-/

/-! ## A153517.P3359802147619797565

`∑[-A330000(A018001(n))]`
-/

namespace A153517.P3359802147619797565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A330000 (A018001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153517.P3359802147619797565

/-!
# A153518: Triangular T(n,k) = T(n-1, k) + T(n-1, k-1) + 5*T(n-2, k-1), read by rows.

The programs for A153518, the canonical program `A153518.P5442369868311392207` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153518 has offset 1).

The definition of A153518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k)+T(n-1,k-1)+5*T(n-2,k-1)` (program `A153518.P5442369868311392207`, by `A153518.P5442369868311392207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153518.P5442369868311392207

`T(n-1,k)+T(n-1,k-1)+5*T(n-2,k-1)` with `a(0)=2, a(1)=5, a(2)=5, a(3)=2, a(4)=46, a(5)=2, a(6)=2, a(7)=123, a(8)=123`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153518

/-- `T(n-1,k)+T(n-1,k-1)+5*T(n-2,k-1)` -/
def P5442369868311392207.Spec : Prop :=
  ∀ n, (P5442369868311392207.a n : ℤ) = A153518 (n + 1)

theorem P5442369868311392207.correct : P5442369868311392207.Spec := by
  intro n
  simp only [A153518, Nat.add_sub_cancel]

end A153518

/-! ## A153518.P837608681747651941

`A153648(n+1)-A081157(A201384(n+1))`
-/

namespace A153518.P837608681747651941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153648 (n + 1) - A081157 (A201384 (n + 1)).toNat

end

end A153518.P837608681747651941

namespace A153518

/-- `A153648(n+1)-A081157(A201384(n+1))` -/
def P837608681747651941.Spec : Prop :=
  ∀ n, P837608681747651941.a n = A153518 (n + 1)

end A153518

/-! ## A153518.P10722875803083836824

`A153648(n+1)-A347323(A324094(n+1))`
-/

namespace A153518.P10722875803083836824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153648 (n + 1) - A347323 (A324094 (n + 1)).toNat

end

end A153518.P10722875803083836824

namespace A153518

/-- `A153648(n+1)-A347323(A324094(n+1))` -/
def P10722875803083836824.Spec : Prop :=
  ∀ n, P10722875803083836824.a n = A153518 (n + 1)

end A153518

/-! ## A153518.P6316142491042575919

`A153354(A024653(n))`
-/

namespace A153518.P6316142491042575919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153354 (A024653 n).toNat

end

end A153518.P6316142491042575919

namespace A153518

/-- `A153354(A024653(n))` -/
def P6316142491042575919.Spec : Prop :=
  ∀ n, P6316142491042575919.a n = A153518 (n + 1)

end A153518

/-! ## A153518.P1886845820210340571

`A153354(A024654(n))`
-/

namespace A153518.P1886845820210340571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153354 (A024654 n).toNat

end

end A153518.P1886845820210340571

namespace A153518

/-- `A153354(A024654(n))` -/
def P1886845820210340571.Spec : Prop :=
  ∀ n, P1886845820210340571.a n = A153518 (n + 1)

end A153518

/-!
# A153520: Triangle T(n,k) = T(n-1, k) + T(n-1, k-1) + 7*T(n-2, k-1), read by rows.

The programs for A153520, the canonical program `A153520.P17964247520845104767` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153520 has offset 1).

The definition of A153520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k)+T(n-1,k-1)+7*T(n-2,k-1)` (program `A153520.P17964247520845104767`, by `A153520.P17964247520845104767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153520.P17964247520845104767

`T(n-1,k)+T(n-1,k-1)+7*T(n-2,k-1)` with `a(0)=2, a(1)=7, a(2)=7, a(3)=2, a(4)=94, a(5)=2, a(6)=2, a(7)=341, a(8)=341`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153520

/-- `T(n-1,k)+T(n-1,k-1)+7*T(n-2,k-1)` -/
def P17964247520845104767.Spec : Prop :=
  ∀ n, (P17964247520845104767.a n : ℤ) = A153520 (n + 1)

theorem P17964247520845104767.correct : P17964247520845104767.Spec := by
  intro n
  simp only [A153520, Nat.add_sub_cancel]

end A153520

/-! ## A153520.P5310722617306013468

`A153649(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A153520.P5310722617306013468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153649 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A153520.P5310722617306013468

namespace A153520

/-- `A153649(C(lt[0, ∏{digits}[n, (1-#)²]], n))` -/
def P5310722617306013468.Spec : Prop :=
  ∀ n, P5310722617306013468.a n = A153520 (n + 1)

end A153520

/-! ## A153520.P9528899327164488088

`A153649(A032555(n+1))`
-/

namespace A153520.P9528899327164488088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153649 (A032555 (n + 1)).toNat

end

end A153520.P9528899327164488088

namespace A153520

/-- `A153649(A032555(n+1))` -/
def P9528899327164488088.Spec : Prop :=
  ∀ n, P9528899327164488088.a n = A153520 (n + 1)

end A153520

/-! ## A153520.P1095523706454672675

`A153649(A032557(n+1))`
-/

namespace A153520.P1095523706454672675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153649 (A032557 (n + 1)).toNat

end

end A153520.P1095523706454672675

namespace A153520

/-- `A153649(A032557(n+1))` -/
def P1095523706454672675.Spec : Prop :=
  ∀ n, P1095523706454672675.a n = A153520 (n + 1)

end A153520

/-! ## A153520.P3927215567503262974

`A153649(A032559(n+1))`
-/

namespace A153520.P3927215567503262974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153649 (A032559 (n + 1)).toNat

end

end A153520.P3927215567503262974

namespace A153520

/-- `A153649(A032559(n+1))` -/
def P3927215567503262974.Spec : Prop :=
  ∀ n, P3927215567503262974.a n = A153520 (n + 1)

end A153520

/-!
# A153521: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + 11*T(n-2, k-1), read by rows.

The programs for A153521, there is no canonical definition to state claims against.
-/

/-! ## A153521.P13887600697108427897

`A153650(∑[(val(n+1, 10)+1)^16])`
-/

namespace A153521.P13887600697108427897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 10 + 1) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153650 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153521.P13887600697108427897

/-! ## A153521.P14033213146699032844

`A153650(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A153521.P14033213146699032844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153650 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A153521.P14033213146699032844

/-! ## A153521.P6672123308779126208

`A153650(n+1)^(val(n+1, 10)+1)^16`
-/

namespace A153521.P6672123308779126208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153650 (n + 1) ^ (SequenceMachineLib.valuation (n + 1) 10 + 1) ^ 16

end

end A153521.P6672123308779126208

/-! ## A153521.P11505599120431284369

`A153650(A032555(n+1))`
-/

namespace A153521.P11505599120431284369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153650 (A032555 (n + 1)).toNat

end

end A153521.P11505599120431284369

/-! ## A153521.P13670480402038418853

`A153650(A032557(n+1))`
-/

namespace A153521.P13670480402038418853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153650 (A032557 (n + 1)).toNat

end

end A153521.P13670480402038418853

/-!
# A153523: Number of planar n X n X n binary triangular grids with no more than 2 ones in any 3 X 3 X 3 subtriangle.

The programs for A153523, there is no canonical definition to state claims against.
-/

/-! ## A153523.P17653151935174209931

`A008926(n+1)+∑[n²]`
-/

namespace A153523.P17653151935174209931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008926 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153523.P17653151935174209931

/-!
# A153524: Number of planar n X n X n binary triangular grids with no more than 3 ones in any 3 X 3 X 3 subtriangle.

The programs for A153524, there is no canonical definition to state claims against.
-/

/-! ## A153524.P7425437357812075145

`(∑[n]+1)*A095289(n!)`
-/

namespace A153524.P7425437357812075145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A095289 (Nat.factorial n)

end

end A153524.P7425437357812075145

/-!
# A153525: Number of planar n X n X n binary triangular grids with no more than 4 ones in any 3 X 3 X 3 subtriangle.

The programs for A153525, there is no canonical definition to state claims against.
-/

/-! ## A153525.P16611769137240811510

`A225087(8*a(n-2))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A153525.P16611769137240811510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A225087 (8 * a (n - 2)).toNat

end

end A153525.P16611769137240811510

/-!
# A153526: Number of planar n X n X n binary triangular grids with no more than 5 ones in any 3 X 3 X 3 subtriangle.

The programs for A153526, there is no canonical definition to state claims against.
-/

/-! ## A153526.P8789474356705059217

`A028310(A153554(n))`
-/

namespace A153526.P8789474356705059217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153554 n).toNat

end

end A153526.P8789474356705059217

/-!
# A153527: Number of planar n X n X n binary triangular grids with no more than 2 ones in any 4 X 4 X 4 subtriangle.

The programs for A153527, there is no canonical definition to state claims against.
-/

/-! ## A153527.P583589616410187356

`A322678(A289529(n)+1)`
-/

namespace A153527.P583589616410187356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322678 (A289529 n + 1).toNat

end

end A153527.P583589616410187356

/-! ## A153527.P8247846210134426448

`∑[∑[A258802(A099963(2*n))]+1]`
-/

namespace A153527.P8247846210134426448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258802 (A099963 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153527.P8247846210134426448

/-!
# A153528: Number of planar n X n X n binary triangular grids with no more than 3 ones in any 4 X 4 X 4 subtriangle.

The programs for A153528, there is no canonical definition to state claims against.
-/

/-! ## A153528.P393681413355583159

`A153557(n)-A184955((1-n)²)`
-/

namespace A153528.P393681413355583159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153557 n - A184955 ((1 - (n : ℤ)) ^ 2).toNat

end

end A153528.P393681413355583159

/-!
# A153529: Number of planar n X n X n binary triangular grids with no more than 4 ones in any 4 X 4 X 4 subtriangle.

The programs for A153529, there is no canonical definition to state claims against.
-/

/-! ## A153529.P313647242585264919

`A364464(A008209(n))`
-/

namespace A153529.P313647242585264919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364464 (A008209 n).toNat

end

end A153529.P313647242585264919

/-!
# A153530: Number of planar n X n X n binary triangular grids with no more than 5 ones in any 4 X 4 X 4 subtriangle.

The programs for A153530, there is no canonical definition to state claims against.
-/

/-! ## A153530.P17104328156488099681

`A153567(n^gcd(C(n, 2), xor(1, n)))`
-/

namespace A153530.P17104328156488099681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153567 (n ^ Nat.gcd (Nat.choose n 2) (Nat.xor 1 n))

end

end A153530.P17104328156488099681

/-!
# A153532: Number of planar n X n X n binary triangular grids with no more than 7 ones in any 4 X 4 X 4 subtriangle.

The programs for A153532, there is no canonical definition to state claims against.
-/

/-! ## A153532.P6247102985747032367

`∑[floor(2*(n^gcd(5, n))!²*acot(1))]`
-/

namespace A153532.P6247102985747032367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.factorial (n ^ Nat.gcd 5 n) ^ 2 : ℝ) * SequenceMachineLib.acot (1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153532.P6247102985747032367

/-!
# A153533: Number of planar n X n X n binary triangular grids with no more than 8 ones in any 4 X 4 X 4 subtriangle.

The programs for A153533, there is no canonical definition to state claims against.
-/

/-! ## A153533.P17338261950214256088

`A000027(A153562(n))`
-/

namespace A153533.P17338261950214256088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153562 n).toNat

end

end A153533.P17338261950214256088

/-!
# A153534: Number of planar n X n X n binary triangular grids with no more than 9 ones in any 4 X 4 X 4 subtriangle.

The programs for A153534, there is no canonical definition to state claims against.
-/

/-! ## A153534.P6585980774934569547

`A153563(C(n, (n+1)/∏{p}[n+1, #]))`
-/

namespace A153534.P6585980774934569547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153563 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A153534.P6585980774934569547

/-! ## A153534.P10784681274305616191

`A153563(C(n, ∏{e}[n+1, floor(#/2)+1]))`
-/

namespace A153534.P10784681274305616191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153563 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)).toNat)

end

end A153534.P10784681274305616191

/-! ## A153534.P11045956377342745044

`A153563(A282130(n+1)+n)`
-/

namespace A153534.P11045956377342745044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153563 (A282130 (n + 1) + (n : ℤ)).toNat

end

end A153534.P11045956377342745044

/-!
# A153535: Number of planar n X n X n binary triangular grids with no more than 1 one in any 5 X 5 X 5 subtriangle.

The programs for A153535, there is no canonical definition to state claims against.
-/

/-! ## A153535.P17954996450522002878

`A146391(A146366(n+1))+∑[n]`
-/

namespace A153535.P17954996450522002878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146391 (A146366 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153535.P17954996450522002878

/-! ## A153535.P8009512807476329956

`A151552(A053625(n))+A000217(n)`
-/

namespace A153535.P8009512807476329956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A053625 n).toNat + A000217 n

end

end A153535.P8009512807476329956

/-! ## A153535.P4845337158343911819

`A282289(A094373(n))+A000124(n)`
-/

namespace A153535.P4845337158343911819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 (A094373 n).toNat + A000124 n

end

end A153535.P4845337158343911819

/-! ## A153535.P14722671513830041658

`A256544(A159711(n))+A000217(n)`
-/

namespace A153535.P14722671513830041658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256544 (A159711 n).toNat + A000217 n

end

end A153535.P14722671513830041658

/-!
# A153536: Number of planar n X n X n binary triangular grids with no more than 2 ones in any 5 X 5 X 5 subtriangle.

The programs for A153536, there is no canonical definition to state claims against.
-/

/-! ## A153536.P13707903167296409835

`A077610(A330663(n))+A002817(n)`
-/

namespace A153536.P13707903167296409835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (A330663 n).toNat + A002817 n

end

end A153536.P13707903167296409835

/-! ## A153536.P9834504703288677102

`∑{d}[2^∑[n], log2(#)]+1`
-/

namespace A153536.P9834504703288677102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ) + 1

end

end A153536.P9834504703288677102

/-!
# A153537: Number of planar n X n X n binary triangular grids with no more than 3 ones in any 5 X 5 X 5 subtriangle.

The programs for A153537, there is no canonical definition to state claims against.
-/

/-! ## A153537.P14646517680298295264

`A389896(2^∑[n])`
-/

namespace A153537.P14646517680298295264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389896 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A153537.P14646517680298295264

/-! ## A153537.P9796280676518577151

`A000125(∑[n]^C(n, floor(n/6)))`
-/

namespace A153537.P9796280676518577151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.choose n ⌊(n : ℚ) / 6⌋.toNat)

end

end A153537.P9796280676518577151

/-!
# A153538: Number of planar n X n X n binary triangular grids with no more than 4 ones in any 5 X 5 X 5 subtriangle.

The programs for A153538, there is no canonical definition to state claims against.
-/

/-! ## A153538.P15580733026464185910

`A028310(A153566(n))`
-/

namespace A153538.P15580733026464185910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153566 n).toNat

end

end A153538.P15580733026464185910

/-! ## A153538.P9096895923079012637

`A026741(2*A153566(n))`
-/

namespace A153538.P9096895923079012637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A153566 n).toNat

end

end A153538.P9096895923079012637

/-!
# A153539: Number of planar n X n X n binary triangular grids with no more than 5 ones in any 5 X 5 X 5 subtriangle.

The programs for A153539, there is no canonical definition to state claims against.
-/

/-! ## A153539.P14552466310980438687

`A028310(A153567(n))`
-/

namespace A153539.P14552466310980438687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153567 n).toNat

end

end A153539.P14552466310980438687

/-! ## A153539.P16693427456664863590

`A004719(A006261(∑[n]))`
-/

namespace A153539.P16693427456664863590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A006261 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153539.P16693427456664863590

/-!
# A153541: Number of planar n X n X n binary triangular grids with no more than 7 ones in any 5 X 5 X 5 subtriangle.

The programs for A153541, there is no canonical definition to state claims against.
-/

/-! ## A153541.P16298226863927367956

`A000027(A153569(n))`
-/

namespace A153541.P16298226863927367956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153569 n).toNat

end

end A153541.P16298226863927367956

/-! ## A153541.P12895762110332830404

`A245092(A008860(∑[n]))`
-/

namespace A153541.P12895762110332830404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A008860 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153541.P12895762110332830404

/-!
# A153542: Number of planar n X n X n binary triangular grids with no more than 8 ones in any 5 X 5 X 5 subtriangle.

The programs for A153542, there is no canonical definition to state claims against.
-/

/-! ## A153542.P4411069989508355333

`A000027(A153570(n))`
-/

namespace A153542.P4411069989508355333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153570 n).toNat

end

end A153542.P4411069989508355333

/-! ## A153542.P5380450571898006705

`A325959(A008861(∑[n]))`
-/

namespace A153542.P5380450571898006705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (A008861 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153542.P5380450571898006705

/-!
# A153543: Number of planar n X n X n binary triangular grids with no more than 9 ones in any 5 X 5 X 5 subtriangle.

The programs for A153543, there is no canonical definition to state claims against.
-/

/-! ## A153543.P16055823924020469252

`A000027(A153571(n))`
-/

namespace A153543.P16055823924020469252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153571 n).toNat

end

end A153543.P16055823924020469252

/-! ## A153543.P4193181943869215696

`A000027(A008862(∑[n]))`
-/

namespace A153543.P4193181943869215696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008862 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153543.P4193181943869215696

/-!
# A153544: Number of planar n X n X n binary triangular grids with no more than 10 ones in any 5 X 5 X 5 subtriangle.

The programs for A153544, there is no canonical definition to state claims against.
-/

/-! ## A153544.P15931847989243709976

`A000027(A153572(n))`
-/

namespace A153544.P15931847989243709976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153572 n).toNat

end

end A153544.P15931847989243709976

/-! ## A153544.P8510943549369942118

`A000027(A008863(∑[n]))`
-/

namespace A153544.P8510943549369942118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008863 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153544.P8510943549369942118

/-!
# A153545: Number of planar n X n X n binary triangular grids with no more than 11 ones in any 5 X 5 X 5 subtriangle.

The programs for A153545, there is no canonical definition to state claims against.
-/

/-! ## A153545.P14996887371998230561

`A000027(A153573(n))`
-/

namespace A153545.P14996887371998230561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A153573 n).toNat

end

end A153545.P14996887371998230561

/-! ## A153545.P781980992083636748

`A000027(A219531(∑[n]))`
-/

namespace A153545.P781980992083636748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A219531 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153545.P781980992083636748

/-!
# A153546: Number of planar n X n X n binary triangular grids with no more than 12 ones in any 5 X 5 X 5 subtriangle.

The programs for A153546, there is no canonical definition to state claims against.
-/

/-! ## A153546.P1363585985071015189

`A153574(C(n, ∏{e}[n+1, #]))`
-/

namespace A153546.P1363585985071015189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153574 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A153546.P1363585985071015189

/-! ## A153546.P6513047440533022806

`A153574(n*8^val(n+1, 8))`
-/

namespace A153546.P6513047440533022806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153574 (n * 8 ^ SequenceMachineLib.valuation (n + 1) 8)

end

end A153546.P6513047440533022806

/-! ## A153546.P2075901906816474716

`A153574(A324683(n)+n)`
-/

namespace A153546.P2075901906816474716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153574 (A324683 n + (n : ℤ)).toNat

end

end A153546.P2075901906816474716

/-!
# A153547: Number of planar n X n X n binary triangular grids with no more than 13 ones in any 5 X 5 X 5 subtriangle.

The programs for A153547, there is no canonical definition to state claims against.
-/

/-! ## A153547.P6142607833957445429

`∏{e}[7^n, A153575(#)]`
-/

namespace A153547.P6142607833957445429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A153575 (Nat.factorization (f1 n) p)

end

end A153547.P6142607833957445429

/-! ## A153547.P14728485586438027136

`A153575(n*floor(n^(1/3)))`
-/

namespace A153547.P14728485586438027136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153575 ((n : ℤ) * ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋).toNat

end

end A153547.P14728485586438027136

/-! ## A153547.P12142841861809371288

`A153575(n)%A153046(n)`
-/

namespace A153547.P12142841861809371288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153575 n) (A153046 n)

end

end A153547.P12142841861809371288

/-! ## A153547.P113232769233133714

`A153575(n)+A000007(A358607(n))`
-/

namespace A153547.P113232769233133714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153575 n + A000007 (A358607 n).toNat

end

end A153547.P113232769233133714

/-!
# A153548: Number of planar n X n X n binary triangular grids with no more than 14 ones in any 5 X 5 X 5 subtriangle.

The programs for A153548, there is no canonical definition to state claims against.
-/

/-! ## A153548.P3887029184386056948

`∏{e}[5^n, A153576(#)]`
-/

namespace A153548.P3887029184386056948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A153576 (Nat.factorization (f1 n) p)

end

end A153548.P3887029184386056948

/-! ## A153548.P16335677368890395487

`A153576(C(n, ∏{p}[n+1, or(1, #-2)]))`
-/

namespace A153548.P16335677368890395487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153576 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((p : ℤ) - 2)).toNat)

end

end A153548.P16335677368890395487

/-! ## A153548.P17003705128703265164

`A153576(A024651(n))`
-/

namespace A153548.P17003705128703265164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153576 (A024651 n).toNat

end

end A153548.P17003705128703265164

/-! ## A153548.P15365171961760804189

`A153576(A004881(n+1))`
-/

namespace A153548.P15365171961760804189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153576 (A004881 (n + 1)).toNat

end

end A153548.P15365171961760804189

/-! ## A153548.P8973474028808866438

`A153576(A062504(n)-1)`
-/

namespace A153548.P8973474028808866438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153576 (A062504 n - 1).toNat

end

end A153548.P8973474028808866438

/-!
# A153549: Number of planar n X n X n binary triangular grids with no more than 2 ones in any similarly oriented 2 X 2 X 2 subtriangle.

The programs for A153549, there is no canonical definition to state claims against.
-/

/-! ## A153549.P12733340910321899028

`A029923(∑[n!]²-n-1)+1`
-/

namespace A153549.P12733340910321899028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat + 1

end

end A153549.P12733340910321899028

/-!
# A153550: Number of planar n X n X n binary triangular grids with no more than 1 one in any 3 X 3 X 3 subtriangle.

The programs for A153550, there is no canonical definition to state claims against.
-/

/-! ## A153550.P3224787550115924042

`A044045(n)+gcd(n, A065799(n+1))`
-/

namespace A153550.P3224787550115924042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n + (Int.gcd (n : ℤ) (A065799 (n + 1)) : ℤ)

end

end A153550.P3224787550115924042

/-! ## A153550.P9626601213279943899

`A049139(n+1)+A001221(A102088(n))`
-/

namespace A153550.P9626601213279943899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049139 (n + 1) + A001221 (A102088 n).toNat

end

end A153550.P9626601213279943899

/-! ## A153550.P8466275309778517467

`A304945(n+1)+A113238(A202012(n))`
-/

namespace A153550.P8466275309778517467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304945 (n + 1) + A113238 (A202012 n).toNat

end

end A153550.P8466275309778517467

/-!
# A153551: Number of planar n X n X n binary triangular grids with no more than 2 ones in any similarly oriented 3 X 3 X 3 subtriangle.

The programs for A153551, there is no canonical definition to state claims against.
-/

/-! ## A153551.P98688646198245869

`A088185(floor(exp(n)))`
-/

namespace A153551.P98688646198245869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088185 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A153551.P98688646198245869

/-!
# A153552: Number of planar n X n X n binary triangular grids with no more than 3 ones in any similarly oriented 3 X 3 X 3 subtriangle.

The programs for A153552, there is no canonical definition to state claims against.
-/

/-! ## A153552.P11406219996389362532

`A241088(∑[n²]+3)+∑[∑[n]]`
-/

namespace A153552.P11406219996389362532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241088 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A153552.P11406219996389362532

/-!
# A153553: Number of planar n X n X n binary triangular grids with no more than 4 ones in any similarly oriented 3 X 3 X 3 subtriangle.

The programs for A153553, there is no canonical definition to state claims against.
-/

/-! ## A153553.P8630357410009815080

`∑[A371156(comp[2*(n+1)]!)]`
-/

namespace A153553.P8630357410009815080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371156 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153553.P8630357410009815080

/-!
# A153554: Number of planar n X n X n binary triangular grids with no more than 5 ones in any similarly oriented 3 X 3 X 3 subtriangle.

The programs for A153554, there is no canonical definition to state claims against.
-/

/-! ## A153554.P17935401398666054449

`or(A153526(n), A321797(A153539(n)))`
-/

namespace A153554.P17935401398666054449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153526 n) (A321797 (A153539 n).toNat)

end

end A153554.P17935401398666054449

/-!
# A153556: Number of planar n X n X n binary triangular grids with no more than 2 ones in any similarly oriented 4 X 4 X 4 subtriangle.

The programs for A153556, there is no canonical definition to state claims against.
-/

/-! ## A153556.P12386725849337414639

`A339367(A136653(n))+C(n+4, 5)`
-/

namespace A153556.P12386725849337414639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 (A136653 n).toNat + (Nat.choose (n + 4) 5 : ℤ)

end

end A153556.P12386725849337414639

/-! ## A153556.P13942352405610011230

`A367562(A001147(n))+A000129(n+1)`
-/

namespace A153556.P13942352405610011230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367562 (A001147 n).toNat + A000129 (n + 1)

end

end A153556.P13942352405610011230

/-!
# A153557: Number of planar n X n X n binary triangular grids with no more than 3 ones in any similarly oriented 4 X 4 X 4 subtriangle.

The programs for A153557, there is no canonical definition to state claims against.
-/

/-! ## A153557.P17276050528557455383

`A184955((1-n)²)+A153528(n)`
-/

namespace A153557.P17276050528557455383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 ((1 - (n : ℤ)) ^ 2).toNat + A153528 n

end

end A153557.P17276050528557455383

/-!
# A153561: Number of planar n X n X n binary triangular grids with no more than 7 ones in any similarly oriented 4 X 4 X 4 subtriangle.

The programs for A153561, there is no canonical definition to state claims against.
-/

/-! ## A153561.P10050223677699154294

`A153532(n)+A114611(A056654(n+3))`
-/

namespace A153561.P10050223677699154294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153532 n + A114611 (A056654 (n + 3)).toNat

end

end A153561.P10050223677699154294

/-!
# A153568: Number of planar n X n X n binary triangular grids with no more than 6 ones in any similarly oriented 5 X 5 X 5 subtriangle.

The programs for A153568, there is no canonical definition to state claims against.
-/

/-! ## A153568.P2454022016749836791

`A153540(A007092(n))`
-/

namespace A153568.P2454022016749836791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153540 (A007092 n).toNat

end

end A153568.P2454022016749836791

/-! ## A153568.P9925426066454680242

`A004719(A008859(∑[n]))`
-/

namespace A153568.P9925426066454680242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A008859 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153568.P9925426066454680242

/-!
# A153577: Floor of value of n-th derivative of Zeta(x) at x=2.

The programs for A153577, there is no canonical definition to state claims against.
-/

/-! ## A153577.P11354051066011892693

`A238363(∑[n+1]+1)-A156595(n)`
-/

namespace A153577.P11354051066011892693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238363 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A156595 n

end

end A153577.P11354051066011892693

/-! ## A153577.P9533387530785127446

`A235378(n+1)+A070886(A185387(n))`
-/

namespace A153577.P9533387530785127446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235378 (n + 1) + A070886 (A185387 n).toNat

end

end A153577.P9533387530785127446

/-! ## A153577.P6331649616177013433

`A133942(A061219(n+1))-A156595(n)`
-/

namespace A153577.P6331649616177013433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 (A061219 (n + 1)).toNat - A156595 n

end

end A153577.P6331649616177013433

/-! ## A153577.P13030567444969667192

`A133942(A061219(n+1))-char[A003403(n)]`
-/

namespace A153577.P13030567444969667192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003403 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 (A061219 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153577.P13030567444969667192

/-!
# A153578: Positive terms in A133593.

The programs for A153578, there is no canonical definition to state claims against.
-/

/-! ## A153578.P12329103251037028773

`A133593(lt[0, A133593(n)])`
-/

namespace A153578.P12329103251037028773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153578.P12329103251037028773

/-!
# A153579: Negative terms in A133593.

The programs for A153579, there is no canonical definition to state claims against.
-/

/-! ## A153579.P6690193919858643847

`A133593(lt[A133593(n), 0])`
-/

namespace A153579.P6690193919858643847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133593 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133593 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A153579.P6690193919858643847

/-!
# A153580: Terms of A083737 which are not Carmichael numbers (A002997).

The programs for A153580, there is no canonical definition to state claims against.
-/

/-! ## A153580.P17917540408259839089

`∩[A083734(n+1), A153513(n+1)]`
-/

namespace A153580.P17917540408259839089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P17917540408259839089

/-! ## A153580.P629989760106017321

`∩[A083737(n+1), A153513(n+1)]`
-/

namespace A153580.P629989760106017321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P629989760106017321

/-! ## A153580.P7223077634109829735

`∩[A083737(n+1), A153508(n+1)]`
-/

namespace A153580.P7223077634109829735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P7223077634109829735

/-! ## A153580.P12641206491529756968

`∩[A083737(n+1), A153515(n+1)]`
-/

namespace A153580.P12641206491529756968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P12641206491529756968

/-! ## A153580.P18045933056390862741

`∩[A083734(n+1), A153519(n+1)]`
-/

namespace A153580.P18045933056390862741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P18045933056390862741

/-! ## A153580.P5911474898519368235

`∩[A083737(n+1), A153519(n+1)]`
-/

namespace A153580.P5911474898519368235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153580.P5911474898519368235

/-!
# A153581: Pseudoprimes to bases 2,3,5 and 7 which are not Carmichael numbers (A002997).

The programs for A153581, there is no canonical definition to state claims against.
-/

/-! ## A153581.P706499954762713967

`∩[A083733(n+1), A153580(n+1)]`
-/

namespace A153581.P706499954762713967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P706499954762713967

/-! ## A153581.P16251366940356049591

`∩[A083735(n+1), A153580(n+1)]`
-/

namespace A153581.P16251366940356049591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P16251366940356049591

/-! ## A153581.P4948610330704844235

`∩[A083736(n+1), A153580(n+1)]`
-/

namespace A153581.P4948610330704844235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P4948610330704844235

/-! ## A153581.P13053079031501242528

`∩[A083738(n+1), A153580(n+1)]`
-/

namespace A153581.P13053079031501242528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P13053079031501242528

/-! ## A153581.P16563888836802357035

`∩[A083739(n+1), A153580(n+1)]`
-/

namespace A153581.P16563888836802357035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P16563888836802357035

/-! ## A153581.P9742060222055952311

`∩[A083740(n+1), A153580(n+1)]`
-/

namespace A153581.P9742060222055952311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P9742060222055952311

/-! ## A153581.P13682405632019670546

`∩[A083736(n+1), A153513(n+1)]`
-/

namespace A153581.P13682405632019670546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P13682405632019670546

/-! ## A153581.P3184373049848504990

`∩[A083739(n+1), A153513(n+1)]`
-/

namespace A153581.P3184373049848504990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P3184373049848504990

/-! ## A153581.P13762007780409369475

`∩[A083740(n+1), A153513(n+1)]`
-/

namespace A153581.P13762007780409369475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153581.P13762007780409369475

/-!
# A153582: A024581 / [1,2,3,...].

The programs for A153582, there is no canonical definition to state claims against.
-/

/-! ## A153582.P5601402103206992561

`A153583(∑[n]+n)`
-/

namespace A153582.P5601402103206992561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153583 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A153582.P5601402103206992561

/-! ## A153582.P9433930048354490128

`Δ[A022852(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A153582.P9433930048354490128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A022852 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153582.P9433930048354490128

/-! ## A153582.P10525388910770619384

`A153583(A000096(n))+char[13]`
-/

namespace A153582.P10525388910770619384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153583 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153582.P10525388910770619384

/-! ## A153582.P6872772265857055746

`A153583(A000096(n))^A178334(n)`
-/

namespace A153582.P6872772265857055746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153583 (A000096 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A153582.P6872772265857055746

/-! ## A153582.P14030729235079274902

`A153583(A000096(n))%A177238(n)`
-/

namespace A153582.P14030729235079274902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153583 (A000096 n).toNat) (A177238 n)

end

end A153582.P14030729235079274902

/-!
# A153583: Convolution triangle by rows, A004736 * (A153582 * 0^(n-k)).

The programs for A153583, there is no canonical definition to state claims against.
-/

/-! ## A153583.P6753509149327785431

`A004736(n+1)*A153582(A002262(n))`
-/

namespace A153583.P6753509149327785431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A153582 (A002262 n).toNat

end

end A153583.P6753509149327785431

/-! ## A153583.P6645922809408275475

`(A025581(n)+1)*A153582(A002262(n))`
-/

namespace A153583.P6645922809408275475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A153582 (A002262 n).toNat

end

end A153583.P6645922809408275475

/-! ## A153583.P13913251661729306584

`sqrt(A055461(n+1))*A153582(A002262(n))`
-/

namespace A153583.P13913251661729306584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A153582 (A002262 n).toNat : ℝ)

end

end A153583.P13913251661729306584

/-! ## A153583.P692621918946005332

`log2(A090988(n+1))*A153582(A002262(n))`
-/

namespace A153583.P692621918946005332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) * (A153582 (A002262 n).toNat : ℝ)

end

end A153583.P692621918946005332

/-! ## A153583.P15795755376452929082

`(1-∑[A167407(n)])*A153582(A002262(n))`
-/

namespace A153583.P15795755376452929082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * A153582 (A002262 n).toNat

end

end A153583.P15795755376452929082

/-! ## A153583.P6166039478019034299

`A001511(A054582(n))*A153582(A002262(n))`
-/

namespace A153583.P6166039478019034299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A054582 n).toNat * A153582 (A002262 n).toNat

end

end A153583.P6166039478019034299

/-! ## A153583.P15457889668063805837

`A008619(A099375(n))*A153582(A002262(n))`
-/

namespace A153583.P15457889668063805837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat * A153582 (A002262 n).toNat

end

end A153583.P15457889668063805837

/-! ## A153583.P14962822120093986677

`A000005(A130321(n))*A153582(A002262(n))`
-/

namespace A153583.P14962822120093986677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A153582 (A002262 n).toNat

end

end A153583.P14962822120093986677

/-! ## A153583.P6133503603981858574

`A153582(A002262(n))*A220465(A000124(n))`
-/

namespace A153583.P6133503603981858574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 (A002262 n).toNat * A220465 (A000124 n).toNat

end

end A153583.P6133503603981858574

/-!
# A153584: Integers k such that floor((e + Pi)^k) is prime.

The programs for A153584, there is no canonical definition to state claims against.
-/

/-! ## A153584.P18103927786449280453

`A281026(n)+A280987(A280992(n+2))`
-/

namespace A153584.P18103927786449280453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A280987 (A280992 (n + 2)).toNat

end

end A153584.P18103927786449280453

/-!
# A153585: Convolution triangle, A053121 * (A001405 * 0^(n-k)).

The programs for A153585, the canonical program `A153585.P1931782127903893126` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153585 has offset 0).

The definition of A153585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153585.P1931782127903893126

`A001405(A002262(n))*A053121(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153585

/-- `A001405(A002262(n))*A053121(n)` -/
def P1931782127903893126.Spec : Prop :=
  ∀ n, P1931782127903893126.a n = A153585 n

theorem P1931782127903893126.correct : P1931782127903893126.Spec := by
  intro n
  simp only [A153585]

end A153585

/-! ## A153585.P2428157152281723925

`A053121(n)*A061554(A112367(n))`
-/

namespace A153585.P2428157152281723925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A061554 (A112367 n).toNat

end

end A153585.P2428157152281723925

namespace A153585

/-- `A053121(n)*A061554(A112367(n))` -/
def P2428157152281723925.Spec : Prop :=
  ∀ n, P2428157152281723925.a n = A153585 n

end A153585

/-! ## A153585.P15627368770435771713

`A001405(A144328(n+1))*A053121(n)`
-/

namespace A153585.P15627368770435771713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A144328 (n + 1)).toNat * A053121 n

end

end A153585.P15627368770435771713

namespace A153585

/-- `A001405(A144328(n+1))*A053121(n)` -/
def P15627368770435771713.Spec : Prop :=
  ∀ n, P15627368770435771713.a n = A153585 n

end A153585

/-! ## A153585.P15479845323178647637

`A053121(n)*A210736(A002260(n+1))`
-/

namespace A153585.P15479845323178647637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A210736 (A002260 (n + 1)).toNat

end

end A153585.P15479845323178647637

namespace A153585

/-- `A053121(n)*A210736(A002260(n+1))` -/
def P15479845323178647637.Spec : Prop :=
  ∀ n, P15479845323178647637.a n = A153585 n

end A153585

/-! ## A153585.P13974993429473626557

`A001405(A330709(2*n+1))*A053121(n)`
-/

namespace A153585.P13974993429473626557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A330709 (2 * n + 1)).toNat * A053121 n

end

end A153585.P13974993429473626557

namespace A153585

/-- `A001405(A330709(2*n+1))*A053121(n)` -/
def P13974993429473626557.Spec : Prop :=
  ∀ n, P13974993429473626557.a n = A153585 n

end A153585

/-!
# A153587: a(n) = n mod (A062383(n) - n).

The programs for A153587, the canonical program `A153587.P16815491758399937807` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153587 has offset 0).

The definition of A153587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%(A062383(n)-n)` (program `A153587.P16815491758399937807`, by `A153587.P16815491758399937807.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153587.P16815491758399937807

`n%(A062383(n)-n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153587

/-- `n%(A062383(n)-n)` -/
def P16815491758399937807.Spec : Prop :=
  ∀ n, P16815491758399937807.a n = A153587 n

theorem P16815491758399937807.correct : P16815491758399937807.Spec := by
  intro n
  simp only [A153587]

end A153587

/-! ## A153587.P7531447782404096366

`n%A080079(A028310(n))`
-/

namespace A153587.P7531447782404096366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A080079 (A028310 n).toNat)

end

end A153587.P7531447782404096366

namespace A153587

/-- `n%A080079(A028310(n))` -/
def P7531447782404096366.Spec : Prop :=
  ∀ n, P7531447782404096366.a n = A153587 n

end A153587

/-! ## A153587.P11381391916451259127

`A153151(n+1)%A080079(A153151(n+1))`
-/

namespace A153587.P11381391916451259127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153151 (n + 1)) (A080079 (A153151 (n + 1)).toNat)

end

end A153587.P11381391916451259127

namespace A153587

/-- `A153151(n+1)%A080079(A153151(n+1))` -/
def P11381391916451259127.Spec : Prop :=
  ∀ n, P11381391916451259127.a n = A153587 n

end A153587

/-! ## A153587.P5291247908447985777

`(2*n-n)%A003602(A035327(2*n))`
-/

namespace A153587.P5291247908447985777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - (n : ℤ)) (A003602 (A035327 (2 * n)).toNat)

end

end A153587.P5291247908447985777

namespace A153587

/-- `(2*n-n)%A003602(A035327(2*n))` -/
def P5291247908447985777.Spec : Prop :=
  ∀ n, P5291247908447985777.a n = A153587 n

end A153587

/-! ## A153587.P7909870361406526169

`A065033(2*n)%A080079(A065033(2*n))`
-/

namespace A153587.P7909870361406526169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (2 * n)) (A080079 (A065033 (2 * n)).toNat)

end

end A153587.P7909870361406526169

namespace A153587

/-- `A065033(2*n)%A080079(A065033(2*n))` -/
def P7909870361406526169.Spec : Prop :=
  ∀ n, P7909870361406526169.a n = A153587 n

end A153587

/-! ## A153587.P121293810407395175

`A123108(2*n)%A080079(A123108(2*n))`
-/

namespace A153587.P121293810407395175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (2 * n)) (A080079 (A123108 (2 * n)).toNat)

end

end A153587.P121293810407395175

namespace A153587

/-- `A123108(2*n)%A080079(A123108(2*n))` -/
def P121293810407395175.Spec : Prop :=
  ∀ n, P121293810407395175.a n = A153587 n

end A153587

/-! ## A153587.P18032254794704944114

`(A000038(n)+n)%A062050(A010078(n+1))`
-/

namespace A153587.P18032254794704944114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000038 n + (n : ℤ)) (A062050 (A010078 (n + 1)).toNat)

end

end A153587.P18032254794704944114

namespace A153587

/-- `(A000038(n)+n)%A062050(A010078(n+1))` -/
def P18032254794704944114.Spec : Prop :=
  ∀ n, P18032254794704944114.a n = A153587 n

end A153587

/-! ## A153587.P8001622907511088424

`A233583(n+1)%A080079(A233583(n+1))`
-/

namespace A153587.P8001622907511088424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A080079 (A233583 (n + 1)).toNat)

end

end A153587.P8001622907511088424

namespace A153587

/-- `A233583(n+1)%A080079(A233583(n+1))` -/
def P8001622907511088424.Spec : Prop :=
  ∀ n, P8001622907511088424.a n = A153587 n

end A153587

/-! ## A153587.P10086286701861830252

`A137735(n²)%A080079(A137735(n²))`
-/

namespace A153587.P10086286701861830252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 (n ^ 2)) (A080079 (A137735 (n ^ 2)).toNat)

end

end A153587.P10086286701861830252

namespace A153587

/-- `A137735(n²)%A080079(A137735(n²))` -/
def P10086286701861830252.Spec : Prop :=
  ∀ n, P10086286701861830252.a n = A153587 n

end A153587

/-!
# A153588: Number of resistance values that can be constructed using up to n equal resistances by arranging them in an arbitrary series-parallel arrangement.

The programs for A153588, there is no canonical definition to state claims against.
-/

/-! ## A153588.P11934397074407170433

`∑[A051389(n+1)]`
-/

namespace A153588.P11934397074407170433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153588.P11934397074407170433

/-! ## A153588.P1437831030694571550

`∑[record[A051389(A020986(n))]]`
-/

namespace A153588.P1437831030694571550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153588.P1437831030694571550

/-! ## A153588.P5908799961975620856

`∑[record[A051389(A028920(n))]]`
-/

namespace A153588.P5908799961975620856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153588.P5908799961975620856

/-! ## A153588.P4411492772266820740

`∑[record[A051389(A038569(n))]]`
-/

namespace A153588.P4411492772266820740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153588.P4411492772266820740

/-! ## A153588.P3199069665645318115

`∑[record[A051389(A051340(n))]]`
-/

namespace A153588.P3199069665645318115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153588.P3199069665645318115

/-!
# A153589: Decimal expansion of log_12 (6).

The programs for A153589, there is no canonical definition to state claims against.
-/

/-! ## A153589.P14920282848414260761

`9-A152778(n)`
-/

namespace A153589.P14920282848414260761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152778 n

end

end A153589.P14920282848414260761

/-! ## A153589.P9160674656694238784

`9-A155982(n+1)`
-/

namespace A153589.P9160674656694238784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A155982 (n + 1 + 1)

end

end A153589.P9160674656694238784

/-!
# A153590: Primes p such that p^2 + 3p + 1 is also prime.

The programs for A153590, there is no canonical definition to state claims against.
-/

/-! ## A153590.P9210140469297562185

`p?[A002328(n+1)-2]`
-/

namespace A153590.P9210140469297562185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P9210140469297562185

/-! ## A153590.P10511031567340032285

`record[A006530(A002328(n+2)-2)]`
-/

namespace A153590.P10511031567340032285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002328 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153590.P10511031567340032285

/-! ## A153590.P8558881698601924094

`p?[A094210(n+1)]`
-/

namespace A153590.P8558881698601924094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P8558881698601924094

/-! ## A153590.P7331557723481488502

`p?[A045546(n+1)-1]`
-/

namespace A153590.P7331557723481488502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P7331557723481488502

/-! ## A153590.P1850089467036516493

`p?[A089362(n+1)-4]`
-/

namespace A153590.P1850089467036516493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P1850089467036516493

/-! ## A153590.P15779010767518620484

`p?[floor(sqrt(A002327(n+1)))-1]`
-/

namespace A153590.P15779010767518620484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002327 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P15779010767518620484

/-! ## A153590.P15322485137202645436

`p?[floor(A088502(n+1)/2)-1]`
-/

namespace A153590.P15322485137202645436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088502 (n + 1) : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153590.P15322485137202645436

/-! ## A153590.P10638433365929458978

`record[A006530(A094210(n+2))]`
-/

namespace A153590.P10638433365929458978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A094210 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153590.P10638433365929458978

/-! ## A153590.P7827790188731236975

`filter[A094210(n+1), A010051(#)]`
-/

namespace A153590.P7827790188731236975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153590.P7827790188731236975

/-! ## A153590.P9010796389301314508

`filter[A094210(n+1), A323153(#)]`
-/

namespace A153590.P9010796389301314508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A153590.P9010796389301314508

/-! ## A153590.P7449479743287280422

`record[A020639(A045546(n+2)-1)]`
-/

namespace A153590.P7449479743287280422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045546 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153590.P7449479743287280422

/-! ## A153590.P1520750659161660825

`∩[A000040(n+1), A094210(n+1)]`
-/

namespace A153590.P1520750659161660825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P1520750659161660825

/-! ## A153590.P6905521322269049282

`∩[A040159(n+1), A094210(n+1)]`
-/

namespace A153590.P6905521322269049282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P6905521322269049282

/-! ## A153590.P13729286901877950598

`∩[A040161(n+1), A094210(n+1)]`
-/

namespace A153590.P13729286901877950598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P13729286901877950598

/-! ## A153590.P9531267521890683213

`∩[A040165(n+1), A094210(n+1)]`
-/

namespace A153590.P9531267521890683213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P9531267521890683213

/-! ## A153590.P11507249422126408968

`∩[A040169(n+1), A094210(n+1)]`
-/

namespace A153590.P11507249422126408968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P11507249422126408968

/-! ## A153590.P17265089801123490469

`∩[A040171(n+1), A094210(n+1)]`
-/

namespace A153590.P17265089801123490469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P17265089801123490469

/-! ## A153590.P16274397209224233992

`∩[A040177(n+1), A094210(n+1)]`
-/

namespace A153590.P16274397209224233992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P16274397209224233992

/-! ## A153590.P17493816155138595206

`∩[A040179(n+1), A094210(n+1)]`
-/

namespace A153590.P17493816155138595206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P17493816155138595206

/-! ## A153590.P5770143949108688954

`∩[A040184(n+1), A094210(n+1)]`
-/

namespace A153590.P5770143949108688954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153590.P5770143949108688954

/-!
# A153591: Primes p such that 6p^2+6p+1 is also prime.

The programs for A153591, there is no canonical definition to state claims against.
-/

/-! ## A153591.P3433630912809963919

`p?[A111292(n+1)]`
-/

namespace A153591.P3433630912809963919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153591.P3433630912809963919

/-! ## A153591.P12081098742447559091

`p?[A184899(n+1)-1]`
-/

namespace A153591.P12081098742447559091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184899 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153591.P12081098742447559091

/-! ## A153591.P12858317812125939205

`record[A006530(A111292(n+2))]`
-/

namespace A153591.P12858317812125939205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111292 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153591.P12858317812125939205

/-! ## A153591.P6528634536138394473

`filter[A111292(n+1), A010051(#)]`
-/

namespace A153591.P6528634536138394473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153591.P6528634536138394473

/-! ## A153591.P12934744795671885432

`record[A020639(A184899(n+2)-1)]`
-/

namespace A153591.P12934744795671885432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184899 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153591.P12934744795671885432

/-! ## A153591.P17666349639129493444

`∩[A000040(n+1), A111292(n+1)]`
-/

namespace A153591.P17666349639129493444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P17666349639129493444

/-! ## A153591.P10233981868783079140

`∩[A049545(n+1), A111292(n+1)]`
-/

namespace A153591.P10233981868783079140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P10233981868783079140

/-! ## A153591.P7237805987496330698

`∩[A111292(n+1), A116974(n+1)]`
-/

namespace A153591.P7237805987496330698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P7237805987496330698

/-! ## A153591.P3187448792671779941

`∩[A111292(n+1), A175787(n+1)]`
-/

namespace A153591.P3187448792671779941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P3187448792671779941

/-! ## A153591.P8963852647244273564

`∩[A111292(n+1), A182986(n+1)]`
-/

namespace A153591.P8963852647244273564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P8963852647244273564

/-! ## A153591.P15740818546431167709

`p?[A001478(n+1)+A184899(n+1)+n]`
-/

namespace A153591.P15740818546431167709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A184899 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153591.P15740818546431167709

/-! ## A153591.P16214146266389416960

`p?[A060000(A184899(n+1))]`
-/

namespace A153591.P16214146266389416960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A184899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153591.P16214146266389416960

/-! ## A153591.P8717964158425529404

`filter[A111292(n+2), A080339(#)]`
-/

namespace A153591.P8717964158425529404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A153591.P8717964158425529404

/-! ## A153591.P258637063210123665

`record[A014963(A184899(n+2)-1)]`
-/

namespace A153591.P258637063210123665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184899 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153591.P258637063210123665

/-! ## A153591.P8920804835371220048

`A062584(p?[A143051(A184899(n+1))])`
-/

namespace A153591.P8920804835371220048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A184899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A153591.P8920804835371220048

/-! ## A153591.P7833355274037077472

`p?[A143051(A184899(n+1))]%A016789(n)²`
-/

namespace A153591.P7833355274037077472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A184899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016789 n ^ 2)

end

end A153591.P7833355274037077472

/-! ## A153591.P6240206887401877054

`∩[A111292(n+1), A240960(n+1)]`
-/

namespace A153591.P6240206887401877054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P6240206887401877054

/-! ## A153591.P9379911003952253539

`∩[A111292(n+1), A385492(n+1)]`
-/

namespace A153591.P9379911003952253539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153591.P9379911003952253539

/-!
# A153592: Triangle read by rows: T(n,k) = T(n-1,k-1) +T(n-1,k) +n*(n-1)*T(n-2,k-1) for n>4 and 1<=k<=n.

The programs for A153592, the canonical program `A153592.P16890124380166060068` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153592 has offset 1).

The definition of A153592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+(row(n)+1)*row(n)*T(n-2,k-1)` (program `A153592.P16890124380166060068`, by `A153592.P16890124380166060068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153592.P16890124380166060068

`T(n-1,k-1)+T(n-1,k)+(row(n)+1)*row(n)*T(n-2,k-1)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=2, a(4)=20, a(5)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153592

/-- `T(n-1,k-1)+T(n-1,k)+(row(n)+1)*row(n)*T(n-2,k-1)` -/
def P16890124380166060068.Spec : Prop :=
  ∀ n, (P16890124380166060068.a n : ℤ) = A153592 (n + 1)

theorem P16890124380166060068.correct : P16890124380166060068.Spec := by
  intro n
  simp only [A153592, Nat.add_sub_cancel]

end A153592

/-!
# A153593: a(n) = ((9 + sqrt(2))^n - (9 - sqrt(2))^n)/(2*sqrt(2)).

The programs for A153593, the canonical program `A153593.P2268420670504911175` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153593 has offset 1).

The definition of A153593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9+sqrt(2))^(n+1)-(9-sqrt(2))^(n+1))/(2*sqrt(2))` (program `A153593.P6395140150421206394`, by `A153593.P6395140150421206394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153593.P2268420670504911175

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153593

/-- `18*a(n-1)-79*a(n-2)` -/
def P2268420670504911175.Spec : Prop :=
  ∀ n, P2268420670504911175.a n = A153593 (n + 1)

theorem P2268420670504911175.correct : P2268420670504911175.Spec := by
  intro n
  simp only [A153593, Nat.add_sub_cancel]

end A153593

/-! ## A153593.P6395140150421206394

`((9+sqrt(2))^(n+1)-(9-sqrt(2))^(n+1))/(2*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153593.P6395140150421206394
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (2 : ℝ)) ^ (n + 1) - (9 - Real.sqrt (2 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (2 : ℝ))

end

end A153593.P6395140150421206394

namespace A153593

/-- `((9+sqrt(2))^(n+1)-(9-sqrt(2))^(n+1))/(2*sqrt(2))` -/
def P6395140150421206394.Spec : Prop :=
  ∀ n, P6395140150421206394.a n = (A153593 (n + 1) : ℝ)

theorem P6395140150421206394.correct : P6395140150421206394.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153593, Nat.add_sub_cancel, A153593.P6395140150421206394.a, A153593.P2268420670504911175.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153593, Nat.add_sub_cancel, A153593.P6395140150421206394.a, A153593.P2268420670504911175.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153593

/-! ## A153593.P14374423703229146120

`∑[A164600(n)]`
-/

namespace A153593.P14374423703229146120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153593.P14374423703229146120

namespace A153593

/-- `∑[A164600(n)]` -/
def P14374423703229146120.Spec : Prop :=
  ∀ n, P14374423703229146120.a n = A153593 (n + 1)

end A153593

/-! ## A153593.P12709132694721293437

`A147960(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A153593.P12709132694721293437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147960 n + 9 * a (n - 1)

end

end A153593.P12709132694721293437

namespace A153593

/-- `A147960(n)+9*a(n-1)` -/
def P12709132694721293437.Spec : Prop :=
  ∀ n, P12709132694721293437.a n = A153593 (n + 1)

end A153593

/-! ## A153593.P3339179221953317232

`A163461(n+1)-A147960(n+1)`
-/

namespace A153593.P3339179221953317232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163461 (n + 1) - A147960 (n + 1)

end

end A153593.P3339179221953317232

namespace A153593

/-- `A163461(n+1)-A147960(n+1)` -/
def P3339179221953317232.Spec : Prop :=
  ∀ n, P3339179221953317232.a n = A153593 (n + 1)

end A153593

/-! ## A153593.P10545441367545489983

`A163447(n+1)-A163461(n+1)`
-/

namespace A153593.P10545441367545489983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163447 (n + 1) - A163461 (n + 1)

end

end A153593.P10545441367545489983

namespace A153593

/-- `A163447(n+1)-A163461(n+1)` -/
def P10545441367545489983.Spec : Prop :=
  ∀ n, P10545441367545489983.a n = A153593 (n + 1)

end A153593

/-!
# A153594: a(n) = ((4 + sqrt(3))^n - (4 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153594, the canonical program `A153594.P9367515302183602001` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153594 has offset 1).

The definition of A153594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153594.P9367515302183602001

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153594

/-- `8*a(n-1)-13*a(n-2)` -/
def P9367515302183602001.Spec : Prop :=
  ∀ n, P9367515302183602001.a n = A153594 (n + 1)

theorem P9367515302183602001.correct : P9367515302183602001.Spec := by
  intro n
  simp only [A153594, Nat.add_sub_cancel]

end A153594

/-! ## A153594.P9365155619350477827

`ogf(1/(1-8x+13x^2))`
-/

namespace A153594.P9365155619350477827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 13] n

end

end A153594.P9365155619350477827

namespace A153594

/-- `ogf(1/(1-8x+13x^2))` -/
def P9365155619350477827.Spec : Prop :=
  ∀ n, P9365155619350477827.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P4241032863745290204

`∑[A161728(n)]`
-/

namespace A153594.P4241032863745290204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153594.P4241032863745290204

namespace A153594

/-- `∑[A161728(n)]` -/
def P4241032863745290204.Spec : Prop :=
  ∀ n, P4241032863745290204.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P15459490561374034279

`A083882(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A153594.P15459490561374034279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083882 n + 4 * a (n - 1)

end

end A153594.P15459490561374034279

namespace A153594

/-- `A083882(n)+4*a(n-1)` -/
def P15459490561374034279.Spec : Prop :=
  ∀ n, P15459490561374034279.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P17177071720688499443

`a(n-1)+A161727(n)+a(n-1)` with `a(0)=1`
-/

namespace A153594.P17177071720688499443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A161727 n + a (n - 1))

end

end A153594.P17177071720688499443

namespace A153594

/-- `a(n-1)+A161727(n)+a(n-1)` -/
def P17177071720688499443.Spec : Prop :=
  ∀ n, P17177071720688499443.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P8266554568210064653

`∑[Δ[A162557(n)]-A163470(n)]`
-/

namespace A153594.P8266554568210064653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A163470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153594.P8266554568210064653

namespace A153594

/-- `∑[Δ[A162557(n)]-A163470(n)]` -/
def P8266554568210064653.Spec : Prop :=
  ∀ n, P8266554568210064653.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P9960614251948001451

`A162557(n+1)-A083882(n+1)`
-/

namespace A153594.P9960614251948001451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162557 (n + 1) - A083882 (n + 1)

end

end A153594.P9960614251948001451

namespace A153594

/-- `A162557(n+1)-A083882(n+1)` -/
def P9960614251948001451.Spec : Prop :=
  ∀ n, P9960614251948001451.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P4396483134362272813

`∑[A162557(n+1)-4*A162557(n)]`
-/

namespace A153594.P4396483134362272813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162557 (n + 1) - 4 * A162557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153594.P4396483134362272813

namespace A153594

/-- `∑[A162557(n+1)-4*A162557(n)]` -/
def P4396483134362272813.Spec : Prop :=
  ∀ n, P4396483134362272813.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P2761663277987051818

`∑[A162557(n+1)-(A163470(n)+A162557(n))]`
-/

namespace A153594.P2761663277987051818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162557 (n + 1) - (A163470 n + A162557 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153594.P2761663277987051818

namespace A153594

/-- `∑[A162557(n+1)-(A163470(n)+A162557(n))]` -/
def P2761663277987051818.Spec : Prop :=
  ∀ n, P2761663277987051818.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P15346507602930777529

`A162274(n+1)-2*A162557(n+1)`
-/

namespace A153594.P15346507602930777529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162274 (n + 1) - 2 * A162557 (n + 1)

end

end A153594.P15346507602930777529

namespace A153594

/-- `A162274(n+1)-2*A162557(n+1)` -/
def P15346507602930777529.Spec : Prop :=
  ∀ n, P15346507602930777529.a n = A153594 (n + 1)

end A153594

/-! ## A153594.P15209637479422165755

`(A161728(n+1)-A162557(n+1))/2`
-/

namespace A153594.P15209637479422165755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161728 (n + 1) - A162557 (n + 1) : ℚ) / 2

end

end A153594.P15209637479422165755

namespace A153594

/-- `(A161728(n+1)-A162557(n+1))/2` -/
def P15209637479422165755.Spec : Prop :=
  ∀ n, P15209637479422165755.a n = (A153594 (n + 1) : ℚ)

end A153594

/-!
# A153596: a(n) = ((5 + sqrt(3))^n - (5 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153596, the canonical program `A153596.P15509475417947682486` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153596 has offset 1).

The definition of A153596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153596.P15509475417947682486

`10*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153596

/-- `10*a(n-1)-22*a(n-2)` -/
def P15509475417947682486.Spec : Prop :=
  ∀ n, P15509475417947682486.a n = A153596 (n + 1)

theorem P15509475417947682486.correct : P15509475417947682486.Spec := by
  intro n
  simp only [A153596, Nat.add_sub_cancel]

end A153596

/-! ## A153596.P18353083243862473402

`ogf(1/(1-10x+22x^2))`
-/

namespace A153596.P18353083243862473402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 22] n

end

end A153596.P18353083243862473402

namespace A153596

/-- `ogf(1/(1-10x+22x^2))` -/
def P18353083243862473402.Spec : Prop :=
  ∀ n, P18353083243862473402.a n = A153596 (n + 1)

end A153596

/-! ## A153596.P8354197706076847696

`A143647(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A153596.P8354197706076847696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143647 n + 5 * a (n - 1)

end

end A153596.P8354197706076847696

namespace A153596

/-- `A143647(n)+5*a(n-1)` -/
def P8354197706076847696.Spec : Prop :=
  ∀ n, P8354197706076847696.a n = A153596 (n + 1)

end A153596

/-! ## A153596.P2518782600196170753

`a(n-1)+A162272(n)+a(n-1)` with `a(0)=1`
-/

namespace A153596.P2518782600196170753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A162272 n + a (n - 1))

end

end A153596.P2518782600196170753

namespace A153596

/-- `a(n-1)+A162272(n)+a(n-1)` -/
def P2518782600196170753.Spec : Prop :=
  ∀ n, P2518782600196170753.a n = A153596 (n + 1)

end A153596

/-! ## A153596.P17082313423337684602

`2*A162272(n)-A162558(n)`
-/

namespace A153596.P17082313423337684602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162272 n - A162558 n

end

end A153596.P17082313423337684602

namespace A153596

/-- `2*A162272(n)-A162558(n)` -/
def P17082313423337684602.Spec : Prop :=
  ∀ n, P17082313423337684602.a n = A153596 (n + 1)

end A153596

/-! ## A153596.P7693977968262872539

`∑[Δ[A162558(n)]-A162561(n)]`
-/

namespace A153596.P7693977968262872539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A162561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153596.P7693977968262872539

namespace A153596

/-- `∑[Δ[A162558(n)]-A162561(n)]` -/
def P7693977968262872539.Spec : Prop :=
  ∀ n, P7693977968262872539.a n = A153596 (n + 1)

end A153596

/-! ## A153596.P13562779224663425527

`(A162272(n+1)-A162558(n+1))/2`
-/

namespace A153596.P13562779224663425527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162272 (n + 1) - A162558 (n + 1) : ℚ) / 2

end

end A153596.P13562779224663425527

namespace A153596

/-- `(A162272(n+1)-A162558(n+1))/2` -/
def P13562779224663425527.Spec : Prop :=
  ∀ n, P13562779224663425527.a n = (A153596 (n + 1) : ℚ)

end A153596

/-!
# A153597: a(n) = ((6 + sqrt(3))^n - (6 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153597, the canonical program `A153597.P12282363260150880066` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153597 has offset 1).

The definition of A153597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((6+sqrt(3))^(n+1)-(6-sqrt(3))^(n+1))/(2*sqrt(3))` (program `A153597.P6359106190260565609`, by `A153597.P6359106190260565609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153597.P12282363260150880066

`12*a(n-1)-33*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153597

/-- `12*a(n-1)-33*a(n-2)` -/
def P12282363260150880066.Spec : Prop :=
  ∀ n, P12282363260150880066.a n = A153597 (n + 1)

theorem P12282363260150880066.correct : P12282363260150880066.Spec := by
  intro n
  simp only [A153597, Nat.add_sub_cancel]

end A153597

/-! ## A153597.P6359106190260565609

`((6+sqrt(3))^(n+1)-(6-sqrt(3))^(n+1))/(2*sqrt(3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153597.P6359106190260565609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (3 : ℝ)) ^ (n + 1) - (6 - Real.sqrt (3 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (3 : ℝ))

end

end A153597.P6359106190260565609

namespace A153597

/-- `((6+sqrt(3))^(n+1)-(6-sqrt(3))^(n+1))/(2*sqrt(3))` -/
def P6359106190260565609.Spec : Prop :=
  ∀ n, P6359106190260565609.a n = (A153597 (n + 1) : ℝ)

theorem P6359106190260565609.correct : P6359106190260565609.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153597, Nat.add_sub_cancel, A153597.P6359106190260565609.a, A153597.P12282363260150880066.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153597, Nat.add_sub_cancel, A153597.P6359106190260565609.a, A153597.P12282363260150880066.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153597

/-! ## A153597.P8301417832654878324

`ogf(1/(1-12x+33x^2))`
-/

namespace A153597.P8301417832654878324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 33] n

end

end A153597.P8301417832654878324

namespace A153597

/-- `ogf(1/(1-12x+33x^2))` -/
def P8301417832654878324.Spec : Prop :=
  ∀ n, P8301417832654878324.a n = A153597 (n + 1)

end A153597

/-! ## A153597.P5442865654095385456

`A162757(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A153597.P5442865654095385456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162757 n + 5 * a (n - 1)

end

end A153597.P5442865654095385456

namespace A153597

/-- `A162757(n)+5*a(n-1)` -/
def P5442865654095385456.Spec : Prop :=
  ∀ n, P5442865654095385456.a n = A153597 (n + 1)

end A153597

/-! ## A153597.P6725127910949483287

`A147961(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A153597.P6725127910949483287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147961 n + 6 * a (n - 1)

end

end A153597.P6725127910949483287

namespace A153597

/-- `A147961(n)+6*a(n-1)` -/
def P6725127910949483287.Spec : Prop :=
  ∀ n, P6725127910949483287.a n = A153597 (n + 1)

end A153597

/-! ## A153597.P12207805279504512314

`∑[Δ[A162757(n)]-A162816(n)]`
-/

namespace A153597.P12207805279504512314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162757 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A162816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153597.P12207805279504512314

namespace A153597

/-- `∑[Δ[A162757(n)]-A162816(n)]` -/
def P12207805279504512314.Spec : Prop :=
  ∀ n, P12207805279504512314.a n = A153597 (n + 1)

end A153597

/-! ## A153597.P3946411440650804276

`A162757(n+1)-A147961(n+1)`
-/

namespace A153597.P3946411440650804276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162757 (n + 1) - A147961 (n + 1)

end

end A153597.P3946411440650804276

namespace A153597

/-- `A162757(n+1)-A147961(n+1)` -/
def P3946411440650804276.Spec : Prop :=
  ∀ n, P3946411440650804276.a n = A153597 (n + 1)

end A153597

/-!
# A153598: a(n) = ((7 + sqrt(3))^n - (7 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153598, the canonical program `A153598.P3381881755261846917` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153598 has offset 1).

The definition of A153598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((7+sqrt(3))^(n+1)-(7-sqrt(3))^(n+1))/(2*sqrt(3))` (program `A153598.P9951960917005742450`, by `A153598.P9951960917005742450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153598.P3381881755261846917

`14*a(n-1)-46*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153598

/-- `14*a(n-1)-46*a(n-2)` -/
def P3381881755261846917.Spec : Prop :=
  ∀ n, P3381881755261846917.a n = A153598 (n + 1)

theorem P3381881755261846917.correct : P3381881755261846917.Spec := by
  intro n
  simp only [A153598, Nat.add_sub_cancel]

end A153598

/-! ## A153598.P9951960917005742450

`((7+sqrt(3))^(n+1)-(7-sqrt(3))^(n+1))/(2*sqrt(3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153598.P9951960917005742450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (3 : ℝ)) ^ (n + 1) - (7 - Real.sqrt (3 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (3 : ℝ))

end

end A153598.P9951960917005742450

namespace A153598

/-- `((7+sqrt(3))^(n+1)-(7-sqrt(3))^(n+1))/(2*sqrt(3))` -/
def P9951960917005742450.Spec : Prop :=
  ∀ n, P9951960917005742450.a n = (A153598 (n + 1) : ℝ)

theorem P9951960917005742450.correct : P9951960917005742450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153598, Nat.add_sub_cancel, A153598.P9951960917005742450.a, A153598.P3381881755261846917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153598, Nat.add_sub_cancel, A153598.P9951960917005742450.a, A153598.P3381881755261846917.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153598

/-! ## A153598.P8859740092228107556

`A147962(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A153598.P8859740092228107556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147962 n + 7 * a (n - 1)

end

end A153598.P8859740092228107556

namespace A153598

/-- `A147962(n)+7*a(n-1)` -/
def P8859740092228107556.Spec : Prop :=
  ∀ n, P8859740092228107556.a n = A153598 (n + 1)

end A153598

/-!
# A153599: a(n) = ((8 + sqrt(3))^n - (8 - sqrt(3))^n)/(2*sqrt(3)).

The programs for A153599, the canonical program `A153599.P178518559727191977` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153599 has offset 1).

The definition of A153599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153599.P178518559727191977

`16*a(n-1)-61*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153599

/-- `16*a(n-1)-61*a(n-2)` -/
def P178518559727191977.Spec : Prop :=
  ∀ n, P178518559727191977.a n = A153599 (n + 1)

theorem P178518559727191977.correct : P178518559727191977.Spec := by
  intro n
  simp only [A153599, Nat.add_sub_cancel]

end A153599

/-! ## A153599.P16785293666325211854

`A152055(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A153599.P16785293666325211854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152055 n + 8 * a (n - 1)

end

end A153599.P16785293666325211854

namespace A153599

/-- `A152055(n)+8*a(n-1)` -/
def P16785293666325211854.Spec : Prop :=
  ∀ n, P16785293666325211854.a n = A153599 (n + 1)

end A153599

