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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A215100: a(n) = 3*a(n-1) + 4*a(n-2) + a(n-3) with a(0)=2, a(1)=5, a(2)=22.

The programs for A215100, the canonical program `A215100.P15960585132438966457` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215100 has offset 0).

The definition of A215100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)+a(n-3)` (program `A215100.P15960585132438966457`, by `A215100.P15960585132438966457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215100.P15960585132438966457

`3*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215100

/-- `3*a(n-1)+4*a(n-2)+a(n-3)` -/
def P15960585132438966457.Spec : Prop :=
  ∀ n, (P15960585132438966457.a n : ℤ) = A215100 n

theorem P15960585132438966457.correct : P15960585132438966457.Spec := by
  intro n
  simp only [A215100]

end A215100

/-! ## A215100.P8450384341806012701

`ogf((-2+x+x^2)/(-1+3x+4x^2+x^3))`
-/

namespace A215100.P8450384341806012701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -3, -4, -1] n

end

end A215100.P8450384341806012701

namespace A215100

/-- `ogf((-2+x+x^2)/(-1+3x+4x^2+x^3))` -/
def P8450384341806012701.Spec : Prop :=
  ∀ n, P8450384341806012701.a n = A215100 n

end A215100

/-! ## A215100.P16419673067429945637

`Δ[A120757(n+1)]`
-/

namespace A215100.P16419673067429945637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215100.P16419673067429945637

namespace A215100

/-- `Δ[A120757(n+1)]` -/
def P16419673067429945637.Spec : Prop :=
  ∀ n, P16419673067429945637.a n = A215100 n

end A215100

/-! ## A215100.P14820892098725324326

`∑[A215076(n)]-1`
-/

namespace A215100.P14820892098725324326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A215100.P14820892098725324326

namespace A215100

/-- `∑[A215076(n)]-1` -/
def P14820892098725324326.Spec : Prop :=
  ∀ n, P14820892098725324326.a n = A215100 n

end A215100

/-! ## A215100.P15994696125215058011

`∑[xor(A000007(n), A215076(n))]`
-/

namespace A215100.P15994696125215058011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A215076 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215100.P15994696125215058011

namespace A215100

/-- `∑[xor(A000007(n), A215076(n))]` -/
def P15994696125215058011.Spec : Prop :=
  ∀ n, P15994696125215058011.a n = A215100 n

end A215100

/-! ## A215100.P661594226222335392

`A321715(n)-A321715(n+2)`
-/

namespace A215100.P661594226222335392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321715 n - A321715 (n + 2)

end

end A215100.P661594226222335392

namespace A215100

/-- `A321715(n)-A321715(n+2)` -/
def P661594226222335392.Spec : Prop :=
  ∀ n, P661594226222335392.a n = A215100 n

end A215100

/-! ## A215100.P13216046866363726087

`∑[xor(A036987(2*n), A215076(n))]`
-/

namespace A215100.P13216046866363726087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (2 * n)) (A215076 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215100.P13216046866363726087

namespace A215100

/-- `∑[xor(A036987(2*n), A215076(n))]` -/
def P13216046866363726087.Spec : Prop :=
  ∀ n, P13216046866363726087.a n = A215100 n

end A215100

/-! ## A215100.P7057090373586850774

`A120757(n+2)-A120757(n+1)`
-/

namespace A215100.P7057090373586850774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120757 (n + 2) - A120757 (n + 1)

end

end A215100.P7057090373586850774

namespace A215100

/-- `A120757(n+2)-A120757(n+1)` -/
def P7057090373586850774.Spec : Prop :=
  ∀ n, P7057090373586850774.a n = A215100 n

end A215100

/-! ## A215100.P3262867037172811821

`A033999(2*n+1)+∑[A215076(n)]`
-/

namespace A215100.P3262867037172811821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215100.P3262867037172811821

namespace A215100

/-- `A033999(2*n+1)+∑[A215076(n)]` -/
def P3262867037172811821.Spec : Prop :=
  ∀ n, P3262867037172811821.a n = A215100 n

end A215100

/-! ## A215100.P15532285098355570882

`A120757(n+1)+A321715(n)+A181879(n+1)`
-/

namespace A215100.P15532285098355570882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120757 (n + 1) + (A321715 n + A181879 (n + 1))

end

end A215100.P15532285098355570882

namespace A215100

/-- `A120757(n+1)+A321715(n)+A181879(n+1)` -/
def P15532285098355570882.Spec : Prop :=
  ∀ n, P15532285098355570882.a n = A215100 n

end A215100

/-! ## A215100.P15448700070973537725

`A321715(n+1)+A321715(n)+A120757(n+2)`
-/

namespace A215100.P15448700070973537725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321715 (n + 1) + (A321715 n + A120757 (n + 2))

end

end A215100.P15448700070973537725

namespace A215100

/-- `A321715(n+1)+A321715(n)+A120757(n+2)` -/
def P15448700070973537725.Spec : Prop :=
  ∀ n, P15448700070973537725.a n = A215100 n

end A215100

/-! ## A215100.P93847793052962811

`Δ[Δ[A181879(n)]-A321703(n)]`
-/

namespace A215100.P93847793052962811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A321703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215100.P93847793052962811

namespace A215100

/-- `Δ[Δ[A181879(n)]-A321703(n)]` -/
def P93847793052962811.Spec : Prop :=
  ∀ n, P93847793052962811.a n = A215100 n

end A215100

/-!
# A215101: Primes congruent to {2, 3} mod 19.

The programs for A215101, the canonical program `A215101.P17907670519801103693` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215101 has offset 1).

The definition of A215101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215101.P2749433928763728722

`A215377(A326178(n+1))`
-/

namespace A215101.P2749433928763728722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (A326178 (n + 1)).toNat

end

end A215101.P2749433928763728722

namespace A215101

/-- `A215377(A326178(n+1))` -/
def P2749433928763728722.Spec : Prop :=
  ∀ n, P2749433928763728722.a n = A215101 (n + 1)

end A215101

/-! ## A215101.P17808771870172365409

`p?[A215377(n+1)%A129316(n+1)]`
-/

namespace A215101.P17808771870172365409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215377 (n + 1)) (A129316 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215101.P17808771870172365409

namespace A215101

/-- `p?[A215377(n+1)%A129316(n+1)]` -/
def P17808771870172365409.Spec : Prop :=
  ∀ n, P17808771870172365409.a n = A215101 (n + 1)

end A215101

/-! ## A215101.P17907670519801103693

`p?[a(n-2)+19]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215101

/-- `p?[a(n-2)+19]` -/
def P17907670519801103693.Spec : Prop :=
  ∀ n, (P17907670519801103693.a n : ℤ) = A215101 (n + 1)

theorem P17907670519801103693.correct : P17907670519801103693.Spec := by
  intro n
  simp only [A215101, Nat.add_sub_cancel]

end A215101

/-! ## A215101.P9689942469706352280

`∩[A215105(n+1), A215154(n+1)]`
-/

namespace A215101.P9689942469706352280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P9689942469706352280

namespace A215101

/-- `∩[A215105(n+1), A215154(n+1)]` -/
def P9689942469706352280.Spec : Prop :=
  ∀ n, (P9689942469706352280.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P11479645234691229860

`∩[A215105(n+1), A215381(n+1)]`
-/

namespace A215101.P11479645234691229860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P11479645234691229860

namespace A215101

/-- `∩[A215105(n+1), A215381(n+1)]` -/
def P11479645234691229860.Spec : Prop :=
  ∀ n, (P11479645234691229860.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P8826917221396029318

`∩[A215105(n+1), A215282(n+1)]`
-/

namespace A215101.P8826917221396029318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P8826917221396029318

namespace A215101

/-- `∩[A215105(n+1), A215282(n+1)]` -/
def P8826917221396029318.Spec : Prop :=
  ∀ n, (P8826917221396029318.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P17429213481189298852

`∩[A215105(n+1), A215361(n+1)]`
-/

namespace A215101.P17429213481189298852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P17429213481189298852

namespace A215101

/-- `∩[A215105(n+1), A215361(n+1)]` -/
def P17429213481189298852.Spec : Prop :=
  ∀ n, (P17429213481189298852.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P8670045477524658365

`∩[A215282(n+1), A215385(n+1)]`
-/

namespace A215101.P8670045477524658365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P8670045477524658365

namespace A215101

/-- `∩[A215282(n+1), A215385(n+1)]` -/
def P8670045477524658365.Spec : Prop :=
  ∀ n, (P8670045477524658365.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P1004667064840611885

`∩[A215154(n+1), A215317(n+1)]`
-/

namespace A215101.P1004667064840611885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P1004667064840611885

namespace A215101

/-- `∩[A215154(n+1), A215317(n+1)]` -/
def P1004667064840611885.Spec : Prop :=
  ∀ n, (P1004667064840611885.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P2153628605633764980

`∩[A215321(n+1), A215377(n+1)]`
-/

namespace A215101.P2153628605633764980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P2153628605633764980

namespace A215101

/-- `∩[A215321(n+1), A215377(n+1)]` -/
def P2153628605633764980.Spec : Prop :=
  ∀ n, (P2153628605633764980.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P9150695165900792351

`∩[A215157(n+1), A215325(n+1)]`
-/

namespace A215101.P9150695165900792351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P9150695165900792351

namespace A215101

/-- `∩[A215157(n+1), A215325(n+1)]` -/
def P9150695165900792351.Spec : Prop :=
  ∀ n, (P9150695165900792351.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P16174738480332918210

`∩[A215313(n+1), A215377(n+1)]`
-/

namespace A215101.P16174738480332918210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P16174738480332918210

namespace A215101

/-- `∩[A215313(n+1), A215377(n+1)]` -/
def P16174738480332918210.Spec : Prop :=
  ∀ n, (P16174738480332918210.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P4560281499475431747

`∩[A215154(n+1), A215162(n+1)]`
-/

namespace A215101.P4560281499475431747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P4560281499475431747

namespace A215101

/-- `∩[A215154(n+1), A215162(n+1)]` -/
def P4560281499475431747.Spec : Prop :=
  ∀ n, (P4560281499475431747.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P5335884366000659921

`∩[A191063(n+1), A215105(n+1)]`
-/

namespace A215101.P5335884366000659921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P5335884366000659921

namespace A215101

/-- `∩[A191063(n+1), A215105(n+1)]` -/
def P5335884366000659921.Spec : Prop :=
  ∀ n, (P5335884366000659921.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P9452944949074969398

`∩[A191063(n+1), A215154(n+1)]`
-/

namespace A215101.P9452944949074969398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P9452944949074969398

namespace A215101

/-- `∩[A191063(n+1), A215154(n+1)]` -/
def P9452944949074969398.Spec : Prop :=
  ∀ n, (P9452944949074969398.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P150284401679339713

`∩[A191063(n+1), A215157(n+1)]`
-/

namespace A215101.P150284401679339713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P150284401679339713

namespace A215101

/-- `∩[A191063(n+1), A215157(n+1)]` -/
def P150284401679339713.Spec : Prop :=
  ∀ n, (P150284401679339713.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P11921422649581539906

`∩[A191063(n+1), A215162(n+1)]`
-/

namespace A215101.P11921422649581539906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P11921422649581539906

namespace A215101

/-- `∩[A191063(n+1), A215162(n+1)]` -/
def P11921422649581539906.Spec : Prop :=
  ∀ n, (P11921422649581539906.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P5228410771533227185

`∩[A191063(n+1), A215282(n+1)]`
-/

namespace A215101.P5228410771533227185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P5228410771533227185

namespace A215101

/-- `∩[A191063(n+1), A215282(n+1)]` -/
def P5228410771533227185.Spec : Prop :=
  ∀ n, (P5228410771533227185.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P16828172509392165141

`∩[A191063(n+1), A215305(n+1)]`
-/

namespace A215101.P16828172509392165141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P16828172509392165141

namespace A215101

/-- `∩[A191063(n+1), A215305(n+1)]` -/
def P16828172509392165141.Spec : Prop :=
  ∀ n, (P16828172509392165141.a n : ℤ) = A215101 (n + 1)

end A215101

/-! ## A215101.P16551166212012925934

`∩[A191063(n+1), A215309(n+1)]`
-/

namespace A215101.P16551166212012925934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215101.P16551166212012925934

namespace A215101

/-- `∩[A191063(n+1), A215309(n+1)]` -/
def P16551166212012925934.Spec : Prop :=
  ∀ n, (P16551166212012925934.a n : ℤ) = A215101 (n + 1)

end A215101

/-!
# A215102: Primes congruent to {2, 3, 5} mod 11.

The programs for A215102, the canonical program `A215102.P5571390027592218489` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215102 has offset 1).

The definition of A215102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215102.P5571390027592218489

`∪[A141852(n+1), A214888(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215102

/-- `∪[A141852(n+1), A214888(n+1)]` -/
def P5571390027592218489.Spec : Prop :=
  ∀ n, (P5571390027592218489.a n : ℤ) = A215102 (n + 1)

theorem P5571390027592218489.correct : P5571390027592218489.Spec := by
  intro n
  simp only [A215102, Nat.add_sub_cancel]

end A215102

/-! ## A215102.P9865733341414590276

`∪[A141850(n+1), A215167(n+1)]`
-/

namespace A215102.P9865733341414590276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P9865733341414590276

namespace A215102

/-- `∪[A141850(n+1), A215167(n+1)]` -/
def P9865733341414590276.Spec : Prop :=
  ∀ n, (P9865733341414590276.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P11538178149169823040

`∪[A214888(n+1), A215167(n+1)]`
-/

namespace A215102.P11538178149169823040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P11538178149169823040

namespace A215102

/-- `∪[A214888(n+1), A215167(n+1)]` -/
def P11538178149169823040.Spec : Prop :=
  ∀ n, (P11538178149169823040.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P6089103133147652110

`p?[a(n-3)+11]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A215102.P6089103133147652110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 3) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215102.P6089103133147652110

namespace A215102

/-- `p?[a(n-3)+11]` -/
def P6089103133147652110.Spec : Prop :=
  ∀ n, (P6089103133147652110.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P6164020034513504023

`p?[ogf((2x+x^2+2x^3+6x^4)/(1-x-x^3+x^4))]`
-/

namespace A215102.P6164020034513504023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 6] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215102.P6164020034513504023

namespace A215102

/-- `p?[ogf((2x+x^2+2x^3+6x^4)/(1-x-x^3+x^4))]` -/
def P6164020034513504023.Spec : Prop :=
  ∀ n, P6164020034513504023.a n = A215102 (n + 1)

end A215102

/-! ## A215102.P11746193603488859505

`∩[A215306(n+1), A215314(n+1)]`
-/

namespace A215102.P11746193603488859505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P11746193603488859505

namespace A215102

/-- `∩[A215306(n+1), A215314(n+1)]` -/
def P11746193603488859505.Spec : Prop :=
  ∀ n, (P11746193603488859505.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P7511681770570115120

`∩[A215306(n+1), A215354(n+1)]`
-/

namespace A215102.P7511681770570115120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P7511681770570115120

namespace A215102

/-- `∩[A215306(n+1), A215354(n+1)]` -/
def P7511681770570115120.Spec : Prop :=
  ∀ n, (P7511681770570115120.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P17835203145429967910

`∩[A215306(n+1), A215370(n+1)]`
-/

namespace A215102.P17835203145429967910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P17835203145429967910

namespace A215102

/-- `∩[A215306(n+1), A215370(n+1)]` -/
def P17835203145429967910.Spec : Prop :=
  ∀ n, (P17835203145429967910.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P11281476298148344570

`∩[A215314(n+1), A215370(n+1)]`
-/

namespace A215102.P11281476298148344570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P11281476298148344570

namespace A215102

/-- `∩[A215314(n+1), A215370(n+1)]` -/
def P11281476298148344570.Spec : Prop :=
  ∀ n, (P11281476298148344570.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P5166581986901246354

`∩[A167134(n+1), A215306(n+1)]`
-/

namespace A215102.P5166581986901246354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P5166581986901246354

namespace A215102

/-- `∩[A167134(n+1), A215306(n+1)]` -/
def P5166581986901246354.Spec : Prop :=
  ∀ n, (P5166581986901246354.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P11594836771571335810

`∩[A167134(n+1), A215314(n+1)]`
-/

namespace A215102.P11594836771571335810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P11594836771571335810

namespace A215102

/-- `∩[A167134(n+1), A215314(n+1)]` -/
def P11594836771571335810.Spec : Prop :=
  ∀ n, (P11594836771571335810.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P11383032428155266182

`∩[A167134(n+1), A215354(n+1)]`
-/

namespace A215102.P11383032428155266182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P11383032428155266182

namespace A215102

/-- `∩[A167134(n+1), A215354(n+1)]` -/
def P11383032428155266182.Spec : Prop :=
  ∀ n, (P11383032428155266182.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P254998804004006966

`∩[A167134(n+1), A215370(n+1)]`
-/

namespace A215102.P254998804004006966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P254998804004006966

namespace A215102

/-- `∩[A167134(n+1), A215370(n+1)]` -/
def P254998804004006966.Spec : Prop :=
  ∀ n, (P254998804004006966.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P8449879448197591204

`∩[A167134(n+1), A215318(n+1)]`
-/

namespace A215102.P8449879448197591204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P8449879448197591204

namespace A215102

/-- `∩[A167134(n+1), A215318(n+1)]` -/
def P8449879448197591204.Spec : Prop :=
  ∀ n, (P8449879448197591204.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P12837807426105244160

`∩[A215314(n+1), A215318(n+1)]`
-/

namespace A215102.P12837807426105244160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P12837807426105244160

namespace A215102

/-- `∩[A215314(n+1), A215318(n+1)]` -/
def P12837807426105244160.Spec : Prop :=
  ∀ n, (P12837807426105244160.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P13530377076488088207

`∩[A215318(n+1), A215354(n+1)]`
-/

namespace A215102.P13530377076488088207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P13530377076488088207

namespace A215102

/-- `∩[A215318(n+1), A215354(n+1)]` -/
def P13530377076488088207.Spec : Prop :=
  ∀ n, (P13530377076488088207.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P3757012959888295570

`∩[A167134(n+1), A215310(n+1)]`
-/

namespace A215102.P3757012959888295570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P3757012959888295570

namespace A215102

/-- `∩[A167134(n+1), A215310(n+1)]` -/
def P3757012959888295570.Spec : Prop :=
  ∀ n, (P3757012959888295570.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P16559252753969155359

`∩[A215310(n+1), A215370(n+1)]`
-/

namespace A215102.P16559252753969155359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P16559252753969155359

namespace A215102

/-- `∩[A215310(n+1), A215370(n+1)]` -/
def P16559252753969155359.Spec : Prop :=
  ∀ n, (P16559252753969155359.a n : ℤ) = A215102 (n + 1)

end A215102

/-! ## A215102.P1867023961363940403

`p?[A330396(n)+A047618(n+1)]`
-/

namespace A215102.P1867023961363940403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n + A047618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215102.P1867023961363940403

namespace A215102

/-- `p?[A330396(n)+A047618(n+1)]` -/
def P1867023961363940403.Spec : Prop :=
  ∀ n, P1867023961363940403.a n = A215102 (n + 1)

end A215102

/-! ## A215102.P16544067799648192379

`p?[A168484(A042968(n+1))]`
-/

namespace A215102.P16544067799648192379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (A042968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215102.P16544067799648192379

namespace A215102

/-- `p?[A168484(A042968(n+1))]` -/
def P16544067799648192379.Spec : Prop :=
  ∀ n, P16544067799648192379.a n = A215102 (n + 1)

end A215102

/-!
# A215103: Primes congruent to {2, 3, 5} mod 13.

The programs for A215103, the canonical program `A215103.P15709415160951109386` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215103 has offset 1).

The definition of A215103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215103.P15709415160951109386

`∪[A100202(n+1), A215168(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215103

/-- `∪[A100202(n+1), A215168(n+1)]` -/
def P15709415160951109386.Spec : Prop :=
  ∀ n, (P15709415160951109386.a n : ℤ) = A215103 (n + 1)

theorem P15709415160951109386.correct : P15709415160951109386.Spec := by
  intro n
  simp only [A215103, Nat.add_sub_cancel]

end A215103

/-! ## A215103.P16262164964238107666

`p?[a(n-3)+13]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A215103.P16262164964238107666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 3) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215103.P16262164964238107666

namespace A215103

/-- `p?[a(n-3)+13]` -/
def P16262164964238107666.Spec : Prop :=
  ∀ n, (P16262164964238107666.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P16280159992300504604

`p?[ogf((2x+x^2+2x^3+8x^4)/(1-x-x^3+x^4))]`
-/

namespace A215103.P16280159992300504604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 8] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215103.P16280159992300504604

namespace A215103

/-- `p?[ogf((2x+x^2+2x^3+8x^4)/(1-x-x^3+x^4))]` -/
def P16280159992300504604.Spec : Prop :=
  ∀ n, P16280159992300504604.a n = A215103 (n + 1)

end A215103

/-! ## A215103.P3013360692320096651

`∩[A215155(n+1), A215315(n+1)]`
-/

namespace A215103.P3013360692320096651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P3013360692320096651

namespace A215103

/-- `∩[A215155(n+1), A215315(n+1)]` -/
def P3013360692320096651.Spec : Prop :=
  ∀ n, (P3013360692320096651.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P13084520239711161686

`∩[A215155(n+1), A215355(n+1)]`
-/

namespace A215103.P13084520239711161686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P13084520239711161686

namespace A215103

/-- `∩[A215155(n+1), A215355(n+1)]` -/
def P13084520239711161686.Spec : Prop :=
  ∀ n, (P13084520239711161686.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P14980994992170256671

`∩[A215155(n+1), A215307(n+1)]`
-/

namespace A215103.P14980994992170256671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P14980994992170256671

namespace A215103

/-- `∩[A215155(n+1), A215307(n+1)]` -/
def P14980994992170256671.Spec : Prop :=
  ∀ n, (P14980994992170256671.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P7516060272622192005

`∩[A215155(n+1), A215371(n+1)]`
-/

namespace A215103.P7516060272622192005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P7516060272622192005

namespace A215103

/-- `∩[A215155(n+1), A215371(n+1)]` -/
def P7516060272622192005.Spec : Prop :=
  ∀ n, (P7516060272622192005.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P14633182660496813963

`∩[A215307(n+1), A215315(n+1)]`
-/

namespace A215103.P14633182660496813963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P14633182660496813963

namespace A215103

/-- `∩[A215307(n+1), A215315(n+1)]` -/
def P14633182660496813963.Spec : Prop :=
  ∀ n, (P14633182660496813963.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P12313615367809205672

`∩[A215307(n+1), A215355(n+1)]`
-/

namespace A215103.P12313615367809205672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P12313615367809205672

namespace A215103

/-- `∩[A215307(n+1), A215355(n+1)]` -/
def P12313615367809205672.Spec : Prop :=
  ∀ n, (P12313615367809205672.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P3908932778469036850

`∩[A215307(n+1), A215371(n+1)]`
-/

namespace A215103.P3908932778469036850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P3908932778469036850

namespace A215103

/-- `∩[A215307(n+1), A215371(n+1)]` -/
def P3908932778469036850.Spec : Prop :=
  ∀ n, (P3908932778469036850.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P16938622155586624774

`∩[A215315(n+1), A215371(n+1)]`
-/

namespace A215103.P16938622155586624774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P16938622155586624774

namespace A215103

/-- `∩[A215315(n+1), A215371(n+1)]` -/
def P16938622155586624774.Spec : Prop :=
  ∀ n, (P16938622155586624774.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P15597470001937506619

`∩[A215155(n+1), A215311(n+1)]`
-/

namespace A215103.P15597470001937506619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P15597470001937506619

namespace A215103

/-- `∩[A215155(n+1), A215311(n+1)]` -/
def P15597470001937506619.Spec : Prop :=
  ∀ n, (P15597470001937506619.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P5834635091533049296

`∩[A215311(n+1), A215371(n+1)]`
-/

namespace A215103.P5834635091533049296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P5834635091533049296

namespace A215103

/-- `∩[A215311(n+1), A215371(n+1)]` -/
def P5834635091533049296.Spec : Prop :=
  ∀ n, (P5834635091533049296.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P2976996206677148083

`∩[A215155(n+1), A215319(n+1)]`
-/

namespace A215103.P2976996206677148083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P2976996206677148083

namespace A215103

/-- `∩[A215155(n+1), A215319(n+1)]` -/
def P2976996206677148083.Spec : Prop :=
  ∀ n, (P2976996206677148083.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P11998134698167579280

`∩[A215315(n+1), A215319(n+1)]`
-/

namespace A215103.P11998134698167579280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P11998134698167579280

namespace A215103

/-- `∩[A215315(n+1), A215319(n+1)]` -/
def P11998134698167579280.Spec : Prop :=
  ∀ n, (P11998134698167579280.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P6327751785674094641

`∩[A215319(n+1), A215355(n+1)]`
-/

namespace A215103.P6327751785674094641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P6327751785674094641

namespace A215103

/-- `∩[A215319(n+1), A215355(n+1)]` -/
def P6327751785674094641.Spec : Prop :=
  ∀ n, (P6327751785674094641.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P12503064312869824374

`∩[A167119(n+1), A215307(n+1)]`
-/

namespace A215103.P12503064312869824374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P12503064312869824374

namespace A215103

/-- `∩[A167119(n+1), A215307(n+1)]` -/
def P12503064312869824374.Spec : Prop :=
  ∀ n, (P12503064312869824374.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P5242870803740729069

`∩[A167119(n+1), A215311(n+1)]`
-/

namespace A215103.P5242870803740729069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P5242870803740729069

namespace A215103

/-- `∩[A167119(n+1), A215311(n+1)]` -/
def P5242870803740729069.Spec : Prop :=
  ∀ n, (P5242870803740729069.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P127766953743230985

`∩[A167119(n+1), A215315(n+1)]`
-/

namespace A215103.P127766953743230985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P127766953743230985

namespace A215103

/-- `∩[A167119(n+1), A215315(n+1)]` -/
def P127766953743230985.Spec : Prop :=
  ∀ n, (P127766953743230985.a n : ℤ) = A215103 (n + 1)

end A215103

/-! ## A215103.P3610018407897013020

`∩[A167119(n+1), A215319(n+1)]`
-/

namespace A215103.P3610018407897013020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P3610018407897013020

namespace A215103

/-- `∩[A167119(n+1), A215319(n+1)]` -/
def P3610018407897013020.Spec : Prop :=
  ∀ n, (P3610018407897013020.a n : ℤ) = A215103 (n + 1)

end A215103

/-!
# A215104: Primes congruent to {2, 3, 5} mod 17.

The programs for A215104, the canonical program `A215104.P3862985368621771494` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215104 has offset 1).

The definition of A215104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215104.P6350987281713472370

`∪[A092074(n+1), A215169(n+1)]`
-/

namespace A215104.P6350987281713472370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P6350987281713472370

namespace A215104

/-- `∪[A092074(n+1), A215169(n+1)]` -/
def P6350987281713472370.Spec : Prop :=
  ∀ n, (P6350987281713472370.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P3862985368621771494

`∪[A138623(n+1), A214890(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215104

/-- `∪[A138623(n+1), A214890(n+1)]` -/
def P3862985368621771494.Spec : Prop :=
  ∀ n, (P3862985368621771494.a n : ℤ) = A215104 (n + 1)

theorem P3862985368621771494.correct : P3862985368621771494.Spec := by
  intro n
  simp only [A215104, Nat.add_sub_cancel]

end A215104

/-! ## A215104.P16198263009229806067

`p?[a(n-3)+17]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A215104.P16198263009229806067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 3) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215104.P16198263009229806067

namespace A215104

/-- `p?[a(n-3)+17]` -/
def P16198263009229806067.Spec : Prop :=
  ∀ n, (P16198263009229806067.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P17865336648622867432

`∩[A215156(n+1), A215372(n+1)]`
-/

namespace A215104.P17865336648622867432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P17865336648622867432

namespace A215104

/-- `∩[A215156(n+1), A215372(n+1)]` -/
def P17865336648622867432.Spec : Prop :=
  ∀ n, (P17865336648622867432.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P15001182718140376628

`∩[A215156(n+1), A215308(n+1)]`
-/

namespace A215104.P15001182718140376628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P15001182718140376628

namespace A215104

/-- `∩[A215156(n+1), A215308(n+1)]` -/
def P15001182718140376628.Spec : Prop :=
  ∀ n, (P15001182718140376628.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P1170428474189505334

`∩[A215156(n+1), A215316(n+1)]`
-/

namespace A215104.P1170428474189505334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P1170428474189505334

namespace A215104

/-- `∩[A215156(n+1), A215316(n+1)]` -/
def P1170428474189505334.Spec : Prop :=
  ∀ n, (P1170428474189505334.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P6261947551392209099

`∩[A215156(n+1), A215356(n+1)]`
-/

namespace A215104.P6261947551392209099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P6261947551392209099

namespace A215104

/-- `∩[A215156(n+1), A215356(n+1)]` -/
def P6261947551392209099.Spec : Prop :=
  ∀ n, (P6261947551392209099.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P5422525198613463169

`∩[A215308(n+1), A215316(n+1)]`
-/

namespace A215104.P5422525198613463169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P5422525198613463169

namespace A215104

/-- `∩[A215308(n+1), A215316(n+1)]` -/
def P5422525198613463169.Spec : Prop :=
  ∀ n, (P5422525198613463169.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P11726900642851038728

`∩[A215308(n+1), A215356(n+1)]`
-/

namespace A215104.P11726900642851038728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P11726900642851038728

namespace A215104

/-- `∩[A215308(n+1), A215356(n+1)]` -/
def P11726900642851038728.Spec : Prop :=
  ∀ n, (P11726900642851038728.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P9357056101646058373

`∩[A215308(n+1), A215372(n+1)]`
-/

namespace A215104.P9357056101646058373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P9357056101646058373

namespace A215104

/-- `∩[A215308(n+1), A215372(n+1)]` -/
def P9357056101646058373.Spec : Prop :=
  ∀ n, (P9357056101646058373.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P15729420983078463643

`∩[A215316(n+1), A215372(n+1)]`
-/

namespace A215104.P15729420983078463643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P15729420983078463643

namespace A215104

/-- `∩[A215316(n+1), A215372(n+1)]` -/
def P15729420983078463643.Spec : Prop :=
  ∀ n, (P15729420983078463643.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P5160591638239087140

`∩[A215161(n+1), A215308(n+1)]`
-/

namespace A215104.P5160591638239087140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P5160591638239087140

namespace A215104

/-- `∩[A215161(n+1), A215308(n+1)]` -/
def P5160591638239087140.Spec : Prop :=
  ∀ n, (P5160591638239087140.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P1665073990373615485

`∩[A215161(n+1), A215316(n+1)]`
-/

namespace A215104.P1665073990373615485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P1665073990373615485

namespace A215104

/-- `∩[A215161(n+1), A215316(n+1)]` -/
def P1665073990373615485.Spec : Prop :=
  ∀ n, (P1665073990373615485.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P7724095581349173439

`∩[A215161(n+1), A215356(n+1)]`
-/

namespace A215104.P7724095581349173439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P7724095581349173439

namespace A215104

/-- `∩[A215161(n+1), A215356(n+1)]` -/
def P7724095581349173439.Spec : Prop :=
  ∀ n, (P7724095581349173439.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P13960150340997315466

`∩[A215161(n+1), A215372(n+1)]`
-/

namespace A215104.P13960150340997315466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P13960150340997315466

namespace A215104

/-- `∩[A215161(n+1), A215372(n+1)]` -/
def P13960150340997315466.Spec : Prop :=
  ∀ n, (P13960150340997315466.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P14157275308344741405

`∩[A215156(n+1), A215312(n+1)]`
-/

namespace A215104.P14157275308344741405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P14157275308344741405

namespace A215104

/-- `∩[A215156(n+1), A215312(n+1)]` -/
def P14157275308344741405.Spec : Prop :=
  ∀ n, (P14157275308344741405.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P14674618268400390768

`∩[A215161(n+1), A215312(n+1)]`
-/

namespace A215104.P14674618268400390768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P14674618268400390768

namespace A215104

/-- `∩[A215161(n+1), A215312(n+1)]` -/
def P14674618268400390768.Spec : Prop :=
  ∀ n, (P14674618268400390768.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P15552543357370104507

`∩[A215312(n+1), A215372(n+1)]`
-/

namespace A215104.P15552543357370104507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P15552543357370104507

namespace A215104

/-- `∩[A215312(n+1), A215372(n+1)]` -/
def P15552543357370104507.Spec : Prop :=
  ∀ n, (P15552543357370104507.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P14200721669540120864

`∩[A215156(n+1), A215320(n+1)]`
-/

namespace A215104.P14200721669540120864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P14200721669540120864

namespace A215104

/-- `∩[A215156(n+1), A215320(n+1)]` -/
def P14200721669540120864.Spec : Prop :=
  ∀ n, (P14200721669540120864.a n : ℤ) = A215104 (n + 1)

end A215104

/-! ## A215104.P734455317987352213

`∩[A215161(n+1), A215320(n+1)]`
-/

namespace A215104.P734455317987352213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215104.P734455317987352213

namespace A215104

/-- `∩[A215161(n+1), A215320(n+1)]` -/
def P734455317987352213.Spec : Prop :=
  ∀ n, (P734455317987352213.a n : ℤ) = A215104 (n + 1)

end A215104

/-!
# A215105: Primes congruent to {2, 3, 5} mod 19.

The programs for A215105, the canonical program `A215105.P1088098343684687308` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215105 has offset 1).

The definition of A215105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215105.P9366072039889668272

`∪[A092168(n+1), A215170(n+1)]`
-/

namespace A215105.P9366072039889668272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P9366072039889668272

namespace A215105

/-- `∪[A092168(n+1), A215170(n+1)]` -/
def P9366072039889668272.Spec : Prop :=
  ∀ n, (P9366072039889668272.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P1088098343684687308

`∪[A102851(n+1), A215101(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215105

/-- `∪[A102851(n+1), A215101(n+1)]` -/
def P1088098343684687308.Spec : Prop :=
  ∀ n, (P1088098343684687308.a n : ℤ) = A215105 (n + 1)

theorem P1088098343684687308.correct : P1088098343684687308.Spec := by
  intro n
  simp only [A215105, Nat.add_sub_cancel]

end A215105

/-! ## A215105.P1547669110204398918

`p?[a(n-3)+19]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A215105.P1547669110204398918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 3) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215105.P1547669110204398918

namespace A215105

/-- `p?[a(n-3)+19]` -/
def P1547669110204398918.Spec : Prop :=
  ∀ n, (P1547669110204398918.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P4552609116281723251

`∩[A215309(n+1), A215373(n+1)]`
-/

namespace A215105.P4552609116281723251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P4552609116281723251

namespace A215105

/-- `∩[A215309(n+1), A215373(n+1)]` -/
def P4552609116281723251.Spec : Prop :=
  ∀ n, (P4552609116281723251.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P15943002471416324426

`∩[A215157(n+1), A215309(n+1)]`
-/

namespace A215105.P15943002471416324426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P15943002471416324426

namespace A215105

/-- `∩[A215157(n+1), A215309(n+1)]` -/
def P15943002471416324426.Spec : Prop :=
  ∀ n, (P15943002471416324426.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P13972398182483328825

`∩[A215157(n+1), A215373(n+1)]`
-/

namespace A215105.P13972398182483328825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P13972398182483328825

namespace A215105

/-- `∩[A215157(n+1), A215373(n+1)]` -/
def P13972398182483328825.Spec : Prop :=
  ∀ n, (P13972398182483328825.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P3161148280532373075

`∩[A215157(n+1), A215317(n+1)]`
-/

namespace A215105.P3161148280532373075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P3161148280532373075

namespace A215105

/-- `∩[A215157(n+1), A215317(n+1)]` -/
def P3161148280532373075.Spec : Prop :=
  ∀ n, (P3161148280532373075.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P13245969991986716914

`∩[A215157(n+1), A215357(n+1)]`
-/

namespace A215105.P13245969991986716914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P13245969991986716914

namespace A215105

/-- `∩[A215157(n+1), A215357(n+1)]` -/
def P13245969991986716914.Spec : Prop :=
  ∀ n, (P13245969991986716914.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P6167616638508189208

`∩[A215309(n+1), A215317(n+1)]`
-/

namespace A215105.P6167616638508189208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P6167616638508189208

namespace A215105

/-- `∩[A215309(n+1), A215317(n+1)]` -/
def P6167616638508189208.Spec : Prop :=
  ∀ n, (P6167616638508189208.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P14851290410275284224

`∩[A215309(n+1), A215357(n+1)]`
-/

namespace A215105.P14851290410275284224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P14851290410275284224

namespace A215105

/-- `∩[A215309(n+1), A215357(n+1)]` -/
def P14851290410275284224.Spec : Prop :=
  ∀ n, (P14851290410275284224.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P16142545918594503625

`∩[A215317(n+1), A215373(n+1)]`
-/

namespace A215105.P16142545918594503625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P16142545918594503625

namespace A215105

/-- `∩[A215317(n+1), A215373(n+1)]` -/
def P16142545918594503625.Spec : Prop :=
  ∀ n, (P16142545918594503625.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P9914246251481175611

`∩[A215157(n+1), A215321(n+1)]`
-/

namespace A215105.P9914246251481175611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P9914246251481175611

namespace A215105

/-- `∩[A215157(n+1), A215321(n+1)]` -/
def P9914246251481175611.Spec : Prop :=
  ∀ n, (P9914246251481175611.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P11439400154813193312

`∩[A215317(n+1), A215321(n+1)]`
-/

namespace A215105.P11439400154813193312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P11439400154813193312

namespace A215105

/-- `∩[A215317(n+1), A215321(n+1)]` -/
def P11439400154813193312.Spec : Prop :=
  ∀ n, (P11439400154813193312.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P746967677743742165

`∩[A215321(n+1), A215357(n+1)]`
-/

namespace A215105.P746967677743742165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P746967677743742165

namespace A215105

/-- `∩[A215321(n+1), A215357(n+1)]` -/
def P746967677743742165.Spec : Prop :=
  ∀ n, (P746967677743742165.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P397686204310860220

`∩[A215157(n+1), A215313(n+1)]`
-/

namespace A215105.P397686204310860220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P397686204310860220

namespace A215105

/-- `∩[A215157(n+1), A215313(n+1)]` -/
def P397686204310860220.Spec : Prop :=
  ∀ n, (P397686204310860220.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P6908575457533902665

`∩[A215313(n+1), A215373(n+1)]`
-/

namespace A215105.P6908575457533902665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P6908575457533902665

namespace A215105

/-- `∩[A215313(n+1), A215373(n+1)]` -/
def P6908575457533902665.Spec : Prop :=
  ∀ n, (P6908575457533902665.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P11112310614918666030

`∩[A215162(n+1), A215309(n+1)]`
-/

namespace A215105.P11112310614918666030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P11112310614918666030

namespace A215105

/-- `∩[A215162(n+1), A215309(n+1)]` -/
def P11112310614918666030.Spec : Prop :=
  ∀ n, (P11112310614918666030.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P7129702152066382089

`∩[A215162(n+1), A215313(n+1)]`
-/

namespace A215105.P7129702152066382089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P7129702152066382089

namespace A215105

/-- `∩[A215162(n+1), A215313(n+1)]` -/
def P7129702152066382089.Spec : Prop :=
  ∀ n, (P7129702152066382089.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P17446270289237414051

`∩[A215162(n+1), A215317(n+1)]`
-/

namespace A215105.P17446270289237414051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P17446270289237414051

namespace A215105

/-- `∩[A215162(n+1), A215317(n+1)]` -/
def P17446270289237414051.Spec : Prop :=
  ∀ n, (P17446270289237414051.a n : ℤ) = A215105 (n + 1)

end A215105

/-! ## A215105.P11672327709324336526

`∩[A215162(n+1), A215321(n+1)]`
-/

namespace A215105.P11672327709324336526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215105.P11672327709324336526

namespace A215105

/-- `∩[A215162(n+1), A215321(n+1)]` -/
def P11672327709324336526.Spec : Prop :=
  ∀ n, (P11672327709324336526.a n : ℤ) = A215105 (n + 1)

end A215105

/-!
# A215106: Primes congruent to {3, 5, 6} mod 11.

The programs for A215106, the canonical program `A215106.P16085650048315136140` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215106 has offset 1).

The definition of A215106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215106.P16085650048315136140

`p?[ogf((3x+2x^2+x^3+5x^4)/(1-x-x^3+x^4))]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215106

/-- `p?[ogf((3x+2x^2+x^3+5x^4)/(1-x-x^3+x^4))]` -/
def P16085650048315136140.Spec : Prop :=
  ∀ n, P16085650048315136140.a n = A215106 (n + 1)

theorem P16085650048315136140.correct : P16085650048315136140.Spec := by
  intro n
  simp only [A215106, Nat.add_sub_cancel]

end A215106

/-! ## A215106.P12556411088416438168

`p?[A047482(n+1)+A047358(n+1)]`
-/

namespace A215106.P12556411088416438168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1) + A047358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P12556411088416438168

namespace A215106

/-- `p?[A047482(n+1)+A047358(n+1)]` -/
def P12556411088416438168.Spec : Prop :=
  ∀ n, P12556411088416438168.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P6574719604246946711

`p?[A047621(A133310(n))+n]`
-/

namespace A215106.P6574719604246946711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A133310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P6574719604246946711

namespace A215106

/-- `p?[A047621(A133310(n))+n]` -/
def P6574719604246946711.Spec : Prop :=
  ∀ n, P6574719604246946711.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P12885541096810386087

`p?[A047621(n+1)-A285870(n)]`
-/

namespace A215106.P12885541096810386087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1) - A285870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P12885541096810386087

namespace A215106

/-- `p?[A047621(n+1)-A285870(n)]` -/
def P12885541096810386087.Spec : Prop :=
  ∀ n, P12885541096810386087.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P1609223265662027082

`p?[A016789(n)+A004396(A004442(n))]`
-/

namespace A215106.P1609223265662027082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A004396 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P1609223265662027082

namespace A215106

/-- `p?[A016789(n)+A004396(A004442(n))]` -/
def P1609223265662027082.Spec : Prop :=
  ∀ n, P1609223265662027082.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P5375790737020476896

`p?[A042965(or(1, n)+n+2)+n]`
-/

namespace A215106.P5375790737020476896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (Nat.lor 1 n + (n + 2)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P5375790737020476896

namespace A215106

/-- `p?[A042965(or(1, n)+n+2)+n]` -/
def P5375790737020476896.Spec : Prop :=
  ∀ n, P5375790737020476896.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P5774873390957592549

`p?[A004773(A014601(n))-2+n]`
-/

namespace A215106.P5774873390957592549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A014601 n).toNat - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P5774873390957592549

namespace A215106

/-- `p?[A004773(A014601(n))-2+n]` -/
def P5774873390957592549.Spec : Prop :=
  ∀ n, P5774873390957592549.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P605126465032354418

`p?[A042965(A042948(n)+3)+n]`
-/

namespace A215106.P605126465032354418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042948 n + 3).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P605126465032354418

namespace A215106

/-- `p?[A042965(A042948(n)+3)+n]` -/
def P605126465032354418.Spec : Prop :=
  ∀ n, P605126465032354418.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P10123749139345598288

`p?[A250122(or(1, A072154(n)))-n]`
-/

namespace A215106.P10123749139345598288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (Int.lor 1 (A072154 n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P10123749139345598288

namespace A215106

/-- `p?[A250122(or(1, A072154(n)))-n]` -/
def P10123749139345598288.Spec : Prop :=
  ∀ n, P10123749139345598288.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P3164295081627464841

`p?[A174871(2*n+1)-A008585(n)]`
-/

namespace A215106.P3164295081627464841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174871 (2 * n + 1) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P3164295081627464841

namespace A215106

/-- `p?[A174871(2*n+1)-A008585(n)]` -/
def P3164295081627464841.Spec : Prop :=
  ∀ n, P3164295081627464841.a n = A215106 (n + 1)

end A215106

/-! ## A215106.P11230127052874971142

`∩[A032797(2*n+1)+2, A215318(n+2)]`
-/

namespace A215106.P11230127052874971142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215106.P11230127052874971142

namespace A215106

/-- `∩[A032797(2*n+1)+2, A215318(n+2)]` -/
def P11230127052874971142.Spec : Prop :=
  ∀ n, (P11230127052874971142.a n : ℤ) = A215106 (n + 1)

end A215106

/-! ## A215106.P2970338283954372489

`p?[A004525(A017485(n))-A010685(n)]`
-/

namespace A215106.P2970338283954372489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A017485 n).toNat - A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215106.P2970338283954372489

namespace A215106

/-- `p?[A004525(A017485(n))-A010685(n)]` -/
def P2970338283954372489.Spec : Prop :=
  ∀ n, P2970338283954372489.a n = A215106 (n + 1)

end A215106

/-!
# A215108: a(n) = A215082(2*n).

The programs for A215108, there is no canonical definition to state claims against.
-/

/-! ## A215108.P12523028233130693520

`A215082(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215108.P12523028233130693520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (2 * n)

end

end A215108.P12523028233130693520

/-! ## A215108.P7484332304560171433

`record[A215082(n)^val(or(2, n), 2)]`
-/

namespace A215108.P7484332304560171433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 n ^ SequenceMachineLib.valuation (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P7484332304560171433

/-! ## A215108.P10686327546202298327

`record[A215082(A014681(n))]`
-/

namespace A215108.P10686327546202298327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P10686327546202298327

/-! ## A215108.P11485278819233963195

`record[A215082(A018838(n))]`
-/

namespace A215108.P11485278819233963195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P11485278819233963195

/-! ## A215108.P15347102281806357950

`record[A215082(A029578(n))]`
-/

namespace A215108.P15347102281806357950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P15347102281806357950

/-! ## A215108.P18191596007707364577

`record[A215082(abs(A009531(n)))]`
-/

namespace A215108.P18191596007707364577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 |A009531 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P18191596007707364577

/-! ## A215108.P11687128870999953983

`record[A215082(A029579(n)-1)]`
-/

namespace A215108.P11687128870999953983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A029579 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P11687128870999953983

/-! ## A215108.P8369357501205579983

`record[A215082(A141310(n)-1)]`
-/

namespace A215108.P8369357501205579983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A141310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P8369357501205579983

/-! ## A215108.P10828081489695226165

`A215109(n)-A366043(n+1)`
-/

namespace A215108.P10828081489695226165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215109 n - A366043 (n + 1)

end

end A215108.P10828081489695226165

/-! ## A215108.P4715938899508583745

`record[A215082(A000265(n+1)-1)]`
-/

namespace A215108.P4715938899508583745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P4715938899508583745

/-! ## A215108.P11071089299473603589

`record[A215082(n-A003966(n+2))]`
-/

namespace A215108.P11071089299473603589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 ((n : ℤ) - A003966 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215108.P11071089299473603589

/-! ## A215108.P9764597253474292708

`A023607(n+1)-A215109(n)`
-/

namespace A215108.P9764597253474292708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) - A215109 n

end

end A215108.P9764597253474292708

/-! ## A215108.P12825694761575508739

`A215082(A005843(n))%A020713(n)`
-/

namespace A215108.P12825694761575508739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215082 (A005843 n).toNat) (A020713 n)

end

end A215108.P12825694761575508739

/-! ## A215108.P17867446507443685422

`A292465(n+1)/A000045(n+1)-A215109(n)`
-/

namespace A215108.P17867446507443685422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292465 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) - (A215109 n : ℚ)

end

end A215108.P17867446507443685422

/-! ## A215108.P1814950581040530252

`A215082(comp[or(1, n)])%A007052(n)`
-/

namespace A215108.P1814950581040530252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215082 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A007052 n)

end

end A215108.P1814950581040530252

/-!
# A215109: a(n) = A215082(2*n+1).

The programs for A215109, there is no canonical definition to state claims against.
-/

/-! ## A215109.P9302869131074137148

`A215082(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215109.P9302869131074137148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (2 * n + 1)

end

end A215109.P9302869131074137148

/-! ## A215109.P1329565080391032449

`record[A215082(A029579(n))]`
-/

namespace A215109.P1329565080391032449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P1329565080391032449

/-! ## A215109.P7691568579476533533

`record[A215082(A141310(n))]`
-/

namespace A215109.P7691568579476533533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P7691568579476533533

/-! ## A215109.P14166044710579893947

`record[A215082(A230424(n))]`
-/

namespace A215109.P14166044710579893947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A230424 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P14166044710579893947

/-! ## A215109.P5148222646627857713

`record[A215082(A000265(n+1))]`
-/

namespace A215109.P5148222646627857713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P5148222646627857713

/-! ## A215109.P4921815716995312301

`record[A215082(A014681(n)+1)]`
-/

namespace A215109.P4921815716995312301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P4921815716995312301

/-! ## A215109.P2872190383692426415

`record[A215082(A018838(n)+1)]`
-/

namespace A215109.P2872190383692426415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A018838 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P2872190383692426415

/-! ## A215109.P54359079019223922

`record[A215082(A029578(n)+1)]`
-/

namespace A215109.P54359079019223922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P54359079019223922

/-! ## A215109.P3223648197543245585

`A366043(n+1)+A215108(n)`
-/

namespace A215109.P3223648197543245585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (n + 1) + A215108 n

end

end A215109.P3223648197543245585

/-! ## A215109.P1458355458670341941

`record[A215082(abs(A009531(n))+1)]`
-/

namespace A215109.P1458355458670341941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215082 (|A009531 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P1458355458670341941

/-! ## A215109.P2903907111869320563

`record[gcd(A003966(n+1), A215082(n))]`
-/

namespace A215109.P2903907111869320563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003966 (n + 1)) (A215082 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P2903907111869320563

/-! ## A215109.P5349812760942082186

`record[A215082(n+1)/A009531(n+1)²]`
-/

namespace A215109.P5349812760942082186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215082 (n + 1) : ℚ) / (A009531 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215109.P5349812760942082186

/-! ## A215109.P13705996255107307388

`A215108(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A215109.P13705996255107307388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215108 (n + 1) - a (n - 1)

end

end A215109.P13705996255107307388

/-! ## A215109.P4902817492385641622

`A023607(n+1)-A215108(n)`
-/

namespace A215109.P4902817492385641622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) - A215108 n

end

end A215109.P4902817492385641622

/-!
# A215112: a(n) = -2*a(n-1) + a(n-2) + a(n-3) with a(0)=a(1)=-1, a(2)=1.

The programs for A215112, the canonical program `A215112.P16742587141931637713` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215112 has offset 0).

The definition of A215112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215112.P4222133015666030795

`ogf((1+3x)/(-1-2x+x^2+x^3))`
-/

namespace A215112.P4222133015666030795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -3] [1, 2, -1, -1] n

end

end A215112.P4222133015666030795

namespace A215112

/-- `ogf((1+3x)/(-1-2x+x^2+x^3))` -/
def P4222133015666030795.Spec : Prop :=
  ∀ n, P4222133015666030795.a n = A215112 n

end A215112

/-! ## A215112.P16742587141931637713

`a(n-2)+a(n-3)-2*a(n-1)` with `a(0)=-1, a(1)=-1, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215112

/-- `a(n-2)+a(n-3)-2*a(n-1)` -/
def P16742587141931637713.Spec : Prop :=
  ∀ n, P16742587141931637713.a n = A215112 n

theorem P16742587141931637713.correct : P16742587141931637713.Spec := by
  intro n
  simp only [A215112]

end A215112

/-! ## A215112.P4955066101478605476

`a(n-2)-(2*a(n-1)-a(n-3))` with `a(0)=-1, a(1)=-1, a(2)=1`
-/

namespace A215112.P4955066101478605476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 1] fun n a =>
  a (n - 2) - (2 * a (n - 1) - a (n - 3))

end

end A215112.P4955066101478605476

namespace A215112

/-- `a(n-2)-(2*a(n-1)-a(n-3))` -/
def P4955066101478605476.Spec : Prop :=
  ∀ n, P4955066101478605476.a n = A215112 n

end A215112

/-! ## A215112.P11998450385197388560

`a(n-2)-(a(n-1)+a(n-1)-a(n-3))` with `a(0)=-1, a(1)=-1, a(2)=1`
-/

namespace A215112.P11998450385197388560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 1] fun n a =>
  a (n - 2) - (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A215112.P11998450385197388560

namespace A215112

/-- `a(n-2)-(a(n-1)+a(n-1)-a(n-3))` -/
def P11998450385197388560.Spec : Prop :=
  ∀ n, P11998450385197388560.a n = A215112 n

end A215112

/-! ## A215112.P17635109833412355112

`a(n-2)-(a(n-1)-a(n-3))-a(n-1)` with `a(0)=-1, a(1)=-1, a(2)=1`
-/

namespace A215112.P17635109833412355112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 1] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3)) - a (n - 1)

end

end A215112.P17635109833412355112

namespace A215112

/-- `a(n-2)-(a(n-1)-a(n-3))-a(n-1)` -/
def P17635109833412355112.Spec : Prop :=
  ∀ n, P17635109833412355112.a n = A215112 n

end A215112

/-!
# A215113: a(n) is the number of different prime divisors of A214723(n).

The programs for A215113, there is no canonical definition to state claims against.
-/

/-! ## A215113.P14181981593965733608

`A001221(A214723(n+1))`
-/

namespace A215113.P14181981593965733608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A214723 (n + 1)).toNat

end

end A215113.P14181981593965733608

/-! ## A215113.P11469813794905844449

`∑{e}[A214723(n+1), A046854(#)]`
-/

namespace A215113.P11469813794905844449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046854 (Nat.factorization (f1 n).natAbs p)

end

end A215113.P11469813794905844449

/-! ## A215113.P9983067952758027743

`∑{e}[A214723(n+1), A100134(#)]`
-/

namespace A215113.P9983067952758027743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A100134 (Nat.factorization (f1 n).natAbs p)

end

end A215113.P9983067952758027743

/-! ## A215113.P3023999002633470611

`A001222(∏{e}[A214723(n+1), A285226(#)])`
-/

namespace A215113.P3023999002633470611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A285226 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A215113.P3023999002633470611

/-! ## A215113.P8684121720743375553

`∑{p}[A214723(n+1), A001222(#)]`
-/

namespace A215113.P8684121720743375553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A215113.P8684121720743375553

/-! ## A215113.P14151594159135737701

`∑{p}[A214723(n+1), A008683(#)²]`
-/

namespace A215113.P14151594159135737701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p ^ 2

end

end A215113.P14151594159135737701

/-! ## A215113.P7148687095556736457

`∑{d}[A214723(n+1), A010051(#)]`
-/

namespace A215113.P7148687095556736457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A215113.P7148687095556736457

/-! ## A215113.P10267294180747099206

`A001222(∏{p}[A214723(n+1), #])`
-/

namespace A215113.P10267294180747099206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A215113.P10267294180747099206

/-! ## A215113.P8950480754579337726

`∑{p}[A214723(n+1), A326189(#)]`
-/

namespace A215113.P8950480754579337726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326189 p

end

end A215113.P8950480754579337726

/-! ## A215113.P5540326083188638069

`∑{p}[A214723(n+1), A003557(#)]`
-/

namespace A215113.P5540326083188638069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003557 p

end

end A215113.P5540326083188638069

/-!
# A215114: G.f. satisfies: A(x) = x + 2*x^2 + x*A(A(A(x))).

The programs for A215114, there is no canonical definition to state claims against.
-/

/-! ## A215114.P16086528280733089094

`3^n*A000196(A319361(n))`
-/

namespace A215114.P16086528280733089094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000196 (A319361 n).toNat

end

end A215114.P16086528280733089094

/-! ## A215114.P14765803978543252731

`3^n*A349174(A001349(n))`
-/

namespace A215114.P14765803978543252731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A349174 (A001349 n).toNat

end

end A215114.P14765803978543252731

/-!
# A215115: G.f. A(x) satisfies: A(A(A(x))) = G(x) where G(x) = x + 2*x^2 + x*G(G(G(x))) is the g.f. of A215114.

The programs for A215115, there is no canonical definition to state claims against.
-/

/-! ## A215115.P3387174495744548792

`A162565(a(n-1)+5)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A215115.P3387174495744548792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A162565 (a (n - 1) + 5).toNat

end

end A215115.P3387174495744548792

/-! ## A215115.P6000859501707110234

`A028234(∏[A319728(2*(n+1))]+2)`
-/

namespace A215115.P6000859501707110234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319728 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (∏ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A215115.P6000859501707110234

/-!
# A215116: G.f. satisfies: A(x) = x + 3*x^2 + x*A(A(A(A(x)))).

The programs for A215116, there is no canonical definition to state claims against.
-/

/-! ## A215116.P14960494506682025270

`A000302(n)*A184333(A001710(n))`
-/

namespace A215116.P14960494506682025270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A184333 (A001710 n).toNat

end

end A215116.P14960494506682025270

/-!
# A215117: G.f. A(x) satisfies: A(A(A(A(x)))) = G(x) where G(x) = x + 3*x^2 + x*G(G(G(G(x)))) is the g.f. of A215116.

The programs for A215117, there is no canonical definition to state claims against.
-/

/-! ## A215117.P13062477369727883710

`or(1, A102279(A126042(n)))`
-/

namespace A215117.P13062477369727883710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102279 (A126042 n).toNat)

end

end A215117.P13062477369727883710

/-! ## A215117.P16077864563241751466

`or(1, A102279(A102276(n+3)))`
-/

namespace A215117.P16077864563241751466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102279 (A102276 (n + 3)).toNat)

end

end A215117.P16077864563241751466

/-!
# A215118: G.f. satisfies: A(x) = x + 4*x^2 + x*A(A(A(A(A(x))))).

The programs for A215118, there is no canonical definition to state claims against.
-/

/-! ## A215118.P3255102944464085424

`∏[A151691(3^n+1)]`
-/

namespace A215118.P3255102944464085424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 (3 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215118.P3255102944464085424

/-!
# A215119: G.f. A(x) satisfies: A(A(A(A(A(x))))) = G(x) where G(x) = x + 4*x^2 + x*G(G(G(G(G(x))))) is the g.f. of A215118.

The programs for A215119, there is no canonical definition to state claims against.
-/

/-! ## A215119.P17351568060813797833

`A177959(A303160(n)^3)`
-/

namespace A215119.P17351568060813797833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (A303160 n ^ 3).toNat

end

end A215119.P17351568060813797833

/-!
# A215120: Number T(n,k) of solid standard Young tableaux of n cells and height >= k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A215120, there is no canonical definition to state claims against.
-/

/-! ## A215120.P11483111445956316450

`A344543(A193824(n))`
-/

namespace A215120.P11483111445956316450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A193824 n).toNat

end

end A215120.P11483111445956316450

/-! ## A215120.P11118055465302477086

`A002487(A186826(n)²+1)`
-/

namespace A215120.P11118055465302477086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A186826 n ^ 2 + 1).toNat

end

end A215120.P11118055465302477086

/-! ## A215120.P8720951207856962832

`A002487(A002522(A186826(n)))`
-/

namespace A215120.P8720951207856962832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A002522 (A186826 n).toNat).toNat

end

end A215120.P8720951207856962832

/-! ## A215120.P12444283970516770437

`A002487(A000463(A186826(n)²))`
-/

namespace A215120.P12444283970516770437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000463 (A186826 n ^ 2).toNat).toNat

end

end A215120.P12444283970516770437

/-! ## A215120.P14965608414188904718

`and(A112292(A025065(n+4)), A112292(n))`
-/

namespace A215120.P14965608414188904718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112292 (A025065 (n + 4)).toNat) (A112292 n)

end

end A215120.P14965608414188904718

/-!
# A215123: Number of solid standard Young tableaux of shape [[n^2,n],[n]].

The programs for A215123, there is no canonical definition to state claims against.
-/

/-! ## A215123.P9680544724330097768

`A215122(∑[4*n])`
-/

namespace A215123.P9680544724330097768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215123.P9680544724330097768

/-! ## A215123.P16722069805889074572

`A176129(∑[4*n])`
-/

namespace A215123.P16722069805889074572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215123.P16722069805889074572

/-! ## A215123.P101708974539428227

`record[A176129(A092530(n))]`
-/

namespace A215123.P101708974539428227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215123.P101708974539428227

/-! ## A215123.P17279265427986507077

`record[A176129(lcm(n, A185917(n+1)))]`
-/

namespace A215123.P17279265427986507077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (Int.lcm (n : ℤ) (A185917 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215123.P17279265427986507077

/-! ## A215123.P11140775893017297785

`record[A185917(n+1)²*A176129(n)]`
-/

namespace A215123.P11140775893017297785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) ^ 2 * A176129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215123.P11140775893017297785

/-!
# A215124: Number of solid standard Young tableaux of shape [[(n-2)*2,2],[n-2]].

The programs for A215124, there is no canonical definition to state claims against.
-/

/-! ## A215124.P17118851359758059054

`A215122(∑[n]+2)`
-/

namespace A215124.P17118851359758059054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215122 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A215124.P17118851359758059054

/-! ## A215124.P16584791144822778170

`lcm(n-1, A215122(A133263(n)))`
-/

namespace A215124.P16584791144822778170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A215122 (A133263 n).toNat)

end

end A215124.P16584791144822778170

/-! ## A215124.P4840662796822157292

`A057427(n)*A215122(A133263(n))`
-/

namespace A215124.P4840662796822157292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A215122 (A133263 n).toNat

end

end A215124.P4840662796822157292

/-! ## A215124.P1885149867088401237

`A215122(A133263(n))%A000165(n)`
-/

namespace A215124.P1885149867088401237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215122 (A133263 n).toNat) (A000165 n)

end

end A215124.P1885149867088401237

/-! ## A215124.P6017011319619637105

`A071030(n²)*A215122(A133263(n))`
-/

namespace A215124.P6017011319619637105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (n ^ 2) * A215122 (A133263 n).toNat

end

end A215124.P6017011319619637105

/-! ## A215124.P11644631051863503461

`A050447(∑[n])*A215122(A133263(n))`
-/

namespace A215124.P11644631051863503461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (∑ j ∈ Finset.range (n + 1), f1 j) * A215122 (A133263 n).toNat

end

end A215124.P11644631051863503461

/-! ## A215124.P4233099509759630088

`A215122(A133263(n))+A000035(2*n)`
-/

namespace A215124.P4233099509759630088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215122 (A133263 n).toNat + A000035 (2 * n)

end

end A215124.P4233099509759630088

/-! ## A215124.P13658936756588514885

`A000108(C(2, n+2))*A215122(A133263(n))`
-/

namespace A215124.P13658936756588514885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A215122 (A133263 n).toNat

end

end A215124.P13658936756588514885

/-!
# A215125: E.g.f.: Sum_{n>=0} d^n/dx^n (x + x^2)^(2*n) / (2*n)!.

The programs for A215125, there is no canonical definition to state claims against.
-/

/-! ## A215125.P17439199972395535220

`A358560(2*n)`
-/

namespace A215125.P17439199972395535220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358560 (2 * n)

end

end A215125.P17439199972395535220

/-! ## A215125.P10939372036950212151

`or(1, A358560(A005843(n)))`
-/

namespace A215125.P10939372036950212151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A358560 (A005843 n).toNat)

end

end A215125.P10939372036950212151

/-!
# A215126: E.g.f.: Sum_{n>=0} D^(n*(n-1)/2) (x + x^2)^(n*(n+1)/2) / (n*(n+1)/2)!, where operator D^n = d^n/dx^n.

The programs for A215126, there is no canonical definition to state claims against.
-/

/-! ## A215126.P13204194331966874316

`A296510(A326513(n))`
-/

namespace A215126.P13204194331966874316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 (A326513 n).toNat

end

end A215126.P13204194331966874316

/-! ## A215126.P16153762640425357497

`A296510(A330679(n))`
-/

namespace A215126.P16153762640425357497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 (A330679 n).toNat

end

end A215126.P16153762640425357497

/-!
# A215127: E.g.f.: Sum_{n>=0} D^(n^2-n) (x + x^2)^(n^2) / (n^2)!, where operator D^n = d^n/dx^n.

The programs for A215127, there is no canonical definition to state claims against.
-/

/-! ## A215127.P9856555044822297686

`A147464(3*(n+1))`
-/

namespace A215127.P9856555044822297686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147464 (3 * (n + 1))

end

end A215127.P9856555044822297686

/-!
# A215128: G.f.: Sum_{n>=0} d^n/dx^n (x + x^2)^(2*n) / n!.

The programs for A215128, there is no canonical definition to state claims against.
-/

/-! ## A215128.P6164404837304303086

`(n+1)*A214372(n+1)`
-/

namespace A215128.P6164404837304303086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A214372 (n + 1)

end

end A215128.P6164404837304303086

/-! ## A215128.P7573710627184853971

`A214372(n+1)*A348553(n)`
-/

namespace A215128.P7573710627184853971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214372 (n + 1) * A348553 n

end

end A215128.P7573710627184853971

/-! ## A215128.P2149304756177805201

`record[A102885(n)*A214372(A102885(n))]`
-/

namespace A215128.P2149304756177805201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 n * A214372 (A102885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215128.P2149304756177805201

/-!
# A215131: Primes congruent to {3, 5, 6} mod 13.

The programs for A215131, the canonical program `A215131.P4450346114175798245` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215131 has offset 1).

The definition of A215131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215131.P4450346114175798245

`p?[a(n-3)+13]` with `a(0)=3, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215131

/-- `p?[a(n-3)+13]` -/
def P4450346114175798245.Spec : Prop :=
  ∀ n, (P4450346114175798245.a n : ℤ) = A215131 (n + 1)

theorem P4450346114175798245.correct : P4450346114175798245.Spec := by
  intro n
  simp only [A215131, Nat.add_sub_cancel]

end A215131

/-! ## A215131.P6235350280870167372

`p?[ogf((3x+2x^2+x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A215131.P6235350280870167372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P6235350280870167372

namespace A215131

/-- `p?[ogf((3x+2x^2+x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P6235350280870167372.Spec : Prop :=
  ∀ n, P6235350280870167372.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P14066847709383920927

`p?[A165754(n)+A008587(A004396(n))]`
-/

namespace A215131.P14066847709383920927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n + A008587 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P14066847709383920927

namespace A215131

/-- `p?[A165754(n)+A008587(A004396(n))]` -/
def P14066847709383920927.Spec : Prop :=
  ∀ n, P14066847709383920927.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P76352024543948065

`p?[A187326(A131452(n))+A047364(n+1)]`
-/

namespace A215131.P76352024543948065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A131452 n).toNat + A047364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P76352024543948065

namespace A215131

/-- `p?[A187326(A131452(n))+A047364(n+1)]` -/
def P76352024543948065.Spec : Prop :=
  ∀ n, P76352024543948065.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P3341782628950826737

`p?[A008574(A047458(n+1))-A020742(n)]`
-/

namespace A215131.P3341782628950826737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A047458 (n + 1)).toNat - A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P3341782628950826737

namespace A215131

/-- `p?[A008574(A047458(n+1))-A020742(n)]` -/
def P3341782628950826737.Spec : Prop :=
  ∀ n, P3341782628950826737.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P12481082098566696195

`p?[A301291(A047412(n+1))-A005843(n)]`
-/

namespace A215131.P12481082098566696195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A047412 (n + 1)).toNat - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P12481082098566696195

namespace A215131

/-- `p?[A301291(A047412(n+1))-A005843(n)]` -/
def P12481082098566696195.Spec : Prop :=
  ∀ n, P12481082098566696195.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P12541612110176871023

`p?[A047533(A047533(n+1))+A047221(n+1)]`
-/

namespace A215131.P12541612110176871023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047533 (A047533 (n + 1)).toNat + A047221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P12541612110176871023

namespace A215131

/-- `p?[A047533(A047533(n+1))+A047221(n+1)]` -/
def P12541612110176871023.Spec : Prop :=
  ∀ n, P12541612110176871023.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P3788829239594483790

`p?[A092486(6*n)+n-A004525(n)]`
-/

namespace A215131.P3788829239594483790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (6 * n) + ((n : ℤ) - A004525 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P3788829239594483790

namespace A215131

/-- `p?[A092486(6*n)+n-A004525(n)]` -/
def P3788829239594483790.Spec : Prop :=
  ∀ n, P3788829239594483790.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P800728905862076428

`p?[A047202(n+2)+A004773(A042948(n))]`
-/

namespace A215131.P800728905862076428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 2) + A004773 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P800728905862076428

namespace A215131

/-- `p?[A047202(n+2)+A004773(A042948(n))]` -/
def P800728905862076428.Spec : Prop :=
  ∀ n, P800728905862076428.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P13836314226679532458

`p?[A092038(A047255(n+2))+A047201(2*n+1)]`
-/

namespace A215131.P13836314226679532458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A047255 (n + 2)).toNat + A047201 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P13836314226679532458

namespace A215131

/-- `p?[A092038(A047255(n+2))+A047201(2*n+1)]` -/
def P13836314226679532458.Spec : Prop :=
  ∀ n, P13836314226679532458.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P6795963352179249934

`p?[A314350(n)-2]`
-/

namespace A215131.P6795963352179249934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314350 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P6795963352179249934

namespace A215131

/-- `p?[A314350(n)-2]` -/
def P6795963352179249934.Spec : Prop :=
  ∀ n, P6795963352179249934.a n = A215131 (n + 1)

end A215131

/-! ## A215131.P16129279343591003895

`p?[A004396(A267711(n+1))+n+3]`
-/

namespace A215131.P16129279343591003895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A267711 (n + 1)).toNat + (n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215131.P16129279343591003895

namespace A215131

/-- `p?[A004396(A267711(n+1))+n+3]` -/
def P16129279343591003895.Spec : Prop :=
  ∀ n, P16129279343591003895.a n = A215131 (n + 1)

end A215131

/-!
# A215132: Primes congruent to {3, 5, 6} mod 17.

The programs for A215132, the canonical program `A215132.P5622931679186998133` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215132 has offset 1).

The definition of A215132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215132.P5622931679186998133

`p?[a(n-3)+17]` with `a(0)=3, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215132

/-- `p?[a(n-3)+17]` -/
def P5622931679186998133.Spec : Prop :=
  ∀ n, (P5622931679186998133.a n : ℤ) = A215132 (n + 1)

theorem P5622931679186998133.correct : P5622931679186998133.Spec := by
  intro n
  simp only [A215132, Nat.add_sub_cancel]

end A215132

/-! ## A215132.P5979658825016488280

`∩[A038890(n+1), A215320(n+1)]`
-/

namespace A215132.P5979658825016488280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215132.P5979658825016488280

namespace A215132

/-- `∩[A038890(n+1), A215320(n+1)]` -/
def P5979658825016488280.Spec : Prop :=
  ∀ n, (P5979658825016488280.a n : ℤ) = A215132 (n + 1)

end A215132

/-! ## A215132.P865281559713358073

`∩[A038890(n+1), A215372(n+1)]`
-/

namespace A215132.P865281559713358073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215132.P865281559713358073

namespace A215132

/-- `∩[A038890(n+1), A215372(n+1)]` -/
def P865281559713358073.Spec : Prop :=
  ∀ n, (P865281559713358073.a n : ℤ) = A215132 (n + 1)

end A215132

/-! ## A215132.P16025270348435036410

`p?[A267711(n+1)+A004396(n)+3]`
-/

namespace A215132.P16025270348435036410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1) + A004396 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215132.P16025270348435036410

namespace A215132

/-- `p?[A267711(n+1)+A004396(n)+3]` -/
def P16025270348435036410.Spec : Prop :=
  ∀ n, P16025270348435036410.a n = A215132 (n + 1)

end A215132

/-! ## A215132.P5756030683429361240

`p?[A285870(n)+A005408(A047396(n+1))]`
-/

namespace A215132.P5756030683429361240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 n + A005408 (A047396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215132.P5756030683429361240

namespace A215132

/-- `p?[A285870(n)+A005408(A047396(n+1))]` -/
def P5756030683429361240.Spec : Prop :=
  ∀ n, P5756030683429361240.a n = A215132 (n + 1)

end A215132

/-! ## A215132.P9565348473586583103

`record[A014963(A267711(n+1)+A004396(n)+3)]`
-/

namespace A215132.P9565348473586583103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A267711 (n + 1) + A004396 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215132.P9565348473586583103

namespace A215132

/-- `record[A014963(A267711(n+1)+A004396(n)+3)]` -/
def P9565348473586583103.Spec : Prop :=
  ∀ n, P9565348473586583103.a n = A215132 (n + 1)

end A215132

/-!
# A215133: Primes congruent to {3, 5, 6} mod 19.

The programs for A215133, the canonical program `A215133.P14264698005654940350` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215133 has offset 1).

The definition of A215133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215133.P14264698005654940350

`p?[a(n-3)+19]` with `a(0)=3, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215133

/-- `p?[a(n-3)+19]` -/
def P14264698005654940350.Spec : Prop :=
  ∀ n, (P14264698005654940350.a n : ℤ) = A215133 (n + 1)

theorem P14264698005654940350.correct : P14264698005654940350.Spec := by
  intro n
  simp only [A215133, Nat.add_sub_cancel]

end A215133

/-! ## A215133.P14665492530045478915

`p?[∑[A004458(a(n-2))]]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A215133.P14665492530045478915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f2 =>
  A004458 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215133.P14665492530045478915

namespace A215133

/-- `p?[∑[A004458(a(n-2))]]` -/
def P14665492530045478915.Spec : Prop :=
  ∀ n, P14665492530045478915.a n = A215133 (n + 1)

end A215133

/-!
# A215134: Primes congruent to {1, 2, 3} mod 11.

The programs for A215134, the canonical program `A215134.P14482187140007417676` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215134 has offset 1).

The definition of A215134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215134.P14482187140007417676

`∪[A141849(n+1), A214888(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215134

/-- `∪[A141849(n+1), A214888(n+1)]` -/
def P14482187140007417676.Spec : Prop :=
  ∀ n, (P14482187140007417676.a n : ℤ) = A215134 (n + 1)

theorem P14482187140007417676.correct : P14482187140007417676.Spec := by
  intro n
  simp only [A215134, Nat.add_sub_cancel]

end A215134

/-! ## A215134.P15885987630285043421

`∪[A141850(n+1), A215390(n+1)]`
-/

namespace A215134.P15885987630285043421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P15885987630285043421

namespace A215134

/-- `∪[A141850(n+1), A215390(n+1)]` -/
def P15885987630285043421.Spec : Prop :=
  ∀ n, (P15885987630285043421.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P15757765480865263711

`∪[A214888(n+1), A215390(n+1)]`
-/

namespace A215134.P15757765480865263711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P15757765480865263711

namespace A215134

/-- `∪[A214888(n+1), A215390(n+1)]` -/
def P15757765480865263711.Spec : Prop :=
  ∀ n, (P15757765480865263711.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P4537100676980599054

`A215378(A326178(n+1))`
-/

namespace A215134.P4537100676980599054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (A326178 (n + 1)).toNat

end

end A215134.P4537100676980599054

namespace A215134

/-- `A215378(A326178(n+1))` -/
def P4537100676980599054.Spec : Prop :=
  ∀ n, P4537100676980599054.a n = A215134 (n + 1)

end A215134

/-! ## A215134.P11905831625165433396

`p?[a(n-3)+11]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A215134.P11905831625165433396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215134.P11905831625165433396

namespace A215134

/-- `p?[a(n-3)+11]` -/
def P11905831625165433396.Spec : Prop :=
  ∀ n, (P11905831625165433396.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P6725472326892860582

`p?[ogf((2x-x^2+2x^3+8x^4)/(1-x-x^3+x^4))]`
-/

namespace A215134.P6725472326892860582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 2, 8] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215134.P6725472326892860582

namespace A215134

/-- `p?[ogf((2x-x^2+2x^3+8x^4)/(1-x-x^3+x^4))]` -/
def P6725472326892860582.Spec : Prop :=
  ∀ n, P6725472326892860582.a n = A215134 (n + 1)

end A215134

/-! ## A215134.P21743838371469492

`∩[A215302(n+1), A215378(n+1)]`
-/

namespace A215134.P21743838371469492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P21743838371469492

namespace A215134

/-- `∩[A215302(n+1), A215378(n+1)]` -/
def P21743838371469492.Spec : Prop :=
  ∀ n, (P21743838371469492.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P1180361801210505181

`∩[A215302(n+1), A215306(n+1)]`
-/

namespace A215134.P1180361801210505181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P1180361801210505181

namespace A215134

/-- `∩[A215302(n+1), A215306(n+1)]` -/
def P1180361801210505181.Spec : Prop :=
  ∀ n, (P1180361801210505181.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P1066912012718067297

`∩[A215302(n+1), A215382(n+1)]`
-/

namespace A215134.P1066912012718067297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P1066912012718067297

namespace A215134

/-- `∩[A215302(n+1), A215382(n+1)]` -/
def P1066912012718067297.Spec : Prop :=
  ∀ n, (P1066912012718067297.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P10624275189291780551

`∩[A215306(n+1), A215378(n+1)]`
-/

namespace A215134.P10624275189291780551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P10624275189291780551

namespace A215134

/-- `∩[A215306(n+1), A215378(n+1)]` -/
def P10624275189291780551.Spec : Prop :=
  ∀ n, (P10624275189291780551.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P9828086360677399998

`∩[A215306(n+1), A215382(n+1)]`
-/

namespace A215134.P9828086360677399998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P9828086360677399998

namespace A215134

/-- `∩[A215306(n+1), A215382(n+1)]` -/
def P9828086360677399998.Spec : Prop :=
  ∀ n, (P9828086360677399998.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P7584309358631466161

`∩[A215378(n+1), A215382(n+1)]`
-/

namespace A215134.P7584309358631466161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P7584309358631466161

namespace A215134

/-- `∩[A215378(n+1), A215382(n+1)]` -/
def P7584309358631466161.Spec : Prop :=
  ∀ n, (P7584309358631466161.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P7056324909081918721

`∩[A215306(n+1), A215322(n+1)]`
-/

namespace A215134.P7056324909081918721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P7056324909081918721

namespace A215134

/-- `∩[A215306(n+1), A215322(n+1)]` -/
def P7056324909081918721.Spec : Prop :=
  ∀ n, (P7056324909081918721.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P14917022976603815009

`∩[A215322(n+1), A215378(n+1)]`
-/

namespace A215134.P14917022976603815009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P14917022976603815009

namespace A215134

/-- `∩[A215322(n+1), A215378(n+1)]` -/
def P14917022976603815009.Spec : Prop :=
  ∀ n, (P14917022976603815009.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P4339231485642282938

`∩[A215302(n+1), A215318(n+1)]`
-/

namespace A215134.P4339231485642282938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P4339231485642282938

namespace A215134

/-- `∩[A215302(n+1), A215318(n+1)]` -/
def P4339231485642282938.Spec : Prop :=
  ∀ n, (P4339231485642282938.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P10530605578429816023

`∩[A215318(n+1), A215378(n+1)]`
-/

namespace A215134.P10530605578429816023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P10530605578429816023

namespace A215134

/-- `∩[A215318(n+1), A215378(n+1)]` -/
def P10530605578429816023.Spec : Prop :=
  ∀ n, (P10530605578429816023.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P8621069475469764100

`∩[A215310(n+1), A215378(n+1)]`
-/

namespace A215134.P8621069475469764100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P8621069475469764100

namespace A215134

/-- `∩[A215310(n+1), A215378(n+1)]` -/
def P8621069475469764100.Spec : Prop :=
  ∀ n, (P8621069475469764100.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P4962770188537285717

`∩[A215310(n+1), A215382(n+1)]`
-/

namespace A215134.P4962770188537285717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P4962770188537285717

namespace A215134

/-- `∩[A215310(n+1), A215382(n+1)]` -/
def P4962770188537285717.Spec : Prop :=
  ∀ n, (P4962770188537285717.a n : ℤ) = A215134 (n + 1)

end A215134

/-! ## A215134.P11851429989712105621

`p?[9*A004524(n)+n+1]`
-/

namespace A215134.P11851429989712105621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A004524 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215134.P11851429989712105621

namespace A215134

/-- `p?[9*A004524(n)+n+1]` -/
def P11851429989712105621.Spec : Prop :=
  ∀ n, P11851429989712105621.a n = A215134 (n + 1)

end A215134

/-! ## A215134.P8417341833355416710

`p?[∑[dr((1-n)^6)]]`
-/

namespace A215134.P8417341833355416710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((1 - (n : ℤ)) ^ 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215134.P8417341833355416710

namespace A215134

/-- `p?[∑[dr((1-n)^6)]]` -/
def P8417341833355416710.Spec : Prop :=
  ∀ n, (P8417341833355416710.a n : ℤ) = A215134 (n + 1)

end A215134

/-!
# A215135: Primes congruent to {1, 2, 3} mod 13.

The programs for A215135, the canonical program `A215135.P664234046293665165` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215135 has offset 1).

The definition of A215135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215135.P664234046293665165

`∪[A100202(n+1), A215391(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215135

/-- `∪[A100202(n+1), A215391(n+1)]` -/
def P664234046293665165.Spec : Prop :=
  ∀ n, (P664234046293665165.a n : ℤ) = A215135 (n + 1)

theorem P664234046293665165.correct : P664234046293665165.Spec := by
  intro n
  simp only [A215135, Nat.add_sub_cancel]

end A215135

/-! ## A215135.P6536935021366246666

`∪[A214889(n+1), A215391(n+1)]`
-/

namespace A215135.P6536935021366246666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P6536935021366246666

namespace A215135

/-- `∪[A214889(n+1), A215391(n+1)]` -/
def P6536935021366246666.Spec : Prop :=
  ∀ n, (P6536935021366246666.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P8139575457128245370

`∪[A214889(n+1), A268753(n+1)]`
-/

namespace A215135.P8139575457128245370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P8139575457128245370

namespace A215135

/-- `∪[A214889(n+1), A268753(n+1)]` -/
def P8139575457128245370.Spec : Prop :=
  ∀ n, (P8139575457128245370.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P18107125425818698813

`A215379(A326178(n+1))`
-/

namespace A215135.P18107125425818698813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (A326178 (n + 1)).toNat

end

end A215135.P18107125425818698813

namespace A215135

/-- `A215379(A326178(n+1))` -/
def P18107125425818698813.Spec : Prop :=
  ∀ n, P18107125425818698813.a n = A215135 (n + 1)

end A215135

/-! ## A215135.P7403902650444384615

`A215379(A184985(n+1)+1)`
-/

namespace A215135.P7403902650444384615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (A184985 (n + 1) + 1).toNat

end

end A215135.P7403902650444384615

namespace A215135

/-- `A215379(A184985(n+1)+1)` -/
def P7403902650444384615.Spec : Prop :=
  ∀ n, P7403902650444384615.a n = A215135 (n + 1)

end A215135

/-! ## A215135.P17670308722914604674

`A215379(A000007(n)+2*n-A289207(n))`
-/

namespace A215135.P17670308722914604674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (A000007 n + (2 * n : ℤ) - A289207 n).toNat

end

end A215135.P17670308722914604674

namespace A215135

/-- `A215379(A000007(n)+2*n-A289207(n))` -/
def P17670308722914604674.Spec : Prop :=
  ∀ n, P17670308722914604674.a n = A215135 (n + 1)

end A215135

/-! ## A215135.P13315419674519088669

`p?[a(n-3)+13]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A215135.P13315419674519088669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215135.P13315419674519088669

namespace A215135

/-- `p?[a(n-3)+13]` -/
def P13315419674519088669.Spec : Prop :=
  ∀ n, (P13315419674519088669.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P8843272195751601067

`p?[10*floor(n/3)+n+1]`
-/

namespace A215135.P8843272195751601067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(n : ℚ) / 3⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215135.P8843272195751601067

namespace A215135

/-- `p?[10*floor(n/3)+n+1]` -/
def P8843272195751601067.Spec : Prop :=
  ∀ n, P8843272195751601067.a n = A215135 (n + 1)

end A215135

/-! ## A215135.P6549884006309581675

`∩[A215307(n+1), A215379(n+1)]`
-/

namespace A215135.P6549884006309581675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P6549884006309581675

namespace A215135

/-- `∩[A215307(n+1), A215379(n+1)]` -/
def P6549884006309581675.Spec : Prop :=
  ∀ n, (P6549884006309581675.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P11977211933261397151

`∩[A215303(n+1), A215307(n+1)]`
-/

namespace A215135.P11977211933261397151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P11977211933261397151

namespace A215135

/-- `∩[A215303(n+1), A215307(n+1)]` -/
def P11977211933261397151.Spec : Prop :=
  ∀ n, (P11977211933261397151.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P4424118407021491677

`∩[A215303(n+1), A215379(n+1)]`
-/

namespace A215135.P4424118407021491677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P4424118407021491677

namespace A215135

/-- `∩[A215303(n+1), A215379(n+1)]` -/
def P4424118407021491677.Spec : Prop :=
  ∀ n, (P4424118407021491677.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P2705884890984894765

`∩[A215303(n+1), A215383(n+1)]`
-/

namespace A215135.P2705884890984894765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P2705884890984894765

namespace A215135

/-- `∩[A215303(n+1), A215383(n+1)]` -/
def P2705884890984894765.Spec : Prop :=
  ∀ n, (P2705884890984894765.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P16553360444632305647

`∩[A215307(n+1), A215383(n+1)]`
-/

namespace A215135.P16553360444632305647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P16553360444632305647

namespace A215135

/-- `∩[A215307(n+1), A215383(n+1)]` -/
def P16553360444632305647.Spec : Prop :=
  ∀ n, (P16553360444632305647.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P11263397249669320606

`∩[A215379(n+1), A215383(n+1)]`
-/

namespace A215135.P11263397249669320606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P11263397249669320606

namespace A215135

/-- `∩[A215379(n+1), A215383(n+1)]` -/
def P11263397249669320606.Spec : Prop :=
  ∀ n, (P11263397249669320606.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P2472090635017719048

`∩[A215311(n+1), A215379(n+1)]`
-/

namespace A215135.P2472090635017719048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P2472090635017719048

namespace A215135

/-- `∩[A215311(n+1), A215379(n+1)]` -/
def P2472090635017719048.Spec : Prop :=
  ∀ n, (P2472090635017719048.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P303212467701378326

`∩[A215311(n+1), A215383(n+1)]`
-/

namespace A215135.P303212467701378326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P303212467701378326

namespace A215135

/-- `∩[A215311(n+1), A215383(n+1)]` -/
def P303212467701378326.Spec : Prop :=
  ∀ n, (P303212467701378326.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P4020845166249377372

`∩[A215307(n+1), A215323(n+1)]`
-/

namespace A215135.P4020845166249377372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P4020845166249377372

namespace A215135

/-- `∩[A215307(n+1), A215323(n+1)]` -/
def P4020845166249377372.Spec : Prop :=
  ∀ n, (P4020845166249377372.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P12815370133999215811

`∩[A215323(n+1), A215379(n+1)]`
-/

namespace A215135.P12815370133999215811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P12815370133999215811

namespace A215135

/-- `∩[A215323(n+1), A215379(n+1)]` -/
def P12815370133999215811.Spec : Prop :=
  ∀ n, (P12815370133999215811.a n : ℤ) = A215135 (n + 1)

end A215135

/-! ## A215135.P2132941147977473771

`∩[A215303(n+1), A215319(n+1)]`
-/

namespace A215135.P2132941147977473771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P2132941147977473771

namespace A215135

/-- `∩[A215303(n+1), A215319(n+1)]` -/
def P2132941147977473771.Spec : Prop :=
  ∀ n, (P2132941147977473771.a n : ℤ) = A215135 (n + 1)

end A215135

/-!
# A215136: Start with n, iterate the process x -> x*3-1 until reaching a prime; then a(n) is the number of iterations required, or 0 if no prime is ever reached.

The programs for A215136, there is no canonical definition to state claims against.
-/

/-! ## A215136.P8049702486455134955

`gcd(2-n, A001227(A299282(n)))`
-/

namespace A215136.P8049702486455134955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (n : ℤ)) (A001227 (A299282 n).toNat)

end

end A215136.P8049702486455134955

/-! ## A215136.P17377487207991479484

`gcd(A001227(A299282(n)), A023444(n))`
-/

namespace A215136.P17377487207991479484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (A299282 n).toNat) (A023444 n)

end

end A215136.P17377487207991479484

/-! ## A215136.P8301622468382235720

`gcd(n-2, A046523(A223126(n+1)))`
-/

namespace A215136.P8301622468382235720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A046523 (A223126 (n + 1)).toNat)

end

end A215136.P8301622468382235720

/-! ## A215136.P1641029413310443777

`gcd(n-2, A001223(A026553(n)))`
-/

namespace A215136.P1641029413310443777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A001223 (A026553 n).toNat)

end

end A215136.P1641029413310443777

/-! ## A215136.P10361673550160820290

`A187829(A372835(n+4)^A279387(3*n+1))`
-/

namespace A215136.P10361673550160820290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (SequenceMachineLib.roundAway ((A372835 (n + 4) : ℚ) ^ (A279387 (3 * n + 1) : ℤ))).toNat

end

end A215136.P10361673550160820290

/-!
# A215137: a(n) = 17*n + 1.

The programs for A215137, the canonical program `A215137.P16345260773211617231` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215137 has offset 0).

The definition of A215137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*n+1` (program `A215137.P16345260773211617231`, by `A215137.P16345260773211617231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215137.P16345260773211617231

`17*n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215137

/-- `17*n+1` -/
def P16345260773211617231.Spec : Prop :=
  ∀ n, (P16345260773211617231.a n : ℤ) = A215137 n

theorem P16345260773211617231.correct : P16345260773211617231.Spec := by
  intro n
  simp only [A215137]

end A215137

/-!
# A215138: Numbers k such that k > d(k)^2/2 where d = A000005.

The programs for A215138, there is no canonical definition to state claims against.
-/

/-! ## A215138.P6769138379151354432

`lt[A005245(A033630(n)), A391075(n)]`
-/

namespace A215138.P6769138379151354432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215138.P6769138379151354432

/-!
# A215139: a(n) = (a(n-1) - a(n-3))*7^((1+(-1)^n)/2) with a(6)=5, a(7)=4, a(8)=22.

The programs for A215139, the canonical program `A215139.P18098558632081511994` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215139 has offset 6).

The definition of A215139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215139.P18098558632081511994

`(a(n-1)-a(n-3))*7^((1+(-1)^n)/2)` with `a(0)=5, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215139

/-- `(a(n-1)-a(n-3))*7^((1+(-1)^n)/2)` -/
def P18098558632081511994.Spec : Prop :=
  ∀ n, P18098558632081511994.a n = (A215139 (n + 6) : ℝ)

end A215139

/-! ## A215139.P15736146862838915886

`(a(n-1)-a(n-3))*7^((1+(-1)^(n+6))/2)` with `a(0)=5, a(1)=4, a(2)=22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215139.P15736146862838915886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 4, 22] fun n a =>
  (a (n - 1) - a (n - 3)) * (7 : ℝ) ^ ((1 + (-1) ^ (n + 6) : ℚ) / 2 : ℝ)

end

end A215139.P15736146862838915886

namespace A215139

/-- `(a(n-1)-a(n-3))*7^((1+(-1)^(n+6))/2)` -/
def P15736146862838915886.Spec : Prop :=
  ∀ n, P15736146862838915886.a n = (A215139 (n + 6) : ℝ)

end A215139

/-!
# A215142: Numbers k such that the difference between the greatest prime divisor of k and the sum of the other distinct prime divisors equals 1.

The programs for A215142, there is no canonical definition to state claims against.
-/

/-! ## A215142.P6781539609558201307

`A244193(A332111(n+1)+A244173(n+1))`
-/

namespace A215142.P6781539609558201307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (A332111 (n + 1) + A244173 (n + 1 + 10)).toNat

end

end A215142.P6781539609558201307

/-! ## A215142.P3947338153742247095

`A244193(or(A244172(n+9), A332111(n+1)))`
-/

namespace A215142.P3947338153742247095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (Int.lor (A244172 (n + 9)) (A332111 (n + 1))).toNat

end

end A215142.P3947338153742247095

/-! ## A215142.P17563497805860263045

`∩[A097755(n+1), A114989(n+1)]`
-/

namespace A215142.P17563497805860263045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215142.P17563497805860263045

/-! ## A215142.P1704563984642672759

`A244193(eq[2*A244173(n), A249832(n)])`
-/

namespace A215142.P1704563984642672759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244173 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215142.P1704563984642672759

/-! ## A215142.P9614535511246861666

`A244193(eq[A244173(n)/2, A249832(n)])`
-/

namespace A215142.P9614535511246861666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244173 (n + 10) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244193 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A215142.P9614535511246861666

/-!
# A215143: a(n) = 7*a(n-1) -14*a(n-2) +7*a(n-3), with a(0)=1, a(1)=2, a(2)=7.

The programs for A215143, the canonical program `A215143.P6465041324424134257` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215143 has offset 0).

The definition of A215143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215143.P6465041324424134257`, by `A215143.P6465041324424134257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215143.P6465041324424134257

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215143

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P6465041324424134257.Spec : Prop :=
  ∀ n, P6465041324424134257.a n = A215143 n

theorem P6465041324424134257.correct : P6465041324424134257.Spec := by
  intro n
  simp only [A215143]

end A215143

/-! ## A215143.P4005951645448960715

`∑[A215008(n)]+1`
-/

namespace A215143.P4005951645448960715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A215143.P4005951645448960715

namespace A215143

/-- `∑[A215008(n)]+1` -/
def P4005951645448960715.Spec : Prop :=
  ∀ n, P4005951645448960715.a n = A215143 n

end A215143

/-! ## A215143.P3436153762885980861

`A215008(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A215143.P3436153762885980861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215008 (n % (n + 1)) + a (n - 1)

end

end A215143.P3436153762885980861

namespace A215143

/-- `A215008(n%(n+1))+a(n-1)` -/
def P3436153762885980861.Spec : Prop :=
  ∀ n, P3436153762885980861.a n = A215143 n

end A215143

/-! ## A215143.P5614298115663725670

`A215008(C(n, n-1))+a(n-1)` with `a(0)=1`
-/

namespace A215143.P5614298115663725670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215008 (Nat.choose n ((n : ℤ) - 1).toNat) + a (n - 1)

end

end A215143.P5614298115663725670

namespace A215143

/-- `A215008(C(n, n-1))+a(n-1)` -/
def P5614298115663725670.Spec : Prop :=
  ∀ n, P5614298115663725670.a n = A215143 n

end A215143

/-! ## A215143.P2665768398711979771

`∑[A215008(A028310(n))]`
-/

namespace A215143.P2665768398711979771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215143.P2665768398711979771

namespace A215143

/-- `∑[A215008(A028310(n))]` -/
def P2665768398711979771.Spec : Prop :=
  ∀ n, P2665768398711979771.a n = A215143 n

end A215143

/-! ## A215143.P13288294039615040871

`A319512(n)-A215493(n)`
-/

namespace A215143.P13288294039615040871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 n - A215493 n

end

end A215143.P13288294039615040871

namespace A215143

/-- `A319512(n)-A215493(n)` -/
def P13288294039615040871.Spec : Prop :=
  ∀ n, P13288294039615040871.a n = A215143 n

end A215143

/-! ## A215143.P4075452463012171309

`∑[A215008(or(n, A000007(n)))]`
-/

namespace A215143.P4075452463012171309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215143.P4075452463012171309

namespace A215143

/-- `∑[A215008(or(n, A000007(n)))]` -/
def P4075452463012171309.Spec : Prop :=
  ∀ n, P4075452463012171309.a n = A215143 n

end A215143

/-! ## A215143.P12661822114918389790

`∑[A215008(xor(n, A000007(n)))]`
-/

namespace A215143.P12661822114918389790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215143.P12661822114918389790

namespace A215143

/-- `∑[A215008(xor(n, A000007(n)))]` -/
def P12661822114918389790.Spec : Prop :=
  ∀ n, P12661822114918389790.a n = A215143 n

end A215143

/-! ## A215143.P5813715305611906592

`Δ[A215008(n)]-(A215493(n)+A215008(n))`
-/

namespace A215143.P5813715305611906592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A215493 n + A215008 n)

end

end A215143.P5813715305611906592

namespace A215143

/-- `Δ[A215008(n)]-(A215493(n)+A215008(n))` -/
def P5813715305611906592.Spec : Prop :=
  ∀ n, P5813715305611906592.a n = A215143 n

end A215143

/-! ## A215143.P10072481575403993960

`∑[A215510(n)/7]+1`
-/

namespace A215143.P10072481575403993960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215510 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A215143.P10072481575403993960

namespace A215143

/-- `∑[A215510(n)/7]+1` -/
def P10072481575403993960.Spec : Prop :=
  ∀ n, P10072481575403993960.a n = (A215143 n : ℚ)

end A215143

/-! ## A215143.P8420621930325108253

`A215494(n+1)-Δ[A215007(n+1)]`
-/

namespace A215143.P8420621930325108253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215494 (n + 1) - (f1 (n + 1) - f1 n)

end

end A215143.P8420621930325108253

namespace A215143

/-- `A215494(n+1)-Δ[A215007(n+1)]` -/
def P8420621930325108253.Spec : Prop :=
  ∀ n, P8420621930325108253.a n = A215143 n

end A215143

/-! ## A215143.P7037983410038563260

`Δ[A215493(n+1)]-2*A215493(n+1)`
-/

namespace A215143.P7037983410038563260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A215493 (n + 1)

end

end A215143.P7037983410038563260

namespace A215143

/-- `Δ[A215493(n+1)]-2*A215493(n+1)` -/
def P7037983410038563260.Spec : Prop :=
  ∀ n, P7037983410038563260.a n = A215143 n

end A215143

/-! ## A215143.P18230020325325196691

`A215494(n+1)-(A215007(n+1)+A122068(n+2))`
-/

namespace A215143.P18230020325325196691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215494 (n + 1) - (A215007 (n + 1) + A122068 (n + 2))

end

end A215143.P18230020325325196691

namespace A215143

/-- `A215494(n+1)-(A215007(n+1)+A122068(n+2))` -/
def P18230020325325196691.Spec : Prop :=
  ∀ n, P18230020325325196691.a n = A215143 n

end A215143

/-!
# A215144: a(n) = 19*n + 1.

The programs for A215144, the canonical program `A215144.P14003921798403721273` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215144 has offset 0).

The definition of A215144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n+1` (program `A215144.P14003921798403721273`, by `A215144.P14003921798403721273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215144.P14003921798403721273

`19*n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215144

/-- `19*n+1` -/
def P14003921798403721273.Spec : Prop :=
  ∀ n, (P14003921798403721273.a n : ℤ) = A215144 n

theorem P14003921798403721273.correct : P14003921798403721273.Spec := by
  intro n
  simp only [A215144]

end A215144

/-!
# A215145: a(n) = 20*n + 1.

The programs for A215145, the canonical program `A215145.P202274833192986980` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215145 has offset 0).

The definition of A215145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*n+1` (program `A215145.P202274833192986980`, by `A215145.P202274833192986980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215145.P202274833192986980

`20*n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215145

/-- `20*n+1` -/
def P202274833192986980.Spec : Prop :=
  ∀ n, (P202274833192986980.a n : ℤ) = A215145 n

theorem P202274833192986980.correct : P202274833192986980.Spec := by
  intro n
  simp only [A215145]

end A215145

/-!
# A215146: a(n) = 21*n + 1.

The programs for A215146, the canonical program `A215146.P15413588575788200673` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215146 has offset 0).

The definition of A215146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*n+1` (program `A215146.P15413588575788200673`, by `A215146.P15413588575788200673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215146.P15413588575788200673

`21*n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215146

/-- `21*n+1` -/
def P15413588575788200673.Spec : Prop :=
  ∀ n, (P15413588575788200673.a n : ℤ) = A215146 n

theorem P15413588575788200673.correct : P15413588575788200673.Spec := by
  intro n
  simp only [A215146]

end A215146

/-!
# A215147: For n odd, a(n) = 1^2+2^2+3^2+...+n^2; for n even, a(n) = (1^2+2^2+3^2+...+n^2)+1.

The programs for A215147, the canonical program `A215147.P17152090832578340862` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215147 has offset 1).

The definition of A215147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215147.P17152090832578340862

`a(n-2)+∑[∑[(-1)^n]]²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215147

/-- `a(n-2)+∑[∑[(-1)^n]]²` -/
def P17152090832578340862.Spec : Prop :=
  ∀ n, P17152090832578340862.a n = A215147 (n + 1)

theorem P17152090832578340862.correct : P17152090832578340862.Spec := by
  intro n
  simp only [A215147, Nat.add_sub_cancel]

end A215147

/-! ## A215147.P17422410197338772914

`∑[A027656(n)²]+and(1, n)`
-/

namespace A215147.P17422410197338772914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A215147.P17422410197338772914

namespace A215147

/-- `∑[A027656(n)²]+and(1, n)` -/
def P17422410197338772914.Spec : Prop :=
  ∀ n, P17422410197338772914.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P5348726101851858002

`A101986(floor(n/2))+n+1`
-/

namespace A215147.P5348726101851858002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 ⌊(n : ℚ) / 2⌋.toNat + (n + 1 : ℤ)

end

end A215147.P5348726101851858002

namespace A215147

/-- `A101986(floor(n/2))+n+1` -/
def P5348726101851858002.Spec : Prop :=
  ∀ n, P5348726101851858002.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P5297030473386947913

`∑[gcd(n%2, A035106(n+1))]`
-/

namespace A215147.P5297030473386947913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A035106 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215147.P5297030473386947913

namespace A215147

/-- `∑[gcd(n%2, A035106(n+1))]` -/
def P5297030473386947913.Spec : Prop :=
  ∀ n, (P5297030473386947913.a n : ℤ) = A215147 (n + 1)

end A215147

/-! ## A215147.P13863078700797291317

`A005993(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A215147.P13863078700797291317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005993 n + (1 - a (n - 1))

end

end A215147.P13863078700797291317

namespace A215147

/-- `A005993(n)+1-a(n-1)` -/
def P13863078700797291317.Spec : Prop :=
  ∀ n, P13863078700797291317.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P14632577419430223446

`A109622(n)+1+n-a(n-1)` with `a(0)=1`
-/

namespace A215147.P14632577419430223446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109622 n + 1 + (n : ℤ) - a (n - 1)

end

end A215147.P14632577419430223446

namespace A215147

/-- `A109622(n)+1+n-a(n-1)` -/
def P14632577419430223446.Spec : Prop :=
  ∀ n, P14632577419430223446.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P1322270968352250884

`∑[A035106(A093178(n+1))]`
-/

namespace A215147.P1322270968352250884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A093178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215147.P1322270968352250884

namespace A215147

/-- `∑[A035106(A093178(n+1))]` -/
def P1322270968352250884.Spec : Prop :=
  ∀ n, P1322270968352250884.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P6541337728915496147

`A000330(A008619(n))+n%2`
-/

namespace A215147.P6541337728915496147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A215147.P6541337728915496147

namespace A215147

/-- `A000330(A008619(n))+n%2` -/
def P6541337728915496147.Spec : Prop :=
  ∀ n, P6541337728915496147.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P18038334104018325334

`A006918(or(1, n))+A000035(n)`
-/

namespace A215147.P18038334104018325334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (Nat.lor 1 n) + A000035 n

end

end A215147.P18038334104018325334

namespace A215147

/-- `A006918(or(1, n))+A000035(n)` -/
def P18038334104018325334.Spec : Prop :=
  ∀ n, P18038334104018325334.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P3459253535980174971

`A000035(n)+∑[A027656(n)²]`
-/

namespace A215147.P3459253535980174971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215147.P3459253535980174971

namespace A215147

/-- `A000035(n)+∑[A027656(n)²]` -/
def P3459253535980174971.Spec : Prop :=
  ∀ n, P3459253535980174971.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P1050449970478560856

`∪[A000330(n+1)+1, A000330(n+1)]`
-/

namespace A215147.P1050449970478560856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215147.P1050449970478560856

namespace A215147

/-- `∪[A000330(n+1)+1, A000330(n+1)]` -/
def P1050449970478560856.Spec : Prop :=
  ∀ n, (P1050449970478560856.a n : ℤ) = A215147 (n + 1)

end A215147

/-! ## A215147.P13959209994057175565

`∪[A056520(n+1)-1, A056520(n+1)]`
-/

namespace A215147.P13959209994057175565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215147.P13959209994057175565

namespace A215147

/-- `∪[A056520(n+1)-1, A056520(n+1)]` -/
def P13959209994057175565.Spec : Prop :=
  ∀ n, (P13959209994057175565.a n : ℤ) = A215147 (n + 1)

end A215147

/-! ## A215147.P11289012616327373883

`A000330(A008619(n))+A000035(n)`
-/

namespace A215147.P11289012616327373883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A008619 n).toNat + A000035 n

end

end A215147.P11289012616327373883

namespace A215147

/-- `A000330(A008619(n))+A000035(n)` -/
def P11289012616327373883.Spec : Prop :=
  ∀ n, P11289012616327373883.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P5997887301325133308

`∑[A035106(A109613(A193356(n+1)))]`
-/

namespace A215147.P5997887301325133308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A109613 (A193356 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215147.P5997887301325133308

namespace A215147

/-- `∑[A035106(A109613(A193356(n+1)))]` -/
def P5997887301325133308.Spec : Prop :=
  ∀ n, P5997887301325133308.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P13808690853124923268

`A000330(A004526(n)+1)+A000035(n)`
-/

namespace A215147.P13808690853124923268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A004526 n + 1).toNat + A000035 n

end

end A215147.P13808690853124923268

namespace A215147

/-- `A000330(A004526(n)+1)+A000035(n)` -/
def P13808690853124923268.Spec : Prop :=
  ∀ n, P13808690853124923268.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P10517264311931135106

`A047732(A004526(n))+A004526(n+1)`
-/

namespace A215147.P10517264311931135106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 (A004526 n).toNat + A004526 (n + 1)

end

end A215147.P10517264311931135106

namespace A215147

/-- `A047732(A004526(n))+A004526(n+1)` -/
def P10517264311931135106.Spec : Prop :=
  ∀ n, P10517264311931135106.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P11245863375115111440

`∑[A152271(n+1)²]-A002265(2*n)`
-/

namespace A215147.P11245863375115111440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002265 (2 * n)

end

end A215147.P11245863375115111440

namespace A215147

/-- `∑[A152271(n+1)²]-A002265(2*n)` -/
def P11245863375115111440.Spec : Prop :=
  ∀ n, P11245863375115111440.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P4419393857934681522

`A368045(A134519(n+1))`
-/

namespace A215147.P4419393857934681522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368045 (A134519 (n + 1)).toNat

end

end A215147.P4419393857934681522

namespace A215147

/-- `A368045(A134519(n+1))` -/
def P4419393857934681522.Spec : Prop :=
  ∀ n, P4419393857934681522.a n = A215147 (n + 1)

end A215147

/-! ## A215147.P17811943624106313579

`A347912(A363283(n+1))`
-/

namespace A215147.P17811943624106313579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347912 (A363283 (n + 1)).toNat

end

end A215147.P17811943624106313579

namespace A215147

/-- `A347912(A363283(n+1))` -/
def P17811943624106313579.Spec : Prop :=
  ∀ n, P17811943624106313579.a n = A215147 (n + 1)

end A215147

/-!
# A215148: a(n) = 23*n + 1.

The programs for A215148, the canonical program `A215148.P1570187051508562333` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215148 has offset 0).

The definition of A215148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*n+1` (program `A215148.P1570187051508562333`, by `A215148.P1570187051508562333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215148.P1570187051508562333

`23*n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215148

/-- `23*n+1` -/
def P1570187051508562333.Spec : Prop :=
  ∀ n, (P1570187051508562333.a n : ℤ) = A215148 n

theorem P1570187051508562333.correct : P1570187051508562333.Spec := by
  intro n
  simp only [A215148]

end A215148

/-!
# A215149: a(n) = n * (1 + 2^(n-1)).

The programs for A215149, the canonical program `A215149.P15528705439726047027` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215149 has offset 0).

The definition of A215149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215149.P15528705439726047027

`n*(1+2^(n-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215149

/-- `n*(1+2^(n-1))` -/
def P15528705439726047027.Spec : Prop :=
  ∀ n, P15528705439726047027.a n = (A215149 n : ℚ)

end A215149

/-! ## A215149.P14313449743898400969

`(A157809(n)-A164555(n))/A027642(n)`
-/

namespace A215149.P14313449743898400969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157809 n - A164555 n : ℚ) / (A027642 n : ℚ)

end

end A215149.P14313449743898400969

namespace A215149

/-- `(A157809(n)-A164555(n))/A027642(n)` -/
def P14313449743898400969.Spec : Prop :=
  ∀ n, P14313449743898400969.a n = (A215149 n : ℚ)

end A215149

/-! ## A215149.P9298322989949774376

`floor(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A215149.P9298322989949774376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215149.P9298322989949774376

namespace A215149

/-- `floor(n*∑[2*a(n-1)])` -/
def P9298322989949774376.Spec : Prop :=
  ∀ n, (P9298322989949774376.a n : ℤ) = A215149 n

end A215149

/-! ## A215149.P16262534502857546923

`n*Δ[2*a(n-1)]+n` with `a(0)=1, a(1)=1`
-/

namespace A215149.P16262534502857546923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A215149.P16262534502857546923

namespace A215149

/-- `n*Δ[2*a(n-1)]+n` -/
def P16262534502857546923.Spec : Prop :=
  ∀ n, P16262534502857546923.a n = A215149 n

end A215149

/-! ## A215149.P11895391489628387614

`∑[ogf((1-3x+3x^2)/(1-4x+4x^2))]-1+n`
-/

namespace A215149.P11895391489628387614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A215149.P11895391489628387614

namespace A215149

/-- `∑[ogf((1-3x+3x^2)/(1-4x+4x^2))]-1+n` -/
def P11895391489628387614.Spec : Prop :=
  ∀ n, P11895391489628387614.a n = A215149 n

end A215149

/-! ## A215149.P12191155348365495661

`n-(1-∑[ogf((1-3x+3x^2)/(1-4x+4x^2))])`
-/

namespace A215149.P12191155348365495661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215149.P12191155348365495661

namespace A215149

/-- `n-(1-∑[ogf((1-3x+3x^2)/(1-4x+4x^2))])` -/
def P12191155348365495661.Spec : Prop :=
  ∀ n, P12191155348365495661.a n = A215149 n

end A215149

/-! ## A215149.P9422055607405215856

`n-n*Δ[2*(a(n-1)-3)]` with `a(0)=1, a(1)=5`
-/

namespace A215149.P9422055607405215856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A215149.P9422055607405215856

namespace A215149

/-- `n-n*Δ[2*(a(n-1)-3)]` -/
def P9422055607405215856.Spec : Prop :=
  ∀ n, P9422055607405215856.a n = A215149 n

end A215149

/-! ## A215149.P8914273683283978444

`2*n*a(n-1)/(n-1)-n` with `a(0)=0, a(1)=2`
-/

namespace A215149.P8914273683283978444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 * n : ℚ) * (a (n - 1) / ((n : ℤ) - 1 : ℚ)) - (n : ℚ)

end

end A215149.P8914273683283978444

namespace A215149

/-- `2*n*a(n-1)/(n-1)-n` -/
def P8914273683283978444.Spec : Prop :=
  ∀ n, P8914273683283978444.a n = (A215149 n : ℚ)

end A215149

/-! ## A215149.P3779018366996059985

`4*(a(n-1)-(a(n-2)+1))+n` with `a(0)=0, a(1)=2`
-/

namespace A215149.P3779018366996059985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + 1)) + (n : ℤ)

end

end A215149.P3779018366996059985

namespace A215149

/-- `4*(a(n-1)-(a(n-2)+1))+n` -/
def P3779018366996059985.Spec : Prop :=
  ∀ n, P3779018366996059985.a n = A215149 n

end A215149

/-! ## A215149.P495267578617173107

`n-4*(1-(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=2`
-/

namespace A215149.P495267578617173107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n : ℤ) - 4 * (1 - (a (n - 1) - a (n - 2)))

end

end A215149.P495267578617173107

namespace A215149

/-- `n-4*(1-(a(n-1)-a(n-2)))` -/
def P495267578617173107.Spec : Prop :=
  ∀ n, P495267578617173107.a n = A215149 n

end A215149

/-! ## A215149.P7644972861991176559

`n+A001787(n)`
-/

namespace A215149.P7644972861991176559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001787 n

end

end A215149.P7644972861991176559

namespace A215149

/-- `n+A001787(n)` -/
def P7644972861991176559.Spec : Prop :=
  ∀ n, P7644972861991176559.a n = A215149 n

end A215149

/-! ## A215149.P2559409975757514604

`abs(A118442(n))+n`
-/

namespace A215149.P2559409975757514604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118442 n| + (n : ℤ)

end

end A215149.P2559409975757514604

namespace A215149

/-- `abs(A118442(n))+n` -/
def P2559409975757514604.Spec : Prop :=
  ∀ n, P2559409975757514604.a n = A215149 n

end A215149

/-! ## A215149.P10800760769158094159

`abs(n*A248155(n))`
-/

namespace A215149.P10800760769158094159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A248155 n|

end

end A215149.P10800760769158094159

namespace A215149

/-- `abs(n*A248155(n))` -/
def P10800760769158094159.Spec : Prop :=
  ∀ n, P10800760769158094159.a n = A215149 n

end A215149

/-! ## A215149.P8482191469156020363

`A188626(n+1)-1`
-/

namespace A215149.P8482191469156020363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188626 (n + 1) - 1

end

end A215149.P8482191469156020363

namespace A215149

/-- `A188626(n+1)-1` -/
def P8482191469156020363.Spec : Prop :=
  ∀ n, P8482191469156020363.a n = A215149 n

end A215149

/-! ## A215149.P11297991756911768208

`A154222(n+1)-2`
-/

namespace A215149.P11297991756911768208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 (n + 1) - 2

end

end A215149.P11297991756911768208

namespace A215149

/-- `A154222(n+1)-2` -/
def P11297991756911768208.Spec : Prop :=
  ∀ n, P11297991756911768208.a n = A215149 n

end A215149

/-! ## A215149.P14951524421755231393

`A097067(n+1)+n`
-/

namespace A215149.P14951524421755231393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1) + (n : ℤ)

end

end A215149.P14951524421755231393

namespace A215149

/-- `A097067(n+1)+n` -/
def P14951524421755231393.Spec : Prop :=
  ∀ n, P14951524421755231393.a n = A215149 n

end A215149

/-! ## A215149.P5506475620723687422

`A139756(n+1)+n`
-/

namespace A215149.P5506475620723687422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + (n : ℤ)

end

end A215149.P5506475620723687422

namespace A215149

/-- `A139756(n+1)+n` -/
def P5506475620723687422.Spec : Prop :=
  ∀ n, P5506475620723687422.a n = A215149 n

end A215149

/-! ## A215149.P10693161349680919648

`A005183(n)-1+n`
-/

namespace A215149.P10693161349680919648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - 1 + (n : ℤ)

end

end A215149.P10693161349680919648

namespace A215149

/-- `A005183(n)-1+n` -/
def P10693161349680919648.Spec : Prop :=
  ∀ n, P10693161349680919648.a n = A215149 n

end A215149

/-! ## A215149.P10230411363856886344

`n*A011782(n)+n`
-/

namespace A215149.P10230411363856886344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n + (n : ℤ)

end

end A215149.P10230411363856886344

namespace A215149

/-- `n*A011782(n)+n` -/
def P10230411363856886344.Spec : Prop :=
  ∀ n, P10230411363856886344.a n = A215149 n

end A215149

/-! ## A215149.P6682868380780411962

`n*A131577(n)+n`
-/

namespace A215149.P6682868380780411962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 n + (n : ℤ)

end

end A215149.P6682868380780411962

namespace A215149

/-- `n*A131577(n)+n` -/
def P6682868380780411962.Spec : Prop :=
  ∀ n, P6682868380780411962.a n = A215149 n

end A215149

/-!
# A215151: a(1) = 1; thereafter a(n+1) = 0 if bigomega(n) = bigomega(2^a(n)+n), otherwise a(n+1) = a(n)+1.

The programs for A215151, there is no canonical definition to state claims against.
-/

/-! ## A215151.P4645221059183305403

`(n+1)%A106591(A187829(n+1))`
-/

namespace A215151.P4645221059183305403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A106591 (A187829 (n + 1)).toNat)

end

end A215151.P4645221059183305403

/-! ## A215151.P640602667989467572

`((n+7)%6)%A153727(A214826(n))`
-/

namespace A215151.P640602667989467572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 7) % 6 : ℕ) : ℤ) (A153727 (A214826 n).toNat)

end

end A215151.P640602667989467572

/-! ## A215151.P14932266137363352798

`A118310(n+1)%A033307(A132109(n))`
-/

namespace A215151.P14932266137363352798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118310 (n + 1)) (A033307 (A132109 n).toNat)

end

end A215151.P14932266137363352798

/-! ## A215151.P13861146711992390597

`A072374(n+1)%A136626(A152400(n))`
-/

namespace A215151.P13861146711992390597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072374 (n + 1)) (A136626 (A152400 n).toNat)

end

end A215151.P13861146711992390597

/-! ## A215151.P4899983032919166513

`val(A187348(A000079(n)), 2)`
-/

namespace A215151.P4899983032919166513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187348 (A000079 n).toNat).toNat 2

end

end A215151.P4899983032919166513

/-!
# A215152: Number of sphenic triples up to 10^n.

The programs for A215152, there is no canonical definition to state claims against.
-/

/-! ## A215152.P15689293106706857194

`(A345167(ceil(3^n/2))+1)*C(n+1, 4)`
-/

namespace A215152.P15689293106706857194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345167 ⌈(3 ^ n : ℚ) / 2⌉.toNat + 1) * (Nat.choose (n + 1) 4 : ℤ)

end

end A215152.P15689293106706857194

/-!
# A215153: Primes congruent to {1, 2, 3} mod 17.

The programs for A215153, the canonical program `A215153.P11999709609863500417` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215153 has offset 1).

The definition of A215153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215153.P9701274916391704950

`∪[A092074(n+1), A215392(n+1)]`
-/

namespace A215153.P9701274916391704950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P9701274916391704950

namespace A215153

/-- `∪[A092074(n+1), A215392(n+1)]` -/
def P9701274916391704950.Spec : Prop :=
  ∀ n, (P9701274916391704950.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P11999709609863500417

`∪[A129484(n+1), A214890(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215153

/-- `∪[A129484(n+1), A214890(n+1)]` -/
def P11999709609863500417.Spec : Prop :=
  ∀ n, (P11999709609863500417.a n : ℤ) = A215153 (n + 1)

theorem P11999709609863500417.correct : P11999709609863500417.Spec := by
  intro n
  simp only [A215153, Nat.add_sub_cancel]

end A215153

/-! ## A215153.P18271190667342427307

`∪[A214890(n+1), A215392(n+1)]`
-/

namespace A215153.P18271190667342427307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P18271190667342427307

namespace A215153

/-- `∪[A214890(n+1), A215392(n+1)]` -/
def P18271190667342427307.Spec : Prop :=
  ∀ n, (P18271190667342427307.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P6225615330302315041

`A215380(A326178(n+1))`
-/

namespace A215153.P6225615330302315041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (A326178 (n + 1)).toNat

end

end A215153.P6225615330302315041

namespace A215153

/-- `A215380(A326178(n+1))` -/
def P6225615330302315041.Spec : Prop :=
  ∀ n, P6225615330302315041.a n = A215153 (n + 1)

end A215153

/-! ## A215153.P13794313241304234181

`p?[A215380(n+1)%A152064(n)]`
-/

namespace A215153.P13794313241304234181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215380 (n + 1)) (A152064 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215153.P13794313241304234181

namespace A215153

/-- `p?[A215380(n+1)%A152064(n)]` -/
def P13794313241304234181.Spec : Prop :=
  ∀ n, P13794313241304234181.a n = A215153 (n + 1)

end A215153

/-! ## A215153.P630674817557851836

`p?[a(n-3)+17]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A215153.P630674817557851836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215153.P630674817557851836

namespace A215153

/-- `p?[a(n-3)+17]` -/
def P630674817557851836.Spec : Prop :=
  ∀ n, (P630674817557851836.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P5785367275596235740

`∩[A215308(n+1), A215380(n+1)]`
-/

namespace A215153.P5785367275596235740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P5785367275596235740

namespace A215153

/-- `∩[A215308(n+1), A215380(n+1)]` -/
def P5785367275596235740.Spec : Prop :=
  ∀ n, (P5785367275596235740.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P3020290683832683395

`∩[A215304(n+1), A215308(n+1)]`
-/

namespace A215153.P3020290683832683395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P3020290683832683395

namespace A215153

/-- `∩[A215304(n+1), A215308(n+1)]` -/
def P3020290683832683395.Spec : Prop :=
  ∀ n, (P3020290683832683395.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P8232830669973697054

`∩[A215304(n+1), A215380(n+1)]`
-/

namespace A215153.P8232830669973697054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P8232830669973697054

namespace A215153

/-- `∩[A215304(n+1), A215380(n+1)]` -/
def P8232830669973697054.Spec : Prop :=
  ∀ n, (P8232830669973697054.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P10620062260631867101

`∩[A215304(n+1), A215384(n+1)]`
-/

namespace A215153.P10620062260631867101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P10620062260631867101

namespace A215153

/-- `∩[A215304(n+1), A215384(n+1)]` -/
def P10620062260631867101.Spec : Prop :=
  ∀ n, (P10620062260631867101.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P12792735131277035696

`∩[A215308(n+1), A215384(n+1)]`
-/

namespace A215153.P12792735131277035696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P12792735131277035696

namespace A215153

/-- `∩[A215308(n+1), A215384(n+1)]` -/
def P12792735131277035696.Spec : Prop :=
  ∀ n, (P12792735131277035696.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P11710184248293604520

`∩[A215380(n+1), A215384(n+1)]`
-/

namespace A215153.P11710184248293604520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P11710184248293604520

namespace A215153

/-- `∩[A215380(n+1), A215384(n+1)]` -/
def P11710184248293604520.Spec : Prop :=
  ∀ n, (P11710184248293604520.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P14342074836164838242

`∩[A215312(n+1), A215380(n+1)]`
-/

namespace A215153.P14342074836164838242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P14342074836164838242

namespace A215153

/-- `∩[A215312(n+1), A215380(n+1)]` -/
def P14342074836164838242.Spec : Prop :=
  ∀ n, (P14342074836164838242.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P5073170634703664374

`∩[A215312(n+1), A215384(n+1)]`
-/

namespace A215153.P5073170634703664374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P5073170634703664374

namespace A215153

/-- `∩[A215312(n+1), A215384(n+1)]` -/
def P5073170634703664374.Spec : Prop :=
  ∀ n, (P5073170634703664374.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P13975024776304450193

`∩[A215304(n+1), A215320(n+1)]`
-/

namespace A215153.P13975024776304450193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P13975024776304450193

namespace A215153

/-- `∩[A215304(n+1), A215320(n+1)]` -/
def P13975024776304450193.Spec : Prop :=
  ∀ n, (P13975024776304450193.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P11775223673282854746

`∩[A215320(n+1), A215380(n+1)]`
-/

namespace A215153.P11775223673282854746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P11775223673282854746

namespace A215153

/-- `∩[A215320(n+1), A215380(n+1)]` -/
def P11775223673282854746.Spec : Prop :=
  ∀ n, (P11775223673282854746.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P5032684511139254446

`∩[A215308(n+1), A215324(n+1)]`
-/

namespace A215153.P5032684511139254446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P5032684511139254446

namespace A215153

/-- `∩[A215308(n+1), A215324(n+1)]` -/
def P5032684511139254446.Spec : Prop :=
  ∀ n, (P5032684511139254446.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P63955232384298040

`∩[A215324(n+1), A215380(n+1)]`
-/

namespace A215153.P63955232384298040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215153.P63955232384298040

namespace A215153

/-- `∩[A215324(n+1), A215380(n+1)]` -/
def P63955232384298040.Spec : Prop :=
  ∀ n, (P63955232384298040.a n : ℤ) = A215153 (n + 1)

end A215153

/-! ## A215153.P7175017897472686047

`A215380(p?[A049472(n)]%2+n+1)`
-/

namespace A215153.P7175017897472686047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 + (n + 1 : ℤ)).toNat

end

end A215153.P7175017897472686047

namespace A215153

/-- `A215380(p?[A049472(n)]%2+n+1)` -/
def P7175017897472686047.Spec : Prop :=
  ∀ n, P7175017897472686047.a n = A215153 (n + 1)

end A215153

/-! ## A215153.P15833890004913016519

`p?[14*A002264(n)+n+1]`
-/

namespace A215153.P15833890004913016519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A002264 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215153.P15833890004913016519

namespace A215153

/-- `p?[14*A002264(n)+n+1]` -/
def P15833890004913016519.Spec : Prop :=
  ∀ n, P15833890004913016519.a n = A215153 (n + 1)

end A215153

/-!
# A215154: Primes congruent to {1, 2, 3} mod 19.

The programs for A215154, the canonical program `A215154.P4006258148339535244` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215154 has offset 1).

The definition of A215154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215154.P6175161790724292737

`∪[A092168(n+1), A215393(n+1)]`
-/

namespace A215154.P6175161790724292737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P6175161790724292737

namespace A215154

/-- `∪[A092168(n+1), A215393(n+1)]` -/
def P6175161790724292737.Spec : Prop :=
  ∀ n, (P6175161790724292737.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P4006258148339535244

`∪[A141868(n+1), A215101(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215154

/-- `∪[A141868(n+1), A215101(n+1)]` -/
def P4006258148339535244.Spec : Prop :=
  ∀ n, (P4006258148339535244.a n : ℤ) = A215154 (n + 1)

theorem P4006258148339535244.correct : P4006258148339535244.Spec := by
  intro n
  simp only [A215154, Nat.add_sub_cancel]

end A215154

/-! ## A215154.P7870038053541939255

`∪[A215101(n+1), A215393(n+1)]`
-/

namespace A215154.P7870038053541939255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P7870038053541939255

namespace A215154

/-- `∪[A215101(n+1), A215393(n+1)]` -/
def P7870038053541939255.Spec : Prop :=
  ∀ n, (P7870038053541939255.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P9185237959345321658

`A215381(2-C(n, n²)+n)`
-/

namespace A215154.P9185237959345321658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (2 - (Nat.choose n (n ^ 2) : ℤ) + (n : ℤ)).toNat

end

end A215154.P9185237959345321658

namespace A215154

/-- `A215381(2-C(n, n²)+n)` -/
def P9185237959345321658.Spec : Prop :=
  ∀ n, P9185237959345321658.a n = A215154 (n + 1)

end A215154

/-! ## A215154.P17646041444720934295

`A215381(A326178(n+1))`
-/

namespace A215154.P17646041444720934295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (A326178 (n + 1)).toNat

end

end A215154.P17646041444720934295

namespace A215154

/-- `A215381(A326178(n+1))` -/
def P17646041444720934295.Spec : Prop :=
  ∀ n, P17646041444720934295.a n = A215154 (n + 1)

end A215154

/-! ## A215154.P9346189591166527153

`A215381(A000007(C(2, n+1))+n+1)`
-/

namespace A215154.P9346189591166527153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (A000007 (Nat.choose 2 (n + 1)) + (n : ℤ) + 1).toNat

end

end A215154.P9346189591166527153

namespace A215154

/-- `A215381(A000007(C(2, n+1))+n+1)` -/
def P9346189591166527153.Spec : Prop :=
  ∀ n, P9346189591166527153.a n = A215154 (n + 1)

end A215154

/-! ## A215154.P13123998922271007207

`∩[A215381(n+1), A215385(n+1)]`
-/

namespace A215154.P13123998922271007207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P13123998922271007207

namespace A215154

/-- `∩[A215381(n+1), A215385(n+1)]` -/
def P13123998922271007207.Spec : Prop :=
  ∀ n, (P13123998922271007207.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P6156422222862549092

`∩[A215309(n+1), A215381(n+1)]`
-/

namespace A215154.P6156422222862549092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P6156422222862549092

namespace A215154

/-- `∩[A215309(n+1), A215381(n+1)]` -/
def P6156422222862549092.Spec : Prop :=
  ∀ n, (P6156422222862549092.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P15675688051090137502

`∩[A215309(n+1), A215385(n+1)]`
-/

namespace A215154.P15675688051090137502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P15675688051090137502

namespace A215154

/-- `∩[A215309(n+1), A215385(n+1)]` -/
def P15675688051090137502.Spec : Prop :=
  ∀ n, (P15675688051090137502.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P2306783937191299284

`∩[A215305(n+1), A215309(n+1)]`
-/

namespace A215154.P2306783937191299284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P2306783937191299284

namespace A215154

/-- `∩[A215305(n+1), A215309(n+1)]` -/
def P2306783937191299284.Spec : Prop :=
  ∀ n, (P2306783937191299284.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P7963901798629037477

`∩[A215305(n+1), A215381(n+1)]`
-/

namespace A215154.P7963901798629037477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P7963901798629037477

namespace A215154

/-- `∩[A215305(n+1), A215381(n+1)]` -/
def P7963901798629037477.Spec : Prop :=
  ∀ n, (P7963901798629037477.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P10418529656608441841

`∩[A215305(n+1), A215385(n+1)]`
-/

namespace A215154.P10418529656608441841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P10418529656608441841

namespace A215154

/-- `∩[A215305(n+1), A215385(n+1)]` -/
def P10418529656608441841.Spec : Prop :=
  ∀ n, (P10418529656608441841.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P15396561885387694743

`∩[A215305(n+1), A215321(n+1)]`
-/

namespace A215154.P15396561885387694743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P15396561885387694743

namespace A215154

/-- `∩[A215305(n+1), A215321(n+1)]` -/
def P15396561885387694743.Spec : Prop :=
  ∀ n, (P15396561885387694743.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P14540649661966961010

`∩[A215321(n+1), A215381(n+1)]`
-/

namespace A215154.P14540649661966961010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P14540649661966961010

namespace A215154

/-- `∩[A215321(n+1), A215381(n+1)]` -/
def P14540649661966961010.Spec : Prop :=
  ∀ n, (P14540649661966961010.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P17717286343136867000

`∩[A215309(n+1), A215325(n+1)]`
-/

namespace A215154.P17717286343136867000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P17717286343136867000

namespace A215154

/-- `∩[A215309(n+1), A215325(n+1)]` -/
def P17717286343136867000.Spec : Prop :=
  ∀ n, (P17717286343136867000.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P2110876116584719769

`∩[A215325(n+1), A215381(n+1)]`
-/

namespace A215154.P2110876116584719769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P2110876116584719769

namespace A215154

/-- `∩[A215325(n+1), A215381(n+1)]` -/
def P2110876116584719769.Spec : Prop :=
  ∀ n, (P2110876116584719769.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P6593316421996228035

`∩[A215313(n+1), A215381(n+1)]`
-/

namespace A215154.P6593316421996228035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P6593316421996228035

namespace A215154

/-- `∩[A215313(n+1), A215381(n+1)]` -/
def P6593316421996228035.Spec : Prop :=
  ∀ n, (P6593316421996228035.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P2755117154998703820

`∩[A215313(n+1), A215385(n+1)]`
-/

namespace A215154.P2755117154998703820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215154.P2755117154998703820

namespace A215154

/-- `∩[A215313(n+1), A215385(n+1)]` -/
def P2755117154998703820.Spec : Prop :=
  ∀ n, (P2755117154998703820.a n : ℤ) = A215154 (n + 1)

end A215154

/-! ## A215154.P2555584679887889852

`A215381((n+1)*A001221(a(n-2))+1)` with `a(0)=2, a(1)=3`
-/

namespace A215154.P2555584679887889852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A215381 ((n + 1 : ℤ) * A001221 (a (n - 2)).toNat + 1).toNat

end

end A215154.P2555584679887889852

namespace A215154

/-- `A215381((n+1)*A001221(a(n-2))+1)` -/
def P2555584679887889852.Spec : Prop :=
  ∀ n, P2555584679887889852.a n = A215154 (n + 1)

end A215154

/-! ## A215154.P12343045074691272263

`p?[16*A002264(n)+n+1]`
-/

namespace A215154.P12343045074691272263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A002264 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215154.P12343045074691272263

namespace A215154

/-- `p?[16*A002264(n)+n+1]` -/
def P12343045074691272263.Spec : Prop :=
  ∀ n, P12343045074691272263.a n = A215154 (n + 1)

end A215154

/-!
# A215155: Primes congruent to {2, 3, 5, 7} mod 13.

The programs for A215155, the canonical program `A215155.P12284036453472301963` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215155 has offset 1).

The definition of A215155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215155.P12284036453472301963

`∪[A100202(n+1), A215211(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215155

/-- `∪[A100202(n+1), A215211(n+1)]` -/
def P12284036453472301963.Spec : Prop :=
  ∀ n, (P12284036453472301963.a n : ℤ) = A215155 (n + 1)

theorem P12284036453472301963.correct : P12284036453472301963.Spec := by
  intro n
  simp only [A215155, Nat.add_sub_cancel]

end A215155

/-! ## A215155.P15287809522458551972

`∪[A140371(n+1), A215103(n+1)]`
-/

namespace A215155.P15287809522458551972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P15287809522458551972

namespace A215155

/-- `∪[A140371(n+1), A215103(n+1)]` -/
def P15287809522458551972.Spec : Prop :=
  ∀ n, (P15287809522458551972.a n : ℤ) = A215155 (n + 1)

end A215155

/-! ## A215155.P2235600129148591125

`∪[A214889(n+1), A215211(n+1)]`
-/

namespace A215155.P2235600129148591125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P2235600129148591125

namespace A215155

/-- `∪[A214889(n+1), A215211(n+1)]` -/
def P2235600129148591125.Spec : Prop :=
  ∀ n, (P2235600129148591125.a n : ℤ) = A215155 (n + 1)

end A215155

/-! ## A215155.P13641264041327794455

`∪[A215103(n+1), A215207(n+1)]`
-/

namespace A215155.P13641264041327794455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P13641264041327794455

namespace A215155

/-- `∪[A215103(n+1), A215207(n+1)]` -/
def P13641264041327794455.Spec : Prop :=
  ∀ n, (P13641264041327794455.a n : ℤ) = A215155 (n + 1)

end A215155

/-! ## A215155.P15263217994381871791

`∪[A215103(n+1), A215211(n+1)]`
-/

namespace A215155.P15263217994381871791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215155.P15263217994381871791

namespace A215155

/-- `∪[A215103(n+1), A215211(n+1)]` -/
def P15263217994381871791.Spec : Prop :=
  ∀ n, (P15263217994381871791.a n : ℤ) = A215155 (n + 1)

end A215155

/-! ## A215155.P17787483966035301976

`p?[A028835(n+1)+and(n, -4)]`
-/

namespace A215155.P17787483966035301976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) + Int.land (n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P17787483966035301976

namespace A215155

/-- `p?[A028835(n+1)+and(n, -4)]` -/
def P17787483966035301976.Spec : Prop :=
  ∀ n, P17787483966035301976.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P1822169548694812627

`p?[A168484(n+1)+A129756(n)-1]`
-/

namespace A215155.P1822169548694812627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + (A129756 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P1822169548694812627

namespace A215155

/-- `p?[A168484(n+1)+A129756(n)-1]` -/
def P1822169548694812627.Spec : Prop :=
  ∀ n, P1822169548694812627.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P439060401361217252

`p?[A168484(n+1)+2*A002265(n)]`
-/

namespace A215155.P439060401361217252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + 2 * A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P439060401361217252

namespace A215155

/-- `p?[A168484(n+1)+2*A002265(n)]` -/
def P439060401361217252.Spec : Prop :=
  ∀ n, P439060401361217252.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P8622444710808053285

`p?[2*A168484(n+1)-A028835(n+1)]`
-/

namespace A215155.P8622444710808053285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168484 (n + 1) - A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P8622444710808053285

namespace A215155

/-- `p?[2*A168484(n+1)-A028835(n+1)]` -/
def P8622444710808053285.Spec : Prop :=
  ∀ n, P8622444710808053285.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P2870093465730147803

`p?[A028835(n+1)+A008586(A002265(n))]`
-/

namespace A215155.P2870093465730147803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) + A008586 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P2870093465730147803

namespace A215155

/-- `p?[A028835(n+1)+A008586(A002265(n))]` -/
def P2870093465730147803.Spec : Prop :=
  ∀ n, P2870093465730147803.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P15284145044153913065

`p?[A168484(n+1)+A005843(A002265(n))]`
-/

namespace A215155.P15284145044153913065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + A005843 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P15284145044153913065

namespace A215155

/-- `p?[A168484(n+1)+A005843(A002265(n))]` -/
def P15284145044153913065.Spec : Prop :=
  ∀ n, P15284145044153913065.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P10720785755635528320

`p?[A168484(n+1)+A004442(A129756(n))]`
-/

namespace A215155.P10720785755635528320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + A004442 (A129756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P10720785755635528320

namespace A215155

/-- `p?[A168484(n+1)+A004442(A129756(n))]` -/
def P10720785755635528320.Spec : Prop :=
  ∀ n, P10720785755635528320.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P9960687712895812712

`p?[A168484(n+1)+2*A004526(A004526(n))]`
-/

namespace A215155.P9960687712895812712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + 2 * A004526 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P9960687712895812712

namespace A215155

/-- `p?[A168484(n+1)+2*A004526(A004526(n))]` -/
def P9960687712895812712.Spec : Prop :=
  ∀ n, P9960687712895812712.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P2849439143349673553

`p?[A047454(n+1)+A130766(n)+A004526(n)]`
-/

namespace A215155.P2849439143349673553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) + (A130766 n + A004526 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P2849439143349673553

namespace A215155

/-- `p?[A047454(n+1)+A130766(n)+A004526(n)]` -/
def P2849439143349673553.Spec : Prop :=
  ∀ n, P2849439143349673553.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P8344183749939873735

`p?[A047476(n+1)+A130766(n)+A008619(n)]`
-/

namespace A215155.P8344183749939873735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) + (A130766 n + A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P8344183749939873735

namespace A215155

/-- `p?[A047476(n+1)+A130766(n)+A008619(n)]` -/
def P8344183749939873735.Spec : Prop :=
  ∀ n, P8344183749939873735.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P5742963832018244616

`p?[A168484(n+1)+A004526(n)-A021913(n)]`
-/

namespace A215155.P5742963832018244616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) + (A004526 n - A021913 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P5742963832018244616

namespace A215155

/-- `p?[A168484(n+1)+A004526(n)-A021913(n)]` -/
def P5742963832018244616.Spec : Prop :=
  ∀ n, P5742963832018244616.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P670832223734853037

`p?[A047454(n+1)+A004526(A260181(n+1))]`
-/

namespace A215155.P670832223734853037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) + A004526 (A260181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P670832223734853037

namespace A215155

/-- `p?[A047454(n+1)+A004526(A260181(n+1))]` -/
def P670832223734853037.Spec : Prop :=
  ∀ n, P670832223734853037.a n = A215155 (n + 1)

end A215155

/-! ## A215155.P16688845444569719520

`p?[A005843(A168484(n+1))-A028835(n+1)]`
-/

namespace A215155.P16688845444569719520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168484 (n + 1)).toNat - A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215155.P16688845444569719520

namespace A215155

/-- `p?[A005843(A168484(n+1))-A028835(n+1)]` -/
def P16688845444569719520.Spec : Prop :=
  ∀ n, P16688845444569719520.a n = A215155 (n + 1)

end A215155

/-!
# A215156: Primes congruent to {2, 3, 5, 7} mod 17.

The programs for A215156, the canonical program `A215156.P6693637782986479371` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215156 has offset 1).

The definition of A215156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215156.P16791900039229829958

`∪[A092074(n+1), A215212(n+1)]`
-/

namespace A215156.P16791900039229829958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P16791900039229829958

namespace A215156

/-- `∪[A092074(n+1), A215212(n+1)]` -/
def P16791900039229829958.Spec : Prop :=
  ∀ n, (P16791900039229829958.a n : ℤ) = A215156 (n + 1)

end A215156

/-! ## A215156.P6693637782986479371

`∪[A138629(n+1), A215104(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215156

/-- `∪[A138629(n+1), A215104(n+1)]` -/
def P6693637782986479371.Spec : Prop :=
  ∀ n, (P6693637782986479371.a n : ℤ) = A215156 (n + 1)

theorem P6693637782986479371.correct : P6693637782986479371.Spec := by
  intro n
  simp only [A215156, Nat.add_sub_cancel]

end A215156

/-! ## A215156.P8151095561199372414

`∪[A214890(n+1), A215212(n+1)]`
-/

namespace A215156.P8151095561199372414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P8151095561199372414

namespace A215156

/-- `∪[A214890(n+1), A215212(n+1)]` -/
def P8151095561199372414.Spec : Prop :=
  ∀ n, (P8151095561199372414.a n : ℤ) = A215156 (n + 1)

end A215156

/-! ## A215156.P5634914163390620387

`∪[A215104(n+1), A215208(n+1)]`
-/

namespace A215156.P5634914163390620387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P5634914163390620387

namespace A215156

/-- `∪[A215104(n+1), A215208(n+1)]` -/
def P5634914163390620387.Spec : Prop :=
  ∀ n, (P5634914163390620387.a n : ℤ) = A215156 (n + 1)

end A215156

/-! ## A215156.P16899939489404909269

`∪[A215104(n+1), A215212(n+1)]`
-/

namespace A215156.P16899939489404909269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P16899939489404909269

namespace A215156

/-- `∪[A215104(n+1), A215212(n+1)]` -/
def P16899939489404909269.Spec : Prop :=
  ∀ n, (P16899939489404909269.a n : ℤ) = A215156 (n + 1)

end A215156

/-! ## A215156.P2714708057777329624

`p?[A047411(A047454(n+1))+A008621(n)]`
-/

namespace A215156.P2714708057777329624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (A047454 (n + 1)).toNat + A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215156.P2714708057777329624

namespace A215156

/-- `p?[A047411(A047454(n+1))+A008621(n)]` -/
def P2714708057777329624.Spec : Prop :=
  ∀ n, P2714708057777329624.a n = A215156 (n + 1)

end A215156

/-! ## A215156.P5457666298763074667

`p?[A028835(A047454(n+1))-A002265(n)]`
-/

namespace A215156.P5457666298763074667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (A047454 (n + 1)).toNat - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215156.P5457666298763074667

namespace A215156

/-- `p?[A028835(A047454(n+1))-A002265(n)]` -/
def P5457666298763074667.Spec : Prop :=
  ∀ n, P5457666298763074667.a n = A215156 (n + 1)

end A215156

/-!
# A215157: Primes congruent to {2, 3, 5, 7} mod 19.

The programs for A215157, the canonical program `A215157.P6095938818374201116` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215157 has offset 1).

The definition of A215157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215157.P2611875042171214516

`∪[A092168(n+1), A215213(n+1)]`
-/

namespace A215157.P2611875042171214516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P2611875042171214516

namespace A215157

/-- `∪[A092168(n+1), A215213(n+1)]` -/
def P2611875042171214516.Spec : Prop :=
  ∀ n, (P2611875042171214516.a n : ℤ) = A215157 (n + 1)

end A215157

/-! ## A215157.P6095938818374201116

`∪[A141872(n+1), A215105(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215157

/-- `∪[A141872(n+1), A215105(n+1)]` -/
def P6095938818374201116.Spec : Prop :=
  ∀ n, (P6095938818374201116.a n : ℤ) = A215157 (n + 1)

theorem P6095938818374201116.correct : P6095938818374201116.Spec := by
  intro n
  simp only [A215157, Nat.add_sub_cancel]

end A215157

/-! ## A215157.P16953374267022808516

`∪[A215101(n+1), A215213(n+1)]`
-/

namespace A215157.P16953374267022808516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P16953374267022808516

namespace A215157

/-- `∪[A215101(n+1), A215213(n+1)]` -/
def P16953374267022808516.Spec : Prop :=
  ∀ n, (P16953374267022808516.a n : ℤ) = A215157 (n + 1)

end A215157

/-! ## A215157.P14313417578412303791

`∪[A215105(n+1), A215209(n+1)]`
-/

namespace A215157.P14313417578412303791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P14313417578412303791

namespace A215157

/-- `∪[A215105(n+1), A215209(n+1)]` -/
def P14313417578412303791.Spec : Prop :=
  ∀ n, (P14313417578412303791.a n : ℤ) = A215157 (n + 1)

end A215157

/-! ## A215157.P9539506517925045492

`∪[A215105(n+1), A215213(n+1)]`
-/

namespace A215157.P9539506517925045492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P9539506517925045492

namespace A215157

/-- `∪[A215105(n+1), A215213(n+1)]` -/
def P9539506517925045492.Spec : Prop :=
  ∀ n, (P9539506517925045492.a n : ℤ) = A215157 (n + 1)

end A215157

/-! ## A215157.P17207574936835500777

`p?[a(n-4)+19]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A215157.P17207574936835500777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 7] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215157.P17207574936835500777

namespace A215157

/-- `p?[a(n-4)+19]` -/
def P17207574936835500777.Spec : Prop :=
  ∀ n, (P17207574936835500777.a n : ℤ) = A215157 (n + 1)

end A215157

/-! ## A215157.P3035656918260310612

`p?[A028835(A047454(n+1))+A002265(n)]`
-/

namespace A215157.P3035656918260310612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (A047454 (n + 1)).toNat + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215157.P3035656918260310612

namespace A215157

/-- `p?[A028835(A047454(n+1))+A002265(n)]` -/
def P3035656918260310612.Spec : Prop :=
  ∀ n, P3035656918260310612.a n = A215157 (n + 1)

end A215157

/-! ## A215157.P9331105111022426606

`p?[A057353(n)+A047596(A047454(n+1))]`
-/

namespace A215157.P9331105111022426606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047596 (A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215157.P9331105111022426606

namespace A215157

/-- `p?[A057353(n)+A047596(A047454(n+1))]` -/
def P9331105111022426606.Spec : Prop :=
  ∀ n, P9331105111022426606.a n = A215157 (n + 1)

end A215157

/-! ## A215157.P8763354134056781767

`p?[A130766(n)+A047613(A047454(n+1))]`
-/

namespace A215157.P8763354134056781767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047613 (A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215157.P8763354134056781767

namespace A215157

/-- `p?[A130766(n)+A047613(A047454(n+1))]` -/
def P8763354134056781767.Spec : Prop :=
  ∀ n, P8763354134056781767.a n = A215157 (n + 1)

end A215157

/-!
# A215159: a(n) = floor(n^n / (n+1)).

The programs for A215159, the canonical program `A215159.P5750180708170752250` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215159 has offset 0).

The definition of A215159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^n/(n+1))` (program `A215159.P5750180708170752250`, by `A215159.P5750180708170752250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215159.P5750180708170752250

`floor(n^n/(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215159

/-- `floor(n^n/(n+1))` -/
def P5750180708170752250.Spec : Prop :=
  ∀ n, P5750180708170752250.a n = A215159 n

theorem P5750180708170752250.correct : P5750180708170752250.Spec := by
  intro n
  simp only [A215159]

end A215159

/-! ## A215159.P7698416447620909510

`A081216(n)-Δ[A123108(n)]`
-/

namespace A215159.P7698416447620909510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 n - (f1 (n + 1) - f1 n)

end

end A215159.P7698416447620909510

namespace A215159

/-- `A081216(n)-Δ[A123108(n)]` -/
def P7698416447620909510.Spec : Prop :=
  ∀ n, P7698416447620909510.a n = A215159 n

end A215159

/-! ## A215159.P10557609619349683266

`xor(char[A093411(n)], A081216(n))`
-/

namespace A215159.P10557609619349683266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A081216 n)

end

end A215159.P10557609619349683266

namespace A215159

/-- `xor(char[A093411(n)], A081216(n))` -/
def P10557609619349683266.Spec : Prop :=
  ∀ n, P10557609619349683266.a n = A215159 n

end A215159

/-! ## A215159.P5451086222220293697

`or(1, A081216(n))-A000035(n)`
-/

namespace A215159.P5451086222220293697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081216 n) - A000035 n

end

end A215159.P5451086222220293697

namespace A215159

/-- `or(1, A081216(n))-A000035(n)` -/
def P5451086222220293697.Spec : Prop :=
  ∀ n, P5451086222220293697.a n = A215159 n

end A215159

/-! ## A215159.P13134027797711523671

`A081216(A028310(n))-A000035(n)`
-/

namespace A215159.P13134027797711523671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 (A028310 n).toNat - A000035 n

end

end A215159.P13134027797711523671

namespace A215159

/-- `A081216(A028310(n))-A000035(n)` -/
def P13134027797711523671.Spec : Prop :=
  ∀ n, P13134027797711523671.a n = A215159 n

end A215159

/-! ## A215159.P7063343661336397847

`xor(A000035(A028310(n)), A081216(n))`
-/

namespace A215159.P7063343661336397847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A028310 n).toNat) (A081216 n)

end

end A215159.P7063343661336397847

namespace A215159

/-- `xor(A000035(A028310(n)), A081216(n))` -/
def P7063343661336397847.Spec : Prop :=
  ∀ n, P7063343661336397847.a n = A215159 n

end A215159

/-!
# A215160: Odd numbers n with the property that the binary representation of n is the same as the decimal representation of the smallest multiple of n that can be represented with only 1's and 0's.

The programs for A215160, there is no canonical definition to state claims against.
-/

/-! ## A215160.P11127493453690897571

`A032535(A032545((2*n+1)²²))`
-/

namespace A215160.P11127493453690897571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032535 (A032545 (((2 * n + 1) ^ 2) ^ 2)).toNat

end

end A215160.P11127493453690897571

/-!
# A215161: Primes congruent to {2, 3, 5, 7, 11} mod 17.

The programs for A215161, the canonical program `A215161.P11448201851860339282` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215161 has offset 1).

The definition of A215161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215161.P11448201851860339282

`∪[A140542(n+1), A215156(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215161

/-- `∪[A140542(n+1), A215156(n+1)]` -/
def P11448201851860339282.Spec : Prop :=
  ∀ n, (P11448201851860339282.a n : ℤ) = A215161 (n + 1)

theorem P11448201851860339282.correct : P11448201851860339282.Spec := by
  intro n
  simp only [A215161, Nat.add_sub_cancel]

end A215161

/-! ## A215161.P12028015023736195705

`eq[A010051(n+1), A306211(A104758(n))]+1`
-/

namespace A215161.P12028015023736195705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A104758 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215161.P12028015023736195705

namespace A215161

/-- `eq[A010051(n+1), A306211(A104758(n))]+1` -/
def P12028015023736195705.Spec : Prop :=
  ∀ n, (P12028015023736195705.a n : ℤ) = A215161 (n + 1)

end A215161

/-! ## A215161.P7202957776236768821

`p?[lt[A241701(2*(n+1)), A265723(3*(n+1))]]`
-/

namespace A215161.P7202957776236768821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215161.P7202957776236768821

namespace A215161

/-- `p?[lt[A241701(2*(n+1)), A265723(3*(n+1))]]` -/
def P7202957776236768821.Spec : Prop :=
  ∀ n, (P7202957776236768821.a n : ℤ) = A215161 (n + 1)

end A215161

/-! ## A215161.P14714838811238968776

`record[A051698(A287869(2*(n+1))%A004214(n+1))]`
-/

namespace A215161.P14714838811238968776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.tmod (A287869 (2 * (n + 1))) (A004214 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215161.P14714838811238968776

namespace A215161

/-- `record[A051698(A287869(2*(n+1))%A004214(n+1))]` -/
def P14714838811238968776.Spec : Prop :=
  ∀ n, P14714838811238968776.a n = A215161 (n + 1)

end A215161

/-! ## A215161.P8160112097937178990

`p?[lt[A141659(n+2), 7]]`
-/

namespace A215161.P8160112097937178990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141659 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215161.P8160112097937178990

namespace A215161

/-- `p?[lt[A141659(n+2), 7]]` -/
def P8160112097937178990.Spec : Prop :=
  ∀ n, (P8160112097937178990.a n : ℤ) = A215161 (n + 1)

end A215161

/-!
# A215162: Primes congruent to {2, 3, 5, 7, 11} mod 19.

The programs for A215162, the canonical program `A215162.P12842036876452639844` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215162 has offset 1).

The definition of A215162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215162.P12842036876452639844

`∪[A141876(n+1), A215157(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215162

/-- `∪[A141876(n+1), A215157(n+1)]` -/
def P12842036876452639844.Spec : Prop :=
  ∀ n, (P12842036876452639844.a n : ℤ) = A215162 (n + 1)

theorem P12842036876452639844.correct : P12842036876452639844.Spec := by
  intro n
  simp only [A215162, Nat.add_sub_cancel]

end A215162

/-! ## A215162.P10849101583585676260

`p?[∑[A329301(A329315(3*n+2))]]`
-/

namespace A215162.P10849101583585676260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 (A329315 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215162.P10849101583585676260

namespace A215162

/-- `p?[∑[A329301(A329315(3*n+2))]]` -/
def P10849101583585676260.Spec : Prop :=
  ∀ n, P10849101583585676260.a n = A215162 (n + 1)

end A215162

/-! ## A215162.P9041170243300232293

`A000040(eq[A103919(n), A325406(2*n+1)])`
-/

namespace A215162.P9041170243300232293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215162.P9041170243300232293

namespace A215162

/-- `A000040(eq[A103919(n), A325406(2*n+1)])` -/
def P9041170243300232293.Spec : Prop :=
  ∀ n, P9041170243300232293.a n = A215162 (n + 1)

end A215162

/-!
# A215163: Primes congruent to {1, 4} mod 11.

The programs for A215163, the canonical program `A215163.P17122064836461897530` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215163 has offset 1).

The definition of A215163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215163.P17122064836461897530

`∪[A141849(n+1), A141851(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215163

/-- `∪[A141849(n+1), A141851(n+1)]` -/
def P17122064836461897530.Spec : Prop :=
  ∀ n, (P17122064836461897530.a n : ℤ) = A215163 (n + 1)

theorem P17122064836461897530.correct : P17122064836461897530.Spec := by
  intro n
  simp only [A215163, Nat.add_sub_cancel]

end A215163

/-! ## A215163.P10266935099797806770

`p?[a(n-2)+11]` with `a(0)=1, a(1)=4`
-/

namespace A215163.P10266935099797806770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215163.P10266935099797806770

namespace A215163

/-- `p?[a(n-2)+11]` -/
def P10266935099797806770.Spec : Prop :=
  ∀ n, (P10266935099797806770.a n : ℤ) = A215163 (n + 1)

end A215163

/-! ## A215163.P7170690398607875293

`p?[A010685(n)+11*n]`
-/

namespace A215163.P7170690398607875293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + (11 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P7170690398607875293

namespace A215163

/-- `p?[A010685(n)+11*n]` -/
def P7170690398607875293.Spec : Prop :=
  ∀ n, P7170690398607875293.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P9369230235669805052

`p?[2*A168670(n+1)-1]`
-/

namespace A215163.P9369230235669805052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168670 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P9369230235669805052

namespace A215163

/-- `p?[2*A168670(n+1)-1]` -/
def P9369230235669805052.Spec : Prop :=
  ∀ n, P9369230235669805052.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P12680485639978513455

`p?[xor(1, A082296(n+1)+2)]`
-/

namespace A215163.P12680485639978513455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082296 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P12680485639978513455

namespace A215163

/-- `p?[xor(1, A082296(n+1)+2)]` -/
def P12680485639978513455.Spec : Prop :=
  ∀ n, P12680485639978513455.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P11532563748762747607

`p?[17*n+2-A228137(n+1)]`
-/

namespace A215163.P11532563748762747607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n + 2 : ℤ) - A228137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P11532563748762747607

namespace A215163

/-- `p?[17*n+2-A228137(n+1)]` -/
def P11532563748762747607.Spec : Prop :=
  ∀ n, P11532563748762747607.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P5229386655210283381

`p?[n+1+3*A047233(n+1)+n]`
-/

namespace A215163.P5229386655210283381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (3 * A047233 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P5229386655210283381

namespace A215163

/-- `p?[n+1+3*A047233(n+1)+n]` -/
def P5229386655210283381.Spec : Prop :=
  ∀ n, P5229386655210283381.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P10807141706169961745

`p?[∑[dr(2-∑[n+1]²)]]`
-/

namespace A215163.P10807141706169961745
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215163.P10807141706169961745

namespace A215163

/-- `p?[∑[dr(2-∑[n+1]²)]]` -/
def P10807141706169961745.Spec : Prop :=
  ∀ n, (P10807141706169961745.a n : ℤ) = A215163 (n + 1)

end A215163

/-! ## A215163.P9854173192051197253

`p?[A016993(n)+A002264(n)]`
-/

namespace A215163.P9854173192051197253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P9854173192051197253

namespace A215163

/-- `p?[A016993(n)+A002264(n)]` -/
def P9854173192051197253.Spec : Prop :=
  ∀ n, P9854173192051197253.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P6399599419819519293

`p?[∑[A010693(n)²]-n]`
-/

namespace A215163.P6399599419819519293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P6399599419819519293

namespace A215163

/-- `p?[∑[A010693(n)²]-n]` -/
def P6399599419819519293.Spec : Prop :=
  ∀ n, P6399599419819519293.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P8992867718732364683

`p?[A168672(n+2)-A016777(n)]`
-/

namespace A215163.P8992867718732364683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (n + 2) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P8992867718732364683

namespace A215163

/-- `p?[A168672(n+2)-A016777(n)]` -/
def P8992867718732364683.Spec : Prop :=
  ∀ n, P8992867718732364683.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P843877753786127856

`p?[∑[A010146(n+3)]]`
-/

namespace A215163.P843877753786127856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P843877753786127856

namespace A215163

/-- `p?[∑[A010146(n+3)]]` -/
def P843877753786127856.Spec : Prop :=
  ∀ n, P843877753786127856.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P14408164632162267900

`p?[A168486(n+1)-1]`
-/

namespace A215163.P14408164632162267900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168486 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P14408164632162267900

namespace A215163

/-- `p?[A168486(n+1)-1]` -/
def P14408164632162267900.Spec : Prop :=
  ∀ n, P14408164632162267900.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P6263406823615001431

`p?[A047353(n+1)+2*n]`
-/

namespace A215163.P6263406823615001431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P6263406823615001431

namespace A215163

/-- `p?[A047353(n+1)+2*n]` -/
def P6263406823615001431.Spec : Prop :=
  ∀ n, P6263406823615001431.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P13583697693264463855

`p?[A166522(n+1)+2*n]`
-/

namespace A215163.P13583697693264463855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P13583697693264463855

namespace A215163

/-- `p?[A166522(n+1)+2*n]` -/
def P13583697693264463855.Spec : Prop :=
  ∀ n, P13583697693264463855.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P18223720772126226326

`p?[A151973(2*(n+1))-n]`
-/

namespace A215163.P18223720772126226326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P18223720772126226326

namespace A215163

/-- `p?[A151973(2*(n+1))-n]` -/
def P18223720772126226326.Spec : Prop :=
  ∀ n, P18223720772126226326.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P5725454805868757415

`p?[A047374(n+3)+2*n+1]`
-/

namespace A215163.P5725454805868757415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (n + 3) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P5725454805868757415

namespace A215163

/-- `p?[A047374(n+3)+2*n+1]` -/
def P5725454805868757415.Spec : Prop :=
  ∀ n, P5725454805868757415.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P3365715817708606303

`p?[A168206(n+3)+3*n+7]`
-/

namespace A215163.P3365715817708606303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 3) + (3 * n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P3365715817708606303

namespace A215163

/-- `p?[A168206(n+3)+3*n+7]` -/
def P3365715817708606303.Spec : Prop :=
  ∀ n, P3365715817708606303.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P13297318033083375295

`p?[10*n+1-A056020(n+2)]`
-/

namespace A215163.P13297318033083375295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 1 : ℤ) - A056020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P13297318033083375295

namespace A215163

/-- `p?[10*n+1-A056020(n+2)]` -/
def P13297318033083375295.Spec : Prop :=
  ∀ n, P13297318033083375295.a n = A215163 (n + 1)

end A215163

/-! ## A215163.P16416121853907152094

`p?[A057538(n+1)-A022998(n)]`
-/

namespace A215163.P16416121853907152094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) - A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215163.P16416121853907152094

namespace A215163

/-- `p?[A057538(n+1)-A022998(n)]` -/
def P16416121853907152094.Spec : Prop :=
  ∀ n, P16416121853907152094.a n = A215163 (n + 1)

end A215163

/-!
# A215164: Primes congruent to {1, 4} mod 13.

The programs for A215164, the canonical program `A215164.P17020110804136505988` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215164 has offset 1).

The definition of A215164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215164.P17020110804136505988

`∪[A093191(n+1), A268753(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215164

/-- `∪[A093191(n+1), A268753(n+1)]` -/
def P17020110804136505988.Spec : Prop :=
  ∀ n, (P17020110804136505988.a n : ℤ) = A215164 (n + 1)

theorem P17020110804136505988.correct : P17020110804136505988.Spec := by
  intro n
  simp only [A215164, Nat.add_sub_cancel]

end A215164

/-! ## A215164.P13578364461866634214

`p?[a(n-2)+13]` with `a(0)=1, a(1)=4`
-/

namespace A215164.P13578364461866634214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215164.P13578364461866634214

namespace A215164

/-- `p?[a(n-2)+13]` -/
def P13578364461866634214.Spec : Prop :=
  ∀ n, (P13578364461866634214.a n : ℤ) = A215164 (n + 1)

end A215164

/-! ## A215164.P9969001854282340831

`∩[A215424(n+1), A296937(n+1)]`
-/

namespace A215164.P9969001854282340831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P9969001854282340831

namespace A215164

/-- `∩[A215424(n+1), A296937(n+1)]` -/
def P9969001854282340831.Spec : Prop :=
  ∀ n, (P9969001854282340831.a n : ℤ) = A215164 (n + 1)

end A215164

/-! ## A215164.P4960302416266917649

`∩[A215424(n+1), A270997(n+1)]`
-/

namespace A215164.P4960302416266917649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P4960302416266917649

namespace A215164

/-- `∩[A215424(n+1), A270997(n+1)]` -/
def P4960302416266917649.Spec : Prop :=
  ∀ n, (P4960302416266917649.a n : ℤ) = A215164 (n + 1)

end A215164

/-! ## A215164.P4420278827109361860

`p?[A010685(n)+13*n]`
-/

namespace A215164.P4420278827109361860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + (13 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P4420278827109361860

namespace A215164

/-- `p?[A010685(n)+13*n]` -/
def P4420278827109361860.Spec : Prop :=
  ∀ n, P4420278827109361860.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P4151165881403876791

`p?[A161705(n)-2*A008851(n+1)]`
-/

namespace A215164.P4151165881403876791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2 * A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P4151165881403876791

namespace A215164

/-- `p?[A161705(n)-2*A008851(n+1)]` -/
def P4151165881403876791.Spec : Prop :=
  ∀ n, P4151165881403876791.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P3993389435446774538

`p?[∑[A130806(n)²]]`
-/

namespace A215164.P3993389435446774538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130806 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P3993389435446774538

namespace A215164

/-- `p?[∑[A130806(n)²]]` -/
def P3993389435446774538.Spec : Prop :=
  ∀ n, P3993389435446774538.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P10799593923022342350

`p?[floor(n/2)+3*lt[n, or(2, n)]+1]`
-/

namespace A215164.P10799593923022342350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (3 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P10799593923022342350

namespace A215164

/-- `p?[floor(n/2)+3*lt[n, or(2, n)]+1]` -/
def P10799593923022342350.Spec : Prop :=
  ∀ n, P10799593923022342350.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P6863115392620421277

`p?[∑[A072988(n)]]`
-/

namespace A215164.P6863115392620421277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P6863115392620421277

namespace A215164

/-- `p?[∑[A072988(n)]]` -/
def P6863115392620421277.Spec : Prop :=
  ∀ n, P6863115392620421277.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P8185139505303893136

`p?[A155086(n+3)-4]`
-/

namespace A215164.P8185139505303893136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 3) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P8185139505303893136

namespace A215164

/-- `p?[A155086(n+3)-4]` -/
def P8185139505303893136.Spec : Prop :=
  ∀ n, P8185139505303893136.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P13821483818057014653

`p?[A057538(n+1)-n]`
-/

namespace A215164.P13821483818057014653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P13821483818057014653

namespace A215164

/-- `p?[A057538(n+1)-n]` -/
def P13821483818057014653.Spec : Prop :=
  ∀ n, P13821483818057014653.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P599258320521598332

`p?[∑[A010689(n)+2]+1]`
-/

namespace A215164.P599258320521598332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P599258320521598332

namespace A215164

/-- `p?[∑[A010689(n)+2]+1]` -/
def P599258320521598332.Spec : Prop :=
  ∀ n, P599258320521598332.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P17623827045620448665

`p?[A177964(n+1)+2-n]`
-/

namespace A215164.P17623827045620448665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1) + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P17623827045620448665

namespace A215164

/-- `p?[A177964(n+1)+2-n]` -/
def P17623827045620448665.Spec : Prop :=
  ∀ n, P17623827045620448665.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P5263021547476996283

`p?[A151973(2*(n+1))+n]`
-/

namespace A215164.P5263021547476996283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P5263021547476996283

namespace A215164

/-- `p?[A151973(2*(n+1))+n]` -/
def P5263021547476996283.Spec : Prop :=
  ∀ n, P5263021547476996283.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P5148092349048321221

`p?[A184551(2*(n+1))-n]`
-/

namespace A215164.P5148092349048321221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P5148092349048321221

namespace A215164

/-- `p?[A184551(2*(n+1))-n]` -/
def P5148092349048321221.Spec : Prop :=
  ∀ n, P5148092349048321221.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P17482126043259249564

`p?[A028919(n+1)+3*n+1]`
-/

namespace A215164.P17482126043259249564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028919 (n + 1) + (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P17482126043259249564

namespace A215164

/-- `p?[A028919(n+1)+3*n+1]` -/
def P17482126043259249564.Spec : Prop :=
  ∀ n, P17482126043259249564.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P9596781224805900131

`p?[A228137(n+1)+A004526(n)]`
-/

namespace A215164.P9596781224805900131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1) + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P9596781224805900131

namespace A215164

/-- `p?[A228137(n+1)+A004526(n)]` -/
def P9596781224805900131.Spec : Prop :=
  ∀ n, P9596781224805900131.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P2164852618032664314

`p?[3*A042948(A014601(n))+n+1]`
-/

namespace A215164.P2164852618032664314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A042948 (A014601 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215164.P2164852618032664314

namespace A215164

/-- `p?[3*A042948(A014601(n))+n+1]` -/
def P2164852618032664314.Spec : Prop :=
  ∀ n, P2164852618032664314.a n = A215164 (n + 1)

end A215164

/-! ## A215164.P10312085387842098474

`∩[A000040(n+1), A057538(n+1)-n]`
-/

namespace A215164.P10312085387842098474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P10312085387842098474

namespace A215164

/-- `∩[A000040(n+1), A057538(n+1)-n]` -/
def P10312085387842098474.Spec : Prop :=
  ∀ n, (P10312085387842098474.a n : ℤ) = A215164 (n + 1)

end A215164

/-! ## A215164.P16119217675932748022

`∩[A038883(n+1), A057538(n+1)-n]`
-/

namespace A215164.P16119217675932748022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215164.P16119217675932748022

namespace A215164

/-- `∩[A038883(n+1), A057538(n+1)-n]` -/
def P16119217675932748022.Spec : Prop :=
  ∀ n, (P16119217675932748022.a n : ℤ) = A215164 (n + 1)

end A215164

/-!
# A215165: Primes congruent to {1, 4} mod 17.

The programs for A215165, the canonical program `A215165.P9386009929339290634` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215165 has offset 1).

The definition of A215165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215165.P10486144839964150598

`∪[A094657(n+1), A129484(n+1)]`
-/

namespace A215165.P10486144839964150598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215165.P10486144839964150598

namespace A215165

/-- `∪[A094657(n+1), A129484(n+1)]` -/
def P10486144839964150598.Spec : Prop :=
  ∀ n, (P10486144839964150598.a n : ℤ) = A215165 (n + 1)

end A215165

/-! ## A215165.P9386009929339290634

`p?[a(n-2)+17]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215165

/-- `p?[a(n-2)+17]` -/
def P9386009929339290634.Spec : Prop :=
  ∀ n, (P9386009929339290634.a n : ℤ) = A215165 (n + 1)

theorem P9386009929339290634.correct : P9386009929339290634.Spec := by
  intro n
  simp only [A215165, Nat.add_sub_cancel]

end A215165

/-! ## A215165.P1499640800230857498

`p?[A090771(n+1)+12*n]`
-/

namespace A215165.P1499640800230857498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P1499640800230857498

namespace A215165

/-- `p?[A090771(n+1)+12*n]` -/
def P1499640800230857498.Spec : Prop :=
  ∀ n, P1499640800230857498.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P2861528310155262638

`p?[A057538(n+1)+n]`
-/

namespace A215165.P2861528310155262638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P2861528310155262638

namespace A215165

/-- `p?[A057538(n+1)+n]` -/
def P2861528310155262638.Spec : Prop :=
  ∀ n, P2861528310155262638.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P3669915850498434300

`p?[A102039(n+1)+A047319(n+1)]`
-/

namespace A215165.P3669915850498434300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) + A047319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P3669915850498434300

namespace A215165

/-- `p?[A102039(n+1)+A047319(n+1)]` -/
def P3669915850498434300.Spec : Prop :=
  ∀ n, P3669915850498434300.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P12954471254651745175

`p?[A017293(n)-(A168197(n+1)+1)]`
-/

namespace A215165.P12954471254651745175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n - (A168197 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P12954471254651745175

namespace A215165

/-- `p?[A017293(n)-(A168197(n+1)+1)]` -/
def P12954471254651745175.Spec : Prop :=
  ∀ n, P12954471254651745175.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P7567268880911142901

`p?[A146509(n+1)+1-A080513(n)]`
-/

namespace A215165.P7567268880911142901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + (1 - A080513 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P7567268880911142901

namespace A215165

/-- `p?[A146509(n+1)+1-A080513(n)]` -/
def P7567268880911142901.Spec : Prop :=
  ∀ n, P7567268880911142901.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P451862825740758305

`∩[A000040(n+1), A057538(n+1)+n]`
-/

namespace A215165.P451862825740758305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215165.P451862825740758305

namespace A215165

/-- `∩[A000040(n+1), A057538(n+1)+n]` -/
def P451862825740758305.Spec : Prop :=
  ∀ n, (P451862825740758305.a n : ℤ) = A215165 (n + 1)

end A215165

/-! ## A215165.P8168156983133729069

`∩[A038889(n+1), A057538(n+1)+n]`
-/

namespace A215165.P8168156983133729069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215165.P8168156983133729069

namespace A215165

/-- `∩[A038889(n+1), A057538(n+1)+n]` -/
def P8168156983133729069.Spec : Prop :=
  ∀ n, (P8168156983133729069.a n : ℤ) = A215165 (n + 1)

end A215165

/-! ## A215165.P15555150945361022917

`∩[A057538(n+1)+n, A296938(n+1)]`
-/

namespace A215165.P15555150945361022917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215165.P15555150945361022917

namespace A215165

/-- `∩[A057538(n+1)+n, A296938(n+1)]` -/
def P15555150945361022917.Spec : Prop :=
  ∀ n, (P15555150945361022917.a n : ℤ) = A215165 (n + 1)

end A215165

/-! ## A215165.P15260965693843439194

`p?[A175887(2*(n+1))+A168205(n+2)]`
-/

namespace A215165.P15260965693843439194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (2 * (n + 1)) + A168205 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P15260965693843439194

namespace A215165

/-- `p?[A175887(2*(n+1))+A168205(n+2)]` -/
def P15260965693843439194.Spec : Prop :=
  ∀ n, P15260965693843439194.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P4531632989823524565

`p?[A016921(A047203(n+1))+n]`
-/

namespace A215165.P4531632989823524565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047203 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P4531632989823524565

namespace A215165

/-- `p?[A016921(A047203(n+1))+n]` -/
def P4531632989823524565.Spec : Prop :=
  ∀ n, P4531632989823524565.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P7524014801836341140

`p?[A047461(A047452(n+1))+n]`
-/

namespace A215165.P7524014801836341140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A047452 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P7524014801836341140

namespace A215165

/-- `p?[A047461(A047452(n+1))+n]` -/
def P7524014801836341140.Spec : Prop :=
  ∀ n, P7524014801836341140.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P13243013863281442270

`p?[A047461(A047461(n+2)-3)+n]`
-/

namespace A215165.P13243013863281442270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A047461 (n + 2) - 3).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P13243013863281442270

namespace A215165

/-- `p?[A047461(A047461(n+2)-3)+n]` -/
def P13243013863281442270.Spec : Prop :=
  ∀ n, P13243013863281442270.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P5290874188934442082

`p?[A112653(n)-A001489(2*n+1)]`
-/

namespace A215165.P5290874188934442082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n - A001489 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P5290874188934442082

namespace A215165

/-- `p?[A112653(n)-A001489(2*n+1)]` -/
def P5290874188934442082.Spec : Prop :=
  ∀ n, P5290874188934442082.a n = A215165 (n + 1)

end A215165

/-! ## A215165.P12923056104827892369

`p?[A047470(A047470(n+2)-2)+n+1]`
-/

namespace A215165.P12923056104827892369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (A047470 (n + 2) - 2).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215165.P12923056104827892369

namespace A215165

/-- `p?[A047470(A047470(n+2)-2)+n+1]` -/
def P12923056104827892369.Spec : Prop :=
  ∀ n, P12923056104827892369.a n = A215165 (n + 1)

end A215165

/-!
# A215166: Primes congruent to {1, 4} mod 19.

The programs for A215166, the canonical program `A215166.P4426320899168472041` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215166 has offset 1).

The definition of A215166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215166.P4426320899168472041

`∪[A141868(n+1), A141870(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215166

/-- `∪[A141868(n+1), A141870(n+1)]` -/
def P4426320899168472041.Spec : Prop :=
  ∀ n, (P4426320899168472041.a n : ℤ) = A215166 (n + 1)

theorem P4426320899168472041.correct : P4426320899168472041.Spec := by
  intro n
  simp only [A215166, Nat.add_sub_cancel]

end A215166

/-! ## A215166.P1912566144615567050

`p?[a(n-2)+19]` with `a(0)=1, a(1)=4`
-/

namespace A215166.P1912566144615567050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215166.P1912566144615567050

namespace A215166

/-- `p?[a(n-2)+19]` -/
def P1912566144615567050.Spec : Prop :=
  ∀ n, (P1912566144615567050.a n : ℤ) = A215166 (n + 1)

end A215166

/-! ## A215166.P6176877513010351602

`∩[A191019(n+1), A215305(n+1)]`
-/

namespace A215166.P6176877513010351602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P6176877513010351602

namespace A215166

/-- `∩[A191019(n+1), A215305(n+1)]` -/
def P6176877513010351602.Spec : Prop :=
  ∀ n, (P6176877513010351602.a n : ℤ) = A215166 (n + 1)

end A215166

/-! ## A215166.P14000324059229674972

`∩[A106863(n+1), A215305(n+1)]`
-/

namespace A215166.P14000324059229674972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P14000324059229674972

namespace A215166

/-- `∩[A106863(n+1), A215305(n+1)]` -/
def P14000324059229674972.Spec : Prop :=
  ∀ n, (P14000324059229674972.a n : ℤ) = A215166 (n + 1)

end A215166

/-! ## A215166.P16485528736937675979

`∩[A215305(n+1), A341787(n+1)]`
-/

namespace A215166.P16485528736937675979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P16485528736937675979

namespace A215166

/-- `∩[A215305(n+1), A341787(n+1)]` -/
def P16485528736937675979.Spec : Prop :=
  ∀ n, (P16485528736937675979.a n : ℤ) = A215166 (n + 1)

end A215166

/-! ## A215166.P10384655803199075690

`p?[6*∑[A176895(n)-1]+1-n]`
-/

namespace A215166.P10384655803199075690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P10384655803199075690

namespace A215166

/-- `p?[6*∑[A176895(n)-1]+1-n]` -/
def P10384655803199075690.Spec : Prop :=
  ∀ n, P10384655803199075690.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P11581700557630845016

`p?[A057538(n+1)+A022998(n)]`
-/

namespace A215166.P11581700557630845016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P11581700557630845016

namespace A215166

/-- `p?[A057538(n+1)+A022998(n)]` -/
def P11581700557630845016.Spec : Prop :=
  ∀ n, P11581700557630845016.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P17291966513926401289

`p?[A151977(n+1)+A007494(n)+1]`
-/

namespace A215166.P17291966513926401289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1) + (A007494 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P17291966513926401289

namespace A215166

/-- `p?[A151977(n+1)+A007494(n)+1]` -/
def P17291966513926401289.Spec : Prop :=
  ∀ n, P17291966513926401289.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P8168433419443347413

`p?[A146509(n+1)+A028242(n)-1]`
-/

namespace A215166.P8168433419443347413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + (A028242 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P8168433419443347413

namespace A215166

/-- `p?[A146509(n+1)+A028242(n)-1]` -/
def P8168433419443347413.Spec : Prop :=
  ∀ n, P8168433419443347413.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P3034015615618364516

`p?[A042948(A042948(n+1))+15*n]`
-/

namespace A215166.P3034015615618364516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A042948 (n + 1)).toNat + (15 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P3034015615618364516

namespace A215166

/-- `p?[A042948(A042948(n+1))+15*n]` -/
def P3034015615618364516.Spec : Prop :=
  ∀ n, P3034015615618364516.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P6654080098287513306

`p?[A007310(A007310(n+1))+10*n]`
-/

namespace A215166.P6654080098287513306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A007310 (n + 1)).toNat + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P6654080098287513306

namespace A215166

/-- `p?[A007310(A007310(n+1))+10*n]` -/
def P6654080098287513306.Spec : Prop :=
  ∀ n, P6654080098287513306.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P894496446547927394

`p?[A016921(A047291(n+1))-n]`
-/

namespace A215166.P894496446547927394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047291 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P894496446547927394

namespace A215166

/-- `p?[A016921(A047291(n+1))-n]` -/
def P894496446547927394.Spec : Prop :=
  ∀ n, P894496446547927394.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P13204783205060875482

`∩[A035243(n+1), A215305(n+1)]`
-/

namespace A215166.P13204783205060875482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215166.P13204783205060875482

namespace A215166

/-- `∩[A035243(n+1), A215305(n+1)]` -/
def P13204783205060875482.Spec : Prop :=
  ∀ n, (P13204783205060875482.a n : ℤ) = A215166 (n + 1)

end A215166

/-! ## A215166.P17327057225385680704

`p?[A197652(n+1)+A047336(A047522(n+1))]`
-/

namespace A215166.P17327057225385680704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1) + A047336 (A047522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P17327057225385680704

namespace A215166

/-- `p?[A197652(n+1)+A047336(A047522(n+1))]` -/
def P17327057225385680704.Spec : Prop :=
  ∀ n, P17327057225385680704.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P17955956574218742050

`p?[A008585(A319280(2*n+1))+n+1]`
-/

namespace A215166.P17955956574218742050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A319280 (2 * n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P17955956574218742050

namespace A215166

/-- `p?[A008585(A319280(2*n+1))+n+1]` -/
def P17955956574218742050.Spec : Prop :=
  ∀ n, P17955956574218742050.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P10070913644617644268

`p?[A016777(2*A047291(n+1))-n]`
-/

namespace A215166.P10070913644617644268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A047291 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P10070913644617644268

namespace A215166

/-- `p?[A016777(2*A047291(n+1))-n]` -/
def P10070913644617644268.Spec : Prop :=
  ∀ n, P10070913644617644268.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P17802781863655133178

`p?[A057353(2*n)+A047454(A047454(2*n+1))]`
-/

namespace A215166.P17802781863655133178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n) + A047454 (A047454 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P17802781863655133178

namespace A215166

/-- `p?[A057353(2*n)+A047454(A047454(2*n+1))]` -/
def P17802781863655133178.Spec : Prop :=
  ∀ n, P17802781863655133178.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P9360877164037858817

`p?[A130766(2*n+1)+A047476(A047476(2*(n+1)))]`
-/

namespace A215166.P9360877164037858817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (2 * n + 1) + A047476 (A047476 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P9360877164037858817

namespace A215166

/-- `p?[A130766(2*n+1)+A047476(A047476(2*(n+1)))]` -/
def P9360877164037858817.Spec : Prop :=
  ∀ n, P9360877164037858817.a n = A215166 (n + 1)

end A215166

/-! ## A215166.P11419935100757052179

`p?[A005408(A219721(n)-1)-n]`
-/

namespace A215166.P11419935100757052179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A219721 n - 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215166.P11419935100757052179

namespace A215166

/-- `p?[A005408(A219721(n)-1)-n]` -/
def P11419935100757052179.Spec : Prop :=
  ∀ n, P11419935100757052179.a n = A215166 (n + 1)

end A215166

/-!
# A215167: Primes congruent to {2, 5} mod 11.

The programs for A215167, the canonical program `A215167.P10655791794589351713` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215167 has offset 1).

The definition of A215167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215167.P10655791794589351713

`∪[A090187(n+1), A141852(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215167

/-- `∪[A090187(n+1), A141852(n+1)]` -/
def P10655791794589351713.Spec : Prop :=
  ∀ n, (P10655791794589351713.a n : ℤ) = A215167 (n + 1)

theorem P10655791794589351713.correct : P10655791794589351713.Spec := by
  intro n
  simp only [A215167, Nat.add_sub_cancel]

end A215167

/-! ## A215167.P3836904931110281757

`p?[a(n-2)+11]` with `a(0)=2, a(1)=5`
-/

namespace A215167.P3836904931110281757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215167.P3836904931110281757

namespace A215167

/-- `p?[a(n-2)+11]` -/
def P3836904931110281757.Spec : Prop :=
  ∀ n, (P3836904931110281757.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P18435251456459980761

`∩[A215102(n+1), A215214(n+1)]`
-/

namespace A215167.P18435251456459980761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P18435251456459980761

namespace A215167

/-- `∩[A215102(n+1), A215214(n+1)]` -/
def P18435251456459980761.Spec : Prop :=
  ∀ n, (P18435251456459980761.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P16017561551401485112

`∩[A215102(n+1), A215210(n+1)]`
-/

namespace A215167.P16017561551401485112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P16017561551401485112

namespace A215167

/-- `∩[A215102(n+1), A215210(n+1)]` -/
def P16017561551401485112.Spec : Prop :=
  ∀ n, (P16017561551401485112.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P11170987570949302367

`∩[A215210(n+1), A215214(n+1)]`
-/

namespace A215167.P11170987570949302367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P11170987570949302367

namespace A215167

/-- `∩[A215210(n+1), A215214(n+1)]` -/
def P11170987570949302367.Spec : Prop :=
  ∀ n, (P11170987570949302367.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P6860641677105326460

`∩[A215210(n+1), A215306(n+1)]`
-/

namespace A215167.P6860641677105326460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P6860641677105326460

namespace A215167

/-- `∩[A215210(n+1), A215306(n+1)]` -/
def P6860641677105326460.Spec : Prop :=
  ∀ n, (P6860641677105326460.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P17487909199102290653

`∩[A215210(n+1), A215314(n+1)]`
-/

namespace A215167.P17487909199102290653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P17487909199102290653

namespace A215167

/-- `∩[A215210(n+1), A215314(n+1)]` -/
def P17487909199102290653.Spec : Prop :=
  ∀ n, (P17487909199102290653.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P11845677085406212498

`∩[A215214(n+1), A215314(n+1)]`
-/

namespace A215167.P11845677085406212498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P11845677085406212498

namespace A215167

/-- `∩[A215214(n+1), A215314(n+1)]` -/
def P11845677085406212498.Spec : Prop :=
  ∀ n, (P11845677085406212498.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P18227999035685104676

`∩[A215210(n+1), A215354(n+1)]`
-/

namespace A215167.P18227999035685104676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P18227999035685104676

namespace A215167

/-- `∩[A215210(n+1), A215354(n+1)]` -/
def P18227999035685104676.Spec : Prop :=
  ∀ n, (P18227999035685104676.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P4763229008112311239

`∩[A215102(n+1), A215275(n+1)]`
-/

namespace A215167.P4763229008112311239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P4763229008112311239

namespace A215167

/-- `∩[A215102(n+1), A215275(n+1)]` -/
def P4763229008112311239.Spec : Prop :=
  ∀ n, (P4763229008112311239.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P15278934207704681566

`∩[A215210(n+1), A215275(n+1)]`
-/

namespace A215167.P15278934207704681566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P15278934207704681566

namespace A215167

/-- `∩[A215210(n+1), A215275(n+1)]` -/
def P15278934207704681566.Spec : Prop :=
  ∀ n, (P15278934207704681566.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P12894619359249093072

`∩[A215214(n+1), A215275(n+1)]`
-/

namespace A215167.P12894619359249093072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P12894619359249093072

namespace A215167

/-- `∩[A215214(n+1), A215275(n+1)]` -/
def P12894619359249093072.Spec : Prop :=
  ∀ n, (P12894619359249093072.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P5488461659280328185

`∩[A215102(n+1), A215427(n+1)]`
-/

namespace A215167.P5488461659280328185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P5488461659280328185

namespace A215167

/-- `∩[A215102(n+1), A215427(n+1)]` -/
def P5488461659280328185.Spec : Prop :=
  ∀ n, (P5488461659280328185.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P15374390078173577768

`∩[A215275(n+1), A215306(n+1)]`
-/

namespace A215167.P15374390078173577768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P15374390078173577768

namespace A215167

/-- `∩[A215275(n+1), A215306(n+1)]` -/
def P15374390078173577768.Spec : Prop :=
  ∀ n, (P15374390078173577768.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P17246426671483876810

`∩[A215427(n+1), A215306(n+1)]`
-/

namespace A215167.P17246426671483876810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P17246426671483876810

namespace A215167

/-- `∩[A215427(n+1), A215306(n+1)]` -/
def P17246426671483876810.Spec : Prop :=
  ∀ n, (P17246426671483876810.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P15898000862765250164

`∩[A215210(n+1), A215370(n+1)]`
-/

namespace A215167.P15898000862765250164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P15898000862765250164

namespace A215167

/-- `∩[A215210(n+1), A215370(n+1)]` -/
def P15898000862765250164.Spec : Prop :=
  ∀ n, (P15898000862765250164.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P9808021992010494642

`∩[A167134(n+1), A215214(n+1)]`
-/

namespace A215167.P9808021992010494642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P9808021992010494642

namespace A215167

/-- `∩[A167134(n+1), A215214(n+1)]` -/
def P9808021992010494642.Spec : Prop :=
  ∀ n, (P9808021992010494642.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P5112697735850213405

`∩[A167134(n+1), A215275(n+1)]`
-/

namespace A215167.P5112697735850213405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P5112697735850213405

namespace A215167

/-- `∩[A167134(n+1), A215275(n+1)]` -/
def P5112697735850213405.Spec : Prop :=
  ∀ n, (P5112697735850213405.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P3644758626989647069

`∩[A167134(n+1), A215427(n+1)]`
-/

namespace A215167.P3644758626989647069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P3644758626989647069

namespace A215167

/-- `∩[A167134(n+1), A215427(n+1)]` -/
def P3644758626989647069.Spec : Prop :=
  ∀ n, (P3644758626989647069.a n : ℤ) = A215167 (n + 1)

end A215167

/-! ## A215167.P828301106786593802

`∩[A215210(n+1), A215318(n+1)]`
-/

namespace A215167.P828301106786593802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215167.P828301106786593802

namespace A215167

/-- `∩[A215210(n+1), A215318(n+1)]` -/
def P828301106786593802.Spec : Prop :=
  ∀ n, (P828301106786593802.a n : ℤ) = A215167 (n + 1)

end A215167

/-!
# A215168: Primes congruent to {2, 5} mod 13.

The programs for A215168, the canonical program `A215168.P5522760675368971835` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215168 has offset 1).

The definition of A215168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215168.P5522760675368971835

`∪[A141858(n+1), A102732(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215168

/-- `∪[A141858(n+1), A102732(n+1)]` -/
def P5522760675368971835.Spec : Prop :=
  ∀ n, (P5522760675368971835.a n : ℤ) = A215168 (n + 1)

theorem P5522760675368971835.correct : P5522760675368971835.Spec := by
  intro n
  simp only [A215168, Nat.add_sub_cancel]

end A215168

/-! ## A215168.P6174587408438796662

`p?[a(n-2)+13]` with `a(0)=2, a(1)=5`
-/

namespace A215168.P6174587408438796662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215168.P6174587408438796662

namespace A215168

/-- `p?[a(n-2)+13]` -/
def P6174587408438796662.Spec : Prop :=
  ∀ n, (P6174587408438796662.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P15725072613547487204

`∩[A215103(n+1), A215211(n+1)]`
-/

namespace A215168.P15725072613547487204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P15725072613547487204

namespace A215168

/-- `∩[A215103(n+1), A215211(n+1)]` -/
def P15725072613547487204.Spec : Prop :=
  ∀ n, (P15725072613547487204.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P6078079830161960522

`∩[A215103(n+1), A215215(n+1)]`
-/

namespace A215168.P6078079830161960522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P6078079830161960522

namespace A215168

/-- `∩[A215103(n+1), A215215(n+1)]` -/
def P6078079830161960522.Spec : Prop :=
  ∀ n, (P6078079830161960522.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P14435592843976758335

`∩[A215211(n+1), A215215(n+1)]`
-/

namespace A215168.P14435592843976758335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P14435592843976758335

namespace A215168

/-- `∩[A215211(n+1), A215215(n+1)]` -/
def P14435592843976758335.Spec : Prop :=
  ∀ n, (P14435592843976758335.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P8531732034669451029

`∩[A215155(n+1), A215215(n+1)]`
-/

namespace A215168.P8531732034669451029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P8531732034669451029

namespace A215168

/-- `∩[A215155(n+1), A215215(n+1)]` -/
def P8531732034669451029.Spec : Prop :=
  ∀ n, (P8531732034669451029.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P4449146848097287334

`∩[A215211(n+1), A215315(n+1)]`
-/

namespace A215168.P4449146848097287334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P4449146848097287334

namespace A215168

/-- `∩[A215211(n+1), A215315(n+1)]` -/
def P4449146848097287334.Spec : Prop :=
  ∀ n, (P4449146848097287334.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P12328744363168907369

`∩[A215211(n+1), A215355(n+1)]`
-/

namespace A215168.P12328744363168907369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P12328744363168907369

namespace A215168

/-- `∩[A215211(n+1), A215355(n+1)]` -/
def P12328744363168907369.Spec : Prop :=
  ∀ n, (P12328744363168907369.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P316819423793024

`∩[A215211(n+1), A215307(n+1)]`
-/

namespace A215168.P316819423793024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P316819423793024

namespace A215168

/-- `∩[A215211(n+1), A215307(n+1)]` -/
def P316819423793024.Spec : Prop :=
  ∀ n, (P316819423793024.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P11682089340448540069

`∩[A215371(n+1), A215211(n+1)]`
-/

namespace A215168.P11682089340448540069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P11682089340448540069

namespace A215168

/-- `∩[A215371(n+1), A215211(n+1)]` -/
def P11682089340448540069.Spec : Prop :=
  ∀ n, (P11682089340448540069.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P15370415500038032242

`∩[A215103(n+1), A215276(n+1)]`
-/

namespace A215168.P15370415500038032242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P15370415500038032242

namespace A215168

/-- `∩[A215103(n+1), A215276(n+1)]` -/
def P15370415500038032242.Spec : Prop :=
  ∀ n, (P15370415500038032242.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P13425779885870082065

`∩[A215155(n+1), A215276(n+1)]`
-/

namespace A215168.P13425779885870082065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P13425779885870082065

namespace A215168

/-- `∩[A215155(n+1), A215276(n+1)]` -/
def P13425779885870082065.Spec : Prop :=
  ∀ n, (P13425779885870082065.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P6219860223389536511

`∩[A215211(n+1), A215276(n+1)]`
-/

namespace A215168.P6219860223389536511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P6219860223389536511

namespace A215168

/-- `∩[A215211(n+1), A215276(n+1)]` -/
def P6219860223389536511.Spec : Prop :=
  ∀ n, (P6219860223389536511.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P17702714444836419550

`∩[A215215(n+1), A215276(n+1)]`
-/

namespace A215168.P17702714444836419550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P17702714444836419550

namespace A215168

/-- `∩[A215215(n+1), A215276(n+1)]` -/
def P17702714444836419550.Spec : Prop :=
  ∀ n, (P17702714444836419550.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P13250129556041610784

`∩[A215276(n+1), A215307(n+1)]`
-/

namespace A215168.P13250129556041610784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P13250129556041610784

namespace A215168

/-- `∩[A215276(n+1), A215307(n+1)]` -/
def P13250129556041610784.Spec : Prop :=
  ∀ n, (P13250129556041610784.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P10145349057145275752

`∩[A215103(n+1), A215428(n+1)]`
-/

namespace A215168.P10145349057145275752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P10145349057145275752

namespace A215168

/-- `∩[A215103(n+1), A215428(n+1)]` -/
def P10145349057145275752.Spec : Prop :=
  ∀ n, (P10145349057145275752.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P8627270709194104809

`∩[A215211(n+1), A215428(n+1)]`
-/

namespace A215168.P8627270709194104809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P8627270709194104809

namespace A215168

/-- `∩[A215211(n+1), A215428(n+1)]` -/
def P8627270709194104809.Spec : Prop :=
  ∀ n, (P8627270709194104809.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P15436731661726206613

`∩[A215211(n+1), A215311(n+1)]`
-/

namespace A215168.P15436731661726206613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P15436731661726206613

namespace A215168

/-- `∩[A215211(n+1), A215311(n+1)]` -/
def P15436731661726206613.Spec : Prop :=
  ∀ n, (P15436731661726206613.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P9105772710064276748

`∩[A215103(n+1), A215424(n+1)]`
-/

namespace A215168.P9105772710064276748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P9105772710064276748

namespace A215168

/-- `∩[A215103(n+1), A215424(n+1)]` -/
def P9105772710064276748.Spec : Prop :=
  ∀ n, (P9105772710064276748.a n : ℤ) = A215168 (n + 1)

end A215168

/-! ## A215168.P6635209842708387416

`∩[A215319(n+1), A215211(n+1)]`
-/

namespace A215168.P6635209842708387416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215168.P6635209842708387416

namespace A215168

/-- `∩[A215319(n+1), A215211(n+1)]` -/
def P6635209842708387416.Spec : Prop :=
  ∀ n, (P6635209842708387416.a n : ℤ) = A215168 (n + 1)

end A215168

/-!
# A215169: Primes congruent to {2, 5} mod 17.

The programs for A215169, the canonical program `A215169.P6984535108480389464` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215169 has offset 1).

The definition of A215169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215169.P6984535108480389464

`∪[A138623(n+1), A140544(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215169

/-- `∪[A138623(n+1), A140544(n+1)]` -/
def P6984535108480389464.Spec : Prop :=
  ∀ n, (P6984535108480389464.a n : ℤ) = A215169 (n + 1)

theorem P6984535108480389464.correct : P6984535108480389464.Spec := by
  intro n
  simp only [A215169, Nat.add_sub_cancel]

end A215169

/-! ## A215169.P17585558584424726177

`p?[a(n-2)+17]` with `a(0)=2, a(1)=5`
-/

namespace A215169.P17585558584424726177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 2) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215169.P17585558584424726177

namespace A215169

/-- `p?[a(n-2)+17]` -/
def P17585558584424726177.Spec : Prop :=
  ∀ n, (P17585558584424726177.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P622468689382094365

`∩[A215104(n+1), A215212(n+1)]`
-/

namespace A215169.P622468689382094365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P622468689382094365

namespace A215169

/-- `∩[A215104(n+1), A215212(n+1)]` -/
def P622468689382094365.Spec : Prop :=
  ∀ n, (P622468689382094365.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P7328112171458159036

`∩[A215104(n+1), A215273(n+1)]`
-/

namespace A215169.P7328112171458159036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P7328112171458159036

namespace A215169

/-- `∩[A215104(n+1), A215273(n+1)]` -/
def P7328112171458159036.Spec : Prop :=
  ∀ n, (P7328112171458159036.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P6628543154827143498

`∩[A215212(n+1), A215273(n+1)]`
-/

namespace A215169.P6628543154827143498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P6628543154827143498

namespace A215169

/-- `∩[A215212(n+1), A215273(n+1)]` -/
def P6628543154827143498.Spec : Prop :=
  ∀ n, (P6628543154827143498.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P14557719160193122824

`∩[A215156(n+1), A215273(n+1)]`
-/

namespace A215169.P14557719160193122824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P14557719160193122824

namespace A215169

/-- `∩[A215156(n+1), A215273(n+1)]` -/
def P14557719160193122824.Spec : Prop :=
  ∀ n, (P14557719160193122824.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P1138201007445481243

`∩[A215104(n+1), A215277(n+1)]`
-/

namespace A215169.P1138201007445481243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P1138201007445481243

namespace A215169

/-- `∩[A215104(n+1), A215277(n+1)]` -/
def P1138201007445481243.Spec : Prop :=
  ∀ n, (P1138201007445481243.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P18131524433175165754

`∩[A215156(n+1), A215277(n+1)]`
-/

namespace A215169.P18131524433175165754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P18131524433175165754

namespace A215169

/-- `∩[A215156(n+1), A215277(n+1)]` -/
def P18131524433175165754.Spec : Prop :=
  ∀ n, (P18131524433175165754.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P7494659384252588832

`∩[A215212(n+1), A215277(n+1)]`
-/

namespace A215169.P7494659384252588832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P7494659384252588832

namespace A215169

/-- `∩[A215212(n+1), A215277(n+1)]` -/
def P7494659384252588832.Spec : Prop :=
  ∀ n, (P7494659384252588832.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P2305298236813611665

`∩[A215273(n+1), A215277(n+1)]`
-/

namespace A215169.P2305298236813611665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P2305298236813611665

namespace A215169

/-- `∩[A215273(n+1), A215277(n+1)]` -/
def P2305298236813611665.Spec : Prop :=
  ∀ n, (P2305298236813611665.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P1365209763731077490

`∩[A215212(n+1), A215308(n+1)]`
-/

namespace A215169.P1365209763731077490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P1365209763731077490

namespace A215169

/-- `∩[A215212(n+1), A215308(n+1)]` -/
def P1365209763731077490.Spec : Prop :=
  ∀ n, (P1365209763731077490.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P14877057705670496650

`∩[A215212(n+1), A215316(n+1)]`
-/

namespace A215169.P14877057705670496650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P14877057705670496650

namespace A215169

/-- `∩[A215212(n+1), A215316(n+1)]` -/
def P14877057705670496650.Spec : Prop :=
  ∀ n, (P14877057705670496650.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P9464812459398689774

`∩[A215212(n+1), A215356(n+1)]`
-/

namespace A215169.P9464812459398689774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P9464812459398689774

namespace A215169

/-- `∩[A215212(n+1), A215356(n+1)]` -/
def P9464812459398689774.Spec : Prop :=
  ∀ n, (P9464812459398689774.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P9528505551873051450

`∩[A215212(n+1), A215372(n+1)]`
-/

namespace A215169.P9528505551873051450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P9528505551873051450

namespace A215169

/-- `∩[A215212(n+1), A215372(n+1)]` -/
def P9528505551873051450.Spec : Prop :=
  ∀ n, (P9528505551873051450.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P15292835422584363498

`∩[A215273(n+1), A215316(n+1)]`
-/

namespace A215169.P15292835422584363498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P15292835422584363498

namespace A215169

/-- `∩[A215273(n+1), A215316(n+1)]` -/
def P15292835422584363498.Spec : Prop :=
  ∀ n, (P15292835422584363498.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P10710586647023842956

`∩[A215161(n+1), A215273(n+1)]`
-/

namespace A215169.P10710586647023842956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P10710586647023842956

namespace A215169

/-- `∩[A215161(n+1), A215273(n+1)]` -/
def P10710586647023842956.Spec : Prop :=
  ∀ n, (P10710586647023842956.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P11519408440212301439

`∩[A215161(n+1), A215277(n+1)]`
-/

namespace A215169.P11519408440212301439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P11519408440212301439

namespace A215169

/-- `∩[A215161(n+1), A215277(n+1)]` -/
def P11519408440212301439.Spec : Prop :=
  ∀ n, (P11519408440212301439.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P11425305115300026211

`∩[A215212(n+1), A215312(n+1)]`
-/

namespace A215169.P11425305115300026211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P11425305115300026211

namespace A215169

/-- `∩[A215212(n+1), A215312(n+1)]` -/
def P11425305115300026211.Spec : Prop :=
  ∀ n, (P11425305115300026211.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P16752864286070080263

`∩[A215212(n+1), A215320(n+1)]`
-/

namespace A215169.P16752864286070080263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P16752864286070080263

namespace A215169

/-- `∩[A215212(n+1), A215320(n+1)]` -/
def P16752864286070080263.Spec : Prop :=
  ∀ n, (P16752864286070080263.a n : ℤ) = A215169 (n + 1)

end A215169

/-! ## A215169.P3774416488246185664

`∩[A215104(n+1), A215425(n+1)]`
-/

namespace A215169.P3774416488246185664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215169.P3774416488246185664

namespace A215169

/-- `∩[A215104(n+1), A215425(n+1)]` -/
def P3774416488246185664.Spec : Prop :=
  ∀ n, (P3774416488246185664.a n : ℤ) = A215169 (n + 1)

end A215169

/-!
# A215170: Primes congruent to {2, 5} mod 19.

The programs for A215170, the canonical program `A215170.P16196430733042655435` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215170 has offset 1).

The definition of A215170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215170.P16196430733042655435

`∪[A102851(n+1), A141869(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215170

/-- `∪[A102851(n+1), A141869(n+1)]` -/
def P16196430733042655435.Spec : Prop :=
  ∀ n, (P16196430733042655435.a n : ℤ) = A215170 (n + 1)

theorem P16196430733042655435.correct : P16196430733042655435.Spec := by
  intro n
  simp only [A215170, Nat.add_sub_cancel]

end A215170

/-! ## A215170.P2695476954016527071

`p?[a(n-2)+19]` with `a(0)=2, a(1)=5`
-/

namespace A215170.P2695476954016527071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215170.P2695476954016527071

namespace A215170

/-- `p?[a(n-2)+19]` -/
def P2695476954016527071.Spec : Prop :=
  ∀ n, (P2695476954016527071.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P6647746873802119539

`∩[A215213(n+1), A215274(n+1)]`
-/

namespace A215170.P6647746873802119539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P6647746873802119539

namespace A215170

/-- `∩[A215213(n+1), A215274(n+1)]` -/
def P6647746873802119539.Spec : Prop :=
  ∀ n, (P6647746873802119539.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P12508717493069291941

`∩[A215105(n+1), A215213(n+1)]`
-/

namespace A215170.P12508717493069291941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P12508717493069291941

namespace A215170

/-- `∩[A215105(n+1), A215213(n+1)]` -/
def P12508717493069291941.Spec : Prop :=
  ∀ n, (P12508717493069291941.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P3372758947545270561

`∩[A215105(n+1), A215274(n+1)]`
-/

namespace A215170.P3372758947545270561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P3372758947545270561

namespace A215170

/-- `∩[A215105(n+1), A215274(n+1)]` -/
def P3372758947545270561.Spec : Prop :=
  ∀ n, (P3372758947545270561.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P16506339171348295057

`∩[A215105(n+1), A215278(n+1)]`
-/

namespace A215170.P16506339171348295057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P16506339171348295057

namespace A215170

/-- `∩[A215105(n+1), A215278(n+1)]` -/
def P16506339171348295057.Spec : Prop :=
  ∀ n, (P16506339171348295057.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P8104015061958280388

`∩[A215213(n+1), A215278(n+1)]`
-/

namespace A215170.P8104015061958280388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P8104015061958280388

namespace A215170

/-- `∩[A215213(n+1), A215278(n+1)]` -/
def P8104015061958280388.Spec : Prop :=
  ∀ n, (P8104015061958280388.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P17402212697867552683

`∩[A215274(n+1), A215278(n+1)]`
-/

namespace A215170.P17402212697867552683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P17402212697867552683

namespace A215170

/-- `∩[A215274(n+1), A215278(n+1)]` -/
def P17402212697867552683.Spec : Prop :=
  ∀ n, (P17402212697867552683.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P1403046202445416486

`∩[A215213(n+1), A215309(n+1)]`
-/

namespace A215170.P1403046202445416486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P1403046202445416486

namespace A215170

/-- `∩[A215213(n+1), A215309(n+1)]` -/
def P1403046202445416486.Spec : Prop :=
  ∀ n, (P1403046202445416486.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P9638771104037637363

`∩[A215213(n+1), A215373(n+1)]`
-/

namespace A215170.P9638771104037637363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P9638771104037637363

namespace A215170

/-- `∩[A215213(n+1), A215373(n+1)]` -/
def P9638771104037637363.Spec : Prop :=
  ∀ n, (P9638771104037637363.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P2901531151988885684

`∩[A215157(n+1), A215274(n+1)]`
-/

namespace A215170.P2901531151988885684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P2901531151988885684

namespace A215170

/-- `∩[A215157(n+1), A215274(n+1)]` -/
def P2901531151988885684.Spec : Prop :=
  ∀ n, (P2901531151988885684.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P14342484223427137275

`∩[A215157(n+1), A215278(n+1)]`
-/

namespace A215170.P14342484223427137275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P14342484223427137275

namespace A215170

/-- `∩[A215157(n+1), A215278(n+1)]` -/
def P14342484223427137275.Spec : Prop :=
  ∀ n, (P14342484223427137275.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P8018131063072445927

`∩[A215213(n+1), A215317(n+1)]`
-/

namespace A215170.P8018131063072445927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P8018131063072445927

namespace A215170

/-- `∩[A215213(n+1), A215317(n+1)]` -/
def P8018131063072445927.Spec : Prop :=
  ∀ n, (P8018131063072445927.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P10540000906001805912

`∩[A215213(n+1), A215357(n+1)]`
-/

namespace A215170.P10540000906001805912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P10540000906001805912

namespace A215170

/-- `∩[A215213(n+1), A215357(n+1)]` -/
def P10540000906001805912.Spec : Prop :=
  ∀ n, (P10540000906001805912.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P3747527436332363086

`∩[A215274(n+1), A215317(n+1)]`
-/

namespace A215170.P3747527436332363086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P3747527436332363086

namespace A215170

/-- `∩[A215274(n+1), A215317(n+1)]` -/
def P3747527436332363086.Spec : Prop :=
  ∀ n, (P3747527436332363086.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P13202462819262207107

`∩[A215105(n+1), A215426(n+1)]`
-/

namespace A215170.P13202462819262207107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P13202462819262207107

namespace A215170

/-- `∩[A215105(n+1), A215426(n+1)]` -/
def P13202462819262207107.Spec : Prop :=
  ∀ n, (P13202462819262207107.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P8742607302653707425

`∩[A215157(n+1), A215426(n+1)]`
-/

namespace A215170.P8742607302653707425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P8742607302653707425

namespace A215170

/-- `∩[A215157(n+1), A215426(n+1)]` -/
def P8742607302653707425.Spec : Prop :=
  ∀ n, (P8742607302653707425.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P16646131144024719664

`∩[A215213(n+1), A215321(n+1)]`
-/

namespace A215170.P16646131144024719664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P16646131144024719664

namespace A215170

/-- `∩[A215213(n+1), A215321(n+1)]` -/
def P16646131144024719664.Spec : Prop :=
  ∀ n, (P16646131144024719664.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P7084970633926900539

`∩[A215213(n+1), A215313(n+1)]`
-/

namespace A215170.P7084970633926900539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P7084970633926900539

namespace A215170

/-- `∩[A215213(n+1), A215313(n+1)]` -/
def P7084970633926900539.Spec : Prop :=
  ∀ n, (P7084970633926900539.a n : ℤ) = A215170 (n + 1)

end A215170

/-! ## A215170.P13648554385541319107

`∩[A215162(n+1), A215274(n+1)]`
-/

namespace A215170.P13648554385541319107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215170.P13648554385541319107

namespace A215170

/-- `∩[A215162(n+1), A215274(n+1)]` -/
def P13648554385541319107.Spec : Prop :=
  ∀ n, (P13648554385541319107.a n : ℤ) = A215170 (n + 1)

end A215170

/-!
# A215172: a(0)=1, a(n) = a(n-1)*4^n + 2^n - 1. That is, add n 0's and n 1's to the binary representation of previous term.

The programs for A215172, the canonical program `A215172.P11172591307289213110` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215172 has offset 0).

The definition of A215172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*4^n+2^n-1` (program `A215172.P11172591307289213110`, by `A215172.P11172591307289213110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215172.P11172591307289213110

`a(n-1)*4^n+2^n-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215172

/-- `a(n-1)*4^n+2^n-1` -/
def P11172591307289213110.Spec : Prop :=
  ∀ n, P11172591307289213110.a n = A215172 n

theorem P11172591307289213110.correct : P11172591307289213110.Spec := by
  intro n
  simp only [A215172]

end A215172

/-! ## A215172.P9185839652613699839

`or(4^n*a(n-1), 2^n)-1` with `a(0)=1`
-/

namespace A215172.P9185839652613699839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor ((4 ^ n : ℤ) * a (n - 1)) (2 ^ n : ℤ) - 1

end

end A215172.P9185839652613699839

namespace A215172

/-- `or(4^n*a(n-1), 2^n)-1` -/
def P9185839652613699839.Spec : Prop :=
  ∀ n, P9185839652613699839.a n = A215172 n

end A215172

/-! ## A215172.P10738280593858238795

`xor(2^n, lcm(4^n, a(n-1)))-1` with `a(0)=1`
-/

namespace A215172.P10738280593858238795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor (2 ^ n) (Int.lcm (4 ^ n : ℤ) (a (n - 1))) : ℤ) - 1

end

end A215172.P10738280593858238795

namespace A215172

/-- `xor(2^n, lcm(4^n, a(n-1)))-1` -/
def P10738280593858238795.Spec : Prop :=
  ∀ n, P10738280593858238795.a n = A215172 n

end A215172

/-! ## A215172.P15183040356067786220

`A000225(n)+A000079(n)²*a(n-1)` with `a(0)=1`
-/

namespace A215172.P15183040356067786220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 n + A000079 n ^ 2 * a (n - 1)

end

end A215172.P15183040356067786220

namespace A215172

/-- `A000225(n)+A000079(n)²*a(n-1)` -/
def P15183040356067786220.Spec : Prop :=
  ∀ n, P15183040356067786220.a n = A215172 n

end A215172

/-!
# A215173: Numbers k such that k and k+1 are both of the form p*q^3 where p and q are distinct primes.

The programs for A215173, the canonical program `A215173.P7644619850736860119` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215173 has offset 1).

The definition of A215173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215173.P7644619850736860119

`∩[A335328(n+1), A348098(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A215173

/-- `∩[A335328(n+1), A348098(n+1)]` -/
def P7644619850736860119.Spec : Prop :=
  ∀ n, (P7644619850736860119.a n : ℤ) = A215173 (n + 1)

theorem P7644619850736860119.correct : P7644619850736860119.Spec := by
  intro n
  simp only [A215173, Nat.add_sub_cancel]

end A215173

/-! ## A215173.P6923704022992995909

`∩[A065036(n+1)-1, A065036(n+1)]`
-/

namespace A215173.P6923704022992995909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P6923704022992995909

namespace A215173

/-- `∩[A065036(n+1)-1, A065036(n+1)]` -/
def P6923704022992995909.Spec : Prop :=
  ∀ n, (P6923704022992995909.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P14282589474999298936

`∩[A297401(n+1)-1, A297401(n+1)]`
-/

namespace A215173.P14282589474999298936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P14282589474999298936

namespace A215173

/-- `∩[A297401(n+1)-1, A297401(n+1)]` -/
def P14282589474999298936.Spec : Prop :=
  ∀ n, (P14282589474999298936.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P6760980163470715809

`∩[A307682(n+1)-1, A307682(n+1)]`
-/

namespace A215173.P6760980163470715809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P6760980163470715809

namespace A215173

/-- `∩[A307682(n+1)-1, A307682(n+1)]` -/
def P6760980163470715809.Spec : Prop :=
  ∀ n, (P6760980163470715809.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P6726100568250415046

`∩[A068140(n+1), A274357(n+1)]`
-/

namespace A215173.P6726100568250415046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P6726100568250415046

namespace A215173

/-- `∩[A068140(n+1), A274357(n+1)]` -/
def P6726100568250415046.Spec : Prop :=
  ∀ n, (P6726100568250415046.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P7209583568887470346

`∩[A176313(n+1), A274357(n+1)]`
-/

namespace A215173.P7209583568887470346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P7209583568887470346

namespace A215173

/-- `∩[A176313(n+1), A274357(n+1)]` -/
def P7209583568887470346.Spec : Prop :=
  ∀ n, (P7209583568887470346.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P11935756224514234643

`∩[A274357(n+1), A335328(n+1)]`
-/

namespace A215173.P11935756224514234643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P11935756224514234643

namespace A215173

/-- `∩[A274357(n+1), A335328(n+1)]` -/
def P11935756224514234643.Spec : Prop :=
  ∀ n, (P11935756224514234643.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P11930314289266714730

`∩[A274357(n+1), A342189(n+1)]`
-/

namespace A215173.P11930314289266714730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P11930314289266714730

namespace A215173

/-- `∩[A274357(n+1), A342189(n+1)]` -/
def P11930314289266714730.Spec : Prop :=
  ∀ n, (P11930314289266714730.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P4681731785690367782

`∩[A274357(n+1), A348098(n+1)]`
-/

namespace A215173.P4681731785690367782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P4681731785690367782

namespace A215173

/-- `∩[A274357(n+1), A348098(n+1)]` -/
def P4681731785690367782.Spec : Prop :=
  ∀ n, (P4681731785690367782.a n : ℤ) = A215173 (n + 1)

end A215173

/-! ## A215173.P5294573044169900917

`∩[A274357(n+1), A349307(n+1)]`
-/

namespace A215173.P5294573044169900917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P5294573044169900917

namespace A215173

/-- `∩[A274357(n+1), A349307(n+1)]` -/
def P5294573044169900917.Spec : Prop :=
  ∀ n, (P5294573044169900917.a n : ℤ) = A215173 (n + 1)

end A215173

/-!
# A215175: a(2*n) = A214297(n), a(2*n+1) = A000290(n).

The programs for A215175, the canonical program `A215175.P279961201682932440` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215175 has offset 0).

The definition of A215175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215175.P279961201682932440

`A214297(A026741(n))-A123108(A093178(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A215175

/-- `A214297(A026741(n))-A123108(A093178(n))` -/
def P279961201682932440.Spec : Prop :=
  ∀ n, P279961201682932440.a n = A215175 n

theorem P279961201682932440.correct : P279961201682932440.Spec := by
  intro n
  simp only [A215175]

end A215175

/-!
# A215176: Number of nXnXn triangular 0..2 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215176, there is no canonical definition to state claims against.
-/

/-! ## A215176.P7202453799640828032

`3-(2-a(n-1))*A065033(n)` with `a(0)=3`
-/

namespace A215176.P7202453799640828032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - (2 - a (n - 1)) * A065033 n

end

end A215176.P7202453799640828032

/-! ## A215176.P239890785484709443

`A215182(∑[n+2])`
-/

namespace A215176.P239890785484709443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215176.P239890785484709443

/-! ## A215176.P7857469256328728086

`record[A215182(A000096(A328902(n)))]`
-/

namespace A215176.P7857469256328728086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000096 (A328902 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215176.P7857469256328728086

/-! ## A215176.P15195818871807243183

`record[A215182(A000096(A320117(n+1)))]`
-/

namespace A215176.P15195818871807243183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000096 (A320117 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215176.P15195818871807243183

/-! ## A215176.P4142304774182729160

`record[A215182(A000096(A331296(n+1)))]`
-/

namespace A215176.P4142304774182729160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000096 (A331296 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215176.P4142304774182729160

/-!
# A215177: Number of nXnXn triangular 0..3 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215177, there is no canonical definition to state claims against.
-/

/-! ## A215177.P9965492174992545428

`A215182(∑[n+3]+1)`
-/

namespace A215177.P9965492174992545428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215177.P9965492174992545428

/-! ## A215177.P207235293637783279

`lcm(2, A215182(A034856(n+2)))`
-/

namespace A215177.P207235293637783279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A215182 (A034856 (n + 2)).toNat)

end

end A215177.P207235293637783279

/-!
# A215178: Number of nXnXn triangular 0..4 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215178, there is no canonical definition to state claims against.
-/

/-! ## A215178.P12830702012617159970

`A215182(A141214(n+1))`
-/

namespace A215178.P12830702012617159970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A141214 (n + 1)).toNat

end

end A215178.P12830702012617159970

/-! ## A215178.P2090320351442369863

`A215182(A055998(n+2))`
-/

namespace A215178.P2090320351442369863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A055998 (n + 2)).toNat

end

end A215178.P2090320351442369863

/-! ## A215178.P9457960625827992154

`A215182(A056000(n)+7)`
-/

namespace A215178.P9457960625827992154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A056000 n + 7).toNat

end

end A215178.P9457960625827992154

/-! ## A215178.P14944670329688731796

`A215182(eq[2, A152157(n)])`
-/

namespace A215178.P14944670329688731796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215178.P14944670329688731796

/-! ## A215178.P2117630327598864314

`A215182(eq[3, A193592(n)])`
-/

namespace A215178.P2117630327598864314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215178.P2117630327598864314

/-!
# A215179: Number of nXnXn triangular 0..5 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215179, there is no canonical definition to state claims against.
-/

/-! ## A215179.P17351619805866836588

`A215182(Δ[A264443(n)])`
-/

namespace A215179.P17351619805866836588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (f1 (n + 1) - f1 n).toNat

end

end A215179.P17351619805866836588

/-! ## A215179.P9714923303929985911

`A215182(A056115(n)+11)`
-/

namespace A215179.P9714923303929985911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A056115 n + 11).toNat

end

end A215179.P9714923303929985911

/-! ## A215179.P17820156876107217139

`A215182(eq[3, A152157(n)])`
-/

namespace A215179.P17820156876107217139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215179.P17820156876107217139

/-! ## A215179.P10306080015355162568

`A215182(eq[4, A193592(n)])`
-/

namespace A215179.P10306080015355162568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215179.P10306080015355162568

/-! ## A215179.P22517981260080313

`A215182(eq[8, A166065(n)])`
-/

namespace A215179.P22517981260080313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215179.P22517981260080313

/-!
# A215180: Number of nXnXn triangular 0..6 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215180, there is no canonical definition to state claims against.
-/

/-! ## A215180.P8387652020324384616

`A215182(A052905(n+3))`
-/

namespace A215180.P8387652020324384616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A052905 (n + 3)).toNat

end

end A215180.P8387652020324384616

/-! ## A215180.P6037662921450938624

`A215182(A302537(n)+15)`
-/

namespace A215180.P6037662921450938624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A302537 n + 15).toNat

end

end A215180.P6037662921450938624

/-! ## A215180.P4558844569412515080

`A215182(eq[3, A219347(n)])`
-/

namespace A215180.P4558844569412515080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215180.P4558844569412515080

/-! ## A215180.P17869432257001376091

`A215182(eq[5, A193592(n)])`
-/

namespace A215180.P17869432257001376091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215180.P17869432257001376091

/-! ## A215180.P280169702902960782

`A215182(eq[8, A185782(n+1)])`
-/

namespace A215180.P280169702902960782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215180.P280169702902960782

/-!
# A215181: Number of nXnXn triangular 0..7 arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215181, there is no canonical definition to state claims against.
-/

/-! ## A215181.P1755317755382392945

`A215182(eq[4, A219347(n)])`
-/

namespace A215181.P1755317755382392945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215181.P1755317755382392945

/-! ## A215181.P489633071346085514

`A215182(eq[6, A193592(n)])`
-/

namespace A215181.P489633071346085514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215181.P489633071346085514

/-! ## A215181.P9378176217900028239

`A215182(A000124(n+7)-7)`
-/

namespace A215181.P9378176217900028239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000124 (n + 7) - 7).toNat

end

end A215181.P9378176217900028239

/-! ## A215181.P7844053548795234062

`A215182(eq[10, A185782(n+1)])`
-/

namespace A215181.P7844053548795234062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215181.P7844053548795234062

/-! ## A215181.P7168915484180168848

`A215182(eq[32, A057728(n+1)])`
-/

namespace A215181.P7168915484180168848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215181.P7168915484180168848

/-!
# A215182: T(n,k)=Number of nXnXn triangular 0..k arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215182, there is no canonical definition to state claims against.
-/

/-! ## A215182.P4136443774301476562

`A214906(n+1)-A122203(A185144(n))`
-/

namespace A215182.P4136443774301476562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214906 (n + 1) - A122203 (A185144 n).toNat

end

end A215182.P4136443774301476562

/-! ## A215182.P1816868746455920294

`A226029(A368493(n+1))+1`
-/

namespace A215182.P1816868746455920294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A368493 (n + 1)).toNat + 1

end

end A215182.P1816868746455920294

/-! ## A215182.P10379572912751762561

`A096143(A269336(n+2))+1`
-/

namespace A215182.P10379572912751762561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (A269336 (n + 2)).toNat + 1

end

end A215182.P10379572912751762561

/-! ## A215182.P5103566830774992027

`A208777(n+1)+A156264(A156234(n))`
-/

namespace A215182.P5103566830774992027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) + A156264 (A156234 n).toNat

end

end A215182.P5103566830774992027

/-!
# A215183: Number of 3 X 3 X 3 triangular 0..n arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215183, the canonical program `A215183.P5644732378568025751` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215183 has offset 1).

The definition of A215183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215183.P5644732378568025751

`2*a(n-1)-3*a(n-4)+3*a(n-6)-2*a(n-9)+a(n-10)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=22, a(4)=38, a(5)=64, a(6)=98, a(7)=145, a(8)=210, a(9)=291`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215183

/-- `2*a(n-1)-3*a(n-4)+3*a(n-6)-2*a(n-9)+a(n-10)` -/
def P5644732378568025751.Spec : Prop :=
  ∀ n, P5644732378568025751.a n = A215183 (n + 1)

theorem P5644732378568025751.correct : P5644732378568025751.Spec := by
  intro n
  simp only [A215183, Nat.add_sub_cancel]

end A215183

/-! ## A215183.P2200682569796989506

`Δ[A001753(n)]-∑[A225566(n+1)]`
-/

namespace A215183.P2200682569796989506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A215183.P2200682569796989506

namespace A215183

/-- `Δ[A001753(n)]-∑[A225566(n+1)]` -/
def P2200682569796989506.Spec : Prop :=
  ∀ n, P2200682569796989506.a n = A215183 (n + 1)

end A215183

/-! ## A215183.P10733645510903676587

`A001752(n+1)-∑[A225566(n+1)]`
-/

namespace A215183.P10733645510903676587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215183.P10733645510903676587

namespace A215183

/-- `A001752(n+1)-∑[A225566(n+1)]` -/
def P10733645510903676587.Spec : Prop :=
  ∀ n, P10733645510903676587.a n = A215183 (n + 1)

end A215183

/-! ## A215183.P10614623441125262072

`A215182(∑[n+2]+4)`
-/

namespace A215183.P10614623441125262072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215183.P10614623441125262072

namespace A215183

/-- `A215182(∑[n+2]+4)` -/
def P10614623441125262072.Spec : Prop :=
  ∀ n, P10614623441125262072.a n = A215183 (n + 1)

end A215183

/-! ## A215183.P4708019854111942847

`A215182(A167614(n+1))+A025444(n)`
-/

namespace A215183.P4708019854111942847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167614 (n + 1)).toNat + A025444 n

end

end A215183.P4708019854111942847

namespace A215183

/-- `A215182(A167614(n+1))+A025444(n)` -/
def P4708019854111942847.Spec : Prop :=
  ∀ n, P4708019854111942847.a n = A215183 (n + 1)

end A215183

/-!
# A215184: Number of 4 X 4 X 4 triangular 0..n arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215184, there is no canonical definition to state claims against.
-/

/-! ## A215184.P8271602543192781654

`A215182(A141214(n)+7)`
-/

namespace A215184.P8271602543192781654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A141214 n + 7).toNat

end

end A215184.P8271602543192781654

/-! ## A215184.P16964207138260777927

`A215182(A052905(n)+9)`
-/

namespace A215184.P16964207138260777927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A052905 n + 9).toNat

end

end A215184.P16964207138260777927

/-! ## A215184.P11190198555291360730

`A215182(A055999(n)+10)`
-/

namespace A215184.P11190198555291360730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A055999 n + 10).toNat

end

end A215184.P11190198555291360730

/-! ## A215184.P5260564908890935175

`A215182(A167614(n+2)+1)`
-/

namespace A215184.P5260564908890935175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167614 (n + 2) + 1).toNat

end

end A215184.P5260564908890935175

/-! ## A215184.P10613965310420809360

`A215182(A166136(n+2)-2)`
-/

namespace A215184.P10613965310420809360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A166136 (n + 2) - 2).toNat

end

end A215184.P10613965310420809360

/-!
# A215185: Number of 5X5X5 triangular 0..n arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215185, there is no canonical definition to state claims against.
-/

/-! ## A215185.P4186652238719666261

`A215182(A167499(n+3))`
-/

namespace A215185.P4186652238719666261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167499 (n + 3)).toNat

end

end A215185.P4186652238719666261

/-! ## A215185.P1519371191047954272

`A215182(A155212(n)+13)`
-/

namespace A215185.P1519371191047954272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A155212 n + 13).toNat

end

end A215185.P1519371191047954272

/-! ## A215185.P2292267653216093940

`A215182(A056000(n)+15)`
-/

namespace A215185.P2292267653216093940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A056000 n + 15).toNat

end

end A215185.P2292267653216093940

/-! ## A215185.P1970684682353916480

`A215182(A167614(n+3)+2)`
-/

namespace A215185.P1970684682353916480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167614 (n + 3) + 2).toNat

end

end A215185.P1970684682353916480

/-! ## A215185.P9598305126562122998

`A215182(A055999(n+1)+11)`
-/

namespace A215185.P9598305126562122998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A055999 (n + 1) + 11).toNat

end

end A215185.P9598305126562122998

/-!
# A215186: Number of 6X6X6 triangular 0..n arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215186, there is no canonical definition to state claims against.
-/

/-! ## A215186.P10045207509026752860

`A215182(A056115(n)+21)`
-/

namespace A215186.P10045207509026752860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A056115 n + 21).toNat

end

end A215186.P10045207509026752860

/-! ## A215186.P2645727403865099950

`A215182(A167487(n+4)-1)`
-/

namespace A215186.P2645727403865099950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167487 (n + 4) - 1).toNat

end

end A215186.P2645727403865099950

/-! ## A215186.P11526991078881350849

`A215182(A246172(n+1)+20)`
-/

namespace A215186.P11526991078881350849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A246172 (n + 1) + 20).toNat

end

end A215186.P11526991078881350849

/-! ## A215186.P3015786840181207940

`A215182(eq[7, A131818(n+1)])`
-/

namespace A215186.P3015786840181207940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215186.P3015786840181207940

/-! ## A215186.P655246498138269489

`A215182(A000124(n+6)-(n+1))`
-/

namespace A215186.P655246498138269489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A215186.P655246498138269489

/-!
# A215187: Number of 7X7X7 triangular 0..n arrays with every horizontal row nondecreasing, first elements of rows nonincreasing, last elements of rows nondecreasing, and every row having the same average value.

The programs for A215187, there is no canonical definition to state claims against.
-/

/-! ## A215187.P633538631791874628

`A215182(eq[11, A066657(n)])`
-/

namespace A215187.P633538631791874628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215187.P633538631791874628

/-! ## A215187.P1436361273131156688

`A215182(A166136(n+5)+1)`
-/

namespace A215187.P1436361273131156688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A166136 (n + 5) + 1).toNat

end

end A215187.P1436361273131156688

/-! ## A215187.P12424860983610030078

`A215182(A167499(n+5)+2)`
-/

namespace A215187.P12424860983610030078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A167499 (n + 5) + 2).toNat

end

end A215187.P12424860983610030078

/-! ## A215187.P8007890292680177891

`A215182(A000124(n+6)+6)`
-/

namespace A215187.P8007890292680177891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (A000124 (n + 6) + 6).toNat

end

end A215187.P8007890292680177891

/-! ## A215187.P7175759678345307498

`A215182(eq[6, A002262(n)]+1)`
-/

namespace A215187.P7175759678345307498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A215187.P7175759678345307498

/-!
# A215188: E.g.f.: A(x) = x + sinh(A(x)^2).

The programs for A215188, there is no canonical definition to state claims against.
-/

/-! ## A215188.P11310767487752947466

`abs(A236357(record[A222210(n)]))`
-/

namespace A215188.P11310767487752947466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A215188.P11310767487752947466

/-! ## A215188.P8998014586174174505

`abs(A236357(A032555(n+1)))`
-/

namespace A215188.P8998014586174174505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236357 (A032555 (n + 1)).toNat|

end

end A215188.P8998014586174174505

/-! ## A215188.P6077213882335465204

`abs(A236357(A032559(n+1)))`
-/

namespace A215188.P6077213882335465204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236357 (A032559 (n + 1)).toNat|

end

end A215188.P6077213882335465204

/-! ## A215188.P1603737212830495151

`abs(A236357(A061219(n+1)))`
-/

namespace A215188.P1603737212830495151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236357 (A061219 (n + 1)).toNat|

end

end A215188.P1603737212830495151

/-! ## A215188.P14866746012982572477

`abs(A236357(A094280(n+1)))`
-/

namespace A215188.P14866746012982572477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236357 (A094280 (n + 1)).toNat|

end

end A215188.P14866746012982572477

/-!
# A215189: Array t(n,k) of the family ((n+k)/gcd(n+k,4))*(n/gcd(n,4)), read by antidiagonals.

The programs for A215189, there is no canonical definition to state claims against.
-/

/-! ## A215189.P241781406255001390

`A106617(A091435(n))%∑[A031285(n)]`
-/

namespace A215189.P241781406255001390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106617 (A091435 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215189.P241781406255001390

/-! ## A215189.P9911828822111171306

`A106617(A091435(n)%A114200(n+1))`
-/

namespace A215189.P9911828822111171306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (Int.tmod (A091435 n) (A114200 (n + 1))).toNat

end

end A215189.P9911828822111171306

/-! ## A215189.P480691071956256966

`A106617(A091435(n))+A005171(A162575(n+1))`
-/

namespace A215189.P480691071956256966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A091435 n).toNat + A005171 (A162575 (n + 1)).toNat

end

end A215189.P480691071956256966

/-! ## A215189.P6049692284059761383

`A106617(A000040(n+1)*A091435(n))/A000040(n+1)`
-/

namespace A215189.P6049692284059761383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106617 (A000040 (n + 1) * A091435 n).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A215189.P6049692284059761383

/-! ## A215189.P5909388045825342109

`A049716(A143565(n+1))-1`
-/

namespace A215189.P5909388045825342109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (A143565 (n + 1)).toNat - 1

end

end A215189.P5909388045825342109

/-!
# A215191: Number of arrays of 4 0..n integers with no sum of consecutive elements equal to a disjoint adjacent sum of an equal number of elements.

The programs for A215191, the canonical program `A215191.P15566652112843844808` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215191 has offset 1).

The definition of A215191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215191.P15566652112843844808

`∑[Δ[or(1, n^4)]+∑[2*n]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A215191

/-- `∑[Δ[or(1, n^4)]+∑[2*n]]` -/
def P15566652112843844808.Spec : Prop :=
  ∀ n, P15566652112843844808.a n = A215191 (n + 1)

theorem P15566652112843844808.correct : P15566652112843844808.Spec := by
  intro n
  simp only [A215191, Nat.add_sub_cancel]

end A215191

/-! ## A215191.P5665277797764048654

`∑[Δ[and(-2, n²²)]+n²+n]`
-/

namespace A215191.P5665277797764048654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215191.P5665277797764048654

namespace A215191

/-- `∑[Δ[and(-2, n²²)]+n²+n]` -/
def P5665277797764048654.Spec : Prop :=
  ∀ n, P5665277797764048654.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P16515289123075210860

`∑[A002378(n)+Δ[or(1, n^4)]]`
-/

namespace A215191.P16515289123075210860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215191.P16515289123075210860

namespace A215191

/-- `∑[A002378(n)+Δ[or(1, n^4)]]` -/
def P16515289123075210860.Spec : Prop :=
  ∀ n, P16515289123075210860.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P18428595021605487422

`2*(A191903(n)+A000292(n))`
-/

namespace A215191.P18428595021605487422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191903 n + A000292 n)

end

end A215191.P18428595021605487422

namespace A215191

/-- `2*(A191903(n)+A000292(n))` -/
def P18428595021605487422.Spec : Prop :=
  ∀ n, P18428595021605487422.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P1165019179924384783

`A167238(n+1)+A126423(n+1)`
-/

namespace A215191.P1165019179924384783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (n + 1) + A126423 (n + 1)

end

end A215191.P1165019179924384783

namespace A215191

/-- `A167238(n+1)+A126423(n+1)` -/
def P1165019179924384783.Spec : Prop :=
  ∀ n, P1165019179924384783.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P6355870792123555380

`2*(A213834(n+1)-A008619(n))`
-/

namespace A215191.P6355870792123555380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A213834 (n + 1) - A008619 n)

end

end A215191.P6355870792123555380

namespace A215191

/-- `2*(A213834(n+1)-A008619(n))` -/
def P6355870792123555380.Spec : Prop :=
  ∀ n, P6355870792123555380.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P18068702675320568546

`and(-2, ∑[A083364(A005843(n))])`
-/

namespace A215191.P18068702675320568546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083364 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215191.P18068702675320568546

namespace A215191

/-- `and(-2, ∑[A083364(A005843(n))])` -/
def P18068702675320568546.Spec : Prop :=
  ∀ n, P18068702675320568546.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P10885151691047375210

`∑[A083364(2*n)]-A059841(n)`
-/

namespace A215191.P10885151691047375210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083364 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059841 n

end

end A215191.P10885151691047375210

namespace A215191

/-- `∑[A083364(2*n)]-A059841(n)` -/
def P10885151691047375210.Spec : Prop :=
  ∀ n, P10885151691047375210.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P16412103635104187881

`∑[A004442((n+1)²)-(n+1)]+(n+1)²²`
-/

namespace A215191.P16412103635104187881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 1) ^ 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A215191.P16412103635104187881

namespace A215191

/-- `∑[A004442((n+1)²)-(n+1)]+(n+1)²²` -/
def P16412103635104187881.Spec : Prop :=
  ∀ n, P16412103635104187881.a n = A215191 (n + 1)

end A215191

/-! ## A215191.P18373143054133341523

`A108766(n)+A080335(A005563(n))`
-/

namespace A215191.P18373143054133341523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108766 n + A080335 (A005563 n).toNat

end

end A215191.P18373143054133341523

namespace A215191

/-- `A108766(n)+A080335(A005563(n))` -/
def P18373143054133341523.Spec : Prop :=
  ∀ n, P18373143054133341523.a n = A215191 (n + 1)

end A215191

/-!
# A215192: Number of arrays of 5 0..n integers with no sum of consecutive elements equal to a disjoint adjacent sum of an equal number of elements.

The programs for A215192, there is no canonical definition to state claims against.
-/

/-! ## A215192.P15249215325669436251

`A215190(A167499(n+3))`
-/

namespace A215192.P15249215325669436251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A167499 (n + 3)).toNat

end

end A215192.P15249215325669436251

/-! ## A215192.P18308528543552205453

`A215190(A155212(n)+13)`
-/

namespace A215192.P18308528543552205453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A155212 n + 13).toNat

end

end A215192.P18308528543552205453

/-! ## A215192.P9520741442064119999

`A215190(A056000(n)+15)`
-/

namespace A215192.P9520741442064119999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A056000 n + 15).toNat

end

end A215192.P9520741442064119999

/-! ## A215192.P17775013527576754473

`A215190(eq[7, A066657(n)])`
-/

namespace A215192.P17775013527576754473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215192.P17775013527576754473

/-! ## A215192.P7417336336752463178

`A215190(A166136(n+3)-1)`
-/

namespace A215192.P7417336336752463178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A166136 (n + 3) - 1).toNat

end

end A215192.P7417336336752463178

/-!
# A215193: Number of arrays of 6 0..n integers with no sum of consecutive elements equal to a disjoint adjacent sum of an equal number of elements.

The programs for A215193, there is no canonical definition to state claims against.
-/

/-! ## A215193.P17226474016103776494

`A215190(A056115(n)+21)`
-/

namespace A215193.P17226474016103776494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A056115 n + 21).toNat

end

end A215193.P17226474016103776494

/-! ## A215193.P7064921879995155281

`A215190(A167499(n+4)+1)`
-/

namespace A215193.P7064921879995155281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A167499 (n + 4) + 1).toNat

end

end A215193.P7064921879995155281

/-! ## A215193.P3082303762599287796

`A215190(A141214(n+2)+9)`
-/

namespace A215193.P3082303762599287796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A141214 (n + 2) + 9).toNat

end

end A215193.P3082303762599287796

/-! ## A215193.P15449689973708052019

`A215190(eq[7, A131818(n+1)])`
-/

namespace A215193.P15449689973708052019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215193.P15449689973708052019

/-!
# A215194: Number of arrays of 7 0..n integers with no sum of consecutive elements equal to a disjoint adjacent sum of an equal number of elements.

The programs for A215194, there is no canonical definition to state claims against.
-/

/-! ## A215194.P13125064978488358571

`A215190(eq[11, A066657(n)])`
-/

namespace A215194.P13125064978488358571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215194.P13125064978488358571

/-! ## A215194.P5229250682838149567

`A215190(A034856(n+5)+9)`
-/

namespace A215194.P5229250682838149567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (A034856 (n + 5) + 9).toNat

end

end A215194.P5229250682838149567

/-! ## A215194.P3265384453383623684

`A215190(eq[8, A131818(n+1)])`
-/

namespace A215194.P3265384453383623684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215194.P3265384453383623684

/-!
# A215196: Numbers k such that A143615(k) = k.

The programs for A215196, there is no canonical definition to state claims against.
-/

/-! ## A215196.P1809957901147812626

`A161890(A046947(n))+A073592(2*n+1)`
-/

namespace A215196.P1809957901147812626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161890 (A046947 n).toNat + A073592 (2 * n + 1)

end

end A215196.P1809957901147812626

/-!
# A215197: Numbers k such that k and k + 1 are both of the form p*q^4 where p and q are distinct primes.

The programs for A215197, there is no canonical definition to state claims against.
-/

/-! ## A215197.P10420334545706160919

`∩[A030628(n+1)-1, A030628(n+1)]`
-/

namespace A215197.P10420334545706160919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215197.P10420334545706160919

/-! ## A215197.P1282073424260281470

`∩[A178739(n+1)-1, A178739(n+1)]`
-/

namespace A215197.P1282073424260281470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215197.P1282073424260281470

/-! ## A215197.P18243222772189558790

`A360904(lt[A360914(n+5), A360874(n+1)])`
-/

namespace A215197.P18243222772189558790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360914 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360904 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215197.P18243222772189558790

/-! ## A215197.P2452459712151106739

`A360904(lt[A360914(n+5), A360876(n+1)])`
-/

namespace A215197.P2452459712151106739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360914 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360904 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215197.P2452459712151106739

/-!
# A215199: Smallest number k such that k and k+1 are both of the form p*q^n where p and q are distinct primes.

The programs for A215199, there is no canonical definition to state claims against.
-/

/-! ## A215199.P5211347140645342040

`filter[A085929(n+1), A215480(#)]`
-/

namespace A215199.P5211347140645342040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A215199.P5211347140645342040

