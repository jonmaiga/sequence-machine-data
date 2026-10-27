import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A335901: a(n) = 2*a(floor((n-1)/a(n-1))) with a(1) = 1.

The programs for A335901, the canonical program `A335901.P8595927353000814980` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335901 has offset 1).

The definition of A335901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(floor(n/a(n-1))-1)` (program `A335901.P8595927353000814980`, by `A335901.P8595927353000814980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335901.P8595927353000814980

`2*a(floor(n/a(n-1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A335901

/-- `2*a(floor(n/a(n-1))-1)` -/
def P8595927353000814980.Spec : Prop :=
  ∀ n, (P8595927353000814980.a n : ℤ) = A335901 (n + 1)

theorem P8595927353000814980.correct : P8595927353000814980.Spec := by
  intro n
  simp only [A335901, Nat.add_sub_cancel]

end A335901

/-! ## A335901.P14636993697744781183

`2*a(ceil((n+1)/a(n-1))-2)` with `a(0)=1`
-/

namespace A335901.P14636993697744781183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (⌈(n + 1 : ℚ) / (a (n - 1) : ℚ)⌉ - 2).toNat

end

end A335901.P14636993697744781183

namespace A335901

/-- `2*a(ceil((n+1)/a(n-1))-2)` -/
def P14636993697744781183.Spec : Prop :=
  ∀ n, (P14636993697744781183.a n : ℤ) = A335901 (n + 1)

end A335901

/-! ## A335901.P11755209349220869358

`2*a(A023443(floor(n/a(n-1))))` with `a(0)=1`
-/

namespace A335901.P11755209349220869358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A023443 ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat

end

end A335901.P11755209349220869358

namespace A335901

/-- `2*a(A023443(floor(n/a(n-1))))` -/
def P11755209349220869358.Spec : Prop :=
  ∀ n, (P11755209349220869358.a n : ℤ) = A335901 (n + 1)

end A335901

/-! ## A335901.P11947910587256630792

`A000203(a(floor(n/a(n-1))-1))+1` with `a(0)=1`
-/

namespace A335901.P11947910587256630792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 (a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat).toNat + 1

end

end A335901.P11947910587256630792

namespace A335901

/-- `A000203(a(floor(n/a(n-1))-1))+1` -/
def P11947910587256630792.Spec : Prop :=
  ∀ n, P11947910587256630792.a n = A335901 (n + 1)

end A335901

/-! ## A335901.P10037736239012711727

`A029935(a(floor(n/a(n-1))-1)+1)` with `a(0)=1`
-/

namespace A335901.P10037736239012711727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029935 (a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat + 1).toNat

end

end A335901.P10037736239012711727

namespace A335901

/-- `A029935(a(floor(n/a(n-1))-1)+1)` -/
def P10037736239012711727.Spec : Prop :=
  ∀ n, P10037736239012711727.a n = A335901 (n + 1)

end A335901

/-! ## A335901.P17741472714645785813

`2*a(val(2^n, A000079(a(n-1)))-1)` with `a(0)=1`
-/

namespace A335901.P17741472714645785813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (SequenceMachineLib.valuation (2 ^ n) (A000079 (a (n - 1))).toNat - 1)

end

end A335901.P17741472714645785813

namespace A335901

/-- `2*a(val(2^n, A000079(a(n-1)))-1)` -/
def P17741472714645785813.Spec : Prop :=
  ∀ n, (P17741472714645785813.a n : ℤ) = A335901 (n + 1)

end A335901

/-!
# A335902: Composite numbers c such that phi(c)/phi(mind(c)) mod phi(c)/phi(maxd(c)) <> 0, where phi is the Euler function, mind(c) is the smallest nontrivial divisor of c, maxd(c) is the largest nontrivial divisor of c.

The programs for A335902, there is no canonical definition to state claims against.
-/

/-! ## A335902.P15561142322512705928

`filter[A340269(n+1), A385055(#)]`
-/

namespace A335902.P15561142322512705928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A335902.P15561142322512705928

/-! ## A335902.P4197098747874289813

`∩[A027855(n+1), A340269(n+1)]`
-/

namespace A335902.P4197098747874289813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P4197098747874289813

/-! ## A335902.P6952799034078178194

`∩[A085235(n+1), A340269(n+1)]`
-/

namespace A335902.P6952799034078178194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P6952799034078178194

/-! ## A335902.P17112890495163189517

`∩[A132858(n+1), A340269(n+1)]`
-/

namespace A335902.P17112890495163189517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P17112890495163189517

/-! ## A335902.P1967251921067153213

`∩[A132982(n+1), A340269(n+1)]`
-/

namespace A335902.P1967251921067153213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P1967251921067153213

/-! ## A335902.P592038362843656030

`∩[A325230(n+1), A340269(n+1)]`
-/

namespace A335902.P592038362843656030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P592038362843656030

/-! ## A335902.P13546028858775758000

`∩[A340269(n+1), A361232(n+1)]`
-/

namespace A335902.P13546028858775758000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P13546028858775758000

/-! ## A335902.P7419763953177700129

`∩[A340269(n+1), A392467(n+1)]`
-/

namespace A335902.P7419763953177700129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P7419763953177700129

/-! ## A335902.P11476170015764144567

`∩[A340269(n+1), A396597(n+1)]`
-/

namespace A335902.P11476170015764144567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335902.P11476170015764144567

/-!
# A335903: Column 1 in the matrix of A279212 (whose indexing starts at 0).

The programs for A335903, the canonical program `A335903.P4707606654354226855` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335903 has offset 1).

The definition of A335903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335903.P4707606654354226855

`2*a(n-1)+7*2^(n-3)` with `a(0)=2, a(1)=6, a(2)=15`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A335903

/-- `2*a(n-1)+7*2^(n-3)` -/
def P4707606654354226855.Spec : Prop :=
  ∀ n, P4707606654354226855.a n = (A335903 (n + 1) : ℚ)

end A335903

/-! ## A335903.P10383636552807751219

`ogf((2-2x-x^2+x^3)/(1-4x+4x^2))`
-/

namespace A335903.P10383636552807751219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1, 1] [1, -4, 4] n

end

end A335903.P10383636552807751219

namespace A335903

/-- `ogf((2-2x-x^2+x^3)/(1-4x+4x^2))` -/
def P10383636552807751219.Spec : Prop :=
  ∀ n, P10383636552807751219.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P3192745778913179894

`A106472(n)+A001792(n)`
-/

namespace A335903.P3192745778913179894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n + A001792 n

end

end A335903.P3192745778913179894

namespace A335903

/-- `A106472(n)+A001792(n)` -/
def P3192745778913179894.Spec : Prop :=
  ∀ n, P3192745778913179894.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P17887698933744517562

`A133086(n)+A111297(n)`
-/

namespace A335903.P17887698933744517562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 n + A111297 n

end

end A335903.P17887698933744517562

namespace A335903

/-- `A133086(n)+A111297(n)` -/
def P17887698933744517562.Spec : Prop :=
  ∀ n, P17887698933744517562.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P8491728700518537716

`A339252(n)+A109975(n)`
-/

namespace A335903.P8491728700518537716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n + A109975 n

end

end A335903.P8491728700518537716

namespace A335903

/-- `A339252(n)+A109975(n)` -/
def P8491728700518537716.Spec : Prop :=
  ∀ n, P8491728700518537716.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P5877392372679276319

`A106472(n)+A049610(n+2)`
-/

namespace A335903.P5877392372679276319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n + A049610 (n + 2)

end

end A335903.P5877392372679276319

namespace A335903

/-- `A106472(n)+A049610(n+2)` -/
def P5877392372679276319.Spec : Prop :=
  ∀ n, P5877392372679276319.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P4664010334367020060

`A386878(n+2)-A011782(n+1)`
-/

namespace A335903.P4664010334367020060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386878 (n + 2) - A011782 (n + 1)

end

end A335903.P4664010334367020060

namespace A335903

/-- `A386878(n+2)-A011782(n+1)` -/
def P4664010334367020060.Spec : Prop :=
  ∀ n, P4664010334367020060.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P3165510441287189296

`A001792(n)+A001792(n)-A049610(n)`
-/

namespace A335903.P3165510441287189296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A001792 n - A049610 n)

end

end A335903.P3165510441287189296

namespace A335903

/-- `A001792(n)+A001792(n)-A049610(n)` -/
def P3165510441287189296.Spec : Prop :=
  ∀ n, P3165510441287189296.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P11220424615843209146

`A045891(n+1)+A109975(n)+A001787(n)`
-/

namespace A335903.P11220424615843209146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + (A109975 n + A001787 n)

end

end A335903.P11220424615843209146

namespace A335903

/-- `A045891(n+1)+A109975(n)+A001787(n)` -/
def P11220424615843209146.Spec : Prop :=
  ∀ n, P11220424615843209146.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P18096200681527895003

`A045623(n+1)+A057711(n+1)-A045891(n)`
-/

namespace A335903.P18096200681527895003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) + (A057711 (n + 1) - A045891 n)

end

end A335903.P18096200681527895003

namespace A335903

/-- `A045623(n+1)+A057711(n+1)-A045891(n)` -/
def P18096200681527895003.Spec : Prop :=
  ∀ n, P18096200681527895003.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P15567123232808588677

`A001792(n+1)-A111297(n)`
-/

namespace A335903.P15567123232808588677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - A111297 n

end

end A335903.P15567123232808588677

namespace A335903

/-- `A001792(n+1)-A111297(n)` -/
def P15567123232808588677.Spec : Prop :=
  ∀ n, P15567123232808588677.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P12071028616965125841

`A057711(n+2)-A049610(n)`
-/

namespace A335903.P12071028616965125841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 2) - A049610 n

end

end A335903.P12071028616965125841

namespace A335903

/-- `A057711(n+2)-A049610(n)` -/
def P12071028616965125841.Spec : Prop :=
  ∀ n, P12071028616965125841.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P8201847618918048744

`A129952(n+2)-A049610(n)`
-/

namespace A335903.P8201847618918048744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 2) - A049610 n

end

end A335903.P8201847618918048744

namespace A335903

/-- `A129952(n+2)-A049610(n)` -/
def P8201847618918048744.Spec : Prop :=
  ∀ n, P8201847618918048744.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P7908382197453320148

`2*A001792(n)-A049610(n)`
-/

namespace A335903.P7908382197453320148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A049610 n

end

end A335903.P7908382197453320148

namespace A335903

/-- `2*A001792(n)-A049610(n)` -/
def P7908382197453320148.Spec : Prop :=
  ∀ n, P7908382197453320148.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P2320262042668529408

`record[A001792(n)-Δ[A034007(n)]]`
-/

namespace A335903.P2320262042668529408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335903.P2320262042668529408

namespace A335903

/-- `record[A001792(n)-Δ[A034007(n)]]` -/
def P2320262042668529408.Spec : Prop :=
  ∀ n, P2320262042668529408.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P16061565259712537765

`∑[2*A045623(n)]-A049610(n)`
-/

namespace A335903.P16061565259712537765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049610 n

end

end A335903.P16061565259712537765

namespace A335903

/-- `∑[2*A045623(n)]-A049610(n)` -/
def P16061565259712537765.Spec : Prop :=
  ∀ n, P16061565259712537765.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P6826916841965986132

`(n+2)*A000079(n)-A049610(n)`
-/

namespace A335903.P6826916841965986132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000079 n - A049610 n

end

end A335903.P6826916841965986132

namespace A335903

/-- `(n+2)*A000079(n)-A049610(n)` -/
def P6826916841965986132.Spec : Prop :=
  ∀ n, P6826916841965986132.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P4388864223500523426

`A189162(n+1)+A099325(n)-A049610(n)`
-/

namespace A335903.P4388864223500523426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) + (A099325 n - A049610 n)

end

end A335903.P4388864223500523426

namespace A335903

/-- `A189162(n+1)+A099325(n)-A049610(n)` -/
def P4388864223500523426.Spec : Prop :=
  ∀ n, P4388864223500523426.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P3967197186248130640

`A001792(n+1)-(A034008(n)+A034007(n+1))`
-/

namespace A335903.P3967197186248130640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (A034008 n + A034007 (n + 1))

end

end A335903.P3967197186248130640

namespace A335903

/-- `A001792(n+1)-(A034008(n)+A034007(n+1))` -/
def P3967197186248130640.Spec : Prop :=
  ∀ n, P3967197186248130640.a n = A335903 (n + 1)

end A335903

/-! ## A335903.P3895249512585235864

`A001792(n+1)-(A045891(n)+A034008(n+1))`
-/

namespace A335903.P3895249512585235864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) - (A045891 n + A034008 (n + 1))

end

end A335903.P3895249512585235864

namespace A335903

/-- `A001792(n+1)-(A045891(n)+A034008(n+1))` -/
def P3895249512585235864.Spec : Prop :=
  ∀ n, P3895249512585235864.a n = A335903 (n + 1)

end A335903

/-!
# A335904: Fully additive with a(2) = 0, and a(p) = 1+a(p-1)+a(p+1), for odd primes p.

The programs for A335904, there is no canonical definition to state claims against.
-/

/-! ## A335904.P13516843202276589835

`A336118(n+1)+A087436(n+1)`
-/

namespace A335904.P13516843202276589835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (n + 1) + A087436 (n + 1)

end

end A335904.P13516843202276589835

/-! ## A335904.P9648188112610904266

`A336118(n+1)+A001222((n+1)/2^val(n+1, 2))`
-/

namespace A335904.P9648188112610904266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (n + 1) + A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A335904.P9648188112610904266

/-! ## A335904.P2415048978081029218

`A336118(n+1)+A001222(-((n+1)/or(n+1, -(n+1))))`
-/

namespace A335904.P2415048978081029218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (n + 1) + A001222 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A335904.P2415048978081029218

/-! ## A335904.P11949750732740222943

`A336118(n+1)+A001222(A000265(n+1))`
-/

namespace A335904.P11949750732740222943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (n + 1) + A001222 (A000265 (n + 1)).toNat

end

end A335904.P11949750732740222943

/-! ## A335904.P17408114786530805437

`A001222(n+1)+A336118(n+1)-A007814(n+1)`
-/

namespace A335904.P17408114786530805437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A336118 (n + 1) - A007814 (n + 1))

end

end A335904.P17408114786530805437

/-! ## A335904.P3278560231765765904

`A329697(n+1)+A336118(n+1)-A336396(n+1)`
-/

namespace A335904.P3278560231765765904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A336118 (n + 1) - A336396 (n + 1))

end

end A335904.P3278560231765765904

/-! ## A335904.P2468839738527699388

`A331410(n+1)+A336118(n+1)-A336921(n+1)`
-/

namespace A335904.P2468839738527699388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + (A336118 (n + 1) - A336921 (n + 1))

end

end A335904.P2468839738527699388

/-!
# A335905: Number of distinct integers encountered on all possible paths from n to any first encountered powers of 2 (that are excluded from the count), when using the transitions x -> x - (x/p) and x -> x + (x/p) in any order, where p is the largest prime dividing x.

The programs for A335905, there is no canonical definition to state claims against.
-/

/-! ## A335905.P13429350368483911336

`A064547(A002473(((n+1)/2^val(n+1, 2))²))`
-/

namespace A335905.P13429350368483911336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A002473 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 2)).toNat).toNat

end

end A335905.P13429350368483911336

/-! ## A335905.P3856964634382715770

`A353086(A335906(n+1))%A353071(n+1)`
-/

namespace A335905.P3856964634382715770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353086 (A335906 (n + 1)).toNat) (A353071 (n + 1))

end

end A335905.P3856964634382715770

/-! ## A335905.P1107660202332380194

`A000194(A020639(A222955(n+1))*A030109(n+1))`
-/

namespace A335905.P1107660202332380194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A020639 (A222955 (n + 1)).toNat * A030109 (n + 1)).toNat

end

end A335905.P1107660202332380194

/-! ## A335905.P11802665673236766483

`A000194(n-A055945(n+1))%record[A033866(n)]`
-/

namespace A335905.P11802665673236766483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 ((n : ℤ) - A055945 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A335905.P11802665673236766483

/-! ## A335905.P16715372192650316352

`A020651(n+1)-A043285(A014000(3*(n+2)))`
-/

namespace A335905.P16715372192650316352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (n + 1) - A043285 (A014000 (3 * (n + 2))).toNat

end

end A335905.P16715372192650316352

/-!
# A335906: Number of distinct integers encountered on all possible paths from n to any first encountered powers of 2 (that are included in the count), when using the transitions x -> x - (x/p) and x -> x + (x/p) in any order, where p is the largest prime dividing x.

The programs for A335906, there is no canonical definition to state claims against.
-/

/-! ## A335906.P9270607734254728292

`A335905(3*(n+1))`
-/

namespace A335906.P9270607734254728292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335905 (3 * (n + 1))

end

end A335906.P9270607734254728292

/-! ## A335906.P10146739673336893674

`A335905(A004767(n)-n)%A000040(n+1)`
-/

namespace A335906.P10146739673336893674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335905 (A004767 n - (n : ℤ)).toNat) (A000040 (n + 1))

end

end A335906.P10146739673336893674

/-! ## A335906.P18414969822773892518

`A335905(A004767(n)-n)-A000035(2*n)`
-/

namespace A335906.P18414969822773892518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335905 (A004767 n - (n : ℤ)).toNat - A000035 (2 * n)

end

end A335906.P18414969822773892518

/-! ## A335906.P9092415164144081719

`A335905(A004767(n)-n)+A046660(A065091(n+1))`
-/

namespace A335906.P9092415164144081719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335905 (A004767 n - (n : ℤ)).toNat + A046660 (A065091 (n + 1)).toNat

end

end A335906.P9092415164144081719

/-! ## A335906.P6653652784233470339

`A007318(A000217(n))*A335905(A004767(n)-n)`
-/

namespace A335906.P6653652784233470339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A335905 (A004767 n - (n : ℤ)).toNat

end

end A335906.P6653652784233470339

/-! ## A335906.P9150034066661988129

`A335905(A004767(n)-n)^A014963(A320577(n+3))`
-/

namespace A335906.P9150034066661988129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335905 (A004767 n - (n : ℤ)).toNat : ℚ) ^ (A014963 (A320577 (n + 3)).toNat : ℤ)

end

end A335906.P9150034066661988129

/-! ## A335906.P1286551687516187609

`A335905(A004767(n)-n)/A002260(A000124(n+12))`
-/

namespace A335906.P1286551687516187609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335905 (A004767 n - (n : ℤ)).toNat : ℚ) / (A002260 (A000124 (n + 12)).toNat : ℚ)

end

end A335906.P1286551687516187609

/-!
# A335907: Average of those twin prime pairs p, q=p+2, for which A335885(p+1) <= A335885(p-1) and A335885(q-1) <= A335885(q+1).

The programs for A335907, there is no canonical definition to state claims against.
-/

/-! ## A335907.P17162667811871982242

`A014574(eq[A289436(n+4), A318839(n+1)])`
-/

namespace A335907.P17162667811871982242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335907.P17162667811871982242

/-!
# A335908: Average of those twin prime pairs p, q=p+2, for which A335884(p+1) >= A335884(p-1) and A335884(q-1) >= A335884(q+1).

The programs for A335908, there is no canonical definition to state claims against.
-/

/-! ## A335908.P4797259981317778276

`A046073(5*A071696(n+1))`
-/

namespace A335908.P4797259981317778276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (5 * A071696 (n + 1)).toNat

end

end A335908.P4797259981317778276

/-! ## A335908.P4386334121997938047

`A326065(5*A071695(n+1))`
-/

namespace A335908.P4386334121997938047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (5 * A071695 (n + 1)).toNat

end

end A335908.P4386334121997938047

/-! ## A335908.P8496412295431538587

`A046073(lcm(5, A071696(n+1)))`
-/

namespace A335908.P8496412295431538587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (Int.lcm 5 (A071696 (n + 1)))

end

end A335908.P8496412295431538587

/-! ## A335908.P5338978467490186458

`(A071695(n+1)+1)%A218158(n+1)`
-/

namespace A335908.P5338978467490186458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071695 (n + 1) + 1) (A218158 (n + 1))

end

end A335908.P5338978467490186458

/-! ## A335908.P3108391273122044862

`A071695(n+1)^(A269515(n+1)%2)+1`
-/

namespace A335908.P3108391273122044862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071695 (n + 1) : ℚ) ^ (Int.tmod (A269515 (n + 1)) 2 : ℤ) + 1

end

end A335908.P3108391273122044862

/-!
# A335909: Parity of A323173: a(n) = A000035(A323173(n)).

The programs for A335909, the canonical program `A335909.P9751826625906460431` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335909 has offset 1).

The definition of A335909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323173, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335909.P7699259573538774817

`A053866(A122111(n+1))`
-/

namespace A335909.P7699259573538774817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A122111 (n + 1)).toNat

end

end A335909.P7699259573538774817

namespace A335909

/-- `A053866(A122111(n+1))` -/
def P7699259573538774817.Spec : Prop :=
  ∀ n, P7699259573538774817.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P9751826625906460431

`A000035(A323173(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A335909

/-- `A000035(A323173(n+1))` -/
def P9751826625906460431.Spec : Prop :=
  ∀ n, P9751826625906460431.a n = A335909 (n + 1)

theorem P9751826625906460431.correct : P9751826625906460431.Spec := by
  intro n
  simp only [A335909, Nat.add_sub_cancel]

end A335909

/-! ## A335909.P9134414474203743550

`A322813(n+1)%2`
-/

namespace A335909.P9134414474203743550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322813 (n + 1)) 2

end

end A335909.P9134414474203743550

namespace A335909

/-- `A322813(n+1)%2` -/
def P9134414474203743550.Spec : Prop :=
  ∀ n, P9134414474203743550.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P1496578496588530067

`A322819(n+1)%2`
-/

namespace A335909.P1496578496588530067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322819 (n + 1)) 2

end

end A335909.P1496578496588530067

namespace A335909

/-- `A322819(n+1)%2` -/
def P1496578496588530067.Spec : Prop :=
  ∀ n, P1496578496588530067.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P1741440175179196909

`A336314(n+1)%2`
-/

namespace A335909.P1741440175179196909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336314 (n + 1)) 2

end

end A335909.P1741440175179196909

namespace A335909

/-- `A336314(n+1)%2` -/
def P1741440175179196909.Spec : Prop :=
  ∀ n, P1741440175179196909.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P11508672776776412929

`floor(1/A336312(n+1))`
-/

namespace A335909.P11508672776776412929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A336312 (n + 1) : ℚ)⌋

end

end A335909.P11508672776776412929

namespace A335909

/-- `floor(1/A336312(n+1))` -/
def P11508672776776412929.Spec : Prop :=
  ∀ n, P11508672776776412929.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P5044345723210839297

`char[lt[A336121(n+1), 1]]`
-/

namespace A335909.P5044345723210839297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A335909.P5044345723210839297

namespace A335909

/-- `char[lt[A336121(n+1), 1]]` -/
def P5044345723210839297.Spec : Prop :=
  ∀ n, (P5044345723210839297.a n : ℤ) = A335909 (n + 1)

end A335909

/-! ## A335909.P15534174102251655300

`A000035(A322813(n+1))`
-/

namespace A335909.P15534174102251655300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A322813 (n + 1)).toNat

end

end A335909.P15534174102251655300

namespace A335909

/-- `A000035(A322813(n+1))` -/
def P15534174102251655300.Spec : Prop :=
  ∀ n, P15534174102251655300.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P6665671802659348520

`A049084(2*A336312(n+1))`
-/

namespace A335909.P6665671802659348520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A336312 (n + 1)).toNat

end

end A335909.P6665671802659348520

namespace A335909

/-- `A049084(2*A336312(n+1))` -/
def P6665671802659348520.Spec : Prop :=
  ∀ n, P6665671802659348520.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P17610680090215370328

`C(A336123(n+1), A001222(n+1))`
-/

namespace A335909.P17610680090215370328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336123 (n + 1)).toNat (A001222 (n + 1)).toNat

end

end A335909.P17610680090215370328

namespace A335909

/-- `C(A336123(n+1), A001222(n+1))` -/
def P17610680090215370328.Spec : Prop :=
  ∀ n, (P17610680090215370328.a n : ℤ) = A335909 (n + 1)

end A335909

/-! ## A335909.P16780508009612547647

`A336121(a(n-1)+1)^A336121(n+1)` with `a(0)=1`
-/

namespace A335909.P16780508009612547647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A336121 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A336121 (n + 1) : ℤ)

end

end A335909.P16780508009612547647

namespace A335909

/-- `A336121(a(n-1)+1)^A336121(n+1)` -/
def P16780508009612547647.Spec : Prop :=
  ∀ n, P16780508009612547647.a n = (A335909 (n + 1) : ℚ)

end A335909

/-! ## A335909.P12474698746039217616

`A000035(A046523(A336312(n+1)))`
-/

namespace A335909.P12474698746039217616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046523 (A336312 (n + 1)).toNat).toNat

end

end A335909.P12474698746039217616

namespace A335909

/-- `A000035(A046523(A336312(n+1)))` -/
def P12474698746039217616.Spec : Prop :=
  ∀ n, P12474698746039217616.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P6682197106886976635

`A053866(A336119(A336312(n+1)²))`
-/

namespace A335909.P6682197106886976635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A336119 (A336312 (n + 1) ^ 2).toNat).toNat

end

end A335909.P6682197106886976635

namespace A335909

/-- `A053866(A336119(A336312(n+1)²))` -/
def P6682197106886976635.Spec : Prop :=
  ∀ n, P6682197106886976635.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P16004933035863630808

`A053866(A342667(A336312(n+1)²))`
-/

namespace A335909.P16004933035863630808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A342667 (A336312 (n + 1) ^ 2).toNat).toNat

end

end A335909.P16004933035863630808

namespace A335909

/-- `A053866(A342667(A336312(n+1)²))` -/
def P16004933035863630808.Spec : Prop :=
  ∀ n, P16004933035863630808.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P17020680171292862366

`A324640(A292586(A336312(n+1))²)`
-/

namespace A335909.P17020680171292862366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (A292586 (A336312 (n + 1)).toNat ^ 2).toNat

end

end A335909.P17020680171292862366

namespace A335909

/-- `A324640(A292586(A336312(n+1))²)` -/
def P17020680171292862366.Spec : Prop :=
  ∀ n, P17020680171292862366.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P692563952676613252

`A364574(A292586(A336312(n+1))²)`
-/

namespace A335909.P692563952676613252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364574 (A292586 (A336312 (n + 1)).toNat ^ 2).toNat

end

end A335909.P692563952676613252

namespace A335909

/-- `A364574(A292586(A336312(n+1))²)` -/
def P692563952676613252.Spec : Prop :=
  ∀ n, P692563952676613252.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P13854894873062469638

`and(1, A323174(n+1))`
-/

namespace A335909.P13854894873062469638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323174 (n + 1))

end

end A335909.P13854894873062469638

namespace A335909

/-- `and(1, A323174(n+1))` -/
def P13854894873062469638.Spec : Prop :=
  ∀ n, P13854894873062469638.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P593439885096951182

`(A323174(n+1)+n*A038330(n))%2`
-/

namespace A335909.P593439885096951182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323174 (n + 1) + (n : ℤ) * A038330 n) 2

end

end A335909.P593439885096951182

namespace A335909

/-- `(A323174(n+1)+n*A038330(n))%2` -/
def P593439885096951182.Spec : Prop :=
  ∀ n, P593439885096951182.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P12022087144664130749

`and(A010054(A323169(n+1)), A323173(n+1))`
-/

namespace A335909.P12022087144664130749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010054 (A323169 (n + 1)).toNat) (A323173 (n + 1))

end

end A335909.P12022087144664130749

namespace A335909

/-- `and(A010054(A323169(n+1)), A323173(n+1))` -/
def P12022087144664130749.Spec : Prop :=
  ∀ n, P12022087144664130749.a n = A335909 (n + 1)

end A335909

/-! ## A335909.P15403414776208118642

`and(A323152(A323156(n+1)), A323173(n+1))`
-/

namespace A335909.P15403414776208118642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323152 (A323156 (n + 1)).toNat) (A323173 (n + 1))

end

end A335909.P15403414776208118642

namespace A335909

/-- `and(A323152(A323156(n+1)), A323173(n+1))` -/
def P15403414776208118642.Spec : Prop :=
  ∀ n, P15403414776208118642.a n = A335909 (n + 1)

end A335909

/-!
# A335911: Numbers of the form q*(2^k), where k >= 0 and q is either a Fermat prime or a Mersenne prime; Numbers k for which A335885(k) = 1.

The programs for A335911, there is no canonical definition to state claims against.
-/

/-! ## A335911.P1327410241701679382

`eq[1, A335875(n+1)]+1`
-/

namespace A335911.P1327410241701679382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335911.P1327410241701679382

/-! ## A335911.P1046307209269603562

`eq[1, A335885(n+1)]+1`
-/

namespace A335911.P1046307209269603562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335911.P1046307209269603562

/-! ## A335911.P17365533620353452368

`eq[1, A335885(A004277(n))]`
-/

namespace A335911.P17365533620353452368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P17365533620353452368

/-! ## A335911.P14440092303438452438

`eq[1, A335885(A008574(n))]`
-/

namespace A335911.P14440092303438452438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P14440092303438452438

/-! ## A335911.P4006045683212967634

`eq[1, A335885(A022144(n))]`
-/

namespace A335911.P4006045683212967634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P4006045683212967634

/-! ## A335911.P13645906858776691875

`eq[1, A335885(A028310(n))]`
-/

namespace A335911.P13645906858776691875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P13645906858776691875

/-! ## A335911.P1471414833543151927

`eq[2, A335885(A008458(n))]`
-/

namespace A335911.P1471414833543151927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P1471414833543151927

/-! ## A335911.P2672582351420059530

`eq[2, A335885(A008486(n))]`
-/

namespace A335911.P2672582351420059530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P2672582351420059530

/-! ## A335911.P5548556242591425358

`eq[2, A335885(A008706(n))]`
-/

namespace A335911.P5548556242591425358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335911.P5548556242591425358

/-! ## A335911.P6929640348681330881

`filter[A129523(n+1), A353670(#)]`
-/

namespace A335911.P6929640348681330881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A335911.P6929640348681330881

/-!
# A335912: Numbers k for which A335885(k) = 2.

The programs for A335912, there is no canonical definition to state claims against.
-/

/-! ## A335912.P11194161043554341313

`eq[2, A335885(n+1)]+1`
-/

namespace A335912.P11194161043554341313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335912.P11194161043554341313

/-! ## A335912.P10298933484319224563

`eq[2, A335885(A004277(n))]`
-/

namespace A335912.P10298933484319224563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P10298933484319224563

/-! ## A335912.P7169810993996492722

`eq[2, A335885(A008574(n))]`
-/

namespace A335912.P7169810993996492722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P7169810993996492722

/-! ## A335912.P10617185198018683961

`eq[2, A335885(A022144(n))]`
-/

namespace A335912.P10617185198018683961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P10617185198018683961

/-! ## A335912.P16952532790515396620

`eq[2, A335885(A028310(n))]`
-/

namespace A335912.P16952532790515396620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P16952532790515396620

/-! ## A335912.P1101949321156450508

`eq[3, A335885(A008458(n))]`
-/

namespace A335912.P1101949321156450508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P1101949321156450508

/-! ## A335912.P15115527284447479217

`eq[3, A335885(A008486(n))]`
-/

namespace A335912.P15115527284447479217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P15115527284447479217

/-! ## A335912.P6807928101298909526

`eq[3, A335885(A008706(n))]`
-/

namespace A335912.P6807928101298909526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P6807928101298909526

/-! ## A335912.P1912933449277087723

`eq[2, A335885(A000007(n)+n)]`
-/

namespace A335912.P1912933449277087723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P1912933449277087723

/-! ## A335912.P5114376137787735436

`eq[2, A335885(A000038(n)+n)]`
-/

namespace A335912.P5114376137787735436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335912.P5114376137787735436

/-!
# A335913: a(n) = A225546(sigma(n)).

The programs for A335913, there is no canonical definition to state claims against.
-/

/-! ## A335913.P11433320503025962098

`A225546(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335913.P11433320503025962098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A000203 (n + 1)).toNat

end

end A335913.P11433320503025962098

/-! ## A335913.P8295818449843324256

`A225546(∑{d}[n+1, #])`
-/

namespace A335913.P8295818449843324256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A335913.P8295818449843324256

/-! ## A335913.P5026746067826106601

`A225546(A324545(n+1))`
-/

namespace A335913.P5026746067826106601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A324545 (n + 1)).toNat

end

end A335913.P5026746067826106601

/-! ## A335913.P9802982816693703473

`A225546(A365209(n+1))`
-/

namespace A335913.P9802982816693703473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A365209 (n + 1)).toNat

end

end A335913.P9802982816693703473

/-! ## A335913.P16786696560023169110

`A334866(A332221(n+1))`
-/

namespace A335913.P16786696560023169110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A332221 (n + 1)).toNat

end

end A335913.P16786696560023169110

/-!
# A335914: a(n) = A038040(A225546(n)).

The programs for A335914, there is no canonical definition to state claims against.
-/

/-! ## A335914.P17287056376201372819

`A225546(n+1)*A331309(n+1)`
-/

namespace A335914.P17287056376201372819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1) * A331309 (n + 1)

end

end A335914.P17287056376201372819

/-! ## A335914.P14789499377030965832

`A038040(A225546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335914.P14789499377030965832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A225546 (n + 1)).toNat

end

end A335914.P14789499377030965832

/-! ## A335914.P6095405863160039311

`A122111(A336321(n+1))*A331309(n+1)`
-/

namespace A335914.P6095405863160039311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A336321 (n + 1)).toNat * A331309 (n + 1)

end

end A335914.P6095405863160039311

/-! ## A335914.P11685144782626108095

`A225546(n+1)*A336315(A336321(n+1))`
-/

namespace A335914.P11685144782626108095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1) * A336315 (A336321 (n + 1)).toNat

end

end A335914.P11685144782626108095

/-! ## A335914.P2562267266552188735

`A331309(n+1)*A336322(A122111(n+1))`
-/

namespace A335914.P2562267266552188735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (n + 1) * A336322 (A122111 (n + 1)).toNat

end

end A335914.P2562267266552188735

/-!
# A335915: Fully multiplicative with a(2) = 1, and a(p) = A000265(p-1)*A000265(p+1) = A000265(p^2 - 1), for odd primes p.

The programs for A335915, the canonical program `A335915.P17327428473756616044` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335915 has offset 1).

The definition of A335915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335915.P17327428473756616044

`A336466(n+1)*A336467(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A335915

/-- `A336466(n+1)*A336467(n+1)` -/
def P17327428473756616044.Spec : Prop :=
  ∀ n, P17327428473756616044.a n = A335915 (n + 1)

theorem P17327428473756616044.correct : P17327428473756616044.Spec := by
  intro n
  simp only [A335915, Nat.add_sub_cancel]

end A335915

/-! ## A335915.P7757625090248907983

`A000265(A003958(n+1))*A336467(n+1)`
-/

namespace A335915.P7757625090248907983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1)).toNat * A336467 (n + 1)

end

end A335915.P7757625090248907983

namespace A335915

/-- `A000265(A003958(n+1))*A336467(n+1)` -/
def P7757625090248907983.Spec : Prop :=
  ∀ n, P7757625090248907983.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P6621840126789814227

`A000265(A003958(n+1))*A000265(A003960(n+1))`
-/

namespace A335915.P6621840126789814227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1)).toNat * A000265 (A003960 (n + 1)).toNat

end

end A335915.P6621840126789814227

namespace A335915

/-- `A000265(A003958(n+1))*A000265(A003960(n+1))` -/
def P6621840126789814227.Spec : Prop :=
  ∀ n, P6621840126789814227.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P10864364219041752602

`A000265(A340081(n+1)*A340085(n+1))*A336467(n+1)`
-/

namespace A335915.P10864364219041752602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340081 (n + 1) * A340085 (n + 1)).toNat * A336467 (n + 1)

end

end A335915.P10864364219041752602

namespace A335915

/-- `A000265(A340081(n+1)*A340085(n+1))*A336467(n+1)` -/
def P10864364219041752602.Spec : Prop :=
  ∀ n, P10864364219041752602.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P6500706670708259407

`A000265(A003958(n+1)*A003960(n+1))`
-/

namespace A335915.P6500706670708259407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1) * A003960 (n + 1)).toNat

end

end A335915.P6500706670708259407

namespace A335915

/-- `A000265(A003958(n+1)*A003960(n+1))` -/
def P6500706670708259407.Spec : Prop :=
  ∀ n, P6500706670708259407.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P14186655102781780675

`A000265(A167344(A000265(n+1)))`
-/

namespace A335915.P14186655102781780675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A167344 (A000265 (n + 1)).toNat).toNat

end

end A335915.P14186655102781780675

namespace A335915

/-- `A000265(A167344(A000265(n+1)))` -/
def P14186655102781780675.Spec : Prop :=
  ∀ n, P14186655102781780675.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P9175855846936400185

`A000265(A003958(n+1)*A003959(A000265(n+1)))`
-/

namespace A335915.P9175855846936400185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (n + 1) * A003959 (A000265 (n + 1)).toNat).toNat

end

end A335915.P9175855846936400185

namespace A335915

/-- `A000265(A003958(n+1)*A003959(A000265(n+1)))` -/
def P9175855846936400185.Spec : Prop :=
  ∀ n, P9175855846936400185.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P15869977937223008179

`A336455(A213931(n+1))`
-/

namespace A335915.P15869977937223008179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A213931 (n + 1)).toNat

end

end A335915.P15869977937223008179

namespace A335915

/-- `A336455(A213931(n+1))` -/
def P15869977937223008179.Spec : Prop :=
  ∀ n, P15869977937223008179.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P14484447167954297124

`A336455(A213401(n+1))`
-/

namespace A335915.P14484447167954297124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A213401 (n + 1)).toNat

end

end A335915.P14484447167954297124

namespace A335915

/-- `A336455(A213401(n+1))` -/
def P14484447167954297124.Spec : Prop :=
  ∀ n, P14484447167954297124.a n = A335915 (n + 1)

end A335915

/-! ## A335915.P4561417997725543038

`A336455(A038699(n+1))`
-/

namespace A335915.P4561417997725543038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336455 (A038699 (n + 1)).toNat

end

end A335915.P4561417997725543038

namespace A335915

/-- `A336455(A038699(n+1))` -/
def P4561417997725543038.Spec : Prop :=
  ∀ n, P4561417997725543038.a n = A335915 (n + 1)

end A335915

/-!
# A335916: Isolated primes in the hexagonal spiral of the nonnegative integers.

The programs for A335916, there is no canonical definition to state claims against.
-/

/-! ## A335916.P16893458794238418061

`p?[A018252(A175150(3*(n+1))+A175127(3*n+4))+2]`
-/

namespace A335916.P16893458794238418061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A175150 (3 * (n + 1)) + A175127 (3 * n + 4)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335916.P16893458794238418061

/-!
# A335917: a(n) is the number of similarity classes of abelian groups with exactly n subgroups (see reference for precise definition of similarity classes).

The programs for A335917, there is no canonical definition to state claims against.
-/

/-! ## A335917.P4079330069495857867

`A054405(A211901(n+1)%A097285(n+1))`
-/

namespace A335917.P4079330069495857867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (Int.tmod (A211901 (n + 1)) (A097285 (n + 1))).toNat

end

end A335917.P4079330069495857867

/-! ## A335917.P15662734473823936062

`gcd(A217741(n+1), A256660(A331192(n+1)))`
-/

namespace A335917.P15662734473823936062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217741 (n + 1)) (A256660 (A331192 (n + 1)).toNat)

end

end A335917.P15662734473823936062

/-! ## A335917.P4343015626086107952

`A295935(A239508(3*n+2)+A007814(n+1)+1)`
-/

namespace A335917.P4343015626086107952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295935 (A239508 (3 * n + 2) + (A007814 (n + 1) + 1)).toNat

end

end A335917.P4343015626086107952

/-!
# A335919: Number T(n,k) of binary search trees of height k having n internal nodes; triangle T(n,k), n>=0, max(0,floor(log_2(n))+1)<=k<=n, read by rows.

The programs for A335919, there is no canonical definition to state claims against.
-/

/-! ## A335919.P15147126775232037889

`A073429(lt[0, A073429(n)])`
-/

namespace A335919.P15147126775232037889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A335919.P15147126775232037889

/-! ## A335919.P8051335244495656551

`A073429(comp[eq[0, A073429(n)]])`
-/

namespace A335919.P8051335244495656551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A335919.P8051335244495656551

/-! ## A335919.P109649499809869475

`A073429(record[n%(A073429(n)+n)])`
-/

namespace A335919.P109649499809869475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A073429 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335919.P109649499809869475

/-! ## A335919.P10328653098605732038

`A073429(eq[0, A000007(A073429(n))])`
-/

namespace A335919.P10328653098605732038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A073429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335919.P10328653098605732038

/-!
# A335921: Total height of all binary search trees with n internal nodes.

The programs for A335921, there is no canonical definition to state claims against.
-/

/-! ## A335921.P13270288897977035461

`A070098(ceil(sqrt(A002996(2*n+3))))`
-/

namespace A335921.P13270288897977035461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 ⌈Real.sqrt (A002996 (2 * n + 3) : ℝ)⌉.toNat

end

end A335921.P13270288897977035461

/-! ## A335921.P17990499835520340468

`A070098(round(sqrt(A002996(2*n+3))))`
-/

namespace A335921.P17990499835520340468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (SequenceMachineLib.roundAway (Real.sqrt (A002996 (2 * n + 3) : ℝ))).toNat

end

end A335921.P17990499835520340468

/-! ## A335921.P18104664790657438991

`A008615(Δ[A204089(n)+A000984(n)])`
-/

namespace A335921.P18104664790657438991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n + A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A335921.P18104664790657438991

/-!
# A335922: Total number of internal nodes in all binary search trees of height n.

The programs for A335922, there is no canonical definition to state claims against.
-/

/-! ## A335922.P10112839714319165480

`record[Δ[A024358(A002264(n))]]`
-/

namespace A335922.P10112839714319165480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024358 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335922.P10112839714319165480

/-! ## A335922.P354724469817411489

`record[Δ[A024358(A002266(n))]]`
-/

namespace A335922.P354724469817411489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024358 (A002266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335922.P354724469817411489

/-! ## A335922.P3493730002933690103

`record[Δ[A024358(A004526(n))]]`
-/

namespace A335922.P3493730002933690103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024358 (A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335922.P3493730002933690103

/-! ## A335922.P7551284534284292634

`record[Δ[A024358(A056847(n))]]`
-/

namespace A335922.P7551284534284292634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024358 (A056847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335922.P7551284534284292634

/-! ## A335922.P13089745614510077951

`record[Δ[A024358(A065855(n+1))]]`
-/

namespace A335922.P13089745614510077951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024358 (A065855 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335922.P13089745614510077951

/-!
# A335925: a(n) = a(floor((n-1)/a(n-1))) + 1 with a(1) = 1.

The programs for A335925, the canonical program `A335925.P15564926975428474222` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335925 has offset 1).

The definition of A335925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/a(n-1))-1)+1` (program `A335925.P15564926975428474222`, by `A335925.P15564926975428474222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335925.P15564926975428474222

`a(floor(n/a(n-1))-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A335925

/-- `a(floor(n/a(n-1))-1)+1` -/
def P15564926975428474222.Spec : Prop :=
  ∀ n, (P15564926975428474222.a n : ℤ) = A335925 (n + 1)

theorem P15564926975428474222.correct : P15564926975428474222.Spec := by
  intro n
  simp only [A335925, Nat.add_sub_cancel]

end A335925

/-! ## A335925.P15109225671828917539

`a(ceil((n+1)/a(n-1))-2)+1` with `a(0)=1`
-/

namespace A335925.P15109225671828917539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n + 1 : ℚ) / (a (n - 1) : ℚ)⌉ - 2).toNat + 1

end

end A335925.P15109225671828917539

namespace A335925

/-- `a(ceil((n+1)/a(n-1))-2)+1` -/
def P15109225671828917539.Spec : Prop :=
  ∀ n, (P15109225671828917539.a n : ℤ) = A335925 (n + 1)

end A335925

/-! ## A335925.P9083882990139011976

`1-ceil(-a(floor(n/a(n-1))-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A335925.P9083882990139011976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat)

end

end A335925.P9083882990139011976

namespace A335925

/-- `1-ceil(-a(floor(n/a(n-1))-1))` -/
def P9083882990139011976.Spec : Prop :=
  ∀ n, P9083882990139011976.a n = A335925 (n + 1)

end A335925

/-! ## A335925.P6018222257699806587

`a(A023443(floor(n/a(n-1))))+1` with `a(0)=1`
-/

namespace A335925.P6018222257699806587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat + 1

end

end A335925.P6018222257699806587

namespace A335925

/-- `a(A023443(floor(n/a(n-1))))+1` -/
def P6018222257699806587.Spec : Prop :=
  ∀ n, (P6018222257699806587.a n : ℤ) = A335925 (n + 1)

end A335925

/-! ## A335925.P7976567732485599415

`A122638(a(floor(n/a(n-1))-1))` with `a(0)=1`
-/

namespace A335925.P7976567732485599415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122638 (a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat).toNat

end

end A335925.P7976567732485599415

namespace A335925

/-- `A122638(a(floor(n/a(n-1))-1))` -/
def P7976567732485599415.Spec : Prop :=
  ∀ n, P7976567732485599415.a n = A335925 (n + 1)

end A335925

/-! ## A335925.P3236609747408096475

`A275010(a(floor(n/a(n-1))-1))` with `a(0)=1`
-/

namespace A335925.P3236609747408096475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275010 (a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat).toNat

end

end A335925.P3236609747408096475

namespace A335925

/-- `A275010(a(floor(n/a(n-1))-1))` -/
def P3236609747408096475.Spec : Prop :=
  ∀ n, P3236609747408096475.a n = A335925 (n + 1)

end A335925

/-!
# A335926: Number of distinct odd diagrams of permutations of n.

The programs for A335926, there is no canonical definition to state claims against.
-/

/-! ## A335926.P11264252259594481676

`or(A259572(A352660(n)), A263641(n+1))`
-/

namespace A335926.P11264252259594481676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259572 (A352660 n).toNat) (A263641 (n + 1))

end

end A335926.P11264252259594481676

/-! ## A335926.P4881542548640711089

`or(A259572(A352660(n)), A263642(n+1))`
-/

namespace A335926.P4881542548640711089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259572 (A352660 n).toNat) (A263642 (n + 1))

end

end A335926.P4881542548640711089

/-! ## A335926.P8013714957964365959

`or(A259572(A352660(n)), A263682(n+1))`
-/

namespace A335926.P8013714957964365959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259572 (A352660 n).toNat) (A263682 (n + 1))

end

end A335926.P8013714957964365959

/-!
# A335927: a(n+1) = Sum_{k=1..n} (a(k) + k*(n-k)), with a(1)=1.

The programs for A335927, the canonical program `A335927.P8211081361943586252` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335927 has offset 1).

The definition of A335927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335927.P8211081361943586252

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=20, a(4)=50`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A335927

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P8211081361943586252.Spec : Prop :=
  ∀ n, P8211081361943586252.a n = A335927 (n + 1)

theorem P8211081361943586252.correct : P8211081361943586252.Spec := by
  intro n
  simp only [A335927, Nat.add_sub_cancel]

end A335927

/-! ## A335927.P9885274189432112161

`∑[n]+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A335927.P9885274189432112161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A335927.P9885274189432112161

namespace A335927

/-- `∑[n]+2*a(n-1)` -/
def P9885274189432112161.Spec : Prop :=
  ∀ n, (P9885274189432112161.a n : ℤ) = A335927 (n + 1)

end A335927

/-! ## A335927.P4014005920821011415

`C(n, 2)+2*a(n-1)+n` with `a(0)=1, a(1)=2`
-/

namespace A335927.P4014005920821011415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose n 2 + 2 * a (n - 1) + n

end

end A335927.P4014005920821011415

namespace A335927

/-- `C(n, 2)+2*a(n-1)+n` -/
def P4014005920821011415.Spec : Prop :=
  ∀ n, (P4014005920821011415.a n : ℤ) = A335927 (n + 1)

end A335927

/-! ## A335927.P2959307332002121893

`a(n-1)+∑[n]+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A335927.P2959307332002121893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A335927.P2959307332002121893

namespace A335927

/-- `a(n-1)+∑[n]+a(n-1)` -/
def P2959307332002121893.Spec : Prop :=
  ∀ n, (P2959307332002121893.a n : ℤ) = A335927 (n + 1)

end A335927

/-! ## A335927.P14124511586726066382

`∑[∑[2^n-1]]+ceil(2^(n-1))`
-/

namespace A335927.P14124511586726066382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A335927.P14124511586726066382

namespace A335927

/-- `∑[∑[2^n-1]]+ceil(2^(n-1))` -/
def P14124511586726066382.Spec : Prop :=
  ∀ n, P14124511586726066382.a n = A335927 (n + 1)

end A335927

/-! ## A335927.P18348508661220771200

`∑[A179865(n+1)/A011782(n)]*A011782(n)`
-/

namespace A335927.P18348508661220771200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179865 (n + 1) : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011782 n : ℚ)

end

end A335927.P18348508661220771200

namespace A335927

/-- `∑[A179865(n+1)/A011782(n)]*A011782(n)` -/
def P18348508661220771200.Spec : Prop :=
  ∀ n, P18348508661220771200.a n = (A335927 (n + 1) : ℚ)

end A335927

/-!
# A335929: Decimal expansion of the area of the region bounded by y = 1 and y = Gamma(x).

The programs for A335929, there is no canonical definition to state claims against.
-/

/-! ## A335929.P240673928273672454

`9-A110543(n)`
-/

namespace A335929.P240673928273672454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A110543 n

end

end A335929.P240673928273672454

/-!
# A335933: A fractal function, related to ruler functions. a(1) = 0; otherwise for m >= 0, a(3m) = 1, a(3m-1) = a(2m-1) + sign(a(2m-1)), a(3m+1) = a(2m+1) + sign(a(2m+1)).

The programs for A335933, there is no canonical definition to state claims against.
-/

/-! ## A335933.P5931420566763793874

`A289508((A000038(n)+A004396(n)²)²)`
-/

namespace A335933.P5931420566763793874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 ((A000038 n + A004396 n ^ 2) ^ 2).toNat

end

end A335933.P5931420566763793874

/-! ## A335933.P13247000391766250456

`A289508((A000038(n)-A004396(n))²²)`
-/

namespace A335933.P13247000391766250456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (((A000038 n - A004396 n) ^ 2) ^ 2).toNat

end

end A335933.P13247000391766250456

/-! ## A335933.P6912377389549573697

`A289508(A004396(n)+2*A091536(n))`
-/

namespace A335933.P6912377389549573697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A004396 n + 2 * A091536 n).toNat

end

end A335933.P6912377389549573697

/-! ## A335933.P2869435562421103683

`A289508(A005843(A091536(n))+A004396(n))`
-/

namespace A335933.P2869435562421103683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A005843 (A091536 n).toNat + A004396 n).toNat

end

end A335933.P2869435562421103683

/-! ## A335933.P6468360504581969533

`A289508(A194715(A091536(n))+A004396(n))`
-/

namespace A335933.P6468360504581969533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A194715 (A091536 n).toNat + A004396 n).toNat

end

end A335933.P6468360504581969533

/-!
# A335934: Smallest palindrome in base 10 whose factorization contains n distinct base 10 palindromic prime factors.

The programs for A335934, there is no canonical definition to state claims against.
-/

/-! ## A335934.P5869771859148337787

`A087997(A233424(n))`
-/

namespace A335934.P5869771859148337787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087997 (A233424 n).toNat

end

end A335934.P5869771859148337787

/-!
# A335935: Infinitary pseudoperfect numbers (A306983) whose number of divisors is not a power of 2.

The programs for A335935, there is no canonical definition to state claims against.
-/

/-! ## A335935.P1879442453383098272

`∩[A162643(n+1), A306983(n+1)]`
-/

namespace A335935.P1879442453383098272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335935.P1879442453383098272

/-!
# A335938: Bi-unitary pseudoperfect numbers (A292985) that are not exponentially odd numbers (A268335).

The programs for A335938, there is no canonical definition to state claims against.
-/

/-! ## A335938.P2766329142054239376

`∩[A072587(n+1), A292985(n+1)]`
-/

namespace A335938.P2766329142054239376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335938.P2766329142054239376

/-! ## A335938.P15115232905237471723

`∪[A237009(n+1), A335216(n+1)]`
-/

namespace A335938.P15115232905237471723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335938.P15115232905237471723

/-! ## A335938.P15298673704911519603

`∪[A323342(n+1), A335216(n+1)]`
-/

namespace A335938.P15298673704911519603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335938.P15298673704911519603

/-!
# A335939: Bi-unitary weird numbers (A292986) that are not exponentially odd numbers (A268335).

The programs for A335939, there is no canonical definition to state claims against.
-/

/-! ## A335939.P10960872243029459581

`filter[A292986(n+1), A353626(#)]`
-/

namespace A335939.P10960872243029459581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A335939.P10960872243029459581

/-!
# A335940: a(n) = n if n is prime, a(n) = 0 if n is a nontrivial power of a prime, and otherwise a(n) = max{|p-q| where p, q are distinct primes dividing n}.

The programs for A335940, there is no canonical definition to state claims against.
-/

/-! ## A335940.P1572462524194466271

`A111089(n+1)-A063918(n+1)`
-/

namespace A335940.P1572462524194466271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) - A063918 (n + 1)

end

end A335940.P1572462524194466271

/-! ## A335940.P11199588715332326153

`abs(A074828(n+1)-A111089(n+1))`
-/

namespace A335940.P11199588715332326153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074828 (n + 1) - A111089 (n + 1)|

end

end A335940.P11199588715332326153

/-! ## A335940.P6832512703548440199

`A006530(2*(n+1))-A063918(n+1)`
-/

namespace A335940.P6832512703548440199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - A063918 (n + 1)

end

end A335940.P6832512703548440199

/-! ## A335940.P16382111445140612764

`A046665(n+1)+C(A006530(n+1), n)`
-/

namespace A335940.P16382111445140612764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A006530 (n + 1)).toNat n : ℤ)

end

end A335940.P16382111445140612764

/-! ## A335940.P1460140699409945035

`A046665(n+1)+C(A014963(n+1), n)`
-/

namespace A335940.P1460140699409945035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A014963 (n + 1)).toNat n : ℤ)

end

end A335940.P1460140699409945035

/-! ## A335940.P4665486820883341721

`A046665(n+1)+C(A020639(n+1), n)`
-/

namespace A335940.P4665486820883341721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A020639 (n + 1)).toNat n : ℤ)

end

end A335940.P4665486820883341721

/-! ## A335940.P14829938768146161115

`A046665(n+1)+C(A051664(n+1), n)`
-/

namespace A335940.P14829938768146161115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A051664 (n + 1)).toNat n : ℤ)

end

end A335940.P14829938768146161115

/-! ## A335940.P5182730241047193922

`A046665(n+1)+C(A089026(n+1), n)`
-/

namespace A335940.P5182730241047193922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A089026 (n + 1)).toNat n : ℤ)

end

end A335940.P5182730241047193922

/-! ## A335940.P4181889993232330840

`A046665(n+1)+C(A318884(n+1), n)`
-/

namespace A335940.P4181889993232330840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + (Nat.choose (A318884 (n + 1)).toNat n : ℤ)

end

end A335940.P4181889993232330840

/-!
# A335942: Number of compositions of n such that the set s of parts and multiplicities satisfies s = {1..max(s)}.

The programs for A335942, there is no canonical definition to state claims against.
-/

/-! ## A335942.P46550782465886770

`A093717(A300354(n+1))`
-/

namespace A335942.P46550782465886770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093717 (A300354 (n + 1)).toNat

end

end A335942.P46550782465886770

/-!
# A335943: Lexicographically earliest sequence of positive terms such that for any distinct m and n, the fractional parts of a(m)/a(m+1) and of a(n)/a(n+1) are distinct.

The programs for A335943, there is no canonical definition to state claims against.
-/

/-! ## A335943.P16255179090376174002

`A000120(A193044(n+2)-A206914(n))`
-/

namespace A335943.P16255179090376174002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A193044 (n + 2) - A206914 n).toNat

end

end A335943.P16255179090376174002

/-! ## A335943.P11665266909658609001

`A182210(3*n+1)-A319510(A133367(2*n+1))`
-/

namespace A335943.P11665266909658609001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (3 * n + 1) - A319510 (A133367 (2 * n + 1)).toNat

end

end A335943.P11665266909658609001

/-!
# A335945: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/(1 + x)).

The programs for A335945, there is no canonical definition to state claims against.
-/

/-! ## A335945.P5651670009482441184

`A108919(n+1)+A060356(n)`
-/

namespace A335945.P5651670009482441184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108919 (n + 1) + A060356 n

end

end A335945.P5651670009482441184

/-! ## A335945.P5825928711207096136

`A108919(n+1)+n*A108919(A028310(n))`
-/

namespace A335945.P5825928711207096136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108919 (n + 1) + (n : ℤ) * A108919 (A028310 n).toNat

end

end A335945.P5825928711207096136

/-! ## A335945.P17152067965754444571

`A108919(n+1)+n*A108919(A000007(n)+n)`
-/

namespace A335945.P17152067965754444571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108919 (n + 1) + (n : ℤ) * A108919 (A000007 n + (n : ℤ)).toNat

end

end A335945.P17152067965754444571

/-! ## A335945.P18288414387329714013

`A254382(n+1)/(n+1)`
-/

namespace A335945.P18288414387329714013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254382 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A335945.P18288414387329714013

/-! ## A335945.P3569600465143553159

`A060356(n)+A060356(n+1)/(n+1)`
-/

namespace A335945.P3569600465143553159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060356 n : ℚ) + (A060356 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A335945.P3569600465143553159

/-!
# A335946: a(n) = 1 + Sum_{k=0..n-1} binomial(n,k)^2 * a(k).

The programs for A335946, there is no canonical definition to state claims against.
-/

/-! ## A335946.P7260695769395358071

`A102221(n)*A266256(2*n)`
-/

namespace A335946.P7260695769395358071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102221 n * A266256 (2 * n)

end

end A335946.P7260695769395358071

/-! ## A335946.P4136951172728509152

`A020639(A000132(n))*A102221(n)`
-/

namespace A335946.P4136951172728509152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A102221 n

end

end A335946.P4136951172728509152

/-! ## A335946.P15301911255710358038

`A020639(A004277(n))*A102221(n)`
-/

namespace A335946.P15301911255710358038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A102221 n

end

end A335946.P15301911255710358038

/-! ## A335946.P539017269520709569

`A000120(A000051(n))*A102221(n)`
-/

namespace A335946.P539017269520709569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000051 n).toNat * A102221 n

end

end A335946.P539017269520709569

/-!
# A335947: T(n, k) = numerator([x^k] b_n(x)), where b_n(x) = Sum_{k=0..n} binomial(n,k)* Bernoulli(k, 1/2)*x^(n-k). Triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A335947, there is no canonical definition to state claims against.
-/

/-! ## A335947.P12727512043052223303

`A335953(n)/A082907(n)`
-/

namespace A335947.P12727512043052223303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335953 n : ℚ) / (A082907 n : ℚ)

end

end A335947.P12727512043052223303

/-! ## A335947.P1323277881333144751

`A335953(n)/A003484(A211226(n))`
-/

namespace A335947.P1323277881333144751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335953 n : ℚ) / (A003484 (A211226 n).toNat : ℚ)

end

end A335947.P1323277881333144751

/-! ## A335947.P792332336942164407

`A336517(n)/gcd(A000079(n), A336517(n))`
-/

namespace A335947.P792332336942164407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (Int.gcd (A000079 n) (A336517 n) : ℚ)

end

end A335947.P792332336942164407

/-! ## A335947.P7600592353317233301

`A335953(n)/gcd(A001316(n), A335953(n))`
-/

namespace A335947.P7600592353317233301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335953 n : ℚ) / (Int.gcd (A001316 n) (A335953 n) : ℚ)

end

end A335947.P7600592353317233301

/-! ## A335947.P11625695567864350311

`A335953(n)/gcd(A130321(n), A211226(n))`
-/

namespace A335947.P11625695567864350311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335953 n : ℚ) / (Int.gcd (A130321 n) (A211226 n) : ℚ)

end

end A335947.P11625695567864350311

/-!
# A335948: T(n, k) = denominator([x^k] b_n(x)), where b_n(x) = Sum_{k=0..n} binomial(n,k)* Bernoulli(k, 1/2)*x^(n-k). Triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A335948, there is no canonical definition to state claims against.
-/

/-! ## A335948.P7787897096947136870

`A132046(A112591(n+1)^A082907(n))`
-/

namespace A335948.P7787897096947136870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 (SequenceMachineLib.roundAway ((A112591 (n + 1) : ℚ) ^ (A082907 n : ℤ))).toNat

end

end A335948.P7787897096947136870

/-! ## A335948.P3280520745005031850

`A132046(A112591(n+1)%A331837(n+1))`
-/

namespace A335948.P3280520745005031850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 (Int.tmod (A112591 (n + 1)) (A331837 (n + 1))).toNat

end

end A335948.P3280520745005031850

/-!
# A335949: a(n) = denominator(b_n(x)), where b_n(x) are the polynomials defined in A335947.

The programs for A335949, there is no canonical definition to state claims against.
-/

/-! ## A335949.P17766460951104218331

`A157782(n)*A213621(n)`
-/

namespace A335949.P17766460951104218331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 n * A213621 n

end

end A335949.P17766460951104218331

/-! ## A335949.P921438116474390134

`A213173(n)*A336454(n)`
-/

namespace A335949.P921438116474390134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n * A336454 n

end

end A335949.P921438116474390134

/-! ## A335949.P7577144057198204029

`lcm(A157782(n), A286515(n))`
-/

namespace A335949.P7577144057198204029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157782 n) (A286515 n)

end

end A335949.P7577144057198204029

/-! ## A335949.P4316392314132092169

`lcm(A164111(n), A336454(n))`
-/

namespace A335949.P4316392314132092169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164111 n) (A336454 n)

end

end A335949.P4316392314132092169

/-! ## A335949.P14747998478499748128

`A016116(n)²*A336454(n)`
-/

namespace A335949.P14747998478499748128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A336454 n

end

end A335949.P14747998478499748128

/-!
# A335950: Sparse rulers with length a(n) cannot be perfect rulers.

The programs for A335950, there is no canonical definition to state claims against.
-/

/-! ## A335950.P18087481813573564485

`eq[A103298(n), A202304(n+10)]`
-/

namespace A335950.P18087481813573564485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335950.P18087481813573564485

/-! ## A335950.P16827152766523893597

`A308766(A000037(n+5)*A123245(n))`
-/

namespace A335950.P16827152766523893597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308766 (A000037 (n + 5) * A123245 n).toNat

end

end A335950.P16827152766523893597

/-!
# A335952: Denominators of the Faulhaber polynomials.

The programs for A335952, there is no canonical definition to state claims against.
-/

/-! ## A335952.P12307836794364646857

`gcd(A015013(n+1), A064538(A004273(n)))`
-/

namespace A335952.P12307836794364646857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015013 (n + 1)) (A064538 (A004273 n).toNat)

end

end A335952.P12307836794364646857

/-! ## A335952.P2136893283380011875

`A000265(A064538(comp[2*(n+1)]))`
-/

namespace A335952.P2136893283380011875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064538 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A335952.P2136893283380011875

/-! ## A335952.P11815094194540792868

`A028234(A064538(record[A006257(n)]))`
-/

namespace A335952.P11815094194540792868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A064538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A335952.P11815094194540792868

/-! ## A335952.P17136299159608739051

`A366787(A150670(n))`
-/

namespace A335952.P17136299159608739051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366787 (A150670 n).toNat

end

end A335952.P17136299159608739051

/-!
# A335953: T(n, k) = numerator([x^k] b_n(x)), where b_n(x) = Sum_{k=0..n} binomial(n,k)*2^k* Bernoulli(k, 1/2)*x^(n-k). Triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A335953, there is no canonical definition to state claims against.
-/

/-! ## A335953.P15683136498730233741

`A082907(n)*A335947(n)`
-/

namespace A335953.P15683136498730233741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082907 n * A335947 n

end

end A335953.P15683136498730233741

/-! ## A335953.P1217666174081737717

`A336517(n)/A059268(n)`
-/

namespace A335953.P1217666174081737717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (A059268 n : ℚ)

end

end A335953.P1217666174081737717

/-! ## A335953.P1344323824635603958

`gcd(4, A022167(n))*A335947(n)`
-/

namespace A335953.P1344323824635603958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A022167 n) : ℤ) * A335947 n

end

end A335953.P1344323824635603958

/-! ## A335953.P11253791648875361885

`A003484(A211226(n))*A335947(n)`
-/

namespace A335953.P11253791648875361885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A211226 n).toNat * A335947 n

end

end A335953.P11253791648875361885

/-! ## A335953.P705805109464916284

`A336517(n)/A000079(A002262(n))`
-/

namespace A335953.P705805109464916284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A335953.P705805109464916284

/-! ## A335953.P8928090414060514824

`A336517(n)/A130321(A061579(n))`
-/

namespace A335953.P8928090414060514824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A335953.P8928090414060514824

/-! ## A335953.P14672055279615794417

`A336517(n)/A011782(A002260(n+1))`
-/

namespace A335953.P14672055279615794417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A335953.P14672055279615794417

/-! ## A335953.P11095656355680398887

`A336517(n)/A000079(A025668(n+1))`
-/

namespace A335953.P11095656355680398887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336517 n : ℚ) / (A000079 (A025668 (n + 1)).toNat : ℚ)

end

end A335953.P11095656355680398887

/-!
# A335954: a(n) = Numerator(-2*n*HurwitzZeta(1 - 2*n, -1/2)) for n > 0, and a(0) = 1.

The programs for A335954, there is no canonical definition to state claims against.
-/

/-! ## A335954.P10886322485947079703

`A157781(2*n)`
-/

namespace A335954.P10886322485947079703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157781 (2 * n)

end

end A335954.P10886322485947079703

/-! ## A335954.P567812348536863797

`or(1, A157781(A005843(n)))`
-/

namespace A335954.P567812348536863797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157781 (A005843 n).toNat)

end

end A335954.P567812348536863797

/-! ## A335954.P1056597644178633941

`A164877(n)+A001896(n)`
-/

namespace A335954.P1056597644178633941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164877 n + A001896 n

end

end A335954.P1056597644178633941

/-! ## A335954.P4825330476895375620

`A164869(2*n)+A001896(n)`
-/

namespace A335954.P4825330476895375620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 (2 * n) + A001896 n

end

end A335954.P4825330476895375620

/-! ## A335954.P5492873913398777629

`(A157819(2*n)+A157817(2*n))/2`
-/

namespace A335954.P5492873913398777629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157819 (2 * n) + A157817 (2 * n) : ℚ) / 2

end

end A335954.P5492873913398777629

/-!
# A335955: a(n) = (4^n*(Z(-n, 1/4) - Z(-n, 3/4)) + Z(-n, 1)*(2^(n+1)-1))*A171977(n+1), where Z(n, c) is the Hurwitz zeta function.

The programs for A335955, there is no canonical definition to state claims against.
-/

/-! ## A335955.P15625744621263665698

`A122045(n)-A198631(n)`
-/

namespace A335955.P15625744621263665698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A198631 n

end

end A335955.P15625744621263665698

/-! ## A335955.P18042368805278593140

`A119879(∑[n])-A198631(n)`
-/

namespace A335955.P18042368805278593140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (∑ j ∈ Finset.range (n + 1), f1 j) - A198631 n

end

end A335955.P18042368805278593140

/-! ## A335955.P4014310033101694553

`Δ[A009390(n)]-A198631(n)`
-/

namespace A335955.P4014310033101694553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A198631 n

end

end A335955.P4014310033101694553

/-! ## A335955.P18252112593560762870

`1-(A198631(n)+A009832(n))`
-/

namespace A335955.P18252112593560762870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A198631 n + A009832 n)

end

end A335955.P18252112593560762870

/-! ## A335955.P4616752772824056366

`xor(A059341(A000096(n)), A122045(n))`
-/

namespace A335955.P4616752772824056366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059341 (A000096 n).toNat) (A122045 n)

end

end A335955.P4616752772824056366

/-!
# A335956: a(n) = (2^n - 1)*2^valuation(n, 2) for n > 0 and a(0) = 0.

The programs for A335956, the canonical program `A335956.P14748257867435180944` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335956 has offset 0).

The definition of A335956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335956.P14748257867435180944

`(2^n-1)*and(n, -n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A335956

/-- `(2^n-1)*and(n, -n)` -/
def P14748257867435180944.Spec : Prop :=
  ∀ n, P14748257867435180944.a n = A335956 n

theorem P14748257867435180944.correct : P14748257867435180944.Spec := by
  intro n
  simp only [A335956]

end A335956

/-! ## A335956.P8306193652817918138

`(1-2^n)*or(n, -n)`
-/

namespace A335956.P8306193652817918138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) * Int.lor (n : ℤ) (-(n : ℤ))

end

end A335956.P8306193652817918138

namespace A335956

/-- `(1-2^n)*or(n, -n)` -/
def P8306193652817918138.Spec : Prop :=
  ∀ n, P8306193652817918138.a n = A335956 n

end A335956

/-! ## A335956.P8676427135514638029

`lcm(1-2^n, and(n, -n))`
-/

namespace A335956.P8676427135514638029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 ^ n : ℤ)) (Int.land (n : ℤ) (-(n : ℤ)))

end

end A335956.P8676427135514638029

namespace A335956

/-- `lcm(1-2^n, and(n, -n))` -/
def P8676427135514638029.Spec : Prop :=
  ∀ n, (P8676427135514638029.a n : ℤ) = A335956 n

end A335956

/-! ## A335956.P2120155747947735547

`lcm(2^n-1, or(n, -n))`
-/

namespace A335956.P2120155747947735547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) (Int.lor (n : ℤ) (-(n : ℤ)))

end

end A335956.P2120155747947735547

namespace A335956

/-- `lcm(2^n-1, or(n, -n))` -/
def P2120155747947735547.Spec : Prop :=
  ∀ n, (P2120155747947735547.a n : ℤ) = A335956 n

end A335956

/-! ## A335956.P2206377898090916969

`and(n, A000325(n))*A000225(n)`
-/

namespace A335956.P2206377898090916969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000325 n) * A000225 n

end

end A335956.P2206377898090916969

namespace A335956

/-- `and(n, A000325(n))*A000225(n)` -/
def P2206377898090916969.Spec : Prop :=
  ∀ n, P2206377898090916969.a n = A335956 n

end A335956

/-! ## A335956.P6834374679230078700

`gcd(A006516(n), A066524(n))`
-/

namespace A335956.P6834374679230078700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006516 n) (A066524 n)

end

end A335956.P6834374679230078700

namespace A335956

/-- `gcd(A006516(n), A066524(n))` -/
def P6834374679230078700.Spec : Prop :=
  ∀ n, (P6834374679230078700.a n : ℤ) = A335956 n

end A335956

/-!
# A335962: Numbers k such that k^2 + 1 and k^2 + 2 are both squarefree.

The programs for A335962, the canonical program `A335962.P2671901003866590585` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335962 has offset 1).

The definition of A335962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335962.P2671901003866590585

`eq[A051903(A010000(n)), A059592(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A335962

/-- `eq[A051903(A010000(n)), A059592(n)]` -/
def P2671901003866590585.Spec : Prop :=
  ∀ n, (P2671901003866590585.a n : ℤ) = A335962 (n + 1)

theorem P2671901003866590585.correct : P2671901003866590585.Spec := by
  intro n
  simp only [A335962, Nat.add_sub_cancel]

end A335962

/-! ## A335962.P13020574510983134063

`record[floor(sqrt(A190846(n²+1)))]`
-/

namespace A335962.P13020574510983134063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A190846 (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335962.P13020574510983134063

namespace A335962

/-- `record[floor(sqrt(A190846(n²+1)))]` -/
def P13020574510983134063.Spec : Prop :=
  ∀ n, P13020574510983134063.a n = A335962 (n + 1)

end A335962

/-! ## A335962.P12093905519143632183

`eq[1, val(A278253(n²+1), 2)]`
-/

namespace A335962.P12093905519143632183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278253 (n ^ 2 + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335962.P12093905519143632183

namespace A335962

/-- `eq[1, val(A278253(n²+1), 2)]` -/
def P12093905519143632183.Spec : Prop :=
  ∀ n, (P12093905519143632183.a n : ℤ) = A335962 (n + 1)

end A335962

/-! ## A335962.P11422165173713007915

`record[sqrt(A075424((n+1)²+2))]`
-/

namespace A335962.P11422165173713007915
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075424 ((n + 1) ^ 2 + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335962.P11422165173713007915

namespace A335962

/-- `record[sqrt(A075424((n+1)²+2))]` -/
def P11422165173713007915.Spec : Prop :=
  ∀ n, P11422165173713007915.a n = (A335962 (n + 1) : ℝ)

end A335962

/-! ## A335962.P9745126930355464808

`eq[1, A076334((n+1)²+1)]+1`
-/

namespace A335962.P9745126930355464808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076334 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335962.P9745126930355464808

namespace A335962

/-- `eq[1, A076334((n+1)²+1)]+1` -/
def P9745126930355464808.Spec : Prop :=
  ∀ n, (P9745126930355464808.a n : ℤ) = A335962 (n + 1)

end A335962

/-! ## A335962.P16213399384131518251

`eq[1, A175608((n+1)²+1)]+1`
-/

namespace A335962.P16213399384131518251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175608 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335962.P16213399384131518251

namespace A335962

/-- `eq[1, A175608((n+1)²+1)]+1` -/
def P16213399384131518251.Spec : Prop :=
  ∀ n, (P16213399384131518251.a n : ℤ) = A335962 (n + 1)

end A335962

/-! ## A335962.P1099116828988338445

`eq[A076334(n²+1), A178334(n)]`
-/

namespace A335962.P1099116828988338445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076334 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335962.P1099116828988338445

namespace A335962

/-- `eq[A076334(n²+1), A178334(n)]` -/
def P1099116828988338445.Spec : Prop :=
  ∀ n, (P1099116828988338445.a n : ℤ) = A335962 (n + 1)

end A335962

/-! ## A335962.P5558795833428407916

`A000188(record[A075424((n+1)²+2)])`
-/

namespace A335962.P5558795833428407916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335962.P5558795833428407916

namespace A335962

/-- `A000188(record[A075424((n+1)²+2)])` -/
def P5558795833428407916.Spec : Prop :=
  ∀ n, P5558795833428407916.a n = A335962 (n + 1)

end A335962

/-! ## A335962.P17965631636291486338

`A137735(record[A075424((n+1)²+2)])`
-/

namespace A335962.P17965631636291486338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335962.P17965631636291486338

namespace A335962

/-- `A137735(record[A075424((n+1)²+2)])` -/
def P17965631636291486338.Spec : Prop :=
  ∀ n, P17965631636291486338.a n = A335962 (n + 1)

end A335962

/-! ## A335962.P18431107462765787080

`eq[A000038(n)!, A076334(n²+1)]`
-/

namespace A335962.P18431107462765787080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076334 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335962.P18431107462765787080

namespace A335962

/-- `eq[A000038(n)!, A076334(n²+1)]` -/
def P18431107462765787080.Spec : Prop :=
  ∀ n, (P18431107462765787080.a n : ℤ) = A335962 (n + 1)

end A335962

/-!
# A335964: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-3,k-1) + T(n-4,k-2) + delta(n,0)*delta(k,0), T(n,k<0) = T(n<k,k) = 0.

The programs for A335964, there is no canonical definition to state claims against.
-/

/-! ## A335964.P16976667401105120783

`A071919(n)-A122922(A059922(n))`
-/

namespace A335964.P16976667401105120783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A122922 (A059922 n).toNat

end

end A335964.P16976667401105120783

/-! ## A335964.P11873059687937662680

`A007895(A238130(n)^A061198(n))`
-/

namespace A335964.P11873059687937662680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A238130 n : ℚ) ^ (A061198 n : ℤ))).toNat

end

end A335964.P11873059687937662680

/-! ## A335964.P2142036964406316667

`and(A000045(A290054(n)), A215334(n))`
-/

namespace A335964.P2142036964406316667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A290054 n).toNat) (A215334 n)

end

end A335964.P2142036964406316667

/-! ## A335964.P9535417912922217930

`and(A000045(A290054(n)), A203265(n+1))`
-/

namespace A335964.P9535417912922217930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A290054 n).toNat) (A203265 (n + 1))

end

end A335964.P9535417912922217930

/-!
# A335965: a(n) = number of odd numbers in the n-th row of the Narayana triangle A001263.

The programs for A335965, the canonical program `A335965.P14590338528508009539` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335965 has offset 1).

The definition of A335965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335965.P5390168924321568384

`A361145(A145051(n+1))`
-/

namespace A335965.P5390168924321568384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A145051 (n + 1)).toNat

end

end A335965.P5390168924321568384

namespace A335965

/-- `A361145(A145051(n+1))` -/
def P5390168924321568384.Spec : Prop :=
  ∀ n, P5390168924321568384.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P11175641274937546378

`A361145(A065262(n+2))`
-/

namespace A335965.P11175641274937546378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A065262 (n + 2)).toNat

end

end A335965.P11175641274937546378

namespace A335965

/-- `A361145(A065262(n+2))` -/
def P11175641274937546378.Spec : Prop :=
  ∀ n, P11175641274937546378.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P2787852182177101749

`A361145(A106151(n+2))`
-/

namespace A335965.P2787852182177101749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A106151 (n + 2)).toNat

end

end A335965.P2787852182177101749

namespace A335965

/-- `A361145(A106151(n+2))` -/
def P2787852182177101749.Spec : Prop :=
  ∀ n, P2787852182177101749.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P9443023286793470809

`A361145(A323467(n+2))`
-/

namespace A335965.P9443023286793470809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A323467 (n + 2)).toNat

end

end A335965.P9443023286793470809

namespace A335965

/-- `A361145(A323467(n+2))` -/
def P9443023286793470809.Spec : Prop :=
  ∀ n, P9443023286793470809.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P14590338528508009539

`A048896(n)+abs(Δ[A048896(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335965

/-- `A048896(n)+abs(Δ[A048896(n)])` -/
def P14590338528508009539.Spec : Prop :=
  ∀ n, P14590338528508009539.a n = A335965 (n + 1)

theorem P14590338528508009539.correct : P14590338528508009539.Spec := by
  intro n
  simp only [A335965, Nat.add_sub_cancel]

end A335965

/-! ## A335965.P74983614593147649

`A233775(n+2)-A060632(n+2)`
-/

namespace A335965.P74983614593147649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (n + 2) - A060632 (n + 2)

end

end A335965.P74983614593147649

namespace A335965

/-- `A233775(n+2)-A060632(n+2)` -/
def P74983614593147649.Spec : Prop :=
  ∀ n, P74983614593147649.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P6754649028003230393

`2*A060632(n+1)-A048896(n+1)`
-/

namespace A335965.P6754649028003230393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060632 (n + 1) - A048896 (n + 1)

end

end A335965.P6754649028003230393

namespace A335965

/-- `2*A060632(n+1)-A048896(n+1)` -/
def P6754649028003230393.Spec : Prop :=
  ∀ n, P6754649028003230393.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P1722930170651151922

`A105321(2*(n+1))%A233775(n+2)`
-/

namespace A335965.P1722930170651151922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105321 (2 * (n + 1))) (A233775 (n + 2))

end

end A335965.P1722930170651151922

namespace A335965

/-- `A105321(2*(n+1))%A233775(n+2)` -/
def P1722930170651151922.Spec : Prop :=
  ∀ n, P1722930170651151922.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P776851856585560681

`A001316(or(1, n+1))-A048896(n+1)`
-/

namespace A335965.P776851856585560681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.lor 1 (n + 1)) - A048896 (n + 1)

end

end A335965.P776851856585560681

namespace A335965

/-- `A001316(or(1, n+1))-A048896(n+1)` -/
def P776851856585560681.Spec : Prop :=
  ∀ n, P776851856585560681.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P16420145356741251660

`A117973(A110654(n))-A048896(n+1)`
-/

namespace A335965.P16420145356741251660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 (A110654 n).toNat - A048896 (n + 1)

end

end A335965.P16420145356741251660

namespace A335965

/-- `A117973(A110654(n))-A048896(n+1)` -/
def P16420145356741251660.Spec : Prop :=
  ∀ n, P16420145356741251660.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P16953386129877922364

`A048896(n)-Δ[A048896(n)]*A033999(n)`
-/

namespace A335965.P16953386129877922364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - (f1 (n + 1) - f1 n) * A033999 n

end

end A335965.P16953386129877922364

namespace A335965

/-- `A048896(n)-Δ[A048896(n)]*A033999(n)` -/
def P16953386129877922364.Spec : Prop :=
  ∀ n, P16953386129877922364.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P680849976323732116

`A011782(A000120(n+2))*A140670(n+2)`
-/

namespace A335965.P680849976323732116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 (n + 2)).toNat * A140670 (n + 2)

end

end A335965.P680849976323732116

namespace A335965

/-- `A011782(A000120(n+2))*A140670(n+2)` -/
def P680849976323732116.Spec : Prop :=
  ∀ n, P680849976323732116.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P12183696230236083572

`A005843(A233775(n+1))%A233775(n+2)`
-/

namespace A335965.P12183696230236083572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A233775 (n + 1)).toNat) (A233775 (n + 2))

end

end A335965.P12183696230236083572

namespace A335965

/-- `A005843(A233775(n+1))%A233775(n+2)` -/
def P12183696230236083572.Spec : Prop :=
  ∀ n, P12183696230236083572.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P10983461762523621691

`lcm(A014681(A006519(n+2)), A048896(n+1))`
-/

namespace A335965.P10983461762523621691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014681 (A006519 (n + 2)).toNat) (A048896 (n + 1))

end

end A335965.P10983461762523621691

namespace A335965

/-- `lcm(A014681(A006519(n+2)), A048896(n+1))` -/
def P10983461762523621691.Spec : Prop :=
  ∀ n, (P10983461762523621691.a n : ℤ) = A335965 (n + 1)

end A335965

/-! ## A335965.P12965061362716538560

`and(A361145(A361145(2*n+1)), A361145(n+2))`
-/

namespace A335965.P12965061362716538560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A361145 (A361145 (2 * n + 1)).toNat) (A361145 (n + 2))

end

end A335965.P12965061362716538560

namespace A335965

/-- `and(A361145(A361145(2*n+1)), A361145(n+2))` -/
def P12965061362716538560.Spec : Prop :=
  ∀ n, P12965061362716538560.a n = A335965 (n + 1)

end A335965

/-! ## A335965.P10252551243450694016

`A361145(A038572(A361145(A361145(n+2))))`
-/

namespace A335965.P10252551243450694016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (A038572 (A361145 (A361145 (n + 2)).toNat).toNat).toNat

end

end A335965.P10252551243450694016

namespace A335965

/-- `A361145(A038572(A361145(A361145(n+2))))` -/
def P10252551243450694016.Spec : Prop :=
  ∀ n, P10252551243450694016.a n = A335965 (n + 1)

end A335965

/-!
# A335966: a(n) is the number of odd terms in the n-th row of triangle A056939.

The programs for A335966, there is no canonical definition to state claims against.
-/

/-! ## A335966.P5667445196406465044

`abs(Δ[A071044(A145979(n))])`
-/

namespace A335966.P5667445196406465044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A145979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A335966.P5667445196406465044

/-! ## A335966.P495632625753290052

`gcd(A151930(A098181(n)), A151930(n))`
-/

namespace A335966.P495632625753290052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151930 (A098181 n).toNat) (A151930 n)

end

end A335966.P495632625753290052

/-! ## A335966.P2633611156172937399

`lcm(Δ[A071044(A145979(n))], A033999(n))`
-/

namespace A335966.P2633611156172937399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A145979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A335966.P2633611156172937399

/-! ## A335966.P11870467106496687194

`A060632(n+2)-Δ[A127973(n)]`
-/

namespace A335966.P11870467106496687194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (n + 2) - (f1 (n + 1) - f1 n)

end

end A335966.P11870467106496687194

/-! ## A335966.P14518043314982012090

`Δ[A151566(n+2)-A127973(n)]`
-/

namespace A335966.P14518043314982012090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (n + 2) - A127973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335966.P14518043314982012090

/-! ## A335966.P16660519321591542365

`A060632(n+2)+A127973(n)-A127973(n+1)`
-/

namespace A335966.P16660519321591542365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (n + 2) + (A127973 n - A127973 (n + 1))

end

end A335966.P16660519321591542365

/-!
# A335967: Irregular table read by rows; if the binary representation of n encodes the last row of a tiling of a staircase polyomino, then the n-th row contains the numbers k whose binary representation encode possible penultimate rows.

The programs for A335967, there is no canonical definition to state claims against.
-/

/-! ## A335967.P16731417812532397065

`A001222(lcm(A108131(n), A210736(n+2)))`
-/

namespace A335967.P16731417812532397065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A108131 n) (A210736 (n + 2)))

end

end A335967.P16731417812532397065

/-! ## A335967.P1046061745122318031

`A001222(C(A330236(n+1), A008619(n)))`
-/

namespace A335967.P1046061745122318031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A330236 (n + 1)).toNat (A008619 n).toNat)

end

end A335967.P1046061745122318031

/-! ## A335967.P114810097584141530

`A056976(A308569(n+1))+A048621(n+1)`
-/

namespace A335967.P114810097584141530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (A308569 (n + 1)).toNat + A048621 (n + 1)

end

end A335967.P114810097584141530

/-! ## A335967.P6037454939029387991

`A001222(C(A354928(n+1), A110654(n+1)))`
-/

namespace A335967.P6037454939029387991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A354928 (n + 1)).toNat (A110654 (n + 1)).toNat)

end

end A335967.P6037454939029387991

/-! ## A335967.P13661632835266277275

`A055641(A269619(n+1)²)+A048621(n+1)`
-/

namespace A335967.P13661632835266277275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A269619 (n + 1) ^ 2).toNat + A048621 (n + 1)

end

end A335967.P13661632835266277275

/-!
# A335969: Sphenic numbers that are also the sum of three consecutive primes.

The programs for A335969, the canonical program `A335969.P8452878406880024569` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335969 has offset 1).

The definition of A335969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335969.P8452878406880024569

`∩[A034961(n+1), A046389(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A335969

/-- `∩[A034961(n+1), A046389(n+1)]` -/
def P8452878406880024569.Spec : Prop :=
  ∀ n, (P8452878406880024569.a n : ℤ) = A335969 (n + 1)

theorem P8452878406880024569.correct : P8452878406880024569.Spec := by
  intro n
  simp only [A335969, Nat.add_sub_cancel]

end A335969

/-! ## A335969.P457229176980220371

`∩[A046389(n+1), A031165(n)+a(n-1)]` with `a(0)=10`
-/

namespace A335969.P457229176980220371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A031165 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P457229176980220371

namespace A335969

/-- `∩[A046389(n+1), A031165(n)+a(n-1)]` -/
def P457229176980220371.Spec : Prop :=
  ∀ n, (P457229176980220371.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P15517010164429898463

`∩[A046389(n+1), A007504(n+3)-A007504(n)]`
-/

namespace A335969.P15517010164429898463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P15517010164429898463

namespace A335969

/-- `∩[A046389(n+1), A007504(n+3)-A007504(n)]` -/
def P15517010164429898463.Spec : Prop :=
  ∀ n, (P15517010164429898463.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P5392466905071313732

`∩[A046389(n+1), A001043(n+2)+A000040(n+1)]`
-/

namespace A335969.P5392466905071313732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P5392466905071313732

namespace A335969

/-- `∩[A046389(n+1), A001043(n+2)+A000040(n+1)]` -/
def P5392466905071313732.Spec : Prop :=
  ∀ n, (P5392466905071313732.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P4912497436824285304

`∩[A046389(n+1), A011974(n+3)+A000040(n+1)]`
-/

namespace A335969.P4912497436824285304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 3) + A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P4912497436824285304

namespace A335969

/-- `∩[A046389(n+1), A011974(n+3)+A000040(n+1)]` -/
def P4912497436824285304.Spec : Prop :=
  ∀ n, (P4912497436824285304.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P17820942145471204589

`∩[A046389(n+1), A048448(n+2)+A000040(n+2)]`
-/

namespace A335969.P17820942145471204589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) + A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P17820942145471204589

namespace A335969

/-- `∩[A046389(n+1), A048448(n+2)+A000040(n+2)]` -/
def P17820942145471204589.Spec : Prop :=
  ∀ n, (P17820942145471204589.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P18027456715821259755

`∩[A046389(n+1), A000040(n+1)+2*A024675(n+1)]`
-/

namespace A335969.P18027456715821259755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P18027456715821259755

namespace A335969

/-- `∩[A046389(n+1), A000040(n+1)+2*A024675(n+1)]` -/
def P18027456715821259755.Spec : Prop :=
  ∀ n, (P18027456715821259755.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P2868769005342495630

`∩[A046389(n+1), A181428(n+1)+2*A000040(n+1)]`
-/

namespace A335969.P2868769005342495630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + 2 * A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P2868769005342495630

namespace A335969

/-- `∩[A046389(n+1), A181428(n+1)+2*A000040(n+1)]` -/
def P2868769005342495630.Spec : Prop :=
  ∀ n, (P2868769005342495630.a n : ℤ) = A335969 (n + 1)

end A335969

/-! ## A335969.P14272932585542683282

`∩[A046389(n+1), A207637(n+1)]`
-/

namespace A335969.P14272932585542683282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P14272932585542683282

namespace A335969

/-- `∩[A046389(n+1), A207637(n+1)]` -/
def P14272932585542683282.Spec : Prop :=
  ∀ n, (P14272932585542683282.a n : ℤ) = A335969 (n + 1)

end A335969

/-!
# A335973: The Locomotive Pushing or Pulling its Wagons sequence (see comments for definition).

The programs for A335973, there is no canonical definition to state claims against.
-/

/-! ## A335973.P15817161450964643088

`A059995(A048794(∑[2*a(n-1)]))` with `a(0)=13, a(1)=13`
-/

namespace A335973.P15817161450964643088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 13] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A048794 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335973.P15817161450964643088

/-!
# A335974: Number of tieless quidditch games with n scoring events.

The programs for A335974, there is no canonical definition to state claims against.
-/

/-! ## A335974.P15588992063269447188

`(A063886(n)-char[15])*A020639(A065758(n+1))`
-/

namespace A335974.P15588992063269447188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063886 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A020639 (A065758 (n + 1)).toNat

end

end A335974.P15588992063269447188

/-! ## A335974.P9845744453175376376

`A047073(n+1)-∑{e}[A103314(2*(n+2))+1, #-1]`
-/

namespace A335974.P9845744453175376376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A335974.P9845744453175376376

/-! ## A335974.P5591936637858480643

`A004277(A063886(n))-A158465(n+1)`
-/

namespace A335974.P5591936637858480643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A063886 n).toNat - A158465 (n + 1)

end

end A335974.P5591936637858480643

/-! ## A335974.P3608792718272225237

`A005843(A063886(n)-A216601(n+1))`
-/

namespace A335974.P3608792718272225237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063886 n - A216601 (n + 1)).toNat

end

end A335974.P3608792718272225237

/-! ## A335974.P7757057224458033809

`A004277(A063886(n)-A337380(n+1))`
-/

namespace A335974.P7757057224458033809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A063886 n - A337380 (n + 1)).toNat

end

end A335974.P7757057224458033809

/-!
# A335975: Square array T(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(k*(exp(x) - 1) + x).

The programs for A335975, there is no canonical definition to state claims against.
-/

/-! ## A335975.P17438561345085057783

`A241578(n)-A033886(A208673(n))`
-/

namespace A335975.P17438561345085057783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 n - A033886 (A208673 n).toNat

end

end A335975.P17438561345085057783

/-! ## A335975.P16923182255774469640

`A241578(n)-A241541(A241379(n)²)`
-/

namespace A335975.P16923182255774469640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 n - A241541 (A241379 n ^ 2).toNat

end

end A335975.P16923182255774469640

/-! ## A335975.P17074573874158290545

`A241578(n)-A024692(A191837(n+2))`
-/

namespace A335975.P17074573874158290545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 n - A024692 (A191837 (n + 2)).toNat

end

end A335975.P17074573874158290545

/-! ## A335975.P17343972631154246077

`A241578(n)-A241541(A241387(n)²)`
-/

namespace A335975.P17343972631154246077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 n - A241541 (A241387 n ^ 2).toNat

end

end A335975.P17343972631154246077

/-!
# A335976: Numbers k such that Fibonacci(6*k) is not a totient.

The programs for A335976, there is no canonical definition to state claims against.
-/

/-! ## A335976.P423489651936649136

`eq[A005128(n), A040001(A322856(n))]`
-/

namespace A335976.P423489651936649136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A322856 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335976.P423489651936649136

/-! ## A335976.P11098127466529142208

`A000040(A274034(n+3))%A274019(3*n)`
-/

namespace A335976.P11098127466529142208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A274034 (n + 3)).toNat) (A274019 (3 * n))

end

end A335976.P11098127466529142208

/-! ## A335976.P1677220562236660226

`A047273(A114873(n+1))%A161801(3*n+1)`
-/

namespace A335976.P1677220562236660226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047273 (A114873 (n + 1)).toNat) (A161801 (3 * n + 1))

end

end A335976.P1677220562236660226

/-! ## A335976.P2081982412370741232

`eq[A005128(n), A020639(A334626(n))]`
-/

namespace A335976.P2081982412370741232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A334626 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335976.P2081982412370741232

/-! ## A335976.P10589554903264075565

`A302491(n+3)%A133743(A002878(n))`
-/

namespace A335976.P10589554903264075565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302491 (n + 3)) (A133743 (A002878 n).toNat)

end

end A335976.P10589554903264075565

/-!
# A335977: Square array T(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(k*(1 - exp(x)) + x).

The programs for A335977, there is no canonical definition to state claims against.
-/

/-! ## A335977.P4479661438673022562

`A279060(A156883(n))-A051775(n)`
-/

namespace A335977.P4479661438673022562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A156883 n).toNat - A051775 n

end

end A335977.P4479661438673022562

/-! ## A335977.P3642691445419042618

`A343491(A307847(n))-A004247(n)`
-/

namespace A335977.P3642691445419042618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343491 (A307847 n).toNat - A004247 n

end

end A335977.P3642691445419042618

/-! ## A335977.P15784934411821319297

`A343491(A307847(n))-A067138(n)`
-/

namespace A335977.P15784934411821319297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343491 (A307847 n).toNat - A067138 n

end

end A335977.P15784934411821319297

/-!
# A335978: Numbers m of the form abs(k - reverse(k)) for at least one k.

The programs for A335978, there is no canonical definition to state claims against.
-/

/-! ## A335978.P795234107608045493

`9*A334145(n+1)`
-/

namespace A335978.P795234107608045493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A334145 (n + 1)

end

end A335978.P795234107608045493

/-! ## A335978.P14685081371565792091

`A008591(A334145(n+1))`
-/

namespace A335978.P14685081371565792091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A334145 (n + 1)).toNat

end

end A335978.P14685081371565792091

/-! ## A335978.P14449832814133988431

`9*lt[A004086(A033865(n)), A002808(n+1)]`
-/

namespace A335978.P14449832814133988431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A033865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335978.P14449832814133988431

/-! ## A335978.P15248487938166548123

`9*lt[A000217(A033865(n)), A028916(n+1)]`
-/

namespace A335978.P15248487938166548123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335978.P15248487938166548123

/-! ## A335978.P15074584092577824085

`9*lt[A046691(A033865(n)), A139827(n+1)]`
-/

namespace A335978.P15074584092577824085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A033865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335978.P15074584092577824085

/-!
# A335979: Number of partitions of n into exactly two parts with no decimal carries.

The programs for A335979, the canonical program `A335979.P10674382385544783785` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335979 has offset 0).

The definition of A335979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335979.P10674382385544783785

`ceil(1/2*A089898(n))-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A335979

/-- `ceil(1/2*A089898(n))-1` -/
def P10674382385544783785.Spec : Prop :=
  ∀ n, P10674382385544783785.a n = A335979 n

theorem P10674382385544783785.correct : P10674382385544783785.Spec := by
  intro n
  simp only [A335979]

end A335979

/-! ## A335979.P1747545278554175014

`floor(sinh(log(∏{digits}[n, #+1])))`
-/

namespace A335979.P1747545278554175014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℝ))⌋

end

end A335979.P1747545278554175014

namespace A335979

/-- `floor(sinh(log(∏{digits}[n, #+1])))` -/
def P1747545278554175014.Spec : Prop :=
  ∀ n, P1747545278554175014.a n = A335979 n

end A335979

/-! ## A335979.P4392060479641594049

`floor((∏{digits}[n, #+1]-1)/2)`
-/

namespace A335979.P4392060479641594049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A335979.P4392060479641594049

namespace A335979

/-- `floor((∏{digits}[n, #+1]-1)/2)` -/
def P4392060479641594049.Spec : Prop :=
  ∀ n, P4392060479641594049.a n = A335979 n

end A335979

/-! ## A335979.P4737363815680816031

`ceil(∏{digits}[n, #+1]/2)-1`
-/

namespace A335979.P4737363815680816031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℚ) / 2⌉ - 1

end

end A335979.P4737363815680816031

namespace A335979

/-- `ceil(∏{digits}[n, #+1]/2)-1` -/
def P4737363815680816031.Spec : Prop :=
  ∀ n, P4737363815680816031.a n = A335979 n

end A335979

/-! ## A335979.P16437888438381025608

`round(∏{digits}[n, #+1]/2)-1`
-/

namespace A335979.P16437888438381025608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℚ) / 2) - 1

end

end A335979.P16437888438381025608

namespace A335979

/-- `round(∏{digits}[n, #+1]/2)-1` -/
def P16437888438381025608.Spec : Prop :=
  ∀ n, P16437888438381025608.a n = A335979 n

end A335979

/-! ## A335979.P10368314910709588694

`floor(xor(-∏{digits}[n, #+1], -1)/2)`
-/

namespace A335979.P10368314910709588694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (-((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ)) (-1) : ℚ) / 2⌋

end

end A335979.P10368314910709588694

namespace A335979

/-- `floor(xor(-∏{digits}[n, #+1], -1)/2)` -/
def P10368314910709588694.Spec : Prop :=
  ∀ n, P10368314910709588694.a n = A335979 n

end A335979

/-! ## A335979.P5056167285641774211

`floor(floor(∏{digits}[n, n/(n+1)+#])/2)`
-/

namespace A335979.P5056167285641774211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℚ) / (n + 1 : ℚ) + (x : ℚ)).prod⌋ : ℚ) / 2⌋

end

end A335979.P5056167285641774211

namespace A335979

/-- `floor(floor(∏{digits}[n, n/(n+1)+#])/2)` -/
def P5056167285641774211.Spec : Prop :=
  ∀ n, P5056167285641774211.a n = A335979 n

end A335979

/-! ## A335979.P14846024073109199803

`floor((2*∑{digits}[n, #]+∑{digits}[n, #]²-∑{digits}[n, #²])/4)`
-/

namespace A335979.P14846024073109199803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ)) : ℚ) / 4⌋

end

end A335979.P14846024073109199803

namespace A335979

/-- `floor((2*∑{digits}[n, #]+∑{digits}[n, #]²-∑{digits}[n, #²])/4)` -/
def P14846024073109199803.Spec : Prop :=
  ∀ n, P14846024073109199803.a n = A335979 n

end A335979

/-! ## A335979.P13355420151552673726

`floor(A061486(n)/2)`
-/

namespace A335979.P13355420151552673726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061486 n : ℚ) / 2⌋

end

end A335979.P13355420151552673726

namespace A335979

/-- `floor(A061486(n)/2)` -/
def P13355420151552673726.Spec : Prop :=
  ∀ n, P13355420151552673726.a n = A335979 n

end A335979

/-! ## A335979.P5591322073957978737

`floor(A264600(n)/2)`
-/

namespace A335979.P5591322073957978737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264600 n : ℚ) / 2⌋

end

end A335979.P5591322073957978737

namespace A335979

/-- `floor(A264600(n)/2)` -/
def P5591322073957978737.Spec : Prop :=
  ∀ n, P5591322073957978737.a n = A335979 n

end A335979

/-!
# A335982: Expansion of e.g.f. exp(4 * (1 - exp(-x)) + x).

The programs for A335982, there is no canonical definition to state claims against.
-/

/-! ## A335982.P10518904773375994588

`A330109(∑[n²+1+n]+1)`
-/

namespace A335982.P10518904773375994588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A335982.P10518904773375994588

/-!
# A335983: a(n) = least k such that n < Integral_{x=1/k..1} Gamma(x) dx.

The programs for A335983, there is no canonical definition to state claims against.
-/

/-! ## A335983.P2888979285558293631

`A285601(round(exp(A285614(n+1))))`
-/

namespace A335983.P2888979285558293631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (SequenceMachineLib.roundAway (Real.exp (A285614 (n + 1) : ℝ))).toNat

end

end A335983.P2888979285558293631

/-! ## A335983.P4022411869822231692

`A121857(A359108(n))+A080870(n+1)`
-/

namespace A335983.P4022411869822231692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (A359108 n).toNat + A080870 (n + 1)

end

end A335983.P4022411869822231692

/-!
# A335984: Numbers m such that more than half the distinct positive terms of the sequence -k^2 + m*k - 1 are primes.

The programs for A335984, there is no canonical definition to state claims against.
-/

/-! ## A335984.P12200926123696668798

`lt[n/4, A109909(n+1)]+1`
-/

namespace A335984.P12200926123696668798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A335984.P12200926123696668798

/-! ## A335984.P2955478185515001145

`lt[A002265(n), A109909(A028310(n))]`
-/

namespace A335984.P2955478185515001145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109909 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335984.P2955478185515001145

/-! ## A335984.P16486480647782701348

`lt[A002265(n), A109909(A233583(n+1))]`
-/

namespace A335984.P16486480647782701348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109909 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335984.P16486480647782701348

/-! ## A335984.P6160629707741964658

`A321790(A001037(n))+A025487(n+1)`
-/

namespace A335984.P6160629707741964658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321790 (A001037 n).toNat + A025487 (n + 1)

end

end A335984.P6160629707741964658

/-! ## A335984.P718421936075258390

`record[∑{p}[A000583(A081477(n+1)), #]+1]+1`
-/

namespace A335984.P718421936075258390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A081477 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A335984.P718421936075258390

/-!
# A335985: Decimal expansion of 1 + Integral_{x=0..1} (-1 + Gamma(1+x))/x dx.

The programs for A335985, there is no canonical definition to state claims against.
-/

/-! ## A335985.P492111445744105791

`9-A159276(n)`
-/

namespace A335985.P492111445744105791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A159276 n

end

end A335985.P492111445744105791

/-!
# A335988: Cubefull exponentially odd numbers: numbers whose prime factorization contains only odd exponents that are larger than 1.

The programs for A335988, there is no canonical definition to state claims against.
-/

/-! ## A335988.P16651921659282779888

`filter[A001694(n+1), A295316(#)]`
-/

namespace A335988.P16651921659282779888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A335988.P16651921659282779888

/-! ## A335988.P850596879205774893

`filter[A036966(n+1), A295316(#)]`
-/

namespace A335988.P850596879205774893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A335988.P850596879205774893

/-! ## A335988.P9849417151106423318

`filter[A377819(n+1), A295316(#)]`
-/

namespace A335988.P9849417151106423318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A335988.P9849417151106423318

/-! ## A335988.P13047182083978545259

`filter[A382062(n+1), A295316(#)]`
-/

namespace A335988.P13047182083978545259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A335988.P13047182083978545259

/-! ## A335988.P8447272736629207613

`filter[A297075(2*n+1), A295316(#)]`
-/

namespace A335988.P8447272736629207613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297075 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A335988.P8447272736629207613

/-!
# A335990: The moment generating function of the limiting distribution of the number of comparisons in quicksort can be written in the form M(t) = m(-2*t)/(exp(2*gamma*t)*Gamma(1 + 2*t)) for |t| < 1/2, where m(z) = Sum_{n >= 0} B(n)*z^n/n! for |z| < 1. This sequence gives the numerators of the rational numbers B(n) for n >= 0.

The programs for A335990, there is no canonical definition to state claims against.
-/

/-! ## A335990.P5170181363177972046

`lcm(4, A329001(n))/4`
-/

namespace A335990.P5170181363177972046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A329001 n) : ℚ) / 4

end

end A335990.P5170181363177972046

/-!
# A335991: The moment generating function of the limiting distribution of the number of comparisons in quicksort can be written in the form M(t) = m(-2*t)/(exp(2*gamma*t)*Gamma(1 + 2*t)) for |t| < 1/2, where m(z) = Sum_{n >= 0} B(n)*z^n/n! for |z| < 1. This sequence gives the denominators of the rational numbers B(n) for n >= 0.

The programs for A335991, there is no canonical definition to state claims against.
-/

/-! ## A335991.P5561700789809166129

`A330860(n)/A193349(A305047(n+1))`
-/

namespace A335991.P5561700789809166129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330860 n : ℚ) / (A193349 (A305047 (n + 1)).toNat : ℚ)

end

end A335991.P5561700789809166129

/-! ## A335991.P38978006655569055

`A330860(n)/A055396(A050469(n+5))`
-/

namespace A335991.P38978006655569055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330860 n : ℚ) / (A055396 (A050469 (n + 5)).toNat : ℚ)

end

end A335991.P38978006655569055

/-! ## A335991.P8924016056019723764

`A330860(n)/gcd(A329001(n), A330860(n))`
-/

namespace A335991.P8924016056019723764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330860 n : ℚ) / (Int.gcd (A329001 n) (A330860 n) : ℚ)

end

end A335991.P8924016056019723764

/-! ## A335991.P10837628690531386083

`gcd(A145894(A000079(n)), A330860(n))`
-/

namespace A335991.P10837628690531386083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145894 (A000079 n).toNat) (A330860 n)

end

end A335991.P10837628690531386083

/-!
# A335992: Numbers that are the average of more pairs of distinct twin primes than any previous number.

The programs for A335992, there is no canonical definition to state claims against.
-/

/-! ## A335992.P18191131281931808652

`A130517(or(A000045(3*n+2), A083546(n+1)))`
-/

namespace A335992.P18191131281931808652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (Int.lor (A000045 (3 * n + 2)) (A083546 (n + 1))).toNat

end

end A335992.P18191131281931808652

/-!
# A335993: High-water marks of the sequence given by the number of twin primes with average n.

The programs for A335993, there is no canonical definition to state claims against.
-/

/-! ## A335993.P3374469857044990881

`record[A219157(6*(n+1))+A187759(n+1)]`
-/

namespace A335993.P3374469857044990881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (6 * (n + 1)) + A187759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335993.P3374469857044990881

/-! ## A335993.P3726355549339277542

`record[A219157(6*(n+1))+A004526(A159700(3*(n+1)))]`
-/

namespace A335993.P3726355549339277542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (6 * (n + 1)) + A004526 (A159700 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335993.P3726355549339277542

/-! ## A335993.P5070627107101460443

`record[A339625(n+1)]`
-/

namespace A335993.P5070627107101460443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335993.P5070627107101460443

/-! ## A335993.P2783452716745647653

`A339625(ceil(A335992(n+1)/3))`
-/

namespace A335993.P2783452716745647653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339625 ⌈(A335992 (n + 1) : ℚ) / 3⌉.toNat

end

end A335993.P2783452716745647653

/-! ## A335993.P16089627382577849323

`record[A129363(3*(n+1))%(n+1)]`
-/

namespace A335993.P16089627382577849323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129363 (3 * (n + 1))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335993.P16089627382577849323

/-!
# A335997: Triangle read by rows: T(n,k) = Product_{i=n-k+1..n} i! for 0 <= k <= n.

The programs for A335997, there is no canonical definition to state claims against.
-/

/-! ## A335997.P16269147558921544331

`A000178(A002262(n))*A009963(n)`
-/

namespace A335997.P16269147558921544331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (A002262 n).toNat * A009963 n

end

end A335997.P16269147558921544331

/-! ## A335997.P4806451317325535074

`A000178(A144328(n+1))*A009963(n)`
-/

namespace A335997.P4806451317325535074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (A144328 (n + 1)).toNat * A009963 n

end

end A335997.P4806451317325535074

/-! ## A335997.P14547647558041222867

`A000178(A002262(n))/A022166(n)*A156765(n)`
-/

namespace A335997.P14547647558041222867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (A002262 n).toNat : ℚ) / (A022166 n : ℚ) * (A156765 n : ℚ)

end

end A335997.P14547647558041222867

/-! ## A335997.P8075339403969572269

`A000178(A144328(n+1))/A022167(n)*A156766(n)`
-/

namespace A335997.P8075339403969572269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (A144328 (n + 1)).toNat : ℚ) / (A022167 n : ℚ) * (A156766 n : ℚ)

end

end A335997.P8075339403969572269

/-! ## A335997.P205697570792319961

`A000178(A144328(n+1))/A022168(n)*A156767(n)`
-/

namespace A335997.P205697570792319961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (A144328 (n + 1)).toNat : ℚ) / (A022168 n : ℚ) * (A156767 n : ℚ)

end

end A335997.P205697570792319961

/-!
# A335999: a(1) = 1; for n >= 2, a(n) = least positive integer not in {a(1),..., a(n-1), b(1),...,b(n-1)}, where for n >=1, b(n) = n + 2 + least positive integer not in {a(1),..., a(n-1), a(n), b(1),...,b(n-1)}.

The programs for A335999, there is no canonical definition to state claims against.
-/

/-! ## A335999.P16573465847810579466

`a(n-1)-a(a(n-1)%(1-n))+n` with `a(0)=1, a(1)=2`
-/

namespace A335999.P16573465847810579466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (Int.tmod (a (n - 1)) (1 - (n : ℤ))).toNat + (n : ℤ)

end

end A335999.P16573465847810579466

/-! ## A335999.P11033255002839339879

`a(n-1)-a(a(n-1)+1-n)+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A335999.P11033255002839339879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - a (a (n - 1) + (1 - (n : ℤ))).toNat + (n : ℤ)

end

end A335999.P11033255002839339879

/-! ## A335999.P646865146746749426

`n-(a(1-(n-a(n-1)))-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A335999.P646865146746749426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n : ℤ) - (a (1 - ((n : ℤ) - a (n - 1))).toNat - a (n - 1))

end

end A335999.P646865146746749426

/-! ## A335999.P14135353913846166993

`comp[A026278(n+1)]+1`
-/

namespace A335999.P14135353913846166993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335999.P14135353913846166993

/-! ## A335999.P17467994473778317496

`record[abs(A026276(n+1)-n)]`
-/

namespace A335999.P17467994473778317496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026276 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335999.P17467994473778317496

/-! ## A335999.P15476595047787938122

`comp[A336008(n+1)-1]+1`
-/

namespace A335999.P15476595047787938122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336008 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335999.P15476595047787938122

/-! ## A335999.P134723605809122786

`comp[A026277(n+1)+n+3]+1`
-/

namespace A335999.P134723605809122786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (n + 1) + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335999.P134723605809122786

/-! ## A335999.P11391564880379790763

`record[A022290(A233280(n+1))]`
-/

namespace A335999.P11391564880379790763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A233280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335999.P11391564880379790763

/-! ## A335999.P13375292041269206836

`A057427(n)+A026277(A028310(n))`
-/

namespace A335999.P13375292041269206836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026277 (A028310 n).toNat

end

end A335999.P13375292041269206836

