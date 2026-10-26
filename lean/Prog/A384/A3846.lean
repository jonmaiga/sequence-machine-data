import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A384600: Expansion of (1+x-x^2) / (1-x-4*x^2+2*x^3+2*x^4).

The programs for A384600, the canonical program `A384600.P599682406207582073` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384600 has offset 0).

The definition of A384600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384600.P599682406207582073`, by `A384600.P599682406207582073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384600.P599682406207582073

`ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384600

/-- `ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))` -/
def P599682406207582073.Spec : Prop :=
  ∀ n, P599682406207582073.a n = A384600 n

theorem P599682406207582073.correct : P599682406207582073.Spec := by
  intro n
  simp only [A384600]

end A384600

/-! ## A384600.P4500088393812653364

`A131922(A219672(n))`
-/

namespace A384600.P4500088393812653364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 (A219672 n).toNat

end

end A384600.P4500088393812653364

namespace A384600

/-- `A131922(A219672(n))` -/
def P4500088393812653364.Spec : Prop :=
  ∀ n, P4500088393812653364.a n = A384600 n

end A384600

/-! ## A384600.P5661938736875735202

`A249728(A026526(n+1))`
-/

namespace A384600.P5661938736875735202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A026526 (n + 1)).toNat

end

end A384600.P5661938736875735202

namespace A384600

/-- `A249728(A026526(n+1))` -/
def P5661938736875735202.Spec : Prop :=
  ∀ n, P5661938736875735202.a n = A384600 n

end A384600

/-! ## A384600.P12618385781626573791

`or(A001462(A001700(n)), A032022(n))`
-/

namespace A384600.P12618385781626573791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001462 (A001700 n).toNat) (A032022 n)

end

end A384600.P12618385781626573791

namespace A384600

/-- `or(A001462(A001700(n)), A032022(n))` -/
def P12618385781626573791.Spec : Prop :=
  ∀ n, P12618385781626573791.a n = A384600 n

end A384600

/-!
# A384601: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 1, where T is the Wythoff array (A035513).

The programs for A384601, the canonical program `A384601.P16727066867523399097` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384601 has offset 1).

The definition of A384601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384601.P16727066867523399097

`∩[A283769(n+1), A016789(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A384601

/-- `∩[A283769(n+1), A016789(n)]` -/
def P16727066867523399097.Spec : Prop :=
  ∀ n, (P16727066867523399097.a n : ℤ) = A384601 (n + 1)

theorem P16727066867523399097.correct : P16727066867523399097.Spec := by
  intro n
  simp only [A384601, Nat.add_sub_cancel]

end A384601

/-! ## A384601.P11877487265317189632

`∩[A283774(n+1), A016789(n)]`
-/

namespace A384601.P11877487265317189632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P11877487265317189632

namespace A384601

/-- `∩[A283774(n+1), A016789(n)]` -/
def P11877487265317189632.Spec : Prop :=
  ∀ n, (P11877487265317189632.a n : ℤ) = A384601 (n + 1)

end A384601

/-! ## A384601.P11010678029190639868

`∩[A283769(n+1), A283774(n+1)]`
-/

namespace A384601.P11010678029190639868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P11010678029190639868

namespace A384601

/-- `∩[A283769(n+1), A283774(n+1)]` -/
def P11010678029190639868.Spec : Prop :=
  ∀ n, (P11010678029190639868.a n : ℤ) = A384601 (n + 1)

end A384601

/-! ## A384601.P4485851070386076133

`∩[A283774(n+1), A287777(n+1)]`
-/

namespace A384601.P4485851070386076133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P4485851070386076133

namespace A384601

/-- `∩[A283774(n+1), A287777(n+1)]` -/
def P4485851070386076133.Spec : Prop :=
  ∀ n, (P4485851070386076133.a n : ℤ) = A384601 (n + 1)

end A384601

/-! ## A384601.P8784845985606009989

`filter[A283774(n+1), A287773(#)]`
-/

namespace A384601.P8784845985606009989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287773 (f1 j).toNat = 1) n)

end

end A384601.P8784845985606009989

namespace A384601

/-- `filter[A283774(n+1), A287773(#)]` -/
def P8784845985606009989.Spec : Prop :=
  ∀ n, P8784845985606009989.a n = A384601 (n + 1)

end A384601

/-!
# A384602: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 2, where T is the Wythoff array (A035513).

The programs for A384602, the canonical program `A384602.P13490862903164101311` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384602 has offset 1).

The definition of A384602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384602.P13490862903164101311

`∩[A283770(n+1), A016777(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A384602

/-- `∩[A283770(n+1), A016777(n)]` -/
def P13490862903164101311.Spec : Prop :=
  ∀ n, (P13490862903164101311.a n : ℤ) = A384602 (n + 1)

theorem P13490862903164101311.correct : P13490862903164101311.Spec := by
  intro n
  simp only [A384602, Nat.add_sub_cancel]

end A384602

/-! ## A384602.P15226987851849648771

`∩[A033627(n+1), A283770(n+1)]`
-/

namespace A384602.P15226987851849648771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P15226987851849648771

namespace A384602

/-- `∩[A033627(n+1), A283770(n+1)]` -/
def P15226987851849648771.Spec : Prop :=
  ∀ n, (P15226987851849648771.a n : ℤ) = A384602 (n + 1)

end A384602

/-! ## A384602.P6985270799208687390

`∩[A283774(n+1), A016777(n)]`
-/

namespace A384602.P6985270799208687390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P6985270799208687390

namespace A384602

/-- `∩[A283774(n+1), A016777(n)]` -/
def P6985270799208687390.Spec : Prop :=
  ∀ n, (P6985270799208687390.a n : ℤ) = A384602 (n + 1)

end A384602

/-! ## A384602.P16163042044887214109

`∩[A283770(n+1), A283774(n+1)]`
-/

namespace A384602.P16163042044887214109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P16163042044887214109

namespace A384602

/-- `∩[A283770(n+1), A283774(n+1)]` -/
def P16163042044887214109.Spec : Prop :=
  ∀ n, (P16163042044887214109.a n : ℤ) = A384602 (n + 1)

end A384602

/-! ## A384602.P6716779884224476517

`∩[A283774(n+1), A287803(n+1)]`
-/

namespace A384602.P6716779884224476517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P6716779884224476517

namespace A384602

/-- `∩[A283774(n+1), A287803(n+1)]` -/
def P6716779884224476517.Spec : Prop :=
  ∀ n, (P6716779884224476517.a n : ℤ) = A384602 (n + 1)

end A384602

/-! ## A384602.P7631039858680159188

`filter[A283774(n+1), A287801(#)]`
-/

namespace A384602.P7631039858680159188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287801 (f1 j).toNat = 1) n)

end

end A384602.P7631039858680159188

namespace A384602

/-- `filter[A283774(n+1), A287801(#)]` -/
def P7631039858680159188.Spec : Prop :=
  ∀ n, P7631039858680159188.a n = A384602 (n + 1)

end A384602

/-! ## A384602.P14758764043900950363

`∩[A026488(n+1), A283774(n+1)]`
-/

namespace A384602.P14758764043900950363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P14758764043900950363

namespace A384602

/-- `∩[A026488(n+1), A283774(n+1)]` -/
def P14758764043900950363.Spec : Prop :=
  ∀ n, (P14758764043900950363.a n : ℤ) = A384602 (n + 1)

end A384602

/-!
# A384603: Primes preceded and followed by gaps whose quotient (value greater or equal to 1) is less than 2.

The programs for A384603, there is no canonical definition to state claims against.
-/

/-! ## A384603.P13021224764606972549

`filter[A214520(n+1), A181632(#)]`
-/

namespace A384603.P13021224764606972549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181632 (f1 j).toNat = 1) n)

end

end A384603.P13021224764606972549

/-! ## A384603.P13611157569529299609

`∩[A214520(n+1), A355890(n)]`
-/

namespace A384603.P13611157569529299609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355890 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384603.P13611157569529299609

/-! ## A384603.P18273656457073093322

`∩[A085714(n+1), A214520(n+1)]`
-/

namespace A384603.P18273656457073093322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384603.P18273656457073093322

/-! ## A384603.P6216610536327668599

`∩[A113619(n+1), A214520(n+1)]`
-/

namespace A384603.P6216610536327668599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384603.P6216610536327668599

/-! ## A384603.P2584905869066397059

`∩[A175141(n+1), A214520(n+1)]`
-/

namespace A384603.P2584905869066397059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384603.P2584905869066397059

/-!
# A384604: Expansion of (1-x^2) / (1-x-4*x^2+2*x^3).

The programs for A384604, the canonical program `A384604.P880113992115688430` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384604 has offset 0).

The definition of A384604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-4x^2+2x^3))` (program `A384604.P880113992115688430`, by `A384604.P880113992115688430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384604.P880113992115688430

`ogf((1-x^2)/(1-x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384604

/-- `ogf((1-x^2)/(1-x-4x^2+2x^3))` -/
def P880113992115688430.Spec : Prop :=
  ∀ n, P880113992115688430.a n = A384604 n

theorem P880113992115688430.correct : P880113992115688430.Spec := by
  intro n
  simp only [A384604]

end A384604

/-! ## A384604.P329595996021473554

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A384604.P329595996021473554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A384604.P329595996021473554

namespace A384604

/-- `a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P329595996021473554.Spec : Prop :=
  ∀ n, P329595996021473554.a n = A384604 n

end A384604

/-! ## A384604.P3827523400789318152

`A324705(A148051(n))`
-/

namespace A384604.P3827523400789318152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (A148051 n).toNat

end

end A384604.P3827523400789318152

namespace A384604

/-- `A324705(A148051(n))` -/
def P3827523400789318152.Spec : Prop :=
  ∀ n, P3827523400789318152.a n = A384604 n

end A384604

/-!
# A384605: Expansion of (1+x) / (1-x-4*x^2+2*x^3).

The programs for A384605, the canonical program `A384605.P4452811739406627335` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384605 has offset 0).

The definition of A384605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-4x^2+2x^3))` (program `A384605.P4452811739406627335`, by `A384605.P4452811739406627335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384605.P4452811739406627335

`ogf((1+x)/(1-x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384605

/-- `ogf((1+x)/(1-x-4x^2+2x^3))` -/
def P4452811739406627335.Spec : Prop :=
  ∀ n, P4452811739406627335.a n = A384605 n

theorem P4452811739406627335.correct : P4452811739406627335.Spec := by
  intro n
  simp only [A384605]

end A384605

/-! ## A384605.P3812924813707091167

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A384605.P3812924813707091167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A384605.P3812924813707091167

namespace A384605

/-- `a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P3812924813707091167.Spec : Prop :=
  ∀ n, P3812924813707091167.a n = A384605 n

end A384605

/-! ## A384605.P16423259726581381937

`∑[A384604(n)]`
-/

namespace A384605.P16423259726581381937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384605.P16423259726581381937

namespace A384605

/-- `∑[A384604(n)]` -/
def P16423259726581381937.Spec : Prop :=
  ∀ n, P16423259726581381937.a n = A384605 n

end A384605

/-! ## A384605.P630732437086437184

`Δ[A288476(n)/2]`
-/

namespace A384605.P630732437086437184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288476 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384605.P630732437086437184

namespace A384605

/-- `Δ[A288476(n)/2]` -/
def P630732437086437184.Spec : Prop :=
  ∀ n, P630732437086437184.a n = (A384605 n : ℚ)

end A384605

/-! ## A384605.P10392848700319215836

`A175126(Δ[A288476(n)])`
-/

namespace A384605.P10392848700319215836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (f1 (n + 1) - f1 n).toNat

end

end A384605.P10392848700319215836

namespace A384605

/-- `A175126(Δ[A288476(n)])` -/
def P10392848700319215836.Spec : Prop :=
  ∀ n, P10392848700319215836.a n = A384605 n

end A384605

/-!
# A384606: Possible values for the number of groups of order equal to a prime power, in order of first appearance.

The programs for A384606, there is no canonical definition to state claims against.
-/

/-! ## A384606.P9433386717631506299

`record[A066083(n+1)]`
-/

namespace A384606.P9433386717631506299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384606.P9433386717631506299

/-! ## A384606.P4354279647013028218

`A066083(record[2*a(n-1)])` with `a(0)=2, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A384606.P4354279647013028218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 4, 8, 16, 32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A384606.P4354279647013028218

/-!
# A384607: Possible values for the number of groups of order equal to a prime power, in order of size.

The programs for A384607, there is no canonical definition to state claims against.
-/

/-! ## A384607.P552154596631591065

`∩[A349150(n+1), A384609(n+1)]`
-/

namespace A384607.P552154596631591065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384607.P552154596631591065

/-!
# A384611: Expansion of (1+2*x-x^3) / (1-5*x^2+2*x^4).

The programs for A384611, the canonical program `A384611.P17716463358878510133` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384611 has offset 0).

The definition of A384611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-5x^2+2x^4))` (program `A384611.P17716463358878510133`, by `A384611.P17716463358878510133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384611.P17716463358878510133

`ogf((1+2x-x^3)/(1-5x^2+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384611

/-- `ogf((1+2x-x^3)/(1-5x^2+2x^4))` -/
def P17716463358878510133.Spec : Prop :=
  ∀ n, P17716463358878510133.a n = A384611 n

theorem P17716463358878510133.correct : P17716463358878510133.Spec := by
  intro n
  simp only [A384611]

end A384611

/-! ## A384611.P8663616739095400439

`A079162(n)+A005824(n+1)`
-/

namespace A384611.P8663616739095400439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 n + A005824 (n + 1)

end

end A384611.P8663616739095400439

namespace A384611

/-- `A079162(n)+A005824(n+1)` -/
def P8663616739095400439.Spec : Prop :=
  ∀ n, P8663616739095400439.a n = A384611 n

end A384611

/-! ## A384611.P679621405783924891

`A079162(n+2)/2`
-/

namespace A384611.P679621405783924891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079162 (n + 2) : ℚ) / 2

end

end A384611.P679621405783924891

namespace A384611

/-- `A079162(n+2)/2` -/
def P679621405783924891.Spec : Prop :=
  ∀ n, P679621405783924891.a n = (A384611 n : ℚ)

end A384611

/-! ## A384611.P8221939617372949962

`A014682(A079162(n+2))`
-/

namespace A384611.P8221939617372949962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A079162 (n + 2)).toNat

end

end A384611.P8221939617372949962

namespace A384611

/-- `A014682(A079162(n+2))` -/
def P8221939617372949962.Spec : Prop :=
  ∀ n, P8221939617372949962.a n = A384611 n

end A384611

/-! ## A384611.P4465713539367607476

`A152271(A079162(n+2)-1)`
-/

namespace A384611.P4465713539367607476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A079162 (n + 2) - 1).toNat

end

end A384611.P4465713539367607476

namespace A384611

/-- `A152271(A079162(n+2)-1)` -/
def P4465713539367607476.Spec : Prop :=
  ∀ n, P4465713539367607476.a n = A384611 n

end A384611

/-!
# A384613: Number of rooted ordered trees with n non-root nodes such that all leaf nodes can be k different colors where k is the degree of their parent node.

The programs for A384613, there is no canonical definition to state claims against.
-/

/-! ## A384613.P8831388038692307091

`A062108(C(n²+1, n))`
-/

namespace A384613.P8831388038692307091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Nat.choose (n ^ 2 + 1) n)

end

end A384613.P8831388038692307091

/-!
# A384614: Expansion of (1+x+x^2) / (1-x-3*x^2).

The programs for A384614, the canonical program `A384614.P1186288960258121026` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384614 has offset 0).

The definition of A384614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x-3x^2))` (program `A384614.P1186288960258121026`, by `A384614.P1186288960258121026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384614.P1186288960258121026

`ogf((1+x+x^2)/(1-x-3x^2))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384614

/-- `ogf((1+x+x^2)/(1-x-3x^2))` -/
def P1186288960258121026.Spec : Prop :=
  ∀ n, P1186288960258121026.a n = A384614 n

theorem P1186288960258121026.correct : P1186288960258121026.Spec := by
  intro n
  simp only [A384614]

end A384614

/-! ## A384614.P7671263793040158583

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A384614.P7671263793040158583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + 3 * a (n - 2)

end

end A384614.P7671263793040158583

namespace A384614

/-- `a(n-1)+3*a(n-2)` -/
def P7671263793040158583.Spec : Prop :=
  ∀ n, (P7671263793040158583.a n : ℤ) = A384614 n

end A384614

/-! ## A384614.P9374181393299790708

`A036453(n+1)*A105476(n)`
-/

namespace A384614.P9374181393299790708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A105476 n

end

end A384614.P9374181393299790708

namespace A384614

/-- `A036453(n+1)*A105476(n)` -/
def P9374181393299790708.Spec : Prop :=
  ∀ n, P9374181393299790708.a n = A384614 n

end A384614

/-! ## A384614.P13329984283299680640

`A006130(n)+A006138(n)-A105476(n)`
-/

namespace A384614.P13329984283299680640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A006138 n - A105476 n)

end

end A384614.P13329984283299680640

namespace A384614

/-- `A006130(n)+A006138(n)-A105476(n)` -/
def P13329984283299680640.Spec : Prop :=
  ∀ n, P13329984283299680640.a n = A384614 n

end A384614

/-! ## A384614.P518609778377338499

`A105476(n)+A105476(n)-A000007(n)`
-/

namespace A384614.P518609778377338499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n + (A105476 n - A000007 n)

end

end A384614.P518609778377338499

namespace A384614

/-- `A105476(n)+A105476(n)-A000007(n)` -/
def P518609778377338499.Spec : Prop :=
  ∀ n, P518609778377338499.a n = A384614 n

end A384614

/-!
# A384617: E.g.f. A(x) satisfies A(x) = exp( x/A(-x*A(x))^2 ).

The programs for A384617, there is no canonical definition to state claims against.
-/

/-! ## A384617.P2484109864176005353

`A384808(∑[n+1]+n)`
-/

namespace A384617.P2484109864176005353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384808 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384617.P2484109864176005353

/-!
# A384619: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of (B(x)/x)^k, where B(x) is the g.f. of A213591.

The programs for A384619, there is no canonical definition to state claims against.
-/

/-! ## A384619.P17253184945806577817

`A382019(A396972(n+1))`
-/

namespace A384619.P17253184945806577817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A396972 (n + 1)).toNat

end

end A384619.P17253184945806577817

/-!
# A384620: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of (B(x)/x)^k, where B(x) is the g.f. of A213639.

The programs for A384620, there is no canonical definition to state claims against.
-/

/-! ## A384620.P4344152774874380838

`A072088(A381592(n))`
-/

namespace A384620.P4344152774874380838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A381592 n).toNat

end

end A384620.P4344152774874380838

/-! ## A384620.P8389262696431132225

`A118354(n)-A007496(A070914(n))`
-/

namespace A384620.P8389262696431132225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 n - A007496 (A070914 n).toNat

end

end A384620.P8389262696431132225

/-! ## A384620.P13780024397197991838

`A118354(n)-A007496(A290759(n))`
-/

namespace A384620.P13780024397197991838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 n - A007496 (A290759 n).toNat

end

end A384620.P13780024397197991838

/-!
# A384621: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of (B(x)/x)^k, where B(x) is the g.f. of A376176.

The programs for A384621, there is no canonical definition to state claims against.
-/

/-! ## A384621.P6695959653672943452

`A185213(A355427(n))+A118354(n)`
-/

namespace A384621.P6695959653672943452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 (A355427 n).toNat + A118354 n

end

end A384621.P6695959653672943452

/-! ## A384621.P10851883110404818185

`A185213(A185213(n))+A118354(n)`
-/

namespace A384621.P10851883110404818185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 (A185213 n).toNat + A118354 n

end

end A384621.P10851883110404818185

/-!
# A384622: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x) * A(x*A(x))^5 ).

The programs for A384622, there is no canonical definition to state claims against.
-/

/-! ## A384622.P13113451105881499749

`A384623(∑[n+1]+n)`
-/

namespace A384622.P13113451105881499749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384623 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384622.P13113451105881499749

/-!
# A384627: Decimal expansion of 1/998001.

The programs for A384627, there is no canonical definition to state claims against.
-/

/-! ## A384627.P4607344484439486419

`Δ[A211534(n)%A357862(2*(n+2))]`
-/

namespace A384627.P4607344484439486419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211534 n) (A357862 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384627.P4607344484439486419

/-! ## A384627.P14444236997516270870

`∑{d}[n+1, A085979(#)*A201060((n+1)/#)]`
-/

namespace A384627.P14444236997516270870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085979 d * A201060 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384627.P14444236997516270870

/-! ## A384627.P15226128327978488710

`C(A002264(n), A316220(A092942(n+3)))`
-/

namespace A384627.P15226128327978488710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002264 n).toNat (A316220 (A092942 (n + 3)).toNat).toNat

end

end A384627.P15226128327978488710

/-! ## A384627.P9350116829983671806

`A302242(A000792(n))*A317961(2*(n+1))`
-/

namespace A384627.P9350116829983671806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000792 n).toNat * A317961 (2 * (n + 1))

end

end A384627.P9350116829983671806

/-! ## A384627.P8190981754880065532

`A320003(A140298(n))`
-/

namespace A384627.P8190981754880065532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A140298 n).toNat

end

end A384627.P8190981754880065532

/-!
# A384628: a(n) = Sum_{k = 1..n} gcd(n, floor(n / k)).

The programs for A384628, there is no canonical definition to state claims against.
-/

/-! ## A384628.P10206036811765814910

`A079412(A133910(2*(n+2)))+∑{d}[n+1, #-1]+1+n`
-/

namespace A384628.P10206036811765814910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079412 (A133910 (2 * (n + 2))).toNat + (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) + 1 + (n : ℤ))

end

end A384628.P10206036811765814910

/-!
# A384629: Instruction-Limited Busy Beaver Sequence: BBi(n). Maximum number of steps that an n-instruction Turing machine (allowing any number of states and symbols) can take on an initially blank tape before eventually halting.

The programs for A384629, there is no canonical definition to state claims against.
-/

/-! ## A384629.P10568060743564951687

`A232194(A151050(n))`
-/

namespace A384629.P10568060743564951687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232194 (A151050 n).toNat

end

end A384629.P10568060743564951687

/-! ## A384629.P10750951738787247060

`A241139(A344615(n+1)+A007317(n+1))`
-/

namespace A384629.P10750951738787247060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241139 (A344615 (n + 1) + A007317 (n + 1)).toNat

end

end A384629.P10750951738787247060

/-!
# A384630: Number of self-inverse double cosets in Z_n\S_n/Z_n.

The programs for A384630, there is no canonical definition to state claims against.
-/

/-! ## A384630.P3314430002431371629

`A370666(∑[n]+1)`
-/

namespace A384630.P3314430002431371629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370666 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A384630.P3314430002431371629

/-!
# A384631: Number of self-inverse double cosets in D_n\S_n/D_n.

The programs for A384631, there is no canonical definition to state claims against.
-/

/-! ## A384631.P7597451756976180290

`A340655(A183322(2*n+5))+A095094(2*n+1)`
-/

namespace A384631.P7597451756976180290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340655 (A183322 (2 * n + 5)).toNat + A095094 (2 * n + 1)

end

end A384631.P7597451756976180290

/-!
# A384633: Expansion of (1+x-2*x^2-2*x^3) / (1-6*x^2-4*x^3+2*x^4).

The programs for A384633, the canonical program `A384633.P11274361467450250246` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384633 has offset 0).

The definition of A384633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))` (program `A384633.P11274361467450250246`, by `A384633.P11274361467450250246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384633.P11274361467450250246

`ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384633

/-- `ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))` -/
def P11274361467450250246.Spec : Prop :=
  ∀ n, P11274361467450250246.a n = A384633 n

theorem P11274361467450250246.correct : P11274361467450250246.Spec := by
  intro n
  simp only [A384633]

end A384633

/-! ## A384633.P2637366036286557065

`A145265(A005962(n+1))`
-/

namespace A384633.P2637366036286557065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145265 (A005962 (n + 1)).toNat

end

end A384633.P2637366036286557065

namespace A384633

/-- `A145265(A005962(n+1))` -/
def P2637366036286557065.Spec : Prop :=
  ∀ n, P2637366036286557065.a n = A384633 n

end A384633

/-! ## A384633.P16101856833335269170

`A328596(A227806(n+4))`
-/

namespace A384633.P16101856833335269170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A227806 (n + 4)).toNat

end

end A384633.P16101856833335269170

namespace A384633

/-- `A328596(A227806(n+4))` -/
def P16101856833335269170.Spec : Prop :=
  ∀ n, P16101856833335269170.a n = A384633 n

end A384633

/-!
# A384634: Expansion of (1+2*x+x^2) / (1-6*x^2-4*x^3+2*x^4).

The programs for A384634, the canonical program `A384634.P12909353126095992854` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384634 has offset 0).

The definition of A384634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))` (program `A384634.P12909353126095992854`, by `A384634.P12909353126095992854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384634.P12909353126095992854

`ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384634

/-- `ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))` -/
def P12909353126095992854.Spec : Prop :=
  ∀ n, P12909353126095992854.a n = A384634 n

theorem P12909353126095992854.correct : P12909353126095992854.Spec := by
  intro n
  simp only [A384634]

end A384634

/-! ## A384634.P17896617246962288583

`A061392(A013582(n))`
-/

namespace A384634.P17896617246962288583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A013582 n).toNat

end

end A384634.P17896617246962288583

namespace A384634

/-- `A061392(A013582(n))` -/
def P17896617246962288583.Spec : Prop :=
  ∀ n, P17896617246962288583.a n = A384634 n

end A384634

/-!
# A384635: Expansion of (1+3*x+2*x^2) / (1-6*x^2-4*x^3+2*x^4).

The programs for A384635, the canonical program `A384635.P11004738581685573394` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384635 has offset 0).

The definition of A384635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))` (program `A384635.P11004738581685573394`, by `A384635.P11004738581685573394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384635.P11004738581685573394

`ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384635

/-- `ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))` -/
def P11004738581685573394.Spec : Prop :=
  ∀ n, P11004738581685573394.a n = A384635 n

theorem P11004738581685573394.correct : P11004738581685573394.Spec := by
  intro n
  simp only [A384635]

end A384635

/-! ## A384635.P12665745235390652927

`A384634(n+1)-A384633(n+1)`
-/

namespace A384635.P12665745235390652927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384634 (n + 1) - A384633 (n + 1)

end

end A384635.P12665745235390652927

namespace A384635

/-- `A384634(n+1)-A384633(n+1)` -/
def P12665745235390652927.Spec : Prop :=
  ∀ n, P12665745235390652927.a n = A384635 n

end A384635

/-!
# A384637: Consecutive states of the linear congruential pseudo-random number generator 5^13*s mod 2^35 when started at s=1.

The programs for A384637, there is no canonical definition to state claims against.
-/

/-! ## A384637.P7086803775711146288

`A384565(A190991(n))`
-/

namespace A384637.P7086803775711146288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384565 (A190991 n).toNat

end

end A384637.P7086803775711146288

/-!
# A384638: Primes p such that the concatenations of three consecutive primes starting with p, in both forward and backwards orders, are triprimes.

The programs for A384638, there is no canonical definition to state claims against.
-/

/-! ## A384638.P14873667328630450665

`A324695(∑[a((n+1)/∏{p}[n+1, #]-1)+1])` with `a(0)=14, a(1)=1`
-/

namespace A384638.P14873667328630450665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384638.P14873667328630450665

/-!
# A384639: Number of equivalence classes (up to graph homeomorphism) of finite graphs that have an embedding in an orientable surface of genus n which minimally separates the surface (that is, no proper subset of the embedding separates the genus n surface).

The programs for A384639, there is no canonical definition to state claims against.
-/

/-! ## A384639.P11002947346970775230

`∑[A387066(n)]`
-/

namespace A384639.P11002947346970775230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384639.P11002947346970775230

/-!
# A384640: Expansion of (1-3*x^2) / (1-x-5*x^2+x^3+2*x^4).

The programs for A384640, the canonical program `A384640.P13895661277414295081` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384640 has offset 0).

The definition of A384640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))` (program `A384640.P13895661277414295081`, by `A384640.P13895661277414295081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384640.P13895661277414295081

`ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384640

/-- `ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))` -/
def P13895661277414295081.Spec : Prop :=
  ∀ n, P13895661277414295081.a n = A384640 n

theorem P13895661277414295081.correct : P13895661277414295081.Spec := by
  intro n
  simp only [A384640]

end A384640

/-! ## A384640.P18173603634289518364

`A087817(A150027(n))`
-/

namespace A384640.P18173603634289518364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A150027 n).toNat

end

end A384640.P18173603634289518364

namespace A384640

/-- `A087817(A150027(n))` -/
def P18173603634289518364.Spec : Prop :=
  ∀ n, P18173603634289518364.a n = A384640 n

end A384640

/-! ## A384640.P3446743872427070737

`A087843(A150280(n))`
-/

namespace A384640.P3446743872427070737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A150280 n).toNat

end

end A384640.P3446743872427070737

namespace A384640

/-- `A087843(A150280(n))` -/
def P3446743872427070737.Spec : Prop :=
  ∀ n, P3446743872427070737.a n = A384640 n

end A384640

/-! ## A384640.P15859802447195866371

`A087843(A165535(n+1))`
-/

namespace A384640.P15859802447195866371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A165535 (n + 1)).toNat

end

end A384640.P15859802447195866371

namespace A384640

/-- `A087843(A165535(n+1))` -/
def P15859802447195866371.Spec : Prop :=
  ∀ n, P15859802447195866371.a n = A384640 n

end A384640

/-!
# A384641: Expansion of (1+2*x-x^3) / (1-x-5*x^2+x^3+2*x^4).

The programs for A384641, the canonical program `A384641.P883418741015050253` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384641 has offset 0).

The definition of A384641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384641.P883418741015050253`, by `A384641.P883418741015050253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384641.P883418741015050253

`ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384641

/-- `ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))` -/
def P883418741015050253.Spec : Prop :=
  ∀ n, P883418741015050253.a n = A384641 n

theorem P883418741015050253.correct : P883418741015050253.Spec := by
  intro n
  simp only [A384641]

end A384641

/-! ## A384641.P17364959832467536200

`A384642(n+1)/2`
-/

namespace A384641.P17364959832467536200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384642 (n + 1) : ℚ) / 2

end

end A384641.P17364959832467536200

namespace A384641

/-- `A384642(n+1)/2` -/
def P17364959832467536200.Spec : Prop :=
  ∀ n, P17364959832467536200.a n = (A384641 n : ℚ)

end A384641

/-! ## A384641.P9362425729763896215

`A273943(A384642(n+1))`
-/

namespace A384641.P9362425729763896215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A384642 (n + 1)).toNat

end

end A384641.P9362425729763896215

namespace A384641

/-- `A273943(A384642(n+1))` -/
def P9362425729763896215.Spec : Prop :=
  ∀ n, P9362425729763896215.a n = A384641 n

end A384641

/-!
# A384642: Expansion of (1+x-x^2+x^3) / (1-x-5*x^2+x^3+2*x^4).

The programs for A384642, the canonical program `A384642.P15225620049367970568` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384642 has offset 0).

The definition of A384642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384642.P15225620049367970568`, by `A384642.P15225620049367970568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384642.P15225620049367970568

`ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384642

/-- `ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))` -/
def P15225620049367970568.Spec : Prop :=
  ∀ n, P15225620049367970568.a n = A384642 n

theorem P15225620049367970568.correct : P15225620049367970568.Spec := by
  intro n
  simp only [A384642]

end A384642

/-! ## A384642.P5665941045203160149

`A384641(n+1)-(A384641(n)+A384640(n+1))`
-/

namespace A384642.P5665941045203160149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384641 (n + 1) - (A384641 n + A384640 (n + 1))

end

end A384642.P5665941045203160149

namespace A384642

/-- `A384641(n+1)-(A384641(n)+A384640(n+1))` -/
def P5665941045203160149.Spec : Prop :=
  ∀ n, P5665941045203160149.a n = A384642 n

end A384642

/-! ## A384642.P15438212466708742162

`A318186(A006727(n))`
-/

namespace A384642.P15438212466708742162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A006727 n).toNat

end

end A384642.P15438212466708742162

namespace A384642

/-- `A318186(A006727(n))` -/
def P15438212466708742162.Spec : Prop :=
  ∀ n, P15438212466708742162.a n = A384642 n

end A384642

/-!
# A384646: Expansion of (1+x) / (1-x-5*x^2-2*x^3).

The programs for A384646, the canonical program `A384646.P16657342197962963062` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384646 has offset 0).

The definition of A384646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-5x^2-2x^3))` (program `A384646.P16657342197962963062`, by `A384646.P16657342197962963062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384646.P16657342197962963062

`ogf((1+x)/(1-x-5x^2-2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384646

/-- `ogf((1+x)/(1-x-5x^2-2x^3))` -/
def P16657342197962963062.Spec : Prop :=
  ∀ n, P16657342197962963062.a n = A384646 n

theorem P16657342197962963062.correct : P16657342197962963062.Spec := by
  intro n
  simp only [A384646]

end A384646

/-! ## A384646.P819832123781678719

`A384648(n)-a(n-1)` with `a(0)=1`
-/

namespace A384646.P819832123781678719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384648 n - a (n - 1)

end

end A384646.P819832123781678719

namespace A384646

/-- `A384648(n)-a(n-1)` -/
def P819832123781678719.Spec : Prop :=
  ∀ n, P819832123781678719.a n = A384646 n

end A384646

/-! ## A384646.P14553157944436217673

`A353964(n)+A384647(n)-A384648(n)`
-/

namespace A384646.P14553157944436217673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353964 n + (A384647 n - A384648 n)

end

end A384646.P14553157944436217673

namespace A384646

/-- `A353964(n)+A384647(n)-A384648(n)` -/
def P14553157944436217673.Spec : Prop :=
  ∀ n, P14553157944436217673.a n = A384646 n

end A384646

/-! ## A384646.P3890874732480480910

`A384647(n)+A384647(n)-A353964(n+1)`
-/

namespace A384646.P3890874732480480910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384647 n + (A384647 n - A353964 (n + 1))

end

end A384646.P3890874732480480910

namespace A384646

/-- `A384647(n)+A384647(n)-A353964(n+1)` -/
def P3890874732480480910.Spec : Prop :=
  ∀ n, P3890874732480480910.a n = A384646 n

end A384646

/-! ## A384646.P15032414867444054525

`A384648(n+1)-(A384648(n)+A384647(n))`
-/

namespace A384646.P15032414867444054525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384648 (n + 1) - (A384648 n + A384647 n)

end

end A384646.P15032414867444054525

namespace A384646

/-- `A384648(n+1)-(A384648(n)+A384647(n))` -/
def P15032414867444054525.Spec : Prop :=
  ∀ n, P15032414867444054525.a n = A384646 n

end A384646

/-! ## A384646.P16483912582915076934

`A384648(n+1)-(A353964(n+1)+A353964(n))`
-/

namespace A384646.P16483912582915076934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384648 (n + 1) - (A353964 (n + 1) + A353964 n)

end

end A384646.P16483912582915076934

namespace A384646

/-- `A384648(n+1)-(A353964(n+1)+A353964(n))` -/
def P16483912582915076934.Spec : Prop :=
  ∀ n, P16483912582915076934.a n = A384646 n

end A384646

/-!
# A384647: Expansion of (1+3*x+x^2) / (1-x-5*x^2-2*x^3).

The programs for A384647, the canonical program `A384647.P6222566480754992603` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384647 has offset 0).

The definition of A384647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2)/(1-x-5x^2-2x^3))` (program `A384647.P6222566480754992603`, by `A384647.P6222566480754992603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384647.P6222566480754992603

`ogf((1+3x+x^2)/(1-x-5x^2-2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384647

/-- `ogf((1+3x+x^2)/(1-x-5x^2-2x^3))` -/
def P6222566480754992603.Spec : Prop :=
  ∀ n, P6222566480754992603.a n = A384647 n

theorem P6222566480754992603.correct : P6222566480754992603.Spec := by
  intro n
  simp only [A384647]

end A384647

/-! ## A384647.P380858135795171168

`A384646(n+1)-A384648(n)`
-/

namespace A384647.P380858135795171168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384646 (n + 1) - A384648 n

end

end A384647.P380858135795171168

namespace A384647

/-- `A384646(n+1)-A384648(n)` -/
def P380858135795171168.Spec : Prop :=
  ∀ n, P380858135795171168.a n = A384647 n

end A384647

/-! ## A384647.P15297448348584701566

`A384646(n)-(A353964(n)-A384648(n))`
-/

namespace A384647.P15297448348584701566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384646 n - (A353964 n - A384648 n)

end

end A384647.P15297448348584701566

namespace A384647

/-- `A384646(n)-(A353964(n)-A384648(n))` -/
def P15297448348584701566.Spec : Prop :=
  ∀ n, P15297448348584701566.a n = A384647 n

end A384647

/-! ## A384647.P13033818074466410257

`A353964(n+1)+A353964(n)-A384648(n)`
-/

namespace A384647.P13033818074466410257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353964 (n + 1) + (A353964 n - A384648 n)

end

end A384647.P13033818074466410257

namespace A384647

/-- `A353964(n+1)+A353964(n)-A384648(n)` -/
def P13033818074466410257.Spec : Prop :=
  ∀ n, P13033818074466410257.a n = A384647 n

end A384647

/-!
# A384648: Expansion of (1+2*x+x^2) / (1-x-5*x^2-2*x^3).

The programs for A384648, the canonical program `A384648.P5178255457906667526` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384648 has offset 0).

The definition of A384648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x-5x^2-2x^3))` (program `A384648.P5178255457906667526`, by `A384648.P5178255457906667526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384648.P5178255457906667526

`ogf((1+2x+x^2)/(1-x-5x^2-2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384648

/-- `ogf((1+2x+x^2)/(1-x-5x^2-2x^3))` -/
def P5178255457906667526.Spec : Prop :=
  ∀ n, P5178255457906667526.a n = A384648 n

theorem P5178255457906667526.correct : P5178255457906667526.Spec := by
  intro n
  simp only [A384648]

end A384648

/-! ## A384648.P10139597249216834354

`A384646(n+1)-A384647(n)`
-/

namespace A384648.P10139597249216834354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384646 (n + 1) - A384647 n

end

end A384648.P10139597249216834354

namespace A384648

/-- `A384646(n+1)-A384647(n)` -/
def P10139597249216834354.Spec : Prop :=
  ∀ n, P10139597249216834354.a n = A384648 n

end A384648

/-! ## A384648.P7332836297574722321

`A353964(n)-(A384646(n)-A384647(n))`
-/

namespace A384648.P7332836297574722321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353964 n - (A384646 n - A384647 n)

end

end A384648.P7332836297574722321

namespace A384648

/-- `A353964(n)-(A384646(n)-A384647(n))` -/
def P7332836297574722321.Spec : Prop :=
  ∀ n, P7332836297574722321.a n = A384648 n

end A384648

/-! ## A384648.P18214720030939959328

`A353964(n+1)+A353964(n)-A384647(n)`
-/

namespace A384648.P18214720030939959328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353964 (n + 1) + (A353964 n - A384647 n)

end

end A384648.P18214720030939959328

namespace A384648

/-- `A353964(n+1)+A353964(n)-A384647(n)` -/
def P18214720030939959328.Spec : Prop :=
  ∀ n, P18214720030939959328.a n = A384648 n

end A384648

/-!
# A384649: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x*A(x)^4) ).

The programs for A384649, there is no canonical definition to state claims against.
-/

/-! ## A384649.P16686299876490579577

`A384653(∑[n+1]+n)`
-/

namespace A384649.P16686299876490579577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384653 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384649.P16686299876490579577

/-! ## A384649.P4696172960784831888

`A334051(A057004(n+1)+n^n)`
-/

namespace A384649.P4696172960784831888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334051 (A057004 (n + 1) + (n ^ n : ℤ)).toNat

end

end A384649.P4696172960784831888

/-!
# A384650: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x*A(x)^5) ).

The programs for A384650, there is no canonical definition to state claims against.
-/

/-! ## A384650.P4430025407290583587

`A384654(∑[n+1]+n)`
-/

namespace A384650.P4430025407290583587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384654 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384650.P4430025407290583587

/-! ## A384650.P12273887754590126545

`A110654(A292932(n)+A027868(n))`
-/

namespace A384650.P12273887754590126545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A292932 n + A027868 n).toNat

end

end A384650.P12273887754590126545

/-!
# A384651: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A162661.

The programs for A384651, there is no canonical definition to state claims against.
-/

/-! ## A384651.P12890980129950978164

`A384626(n)+A382290(A121174(n+1))`
-/

namespace A384651.P12890980129950978164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384626 n + A382290 (A121174 (n + 1)).toNat

end

end A384651.P12890980129950978164

/-! ## A384651.P16463311981099406609

`A341935(A091063(n))`
-/

namespace A384651.P16463311981099406609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat

end

end A384651.P16463311981099406609

/-! ## A384651.P8903118921180552306

`A341935(A384626(n))`
-/

namespace A384651.P8903118921180552306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A384626 n).toNat

end

end A384651.P8903118921180552306

/-! ## A384651.P763245074227804131

`A091063(n)%A108052(n+2)`
-/

namespace A384651.P763245074227804131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091063 n) (A108052 (n + 2))

end

end A384651.P763245074227804131

/-! ## A384651.P6235704720998863070

`A384626(n)%A276888(3*n+2)`
-/

namespace A384651.P6235704720998863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384626 n) (A276888 (3 * n + 2))

end

end A384651.P6235704720998863070

/-!
# A384652: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384145.

The programs for A384652, there is no canonical definition to state claims against.
-/

/-! ## A384652.P1460070417362080608

`A010888(A297321(n)^A327622(n))`
-/

namespace A384652.P1460070417362080608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (SequenceMachineLib.roundAway ((A297321 n : ℚ) ^ (A327622 n : ℤ))).toNat

end

end A384652.P1460070417362080608

/-! ## A384652.P5239294824131560960

`A130020(n)+A083896(A229959(n+1))`
-/

namespace A384652.P5239294824131560960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 n + A083896 (A229959 (n + 1)).toNat

end

end A384652.P5239294824131560960

/-! ## A384652.P5268275094957519184

`A363127(A082672(n+1))+A130020(n)`
-/

namespace A384652.P5268275094957519184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363127 (A082672 (n + 1)).toNat + A130020 n

end

end A384652.P5268275094957519184

/-! ## A384652.P18299345620790671032

`A379598(n)+A000122(A272510(3*(n+1)))`
-/

namespace A384652.P18299345620790671032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 n + A000122 (A272510 (3 * (n + 1))).toNat

end

end A384652.P18299345620790671032

/-! ## A384652.P7836194158401042187

`A322437(A161704(n))+A130020(n)`
-/

namespace A384652.P7836194158401042187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A161704 n).toNat + A130020 n

end

end A384652.P7836194158401042187

/-!
# A384653: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384649.

The programs for A384653, there is no canonical definition to state claims against.
-/

/-! ## A384653.P11340628933800946046

`A144064(n)^A233543(A309010(n))`
-/

namespace A384653.P11340628933800946046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) ^ (A233543 (A309010 n).toNat : ℤ)

end

end A384653.P11340628933800946046

/-! ## A384653.P3859229383656097311

`A144064(n)*A367931(A139205(n+1))`
-/

namespace A384653.P3859229383656097311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n * A367931 (A139205 (n + 1)).toNat

end

end A384653.P3859229383656097311

/-! ## A384653.P16848484787208234826

`A144064(n)^A080577(A303749(n+1))`
-/

namespace A384653.P16848484787208234826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) ^ (A080577 (A303749 (n + 1)).toNat : ℤ)

end

end A384653.P16848484787208234826

/-! ## A384653.P3425226429032133184

`A144064(n)^A340827(A000009(2*(n+1)))`
-/

namespace A384653.P3425226429032133184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) ^ (A340827 (A000009 (2 * (n + 1))).toNat : ℤ)

end

end A384653.P3425226429032133184

/-! ## A384653.P16806126747126490269

`A144064(n)^A064094(A017125(3*(n+1)))`
-/

namespace A384653.P16806126747126490269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 n : ℚ) ^ (A064094 (A017125 (3 * (n + 1))).toNat : ℤ)

end

end A384653.P16806126747126490269

/-!
# A384654: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384650.

The programs for A384654, there is no canonical definition to state claims against.
-/

/-! ## A384654.P14091519722967415538

`C(A277938(n), A228369(A052281(n)))`
-/

namespace A384654.P14091519722967415538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277938 n).toNat (A228369 (A052281 n).toNat).toNat

end

end A384654.P14091519722967415538

/-! ## A384654.P16478176568618879006

`A341935(C(A277938(n), A327622(n)))`
-/

namespace A384654.P16478176568618879006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (Nat.choose (A277938 n).toNat (A327622 n).toNat)

end

end A384654.P16478176568618879006

/-! ## A384654.P15604318433335087367

`A284002(A284010(n+1))*A297321(n)`
-/

namespace A384654.P15604318433335087367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 (A284010 (n + 1)).toNat * A297321 n

end

end A384654.P15604318433335087367

/-! ## A384654.P16893627304417234562

`A043290(A039598(3*n+2))*A297321(n)`
-/

namespace A384654.P16893627304417234562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A039598 (3 * n + 2)).toNat * A297321 n

end

end A384654.P16893627304417234562

/-! ## A384654.P920519866050167043

`C(A277938(n), A043290(A161704(n)))`
-/

namespace A384654.P920519866050167043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277938 n).toNat (A043290 (A161704 n).toNat).toNat

end

end A384654.P920519866050167043

/-!
# A384655: a(n) = Sum_{k=1..n} A051903(gcd(n,k)).

The programs for A384655, the canonical program `A384655.P11515566326129581330` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384655 has offset 1).

The definition of A384655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384655.P11515566326129581330

`∑{d}[n+1, A000010(#)*A051903((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384655

/-- `∑{d}[n+1, A000010(#)*A051903((n+1)/#)]` -/
def P11515566326129581330.Spec : Prop :=
  ∀ n, P11515566326129581330.a n = A384655 (n + 1)

theorem P11515566326129581330.correct : P11515566326129581330.Spec := by
  intro n
  simp only [A384655, Nat.add_sub_cancel]

end A384655

/-! ## A384655.P11715713787307708541

`A383511(A357166(n))+A006022(n+1)`
-/

namespace A384655.P11715713787307708541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A357166 n).toNat + A006022 (n + 1)

end

end A384655.P11715713787307708541

namespace A384655

/-- `A383511(A357166(n))+A006022(n+1)` -/
def P11715713787307708541.Spec : Prop :=
  ∀ n, P11715713787307708541.a n = A384655 (n + 1)

end A384655

/-! ## A384655.P6100220025482182398

`A353479(A157705(n+4))+A006022(n+1)`
-/

namespace A384655.P6100220025482182398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (A157705 (n + 4)).toNat + A006022 (n + 1)

end

end A384655.P6100220025482182398

namespace A384655

/-- `A353479(A157705(n+4))+A006022(n+1)` -/
def P6100220025482182398.Spec : Prop :=
  ∀ n, P6100220025482182398.a n = A384655 (n + 1)

end A384655

/-! ## A384655.P10673091372539518898

`A326065(n+1)-A326072(A161198(2*n))`
-/

namespace A384655.P10673091372539518898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 1) - A326072 (A161198 (2 * n)).toNat

end

end A384655.P10673091372539518898

namespace A384655

/-- `A326065(n+1)-A326072(A161198(2*n))` -/
def P10673091372539518898.Spec : Prop :=
  ∀ n, P10673091372539518898.a n = A384655 (n + 1)

end A384655

/-! ## A384655.P5495684184204243821

`A263787(A000055(n))+A006022(n+1)`
-/

namespace A384655.P5495684184204243821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (A000055 n).toNat + A006022 (n + 1)

end

end A384655.P5495684184204243821

namespace A384655

/-- `A263787(A000055(n))+A006022(n+1)` -/
def P5495684184204243821.Spec : Prop :=
  ∀ n, P5495684184204243821.a n = A384655 (n + 1)

end A384655

/-!
# A384656: a(n) = Sum_{k=1..n} A051903(ugcd(n,k)), where ugcd(n,k) is the greatest divisor of k that is a unitary divisor of n.

The programs for A384656, there is no canonical definition to state claims against.
-/

/-! ## A384656.P6446222130509137217

`∑{p}[n+1, ceil(n/#)]-A037820(A288594(n))`
-/

namespace A384656.P6446222130509137217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ - A037820 (A288594 n).toNat

end

end A384656.P6446222130509137217

/-! ## A384656.P5446338893538918252

`A320458(A013929(n+1))%A016012(n+1)`
-/

namespace A384656.P5446338893538918252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320458 (A013929 (n + 1)).toNat) (A016012 (n + 1))

end

end A384656.P5446338893538918252

/-! ## A384656.P7575976076294174063

`A163280(A078898(n+1))%A177510(3*n+1)`
-/

namespace A384656.P7575976076294174063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163280 (A078898 (n + 1)).toNat) (A177510 (3 * n + 1))

end

end A384656.P7575976076294174063

/-! ## A384656.P6937526723287176297

`A294927(A288766(2*(n+2)))+A285097(2*(n+2))`
-/

namespace A384656.P6937526723287176297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (A288766 (2 * (n + 2))).toNat + A285097 (2 * (n + 2))

end

end A384656.P6937526723287176297

/-! ## A384656.P9039013342317656426

`∑{e}[n+1, #]*A299203(A005940(2*n+5))`
-/

namespace A384656.P9039013342317656426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A299203 (A005940 (2 * n + 5)).toNat

end

end A384656.P9039013342317656426

/-!
# A384657: Numbers k such that A384655(k) > k.

The programs for A384657, there is no canonical definition to state claims against.
-/

/-! ## A384657.P2757870323436549206

`∩[A317534(n+1), A327945(n+1)]`
-/

namespace A384657.P2757870323436549206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384657.P2757870323436549206

/-! ## A384657.P3617691707539368882

`∩[A327945(n+1), A297531(n)]`
-/

namespace A384657.P3617691707539368882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384657.P3617691707539368882

/-! ## A384657.P15544328490989936521

`∩[A327945(n+1), A328596(n+1)]`
-/

namespace A384657.P15544328490989936521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384657.P15544328490989936521

/-! ## A384657.P5443980601831206526

`∩[A327945(n+1), A340681(n+1)]`
-/

namespace A384657.P5443980601831206526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384657.P5443980601831206526

/-! ## A384657.P14512574986919678605

`∩[A327945(n+1), A360246(n+1)]`
-/

namespace A384657.P14512574986919678605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384657.P14512574986919678605

/-!
# A384658: Primitive terms in A384657: numbers k such that A384655(k) > k and A384655(d) <= d for every proper divisor d of k.

The programs for A384658, there is no canonical definition to state claims against.
-/

/-! ## A384658.P8318431659394583258

`A061775(A128344(n+3))*A390731(n+1)`
-/

namespace A384658.P8318431659394583258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A128344 (n + 3)).toNat * A390731 (n + 1)

end

end A384658.P8318431659394583258

/-!
# A384659: Numbers k such that A384655(k)/k > A384655(m)/m for all m < k.

The programs for A384659, there is no canonical definition to state claims against.
-/

/-! ## A384659.P1373283386762606565

`∩[A084094(n+1), A087980(n+1)]`
-/

namespace A384659.P1373283386762606565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384659.P1373283386762606565

/-! ## A384659.P9238532742820609590

`A200219(A307252(n+2))`
-/

namespace A384659.P9238532742820609590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A307252 (n + 2)).toNat

end

end A384659.P9238532742820609590

/-! ## A384659.P7221502210947939966

`∩[A002093(n+1), A322447(n+1)]`
-/

namespace A384659.P7221502210947939966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384659.P7221502210947939966

/-! ## A384659.P10056215113784331271

`∩[A067023(n+1), A322447(n+1)]`
-/

namespace A384659.P10056215113784331271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384659.P10056215113784331271

/-! ## A384659.P9510586367659298971

`∩[A309943(n+1), A322447(n+1)]`
-/

namespace A384659.P9510586367659298971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384659.P9510586367659298971

/-!
# A384660: a(1) = 1. Thereafter a(n) = a(a(n-1)) if a(n-1) is a novel term, or n - S(n) if a(n-1) is a repeat term. S(n) is the sum of distinct terms in multiset {a(1),a(2),..a(n-1)}.

The programs for A384660, there is no canonical definition to state claims against.
-/

/-! ## A384660.P7016256536336767610

`A329221(n)+1`
-/

namespace A384660.P7016256536336767610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329221 n + 1

end

end A384660.P7016256536336767610

/-! ## A384660.P11162043141636561945

`-xor((A010000(n)^6)%7*A329221(n), -1)`
-/

namespace A384660.P11162043141636561945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Int.tmod (A010000 n ^ 6) 7 * A329221 n) (-1)

end

end A384660.P11162043141636561945

/-! ## A384660.P5492117047135076582

`-xor(A292870(A161680(n))*A329221(n), -1)`
-/

namespace A384660.P5492117047135076582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A292870 (A161680 n).toNat * A329221 n) (-1)

end

end A384660.P5492117047135076582

/-! ## A384660.P10708722066382405982

`A002260(n+1)*A063775(A333029(3*(n+1)))`
-/

namespace A384660.P10708722066382405982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A063775 (A333029 (3 * (n + 1))).toNat

end

end A384660.P10708722066382405982

/-! ## A384660.P13154014619806796170

`A355661(A274608(n+1))`
-/

namespace A384660.P13154014619806796170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355661 (A274608 (n + 1)).toNat

end

end A384660.P13154014619806796170

/-!
# A384661: Solution of the complementary equation b(n)=a(a(n))+a(n)+2 with a(1)=1; this is the sequence a(n).

The programs for A384661, there is no canonical definition to state claims against.
-/

/-! ## A384661.P8368170094243078969

`eq[floor(1/(n+1)), char[A384662(n+1)]]`
-/

namespace A384661.P8368170094243078969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384662 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A384661.P8368170094243078969

/-!
# A384664: Solution of the complementary equation b(n)=a(a(n))+a(n)+3 with a(1)=1; this is the sequence b. Sequence a is A384663.

The programs for A384664, there is no canonical definition to state claims against.
-/

/-! ## A384664.P14041216459181877307

`A305391(A000111(n))+A275624(n+1)`
-/

namespace A384664.P14041216459181877307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (A000111 n).toNat + A275624 (n + 1)

end

end A384664.P14041216459181877307

/-!
# A384667: Characteristic function of powers of squarefree numbers (A072774).

The programs for A384667, the canonical program `A384667.P10362112052039593468` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384667 has offset 1).

The definition of A384667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384667.P12663678150574973986

`C(A062759(n+1), n+1)`
-/

namespace A384667.P12663678150574973986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062759 (n + 1)).toNat (n + 1)

end

end A384667.P12663678150574973986

namespace A384667

/-- `C(A062759(n+1), n+1)` -/
def P12663678150574973986.Spec : Prop :=
  ∀ n, (P12663678150574973986.a n : ℤ) = A384667 (n + 1)

end A384667

/-! ## A384667.P6511983899753638462

`C(n+1, A066638(n+1))`
-/

namespace A384667.P6511983899753638462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A066638 (n + 1)).toNat

end

end A384667.P6511983899753638462

namespace A384667

/-- `C(n+1, A066638(n+1))` -/
def P6511983899753638462.Spec : Prop :=
  ∀ n, (P6511983899753638462.a n : ℤ) = A384667 (n + 1)

end A384667

/-! ## A384667.P8626189593116767614

`C(A327526(n+1), n+1)`
-/

namespace A384667.P8626189593116767614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327526 (n + 1)).toNat (n + 1)

end

end A384667.P8626189593116767614

namespace A384667

/-- `C(A327526(n+1), n+1)` -/
def P8626189593116767614.Spec : Prop :=
  ∀ n, (P8626189593116767614.a n : ℤ) = A384667 (n + 1)

end A384667

/-! ## A384667.P4819551041329410996

`C(A375931(n+1), n+1)`
-/

namespace A384667.P4819551041329410996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A375931 (n + 1)).toNat (n + 1)

end

end A384667.P4819551041329410996

namespace A384667

/-- `C(A375931(n+1), n+1)` -/
def P4819551041329410996.Spec : Prop :=
  ∀ n, (P4819551041329410996.a n : ℤ) = A384667 (n + 1)

end A384667

/-! ## A384667.P14081602139854859878

`A008966(A052410(n+1))`
-/

namespace A384667.P14081602139854859878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A052410 (n + 1)).toNat

end

end A384667.P14081602139854859878

namespace A384667

/-- `A008966(A052410(n+1))` -/
def P14081602139854859878.Spec : Prop :=
  ∀ n, P14081602139854859878.a n = A384667 (n + 1)

end A384667

/-! ## A384667.P1965979346464079792

`A000007(A062977(n+1))`
-/

namespace A384667.P1965979346464079792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A062977 (n + 1)).toNat

end

end A384667.P1965979346464079792

namespace A384667

/-- `A000007(A062977(n+1))` -/
def P1965979346464079792.Spec : Prop :=
  ∀ n, P1965979346464079792.a n = A384667 (n + 1)

end A384667

/-! ## A384667.P10362112052039593468

`A354353(n+1)+A010055(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A384667

/-- `A354353(n+1)+A010055(n+1)` -/
def P10362112052039593468.Spec : Prop :=
  ∀ n, P10362112052039593468.a n = A384667 (n + 1)

theorem P10362112052039593468.correct : P10362112052039593468.Spec := by
  intro n
  simp only [A384667, Nat.add_sub_cancel]

end A384667

/-! ## A384667.P6170489056692296430

`∑{d}[n+1, A008683(#)*A327527((n+1)/#)]`
-/

namespace A384667.P6170489056692296430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384667.P6170489056692296430

namespace A384667

/-- `∑{d}[n+1, A008683(#)*A327527((n+1)/#)]` -/
def P6170489056692296430.Spec : Prop :=
  ∀ n, P6170489056692296430.a n = A384667 (n + 1)

end A384667

/-! ## A384667.P15258078818084908514

`A382883(A304404(n+1))²`
-/

namespace A384667.P15258078818084908514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (A304404 (n + 1)).toNat ^ 2

end

end A384667.P15258078818084908514

namespace A384667

/-- `A382883(A304404(n+1))²` -/
def P15258078818084908514.Spec : Prop :=
  ∀ n, P15258078818084908514.a n = A384667 (n + 1)

end A384667

/-! ## A384667.P18434112612028955378

`A335550(n+1)%2`
-/

namespace A384667.P18434112612028955378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335550 (n + 1)) 2

end

end A384667.P18434112612028955378

namespace A384667

/-- `A335550(n+1)%2` -/
def P18434112612028955378.Spec : Prop :=
  ∀ n, P18434112612028955378.a n = A384667 (n + 1)

end A384667

/-!
# A384671: Expansion of (1-x^2) / (1-2*x-5*x^2+2*x^3).

The programs for A384671, the canonical program `A384671.P2341892804254635137` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384671 has offset 0).

The definition of A384671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-5x^2+2x^3))` (program `A384671.P2341892804254635137`, by `A384671.P2341892804254635137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384671.P2341892804254635137

`ogf((1-x^2)/(1-2x-5x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384671

/-- `ogf((1-x^2)/(1-2x-5x^2+2x^3))` -/
def P2341892804254635137.Spec : Prop :=
  ∀ n, P2341892804254635137.a n = A384671 n

theorem P2341892804254635137.correct : P2341892804254635137.Spec := by
  intro n
  simp only [A384671]

end A384671

/-! ## A384671.P11564173385734606366

`A133443(A001096(n))`
-/

namespace A384671.P11564173385734606366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133443 (A001096 n).toNat

end

end A384671.P11564173385734606366

namespace A384671

/-- `A133443(A001096(n))` -/
def P11564173385734606366.Spec : Prop :=
  ∀ n, P11564173385734606366.a n = A384671 n

end A384671

/-!
# A384672: Expansion of (1+2*x-x^2) / (1-2*x-5*x^2+2*x^3).

The programs for A384672, the canonical program `A384672.P16009796501396644033` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384672 has offset 0).

The definition of A384672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))` (program `A384672.P16009796501396644033`, by `A384672.P16009796501396644033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384672.P16009796501396644033

`ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384672

/-- `ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))` -/
def P16009796501396644033.Spec : Prop :=
  ∀ n, P16009796501396644033.a n = A384672 n

theorem P16009796501396644033.correct : P16009796501396644033.Spec := by
  intro n
  simp only [A384672]

end A384672

/-! ## A384672.P2292211621980220246

`A384671(n+1)/2`
-/

namespace A384672.P2292211621980220246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384671 (n + 1) : ℚ) / 2

end

end A384672.P2292211621980220246

namespace A384672

/-- `A384671(n+1)/2` -/
def P2292211621980220246.Spec : Prop :=
  ∀ n, P2292211621980220246.a n = (A384672 n : ℚ)

end A384672

/-! ## A384672.P5945702803647108175

`Δ[A384673(n)/2]`
-/

namespace A384672.P5945702803647108175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384673 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384672.P5945702803647108175

namespace A384672

/-- `Δ[A384673(n)/2]` -/
def P5945702803647108175.Spec : Prop :=
  ∀ n, P5945702803647108175.a n = (A384672 n : ℚ)

end A384672

/-! ## A384672.P6542299103559426505

`A014682(A384671(n+1))`
-/

namespace A384672.P6542299103559426505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A384671 (n + 1)).toNat

end

end A384672.P6542299103559426505

namespace A384672

/-- `A014682(A384671(n+1))` -/
def P6542299103559426505.Spec : Prop :=
  ∀ n, P6542299103559426505.a n = A384672 n

end A384672

/-!
# A384673: Expansion of (1+x) / (1-2*x-5*x^2+2*x^3).

The programs for A384673, the canonical program `A384673.P14419565022815265075` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384673 has offset 0).

The definition of A384673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-5x^2+2x^3))` (program `A384673.P14419565022815265075`, by `A384673.P14419565022815265075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384673.P14419565022815265075

`ogf((1+x)/(1-2x-5x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384673

/-- `ogf((1+x)/(1-2x-5x^2+2x^3))` -/
def P14419565022815265075.Spec : Prop :=
  ∀ n, P14419565022815265075.a n = A384673 n

theorem P14419565022815265075.correct : P14419565022815265075.Spec := by
  intro n
  simp only [A384673]

end A384673

/-! ## A384673.P15577609001173583121

`∑[A384671(n)]`
-/

namespace A384673.P15577609001173583121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384673.P15577609001173583121

namespace A384673

/-- `∑[A384671(n)]` -/
def P15577609001173583121.Spec : Prop :=
  ∀ n, P15577609001173583121.a n = A384673 n

end A384673

/-!
# A384674: Lexicographically smallest sequence of distinct primes whose inverse binomial transform consists only of primes.

The programs for A384674, there is no canonical definition to state claims against.
-/

/-! ## A384674.P12467318257540321666

`A144573(A047081(n))`
-/

namespace A384674.P12467318257540321666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144573 (A047081 n).toNat

end

end A384674.P12467318257540321666

/-! ## A384674.P1186079855200923833

`A144573(A049870(n))`
-/

namespace A384674.P1186079855200923833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144573 (A049870 n).toNat

end

end A384674.P1186079855200923833

/-! ## A384674.P17052012018775641026

`A144573(A329665(n))`
-/

namespace A384674.P17052012018775641026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144573 (A329665 n).toNat

end

end A384674.P17052012018775641026

/-!
# A384676: Binomial transform of A111107.

The programs for A384676, there is no canonical definition to state claims against.
-/

/-! ## A384676.P2151373931740520112

`A076272(A131569(n+2))`
-/

namespace A384676.P2151373931740520112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A131569 (n + 2)).toNat

end

end A384676.P2151373931740520112

/-! ## A384676.P4469754704016294407

`A167773(A278666(n))`
-/

namespace A384676.P4469754704016294407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167773 (A278666 n).toNat

end

end A384676.P4469754704016294407

/-!
# A384677: Expansion of (1-x-2*x^2) / (1-2*x-4*x^2+2*x^3).

The programs for A384677, the canonical program `A384677.P6933609243300286926` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384677 has offset 0).

The definition of A384677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))` (program `A384677.P6933609243300286926`, by `A384677.P6933609243300286926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384677.P6933609243300286926

`ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384677

/-- `ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))` -/
def P6933609243300286926.Spec : Prop :=
  ∀ n, P6933609243300286926.a n = A384677 n

theorem P6933609243300286926.correct : P6933609243300286926.Spec := by
  intro n
  simp only [A384677]

end A384677

/-! ## A384677.P13539314689826419813

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A384677.P13539314689826419813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A384677.P13539314689826419813

namespace A384677

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P13539314689826419813.Spec : Prop :=
  ∀ n, P13539314689826419813.a n = A384677 n

end A384677

/-! ## A384677.P1095876484264601620

`Δ[A091141(n+2)]%A091141(n+2)`
-/

namespace A384677.P1095876484264601620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A091141 (n + 2))

end

end A384677.P1095876484264601620

namespace A384677

/-- `Δ[A091141(n+2)]%A091141(n+2)` -/
def P1095876484264601620.Spec : Prop :=
  ∀ n, P1095876484264601620.a n = A384677 n

end A384677

/-!
# A384678: Expansion of (1+x) / (1-2*x-4*x^2+2*x^3).

The programs for A384678, the canonical program `A384678.P2397942481497600429` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384678 has offset 0).

The definition of A384678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-4x^2+2x^3))` (program `A384678.P2397942481497600429`, by `A384678.P2397942481497600429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384678.P2397942481497600429

`ogf((1+x)/(1-2x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384678

/-- `ogf((1+x)/(1-2x-4x^2+2x^3))` -/
def P2397942481497600429.Spec : Prop :=
  ∀ n, P2397942481497600429.a n = A384678 n

theorem P2397942481497600429.correct : P2397942481497600429.Spec := by
  intro n
  simp only [A384678]

end A384678

/-! ## A384678.P10419963346257349968

`∑[A396473(n+1)/2]`
-/

namespace A384678.P10419963346257349968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396473 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384678.P10419963346257349968

namespace A384678

/-- `∑[A396473(n+1)/2]` -/
def P10419963346257349968.Spec : Prop :=
  ∀ n, P10419963346257349968.a n = (A384678 n : ℚ)

end A384678

/-! ## A384678.P1232342742926874065

`A091141(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A384678.P1232342742926874065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091141 (n + 1) - a (n - 1)

end

end A384678.P1232342742926874065

namespace A384678

/-- `A091141(n+1)-a(n-1)` -/
def P1232342742926874065.Spec : Prop :=
  ∀ n, P1232342742926874065.a n = A384678 n

end A384678

/-! ## A384678.P614967231608230103

`A091141(n+1)+A091142(n+1)-A091140(n+1)`
-/

namespace A384678.P614967231608230103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091141 (n + 1) + (A091142 (n + 1) - A091140 (n + 1))

end

end A384678.P614967231608230103

namespace A384678

/-- `A091141(n+1)+A091142(n+1)-A091140(n+1)` -/
def P614967231608230103.Spec : Prop :=
  ∀ n, P614967231608230103.a n = A384678 n

end A384678

/-! ## A384678.P13522873421801524223

`A091140(n+2)-A091142(n+2)`
-/

namespace A384678.P13522873421801524223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 2) - A091142 (n + 2)

end

end A384678.P13522873421801524223

namespace A384678

/-- `A091140(n+2)-A091142(n+2)` -/
def P13522873421801524223.Spec : Prop :=
  ∀ n, P13522873421801524223.a n = A384678 n

end A384678

/-! ## A384678.P7425749290943583496

`Δ[A091140(n+1)]-A091140(n+1)`
-/

namespace A384678.P7425749290943583496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091140 (n + 1)

end

end A384678.P7425749290943583496

namespace A384678

/-- `Δ[A091140(n+1)]-A091140(n+1)` -/
def P7425749290943583496.Spec : Prop :=
  ∀ n, P7425749290943583496.a n = A384678 n

end A384678

/-! ## A384678.P13360350803373348518

`A091140(n+2)-A091140(n+1)-A091140(n+1)`
-/

namespace A384678.P13360350803373348518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091140 (n + 2) - A091140 (n + 1) - A091140 (n + 1)

end

end A384678.P13360350803373348518

namespace A384678

/-- `A091140(n+2)-A091140(n+1)-A091140(n+1)` -/
def P13360350803373348518.Spec : Prop :=
  ∀ n, P13360350803373348518.a n = A384678 n

end A384678

/-!
# A384679: Number of edge-connected components on the faces of a tetrakis square tiling where the degree-8 vertices have been truncated, up to translation, rotation and reflection of the tiling.

The programs for A384679, there is no canonical definition to state claims against.
-/

/-! ## A384679.P12142324739622064886

`A187041(A121908(n))`
-/

namespace A384679.P12142324739622064886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (A121908 n).toNat

end

end A384679.P12142324739622064886

/-! ## A384679.P15567343970889531049

`A351596(A002605(n)+2)`
-/

namespace A384679.P15567343970889531049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A002605 n + 2).toNat

end

end A384679.P15567343970889531049

/-!
# A384680: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)*A(x*A(x)^3) ).

The programs for A384680, there is no canonical definition to state claims against.
-/

/-! ## A384680.P5970268714637310870

`A384681(∑[n+1]+n)`
-/

namespace A384680.P5970268714637310870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384681 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384680.P5970268714637310870

/-! ## A384680.P15088288573544229803

`A384681(A034856(n+1))+A297236(n+1)`
-/

namespace A384680.P15088288573544229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384681 (A034856 (n + 1)).toNat + A297236 (n + 1)

end

end A384680.P15088288573544229803

/-! ## A384680.P621276444886081503

`A384681(A034856(n+1))+A000007(2*n+3)`
-/

namespace A384680.P621276444886081503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384681 (A034856 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A384680.P621276444886081503

/-!
# A384681: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384680.

The programs for A384681, there is no canonical definition to state claims against.
-/

/-! ## A384681.P4625750048948618700

`or(A341541(A008459(n)), A379599(n))`
-/

namespace A384681.P4625750048948618700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341541 (A008459 n).toNat) (A379599 n)

end

end A384681.P4625750048948618700

/-! ## A384681.P808934177622624199

`C(A297328(n), A206739(A261959(n)))`
-/

namespace A384681.P808934177622624199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297328 n).toNat (A206739 (A261959 n).toNat).toNat

end

end A384681.P808934177622624199

/-! ## A384681.P6199055607370007297

`or(A061762(A185213(n)), A378289(n))`
-/

namespace A384681.P6199055607370007297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061762 (A185213 n).toNat) (A378289 n)

end

end A384681.P6199055607370007297

/-! ## A384681.P17296575795370430691

`A379599(n)+A000122(A268351(2*n+1))`
-/

namespace A384681.P17296575795370430691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379599 n + A000122 (A268351 (2 * n + 1)).toNat

end

end A384681.P17296575795370430691

/-! ## A384681.P12060706360160434049

`A384802(n)-A055570(A185264(2*n+3))`
-/

namespace A384681.P12060706360160434049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 n - A055570 (A185264 (2 * n + 3)).toNat

end

end A384681.P12060706360160434049

/-!
# A384685: Triangle read by rows: T(n,k) is the number of rooted ordered trees with node weights summing to n, where the root has weight 0, all internal nodes have weight 1, and leaf nodes have weights in {1,...,k}.

The programs for A384685, there is no canonical definition to state claims against.
-/

/-! ## A384685.P16620086262178723257

`A123110(n)*A135225(n)*A132399(A055775(n))`
-/

namespace A384685.P16620086262178723257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A135225 n * A132399 (A055775 n).toNat

end

end A384685.P16620086262178723257

/-!
# A384686: a(n) = 2^(n-4)*(5*binomial(n,5) + 6*binomial(n,4)).

The programs for A384686, the canonical program `A384686.P16921245346159621725` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384686 has offset 0).

The definition of A384686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384686.P16921245346159621725

`2^(n-4)*(5*C(n, 5)+6*C(n, 4))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384686

/-- `2^(n-4)*(5*C(n, 5)+6*C(n, 4))` -/
def P16921245346159621725.Spec : Prop :=
  ∀ n, P16921245346159621725.a n = (A384686 n : ℚ)

end A384686

/-! ## A384686.P10543734879396707127

`1/3*2^(n-7)*(n-3)*(n-2)*(n-1)*n*(n+2)`
-/

namespace A384686.P10543734879396707127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (2 : ℚ) ^ ((n : ℤ) - 7 : ℤ) * ((n : ℤ) - 3 : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 1 : ℚ) * (n : ℚ) * (n + 2 : ℚ)

end

end A384686.P10543734879396707127

namespace A384686

/-- `1/3*2^(n-7)*(n-3)*(n-2)*(n-1)*n*(n+2)` -/
def P10543734879396707127.Spec : Prop :=
  ∀ n, P10543734879396707127.a n = (A384686 n : ℚ)

end A384686

/-! ## A384686.P8841612349555137081

`A025429(2*A115981(2*n))`
-/

namespace A384686.P8841612349555137081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (2 * A115981 (2 * n)).toNat

end

end A384686.P8841612349555137081

namespace A384686

/-- `A025429(2*A115981(2*n))` -/
def P8841612349555137081.Spec : Prop :=
  ∀ n, P8841612349555137081.a n = A384686 n

end A384686

/-!
# A384688: Runs of t in the range 0 <= t <= k and the same parity as k, for successive k >= 0.

The programs for A384688, the canonical program `A384688.P10707158175314299968` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384688 has offset 0).

The definition of A384688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384688.P459208798538108930

`2*A055087(n)+A079813(n+1)`
-/

namespace A384688.P459208798538108930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055087 n + A079813 (n + 1)

end

end A384688.P459208798538108930

namespace A384688

/-- `2*A055087(n)+A079813(n+1)` -/
def P459208798538108930.Spec : Prop :=
  ∀ n, P459208798538108930.a n = A384688 n

end A384688

/-! ## A384688.P7747950099807516149

`A055086(n)-2*A216607(n+1)`
-/

namespace A384688.P7747950099807516149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n - 2 * A216607 (n + 1)

end

end A384688.P7747950099807516149

namespace A384688

/-- `A055086(n)-2*A216607(n+1)` -/
def P7747950099807516149.Spec : Prop :=
  ∀ n, P7747950099807516149.a n = A384688 n

end A384688

/-! ## A384688.P10707158175314299968

`ceil(A053186(4*n+1)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A384688

/-- `ceil(A053186(4*n+1)/2)` -/
def P10707158175314299968.Spec : Prop :=
  ∀ n, P10707158175314299968.a n = A384688 n

theorem P10707158175314299968.correct : P10707158175314299968.Spec := by
  intro n
  simp only [A384688]

end A384688

/-! ## A384688.P1109195889053934176

`A322832(n)-A216607(n+1)`
-/

namespace A384688.P1109195889053934176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n - A216607 (n + 1)

end

end A384688.P1109195889053934176

namespace A384688

/-- `A322832(n)-A216607(n+1)` -/
def P1109195889053934176.Spec : Prop :=
  ∀ n, P1109195889053934176.a n = A384688 n

end A384688

/-! ## A384688.P15530361427188662135

`A001650(n+1)-A122196(n+1)`
-/

namespace A384688.P15530361427188662135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1) - A122196 (n + 1)

end

end A384688.P15530361427188662135

namespace A384688

/-- `A001650(n+1)-A122196(n+1)` -/
def P15530361427188662135.Spec : Prop :=
  ∀ n, P15530361427188662135.a n = A384688 n

end A384688

/-! ## A384688.P10279437155375291591

`val(A173195(n+1), 2)`
-/

namespace A384688.P10279437155375291591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat 2

end

end A384688.P10279437155375291591

namespace A384688

/-- `val(A173195(n+1), 2)` -/
def P10279437155375291591.Spec : Prop :=
  ∀ n, (P10279437155375291591.a n : ℤ) = A384688 n

end A384688

/-! ## A384688.P7495142433678771151

`A053186(A094761(n)+1)`
-/

namespace A384688.P7495142433678771151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A094761 n + 1).toNat

end

end A384688.P7495142433678771151

namespace A384688

/-- `A053186(A094761(n)+1)` -/
def P7495142433678771151.Spec : Prop :=
  ∀ n, P7495142433678771151.a n = A384688 n

end A384688

/-! ## A384688.P388894329364698234

`A053186(A053186(n+1)+n)`
-/

namespace A384688.P388894329364698234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 (n + 1) + (n : ℤ)).toNat

end

end A384688.P388894329364698234

namespace A384688

/-- `A053186(A053186(n+1)+n)` -/
def P388894329364698234.Spec : Prop :=
  ∀ n, P388894329364698234.a n = A384688 n

end A384688

/-! ## A384688.P6703674156244100983

`A171746(A049068(n+1))-1`
-/

namespace A384688.P6703674156244100983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171746 (A049068 (n + 1)).toNat - 1

end

end A384688.P6703674156244100983

namespace A384688

/-- `A171746(A049068(n+1))-1` -/
def P6703674156244100983.Spec : Prop :=
  ∀ n, P6703674156244100983.a n = A384688 n

end A384688

/-! ## A384688.P1620027281328518011

`A002262(2*n+1-A000194(n+1))`
-/

namespace A384688.P1620027281328518011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((2 * n + 1 : ℤ) - A000194 (n + 1)).toNat

end

end A384688.P1620027281328518011

namespace A384688

/-- `A002262(2*n+1-A000194(n+1))` -/
def P1620027281328518011.Spec : Prop :=
  ∀ n, P1620027281328518011.a n = A384688 n

end A384688

/-! ## A384688.P16921651739713593795

`2*n+1-A000982(A103128(2*n+1))`
-/

namespace A384688.P16921651739713593795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000982 (A103128 (2 * n + 1)).toNat

end

end A384688.P16921651739713593795

namespace A384688

/-- `2*n+1-A000982(A103128(2*n+1))` -/
def P16921651739713593795.Spec : Prop :=
  ∀ n, P16921651739713593795.a n = A384688 n

end A384688

/-! ## A384688.P9012018289709596518

`A002262(2*n+1+A000196(n))`
-/

namespace A384688.P9012018289709596518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((2 * n + 1 : ℤ) + A000196 n).toNat

end

end A384688.P9012018289709596518

namespace A384688

/-- `A002262(2*n+1+A000196(n))` -/
def P9012018289709596518.Spec : Prop :=
  ∀ n, P9012018289709596518.a n = A384688 n

end A384688

/-!
# A384689: E.g.f. A(x) satisfies A(x) = exp( x*A(x)^2 * A(x*A(x)) ).

The programs for A384689, there is no canonical definition to state claims against.
-/

/-! ## A384689.P7715939601262573494

`A384690(∑[n+1]+n)`
-/

namespace A384689.P7715939601262573494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384690 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384689.P7715939601262573494

/-!
# A384691: E.g.f. A(x) satisfies A(x) = exp( x*A(x) * A(x*A(x))^2 ).

The programs for A384691, there is no canonical definition to state claims against.
-/

/-! ## A384691.P5319589215515587399

`A384692(∑[n+1]+n)`
-/

namespace A384691.P5319589215515587399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384692 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A384691.P5319589215515587399

/-!
# A384692: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A384691.

The programs for A384692, there is no canonical definition to state claims against.
-/

/-! ## A384692.P9765832039112264829

`A055570(A381594(n))`
-/

namespace A384692.P9765832039112264829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A381594 n).toNat

end

end A384692.P9765832039112264829

/-! ## A384692.P11604777892241443715

`A055570(A384623(n))`
-/

namespace A384692.P11604777892241443715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A384623 n).toNat

end

end A384692.P11604777892241443715

/-! ## A384692.P14258162210697725709

`A072088(A384690(n))`
-/

namespace A384692.P14258162210697725709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384690 n).toNat

end

end A384692.P14258162210697725709

/-! ## A384692.P6120818673193569553

`A072088(A384722(n))`
-/

namespace A384692.P6120818673193569553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384722 n).toNat

end

end A384692.P6120818673193569553

/-! ## A384692.P2613955703602255784

`A072088(A384752(n))`
-/

namespace A384692.P2613955703602255784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384752 n).toNat

end

end A384692.P2613955703602255784

/-!
# A384694: Sum of the number of cells alive after 2 generations of Conway's game of life for initial 1 X n cells taken in all 2^n combinations of alive or dead.

The programs for A384694, the canonical program `A384694.P6283803004892063302` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384694 has offset 0).

The definition of A384694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384694.P6283803004892063302

`ogf((3x^2-x^4)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384694

/-- `ogf((3x^2-x^4)/(1-4x+4x^2))` -/
def P6283803004892063302.Spec : Prop :=
  ∀ n, P6283803004892063302.a n = A384694 n

theorem P6283803004892063302.correct : P6283803004892063302.Spec := by
  intro n
  simp only [A384694]

end A384694

/-!
# A384697: Primes of the form floor(2^k / 5).

The programs for A384697, there is no canonical definition to state claims against.
-/

/-! ## A384697.P10740188691736489618

`floor(2^A383966(n+1)/5)`
-/

namespace A384697.P10740188691736489618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A383966 (n + 1) : ℤ) / 5⌋

end

end A384697.P10740188691736489618

