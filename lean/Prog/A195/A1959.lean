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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C025

/-!
# A195900: Numbers k for which sigma(k) = 2 mod 4 and omega(sigma(k)/2) < omega(k).

The programs for A195900, there is no canonical definition to state claims against.
-/

/-! ## A195900.P8884060852232835896

`A173816(A062227(n+1))+2`
-/

namespace A195900.P8884060852232835896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173816 (A062227 (n + 1)).toNat + 2

end

end A195900.P8884060852232835896

/-!
# A195904: Base-2 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,0,0,0,0.

The programs for A195904, the canonical program `A195904.P7360220616566113698` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195904 has offset 1).

The definition of A195904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195904.P7360220616566113698

`or(2*a(n-1), val(a(n-1), 32))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195904

/-- `or(2*a(n-1), val(a(n-1), 32))` -/
def P7360220616566113698.Spec : Prop :=
  ∀ n, (P7360220616566113698.a n : ℤ) = A195904 (n + 1)

theorem P7360220616566113698.correct : P7360220616566113698.Spec := by
  intro n
  simp only [A195904, Nat.add_sub_cancel]

end A195904

/-! ## A195904.P5345605337410595023

`a(n-1)+a(n-1)+val(a(n-1), 32)` with `a(0)=1`
-/

namespace A195904.P5345605337410595023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + SequenceMachineLib.valuation (a (n - 1)) 32)

end

end A195904.P5345605337410595023

namespace A195904

/-- `a(n-1)+a(n-1)+val(a(n-1), 32)` -/
def P5345605337410595023.Spec : Prop :=
  ∀ n, (P5345605337410595023.a n : ℤ) = A195904 (n + 1)

end A195904

/-! ## A195904.P16491831264911388555

`a(n-1)+A079979(n)+a(n-1)` with `a(0)=1`
-/

namespace A195904.P16491831264911388555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A079979 n + a (n - 1))

end

end A195904.P16491831264911388555

namespace A195904

/-- `a(n-1)+A079979(n)+a(n-1)` -/
def P16491831264911388555.Spec : Prop :=
  ∀ n, P16491831264911388555.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P7472177336312813810

`char[A008588(n)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A195904.P7472177336312813810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (a (n - 1) + a (n - 1))

end

end A195904.P7472177336312813810

namespace A195904

/-- `char[A008588(n)]+a(n-1)+a(n-1)` -/
def P7472177336312813810.Spec : Prop :=
  ∀ n, (P7472177336312813810.a n : ℤ) = A195904 (n + 1)

end A195904

/-! ## A195904.P12747613716452259601

`and(A033138(n+1), A267045(n))`
-/

namespace A195904.P12747613716452259601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (n + 1)) (A267045 n)

end

end A195904.P12747613716452259601

namespace A195904

/-- `and(A033138(n+1), A267045(n))` -/
def P12747613716452259601.Spec : Prop :=
  ∀ n, P12747613716452259601.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P6082311375556103801

`A121262(A277022(n))+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A195904.P6082311375556103801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121262 (A277022 n).toNat + (a (n - 1) + a (n - 1))

end

end A195904.P6082311375556103801

namespace A195904

/-- `A121262(A277022(n))+a(n-1)+a(n-1)` -/
def P6082311375556103801.Spec : Prop :=
  ∀ n, P6082311375556103801.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P5068749982964644077

`and(A033138(n+1), A052997(n))`
-/

namespace A195904.P5068749982964644077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (n + 1)) (A052997 n)

end

end A195904.P5068749982964644077

namespace A195904

/-- `and(A033138(n+1), A052997(n))` -/
def P5068749982964644077.Spec : Prop :=
  ∀ n, P5068749982964644077.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P595634987033201227

`and(A000975(n+1), A033138(n+1))`
-/

namespace A195904.P595634987033201227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (n + 1)) (A033138 (n + 1))

end

end A195904.P595634987033201227

namespace A195904

/-- `and(A000975(n+1), A033138(n+1))` -/
def P595634987033201227.Spec : Prop :=
  ∀ n, P595634987033201227.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P5619134841529714714

`and(A033138(n+1), A266284(n))`
-/

namespace A195904.P5619134841529714714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (n + 1)) (A266284 n)

end

end A195904.P5619134841529714714

namespace A195904

/-- `and(A033138(n+1), A266284(n))` -/
def P5619134841529714714.Spec : Prop :=
  ∀ n, P5619134841529714714.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P1180376944900633236

`and(A033138(n+1), A266980(n))`
-/

namespace A195904.P1180376944900633236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (n + 1)) (A266980 n)

end

end A195904.P1180376944900633236

namespace A195904

/-- `and(A033138(n+1), A266980(n))` -/
def P1180376944900633236.Spec : Prop :=
  ∀ n, P1180376944900633236.a n = A195904 (n + 1)

end A195904

/-! ## A195904.P16340014464612550234

`and(A033138(n+1), A266873(n))`
-/

namespace A195904.P16340014464612550234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033138 (n + 1)) (A266873 n)

end

end A195904.P16340014464612550234

namespace A195904

/-- `and(A033138(n+1), A266873(n))` -/
def P16340014464612550234.Spec : Prop :=
  ∀ n, P16340014464612550234.a n = A195904 (n + 1)

end A195904

/-!
# A195905: Primes of the form 10 * k^2 + 7.

The programs for A195905, the canonical program `A195905.P13014814647593862339` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195905 has offset 1).

The definition of A195905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195905.P13014814647593862339

`p?[10*n²+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195905

/-- `p?[10*n²+7]` -/
def P13014814647593862339.Spec : Prop :=
  ∀ n, (P13014814647593862339.a n : ℤ) = A195905 (n + 1)

theorem P13014814647593862339.correct : P13014814647593862339.Spec := by
  intro n
  simp only [A195905, Nat.add_sub_cancel]

end A195905

/-! ## A195905.P11785764799709977378

`or(1, p?[ceil(10*(n²-cos(4)))])`
-/

namespace A195905.P11785764799709977378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * ((n ^ 2 : ℝ) - Real.cos (4 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195905.P11785764799709977378

namespace A195905

/-- `or(1, p?[ceil(10*(n²-cos(4)))])` -/
def P11785764799709977378.Spec : Prop :=
  ∀ n, P11785764799709977378.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P10296548129605921918

`or(1, p?[floor(10*(n²-sin(4)))])`
-/

namespace A195905.P10296548129605921918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n ^ 2 : ℝ) - Real.sin (4 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195905.P10296548129605921918

namespace A195905

/-- `or(1, p?[floor(10*(n²-sin(4)))])` -/
def P10296548129605921918.Spec : Prop :=
  ∀ n, P10296548129605921918.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P8232819852745770847

`∑{p}[p?[ceil(10*(n²-cos(4)))], #]`
-/

namespace A195905.P8232819852745770847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * ((n ^ 2 : ℝ) - Real.cos (4 : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A195905.P8232819852745770847

namespace A195905

/-- `∑{p}[p?[ceil(10*(n²-cos(4)))], #]` -/
def P8232819852745770847.Spec : Prop :=
  ∀ n, (P8232819852745770847.a n : ℤ) = A195905 (n + 1)

end A195905

/-! ## A195905.P15678161425711111991

`∑{p}[p?[floor(10*(n²-sin(4)))], #]`
-/

namespace A195905.P15678161425711111991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * ((n ^ 2 : ℝ) - Real.sin (4 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A195905.P15678161425711111991

namespace A195905

/-- `∑{p}[p?[floor(10*(n²-sin(4)))], #]` -/
def P15678161425711111991.Spec : Prop :=
  ∀ n, (P15678161425711111991.a n : ℤ) = A195905 (n + 1)

end A195905

/-! ## A195905.P15200681539396178427

`or(1, p?[A061722(n)])`
-/

namespace A195905.P15200681539396178427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195905.P15200681539396178427

namespace A195905

/-- `or(1, p?[A061722(n)])` -/
def P15200681539396178427.Spec : Prop :=
  ∀ n, P15200681539396178427.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P3772202935881425104

`or(1, p?[A033583(n)+7])`
-/

namespace A195905.P3772202935881425104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195905.P3772202935881425104

namespace A195905

/-- `or(1, p?[A033583(n)+7])` -/
def P3772202935881425104.Spec : Prop :=
  ∀ n, P3772202935881425104.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P11632579916456904452

`or(1, p?[A302576(n+1)+17])`
-/

namespace A195905.P11632579916456904452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302576 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195905.P11632579916456904452

namespace A195905

/-- `or(1, p?[A302576(n+1)+17])` -/
def P11632579916456904452.Spec : Prop :=
  ∀ n, P11632579916456904452.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P12387709441428743345

`∩[A107178(n+1), A061722(n)]`
-/

namespace A195905.P12387709441428743345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195905.P12387709441428743345

namespace A195905

/-- `∩[A107178(n+1), A061722(n)]` -/
def P12387709441428743345.Spec : Prop :=
  ∀ n, (P12387709441428743345.a n : ℤ) = A195905 (n + 1)

end A195905

/-! ## A195905.P1495692401827615384

`A000007(n+1)+p?[A061722(n)]`
-/

namespace A195905.P1495692401827615384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P1495692401827615384

namespace A195905

/-- `A000007(n+1)+p?[A061722(n)]` -/
def P1495692401827615384.Spec : Prop :=
  ∀ n, P1495692401827615384.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P7726421929147470791

`A000038(n+1)+p?[A061722(n)]`
-/

namespace A195905.P7726421929147470791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P7726421929147470791

namespace A195905

/-- `A000038(n+1)+p?[A061722(n)]` -/
def P7726421929147470791.Spec : Prop :=
  ∀ n, P7726421929147470791.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P5980151513819231278

`p?[A061722(n)]*A000034(2*n)`
-/

namespace A195905.P5980151513819231278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A195905.P5980151513819231278

namespace A195905

/-- `p?[A061722(n)]*A000034(2*n)` -/
def P5980151513819231278.Spec : Prop :=
  ∀ n, P5980151513819231278.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P12401578351383931168

`A007318(C(2, n))*p?[A061722(n)]`
-/

namespace A195905.P12401578351383931168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P12401578351383931168

namespace A195905

/-- `A007318(C(2, n))*p?[A061722(n)]` -/
def P12401578351383931168.Spec : Prop :=
  ∀ n, P12401578351383931168.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P11035195393494397770

`p?[A061722(n)]%A000041(n+67)`
-/

namespace A195905.P11035195393494397770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000041 (n + 67))

end

end A195905.P11035195393494397770

namespace A195905

/-- `p?[A061722(n)]%A000041(n+67)` -/
def P11035195393494397770.Spec : Prop :=
  ∀ n, P11035195393494397770.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P2061984394121065834

`p?[A061722(n)]+A008683(8*n+4)`
-/

namespace A195905.P2061984394121065834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A195905.P2061984394121065834

namespace A195905

/-- `p?[A061722(n)]+A008683(8*n+4)` -/
def P2061984394121065834.Spec : Prop :=
  ∀ n, P2061984394121065834.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P13137039196269091403

`A014963(9*n+6)*p?[A061722(n)]`
-/

namespace A195905.P13137039196269091403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P13137039196269091403

namespace A195905

/-- `A014963(9*n+6)*p?[A061722(n)]` -/
def P13137039196269091403.Spec : Prop :=
  ∀ n, P13137039196269091403.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P4750842263115725049

`A000041(C(2, n+2))*p?[A061722(n)]`
-/

namespace A195905.P4750842263115725049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P4750842263115725049

namespace A195905

/-- `A000041(C(2, n+2))*p?[A061722(n)]` -/
def P4750842263115725049.Spec : Prop :=
  ∀ n, P4750842263115725049.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P5649792150557814114

`A018252(gcd(n, n+1))*p?[A061722(n)]`
-/

namespace A195905.P5649792150557814114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P5649792150557814114

namespace A195905

/-- `A018252(gcd(n, n+1))*p?[A061722(n)]` -/
def P5649792150557814114.Spec : Prop :=
  ∀ n, P5649792150557814114.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P15472644116623509593

`A000010(((-1)^n)²)*p?[A061722(n)]`
-/

namespace A195905.P15472644116623509593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P15472644116623509593

namespace A195905

/-- `A000010(((-1)^n)²)*p?[A061722(n)]` -/
def P15472644116623509593.Spec : Prop :=
  ∀ n, P15472644116623509593.a n = A195905 (n + 1)

end A195905

/-! ## A195905.P2658767431006038088

`A000041(and(2, -n)/2)*p?[A061722(n)]`
-/

namespace A195905.P2658767431006038088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.land 2 (-(n : ℤ)) : ℚ) / 2)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195905.P2658767431006038088

namespace A195905

/-- `A000041(and(2, -n)/2)*p?[A061722(n)]` -/
def P2658767431006038088.Spec : Prop :=
  ∀ n, P2658767431006038088.a n = A195905 (n + 1)

end A195905

/-!
# A195906: A periodic sequence.

The programs for A195906, the canonical program `A195906.P15315175488598220688` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195906 has offset 1).

The definition of A195906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195906.P15315175488598220688

`a(n-5)` with `a(0)=22, a(1)=11, a(2)=6, a(3)=54, a(4)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195906

/-- `a(n-5)` -/
def P15315175488598220688.Spec : Prop :=
  ∀ n, (P15315175488598220688.a n : ℤ) = A195906 (n + 1)

theorem P15315175488598220688.correct : P15315175488598220688.Spec := by
  intro n
  simp only [A195906, Nat.add_sub_cancel]

end A195906

/-!
# A195908: Powers of 7 which have no zero in their decimal expansion.

The programs for A195908, there is no canonical definition to state claims against.
-/

/-! ## A195908.P10232443624052466185

`7^A030703(n)`
-/

namespace A195908.P10232443624052466185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A030703 (n + 1) : ℤ)

end

end A195908.P10232443624052466185

/-! ## A195908.P6390895981120177222

`7^A305927(n)`
-/

namespace A195908.P6390895981120177222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A305927 n : ℤ)

end

end A195908.P6390895981120177222

/-! ## A195908.P2972318224524684117

`A000420(A030703(n))`
-/

namespace A195908.P2972318224524684117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A030703 (n + 1)).toNat

end

end A195908.P2972318224524684117

/-! ## A195908.P15439914573987851381

`A000420(A305927(n))`
-/

namespace A195908.P15439914573987851381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A305927 n).toNat

end

end A195908.P15439914573987851381

/-! ## A195908.P17543431419938838238

`A000420(∪[A239012(n+1), A000420(n)])`
-/

namespace A195908.P17543431419938838238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A195908.P17543431419938838238

/-!
# A195909: First numerator and then denominator in a fraction expansion of log(2) - Pi/8.

The programs for A195909, there is no canonical definition to state claims against.
-/

/-! ## A195909.P3427834060549698384

`A195697(abs(xor(n, -2)))`
-/

namespace A195909.P3427834060549698384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 |Int.xor (n : ℤ) (-2)|.toNat

end

end A195909.P3427834060549698384

/-! ## A195909.P10167498263380878253

`A195697(xor(1, n)+1)`
-/

namespace A195909.P10167498263380878253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (Nat.xor 1 n + 1)

end

end A195909.P10167498263380878253

/-! ## A195909.P6967500474807167258

`A195697(2*or(1, n)-n)`
-/

namespace A195909.P6967500474807167258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (2 * Nat.lor 1 n - n)

end

end A195909.P6967500474807167258

/-! ## A195909.P16094223358162124325

`A195697(lcm(2, or(1, n))-n)`
-/

namespace A195909.P16094223358162124325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A195909.P16094223358162124325

/-! ## A195909.P16955517172328865243

`A195697((-1)^n+n+1)`
-/

namespace A195909.P16955517172328865243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A195909.P16955517172328865243

/-! ## A195909.P9864208537278178162

`A195697(A103889(n+1))%record[(n+2)*(and(n, n+1)+1)]`
-/

namespace A195909.P9864208537278178162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195697 (A103889 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A195909.P9864208537278178162

/-! ## A195909.P14458828379285297509

`or(A000007(n), A195697(A103889(n+1)))`
-/

namespace A195909.P14458828379285297509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A195697 (A103889 (n + 1)).toNat)

end

end A195909.P14458828379285297509

/-!
# A195910: a(n) = ceiling(tan(n)).

The programs for A195910, the canonical program `A195910.P3481932194148912844` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195910 has offset 0).

The definition of A195910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(tan(n))` (program `A195910.P3481932194148912844`, by `A195910.P3481932194148912844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195910.P3481932194148912844

`ceil(tan(n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195910

/-- `ceil(tan(n))` -/
def P3481932194148912844.Spec : Prop :=
  ∀ n, P3481932194148912844.a n = A195910 n

theorem P3481932194148912844.correct : P3481932194148912844.Spec := by
  intro n
  simp only [A195910]

end A195910

/-! ## A195910.P710391225579235210

`-floor(tan(-n))`
-/

namespace A195910.P710391225579235210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.tan (-(n : ℤ) : ℝ)⌋

end

end A195910.P710391225579235210

namespace A195910

/-- `-floor(tan(-n))` -/
def P710391225579235210.Spec : Prop :=
  ∀ n, P710391225579235210.a n = A195910 n

end A195910

/-! ## A195910.P15579111862821857330

`ceil(cot(acos(0)-n))`
-/

namespace A195910.P15579111862821857330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arccos (0 : ℝ) - (n : ℝ))⌉

end

end A195910.P15579111862821857330

namespace A195910

/-- `ceil(cot(acos(0)-n))` -/
def P15579111862821857330.Spec : Prop :=
  ∀ n, P15579111862821857330.a n = A195910 n

end A195910

/-! ## A195910.P11063777156514691029

`ceil(cot(asin(1)-n))`
-/

namespace A195910.P11063777156514691029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arcsin (1 : ℝ) - (n : ℝ))⌉

end

end A195910.P11063777156514691029

namespace A195910

/-- `ceil(cot(asin(1)-n))` -/
def P11063777156514691029.Spec : Prop :=
  ∀ n, P11063777156514691029.a n = A195910 n

end A195910

/-! ## A195910.P10362039523356814539

`ceil(sin(n)/cos(n))`
-/

namespace A195910.P10362039523356814539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) / Real.cos (n : ℝ)⌉

end

end A195910.P10362039523356814539

namespace A195910

/-- `ceil(sin(n)/cos(n))` -/
def P10362039523356814539.Spec : Prop :=
  ∀ n, P10362039523356814539.a n = A195910 n

end A195910

/-! ## A195910.P11470768157137362647

`n-floor(n-tan(n))`
-/

namespace A195910.P11470768157137362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) - Real.tan (n : ℝ)⌋

end

end A195910.P11470768157137362647

namespace A195910

/-- `n-floor(n-tan(n))` -/
def P11470768157137362647.Spec : Prop :=
  ∀ n, P11470768157137362647.a n = A195910 n

end A195910

/-! ## A195910.P11264492127898125363

`floor(tan(n)+(n+2)%(n+1))`
-/

namespace A195910.P11264492127898125363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) + (((n + 2) % (n + 1) : ℕ) : ℝ)⌋

end

end A195910.P11264492127898125363

namespace A195910

/-- `floor(tan(n)+(n+2)%(n+1))` -/
def P11264492127898125363.Spec : Prop :=
  ∀ n, P11264492127898125363.a n = A195910 n

end A195910

/-! ## A195910.P16169225040603732213

`A057427(n)+A000503(n)`
-/

namespace A195910.P16169225040603732213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000503 n

end

end A195910.P16169225040603732213

namespace A195910

/-- `A057427(n)+A000503(n)` -/
def P16169225040603732213.Spec : Prop :=
  ∀ n, P16169225040603732213.a n = A195910 n

end A195910

/-! ## A195910.P5266763193302482596

`A000503(n)-A057428(n)`
-/

namespace A195910.P5266763193302482596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n - A057428 n

end

end A195910.P5266763193302482596

namespace A195910

/-- `A000503(n)-A057428(n)` -/
def P5266763193302482596.Spec : Prop :=
  ∀ n, P5266763193302482596.a n = A195910 n

end A195910

/-! ## A195910.P16039260117296537845

`A000503(n)+A070747(n)²`
-/

namespace A195910.P16039260117296537845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + A070747 n ^ 2

end

end A195910.P16039260117296537845

namespace A195910

/-- `A000503(n)+A070747(n)²` -/
def P16039260117296537845.Spec : Prop :=
  ∀ n, P16039260117296537845.a n = A195910 n

end A195910

/-! ## A195910.P16489597828451860980

`A000503(n)+2-A054977(n)`
-/

namespace A195910.P16489597828451860980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + (2 - A054977 n)

end

end A195910.P16489597828451860980

namespace A195910

/-- `A000503(n)+2-A054977(n)` -/
def P16489597828451860980.Spec : Prop :=
  ∀ n, P16489597828451860980.a n = A195910 n

end A195910

/-! ## A195910.P9310132709642923819

`A000503(n)+A005699(n)-A005657(n)`
-/

namespace A195910.P9310132709642923819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + (A005699 n - A005657 n)

end

end A195910.P9310132709642923819

namespace A195910

/-- `A000503(n)+A005699(n)-A005657(n)` -/
def P9310132709642923819.Spec : Prop :=
  ∀ n, P9310132709642923819.a n = A195910 n

end A195910

/-! ## A195910.P18089501759604097685

`A000503(n)+A126565(n)-A126564(n)`
-/

namespace A195910.P18089501759604097685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + (A126565 n - A126564 n)

end

end A195910.P18089501759604097685

namespace A195910

/-- `A000503(n)+A126565(n)-A126564(n)` -/
def P18089501759604097685.Spec : Prop :=
  ∀ n, P18089501759604097685.a n = A195910 n

end A195910

/-! ## A195910.P9666269482034684209

`A258020(A293698(n+1))+A000503(n)`
-/

namespace A195910.P9666269482034684209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258020 (A293698 (n + 1)).toNat + A000503 n

end

end A195910.P9666269482034684209

namespace A195910

/-- `A258020(A293698(n+1))+A000503(n)` -/
def P9666269482034684209.Spec : Prop :=
  ∀ n, P9666269482034684209.a n = A195910 n

end A195910

/-! ## A195910.P2187056475439078708

`floor(tanh(n)+tan(n))`
-/

namespace A195910.P2187056475439078708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (n : ℝ) + Real.tan (n : ℝ)⌋

end

end A195910.P2187056475439078708

namespace A195910

/-- `floor(tanh(n)+tan(n))` -/
def P2187056475439078708.Spec : Prop :=
  ∀ n, P2187056475439078708.a n = A195910 n

end A195910

/-!
# A195911: a(n) = ceiling(cot(n)).

The programs for A195911, the canonical program `A195911.P13077335767756037234` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195911 has offset 1).

The definition of A195911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195911.P9960517770214068588

`ceil(cot(n+1))`
-/

namespace A195911.P9960517770214068588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (n + 1 : ℝ)⌉

end

end A195911.P9960517770214068588

namespace A195911

/-- `ceil(cot(n+1))` -/
def P9960517770214068588.Spec : Prop :=
  ∀ n, P9960517770214068588.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P576612265547510837

`ceil(1/tan(n+1))`
-/

namespace A195911.P576612265547510837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / Real.tan (n + 1 : ℝ)⌉

end

end A195911.P576612265547510837

namespace A195911

/-- `ceil(1/tan(n+1))` -/
def P576612265547510837.Spec : Prop :=
  ∀ n, P576612265547510837.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P4714984202254814588

`floor(cot(n+1))+1`
-/

namespace A195911.P4714984202254814588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (n + 1 : ℝ)⌋ + 1

end

end A195911.P4714984202254814588

namespace A195911

/-- `floor(cot(n+1))+1` -/
def P4714984202254814588.Spec : Prop :=
  ∀ n, P4714984202254814588.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P16584335521718469925

`ceil(tan(acot(tan(n+1))))`
-/

namespace A195911.P16584335521718469925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (SequenceMachineLib.acot (Real.tan (n + 1 : ℝ)))⌉

end

end A195911.P16584335521718469925

namespace A195911

/-- `ceil(tan(acot(tan(n+1))))` -/
def P16584335521718469925.Spec : Prop :=
  ∀ n, P16584335521718469925.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P16771350030506279887

`ceil(tan(n+1)^-1)`
-/

namespace A195911.P16771350030506279887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n + 1 : ℝ) ^ (-1 : ℤ)⌉

end

end A195911.P16771350030506279887

namespace A195911

/-- `ceil(tan(n+1)^-1)` -/
def P16771350030506279887.Spec : Prop :=
  ∀ n, P16771350030506279887.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P5523864191001858213

`ceil(tan(acos(0)-(n+1)))`
-/

namespace A195911.P5523864191001858213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.arccos (0 : ℝ) - (n + 1 : ℝ))⌉

end

end A195911.P5523864191001858213

namespace A195911

/-- `ceil(tan(acos(0)-(n+1)))` -/
def P5523864191001858213.Spec : Prop :=
  ∀ n, P5523864191001858213.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P16536095517552186379

`ceil(tan(asin(1)-(n+1)))`
-/

namespace A195911.P16536095517552186379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.arcsin (1 : ℝ) - (n + 1 : ℝ))⌉

end

end A195911.P16536095517552186379

namespace A195911

/-- `ceil(tan(asin(1)-(n+1)))` -/
def P16536095517552186379.Spec : Prop :=
  ∀ n, P16536095517552186379.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P9273654192648805149

`floor(1/tan(n+1))+1`
-/

namespace A195911.P9273654192648805149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (n + 1 : ℝ)⌋ + 1

end

end A195911.P9273654192648805149

namespace A195911

/-- `floor(1/tan(n+1))+1` -/
def P9273654192648805149.Spec : Prop :=
  ∀ n, P9273654192648805149.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P2882565521507953545

`round(cot(n+1)+1/2)`
-/

namespace A195911.P2882565521507953545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (n + 1 : ℝ) + ((1 : ℚ) / 2 : ℝ))

end

end A195911.P2882565521507953545

namespace A195911

/-- `round(cot(n+1)+1/2)` -/
def P2882565521507953545.Spec : Prop :=
  ∀ n, P2882565521507953545.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P10694387400377021144

`-floor(cot(n-1-2*n))`
-/

namespace A195911.P10694387400377021144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.cot ((n : ℤ) - 1 - (2 * n : ℤ) : ℝ)⌋

end

end A195911.P10694387400377021144

namespace A195911

/-- `-floor(cot(n-1-2*n))` -/
def P10694387400377021144.Spec : Prop :=
  ∀ n, P10694387400377021144.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P4754699440331590970

`ceil(-cot(n-1-2*n))`
-/

namespace A195911.P4754699440331590970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.cot ((n : ℤ) - 1 - (2 * n : ℤ) : ℝ)⌉

end

end A195911.P4754699440331590970

namespace A195911

/-- `ceil(-cot(n-1-2*n))` -/
def P4754699440331590970.Spec : Prop :=
  ∀ n, P4754699440331590970.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P2185647232097446559

`ceil(cos(n+1)/sin(n+1))`
-/

namespace A195911.P2185647232097446559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n + 1 : ℝ) / Real.sin (n + 1 : ℝ)⌉

end

end A195911.P2185647232097446559

namespace A195911

/-- `ceil(cos(n+1)/sin(n+1))` -/
def P2185647232097446559.Spec : Prop :=
  ∀ n, P2185647232097446559.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P13380425378237889214

`1-ceil(cot(n-1-2*n))`
-/

namespace A195911.P13380425378237889214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.cot ((n : ℤ) - 1 - (2 * n : ℤ) : ℝ)⌉

end

end A195911.P13380425378237889214

namespace A195911

/-- `1-ceil(cot(n-1-2*n))` -/
def P13380425378237889214.Spec : Prop :=
  ∀ n, P13380425378237889214.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P13077335767756037234

`A037448(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195911

/-- `A037448(n+1)+1` -/
def P13077335767756037234.Spec : Prop :=
  ∀ n, P13077335767756037234.a n = A195911 (n + 1)

theorem P13077335767756037234.correct : P13077335767756037234.Spec := by
  intro n
  simp only [A195911, Nat.add_sub_cancel]

end A195911

/-! ## A195911.P4183909088176819797

`ceil(log2(root(2, tan(n+1))))`
-/

namespace A195911.P4183909088176819797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((2 : ℝ) ^ (1 / Real.tan (n + 1 : ℝ)))⌉

end

end A195911.P4183909088176819797

namespace A195911

/-- `ceil(log2(root(2, tan(n+1))))` -/
def P4183909088176819797.Spec : Prop :=
  ∀ n, P4183909088176819797.a n = A195911 (n + 1)

end A195911

/-! ## A195911.P17770984445740088082

`ceil(log(root(e, tan(n+1))))`
-/

namespace A195911.P17770984445740088082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.exp 1 ^ (1 / Real.tan (n + 1 : ℝ)))⌉

end

end A195911.P17770984445740088082

namespace A195911

/-- `ceil(log(root(e, tan(n+1))))` -/
def P17770984445740088082.Spec : Prop :=
  ∀ n, P17770984445740088082.a n = A195911 (n + 1)

end A195911

/-!
# A195913: The denominator in a fraction expansion of log(2)-Pi/8.

The programs for A195913, the canonical program `A195913.P6690968909208504189` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195913 has offset 1).

The definition of A195913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195913.P6690968909208504189

`record[(n+2)*(and(n, n+1)+1)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195913

/-- `record[(n+2)*(and(n, n+1)+1)]` -/
def P6690968909208504189.Spec : Prop :=
  ∀ n, (P6690968909208504189.a n : ℤ) = A195913 (n + 1)

theorem P6690968909208504189.correct : P6690968909208504189.Spec := by
  intro n
  simp only [A195913, Nat.add_sub_cancel]

end A195913

/-! ## A195913.P16420019027854976254

`record[lcm(n+2, and(n, n+1)+1)]`
-/

namespace A195913.P16420019027854976254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.land n (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195913.P16420019027854976254

namespace A195913

/-- `record[lcm(n+2, and(n, n+1)+1)]` -/
def P16420019027854976254.Spec : Prop :=
  ∀ n, (P16420019027854976254.a n : ℤ) = A195913 (n + 1)

end A195913

/-! ## A195913.P13448530406081440981

`(comp[4*n]+1)*or(1, comp[or(3, n)])`
-/

namespace A195913.P13448530406081440981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A195913.P13448530406081440981

namespace A195913

/-- `(comp[4*n]+1)*or(1, comp[or(3, n)])` -/
def P13448530406081440981.Spec : Prop :=
  ∀ n, (P13448530406081440981.a n : ℤ) = A195913 (n + 1)

end A195913

/-! ## A195913.P16301707544007486534

`record[(n+2)*(n+1-val(n+1, 2))]`
-/

namespace A195913.P16301707544007486534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195913.P16301707544007486534

namespace A195913

/-- `record[(n+2)*(n+1-val(n+1, 2))]` -/
def P16301707544007486534.Spec : Prop :=
  ∀ n, P16301707544007486534.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P3092996584484015066

`record[(n+2)*(n+2-gcd(4, n+1))]`
-/

namespace A195913.P3092996584484015066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n + 2 : ℤ) - (Nat.gcd 4 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195913.P3092996584484015066

namespace A195913

/-- `record[(n+2)*(n+2-gcd(4, n+1))]` -/
def P3092996584484015066.Spec : Prop :=
  ∀ n, P3092996584484015066.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P3547812567607083485

`A004772(n+2)*A168056(n)`
-/

namespace A195913.P3547812567607083485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 2) * A168056 n

end

end A195913.P3547812567607083485

namespace A195913

/-- `A004772(n+2)*A168056(n)` -/
def P3547812567607083485.Spec : Prop :=
  ∀ n, P3547812567607083485.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P7945813265250217122

`(A004523(n)+A004396(n+1))*A004772(n+2)`
-/

namespace A195913.P7945813265250217122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 n + A004396 (n + 1)) * A004772 (n + 2)

end

end A195913.P7945813265250217122

namespace A195913

/-- `(A004523(n)+A004396(n+1))*A004772(n+2)` -/
def P7945813265250217122.Spec : Prop :=
  ∀ n, P7945813265250217122.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P3192054508959421320

`(A004772(n+2)-A131534(n))*A004772(n+2)`
-/

namespace A195913.P3192054508959421320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004772 (n + 2) - A131534 n) * A004772 (n + 2)

end

end A195913.P3192054508959421320

namespace A195913

/-- `(A004772(n+2)-A131534(n))*A004772(n+2)` -/
def P3192054508959421320.Spec : Prop :=
  ∀ n, P3192054508959421320.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P12708996846100495523

`A289870(A042968(n+1))`
-/

namespace A195913.P12708996846100495523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289870 (A042968 (n + 1)).toNat

end

end A195913.P12708996846100495523

namespace A195913

/-- `A289870(A042968(n+1))` -/
def P12708996846100495523.Spec : Prop :=
  ∀ n, P12708996846100495523.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P2821401357888265041

`A226023(A047236(n+1))`
-/

namespace A195913.P2821401357888265041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 (A047236 (n + 1)).toNat

end

end A195913.P2821401357888265041

namespace A195913

/-- `A226023(A047236(n+1))` -/
def P2821401357888265041.Spec : Prop :=
  ∀ n, P2821401357888265041.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P11788013217480957517

`A226023(2*n+1-A011655(n))`
-/

namespace A195913.P11788013217480957517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 ((2 * n + 1 : ℤ) - A011655 n).toNat

end

end A195913.P11788013217480957517

namespace A195913

/-- `A226023(2*n+1-A011655(n))` -/
def P11788013217480957517.Spec : Prop :=
  ∀ n, P11788013217480957517.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P8129599529501046040

`A226023(A004773(n)+A004396(n+1))`
-/

namespace A195913.P8129599529501046040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 (A004773 n + A004396 (n + 1)).toNat

end

end A195913.P8129599529501046040

namespace A195913

/-- `A226023(A004773(n)+A004396(n+1))` -/
def P8129599529501046040.Spec : Prop :=
  ∀ n, P8129599529501046040.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P12305186297399883770

`A195697(Δ[n²])`
-/

namespace A195913.P12305186297399883770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195913.P12305186297399883770

namespace A195913

/-- `A195697(Δ[n²])` -/
def P12305186297399883770.Spec : Prop :=
  ∀ n, P12305186297399883770.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P14104718184206334232

`record[A195697(n+1)]`
-/

namespace A195913.P14104718184206334232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195913.P14104718184206334232

namespace A195913

/-- `record[A195697(n+1)]` -/
def P14104718184206334232.Spec : Prop :=
  ∀ n, P14104718184206334232.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P2213504798610425011

`record[A195909(n+2)]`
-/

namespace A195913.P2213504798610425011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195913.P2213504798610425011

namespace A195913

/-- `record[A195909(n+2)]` -/
def P2213504798610425011.Spec : Prop :=
  ∀ n, P2213504798610425011.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P3884022235845717639

`A195909(2*(n+1))`
-/

namespace A195913.P3884022235845717639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (2 * (n + 1))

end

end A195913.P3884022235845717639

namespace A195913

/-- `A195909(2*(n+1))` -/
def P3884022235845717639.Spec : Prop :=
  ∀ n, P3884022235845717639.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P10163005509970106995

`abs(A195697(2*n+1))`
-/

namespace A195913.P10163005509970106995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195697 (2 * n + 1)|

end

end A195913.P10163005509970106995

namespace A195913

/-- `abs(A195697(2*n+1))` -/
def P10163005509970106995.Spec : Prop :=
  ∀ n, P10163005509970106995.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P16930923111216265858

`A289870(A097992(2*n)+n)`
-/

namespace A195913.P16930923111216265858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289870 (A097992 (2 * n) + (n : ℤ)).toNat

end

end A195913.P16930923111216265858

namespace A195913

/-- `A289870(A097992(2*n)+n)` -/
def P16930923111216265858.Spec : Prop :=
  ∀ n, P16930923111216265858.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P4801193226799106904

`A226023(A092200(2*n+1)-2)`
-/

namespace A195913.P4801193226799106904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 (A092200 (2 * n + 1) - 2).toNat

end

end A195913.P4801193226799106904

namespace A195913

/-- `A226023(A092200(2*n+1)-2)` -/
def P4801193226799106904.Spec : Prop :=
  ∀ n, P4801193226799106904.a n = A195913 (n + 1)

end A195913

/-! ## A195913.P6068056413009491786

`A133310(2*n+1)*A133310(2*n)`
-/

namespace A195913.P6068056413009491786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (2 * n + 1) * A133310 (2 * n)

end

end A195913.P6068056413009491786

namespace A195913

/-- `A133310(2*n+1)*A133310(2*n)` -/
def P6068056413009491786.Spec : Prop :=
  ∀ n, P6068056413009491786.a n = A195913 (n + 1)

end A195913

/-!
# A195915: Table with T(n,1) = n, otherwise T(n,k) = xor(T(n-1,k-1), T(n-1,k)).

The programs for A195915, there is no canonical definition to state claims against.
-/

/-! ## A195915.P11595331516345072566

`A195916(∑[char[∑[n]]]²-n)`
-/

namespace A195915.P11595331516345072566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A195915.P11595331516345072566

/-! ## A195915.P10147634145576014216

`gcd(A000038(n), A195916(A038722(n+1)))`
-/

namespace A195915.P10147634145576014216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A195916 (A038722 (n + 1)).toNat)

end

end A195915.P10147634145576014216

/-! ## A195915.P10954596976148680677

`lcm(A020985(n), A195916(A038722(n+1)))`
-/

namespace A195915.P10954596976148680677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A195916 (A038722 (n + 1)).toNat)

end

end A195915.P10954596976148680677

/-! ## A195915.P2701965343518032883

`or(A000007(n), A195916(A038722(n+1)))`
-/

namespace A195915.P2701965343518032883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A195916 (A038722 (n + 1)).toNat)

end

end A195915.P2701965343518032883

/-! ## A195915.P14996533292769932260

`A033999(n)²*A195916(A038722(n+1))`
-/

namespace A195915.P14996533292769932260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A195916 (A038722 (n + 1)).toNat

end

end A195915.P14996533292769932260

/-! ## A195915.P6682155803231868693

`A195916(A038722(n+1))+A000007(n+1)`
-/

namespace A195915.P6682155803231868693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A195915.P6682155803231868693

/-! ## A195915.P5430729173582587869

`A195916(A038722(n+1))+A003982(Δ[n²])`
-/

namespace A195915.P5430729173582587869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 (A038722 (n + 1)).toNat + A003982 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195915.P5430729173582587869

/-! ## A195915.P12586209507524386361

`A195916(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A195915.P12586209507524386361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A195915.P12586209507524386361

/-! ## A195915.P2888674282493229439

`A195916(A038722(n+1))^∑{e}[A006530(4*n+3), #]`
-/

namespace A195915.P2888674282493229439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195916 (A038722 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A195915.P2888674282493229439

/-!
# A195916: Table with T(n,n) = n, T(n,k) = xor(T(n-1,k-1), T(n-1,k)).

The programs for A195916, there is no canonical definition to state claims against.
-/

/-! ## A195916.P7451325064402825584

`A195915(∑[char[∑[n]]]²-n)`
-/

namespace A195916.P7451325064402825584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195915 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A195916.P7451325064402825584

/-! ## A195916.P12329637017576662233

`gcd(n, n+1)*A195915(A038722(Δ[n²]-n))`
-/

namespace A195916.P12329637017576662233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A195915 (A038722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A195916.P12329637017576662233

/-! ## A195916.P15562046868719715109

`gcd(A000038(n), A195915(A038722(n+1)))`
-/

namespace A195916.P15562046868719715109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A195915 (A038722 (n + 1)).toNat)

end

end A195916.P15562046868719715109

/-! ## A195916.P18128685658037883392

`∑{d}[A195915(A038722(n+1)), A000010(#)]`
-/

namespace A195916.P18128685658037883392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195915 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A195916.P18128685658037883392

/-! ## A195916.P6628604864510459928

`A033999(n)²*A195915(A038722(n+1))`
-/

namespace A195916.P6628604864510459928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A195915 (A038722 (n + 1)).toNat

end

end A195916.P6628604864510459928

/-! ## A195916.P10341587417475095434

`A057427(n+1)*A195915(A038722(n+1))`
-/

namespace A195916.P10341587417475095434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A195915 (A038722 (n + 1)).toNat

end

end A195916.P10341587417475095434

/-! ## A195916.P13086024293689967143

`A051033(C(2, n))*A195915(A038722(n+1))`
-/

namespace A195916.P13086024293689967143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (Nat.choose 2 n) * A195915 (A038722 (n + 1)).toNat

end

end A195916.P13086024293689967143

/-! ## A195916.P15848084442053109615

`∑{e}[A000040(n+1), #]*A195915(A038722(n+1))`
-/

namespace A195916.P15848084442053109615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A195915 (A038722 (n + 1)).toNat

end

end A195916.P15848084442053109615

/-! ## A195916.P6124104751182267868

`A195915(A038722(n+1))^(A000040(C(n, n²)+2)-2)`
-/

namespace A195916.P6124104751182267868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195915 (A038722 (n + 1)).toNat : ℚ) ^ (A000040 (Nat.choose n (n ^ 2) + 2) - 2 : ℤ)

end

end A195916.P6124104751182267868

/-!
# A195917: Numbers k such that both k+1 and 7k+1 are squares.

The programs for A195917, the canonical program `A195917.P12614339357049223843` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195917 has offset 1).

The definition of A195917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195917.P12614339357049223843

`A161852(n+1)²-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195917

/-- `A161852(n+1)²-1` -/
def P12614339357049223843.Spec : Prop :=
  ∀ n, P12614339357049223843.a n = A195917 (n + 1)

theorem P12614339357049223843.correct : P12614339357049223843.Spec := by
  intro n
  simp only [A195917, Nat.add_sub_cancel]

end A195917

/-! ## A195917.P2277515321064090449

`8*A077399(n)`
-/

namespace A195917.P2277515321064090449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A077399 n

end

end A195917.P2277515321064090449

namespace A195917

/-- `8*A077399(n)` -/
def P2277515321064090449.Spec : Prop :=
  ∀ n, P2277515321064090449.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P15663923289861702132

`A007750(comp[or(2, n)-1])`
-/

namespace A195917.P15663923289861702132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A195917.P15663923289861702132

namespace A195917

/-- `A007750(comp[or(2, n)-1])` -/
def P15663923289861702132.Spec : Prop :=
  ∀ n, P15663923289861702132.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P520332957605735817

`A007750(n%2+2*n)`
-/

namespace A195917.P520332957605735817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (n % 2 + 2 * n)

end

end A195917.P520332957605735817

namespace A195917

/-- `A007750(n%2+2*n)` -/
def P520332957605735817.Spec : Prop :=
  ∀ n, P520332957605735817.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P14067141462247378552

`A007750(comp[comp[or(2, n)]+1])`
-/

namespace A195917.P14067141462247378552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A195917.P14067141462247378552

namespace A195917

/-- `A007750(comp[comp[or(2, n)]+1])` -/
def P14067141462247378552.Spec : Prop :=
  ∀ n, P14067141462247378552.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P14158501637409690026

`(2*A077398(n)+1)²-1`
-/

namespace A195917.P14158501637409690026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A077398 n + 1) ^ 2 - 1

end

end A195917.P14158501637409690026

namespace A195917

/-- `(2*A077398(n)+1)²-1` -/
def P14158501637409690026.Spec : Prop :=
  ∀ n, P14158501637409690026.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P11639744932752097434

`A007750(A014601(n))`
-/

namespace A195917.P11639744932752097434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A014601 n).toNat

end

end A195917.P11639744932752097434

namespace A195917

/-- `A007750(A014601(n))` -/
def P11639744932752097434.Spec : Prop :=
  ∀ n, P11639744932752097434.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P2012375782334207205

`A077400(n)+A077399(n)`
-/

namespace A195917.P2012375782334207205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077400 n + A077399 n

end

end A195917.P2012375782334207205

namespace A195917

/-- `A077400(n)+A077399(n)` -/
def P2012375782334207205.Spec : Prop :=
  ∀ n, P2012375782334207205.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P14110194200872526431

`A007750(A042948(n+1)-1)`
-/

namespace A195917.P14110194200872526431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A042948 (n + 1) - 1).toNat

end

end A195917.P14110194200872526431

namespace A195917

/-- `A007750(A042948(n+1)-1)` -/
def P14110194200872526431.Spec : Prop :=
  ∀ n, P14110194200872526431.a n = A195917 (n + 1)

end A195917

/-! ## A195917.P9685603613713335779

`A007750(A338062(n+1)-1)`
-/

namespace A195917.P9685603613713335779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A338062 (n + 1) - 1).toNat

end

end A195917.P9685603613713335779

namespace A195917

/-- `A007750(A338062(n+1)-1)` -/
def P9685603613713335779.Spec : Prop :=
  ∀ n, P9685603613713335779.a n = A195917 (n + 1)

end A195917

/-!
# A195918: Positive integers a for which there is a (-3/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195918, there is no canonical definition to state claims against.
-/

/-! ## A195918.P2427905027273272735

`A196238(A052002(2*(n+1)+1))`
-/

namespace A195918.P2427905027273272735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A052002 (2 * (n + 1) + 1)).toNat

end

end A195918.P2427905027273272735

/-!
# A195924: The number of fixed points in S_n by the action of Foata's bijection.

The programs for A195924, there is no canonical definition to state claims against.
-/

/-! ## A195924.P16813507624003330138

`A325363(A007477(n+1))`
-/

namespace A195924.P16813507624003330138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A007477 (n + 1)).toNat

end

end A195924.P16813507624003330138

/-! ## A195924.P3333146596714575878

`A325363(A274936(n+1))`
-/

namespace A195924.P3333146596714575878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A274936 (n + 1)).toNat

end

end A195924.P3333146596714575878

/-! ## A195924.P226003403416109643

`A224772(A224769(n))+A000085(n)`
-/

namespace A195924.P226003403416109643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224772 (A224769 n).toNat + A000085 n

end

end A195924.P226003403416109643

/-! ## A195924.P8511411533961713450

`A241461(A284618(n+2))+A003239(n)`
-/

namespace A195924.P8511411533961713450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241461 (A284618 (n + 2)).toNat + A003239 n

end

end A195924.P8511411533961713450

/-!
# A195925: Positive integers a for which there is a (3/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195925, there is no canonical definition to state claims against.
-/

/-! ## A195925.P7926055565260289976

`ceil(log(A059612(3*(n+1))*A135187(n+1)))`
-/

namespace A195925.P7926055565260289976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A059612 (3 * (n + 1)) * A135187 (n + 1) : ℝ)⌉

end

end A195925.P7926055565260289976

/-! ## A195925.P15934527470215001560

`A060143(n)+A000523(A104783(n+1))`
-/

namespace A195925.P15934527470215001560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + A000523 (A104783 (n + 1)).toNat

end

end A195925.P15934527470215001560

/-! ## A195925.P232347745333273760

`A130233(A041003(2*n)*A324850(n+4))`
-/

namespace A195925.P232347745333273760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A041003 (2 * n) * A324850 (n + 4)).toNat

end

end A195925.P232347745333273760

/-! ## A195925.P1611258034065578782

`A121854(3*(n+1))-A079998(A282511(n+1))`
-/

namespace A195925.P1611258034065578782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (3 * (n + 1)) - A079998 (A282511 (n + 1)).toNat

end

end A195925.P1611258034065578782

/-! ## A195925.P8577601142941988222

`A285972(A083212(n+4)+A054635(n+4))+A225793(n+2)`
-/

namespace A195925.P8577601142941988222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285972 (A083212 (n + 4) + A054635 (n + 4)).toNat + A225793 (n + 2)

end

end A195925.P8577601142941988222

/-!
# A195931: The number of orbits in S_n by the action of Foata's bijection.

The programs for A195931, there is no canonical definition to state claims against.
-/

/-! ## A195931.P18352736847116881622

`A332246(Δ[n!]+C(2, n+2)-24*C(n, 4))`
-/

namespace A195931.P18352736847116881622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ) - (24 * Nat.choose n 4 : ℤ)).toNat

end

end A195931.P18352736847116881622

/-! ## A195931.P9551197254336802333

`A108839(A150242(n))`
-/

namespace A195931.P9551197254336802333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (A150242 n).toNat

end

end A195931.P9551197254336802333

/-! ## A195931.P7908314911930722398

`A139712(A148429(n))`
-/

namespace A195931.P7908314911930722398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (A148429 n).toNat

end

end A195931.P7908314911930722398

/-!
# A195932: Positive integers a for which there is a (-1/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195932, there is no canonical definition to state claims against.
-/

/-! ## A195932.P10599274402164296574

`∑[A288478(∑[A099637(n+1)])]`
-/

namespace A195932.P10599274402164296574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195932.P10599274402164296574

/-! ## A195932.P11747039608902492783

`∑[A328100(A049643(A303624(n+1)))]`
-/

namespace A195932.P11747039608902492783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328100 (A049643 (A303624 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195932.P11747039608902492783

/-!
# A195933: Positive integers b for which there is a (-1/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195933, there is no canonical definition to state claims against.
-/

/-! ## A195933.P16362829232773922937

`3*A349190(A342726(n+1))`
-/

namespace A195933.P16362829232773922937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A349190 (A342726 (n + 1)).toNat

end

end A195933.P16362829232773922937

/-! ## A195933.P6766423014343514150

`(n+1)*A052560(A337413(n+1))`
-/

namespace A195933.P6766423014343514150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052560 (A337413 (n + 1)).toNat

end

end A195933.P6766423014343514150

/-! ## A195933.P4275897564620932172

`(A342063(A060455(n))+1)*(n+1)`
-/

namespace A195933.P4275897564620932172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A342063 (A060455 n).toNat + 1) * (n + 1 : ℤ)

end

end A195933.P4275897564620932172

/-! ## A195933.P861818849117927605

`3*(n+1)*A325466(A268437(n))`
-/

namespace A195933.P861818849117927605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A325466 (A268437 n).toNat

end

end A195933.P861818849117927605

/-!
# A195934: Positive integers c for which there is a (-1/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195934, there is no canonical definition to state claims against.
-/

/-! ## A195934.P4654768979054049017

`3*n+2+A324229(n+1)!`
-/

namespace A195934.P4654768979054049017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2 + Nat.factorial (A324229 (n + 1)).toNat

end

end A195934.P4654768979054049017

/-! ## A195934.P5544668025730310981

`A055086((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n)+2*(n+2)²-3)`
-/

namespace A195934.P5544668025730310981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ)))))) + ((2 * (n + 2) ^ 2 : ℤ) - 3)).toNat

end

end A195934.P5544668025730310981

/-! ## A195934.P10458172842889021293

`A195933(A062944(n+1)+1)`
-/

namespace A195934.P10458172842889021293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195933 (A062944 (n + 1) + 1).toNat

end

end A195934.P10458172842889021293

/-! ## A195934.P6540974401933079129

`A275839(A143570(n))+A000027(3*n+2)`
-/

namespace A195934.P6540974401933079129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275839 (A143570 n).toNat + A000027 (3 * n + 2)

end

end A195934.P6540974401933079129

/-!
# A195938: a(n) = n/2 if n mod 4 = 2, 0 otherwise.

The programs for A195938, the canonical program `A195938.P6683921748256925125` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195938 has offset 1).

The definition of A195938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195938.P6683921748256925125

`Δ[round(n/4)²]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195938

/-- `Δ[round(n/4)²]` -/
def P6683921748256925125.Spec : Prop :=
  ∀ n, P6683921748256925125.a n = A195938 (n + 1)

theorem P6683921748256925125.correct : P6683921748256925125.Spec := by
  intro n
  simp only [A195938, Nat.add_sub_cancel]

end A195938

/-! ## A195938.P9025952741671442191

`∑[n]²%(n+1)`
-/

namespace A195938.P9025952741671442191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (n + 1)

end

end A195938.P9025952741671442191

namespace A195938

/-- `∑[n]²%(n+1)` -/
def P9025952741671442191.Spec : Prop :=
  ∀ n, (P9025952741671442191.a n : ℤ) = A195938 (n + 1)

end A195938

/-! ## A195938.P17088726546562869356

`-∑[-n^3]%(n+1)`
-/

namespace A195938.P17088726546562869356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A195938.P17088726546562869356

namespace A195938

/-- `-∑[-n^3]%(n+1)` -/
def P17088726546562869356.Spec : Prop :=
  ∀ n, P17088726546562869356.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P328742913604236975

`∑[∑[n]]%2*∑[n%2]`
-/

namespace A195938.P328742913604236975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A195938.P328742913604236975

namespace A195938

/-- `∑[∑[n]]%2*∑[n%2]` -/
def P328742913604236975.Spec : Prop :=
  ∀ n, (P328742913604236975.a n : ℤ) = A195938 (n + 1)

end A195938

/-! ## A195938.P15188936735071178095

`abs(∑[(n-1)^3]%(n+1))`
-/

namespace A195938.P15188936735071178095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A195938.P15188936735071178095

namespace A195938

/-- `abs(∑[(n-1)^3]%(n+1))` -/
def P15188936735071178095.Spec : Prop :=
  ∀ n, P15188936735071178095.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P8300187374560439356

`(n+1)*and(1, ∑[∑[n]])/2`
-/

namespace A195938.P8300187374560439356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A195938.P8300187374560439356

namespace A195938

/-- `(n+1)*and(1, ∑[∑[n]])/2` -/
def P8300187374560439356.Spec : Prop :=
  ∀ n, P8300187374560439356.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P16698245409328765717

`1-gcd(n+1, ∑[n]²)+n`
-/

namespace A195938.P16698245409328765717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.gcd (n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ) + (n : ℤ)

end

end A195938.P16698245409328765717

namespace A195938

/-- `1-gcd(n+1, ∑[n]²)+n` -/
def P16698245409328765717.Spec : Prop :=
  ∀ n, P16698245409328765717.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P3320154613116432394

`lcm(n+1, and(4, (n+1)²))/4`
-/

namespace A195938.P3320154613116432394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.land 4 ((n + 1) ^ 2)) : ℚ) / 4

end

end A195938.P3320154613116432394

namespace A195938

/-- `lcm(n+1, and(4, (n+1)²))/4` -/
def P3320154613116432394.Spec : Prop :=
  ∀ n, P3320154613116432394.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P1138713843226424723

`n-(∑[n]^3-1)%(n+1)`
-/

namespace A195938.P1138713843226424723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A195938.P1138713843226424723

namespace A195938

/-- `n-(∑[n]^3-1)%(n+1)` -/
def P1138713843226424723.Spec : Prop :=
  ∀ n, P1138713843226424723.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P10156851048024573989

`(n+1)/4*((n+1)*n²)%4`
-/

namespace A195938.P10156851048024573989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (((n + 1) * n ^ 2 % 4 : ℕ) : ℚ)

end

end A195938.P10156851048024573989

namespace A195938

/-- `(n+1)/4*((n+1)*n²)%4` -/
def P10156851048024573989.Spec : Prop :=
  ∀ n, P10156851048024573989.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P8284178293218328230

`floor((n+1)/(lcm(4, n+3)-(n+1)))`
-/

namespace A195938.P8284178293218328230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((Nat.lcm 4 (n + 3) : ℤ) - (n + 1 : ℤ) : ℚ)⌋

end

end A195938.P8284178293218328230

namespace A195938

/-- `floor((n+1)/(lcm(4, n+3)-(n+1)))` -/
def P8284178293218328230.Spec : Prop :=
  ∀ n, P8284178293218328230.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P13048230033035054092

`and(n+2, 2-gcd(n+3, n-1))/2`
-/

namespace A195938.P13048230033035054092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (2 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℤ)) : ℚ) / 2

end

end A195938.P13048230033035054092

namespace A195938

/-- `and(n+2, 2-gcd(n+3, n-1))/2` -/
def P13048230033035054092.Spec : Prop :=
  ∀ n, P13048230033035054092.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P8216667978751599722

`(n+1)/(n-3)*a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A195938.P8216667978751599722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 0, 0] fun n a =>
  (n + 1 : ℚ) / ((n : ℤ) - 3 : ℚ) * a (n - 4)

end

end A195938.P8216667978751599722

namespace A195938

/-- `(n+1)/(n-3)*a(n-4)` -/
def P8216667978751599722.Spec : Prop :=
  ∀ n, P8216667978751599722.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P16505808796784579609

`and(n+2, and(n-1, n-2)-(n-3))/2`
-/

namespace A195938.P16505808796784579609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (Int.land ((n : ℤ) - 1) ((n : ℤ) - 2) - ((n : ℤ) - 3)) : ℚ) / 2

end

end A195938.P16505808796784579609

namespace A195938

/-- `and(n+2, and(n-1, n-2)-(n-3))/2` -/
def P16505808796784579609.Spec : Prop :=
  ∀ n, P16505808796784579609.a n = (A195938 (n + 1) : ℚ)

end A195938

/-! ## A195938.P11265655474373548216

`and(∑[and(1, n)], A219977(n))`
-/

namespace A195938.P11265655474373548216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A219977 n)

end

end A195938.P11265655474373548216

namespace A195938

/-- `and(∑[and(1, n)], A219977(n))` -/
def P11265655474373548216.Spec : Prop :=
  ∀ n, P11265655474373548216.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P11320036023459024681

`and(1, n)*A204187(n+1)`
-/

namespace A195938.P11320036023459024681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A204187 (n + 1)

end

end A195938.P11320036023459024681

namespace A195938

/-- `and(1, n)*A204187(n+1)` -/
def P11320036023459024681.Spec : Prop :=
  ∀ n, P11320036023459024681.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P10413581503478001840

`n-floor(n/A000010(gcd(n+3, n-1)))`
-/

namespace A195938.P10413581503478001840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A000010 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) : ℚ)⌋

end

end A195938.P10413581503478001840

namespace A195938

/-- `n-floor(n/A000010(gcd(n+3, n-1)))` -/
def P10413581503478001840.Spec : Prop :=
  ∀ n, P10413581503478001840.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P2389048359358457830

`A131728(n*A000035(n))`
-/

namespace A195938.P2389048359358457830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 ((n : ℤ) * A000035 n).toNat

end

end A195938.P2389048359358457830

namespace A195938

/-- `A131728(n*A000035(n))` -/
def P2389048359358457830.Spec : Prop :=
  ∀ n, P2389048359358457830.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P15225770134775755106

`A131728(n*A096268(n))`
-/

namespace A195938.P15225770134775755106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 ((n : ℤ) * A096268 n).toNat

end

end A195938.P15225770134775755106

namespace A195938

/-- `A131728(n*A096268(n))` -/
def P15225770134775755106.Spec : Prop :=
  ∀ n, P15225770134775755106.a n = A195938 (n + 1)

end A195938

/-! ## A195938.P2240341313645659645

`A096271(n)*A131728(n)`
-/

namespace A195938.P2240341313645659645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n * A131728 n

end

end A195938.P2240341313645659645

namespace A195938

/-- `A096271(n)*A131728(n)` -/
def P2240341313645659645.Spec : Prop :=
  ∀ n, P2240341313645659645.a n = A195938 (n + 1)

end A195938

/-!
# A195939: Positive integers a for which there is a (1/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195939, there is no canonical definition to state claims against.
-/

/-! ## A195939.P9190706659819098491

`A070939(A095062(n+1)+A067030(3*n+1))+1`
-/

namespace A195939.P9190706659819098491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A095062 (n + 1) + A067030 (3 * n + 1)).toNat + 1

end

end A195939.P9190706659819098491

/-! ## A195939.P4829156957970860033

`round(log2(∑[A321995(n+5)]))`
-/

namespace A195939.P4829156957970860033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321995 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A195939.P4829156957970860033

/-! ## A195939.P9361548768364254439

`A137813(A240971(n+1)+A058521(n+1))`
-/

namespace A195939.P9361548768364254439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (A240971 (n + 1) + A058521 (n + 1)).toNat

end

end A195939.P9361548768364254439

/-! ## A195939.P3808885167018140275

`A070939(A351924(3*(n+1))+A059966(n+1))`
-/

namespace A195939.P3808885167018140275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A351924 (3 * (n + 1)) + A059966 (n + 1)).toNat

end

end A195939.P3808885167018140275

/-!
# A195942: Zeroless prime powers (excluding primes): Intersection of A025475 and A052382.

The programs for A195942, there is no canonical definition to state claims against.
-/

/-! ## A195942.P5800429996256334759

`∩[A001597(n+1), A195943(n+1)]`
-/

namespace A195942.P5800429996256334759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P5800429996256334759

/-! ## A195942.P8853975742839780976

`∩[A001694(n+1), A195943(n+1)]`
-/

namespace A195942.P8853975742839780976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P8853975742839780976

/-! ## A195942.P9180373676368633200

`∩[A025475(n+1), A195943(n+1)]`
-/

namespace A195942.P9180373676368633200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P9180373676368633200

/-! ## A195942.P8850902727820337064

`∩[A076292(n+1), A195943(n+1)]`
-/

namespace A195942.P8850902727820337064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P8850902727820337064

/-! ## A195942.P43526395599459379

`∩[A195943(n+1), A339497(n+1)]`
-/

namespace A195942.P43526395599459379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P43526395599459379

/-! ## A195942.P17611541142162253003

`∩[A195943(n+1), A341645(n+1)]`
-/

namespace A195942.P17611541142162253003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P17611541142162253003

/-! ## A195942.P11266091645915385679

`∩[A195943(n+1), A377819(n+1)]`
-/

namespace A195942.P11266091645915385679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P11266091645915385679

/-! ## A195942.P6602214555425862785

`∩[A195943(n+1), A377821(n+1)]`
-/

namespace A195942.P6602214555425862785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P6602214555425862785

/-! ## A195942.P1113368217687565419

`∩[A195943(n+1), A377846(n+1)]`
-/

namespace A195942.P1113368217687565419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195942.P1113368217687565419

/-!
# A195943: Zeroless prime powers: Intersection of A000961 and A052382.

The programs for A195943, the canonical program `A195943.P2912805975544362954` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195943 has offset 1).

The definition of A195943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195943.P223936550845241435

`record[A034699(A052382(n+1))]`
-/

namespace A195943.P223936550845241435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A052382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P223936550845241435

namespace A195943

/-- `record[A034699(A052382(n+1))]` -/
def P223936550845241435.Spec : Prop :=
  ∀ n, P223936550845241435.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P5957218961596505658

`∩[A000961(n+1), A052382(n+1)]`
-/

namespace A195943.P5957218961596505658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195943.P5957218961596505658

namespace A195943

/-- `∩[A000961(n+1), A052382(n+1)]` -/
def P5957218961596505658.Spec : Prop :=
  ∀ n, (P5957218961596505658.a n : ℤ) = A195943 (n + 1)

end A195943

/-! ## A195943.P481140516040715025

`record[A004719(A000961(n+1))]`
-/

namespace A195943.P481140516040715025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P481140516040715025

namespace A195943

/-- `record[A004719(A000961(n+1))]` -/
def P481140516040715025.Spec : Prop :=
  ∀ n, P481140516040715025.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P11024781149852474540

`record[A068794(A004719(n+1))]`
-/

namespace A195943.P11024781149852474540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (A004719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P11024781149852474540

namespace A195943

/-- `record[A068794(A004719(n+1))]` -/
def P11024781149852474540.Spec : Prop :=
  ∀ n, P11024781149852474540.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P2912805975544362954

`filter[A052382(n+1), A010055(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195943

/-- `filter[A052382(n+1), A010055(#)]` -/
def P2912805975544362954.Spec : Prop :=
  ∀ n, P2912805975544362954.a n = A195943 (n + 1)

theorem P2912805975544362954.correct : P2912805975544362954.Spec := by
  intro n
  simp only [A195943, Nat.add_sub_cancel]

end A195943

/-! ## A195943.P10620487827661886219

`filter[A000961(n+1), A168046(#)]`
-/

namespace A195943.P10620487827661886219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A195943.P10620487827661886219

namespace A195943

/-- `filter[A000961(n+1), A168046(#)]` -/
def P10620487827661886219.Spec : Prop :=
  ∀ n, P10620487827661886219.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P1487406415453450090

`record[A004719(sqrt(A056798(n+1)))]`
-/

namespace A195943.P1487406415453450090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P1487406415453450090

namespace A195943

/-- `record[A004719(sqrt(A056798(n+1)))]` -/
def P1487406415453450090.Spec : Prop :=
  ∀ n, P1487406415453450090.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P5771382744628763540

`record[A004719(n+1)/A063919(n+1)]`
-/

namespace A195943.P5771382744628763540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A063919 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P5771382744628763540

namespace A195943

/-- `record[A004719(n+1)/A063919(n+1)]` -/
def P5771382744628763540.Spec : Prop :=
  ∀ n, P5771382744628763540.a n = (A195943 (n + 1) : ℚ)

end A195943

/-! ## A195943.P16116181397650815089

`record[A004719(n+1)/A318674(n+1)]`
-/

namespace A195943.P16116181397650815089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A318674 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P16116181397650815089

namespace A195943

/-- `record[A004719(n+1)/A318674(n+1)]` -/
def P16116181397650815089.Spec : Prop :=
  ∀ n, P16116181397650815089.a n = (A195943 (n + 1) : ℚ)

end A195943

/-! ## A195943.P8887445180101999213

`record[A000015(n+1)*A168046(A000015(n+1))]`
-/

namespace A195943.P8887445180101999213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) * A168046 (A000015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195943.P8887445180101999213

namespace A195943

/-- `record[A000015(n+1)*A168046(A000015(n+1))]` -/
def P8887445180101999213.Spec : Prop :=
  ∀ n, P8887445180101999213.a n = A195943 (n + 1)

end A195943

/-! ## A195943.P13092704787494147815

`A004719(eq[n+1, A305566(n+1)+A004719(n+1)]+1)`
-/

namespace A195943.P13092704787494147815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (n + 1) + A004719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A195943.P13092704787494147815

namespace A195943

/-- `A004719(eq[n+1, A305566(n+1)+A004719(n+1)]+1)` -/
def P13092704787494147815.Spec : Prop :=
  ∀ n, P13092704787494147815.a n = A195943 (n + 1)

end A195943

/-!
# A195945: Powers of 13 which have no zero in their decimal expansion.

The programs for A195945, there is no canonical definition to state claims against.
-/

/-! ## A195945.P4295647473567672208

`13^ceil(sqrt(floor(∑[2^n/3])))`
-/

namespace A195945.P4295647473567672208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (⌈Real.sqrt (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ)⌉ : ℤ)

end

end A195945.P4295647473567672208

/-! ## A195945.P1493991208489489709

`record[a(n-1)*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=13, a(3)=1`
-/

namespace A195945.P1493991208489489709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 13, 1] fun n f1 =>
  f1 (n - 1) * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195945.P1493991208489489709

/-! ## A195945.P10328663346748783806

`∏[13^A097546(n)]`
-/

namespace A195945.P10328663346748783806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A097546 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A195945.P10328663346748783806

/-! ## A195945.P4987059302936153312

`record[13^Δ[A248813(n)]]`
-/

namespace A195945.P4987059302936153312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195945.P4987059302936153312

/-! ## A195945.P11322147565092526712

`record[13^Δ[A324749(n)]]`
-/

namespace A195945.P11322147565092526712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195945.P11322147565092526712

/-!
# A195946: Powers of 11 which have no zero in their decimal expansion.

The programs for A195946, there is no canonical definition to state claims against.
-/

/-! ## A195946.P12247142042972369386

`11^A030706(n)`
-/

namespace A195946.P12247142042972369386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A030706 (n + 1) : ℤ)

end

end A195946.P12247142042972369386

/-! ## A195946.P12347044301092821383

`A001020(A030706(n))`
-/

namespace A195946.P12347044301092821383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A030706 (n + 1)).toNat

end

end A195946.P12347044301092821383

/-! ## A195946.P11107004166072535284

`11^A239015(A022766(n+1))`
-/

namespace A195946.P11107004166072535284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A239015 (A022766 (n + 1)).toNat : ℤ)

end

end A195946.P11107004166072535284

/-! ## A195946.P13724751620514662799

`11^A239015(A032512(n+1))`
-/

namespace A195946.P13724751620514662799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A239015 (A032512 (n + 1)).toNat : ℤ)

end

end A195946.P13724751620514662799

/-! ## A195946.P13198100429642494073

`record[11^A185166(A002093(n+1))]`
-/

namespace A195946.P13198100429642494073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A185166 (A002093 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195946.P13198100429642494073

/-!
# A195947: E.g.f. satisfies: A(x) = Sum_{n>=0} (-1)^n/n! * Sum_{k=0..n} (-1)^k*C(n,k)*(1 + x*A(x)^k)^k.

The programs for A195947, there is no canonical definition to state claims against.
-/

/-! ## A195947.P4073425178928182662

`A087866(or(2, (2*n)^n))`
-/

namespace A195947.P4073425178928182662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (Nat.lor 2 ((2 * n) ^ n))

end

end A195947.P4073425178928182662

/-!
# A195948: Powers of 5 which have no zero in their decimal expansion.

The programs for A195948, there is no canonical definition to state claims against.
-/

/-! ## A195948.P13655059571057131765

`5^A008839(n+1)`
-/

namespace A195948.P13655059571057131765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A008839 (n + 1) : ℤ)

end

end A195948.P13655059571057131765

/-! ## A195948.P6249128450950144693

`5^A305925(n)`
-/

namespace A195948.P6249128450950144693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A305925 n : ℤ)

end

end A195948.P6249128450950144693

/-! ## A195948.P7591937076436260753

`5^record[gcd(n, A253638(n))]`
-/

namespace A195948.P7591937076436260753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A253638 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195948.P7591937076436260753

/-! ## A195948.P11423344903083607186

`A000351(A305925(n))`
-/

namespace A195948.P11423344903083607186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A305925 n).toNat

end

end A195948.P11423344903083607186

/-! ## A195948.P15676358948518933397

`A000351(A008839(n+1))`
-/

namespace A195948.P15676358948518933397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A008839 (n + 1)).toNat

end

end A195948.P15676358948518933397

/-!
# A195955: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors unequal to itself.

The programs for A195955, there is no canonical definition to state claims against.
-/

/-! ## A195955.P17425590031316649262

`A195962(∑[4*n]+1)`
-/

namespace A195955.P17425590031316649262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195955.P17425590031316649262

/-! ## A195955.P16333722934339605333

`A195962(A001844(n))+char[13]`
-/

namespace A195955.P16333722934339605333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195955.P16333722934339605333

/-! ## A195955.P6711546228235499008

`gcd(A107846(n), A195962(A001844(n)))`
-/

namespace A195955.P6711546228235499008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 n) (A195962 (A001844 n).toNat)

end

end A195955.P6711546228235499008

/-! ## A195955.P8501116972965147207

`A350139(n+1)+A195962(A001844(n))`
-/

namespace A195955.P8501116972965147207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (n + 1) + A195962 (A001844 n).toNat

end

end A195955.P8501116972965147207

/-! ## A195955.P15289735752402694475

`A353481(n+1)+A195962(A001844(n))`
-/

namespace A195955.P15289735752402694475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A195962 (A001844 n).toNat

end

end A195955.P15289735752402694475

/-!
# A195956: Number of n X 2 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195956, the canonical program `A195956.P10052337297862578865` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195956 has offset 1).

The definition of A195956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195956.P10052337297862578865

`a(n-1)+3*a(n-3)-a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=5, a(4)=5, a(5)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195956

/-- `a(n-1)+3*a(n-3)-a(n-4)-2*a(n-6)` -/
def P10052337297862578865.Spec : Prop :=
  ∀ n, P10052337297862578865.a n = A195956 (n + 1)

theorem P10052337297862578865.correct : P10052337297862578865.Spec := by
  intro n
  simp only [A195956, Nat.add_sub_cancel]

end A195956

/-! ## A195956.P13835534991331404515

`Δ[A052537(n+3)+A004773(n)]`
-/

namespace A195956.P13835534991331404515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (n + 3) + A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195956.P13835534991331404515

namespace A195956

/-- `Δ[A052537(n+3)+A004773(n)]` -/
def P13835534991331404515.Spec : Prop :=
  ∀ n, P13835534991331404515.a n = A195956 (n + 1)

end A195956

/-! ## A195956.P1702759491818823289

`Δ[A052537(n+3)+A004396(2*n+1)]`
-/

namespace A195956.P1702759491818823289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (n + 3) + A004396 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195956.P1702759491818823289

namespace A195956

/-- `Δ[A052537(n+3)+A004396(2*n+1)]` -/
def P1702759491818823289.Spec : Prop :=
  ∀ n, P1702759491818823289.a n = A195956 (n + 1)

end A195956

/-! ## A195956.P9350647437962336520

`Δ[A004773(n)+Δ[A003229(n+1)]]`
-/

namespace A195956.P9350647437962336520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195956.P9350647437962336520

namespace A195956

/-- `Δ[A004773(n)+Δ[A003229(n+1)]]` -/
def P9350647437962336520.Spec : Prop :=
  ∀ n, P9350647437962336520.a n = A195956 (n + 1)

end A195956

/-! ## A195956.P14329927663713960612

`Δ[A042968(n+1)+Δ[A003229(n+1)]]`
-/

namespace A195956.P14329927663713960612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195956.P14329927663713960612

namespace A195956

/-- `Δ[A042968(n+1)+Δ[A003229(n+1)]]` -/
def P14329927663713960612.Spec : Prop :=
  ∀ n, P14329927663713960612.a n = A195956 (n + 1)

end A195956

/-!
# A195957: Number of nX3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195957, there is no canonical definition to state claims against.
-/

/-! ## A195957.P8489694331931664875

`A195962(∑[n+2]+4)`
-/

namespace A195957.P8489694331931664875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A195957.P8489694331931664875

/-! ## A195957.P4637538277358105786

`record[A195962(A198467(n+1)+3)]`
-/

namespace A195957.P4637538277358105786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A198467 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195957.P4637538277358105786

/-! ## A195957.P3007737535888077525

`A195962(A167614(n+1))+char[20]`
-/

namespace A195957.P3007737535888077525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195957.P3007737535888077525

/-! ## A195957.P11555163244575635256

`record[A133566(n+1)*A195962(n+4)]`
-/

namespace A195957.P11555163244575635256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133566 (n + 1) * A195962 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195957.P11555163244575635256

/-! ## A195957.P11069692116492024049

`A195962(A167614(n+1))%A001576(n)`
-/

namespace A195957.P11069692116492024049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195962 (A167614 (n + 1)).toNat) (A001576 n)

end

end A195957.P11069692116492024049

/-!
# A195958: Number of nX4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195958, there is no canonical definition to state claims against.
-/

/-! ## A195958.P10292323091127650320

`A195962(∑[n+3]+7)`
-/

namespace A195958.P10292323091127650320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A195958.P10292323091127650320

/-! ## A195958.P10892985568310875307

`record[A195962(A198467(n+1)+4)]`
-/

namespace A195958.P10892985568310875307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A198467 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195958.P10892985568310875307

/-! ## A195958.P12610441882390252951

`record[gcd(A048993(n), A195962(n+4))]`
-/

namespace A195958.P12610441882390252951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A195962 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195958.P12610441882390252951

/-! ## A195958.P2995208789868669095

`A195962(Δ[A005286(n)]+5)+char[24]`
-/

namespace A195958.P2995208789868669095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195958.P2995208789868669095

/-! ## A195958.P7031960236149148907

`A195962(A000124(n+3)+3)+char[43]`
-/

namespace A195958.P7031960236149148907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195958.P7031960236149148907

/-!
# A195959: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195959, there is no canonical definition to state claims against.
-/

/-! ## A195959.P12844319997990722357

`A195962(A167499(n+3))`
-/

namespace A195959.P12844319997990722357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A167499 (n + 3)).toNat

end

end A195959.P12844319997990722357

/-! ## A195959.P7483183780028078786

`A195962(A077169(n+5))`
-/

namespace A195959.P7483183780028078786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A077169 (n + 5)).toNat

end

end A195959.P7483183780028078786

/-! ## A195959.P9453413164996372741

`A195962(A155212(n)+13)`
-/

namespace A195959.P9453413164996372741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A155212 n + 13).toNat

end

end A195959.P9453413164996372741

/-! ## A195959.P5853851086847785667

`A195962(A056000(n)+15)`
-/

namespace A195959.P5853851086847785667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A056000 n + 15).toNat

end

end A195959.P5853851086847785667

/-! ## A195959.P13315319618790886755

`A195962(eq[7, A066657(n)])`
-/

namespace A195959.P13315319618790886755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195959.P13315319618790886755

/-!
# A195960: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195960, there is no canonical definition to state claims against.
-/

/-! ## A195960.P8854078512353665415

`A195962(A166136(n+4))`
-/

namespace A195960.P8854078512353665415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A166136 (n + 4)).toNat

end

end A195960.P8854078512353665415

/-! ## A195960.P2613542362334751758

`A195962(A056115(n)+21)`
-/

namespace A195960.P2613542362334751758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A056115 n + 21).toNat

end

end A195960.P2613542362334751758

/-! ## A195960.P5951081770367627123

`A195962(∑[A020710(n)]+16)`
-/

namespace A195960.P5951081770367627123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A195960.P5951081770367627123

/-! ## A195960.P16240837015110611453

`A195962(A167499(n+4)+1)`
-/

namespace A195960.P16240837015110611453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A167499 (n + 4) + 1).toNat

end

end A195960.P16240837015110611453

/-! ## A195960.P11054449398848283513

`A195962(A167614(n+4)+3)`
-/

namespace A195960.P11054449398848283513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A167614 (n + 4) + 3).toNat

end

end A195960.P11054449398848283513

/-!
# A195961: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors unequal to itself.

The programs for A195961, there is no canonical definition to state claims against.
-/

/-! ## A195961.P9856584476337329194

`A195962(A056119(n)+28)`
-/

namespace A195961.P9856584476337329194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A056119 n + 28).toNat

end

end A195961.P9856584476337329194

/-! ## A195961.P6536559305318972941

`A195962(eq[11, A066657(n)])`
-/

namespace A195961.P6536559305318972941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195961.P6536559305318972941

/-! ## A195961.P10805765031228341304

`A195962(A167614(n+5)+4)`
-/

namespace A195961.P10805765031228341304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A167614 (n + 5) + 4).toNat

end

end A195961.P10805765031228341304

/-! ## A195961.P3343619643137094639

`A195962(A000124(n+6)+6)`
-/

namespace A195961.P3343619643137094639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A000124 (n + 6) + 6).toNat

end

end A195961.P3343619643137094639

/-! ## A195961.P14917230778653040718

`A195962(A000217(n+6)+7)`
-/

namespace A195961.P14917230778653040718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195962 (A000217 (n + 6) + 7).toNat

end

end A195961.P14917230778653040718

/-!
# A195963: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to itself.

The programs for A195963, there is no canonical definition to state claims against.
-/

/-! ## A195963.P17556713017874682668

`A195969(∑[4*n]+1)`
-/

namespace A195963.P17556713017874682668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195963.P17556713017874682668

/-! ## A195963.P8492347138748582908

`∏{d}[A001844(n), A195969(#)]`
-/

namespace A195963.P8492347138748582908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A195969 d

end

end A195963.P8492347138748582908

/-! ## A195963.P5389469340359835017

`A195969(A001844(n))/A055642(n)`
-/

namespace A195963.P5389469340359835017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195969 (A001844 n).toNat : ℚ) / (A055642 n : ℚ)

end

end A195963.P5389469340359835017

/-! ## A195963.P16260034137000282229

`or(A184983(n), A195969(A001844(n)))`
-/

namespace A195963.P16260034137000282229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184983 n) (A195969 (A001844 n).toNat)

end

end A195963.P16260034137000282229

/-! ## A195963.P3072132908100748746

`A007318(∑[n])*A195969(A001844(n))`
-/

namespace A195963.P3072132908100748746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A195969 (A001844 n).toNat

end

end A195963.P3072132908100748746

/-!
# A195964: Number of n X 3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to itself.

The programs for A195964, there is no canonical definition to state claims against.
-/

/-! ## A195964.P15324435230255738000

`A195969(∑[n+2]+4)`
-/

namespace A195964.P15324435230255738000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A195964.P15324435230255738000

/-! ## A195964.P2390696794415357279

`A195969(A046691(n)+7)+char[19]`
-/

namespace A195964.P2390696794415357279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195964.P2390696794415357279

/-! ## A195964.P12720639076148431191

`A195969(A167614(n+1))%A017346(n)`
-/

namespace A195964.P12720639076148431191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195969 (A167614 (n + 1)).toNat) (A017346 n)

end

end A195964.P12720639076148431191

/-! ## A195964.P17041765996714763775

`A195969(A167614(n+1))+A063524(n+2)`
-/

namespace A195964.P17041765996714763775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A167614 (n + 1)).toNat + A063524 (n + 2)

end

end A195964.P17041765996714763775

/-! ## A195964.P13821066010885878600

`A195969(A046691(n)+7)%A000032(n+3)`
-/

namespace A195964.P13821066010885878600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195969 (A046691 n + 7).toNat) (A000032 (n + 3))

end

end A195964.P13821066010885878600

/-!
# A195965: Number of nX4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to itself.

The programs for A195965, there is no canonical definition to state claims against.
-/

/-! ## A195965.P4181126418890650240

`A195969(∑[n+3]+7)`
-/

namespace A195965.P4181126418890650240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A195965.P4181126418890650240

/-! ## A195965.P15139681525502044112

`lcm((-1)^n, A195969(A027379(n+2)))`
-/

namespace A195965.P15139681525502044112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A195969 (A027379 (n + 2)).toNat)

end

end A195965.P15139681525502044112

/-! ## A195965.P11831039661632183213

`A195969(A027379(n+2))+A008683(4*(n+1))`
-/

namespace A195965.P11831039661632183213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A027379 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A195965.P11831039661632183213

/-! ## A195965.P6574929950622467952

`A014963(6*(n+1))*A195969(A027379(n+2))`
-/

namespace A195965.P6574929950622467952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A195969 (A027379 (n + 2)).toNat

end

end A195965.P6574929950622467952

/-! ## A195965.P9998462582304186359

`A000108(and(1, n)^n)*A195969(A027379(n+2))`
-/

namespace A195965.P9998462582304186359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.land 1 n ^ n) * A195969 (A027379 (n + 2)).toNat

end

end A195965.P9998462582304186359

/-!
# A195966: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to itself.

The programs for A195966, there is no canonical definition to state claims against.
-/

/-! ## A195966.P14875621429222376116

`A195969(A374005(n+1))`
-/

namespace A195966.P14875621429222376116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A374005 (n + 1)).toNat

end

end A195966.P14875621429222376116

/-! ## A195966.P2557318833888157188

`A195969(A167499(n+3))`
-/

namespace A195966.P2557318833888157188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A167499 (n + 3)).toNat

end

end A195966.P2557318833888157188

/-! ## A195966.P1875655695561232727

`A195969(A155212(n)+13)`
-/

namespace A195966.P1875655695561232727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A155212 n + 13).toNat

end

end A195966.P1875655695561232727

/-! ## A195966.P365241120740321570

`A195969(A056000(n)+15)`
-/

namespace A195966.P365241120740321570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A056000 n + 15).toNat

end

end A195966.P365241120740321570

/-! ## A195966.P13980553011804407998

`A195969(eq[7, A066657(n)])`
-/

namespace A195966.P13980553011804407998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195966.P13980553011804407998

/-!
# A195967: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to itself.

The programs for A195967, there is no canonical definition to state claims against.
-/

/-! ## A195967.P3073600576091809620

`A195969(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A195967.P3073600576091809620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195967.P3073600576091809620

/-! ## A195967.P15098193588166328751

`A195969(A374007(n+1))`
-/

namespace A195967.P15098193588166328751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A374007 (n + 1)).toNat

end

end A195967.P15098193588166328751

/-! ## A195967.P10073393657346877945

`A195969(A056115(n)+21)`
-/

namespace A195967.P10073393657346877945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A056115 n + 21).toNat

end

end A195967.P10073393657346877945

/-! ## A195967.P573190157082428809

`A195969(∑[A020710(n)]+16)`
-/

namespace A195967.P573190157082428809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A195967.P573190157082428809

/-! ## A195967.P12805169419134698313

`A195969(A167499(n+4)+1)`
-/

namespace A195967.P12805169419134698313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A167499 (n + 4) + 1).toNat

end

end A195967.P12805169419134698313

/-!
# A195968: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to itself.

The programs for A195968, there is no canonical definition to state claims against.
-/

/-! ## A195968.P10121459439055880794

`A195969(A374008(n+1))`
-/

namespace A195968.P10121459439055880794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A374008 (n + 1)).toNat

end

end A195968.P10121459439055880794

/-! ## A195968.P4251654512585603262

`A195969(A056119(n)+28)`
-/

namespace A195968.P4251654512585603262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A056119 n + 28).toNat

end

end A195968.P4251654512585603262

/-! ## A195968.P8697289959995394257

`A195969(eq[11, A066657(n)])`
-/

namespace A195968.P8697289959995394257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195968.P8697289959995394257

/-! ## A195968.P1035875941833631403

`A195969(A000124(n+6)+6)`
-/

namespace A195968.P1035875941833631403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A000124 (n + 6) + 6).toNat

end

end A195968.P1035875941833631403

/-! ## A195968.P3555866906711515444

`A195969(A000217(n+6)+7)`
-/

namespace A195968.P3555866906711515444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A000217 (n + 6) + 7).toNat

end

end A195968.P3555866906711515444

/-!
# A195969: T(n,k)=Number of nXk 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to itself.

The programs for A195969, there is no canonical definition to state claims against.
-/

/-! ## A195969.P5615381450882186629

`A092234(∏{e}[A235107(n+1), #])`
-/

namespace A195969.P5615381450882186629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092234 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A195969.P5615381450882186629

/-! ## A195969.P9594681790946348489

`A266417(∏{e}[A235107(n+1), #])`
-/

namespace A195969.P9594681790946348489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266417 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A195969.P9594681790946348489

/-! ## A195969.P17778248833167328915

`A212306(xor(A173424(n), A218056(n+1)))`
-/

namespace A195969.P17778248833167328915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212306 (Int.xor (A173424 n) (A218056 (n + 1))).toNat

end

end A195969.P17778248833167328915

/-! ## A195969.P14507866072072219655

`A227177(A094781(n+1)^A094778(n))`
-/

namespace A195969.P14507866072072219655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (SequenceMachineLib.roundAway ((A094781 (n + 1) : ℚ) ^ (A094778 n : ℤ))).toNat

end

end A195969.P14507866072072219655

/-! ## A195969.P1885482912985704516

`A227581(A094781(n+1)^A094778(n))`
-/

namespace A195969.P1885482912985704516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227581 (SequenceMachineLib.roundAway ((A094781 (n + 1) : ℚ) ^ (A094778 n : ℤ))).toNat

end

end A195969.P1885482912985704516

/-!
# A195970: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195970, there is no canonical definition to state claims against.
-/

/-! ## A195970.P4154756928974498465

`A195978(∑[4*n]+1)`
-/

namespace A195970.P4154756928974498465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195970.P4154756928974498465

/-! ## A195970.P15215577697780205981

`and(-1, A195978(n²+(n+1)²))`
-/

namespace A195970.P15215577697780205981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A195978 (n ^ 2 + (n + 1) ^ 2))

end

end A195970.P15215577697780205981

/-! ## A195970.P10533608263093212023

`record[A195978(A330613(n+1))]`
-/

namespace A195970.P10533608263093212023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195970.P10533608263093212023

/-! ## A195970.P14070565077314421222

`record[A195978(A001844(∑{digits}[n, #]))]`
-/

namespace A195970.P14070565077314421222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195970.P14070565077314421222

/-! ## A195970.P15512084137175648469

`record[A195978(Δ[A079824(n+1)])]`
-/

namespace A195970.P15512084137175648469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195970.P15512084137175648469

/-!
# A195971: Number of n X 1 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195971, the canonical program `A195971.P11591840596865183742` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195971 has offset 0).

The definition of A195971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195971.P11591840596865183742

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195971

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P11591840596865183742.Spec : Prop :=
  ∀ n, (P11591840596865183742.a n : ℤ) = A195971 n

theorem P11591840596865183742.correct : P11591840596865183742.Spec := by
  intro n
  simp only [A195971]

end A195971

/-! ## A195971.P17870648681782941157

`(A000032(n+3)-2*sin(n*π/2)-4*cos(n*π/2))/5`
-/

namespace A195971.P17870648681782941157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000032 (n + 3) : ℝ) - 2 * Real.sin ((n : ℝ) * (Real.pi / 2)) - 4 * Real.cos ((n : ℝ) * (Real.pi / 2))) / 5

end

end A195971.P17870648681782941157

namespace A195971

/-- `(A000032(n+3)-2*sin(n*π/2)-4*cos(n*π/2))/5` -/
def P17870648681782941157.Spec : Prop :=
  ∀ n, P17870648681782941157.a n = (A195971 n : ℝ)

end A195971

/-! ## A195971.P9302021604859735783

`∑[A111569(n)]+1`
-/

namespace A195971.P9302021604859735783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195971.P9302021604859735783

namespace A195971

/-- `∑[A111569(n)]+1` -/
def P9302021604859735783.Spec : Prop :=
  ∀ n, P9302021604859735783.a n = A195971 n

end A195971

/-! ## A195971.P177945273788245829

`A070550(n)-A057077(n)`
-/

namespace A195971.P177945273788245829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A057077 n

end

end A195971.P177945273788245829

namespace A195971

/-- `A070550(n)-A057077(n)` -/
def P177945273788245829.Spec : Prop :=
  ∀ n, P177945273788245829.a n = A195971 n

end A195971

/-! ## A195971.P12595802278241560597

`A295678(n)-A111571(n)`
-/

namespace A195971.P12595802278241560597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n - A111571 n

end

end A195971.P12595802278241560597

namespace A195971

/-- `A295678(n)-A111571(n)` -/
def P12595802278241560597.Spec : Prop :=
  ∀ n, P12595802278241560597.a n = A195971 n

end A195971

/-! ## A195971.P7190343694624055512

`A293411(n)-A236165(n)`
-/

namespace A195971.P7190343694624055512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n - A236165 n

end

end A195971.P7190343694624055512

namespace A195971

/-- `A293411(n)-A236165(n)` -/
def P7190343694624055512.Spec : Prop :=
  ∀ n, P7190343694624055512.a n = A195971 n

end A195971

/-! ## A195971.P10778362433467133357

`A087960(n+1)+A070550(n)`
-/

namespace A195971.P10778362433467133357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 1) + A070550 n

end

end A195971.P10778362433467133357

namespace A195971

/-- `A087960(n+1)+A070550(n)` -/
def P10778362433467133357.Spec : Prop :=
  ∀ n, P10778362433467133357.a n = A195971 n

end A195971

/-! ## A195971.P17256463178616285868

`A295680(n+1)+A000045(n)`
-/

namespace A195971.P17256463178616285868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1) + A000045 n

end

end A195971.P17256463178616285868

namespace A195971

/-- `A295680(n+1)+A000045(n)` -/
def P17256463178616285868.Spec : Prop :=
  ∀ n, P17256463178616285868.a n = A195971 n

end A195971

/-! ## A195971.P4475164047440665348

`A006498(n+1)-A056594(n)`
-/

namespace A195971.P4475164047440665348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) - A056594 n

end

end A195971.P4475164047440665348

namespace A195971

/-- `A006498(n+1)-A056594(n)` -/
def P4475164047440665348.Spec : Prop :=
  ∀ n, P4475164047440665348.a n = A195971 n

end A195971

/-! ## A195971.P9899423073020527100

`A074677(n+2)-A056594(n)`
-/

namespace A195971.P9899423073020527100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 2) - A056594 n

end

end A195971.P9899423073020527100

namespace A195971

/-- `A074677(n+2)-A056594(n)` -/
def P9899423073020527100.Spec : Prop :=
  ∀ n, P9899423073020527100.a n = A195971 n

end A195971

/-! ## A195971.P2213922081712047746

`A053602(n)*A123231(n+2)`
-/

namespace A195971.P2213922081712047746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n * A123231 (n + 2)

end

end A195971.P2213922081712047746

namespace A195971

/-- `A053602(n)*A123231(n+2)` -/
def P2213922081712047746.Spec : Prop :=
  ∀ n, P2213922081712047746.a n = A195971 n

end A195971

/-! ## A195971.P15720439516753584368

`A056594(n+2)+A006498(n+1)`
-/

namespace A195971.P15720439516753584368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 2) + A006498 (n + 1)

end

end A195971.P15720439516753584368

namespace A195971

/-- `A056594(n+2)+A006498(n+1)` -/
def P15720439516753584368.Spec : Prop :=
  ∀ n, P15720439516753584368.a n = A195971 n

end A195971

/-! ## A195971.P12242192773774678721

`A000032(n+1)-A295678(n)`
-/

namespace A195971.P12242192773774678721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A295678 n

end

end A195971.P12242192773774678721

namespace A195971

/-- `A000032(n+1)-A295678(n)` -/
def P12242192773774678721.Spec : Prop :=
  ∀ n, P12242192773774678721.a n = A195971 n

end A195971

/-! ## A195971.P16337924168420764135

`A000204(n+1)-A295678(n)`
-/

namespace A195971.P16337924168420764135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A295678 n

end

end A195971.P16337924168420764135

namespace A195971

/-- `A000204(n+1)-A295678(n)` -/
def P16337924168420764135.Spec : Prop :=
  ∀ n, P16337924168420764135.a n = A195971 n

end A195971

/-! ## A195971.P7425579584635994202

`A362388(n)-A000045(n+1)`
-/

namespace A195971.P7425579584635994202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362388 n - A000045 (n + 1)

end

end A195971.P7425579584635994202

namespace A195971

/-- `A362388(n)-A000045(n+1)` -/
def P7425579584635994202.Spec : Prop :=
  ∀ n, P7425579584635994202.a n = A195971 n

end A195971

/-! ## A195971.P14120779991805603977

`A070550(n+1)-A295688(n)`
-/

namespace A195971.P14120779991805603977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (n + 1) - A295688 n

end

end A195971.P14120779991805603977

namespace A195971

/-- `A070550(n+1)-A295688(n)` -/
def P14120779991805603977.Spec : Prop :=
  ∀ n, P14120779991805603977.a n = A195971 n

end A195971

/-! ## A195971.P5088972964474094523

`A295674(n)-A295685(n+1)`
-/

namespace A195971.P5088972964474094523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 n - A295685 (n + 1)

end

end A195971.P5088972964474094523

namespace A195971

/-- `A295674(n)-A295685(n+1)` -/
def P5088972964474094523.Spec : Prop :=
  ∀ n, P5088972964474094523.a n = A195971 n

end A195971

/-! ## A195971.P10821154738111511910

`A006498(n+2)-A006498(n)`
-/

namespace A195971.P10821154738111511910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) - A006498 n

end

end A195971.P10821154738111511910

namespace A195971

/-- `A006498(n+2)-A006498(n)` -/
def P10821154738111511910.Spec : Prop :=
  ∀ n, P10821154738111511910.a n = A195971 n

end A195971

/-! ## A195971.P16528801993760287815

`A020695(n)-2*A006498(n)`
-/

namespace A195971.P16528801993760287815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - 2 * A006498 n

end

end A195971.P16528801993760287815

namespace A195971

/-- `A020695(n)-2*A006498(n)` -/
def P16528801993760287815.Spec : Prop :=
  ∀ n, P16528801993760287815.a n = A195971 n

end A195971

/-!
# A195972: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195972, there is no canonical definition to state claims against.
-/

/-! ## A195972.P3429843454802205271

`A195978(∑[n+1]+2)`
-/

namespace A195972.P3429843454802205271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A195972.P3429843454802205271

/-! ## A195972.P15013495623316496043

`or(char[1], A195978(A000096(n)+3))`
-/

namespace A195972.P15013495623316496043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A195978 (A000096 n + 3).toNat)

end

end A195972.P15013495623316496043

/-! ## A195972.P15907513342427983276

`A195978(A000096(n)+3)%A000108(n+3)`
-/

namespace A195972.P15907513342427983276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195978 (A000096 n + 3).toNat) (A000108 (n + 3))

end

end A195972.P15907513342427983276

/-! ## A195972.P6063761325829969522

`A195978(A000096(n)+3)+A008683(4*(n+1))`
-/

namespace A195972.P6063761325829969522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A000096 n + 3).toNat + A008683 (4 * (n + 1))

end

end A195972.P6063761325829969522

/-! ## A195972.P15902043643410718951

`A195978(A089071(n+3))+A000007(3*n+4)`
-/

namespace A195972.P15902043643410718951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A089071 (n + 3)).toNat + A000007 (3 * n + 4)

end

end A195972.P15902043643410718951

/-!
# A195973: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195973, there is no canonical definition to state claims against.
-/

/-! ## A195973.P4986278973093512923

`A195978(∑[n+2]+4)`
-/

namespace A195973.P4986278973093512923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A195973.P4986278973093512923

/-! ## A195973.P14997915556772978701

`A195978(A167614(n+1))+char[23]`
-/

namespace A195973.P14997915556772978701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195973.P14997915556772978701

/-! ## A195973.P13040653667088261252

`A195978(A046691(n)+7)+char[25]`
-/

namespace A195973.P13040653667088261252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195973.P13040653667088261252

/-! ## A195973.P1169659299777452087

`A164965(3*n)*A195978(A167614(n+1))`
-/

namespace A195973.P1169659299777452087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (3 * n) * A195978 (A167614 (n + 1)).toNat

end

end A195973.P1169659299777452087

/-! ## A195973.P8669483256169457177

`A195978(A167614(n+1))%A122245(n+1)`
-/

namespace A195973.P8669483256169457177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195978 (A167614 (n + 1)).toNat) (A122245 (n + 1))

end

end A195973.P8669483256169457177

/-!
# A195974: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195974, there is no canonical definition to state claims against.
-/

/-! ## A195974.P4691922050422362755

`A195978(∑[n+3]+7)`
-/

namespace A195974.P4691922050422362755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A195974.P4691922050422362755

/-! ## A195974.P11042580418146888234

`A195978(Δ[A008778(n)]+6)+char[49]`
-/

namespace A195974.P11042580418146888234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A195974.P11042580418146888234

/-! ## A195974.P402045895791585325

`or(char[1], A195978(A000124(n+3)+3))`
-/

namespace A195974.P402045895791585325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A195978 (A000124 (n + 3) + 3).toNat)

end

end A195974.P402045895791585325

/-! ## A195974.P1344133170569138595

`A195978(Δ[A008778(n)]+6)%A000108(n+4)`
-/

namespace A195974.P1344133170569138595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195978 (f1 (n + 1) - f1 n + 6).toNat) (A000108 (n + 4))

end

end A195974.P1344133170569138595

/-! ## A195974.P10966614662286977680

`A195978(A000124(n+3)+3)%A000108(n+4)`
-/

namespace A195974.P10966614662286977680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195978 (A000124 (n + 3) + 3).toNat) (A000108 (n + 4))

end

end A195974.P10966614662286977680

/-!
# A195975: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195975, there is no canonical definition to state claims against.
-/

/-! ## A195975.P10015562162881850895

`A195978(∑[n+4]+11)`
-/

namespace A195975.P10015562162881850895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A195975.P10015562162881850895

/-!
# A195976: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195976, there is no canonical definition to state claims against.
-/

/-! ## A195976.P16530073132700176957

`A195978(A374007(n+1))`
-/

namespace A195976.P16530073132700176957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A374007 (n + 1)).toNat

end

end A195976.P16530073132700176957

/-! ## A195976.P16828327095496451641

`A195978(A166136(n+4))`
-/

namespace A195976.P16828327095496451641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A166136 (n + 4)).toNat

end

end A195976.P16828327095496451641

/-! ## A195976.P12521503077407710223

`A195978(A056115(n)+21)`
-/

namespace A195976.P12521503077407710223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A056115 n + 21).toNat

end

end A195976.P12521503077407710223

/-! ## A195976.P4143072214067602843

`A195978(A167499(n+4)+1)`
-/

namespace A195976.P4143072214067602843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A167499 (n + 4) + 1).toNat

end

end A195976.P4143072214067602843

/-! ## A195976.P4127804372120694531

`A195978(A167614(n+4)+3)`
-/

namespace A195976.P4127804372120694531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A167614 (n + 4) + 3).toNat

end

end A195976.P4127804372120694531

/-!
# A195977: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195977, there is no canonical definition to state claims against.
-/

/-! ## A195977.P8530569655848046628

`A195978(A374008(n+1))`
-/

namespace A195977.P8530569655848046628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A374008 (n + 1)).toNat

end

end A195977.P8530569655848046628

/-! ## A195977.P16652091585763990593

`A195978(A167487(n+5))`
-/

namespace A195977.P16652091585763990593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A167487 (n + 5)).toNat

end

end A195977.P16652091585763990593

/-! ## A195977.P11477932075248345009

`A195978(A056119(n)+28)`
-/

namespace A195977.P11477932075248345009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A056119 n + 28).toNat

end

end A195977.P11477932075248345009

/-! ## A195977.P18080292640035523052

`A195978(A166136(n+5)+1)`
-/

namespace A195977.P18080292640035523052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A166136 (n + 5) + 1).toNat

end

end A195977.P18080292640035523052

/-! ## A195977.P1930806519940484500

`A195978(A167499(n+5)+2)`
-/

namespace A195977.P1930806519940484500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195978 (A167499 (n + 5) + 2).toNat

end

end A195977.P1930806519940484500

/-!
# A195978: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,0,1,3,4 for x=0,1,2,3,4.

The programs for A195978, there is no canonical definition to state claims against.
-/

/-! ## A195978.P13021246749235509302

`A197280(n+1)-A008651(A083961(n+1))`
-/

namespace A195978.P13021246749235509302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (n + 1) - A008651 (A083961 (n + 1)).toNat

end

end A195978.P13021246749235509302

/-! ## A195978.P5587725768577845349

`A197280(n+1)-A002839(A202812(n+1))`
-/

namespace A195978.P5587725768577845349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197280 (n + 1) - A002839 (A202812 (n + 1)).toNat

end

end A195978.P5587725768577845349

/-! ## A195978.P7585358034351742659

`A235027(A197280(n+1)%A141214(3*n+1))`
-/

namespace A195978.P7585358034351742659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.tmod (A197280 (n + 1)) (A141214 (3 * n + 1))).toNat

end

end A195978.P7585358034351742659

/-!
# A195979: a(n) = Sum_{k=0..n} T(n,k), where T(n,k) is the number of rooted labeled trees with n nodes whose maximal decreasing subtree has k nodes.

The programs for A195979, there is no canonical definition to state claims against.
-/

/-! ## A195979.P12353362910521106832

`ceil(∏{p}[A281184(n), sqrt(#)])`
-/

namespace A195979.P12353362910521106832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ)⌉

end

end A195979.P12353362910521106832

/-!
# A195980: Coefficients of expansion of "leading root" xi_0(y) of the partial theta function Sum_{n=0..oo} x^n y^{n(n-1)/2}.

The programs for A195980, there is no canonical definition to state claims against.
-/

/-! ## A195980.P7098600675590393194

`A308273(n)-A059995(A308274(n))`
-/

namespace A195980.P7098600675590393194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308273 n - A059995 (A308274 n).toNat

end

end A195980.P7098600675590393194

/-! ## A195980.P7434200112048667998

`A003007(n+1)+A002264(A120588(n))`
-/

namespace A195980.P7434200112048667998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003007 (n + 1) + A002264 (A120588 n).toNat

end

end A195980.P7434200112048667998

/-! ## A195980.P17375624210262062496

`A204352(n)+A065363(A053215(n+1))`
-/

namespace A195980.P17375624210262062496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204352 n + A065363 (A053215 (n + 1)).toNat

end

end A195980.P17375624210262062496

/-! ## A195980.P17323214209358348303

`A115324(n)-A059995(A003007(n+1))`
-/

namespace A195980.P17323214209358348303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115324 n - A059995 (A003007 (n + 1)).toNat

end

end A195980.P17323214209358348303

/-! ## A195980.P12939589273314898704

`A136753(n+1)-A001065(A309861(n))`
-/

namespace A195980.P12939589273314898704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136753 (n + 1) - A001065 (A309861 n).toNat

end

end A195980.P12939589273314898704

/-!
# A195983: G.f.: Product_{n>=1} [Product_{k=0..2*n} (1 - k*x)^(-(-1)^k*binomial(2*n,k))]^(1/n).

The programs for A195983, there is no canonical definition to state claims against.
-/

/-! ## A195983.P13908106094424514177

`A100196(A052916(∑[n]))`
-/

namespace A195983.P13908106094424514177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052916 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A195983.P13908106094424514177

/-! ## A195983.P1951202718058556383

`A110656(xor(1, A187249(n)))`
-/

namespace A195983.P1951202718058556383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.xor 1 (A187249 n)).toNat

end

end A195983.P1951202718058556383

/-! ## A195983.P1760992737468506041

`A008647(n*A008989(n))`
-/

namespace A195983.P1760992737468506041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 ((n : ℤ) * A008989 n).toNat

end

end A195983.P1760992737468506041

/-!
# A195985: Least prime such that p^2 is a zeroless n-digit number.

The programs for A195985, there is no canonical definition to state claims against.
-/

/-! ## A195985.P2916172838206466870

`A151800(floor(sqrt(∑[10^n])))`
-/

namespace A195985.P2916172838206466870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A195985.P2916172838206466870

/-! ## A195985.P13038424117328340291

`∏{d}[A151800(A096483(n+1)), #]`
-/

namespace A195985.P13038424117328340291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A096483 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A195985.P13038424117328340291

/-! ## A195985.P17178221309635524824

`A007918(ceil(sqrt(∑[10^n])))`
-/

namespace A195985.P17178221309635524824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A195985.P17178221309635524824

/-! ## A195985.P6136275783350517560

`A266620(ceil(sqrt(A283352(n))))`
-/

namespace A195985.P6136275783350517560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ⌈Real.sqrt (A283352 n : ℝ)⌉.toNat

end

end A195985.P6136275783350517560

/-!
# A195986: Exponent of the largest power of 2 that divides 5^n - 3^n.

The programs for A195986, the canonical program `A195986.P2181748804141201813` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195986 has offset 1).

The definition of A195986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195986.P14751247895729045475

`val(n+1, 2)+3^(n%2)`
-/

namespace A195986.P14751247895729045475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 3 ^ (n % 2)

end

end A195986.P14751247895729045475

namespace A195986

/-- `val(n+1, 2)+3^(n%2)` -/
def P14751247895729045475.Spec : Prop :=
  ∀ n, (P14751247895729045475.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P2181748804141201813

`val(8*(n+1), 2*gcd(2, n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A195986

/-- `val(8*(n+1), 2*gcd(2, n))` -/
def P2181748804141201813.Spec : Prop :=
  ∀ n, (P2181748804141201813.a n : ℤ) = A195986 (n + 1)

theorem P2181748804141201813.correct : P2181748804141201813.Spec := by
  intro n
  simp only [A195986, Nat.add_sub_cancel]

end A195986

/-! ## A195986.P2656195150106483727

`val(∑[Δ[lcm(2, n)]+3], 2)+1`
-/

namespace A195986.P2656195150106483727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A195986.P2656195150106483727

namespace A195986

/-- `val(∑[Δ[lcm(2, n)]+3], 2)+1` -/
def P2656195150106483727.Spec : Prop :=
  ∀ n, (P2656195150106483727.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P8638426010089218447

`val(n+1, 2)+2-(-1)^n`
-/

namespace A195986.P8638426010089218447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 2 : ℤ) - (-1) ^ n

end

end A195986.P8638426010089218447

namespace A195986

/-- `val(n+1, 2)+2-(-1)^n` -/
def P8638426010089218447.Spec : Prop :=
  ∀ n, P8638426010089218447.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P9077171535192803906

`val((n+1)*(n²+3), 2)+1`
-/

namespace A195986.P9077171535192803906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n ^ 2 + 3)) 2 + 1

end

end A195986.P9077171535192803906

namespace A195986

/-- `val((n+1)*(n²+3), 2)+1` -/
def P9077171535192803906.Spec : Prop :=
  ∀ n, (P9077171535192803906.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P16197841159912972365

`val(∑[2*(n*(n+5)+1)], 2)`
-/

namespace A195986.P16197841159912972365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 5) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A195986.P16197841159912972365

namespace A195986

/-- `val(∑[2*(n*(n+5)+1)], 2)` -/
def P16197841159912972365.Spec : Prop :=
  ∀ n, (P16197841159912972365.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P15633951843492691653

`Δ[or(1, n)]+val(n+1, 2)+1`
-/

namespace A195986.P15633951843492691653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A195986.P15633951843492691653

namespace A195986

/-- `Δ[or(1, n)]+val(n+1, 2)+1` -/
def P15633951843492691653.Spec : Prop :=
  ∀ n, P15633951843492691653.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P11604863268253675694

`∏{e}[and(n+1, -(n+1)), #+3]`
-/

namespace A195986.P11604863268253675694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 3)

end

end A195986.P11604863268253675694

namespace A195986

/-- `∏{e}[and(n+1, -(n+1)), #+3]` -/
def P11604863268253675694.Spec : Prop :=
  ∀ n, (P11604863268253675694.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P11033598576399774277

`∏{e}[or(n+1, -(n+1)), #+3]`
-/

namespace A195986.P11033598576399774277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 3)

end

end A195986.P11033598576399774277

namespace A195986

/-- `∏{e}[or(n+1, -(n+1)), #+3]` -/
def P11033598576399774277.Spec : Prop :=
  ∀ n, (P11033598576399774277.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P67750305075833270

`2*and(1, n)+1+val(n+1, 2)`
-/

namespace A195986.P67750305075833270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 1 + SequenceMachineLib.valuation (n + 1) 2

end

end A195986.P67750305075833270

namespace A195986

/-- `2*and(1, n)+1+val(n+1, 2)` -/
def P67750305075833270.Spec : Prop :=
  ∀ n, (P67750305075833270.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P15480775245358746273

`A090740(n+1)+n%2`
-/

namespace A195986.P15480775245358746273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A195986.P15480775245358746273

namespace A195986

/-- `A090740(n+1)+n%2` -/
def P15480775245358746273.Spec : Prop :=
  ∀ n, P15480775245358746273.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P6556876962786463643

`A057037(A123726(n+1))`
-/

namespace A195986.P6556876962786463643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057037 (A123726 (n + 1)).toNat

end

end A195986.P6556876962786463643

namespace A195986

/-- `A057037(A123726(n+1))` -/
def P6556876962786463643.Spec : Prop :=
  ∀ n, P6556876962786463643.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P13452934557834060116

`A085058(n)-A033999(n)`
-/

namespace A195986.P13452934557834060116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - A033999 n

end

end A195986.P13452934557834060116

namespace A195986

/-- `A085058(n)-A033999(n)` -/
def P13452934557834060116.Spec : Prop :=
  ∀ n, P13452934557834060116.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P9595532317045074565

`A010673(n)+A001511(n+1)`
-/

namespace A195986.P9595532317045074565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A001511 (n + 1)

end

end A195986.P9595532317045074565

namespace A195986

/-- `A010673(n)+A001511(n+1)` -/
def P9595532317045074565.Spec : Prop :=
  ∀ n, P9595532317045074565.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P15221860623525240829

`A010684(n)+A007814(n+1)`
-/

namespace A195986.P15221860623525240829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + A007814 (n + 1)

end

end A195986.P15221860623525240829

namespace A195986

/-- `A010684(n)+A007814(n+1)` -/
def P15221860623525240829.Spec : Prop :=
  ∀ n, P15221860623525240829.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P13801953535849926843

`A090740(n+1)+A000035(n)`
-/

namespace A195986.P13801953535849926843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) + A000035 n

end

end A195986.P13801953535849926843

namespace A195986

/-- `A090740(n+1)+A000035(n)` -/
def P13801953535849926843.Spec : Prop :=
  ∀ n, P13801953535849926843.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P16512504615649362715

`A085058(n)-A062157(n+1)`
-/

namespace A195986.P16512504615649362715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - A062157 (n + 1)

end

end A195986.P16512504615649362715

namespace A195986

/-- `A085058(n)-A062157(n+1)` -/
def P16512504615649362715.Spec : Prop :=
  ∀ n, P16512504615649362715.a n = A195986 (n + 1)

end A195986

/-! ## A195986.P891253226693952769

`A090739(n+1)/A176040(n)`
-/

namespace A195986.P891253226693952769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090739 (n + 1) : ℚ) / (A176040 n : ℚ)

end

end A195986.P891253226693952769

namespace A195986

/-- `A090739(n+1)/A176040(n)` -/
def P891253226693952769.Spec : Prop :=
  ∀ n, P891253226693952769.a n = (A195986 (n + 1) : ℚ)

end A195986

/-! ## A195986.P12303098092421219840

`gcd(A056594(n), A090739(n+1))`
-/

namespace A195986.P12303098092421219840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A090739 (n + 1))

end

end A195986.P12303098092421219840

namespace A195986

/-- `gcd(A056594(n), A090739(n+1))` -/
def P12303098092421219840.Spec : Prop :=
  ∀ n, (P12303098092421219840.a n : ℤ) = A195986 (n + 1)

end A195986

/-! ## A195986.P9237294481024450109

`and(A001845(n), A090739(n+1))`
-/

namespace A195986.P9237294481024450109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001845 n) (A090739 (n + 1))

end

end A195986.P9237294481024450109

namespace A195986

/-- `and(A001845(n), A090739(n+1))` -/
def P9237294481024450109.Spec : Prop :=
  ∀ n, P9237294481024450109.a n = A195986 (n + 1)

end A195986

/-!
# A195989: Quotient of denominators of (BernoulliB(2n)/n) and BernoulliB(2n).

The programs for A195989, there is no canonical definition to state claims against.
-/

/-! ## A195989.P2610827031262066047

`∏{d}[n+1, A217983(#)]`
-/

namespace A195989.P2610827031262066047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A217983 d

end

end A195989.P2610827031262066047

/-! ## A195989.P16188752375035991241

`(n+1)/A300711(n+1)`
-/

namespace A195989.P16188752375035991241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300711 (n + 1) : ℚ)

end

end A195989.P16188752375035991241

/-! ## A195989.P11815414692272001792

`gcd(n+1, A006863(n+1))`
-/

namespace A195989.P11815414692272001792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006863 (n + 1))

end

end A195989.P11815414692272001792

/-! ## A195989.P17483432301166971156

`gcd(A071262(n), A202318(n+1))`
-/

namespace A195989.P17483432301166971156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A202318 (n + 1))

end

end A195989.P17483432301166971156

/-! ## A195989.P5033363594375748482

`A036283(n+1)/A002445(n+1)`
-/

namespace A195989.P5033363594375748482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A002445 (n + 1) : ℚ)

end

end A195989.P5033363594375748482

/-! ## A195989.P16623908496122678402

`A036283(n+1)/A027762(n+1)`
-/

namespace A195989.P16623908496122678402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A027762 (n + 1) : ℚ)

end

end A195989.P16623908496122678402

/-! ## A195989.P7165309735188114211

`gcd(A036283(n+1), A061019(n+1))`
-/

namespace A195989.P7165309735188114211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036283 (n + 1)) (A061019 (n + 1))

end

end A195989.P7165309735188114211

/-! ## A195989.P14637210825452360048

`A036283(n+1)/A027760(2*(n+1))`
-/

namespace A195989.P14637210825452360048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A027760 (2 * (n + 1)) : ℚ)

end

end A195989.P14637210825452360048

/-! ## A195989.P13915716699818079220

`A075180(2*n+1)/(2*A002445(n+1))`
-/

namespace A195989.P13915716699818079220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) : ℚ) / (2 * A002445 (n + 1) : ℚ)

end

end A195989.P13915716699818079220

/-! ## A195989.P16512485898070320949

`A075180(2*n+1)/(2*A027760(2*(n+1)))`
-/

namespace A195989.P16512485898070320949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) : ℚ) / (2 * A027760 (2 * (n + 1)) : ℚ)

end

end A195989.P16512485898070320949

/-! ## A195989.P2351958154439389981

`A185633(2*(n+1))/(2*A027760(2*(n+1)))`
-/

namespace A195989.P2351958154439389981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (2 * (n + 1)) : ℚ) / (2 * A027760 (2 * (n + 1)) : ℚ)

end

end A195989.P2351958154439389981

/-! ## A195989.P13949346626263170448

`gcd(A004524(2*n+1)+1, A079612(2*(n+1)))`
-/

namespace A195989.P13949346626263170448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004524 (2 * n + 1) + 1) (A079612 (2 * (n + 1)))

end

end A195989.P13949346626263170448

/-! ## A195989.P4601870967800483588

`gcd(A110332(2*n+1), A185633(2*(n+1)))/2`
-/

namespace A195989.P4601870967800483588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A110332 (2 * n + 1)) (A185633 (2 * (n + 1))) : ℚ) / 2

end

end A195989.P4601870967800483588

/-! ## A195989.P11685064481034905074

`A193267(2*(n+1))/2`
-/

namespace A195989.P11685064481034905074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193267 (2 * (n + 1)) : ℚ) / 2

end

end A195989.P11685064481034905074

/-! ## A195989.P16637081039789234673

`(n+1)/A300330(2*(n+1))`
-/

namespace A195989.P16637081039789234673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300330 (2 * (n + 1)) : ℚ)

end

end A195989.P16637081039789234673

/-! ## A195989.P10147381440791631884

`A008619(A193267(2*(n+1))-1)`
-/

namespace A195989.P10147381440791631884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193267 (2 * (n + 1)) - 1).toNat

end

end A195989.P10147381440791631884

/-! ## A195989.P4242888263893026267

`gcd(A000027(n+1), A006953(n+1))`
-/

namespace A195989.P4242888263893026267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A006953 (n + 1))

end

end A195989.P4242888263893026267

/-! ## A195989.P121631890790368314

`gcd(1-A004972(n+1), A193267(2*(n+1)))`
-/

namespace A195989.P121631890790368314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004972 (n + 1)) (A193267 (2 * (n + 1)))

end

end A195989.P121631890790368314

/-! ## A195989.P18179938066996837125

`A006953(n+1)/(A002445(n+1)+A002445(n+1))`
-/

namespace A195989.P18179938066996837125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006953 (n + 1) : ℚ) / (A002445 (n + 1) + A002445 (n + 1) : ℚ)

end

end A195989.P18179938066996837125

/-! ## A195989.P18123409096636200081

`gcd(2*A202318(n+1), A135854(n))`
-/

namespace A195989.P18123409096636200081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A202318 (n + 1)) (A135854 n)

end

end A195989.P18123409096636200081

/-!
# A195993: Numbers n such that 90n + 73 is prime.

The programs for A195993, the canonical program `A195993.P13917457703843380278` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195993 has offset 1).

The definition of A195993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142326, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195993.P13917457703843380278

`(A142326(n+1)-73)/90`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195993

/-- `(A142326(n+1)-73)/90` -/
def P13917457703843380278.Spec : Prop :=
  ∀ n, P13917457703843380278.a n = (A195993 (n + 1) : ℚ)

end A195993

/-! ## A195993.P13684514099136632821

`floor(A142326(n+1)/90)`
-/

namespace A195993.P13684514099136632821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142326 (n + 1) : ℚ) / 90⌋

end

end A195993.P13684514099136632821

namespace A195993

/-- `floor(A142326(n+1)/90)` -/
def P13684514099136632821.Spec : Prop :=
  ∀ n, P13684514099136632821.a n = A195993 (n + 1)

end A195993

/-! ## A195993.P8734133149228342362

`eq[1, A001222(90*(n+1)-17)]`
-/

namespace A195993.P8734133149228342362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (90 * (n + 1) - 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195993.P8734133149228342362

namespace A195993

/-- `eq[1, A001222(90*(n+1)-17)]` -/
def P8734133149228342362.Spec : Prop :=
  ∀ n, (P8734133149228342362.a n : ℤ) = A195993 (n + 1)

end A195993

/-! ## A195993.P7625686841999651705

`eq[2, A000005(90*(n+1)-17)]`
-/

namespace A195993.P7625686841999651705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * (n + 1) - 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195993.P7625686841999651705

namespace A195993

/-- `eq[2, A000005(90*(n+1)-17)]` -/
def P7625686841999651705.Spec : Prop :=
  ∀ n, (P7625686841999651705.a n : ℤ) = A195993 (n + 1)

end A195993

/-! ## A195993.P6774108353169899224

`eq[90*(n+1)-17, A006530(90*(n+1)-17)]`
-/

namespace A195993.P6774108353169899224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (90 * (n + 1) - 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195993.P6774108353169899224

namespace A195993

/-- `eq[90*(n+1)-17, A006530(90*(n+1)-17)]` -/
def P6774108353169899224.Spec : Prop :=
  ∀ n, (P6774108353169899224.a n : ℤ) = A195993 (n + 1)

end A195993

/-! ## A195993.P3355859476197366635

`eq[1, A075743(A128473(n+1)+1)]`
-/

namespace A195993.P3355859476197366635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128473 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195993.P3355859476197366635

namespace A195993

/-- `eq[1, A075743(A128473(n+1)+1)]` -/
def P3355859476197366635.Spec : Prop :=
  ∀ n, (P3355859476197366635.a n : ℤ) = A195993 (n + 1)

end A195993

/-! ## A195993.P15004656921902526074

`eq[A020639(A161705(5*n+4)), A161705(5*n+4)]`
-/

namespace A195993.P15004656921902526074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161705 (5 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195993.P15004656921902526074

namespace A195993

/-- `eq[A020639(A161705(5*n+4)), A161705(5*n+4)]` -/
def P15004656921902526074.Spec : Prop :=
  ∀ n, (P15004656921902526074.a n : ℤ) = A195993 (n + 1)

end A195993

/-! ## A195993.P4578317293652314994

`eq[2, A116933(A128473(n+1))]`
-/

namespace A195993.P4578317293652314994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A128473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195993.P4578317293652314994

namespace A195993

/-- `eq[2, A116933(A128473(n+1))]` -/
def P4578317293652314994.Spec : Prop :=
  ∀ n, (P4578317293652314994.a n : ℤ) = A195993 (n + 1)

end A195993

/-!
# A195994: Positive integers a for which there is a (-2/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195994, there is no canonical definition to state claims against.
-/

/-! ## A195994.P2340554810141071127

`A000196(A002024(3*(n+1))*A195872(3*n+4))`
-/

namespace A195994.P2340554810141071127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002024 (3 * (n + 1)) * A195872 (3 * n + 4)).toNat

end

end A195994.P2340554810141071127

/-! ## A195994.P10543388221173944986

`A002024(∑[A194917(A003328(n+1))])`
-/

namespace A195994.P10543388221173944986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A003328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195994.P10543388221173944986

/-! ## A195994.P3200727424996763951

`A213711(∑[A000040(A037124(n+1))])`
-/

namespace A195994.P3200727424996763951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195994.P3200727424996763951

/-! ## A195994.P3520217274855401756

`A003059(A376284(3*n)+A111638(n+1))`
-/

namespace A195994.P3520217274855401756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A376284 (3 * n) + A111638 (n + 1)).toNat

end

end A195994.P3520217274855401756

/-! ## A195994.P373915983102055411

`A070941(A230097(n+1)+A008000(n))`
-/

namespace A195994.P373915983102055411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A230097 (n + 1) + A008000 n).toNat

end

end A195994.P373915983102055411

