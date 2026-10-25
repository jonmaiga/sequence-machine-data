import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A181600: Expansion of 1/(1 - x - x^2 + x^8 - x^10).

The programs for A181600, the canonical program `A181600.P7217584822724522551` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181600 has offset 0).

The definition of A181600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^8-x^10))` (program `A181600.P7217584822724522551`, by `A181600.P7217584822724522551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181600.P7217584822724522551

`ogf(1/(1-x-x^2+x^8-x^10))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181600

/-- `ogf(1/(1-x-x^2+x^8-x^10))` -/
def P7217584822724522551.Spec : Prop :=
  ∀ n, P7217584822724522551.a n = A181600 n

theorem P7217584822724522551.correct : P7217584822724522551.Spec := by
  intro n
  simp only [A181600]

end A181600

/-! ## A181600.P3442643611047456461

`a(n-1)+a(n-2)-a(n-8)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=13, a(7)=21, a(8)=33, a(9)=53`
-/

namespace A181600.P3442643611047456461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8, 13, 21, 33, 53] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 8) + a (n - 10)

end

end A181600.P3442643611047456461

namespace A181600

/-- `a(n-1)+a(n-2)-a(n-8)+a(n-10)` -/
def P3442643611047456461.Spec : Prop :=
  ∀ n, P3442643611047456461.a n = A181600 n

end A181600

/-! ## A181600.P9584387185631756406

`A117760(n+1)+A005088(A174109(n))`
-/

namespace A181600.P9584387185631756406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (n + 1) + A005088 (A174109 n).toNat

end

end A181600.P9584387185631756406

namespace A181600

/-- `A117760(n+1)+A005088(A174109(n))` -/
def P9584387185631756406.Spec : Prop :=
  ∀ n, P9584387185631756406.a n = A181600 n

end A181600

/-! ## A181600.P14451693833304816256

`A275926(A347811(n))+A117760(n+1)`
-/

namespace A181600.P14451693833304816256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A347811 n).toNat + A117760 (n + 1)

end

end A181600.P14451693833304816256

namespace A181600

/-- `A275926(A347811(n))+A117760(n+1)` -/
def P14451693833304816256.Spec : Prop :=
  ∀ n, P14451693833304816256.a n = A181600 n

end A181600

/-! ## A181600.P16422093939657165129

`A117760(∑[A058276(n)!])`
-/

namespace A181600.P16422093939657165129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181600.P16422093939657165129

namespace A181600

/-- `A117760(∑[A058276(n)!])` -/
def P16422093939657165129.Spec : Prop :=
  ∀ n, P16422093939657165129.a n = A181600 n

end A181600

/-!
# A181601: Numbers m divisible by 32 and with abundance sigma(m)-2*m = 32.

The programs for A181601, there is no canonical definition to state claims against.
-/

/-! ## A181601.P1549676570173573112

`∩[A097498(n+1), A175989(n+1)]`
-/

namespace A181601.P1549676570173573112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181601.P1549676570173573112

/-! ## A181601.P15529472025093708404

`∩[A153501(n+1), A175989(n+1)]`
-/

namespace A181601.P15529472025093708404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181601.P15529472025093708404

/-! ## A181601.P16809198273175723941

`∩[A175989(n+1), A181595(n+1)]`
-/

namespace A181601.P16809198273175723941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181601.P16809198273175723941

/-! ## A181601.P12928043850143196368

`∩[A175989(n+1), A215012(n+1)]`
-/

namespace A181601.P12928043850143196368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181601.P12928043850143196368

/-! ## A181601.P10949930217662366862

`∩[A175989(n+1), A379236(n+1)]`
-/

namespace A181601.P10949930217662366862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181601.P10949930217662366862

/-!
# A181602: Primes p such that p-1 is a semiprime and p+2 is prime or prime squared.

The programs for A181602, the canonical program `A181602.P7596636819529119247` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181602 has offset 1).

The definition of A181602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181602.P6747484264198873144

`∩[A005385(n+1), A064076(n+1)]`
-/

namespace A181602.P6747484264198873144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P6747484264198873144

namespace A181602

/-- `∩[A005385(n+1), A064076(n+1)]` -/
def P6747484264198873144.Spec : Prop :=
  ∀ n, (P6747484264198873144.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P1269281965547182238

`∩[A005385(n+1), A120431(n+1)]`
-/

namespace A181602.P1269281965547182238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P1269281965547182238

namespace A181602

/-- `∩[A005385(n+1), A120431(n+1)]` -/
def P1269281965547182238.Spec : Prop :=
  ∀ n, (P1269281965547182238.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P7596636819529119247

`∩[A005385(n+1), A229064(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A181602

/-- `∩[A005385(n+1), A229064(n+1)]` -/
def P7596636819529119247.Spec : Prop :=
  ∀ n, (P7596636819529119247.a n : ℤ) = A181602 (n + 1)

theorem P7596636819529119247.correct : P7596636819529119247.Spec := by
  intro n
  simp only [A181602, Nat.add_sub_cancel]

end A181602

/-! ## A181602.P14350968940147563588

`∩[A005385(n+1), A267944(n+1)]`
-/

namespace A181602.P14350968940147563588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P14350968940147563588

namespace A181602

/-- `∩[A005385(n+1), A267944(n+1)]` -/
def P14350968940147563588.Spec : Prop :=
  ∀ n, (P14350968940147563588.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P734757155169495274

`∩[A079148(n+1), A229064(n+1)]`
-/

namespace A181602.P734757155169495274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P734757155169495274

namespace A181602

/-- `∩[A079148(n+1), A229064(n+1)]` -/
def P734757155169495274.Spec : Prop :=
  ∀ n, (P734757155169495274.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P15924146686316217765

`∩[A065966(n+1), A267944(n+1)]`
-/

namespace A181602.P15924146686316217765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P15924146686316217765

namespace A181602

/-- `∩[A065966(n+1), A267944(n+1)]` -/
def P15924146686316217765.Spec : Prop :=
  ∀ n, (P15924146686316217765.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P3987312101706773421

`∩[A005385(n+1), A289995(n+1)]`
-/

namespace A181602.P3987312101706773421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P3987312101706773421

namespace A181602

/-- `∩[A005385(n+1), A289995(n+1)]` -/
def P3987312101706773421.Spec : Prop :=
  ∀ n, (P3987312101706773421.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P18374525441288504796

`∩[A079149(n+1), A229064(n+1)]`
-/

namespace A181602.P18374525441288504796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P18374525441288504796

namespace A181602

/-- `∩[A079149(n+1), A229064(n+1)]` -/
def P18374525441288504796.Spec : Prop :=
  ∀ n, (P18374525441288504796.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P18340830882807713362

`∩[A229064(n+1), A391049(n+1)]`
-/

namespace A181602.P18340830882807713362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P18340830882807713362

namespace A181602

/-- `∩[A229064(n+1), A391049(n+1)]` -/
def P18340830882807713362.Spec : Prop :=
  ∀ n, (P18340830882807713362.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P4922919658210722830

`∩[A267944(n+1), A395563(n+1)]`
-/

namespace A181602.P4922919658210722830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P4922919658210722830

namespace A181602

/-- `∩[A267944(n+1), A395563(n+1)]` -/
def P4922919658210722830.Spec : Prop :=
  ∀ n, (P4922919658210722830.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P14744728395789194592

`∩[A072055(n+1), A229064(n+1)]`
-/

namespace A181602.P14744728395789194592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P14744728395789194592

namespace A181602

/-- `∩[A072055(n+1), A229064(n+1)]` -/
def P14744728395789194592.Spec : Prop :=
  ∀ n, (P14744728395789194592.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P17556024179621497689

`∩[A072055(n+1), A267944(n+1)]`
-/

namespace A181602.P17556024179621497689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P17556024179621497689

namespace A181602

/-- `∩[A072055(n+1), A267944(n+1)]` -/
def P17556024179621497689.Spec : Prop :=
  ∀ n, (P17556024179621497689.a n : ℤ) = A181602 (n + 1)

end A181602

/-! ## A181602.P15765984261605140224

`p?[A001221(A005385(n+1)+2)*A005385(n+1)]`
-/

namespace A181602.P15765984261605140224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005385 (n + 1) + 2).toNat * A005385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181602.P15765984261605140224

namespace A181602

/-- `p?[A001221(A005385(n+1)+2)*A005385(n+1)]` -/
def P15765984261605140224.Spec : Prop :=
  ∀ n, P15765984261605140224.a n = A181602 (n + 1)

end A181602

/-! ## A181602.P15997085725398196159

`∩[A124109(n+1), A267944(n+1)]`
-/

namespace A181602.P15997085725398196159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181602.P15997085725398196159

namespace A181602

/-- `∩[A124109(n+1), A267944(n+1)]` -/
def P15997085725398196159.Spec : Prop :=
  ∀ n, (P15997085725398196159.a n : ℤ) = A181602 (n + 1)

end A181602

/-!
# A181603: Twin primes ending in 1.

The programs for A181603, the canonical program `A181603.P12420885902488205799` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181603 has offset 1).

The definition of A181603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181603.P12420885902488205799

`∩[A030430(n+1), A132247(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A181603

/-- `∩[A030430(n+1), A132247(n+1)]` -/
def P12420885902488205799.Spec : Prop :=
  ∀ n, (P12420885902488205799.a n : ℤ) = A181603 (n + 1)

theorem P12420885902488205799.correct : P12420885902488205799.Spec := by
  intro n
  simp only [A181603, Nat.add_sub_cancel]

end A181603

/-! ## A181603.P16747060372437257511

`∩[A030430(n+1), A171688(n+1)]`
-/

namespace A181603.P16747060372437257511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P16747060372437257511

namespace A181603

/-- `∩[A030430(n+1), A171688(n+1)]` -/
def P16747060372437257511.Spec : Prop :=
  ∀ n, (P16747060372437257511.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P10715434778961960641

`∩[A001097(n+1), A030430(n+1)]`
-/

namespace A181603.P10715434778961960641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P10715434778961960641

namespace A181603

/-- `∩[A001097(n+1), A030430(n+1)]` -/
def P10715434778961960641.Spec : Prop :=
  ∀ n, (P10715434778961960641.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P13633179288774415106

`∩[A030430(n+1), A171821(n+1)]`
-/

namespace A181603.P13633179288774415106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P13633179288774415106

namespace A181603

/-- `∩[A030430(n+1), A171821(n+1)]` -/
def P13633179288774415106.Spec : Prop :=
  ∀ n, (P13633179288774415106.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P2588149607121098696

`∩[A030430(n+1), A265760(n+1)]`
-/

namespace A181603.P2588149607121098696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P2588149607121098696

namespace A181603

/-- `∩[A030430(n+1), A265760(n+1)]` -/
def P2588149607121098696.Spec : Prop :=
  ∀ n, (P2588149607121098696.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P15707970019096470673

`∩[A045453(n+1), A132247(n+1)]`
-/

namespace A181603.P15707970019096470673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P15707970019096470673

namespace A181603

/-- `∩[A045453(n+1), A132247(n+1)]` -/
def P15707970019096470673.Spec : Prop :=
  ∀ n, (P15707970019096470673.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P18226355804905011429

`∩[A045453(n+1), A265760(n+1)]`
-/

namespace A181603.P18226355804905011429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P18226355804905011429

namespace A181603

/-- `∩[A045453(n+1), A265760(n+1)]` -/
def P18226355804905011429.Spec : Prop :=
  ∀ n, (P18226355804905011429.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P9416745908257995976

`∩[A001097(n+1), A090756(n+1)]`
-/

namespace A181603.P9416745908257995976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P9416745908257995976

namespace A181603

/-- `∩[A001097(n+1), A090756(n+1)]` -/
def P9416745908257995976.Spec : Prop :=
  ∀ n, (P9416745908257995976.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P2519973504903976652

`∩[A090756(n+1), A132247(n+1)]`
-/

namespace A181603.P2519973504903976652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P2519973504903976652

namespace A181603

/-- `∩[A090756(n+1), A132247(n+1)]` -/
def P2519973504903976652.Spec : Prop :=
  ∀ n, (P2519973504903976652.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P15276546105134076027

`∩[A090756(n+1), A171688(n+1)]`
-/

namespace A181603.P15276546105134076027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P15276546105134076027

namespace A181603

/-- `∩[A090756(n+1), A171688(n+1)]` -/
def P15276546105134076027.Spec : Prop :=
  ∀ n, (P15276546105134076027.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P14404906297620515462

`∩[A090756(n+1), A171821(n+1)]`
-/

namespace A181603.P14404906297620515462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P14404906297620515462

namespace A181603

/-- `∩[A090756(n+1), A171821(n+1)]` -/
def P14404906297620515462.Spec : Prop :=
  ∀ n, (P14404906297620515462.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P2266000435905667230

`∩[A001097(n+1), A327752(n+1)]`
-/

namespace A181603.P2266000435905667230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P2266000435905667230

namespace A181603

/-- `∩[A001097(n+1), A327752(n+1)]` -/
def P2266000435905667230.Spec : Prop :=
  ∀ n, (P2266000435905667230.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P3878300599131587076

`∩[A132247(n+1), A327752(n+1)]`
-/

namespace A181603.P3878300599131587076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P3878300599131587076

namespace A181603

/-- `∩[A132247(n+1), A327752(n+1)]` -/
def P3878300599131587076.Spec : Prop :=
  ∀ n, (P3878300599131587076.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P16420096634013933905

`∩[A171688(n+1), A327752(n+1)]`
-/

namespace A181603.P16420096634013933905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P16420096634013933905

namespace A181603

/-- `∩[A171688(n+1), A327752(n+1)]` -/
def P16420096634013933905.Spec : Prop :=
  ∀ n, (P16420096634013933905.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P18103799253535663270

`∩[A171821(n+1), A327752(n+1)]`
-/

namespace A181603.P18103799253535663270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P18103799253535663270

namespace A181603

/-- `∩[A171821(n+1), A327752(n+1)]` -/
def P18103799253535663270.Spec : Prop :=
  ∀ n, (P18103799253535663270.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P8969415837990379374

`∩[A001097(n+1), A004615(n+1)]`
-/

namespace A181603.P8969415837990379374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P8969415837990379374

namespace A181603

/-- `∩[A001097(n+1), A004615(n+1)]` -/
def P8969415837990379374.Spec : Prop :=
  ∀ n, (P8969415837990379374.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P14474956645594622553

`∩[A004615(n+1), A132247(n+1)]`
-/

namespace A181603.P14474956645594622553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P14474956645594622553

namespace A181603

/-- `∩[A004615(n+1), A132247(n+1)]` -/
def P14474956645594622553.Spec : Prop :=
  ∀ n, (P14474956645594622553.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P14508406957715636008

`∩[A004615(n+1), A171688(n+1)]`
-/

namespace A181603.P14508406957715636008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P14508406957715636008

namespace A181603

/-- `∩[A004615(n+1), A171688(n+1)]` -/
def P14508406957715636008.Spec : Prop :=
  ∀ n, (P14508406957715636008.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P16880520112259294085

`∩[A004615(n+1), A171821(n+1)]`
-/

namespace A181603.P16880520112259294085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P16880520112259294085

namespace A181603

/-- `∩[A004615(n+1), A171821(n+1)]` -/
def P16880520112259294085.Spec : Prop :=
  ∀ n, (P16880520112259294085.a n : ℤ) = A181603 (n + 1)

end A181603

/-! ## A181603.P895986122849514237

`∩[A004615(n+1), A265760(n+1)]`
-/

namespace A181603.P895986122849514237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P895986122849514237

namespace A181603

/-- `∩[A004615(n+1), A265760(n+1)]` -/
def P895986122849514237.Spec : Prop :=
  ∀ n, (P895986122849514237.a n : ℤ) = A181603 (n + 1)

end A181603

/-!
# A181604: Twin primes ending in 3.

The programs for A181604, the canonical program `A181604.P3897109679359761280` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181604 has offset 1).

The definition of A181604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181604.P3897109679359761280

`A282322(n%a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A181604

/-- `A282322(n%a(n-1))` -/
def P3897109679359761280.Spec : Prop :=
  ∀ n, P3897109679359761280.a n = A181604 (n + 1)

theorem P3897109679359761280.correct : P3897109679359761280.Spec := by
  intro n
  simp only [A181604, Nat.add_sub_cancel]

end A181604

/-! ## A181604.P14913373086341377040

`∪[A229092(n+1), A282322(n+1)]`
-/

namespace A181604.P14913373086341377040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P14913373086341377040

namespace A181604

/-- `∪[A229092(n+1), A282322(n+1)]` -/
def P14913373086341377040.Spec : Prop :=
  ∀ n, (P14913373086341377040.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P10046801459559584743

`∩[A030431(n+1), A067829(n+1)]`
-/

namespace A181604.P10046801459559584743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P10046801459559584743

namespace A181604

/-- `∩[A030431(n+1), A067829(n+1)]` -/
def P10046801459559584743.Spec : Prop :=
  ∀ n, (P10046801459559584743.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P8949891916819429846

`p?[∪[A282322(n+1), ∑[n]]]`
-/

namespace A181604.P8949891916819429846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282322 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181604.P8949891916819429846

namespace A181604

/-- `p?[∪[A282322(n+1), ∑[n]]]` -/
def P8949891916819429846.Spec : Prop :=
  ∀ n, (P8949891916819429846.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P10223880925850166031

`∩[A001097(n+1), A030431(n+1)]`
-/

namespace A181604.P10223880925850166031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P10223880925850166031

namespace A181604

/-- `∩[A001097(n+1), A030431(n+1)]` -/
def P10223880925850166031.Spec : Prop :=
  ∀ n, (P10223880925850166031.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P9637183390531637281

`∩[A030431(n+1), A171821(n+1)]`
-/

namespace A181604.P9637183390531637281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P9637183390531637281

namespace A181604

/-- `∩[A030431(n+1), A171821(n+1)]` -/
def P9637183390531637281.Spec : Prop :=
  ∀ n, (P9637183390531637281.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P8580196517685269893

`∩[A030431(n+1), A265760(n+1)]`
-/

namespace A181604.P8580196517685269893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P8580196517685269893

namespace A181604

/-- `∩[A030431(n+1), A265760(n+1)]` -/
def P8580196517685269893.Spec : Prop :=
  ∀ n, (P8580196517685269893.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P1942129283012143705

`∩[A045414(n+1), A265760(n+1)]`
-/

namespace A181604.P1942129283012143705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P1942129283012143705

namespace A181604

/-- `∩[A045414(n+1), A265760(n+1)]` -/
def P1942129283012143705.Spec : Prop :=
  ∀ n, (P1942129283012143705.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P12214029465357965051

`∩[A001097(n+1), A004617(n+1)]`
-/

namespace A181604.P12214029465357965051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P12214029465357965051

namespace A181604

/-- `∩[A001097(n+1), A004617(n+1)]` -/
def P12214029465357965051.Spec : Prop :=
  ∀ n, (P12214029465357965051.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P331420781283143170

`∩[A004617(n+1), A067829(n+1)]`
-/

namespace A181604.P331420781283143170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P331420781283143170

namespace A181604

/-- `∩[A004617(n+1), A067829(n+1)]` -/
def P331420781283143170.Spec : Prop :=
  ∀ n, (P331420781283143170.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P13095992592346463636

`∩[A004617(n+1), A171821(n+1)]`
-/

namespace A181604.P13095992592346463636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P13095992592346463636

namespace A181604

/-- `∩[A004617(n+1), A171821(n+1)]` -/
def P13095992592346463636.Spec : Prop :=
  ∀ n, (P13095992592346463636.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P5685332375171797247

`∩[A004617(n+1), A265760(n+1)]`
-/

namespace A181604.P5685332375171797247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P5685332375171797247

namespace A181604

/-- `∩[A004617(n+1), A265760(n+1)]` -/
def P5685332375171797247.Spec : Prop :=
  ∀ n, (P5685332375171797247.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P2222258253279944858

`∩[A030431(n+1), A157048(n+1)]`
-/

namespace A181604.P2222258253279944858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P2222258253279944858

namespace A181604

/-- `∩[A030431(n+1), A157048(n+1)]` -/
def P2222258253279944858.Spec : Prop :=
  ∀ n, (P2222258253279944858.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P2600620700401449324

`∩[A001097(n+1), A017305(n)]`
-/

namespace A181604.P2600620700401449324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P2600620700401449324

namespace A181604

/-- `∩[A001097(n+1), A017305(n)]` -/
def P2600620700401449324.Spec : Prop :=
  ∀ n, (P2600620700401449324.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P7818035505076295929

`∩[A067829(n+1), A017305(n)]`
-/

namespace A181604.P7818035505076295929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P7818035505076295929

namespace A181604

/-- `∩[A067829(n+1), A017305(n)]` -/
def P7818035505076295929.Spec : Prop :=
  ∀ n, (P7818035505076295929.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P2727615807155419099

`∩[A171821(n+1), A017305(n)]`
-/

namespace A181604.P2727615807155419099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P2727615807155419099

namespace A181604

/-- `∩[A171821(n+1), A017305(n)]` -/
def P2727615807155419099.Spec : Prop :=
  ∀ n, (P2727615807155419099.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P16546089105930258879

`∩[A265760(n+1), A017305(n)]`
-/

namespace A181604.P16546089105930258879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P16546089105930258879

namespace A181604

/-- `∩[A265760(n+1), A017305(n)]` -/
def P16546089105930258879.Spec : Prop :=
  ∀ n, (P16546089105930258879.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P13567219042304351119

`∩[A001097(n+1), A277590(n+1)]`
-/

namespace A181604.P13567219042304351119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P13567219042304351119

namespace A181604

/-- `∩[A001097(n+1), A277590(n+1)]` -/
def P13567219042304351119.Spec : Prop :=
  ∀ n, (P13567219042304351119.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P5156144405935253965

`∩[A067829(n+1), A277590(n+1)]`
-/

namespace A181604.P5156144405935253965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P5156144405935253965

namespace A181604

/-- `∩[A067829(n+1), A277590(n+1)]` -/
def P5156144405935253965.Spec : Prop :=
  ∀ n, (P5156144405935253965.a n : ℤ) = A181604 (n + 1)

end A181604

/-! ## A181604.P516208657439643519

`∩[A171821(n+1), A277590(n+1)]`
-/

namespace A181604.P516208657439643519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181604.P516208657439643519

namespace A181604

/-- `∩[A171821(n+1), A277590(n+1)]` -/
def P516208657439643519.Spec : Prop :=
  ∀ n, (P516208657439643519.a n : ℤ) = A181604 (n + 1)

end A181604

/-!
# A181605: Twin primes ending in 7.

The programs for A181605, the canonical program `A181605.P1127411244904129407` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181605 has offset 1).

The definition of A181605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181605.P1127411244904129407

`A282323(n%(a(n-1)+val(n, 3)))` with `a(0)=7`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A181605

/-- `A282323(n%(a(n-1)+val(n, 3)))` -/
def P1127411244904129407.Spec : Prop :=
  ∀ n, P1127411244904129407.a n = A181605 (n + 1)

theorem P1127411244904129407.correct : P1127411244904129407.Spec := by
  intro n
  simp only [A181605, Nat.add_sub_cancel]

end A181605

/-! ## A181605.P8698919369441614817

`∩[A030432(n+1), A238528(n+1)]`
-/

namespace A181605.P8698919369441614817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P8698919369441614817

namespace A181605

/-- `∩[A030432(n+1), A238528(n+1)]` -/
def P8698919369441614817.Spec : Prop :=
  ∀ n, (P8698919369441614817.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P2013455614468808609

`p?[p?[a(n-1)+15]-2]%A007811(2*(n+1))` with `a(0)=19, a(1)=4`
-/

namespace A181605.P2013455614468808609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [19, 4] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007811 (2 * (n + 1)))

end

end A181605.P2013455614468808609

namespace A181605

/-- `p?[p?[a(n-1)+15]-2]%A007811(2*(n+1))` -/
def P2013455614468808609.Spec : Prop :=
  ∀ n, P2013455614468808609.a n = A181605 (n + 1)

end A181605

/-! ## A181605.P7369070246267669113

`∩[A001097(n+1), A030432(n+1)]`
-/

namespace A181605.P7369070246267669113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P7369070246267669113

namespace A181605

/-- `∩[A001097(n+1), A030432(n+1)]` -/
def P7369070246267669113.Spec : Prop :=
  ∀ n, (P7369070246267669113.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P1360780612069715

`∩[A030432(n+1), A171688(n+1)]`
-/

namespace A181605.P1360780612069715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P1360780612069715

namespace A181605

/-- `∩[A030432(n+1), A171688(n+1)]` -/
def P1360780612069715.Spec : Prop :=
  ∀ n, (P1360780612069715.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P16604184876024000387

`∩[A030432(n+1), A171821(n+1)]`
-/

namespace A181605.P16604184876024000387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P16604184876024000387

namespace A181605

/-- `∩[A030432(n+1), A171821(n+1)]` -/
def P16604184876024000387.Spec : Prop :=
  ∀ n, (P16604184876024000387.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P13225203143170933426

`∩[A030432(n+1), A265760(n+1)]`
-/

namespace A181605.P13225203143170933426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P13225203143170933426

namespace A181605

/-- `∩[A030432(n+1), A265760(n+1)]` -/
def P13225203143170933426.Spec : Prop :=
  ∀ n, (P13225203143170933426.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P10439108081135487

`p?[(A132239(n+1)-2)%A016827(n)]`
-/

namespace A181605.P10439108081135487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132239 (n + 1) - 2) (A016827 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181605.P10439108081135487

namespace A181605

/-- `p?[(A132239(n+1)-2)%A016827(n)]` -/
def P10439108081135487.Spec : Prop :=
  ∀ n, P10439108081135487.a n = A181605 (n + 1)

end A181605

/-! ## A181605.P12705948623134381901

`∩[A001097(n+1), A045380(n+1)]`
-/

namespace A181605.P12705948623134381901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P12705948623134381901

namespace A181605

/-- `∩[A001097(n+1), A045380(n+1)]` -/
def P12705948623134381901.Spec : Prop :=
  ∀ n, (P12705948623134381901.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P506100659070491632

`∩[A045380(n+1), A171688(n+1)]`
-/

namespace A181605.P506100659070491632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P506100659070491632

namespace A181605

/-- `∩[A045380(n+1), A171688(n+1)]` -/
def P506100659070491632.Spec : Prop :=
  ∀ n, (P506100659070491632.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P15987273254578168376

`∩[A001097(n+1), A327753(n+1)-2]`
-/

namespace A181605.P15987273254578168376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P15987273254578168376

namespace A181605

/-- `∩[A001097(n+1), A327753(n+1)-2]` -/
def P15987273254578168376.Spec : Prop :=
  ∀ n, (P15987273254578168376.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P11389782602506862828

`∩[A171688(n+1), A327753(n+1)-2]`
-/

namespace A181605.P11389782602506862828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P11389782602506862828

namespace A181605

/-- `∩[A171688(n+1), A327753(n+1)-2]` -/
def P11389782602506862828.Spec : Prop :=
  ∀ n, (P11389782602506862828.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P9127530651895705845

`∩[A171821(n+2), A327753(n+2)-2]`
-/

namespace A181605.P9127530651895705845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P9127530651895705845

namespace A181605

/-- `∩[A171821(n+2), A327753(n+2)-2]` -/
def P9127530651895705845.Spec : Prop :=
  ∀ n, (P9127530651895705845.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P5531023423949684371

`∩[A265760(n+2), A327753(n+2)-2]`
-/

namespace A181605.P5531023423949684371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P5531023423949684371

namespace A181605

/-- `∩[A265760(n+2), A327753(n+2)-2]` -/
def P5531023423949684371.Spec : Prop :=
  ∀ n, (P5531023423949684371.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P15820731954909850603

`∩[A001097(n+1), A090652(n+1)]`
-/

namespace A181605.P15820731954909850603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P15820731954909850603

namespace A181605

/-- `∩[A001097(n+1), A090652(n+1)]` -/
def P15820731954909850603.Spec : Prop :=
  ∀ n, (P15820731954909850603.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P10317277611883205832

`∩[A090652(n+1), A171688(n+1)]`
-/

namespace A181605.P10317277611883205832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P10317277611883205832

namespace A181605

/-- `∩[A090652(n+1), A171688(n+1)]` -/
def P10317277611883205832.Spec : Prop :=
  ∀ n, (P10317277611883205832.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P11816033551310630444

`∩[A090652(n+1), A171821(n+1)]`
-/

namespace A181605.P11816033551310630444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P11816033551310630444

namespace A181605

/-- `∩[A090652(n+1), A171821(n+1)]` -/
def P11816033551310630444.Spec : Prop :=
  ∀ n, (P11816033551310630444.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P12074485320949766401

`∩[A090652(n+1), A238528(n+1)]`
-/

namespace A181605.P12074485320949766401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P12074485320949766401

namespace A181605

/-- `∩[A090652(n+1), A238528(n+1)]` -/
def P12074485320949766401.Spec : Prop :=
  ∀ n, (P12074485320949766401.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P12928074453344601748

`∩[A090652(n+1), A265760(n+1)]`
-/

namespace A181605.P12928074453344601748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P12928074453344601748

namespace A181605

/-- `∩[A090652(n+1), A265760(n+1)]` -/
def P12928074453344601748.Spec : Prop :=
  ∀ n, (P12928074453344601748.a n : ℤ) = A181605 (n + 1)

end A181605

/-! ## A181605.P15184081970369307885

`∩[A001097(n+1), A004616(n+1)]`
-/

namespace A181605.P15184081970369307885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181605.P15184081970369307885

namespace A181605

/-- `∩[A001097(n+1), A004616(n+1)]` -/
def P15184081970369307885.Spec : Prop :=
  ∀ n, (P15184081970369307885.a n : ℤ) = A181605 (n + 1)

end A181605

/-!
# A181606: Twin primes ending in 9.

The programs for A181606, the canonical program `A181606.P9169201162728271764` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181606 has offset 1).

The definition of A181606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181606.P9330056787524866059

`∪[A060229(n+1), A282324(n+1)]`
-/

namespace A181606.P9330056787524866059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P9330056787524866059

namespace A181606

/-- `∪[A060229(n+1), A282324(n+1)]` -/
def P9330056787524866059.Spec : Prop :=
  ∀ n, (P9330056787524866059.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P11357837751783366963

`∩[A001097(n+1), A030433(n+1)]`
-/

namespace A181606.P11357837751783366963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P11357837751783366963

namespace A181606

/-- `∩[A001097(n+1), A030433(n+1)]` -/
def P11357837751783366963.Spec : Prop :=
  ∀ n, (P11357837751783366963.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P9169201162728271764

`∩[A030433(n+1), A132247(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A181606

/-- `∩[A030433(n+1), A132247(n+1)]` -/
def P9169201162728271764.Spec : Prop :=
  ∀ n, (P9169201162728271764.a n : ℤ) = A181606 (n + 1)

theorem P9169201162728271764.correct : P9169201162728271764.Spec := by
  intro n
  simp only [A181606, Nat.add_sub_cancel]

end A181606

/-! ## A181606.P4571247443688996250

`∩[A030433(n+1), A171688(n+1)]`
-/

namespace A181606.P4571247443688996250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P4571247443688996250

namespace A181606

/-- `∩[A030433(n+1), A171688(n+1)]` -/
def P4571247443688996250.Spec : Prop :=
  ∀ n, (P4571247443688996250.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P9903210014923542331

`∩[A030433(n+1), A265760(n+1)]`
-/

namespace A181606.P9903210014923542331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P9903210014923542331

namespace A181606

/-- `∩[A030433(n+1), A265760(n+1)]` -/
def P9903210014923542331.Spec : Prop :=
  ∀ n, (P9903210014923542331.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P14833997803220099900

`∩[A030433(n+1), A171821(n+1)]`
-/

namespace A181606.P14833997803220099900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P14833997803220099900

namespace A181606

/-- `∩[A030433(n+1), A171821(n+1)]` -/
def P14833997803220099900.Spec : Prop :=
  ∀ n, (P14833997803220099900.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P370166531586198399

`∩[A045457(n+1), A132247(n+1)]`
-/

namespace A181606.P370166531586198399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P370166531586198399

namespace A181606

/-- `∩[A045457(n+1), A132247(n+1)]` -/
def P370166531586198399.Spec : Prop :=
  ∀ n, (P370166531586198399.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P6466307429844580118

`∩[A045457(n+1), A265760(n+1)]`
-/

namespace A181606.P6466307429844580118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P6466307429844580118

namespace A181606

/-- `∩[A045457(n+1), A265760(n+1)]` -/
def P6466307429844580118.Spec : Prop :=
  ∀ n, (P6466307429844580118.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P6163189957951661782

`∩[A001097(n+1), A327753(n+1)]`
-/

namespace A181606.P6163189957951661782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P6163189957951661782

namespace A181606

/-- `∩[A001097(n+1), A327753(n+1)]` -/
def P6163189957951661782.Spec : Prop :=
  ∀ n, (P6163189957951661782.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P7367927230685424980

`∩[A132247(n+1), A327753(n+1)]`
-/

namespace A181606.P7367927230685424980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P7367927230685424980

namespace A181606

/-- `∩[A132247(n+1), A327753(n+1)]` -/
def P7367927230685424980.Spec : Prop :=
  ∀ n, (P7367927230685424980.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P8959395726297147162

`∩[A171688(n+1), A327753(n+1)]`
-/

namespace A181606.P8959395726297147162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P8959395726297147162

namespace A181606

/-- `∩[A171688(n+1), A327753(n+1)]` -/
def P8959395726297147162.Spec : Prop :=
  ∀ n, (P8959395726297147162.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P5772675636456148470

`∩[A171821(n+1), A327753(n+1)]`
-/

namespace A181606.P5772675636456148470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P5772675636456148470

namespace A181606

/-- `∩[A171821(n+1), A327753(n+1)]` -/
def P5772675636456148470.Spec : Prop :=
  ∀ n, (P5772675636456148470.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P3007055534878899157

`∩[A265760(n+1), A327753(n+1)]`
-/

namespace A181606.P3007055534878899157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P3007055534878899157

namespace A181606

/-- `∩[A265760(n+1), A327753(n+1)]` -/
def P3007055534878899157.Spec : Prop :=
  ∀ n, (P3007055534878899157.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P3475350987804191571

`∩[A001097(n+1), A004618(n+1)]`
-/

namespace A181606.P3475350987804191571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P3475350987804191571

namespace A181606

/-- `∩[A001097(n+1), A004618(n+1)]` -/
def P3475350987804191571.Spec : Prop :=
  ∀ n, (P3475350987804191571.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P13674585579611260832

`∩[A004618(n+1), A132247(n+1)]`
-/

namespace A181606.P13674585579611260832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P13674585579611260832

namespace A181606

/-- `∩[A004618(n+1), A132247(n+1)]` -/
def P13674585579611260832.Spec : Prop :=
  ∀ n, (P13674585579611260832.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P13047620239418963597

`∩[A004618(n+1), A171688(n+1)]`
-/

namespace A181606.P13047620239418963597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P13047620239418963597

namespace A181606

/-- `∩[A004618(n+1), A171688(n+1)]` -/
def P13047620239418963597.Spec : Prop :=
  ∀ n, (P13047620239418963597.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P13958002790815688152

`∩[A004618(n+1), A171821(n+1)]`
-/

namespace A181606.P13958002790815688152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P13958002790815688152

namespace A181606

/-- `∩[A004618(n+1), A171821(n+1)]` -/
def P13958002790815688152.Spec : Prop :=
  ∀ n, (P13958002790815688152.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P17996202157487884047

`∩[A004618(n+1), A265760(n+1)]`
-/

namespace A181606.P17996202157487884047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P17996202157487884047

namespace A181606

/-- `∩[A004618(n+1), A265760(n+1)]` -/
def P17996202157487884047.Spec : Prop :=
  ∀ n, (P17996202157487884047.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P1066602562424058798

`∩[A001097(n+1), A017377(n)]`
-/

namespace A181606.P1066602562424058798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P1066602562424058798

namespace A181606

/-- `∩[A001097(n+1), A017377(n)]` -/
def P1066602562424058798.Spec : Prop :=
  ∀ n, (P1066602562424058798.a n : ℤ) = A181606 (n + 1)

end A181606

/-! ## A181606.P15779185718173057843

`∩[A132247(n+1), A017377(n)]`
-/

namespace A181606.P15779185718173057843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P15779185718173057843

namespace A181606

/-- `∩[A132247(n+1), A017377(n)]` -/
def P15779185718173057843.Spec : Prop :=
  ∀ n, (P15779185718173057843.a n : ℤ) = A181606 (n + 1)

end A181606

/-!
# A181607: Numbers n with k digits such that n^2 == 1 (mod 10^k).

The programs for A181607, there is no canonical definition to state claims against.
-/

/-! ## A181607.P1047997832481802648

`∩[A033819(n+1), A090771(n+1)]`
-/

namespace A181607.P1047997832481802648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181607.P1047997832481802648

/-! ## A181607.P8539076063111995361

`∩[A033819(n+1), A317633(n+1)]`
-/

namespace A181607.P8539076063111995361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181607.P8539076063111995361

/-! ## A181607.P14340410773913121891

`eq[1, n²%(A061601(n)+1+n)]`
-/

namespace A181607.P14340410773913121891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A061601 n + 1 + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181607.P14340410773913121891

/-! ## A181607.P13790021458398079320

`∩[A033819(n+1), A045572(n+1)]`
-/

namespace A181607.P13790021458398079320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181607.P13790021458398079320

/-! ## A181607.P14272381567690695950

`∩[A033819(n+1), A241662(n+1)]`
-/

namespace A181607.P14272381567690695950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181607.P14272381567690695950

/-!
# A181608: Smallest positive number such that, enclosed by prime(n) gives a prime, or zero if no such prime exists.

The programs for A181608, there is no canonical definition to state claims against.
-/

/-! ## A181608.P7431783148812645897

`A061399(∑[A238559(n+8)+A007632(n+1)])`
-/

namespace A181608.P7431783148812645897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238559 (n + 8) + A007632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181608.P7431783148812645897

/-!
# A181609: Kendell-Mann numbers in terms of Mahonian distribution.

The programs for A181609, the canonical program `A181609.P15530691936656370169` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181609 has offset 2).

The definition of A181609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181609.P15530691936656370169

`round((n+2)!/sqrt(π*(n+2)*(n+1)*(2*(n+2)+5)/36))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181609

/-- `round((n+2)!/sqrt(π*(n+2)*(n+1)*(2*(n+2)+5)/36))` -/
def P15530691936656370169.Spec : Prop :=
  ∀ n, P15530691936656370169.a n = A181609 (n + 2)

theorem P15530691936656370169.correct : P15530691936656370169.Spec := by
  intro n
  simp only [A181609, Nat.add_sub_cancel]

end A181609

/-! ## A181609.P8192154651075299751

`round(A216345(A000203(∏[n+1])+1)/(n+1))`
-/

namespace A181609.P8192154651075299751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216345 (A000203 (∏ j ∈ Finset.range (n + 1), f1 j) + 1).toNat : ℚ) / (n + 1 : ℚ))

end

end A181609.P8192154651075299751

namespace A181609

/-- `round(A216345(A000203(∏[n+1])+1)/(n+1))` -/
def P8192154651075299751.Spec : Prop :=
  ∀ n, P8192154651075299751.a n = A181609 (n + 2)

end A181609

/-!
# A181610: The last n digits of powers of 2 start cycling. a(n) is the number of zero-free terms in this cycle.

The programs for A181610, there is no canonical definition to state claims against.
-/

/-! ## A181610.P10889547597385261463

`A301293(a(n-1))` with `a(0)=4`
-/

namespace A181610.P10889547597385261463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A301293 (a (n - 1)).toNat

end

end A181610.P10889547597385261463

/-! ## A181610.P2586114341721950213

`Δ[A130877(a(n-1)+1)]` with `a(0)=1`
-/

namespace A181610.P2586114341721950213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A130877 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181610.P2586114341721950213

/-! ## A181610.P4363271374435635385

`Δ[A193910(a(n-1)+3)]` with `a(0)=-2`
-/

namespace A181610.P4363271374435635385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  A193910 (f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181610.P4363271374435635385

/-!
# A181612: Triangle T(n,m) of the coefficients JacobiDC(x,y) = Sum_{n>=0} Sum_{m=0..n} (-1)^m* T(n,m) *x^(2*n) *y^(2*m)/(2*n)!.

The programs for A181612, there is no canonical definition to state claims against.
-/

/-! ## A181612.P9483338587771168499

`or(A086646(n), A331022(A056939(n)))`
-/

namespace A181612.P9483338587771168499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086646 n) (A331022 (A056939 n).toNat)

end

end A181612.P9483338587771168499

/-! ## A181612.P7996341045299329441

`or(A084401(A167884(n+1)), A086646(n))`
-/

namespace A181612.P7996341045299329441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084401 (A167884 (n + 1)).toNat) (A086646 n)

end

end A181612.P7996341045299329441

/-!
# A181615: Triangle read by rows: T(n,k) = 2^(n-1) mod semiprime(k).

The programs for A181615, there is no canonical definition to state claims against.
-/

/-! ## A181615.P2297963941497128466

`∏[char[∑[n+1]]+1]%A001358(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A181615.P2297963941497128466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001358 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat)

end

end A181615.P2297963941497128466

/-! ## A181615.P6893560920268842443

`A137688(n)%A001358(A002260(n+1))`
-/

namespace A181615.P6893560920268842443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P6893560920268842443

/-! ## A181615.P10720751028662654477

`Δ[A007664(n)]%A001358(A002260(n+1))`
-/

namespace A181615.P10720751028662654477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P10720751028662654477

/-! ## A181615.P6406684887986519036

`A000079(A003056(n))%A001358(A002260(n+1))`
-/

namespace A181615.P6406684887986519036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A003056 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P6406684887986519036

/-! ## A181615.P1611587477289590515

`A004175(A057944(n))%A001358(A002260(n+1))`
-/

namespace A181615.P1611587477289590515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004175 (A057944 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P1611587477289590515

/-! ## A181615.P5475437962899639193

`A001316(A089633(n))%A001358(A002260(n+1))`
-/

namespace A181615.P5475437962899639193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A089633 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P5475437962899639193

/-! ## A181615.P5878696286656995421

`A000010(A140513(n))%A001358(A002260(n+1))`
-/

namespace A181615.P5878696286656995421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A140513 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P5878696286656995421

/-! ## A181615.P7497084714786231756

`A135764(A127739(n+1))%A001358(A002260(n+1))`
-/

namespace A181615.P7497084714786231756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135764 (A127739 (n + 1)).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A181615.P7497084714786231756

/-!
# A181617: Molecular topological indices of the complete graph K_n.

The programs for A181617, the canonical program `A181617.P16189160245016811923` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181617 has offset 1).

The definition of A181617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181617.P16189160245016811923

`2*(n+1)*n²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181617

/-- `2*(n+1)*n²` -/
def P16189160245016811923.Spec : Prop :=
  ∀ n, (P16189160245016811923.a n : ℤ) = A181617 (n + 1)

theorem P16189160245016811923.correct : P16189160245016811923.Spec := by
  intro n
  simp only [A181617, Nat.add_sub_cancel]

end A181617

/-! ## A181617.P7037787796945007728

`lcm(n², Δ[n²])+n²`
-/

namespace A181617.P7037787796945007728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + n ^ 2

end

end A181617.P7037787796945007728

namespace A181617

/-- `lcm(n², Δ[n²])+n²` -/
def P7037787796945007728.Spec : Prop :=
  ∀ n, (P7037787796945007728.a n : ℤ) = A181617 (n + 1)

end A181617

/-! ## A181617.P16869946676401677785

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=4`
-/

namespace A181617.P16869946676401677785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181617.P16869946676401677785

namespace A181617

/-- `∑[∑[a(n-1)+12]]` -/
def P16869946676401677785.Spec : Prop :=
  ∀ n, (P16869946676401677785.a n : ℤ) = A181617 (n + 1)

end A181617

/-! ## A181617.P6326149853034995776

`lcm(2, 2*2*n*∑[n])`
-/

namespace A181617.P6326149853034995776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A181617.P6326149853034995776

namespace A181617

/-- `lcm(2, 2*2*n*∑[n])` -/
def P6326149853034995776.Spec : Prop :=
  ∀ n, (P6326149853034995776.a n : ℤ) = A181617 (n + 1)

end A181617

/-! ## A181617.P1785359320741804784

`∑[3*C(2*n, 2)+n]`
-/

namespace A181617.P1785359320741804784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * n) 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181617.P1785359320741804784

namespace A181617

/-- `∑[3*C(2*n, 2)+n]` -/
def P1785359320741804784.Spec : Prop :=
  ∀ n, (P1785359320741804784.a n : ℤ) = A181617 (n + 1)

end A181617

/-! ## A181617.P17498168438633909551

`abs(n²*xor(2*n, -2))`
-/

namespace A181617.P17498168438633909551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * Int.xor (2 * n : ℤ) (-2)|

end

end A181617.P17498168438633909551

namespace A181617

/-- `abs(n²*xor(2*n, -2))` -/
def P17498168438633909551.Spec : Prop :=
  ∀ n, P17498168438633909551.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P3731475782631143018

`-(n²*xor(2*n, -2))`
-/

namespace A181617.P3731475782631143018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.xor (2 * n : ℤ) (-2))

end

end A181617.P3731475782631143018

namespace A181617

/-- `-(n²*xor(2*n, -2))` -/
def P3731475782631143018.Spec : Prop :=
  ∀ n, P3731475782631143018.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P12652973067352898784

`Δ[C(n², 2)]-(n²+n)`
-/

namespace A181617.P12652973067352898784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 2 + n : ℤ)

end

end A181617.P12652973067352898784

namespace A181617

/-- `Δ[C(n², 2)]-(n²+n)` -/
def P12652973067352898784.Spec : Prop :=
  ∀ n, P12652973067352898784.a n = A181617 (n + 1)

theorem P12652973067352898784.correct : P12652973067352898784.Spec := by
  intro n
  simp only [A181617, Nat.add_sub_cancel, A181617.P12652973067352898784.f1, A181617.P12652973067352898784.a, A181617.P16189160245016811923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181617

/-! ## A181617.P5254463602145305686

`∑[∑[ogf((4x+8x^2)/(1-2x+x^2))]]`
-/

namespace A181617.P5254463602145305686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181617.P5254463602145305686

namespace A181617

/-- `∑[∑[ogf((4x+8x^2)/(1-2x+x^2))]]` -/
def P5254463602145305686.Spec : Prop :=
  ∀ n, P5254463602145305686.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P13414852989010159260

`floor(2*n/acot(n*(n+1)))`
-/

namespace A181617.P13414852989010159260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (n * (n + 1) : ℝ)⌋

end

end A181617.P13414852989010159260

namespace A181617

/-- `floor(2*n/acot(n*(n+1)))` -/
def P13414852989010159260.Spec : Prop :=
  ∀ n, P13414852989010159260.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P14460204383185637103

`round(2*n/acot(n*(n+1)))`
-/

namespace A181617.P14460204383185637103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (n * (n + 1) : ℝ))

end

end A181617.P14460204383185637103

namespace A181617

/-- `round(2*n/acot(n*(n+1)))` -/
def P14460204383185637103.Spec : Prop :=
  ∀ n, P14460204383185637103.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P2992938951197112702

`n*2*n/tan(acot(n+1))`
-/

namespace A181617.P2992938951197112702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A181617.P2992938951197112702

namespace A181617

/-- `n*2*n/tan(acot(n+1))` -/
def P2992938951197112702.Spec : Prop :=
  ∀ n, P2992938951197112702.a n = (A181617 (n + 1) : ℝ)

end A181617

/-! ## A181617.P4699109041807990819

`n*2*n/cot(atan(n+1))`
-/

namespace A181617.P4699109041807990819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A181617.P4699109041807990819

namespace A181617

/-- `n*2*n/cot(atan(n+1))` -/
def P4699109041807990819.Spec : Prop :=
  ∀ n, P4699109041807990819.a n = (A181617 (n + 1) : ℝ)

end A181617

/-! ## A181617.P9665271785407355985

`xor(1, 2*n*∑[2*n]+1)`
-/

namespace A181617.P9665271785407355985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A181617.P9665271785407355985

namespace A181617

/-- `xor(1, 2*n*∑[2*n]+1)` -/
def P9665271785407355985.Spec : Prop :=
  ∀ n, (P9665271785407355985.a n : ℤ) = A181617 (n + 1)

end A181617

/-! ## A181617.P6838439891471621167

`or(1, 2*n*∑[2*n])-1`
-/

namespace A181617.P6838439891471621167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A181617.P6838439891471621167

namespace A181617

/-- `or(1, 2*n*∑[2*n])-1` -/
def P6838439891471621167.Spec : Prop :=
  ∀ n, P6838439891471621167.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P4197984157501472580

`xor(1, 2*n*∑[2*n])-1`
-/

namespace A181617.P4197984157501472580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A181617.P4197984157501472580

namespace A181617

/-- `xor(1, 2*n*∑[2*n])-1` -/
def P4197984157501472580.Spec : Prop :=
  ∀ n, P4197984157501472580.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P5650469729367852937

`(n+1)*Δ[C(2*n, 3)]/2`
-/

namespace A181617.P5650469729367852937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A181617.P5650469729367852937

namespace A181617

/-- `(n+1)*Δ[C(2*n, 3)]/2` -/
def P5650469729367852937.Spec : Prop :=
  ∀ n, P5650469729367852937.a n = (A181617 (n + 1) : ℚ)

theorem P5650469729367852937.correct : P5650469729367852937.Spec := by
  intro n
  simp only [A181617, Nat.add_sub_cancel, A181617.P5650469729367852937.f1, A181617.P5650469729367852937.a, A181617.P16189160245016811923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181617

/-! ## A181617.P15012356447723745849

`and(2*n*n*(n+1), -2)`
-/

namespace A181617.P15012356447723745849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n * (n * (n + 1)) : ℤ) (-2)

end

end A181617.P15012356447723745849

namespace A181617

/-- `and(2*n*n*(n+1), -2)` -/
def P15012356447723745849.Spec : Prop :=
  ∀ n, P15012356447723745849.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P2910136246041606675

`abs((n+1)*(C(2*n+1, 2)-n))`
-/

namespace A181617.P2910136246041606675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.choose (2 * n + 1) 2 : ℤ) - (n : ℤ))|

end

end A181617.P2910136246041606675

namespace A181617

/-- `abs((n+1)*(C(2*n+1, 2)-n))` -/
def P2910136246041606675.Spec : Prop :=
  ∀ n, P2910136246041606675.a n = A181617 (n + 1)

end A181617

/-! ## A181617.P15539089442198928829

`-((n+1)*(n-C(2*n+1, 2)))`
-/

namespace A181617.P15539089442198928829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ((n : ℤ) - (Nat.choose (2 * n + 1) 2 : ℤ)))

end

end A181617.P15539089442198928829

namespace A181617

/-- `-((n+1)*(n-C(2*n+1, 2)))` -/
def P15539089442198928829.Spec : Prop :=
  ∀ n, P15539089442198928829.a n = A181617 (n + 1)

theorem P15539089442198928829.correct : P15539089442198928829.Spec := by
  intro n
  simp only [A181617, Nat.add_sub_cancel, A181617.P15539089442198928829.a, A181617.P16189160245016811923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181617

/-!
# A181618: Number of n-game win/loss/draw series that contain at least one dead game.

The programs for A181618, the canonical program `A181618.P11863935237551342240` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181618 has offset 1).

The definition of A181618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181618.P11863935237551342240

`3^(n+1)-3*A002426(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181618

/-- `3^(n+1)-3*A002426(n+1)` -/
def P11863935237551342240.Spec : Prop :=
  ∀ n, P11863935237551342240.a n = A181618 (n + 1)

theorem P11863935237551342240.correct : P11863935237551342240.Spec := by
  intro n
  simp only [A181618, Nat.add_sub_cancel]

end A181618

/-! ## A181618.P16415760494037054447

`6*(A055217(n)-A000244(n))`
-/

namespace A181618.P16415760494037054447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A055217 n - A000244 n)

end

end A181618.P16415760494037054447

namespace A181618

/-- `6*(A055217(n)-A000244(n))` -/
def P16415760494037054447.Spec : Prop :=
  ∀ n, P16415760494037054447.a n = A181618 (n + 1)

end A181618

/-! ## A181618.P7192088703349081413

`3*(A000244(n)-A002426(n+1))`
-/

namespace A181618.P7192088703349081413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000244 n - A002426 (n + 1))

end

end A181618.P7192088703349081413

namespace A181618

/-- `3*(A000244(n)-A002426(n+1))` -/
def P7192088703349081413.Spec : Prop :=
  ∀ n, P7192088703349081413.a n = A181618 (n + 1)

theorem P7192088703349081413.correct : P7192088703349081413.Spec := by
  intro n
  simp only [A181618, Nat.add_sub_cancel, A181618.P7192088703349081413.a, A181618.P11863935237551342240.a, A000244, A000244.P17162167222172810417.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181618

/-! ## A181618.P7532137223854093280

`3*(A000244(n)-record[A115990(n)])`
-/

namespace A181618.P7532137223854093280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000244 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A181618.P7532137223854093280

namespace A181618

/-- `3*(A000244(n)-record[A115990(n)])` -/
def P7532137223854093280.Spec : Prop :=
  ∀ n, P7532137223854093280.a n = A181618 (n + 1)

end A181618

/-! ## A181618.P10141275132898569919

`A000244(n+1)-A008486(A002426(n+1))`
-/

namespace A181618.P10141275132898569919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A008486 (A002426 (n + 1)).toNat

end

end A181618.P10141275132898569919

namespace A181618

/-- `A000244(n+1)-A008486(A002426(n+1))` -/
def P10141275132898569919.Spec : Prop :=
  ∀ n, P10141275132898569919.a n = A181618 (n + 1)

end A181618

/-!
# A181620: Sequence starting with 2 such that the sum of any two distinct terms is a semiprime having two distinct prime factors.

The programs for A181620, there is no canonical definition to state claims against.
-/

/-! ## A181620.P1554983139287501634

`A215244(A074440(n+4))-1`
-/

namespace A181620.P1554983139287501634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (A074440 (n + 4)).toNat - 1

end

end A181620.P1554983139287501634

/-!
# A181622: Sequence starting with 1 such that the sum of any two distinct terms has three distinct prime factors.

The programs for A181622, there is no canonical definition to state claims against.
-/

/-! ## A181622.P3400177862727327635

`A344231(∪[A000045(2*(n+2))², A000420(n)])`
-/

namespace A181622.P3400177862727327635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 2)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344231 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A181622.P3400177862727327635

/-!
# A181625: Problem 17 in Knuth's Art of Computer Programming, vol. 1, section 1.3.3 asks which is the average length L(k) of the cycles among the permutations on k elements. The n-th term of this sequence is the least k such that L(k) >= n.

The programs for A181625, there is no canonical definition to state claims against.
-/

/-! ## A181625.P1708844360586797901

`A088907(n+1)-floor(acot(n))`
-/

namespace A181625.P1708844360586797901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A181625.P1708844360586797901

/-! ## A181625.P3673198185296986614

`A171526(A088907(n+1))`
-/

namespace A181625.P3673198185296986614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A088907 (n + 1)).toNat

end

end A181625.P3673198185296986614

/-! ## A181625.P1170769132434478834

`A088907(n+1)-A000007(n)`
-/

namespace A181625.P1170769132434478834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A000007 n

end

end A181625.P1170769132434478834

/-! ## A181625.P17479521108571814839

`A088907(n+1)-A088157(n)`
-/

namespace A181625.P17479521108571814839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A088157 n

end

end A181625.P17479521108571814839

/-! ## A181625.P17082450805859564496

`A088907(n+1)-A112316(n)`
-/

namespace A181625.P17082450805859564496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A112316 n

end

end A181625.P17082450805859564496

/-! ## A181625.P6428645060572287245

`A088907(n+1)-A151810(n)`
-/

namespace A181625.P6428645060572287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A151810 n

end

end A181625.P6428645060572287245

/-! ## A181625.P13247011113342438771

`A088907(n+1)-A151878(n)`
-/

namespace A181625.P13247011113342438771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A151878 n

end

end A181625.P13247011113342438771

/-! ## A181625.P14171884047504080714

`A088907(n+1)-A151909(n)`
-/

namespace A181625.P14171884047504080714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A151909 n

end

end A181625.P14171884047504080714

/-! ## A181625.P14698946307007989779

`A088907(n+1)-A151933(n)`
-/

namespace A181625.P14698946307007989779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A151933 n

end

end A181625.P14698946307007989779

/-! ## A181625.P2126669240170603645

`A088907(n+1)-A151934(n)`
-/

namespace A181625.P2126669240170603645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088907 (n + 1) - A151934 n

end

end A181625.P2126669240170603645

/-!
# A181626: Number of closed walks of length n in a kite graph (K4 with one edge deleted).

The programs for A181626, the canonical program `A181626.P12388810184021551048` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181626 has offset 1).

The definition of A181626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181626.P12388810184021551048

`5*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=0, a(2)=10, a(3)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181626

/-- `5*a(n-2)+4*a(n-3)` -/
def P12388810184021551048.Spec : Prop :=
  ∀ n, (P12388810184021551048.a n : ℤ) = A181626 (n + 1)

theorem P12388810184021551048.correct : P12388810184021551048.Spec := by
  intro n
  simp only [A181626, Nat.add_sub_cancel]

end A181626

/-! ## A181626.P17504617595041823165

`xor(6, a(n-1)+4*a(n-2))` with `a(0)=4, a(1)=0, a(2)=10`
-/

namespace A181626.P17504617595041823165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 10] fun n a =>
  Nat.xor 6 (a (n - 1) + 4 * a (n - 2))

end

end A181626.P17504617595041823165

namespace A181626

/-- `xor(6, a(n-1)+4*a(n-2))` -/
def P17504617595041823165.Spec : Prop :=
  ∀ n, (P17504617595041823165.a n : ℤ) = A181626 (n + 1)

end A181626

/-! ## A181626.P6158996071385265531

`A033999(n)+or(1, A072265(n))`
-/

namespace A181626.P6158996071385265531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + Int.lor 1 (A072265 n)

end

end A181626.P6158996071385265531

namespace A181626

/-- `A033999(n)+or(1, A072265(n))` -/
def P6158996071385265531.Spec : Prop :=
  ∀ n, P6158996071385265531.a n = A181626 (n + 1)

end A181626

/-! ## A181626.P9780173497122896544

`A009531(A005408(n))+or(1, A072265(n))`
-/

namespace A181626.P9780173497122896544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A005408 n).toNat + Int.lor 1 (A072265 n)

end

end A181626.P9780173497122896544

namespace A181626

/-- `A009531(A005408(n))+or(1, A072265(n))` -/
def P9780173497122896544.Spec : Prop :=
  ∀ n, P9780173497122896544.a n = A181626 (n + 1)

end A181626

/-! ## A181626.P17522099627083265322

`or(1, A072265(n))+A000035(n+1)-A000035(n)`
-/

namespace A181626.P17522099627083265322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072265 n) + (A000035 (n + 1) - A000035 n)

end

end A181626.P17522099627083265322

namespace A181626

/-- `or(1, A072265(n))+A000035(n+1)-A000035(n)` -/
def P17522099627083265322.Spec : Prop :=
  ∀ n, P17522099627083265322.a n = A181626 (n + 1)

end A181626

/-! ## A181626.P15096262658778437176

`A130595(A000217(n))+or(1, A072265(n))`
-/

namespace A181626.P15096262658778437176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A000217 n).toNat + Int.lor 1 (A072265 n)

end

end A181626.P15096262658778437176

namespace A181626

/-- `A130595(A000217(n))+or(1, A072265(n))` -/
def P15096262658778437176.Spec : Prop :=
  ∀ n, P15096262658778437176.a n = A181626 (n + 1)

end A181626

/-!
# A181627: Number of iterations of phi(n) if n is a perfect totient number.

The programs for A181627, there is no canonical definition to state claims against.
-/

/-! ## A181627.P8353454523062918640

`A049108(A082897(n+1))-1`
-/

namespace A181627.P8353454523062918640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A082897 (n + 1)).toNat - 1

end

end A181627.P8353454523062918640

/-! ## A181627.P6039385726409429128

`A003434(A082897(n+1))`
-/

namespace A181627.P6039385726409429128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A082897 (n + 1)).toNat

end

end A181627.P6039385726409429128

/-! ## A181627.P11095647100071836334

`A049108(A000010(2*A082897(n+1)))`
-/

namespace A181627.P11095647100071836334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000010 (2 * A082897 (n + 1)).toNat).toNat

end

end A181627.P11095647100071836334

/-! ## A181627.P17011437173732442689

`A064415(A082897(n+1))+A007318(∑[n])`
-/

namespace A181627.P17011437173732442689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A082897 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181627.P17011437173732442689

/-! ## A181627.P7604455640641266177

`A049107(n+1)+A032358(A082897(n+1))`
-/

namespace A181627.P7604455640641266177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (n + 1) + A032358 (A082897 (n + 1)).toNat

end

end A181627.P7604455640641266177

/-!
# A181628: Numbers k such that (2^k + 3^k)/13 is prime.

The programs for A181628, there is no canonical definition to state claims against.
-/

/-! ## A181628.P8045404844863726637

`2*A211409(n+1)`
-/

namespace A181628.P8045404844863726637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211409 (n + 1)

end

end A181628.P8045404844863726637

/-! ## A181628.P8753047214682126854

`lcm(2, A211409(A295886(n+1)))`
-/

namespace A181628.P8753047214682126854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A211409 (A295886 (n + 1)).toNat)

end

end A181628.P8753047214682126854

/-! ## A181628.P6719391603709240813

`filter[A050244(n+1), A354353(#)]`
-/

namespace A181628.P6719391603709240813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A181628.P6719391603709240813

/-! ## A181628.P17592686376302604314

`filter[A050244(n+1), A354819(#)]`
-/

namespace A181628.P17592686376302604314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A181628.P17592686376302604314

/-! ## A181628.P7313655734508865644

`filter[A050244(n+1), A354981(#)]`
-/

namespace A181628.P7313655734508865644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354981 (f1 j).toNat = 1) n)

end

end A181628.P7313655734508865644

/-!
# A181629: Positive integers k = p_1^{r_1} ... p_n^{r_n} such that sum_{i=1..n} p_i^{-r_i} >= 1 (Non-Hyperbolic Integers).

The programs for A181629, there is no canonical definition to state claims against.
-/

/-! ## A181629.P6069427276381357607

`∏{e}[(gcd(2, n)+1)^n, A346245(#)]`
-/

namespace A181629.P6069427276381357607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A346245 (Nat.factorization (f1 n) p)

end

end A181629.P6069427276381357607

/-! ## A181629.P12921483447773861734

`∏{e}[A092270(n), A346245(#)]`
-/

namespace A181629.P12921483447773861734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A346245 (Nat.factorization (f1 n).natAbs p)

end

end A181629.P12921483447773861734

/-! ## A181629.P12445288059204463647

`∏{e}[A000244(n), A346245(#)]`
-/

namespace A181629.P12445288059204463647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A346245 (Nat.factorization (f1 n).natAbs p)

end

end A181629.P12445288059204463647

/-! ## A181629.P12440152227240239655

`record[∏{p}[A244130(n)*A337386(n+1), #]]`
-/

namespace A181629.P12440152227240239655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 n * A337386 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181629.P12440152227240239655

/-! ## A181629.P16004489443623063890

`A076734(A151797(n+1)%A151801(n+4))`
-/

namespace A181629.P16004489443623063890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (Int.tmod (A151797 (n + 1)) (A151801 (n + 4))).toNat

end

end A181629.P16004489443623063890

/-!
# A181631: Triangle by rows, number of leading 1's in the maximal Fibonacci representation (A104326).

The programs for A181631, the canonical program `A181631.P6568415442917729801` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181631 has offset 1).

The definition of A181631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A090996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181631.P6568415442917729801

`A090996(A003754(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A181631

/-- `A090996(A003754(n+2))` -/
def P6568415442917729801.Spec : Prop :=
  ∀ n, P6568415442917729801.a n = A181631 (n + 1)

theorem P6568415442917729801.correct : P6568415442917729801.Spec := by
  intro n
  simp only [A181631, Nat.add_sub_cancel]

end A181631

/-! ## A181631.P2106326145846586021

`A090996(A052499(n))`
-/

namespace A181631.P2106326145846586021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A052499 n).toNat

end

end A181631.P2106326145846586021

namespace A181631

/-- `A090996(A052499(n))` -/
def P2106326145846586021.Spec : Prop :=
  ∀ n, P2106326145846586021.a n = A181631 (n + 1)

end A181631

/-! ## A181631.P16250226718240141712

`A090996(A336231(n+2))`
-/

namespace A181631.P16250226718240141712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A336231 (n + 2)).toNat

end

end A181631.P16250226718240141712

namespace A181631

/-- `A090996(A336231(n+2))` -/
def P16250226718240141712.Spec : Prop :=
  ∀ n, P16250226718240141712.a n = A181631 (n + 1)

end A181631

/-! ## A181631.P9459965115976225780

`A090996(A247648(n+1)+A247648(n+1)-A365808(n+2)+1)`
-/

namespace A181631.P9459965115976225780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A247648 (n + 1) + (A247648 (n + 1) - A365808 (n + 2)) + 1).toNat

end

end A181631.P9459965115976225780

namespace A181631

/-- `A090996(A247648(n+1)+A247648(n+1)-A365808(n+2)+1)` -/
def P9459965115976225780.Spec : Prop :=
  ∀ n, P9459965115976225780.a n = A181631 (n + 1)

end A181631

/-! ## A181631.P15119510131174895379

`A090996(A358654(n+1)+1)`
-/

namespace A181631.P15119510131174895379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A358654 (n + 1) + 1).toNat

end

end A181631.P15119510131174895379

namespace A181631

/-- `A090996(A358654(n+1)+1)` -/
def P15119510131174895379.Spec : Prop :=
  ∀ n, P15119510131174895379.a n = A181631 (n + 1)

end A181631

/-! ## A181631.P10656374203565102773

`A385892(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)+1)`
-/

namespace A181631.P10656374203565102773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385892 (|f1 (n + 1) - f1 n - (n : ℤ)| + 1).toNat

end

end A181631.P10656374203565102773

namespace A181631

/-- `A385892(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)+1)` -/
def P10656374203565102773.Spec : Prop :=
  ∀ n, P10656374203565102773.a n = A181631 (n + 1)

end A181631

/-! ## A181631.P6841802372222077598

`A090996(A385890(n+2))`
-/

namespace A181631.P6841802372222077598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A385890 (n + 2)).toNat

end

end A181631.P6841802372222077598

namespace A181631

/-- `A090996(A385890(n+2))` -/
def P6841802372222077598.Spec : Prop :=
  ∀ n, P6841802372222077598.a n = A181631 (n + 1)

end A181631

/-!
# A181632: The Fibonacci Champernowne sequence.

The programs for A181632, there is no canonical definition to state claims against.
-/

/-! ## A181632.P7207223001444835707

`A259599(A298534(n+1)+A104684(n))`
-/

namespace A181632.P7207223001444835707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (A298534 (n + 1) + A104684 n).toNat

end

end A181632.P7207223001444835707

/-! ## A181632.P17868764428889190568

`A008966(A274079(n+1)+A111617(n+1))`
-/

namespace A181632.P17868764428889190568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A274079 (n + 1) + A111617 (n + 1)).toNat

end

end A181632.P17868764428889190568

/-! ## A181632.P10962339910742851272

`A000035(A118663(n+1)*A324841(2*(n+2)))`
-/

namespace A181632.P10962339910742851272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A118663 (n + 1) * A324841 (2 * (n + 2))).toNat

end

end A181632.P10962339910742851272

/-! ## A181632.P6556380373855279305

`A002485(n)%A016789(A002265(A018843(n)))`
-/

namespace A181632.P6556380373855279305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002485 n) (A016789 (A002265 (A018843 n).toNat).toNat)

end

end A181632.P6556380373855279305

/-! ## A181632.P6837936016886590846

`(A002485(n)^7)%2`
-/

namespace A181632.P6837936016886590846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002485 n ^ 7) 2

end

end A181632.P6837936016886590846

/-!
# A181633: Irregular triangle read by rows, where row n contains the pairs [q,q'] of all compositions n=q+q' with q,q'>0 and q == q' (mod 3).

The programs for A181633, there is no canonical definition to state claims against.
-/

/-! ## A181633.P2873927314339683910

`A265370(a(a(n-1)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P2873927314339683910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (a (n - 1)).toNat).toNat + A181634 n

end

end A181633.P2873927314339683910

/-! ## A181633.P1717178692481107984

`A265370(a(A000122(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P1717178692481107984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A000122 n).toNat).toNat + A181634 n

end

end A181633.P1717178692481107984

/-! ## A181633.P13220510931430403921

`A265370(a(A002262(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P13220510931430403921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A002262 n).toNat).toNat + A181634 n

end

end A181633.P13220510931430403921

/-! ## A181633.P8740461458862580531

`A265370(a(A025897(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P8740461458862580531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A025897 n).toNat).toNat + A181634 n

end

end A181633.P8740461458862580531

/-! ## A181633.P3832787285539097211

`A265370(a(A077267(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P3832787285539097211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A077267 n).toNat).toNat + A181634 n

end

end A181633.P3832787285539097211

/-! ## A181633.P6116720370978783963

`A265370(a(A135767(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P6116720370978783963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A135767 n).toNat).toNat + A181634 n

end

end A181633.P6116720370978783963

/-! ## A181633.P13850354427618171483

`A265370(a(A219347(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P13850354427618171483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A219347 n).toNat).toNat + A181634 n

end

end A181633.P13850354427618171483

/-! ## A181633.P5470073787095020710

`A265370(a(A037817(n+1)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P5470073787095020710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (A037817 (n + 1)).toNat).toNat + A181634 n

end

end A181633.P5470073787095020710

/-! ## A181633.P14259928190125433477

`A265370(a(2%A048760(n)))+A181634(n)` with `a(0)=1, a(1)=1`
-/

namespace A181633.P14259928190125433477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265370 (a (Int.tmod 2 (A048760 n)).toNat).toNat + A181634 n

end

end A181633.P14259928190125433477

/-!
# A181634: Irregular triangle T(n,k) where row n contains all pairs [a,b] of the compositions n=a+b into nonnegative pairs where a == b (mod 3).

The programs for A181634, there is no canonical definition to state claims against.
-/

/-! ## A181634.P17385886604890399561

`A181633(n+4)-1`
-/

namespace A181634.P17385886604890399561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181633 (n + 4) - 1

end

end A181634.P17385886604890399561

/-! ## A181634.P17574449634204343298

`A023443(A181633(n+4))`
-/

namespace A181634.P17574449634204343298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A181633 (n + 4)).toNat

end

end A181634.P17574449634204343298

/-! ## A181634.P11953087630668067988

`A023444(A181633(n+4)+1)`
-/

namespace A181634.P11953087630668067988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A181633 (n + 4) + 1).toNat

end

end A181634.P11953087630668067988

/-! ## A181634.P2547296507447707959

`A004507(A181633(n+4)+8)`
-/

namespace A181634.P2547296507447707959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A181633 (n + 4) + 8).toNat

end

end A181634.P2547296507447707959

/-! ## A181634.P14376882806022125072

`A023445(A181633(n+4)+1)+1`
-/

namespace A181634.P14376882806022125072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A181633 (n + 4) + 1).toNat + 1

end

end A181634.P14376882806022125072

/-! ## A181634.P11959670754646101061

`A260196(n+2)+A181633(n+4)`
-/

namespace A181634.P11959670754646101061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A181633 (n + 4)

end

end A181634.P11959670754646101061

/-! ## A181634.P10806652278264727647

`A247751(A181633(n+4)%(n+3))`
-/

namespace A181634.P10806652278264727647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (Int.tmod (A181633 (n + 4)) (n + 3 : ℤ)).toNat

end

end A181634.P10806652278264727647

/-! ## A181634.P3290266821112872805

`A236850(A181633(n+4))%A005557(n)`
-/

namespace A181634.P3290266821112872805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236850 (A181633 (n + 4)).toNat) (A005557 n)

end

end A181634.P3290266821112872805

/-! ## A181634.P7299284451112260739

`A000041(((-1)^n)²)*A236850(A181633(n+4))`
-/

namespace A181634.P7299284451112260739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A236850 (A181633 (n + 4)).toNat

end

end A181634.P7299284451112260739

/-!
# A181635: Expansion of 36*x^2*(1+36*x^2-6*x) / ((36*x^2+6*x+1)*(1-6*x)^2).

The programs for A181635, the canonical program `A181635.P11492006392331502600` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181635 has offset 1).

The definition of A181635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181635.P11492006392331502600

`6^(n+1)*A008612(2*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181635

/-- `6^(n+1)*A008612(2*n+1)` -/
def P11492006392331502600.Spec : Prop :=
  ∀ n, P11492006392331502600.a n = A181635 (n + 1)

theorem P11492006392331502600.correct : P11492006392331502600.Spec := by
  intro n
  simp only [A181635, Nat.add_sub_cancel]

end A181635

/-! ## A181635.P2660864556091583767

`A008612(2*n+1)*A164532(2*n+3)`
-/

namespace A181635.P2660864556091583767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * n + 1) * A164532 (2 * n + 3)

end

end A181635.P2660864556091583767

namespace A181635

/-- `A008612(2*n+1)*A164532(2*n+3)` -/
def P2660864556091583767.Spec : Prop :=
  ∀ n, P2660864556091583767.a n = A181635 (n + 1)

end A181635

/-! ## A181635.P7233085439345660349

`(A002264(2*n+1)-A002264(n+1))*A000400(n+1)`
-/

namespace A181635.P7233085439345660349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (2 * n + 1) - A002264 (n + 1)) * A000400 (n + 1)

end

end A181635.P7233085439345660349

namespace A181635

/-- `(A002264(2*n+1)-A002264(n+1))*A000400(n+1)` -/
def P7233085439345660349.Spec : Prop :=
  ∀ n, P7233085439345660349.a n = A181635 (n + 1)

end A181635

/-! ## A181635.P6003191063238243427

`(A008611(2*n+1)-A008611(n+1))*A056452(2*(n+1))`
-/

namespace A181635.P6003191063238243427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 (2 * n + 1) - A008611 (n + 1)) * A056452 (2 * (n + 1))

end

end A181635.P6003191063238243427

namespace A181635

/-- `(A008611(2*n+1)-A008611(n+1))*A056452(2*(n+1))` -/
def P6003191063238243427.Spec : Prop :=
  ∀ n, P6003191063238243427.a n = A181635 (n + 1)

end A181635

/-!
# A181636: Primes of form (2^n + 3^n)/13.

The programs for A181636, there is no canonical definition to state claims against.
-/

/-! ## A181636.P9391605759810199132

`(2^A181628(n+1)+3^A181628(n+1))/13`
-/

namespace A181636.P9391605759810199132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A181628 (n + 1) : ℤ) + (3 : ℚ) ^ (A181628 (n + 1) : ℤ)) / 13

end

end A181636.P9391605759810199132

/-!
# A181638: Numbers n such that bigomega(n) = reversal(n).

The programs for A181638, there is no canonical definition to state claims against.
-/

/-! ## A181638.P6221553492489596908

`A000027((n+3)*A285435(n+1))`
-/

namespace A181638.P6221553492489596908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 3 : ℤ) * A285435 (n + 1)).toNat

end

end A181638.P6221553492489596908

/-!
# A181639: Numbers n such that omega(n) = digit-reverse(n).

The programs for A181639, there is no canonical definition to state claims against.
-/

/-! ## A181639.P6705877968005385164

`10*a(n-2)` with `a(0)=20, a(1)=30`
-/

namespace A181639.P6705877968005385164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 30] fun n a =>
  10 * a (n - 2)

end

end A181639.P6705877968005385164

/-! ## A181639.P3230333813743397721

`a(n-2)/(1-9/10)` with `a(0)=20, a(1)=30`
-/

namespace A181639.P3230333813743397721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [20, 30] fun n a =>
  a (n - 2) / (1 - (9 : ℚ) / 10)

end

end A181639.P3230333813743397721

/-! ## A181639.P17470545080639816043

`∪[20*10^n-6, 30*10^n-6]+6`
-/

namespace A181639.P17470545080639816043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * 10 ^ n : ℤ) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * 10 ^ n : ℤ) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 6

end

end A181639.P17470545080639816043

/-! ## A181639.P15846303281742372650

`record[2*A166626(n+2)]`
-/

namespace A181639.P15846303281742372650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181639.P15846303281742372650

/-! ## A181639.P13952983713733906632

`record[A166626(n+4)/5]`
-/

namespace A181639.P13952983713733906632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166626 (n + 4) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181639.P13952983713733906632

/-!
# A181640: Partial sums of floor(n^2/5) (A118015).

The programs for A181640, the canonical program `A181640.P15546021824880198062` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181640 has offset 0).

The definition of A181640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181640.P15546021824880198062

`a(n-5)+(n-2)²` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181640

/-- `a(n-5)+(n-2)²` -/
def P15546021824880198062.Spec : Prop :=
  ∀ n, P15546021824880198062.a n = A181640 n

theorem P15546021824880198062.correct : P15546021824880198062.Spec := by
  intro n
  simp only [A181640]

end A181640

/-! ## A181640.P1752710872741146824

`floor((2*n^3+3*n²-11*n+6)/30)`
-/

namespace A181640.P1752710872741146824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 3 * n ^ 2 : ℤ) - (11 * n : ℤ) + 6 : ℚ) / 30⌋

end

end A181640.P1752710872741146824

namespace A181640

/-- `floor((2*n^3+3*n²-11*n+6)/30)` -/
def P1752710872741146824.Spec : Prop :=
  ∀ n, P1752710872741146824.a n = A181640 n

end A181640

/-! ## A181640.P17542484507922622623

`∑[A118015(n)]`
-/

namespace A181640.P17542484507922622623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181640.P17542484507922622623

namespace A181640

/-- `∑[A118015(n)]` -/
def P17542484507922622623.Spec : Prop :=
  ∀ n, P17542484507922622623.a n = A181640 n

end A181640

/-! ## A181640.P9251451155505655216

`∑[∑[n+1-A058207(n+1)]]/2`
-/

namespace A181640.P9251451155505655216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A058207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A181640.P9251451155505655216

namespace A181640

/-- `∑[∑[n+1-A058207(n+1)]]/2` -/
def P9251451155505655216.Spec : Prop :=
  ∀ n, P9251451155505655216.a n = (A181640 n : ℚ)

end A181640

/-! ## A181640.P9640734202204656403

`A173690(n)-A194222(n+1)`
-/

namespace A181640.P9640734202204656403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 n - A194222 (n + 1)

end

end A181640.P9640734202204656403

namespace A181640

/-- `A173690(n)-A194222(n+1)` -/
def P9640734202204656403.Spec : Prop :=
  ∀ n, P9640734202204656403.a n = A181640 n

end A181640

/-! ## A181640.P12755584533670962001

`∑[A002266(n²)]`
-/

namespace A181640.P12755584533670962001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181640.P12755584533670962001

namespace A181640

/-- `∑[A002266(n²)]` -/
def P12755584533670962001.Spec : Prop :=
  ∀ n, P12755584533670962001.a n = A181640 n

end A181640

/-! ## A181640.P10019593036965651364

`∑[A130496(n²)/2]`
-/

namespace A181640.P10019593036965651364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130496 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181640.P10019593036965651364

namespace A181640

/-- `∑[A130496(n²)/2]` -/
def P10019593036965651364.Spec : Prop :=
  ∀ n, P10019593036965651364.a n = (A181640 n : ℚ)

end A181640

/-! ## A181640.P12130116126440056693

`∑[A059995(2*n²)]`
-/

namespace A181640.P12130116126440056693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181640.P12130116126440056693

namespace A181640

/-- `∑[A059995(2*n²)]` -/
def P12130116126440056693.Spec : Prop :=
  ∀ n, P12130116126440056693.a n = A181640 n

end A181640

/-!
# A181641: Expansion of sqrt(1-4*x)/(1+x).

The programs for A181641, the canonical program `A181641.P10826610368227249791` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181641 has offset 0).

The definition of A181641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181641.P12856105371783175712

`A002420(n)-a(n-1)` with `a(0)=1`
-/

namespace A181641.P12856105371783175712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002420 n - a (n - 1)

end

end A181641.P12856105371783175712

namespace A181641

/-- `A002420(n)-a(n-1)` -/
def P12856105371783175712.Spec : Prop :=
  ∀ n, P12856105371783175712.a n = A181641 n

end A181641

/-! ## A181641.P10826610368227249791

`2*A115140(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181641

/-- `2*A115140(n)-a(n-1)` -/
def P10826610368227249791.Spec : Prop :=
  ∀ n, P10826610368227249791.a n = A181641 n

theorem P10826610368227249791.correct : P10826610368227249791.Spec := by
  intro n
  simp only [A181641]

end A181641

/-! ## A181641.P8350647526190500004

`(-1)^n*∑[A104624(2*n)]`
-/

namespace A181641.P8350647526190500004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181641.P8350647526190500004

namespace A181641

/-- `(-1)^n*∑[A104624(2*n)]` -/
def P8350647526190500004.Spec : Prop :=
  ∀ n, P8350647526190500004.a n = A181641 n

end A181641

/-! ## A181641.P12160717761007364110

`-(a(n-1)+2*A000108(n-1))` with `a(0)=1`
-/

namespace A181641.P12160717761007364110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(a (n - 1) + 2 * A000108 (n - 1))

end

end A181641.P12160717761007364110

namespace A181641

/-- `-(a(n-1)+2*A000108(n-1))` -/
def P12160717761007364110.Spec : Prop :=
  ∀ n, P12160717761007364110.a n = A181641 n

end A181641

/-! ## A181641.P16398671922535137711

`-(a(n-1)+lcm(2, A089408(2*n)))` with `a(0)=1`
-/

namespace A181641.P16398671922535137711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(a (n - 1) + (Int.lcm 2 (A089408 (2 * n)) : ℤ))

end

end A181641.P16398671922535137711

namespace A181641

/-- `-(a(n-1)+lcm(2, A089408(2*n)))` -/
def P16398671922535137711.Spec : Prop :=
  ∀ n, P16398671922535137711.a n = A181641 n

end A181641

/-! ## A181641.P12228289067913818022

`A000108(n)/(3/(n+1)-2)-a(n-1)` with `a(0)=1`
-/

namespace A181641.P12228289067913818022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000108 n : ℚ) / (3 / (n + 1 : ℚ) - 2) - a (n - 1)

end

end A181641.P12228289067913818022

namespace A181641

/-- `A000108(n)/(3/(n+1)-2)-a(n-1)` -/
def P12228289067913818022.Spec : Prop :=
  ∀ n, P12228289067913818022.a n = (A181641 n : ℚ)

end A181641

/-! ## A181641.P7633538851038018197

`∑[A104624(2*n)]*A033999(n)`
-/

namespace A181641.P7633538851038018197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A181641.P7633538851038018197

namespace A181641

/-- `∑[A104624(2*n)]*A033999(n)` -/
def P7633538851038018197.Spec : Prop :=
  ∀ n, P7633538851038018197.a n = A181641 n

end A181641

/-! ## A181641.P13296066970600972578

`2*A106192(n)-A106191(n)`
-/

namespace A181641.P13296066970600972578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106192 n - A106191 n

end

end A181641.P13296066970600972578

namespace A181641

/-- `2*A106192(n)-A106191(n)` -/
def P13296066970600972578.Spec : Prop :=
  ∀ n, P13296066970600972578.a n = A181641 n

end A181641

/-! ## A181641.P7930312223690331628

`2*A106192(n)-∑[A002420(n)]`
-/

namespace A181641.P7930312223690331628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106192 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181641.P7930312223690331628

namespace A181641

/-- `2*A106192(n)-∑[A002420(n)]` -/
def P7930312223690331628.Spec : Prop :=
  ∀ n, P7930312223690331628.a n = A181641 n

end A181641

/-! ## A181641.P9330286655268737414

`Δ[A106191(n)-A106192(n)]`
-/

namespace A181641.P9330286655268737414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106191 n - A106192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181641.P9330286655268737414

namespace A181641

/-- `Δ[A106191(n)-A106192(n)]` -/
def P9330286655268737414.Spec : Prop :=
  ∀ n, P9330286655268737414.a n = A181641 n

end A181641

/-! ## A181641.P15775035564389764106

`Δ[∑[A002420(n)]-A106192(n)]`
-/

namespace A181641.P15775035564389764106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A106192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181641.P15775035564389764106

namespace A181641

/-- `Δ[∑[A002420(n)]-A106192(n)]` -/
def P15775035564389764106.Spec : Prop :=
  ∀ n, P15775035564389764106.a n = A181641 n

end A181641

/-! ## A181641.P187160109874625031

`A002420(n+1)-Δ[A106192(n)]`
-/

namespace A181641.P187160109874625031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 1) - (f1 (n + 1) - f1 n)

end

end A181641.P187160109874625031

namespace A181641

/-- `A002420(n+1)-Δ[A106192(n)]` -/
def P187160109874625031.Spec : Prop :=
  ∀ n, P187160109874625031.a n = A181641 n

end A181641

/-! ## A181641.P10258347425934175846

`A002420(n+1)+A106192(n)-A106192(n+1)`
-/

namespace A181641.P10258347425934175846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 1) + (A106192 n - A106192 (n + 1))

end

end A181641.P10258347425934175846

namespace A181641

/-- `A002420(n+1)+A106192(n)-A106192(n+1)` -/
def P10258347425934175846.Spec : Prop :=
  ∀ n, P10258347425934175846.a n = A181641 n

end A181641

/-!
# A181642: Minimal sequence whose forwards van Eck transform is the sequence of prime numbers.

The programs for A181642, there is no canonical definition to state claims against.
-/

/-! ## A181642.P3005671211151739023

`A004396(n)%A328471(A048739(n))`
-/

namespace A181642.P3005671211151739023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 n) (A328471 (A048739 n).toNat)

end

end A181642.P3005671211151739023

/-!
# A181644: Eigentriangle for the Catalan triangle (c(x), xc(x)), A033184.

The programs for A181644, there is no canonical definition to state claims against.
-/

/-! ## A181644.P6183825931671604183

`A028237(A186020(n))`
-/

namespace A181644.P6183825931671604183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A186020 n).toNat

end

end A181644.P6183825931671604183

/-! ## A181644.P5316715384684382214

`A381048(A172400(n))`
-/

namespace A181644.P5316715384684382214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381048 (A172400 n).toNat

end

end A181644.P5316715384684382214

/-! ## A181644.P2070379495083773613

`A132075(A142589(n+1))`
-/

namespace A181644.P2070379495083773613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A142589 (n + 1)).toNat

end

end A181644.P2070379495083773613

/-! ## A181644.P14128635054167556138

`A094280(A213936(n+1))`
-/

namespace A181644.P14128635054167556138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A213936 (n + 1)).toNat

end

end A181644.P14128635054167556138

/-! ## A181644.P7424555733956358621

`A347777(A110510(n+1))`
-/

namespace A181644.P7424555733956358621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 (A110510 (n + 1)).toNat

end

end A181644.P7424555733956358621

/-!
# A181645: Triangle Id-(xc(x),xc(x)), c(x) the g.f. of the Catalan numbers A000108.

The programs for A181645, there is no canonical definition to state claims against.
-/

/-! ## A181645.P5516873458477107117

`char[∑[n-1]]-A059365(n+1)`
-/

namespace A181645.P5516873458477107117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A059365 (n + 1)

end

end A181645.P5516873458477107117

/-! ## A181645.P1692151007047766821

`char[∑[n-1]]-A106566(n+1)`
-/

namespace A181645.P1692151007047766821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A106566 (n + 1)

end

end A181645.P1692151007047766821

/-! ## A181645.P15377155262596291322

`Δ[A003056(n)-∑[A106566(n)]]`
-/

namespace A181645.P15377155262596291322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181645.P15377155262596291322

/-! ## A181645.P6707766399752504540

`or(-A106566(n+1), A023531(n))`
-/

namespace A181645.P6707766399752504540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A106566 (n + 1)) (A023531 n)

end

end A181645.P6707766399752504540

/-! ## A181645.P4090368951319175216

`or(-A106566(n+1), A167374(n))`
-/

namespace A181645.P4090368951319175216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A106566 (n + 1)) (A167374 n)

end

end A181645.P4090368951319175216

/-! ## A181645.P10484014115719107189

`Δ[A002024(n+1)-∑[A106566(n)]]`
-/

namespace A181645.P10484014115719107189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181645.P10484014115719107189

/-! ## A181645.P12650481859038788206

`A349727(n)-A189175(n)%A318107(n)`
-/

namespace A181645.P12650481859038788206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 n - Int.tmod (A189175 n) (A318107 n)

end

end A181645.P12650481859038788206

/-!
# A181646: y(n) is the corresponding value of a(n) in sequence A181643. For a given n it is the minimum value such that a(n)*[a(n)+n]*[a(n)+n+n]=y*y.

The programs for A181646, there is no canonical definition to state claims against.
-/

/-! ## A181646.P12977453728538121169

`C(A001222((2*n)^n-n²+1)², 2)`
-/

namespace A181646.P12977453728538121169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (((2 * n) ^ n : ℤ) - (n ^ 2 : ℤ) + 1).toNat ^ 2).toNat 2

end

end A181646.P12977453728538121169

/-! ## A181646.P16530997778773796129

`C(A336937(A317352(n))², 2)`
-/

namespace A181646.P16530997778773796129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336937 (A317352 n).toNat ^ 2).toNat 2

end

end A181646.P16530997778773796129

/-!
# A181647: Numbers m having the same sum of divisors as m+20 has.

The programs for A181647, there is no canonical definition to state claims against.
-/

/-! ## A181647.P7586498871984432203

`A316313(A008292(2*n+3))+A043986(n+1)`
-/

namespace A181647.P7586498871984432203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (A008292 (2 * n + 3)).toNat + A043986 (n + 1)

end

end A181647.P7586498871984432203

/-!
# A181648: Expansion of x^(-2/3) * psi(x) * c(x^2) / 3 in powers of x where psi() is a Ramanujan theta function and c() is a cubic AGM theta function.

The programs for A181648, there is no canonical definition to state claims against.
-/

/-! ## A181648.P12833405495485491643

`A008443(3*n+2)/3`
-/

namespace A181648.P12833405495485491643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008443 (3 * n + 2) : ℚ) / 3

end

end A181648.P12833405495485491643

/-! ## A181648.P10975959262622540214

`A002264(A008443(3*n+2))`
-/

namespace A181648.P10975959262622540214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008443 (3 * n + 2)).toNat

end

end A181648.P10975959262622540214

/-! ## A181648.P4225310326898921170

`A259655(Δ[n²])`
-/

namespace A181648.P4225310326898921170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A181648.P4225310326898921170

/-! ## A181648.P4865237087905634741

`A000027(A259655(2*n+1))`
-/

namespace A181648.P4865237087905634741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A259655 (2 * n + 1)).toNat

end

end A181648.P4865237087905634741

/-! ## A181648.P2943959857395254661

`A067029(A007918(n))*A259655(2*n+1)`
-/

namespace A181648.P2943959857395254661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A007918 n).toNat * A259655 (2 * n + 1)

end

end A181648.P2943959857395254661

/-! ## A181648.P10340246989062255750

`A259827(8*n+5)/2`
-/

namespace A181648.P10340246989062255750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259827 (8 * n + 5) : ℚ) / 2

end

end A181648.P10340246989062255750

/-! ## A181648.P15364187072778994288

`A006371(A017629(n))`
-/

namespace A181648.P15364187072778994288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A017629 n).toNat

end

end A181648.P15364187072778994288

/-! ## A181648.P1125056204202406270

`A058305(A350051(n))`
-/

namespace A181648.P1125056204202406270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A350051 n).toNat

end

end A181648.P1125056204202406270

/-! ## A181648.P10722776215206007573

`A058305(A017605(2*n+1))`
-/

namespace A181648.P10722776215206007573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017605 (2 * n + 1)).toNat

end

end A181648.P10722776215206007573

/-! ## A181648.P4084627391840495405

`A058305(Δ[n*Δ[A049453(n)]])`
-/

namespace A181648.P4084627391840495405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (n + 1) - f1 n).toNat

end

end A181648.P4084627391840495405

/-!
# A181649: An INVERT sequence for A010054.

The programs for A181649, there is no canonical definition to state claims against.
-/

/-! ## A181649.P7058802941101847462

`A001462(A078678(n)-A001045(n))`
-/

namespace A181649.P7058802941101847462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A078678 n - A001045 n).toNat

end

end A181649.P7058802941101847462

/-! ## A181649.P1677428838842823085

`A357451(n)+A277157(A073039(n+1))`
-/

namespace A181649.P1677428838842823085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357451 n + A277157 (A073039 (n + 1)).toNat

end

end A181649.P1677428838842823085

/-! ## A181649.P14765076630568306307

`or(A267417(A214141(n+1)), A357451(n))`
-/

namespace A181649.P14765076630568306307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267417 (A214141 (n + 1)).toNat) (A357451 n)

end

end A181649.P14765076630568306307

/-!
# A181650: Inverse of number triangle A070909.

The programs for A181650, the canonical program `A181650.P7495452160807174074` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181650 has offset 0).

The definition of A181650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181650.P2727651100885302115

`Δ[floor(atan(A061865(n+1)))]`
-/

namespace A181650.P2727651100885302115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A061865 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P2727651100885302115

namespace A181650

/-- `Δ[floor(atan(A061865(n+1)))]` -/
def P2727651100885302115.Spec : Prop :=
  ∀ n, P2727651100885302115.a n = A181650 n

end A181650

/-! ## A181650.P7495452160807174074

`A070909(n)*A141679(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A181650

/-- `A070909(n)*A141679(n+1)` -/
def P7495452160807174074.Spec : Prop :=
  ∀ n, P7495452160807174074.a n = A181650 n

theorem P7495452160807174074.correct : P7495452160807174074.Spec := by
  intro n
  simp only [A181650]

end A181650

/-! ## A181650.P651668047080814108

`A141679(n+1)*A363343(n+1)`
-/

namespace A181650.P651668047080814108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141679 (n + 1) * A363343 (n + 1)

end

end A181650.P651668047080814108

namespace A181650

/-- `A141679(n+1)*A363343(n+1)` -/
def P651668047080814108.Spec : Prop :=
  ∀ n, P651668047080814108.a n = A181650 n

end A181650

/-! ## A181650.P14720244726203234818

`A023531(n)-A023531(A211394(n+1))`
-/

namespace A181650.P14720244726203234818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n - A023531 (A211394 (n + 1)).toNat

end

end A181650.P14720244726203234818

namespace A181650

/-- `A023531(n)-A023531(A211394(n+1))` -/
def P14720244726203234818.Spec : Prop :=
  ∀ n, P14720244726203234818.a n = A181650 n

end A181650

/-! ## A181650.P17431490651346766041

`Δ[-A133566(n+1)]`
-/

namespace A181650.P17431490651346766041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P17431490651346766041

namespace A181650

/-- `Δ[-A133566(n+1)]` -/
def P17431490651346766041.Spec : Prop :=
  ∀ n, P17431490651346766041.a n = A181650 n

end A181650

/-! ## A181650.P5334546866996619234

`Δ[floor(atan(A325027(n+1)))]`
-/

namespace A181650.P5334546866996619234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A325027 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P5334546866996619234

namespace A181650

/-- `Δ[floor(atan(A325027(n+1)))]` -/
def P5334546866996619234.Spec : Prop :=
  ∀ n, P5334546866996619234.a n = A181650 n

end A181650

/-! ## A181650.P18121653615566480509

`Δ[A088150(A134082(n))]`
-/

namespace A181650.P18121653615566480509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088150 (A134082 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P18121653615566480509

namespace A181650

/-- `Δ[A088150(A134082(n))]` -/
def P18121653615566480509.Spec : Prop :=
  ∀ n, P18121653615566480509.a n = A181650 n

end A181650

/-! ## A181650.P14081910028845494622

`Δ[-A000045(and(3, A110509(n)))]`
-/

namespace A181650.P14081910028845494622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (Int.land 3 (A110509 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P14081910028845494622

namespace A181650

/-- `Δ[-A000045(and(3, A110509(n)))]` -/
def P14081910028845494622.Spec : Prop :=
  ∀ n, P14081910028845494622.a n = A181650 n

end A181650

/-! ## A181650.P18144549905887280488

`Δ[-A010049(and(3, A110509(n)))]`
-/

namespace A181650.P18144549905887280488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010049 (Int.land 3 (A110509 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P18144549905887280488

namespace A181650

/-- `Δ[-A010049(and(3, A110509(n)))]` -/
def P18144549905887280488.Spec : Prop :=
  ∀ n, P18144549905887280488.a n = A181650 n

end A181650

/-! ## A181650.P10028979403589448457

`Δ[-A000045(and(3, A204040(n)))]`
-/

namespace A181650.P10028979403589448457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (Int.land 3 (A204040 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P10028979403589448457

namespace A181650

/-- `Δ[-A000045(and(3, A204040(n)))]` -/
def P10028979403589448457.Spec : Prop :=
  ∀ n, P10028979403589448457.a n = A181650 n

end A181650

/-! ## A181650.P6517605794960438754

`A133566(n+1)-A133566(n+2)`
-/

namespace A181650.P6517605794960438754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133566 (n + 1) - A133566 (n + 2)

end

end A181650.P6517605794960438754

namespace A181650

/-- `A133566(n+1)-A133566(n+2)` -/
def P6517605794960438754.Spec : Prop :=
  ∀ n, P6517605794960438754.a n = A181650 n

end A181650

/-! ## A181650.P7070706600533758352

`Δ[-C(A135837(n+1), A135838(n+1))]`
-/

namespace A181650.P7070706600533758352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (A135837 (n + 1)).toNat (A135838 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P7070706600533758352

namespace A181650

/-- `Δ[-C(A135837(n+1), A135838(n+1))]` -/
def P7070706600533758352.Spec : Prop :=
  ∀ n, P7070706600533758352.a n = A181650 n

end A181650

/-! ## A181650.P2180622902675036538

`A010054(n+1)-A010054(A211394(n+2))`
-/

namespace A181650.P2180622902675036538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) - A010054 (A211394 (n + 2)).toNat

end

end A181650.P2180622902675036538

namespace A181650

/-- `A010054(n+1)-A010054(A211394(n+2))` -/
def P2180622902675036538.Spec : Prop :=
  ∀ n, P2180622902675036538.a n = A181650 n

end A181650

/-! ## A181650.P848537127172432279

`Δ[A007318(and(3, 2-n))%(A102728(n+1)+1)]`
-/

namespace A181650.P848537127172432279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (Int.land 3 (2 - (n : ℤ))).toNat) (A102728 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181650.P848537127172432279

namespace A181650

/-- `Δ[A007318(and(3, 2-n))%(A102728(n+1)+1)]` -/
def P848537127172432279.Spec : Prop :=
  ∀ n, P848537127172432279.a n = A181650 n

end A181650

/-! ## A181650.P1046700667532437304

`Δ[A067410(n)]%2`
-/

namespace A181650.P1046700667532437304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181650.P1046700667532437304

namespace A181650

/-- `Δ[A067410(n)]%2` -/
def P1046700667532437304.Spec : Prop :=
  ∀ n, P1046700667532437304.a n = A181650 n

end A181650

/-! ## A181650.P15426965907985085110

`Δ[A067425(n)]%2`
-/

namespace A181650.P15426965907985085110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181650.P15426965907985085110

namespace A181650

/-- `Δ[A067425(n)]%2` -/
def P15426965907985085110.Spec : Prop :=
  ∀ n, P15426965907985085110.a n = A181650 n

end A181650

/-! ## A181650.P7365683930845365993

`A010054(n+1)-A010054(record[A056023(2*(n+1))])`
-/

namespace A181650.P7365683930845365993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) - A010054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181650.P7365683930845365993

namespace A181650

/-- `A010054(n+1)-A010054(record[A056023(2*(n+1))])` -/
def P7365683930845365993.Spec : Prop :=
  ∀ n, P7365683930845365993.a n = A181650 n

end A181650

/-! ## A181650.P16174982094807389049

`Δ[A173333(n+1)]%2`
-/

namespace A181650.P16174982094807389049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181650.P16174982094807389049

namespace A181650

/-- `Δ[A173333(n+1)]%2` -/
def P16174982094807389049.Spec : Prop :=
  ∀ n, P16174982094807389049.a n = A181650 n

end A181650

/-! ## A181650.P17414496472570077746

`Δ[A094587(A014132(n+1))]%2`
-/

namespace A181650.P17414496472570077746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181650.P17414496472570077746

namespace A181650

/-- `Δ[A094587(A014132(n+1))]%2` -/
def P17414496472570077746.Spec : Prop :=
  ∀ n, P17414496472570077746.a n = A181650 n

end A181650

/-! ## A181650.P10585821491587664744

`Δ[A105278(n+1)/A007318(n)]%2`
-/

namespace A181650.P10585821491587664744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 2

end

end A181650.P10585821491587664744

namespace A181650

/-- `Δ[A105278(n+1)/A007318(n)]%2` -/
def P10585821491587664744.Spec : Prop :=
  ∀ n, P10585821491587664744.a n = A181650 n

end A181650

/-!
# A181651: Eigentriangle of number triangle A070909.

The programs for A181651, there is no canonical definition to state claims against.
-/

/-! ## A181651.P14092701528242902590

`gcd(A181654(n), A227418(n))`
-/

namespace A181651.P14092701528242902590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181654 n) (A227418 n)

end

end A181651.P14092701528242902590

/-! ## A181651.P8479133155155649827

`A181654(1-A070909(n)+n)`
-/

namespace A181651.P8479133155155649827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181654 (1 - A070909 n + (n : ℤ)).toNat

end

end A181651.P8479133155155649827

/-! ## A181651.P891923554459350422

`A181654(1-A071024(n)+n)`
-/

namespace A181651.P891923554459350422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181654 (1 - A071024 n + (n : ℤ)).toNat

end

end A181651.P891923554459350422

/-! ## A181651.P11983719055527353716

`A181654(1-(A070909(n)-n))`
-/

namespace A181651.P11983719055527353716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181654 (1 - (A070909 n - (n : ℤ))).toNat

end

end A181651.P11983719055527353716

/-! ## A181651.P15261938997997334541

`A181654(1-(A071024(n)-n))`
-/

namespace A181651.P15261938997997334541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181654 (1 - (A071024 n - (n : ℤ))).toNat

end

end A181651.P15261938997997334541

/-! ## A181651.P823292123805110851

`A004525(gcd(2, comp[2*n*(n+2)])*A181654(n))`
-/

namespace A181651.P823292123805110851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A181654 n).toNat

end

end A181651.P823292123805110851

/-!
# A181652: Inverse of number triangle A181651.

The programs for A181652, there is no canonical definition to state claims against.
-/

/-! ## A181652.P6265781909532616035

`floor(acot(A054654(n+1)-1))`
-/

namespace A181652.P6265781909532616035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054654 (n + 1) - 1 : ℝ)⌋

end

end A181652.P6265781909532616035

/-! ## A181652.P10713123371257459598

`char[∑[n-1]]-A177990(n+2)`
-/

namespace A181652.P10713123371257459598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A177990 (n + 2)

end

end A181652.P10713123371257459598

/-! ## A181652.P1332751338514133375

`2*char[∑[n-1]]-A071024(n)`
-/

namespace A181652.P1332751338514133375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - A071024 n

end

end A181652.P1332751338514133375

/-! ## A181652.P12673450126381560740

`char[∑[n-1]]-char[A169864(n+1)]`
-/

namespace A181652.P12673450126381560740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169864 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181652.P12673450126381560740

/-! ## A181652.P11302594404729657746

`A060510(n+2)-char[comp[∑[n-1]]]`
-/

namespace A181652.P11302594404729657746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181652.P11302594404729657746

/-! ## A181652.P2957227727420872369

`A110225(A002260(n+3))%2`
-/

namespace A181652.P2957227727420872369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110225 (A002260 (n + 3)).toNat) 2

end

end A181652.P2957227727420872369

/-! ## A181652.P8971011485049720126

`A267133(or(2, A002260(n+3)))`
-/

namespace A181652.P8971011485049720126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (Int.lor 2 (A002260 (n + 3))).toNat

end

end A181652.P8971011485049720126

/-! ## A181652.P17682444657211181955

`A071024(n)*A154990(n+1)`
-/

namespace A181652.P17682444657211181955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071024 n * A154990 (n + 1)

end

end A181652.P17682444657211181955

/-! ## A181652.P1889249542260081469

`A081362(A012265(A002260(n+3)))`
-/

namespace A181652.P1889249542260081469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (A012265 (A002260 (n + 3)).toNat).toNat

end

end A181652.P1889249542260081469

/-!
# A181653: Generalized (conditional) Riordan array with k-th column generated by x^k*(1+x) if k mod 2 = 0, x^k*(1+x+x^2) otherwise.

The programs for A181653, there is no canonical definition to state claims against.
-/

/-! ## A181653.P6745403999088937210

`char[ceil(floor(2*n/5)²/2)+n]`
-/

namespace A181653.P6745403999088937210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊2 * ((n : ℚ) / 5)⌋ ^ 2 : ℚ) / 2⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181653.P6745403999088937210

/-! ## A181653.P8170314446624082340

`A070895(n)%2`
-/

namespace A181653.P8170314446624082340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070895 n) 2

end

end A181653.P8170314446624082340

/-! ## A181653.P17614134126548760919

`A376582(n)%2`
-/

namespace A181653.P17614134126548760919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376582 n) 2

end

end A181653.P17614134126548760919

/-! ## A181653.P14092227705644739026

`round(acot(A181651(n)))`
-/

namespace A181653.P14092227705644739026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A181651 n : ℝ))

end

end A181653.P14092227705644739026

/-! ## A181653.P4642178965116707627

`abs(A111940(comp[∑[n]]))`
-/

namespace A181653.P4642178965116707627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111940 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A181653.P4642178965116707627

/-! ## A181653.P14133815887660670282

`A226167(n+1)%2`
-/

namespace A181653.P14133815887660670282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226167 (n + 1)) 2

end

end A181653.P14133815887660670282

/-! ## A181653.P4509164295766492320

`A225641(n+2)%2`
-/

namespace A181653.P4509164295766492320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225641 (n + 2)) 2

end

end A181653.P4509164295766492320

/-! ## A181653.P6475073221672546350

`A335545(n+2)%2`
-/

namespace A181653.P6475073221672546350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335545 (n + 2)) 2

end

end A181653.P6475073221672546350

/-! ## A181653.P5309896162685468386

`A000035(A070895(n))`
-/

namespace A181653.P5309896162685468386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A070895 n).toNat

end

end A181653.P5309896162685468386

/-! ## A181653.P12570067645576217109

`A008683(A181651(n)²)`
-/

namespace A181653.P12570067645576217109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A181651 n ^ 2).toNat

end

end A181653.P12570067645576217109

/-!
# A181654: An eigentriangle of the number triangle A181653.

The programs for A181654, there is no canonical definition to state claims against.
-/

/-! ## A181654.P13998667125048707146

`gcd(2, A181652(n))*A181651(n)`
-/

namespace A181654.P13998667125048707146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A181652 n) : ℤ) * A181651 n

end

end A181654.P13998667125048707146

/-! ## A181654.P5101360432874031621

`A040001(A256268(n))*A181651(n)`
-/

namespace A181654.P5101360432874031621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A256268 n).toNat * A181651 n

end

end A181654.P5101360432874031621

/-! ## A181654.P10155125668144094997

`A040001(A330942(n))*A181651(n)`
-/

namespace A181654.P10155125668144094997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A330942 n).toNat * A181651 n

end

end A181654.P10155125668144094997

/-! ## A181654.P13499376550842495363

`A255270(lcm(A010883(n), A095888(n+1)))`
-/

namespace A181654.P13499376550842495363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (Int.lcm (A010883 n) (A095888 (n + 1)))

end

end A181654.P13499376550842495363

/-! ## A181654.P14969378244633961003

`A037145(A185782(n+1)%A289125(n+1))`
-/

namespace A181654.P14969378244633961003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (Int.tmod (A185782 (n + 1)) (A289125 (n + 1))).toNat

end

end A181654.P14969378244633961003

/-!
# A181655: Expansion of (1+2x-x^3+x^4)/(1-4x^2+3x^4).

The programs for A181655, the canonical program `A181655.P2443230768199652238` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181655 has offset 0).

The definition of A181655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3+x^4)/(1-4x^2+3x^4))` (program `A181655.P2443230768199652238`, by `A181655.P2443230768199652238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181655.P2443230768199652238

`ogf((1+2x-x^3+x^4)/(1-4x^2+3x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181655

/-- `ogf((1+2x-x^3+x^4)/(1-4x^2+3x^4))` -/
def P2443230768199652238.Spec : Prop :=
  ∀ n, P2443230768199652238.a n = A181655 n

theorem P2443230768199652238.correct : P2443230768199652238.Spec := by
  intro n
  simp only [A181655]

end A181655

/-! ## A181655.P18100309577106579716

`gcd(2, n)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A181655.P18100309577106579716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.gcd 2 n + 3 * a (n - 2)

end

end A181655.P18100309577106579716

namespace A181655

/-- `gcd(2, n)+3*a(n-2)` -/
def P18100309577106579716.Spec : Prop :=
  ∀ n, (P18100309577106579716.a n : ℤ) = A181655 n

end A181655

/-! ## A181655.P11035263848010194579

`or(3*a(n-2), and(1, n+1))+1` with `a(0)=1, a(1)=2`
-/

namespace A181655.P11035263848010194579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (3 * a (n - 2)) (Nat.land 1 (n + 1)) + 1

end

end A181655.P11035263848010194579

namespace A181655

/-- `or(3*a(n-2), and(1, n+1))+1` -/
def P11035263848010194579.Spec : Prop :=
  ∀ n, (P11035263848010194579.a n : ℤ) = A181655 n

end A181655

/-! ## A181655.P4113487835540811265

`or(or(1, n)-n, 3*a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A181655.P4113487835540811265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor ((Nat.lor 1 n : ℤ) - (n : ℤ)) (3 * a (n - 2)) + 1

end

end A181655.P4113487835540811265

namespace A181655

/-- `or(or(1, n)-n, 3*a(n-2))+1` -/
def P4113487835540811265.Spec : Prop :=
  ∀ n, P4113487835540811265.a n = A181655 n

end A181655

/-! ## A181655.P13853114654233280728

`(1-a(n-2))*and(1, n)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A181655.P13853114654233280728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 - a (n - 2)) * (Nat.land 1 n : ℤ) + 2 * a (n - 1)

end

end A181655.P13853114654233280728

namespace A181655

/-- `(1-a(n-2))*and(1, n)+2*a(n-1)` -/
def P13853114654233280728.Spec : Prop :=
  ∀ n, P13853114654233280728.a n = A181655 n

end A181655

/-! ## A181655.P3821612956983264393

`2*a(n-1)-(a(n-2)-1)*and(1, n)` with `a(0)=1, a(1)=2`
-/

namespace A181655.P3821612956983264393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (a (n - 2) - 1) * (Nat.land 1 n : ℤ)

end

end A181655.P3821612956983264393

namespace A181655

/-- `2*a(n-1)-(a(n-2)-1)*and(1, n)` -/
def P3821612956983264393.Spec : Prop :=
  ∀ n, P3821612956983264393.a n = A181655 n

end A181655

/-! ## A181655.P5732808932409852359

`A182522(n)+A048328(n)`
-/

namespace A181655.P5732808932409852359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n + A048328 n

end

end A181655.P5732808932409852359

namespace A181655

/-- `A182522(n)+A048328(n)` -/
def P5732808932409852359.Spec : Prop :=
  ∀ n, P5732808932409852359.a n = A181655 n

end A181655

/-! ## A181655.P17681971249149392916

`∪[A060816(n), A198643(n)]`
-/

namespace A181655.P17681971249149392916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181655.P17681971249149392916

namespace A181655

/-- `∪[A060816(n), A198643(n)]` -/
def P17681971249149392916.Spec : Prop :=
  ∀ n, (P17681971249149392916.a n : ℤ) = A181655 n

end A181655

/-! ## A181655.P1493741462448085078

`A048328(n+2)-A068911(n)`
-/

namespace A181655.P1493741462448085078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (n + 2) - A068911 n

end

end A181655.P1493741462448085078

namespace A181655

/-- `A048328(n+2)-A068911(n)` -/
def P1493741462448085078.Spec : Prop :=
  ∀ n, P1493741462448085078.a n = A181655 n

end A181655

/-!
# A181656: Generalized (conditional) Riordan array with k-th column generated by x^k*(1+x^2) if k mod 2 = 0, x^k*(1+x) otherwise.

The programs for A181656, there is no canonical definition to state claims against.
-/

/-! ## A181656.P4150267420479679232

`char[∑[(C(n+2, 3)-n)%or(1, n)]]`
-/

namespace A181656.P4150267420479679232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (n + 2) 3 : ℤ) - (n : ℤ)) (Nat.lor 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A181656.P4150267420479679232

/-! ## A181656.P2596375365637072968

`and(1, A115717(n))`
-/

namespace A181656.P2596375365637072968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A115717 n)

end

end A181656.P2596375365637072968

/-! ## A181656.P1974760512201752201

`and(1, A352988(n))`
-/

namespace A181656.P1974760512201752201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A352988 n)

end

end A181656.P1974760512201752201

/-! ## A181656.P6835681100274498554

`and(5, A114192(n))%3`
-/

namespace A181656.P6835681100274498554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 5 (A114192 n)) 3

end

end A181656.P6835681100274498554

/-! ## A181656.P3851832083270633105

`(or(2, A090582(n+1))+1)%3`
-/

namespace A181656.P3851832083270633105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 2 (A090582 (n + 1)) + 1) 3

end

end A181656.P3851832083270633105

/-! ## A181656.P1901414773486377326

`C(3*A209149(n+1), 2)%2`
-/

namespace A181656.P1901414773486377326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * A209149 (n + 1)).toNat 2 % 2

end

end A181656.P1901414773486377326

/-! ## A181656.P4276260006845209764

`round(sqrt(((((A251636(n)+2)%4)%3+2)%4)%3))`
-/

namespace A181656.P4276260006845209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (Int.tmod (Int.tmod (Int.tmod (A251636 n + 2) 4) 3 + 2) 4) 3 : ℝ))

end

end A181656.P4276260006845209764

/-! ## A181656.P670405595912386312

`C(∑[char[∑[n]]]%2, A000045(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A181656.P670405595912386312
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) (A000045 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A181656.P670405595912386312

/-! ## A181656.P6230790799562564266

`and(A060097(n), A111940(n))`
-/

namespace A181656.P6230790799562564266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060097 n) (A111940 n)

end

end A181656.P6230790799562564266

/-! ## A181656.P15410596262625016168

`A059841((A115717(n)+1)²)`
-/

namespace A181656.P15410596262625016168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((A115717 n + 1) ^ 2).toNat

end

end A181656.P15410596262625016168

/-!
# A181657: Generalized (conditional) Riordan array with k-th column generated by x^k * (1 + x - x^2 + x^3)/(1 - 2x^2 - x^4) if k mod 2 = 0, x^k * (1+x)/(1 - 2x^2 - x^4) otherwise.

The programs for A181657, there is no canonical definition to state claims against.
-/

/-! ## A181657.P6785997176634774398

`A002965((comp[∑[n]]+n)%2+C(comp[∑[n]]-n, 2)-n)`
-/

namespace A181657.P6785997176634774398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2 : ℕ) : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A181657.P6785997176634774398

/-! ## A181657.P16876063684681095118

`A002965(A342991(2*(n+1))+C(comp[∑[n]]-n, 2)-n)`
-/

namespace A181657.P16876063684681095118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A342991 (2 * (n + 1)) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A181657.P16876063684681095118

/-! ## A181657.P13802504060994194560

`A002965(A057212(n+1)+A004736(n+1))`
-/

namespace A181657.P13802504060994194560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A057212 (n + 1) + A004736 (n + 1)).toNat

end

end A181657.P13802504060994194560

/-!
# A181658: Row sums of A181657.

The programs for A181658, the canonical program `A181658.P2143649759648752811` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181658 has offset 0).

The definition of A181658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181658.P2143649759648752811

`∑[A005409(Δ[A101881(n)])]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181658

/-- `∑[A005409(Δ[A101881(n)])]` -/
def P2143649759648752811.Spec : Prop :=
  ∀ n, P2143649759648752811.a n = A181658 n

theorem P2143649759648752811.correct : P2143649759648752811.Spec := by
  intro n
  simp only [A181658]

end A181658

/-! ## A181658.P10271101406690614852

`∑[A005409(Δ[A165157(n)])]`
-/

namespace A181658.P10271101406690614852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181658.P10271101406690614852

namespace A181658

/-- `∑[A005409(Δ[A165157(n)])]` -/
def P10271101406690614852.Spec : Prop :=
  ∀ n, P10271101406690614852.a n = A181658 n

end A181658

/-! ## A181658.P16720650418332865148

`∑[A005409(A057979(A020705(n)))]`
-/

namespace A181658.P16720650418332865148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (A057979 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181658.P16720650418332865148

namespace A181658

/-- `∑[A005409(A057979(A020705(n)))]` -/
def P16720650418332865148.Spec : Prop :=
  ∀ n, P16720650418332865148.a n = A181658 n

end A181658

/-! ## A181658.P14478425458843773232

`∑[A005409(A008619(A133265(n)))]`
-/

namespace A181658.P14478425458843773232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181658.P14478425458843773232

namespace A181658

/-- `∑[A005409(A008619(A133265(n)))]` -/
def P14478425458843773232.Spec : Prop :=
  ∀ n, P14478425458843773232.a n = A181658 n

end A181658

/-! ## A181658.P17595760531767036690

`A048739(A110654(n))-A000035(n)`
-/

namespace A181658.P17595760531767036690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (A110654 n).toNat - A000035 n

end

end A181658.P17595760531767036690

namespace A181658

/-- `A048739(A110654(n))-A000035(n)` -/
def P17595760531767036690.Spec : Prop :=
  ∀ n, P17595760531767036690.a n = A181658 n

end A181658

/-! ## A181658.P16203640462964684737

`A048739(A004526(n+1))-A000035(n)`
-/

namespace A181658.P16203640462964684737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (A004526 (n + 1)).toNat - A000035 n

end

end A181658.P16203640462964684737

namespace A181658

/-- `A048739(A004526(n+1))-A000035(n)` -/
def P16203640462964684737.Spec : Prop :=
  ∀ n, P16203640462964684737.a n = A181658 n

end A181658

/-! ## A181658.P5062006441887342714

`A048739(n-A004526(n))-A000035(n)`
-/

namespace A181658.P5062006441887342714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 ((n : ℤ) - A004526 n).toNat - A000035 n

end

end A181658.P5062006441887342714

namespace A181658

/-- `A048739(n-A004526(n))-A000035(n)` -/
def P5062006441887342714.Spec : Prop :=
  ∀ n, P5062006441887342714.a n = A181658 n

end A181658

/-! ## A181658.P13526645940661350942

`∪[A328990(n+1), A048739(n)]`
-/

namespace A181658.P13526645940661350942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181658.P13526645940661350942

namespace A181658

/-- `∪[A328990(n+1), A048739(n)]` -/
def P13526645940661350942.Spec : Prop :=
  ∀ n, (P13526645940661350942.a n : ℤ) = A181658 n

end A181658

/-! ## A181658.P14994393441204519310

`∑[A140998(A128223(n))]`
-/

namespace A181658.P14994393441204519310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 (A128223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181658.P14994393441204519310

namespace A181658

/-- `∑[A140998(A128223(n))]` -/
def P14994393441204519310.Spec : Prop :=
  ∀ n, P14994393441204519310.a n = A181658 n

end A181658

/-!
# A181659: Numbers at which the sum of the iterated totient function (A092693) attains a record.

The programs for A181659, there is no canonical definition to state claims against.
-/

/-! ## A181659.P2903993256840223727

`A033677(record[A033677(n+1)*A046144(n+1)])`
-/

namespace A181659.P2903993256840223727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A046144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181659.P2903993256840223727

/-! ## A181659.P3920086420576292015

`A033677(record[A033677(n+1)*A327790(n+1)])`
-/

namespace A181659.P3920086420576292015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A327790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181659.P3920086420576292015

/-! ## A181659.P5318617917561951086

`eq[A051119(A334725(n+1)), A074206(n)]`
-/

namespace A181659.P5318617917561951086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A334725 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181659.P5318617917561951086

/-! ## A181659.P4150332808779656152

`eq[A051119(A334725(n+1)), A104725(n)]`
-/

namespace A181659.P4150332808779656152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A334725 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181659.P4150332808779656152

/-! ## A181659.P6242837507715696651

`eq[A078898(n), A179926(A334725(n+1))]`
-/

namespace A181659.P6242837507715696651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A334725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181659.P6242837507715696651

/-!
# A181660: Numbers at which the sum of the iterated totient function (A092693) attains a minimum.

The programs for A181660, there is no canonical definition to state claims against.
-/

/-! ## A181660.P12072385320796727587

`record[A127356(A059897(3*n+5))]`
-/

namespace A181660.P12072385320796727587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127356 (A059897 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181660.P12072385320796727587

/-! ## A181660.P4185571425069229396

`record[A127356(n+1)%A004024(2*n)]`
-/

namespace A181660.P4185571425069229396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127356 (n + 1)) (A004024 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181660.P4185571425069229396

/-! ## A181660.P15685436301876757000

`record[A329814(3*n+1)]%A329768(n+1)`
-/

namespace A181660.P15685436301876757000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A329768 (n + 1))

end

end A181660.P15685436301876757000

/-! ## A181660.P12420311565888706788

`record[A231734(A052014(n+2))]`
-/

namespace A181660.P12420311565888706788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (A052014 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181660.P12420311565888706788

/-! ## A181660.P7178874150440368571

`A005153(A005153(n+1)^((n+1)/∑{digits}[n+1, #]))`
-/

namespace A181660.P7178874150440368571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.roundAway ((A005153 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) : ℝ))).toNat

end

end A181660.P7178874150440368571

/-!
# A181661: Upper Beatty array of the golden ratio, (1+sqrt(5))/2.

The programs for A181661, there is no canonical definition to state claims against.
-/

/-! ## A181661.P5856421732244098815

`A181886(n+1)+A002260(n+1)`
-/

namespace A181661.P5856421732244098815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181886 (n + 1) + A002260 (n + 1)

end

end A181661.P5856421732244098815

/-! ## A181661.P5020832868098254263

`A181886(n+1)+A002262(n)+1`
-/

namespace A181661.P5020832868098254263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181886 (n + 1) + (A002262 n + 1)

end

end A181661.P5020832868098254263

/-! ## A181661.P14754789211439924016

`A181886(n+1)+abs(A140756(n+1))`
-/

namespace A181661.P14754789211439924016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181886 (n + 1) + |A140756 (n + 1)|

end

end A181661.P14754789211439924016

/-! ## A181661.P12067108307782200638

`A181886(n+1)+sqrt(A133819(n+1))`
-/

namespace A181661.P12067108307782200638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181886 (n + 1) : ℝ) + Real.sqrt (A133819 (n + 1) : ℝ)

end

end A181661.P12067108307782200638

/-! ## A181661.P6585017074484424994

`A181886(n+1)+A000005(A059268(n))`
-/

namespace A181661.P6585017074484424994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181886 (n + 1) + A000005 (A059268 n).toNat

end

end A181661.P6585017074484424994

/-!
# A181662: a(n) is the smallest positive integral multiple of 2^n not in the range of the Euler phi function.

The programs for A181662, there is no canonical definition to state claims against.
-/

/-! ## A181662.P10288543624364396716

`A058887(n)*2^n`
-/

namespace A181662.P10288543624364396716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058887 n * (2 ^ n : ℤ)

end

end A181662.P10288543624364396716

/-! ## A181662.P5468896469789268724

`A000079(n)*A058887(n)`
-/

namespace A181662.P5468896469789268724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A058887 n

end

end A181662.P5468896469789268724

/-! ## A181662.P18239527255371919393

`abs(A058887(n)*A122803(n))`
-/

namespace A181662.P18239527255371919393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058887 n * A122803 n|

end

end A181662.P18239527255371919393

/-! ## A181662.P14220161703897615733

`∑[A011782(n)]*A058887(n)`
-/

namespace A181662.P14220161703897615733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A058887 n

end

end A181662.P14220161703897615733

/-! ## A181662.P11288009130628540075

`A011782(n+1)*A058887(n)`
-/

namespace A181662.P11288009130628540075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A058887 n

end

end A181662.P11288009130628540075

/-! ## A181662.P13996133874757911848

`lcm(2^n, A058887(A127287(n)))`
-/

namespace A181662.P13996133874757911848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A058887 (A127287 n).toNat)

end

end A181662.P13996133874757911848

/-!
# A181663: a(n) = A105801(n) mod 2.

The programs for A181663, there is no canonical definition to state claims against.
-/

/-! ## A181663.P15449046923329021466

`A105801(n+1)%2`
-/

namespace A181663.P15449046923329021466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105801 (n + 1)) 2

end

end A181663.P15449046923329021466

/-! ## A181663.P617928992457157084

`and(A060576(n), A105801(n+1))`
-/

namespace A181663.P617928992457157084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A105801 (n + 1))

end

end A181663.P617928992457157084

/-! ## A181663.P4493600691710591544

`and(A105801(n+1), A158388(n))`
-/

namespace A181663.P4493600691710591544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A158388 n)

end

end A181663.P4493600691710591544

/-! ## A181663.P9681287443739194684

`and(A105801(n+1), A179184(n))`
-/

namespace A181663.P9681287443739194684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A179184 n)

end

end A181663.P9681287443739194684

/-! ## A181663.P15677172478396622159

`and(A105801(n+1), A185114(n))`
-/

namespace A181663.P15677172478396622159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A185114 n)

end

end A181663.P15677172478396622159

/-! ## A181663.P10084205398502319385

`and(A105801(n+1), A185115(n))`
-/

namespace A181663.P10084205398502319385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A185115 n)

end

end A181663.P10084205398502319385

/-! ## A181663.P17499770464477843176

`and(A105801(n+1), A267537(n))`
-/

namespace A181663.P17499770464477843176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267537 n)

end

end A181663.P17499770464477843176

/-! ## A181663.P1329712454662977751

`and(A105801(n+1), A267587(n))`
-/

namespace A181663.P1329712454662977751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267587 n)

end

end A181663.P1329712454662977751

/-! ## A181663.P8798028387379207438

`and(A105801(n+1), A267869(n))`
-/

namespace A181663.P8798028387379207438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267869 n)

end

end A181663.P8798028387379207438

/-! ## A181663.P1530700973082671551

`and(A105801(n+1), A267870(n))`
-/

namespace A181663.P1530700973082671551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267870 n)

end

end A181663.P1530700973082671551

/-! ## A181663.P12184711530305719787

`and(A105801(n+1), A267871(n))`
-/

namespace A181663.P12184711530305719787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267871 n)

end

end A181663.P12184711530305719787

/-! ## A181663.P3622342097869019883

`and(A105801(n+1), A267927(n))`
-/

namespace A181663.P3622342097869019883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A267927 n)

end

end A181663.P3622342097869019883

/-! ## A181663.P13052739211246552409

`and(abs(A105812(n)), A105801(n+1))`
-/

namespace A181663.P13052739211246552409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |A105812 n| (A105801 (n + 1))

end

end A181663.P13052739211246552409

/-! ## A181663.P9333318116190222058

`and(A105801(n+1), A162519(n+1))`
-/

namespace A181663.P9333318116190222058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A162519 (n + 1))

end

end A181663.P9333318116190222058

/-! ## A181663.P13411104342003932887

`and(A105812(3*n)², A105801(n+1))`
-/

namespace A181663.P13411104342003932887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 (3 * n) ^ 2) (A105801 (n + 1))

end

end A181663.P13411104342003932887

/-! ## A181663.P18020354212550279716

`and(1, A154115(n+1)+A105801(n+1))`
-/

namespace A181663.P18020354212550279716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A154115 (n + 1) + A105801 (n + 1))

end

end A181663.P18020354212550279716

/-! ## A181663.P12566269228109713307

`and(1, A190380(n+1)+A105801(n+1))`
-/

namespace A181663.P12566269228109713307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190380 (n + 1) + A105801 (n + 1))

end

end A181663.P12566269228109713307

/-! ## A181663.P10595383180585116006

`and(A105801(n+1), A105812(A105772(n+1)))`
-/

namespace A181663.P10595383180585116006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105801 (n + 1)) (A105812 (A105772 (n + 1)).toNat)

end

end A181663.P10595383180585116006

/-! ## A181663.P8663046682064460772

`and(1, A105801(n+2)+Δ[A105801(n+1)])`
-/

namespace A181663.P8663046682064460772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A105801 (n + 2) + (f1 (n + 1) - f1 n))

end

end A181663.P8663046682064460772

/-!
# A181665: G.f. satisfies: A(x) = Sum_{n>=0} x^n*[Sum_{k=0..n} C(n,k)^2 *x^k* A(x)^k].

The programs for A181665, there is no canonical definition to state claims against.
-/

/-! ## A181665.P13053213244240357380

`A195174(A149854(n+1))`
-/

namespace A181665.P13053213244240357380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149854 (n + 1)).toNat

end

end A181665.P13053213244240357380

/-! ## A181665.P12154282953314816580

`A062108(A378255(n+1))`
-/

namespace A181665.P12154282953314816580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A378255 (n + 1)).toNat

end

end A181665.P12154282953314816580

/-! ## A181665.P16069020079660436537

`A008616(4*A262875(n+1))`
-/

namespace A181665.P16069020079660436537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A262875 (n + 1)).toNat

end

end A181665.P16069020079660436537

/-! ## A181665.P15173609720459454885

`A004137(A198518(n))+A000108(n)`
-/

namespace A181665.P15173609720459454885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (A198518 n).toNat + A000108 n

end

end A181665.P15173609720459454885

/-!
# A181666: Numbers whose odd part is of the form (4^k-1)/3.

The programs for A181666, the canonical program `A181666.P404722025159454241` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181666 has offset 1).

The definition of A181666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181666.P404722025159454241

`(4*2^A055086(n)-2^A082375(n))/3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181666

/-- `(4*2^A055086(n)-2^A082375(n))/3` -/
def P404722025159454241.Spec : Prop :=
  ∀ n, P404722025159454241.a n = (A181666 (n + 1) : ℚ)

end A181666

/-! ## A181666.P3561373156482237499

`record[A115216(n)]`
-/

namespace A181666.P3561373156482237499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181666.P3561373156482237499

namespace A181666

/-- `record[A115216(n)]` -/
def P3561373156482237499.Spec : Prop :=
  ∀ n, P3561373156482237499.a n = A181666 (n + 1)

end A181666

/-! ## A181666.P11867690073936453458

`A115216(eq[1, A077605(n+1)])`
-/

namespace A181666.P11867690073936453458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181666.P11867690073936453458

namespace A181666

/-- `A115216(eq[1, A077605(n+1)])` -/
def P11867690073936453458.Spec : Prop :=
  ∀ n, P11867690073936453458.a n = A181666 (n + 1)

end A181666

/-! ## A181666.P5523546372447793577

`A115216(eq[A099040(n), A113953(n)])`
-/

namespace A181666.P5523546372447793577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A181666.P5523546372447793577

namespace A181666

/-- `A115216(eq[A099040(n), A113953(n)])` -/
def P5523546372447793577.Spec : Prop :=
  ∀ n, P5523546372447793577.a n = A181666 (n + 1)

end A181666

/-! ## A181666.P10717166226991437345

`∪[A000079(n), A062052(n+1)]`
-/

namespace A181666.P10717166226991437345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P10717166226991437345

namespace A181666

/-- `∪[A000079(n), A062052(n+1)]` -/
def P10717166226991437345.Spec : Prop :=
  ∀ n, (P10717166226991437345.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P1262323839744586547

`∪[A062052(n+1), A094958(n+1)]`
-/

namespace A181666.P1262323839744586547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P1262323839744586547

namespace A181666

/-- `∪[A062052(n+1), A094958(n+1)]` -/
def P1262323839744586547.Spec : Prop :=
  ∀ n, (P1262323839744586547.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P13459571740451852037

`and(A062052(n+1), A319423(n+1))`
-/

namespace A181666.P13459571740451852037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062052 (n + 1)) (A319423 (n + 1))

end

end A181666.P13459571740451852037

namespace A181666

/-- `and(A062052(n+1), A319423(n+1))` -/
def P13459571740451852037.Spec : Prop :=
  ∀ n, P13459571740451852037.a n = A181666 (n + 1)

end A181666

/-! ## A181666.P12695310596063788647

`∩[A031999(n+1), A191288(n+1)]`
-/

namespace A181666.P12695310596063788647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P12695310596063788647

namespace A181666

/-- `∩[A031999(n+1), A191288(n+1)]` -/
def P12695310596063788647.Spec : Prop :=
  ∀ n, (P12695310596063788647.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P14090499278995285059

`∪[A062052(n+1), A272985(n+1)]`
-/

namespace A181666.P14090499278995285059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P14090499278995285059

namespace A181666

/-- `∪[A062052(n+1), A272985(n+1)]` -/
def P14090499278995285059.Spec : Prop :=
  ∀ n, (P14090499278995285059.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P9989124839998303298

`∩[A023760(n+1), A032937(n+1)]`
-/

namespace A181666.P9989124839998303298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P9989124839998303298

namespace A181666

/-- `∩[A023760(n+1), A032937(n+1)]` -/
def P9989124839998303298.Spec : Prop :=
  ∀ n, (P9989124839998303298.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P8343751011243184816

`∩[A031999(n+1), A032937(n+1)]`
-/

namespace A181666.P8343751011243184816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P8343751011243184816

namespace A181666

/-- `∩[A031999(n+1), A032937(n+1)]` -/
def P8343751011243184816.Spec : Prop :=
  ∀ n, (P8343751011243184816.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P7835204574656126902

`∩[A032937(n+1), A037014(n+1)]`
-/

namespace A181666.P7835204574656126902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P7835204574656126902

namespace A181666

/-- `∩[A032937(n+1), A037014(n+1)]` -/
def P7835204574656126902.Spec : Prop :=
  ∀ n, (P7835204574656126902.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P9041452754564724513

`∩[A031999(n+1), A126684(n+1)]`
-/

namespace A181666.P9041452754564724513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P9041452754564724513

namespace A181666

/-- `∩[A031999(n+1), A126684(n+1)]` -/
def P9041452754564724513.Spec : Prop :=
  ∀ n, (P9041452754564724513.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P15854648058665288273

`∩[A032937(n+1), A191288(n+1)]`
-/

namespace A181666.P15854648058665288273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P15854648058665288273

namespace A181666

/-- `∩[A032937(n+1), A191288(n+1)]` -/
def P15854648058665288273.Spec : Prop :=
  ∀ n, (P15854648058665288273.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P2031212964749601150

`∩[A191288(n+1), A331206(n+1)]`
-/

namespace A181666.P2031212964749601150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181666.P2031212964749601150

namespace A181666

/-- `∩[A191288(n+1), A331206(n+1)]` -/
def P2031212964749601150.Spec : Prop :=
  ∀ n, (P2031212964749601150.a n : ℤ) = A181666 (n + 1)

end A181666

/-! ## A181666.P13241842209014309852

`record[A222599(n)]`
-/

namespace A181666.P13241842209014309852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181666.P13241842209014309852

namespace A181666

/-- `record[A222599(n)]` -/
def P13241842209014309852.Spec : Prop :=
  ∀ n, P13241842209014309852.a n = A181666 (n + 1)

end A181666

/-!
# A181667: Least integer m > 0 such that none of the first n primes divides any value of the polynomial x^2 + x + m.

The programs for A181667, there is no canonical definition to state claims against.
-/

/-! ## A181667.P5188974968039975473

`A065261(A191088(n+1))`
-/

namespace A181667.P5188974968039975473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A191088 (n + 1)).toNat

end

end A181667.P5188974968039975473

/-! ## A181667.P4732001862301921071

`A065261(A191089(n+1))`
-/

namespace A181667.P4732001862301921071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A191089 (n + 1)).toNat

end

end A181667.P4732001862301921071

/-! ## A181667.P16014003274660090879

`A247617(A191088(n+1)+1)`
-/

namespace A181667.P16014003274660090879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (A191088 (n + 1) + 1).toNat

end

end A181667.P16014003274660090879

/-! ## A181667.P8431716752124802193

`A247617(A191089(n+1)+1)`
-/

namespace A181667.P8431716752124802193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 (A191089 (n + 1) + 1).toNat

end

end A181667.P8431716752124802193

/-! ## A181667.P11241423235801192368

`A092749(A165288(n+1))-floor(acot(n))`
-/

namespace A181667.P11241423235801192368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092749 (A165288 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A181667.P11241423235801192368

/-!
# A181668: Period 12: repeat [5,5,5,2,2,2,8,8,8,2,2,2].

The programs for A181668, the canonical program `A181668.P2670092047588584288` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181668 has offset 1).

The definition of A181668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181668.P2670092047588584288

`A286687(val(floor(n/3)²+4, 2)+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181668

/-- `A286687(val(floor(n/3)²+4, 2)+1)` -/
def P2670092047588584288.Spec : Prop :=
  ∀ n, P2670092047588584288.a n = A181668 (n + 1)

theorem P2670092047588584288.correct : P2670092047588584288.Spec := by
  intro n
  simp only [A181668, Nat.add_sub_cancel]

end A181668

/-!
# A181669: Primes p of the form 6n-1 such that p-1 is a semiprime and p+2 is prime or prime squared.

The programs for A181669, there is no canonical definition to state claims against.
-/

/-! ## A181669.P15599770857872385098

`A181602(ceil(cosh(sin(n))+n))`
-/

namespace A181669.P15599770857872385098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A181669.P15599770857872385098

/-! ## A181669.P7692774819768400839

`p?[A181602(n+1)+char[1]]`
-/

namespace A181669.P7692774819768400839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181669.P7692774819768400839

/-! ## A181669.P5776443713282179038

`A181602(n+2-floor(acot(n)))`
-/

namespace A181669.P5776443713282179038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A181669.P5776443713282179038

/-! ## A181669.P9831696730028912823

`A181602(n+3-ceil(acot(n)))`
-/

namespace A181669.P9831696730028912823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 ((n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A181669.P9831696730028912823

/-! ## A181669.P10940361803277073821

`A181602(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A181669.P10940361803277073821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181602 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A181669.P10940361803277073821

/-!
# A181670: Triangle read by rows: T(n,k) = 2^(n-1) mod prime(k), 1 <= k <= n.

The programs for A181670, there is no canonical definition to state claims against.
-/

/-! ## A181670.P11671450426907747468

`∏[char[∑[n+1]]+1]%A037126(n+1)`
-/

namespace A181670.P11671450426907747468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037126 (n + 1))

end

end A181670.P11671450426907747468

/-! ## A181670.P6143159794548809290

`A137688(n)%-A037126(n+1)`
-/

namespace A181670.P6143159794548809290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) (-A037126 (n + 1))

end

end A181670.P6143159794548809290

/-! ## A181670.P13138071687879902752

`(A140513(n)/2)%A000040(A002260(n+1))`
-/

namespace A181670.P13138071687879902752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A140513 n : ℚ) / 2)) (A000040 (A002260 (n + 1)).toNat)

end

end A181670.P13138071687879902752

/-! ## A181670.P14720479024490352582

`(2^A003056(n))%A000040(A002260(n+1))`
-/

namespace A181670.P14720479024490352582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003056 n : ℤ))) (A000040 (A002260 (n + 1)).toNat)

end

end A181670.P14720479024490352582

/-! ## A181670.P721786022351001795

`A184761(A004736(n+1)+n)%A014963(A037126(n+1))`
-/

namespace A181670.P721786022351001795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184761 (A004736 (n + 1) + (n : ℤ)).toNat) (A014963 (A037126 (n + 1)).toNat)

end

end A181670.P721786022351001795

/-!
# A181671: Number of Ramanujan primes less than 10^n.

The programs for A181671, there is no canonical definition to state claims against.
-/

/-! ## A181671.P10560850635280718004

`A107347(A006880(n+1)+1)`
-/

namespace A181671.P10560850635280718004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (A006880 (n + 1) + 1).toNat

end

end A181671.P10560850635280718004

/-!
# A181672: The odd terms (a1,a3,a5,...) are in an arithmetic progression (1,2,3,...), while the even terms (a2,a4,a6,...) give the number of letters of the given odd term.

The programs for A181672, there is no canonical definition to state claims against.
-/

/-! ## A181672.P15644562112702357280

`A351439(A008412(2*(n+2)))+A342937(n+4)`
-/

namespace A181672.P15644562112702357280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351439 (A008412 (2 * (n + 2))).toNat + A342937 (n + 4)

end

end A181672.P15644562112702357280

/-! ## A181672.P1874724355956427650

`A055089(A027342(3*n+1)-A121373(n))`
-/

namespace A181672.P1874724355956427650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A027342 (3 * n + 1) - A121373 n).toNat

end

end A181672.P1874724355956427650

/-! ## A181672.P11715422333065081664

`A329326(A331923(2*n+3)+A029744(n+1))`
-/

namespace A181672.P11715422333065081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A331923 (2 * n + 3) + A029744 (n + 1)).toNat

end

end A181672.P11715422333065081664

/-!
# A181675: V(n,n^2), where V is the number of integer points in an n-dimensional sphere of Lee-radius n^2 centered at the origin.

The programs for A181675, there is no canonical definition to state claims against.
-/

/-! ## A181675.P2218847923219210689

`A341470(∑[4*(n+1)])`
-/

namespace A181675.P2218847923219210689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341470 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181675.P2218847923219210689

/-! ## A181675.P14752328078152784571

`A297191(∑[n+1]²+n+1)`
-/

namespace A181675.P14752328078152784571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1))

end

end A181675.P14752328078152784571

/-! ## A181675.P6722627022547344860

`A008288(∑[3*∑[n*2*(n+1)+1]+1])`
-/

namespace A181675.P6722627022547344860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * (n + 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181675.P6722627022547344860

/-! ## A181675.P5785403010840847908

`A140750(A165563(n+1))`
-/

namespace A181675.P5785403010840847908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A165563 (n + 1)).toNat

end

end A181675.P5785403010840847908

/-!
# A181676: Number of ways of writing n = m + f! with m a semiprime and f > 0.

The programs for A181676, there is no canonical definition to state claims against.
-/

/-! ## A181676.P6443425760308583841

`or(A010052(A119870(2*n+1)), A181674(n+1))`
-/

namespace A181676.P6443425760308583841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A119870 (2 * n + 1)).toNat) (A181674 (n + 1))

end

end A181676.P6443425760308583841

/-! ## A181676.P1748874818049401207

`A181674(A090106(n+1))`
-/

namespace A181676.P1748874818049401207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181674 (A090106 (n + 1)).toNat

end

end A181676.P1748874818049401207

/-! ## A181676.P16505867208464098759

`A181674(n+1)+A000007(A097753(n+1))`
-/

namespace A181676.P16505867208464098759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181674 (n + 1) + A000007 (A097753 (n + 1)).toNat

end

end A181676.P16505867208464098759

/-! ## A181676.P4963459560978430188

`A181674(n+1)+A000007(A219356(2*(n+2)))`
-/

namespace A181676.P4963459560978430188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181674 (n + 1) + A000007 (A219356 (2 * (n + 2))).toNat

end

end A181676.P4963459560978430188

/-! ## A181676.P4584883696820329962

`A181674(n+1)+A137899(A005940(2*n+3))`
-/

namespace A181676.P4584883696820329962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181674 (n + 1) + A137899 (A005940 (2 * n + 3)).toNat

end

end A181676.P4584883696820329962

/-!
# A181678: Number of twin Ramanujan prime pairs less than 10^n.

The programs for A181678, there is no canonical definition to state claims against.
-/

/-! ## A181678.P7310188680838817809

`xor(2^n, A245445(C(3*n, n)))`
-/

namespace A181678.P7310188680838817809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A245445 (Nat.choose (3 * n) n))

end

end A181678.P7310188680838817809

/-!
# A181679: a(n) = 121*n^2 + 2*n.

The programs for A181679, the canonical program `A181679.P10346931722910578493` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181679 has offset 1).

The definition of A181679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)²+2*(n+1)` (program `A181679.P10346931722910578493`, by `A181679.P10346931722910578493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181679.P15786369364090345251

`(n+1)*(121*(n+1)+2)`
-/

namespace A181679.P15786369364090345251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (121 * (n + 1) + 2)

end

end A181679.P15786369364090345251

namespace A181679

/-- `(n+1)*(121*(n+1)+2)` -/
def P15786369364090345251.Spec : Prop :=
  ∀ n, (P15786369364090345251.a n : ℤ) = A181679 (n + 1)

theorem P15786369364090345251.correct : P15786369364090345251.Spec := by
  intro n
  simp only [A181679, Nat.add_sub_cancel, A181679.P15786369364090345251.a, A181679.P10346931722910578493.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181679

/-! ## A181679.P10346931722910578493

`121*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181679

/-- `121*(n+1)²+2*(n+1)` -/
def P10346931722910578493.Spec : Prop :=
  ∀ n, (P10346931722910578493.a n : ℤ) = A181679 (n + 1)

theorem P10346931722910578493.correct : P10346931722910578493.Spec := by
  intro n
  simp only [A181679, Nat.add_sub_cancel]

end A181679

/-! ## A181679.P6312603809799694153

`∩[A031509(n+1), A031689(n+1)]`
-/

namespace A181679.P6312603809799694153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181679.P6312603809799694153

namespace A181679

/-- `∩[A031509(n+1), A031689(n+1)]` -/
def P6312603809799694153.Spec : Prop :=
  ∀ n, (P6312603809799694153.a n : ℤ) = A181679 (n + 1)

end A181679

/-! ## A181679.P11823492482392033443

`A031689(A062399(n+1))`
-/

namespace A181679.P11823492482392033443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031689 (A062399 (n + 1)).toNat

end

end A181679.P11823492482392033443

namespace A181679

/-- `A031689(A062399(n+1))` -/
def P11823492482392033443.Spec : Prop :=
  ∀ n, P11823492482392033443.a n = A181679 (n + 1)

end A181679

/-! ## A181679.P597509451749959669

`A031689(A351870(n+1))`
-/

namespace A181679.P597509451749959669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031689 (A351870 (n + 1)).toNat

end

end A181679.P597509451749959669

namespace A181679

/-- `A031689(A351870(n+1))` -/
def P597509451749959669.Spec : Prop :=
  ∀ n, P597509451749959669.a n = A181679 (n + 1)

end A181679

/-!
# A181685: Expansion of 36*x^2*(1+6*x-36*x^2) / ( (1-6*x)^2 *(1+6*x+36*x^2) ).

The programs for A181685, the canonical program `A181685.P1125831640714462804` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181685 has offset 1).

The definition of A181685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181685.P1125831640714462804

`(n-2*floor(n/3))*6^(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181685

/-- `(n-2*floor(n/3))*6^(n+1)` -/
def P1125831640714462804.Spec : Prop :=
  ∀ n, P1125831640714462804.a n = A181685 (n + 1)

theorem P1125831640714462804.correct : P1125831640714462804.Spec := by
  intro n
  simp only [A181685, Nat.add_sub_cancel]

end A181685

/-!
# A181686: Primorials (A002110) whose decimal expansion sets a record for having more of any single digit than its predecessor.

The programs for A181686, there is no canonical definition to state claims against.
-/

/-! ## A181686.P7943278567777320966

`A320055(A226830(n+1))`
-/

namespace A181686.P7943278567777320966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A226830 (n + 1)).toNat

end

end A181686.P7943278567777320966

/-! ## A181686.P18030448713451867953

`∩[A132229(n+1), A309663(n+1)]`
-/

namespace A181686.P18030448713451867953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181686.P18030448713451867953

/-!
# A181687: Numbers k such that the number of odd divisors of (2k)^2 is an odd divisor of (2k)^2, and the number of even divisors of (2k)^2 is an even divisor of (2k)^2.

The programs for A181687, there is no canonical definition to state claims against.
-/

/-! ## A181687.P3551670986164364949

`sqrt(A181795(n+1))/2`
-/

namespace A181687.P3551670986164364949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181795 (n + 1) : ℝ) / 2

end

end A181687.P3551670986164364949

/-! ## A181687.P11932833570940457243

`sqrt(A376114(n+1)/2)`
-/

namespace A181687.P11932833570940457243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A376114 (n + 1) : ℚ) / 2 : ℝ)

end

end A181687.P11932833570940457243

/-! ## A181687.P17061203462909820133

`sqrt(A181795(Δ[n²]-n)/4)`
-/

namespace A181687.P17061203462909820133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A181795 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 4 : ℝ)

end

end A181687.P17061203462909820133

/-! ## A181687.P2223974217715861746

`root(A181795(n+1), 2)/A020639(2*(n+1))`
-/

namespace A181687.P2223974217715861746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181795 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A020639 (2 * (n + 1)) : ℝ)

end

end A181687.P2223974217715861746

/-! ## A181687.P8828539674360593902

`A000045(gcd(n, n+1))/2*root(A181795(n+1), 2)`
-/

namespace A181687.P8828539674360593902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000045 (Nat.gcd n (n + 1)) : ℚ) / 2 : ℝ) * (A181795 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A181687.P8828539674360593902

/-! ## A181687.P13761836724163501484

`A001281(sqrt(A181795(n+1)))`
-/

namespace A181687.P13761836724163501484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A181687.P13761836724163501484

/-! ## A181687.P14184593568184332702

`A004525(sqrt(A181795(n+1)))`
-/

namespace A181687.P14184593568184332702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A181687.P14184593568184332702

/-! ## A181687.P9973201996670639243

`A004526(sqrt(A181795(n+1)))`
-/

namespace A181687.P9973201996670639243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A181687.P9973201996670639243

/-! ## A181687.P11335534715312063099

`A006370(sqrt(A181795(n+1)))`
-/

namespace A181687.P11335534715312063099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A181687.P11335534715312063099

/-! ## A181687.P14191038118196008865

`A181762(sqrt(A181795(n+1)))`
-/

namespace A181687.P14191038118196008865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A181687.P14191038118196008865

/-!
# A181688: Number of maximal self-avoiding walks from NW to SW corners of a 4-by-n grid.

The programs for A181688, the canonical program `A181688.P294140707319844057` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181688 has offset 1).

The definition of A181688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181688.P294140707319844057

`2*a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181688

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)` -/
def P294140707319844057.Spec : Prop :=
  ∀ n, P294140707319844057.a n = A181688 (n + 1)

theorem P294140707319844057.correct : P294140707319844057.Spec := by
  intro n
  simp only [A181688, Nat.add_sub_cancel]

end A181688

/-! ## A181688.P1630257685769630022

`ogf((-1+x)/(-1+2x+2x^2-2x^3+x^4))`
-/

namespace A181688.P1630257685769630022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -2, 2, -1] n

end

end A181688.P1630257685769630022

namespace A181688

/-- `ogf((-1+x)/(-1+2x+2x^2-2x^3+x^4))` -/
def P1630257685769630022.Spec : Prop :=
  ∀ n, P1630257685769630022.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P8802347097309147790

`Δ[A006864(n+1)]`
-/

namespace A181688.P8802347097309147790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181688.P8802347097309147790

namespace A181688

/-- `Δ[A006864(n+1)]` -/
def P8802347097309147790.Spec : Prop :=
  ∀ n, P8802347097309147790.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P7304498859549691664

`Δ[record[A006864(A133310(n))]]`
-/

namespace A181688.P7304498859549691664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181688.P7304498859549691664

namespace A181688

/-- `Δ[record[A006864(A133310(n))]]` -/
def P7304498859549691664.Spec : Prop :=
  ∀ n, P7304498859549691664.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P11012983959926943034

`Δ[record[A006864(A267806(n))]]`
-/

namespace A181688.P11012983959926943034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A267806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181688.P11012983959926943034

namespace A181688

/-- `Δ[record[A006864(A267806(n))]]` -/
def P11012983959926943034.Spec : Prop :=
  ∀ n, P11012983959926943034.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P14698135749818586497

`A006864(n+2)-A006864(n+1)`
-/

namespace A181688.P14698135749818586497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (n + 2) - A006864 (n + 1)

end

end A181688.P14698135749818586497

namespace A181688

/-- `A006864(n+2)-A006864(n+1)` -/
def P14698135749818586497.Spec : Prop :=
  ∀ n, P14698135749818586497.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P8597981109997100543

`Δ[Δ[A180488(A028310(n))]]`
-/

namespace A181688.P8597981109997100543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181688.P8597981109997100543

namespace A181688

/-- `Δ[Δ[A180488(A028310(n))]]` -/
def P8597981109997100543.Spec : Prop :=
  ∀ n, P8597981109997100543.a n = A181688 (n + 1)

end A181688

/-! ## A181688.P530001926741633664

`Δ[record[A006864(A028920(n))]]`
-/

namespace A181688.P530001926741633664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181688.P530001926741633664

namespace A181688

/-- `Δ[record[A006864(A028920(n))]]` -/
def P530001926741633664.Spec : Prop :=
  ∀ n, P530001926741633664.a n = A181688 (n + 1)

end A181688

/-!
# A181689: Number of maximal self-avoiding walks from NW to SW corners of a 5 X n grid.

The programs for A181689, the canonical program `A181689.P9060041136651621887` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181689 has offset 1).

The definition of A181689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181689.P9060041136651621887

`11*a(n-2)+2*a(n-6)` with `a(0)=1, a(1)=0, a(2)=8, a(3)=0, a(4)=86, a(5)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181689

/-- `11*a(n-2)+2*a(n-6)` -/
def P9060041136651621887.Spec : Prop :=
  ∀ n, (P9060041136651621887.a n : ℤ) = A181689 (n + 1)

theorem P9060041136651621887.correct : P9060041136651621887.Spec := by
  intro n
  simp only [A181689, Nat.add_sub_cancel]

end A181689

/-! ## A181689.P1148462996437618232

`A271592(A167499(n+3))`
-/

namespace A181689.P1148462996437618232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167499 (n + 3)).toNat

end

end A181689.P1148462996437618232

namespace A181689

/-- `A271592(A167499(n+3))` -/
def P1148462996437618232.Spec : Prop :=
  ∀ n, P1148462996437618232.a n = A181689 (n + 1)

end A181689

/-! ## A181689.P8525814842736328226

`A271592(A056000(n)+15)`
-/

namespace A181689.P8525814842736328226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A056000 n + 15).toNat

end

end A181689.P8525814842736328226

namespace A181689

/-- `A271592(A056000(n)+15)` -/
def P8525814842736328226.Spec : Prop :=
  ∀ n, P8525814842736328226.a n = A181689 (n + 1)

end A181689

/-! ## A181689.P14763695300509600345

`A271592(A167614(n+3)+2)`
-/

namespace A181689.P14763695300509600345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167614 (n + 3) + 2).toNat

end

end A181689.P14763695300509600345

namespace A181689

/-- `A271592(A167614(n+3)+2)` -/
def P14763695300509600345.Spec : Prop :=
  ∀ n, P14763695300509600345.a n = A181689 (n + 1)

end A181689

/-! ## A181689.P2347706321672536027

`A271592(A000124(n+4)+4)`
-/

namespace A181689.P2347706321672536027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000124 (n + 4) + 4).toNat

end

end A181689.P2347706321672536027

namespace A181689

/-- `A271592(A000124(n+4)+4)` -/
def P2347706321672536027.Spec : Prop :=
  ∀ n, P2347706321672536027.a n = A181689 (n + 1)

end A181689

/-!
# A181690: Riordan array T((1-x)^(-2) | 2x-1) read by rows.

The programs for A181690, there is no canonical definition to state claims against.
-/

/-! ## A181690.P5679732293471991206

`A159856(comp[∑[n]])`
-/

namespace A181690.P5679732293471991206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A181690.P5679732293471991206

/-! ## A181690.P5855832149891442993

`and(-1, A159856(A014132(n+1)))`
-/

namespace A181690.P5855832149891442993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A159856 (A014132 (n + 1)).toNat)

end

end A181690.P5855832149891442993

/-! ## A181690.P6845425792097169221

`or(A010054(n+1), A159856(A014132(n+1)))`
-/

namespace A181690.P6845425792097169221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (n + 1)) (A159856 (A014132 (n + 1)).toNat)

end

end A181690.P6845425792097169221

/-! ## A181690.P1030442304350836904

`A159856(A014132(n+1))/A007318(C(2, n))`
-/

namespace A181690.P1030442304350836904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159856 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A181690.P1030442304350836904

/-! ## A181690.P5357867463820328135

`A159856(A014132(n+1))+A008683(4*(n+5))`
-/

namespace A181690.P5357867463820328135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (A014132 (n + 1)).toNat + A008683 (4 * (n + 5))

end

end A181690.P5357867463820328135

/-! ## A181690.P17886078935648780325

`ceil(1/A000041(n))*A159856(A014132(n+1))`
-/

namespace A181690.P17886078935648780325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A159856 (A014132 (n + 1)).toNat

end

end A181690.P17886078935648780325

/-! ## A181690.P17430581042920124740

`A014963(4*n+10)*A159856(A014132(n+1))`
-/

namespace A181690.P17430581042920124740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A159856 (A014132 (n + 1)).toNat

end

end A181690.P17430581042920124740

/-! ## A181690.P16493633152334969459

`A159856(A014132(n+1))+A000005(xor(4, n)²+10)%2`
-/

namespace A181690.P16493633152334969459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159856 (A014132 (n + 1)).toNat + Int.tmod (A000005 (Nat.xor 4 n ^ 2 + 10)) 2

end

end A181690.P16493633152334969459

/-! ## A181690.P6055019197278291934

`A007318(∑[n])*A159856(A014132(n+1))`
-/

namespace A181690.P6055019197278291934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A159856 (A014132 (n + 1)).toNat

end

end A181690.P6055019197278291934

/-!
# A181691: Numbers k such that Fibonacci(k) has exactly two 1's.

The programs for A181691, there is no canonical definition to state claims against.
-/

/-! ## A181691.P11872608505086208563

`eq[2, A085855(n)]`
-/

namespace A181691.P11872608505086208563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181691.P11872608505086208563

/-! ## A181691.P9181020855954214341

`lt[1, A115147(A085855(n)²)]`
-/

namespace A181691.P9181020855954214341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (A085855 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A181691.P9181020855954214341

/-! ## A181691.P2907389919268179695

`lt[A002373(n+3), A115147(A085855(n))]`
-/

namespace A181691.P2907389919268179695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (A085855 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181691.P2907389919268179695

/-! ## A181691.P15975078539071765730

`lt[A000045(A085855(n)²), A085855(n)²]`
-/

namespace A181691.P15975078539071765730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085855 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181691.P15975078539071765730

/-! ## A181691.P13095603723353312617

`lt[A001222(3*(n+1)), A115147(A085855(n))]`
-/

namespace A181691.P13095603723353312617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (A085855 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181691.P13095603723353312617

/-!
# A181692: The smallest positive m such that 2^m-2^n-1 is prime, or 0 if such an m does not exist.

The programs for A181692, there is no canonical definition to state claims against.
-/

/-! ## A181692.P9599016199452757242

`ceil(log2(A331217(n)+2))`
-/

namespace A181692.P9599016199452757242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A331217 n + 2 : ℝ)⌉

end

end A181692.P9599016199452757242

/-! ## A181692.P8085220993639005721

`log2(A331217(n)+A000051(n))`
-/

namespace A181692.P8085220993639005721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331217 n + A000051 n : ℝ)

end

end A181692.P8085220993639005721

/-! ## A181692.P8578753505906623399

`round(log2(A331217(n)+A000079(n)))`
-/

namespace A181692.P8578753505906623399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A331217 n + A000079 n : ℝ))

end

end A181692.P8578753505906623399

/-! ## A181692.P3929103079681028587

`val((A331217(n)+A000051(n))*A066047(n+1), 2)`
-/

namespace A181692.P3929103079681028587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A331217 n + A000051 n) * A066047 (n + 1)).toNat 2

end

end A181692.P3929103079681028587

/-! ## A181692.P5619754462650273344

`A053186(n²)+val(A331217(n)+A000051(n), 2)`
-/

namespace A181692.P5619754462650273344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 2) + (SequenceMachineLib.valuation (A331217 n + A000051 n).toNat 2 : ℤ)

end

end A181692.P5619754462650273344

/-! ## A181692.P15874482539242523476

`val((A331217(n)+A000051(n))*A099035(n+1), 2)`
-/

namespace A181692.P15874482539242523476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A331217 n + A000051 n) * A099035 (n + 1)).toNat 2

end

end A181692.P15874482539242523476

/-!
# A181693: Decimal expansion of AGM(1-x,1+x), where x = 1/(10^27+1).

The programs for A181693, there is no canonical definition to state claims against.
-/

/-! ## A181693.P8972906951671615103

`A330119(C(n, 53))`
-/

namespace A181693.P8972906951671615103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330119 (Nat.choose n 53)

end

end A181693.P8972906951671615103

/-! ## A181693.P6025355061849562164

`2*(A000032(C(comp[∑[n-1]], 64))-1)+7`
-/

namespace A181693.P6025355061849562164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 64) - 1) + 7

end

end A181693.P6025355061849562164

/-! ## A181693.P17348999145843875009

`xor(9, A185284(A008857(n)))`
-/

namespace A181693.P17348999145843875009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A185284 (A008857 n).toNat)

end

end A181693.P17348999145843875009

/-! ## A181693.P2987781765988862704

`xor(9, A185284(A257848(n)))`
-/

namespace A181693.P2987781765988862704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A185284 (A257848 n).toNat)

end

end A181693.P2987781765988862704

/-! ## A181693.P3844048024816207721

`xor(9, A185284(A309959(n)))`
-/

namespace A181693.P3844048024816207721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A185284 (A309959 n).toNat)

end

end A181693.P3844048024816207721

/-! ## A181693.P3126785804411888564

`xor(9, A185284(A338881(n)))`
-/

namespace A181693.P3126785804411888564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A185284 (A338881 n).toNat)

end

end A181693.P3126785804411888564

/-! ## A181693.P6544782132846469180

`A053981(A191724(n+1))+8`
-/

namespace A181693.P6544782132846469180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (A191724 (n + 1)).toNat + 8

end

end A181693.P6544782132846469180

/-!
# A181694: Array read by rows in which row n lists the numbers that are in the same "y" level in the primes (version 2).

The programs for A181694, there is no canonical definition to state claims against.
-/

/-! ## A181694.P17204026396255900033

`A085229(A085229(n+2))-A000005(A100662(n+1))`
-/

namespace A181694.P17204026396255900033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (A085229 (n + 2)).toNat - A000005 (A100662 (n + 1)).toNat

end

end A181694.P17204026396255900033

/-! ## A181694.P2560980655737826100

`A085229(A085229(n+2))-A020639(A142584(n+1))`
-/

namespace A181694.P2560980655737826100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (A085229 (n + 2)).toNat - A020639 (A142584 (n + 1)).toNat

end

end A181694.P2560980655737826100

/-! ## A181694.P2858020246146708743

`A085229(A085229(n+2))-A020639(A222955(n+1))`
-/

namespace A181694.P2858020246146708743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (A085229 (n + 2)).toNat - A020639 (A222955 (n + 1)).toNat

end

end A181694.P2858020246146708743

/-! ## A181694.P11580995713809717067

`A085229(A085229(n+2))-A020639(A068799(n+1))`
-/

namespace A181694.P11580995713809717067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (A085229 (n + 2)).toNat - A020639 (A068799 (n + 1)).toNat

end

end A181694.P11580995713809717067

/-!
# A181697: Length of the complete Cunningham chain of the first kind starting with prime(n).

The programs for A181697, there is no canonical definition to state claims against.
-/

/-! ## A181697.P11844305538760816370

`A339579(A008864(n+1))`
-/

namespace A181697.P11844305538760816370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A008864 (n + 1)).toNat

end

end A181697.P11844305538760816370

/-! ## A181697.P10401540648941444793

`A339579(A028815(n+1))`
-/

namespace A181697.P10401540648941444793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A028815 (n + 1)).toNat

end

end A181697.P10401540648941444793

/-! ## A181697.P2935682207465730527

`A339579(A299763(n+2))`
-/

namespace A181697.P2935682207465730527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A299763 (n + 2)).toNat

end

end A181697.P2935682207465730527

/-! ## A181697.P7198187105415795438

`A339579(A000040(n+1)+1)`
-/

namespace A181697.P7198187105415795438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A000040 (n + 1) + 1).toNat

end

end A181697.P7198187105415795438

/-! ## A181697.P525220450666546532

`A339579(A006093(n+1)+2)`
-/

namespace A181697.P525220450666546532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A006093 (n + 1) + 2).toNat

end

end A181697.P525220450666546532

/-! ## A181697.P1478121119273476655

`A339579(A008578(n+2)+1)`
-/

namespace A181697.P1478121119273476655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A008578 (n + 2) + 1).toNat

end

end A181697.P1478121119273476655

/-! ## A181697.P10798798920857601537

`A339579(A052147(n+1)-1)`
-/

namespace A181697.P10798798920857601537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A052147 (n + 1) - 1).toNat

end

end A181697.P10798798920857601537

/-! ## A181697.P18301453023536438173

`A339579(record[A259153(n+2)]+1)`
-/

namespace A181697.P18301453023536438173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A181697.P18301453023536438173

/-! ## A181697.P7739417767297093883

`A339579(eq[1, A010051(n+1)]+2)`
-/

namespace A181697.P7739417767297093883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A181697.P7739417767297093883

/-! ## A181697.P6907686227056207090

`A063377(A000040(n+1))`
-/

namespace A181697.P6907686227056207090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A000040 (n + 1)).toNat

end

end A181697.P6907686227056207090

/-! ## A181697.P11273688123567342672

`A063377(A008578(n+2))`
-/

namespace A181697.P11273688123567342672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A008578 (n + 2)).toNat

end

end A181697.P11273688123567342672

/-! ## A181697.P14912944661310581035

`A063377(A182986(n+2))`
-/

namespace A181697.P14912944661310581035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A182986 (n + 2)).toNat

end

end A181697.P14912944661310581035

/-! ## A181697.P8352401299664102627

`A063377(record[A006530(n+2)])`
-/

namespace A181697.P8352401299664102627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181697.P8352401299664102627

/-! ## A181697.P17172461369112322151

`A063377(record[A020639(n+2)])`
-/

namespace A181697.P17172461369112322151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181697.P17172461369112322151

/-! ## A181697.P5458849013609263872

`A063377((A072055(n+1)-1)/2)`
-/

namespace A181697.P5458849013609263872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (SequenceMachineLib.roundAway ((A072055 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A181697.P5458849013609263872

/-! ## A181697.P12955806561271073145

`A063377(record[A014963(n+2)])`
-/

namespace A181697.P12955806561271073145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181697.P12955806561271073145

/-! ## A181697.P10080377082301573277

`A063377(A072055(n+1))+1`
-/

namespace A181697.P10080377082301573277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A072055 (n + 1)).toNat + 1

end

end A181697.P10080377082301573277

/-! ## A181697.P18326491288751976175

`A339579(eq[1, A032741(n)]+1)`
-/

namespace A181697.P18326491288751976175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A181697.P18326491288751976175

/-! ## A181697.P12024109062349095502

`A339579(record[A014963(n+2)+1])`
-/

namespace A181697.P12024109062349095502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181697.P12024109062349095502

/-!
# A181698: Font point sizes under Mac OS Classic.

The programs for A181698, there is no canonical definition to state claims against.
-/

/-! ## A181698.P4811964329183424540

`A181699(∑[A214211(n)])`
-/

namespace A181698.P4811964329183424540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181698.P4811964329183424540

/-! ## A181698.P12097678300388471498

`A114871(A052810(n))+8`
-/

namespace A181698.P12097678300388471498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (A052810 n).toNat + 8

end

end A181698.P12097678300388471498

/-! ## A181698.P3580766203092214427

`A103969(A002858(n+1)+8)`
-/

namespace A181698.P3580766203092214427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (A002858 (n + 1) + 8).toNat

end

end A181698.P3580766203092214427

/-! ## A181698.P15304885788764923233

`filter[A181699(n+1), A127245(#)]`
-/

namespace A181698.P15304885788764923233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127245 (f1 j).toNat = 1) n)

end

end A181698.P15304885788764923233

/-! ## A181698.P15489785163795854486

`filter[A181699(n+1), A189723(#)]`
-/

namespace A181698.P15489785163795854486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j).toNat = 1) n)

end

end A181698.P15489785163795854486

/-!
# A181699: Font point sizes under Mac OS X.

The programs for A181699, there is no canonical definition to state claims against.
-/

/-! ## A181699.P6077205832296488432

`∑[A353362(∏[n*a(n-4)])]+8` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A181699.P6077205832296488432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f2 =>
  n * f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A181699.P6077205832296488432

/-! ## A181699.P17564636470424648588

`∑[A353362(∏[a(n-4)/n^(-1)])]+8` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A181699.P17564636470424648588
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f2 =>
  f2 (n - 4) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A181699.P17564636470424648588

/-! ## A181699.P2016809841176249996

`A196105(A036630(n)+n+1)`
-/

namespace A181699.P2016809841176249996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196105 (A036630 n + (n + 1 : ℤ)).toNat

end

end A181699.P2016809841176249996

/-! ## A181699.P17666589905969690514

`eq[A276865((n+1)/∏{p}[n+1, #]), A333701(n+1)]`
-/

namespace A181699.P17666589905969690514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A181699.P17666589905969690514

/-! ## A181699.P10202993741391209783

`A251549(A309861(n))+A206027(n+5)`
-/

namespace A181699.P10202993741391209783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251549 (A309861 n).toNat + A206027 (n + 5)

end

end A181699.P10202993741391209783

