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
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
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
import Seq.Opaque.C010
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033500: a(n) = a(n-1) + a(round(2*(n-1)/3)) + a(round((n-1)/3)) with a(1)=1, a(2)=2.

The programs for A033500, the canonical program `A033500.P4128262594532992470` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033500 has offset 1).

The definition of A033500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(round(2*n/3)-1)+a(round(n/3)-1)` (program `A033500.P4128262594532992470`, by `A033500.P4128262594532992470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033500.P4128262594532992470

`a(n-1)+a(round(2*n/3)-1)+a(round(n/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033500

/-- `a(n-1)+a(round(2*n/3)-1)+a(round(n/3)-1)` -/
def P4128262594532992470.Spec : Prop :=
  ∀ n, (P4128262594532992470.a n : ℤ) = A033500 (n + 1)

theorem P4128262594532992470.correct : P4128262594532992470.Spec := by
  intro n
  simp only [A033500, Nat.add_sub_cancel]

end A033500

/-! ## A033500.P4883445878173637949

`(A033499(n+1)+A033498(n+1))/2`
-/

namespace A033500.P4883445878173637949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033499 (n + 1) + A033498 (n + 1) : ℚ) / 2

end

end A033500.P4883445878173637949

namespace A033500

/-- `(A033499(n+1)+A033498(n+1))/2` -/
def P4883445878173637949.Spec : Prop :=
  ∀ n, P4883445878173637949.a n = (A033500 (n + 1) : ℚ)

end A033500

/-! ## A033500.P9235315912832577780

`A273943(A033498(n+1)-A033499(n+1))+A033499(n+1)`
-/

namespace A033500.P9235315912832577780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A033498 (n + 1) - A033499 (n + 1)).toNat + A033499 (n + 1)

end

end A033500.P9235315912832577780

namespace A033500

/-- `A273943(A033498(n+1)-A033499(n+1))+A033499(n+1)` -/
def P9235315912832577780.Spec : Prop :=
  ∀ n, P9235315912832577780.a n = A033500 (n + 1)

end A033500

/-! ## A033500.P9703258747687182914

`A273943(A033499(n+1)+A033498(n+1))`
-/

namespace A033500.P9703258747687182914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A033499 (n + 1) + A033498 (n + 1)).toNat

end

end A033500.P9703258747687182914

namespace A033500

/-- `A273943(A033499(n+1)+A033498(n+1))` -/
def P9703258747687182914.Spec : Prop :=
  ∀ n, P9703258747687182914.a n = A033500 (n + 1)

end A033500

/-! ## A033500.P18207186383125382328

`A322554(A002621(n))`
-/

namespace A033500.P18207186383125382328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A002621 n).toNat

end

end A033500.P18207186383125382328

namespace A033500

/-- `A322554(A002621(n))` -/
def P18207186383125382328.Spec : Prop :=
  ∀ n, P18207186383125382328.a n = A033500 (n + 1)

end A033500

/-!
# A033501: Almost-squares: m such that m/p(m) >= k/p(k) for all k

The programs for A033501, there is no canonical definition to state claims against.
-/

/-! ## A033501.P1591130979397454961

`eq[A262767(n+1)/2, A002024(2*n+3)]+1`
-/

namespace A033501.P1591130979397454961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A033501.P1591130979397454961

/-! ## A033501.P14967928272683303966

`eq[A000194(4*n+1), A063655(A028310(n))]`
-/

namespace A033501.P14967928272683303966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033501.P14967928272683303966

/-! ## A033501.P16347416297159457314

`lt[A171852(n+1), A320305(n)]`
-/

namespace A033501.P16347416297159457314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033501.P16347416297159457314

/-! ## A033501.P6553736888783908252

`record[A003991(n+1)/A026584(A132088(n+1))]`
-/

namespace A033501.P6553736888783908252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A026584 (A132088 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033501.P6553736888783908252

/-! ## A033501.P9302444905463514300

`record[A003991(A329340(n)+A004396(n))]`
-/

namespace A033501.P9302444905463514300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A329340 n + A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033501.P9302444905463514300

/-!
# A033502: Carmichael numbers of the form (6*k+1)*(12*k+1)*(18*k+1), where 6*k+1, 12*k+1 and 18*k+1 are all primes.

The programs for A033502, there is no canonical definition to state claims against.
-/

/-! ## A033502.P15434413484993165739

`∩[A182087(n+1), A317126(n+1)]`
-/

namespace A033502.P15434413484993165739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P15434413484993165739

/-! ## A033502.P7681030252318708010

`∩[A182087(n+1), A300949(n+1)]`
-/

namespace A033502.P7681030252318708010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P7681030252318708010

/-! ## A033502.P16538283510840912888

`∩[A300949(n+1), A317126(n+1)]`
-/

namespace A033502.P16538283510840912888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P16538283510840912888

/-! ## A033502.P3332609046709491220

`∩[A182087(n+1), A324316(n+1)]`
-/

namespace A033502.P3332609046709491220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P3332609046709491220

/-! ## A033502.P957168252061211542

`∩[A317126(n+1), A324316(n+1)]`
-/

namespace A033502.P957168252061211542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P957168252061211542

/-! ## A033502.P10410656779585017260

`∩[A087788(n+1), A182087(n+1)]`
-/

namespace A033502.P10410656779585017260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P10410656779585017260

/-! ## A033502.P6915631943411397070

`∩[A087788(n+1), A317126(n+1)]`
-/

namespace A033502.P6915631943411397070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P6915631943411397070

/-! ## A033502.P11997552241647432205

`A382809(A046025(n+1))`
-/

namespace A033502.P11997552241647432205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 (A046025 (n + 1)).toNat

end

end A033502.P11997552241647432205

/-! ## A033502.P6158718688754438419

`∩[A087788(n+1), A382809(n)]`
-/

namespace A033502.P6158718688754438419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P6158718688754438419

/-! ## A033502.P5300560557709162041

`∩[A300949(n+1), A382809(n)]`
-/

namespace A033502.P5300560557709162041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P5300560557709162041

/-! ## A033502.P3193181731614500497

`∩[A317126(n+1), A382809(n)]`
-/

namespace A033502.P3193181731614500497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P3193181731614500497

/-! ## A033502.P8592564589292495093

`∩[A324316(n+1), A382809(n)]`
-/

namespace A033502.P8592564589292495093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P8592564589292495093

/-! ## A033502.P14194484602539216377

`∩[A051015(n+1), A382809(n)]`
-/

namespace A033502.P14194484602539216377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P14194484602539216377

/-! ## A033502.P17732397930981561379

`∩[A051015(n+1), A182087(n+1)]`
-/

namespace A033502.P17732397930981561379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P17732397930981561379

/-! ## A033502.P8832770139964758223

`∩[A051015(n+1), A300949(n+1)]`
-/

namespace A033502.P8832770139964758223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P8832770139964758223

/-! ## A033502.P6816270373834893033

`∩[A051015(n+1), A317126(n+1)]`
-/

namespace A033502.P6816270373834893033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033502.P6816270373834893033

/-!
# A033503: First differences of A046025.

The programs for A033503, there is no canonical definition to state claims against.
-/

/-! ## A033503.P17880221898507358501

`Δ[A046025(n+1)]`
-/

namespace A033503.P17880221898507358501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033503.P17880221898507358501

/-! ## A033503.P9979790292757683776

`A255591(Δ[A064238(n+1)])`
-/

namespace A033503.P9979790292757683776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (f1 (n + 1) - f1 n).toNat

end

end A033503.P9979790292757683776

/-! ## A033503.P4649612391611711625

`A046025(n+2)-A046025(n+1)`
-/

namespace A033503.P4649612391611711625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046025 (n + 2) - A046025 (n + 1)

end

end A033503.P4649612391611711625

/-! ## A033503.P6018690166292347538

`Δ[A105652(n+2)/3]`
-/

namespace A033503.P6018690166292347538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105652 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033503.P6018690166292347538

/-! ## A033503.P4418598017162453890

`Δ[A124408(n+2)/3]`
-/

namespace A033503.P4418598017162453890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124408 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033503.P4418598017162453890

/-! ## A033503.P17609596255934383856

`Δ[A174734(n+2)/6]`
-/

namespace A033503.P17609596255934383856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174734 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033503.P17609596255934383856

/-! ## A033503.P17927491403176147561

`A002264(Δ[A124408(n+2)])`
-/

namespace A033503.P17927491403176147561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A033503.P17927491403176147561

/-! ## A033503.P8131426931981963527

`A008615(Δ[A174734(n+2)])`
-/

namespace A033503.P8131426931981963527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A033503.P8131426931981963527

/-! ## A033503.P13549695939448459553

`Δ[A008611(A105652(n+2))]`
-/

namespace A033503.P13549695939448459553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A105652 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033503.P13549695939448459553

/-!
# A033504: a(n)/4^n is the expected number of tosses of a coin required to obtain n+1 heads or n+1 tails.

The programs for A033504, the canonical program `A033504.P15997400698306141555` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033504 has offset 0).

The definition of A033504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033504.P15997400698306141555

`(n+1)*(2^(2*n+1)-C(2*n+1, n))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033504

/-- `(n+1)*(2^(2*n+1)-C(2*n+1, n))` -/
def P15997400698306141555.Spec : Prop :=
  ∀ n, P15997400698306141555.a n = A033504 n

theorem P15997400698306141555.correct : P15997400698306141555.Spec := by
  intro n
  simp only [A033504]

end A033504

/-! ## A033504.P9993578467818947165

`A130783(Δ[n²])`
-/

namespace A033504.P9993578467818947165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033504.P9993578467818947165

namespace A033504

/-- `A130783(Δ[n²])` -/
def P9993578467818947165.Spec : Prop :=
  ∀ n, P9993578467818947165.a n = A033504 n

end A033504

/-! ## A033504.P1696173352215277757

`(n+1)*A000346(n)`
-/

namespace A033504.P1696173352215277757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000346 n

end

end A033504.P1696173352215277757

namespace A033504

/-- `(n+1)*A000346(n)` -/
def P1696173352215277757.Spec : Prop :=
  ∀ n, P1696173352215277757.a n = A033504 n

end A033504

/-! ## A033504.P4202680786261992338

`(n+1)*A045621(Δ[n²])`
-/

namespace A033504.P4202680786261992338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033504.P4202680786261992338

namespace A033504

/-- `(n+1)*A045621(Δ[n²])` -/
def P4202680786261992338.Spec : Prop :=
  ∀ n, P4202680786261992338.a n = A033504 n

end A033504

/-! ## A033504.P7191104216172222568

`(n+1)*A058622(2*(n+1))`
-/

namespace A033504.P7191104216172222568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058622 (2 * (n + 1))

end

end A033504.P7191104216172222568

namespace A033504

/-- `(n+1)*A058622(2*(n+1))` -/
def P7191104216172222568.Spec : Prop :=
  ∀ n, P7191104216172222568.a n = A033504 n

end A033504

/-! ## A033504.P7869370331911450353

`(n+1)*A191391(2*(n+1))`
-/

namespace A033504.P7869370331911450353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A191391 (2 * (n + 1))

end

end A033504.P7869370331911450353

namespace A033504

/-- `(n+1)*A191391(2*(n+1))` -/
def P7869370331911450353.Spec : Prop :=
  ∀ n, P7869370331911450353.a n = A033504 n

end A033504

/-! ## A033504.P7052620065136800111

`(n+1)*A294175(2*(n+1))`
-/

namespace A033504.P7052620065136800111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294175 (2 * (n + 1))

end

end A033504.P7052620065136800111

namespace A033504

/-- `(n+1)*A294175(2*(n+1))` -/
def P7052620065136800111.Spec : Prop :=
  ∀ n, P7052620065136800111.a n = A033504 n

end A033504

/-! ## A033504.P7871292087868136552

`(n+1)/2*A068551(n+1)`
-/

namespace A033504.P7871292087868136552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A068551 (n + 1) : ℚ)

end

end A033504.P7871292087868136552

namespace A033504

/-- `(n+1)/2*A068551(n+1)` -/
def P7871292087868136552.Spec : Prop :=
  ∀ n, P7871292087868136552.a n = (A033504 n : ℚ)

end A033504

/-! ## A033504.P3614260574127023493

`(n+1)*A007008(2*n+3)`
-/

namespace A033504.P3614260574127023493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007008 (2 * n + 3)

end

end A033504.P3614260574127023493

namespace A033504

/-- `(n+1)*A007008(2*n+3)` -/
def P3614260574127023493.Spec : Prop :=
  ∀ n, P3614260574127023493.a n = A033504 n

end A033504

/-! ## A033504.P13656237269140340206

`lcm(n+1, A130783(2*n+1))`
-/

namespace A033504.P13656237269140340206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A130783 (2 * n + 1))

end

end A033504.P13656237269140340206

namespace A033504

/-- `lcm(n+1, A130783(2*n+1))` -/
def P13656237269140340206.Spec : Prop :=
  ∀ n, (P13656237269140340206.a n : ℤ) = A033504 n

end A033504

/-! ## A033504.P5244989538246256044

`record[A130783(A130727(n))]`
-/

namespace A033504.P5244989538246256044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (A130727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033504.P5244989538246256044

namespace A033504

/-- `record[A130783(A130727(n))]` -/
def P5244989538246256044.Spec : Prop :=
  ∀ n, P5244989538246256044.a n = A033504 n

end A033504

/-! ## A033504.P17703895339058410192

`A002699(n+1)-A002457(n)`
-/

namespace A033504.P17703895339058410192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 (n + 1) - A002457 n

end

end A033504.P17703895339058410192

namespace A033504

/-- `A002699(n+1)-A002457(n)` -/
def P17703895339058410192.Spec : Prop :=
  ∀ n, P17703895339058410192.a n = A033504 n

end A033504

/-! ## A033504.P3009692558281367511

`A153338(n+1)+∑[A081039(n)]`
-/

namespace A033504.P3009692558281367511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153338 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033504.P3009692558281367511

namespace A033504

/-- `A153338(n+1)+∑[A081039(n)]` -/
def P3009692558281367511.Spec : Prop :=
  ∀ n, P3009692558281367511.a n = A033504 n

end A033504

/-! ## A033504.P11087669500159763520

`A003583(n+1)-A011782(n+2)²`
-/

namespace A033504.P11087669500159763520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003583 (n + 1) - A011782 (n + 2) ^ 2

end

end A033504.P11087669500159763520

namespace A033504

/-- `A003583(n+1)-A011782(n+2)²` -/
def P11087669500159763520.Spec : Prop :=
  ∀ n, P11087669500159763520.a n = A033504 n

end A033504

/-! ## A033504.P16476863495302563385

`and(-A130782(n), A130783(2*n+1))`
-/

namespace A033504.P16476863495302563385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A130782 n) (A130783 (2 * n + 1))

end

end A033504.P16476863495302563385

namespace A033504

/-- `and(-A130782(n), A130783(2*n+1))` -/
def P16476863495302563385.Spec : Prop :=
  ∀ n, P16476863495302563385.a n = A033504 n

end A033504

/-! ## A033504.P5296772952867390524

`A153335(2*n+1)+A002697(n+1)`
-/

namespace A033504.P5296772952867390524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (2 * n + 1) + A002697 (n + 1)

end

end A033504.P5296772952867390524

namespace A033504

/-- `A153335(2*n+1)+A002697(n+1)` -/
def P5296772952867390524.Spec : Prop :=
  ∀ n, P5296772952867390524.a n = A033504 n

end A033504

/-! ## A033504.P12627879577121124382

`A002699(n+1)-A056040(2*n+1)`
-/

namespace A033504.P12627879577121124382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 (n + 1) - A056040 (2 * n + 1)

end

end A033504.P12627879577121124382

namespace A033504

/-- `A002699(n+1)-A056040(2*n+1)` -/
def P12627879577121124382.Spec : Prop :=
  ∀ n, P12627879577121124382.a n = A033504 n

end A033504

/-! ## A033504.P2964872862748442005

`A100511(n+1)-A088662(2*n+1)`
-/

namespace A033504.P2964872862748442005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100511 (n + 1) - A088662 (2 * n + 1)

end

end A033504.P2964872862748442005

namespace A033504

/-- `A100511(n+1)-A088662(2*n+1)` -/
def P2964872862748442005.Spec : Prop :=
  ∀ n, P2964872862748442005.a n = A033504 n

end A033504

/-! ## A033504.P13081178000611052646

`A003583(n+1)-A011782(2*n+3)`
-/

namespace A033504.P13081178000611052646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003583 (n + 1) - A011782 (2 * n + 3)

end

end A033504.P13081178000611052646

namespace A033504

/-- `A003583(n+1)-A011782(2*n+3)` -/
def P13081178000611052646.Spec : Prop :=
  ∀ n, P13081178000611052646.a n = A033504 n

end A033504

/-! ## A033504.P8131076233075092603

`2*(A002697(n+1)-A002457(n)/2)`
-/

namespace A033504.P8131076233075092603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A002697 (n + 1) : ℚ) - (A002457 n : ℚ) / 2)

end

end A033504.P8131076233075092603

namespace A033504

/-- `2*(A002697(n+1)-A002457(n)/2)` -/
def P8131076233075092603.Spec : Prop :=
  ∀ n, P8131076233075092603.a n = (A033504 n : ℚ)

end A033504

/-!
# A033505: Expansion of 1/(1 - 3*x - x^2 + x^3).

The programs for A033505, the canonical program `A033505.P10349863168395895412` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033505 has offset 0).

The definition of A033505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+x^3))` (program `A033505.P10349863168395895412`, by `A033505.P10349863168395895412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033505.P10349863168395895412

`ogf(1/(1-3x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033505

/-- `ogf(1/(1-3x-x^2+x^3))` -/
def P10349863168395895412.Spec : Prop :=
  ∀ n, P10349863168395895412.a n = A033505 n

theorem P10349863168395895412.correct : P10349863168395895412.Spec := by
  intro n
  simp only [A033505]

end A033505

/-! ## A033505.P11408357037139427229

`3*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A033505.P11408357037139427229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  3 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A033505.P11408357037139427229

namespace A033505

/-- `3*a(n-1)+a(n-2)-a(n-3)` -/
def P11408357037139427229.Spec : Prop :=
  ∀ n, P11408357037139427229.a n = A033505 n

end A033505

/-! ## A033505.P7646595774830379096

`∑[A030186(n)]`
-/

namespace A033505.P7646595774830379096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033505.P7646595774830379096

namespace A033505

/-- `∑[A030186(n)]` -/
def P7646595774830379096.Spec : Prop :=
  ∀ n, P7646595774830379096.a n = A033505 n

end A033505

/-! ## A033505.P14429146323239463666

`A365967(Δ[n²])`
-/

namespace A033505.P14429146323239463666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365967 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033505.P14429146323239463666

namespace A033505

/-- `A365967(Δ[n²])` -/
def P14429146323239463666.Spec : Prop :=
  ∀ n, P14429146323239463666.a n = A033505 n

end A033505

/-! ## A033505.P3607771870986601680

`∑[A365967(2*n)]`
-/

namespace A033505.P3607771870986601680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033505.P3607771870986601680

namespace A033505

/-- `∑[A365967(2*n)]` -/
def P3607771870986601680.Spec : Prop :=
  ∀ n, P3607771870986601680.a n = A033505 n

end A033505

/-! ## A033505.P6348967203610532566

`A061534(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A033505.P6348967203610532566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A061534 n + a (n - 2)

end

end A033505.P6348967203610532566

namespace A033505

/-- `A061534(n)+a(n-2)` -/
def P6348967203610532566.Spec : Prop :=
  ∀ n, P6348967203610532566.a n = A033505 n

end A033505

/-! ## A033505.P7776945677684672302

`∑[A181301(n)+a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A033505.P7776945677684672302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A181301 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033505.P7776945677684672302

namespace A033505

/-- `∑[A181301(n)+a(n-2)]` -/
def P7776945677684672302.Spec : Prop :=
  ∀ n, P7776945677684672302.a n = A033505 n

end A033505

/-! ## A033505.P15073897692094095444

`A030186(n)+Δ[A287275(n)]`
-/

namespace A033505.P15073897692094095444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n + (f1 (n + 1) - f1 n)

end

end A033505.P15073897692094095444

namespace A033505

/-- `A030186(n)+Δ[A287275(n)]` -/
def P15073897692094095444.Spec : Prop :=
  ∀ n, P15073897692094095444.a n = A033505 n

end A033505

/-! ## A033505.P5367472644760463287

`Δ[A287275(n+1)]`
-/

namespace A033505.P5367472644760463287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033505.P5367472644760463287

namespace A033505

/-- `Δ[A287275(n+1)]` -/
def P5367472644760463287.Spec : Prop :=
  ∀ n, P5367472644760463287.a n = A033505 n

end A033505

/-! ## A033505.P686363093076108295

`Δ[A061534(n)/2]`
-/

namespace A033505.P686363093076108295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061534 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033505.P686363093076108295

namespace A033505

/-- `Δ[A061534(n)/2]` -/
def P686363093076108295.Spec : Prop :=
  ∀ n, P686363093076108295.a n = (A033505 n : ℚ)

end A033505

/-! ## A033505.P16808238976299910819

`A181301(n+1)/2`
-/

namespace A033505.P16808238976299910819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181301 (n + 1) : ℚ) / 2

end

end A033505.P16808238976299910819

namespace A033505

/-- `A181301(n+1)/2` -/
def P16808238976299910819.Spec : Prop :=
  ∀ n, P16808238976299910819.a n = (A033505 n : ℚ)

end A033505

/-! ## A033505.P7371005207894734797

`A287275(n+2)-A287275(n+1)`
-/

namespace A033505.P7371005207894734797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 2) - A287275 (n + 1)

end

end A033505.P7371005207894734797

namespace A033505

/-- `A287275(n+2)-A287275(n+1)` -/
def P7371005207894734797.Spec : Prop :=
  ∀ n, P7371005207894734797.a n = A033505 n

end A033505

/-! ## A033505.P11789305170788979638

`A181301(n+1)-A365967(2*n+1)`
-/

namespace A033505.P11789305170788979638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (n + 1) - A365967 (2 * n + 1)

end

end A033505.P11789305170788979638

namespace A033505

/-- `A181301(n+1)-A365967(2*n+1)` -/
def P11789305170788979638.Spec : Prop :=
  ∀ n, P11789305170788979638.a n = A033505 n

end A033505

/-! ## A033505.P12663624447667451042

`A181301(n+2)-A183712(n+1)`
-/

namespace A033505.P12663624447667451042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (n + 2) - A183712 (n + 1)

end

end A033505.P12663624447667451042

namespace A033505

/-- `A181301(n+2)-A183712(n+1)` -/
def P12663624447667451042.Spec : Prop :=
  ∀ n, P12663624447667451042.a n = A033505 n

end A033505

/-! ## A033505.P1780562659411851657

`A220563(n+2)-(A316726(n)+A030186(n+1))`
-/

namespace A033505.P1780562659411851657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220563 (n + 2) - (A316726 n + A030186 (n + 1))

end

end A033505.P1780562659411851657

namespace A033505

/-- `A220563(n+2)-(A316726(n)+A030186(n+1))` -/
def P1780562659411851657.Spec : Prop :=
  ∀ n, P1780562659411851657.a n = A033505 n

end A033505

/-! ## A033505.P2654132501481806678

`A183712(n+1)-A030186(n+1)-A030186(n+1)`
-/

namespace A033505.P2654132501481806678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183712 (n + 1) - A030186 (n + 1) - A030186 (n + 1)

end

end A033505.P2654132501481806678

namespace A033505

/-- `A183712(n+1)-A030186(n+1)-A030186(n+1)` -/
def P2654132501481806678.Spec : Prop :=
  ∀ n, P2654132501481806678.a n = A033505 n

end A033505

/-!
# A033506: Number of matchings in graph P_{3} X P_{n}.

The programs for A033506, there is no canonical definition to state claims against.
-/

/-! ## A033506.P12956418058874179553

`A262685(A287814(n))`
-/

namespace A033506.P12956418058874179553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262685 (A287814 n).toNat

end

end A033506.P12956418058874179553

/-!
# A033507: Number of matchings in graph P_{4} X P_{n}.

The programs for A033507, there is no canonical definition to state claims against.
-/

/-! ## A033507.P7806483187689747316

`A210662(∑[abs(1-A213723(3*n))!])`
-/

namespace A033507.P7806483187689747316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - A213723 (3 * n)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033507.P7806483187689747316

/-!
# A033508: Number of matchings in graph P_{5} X P_{n}.

The programs for A033508, there is no canonical definition to state claims against.
-/

/-! ## A033508.P2278309119320215347

`A210662(A047843(n)^A097546(n))`
-/

namespace A033508.P2278309119320215347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (SequenceMachineLib.roundAway ((A047843 n : ℚ) ^ (A097546 n : ℤ))).toNat

end

end A033508.P2278309119320215347

/-! ## A033508.P16806625392362725069

`A210662(A047843(n)^A126208(n))`
-/

namespace A033508.P16806625392362725069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210662 (SequenceMachineLib.roundAway ((A047843 n : ℚ) ^ (A126208 n : ℤ))).toNat

end

end A033508.P16806625392362725069

/-!
# A033515: Number of matchings in graph C_{3} X P_{n}.

The programs for A033515, the canonical program `A033515.P9797754617869766935` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033515 has offset 0).

The definition of A033515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033515.P9797754617869766935

`6*a(n-1)+9*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=32, a(3)=228`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033515

/-- `6*a(n-1)+9*a(n-2)-a(n-4)` -/
def P9797754617869766935.Spec : Prop :=
  ∀ n, P9797754617869766935.a n = A033515 n

theorem P9797754617869766935.correct : P9797754617869766935.Spec := by
  intro n
  simp only [A033515]

end A033515

/-! ## A033515.P11196837930879954629

`A287428(A152947(n+1)+A062545(n))`
-/

namespace A033515.P11196837930879954629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 (A152947 (n + 1) + A062545 n).toNat

end

end A033515.P11196837930879954629

namespace A033515

/-- `A287428(A152947(n+1)+A062545(n))` -/
def P11196837930879954629.Spec : Prop :=
  ∀ n, P11196837930879954629.a n = A033515 n

end A033515

/-!
# A033516: Number of matchings in graph C_{4} X P_{n}.

The programs for A033516, there is no canonical definition to state claims against.
-/

/-! ## A033516.P13013682094321629449

`record[gcd(A287417(n), A287428(n+5))]`
-/

namespace A033516.P13013682094321629449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287417 n) (A287428 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033516.P13013682094321629449

/-!
# A033536: Cubes of Catalan numbers (A000108).

The programs for A033536, the canonical program `A033536.P213110946454861906` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033536 has offset 0).

The definition of A033536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033536.P17083197113042760266

`(C(2*n, n)/(n+1))^3`
-/

namespace A033536.P17083197113042760266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A033536.P17083197113042760266

namespace A033536

/-- `(C(2*n, n)/(n+1))^3` -/
def P17083197113042760266.Spec : Prop :=
  ∀ n, P17083197113042760266.a n = (A033536 n : ℚ)

end A033536

/-! ## A033536.P213110946454861906

`A000108(n)^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033536

/-- `A000108(n)^3` -/
def P213110946454861906.Spec : Prop :=
  ∀ n, P213110946454861906.a n = A033536 n

theorem P213110946454861906.correct : P213110946454861906.Spec := by
  intro n
  simp only [A033536]

end A033536

/-! ## A033536.P16906660084707989046

`abs(A168491(n)^3)`
-/

namespace A033536.P16906660084707989046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n ^ 3|

end

end A033536.P16906660084707989046

namespace A033536

/-- `abs(A168491(n)^3)` -/
def P16906660084707989046.Spec : Prop :=
  ∀ n, P16906660084707989046.a n = A033536 n

end A033536

/-! ## A033536.P313264678599958672

`A008313(n²)^3`
-/

namespace A033536.P313264678599958672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (n ^ 2) ^ 3

end

end A033536.P313264678599958672

namespace A033536

/-- `A008313(n²)^3` -/
def P313264678599958672.Spec : Prop :=
  ∀ n, P313264678599958672.a n = A033536 n

end A033536

/-! ## A033536.P1772056858149090362

`A172414(n²)^3`
-/

namespace A033536.P1772056858149090362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172414 (n ^ 2) ^ 3

end

end A033536.P1772056858149090362

namespace A033536

/-- `A172414(n²)^3` -/
def P1772056858149090362.Spec : Prop :=
  ∀ n, P1772056858149090362.a n = A033536 n

end A033536

/-! ## A033536.P2853556346843890491

`A236406(n²)^3`
-/

namespace A033536.P2853556346843890491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236406 (n ^ 2) ^ 3

end

end A033536.P2853556346843890491

namespace A033536

/-- `A236406(n²)^3` -/
def P2853556346843890491.Spec : Prop :=
  ∀ n, P2853556346843890491.a n = A033536 n

end A033536

/-! ## A033536.P13992191007218125551

`A259992(n²)^3`
-/

namespace A033536.P13992191007218125551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259992 (n ^ 2) ^ 3

end

end A033536.P13992191007218125551

namespace A033536

/-- `A259992(n²)^3` -/
def P13992191007218125551.Spec : Prop :=
  ∀ n, P13992191007218125551.a n = A033536 n

end A033536

/-! ## A033536.P11131392044536889849

`sqrt(A001246(n))^3`
-/

namespace A033536.P11131392044536889849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001246 n : ℝ) ^ 3

end

end A033536.P11131392044536889849

namespace A033536

/-- `sqrt(A001246(n))^3` -/
def P11131392044536889849.Spec : Prop :=
  ∀ n, P11131392044536889849.a n = (A033536 n : ℝ)

end A033536

/-! ## A033536.P6442248216293306335

`A028364(∑[n])^3`
-/

namespace A033536.P6442248216293306335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A033536.P6442248216293306335

namespace A033536

/-- `A028364(∑[n])^3` -/
def P6442248216293306335.Spec : Prop :=
  ∀ n, P6442248216293306335.a n = A033536 n

end A033536

/-! ## A033536.P16392652038753030626

`A033820(∑[n])^3`
-/

namespace A033536.P16392652038753030626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A033536.P16392652038753030626

namespace A033536

/-- `A033820(∑[n])^3` -/
def P16392652038753030626.Spec : Prop :=
  ∀ n, P16392652038753030626.a n = A033536 n

end A033536

/-!
# A033537: a(n) = n*(2*n+5).

The programs for A033537, the canonical program `A033537.P12257875096179782365` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033537 has offset 0).

The definition of A033537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+5)` (program `A033537.P12257875096179782365`, by `A033537.P12257875096179782365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033537.P12257875096179782365

`n*(2*n+5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033537

/-- `n*(2*n+5)` -/
def P12257875096179782365.Spec : Prop :=
  ∀ n, (P12257875096179782365.a n : ℤ) = A033537 n

theorem P12257875096179782365.correct : P12257875096179782365.Spec := by
  intro n
  simp only [A033537]

end A033537

/-! ## A033537.P16702609517687538472

`∑[record[xor(3, n+3)]]`
-/

namespace A033537.P16702609517687538472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033537.P16702609517687538472

namespace A033537

/-- `∑[record[xor(3, n+3)]]` -/
def P16702609517687538472.Spec : Prop :=
  ∀ n, (P16702609517687538472.a n : ℤ) = A033537 n

end A033537

/-! ## A033537.P1902624543410226009

`∑[record[xor(3, n)]]-3`
-/

namespace A033537.P1902624543410226009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A033537.P1902624543410226009

namespace A033537

/-- `∑[record[xor(3, n)]]-3` -/
def P1902624543410226009.Spec : Prop :=
  ∀ n, P1902624543410226009.a n = A033537 n

end A033537

/-! ## A033537.P3466089379740880840

`∑[or(3, 4*n)]-3`
-/

namespace A033537.P3466089379740880840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A033537.P3466089379740880840

namespace A033537

/-- `∑[or(3, 4*n)]-3` -/
def P3466089379740880840.Spec : Prop :=
  ∀ n, P3466089379740880840.a n = A033537 n

end A033537

/-! ## A033537.P3101151915710459871

`∑[xor(3, 4*n)]-3`
-/

namespace A033537.P3101151915710459871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A033537.P3101151915710459871

namespace A033537

/-- `∑[xor(3, 4*n)]-3` -/
def P3101151915710459871.Spec : Prop :=
  ∀ n, P3101151915710459871.a n = A033537 n

end A033537

/-! ## A033537.P5097358724982565540

`∑[a(n-1)+4]` with `a(0)=0, a(1)=7`
-/

namespace A033537.P5097358724982565540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033537.P5097358724982565540

namespace A033537

/-- `∑[a(n-1)+4]` -/
def P5097358724982565540.Spec : Prop :=
  ∀ n, (P5097358724982565540.a n : ℤ) = A033537 n

end A033537

/-! ## A033537.P492496955637192704

`C(n+3+n, 2)-3`
-/

namespace A033537.P492496955637192704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3 + n) 2 : ℤ) - 3

end

end A033537.P492496955637192704

namespace A033537

/-- `C(n+3+n, 2)-3` -/
def P492496955637192704.Spec : Prop :=
  ∀ n, P492496955637192704.a n = A033537 n

end A033537

/-! ## A033537.P16851974866799582190

`∑[ogf((7x-3x^2)/(1-2x+x^2))]`
-/

namespace A033537.P16851974866799582190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033537.P16851974866799582190

namespace A033537

/-- `∑[ogf((7x-3x^2)/(1-2x+x^2))]` -/
def P16851974866799582190.Spec : Prop :=
  ∀ n, P16851974866799582190.a n = A033537 n

end A033537

/-! ## A033537.P8166416634678380664

`ogf((7x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033537.P8166416634678380664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -3] [1, -3, 3, -1] n

end

end A033537.P8166416634678380664

namespace A033537

/-- `ogf((7x-3x^2)/(1-3x+3x^2-x^3))` -/
def P8166416634678380664.Spec : Prop :=
  ∀ n, P8166416634678380664.a n = A033537 n

end A033537

/-! ## A033537.P9477260422314520175

`∑[lt[1, val(n+1, 2)]]-3`
-/

namespace A033537.P9477260422314520175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A033537.P9477260422314520175

namespace A033537

/-- `∑[lt[1, val(n+1, 2)]]-3` -/
def P9477260422314520175.Spec : Prop :=
  ∀ n, P9477260422314520175.a n = A033537 n

end A033537

/-! ## A033537.P1021593371950404377

`∑[8*n]-C(2*n, 2)`
-/

namespace A033537.P1021593371950404377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

end

end A033537.P1021593371950404377

namespace A033537

/-- `∑[8*n]-C(2*n, 2)` -/
def P1021593371950404377.Spec : Prop :=
  ∀ n, P1021593371950404377.a n = A033537 n

end A033537

/-! ## A033537.P5188748212844319423

`∑[lt[3, xor(n, n+1)]]-3`
-/

namespace A033537.P5188748212844319423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A033537.P5188748212844319423

namespace A033537

/-- `∑[lt[3, xor(n, n+1)]]-3` -/
def P5188748212844319423.Spec : Prop :=
  ∀ n, P5188748212844319423.a n = A033537 n

end A033537

/-! ## A033537.P1475019382969498336

`record[2*n*(n-3)]-n`
-/

namespace A033537.P1475019382969498336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A033537.P1475019382969498336

namespace A033537

/-- `record[2*n*(n-3)]-n` -/
def P1475019382969498336.Spec : Prop :=
  ∀ n, P1475019382969498336.a n = A033537 n

end A033537

/-! ## A033537.P1145673508994837334

`lcm(n+1, n+3+n)-3`
-/

namespace A033537.P1145673508994837334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 3 + n) : ℤ) - 3

end

end A033537.P1145673508994837334

namespace A033537

/-- `lcm(n+1, n+3+n)-3` -/
def P1145673508994837334.Spec : Prop :=
  ∀ n, P1145673508994837334.a n = A033537 n

end A033537

/-! ## A033537.P12807421411428291565

`3*n-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A033537.P12807421411428291565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033537.P12807421411428291565

namespace A033537

/-- `3*n-∑[a(n-1)-4]` -/
def P12807421411428291565.Spec : Prop :=
  ∀ n, P12807421411428291565.a n = A033537 n

end A033537

/-! ## A033537.P18279381580790314654

`n-∑[a(n-1)-4]-2` with `a(0)=-2`
-/

namespace A033537.P18279381580790314654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A033537.P18279381580790314654

namespace A033537

/-- `n-∑[a(n-1)-4]-2` -/
def P18279381580790314654.Spec : Prop :=
  ∀ n, P18279381580790314654.a n = A033537 n

end A033537

/-! ## A033537.P4217079131316254784

`3-(n-5*n-a(n-1))` with `a(0)=0`
-/

namespace A033537.P4217079131316254784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - ((n : ℤ) - (5 * n : ℤ) - a (n - 1))

end

end A033537.P4217079131316254784

namespace A033537

/-- `3-(n-5*n-a(n-1))` -/
def P4217079131316254784.Spec : Prop :=
  ∀ n, P4217079131316254784.a n = A033537 n

theorem P4217079131316254784.correct : P4217079131316254784.Spec := by
  intro n
  induction n with
  | zero => simp [A033537, A033537.P4217079131316254784.a, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033537, Nat.add_sub_cancel, A033537.P4217079131316254784.a, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033537

/-! ## A033537.P11565967944296381797

`n-2+record[(n-1)²]+(n+1)²`
-/

namespace A033537.P11565967944296381797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ))

end

end A033537.P11565967944296381797

namespace A033537

/-- `n-2+record[(n-1)²]+(n+1)²` -/
def P11565967944296381797.Spec : Prop :=
  ∀ n, P11565967944296381797.a n = A033537 n

end A033537

/-! ## A033537.P10045828169039994897

`eq[n-3, and(n, n-3)]+a(n-1)` with `a(0)=0`
-/

namespace A033537.P10045828169039994897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + a (n - 1)

end

end A033537.P10045828169039994897

namespace A033537

/-- `eq[n-3, and(n, n-3)]+a(n-1)` -/
def P10045828169039994897.Spec : Prop :=
  ∀ n, (P10045828169039994897.a n : ℤ) = A033537 n

end A033537

/-! ## A033537.P17547827061349882539

`a(n-1)+a(n-1)+4-a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A033537.P17547827061349882539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + (a (n - 1) + (4 - a (n - 2)))

end

end A033537.P17547827061349882539

namespace A033537

/-- `a(n-1)+a(n-1)+4-a(n-2)` -/
def P17547827061349882539.Spec : Prop :=
  ∀ n, P17547827061349882539.a n = A033537 n

theorem P17547827061349882539.correct : P17547827061349882539.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A033537, Nat.add_sub_cancel, A033537.P17547827061349882539.a, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A033537, Nat.add_sub_cancel, A033537.P17547827061349882539.a, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A033537

/-!
# A033538: a(0)=1, a(1)=1, a(n) = 3*a(n-1) + a(n-2) + 1.

The programs for A033538, the canonical program `A033538.P7428243990660546962` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033538 has offset 0).

The definition of A033538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*a(n-1)+a(n-2)` (program `A033538.P7428243990660546962`, by `A033538.P7428243990660546962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033538.P7428243990660546962

`1+3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033538

/-- `1+3*a(n-1)+a(n-2)` -/
def P7428243990660546962.Spec : Prop :=
  ∀ n, (P7428243990660546962.a n : ℤ) = A033538 n

theorem P7428243990660546962.correct : P7428243990660546962.Spec := by
  intro n
  simp only [A033538]

end A033538

/-! ## A033538.P16525554320285094013

`3*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033538.P16525554320285094013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) + a (n - 2) + 1

end

end A033538.P16525554320285094013

namespace A033538

/-- `3*a(n-1)+a(n-2)+1` -/
def P16525554320285094013.Spec : Prop :=
  ∀ n, (P16525554320285094013.a n : ℤ) = A033538 n

theorem P16525554320285094013.correct : P16525554320285094013.Spec := by
  intro n
  simp only [A033538, Nat.add_sub_cancel, A033538.P16525554320285094013.a, A033538.P7428243990660546962.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033538

/-! ## A033538.P15074609743928538811

`(4*A006190(n+1)-8*A006190(n)-1)/3`
-/

namespace A033538.P15074609743928538811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A006190 (n + 1) - 8 * A006190 n - 1 : ℚ) / 3

end

end A033538.P15074609743928538811

namespace A033538

/-- `(4*A006190(n+1)-8*A006190(n)-1)/3` -/
def P15074609743928538811.Spec : Prop :=
  ∀ n, P15074609743928538811.a n = (A033538 n : ℚ)

end A033538

/-! ## A033538.P8994640238869041912

`ogf((1-3x+3x^2)/(1-4x+2x^2+x^3))`
-/

namespace A033538.P8994640238869041912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -4, 2, 1] n

end

end A033538.P8994640238869041912

namespace A033538

/-- `ogf((1-3x+3x^2)/(1-4x+2x^2+x^3))` -/
def P8994640238869041912.Spec : Prop :=
  ∀ n, P8994640238869041912.a n = A033538 n

end A033538

/-! ## A033538.P11735754171961555087

`4-(3*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A033538.P11735754171961555087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A033538.P11735754171961555087

namespace A033538

/-- `4-(3*(1-a(n-1))-a(n-2))` -/
def P11735754171961555087.Spec : Prop :=
  ∀ n, P11735754171961555087.a n = A033538 n

end A033538

/-! ## A033538.P13698624732420769384

`a(n-2)+a(n-1)/(1-2/3)+1` with `a(0)=1, a(1)=1`
-/

namespace A033538.P13698624732420769384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3) + 1

end

end A033538.P13698624732420769384

namespace A033538

/-- `a(n-2)+a(n-1)/(1-2/3)+1` -/
def P13698624732420769384.Spec : Prop :=
  ∀ n, P13698624732420769384.a n = (A033538 n : ℚ)

end A033538

/-! ## A033538.P15604840228414402793

`a(n-1)+1+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A033538.P15604840228414402793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A033538.P15604840228414402793

namespace A033538

/-- `a(n-1)+1+a(n-1)+a(n-1)+a(n-2)` -/
def P15604840228414402793.Spec : Prop :=
  ∀ n, (P15604840228414402793.a n : ℤ) = A033538 n

theorem P15604840228414402793.correct : P15604840228414402793.Spec := by
  intro n
  simp only [A033538, Nat.add_sub_cancel, A033538.P15604840228414402793.a, A033538.P7428243990660546962.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033538

/-! ## A033538.P17904970444452554637

`A006190(abs(1-n))+∑[A006190(n)]`
-/

namespace A033538.P17904970444452554637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 |1 - (n : ℤ)|.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033538.P17904970444452554637

namespace A033538

/-- `A006190(abs(1-n))+∑[A006190(n)]` -/
def P17904970444452554637.Spec : Prop :=
  ∀ n, P17904970444452554637.a n = A033538 n

end A033538

/-! ## A033538.P6784489645890004769

`∑[A006190(n+1)]-3*A006190(n)`
-/

namespace A033538.P6784489645890004769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 * A006190 n

end

end A033538.P6784489645890004769

namespace A033538

/-- `∑[A006190(n+1)]-3*A006190(n)` -/
def P6784489645890004769.Spec : Prop :=
  ∀ n, P6784489645890004769.a n = A033538 n

end A033538

/-!
# A033539: a(0)=1, a(1)=1, a(2)=1, a(n) = 2*a(n-1) + a(n-2) + 1.

The programs for A033539, the canonical program `A033539.P17746699228737138609` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033539 has offset 0).

The definition of A033539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*a(n-1)+a(n-2)` (program `A033539.P17746699228737138609`, by `A033539.P17746699228737138609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033539.P17746699228737138609

`1+2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033539

/-- `1+2*a(n-1)+a(n-2)` -/
def P17746699228737138609.Spec : Prop :=
  ∀ n, (P17746699228737138609.a n : ℤ) = A033539 n

theorem P17746699228737138609.correct : P17746699228737138609.Spec := by
  intro n
  simp only [A033539]

end A033539

/-! ## A033539.P4675466106151406267

`2*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033539.P4675466106151406267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) + 1

end

end A033539.P4675466106151406267

namespace A033539

/-- `2*a(n-1)+a(n-2)+1` -/
def P4675466106151406267.Spec : Prop :=
  ∀ n, (P4675466106151406267.a n : ℤ) = A033539 n

theorem P4675466106151406267.correct : P4675466106151406267.Spec := by
  intro n
  simp only [A033539, Nat.add_sub_cancel, A033539.P4675466106151406267.a, A033539.P17746699228737138609.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033539

/-! ## A033539.P13661954343630154593

`ogf((1-2x-x^2+3x^3)/(1-3x+x^2+x^3))`
-/

namespace A033539.P13661954343630154593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 3] [1, -3, 1, 1] n

end

end A033539.P13661954343630154593

namespace A033539

/-- `ogf((1-2x-x^2+3x^3)/(1-3x+x^2+x^3))` -/
def P13661954343630154593.Spec : Prop :=
  ∀ n, P13661954343630154593.a n = A033539 n

end A033539

/-! ## A033539.P4167139320269479175

`2*a(n-1)-xor(-1, a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A033539.P4167139320269479175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A033539.P4167139320269479175

namespace A033539

/-- `2*a(n-1)-xor(-1, a(n-2))` -/
def P4167139320269479175.Spec : Prop :=
  ∀ n, P4167139320269479175.a n = A033539 n

end A033539

/-! ## A033539.P12591701961265013795

`3-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A033539.P12591701961265013795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A033539.P12591701961265013795

namespace A033539

/-- `3-(2*(1-a(n-1))-a(n-2))` -/
def P12591701961265013795.Spec : Prop :=
  ∀ n, P12591701961265013795.a n = A033539 n

end A033539

/-! ## A033539.P17101097163360729100

`a(n-1)+1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A033539.P17101097163360729100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 2))

end

end A033539.P17101097163360729100

namespace A033539

/-- `a(n-1)+1+a(n-1)+a(n-2)` -/
def P17101097163360729100.Spec : Prop :=
  ∀ n, (P17101097163360729100.a n : ℤ) = A033539 n

theorem P17101097163360729100.correct : P17101097163360729100.Spec := by
  intro n
  simp only [A033539, Nat.add_sub_cancel, A033539.P17101097163360729100.a, A033539.P17746699228737138609.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033539

/-! ## A033539.P18093122495236383720

`a(n-1)-(xor(-1, a(n-1))-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A033539.P18093122495236383720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (Int.xor (-1) (a (n - 1)) - a (n - 2))

end

end A033539.P18093122495236383720

namespace A033539

/-- `a(n-1)-(xor(-1, a(n-1))-a(n-2))` -/
def P18093122495236383720.Spec : Prop :=
  ∀ n, P18093122495236383720.a n = A033539 n

end A033539

/-! ## A033539.P1023750159522212029

`3*∑[A000129(A004275(n)-n)]+1`
-/

namespace A033539.P1023750159522212029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A033539.P1023750159522212029

namespace A033539

/-- `3*∑[A000129(A004275(n)-n)]+1` -/
def P1023750159522212029.Spec : Prop :=
  ∀ n, P1023750159522212029.a n = A033539 n

end A033539

/-! ## A033539.P6851233291083983020

`A266504(A004273(n))-A171842(n)`
-/

namespace A033539.P6851233291083983020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A004273 n).toNat - A171842 n

end

end A033539.P6851233291083983020

namespace A033539

/-- `A266504(A004273(n))-A171842(n)` -/
def P6851233291083983020.Spec : Prop :=
  ∀ n, P6851233291083983020.a n = A033539 n

end A033539

/-! ## A033539.P15474972368052163261

`∑[A221173(n+1)]%A221172(n+1)`
-/

namespace A033539.P15474972368052163261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A221172 (n + 1))

end

end A033539.P15474972368052163261

namespace A033539

/-- `∑[A221173(n+1)]%A221172(n+1)` -/
def P15474972368052163261.Spec : Prop :=
  ∀ n, P15474972368052163261.a n = A033539 n

end A033539

/-!
# A033540: a(n+1) = n*(a(n) + 1) for n >= 1, a(1) = 1.

The programs for A033540, the canonical program `A033540.P6769842975327938376` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033540 has offset 1).

The definition of A033540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033540.P10609222301937064998

`n*(a(n-1)+1)` with `a(0)=1`
-/

namespace A033540.P10609222301937064998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + 1)

end

end A033540.P10609222301937064998

namespace A033540

/-- `n*(a(n-1)+1)` -/
def P10609222301937064998.Spec : Prop :=
  ∀ n, (P10609222301937064998.a n : ℤ) = A033540 (n + 1)

end A033540

/-! ## A033540.P6769842975327938376

`n!+A007526(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033540

/-- `n!+A007526(n)` -/
def P6769842975327938376.Spec : Prop :=
  ∀ n, P6769842975327938376.a n = A033540 (n + 1)

theorem P6769842975327938376.correct : P6769842975327938376.Spec := by
  intro n
  simp only [A033540, Nat.add_sub_cancel]

end A033540

/-! ## A033540.P15888249518882743774

`n*(1-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033540.P15888249518882743774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A033540.P15888249518882743774

namespace A033540

/-- `n*(1-floor(-a(n-1)))` -/
def P15888249518882743774.Spec : Prop :=
  ∀ n, P15888249518882743774.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P17690478566440618351

`n*(1-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A033540.P17690478566440618351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A033540.P17690478566440618351

namespace A033540

/-- `n*(1-ceil(-a(n-1)))` -/
def P17690478566440618351.Spec : Prop :=
  ∀ n, P17690478566440618351.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P12491594219872036373

`abs(n*xor(-1, a(n-1)))` with `a(0)=1`
-/

namespace A033540.P12491594219872036373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) * Int.xor (-1) (a (n - 1))|

end

end A033540.P12491594219872036373

namespace A033540

/-- `abs(n*xor(-1, a(n-1)))` -/
def P12491594219872036373.Spec : Prop :=
  ∀ n, P12491594219872036373.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P37416021041254266

`n*(1-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A033540.P37416021041254266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (1 - (-a (n - 1)))

end

end A033540.P37416021041254266

namespace A033540

/-- `n*(1-round(-a(n-1)))` -/
def P37416021041254266.Spec : Prop :=
  ∀ n, P37416021041254266.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P9938360007140491579

`-(n*xor(-1, a(n-1)))` with `a(0)=1`
-/

namespace A033540.P9938360007140491579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -((n : ℤ) * Int.xor (-1) (a (n - 1)))

end

end A033540.P9938360007140491579

namespace A033540

/-- `-(n*xor(-1, a(n-1)))` -/
def P9938360007140491579.Spec : Prop :=
  ∀ n, P9938360007140491579.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P4777103318627913823

`(a(n-1)+1)/n^(-1)` with `a(0)=1`
-/

namespace A033540.P4777103318627913823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A033540.P4777103318627913823

namespace A033540

/-- `(a(n-1)+1)/n^(-1)` -/
def P4777103318627913823.Spec : Prop :=
  ∀ n, P4777103318627913823.a n = (A033540 (n + 1) : ℚ)

end A033540

/-! ## A033540.P12240727345956421793

`n*(2-floor(ϕ-a(n-1)))` with `a(0)=1`
-/

namespace A033540.P12240727345956421793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - ⌊Real.goldenRatio - (a (n - 1) : ℝ)⌋)

end

end A033540.P12240727345956421793

namespace A033540

/-- `n*(2-floor(ϕ-a(n-1)))` -/
def P12240727345956421793.Spec : Prop :=
  ∀ n, P12240727345956421793.a n = A033540 (n + 1)

end A033540

/-! ## A033540.P14845461964541951570

`n*(ϕ²-(ϕ-a(n-1)))` with `a(0)=1`
-/

namespace A033540.P14845461964541951570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℝ) * (Real.goldenRatio ^ 2 - (Real.goldenRatio - a (n - 1)))

end

end A033540.P14845461964541951570

namespace A033540

/-- `n*(ϕ²-(ϕ-a(n-1)))` -/
def P14845461964541951570.Spec : Prop :=
  ∀ n, P14845461964541951570.a n = (A033540 (n + 1) : ℝ)

end A033540

/-!
# A033542: a(n) = 2*(n^2)!* Product_{k = 1..n-1} k!/(n+k)!.

The programs for A033542, there is no canonical definition to state claims against.
-/

/-! ## A033542.P14480101465244866696

`lcm(n, A000142(n)*A067700(n))`
-/

namespace A033542.P14480101465244866696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000142 n * A067700 n)

end

end A033542.P14480101465244866696

/-! ## A033542.P5182495694659871512

`A000142(n)%A108078(n)*A067700(n)`
-/

namespace A033542.P5182495694659871512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n) (A108078 n) * A067700 n

end

end A033542.P5182495694659871512

/-!
# A033543: Expansion of (1 - sqrt((1-2*x)*(1-6*x)))/(2*x*(2-3*x)).

The programs for A033543, there is no canonical definition to state claims against.
-/

/-! ## A033543.P13770383775738453929

`A171515(∑[n])`
-/

namespace A033543.P13770383775738453929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033543.P13770383775738453929

/-! ## A033543.P18419123324325042919

`record[A171515(n)]`
-/

namespace A033543.P18419123324325042919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P18419123324325042919

/-! ## A033543.P12500488708387201919

`A124575(∑[n])`
-/

namespace A033543.P12500488708387201919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033543.P12500488708387201919

/-! ## A033543.P16038292281101365457

`record[A010054(n)*A124575(n)]`
-/

namespace A033543.P16038292281101365457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A124575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P16038292281101365457

/-! ## A033543.P2531572566565232585

`record[A124575(n)/A007318(n)]`
-/

namespace A033543.P2531572566565232585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124575 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P2531572566565232585

/-! ## A033543.P9653913712650513781

`record[A124575(n)/A013609(n)]`
-/

namespace A033543.P9653913712650513781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124575 n : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P9653913712650513781

/-! ## A033543.P6966513839536640094

`record[A124575(A161680(A057979(n)))]`
-/

namespace A033543.P6966513839536640094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (A161680 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P6966513839536640094

/-! ## A033543.P7874620569607095818

`lcm(A033999(n), A124575(A000217(n)))`
-/

namespace A033543.P7874620569607095818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A124575 (A000217 n).toNat)

end

end A033543.P7874620569607095818

/-! ## A033543.P17943382558407970947

`record[A124575(A161680(A256992(n+1)))]`
-/

namespace A033543.P17943382558407970947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (A161680 (A256992 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033543.P17943382558407970947

/-!
# A033544: Wiener number of n-hexagonal triangle.

The programs for A033544, the canonical program `A033544.P6149482118054031858` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033544 has offset 0).

The definition of A033544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033544.P6149482118054031858

`1/10*n*(n+1)*(4*n^3+36*n²+79*n+16)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033544

/-- `1/10*n*(n+1)*(4*n^3+36*n²+79*n+16)` -/
def P6149482118054031858.Spec : Prop :=
  ∀ n, P6149482118054031858.a n = (A033544 n : ℚ)

end A033544

/-! ## A033544.P1183216708258632361

`∑[A139273(∑[n]+n)-A014107(n)]`
-/

namespace A033544.P1183216708258632361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 (∑ j ∈ Finset.range (n + 1), f2 j + n) - A014107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P1183216708258632361

namespace A033544

/-- `∑[A139273(∑[n]+n)-A014107(n)]` -/
def P1183216708258632361.Spec : Prop :=
  ∀ n, P1183216708258632361.a n = A033544 n

end A033544

/-! ## A033544.P4509085560149860056

`∑[A000217(A139570(n))-A027468(n)]`
-/

namespace A033544.P4509085560149860056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A139570 n).toNat - A027468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P4509085560149860056

namespace A033544

/-- `∑[A000217(A139570(n))-A027468(n)]` -/
def P4509085560149860056.Spec : Prop :=
  ∀ n, P4509085560149860056.a n = A033544 n

end A033544

/-! ## A033544.P12767074464839938508

`∑[A014105(A028552(n))-A027468(n)]`
-/

namespace A033544.P12767074464839938508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A028552 n).toNat - A027468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P12767074464839938508

namespace A033544

/-- `∑[A014105(A028552(n))-A027468(n)]` -/
def P12767074464839938508.Spec : Prop :=
  ∀ n, P12767074464839938508.a n = A033544 n

end A033544

/-! ## A033544.P4853666315250440072

`∑[A130883(A028552(n))-A192136(n)]`
-/

namespace A033544.P4853666315250440072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 (A028552 n).toNat - A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P4853666315250440072

namespace A033544

/-- `∑[A130883(A028552(n))-A192136(n)]` -/
def P4853666315250440072.Spec : Prop :=
  ∀ n, P4853666315250440072.a n = A033544 n

end A033544

/-! ## A033544.P873832855762766728

`∑[A161680(A033537(n))+A055112(n)]`
-/

namespace A033544.P873832855762766728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A033537 n).toNat + A055112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P873832855762766728

namespace A033544

/-- `∑[A161680(A033537(n))+A055112(n)]` -/
def P873832855762766728.Spec : Prop :=
  ∀ n, P873832855762766728.a n = A033544 n

end A033544

/-! ## A033544.P13018964708231438459

`A161680((n+1)²)+∑[A161680(A033537(n))]`
-/

namespace A033544.P13018964708231438459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A033537 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n + 1) ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033544.P13018964708231438459

namespace A033544

/-- `A161680((n+1)²)+∑[A161680(A033537(n))]` -/
def P13018964708231438459.Spec : Prop :=
  ∀ n, P13018964708231438459.a n = A033544 n

end A033544

/-!
# A033547: Otto Haxel's guess for magic numbers of nuclear shells.

The programs for A033547, the canonical program `A033547.P17955662495528661415` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033547 has offset 0).

The definition of A033547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033547.P6403951631576580850

`n*(n²+5)/3`
-/

namespace A033547.P6403951631576580850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 5) : ℚ) / 3

end

end A033547.P6403951631576580850

namespace A033547

/-- `n*(n²+5)/3` -/
def P6403951631576580850.Spec : Prop :=
  ∀ n, P6403951631576580850.a n = (A033547 n : ℚ)

theorem P6403951631576580850.correct : P6403951631576580850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A033547, Nat.add_sub_cancel, A033547.P6403951631576580850.a, A033547.P17955662495528661415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A033547, Nat.add_sub_cancel, A033547.P6403951631576580850.a, A033547.P17955662495528661415.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A033547

/-! ## A033547.P17955662495528661415

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033547

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17955662495528661415.Spec : Prop :=
  ∀ n, P17955662495528661415.a n = A033547 n

theorem P17955662495528661415.correct : P17955662495528661415.Spec := by
  intro n
  simp only [A033547]

end A033547

/-! ## A033547.P15513013932498980472

`A046127(n+1)-2`
-/

namespace A033547.P15513013932498980472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 (n + 1) - 2

end

end A033547.P15513013932498980472

namespace A033547

/-- `A046127(n+1)-2` -/
def P15513013932498980472.Spec : Prop :=
  ∀ n, P15513013932498980472.a n = A033547 n

end A033547

/-! ## A033547.P4523480581837725781

`2*(∑[C(n, 2)]+n)`
-/

namespace A033547.P4523480581837725781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A033547.P4523480581837725781

namespace A033547

/-- `2*(∑[C(n, 2)]+n)` -/
def P4523480581837725781.Spec : Prop :=
  ∀ n, (P4523480581837725781.a n : ℤ) = A033547 n

end A033547

/-! ## A033547.P2752316638535937941

`2*(C(n+1, 3)+n)`
-/

namespace A033547.P2752316638535937941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 1) 3 + n)

end

end A033547.P2752316638535937941

namespace A033547

/-- `2*(C(n+1, 3)+n)` -/
def P2752316638535937941.Spec : Prop :=
  ∀ n, (P2752316638535937941.a n : ℤ) = A033547 n

end A033547

/-! ## A033547.P2062614058883607857

`∑[n²]-C(n, 2)+n`
-/

namespace A033547.P2062614058883607857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ) + (n : ℤ)

end

end A033547.P2062614058883607857

namespace A033547

/-- `∑[n²]-C(n, 2)+n` -/
def P2062614058883607857.Spec : Prop :=
  ∀ n, P2062614058883607857.a n = A033547 n

end A033547

/-! ## A033547.P8413384712475657759

`n-(C(n, 2)-∑[n²])`
-/

namespace A033547.P8413384712475657759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose n 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A033547.P8413384712475657759

namespace A033547

/-- `n-(C(n, 2)-∑[n²])` -/
def P8413384712475657759.Spec : Prop :=
  ∀ n, P8413384712475657759.a n = A033547 n

end A033547

/-! ## A033547.P12473904642414453867

`∑[lcm(n, n-1)+2]-2`
-/

namespace A033547.P12473904642414453867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A033547.P12473904642414453867

namespace A033547

/-- `∑[lcm(n, n-1)+2]-2` -/
def P12473904642414453867.Spec : Prop :=
  ∀ n, P12473904642414453867.a n = A033547 n

end A033547

/-! ## A033547.P14351768049270067056

`xor(-2, ∑[n-(n²+2)])`
-/

namespace A033547.P14351768049270067056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n ^ 2 + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033547.P14351768049270067056

namespace A033547

/-- `xor(-2, ∑[n-(n²+2)])` -/
def P14351768049270067056.Spec : Prop :=
  ∀ n, P14351768049270067056.a n = A033547 n

end A033547

/-! ## A033547.P8525168477984778066

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A033547.P8525168477984778066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033547.P8525168477984778066

namespace A033547

/-- `∑[∑[a(n-1)+2]]` -/
def P8525168477984778066.Spec : Prop :=
  ∀ n, (P8525168477984778066.a n : ℤ) = A033547 n

end A033547

/-! ## A033547.P1682321873406270244

`∑[∑[lcm(2, 2*(n-1))]]-2`
-/

namespace A033547.P1682321873406270244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A033547.P1682321873406270244

namespace A033547

/-- `∑[∑[lcm(2, 2*(n-1))]]-2` -/
def P1682321873406270244.Spec : Prop :=
  ∀ n, P1682321873406270244.a n = A033547 n

end A033547

/-! ## A033547.P3908380336819772949

`∑[∑[2*n-2%(n+1)]]`
-/

namespace A033547.P3908380336819772949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033547.P3908380336819772949

namespace A033547

/-- `∑[∑[2*n-2%(n+1)]]` -/
def P3908380336819772949.Spec : Prop :=
  ∀ n, P3908380336819772949.a n = A033547 n

end A033547

/-! ## A033547.P4405733635062668026

`∑[or(1, n²-n)]+n-1`
-/

namespace A033547.P4405733635062668026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A033547.P4405733635062668026

namespace A033547

/-- `∑[or(1, n²-n)]+n-1` -/
def P4405733635062668026.Spec : Prop :=
  ∀ n, P4405733635062668026.a n = A033547 n

end A033547

/-! ## A033547.P18171768978679818364

`∑[xor(1, n²-n)]+n-1`
-/

namespace A033547.P18171768978679818364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A033547.P18171768978679818364

namespace A033547

/-- `∑[xor(1, n²-n)]+n-1` -/
def P18171768978679818364.Spec : Prop :=
  ∀ n, P18171768978679818364.a n = A033547 n

end A033547

/-! ## A033547.P18236588013397798701

`∑[cot(Δ[acot(1-n)])]+n-1`
-/

namespace A033547.P18236588013397798701
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ) - 1

end

end A033547.P18236588013397798701

namespace A033547

/-- `∑[cot(Δ[acot(1-n)])]+n-1` -/
def P18236588013397798701.Spec : Prop :=
  ∀ n, P18236588013397798701.a n = (A033547 n : ℝ)

end A033547

/-! ## A033547.P5739981351424117434

`∑[cot(Δ[acot(1-n)])]-(1-n)`
-/

namespace A033547.P5739981351424117434
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (1 - (n : ℤ) : ℝ)

end

end A033547.P5739981351424117434

namespace A033547

/-- `∑[cot(Δ[acot(1-n)])]-(1-n)` -/
def P5739981351424117434.Spec : Prop :=
  ∀ n, P5739981351424117434.a n = (A033547 n : ℝ)

end A033547

/-! ## A033547.P3212171635583915433

`2-n+a(n-1)+n²` with `a(0)=0`
-/

namespace A033547.P3212171635583915433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (n : ℤ) + (a (n - 1) + (n ^ 2 : ℤ))

end

end A033547.P3212171635583915433

namespace A033547

/-- `2-n+a(n-1)+n²` -/
def P3212171635583915433.Spec : Prop :=
  ∀ n, P3212171635583915433.a n = A033547 n

end A033547

/-! ## A033547.P12526054315292680355

`2-(n-a(n-1)-n²)` with `a(0)=0`
-/

namespace A033547.P12526054315292680355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ((n : ℤ) - a (n - 1) - (n ^ 2 : ℤ))

end

end A033547.P12526054315292680355

namespace A033547

/-- `2-(n-a(n-1)-n²)` -/
def P12526054315292680355.Spec : Prop :=
  ∀ n, P12526054315292680355.a n = A033547 n

end A033547

/-! ## A033547.P15552810383773481893

`∑[∑[n]+∑[(3*n)%(n+1)]]`
-/

namespace A033547.P15552810383773481893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033547.P15552810383773481893

namespace A033547

/-- `∑[∑[n]+∑[(3*n)%(n+1)]]` -/
def P15552810383773481893.Spec : Prop :=
  ∀ n, (P15552810383773481893.a n : ℤ) = A033547 n

end A033547

/-! ## A033547.P17774152815895342419

`∑[a(n-1)-2*(1-n)]` with `a(0)=0, a(1)=2`
-/

namespace A033547.P17774152815895342419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 2 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033547.P17774152815895342419

namespace A033547

/-- `∑[a(n-1)-2*(1-n)]` -/
def P17774152815895342419.Spec : Prop :=
  ∀ n, P17774152815895342419.a n = A033547 n

end A033547

/-!
# A033548: Honaker primes: primes P(k) such that sum of digits of P(k) equals sum of digits of k.

The programs for A033548, the canonical program `A033548.P3085097535061214025` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033548 has offset 1).

The definition of A033548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033548.P3085097535061214025

`A000040(A033549(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A033548

/-- `A000040(A033549(n+1))` -/
def P3085097535061214025.Spec : Prop :=
  ∀ n, P3085097535061214025.a n = A033548 (n + 1)

theorem P3085097535061214025.correct : P3085097535061214025.Spec := by
  intro n
  simp only [A033548, Nat.add_sub_cancel]

end A033548

/-! ## A033548.P4917756557724882928

`p?[A343139(n+1)]`
-/

namespace A033548.P4917756557724882928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033548.P4917756557724882928

namespace A033548

/-- `p?[A343139(n+1)]` -/
def P4917756557724882928.Spec : Prop :=
  ∀ n, P4917756557724882928.a n = A033548 (n + 1)

end A033548

/-! ## A033548.P1674541635941379462

`∩[A258877(n+1), A343139(n+1)]`
-/

namespace A033548.P1674541635941379462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P1674541635941379462

namespace A033548

/-- `∩[A258877(n+1), A343139(n+1)]` -/
def P1674541635941379462.Spec : Prop :=
  ∀ n, (P1674541635941379462.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P2671742887883136204

`∩[A122259(n+1), A343139(n+1)]`
-/

namespace A033548.P2671742887883136204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P2671742887883136204

namespace A033548

/-- `∩[A122259(n+1), A343139(n+1)]` -/
def P2671742887883136204.Spec : Prop :=
  ∀ n, (P2671742887883136204.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P13351035381823535506

`∩[A122731(n+1), A343139(n+1)]`
-/

namespace A033548.P13351035381823535506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P13351035381823535506

namespace A033548

/-- `∩[A122731(n+1), A343139(n+1)]` -/
def P13351035381823535506.Spec : Prop :=
  ∀ n, (P13351035381823535506.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P11496976045185485857

`A008578(A033549(n+1)+1)`
-/

namespace A033548.P11496976045185485857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A033549 (n + 1) + 1).toNat

end

end A033548.P11496976045185485857

namespace A033548

/-- `A008578(A033549(n+1)+1)` -/
def P11496976045185485857.Spec : Prop :=
  ∀ n, P11496976045185485857.a n = A033548 (n + 1)

end A033548

/-! ## A033548.P13209693296468536126

`A046022(A033549(n+1)+2)`
-/

namespace A033548.P13209693296468536126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A033549 (n + 1) + 2).toNat

end

end A033548.P13209693296468536126

namespace A033548

/-- `A046022(A033549(n+1)+2)` -/
def P13209693296468536126.Spec : Prop :=
  ∀ n, P13209693296468536126.a n = A033548 (n + 1)

end A033548

/-! ## A033548.P8389700274353901234

`A065091(A033549(n+1)-1)`
-/

namespace A033548.P8389700274353901234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A033549 (n + 1) - 1).toNat

end

end A033548.P8389700274353901234

namespace A033548

/-- `A065091(A033549(n+1)-1)` -/
def P8389700274353901234.Spec : Prop :=
  ∀ n, P8389700274353901234.a n = A033548 (n + 1)

end A033548

/-! ## A033548.P7397993629244036503

`A004139(A033549(n+1)-2)`
-/

namespace A033548.P7397993629244036503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A033549 (n + 1) - 2).toNat

end

end A033548.P7397993629244036503

namespace A033548

/-- `A004139(A033549(n+1)-2)` -/
def P7397993629244036503.Spec : Prop :=
  ∀ n, P7397993629244036503.a n = A033548 (n + 1)

end A033548

/-! ## A033548.P16008093524272634378

`∩[A000040(n+1), A343139(n+1)]`
-/

namespace A033548.P16008093524272634378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P16008093524272634378

namespace A033548

/-- `∩[A000040(n+1), A343139(n+1)]` -/
def P16008093524272634378.Spec : Prop :=
  ∀ n, (P16008093524272634378.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P14237147322856775009

`∩[A004139(n+1), A343139(n+1)]`
-/

namespace A033548.P14237147322856775009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P14237147322856775009

namespace A033548

/-- `∩[A004139(n+1), A343139(n+1)]` -/
def P14237147322856775009.Spec : Prop :=
  ∀ n, (P14237147322856775009.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P12533607858879666012

`∩[A006005(n+1), A343139(n+1)]`
-/

namespace A033548.P12533607858879666012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P12533607858879666012

namespace A033548

/-- `∩[A006005(n+1), A343139(n+1)]` -/
def P12533607858879666012.Spec : Prop :=
  ∀ n, (P12533607858879666012.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P4112998900357434364

`∩[A008578(n+1), A343139(n+1)]`
-/

namespace A033548.P4112998900357434364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P4112998900357434364

namespace A033548

/-- `∩[A008578(n+1), A343139(n+1)]` -/
def P4112998900357434364.Spec : Prop :=
  ∀ n, (P4112998900357434364.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P10329156942958246356

`∩[A033946(n+1), A343139(n+1)]`
-/

namespace A033548.P10329156942958246356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P10329156942958246356

namespace A033548

/-- `∩[A033946(n+1), A343139(n+1)]` -/
def P10329156942958246356.Spec : Prop :=
  ∀ n, (P10329156942958246356.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P7474256874535668742

`∩[A045319(n+1), A343139(n+1)]`
-/

namespace A033548.P7474256874535668742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P7474256874535668742

namespace A033548

/-- `∩[A045319(n+1), A343139(n+1)]` -/
def P7474256874535668742.Spec : Prop :=
  ∀ n, (P7474256874535668742.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P6335666662778160538

`∩[A045344(n+1), A343139(n+1)]`
-/

namespace A033548.P6335666662778160538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P6335666662778160538

namespace A033548

/-- `∩[A045344(n+1), A343139(n+1)]` -/
def P6335666662778160538.Spec : Prop :=
  ∀ n, (P6335666662778160538.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P6285544107753731784

`∩[A046022(n+1), A343139(n+1)]`
-/

namespace A033548.P6285544107753731784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P6285544107753731784

namespace A033548

/-- `∩[A046022(n+1), A343139(n+1)]` -/
def P6285544107753731784.Spec : Prop :=
  ∀ n, (P6285544107753731784.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P2879718336233582122

`∩[A051948(n+1), A343139(n+1)]`
-/

namespace A033548.P2879718336233582122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P2879718336233582122

namespace A033548

/-- `∩[A051948(n+1), A343139(n+1)]` -/
def P2879718336233582122.Spec : Prop :=
  ∀ n, (P2879718336233582122.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P12673591574120566184

`∩[A053813(n+1), A343139(n+1)]`
-/

namespace A033548.P12673591574120566184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P12673591574120566184

namespace A033548

/-- `∩[A053813(n+1), A343139(n+1)]` -/
def P12673591574120566184.Spec : Prop :=
  ∀ n, (P12673591574120566184.a n : ℤ) = A033548 (n + 1)

end A033548

/-! ## A033548.P6481369858139400130

`∩[A060634(n+1), A343139(n+1)]`
-/

namespace A033548.P6481369858139400130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033548.P6481369858139400130

namespace A033548

/-- `∩[A060634(n+1), A343139(n+1)]` -/
def P6481369858139400130.Spec : Prop :=
  ∀ n, (P6481369858139400130.a n : ℤ) = A033548 (n + 1)

end A033548

/-!
# A033549: Numbers k such that sum of digits of k-th prime equals sum of digits of k.

The programs for A033549, the canonical program `A033549.P17073948200287688934` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033549 has offset 1).

The definition of A033549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033549.P17073948200287688934

`∩[A154313(n+1), A258876(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033549

/-- `∩[A154313(n+1), A258876(n+1)]` -/
def P17073948200287688934.Spec : Prop :=
  ∀ n, (P17073948200287688934.a n : ℤ) = A033549 (n + 1)

theorem P17073948200287688934.correct : P17073948200287688934.Spec := by
  intro n
  simp only [A033549, Nat.add_sub_cancel]

end A033549

/-! ## A033549.P13487361988141542047

`eq[2, A090431(n+1)+2]+1`
-/

namespace A033549.P13487361988141542047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033549.P13487361988141542047

namespace A033549

/-- `eq[2, A090431(n+1)+2]+1` -/
def P13487361988141542047.Spec : Prop :=
  ∀ n, (P13487361988141542047.a n : ℤ) = A033549 (n + 1)

end A033549

/-! ## A033549.P9145722808512838599

`eq[A007605(A028310(n)), A007953(n)]`
-/

namespace A033549.P9145722808512838599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033549.P9145722808512838599

namespace A033549

/-- `eq[A007605(A028310(n)), A007953(n)]` -/
def P9145722808512838599.Spec : Prop :=
  ∀ n, (P9145722808512838599.a n : ℤ) = A033549 (n + 1)

end A033549

/-! ## A033549.P1712700265810842276

`A000720(A033548(n+1))`
-/

namespace A033549.P1712700265810842276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A033548 (n + 1)).toNat

end

end A033549.P1712700265810842276

namespace A033549

/-- `A000720(A033548(n+1))` -/
def P1712700265810842276.Spec : Prop :=
  ∀ n, P1712700265810842276.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P17340182600179997430

`A061395(p?[A033548(n+1)])`
-/

namespace A033549.P17340182600179997430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033549.P17340182600179997430

namespace A033549

/-- `A061395(p?[A033548(n+1)])` -/
def P17340182600179997430.Spec : Prop :=
  ∀ n, P17340182600179997430.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P6770444454018387143

`A000720(p?[A343139(n+1)])`
-/

namespace A033549.P6770444454018387143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033549.P6770444454018387143

namespace A033549

/-- `A000720(p?[A343139(n+1)])` -/
def P6770444454018387143.Spec : Prop :=
  ∀ n, P6770444454018387143.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P5137990109365635213

`A061395(or(1, A033548(n+1)))`
-/

namespace A033549.P5137990109365635213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A033548 (n + 1))).toNat

end

end A033549.P5137990109365635213

namespace A033549

/-- `A061395(or(1, A033548(n+1)))` -/
def P5137990109365635213.Spec : Prop :=
  ∀ n, P5137990109365635213.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P7948365051476546429

`∑{d}[A033548(n+1), A061395(#)]`
-/

namespace A033549.P7948365051476546429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A033549.P7948365051476546429

namespace A033549

/-- `∑{d}[A033548(n+1), A061395(#)]` -/
def P7948365051476546429.Spec : Prop :=
  ∀ n, P7948365051476546429.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P14452094248108822651

`A066328(p?[A033548(n+1)])`
-/

namespace A033549.P14452094248108822651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033549.P14452094248108822651

namespace A033549

/-- `A066328(p?[A033548(n+1)])` -/
def P14452094248108822651.Spec : Prop :=
  ∀ n, P14452094248108822651.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P5838100814027250239

`A323164(p?[A033548(n+1)])`
-/

namespace A033549.P5838100814027250239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033549.P5838100814027250239

namespace A033549

/-- `A323164(p?[A033548(n+1)])` -/
def P5838100814027250239.Spec : Prop :=
  ∀ n, P5838100814027250239.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P8933453984989583218

`A066328(2*A033548(n+1)-A033548(n+1))`
-/

namespace A033549.P8933453984989583218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A033548 (n + 1) - A033548 (n + 1)).toNat

end

end A033549.P8933453984989583218

namespace A033549

/-- `A066328(2*A033548(n+1)-A033548(n+1))` -/
def P8933453984989583218.Spec : Prop :=
  ∀ n, P8933453984989583218.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P2537773872607367270

`A061395(2*A033548(n+1))`
-/

namespace A033549.P2537773872607367270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A033548 (n + 1)).toNat

end

end A033549.P2537773872607367270

namespace A033549

/-- `A061395(2*A033548(n+1))` -/
def P2537773872607367270.Spec : Prop :=
  ∀ n, P2537773872607367270.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P13186832537779587808

`A066328(2*A033548(n+1))-1`
-/

namespace A033549.P13186832537779587808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A033548 (n + 1)).toNat - 1

end

end A033549.P13186832537779587808

namespace A033549

/-- `A066328(2*A033548(n+1))-1` -/
def P13186832537779587808.Spec : Prop :=
  ∀ n, P13186832537779587808.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P3895363677604664970

`A323164(2*(A033548(n+1)-1))`
-/

namespace A033549.P3895363677604664970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (2 * (A033548 (n + 1) - 1)).toNat

end

end A033549.P3895363677604664970

namespace A033549

/-- `A323164(2*(A033548(n+1)-1))` -/
def P3895363677604664970.Spec : Prop :=
  ∀ n, P3895363677604664970.a n = A033549 (n + 1)

end A033549

/-! ## A033549.P1242640712531269677

`A323164(A033548(n+1)+A033548(n+1)-2)`
-/

namespace A033549.P1242640712531269677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (A033548 (n + 1) + (A033548 (n + 1) - 2)).toNat

end

end A033549.P1242640712531269677

namespace A033549

/-- `A323164(A033548(n+1)+A033548(n+1)-2)` -/
def P1242640712531269677.Spec : Prop :=
  ∀ n, P1242640712531269677.a n = A033549 (n + 1)

end A033549

/-!
# A033550: a(n) = A005248(n) - n.

The programs for A033550, the canonical program `A033550.P16297927663788686382` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033550 has offset 0).

The definition of A033550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033550.P1947427345686787119

`3*a(n-1)-a(n-2)+n-1` with `a(0)=2, a(1)=2`
-/

namespace A033550.P1947427345686787119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) + (n : ℤ) - 1

end

end A033550.P1947427345686787119

namespace A033550

/-- `3*a(n-1)-a(n-2)+n-1` -/
def P1947427345686787119.Spec : Prop :=
  ∀ n, P1947427345686787119.a n = A033550 n

end A033550

/-! ## A033550.P16297927663788686382

`A005248(n)-n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033550

/-- `A005248(n)-n` -/
def P16297927663788686382.Spec : Prop :=
  ∀ n, P16297927663788686382.a n = A033550 n

theorem P16297927663788686382.correct : P16297927663788686382.Spec := by
  intro n
  simp only [A033550]

end A033550

/-! ## A033550.P7572228493633675

`floor((ϕ^n)²)+1-n`
-/

namespace A033550.P7572228493633675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ + (1 - (n : ℤ))

end

end A033550.P7572228493633675

namespace A033550

/-- `floor((ϕ^n)²)+1-n` -/
def P7572228493633675.Spec : Prop :=
  ∀ n, P7572228493633675.a n = A033550 n

end A033550

/-! ## A033550.P345525489654033272

`∑[1-(a(n-2)-3*a(n-1))]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A033550.P345525489654033272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n f1 =>
  1 - (f1 (n - 2) - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033550.P345525489654033272

namespace A033550

/-- `∑[1-(a(n-2)-3*a(n-1))]` -/
def P345525489654033272.Spec : Prop :=
  ∀ n, P345525489654033272.a n = A033550 n

end A033550

/-! ## A033550.P16131977014539051307

`abs(A005592(n)+1-n)`
-/

namespace A033550.P16131977014539051307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005592 n + (1 - (n : ℤ))|

end

end A033550.P16131977014539051307

namespace A033550

/-- `abs(A005592(n)+1-n)` -/
def P16131977014539051307.Spec : Prop :=
  ∀ n, P16131977014539051307.a n = A033550 n

end A033550

/-! ## A033550.P17123683761508647130

`abs(A000032(2*n)-n)`
-/

namespace A033550.P17123683761508647130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 (2 * n) - (n : ℤ)|

end

end A033550.P17123683761508647130

namespace A033550

/-- `abs(A000032(2*n)-n)` -/
def P17123683761508647130.Spec : Prop :=
  ∀ n, P17123683761508647130.a n = A033550 n

end A033550

/-! ## A033550.P150050415541160856

`abs(A005247(2*n)-n)`
-/

namespace A033550.P150050415541160856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005247 (2 * n) - (n : ℤ)|

end

end A033550.P150050415541160856

namespace A033550

/-- `abs(A005247(2*n)-n)` -/
def P150050415541160856.Spec : Prop :=
  ∀ n, P150050415541160856.a n = A033550 n

end A033550

/-! ## A033550.P8425107219054768938

`floor(record[A000032(n)/(-1)^n]-n)`
-/

namespace A033550.P8425107219054768938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)⌋

end

end A033550.P8425107219054768938

namespace A033550

/-- `floor(record[A000032(n)/(-1)^n]-n)` -/
def P8425107219054768938.Spec : Prop :=
  ∀ n, P8425107219054768938.a n = A033550 n

end A033550

/-! ## A033550.P12004578531164366241

`abs(ceil((3-ϕ)*A000045(2*n+1))-n)`
-/

namespace A033550.P12004578531164366241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(3 - Real.goldenRatio) * (A000045 (2 * n + 1) : ℝ)⌉ - (n : ℤ)|

end

end A033550.P12004578531164366241

namespace A033550

/-- `abs(ceil((3-ϕ)*A000045(2*n+1))-n)` -/
def P12004578531164366241.Spec : Prop :=
  ∀ n, P12004578531164366241.a n = A033550 n

end A033550

/-! ## A033550.P8026893194409756505

`abs(∑[A000032(A004277(n)-1)]-n)`
-/

namespace A033550.P8026893194409756505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A033550.P8026893194409756505

namespace A033550

/-- `abs(∑[A000032(A004277(n)-1)]-n)` -/
def P8026893194409756505.Spec : Prop :=
  ∀ n, P8026893194409756505.a n = A033550 n

end A033550

/-! ## A033550.P2668951363318058388

`abs(Δ[A061084(2*n)]+n)`
-/

namespace A033550.P2668951363318058388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A033550.P2668951363318058388

namespace A033550

/-- `abs(Δ[A061084(2*n)]+n)` -/
def P2668951363318058388.Spec : Prop :=
  ∀ n, P2668951363318058388.a n = A033550 n

end A033550

/-! ## A033550.P5492937624311529130

`abs(A075270(2*n+1)+n)`
-/

namespace A033550.P5492937624311529130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075270 (2 * n + 1) + (n : ℤ)|

end

end A033550.P5492937624311529130

namespace A033550

/-- `abs(A075270(2*n+1)+n)` -/
def P5492937624311529130.Spec : Prop :=
  ∀ n, P5492937624311529130.a n = A033550 n

end A033550

/-!
# A033551: Closest integer to (Pi/4)*n^2.

The programs for A033551, the canonical program `A033551.P17433999023784938092` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033551 has offset 1).

The definition of A033551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033551.P17433999023784938092

`round(π/4*(n+1)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033551

/-- `round(π/4*(n+1)²)` -/
def P17433999023784938092.Spec : Prop :=
  ∀ n, P17433999023784938092.a n = A033551 (n + 1)

theorem P17433999023784938092.correct : P17433999023784938092.Spec := by
  intro n
  simp only [A033551, Nat.add_sub_cancel]

end A033551

/-! ## A033551.P4822424774827958343

`A110654(A248521((n+1)²))`
-/

namespace A033551.P4822424774827958343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A248521 ((n + 1) ^ 2)).toNat

end

end A033551.P4822424774827958343

namespace A033551

/-- `A110654(A248521((n+1)²))` -/
def P4822424774827958343.Spec : Prop :=
  ∀ n, P4822424774827958343.a n = A033551 (n + 1)

end A033551

/-! ## A033551.P611811972792894664

`A000194(A212107(n+1))`
-/

namespace A033551.P611811972792894664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A212107 (n + 1)).toNat

end

end A033551.P611811972792894664

namespace A033551

/-- `A000194(A212107(n+1))` -/
def P611811972792894664.Spec : Prop :=
  ∀ n, P611811972792894664.a n = A033551 (n + 1)

end A033551

/-! ## A033551.P1850508345813293408

`∑[A082528((n²+n)²)]`
-/

namespace A033551.P1850508345813293408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082528 ((n ^ 2 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033551.P1850508345813293408

namespace A033551

/-- `∑[A082528((n²+n)²)]` -/
def P1850508345813293408.Spec : Prop :=
  ∀ n, P1850508345813293408.a n = A033551 (n + 1)

end A033551

/-! ## A033551.P5862363756208632675

`A085141(A270868(n))`
-/

namespace A033551.P5862363756208632675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A270868 n).toNat

end

end A033551.P5862363756208632675

namespace A033551

/-- `A085141(A270868(n))` -/
def P5862363756208632675.Spec : Prop :=
  ∀ n, P5862363756208632675.a n = A033551 (n + 1)

end A033551

/-!
# A033552: Number of partitions into Catalan numbers.

The programs for A033552, there is no canonical definition to state claims against.
-/

/-! ## A033552.P14863304207541409085

`∑[A025818(A004442(n+1))%A140738(n+1)]`
-/

namespace A033552.P14863304207541409085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025818 (A004442 (n + 1)).toNat) (A140738 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033552.P14863304207541409085

/-! ## A033552.P7995402700174673100

`∑[A025818(A004442(n+1))%A141214(n)]`
-/

namespace A033552.P7995402700174673100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025818 (A004442 (n + 1)).toNat) (A141214 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033552.P7995402700174673100

/-! ## A033552.P17391397119785825163

`∑[A025818(A004442(n+1))]%A340661(n+1)`
-/

namespace A033552.P17391397119785825163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A340661 (n + 1))

end

end A033552.P17391397119785825163

/-! ## A033552.P9643840909542237340

`∑[A053279(n)%A094501(n)]`
-/

namespace A033552.P9643840909542237340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053279 n) (A094501 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033552.P9643840909542237340

/-! ## A033552.P10582166925144762934

`∑[A053279(n)]%A015806(n+1)`
-/

namespace A033552.P10582166925144762934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A015806 (n + 1))

end

end A033552.P10582166925144762934

/-!
# A033553: 3-Knödel numbers or D-numbers: numbers m > 3 such that m | k^(m-2)-k for all k with gcd(k, m) = 1.

The programs for A033553, there is no canonical definition to state claims against.
-/

/-! ## A033553.P10148479784700563831

`filter[A015922(n+1), A324053(#)]`
-/

namespace A033553.P10148479784700563831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P10148479784700563831

/-! ## A033553.P9676064927102046837

`filter[A276967(n+1), A324053(#)]`
-/

namespace A033553.P9676064927102046837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P9676064927102046837

/-! ## A033553.P12167940637632207537

`eq[1, A324053(n+1)]+1`
-/

namespace A033553.P12167940637632207537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033553.P12167940637632207537

/-! ## A033553.P1547526160763890250

`filter[A277569(n+1), A324053(#)]`
-/

namespace A033553.P1547526160763890250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P1547526160763890250

/-! ## A033553.P9509681449221714702

`filter[A389917(n+1), A324053(#)]`
-/

namespace A033553.P9509681449221714702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P9509681449221714702

/-! ## A033553.P13579939102340147433

`filter[A259754(n+1), A324053(#)]`
-/

namespace A033553.P13579939102340147433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P13579939102340147433

/-! ## A033553.P13266088124905252551

`filter[A261871(n+1), A324053(#)]`
-/

namespace A033553.P13266088124905252551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P13266088124905252551

/-! ## A033553.P15317337989476437525

`filter[A261524(n+1), A324053(#)]`
-/

namespace A033553.P15317337989476437525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P15317337989476437525

/-! ## A033553.P1663112762369210854

`filter[A049096(n+1), A324053(#)]`
-/

namespace A033553.P1663112762369210854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P1663112762369210854

/-! ## A033553.P14810406396630893402

`filter[A392368(n+1), A324053(#)]`
-/

namespace A033553.P14810406396630893402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P14810406396630893402

/-! ## A033553.P2874710748614061662

`filter[A136290(n), A324053(#)]`
-/

namespace A033553.P2874710748614061662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P2874710748614061662

/-! ## A033553.P3510310288904849790

`filter[A026139(n+1), A324053(#)]`
-/

namespace A033553.P3510310288904849790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P3510310288904849790

/-! ## A033553.P14658779714787600886

`filter[A394177(n+1), A324053(#)]`
-/

namespace A033553.P14658779714787600886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P14658779714787600886

/-! ## A033553.P1765154112283076415

`filter[A172181(n+1), A324053(#)]`
-/

namespace A033553.P1765154112283076415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P1765154112283076415

/-! ## A033553.P2585386922708696383

`filter[A324298(n+1), A324053(#)]`
-/

namespace A033553.P2585386922708696383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P2585386922708696383

/-! ## A033553.P14003517783526267211

`filter[A380537(n+1), A324053(#)]`
-/

namespace A033553.P14003517783526267211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P14003517783526267211

/-! ## A033553.P9863608299767449685

`filter[A008486(n), A324053(#)]`
-/

namespace A033553.P9863608299767449685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P9863608299767449685

/-! ## A033553.P1299663009190783985

`filter[A136320(n), A324053(#)]`
-/

namespace A033553.P1299663009190783985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P1299663009190783985

/-! ## A033553.P17664858721177629034

`filter[A298028(n), A324053(#)]`
-/

namespace A033553.P17664858721177629034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P17664858721177629034

/-! ## A033553.P4927012468779107302

`filter[A008585(n+1), A324053(#)]`
-/

namespace A033553.P4927012468779107302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A033553.P4927012468779107302

/-!
# A033554: In A015922, not in A033553.

The programs for A033554, there is no canonical definition to state claims against.
-/

/-! ## A033554.P14263909862800305739

`∑[a(n-1)!*C(n, 3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A033554.P14263909862800305739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 1)) * Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033554.P14263909862800305739

/-! ## A033554.P7643551798257199220

`floor((ϕ^a(n-1)/3)²)+3` with `a(0)=1, a(1)=2`
-/

namespace A033554.P7643551798257199220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.goldenRatio ^ (a (n - 1) : ℤ) / 3) ^ 2⌋ + 3

end

end A033554.P7643551798257199220

/-!
# A033556: a(n+1) = 2a(n) - {largest prime < a(n)}.

The programs for A033556, there is no canonical definition to state claims against.
-/

/-! ## A033556.P11970402128510456504

`A033557(a(n-1))` with `a(0)=3`
-/

namespace A033556.P11970402128510456504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A033557 (a (n - 1)).toNat

end

end A033556.P11970402128510456504

/-! ## A033556.P3978197395938027180

`A049711(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A033556.P3978197395938027180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A049711 (a (n - 1)).toNat + a (n - 1)

end

end A033556.P3978197395938027180

/-! ## A033556.P1908857807934944550

`2*a(n-1)-A136548(a(n-1))` with `a(0)=3`
-/

namespace A033556.P1908857807934944550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - A136548 (a (n - 1)).toNat

end

end A033556.P1908857807934944550

/-! ## A033556.P17589493926240647212

`A085888(a(n-1))%p?[A116668(n)]` with `a(0)=3`
-/

namespace A033556.P17589493926240647212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A085888 (a (n - 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A033556.P17589493926240647212

/-! ## A033556.P10374366990548585903

`A085888(a(n-1))+(2*A142721(n))%2` with `a(0)=3`
-/

namespace A033556.P10374366990548585903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A085888 (a (n - 1)).toNat + Int.tmod (2 * A142721 n) 2

end

end A033556.P10374366990548585903

/-! ## A033556.P8016736002855113485

`A085888(a(n-1))-A086971(A179273(n+1))` with `a(0)=3`
-/

namespace A033556.P8016736002855113485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A085888 (a (n - 1)).toNat - A086971 (A179273 (n + 1)).toNat

end

end A033556.P8016736002855113485

/-! ## A033556.P1605356778467731764

`A085888(a(n-1))/A071891(A208325(n))` with `a(0)=3`
-/

namespace A033556.P1605356778467731764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A085888 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / (A071891 (A208325 n).toNat : ℚ)

end

end A033556.P1605356778467731764

/-!
# A033557: 2n - {largest prime < n}.

The programs for A033557, the canonical program `A033557.P15478102425626913345` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033557 has offset 3).

The definition of A033557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033557.P15478102425626913345

`A175851(n+2)+3+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033557

/-- `A175851(n+2)+3+n` -/
def P15478102425626913345.Spec : Prop :=
  ∀ n, P15478102425626913345.a n = A033557 (n + 3)

theorem P15478102425626913345.correct : P15478102425626913345.Spec := by
  intro n
  simp only [A033557, Nat.add_sub_cancel]

end A033557

/-! ## A033557.P9736831390290841435

`A049711(n+3)+3+n`
-/

namespace A033557.P9736831390290841435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) + 3 + (n : ℤ)

end

end A033557.P9736831390290841435

namespace A033557

/-- `A049711(n+3)+3+n` -/
def P9736831390290841435.Spec : Prop :=
  ∀ n, P9736831390290841435.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P9039202030601694699

`A308050(n+4)+2+n`
-/

namespace A033557.P9039202030601694699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (n + 4) + 2 + (n : ℤ)

end

end A033557.P9039202030601694699

namespace A033557

/-- `A308050(n+4)+2+n` -/
def P9039202030601694699.Spec : Prop :=
  ∀ n, P9039202030601694699.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P4916489943490739569

`2*(n+3)-A007917(n+2)`
-/

namespace A033557.P4916489943490739569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A007917 (n + 2)

end

end A033557.P4916489943490739569

namespace A033557

/-- `2*(n+3)-A007917(n+2)` -/
def P4916489943490739569.Spec : Prop :=
  ∀ n, P4916489943490739569.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P1235473584391459210

`3*(n+3)-A013635(n+3)`
-/

namespace A033557.P1235473584391459210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 3) : ℤ) - A013635 (n + 3)

end

end A033557.P1235473584391459210

namespace A033557

/-- `3*(n+3)-A013635(n+3)` -/
def P1235473584391459210.Spec : Prop :=
  ∀ n, P1235473584391459210.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P15524113687511709019

`A009056(A308050(n+4))+n`
-/

namespace A033557.P15524113687511709019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A308050 (n + 4)).toNat + (n : ℤ)

end

end A033557.P15524113687511709019

namespace A033557

/-- `A009056(A308050(n+4))+n` -/
def P15524113687511709019.Spec : Prop :=
  ∀ n, P15524113687511709019.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P3478792980979438054

`A161758(n+5)-A001489(n)`
-/

namespace A033557.P3478792980979438054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161758 (n + 5) - A001489 n

end

end A033557.P3478792980979438054

namespace A033557

/-- `A161758(n+5)-A001489(n)` -/
def P3478792980979438054.Spec : Prop :=
  ∀ n, P3478792980979438054.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P794415132188562660

`A003977(A065151(n+2))+2+n`
-/

namespace A033557.P794415132188562660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A065151 (n + 2)).toNat + 2 + (n : ℤ)

end

end A033557.P794415132188562660

namespace A033557

/-- `A003977(A065151(n+2))+2+n` -/
def P794415132188562660.Spec : Prop :=
  ∀ n, P794415132188562660.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P11153065310837771098

`A013635(n+3)-A345668(n+3)`
-/

namespace A033557.P11153065310837771098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3) - A345668 (n + 3)

end

end A033557.P11153065310837771098

namespace A033557

/-- `A013635(n+3)-A345668(n+3)` -/
def P11153065310837771098.Spec : Prop :=
  ∀ n, P11153065310837771098.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P9691201487799838079

`2*(n+3)-A000040(A000720(n+2))`
-/

namespace A033557.P9691201487799838079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A000040 (A000720 (n + 2)).toNat

end

end A033557.P9691201487799838079

namespace A033557

/-- `2*(n+3)-A000040(A000720(n+2))` -/
def P9691201487799838079.Spec : Prop :=
  ∀ n, P9691201487799838079.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P4011977136986023423

`A064722(n+2)+4+n`
-/

namespace A033557.P4011977136986023423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + 4 + (n : ℤ)

end

end A033557.P4011977136986023423

namespace A033557

/-- `A064722(n+2)+4+n` -/
def P4011977136986023423.Spec : Prop :=
  ∀ n, P4011977136986023423.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P15257264612259560806

`A064722(n+2)+A020705(n)`
-/

namespace A033557.P15257264612259560806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + A020705 n

end

end A033557.P15257264612259560806

namespace A033557

/-- `A064722(n+2)+A020705(n)` -/
def P15257264612259560806.Spec : Prop :=
  ∀ n, P15257264612259560806.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P6168417753012812629

`2*(n+3)-A136548(n+3)`
-/

namespace A033557.P6168417753012812629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A136548 (n + 3)

end

end A033557.P6168417753012812629

namespace A033557

/-- `2*(n+3)-A136548(n+3)` -/
def P6168417753012812629.Spec : Prop :=
  ∀ n, P6168417753012812629.a n = A033557 (n + 3)

end A033557

/-! ## A033557.P8498269190319154478

`A052126(A064924(n+2))+n+3`
-/

namespace A033557.P8498269190319154478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A064924 (n + 2)).toNat + (n + 3 : ℤ)

end

end A033557.P8498269190319154478

namespace A033557

/-- `A052126(A064924(n+2))+n+3` -/
def P8498269190319154478.Spec : Prop :=
  ∀ n, P8498269190319154478.a n = A033557 (n + 3)

end A033557

/-!
# A033558: a(n) = 2n - {smallest prime > n}.

The programs for A033558, the canonical program `A033558.P5355527907000063137` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033558 has offset 1).

The definition of A033558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033558.P10460668861887924003

`∑[2-Δ[A151800(n)]]-2`
-/

namespace A033558.P10460668861887924003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A033558.P10460668861887924003

namespace A033558

/-- `∑[2-Δ[A151800(n)]]-2` -/
def P10460668861887924003.Spec : Prop :=
  ∀ n, P10460668861887924003.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P6245903158847140972

`2*(n+1)-A151800(n+1)`
-/

namespace A033558.P6245903158847140972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A151800 (n + 1)

end

end A033558.P6245903158847140972

namespace A033558

/-- `2*(n+1)-A151800(n+1)` -/
def P6245903158847140972.Spec : Prop :=
  ∀ n, P6245903158847140972.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P18085857801570439044

`a(n-1)+2-A096500(n)` with `a(0)=0`
-/

namespace A033558.P18085857801570439044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 - A096500 n)

end

end A033558.P18085857801570439044

namespace A033558

/-- `a(n-1)+2-A096500(n)` -/
def P18085857801570439044.Spec : Prop :=
  ∀ n, P18085857801570439044.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P9291478303888572642

`A103517(n)-A066169(n+1)`
-/

namespace A033558.P9291478303888572642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A066169 (n + 1)

end

end A033558.P9291478303888572642

namespace A033558

/-- `A103517(n)-A066169(n+1)` -/
def P9291478303888572642.Spec : Prop :=
  ∀ n, P9291478303888572642.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P7821967905651631988

`A308022(n+2)+A238737(n)`
-/

namespace A033558.P7821967905651631988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308022 (n + 2) + A238737 n

end

end A033558.P7821967905651631988

namespace A033558

/-- `A308022(n+2)+A238737(n)` -/
def P7821967905651631988.Spec : Prop :=
  ∀ n, P7821967905651631988.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P3749905391327730867

`A267873(n)%A064778(n+1)`
-/

namespace A033558.P3749905391327730867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267873 n) (A064778 (n + 1))

end

end A033558.P3749905391327730867

namespace A033558

/-- `A267873(n)%A064778(n+1)` -/
def P3749905391327730867.Spec : Prop :=
  ∀ n, P3749905391327730867.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P4208782496614438593

`A163300(n+1)%A066169(n+1)`
-/

namespace A033558.P4208782496614438593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A066169 (n + 1))

end

end A033558.P4208782496614438593

namespace A033558

/-- `A163300(n+1)%A066169(n+1)` -/
def P4208782496614438593.Spec : Prop :=
  ∀ n, P4208782496614438593.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P6505248551862674159

`A051755(n+2)%A066169(n+1)`
-/

namespace A033558.P6505248551862674159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051755 (n + 2)) (A066169 (n + 1))

end

end A033558.P6505248551862674159

namespace A033558

/-- `A051755(n+2)%A066169(n+1)` -/
def P6505248551862674159.Spec : Prop :=
  ∀ n, P6505248551862674159.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P18420475798723473597

`A004273(n+1)+1-A151800(n+1)`
-/

namespace A033558.P18420475798723473597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + (1 - A151800 (n + 1))

end

end A033558.P18420475798723473597

namespace A033558

/-- `A004273(n+1)+1-A151800(n+1)` -/
def P18420475798723473597.Spec : Prop :=
  ∀ n, P18420475798723473597.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P7316067626253644014

`A005408(n+1)-(A151800(n+1)+1)`
-/

namespace A033558.P7316067626253644014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - (A151800 (n + 1) + 1)

end

end A033558.P7316067626253644014

namespace A033558

/-- `A005408(n+1)-(A151800(n+1)+1)` -/
def P7316067626253644014.Spec : Prop :=
  ∀ n, P7316067626253644014.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P14993870247223912840

`2*n-A040976(A000720(n+1)+1)`
-/

namespace A033558.P14993870247223912840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A040976 (A000720 (n + 1) + 1).toNat

end

end A033558.P14993870247223912840

namespace A033558

/-- `2*n-A040976(A000720(n+1)+1)` -/
def P14993870247223912840.Spec : Prop :=
  ∀ n, P14993870247223912840.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P161003103560001585

`A000027(n+2)-A151800(n+1)+n`
-/

namespace A033558.P161003103560001585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A151800 (n + 1) + (n : ℤ)

end

end A033558.P161003103560001585

namespace A033558

/-- `A000027(n+2)-A151800(n+1)+n` -/
def P161003103560001585.Spec : Prop :=
  ∀ n, P161003103560001585.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P5355527907000063137

`2*(n+1)-A000040(∑[A010051(n+1)]+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033558

/-- `2*(n+1)-A000040(∑[A010051(n+1)]+1)` -/
def P5355527907000063137.Spec : Prop :=
  ∀ n, P5355527907000063137.a n = A033558 (n + 1)

theorem P5355527907000063137.correct : P5355527907000063137.Spec := by
  intro n
  simp only [A033558, Nat.add_sub_cancel]

end A033558

/-! ## A033558.P7039137199196850192

`((2*(n+1))%A151800(n+1))%A286687(n+1)`
-/

namespace A033558.P7039137199196850192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 * (n + 1) : ℤ) (A151800 (n + 1))) (A286687 (n + 1))

end

end A033558.P7039137199196850192

namespace A033558

/-- `((2*(n+1))%A151800(n+1))%A286687(n+1)` -/
def P7039137199196850192.Spec : Prop :=
  ∀ n, P7039137199196850192.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P13911931652368814834

`n-A007920(n+2)`
-/

namespace A033558.P13911931652368814834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007920 (n + 2)

end

end A033558.P13911931652368814834

namespace A033558

/-- `n-A007920(n+2)` -/
def P13911931652368814834.Spec : Prop :=
  ∀ n, P13911931652368814834.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P9205770884482001534

`1-A013632(n+1)+n`
-/

namespace A033558.P9205770884482001534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A013632 (n + 1) + (n : ℤ)

end

end A033558.P9205770884482001534

namespace A033558

/-- `1-A013632(n+1)+n` -/
def P9205770884482001534.Spec : Prop :=
  ∀ n, P9205770884482001534.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P3272975719647812405

`2*(n+1)-A007918(n+2)`
-/

namespace A033558.P3272975719647812405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A007918 (n + 2)

end

end A033558.P3272975719647812405

namespace A033558

/-- `2*(n+1)-A007918(n+2)` -/
def P3272975719647812405.Spec : Prop :=
  ∀ n, P3272975719647812405.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P18085929430741162294

`3*(n+1)-A013634(n+1)`
-/

namespace A033558.P18085929430741162294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A013634 (n + 1)

end

end A033558.P18085929430741162294

namespace A033558

/-- `3*(n+1)-A013634(n+1)` -/
def P18085929430741162294.Spec : Prop :=
  ∀ n, P18085929430741162294.a n = A033558 (n + 1)

end A033558

/-! ## A033558.P7136787036719223302

`2*(n+1)-A053024(n+2)/(n+2)`
-/

namespace A033558.P7136787036719223302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) - (A053024 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A033558.P7136787036719223302

namespace A033558

/-- `2*(n+1)-A053024(n+2)/(n+2)` -/
def P7136787036719223302.Spec : Prop :=
  ∀ n, P7136787036719223302.a n = (A033558 (n + 1) : ℚ)

end A033558

/-!
# A033559: a(n) = (q - p)/2, where p is the largest prime < n and q is the smallest prime > n.

The programs for A033559, the canonical program `A033559.P14099356790434154547` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033559 has offset 4).

The definition of A033559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033559.P14155383064537243089

`A082467(A033597(n+4))`
-/

namespace A033559.P14155383064537243089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A033597 (n + 4)).toNat

end

end A033559.P14155383064537243089

namespace A033559

/-- `A082467(A033597(n+4))` -/
def P14155383064537243089.Spec : Prop :=
  ∀ n, P14155383064537243089.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P14099356790434154547

`A151800(n+4)-A033597(n+4)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A033559

/-- `A151800(n+4)-A033597(n+4)` -/
def P14099356790434154547.Spec : Prop :=
  ∀ n, P14099356790434154547.a n = A033559 (n + 4)

theorem P14099356790434154547.correct : P14099356790434154547.Spec := by
  intro n
  simp only [A033559, Nat.add_sub_cancel]

end A033559

/-! ## A033559.P3724348760552950747

`A013633(n+4)/2`
-/

namespace A033559.P3724348760552950747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013633 (n + 4) : ℚ) / 2

end

end A033559.P3724348760552950747

namespace A033559

/-- `A013633(n+4)/2` -/
def P3724348760552950747.Spec : Prop :=
  ∀ n, P3724348760552950747.a n = (A033559 (n + 4) : ℚ)

end A033559

/-! ## A033559.P14899625176266701569

`A001281(A013633(n+4))`
-/

namespace A033559.P14899625176266701569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A013633 (n + 4)).toNat

end

end A033559.P14899625176266701569

namespace A033559

/-- `A001281(A013633(n+4))` -/
def P14899625176266701569.Spec : Prop :=
  ∀ n, P14899625176266701569.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P10380646342583853895

`A004526(A013633(n+4)+1)`
-/

namespace A033559.P10380646342583853895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A013633 (n + 4) + 1).toNat

end

end A033559.P10380646342583853895

namespace A033559

/-- `A004526(A013633(n+4)+1)` -/
def P10380646342583853895.Spec : Prop :=
  ∀ n, P10380646342583853895.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P11307176735742502676

`A028242(A013633(n+4)+1)`
-/

namespace A033559.P11307176735742502676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A013633 (n + 4) + 1).toNat

end

end A033559.P11307176735742502676

namespace A033559

/-- `A028242(A013633(n+4)+1)` -/
def P11307176735742502676.Spec : Prop :=
  ∀ n, P11307176735742502676.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P6523921394458958066

`A000463(A013633(n+4)-1)`
-/

namespace A033559.P6523921394458958066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A013633 (n + 4) - 1).toNat

end

end A033559.P6523921394458958066

namespace A033559

/-- `A000463(A013633(n+4)-1)` -/
def P6523921394458958066.Spec : Prop :=
  ∀ n, P6523921394458958066.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P13883178098250161693

`A001057(A013633(n+4)-1)`
-/

namespace A033559.P13883178098250161693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A013633 (n + 4) - 1).toNat

end

end A033559.P13883178098250161693

namespace A033559

/-- `A001057(A013633(n+4)-1)` -/
def P13883178098250161693.Spec : Prop :=
  ∀ n, P13883178098250161693.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P13803730937943765043

`A003602(A013633(n+4)-1)`
-/

namespace A033559.P13803730937943765043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A013633 (n + 4) - 1).toNat

end

end A033559.P13803730937943765043

namespace A033559

/-- `A003602(A013633(n+4)-1)` -/
def P13803730937943765043.Spec : Prop :=
  ∀ n, P13803730937943765043.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P8491560515902211883

`A008619(A013633(n+4)-1)`
-/

namespace A033559.P8491560515902211883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A013633 (n + 4) - 1).toNat

end

end A033559.P8491560515902211883

namespace A033559

/-- `A008619(A013633(n+4)-1)` -/
def P8491560515902211883.Spec : Prop :=
  ∀ n, P8491560515902211883.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P693461588450010559

`A110657(2*A013633(n+4))`
-/

namespace A033559.P693461588450010559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A013633 (n + 4)).toNat

end

end A033559.P693461588450010559

namespace A033559

/-- `A110657(2*A013633(n+4))` -/
def P693461588450010559.Spec : Prop :=
  ∀ n, P693461588450010559.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P6090975333520061589

`A004525(A013633(n+4)%(n+10))`
-/

namespace A033559.P6090975333520061589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A013633 (n + 4)) (n + 10 : ℤ)).toNat

end

end A033559.P6090975333520061589

namespace A033559

/-- `A004525(A013633(n+4)%(n+10))` -/
def P6090975333520061589.Spec : Prop :=
  ∀ n, P6090975333520061589.a n = A033559 (n + 4)

end A033559

/-! ## A033559.P6476171958559591255

`A049087(A013638(n+4))/2`
-/

namespace A033559.P6476171958559591255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049087 (A013638 (n + 4)).toNat : ℚ) / 2

end

end A033559.P6476171958559591255

namespace A033559

/-- `A049087(A013638(n+4))/2` -/
def P6476171958559591255.Spec : Prop :=
  ∀ n, P6476171958559591255.a n = (A033559 (n + 4) : ℚ)

end A033559

/-! ## A033559.P9028568734004259932

`A306257(A013638(n+4))`
-/

namespace A033559.P9028568734004259932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (A013638 (n + 4)).toNat

end

end A033559.P9028568734004259932

namespace A033559

/-- `A306257(A013638(n+4))` -/
def P9028568734004259932.Spec : Prop :=
  ∀ n, P9028568734004259932.a n = A033559 (n + 4)

end A033559

/-!
# A033560: Primes p such that 4!+p is also prime.

The programs for A033560, the canonical program `A033560.P2887487889709653491` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033560 has offset 1).

The definition of A033560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033560.P2887487889709653491

`p?[p?[2*n+1]-24]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033560

/-- `p?[p?[2*n+1]-24]` -/
def P2887487889709653491.Spec : Prop :=
  ∀ n, P2887487889709653491.a n = A033560 (n + 1)

theorem P2887487889709653491.correct : P2887487889709653491.Spec := by
  intro n
  simp only [A033560, Nat.add_sub_cancel]

end A033560

/-! ## A033560.P17069693311093577239

`p?[A040976(n+1)-22]`
-/

namespace A033560.P17069693311093577239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P17069693311093577239

namespace A033560

/-- `p?[A040976(n+1)-22]` -/
def P17069693311093577239.Spec : Prop :=
  ∀ n, P17069693311093577239.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P8438110152328265379

`p?[A000040(n+1)-24]`
-/

namespace A033560.P8438110152328265379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P8438110152328265379

namespace A033560

/-- `p?[A000040(n+1)-24]` -/
def P8438110152328265379.Spec : Prop :=
  ∀ n, P8438110152328265379.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P13833914401763912331

`p?[A065091(n+1)-24]`
-/

namespace A033560.P13833914401763912331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P13833914401763912331

namespace A033560

/-- `p?[A065091(n+1)-24]` -/
def P13833914401763912331.Spec : Prop :=
  ∀ n, P13833914401763912331.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P1582896435752900809

`p?[record[A006530(n+2)]-24]`
-/

namespace A033560.P1582896435752900809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P1582896435752900809

namespace A033560

/-- `p?[record[A006530(n+2)]-24]` -/
def P1582896435752900809.Spec : Prop :=
  ∀ n, P1582896435752900809.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P17776268912702096707

`p?[record[A020639(n+2)]-24]`
-/

namespace A033560.P17776268912702096707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P17776268912702096707

namespace A033560

/-- `p?[record[A020639(n+2)]-24]` -/
def P17776268912702096707.Spec : Prop :=
  ∀ n, P17776268912702096707.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P15752522124345986126

`p?[∏{p}[p?[A207790(n+1)], #]-24]`
-/

namespace A033560.P15752522124345986126
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P15752522124345986126

namespace A033560

/-- `p?[∏{p}[p?[A207790(n+1)], #]-24]` -/
def P15752522124345986126.Spec : Prop :=
  ∀ n, P15752522124345986126.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P6298699901692532273

`p?[A089026(n+1)-24]`
-/

namespace A033560.P6298699901692532273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P6298699901692532273

namespace A033560

/-- `p?[A089026(n+1)-24]` -/
def P6298699901692532273.Spec : Prop :=
  ∀ n, P6298699901692532273.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P1723395902686792166

`p?[A023466(p?[2*n+1])]`
-/

namespace A033560.P1723395902686792166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P1723395902686792166

namespace A033560

/-- `p?[A023466(p?[2*n+1])]` -/
def P1723395902686792166.Spec : Prop :=
  ∀ n, P1723395902686792166.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P8687118850218764152

`p?[record[A014963(n+2)]-24]`
-/

namespace A033560.P8687118850218764152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P8687118850218764152

namespace A033560

/-- `p?[record[A014963(n+2)]-24]` -/
def P8687118850218764152.Spec : Prop :=
  ∀ n, P8687118850218764152.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P6551438094014170789

`p?[A023466(A000040(n+1))]`
-/

namespace A033560.P6551438094014170789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P6551438094014170789

namespace A033560

/-- `p?[A023466(A000040(n+1))]` -/
def P6551438094014170789.Spec : Prop :=
  ∀ n, P6551438094014170789.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P6783138367977289262

`p?[A023468(A000040(n+1)+2)]`
-/

namespace A033560.P6783138367977289262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023468 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P6783138367977289262

namespace A033560

/-- `p?[A023468(A000040(n+1)+2)]` -/
def P6783138367977289262.Spec : Prop :=
  ∀ n, P6783138367977289262.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P54052011722717465

`A092487(p?[A006093(n+1)-23])`
-/

namespace A033560.P54052011722717465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033560.P54052011722717465

namespace A033560

/-- `A092487(p?[A006093(n+1)-23])` -/
def P54052011722717465.Spec : Prop :=
  ∀ n, P54052011722717465.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P14193373459663297749

`A007918(p?[A008578(n+1)-24])`
-/

namespace A033560.P14193373459663297749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A033560.P14193373459663297749

namespace A033560

/-- `A007918(p?[A008578(n+1)-24])` -/
def P14193373459663297749.Spec : Prop :=
  ∀ n, P14193373459663297749.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P3832805454594804256

`record[A006530(A013632(n+24)+n)]`
-/

namespace A033560.P3832805454594804256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013632 (n + 24) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033560.P3832805454594804256

namespace A033560

/-- `record[A006530(A013632(n+24)+n)]` -/
def P3832805454594804256.Spec : Prop :=
  ∀ n, P3832805454594804256.a n = A033560 (n + 1)

end A033560

/-! ## A033560.P10921190512421824073

`p?[A008587(A008587(n))-A055671(n)]`
-/

namespace A033560.P10921190512421824073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A008587 n).toNat - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033560.P10921190512421824073

namespace A033560

/-- `p?[A008587(A008587(n))-A055671(n)]` -/
def P10921190512421824073.Spec : Prop :=
  ∀ n, P10921190512421824073.a n = A033560 (n + 1)

end A033560

/-!
# A033561: Primes p such that 6!+p is also prime.

The programs for A033561, the canonical program `A033561.P1549890924565319554` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033561 has offset 1).

The definition of A033561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033561.P7649451452099684467

`p?[A000040(n+1)-A040006(n)!]`
-/

namespace A033561.P7649451452099684467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (Nat.factorial (A040006 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033561.P7649451452099684467

namespace A033561

/-- `p?[A000040(n+1)-A040006(n)!]` -/
def P7649451452099684467.Spec : Prop :=
  ∀ n, P7649451452099684467.a n = A033561 (n + 1)

end A033561

/-! ## A033561.P10758829184599516872

`p?[A045319(n+1)-A040006(n)!]`
-/

namespace A033561.P10758829184599516872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - (Nat.factorial (A040006 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033561.P10758829184599516872

namespace A033561

/-- `p?[A045319(n+1)-A040006(n)!]` -/
def P10758829184599516872.Spec : Prop :=
  ∀ n, P10758829184599516872.a n = A033561 (n + 1)

end A033561

/-! ## A033561.P10995009656152048302

`p?[A008578(n+1)-A040006(n)!]`
-/

namespace A033561.P10995009656152048302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (Nat.factorial (A040006 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033561.P10995009656152048302

namespace A033561

/-- `p?[A008578(n+1)-A040006(n)!]` -/
def P10995009656152048302.Spec : Prop :=
  ∀ n, P10995009656152048302.a n = A033561 (n + 1)

end A033561

/-! ## A033561.P1549890924565319554

`p?[A008578(n+1)-A267884(n)!]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033561

/-- `p?[A008578(n+1)-A267884(n)!]` -/
def P1549890924565319554.Spec : Prop :=
  ∀ n, P1549890924565319554.a n = A033561 (n + 1)

theorem P1549890924565319554.correct : P1549890924565319554.Spec := by
  intro n
  simp only [A033561, Nat.add_sub_cancel]

end A033561

/-! ## A033561.P3806576995915848961

`p?[A093641(n+1)-A040006(n)!]`
-/

namespace A033561.P3806576995915848961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1) - (Nat.factorial (A040006 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033561.P3806576995915848961

namespace A033561

/-- `p?[A093641(n+1)-A040006(n)!]` -/
def P3806576995915848961.Spec : Prop :=
  ∀ n, P3806576995915848961.a n = A033561 (n + 1)

end A033561

/-!
# A033562: a(n) = 2*n^3 + 1.

The programs for A033562, the canonical program `A033562.P8318221385347379331` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033562 has offset 0).

The definition of A033562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3+1` (program `A033562.P8318221385347379331`, by `A033562.P8318221385347379331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033562.P8318221385347379331

`2*n^3+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033562

/-- `2*n^3+1` -/
def P8318221385347379331.Spec : Prop :=
  ∀ n, (P8318221385347379331.a n : ℤ) = A033562 n

theorem P8318221385347379331.correct : P8318221385347379331.Spec := by
  intro n
  simp only [A033562]

end A033562

/-! ## A033562.P985510053410342529

`or(1, 2*n^3)`
-/

namespace A033562.P985510053410342529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 3)

end

end A033562.P985510053410342529

namespace A033562

/-- `or(1, 2*n^3)` -/
def P985510053410342529.Spec : Prop :=
  ∀ n, (P985510053410342529.a n : ℤ) = A033562 n

end A033562

/-! ## A033562.P15912724279711161552

`xor(1, 2*n^3)`
-/

namespace A033562.P15912724279711161552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n ^ 3)

end

end A033562.P15912724279711161552

namespace A033562

/-- `xor(1, 2*n^3)` -/
def P15912724279711161552.Spec : Prop :=
  ∀ n, (P15912724279711161552.a n : ℤ) = A033562 n

end A033562

/-! ## A033562.P1521098459388458131

`Δ[2*C(n, 2)²+n]`
-/

namespace A033562.P1521098459388458131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033562.P1521098459388458131

namespace A033562

/-- `Δ[2*C(n, 2)²+n]` -/
def P1521098459388458131.Spec : Prop :=
  ∀ n, P1521098459388458131.a n = A033562 n

end A033562

/-! ## A033562.P8708006875800926333

`or(2, n*(2*n)²)/2`
-/

namespace A033562.P8708006875800926333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n * (2 * n) ^ 2) : ℚ) / 2

end

end A033562.P8708006875800926333

namespace A033562

/-- `or(2, n*(2*n)²)/2` -/
def P8708006875800926333.Spec : Prop :=
  ∀ n, P8708006875800926333.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P10923628098597583987

`xor(2, n*(2*n)²)/2`
-/

namespace A033562.P10923628098597583987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n * (2 * n) ^ 2) : ℚ) / 2

end

end A033562.P10923628098597583987

namespace A033562

/-- `xor(2, n*(2*n)²)/2` -/
def P10923628098597583987.Spec : Prop :=
  ∀ n, P10923628098597583987.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P6853341184942492618

`abs(xor(2*n*n², -1))`
-/

namespace A033562.P6853341184942492618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * (n * n ^ 2) : ℤ) (-1)|

end

end A033562.P6853341184942492618

namespace A033562

/-- `abs(xor(2*n*n², -1))` -/
def P6853341184942492618.Spec : Prop :=
  ∀ n, P6853341184942492618.a n = A033562 n

end A033562

/-! ## A033562.P3307436502940856101

`-xor(2*n*n², -1)`
-/

namespace A033562.P3307436502940856101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * (n * n ^ 2) : ℤ) (-1)

end

end A033562.P3307436502940856101

namespace A033562

/-- `-xor(2*n*n², -1)` -/
def P3307436502940856101.Spec : Prop :=
  ∀ n, P3307436502940856101.a n = A033562 n

end A033562

/-! ## A033562.P16793941370680448154

`(Δ[lcm(n, n-1)²]+2)/2`
-/

namespace A033562.P16793941370680448154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 : ℚ) / 2

end

end A033562.P16793941370680448154

namespace A033562

/-- `(Δ[lcm(n, n-1)²]+2)/2` -/
def P16793941370680448154.Spec : Prop :=
  ∀ n, P16793941370680448154.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P9955973038908986461

`floor(cosh(log(n*(2*n)²+2)))`
-/

namespace A033562.P9955973038908986461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n * (2 * n) ^ 2 + 2 : ℝ))⌋

end

end A033562.P9955973038908986461

namespace A033562

/-- `floor(cosh(log(n*(2*n)²+2)))` -/
def P9955973038908986461.Spec : Prop :=
  ∀ n, P9955973038908986461.a n = A033562 n

end A033562

/-! ## A033562.P15752672104152279129

`floor(sinh(log(n*(2*n)²+3)))`
-/

namespace A033562.P15752672104152279129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (n * (2 * n) ^ 2 + 3 : ℝ))⌋

end

end A033562.P15752672104152279129

namespace A033562

/-- `floor(sinh(log(n*(2*n)²+3)))` -/
def P15752672104152279129.Spec : Prop :=
  ∀ n, P15752672104152279129.a n = A033562 n

end A033562

/-! ## A033562.P15280839412471398597

`lcm(2, 2*n*n²+1)/2`
-/

namespace A033562.P15280839412471398597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * (n * n ^ 2) + 1) : ℚ) / 2

end

end A033562.P15280839412471398597

namespace A033562

/-- `lcm(2, 2*n*n²+1)/2` -/
def P15280839412471398597.Spec : Prop :=
  ∀ n, P15280839412471398597.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P6964051396600138984

`((2*n+1)*C(2*n, 2)+n+2)/2`
-/

namespace A033562.P6964051396600138984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (2 * n) 2 + (n + 2) : ℚ) / 2

end

end A033562.P6964051396600138984

namespace A033562

/-- `((2*n+1)*C(2*n, 2)+n+2)/2` -/
def P6964051396600138984.Spec : Prop :=
  ∀ n, P6964051396600138984.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P15199188047684816652

`∑[A005897(n)-6*n]`
-/

namespace A033562.P15199188047684816652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033562.P15199188047684816652

namespace A033562

/-- `∑[A005897(n)-6*n]` -/
def P15199188047684816652.Spec : Prop :=
  ∀ n, P15199188047684816652.a n = A033562 n

end A033562

/-! ## A033562.P8157859740352855891

`(A035328(n)+2+n)/2`
-/

namespace A033562.P8157859740352855891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035328 n + 2 + (n : ℤ) : ℚ) / 2

end

end A033562.P8157859740352855891

namespace A033562

/-- `(A035328(n)+2+n)/2` -/
def P8157859740352855891.Spec : Prop :=
  ∀ n, P8157859740352855891.a n = (A033562 n : ℚ)

end A033562

/-! ## A033562.P4257275532536783967

`abs(1-2*(A000578(n)+1))`
-/

namespace A033562.P4257275532536783967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (A000578 n + 1)|

end

end A033562.P4257275532536783967

namespace A033562

/-- `abs(1-2*(A000578(n)+1))` -/
def P4257275532536783967.Spec : Prop :=
  ∀ n, P4257275532536783967.a n = A033562 n

end A033562

/-! ## A033562.P4421306361534005262

`abs(n*(A058331(n)-1)+1)`
-/

namespace A033562.P4421306361534005262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A058331 n - 1) + 1|

end

end A033562.P4421306361534005262

namespace A033562

/-- `abs(n*(A058331(n)-1)+1)` -/
def P4421306361534005262.Spec : Prop :=
  ∀ n, P4421306361534005262.a n = A033562 n

end A033562

/-! ## A033562.P6209363979658932567

`abs((n-1)*A046092(n)+1+n+n)`
-/

namespace A033562.P6209363979658932567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A046092 n + 1 + (n : ℤ) + (n : ℤ)|

end

end A033562.P6209363979658932567

namespace A033562

/-- `abs((n-1)*A046092(n)+1+n+n)` -/
def P6209363979658932567.Spec : Prop :=
  ∀ n, P6209363979658932567.a n = A033562 n

end A033562

/-! ## A033562.P7357098110112177609

`Δ[∑[n]+C(n²-n, 2)]`
-/

namespace A033562.P7357098110112177609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033562.P7357098110112177609

namespace A033562

/-- `Δ[∑[n]+C(n²-n, 2)]` -/
def P7357098110112177609.Spec : Prop :=
  ∀ n, P7357098110112177609.a n = A033562 n

end A033562

/-!
# A033563: Primes in A001067.

The programs for A033563, there is no canonical definition to state claims against.
-/

/-! ## A033563.P12851572455312704302

`A281331(A112548(n+1)/2)`
-/

namespace A033563.P12851572455312704302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281331 (SequenceMachineLib.roundAway ((A112548 (n + 1) : ℚ) / 2)).toNat

end

end A033563.P12851572455312704302

/-! ## A033563.P1589206648358012308

`A281332(A112548(n+1)/2)`
-/

namespace A033563.P1589206648358012308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281332 (SequenceMachineLib.roundAway ((A112548 (n + 1) : ℚ) / 2)).toNat

end

end A033563.P1589206648358012308

/-! ## A033563.P718002407958497143

`A249909(eq[A093178(n), A250213(n)])`
-/

namespace A033563.P718002407958497143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033563.P718002407958497143

/-!
# A033565: Partially directed animals on the square lattice.

The programs for A033565, there is no canonical definition to state claims against.
-/

/-! ## A033565.P3015749495166387808

`A248227(A071724(n))`
-/

namespace A033565.P3015749495166387808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A071724 n).toNat

end

end A033565.P3015749495166387808

/-! ## A033565.P15501835484905128083

`A248186(A000245(n)+2)`
-/

namespace A033565.P15501835484905128083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A000245 n + 2).toNat

end

end A033565.P15501835484905128083

/-! ## A033565.P14055803227749669697

`∑[A255072(A006095(n))]+1`
-/

namespace A033565.P14055803227749669697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A006095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033565.P14055803227749669697

/-! ## A033565.P12041918096707703964

`A060384(A248098(2*n+1)+n)`
-/

namespace A033565.P12041918096707703964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A248098 (2 * n + 1) + (n : ℤ)).toNat

end

end A033565.P12041918096707703964

/-!
# A033566: a(n) = (2*n+1) * (4*n-1).

The programs for A033566, the canonical program `A033566.P726618908899133796` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033566 has offset 0).

The definition of A033566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(4*n-1)` (program `A033566.P726618908899133796`, by `A033566.P726618908899133796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033566.P726618908899133796

`(2*n+1)*(4*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033566

/-- `(2*n+1)*(4*n-1)` -/
def P726618908899133796.Spec : Prop :=
  ∀ n, P726618908899133796.a n = A033566 n

theorem P726618908899133796.correct : P726618908899133796.Spec := by
  intro n
  simp only [A033566]

end A033566

/-! ## A033566.P883791892362389722

`C(4*n+1, 2)-1`
-/

namespace A033566.P883791892362389722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) 2 : ℤ) - 1

end

end A033566.P883791892362389722

namespace A033566

/-- `C(4*n+1, 2)-1` -/
def P883791892362389722.Spec : Prop :=
  ∀ n, P883791892362389722.a n = A033566 n

end A033566

/-! ## A033566.P4437444682290190874

`∑[a(n-1)+16]` with `a(0)=-1, a(1)=10`
-/

namespace A033566.P4437444682290190874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 10] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033566.P4437444682290190874

namespace A033566

/-- `∑[a(n-1)+16]` -/
def P4437444682290190874.Spec : Prop :=
  ∀ n, P4437444682290190874.a n = A033566 n

end A033566

/-! ## A033566.P4268022379378421572

`xor(-C(4*n+1, 2), -1)`
-/

namespace A033566.P4268022379378421572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(Nat.choose (4 * n + 1) 2 : ℤ)) (-1)

end

end A033566.P4268022379378421572

namespace A033566

/-- `xor(-C(4*n+1, 2), -1)` -/
def P4268022379378421572.Spec : Prop :=
  ∀ n, P4268022379378421572.a n = A033566 n

end A033566

/-! ## A033566.P6085019859800706909

`A033585(n)-1`
-/

namespace A033566.P6085019859800706909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n - 1

end

end A033566.P6085019859800706909

namespace A033566

/-- `A033585(n)-1` -/
def P6085019859800706909.Spec : Prop :=
  ∀ n, P6085019859800706909.a n = A033566 n

end A033566

/-! ## A033566.P4090382983854933015

`A188135(n)-2`
-/

namespace A033566.P4090382983854933015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n - 2

end

end A033566.P4090382983854933015

namespace A033566

/-- `A188135(n)-2` -/
def P4090382983854933015.Spec : Prop :=
  ∀ n, P4090382983854933015.a n = A033566 n

end A033566

/-! ## A033566.P7736774991360358770

`∑[A113770(n)]-2`
-/

namespace A033566.P7736774991360358770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A033566.P7736774991360358770

namespace A033566

/-- `∑[A113770(n)]-2` -/
def P7736774991360358770.Spec : Prop :=
  ∀ n, P7736774991360358770.a n = A033566 n

end A033566

/-! ## A033566.P2987540690819254611

`2*A182868(n)+1`
-/

namespace A033566.P2987540690819254611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182868 n + 1

end

end A033566.P2987540690819254611

namespace A033566

/-- `2*A182868(n)+1` -/
def P2987540690819254611.Spec : Prop :=
  ∀ n, P2987540690819254611.a n = A033566 n

end A033566

/-! ## A033566.P10580325434216146733

`2*A007742(n)-1`
-/

namespace A033566.P10580325434216146733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007742 n - 1

end

end A033566.P10580325434216146733

namespace A033566

/-- `2*A007742(n)-1` -/
def P10580325434216146733.Spec : Prop :=
  ∀ n, P10580325434216146733.a n = A033566 n

end A033566

/-! ## A033566.P8029143207001636952

`(A082041(n)-3)/2`
-/

namespace A033566.P8029143207001636952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082041 n - 3 : ℚ) / 2

end

end A033566.P8029143207001636952

namespace A033566

/-- `(A082041(n)-3)/2` -/
def P8029143207001636952.Spec : Prop :=
  ∀ n, P8029143207001636952.a n = (A033566 n : ℚ)

end A033566

/-! ## A033566.P7307139433707385419

`(A381424(n)-4)/3`
-/

namespace A033566.P7307139433707385419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381424 n - 4 : ℚ) / 3

end

end A033566.P7307139433707385419

namespace A033566

/-- `(A381424(n)-4)/3` -/
def P7307139433707385419.Spec : Prop :=
  ∀ n, P7307139433707385419.a n = (A033566 n : ℚ)

end A033566

/-! ## A033566.P18391453138521142144

`A139275(n)-1+n`
-/

namespace A033566.P18391453138521142144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n - 1 + (n : ℤ)

end

end A033566.P18391453138521142144

namespace A033566

/-- `A139275(n)-1+n` -/
def P18391453138521142144.Spec : Prop :=
  ∀ n, P18391453138521142144.a n = A033566 n

end A033566

/-! ## A033566.P8416560731941670506

`A139276(n)-(n+1)`
-/

namespace A033566.P8416560731941670506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n - (n + 1 : ℤ)

end

end A033566.P8416560731941670506

namespace A033566

/-- `A139276(n)-(n+1)` -/
def P8416560731941670506.Spec : Prop :=
  ∀ n, P8416560731941670506.a n = A033566 n

end A033566

/-! ## A033566.P3531843365287280028

`A236267(n)-(n+2)`
-/

namespace A033566.P3531843365287280028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n - (n + 2 : ℤ)

end

end A033566.P3531843365287280028

namespace A033566

/-- `A236267(n)-(n+2)` -/
def P3531843365287280028.Spec : Prop :=
  ∀ n, P3531843365287280028.a n = A033566 n

end A033566

/-! ## A033566.P11163039825611767811

`n*A017089(n)-1`
-/

namespace A033566.P11163039825611767811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017089 n - 1

end

end A033566.P11163039825611767811

namespace A033566

/-- `n*A017089(n)-1` -/
def P11163039825611767811.Spec : Prop :=
  ∀ n, P11163039825611767811.a n = A033566 n

end A033566

/-! ## A033566.P10621450024757639865

`A033586(n)-(2*n+1)`
-/

namespace A033566.P10621450024757639865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n - (2 * n + 1 : ℤ)

end

end A033566.P10621450024757639865

namespace A033566

/-- `A033586(n)-(2*n+1)` -/
def P10621450024757639865.Spec : Prop :=
  ∀ n, P10621450024757639865.a n = A033566 n

end A033566

/-! ## A033566.P15606373075403855856

`Δ[A168547(n)-(n+1)²]`
-/

namespace A033566.P15606373075403855856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033566.P15606373075403855856

namespace A033566

/-- `Δ[A168547(n)-(n+1)²]` -/
def P15606373075403855856.Spec : Prop :=
  ∀ n, P15606373075403855856.a n = A033566 n

end A033566

/-! ## A033566.P11624356794780766749

`A002943(n)+A000466(n)`
-/

namespace A033566.P11624356794780766749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + A000466 n

end

end A033566.P11624356794780766749

namespace A033566

/-- `A002943(n)+A000466(n)` -/
def P11624356794780766749.Spec : Prop :=
  ∀ n, P11624356794780766749.a n = A033566 n

end A033566

/-! ## A033566.P17478907951248358217

`A033569(n)+A014106(n)`
-/

namespace A033566.P17478907951248358217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + A014106 n

end

end A033566.P17478907951248358217

namespace A033566

/-- `A033569(n)+A014106(n)` -/
def P17478907951248358217.Spec : Prop :=
  ∀ n, P17478907951248358217.a n = A033566 n

end A033566

/-! ## A033566.P432885285235039802

`A046691(n)+A022272(n)`
-/

namespace A033566.P432885285235039802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A022272 n

end

end A033566.P432885285235039802

namespace A033566

/-- `A046691(n)+A022272(n)` -/
def P432885285235039802.Spec : Prop :=
  ∀ n, P432885285235039802.a n = A033566 n

end A033566

/-!
# A033567: a(n) = (2*n-1)*(4*n-1).

The programs for A033567, the canonical program `A033567.P4876348831150855649` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033567 has offset 0).

The definition of A033567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(4*n-1)` (program `A033567.P4876348831150855649`, by `A033567.P4876348831150855649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033567.P4876348831150855649

`(2*n-1)*(4*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033567

/-- `(2*n-1)*(4*n-1)` -/
def P4876348831150855649.Spec : Prop :=
  ∀ n, P4876348831150855649.a n = A033567 n

theorem P4876348831150855649.correct : P4876348831150855649.Spec := by
  intro n
  simp only [A033567]

end A033567

/-! ## A033567.P11737478372706975722

`record[C(xor(1, n), and(2, n))]`
-/

namespace A033567.P11737478372706975722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033567.P11737478372706975722

namespace A033567

/-- `record[C(xor(1, n), and(2, n))]` -/
def P11737478372706975722.Spec : Prop :=
  ∀ n, (P11737478372706975722.a n : ℤ) = A033567 n

end A033567

/-! ## A033567.P10154516777648618742

`∑[a(n-1)+16]` with `a(0)=1, a(1)=2`
-/

namespace A033567.P10154516777648618742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033567.P10154516777648618742

namespace A033567

/-- `∑[a(n-1)+16]` -/
def P10154516777648618742.Spec : Prop :=
  ∀ n, (P10154516777648618742.a n : ℤ) = A033567 n

end A033567

/-! ## A033567.P1421270459888811498

`or(1, n*(8*n-6))`
-/

namespace A033567.P1421270459888811498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((8 * n : ℤ) - 6))

end

end A033567.P1421270459888811498

namespace A033567

/-- `or(1, n*(8*n-6))` -/
def P1421270459888811498.Spec : Prop :=
  ∀ n, P1421270459888811498.a n = A033567 n

end A033567

/-! ## A033567.P8341927708487032182

`xor(1, n*(8*n-6))`
-/

namespace A033567.P8341927708487032182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((8 * n : ℤ) - 6))

end

end A033567.P8341927708487032182

namespace A033567

/-- `xor(1, n*(8*n-6))` -/
def P8341927708487032182.Spec : Prop :=
  ∀ n, P8341927708487032182.a n = A033567 n

end A033567

/-! ## A033567.P18383228548286349843

`record[ogf((1+3x+6x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A033567.P18383228548286349843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033567.P18383228548286349843

namespace A033567

/-- `record[ogf((1+3x+6x^2)/(1+3x+3x^2+x^3))]` -/
def P18383228548286349843.Spec : Prop :=
  ∀ n, P18383228548286349843.a n = A033567 n

end A033567

/-! ## A033567.P3098001179929717840

`record[C(2*n+1, 2*n%2)]`
-/

namespace A033567.P3098001179929717840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033567.P3098001179929717840

namespace A033567

/-- `record[C(2*n+1, 2*n%2)]` -/
def P3098001179929717840.Spec : Prop :=
  ∀ n, (P3098001179929717840.a n : ℤ) = A033567 n

end A033567

/-! ## A033567.P12695482690623053257

`record[C(2*n+1, 2*and(1, n))]`
-/

namespace A033567.P12695482690623053257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033567.P12695482690623053257

namespace A033567

/-- `record[C(2*n+1, 2*and(1, n))]` -/
def P12695482690623053257.Spec : Prop :=
  ∀ n, (P12695482690623053257.a n : ℤ) = A033567 n

end A033567

/-! ## A033567.P954379496430672646

`record[(n*(2*n+1))^and(1, n)]`
-/

namespace A033567.P954379496430672646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1)) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033567.P954379496430672646

namespace A033567

/-- `record[(n*(2*n+1))^and(1, n)]` -/
def P954379496430672646.Spec : Prop :=
  ∀ n, (P954379496430672646.a n : ℤ) = A033567 n

end A033567

/-! ## A033567.P2426178083835697299

`A139271(n)+1`
-/

namespace A033567.P2426178083835697299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + 1

end

end A033567.P2426178083835697299

namespace A033567

/-- `A139271(n)+1` -/
def P2426178083835697299.Spec : Prop :=
  ∀ n, P2426178083835697299.a n = A033567 n

end A033567

/-! ## A033567.P11073462594337868061

`A125201(n)+n`
-/

namespace A033567.P11073462594337868061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + (n : ℤ)

end

end A033567.P11073462594337868061

namespace A033567

/-- `A125201(n)+n` -/
def P11073462594337868061.Spec : Prop :=
  ∀ n, P11073462594337868061.a n = A033567 n

end A033567

/-! ## A033567.P5278151586218308724

`A383464(n)-n`
-/

namespace A033567.P5278151586218308724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n - (n : ℤ)

end

end A033567.P5278151586218308724

namespace A033567

/-- `A383464(n)-n` -/
def P5278151586218308724.Spec : Prop :=
  ∀ n, P5278151586218308724.a n = A033567 n

end A033567

/-! ## A033567.P3591819785394011364

`2*A001107(n)+1`
-/

namespace A033567.P3591819785394011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001107 n + 1

end

end A033567.P3591819785394011364

namespace A033567

/-- `2*A001107(n)+1` -/
def P3591819785394011364.Spec : Prop :=
  ∀ n, P3591819785394011364.a n = A033567 n

end A033567

/-! ## A033567.P15119943971901808141

`2*A054552(n)-1`
-/

namespace A033567.P15119943971901808141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054552 n - 1

end

end A033567.P15119943971901808141

namespace A033567

/-- `2*A054552(n)-1` -/
def P15119943971901808141.Spec : Prop :=
  ∀ n, P15119943971901808141.a n = A033567 n

end A033567

/-! ## A033567.P4998866468679872664

`A051870(n)+1+n`
-/

namespace A033567.P4998866468679872664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + 1 + (n : ℤ)

end

end A033567.P4998866468679872664

namespace A033567

/-- `A051870(n)+1+n` -/
def P4998866468679872664.Spec : Prop :=
  ∀ n, P4998866468679872664.a n = A033567 n

end A033567

/-! ## A033567.P4461578088036079552

`A139272(n)+1-n`
-/

namespace A033567.P4461578088036079552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n + (1 - (n : ℤ))

end

end A033567.P4461578088036079552

namespace A033567

/-- `A139272(n)+1-n` -/
def P4461578088036079552.Spec : Prop :=
  ∀ n, P4461578088036079552.a n = A033567 n

end A033567

/-! ## A033567.P3256368737722383376

`A360417(n)-1+n`
-/

namespace A033567.P3256368737722383376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360417 n - 1 + (n : ℤ)

end

end A033567.P3256368737722383376

namespace A033567

/-- `A360417(n)-1+n` -/
def P3256368737722383376.Spec : Prop :=
  ∀ n, P3256368737722383376.a n = A033567 n

end A033567

/-! ## A033567.P14931528975818775398

`A080856(n)-2*n`
-/

namespace A033567.P14931528975818775398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - (2 * n : ℤ)

end

end A033567.P14931528975818775398

namespace A033567

/-- `A080856(n)-2*n` -/
def P14931528975818775398.Spec : Prop :=
  ∀ n, P14931528975818775398.a n = A033567 n

end A033567

/-! ## A033567.P1395736873725637002

`A185438(n)-4*n`
-/

namespace A033567.P1395736873725637002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n - (4 * n : ℤ)

end

end A033567.P1395736873725637002

namespace A033567

/-- `A185438(n)-4*n` -/
def P1395736873725637002.Spec : Prop :=
  ∀ n, P1395736873725637002.a n = A033567 n

end A033567

/-! ## A033567.P4179963498827883030

`∑[A298035(n)]-n²`
-/

namespace A033567.P4179963498827883030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A033567.P4179963498827883030

namespace A033567

/-- `∑[A298035(n)]-n²` -/
def P4179963498827883030.Spec : Prop :=
  ∀ n, P4179963498827883030.a n = A033567 n

end A033567

/-!
# A033568: Second pentagonal numbers with odd index: a(n) = (2*n-1)*(3*n-1).

The programs for A033568, the canonical program `A033568.P8873267953823805199` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033568 has offset 0).

The definition of A033568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)` (program `A033568.P8873267953823805199`, by `A033568.P8873267953823805199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033568.P12495941552144353086

`6*n²-5*n+1`
-/

namespace A033568.P12495941552144353086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (5 * n : ℤ) + 1

end

end A033568.P12495941552144353086

namespace A033568

/-- `6*n²-5*n+1` -/
def P12495941552144353086.Spec : Prop :=
  ∀ n, P12495941552144353086.a n = A033568 n

theorem P12495941552144353086.correct : P12495941552144353086.Spec := by
  intro n
  simp only [A033568, Nat.add_sub_cancel, A033568.P12495941552144353086.a, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033568

/-! ## A033568.P8873267953823805199

`(2*n-1)*(3*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033568

/-- `(2*n-1)*(3*n-1)` -/
def P8873267953823805199.Spec : Prop :=
  ∀ n, P8873267953823805199.a n = A033568 n

theorem P8873267953823805199.correct : P8873267953823805199.Spec := by
  intro n
  simp only [A033568]

end A033568

/-! ## A033568.P11504772105509812088

`∑[a(n-1)+12]` with `a(0)=1, a(1)=1`
-/

namespace A033568.P11504772105509812088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033568.P11504772105509812088

namespace A033568

/-- `∑[a(n-1)+12]` -/
def P11504772105509812088.Spec : Prop :=
  ∀ n, (P11504772105509812088.a n : ℤ) = A033568 n

end A033568

/-! ## A033568.P9107999648286345887

`record[ogf((1+3x+5x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A033568.P9107999648286345887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033568.P9107999648286345887

namespace A033568

/-- `record[ogf((1+3x+5x^2)/(1+3x+3x^2+x^3))]` -/
def P9107999648286345887.Spec : Prop :=
  ∀ n, P9107999648286345887.a n = A033568 n

end A033568

/-! ## A033568.P14736363773748515873

`(A255185(n)+2+n)/2`
-/

namespace A033568.P14736363773748515873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255185 n + 2 + (n : ℤ) : ℚ) / 2

end

end A033568.P14736363773748515873

namespace A033568

/-- `(A255185(n)+2+n)/2` -/
def P14736363773748515873.Spec : Prop :=
  ∀ n, P14736363773748515873.a n = (A033568 n : ℚ)

end A033568

/-! ## A033568.P9435306312476344285

`(A152767(n)+2-n)/2`
-/

namespace A033568.P9435306312476344285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A033568.P9435306312476344285

namespace A033568

/-- `(A152767(n)+2-n)/2` -/
def P9435306312476344285.Spec : Prop :=
  ∀ n, P9435306312476344285.a n = (A033568 n : ℚ)

end A033568

/-! ## A033568.P10231858793295056382

`∑[A017533(A004273(n)-n)]`
-/

namespace A033568.P10231858793295056382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033568.P10231858793295056382

namespace A033568

/-- `∑[A017533(A004273(n)-n)]` -/
def P10231858793295056382.Spec : Prop :=
  ∀ n, P10231858793295056382.a n = A033568 n

end A033568

/-! ## A033568.P6033328720284554152

`record[A005449(n)^and(1, n)]`
-/

namespace A033568.P6033328720284554152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033568.P6033328720284554152

namespace A033568

/-- `record[A005449(n)^and(1, n)]` -/
def P6033328720284554152.Spec : Prop :=
  ∀ n, P6033328720284554152.a n = A033568 n

end A033568

/-! ## A033568.P14317515481342617081

`record[∑[A131386(n+1)]+n²]`
-/

namespace A033568.P14317515481342617081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033568.P14317515481342617081

namespace A033568

/-- `record[∑[A131386(n+1)]+n²]` -/
def P14317515481342617081.Spec : Prop :=
  ∀ n, P14317515481342617081.a n = A033568 n

end A033568

/-! ## A033568.P6608173158202910944

`A036499(A004277(n))`
-/

namespace A033568.P6608173158202910944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (A004277 n).toNat

end

end A033568.P6608173158202910944

namespace A033568

/-- `A036499(A004277(n))` -/
def P6608173158202910944.Spec : Prop :=
  ∀ n, P6608173158202910944.a n = A033568 n

end A033568

/-! ## A033568.P2939046953434456971

`A036499(A004275(n+1))`
-/

namespace A033568.P2939046953434456971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (A004275 (n + 1)).toNat

end

end A033568.P2939046953434456971

namespace A033568

/-- `A036499(A004275(n+1))` -/
def P2939046953434456971.Spec : Prop :=
  ∀ n, P2939046953434456971.a n = A033568 n

end A033568

/-! ## A033568.P10047125100999035178

`A033589(n)/A060747(2*n)`
-/

namespace A033568.P10047125100999035178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033589 n : ℚ) / (A060747 (2 * n) : ℚ)

end

end A033568.P10047125100999035178

namespace A033568

/-- `A033589(n)/A060747(2*n)` -/
def P10047125100999035178.Spec : Prop :=
  ∀ n, P10047125100999035178.a n = (A033568 n : ℚ)

end A033568

/-! ## A033568.P11639316499374248432

`∩[A036499(n+1), A008822(n)]`
-/

namespace A033568.P11639316499374248432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033568.P11639316499374248432

namespace A033568

/-- `∩[A036499(n+1), A008822(n)]` -/
def P11639316499374248432.Spec : Prop :=
  ∀ n, (P11639316499374248432.a n : ℤ) = A033568 n

end A033568

/-! ## A033568.P7907352731593315804

`A001318(A111284(n+1))`
-/

namespace A033568.P7907352731593315804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A111284 (n + 1)).toNat

end

end A033568.P7907352731593315804

namespace A033568

/-- `A001318(A111284(n+1))` -/
def P7907352731593315804.Spec : Prop :=
  ∀ n, P7907352731593315804.a n = A033568 n

end A033568

/-! ## A033568.P1179292384795465354

`A001840(A091361(n+2)-1)`
-/

namespace A033568.P1179292384795465354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A091361 (n + 2) - 1).toNat

end

end A033568.P1179292384795465354

namespace A033568

/-- `A001840(A091361(n+2)-1)` -/
def P1179292384795465354.Spec : Prop :=
  ∀ n, P1179292384795465354.a n = A033568 n

end A033568

/-! ## A033568.P2864926922965291810

`∩[A008822(n), A230548(n+2)]`
-/

namespace A033568.P2864926922965291810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230548 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033568.P2864926922965291810

namespace A033568

/-- `∩[A008822(n), A230548(n+2)]` -/
def P2864926922965291810.Spec : Prop :=
  ∀ n, (P2864926922965291810.a n : ℤ) = A033568 n

end A033568

/-! ## A033568.P18143818739988441194

`A058937(A016921(n))`
-/

namespace A033568.P18143818739988441194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (A016921 n).toNat

end

end A033568.P18143818739988441194

namespace A033568

/-- `A058937(A016921(n))` -/
def P18143818739988441194.Spec : Prop :=
  ∀ n, P18143818739988441194.a n = A033568 n

end A033568

/-! ## A033568.P6162087055607316557

`A008649(A298035(n))`
-/

namespace A033568.P6162087055607316557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008649 (A298035 n).toNat

end

end A033568.P6162087055607316557

namespace A033568

/-- `A008649(A298035(n))` -/
def P6162087055607316557.Spec : Prop :=
  ∀ n, P6162087055607316557.a n = A033568 n

end A033568

/-!
# A033569: a(n) = (2*n - 1)*(3*n + 1).

The programs for A033569, the canonical program `A033569.P5108390427402809841` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033569 has offset 0).

The definition of A033569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n+1)` (program `A033569.P5108390427402809841`, by `A033569.P5108390427402809841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033569.P5108390427402809841

`(2*n-1)*(3*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033569

/-- `(2*n-1)*(3*n+1)` -/
def P5108390427402809841.Spec : Prop :=
  ∀ n, P5108390427402809841.a n = A033569 n

theorem P5108390427402809841.correct : P5108390427402809841.Spec := by
  intro n
  simp only [A033569]

end A033569

/-! ## A033569.P17113765151407952339

`∑[a(n-1)+12]` with `a(0)=-1, a(1)=5`
-/

namespace A033569.P17113765151407952339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 5] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033569.P17113765151407952339

namespace A033569

/-- `∑[a(n-1)+12]` -/
def P17113765151407952339.Spec : Prop :=
  ∀ n, P17113765151407952339.a n = A033569 n

end A033569

/-! ## A033569.P14593130340235834672

`∑[ogf((-1+7x+6x^2)/(1-2x+x^2))]`
-/

namespace A033569.P14593130340235834672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033569.P14593130340235834672

namespace A033569

/-- `∑[ogf((-1+7x+6x^2)/(1-2x+x^2))]` -/
def P14593130340235834672.Spec : Prop :=
  ∀ n, P14593130340235834672.a n = A033569 n

end A033569

/-! ## A033569.P15908134647056865865

`ogf((-1+7x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033569.P15908134647056865865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7, 6] [1, -3, 3, -1] n

end

end A033569.P15908134647056865865

namespace A033569

/-- `ogf((-1+7x+6x^2)/(1-3x+3x^2-x^3))` -/
def P15908134647056865865.Spec : Prop :=
  ∀ n, P15908134647056865865.a n = A033569 n

end A033569

/-! ## A033569.P5692872771402451618

`A049452(n)-1`
-/

namespace A033569.P5692872771402451618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - 1

end

end A033569.P5692872771402451618

namespace A033569

/-- `A049452(n)-1` -/
def P5692872771402451618.Spec : Prop :=
  ∀ n, P5692872771402451618.a n = A033569 n

end A033569

/-! ## A033569.P2149482583285284063

`A140811(n)-n`
-/

namespace A033569.P2149482583285284063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n - (n : ℤ)

end

end A033569.P2149482583285284063

namespace A033569

/-- `A140811(n)-n` -/
def P2149482583285284063.Spec : Prop :=
  ∀ n, P2149482583285284063.a n = A033569 n

end A033569

/-! ## A033569.P1280905854715302184

`A126964(n)/2-1`
-/

namespace A033569.P1280905854715302184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126964 n : ℚ) / 2 - 1

end

end A033569.P1280905854715302184

namespace A033569

/-- `A126964(n)/2-1` -/
def P1280905854715302184.Spec : Prop :=
  ∀ n, P1280905854715302184.a n = (A033569 n : ℚ)

end A033569

/-! ## A033569.P7166553571245778722

`(A185918(n)-1)/2`
-/

namespace A033569.P7166553571245778722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185918 n - 1 : ℚ) / 2

end

end A033569.P7166553571245778722

namespace A033569

/-- `(A185918(n)-1)/2` -/
def P7166553571245778722.Spec : Prop :=
  ∀ n, P7166553571245778722.a n = (A033569 n : ℚ)

end A033569

/-! ## A033569.P9802598245772723566

`A033579(n)-1+n`
-/

namespace A033569.P9802598245772723566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - 1 + (n : ℤ)

end

end A033569.P9802598245772723566

namespace A033569

/-- `A033579(n)-1+n` -/
def P9802598245772723566.Spec : Prop :=
  ∀ n, P9802598245772723566.a n = A033569 n

end A033569

/-! ## A033569.P11546623043733562141

`A033581(n)-(n+1)`
-/

namespace A033569.P11546623043733562141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - (n + 1 : ℤ)

end

end A033569.P11546623043733562141

namespace A033569

/-- `A033581(n)-(n+1)` -/
def P11546623043733562141.Spec : Prop :=
  ∀ n, P11546623043733562141.a n = A033569 n

end A033569

/-! ## A033569.P519384639923826478

`A227776(n)-(n+2)`
-/

namespace A033569.P519384639923826478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n - (n + 2 : ℤ)

end

end A033569.P519384639923826478

namespace A033569

/-- `A227776(n)-(n+2)` -/
def P519384639923826478.Spec : Prop :=
  ∀ n, P519384639923826478.a n = A033569 n

end A033569

/-! ## A033569.P5445366554030406923

`A097803(n)-(n+4)`
-/

namespace A033569.P5445366554030406923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n - (n + 4 : ℤ)

end

end A033569.P5445366554030406923

namespace A033569

/-- `A097803(n)-(n+4)` -/
def P5445366554030406923.Spec : Prop :=
  ∀ n, P5445366554030406923.a n = A033569 n

end A033569

/-! ## A033569.P4071854095723528459

`A103115(n)+5*n`
-/

namespace A033569.P4071854095723528459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + (5 * n : ℤ)

end

end A033569.P4071854095723528459

namespace A033569

/-- `A103115(n)+5*n` -/
def P4071854095723528459.Spec : Prop :=
  ∀ n, P4071854095723528459.a n = A033569 n

end A033569

/-! ## A033569.P4830100021838510062

`floor(A158463(n)/2-n)`
-/

namespace A033569.P4830100021838510062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158463 n : ℚ) / 2 - (n : ℚ)⌋

end

end A033569.P4830100021838510062

namespace A033569

/-- `floor(A158463(n)/2-n)` -/
def P4830100021838510062.Spec : Prop :=
  ∀ n, P4830100021838510062.a n = A033569 n

end A033569

/-! ## A033569.P4540944020301192263

`A049453(n)-(2*n+1)`
-/

namespace A033569.P4540944020301192263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n - (2 * n + 1 : ℤ)

end

end A033569.P4540944020301192263

namespace A033569

/-- `A049453(n)-(2*n+1)` -/
def P4540944020301192263.Spec : Prop :=
  ∀ n, P4540944020301192263.a n = A033569 n

end A033569

/-! ## A033569.P1457806298780054578

`n*A101328(n+2)-1`
-/

namespace A033569.P1457806298780054578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101328 (n + 2) - 1

end

end A033569.P1457806298780054578

namespace A033569

/-- `n*A101328(n+2)-1` -/
def P1457806298780054578.Spec : Prop :=
  ∀ n, P1457806298780054578.a n = A033569 n

end A033569

/-! ## A033569.P7648088317090108749

`(A062783(n)-2+n)/2`
-/

namespace A033569.P7648088317090108749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062783 n - 2 + (n : ℤ) : ℚ) / 2

end

end A033569.P7648088317090108749

namespace A033569

/-- `(A062783(n)-2+n)/2` -/
def P7648088317090108749.Spec : Prop :=
  ∀ n, P7648088317090108749.a n = (A033569 n : ℚ)

end A033569

/-! ## A033569.P13133816812900549969

`∑[6*(A004277(n)-1)-1]`
-/

namespace A033569.P13133816812900549969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A004277 n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033569.P13133816812900549969

namespace A033569

/-- `∑[6*(A004277(n)-1)-1]` -/
def P13133816812900549969.Spec : Prop :=
  ∀ n, P13133816812900549969.a n = A033569 n

end A033569

/-! ## A033569.P12865663789628468947

`sqrt(A014794(n))/2+n-1`
-/

namespace A033569.P12865663789628468947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ) / 2 + ((n : ℤ) - 1 : ℝ)

end

end A033569.P12865663789628468947

namespace A033569

/-- `sqrt(A014794(n))/2+n-1` -/
def P12865663789628468947.Spec : Prop :=
  ∀ n, P12865663789628468947.a n = (A033569 n : ℝ)

end A033569

/-! ## A033569.P6980022812490366521

`(A244803(n+1)-(n+3))/2`
-/

namespace A033569.P6980022812490366521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244803 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A033569.P6980022812490366521

namespace A033569

/-- `(A244803(n+1)-(n+3))/2` -/
def P6980022812490366521.Spec : Prop :=
  ∀ n, P6980022812490366521.a n = (A033569 n : ℚ)

end A033569

/-!
# A033570: Pentagonal numbers with odd index: a(n) = (2*n+1)*(3*n+1).

The programs for A033570, the canonical program `A033570.P8308357737011808276` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033570 has offset 0).

The definition of A033570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)` (program `A033570.P8308357737011808276`, by `A033570.P8308357737011808276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033570.P8308357737011808276

`(2*n+1)*(3*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033570

/-- `(2*n+1)*(3*n+1)` -/
def P8308357737011808276.Spec : Prop :=
  ∀ n, (P8308357737011808276.a n : ℤ) = A033570 n

theorem P8308357737011808276.correct : P8308357737011808276.Spec := by
  intro n
  simp only [A033570]

end A033570

/-! ## A033570.P18073588337987509076

`A016754(n)+A014105(n)`
-/

namespace A033570.P18073588337987509076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A014105 n

end

end A033570.P18073588337987509076

namespace A033570

/-- `A016754(n)+A014105(n)` -/
def P18073588337987509076.Spec : Prop :=
  ∀ n, P18073588337987509076.a n = A033570 n

end A033570

/-! ## A033570.P10734889131603414333

`A000326(2*n+1)`
-/

namespace A033570.P10734889131603414333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n + 1)

end

end A033570.P10734889131603414333

namespace A033570

/-- `A000326(2*n+1)` -/
def P10734889131603414333.Spec : Prop :=
  ∀ n, P10734889131603414333.a n = A033570 n

end A033570

/-! ## A033570.P11474477935363315794

`A191967(2*n+1)`
-/

namespace A033570.P11474477935363315794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 (2 * n + 1)

end

end A033570.P11474477935363315794

namespace A033570

/-- `A191967(2*n+1)` -/
def P11474477935363315794.Spec : Prop :=
  ∀ n, P11474477935363315794.a n = A033570 n

end A033570

/-! ## A033570.P4868712678579021801

`C(6*n+3, 2)/3`
-/

namespace A033570.P4868712678579021801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n + 3) 2 : ℚ) / 3

end

end A033570.P4868712678579021801

namespace A033570

/-- `C(6*n+3, 2)/3` -/
def P4868712678579021801.Spec : Prop :=
  ∀ n, P4868712678579021801.a n = (A033570 n : ℚ)

end A033570

/-! ## A033570.P18088544284113899042

`∑[a(n-1)+12]` with `a(0)=1, a(1)=11`
-/

namespace A033570.P18088544284113899042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033570.P18088544284113899042

namespace A033570

/-- `∑[a(n-1)+12]` -/
def P18088544284113899042.Spec : Prop :=
  ∀ n, (P18088544284113899042.a n : ℤ) = A033570 n

end A033570

/-! ## A033570.P4471180709298767203

`lcm(3*n+1, Δ[n²])`
-/

namespace A033570.P4471180709298767203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033570.P4471180709298767203

namespace A033570

/-- `lcm(3*n+1, Δ[n²])` -/
def P4471180709298767203.Spec : Prop :=
  ∀ n, (P4471180709298767203.a n : ℤ) = A033570 n

end A033570

/-! ## A033570.P9799863948832566109

`∑[ogf((1+9x+2x^2)/(1-2x+x^2))]`
-/

namespace A033570.P9799863948832566109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033570.P9799863948832566109

namespace A033570

/-- `∑[ogf((1+9x+2x^2)/(1-2x+x^2))]` -/
def P9799863948832566109.Spec : Prop :=
  ∀ n, P9799863948832566109.a n = A033570 n

end A033570

/-! ## A033570.P9999189764743496642

`ogf((1+9x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033570.P9999189764743496642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 2] [1, -3, 3, -1] n

end

end A033570.P9999189764743496642

namespace A033570

/-- `ogf((1+9x+2x^2)/(1-3x+3x^2-x^3))` -/
def P9999189764743496642.Spec : Prop :=
  ∀ n, P9999189764743496642.a n = A033570 n

end A033570

/-! ## A033570.P330202670303393694

`lcm(2, Δ[n^3])-(n+1)`
-/

namespace A033570.P330202670303393694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 1 : ℤ)

end

end A033570.P330202670303393694

namespace A033570

/-- `lcm(2, Δ[n^3])-(n+1)` -/
def P330202670303393694.Spec : Prop :=
  ∀ n, P330202670303393694.a n = A033570 n

end A033570

/-! ## A033570.P2506082644484726456

`Δ[n*C(2*n, 2)]+n`
-/

namespace A033570.P2506082644484726456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A033570.P2506082644484726456

namespace A033570

/-- `Δ[n*C(2*n, 2)]+n` -/
def P2506082644484726456.Spec : Prop :=
  ∀ n, P2506082644484726456.a n = A033570 n

end A033570

/-! ## A033570.P2441857883140987893

`12*n-(1-a(n-1))` with `a(0)=1`
-/

namespace A033570.P2441857883140987893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (12 * n : ℤ) - (1 - a (n - 1))

end

end A033570.P2441857883140987893

namespace A033570

/-- `12*n-(1-a(n-1))` -/
def P2441857883140987893.Spec : Prop :=
  ∀ n, P2441857883140987893.a n = A033570 n

theorem P2441857883140987893.correct : P2441857883140987893.Spec := by
  intro n
  induction n with
  | zero => simp [A033570, A033570.P2441857883140987893.a, A033570.P8308357737011808276.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033570, Nat.add_sub_cancel, A033570.P2441857883140987893.a, A033570.P8308357737011808276.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033570

/-! ## A033570.P11001376396345244781

`A211014(n)+1`
-/

namespace A033570.P11001376396345244781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n + 1

end

end A033570.P11001376396345244781

namespace A033570

/-- `A211014(n)+1` -/
def P11001376396345244781.Spec : Prop :=
  ∀ n, P11001376396345244781.a n = A033570 n

end A033570

/-! ## A033570.P16442361831908993409

`A080859(n)+n`
-/

namespace A033570.P16442361831908993409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n + (n : ℤ)

end

end A033570.P16442361831908993409

namespace A033570

/-- `A080859(n)+n` -/
def P16442361831908993409.Spec : Prop :=
  ∀ n, P16442361831908993409.a n = A033570 n

end A033570

/-! ## A033570.P2449848783849762018

`Δ[A007588(n)]-n`
-/

namespace A033570.P2449848783849762018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A033570.P2449848783849762018

namespace A033570

/-- `Δ[A007588(n)]-n` -/
def P2449848783849762018.Spec : Prop :=
  ∀ n, P2449848783849762018.a n = A033570 n

end A033570

/-! ## A033570.P16294589233384807614

`A202804(n)+1+n`
-/

namespace A033570.P16294589233384807614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n + 1 + (n : ℤ)

end

end A033570.P16294589233384807614

namespace A033570

/-- `A202804(n)+1+n` -/
def P16294589233384807614.Spec : Prop :=
  ∀ n, P16294589233384807614.a n = A033570 n

end A033570

/-! ## A033570.P3547686452349907789

`A003154(n+1)-n`
-/

namespace A033570.P3547686452349907789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - (n : ℤ)

end

end A033570.P3547686452349907789

namespace A033570

/-- `A003154(n+1)-n` -/
def P3547686452349907789.Spec : Prop :=
  ∀ n, P3547686452349907789.a n = A033570 n

end A033570

/-! ## A033570.P11295773543606821586

`A049598(n)+1-n`
-/

namespace A033570.P11295773543606821586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n + (1 - (n : ℤ))

end

end A033570.P11295773543606821586

namespace A033570

/-- `A049598(n)+1-n` -/
def P11295773543606821586.Spec : Prop :=
  ∀ n, P11295773543606821586.a n = A033570 n

end A033570

/-! ## A033570.P14841549188961048498

`n*A016969(n)+1`
-/

namespace A033570.P14841549188961048498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016969 n + 1

end

end A033570.P14841549188961048498

namespace A033570

/-- `n*A016969(n)+1` -/
def P14841549188961048498.Spec : Prop :=
  ∀ n, P14841549188961048498.a n = A033570 n

end A033570

/-! ## A033570.P124979218059289010

`A011199(n)/(n+1)`
-/

namespace A033570.P124979218059289010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011199 n : ℚ) / (n + 1 : ℚ)

end

end A033570.P124979218059289010

namespace A033570

/-- `A011199(n)/(n+1)` -/
def P124979218059289010.Spec : Prop :=
  ∀ n, P124979218059289010.a n = (A033570 n : ℚ)

end A033570

/-!
# A033571: a(n) = (2*n + 1)*(5*n + 1).

The programs for A033571, the canonical program `A033571.P11165558806189646725` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033571 has offset 0).

The definition of A033571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(5*n+1)` (program `A033571.P11165558806189646725`, by `A033571.P11165558806189646725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033571.P11165558806189646725

`(2*n+1)*(5*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033571

/-- `(2*n+1)*(5*n+1)` -/
def P11165558806189646725.Spec : Prop :=
  ∀ n, (P11165558806189646725.a n : ℤ) = A033571 n

theorem P11165558806189646725.correct : P11165558806189646725.Spec := by
  intro n
  simp only [A033571]

end A033571

/-! ## A033571.P15787899316662494186

`A008596(n)+A158186(n)`
-/

namespace A033571.P15787899316662494186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n + A158186 n

end

end A033571.P15787899316662494186

namespace A033571

/-- `A008596(n)+A158186(n)` -/
def P15787899316662494186.Spec : Prop :=
  ∀ n, P15787899316662494186.a n = A033571 n

end A033571

/-! ## A033571.P8233084557324340207

`A003154(n+1)+A007742(n)`
-/

namespace A033571.P8233084557324340207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) + A007742 n

end

end A033571.P8233084557324340207

namespace A033571

/-- `A003154(n+1)+A007742(n)` -/
def P8233084557324340207.Spec : Prop :=
  ∀ n, P8233084557324340207.a n = A033571 n

end A033571

/-! ## A033571.P12794529946281769021

`A153126(2*n)`
-/

namespace A033571.P12794529946281769021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153126 (2 * n)

end

end A033571.P12794529946281769021

namespace A033571

/-- `A153126(2*n)` -/
def P12794529946281769021.Spec : Prop :=
  ∀ n, P12794529946281769021.a n = A033571 n

end A033571

/-! ## A033571.P14814788070829250154

`A000566(2*n+1)`
-/

namespace A033571.P14814788070829250154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (2 * n + 1)

end

end A033571.P14814788070829250154

namespace A033571

/-- `A000566(2*n+1)` -/
def P14814788070829250154.Spec : Prop :=
  ∀ n, P14814788070829250154.a n = A033571 n

end A033571

/-! ## A033571.P10451185407450310044

`∑[a(n-1)+20]` with `a(0)=1, a(1)=17`
-/

namespace A033571.P10451185407450310044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033571.P10451185407450310044

namespace A033571

/-- `∑[a(n-1)+20]` -/
def P10451185407450310044.Spec : Prop :=
  ∀ n, (P10451185407450310044.a n : ℤ) = A033571 n

end A033571

/-! ## A033571.P8185936728099060830

`∑[ogf((1+15x+4x^2)/(1-2x+x^2))]`
-/

namespace A033571.P8185936728099060830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033571.P8185936728099060830

namespace A033571

/-- `∑[ogf((1+15x+4x^2)/(1-2x+x^2))]` -/
def P8185936728099060830.Spec : Prop :=
  ∀ n, P8185936728099060830.a n = A033571 n

end A033571

/-! ## A033571.P16640123923024197735

`n*A017353(n)+1`
-/

namespace A033571.P16640123923024197735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017353 n + 1

end

end A033571.P16640123923024197735

namespace A033571

/-- `n*A017353(n)+1` -/
def P16640123923024197735.Spec : Prop :=
  ∀ n, P16640123923024197735.a n = A033571 n

end A033571

/-! ## A033571.P11506703080935712354

`A080860(n)+2*n`
-/

namespace A033571.P11506703080935712354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n + (2 * n : ℤ)

end

end A033571.P11506703080935712354

namespace A033571

/-- `A080860(n)+2*n` -/
def P11506703080935712354.Spec : Prop :=
  ∀ n, P11506703080935712354.a n = A033571 n

end A033571

/-! ## A033571.P1456371625656551452

`A272039(n)+3*n`
-/

namespace A033571.P1456371625656551452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n + (3 * n : ℤ)

end

end A033571.P1456371625656551452

namespace A033571

/-- `A272039(n)+3*n` -/
def P1456371625656551452.Spec : Prop :=
  ∀ n, P1456371625656551452.a n = A033571 n

end A033571

/-! ## A033571.P11092104542125158942

`A214660(n+1)+n²`
-/

namespace A033571.P11092104542125158942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214660 (n + 1) + (n ^ 2 : ℤ)

end

end A033571.P11092104542125158942

namespace A033571

/-- `A214660(n+1)+n²` -/
def P11092104542125158942.Spec : Prop :=
  ∀ n, P11092104542125158942.a n = A033571 n

end A033571

/-! ## A033571.P14676278650409454039

`ceil(A033574(n)/2+n)`
-/

namespace A033571.P14676278650409454039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033574 n : ℚ) / 2 + (n : ℚ)⌉

end

end A033571.P14676278650409454039

namespace A033571

/-- `ceil(A033574(n)/2+n)` -/
def P14676278650409454039.Spec : Prop :=
  ∀ n, P14676278650409454039.a n = A033571 n

end A033571

/-! ## A033571.P13051805397240883223

`∑[A114698(n+1)]-n`
-/

namespace A033571.P13051805397240883223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A033571.P13051805397240883223

namespace A033571

/-- `∑[A114698(n+1)]-n` -/
def P13051805397240883223.Spec : Prop :=
  ∀ n, P13051805397240883223.a n = A033571 n

end A033571

/-! ## A033571.P3795623822938708845

`A109117(n)/(n+1)^3`
-/

namespace A033571.P3795623822938708845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109117 n : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A033571.P3795623822938708845

namespace A033571

/-- `A109117(n)/(n+1)^3` -/
def P3795623822938708845.Spec : Prop :=
  ∀ n, P3795623822938708845.a n = (A033571 n : ℚ)

end A033571

/-! ## A033571.P414606633969572334

`A016778(n)+A002378(n)`
-/

namespace A033571.P414606633969572334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n + A002378 n

end

end A033571.P414606633969572334

namespace A033571

/-- `A016778(n)+A002378(n)` -/
def P414606633969572334.Spec : Prop :=
  ∀ n, P414606633969572334.a n = A033571 n

end A033571

/-! ## A033571.P14403055130991398914

`A014634(n)+A014105(n)`
-/

namespace A033571.P14403055130991398914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n + A014105 n

end

end A033571.P14403055130991398914

namespace A033571

/-- `A014634(n)+A014105(n)` -/
def P14403055130991398914.Spec : Prop :=
  ∀ n, P14403055130991398914.a n = A033571 n

end A033571

/-! ## A033571.P520378079987084947

`A028896(n)+A005892(n)`
-/

namespace A033571.P520378079987084947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A005892 n

end

end A033571.P520378079987084947

namespace A033571

/-- `A028896(n)+A005892(n)` -/
def P520378079987084947.Spec : Prop :=
  ∀ n, P520378079987084947.a n = A033571 n

end A033571

/-! ## A033571.P5170360850823449822

`A033570(n)+A002943(n)`
-/

namespace A033571.P5170360850823449822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n + A002943 n

end

end A033571.P5170360850823449822

namespace A033571

/-- `A033570(n)+A002943(n)` -/
def P5170360850823449822.Spec : Prop :=
  ∀ n, P5170360850823449822.a n = A033571 n

end A033571

/-! ## A033571.P17795577216527631803

`A033583(n)+A016993(n)`
-/

namespace A033571.P17795577216527631803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A016993 n

end

end A033571.P17795577216527631803

namespace A033571

/-- `A033583(n)+A016993(n)` -/
def P17795577216527631803.Spec : Prop :=
  ∀ n, P17795577216527631803.a n = A033571 n

end A033571

/-! ## A033571.P355083510374769127

`A060626(n)+A033569(n)`
-/

namespace A033571.P355083510374769127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 n + A033569 n

end

end A033571.P355083510374769127

namespace A033571

/-- `A060626(n)+A033569(n)` -/
def P355083510374769127.Spec : Prop :=
  ∀ n, P355083510374769127.a n = A033571 n

end A033571

/-!
# A033572: a(n) = (2*n+1)*(7*n+1).

The programs for A033572, the canonical program `A033572.P9937606357578850850` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033572 has offset 0).

The definition of A033572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(7*n+1)` (program `A033572.P9937606357578850850`, by `A033572.P9937606357578850850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033572.P9937606357578850850

`(2*n+1)*(7*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033572

/-- `(2*n+1)*(7*n+1)` -/
def P9937606357578850850.Spec : Prop :=
  ∀ n, (P9937606357578850850.a n : ℤ) = A033572 n

theorem P9937606357578850850.correct : P9937606357578850850.Spec := by
  intro n
  simp only [A033572]

end A033572

/-! ## A033572.P11135319053513580753

`A001106(2*n+1)`
-/

namespace A033572.P11135319053513580753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (2 * n + 1)

end

end A033572.P11135319053513580753

namespace A033572

/-- `A001106(2*n+1)` -/
def P11135319053513580753.Spec : Prop :=
  ∀ n, P11135319053513580753.a n = A033572 n

end A033572

/-! ## A033572.P1133920404204310214

`∑[a(n-1)+28]` with `a(0)=1, a(1)=23`
-/

namespace A033572.P1133920404204310214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033572.P1133920404204310214

namespace A033572

/-- `∑[a(n-1)+28]` -/
def P1133920404204310214.Spec : Prop :=
  ∀ n, (P1133920404204310214.a n : ℤ) = A033572 n

end A033572

/-! ## A033572.P5744506702622116864

`∑[ogf((1+21x+6x^2)/(1-2x+x^2))]`
-/

namespace A033572.P5744506702622116864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 21, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033572.P5744506702622116864

namespace A033572

/-- `∑[ogf((1+21x+6x^2)/(1-2x+x^2))]` -/
def P5744506702622116864.Spec : Prop :=
  ∀ n, P5744506702622116864.a n = A033572 n

end A033572

/-! ## A033572.P8959207988623721834

`28*n-(5-a(n-1))` with `a(0)=1`
-/

namespace A033572.P8959207988623721834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (28 * n : ℤ) - (5 - a (n - 1))

end

end A033572.P8959207988623721834

namespace A033572

/-- `28*n-(5-a(n-1))` -/
def P8959207988623721834.Spec : Prop :=
  ∀ n, P8959207988623721834.a n = A033572 n

theorem P8959207988623721834.correct : P8959207988623721834.Spec := by
  intro n
  induction n with
  | zero => simp [A033572, A033572.P8959207988623721834.a, A033572.P9937606357578850850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033572, Nat.add_sub_cancel, A033572.P8959207988623721834.a, A033572.P9937606357578850850.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033572

/-! ## A033572.P5426588373681189372

`Δ[C(2*n, 2)]²-C(2*n, 2)`
-/

namespace A033572.P5426588373681189372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (Nat.choose (2 * n) 2 : ℤ)

end

end A033572.P5426588373681189372

namespace A033572

/-- `Δ[C(2*n, 2)]²-C(2*n, 2)` -/
def P5426588373681189372.Spec : Prop :=
  ∀ n, P5426588373681189372.a n = A033572 n

end A033572

/-! ## A033572.P16217585310924922164

`A134153(n)-n²`
-/

namespace A033572.P16217585310924922164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134153 n - (n ^ 2 : ℤ)

end

end A033572.P16217585310924922164

namespace A033572

/-- `A134153(n)-n²` -/
def P16217585310924922164.Spec : Prop :=
  ∀ n, P16217585310924922164.a n = A033572 n

end A033572

/-! ## A033572.P14967796345395980632

`A195027(n)+1-n`
-/

namespace A033572.P14967796345395980632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195027 n + (1 - (n : ℤ))

end

end A033572.P14967796345395980632

namespace A033572

/-- `A195027(n)+1-n` -/
def P14967796345395980632.Spec : Prop :=
  ∀ n, P14967796345395980632.a n = A033572 n

end A033572

/-! ## A033572.P15729818838825122564

`A195026(n)+Δ[n²]`
-/

namespace A033572.P15729818838825122564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033572.P15729818838825122564

namespace A033572

/-- `A195026(n)+Δ[n²]` -/
def P15729818838825122564.Spec : Prop :=
  ∀ n, P15729818838825122564.a n = A033572 n

end A033572

/-! ## A033572.P17667423417177388817

`A144459(n)+n-n²`
-/

namespace A033572.P17667423417177388817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144459 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A033572.P17667423417177388817

namespace A033572

/-- `A144459(n)+n-n²` -/
def P17667423417177388817.Spec : Prop :=
  ∀ n, P17667423417177388817.a n = A033572 n

end A033572

/-! ## A033572.P9613081928475050154

`n²+A161587(n)-n`
-/

namespace A033572.P9613081928475050154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A161587 n - (n : ℤ))

end

end A033572.P9613081928475050154

namespace A033572

/-- `n²+A161587(n)-n` -/
def P9613081928475050154.Spec : Prop :=
  ∀ n, P9613081928475050154.a n = A033572 n

end A033572

/-! ## A033572.P6827387022575021801

`2*A005892(n)+n-1`
-/

namespace A033572.P6827387022575021801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005892 n + ((n : ℤ) - 1)

end

end A033572.P6827387022575021801

namespace A033572

/-- `2*A005892(n)+n-1` -/
def P6827387022575021801.Spec : Prop :=
  ∀ n, P6827387022575021801.a n = A033572 n

end A033572

/-! ## A033572.P8920670040853788854

`A389928(n+1)+3*n`
-/

namespace A033572.P8920670040853788854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389928 (n + 1) + (3 * n : ℤ)

end

end A033572.P8920670040853788854

namespace A033572

/-- `A389928(n+1)+3*n` -/
def P8920670040853788854.Spec : Prop :=
  ∀ n, P8920670040853788854.a n = A033572 n

end A033572

/-! ## A033572.P18003290456976954197

`A195314(n+1)-5*n`
-/

namespace A033572.P18003290456976954197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195314 (n + 1) - (5 * n : ℤ)

end

end A033572.P18003290456976954197

namespace A033572

/-- `A195314(n+1)-5*n` -/
def P18003290456976954197.Spec : Prop :=
  ∀ n, P18003290456976954197.a n = A033572 n

end A033572

/-! ## A033572.P6956868591615686699

`A272399(n+1)-(2*n)²`
-/

namespace A033572.P6956868591615686699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1) - ((2 * n) ^ 2 : ℤ)

end

end A033572.P6956868591615686699

namespace A033572

/-- `A272399(n+1)-(2*n)²` -/
def P6956868591615686699.Spec : Prop :=
  ∀ n, P6956868591615686699.a n = A033572 n

end A033572

/-! ## A033572.P17240567367390623614

`A014641(n)+A014105(n)`
-/

namespace A033572.P17240567367390623614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n + A014105 n

end

end A033572.P17240567367390623614

namespace A033572

/-- `A014641(n)+A014105(n)` -/
def P17240567367390623614.Spec : Prop :=
  ∀ n, P17240567367390623614.a n = A033572 n

end A033572

/-! ## A033572.P17061049106000033861

`A033571(n)+A002943(n)`
-/

namespace A033572.P17061049106000033861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n + A002943 n

end

end A033572.P17061049106000033861

namespace A033572

/-- `A033571(n)+A002943(n)` -/
def P17061049106000033861.Spec : Prop :=
  ∀ n, P17061049106000033861.a n = A033572 n

end A033572

/-! ## A033572.P16135395118485542977

`A033586(n)+A033570(n)`
-/

namespace A033572.P16135395118485542977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A033570 n

end

end A033572.P16135395118485542977

namespace A033572

/-- `A033586(n)+A033570(n)` -/
def P16135395118485542977.Spec : Prop :=
  ∀ n, P16135395118485542977.a n = A033572 n

end A033572

/-! ## A033572.P13608684434802466723

`A046092(n)+A033577(n)`
-/

namespace A033572.P13608684434802466723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A033577 n

end

end A033572.P13608684434802466723

namespace A033572

/-- `A046092(n)+A033577(n)` -/
def P13608684434802466723.Spec : Prop :=
  ∀ n, P13608684434802466723.a n = A033572 n

end A033572

/-! ## A033572.P15660416146509108898

`A080860(n)+A033996(n)`
-/

namespace A033572.P15660416146509108898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n + A033996 n

end

end A033572.P15660416146509108898

namespace A033572

/-- `A080860(n)+A033996(n)` -/
def P15660416146509108898.Spec : Prop :=
  ∀ n, P15660416146509108898.a n = A033572 n

end A033572

/-!
# A033573: a(n) = (2*n+1)*(9*n+1).

The programs for A033573, the canonical program `A033573.P5635402715111793120` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033573 has offset 0).

The definition of A033573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(9*n+1)` (program `A033573.P5635402715111793120`, by `A033573.P5635402715111793120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033573.P5635402715111793120

`(2*n+1)*(9*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033573

/-- `(2*n+1)*(9*n+1)` -/
def P5635402715111793120.Spec : Prop :=
  ∀ n, (P5635402715111793120.a n : ℤ) = A033573 n

theorem P5635402715111793120.correct : P5635402715111793120.Spec := by
  intro n
  simp only [A033573]

end A033573

/-! ## A033573.P10516055321286674666

`A051682(2*n+1)`
-/

namespace A033573.P10516055321286674666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (2 * n + 1)

end

end A033573.P10516055321286674666

namespace A033573

/-- `A051682(2*n+1)` -/
def P10516055321286674666.Spec : Prop :=
  ∀ n, P10516055321286674666.a n = A033573 n

end A033573

/-! ## A033573.P12986835914692789109

`∑[a(n-1)+36]` with `a(0)=1, a(1)=29`
-/

namespace A033573.P12986835914692789109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 29] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033573.P12986835914692789109

namespace A033573

/-- `∑[a(n-1)+36]` -/
def P12986835914692789109.Spec : Prop :=
  ∀ n, (P12986835914692789109.a n : ℤ) = A033573 n

end A033573

/-! ## A033573.P1406439395116925330

`A081275(n)-n`
-/

namespace A033573.P1406439395116925330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 n - (n : ℤ)

end

end A033573.P1406439395116925330

namespace A033573

/-- `A081275(n)-n` -/
def P1406439395116925330.Spec : Prop :=
  ∀ n, P1406439395116925330.a n = A033573 n

end A033573

/-! ## A033573.P4603809826046004596

`A081272(n)+5*n`
-/

namespace A033573.P4603809826046004596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n + (5 * n : ℤ)

end

end A033573.P4603809826046004596

namespace A033573

/-- `A081272(n)+5*n` -/
def P4603809826046004596.Spec : Prop :=
  ∀ n, P4603809826046004596.a n = A033573 n

end A033573

/-! ## A033573.P17196542810341745271

`A195026(n)+Δ[n²]²`
-/

namespace A033573.P17196542810341745271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A033573.P17196542810341745271

namespace A033573

/-- `A195026(n)+Δ[n²]²` -/
def P17196542810341745271.Spec : Prop :=
  ∀ n, P17196542810341745271.a n = A033573 n

end A033573

/-! ## A033573.P13669749347700710422

`A100148(n+1)/(n+1)`
-/

namespace A033573.P13669749347700710422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100148 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A033573.P13669749347700710422

namespace A033573

/-- `A100148(n+1)/(n+1)` -/
def P13669749347700710422.Spec : Prop :=
  ∀ n, P13669749347700710422.a n = (A033573 n : ℚ)

end A033573

/-! ## A033573.P10491918416818258633

`A272399(n+1)+2*n`
-/

namespace A033573.P10491918416818258633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1) + (2 * n : ℤ)

end

end A033573.P10491918416818258633

namespace A033573

/-- `A272399(n+1)+2*n` -/
def P10491918416818258633.Spec : Prop :=
  ∀ n, P10491918416818258633.a n = A033573 n

end A033573

/-! ## A033573.P9606399992265920247

`2*A016778(n)-(n+1)`
-/

namespace A033573.P9606399992265920247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016778 n - (n + 1 : ℤ)

end

end A033573.P9606399992265920247

namespace A033573

/-- `2*A016778(n)-(n+1)` -/
def P9606399992265920247.Spec : Prop :=
  ∀ n, P9606399992265920247.a n = A033573 n

end A033573

/-! ## A033573.P5009705592136090264

`A016934(n)/2-(n+1)`
-/

namespace A033573.P5009705592136090264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016934 n : ℚ) / 2 - (n + 1 : ℚ)

end

end A033573.P5009705592136090264

namespace A033573

/-- `A016934(n)/2-(n+1)` -/
def P5009705592136090264.Spec : Prop :=
  ∀ n, P5009705592136090264.a n = (A033573 n : ℚ)

end A033573

/-! ## A033573.P4809600459454334208

`3*A080859(n)-(n+2)`
-/

namespace A033573.P4809600459454334208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080859 n - (n + 2 : ℤ)

end

end A033573.P4809600459454334208

namespace A033573

/-- `3*A080859(n)-(n+2)` -/
def P4809600459454334208.Spec : Prop :=
  ∀ n, P4809600459454334208.a n = A033573 n

end A033573

/-! ## A033573.P17437403668197233961

`3*A202804(n)-(n-1)`
-/

namespace A033573.P17437403668197233961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202804 n - ((n : ℤ) - 1)

end

end A033573.P17437403668197233961

namespace A033573

/-- `3*A202804(n)-(n-1)` -/
def P17437403668197233961.Spec : Prop :=
  ∀ n, P17437403668197233961.a n = A033573 n

end A033573

/-! ## A033573.P14180916348764915715

`n*A082286(n)+n+1`
-/

namespace A033573.P14180916348764915715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082286 n + (n + 1 : ℤ)

end

end A033573.P14180916348764915715

namespace A033573

/-- `n*A082286(n)+n+1` -/
def P14180916348764915715.Spec : Prop :=
  ∀ n, P14180916348764915715.a n = A033573 n

end A033573

/-! ## A033573.P7542255093056445752

`3*n*A016957(n)+1-n`
-/

namespace A033573.P7542255093056445752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A016957 n) + 1 - (n : ℤ)

end

end A033573.P7542255093056445752

namespace A033573

/-- `3*n*A016957(n)+1-n` -/
def P7542255093056445752.Spec : Prop :=
  ∀ n, P7542255093056445752.a n = A033573 n

end A033573

/-! ## A033573.P638019429931585077

`A016814(n)+A014106(n)`
-/

namespace A033573.P638019429931585077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n + A014106 n

end

end A033573.P638019429931585077

namespace A033573

/-- `A016814(n)+A014106(n)` -/
def P638019429931585077.Spec : Prop :=
  ∀ n, P638019429931585077.a n = A033573 n

end A033573

/-! ## A033573.P16855820162322799805

`A033572(n)+A002943(n)`
-/

namespace A033573.P16855820162322799805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033572 n + A002943 n

end

end A033573.P16855820162322799805

namespace A033573

/-- `A033572(n)+A002943(n)` -/
def P16855820162322799805.Spec : Prop :=
  ∀ n, P16855820162322799805.a n = A033573 n

end A033573

/-! ## A033573.P11826480749469718714

`A028993(n)+A014105(n)`
-/

namespace A033573.P11826480749469718714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n + A014105 n

end

end A033573.P11826480749469718714

namespace A033573

/-- `A028993(n)+A014105(n)` -/
def P11826480749469718714.Spec : Prop :=
  ∀ n, P11826480749469718714.a n = A033573 n

end A033573

/-! ## A033573.P455093040917420018

`A045946(n)+A016861(n)`
-/

namespace A033573.P455093040917420018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n + A016861 n

end

end A033573.P455093040917420018

namespace A033573

/-- `A045946(n)+A016861(n)` -/
def P455093040917420018.Spec : Prop :=
  ∀ n, P455093040917420018.a n = A033573 n

end A033573

/-! ## A033573.P15038799733209918057

`A033586(n)+A033571(n)`
-/

namespace A033573.P15038799733209918057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A033571 n

end

end A033573.P15038799733209918057

namespace A033573

/-- `A033586(n)+A033571(n)` -/
def P15038799733209918057.Spec : Prop :=
  ∀ n, P15038799733209918057.a n = A033573 n

end A033573

/-! ## A033573.P9995954912616788464

`A081589(n)+A008599(n)`
-/

namespace A033573.P9995954912616788464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081589 n + A008599 n

end

end A033573.P9995954912616788464

namespace A033573

/-- `A081589(n)+A008599(n)` -/
def P9995954912616788464.Spec : Prop :=
  ∀ n, P9995954912616788464.a n = A033573 n

end A033573

/-!
# A033574: a(n) = (2*n+1)*(10*n+1).

The programs for A033574, the canonical program `A033574.P17979063128835907106` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033574 has offset 0).

The definition of A033574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(10*n+1)` (program `A033574.P17979063128835907106`, by `A033574.P17979063128835907106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033574.P17979063128835907106

`(2*n+1)*(10*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033574

/-- `(2*n+1)*(10*n+1)` -/
def P17979063128835907106.Spec : Prop :=
  ∀ n, (P17979063128835907106.a n : ℤ) = A033574 n

theorem P17979063128835907106.correct : P17979063128835907106.Spec := by
  intro n
  simp only [A033574]

end A033574

/-! ## A033574.P1987362260360155083

`A051624(2*n+1)`
-/

namespace A033574.P1987362260360155083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (2 * n + 1)

end

end A033574.P1987362260360155083

namespace A033574

/-- `A051624(2*n+1)` -/
def P1987362260360155083.Spec : Prop :=
  ∀ n, P1987362260360155083.a n = A033574 n

end A033574

/-! ## A033574.P1804866717058977967

`∑[a(n-1)+40]` with `a(0)=1, a(1)=32`
-/

namespace A033574.P1804866717058977967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033574.P1804866717058977967

namespace A033574

/-- `∑[a(n-1)+40]` -/
def P1804866717058977967.Spec : Prop :=
  ∀ n, (P1804866717058977967.a n : ℤ) = A033574 n

end A033574

/-! ## A033574.P7031829952150039620

`(A017306(n)-4)/5`
-/

namespace A033574.P7031829952150039620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017306 n - 4 : ℚ) / 5

end

end A033574.P7031829952150039620

namespace A033574

/-- `(A017306(n)-4)/5` -/
def P7031829952150039620.Spec : Prop :=
  ∀ n, P7031829952150039620.a n = (A033574 n : ℚ)

end A033574

/-! ## A033574.P3655537901622052094

`A381196(n)+4*n`
-/

namespace A033574.P3655537901622052094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381196 n + (4 * n : ℤ)

end

end A033574.P3655537901622052094

namespace A033574

/-- `A381196(n)+4*n` -/
def P3655537901622052094.Spec : Prop :=
  ∀ n, P3655537901622052094.a n = A033574 n

end A033574

/-! ## A033574.P8675158214266237380

`n*A305074(n+1)+1`
-/

namespace A033574.P8675158214266237380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305074 (n + 1) + 1

end

end A033574.P8675158214266237380

namespace A033574

/-- `n*A305074(n+1)+1` -/
def P8675158214266237380.Spec : Prop :=
  ∀ n, P8675158214266237380.a n = A033574 n

end A033574

/-! ## A033574.P9257975986477549084

`A028993(n)+A002943(n)`
-/

namespace A033574.P9257975986477549084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n + A002943 n

end

end A033574.P9257975986477549084

namespace A033574

/-- `A028993(n)+A002943(n)` -/
def P9257975986477549084.Spec : Prop :=
  ∀ n, P9257975986477549084.a n = A033574 n

end A033574

/-! ## A033574.P2833034286007640532

`A033573(n)+A014105(n)`
-/

namespace A033574.P2833034286007640532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033573 n + A014105 n

end

end A033574.P2833034286007640532

namespace A033574

/-- `A033573(n)+A014105(n)` -/
def P2833034286007640532.Spec : Prop :=
  ∀ n, P2833034286007640532.a n = A033574 n

end A033574

/-! ## A033574.P1717035688543337077

`A033586(n)+A014641(n)`
-/

namespace A033574.P1717035688543337077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A014641 n

end

end A033574.P1717035688543337077

namespace A033574

/-- `A033586(n)+A014641(n)` -/
def P1717035688543337077.Spec : Prop :=
  ∀ n, P1717035688543337077.a n = A033574 n

end A033574

/-! ## A033574.P18325023053570925958

`A033996(n)+A016814(n)`
-/

namespace A033574.P18325023053570925958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + A016814 n

end

end A033574.P18325023053570925958

namespace A033574

/-- `A033996(n)+A016814(n)` -/
def P18325023053570925958.Spec : Prop :=
  ∀ n, P18325023053570925958.a n = A033574 n

end A033574

/-! ## A033574.P16431018129427678243

`A081275(n)+A001105(n)`
-/

namespace A033574.P16431018129427678243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 n + A001105 n

end

end A033574.P16431018129427678243

namespace A033574

/-- `A081275(n)+A001105(n)` -/
def P16431018129427678243.Spec : Prop :=
  ∀ n, P16431018129427678243.a n = A033574 n

end A033574

/-! ## A033574.P3143422429530460719

`A059993(n)+A045946(n)`
-/

namespace A033574.P3143422429530460719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n + A045946 n

end

end A033574.P3143422429530460719

namespace A033574

/-- `A059993(n)+A045946(n)` -/
def P3143422429530460719.Spec : Prop :=
  ∀ n, P3143422429530460719.a n = A033574 n

end A033574

/-! ## A033574.P18124633054572012701

`A157870(n)+A000466(n)`
-/

namespace A033574.P18124633054572012701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n + A000466 n

end

end A033574.P18124633054572012701

namespace A033574

/-- `A157870(n)+A000466(n)` -/
def P18124633054572012701.Spec : Prop :=
  ∀ n, P18124633054572012701.a n = A033574 n

end A033574

/-! ## A033574.P282187936375356074

`A158493(n)+A008594(n)`
-/

namespace A033574.P282187936375356074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 n + A008594 n

end

end A033574.P282187936375356074

namespace A033574

/-- `A158493(n)+A008594(n)` -/
def P282187936375356074.Spec : Prop :=
  ∀ n, P282187936375356074.a n = A033574 n

end A033574

/-! ## A033574.P8340567226694909660

`A139277(n)+A033577(n)`
-/

namespace A033574.P8340567226694909660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n + A033577 n

end

end A033574.P8340567226694909660

namespace A033574

/-- `A139277(n)+A033577(n)` -/
def P8340567226694909660.Spec : Prop :=
  ∀ n, P8340567226694909660.a n = A033574 n

end A033574

/-! ## A033574.P10517194013624492169

`A195322(n)+A017533(n)`
-/

namespace A033574.P10517194013624492169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n + A017533 n

end

end A033574.P10517194013624492169

namespace A033574

/-- `A195322(n)+A017533(n)` -/
def P10517194013624492169.Spec : Prop :=
  ∀ n, P10517194013624492169.a n = A033574 n

end A033574

/-! ## A033574.P10454680075411732514

`A139570(n)+A081272(n)`
-/

namespace A033574.P10454680075411732514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + A081272 n

end

end A033574.P10454680075411732514

namespace A033574

/-- `A139570(n)+A081272(n)` -/
def P10454680075411732514.Spec : Prop :=
  ∀ n, P10454680075411732514.a n = A033574 n

end A033574

/-! ## A033574.P17272849628637205327

`A195026(n)+A033570(n)`
-/

namespace A033574.P17272849628637205327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + A033570 n

end

end A033574.P17272849628637205327

namespace A033574

/-- `A195026(n)+A033570(n)` -/
def P17272849628637205327.Spec : Prop :=
  ∀ n, P17272849628637205327.a n = A033574 n

end A033574

/-! ## A033574.P17895646547599453748

`A195319(n)+A033572(n)`
-/

namespace A033574.P17895646547599453748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + A033572 n

end

end A033574.P17895646547599453748

namespace A033574

/-- `A195319(n)+A033572(n)` -/
def P17895646547599453748.Spec : Prop :=
  ∀ n, P17895646547599453748.a n = A033574 n

end A033574

/-! ## A033574.P8552552400936453088

`A144459(n)+A135705(n)`
-/

namespace A033574.P8552552400936453088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144459 n + A135705 n

end

end A033574.P8552552400936453088

namespace A033574

/-- `A144459(n)+A135705(n)` -/
def P8552552400936453088.Spec : Prop :=
  ∀ n, P8552552400936453088.a n = A033574 n

end A033574

/-!
# A033575: a(n) = (2*n+1)*(11*n+1).

The programs for A033575, the canonical program `A033575.P16220226138320304507` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033575 has offset 0).

The definition of A033575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(11*n+1)` (program `A033575.P16220226138320304507`, by `A033575.P16220226138320304507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033575.P16220226138320304507

`(2*n+1)*(11*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033575

/-- `(2*n+1)*(11*n+1)` -/
def P16220226138320304507.Spec : Prop :=
  ∀ n, (P16220226138320304507.a n : ℤ) = A033575 n

theorem P16220226138320304507.correct : P16220226138320304507.Spec := by
  intro n
  simp only [A033575]

end A033575

/-! ## A033575.P384431884397603749

`∑[a(n-1)+44]` with `a(0)=1, a(1)=35`
-/

namespace A033575.P384431884397603749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033575.P384431884397603749

namespace A033575

/-- `∑[a(n-1)+44]` -/
def P384431884397603749.Spec : Prop :=
  ∀ n, (P384431884397603749.a n : ℤ) = A033575 n

end A033575

/-! ## A033575.P4710545271239720171

`n*A141694(n)+n+1`
-/

namespace A033575.P4710545271239720171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141694 n + (n + 1 : ℤ)

end

end A033575.P4710545271239720171

namespace A033575

/-- `n*A141694(n)+n+1` -/
def P4710545271239720171.Spec : Prop :=
  ∀ n, P4710545271239720171.a n = A033575 n

end A033575

/-! ## A033575.P2116190706832016873

`A033573(n)+A002943(n)`
-/

namespace A033575.P2116190706832016873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033573 n + A002943 n

end

end A033575.P2116190706832016873

namespace A033575

/-- `A033573(n)+A002943(n)` -/
def P2116190706832016873.Spec : Prop :=
  ∀ n, P2116190706832016873.a n = A033575 n

end A033575

/-! ## A033575.P6888613791888280915

`A033574(n)+A014105(n)`
-/

namespace A033575.P6888613791888280915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n + A014105 n

end

end A033575.P6888613791888280915

namespace A033575

/-- `A033574(n)+A014105(n)` -/
def P6888613791888280915.Spec : Prop :=
  ∀ n, P6888613791888280915.a n = A033575 n

end A033575

/-! ## A033575.P10300347824569739635

`A033586(n)+A033572(n)`
-/

namespace A033575.P10300347824569739635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A033572 n

end

end A033575.P10300347824569739635

namespace A033575

/-- `A033586(n)+A033572(n)` -/
def P10300347824569739635.Spec : Prop :=
  ∀ n, P10300347824569739635.a n = A033575 n

end A033575

/-! ## A033575.P11811964864093816998

`A081275(n)+A007742(n)`
-/

namespace A033575.P11811964864093816998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 n + A007742 n

end

end A033575.P11811964864093816998

namespace A033575

/-- `A081275(n)+A007742(n)` -/
def P11811964864093816998.Spec : Prop :=
  ∀ n, P11811964864093816998.a n = A033575 n

end A033575

/-! ## A033575.P6679505575710343305

`A158537(n)+A008595(n)`
-/

namespace A033575.P6679505575710343305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n + A008595 n

end

end A033575.P6679505575710343305

namespace A033575

/-- `A158537(n)+A008595(n)` -/
def P6679505575710343305.Spec : Prop :=
  ∀ n, P6679505575710343305.a n = A033575 n

end A033575

/-! ## A033575.P18133014518983860541

`A161587(n)+A045945(n)`
-/

namespace A033575.P18133014518983860541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 n + A045945 n

end

end A033575.P18133014518983860541

namespace A033575

/-- `A161587(n)+A045945(n)` -/
def P18133014518983860541.Spec : Prop :=
  ∀ n, P18133014518983860541.a n = A033575 n

end A033575

/-! ## A033575.P11770493650792018344

`A195026(n)+A014634(n)`
-/

namespace A033575.P11770493650792018344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + A014634 n

end

end A033575.P11770493650792018344

namespace A033575

/-- `A195026(n)+A014634(n)` -/
def P11770493650792018344.Spec : Prop :=
  ∀ n, P11770493650792018344.a n = A033575 n

end A033575

/-! ## A033575.P5918997813134728978

`A195319(n)+A028993(n)`
-/

namespace A033575.P5918997813134728978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + A028993 n

end

end A033575.P5918997813134728978

namespace A033575

/-- `A195319(n)+A028993(n)` -/
def P5918997813134728978.Spec : Prop :=
  ∀ n, P5918997813134728978.a n = A033575 n

end A033575

/-! ## A033575.P11252219426417844627

`A144314(n)+A082112(n)`
-/

namespace A033575.P11252219426417844627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + A082112 n

end

end A033575.P11252219426417844627

namespace A033575

/-- `A144314(n)+A082112(n)` -/
def P11252219426417844627.Spec : Prop :=
  ∀ n, P11252219426417844627.a n = A033575 n

end A033575

/-! ## A033575.P12940062257578961609

`A211014(n)+A016814(n)`
-/

namespace A033575.P12940062257578961609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n + A016814 n

end

end A033575.P12940062257578961609

namespace A033575

/-- `A211014(n)+A016814(n)` -/
def P12940062257578961609.Spec : Prop :=
  ∀ n, P12940062257578961609.a n = A033575 n

end A033575

/-! ## A033575.P14089344051574576822

`A163756(n)+A080861(n)`
-/

namespace A033575.P14089344051574576822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n + A080861 n

end

end A033575.P14089344051574576822

namespace A033575

/-- `A163756(n)+A080861(n)` -/
def P14089344051574576822.Spec : Prop :=
  ∀ n, P14089344051574576822.a n = A033575 n

end A033575

/-! ## A033575.P17188902066530365715

`A154617(n)+A103214(n)`
-/

namespace A033575.P17188902066530365715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n + A103214 n

end

end A033575.P17188902066530365715

namespace A033575

/-- `A154617(n)+A103214(n)` -/
def P17188902066530365715.Spec : Prop :=
  ∀ n, P17188902066530365715.a n = A033575 n

end A033575

/-! ## A033575.P1759174560195350643

`A195028(n)+A081585(n)`
-/

namespace A033575.P1759174560195350643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195028 n + A081585 n

end

end A033575.P1759174560195350643

namespace A033575

/-- `A195028(n)+A081585(n)` -/
def P1759174560195350643.Spec : Prop :=
  ∀ n, P1759174560195350643.a n = A033575 n

end A033575

/-! ## A033575.P17103259290189449070

`A262221(n)+A022277(n)`
-/

namespace A033575.P17103259290189449070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n + A022277 n

end

end A033575.P17103259290189449070

namespace A033575

/-- `A262221(n)+A022277(n)` -/
def P17103259290189449070.Spec : Prop :=
  ∀ n, P17103259290189449070.a n = A033575 n

end A033575

/-! ## A033575.P4948468686257855788

`A195037(n)+A093485(n)`
-/

namespace A033575.P4948468686257855788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195037 n + A093485 n

end

end A033575.P4948468686257855788

namespace A033575

/-- `A195037(n)+A093485(n)` -/
def P4948468686257855788.Spec : Prop :=
  ∀ n, P4948468686257855788.a n = A033575 n

end A033575

/-! ## A033575.P10780766937122577783

`A158493(n)+A139578(n)`
-/

namespace A033575.P10780766937122577783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 n + A139578 n

end

end A033575.P10780766937122577783

namespace A033575

/-- `A158493(n)+A139578(n)` -/
def P10780766937122577783.Spec : Prop :=
  ∀ n, P10780766937122577783.a n = A033575 n

end A033575

/-! ## A033575.P9478067588274648503

`A195320(n)+A161617(n)`
-/

namespace A033575.P9478067588274648503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n + A161617 n

end

end A033575.P9478067588274648503

namespace A033575

/-- `A195320(n)+A161617(n)` -/
def P9478067588274648503.Spec : Prop :=
  ∀ n, P9478067588274648503.a n = A033575 n

end A033575

/-!
# A033576: a(n) = (2*n+1)*(12*n+1).

The programs for A033576, the canonical program `A033576.P4702801893956750476` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033576 has offset 0).

The definition of A033576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(12*n+1)` (program `A033576.P4702801893956750476`, by `A033576.P4702801893956750476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033576.P4702801893956750476

`(2*n+1)*(12*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033576

/-- `(2*n+1)*(12*n+1)` -/
def P4702801893956750476.Spec : Prop :=
  ∀ n, (P4702801893956750476.a n : ℤ) = A033576 n

theorem P4702801893956750476.correct : P4702801893956750476.Spec := by
  intro n
  simp only [A033576]

end A033576

/-! ## A033576.P12380567890538587783

`∑[a(n-1)+48]` with `a(0)=1, a(1)=38`
-/

namespace A033576.P12380567890538587783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 38] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033576.P12380567890538587783

namespace A033576

/-- `∑[a(n-1)+48]` -/
def P12380567890538587783.Spec : Prop :=
  ∀ n, (P12380567890538587783.a n : ℤ) = A033576 n

end A033576

/-! ## A033576.P5587911310083001827

`record[C(n*(6*n-5), n%2)]`
-/

namespace A033576.P5587911310083001827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * ((6 * n : ℤ) - 5)).toNat (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033576.P5587911310083001827

namespace A033576

/-- `record[C(n*(6*n-5), n%2)]` -/
def P5587911310083001827.Spec : Prop :=
  ∀ n, (P5587911310083001827.a n : ℤ) = A033576 n

end A033576

/-! ## A033576.P1367319569139777075

`2*A033577(n)-1`
-/

namespace A033576.P1367319569139777075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033577 n - 1

end

end A033576.P1367319569139777075

namespace A033576

/-- `2*A033577(n)-1` -/
def P1367319569139777075.Spec : Prop :=
  ∀ n, P1367319569139777075.a n = A033576 n

end A033576

/-! ## A033576.P5527995645417568348

`n*A142241(n)+1`
-/

namespace A033576.P5527995645417568348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A142241 n + 1

end

end A033576.P5527995645417568348

namespace A033576

/-- `n*A142241(n)+1` -/
def P5527995645417568348.Spec : Prop :=
  ∀ n, P5527995645417568348.a n = A033576 n

end A033576

/-! ## A033576.P7750852772951138436

`A033574(n)+A002943(n)`
-/

namespace A033576.P7750852772951138436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n + A002943 n

end

end A033576.P7750852772951138436

namespace A033576

/-- `A033574(n)+A002943(n)` -/
def P7750852772951138436.Spec : Prop :=
  ∀ n, P7750852772951138436.a n = A033576 n

end A033576

/-! ## A033576.P7929778599220828488

`A033575(n)+A014105(n)`
-/

namespace A033576.P7929778599220828488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033575 n + A014105 n

end

end A033576.P7929778599220828488

namespace A033576

/-- `A033575(n)+A014105(n)` -/
def P7929778599220828488.Spec : Prop :=
  ∀ n, P7929778599220828488.a n = A033576 n

end A033576

/-! ## A033576.P17448608066289451673

`A033587(n)+A016814(n)`
-/

namespace A033576.P17448608066289451673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033587 n + A016814 n

end

end A033576.P17448608066289451673

namespace A033576

/-- `A033587(n)+A016814(n)` -/
def P17448608066289451673.Spec : Prop :=
  ∀ n, P17448608066289451673.a n = A033576 n

end A033576

/-! ## A033576.P4328491101677026849

`A033586(n)+A028993(n)`
-/

namespace A033576.P4328491101677026849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A028993 n

end

end A033576.P4328491101677026849

namespace A033576

/-- `A033586(n)+A028993(n)` -/
def P4328491101677026849.Spec : Prop :=
  ∀ n, P4328491101677026849.a n = A033576 n

end A033576

/-! ## A033576.P5457780178628370824

`A081275(n)+A033580(n)`
-/

namespace A033576.P5457780178628370824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 n + A033580 n

end

end A033576.P5457780178628370824

namespace A033576

/-- `A081275(n)+A033580(n)` -/
def P5457780178628370824.Spec : Prop :=
  ∀ n, P5457780178628370824.a n = A033576 n

end A033576

/-! ## A033576.P16377382199366647146

`A158547(n)+A008596(n)`
-/

namespace A033576.P16377382199366647146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158547 n + A008596 n

end

end A033576.P16377382199366647146

namespace A033576

/-- `A158547(n)+A008596(n)` -/
def P16377382199366647146.Spec : Prop :=
  ∀ n, P16377382199366647146.a n = A033576 n

end A033576

/-! ## A033576.P2245927722859879137

`A161617(n)+A028994(n)`
-/

namespace A033576.P2245927722859879137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161617 n + A028994 n

end

end A033576.P2245927722859879137

namespace A033576

/-- `A161617(n)+A028994(n)` -/
def P2245927722859879137.Spec : Prop :=
  ∀ n, P2245927722859879137.a n = A033576 n

end A033576

/-! ## A033576.P4731508353210627879

`A157870(n)+A033566(n)`
-/

namespace A033576.P4731508353210627879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n + A033566 n

end

end A033576.P4731508353210627879

namespace A033576

/-- `A157870(n)+A033566(n)` -/
def P4731508353210627879.Spec : Prop :=
  ∀ n, P4731508353210627879.a n = A033576 n

end A033576

/-! ## A033576.P16922329133620498366

`A195026(n)+A033571(n)`
-/

namespace A033576.P16922329133620498366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195026 n + A033571 n

end

end A033576.P16922329133620498366

namespace A033576

/-- `A195026(n)+A033571(n)` -/
def P16922329133620498366.Spec : Prop :=
  ∀ n, P16922329133620498366.a n = A033576 n

end A033576

/-! ## A033576.P837364143411171279

`A195319(n)+A033573(n)`
-/

namespace A033576.P837364143411171279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + A033573 n

end

end A033576.P837364143411171279

namespace A033576

/-- `A195319(n)+A033573(n)` -/
def P837364143411171279.Spec : Prop :=
  ∀ n, P837364143411171279.a n = A033576 n

end A033576

/-! ## A033576.P12902479805174306458

`A153808(n)+A128470(n)`
-/

namespace A033576.P12902479805174306458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n + A128470 n

end

end A033576.P12902479805174306458

namespace A033576

/-- `A153808(n)+A128470(n)` -/
def P12902479805174306458.Spec : Prop :=
  ∀ n, P12902479805174306458.a n = A033576 n

end A033576

/-! ## A033576.P3842568657027714983

`A239325(n)+A045946(n)`
-/

namespace A033576.P3842568657027714983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n + A045946 n

end

end A033576.P3842568657027714983

namespace A033576

/-- `A239325(n)+A045946(n)` -/
def P3842568657027714983.Spec : Prop :=
  ∀ n, P3842568657027714983.a n = A033576 n

end A033576

/-! ## A033576.P9919873214800825677

`A195824(n)+A131877(n)`
-/

namespace A033576.P9919873214800825677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195824 n + A131877 n

end

end A033576.P9919873214800825677

namespace A033576

/-- `A195824(n)+A131877(n)` -/
def P9919873214800825677.Spec : Prop :=
  ∀ n, P9919873214800825677.a n = A033576 n

end A033576

/-! ## A033576.P12804857358113467596

`A195323(n)+A161549(n)`
-/

namespace A033576.P12804857358113467596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n + A161549 n

end

end A033576.P12804857358113467596

namespace A033576

/-- `A195323(n)+A161549(n)` -/
def P12804857358113467596.Spec : Prop :=
  ∀ n, P12804857358113467596.a n = A033576 n

end A033576

/-! ## A033576.P15663579105176119469

`A270704(n)+A103214(n)`
-/

namespace A033576.P15663579105176119469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270704 n + A103214 n

end

end A033576.P15663579105176119469

namespace A033576

/-- `A270704(n)+A103214(n)` -/
def P15663579105176119469.Spec : Prop :=
  ∀ n, P15663579105176119469.a n = A033576 n

end A033576

/-!
# A033577: a(n) = (3*n+1)*(4*n+1).

The programs for A033577, the canonical program `A033577.P191086975953029494` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033577 has offset 0).

The definition of A033577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(4*n+1)` (program `A033577.P191086975953029494`, by `A033577.P191086975953029494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033577.P191086975953029494

`(3*n+1)*(4*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033577

/-- `(3*n+1)*(4*n+1)` -/
def P191086975953029494.Spec : Prop :=
  ∀ n, (P191086975953029494.a n : ℤ) = A033577 n

theorem P191086975953029494.correct : P191086975953029494.Spec := by
  intro n
  simp only [A033577]

end A033577

/-! ## A033577.P17382463049983573195

`∑[a(n-1)+24]` with `a(0)=1, a(1)=19`
-/

namespace A033577.P17382463049983573195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033577.P17382463049983573195

namespace A033577

/-- `∑[a(n-1)+24]` -/
def P17382463049983573195.Spec : Prop :=
  ∀ n, (P17382463049983573195.a n : ℤ) = A033577 n

end A033577

/-! ## A033577.P6192988141277224434

`∑[ogf((1+17x+6x^2)/(1-2x+x^2))]`
-/

namespace A033577.P6192988141277224434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033577.P6192988141277224434

namespace A033577

/-- `∑[ogf((1+17x+6x^2)/(1-2x+x^2))]` -/
def P6192988141277224434.Spec : Prop :=
  ∀ n, P6192988141277224434.a n = A033577 n

end A033577

/-! ## A033577.P8008449743321856582

`24*n-(5-a(n-1))` with `a(0)=1`
-/

namespace A033577.P8008449743321856582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (24 * n : ℤ) - (5 - a (n - 1))

end

end A033577.P8008449743321856582

namespace A033577

/-- `24*n-(5-a(n-1))` -/
def P8008449743321856582.Spec : Prop :=
  ∀ n, P8008449743321856582.a n = A033577 n

theorem P8008449743321856582.correct : P8008449743321856582.Spec := by
  intro n
  induction n with
  | zero => simp [A033577, A033577.P8008449743321856582.a, A033577.P191086975953029494.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033577, Nat.add_sub_cancel, A033577.P8008449743321856582.a, A033577.P191086975953029494.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033577

/-! ## A033577.P10303922506900246632

`lcm(Δ[n²]+n+n, Δ[n²]+n)`
-/

namespace A033577.P10303922506900246632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) + (n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ))

end

end A033577.P10303922506900246632

namespace A033577

/-- `lcm(Δ[n²]+n+n, Δ[n²]+n)` -/
def P10303922506900246632.Spec : Prop :=
  ∀ n, (P10303922506900246632.a n : ℤ) = A033577 n

end A033577

/-! ## A033577.P12032588876613458468

`A014641(n)-n`
-/

namespace A033577.P12032588876613458468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n - (n : ℤ)

end

end A033577.P12032588876613458468

namespace A033577

/-- `A014641(n)-n` -/
def P12032588876613458468.Spec : Prop :=
  ∀ n, P12032588876613458468.a n = A033577 n

end A033577

/-! ## A033577.P6668772860470886043

`ceil(A033576(n)/2)`
-/

namespace A033577.P6668772860470886043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033576 n : ℚ) / 2⌉

end

end A033577.P6668772860470886043

namespace A033577

/-- `ceil(A033576(n)/2)` -/
def P6668772860470886043.Spec : Prop :=
  ∀ n, P6668772860470886043.a n = A033577 n

end A033577

/-! ## A033577.P14464664762034811860

`sqrt(A014793(n))-n`
-/

namespace A033577.P14464664762034811860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014793 n : ℝ) - (n : ℝ)

end

end A033577.P14464664762034811860

namespace A033577

/-- `sqrt(A014793(n))-n` -/
def P14464664762034811860.Spec : Prop :=
  ∀ n, P14464664762034811860.a n = (A033577 n : ℝ)

end A033577

/-! ## A033577.P3696451975434314373

`n*A017605(n)+1`
-/

namespace A033577.P3696451975434314373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017605 n + 1

end

end A033577.P3696451975434314373

namespace A033577

/-- `n*A017605(n)+1` -/
def P3696451975434314373.Spec : Prop :=
  ∀ n, P3696451975434314373.a n = A033577 n

end A033577

/-! ## A033577.P18386609093411513485

`A381390(n)+3*n`
-/

namespace A033577.P18386609093411513485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n + (3 * n : ℤ)

end

end A033577.P18386609093411513485

namespace A033577

/-- `A381390(n)+3*n` -/
def P18386609093411513485.Spec : Prop :=
  ∀ n, P18386609093411513485.a n = A033577 n

end A033577

/-! ## A033577.P6565065581050949865

`A194454(n)+5*n`
-/

namespace A033577.P6565065581050949865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194454 n + (5 * n : ℤ)

end

end A033577.P6565065581050949865

namespace A033577

/-- `A194454(n)+5*n` -/
def P6565065581050949865.Spec : Prop :=
  ∀ n, P6565065581050949865.a n = A033577 n

end A033577

/-! ## A033577.P13378863216791837746

`A396290(n)+Δ[n²]`
-/

namespace A033577.P13378863216791837746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033577.P13378863216791837746

namespace A033577

/-- `A396290(n)+Δ[n²]` -/
def P13378863216791837746.Spec : Prop :=
  ∀ n, P13378863216791837746.a n = A033577 n

end A033577

/-! ## A033577.P11426800113568198650

`A033591(n)/Δ[n²]`
-/

namespace A033577.P11426800113568198650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033591 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A033577.P11426800113568198650

namespace A033577

/-- `A033591(n)/Δ[n²]` -/
def P11426800113568198650.Spec : Prop :=
  ∀ n, P11426800113568198650.a n = (A033577 n : ℚ)

end A033577

/-! ## A033577.P969148143644434127

`(A007533(n)-n²)/2`
-/

namespace A033577.P969148143644434127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007533 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A033577.P969148143644434127

namespace A033577

/-- `(A007533(n)-n²)/2` -/
def P969148143644434127.Spec : Prop :=
  ∀ n, P969148143644434127.a n = (A033577 n : ℚ)

end A033577

/-! ## A033577.P13353316561716967099

`A244806(n+1)+2*n`
-/

namespace A033577.P13353316561716967099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244806 (n + 1) + (2 * n : ℤ)

end

end A033577.P13353316561716967099

namespace A033577

/-- `A244806(n+1)+2*n` -/
def P13353316561716967099.Spec : Prop :=
  ∀ n, P13353316561716967099.a n = A033577 n

end A033577

/-! ## A033577.P13978452544943544134

`A014634(n)+A007742(n)`
-/

namespace A033577.P13978452544943544134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n + A007742 n

end

end A033577.P13978452544943544134

namespace A033577

/-- `A014634(n)+A007742(n)` -/
def P13978452544943544134.Spec : Prop :=
  ∀ n, P13978452544943544134.a n = A033577 n

end A033577

/-! ## A033577.P7608775399486116154

`A017401(n)+A014642(n)`
-/

namespace A033577.P7608775399486116154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + A014642 n

end

end A033577.P7608775399486116154

namespace A033577

/-- `A017401(n)+A014642(n)` -/
def P7608775399486116154.Spec : Prop :=
  ∀ n, P7608775399486116154.a n = A033577 n

end A033577

/-! ## A033577.P12732459320644842964

`A033571(n)+A001105(n)`
-/

namespace A033577.P12732459320644842964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n + A001105 n

end

end A033577.P12732459320644842964

namespace A033577

/-- `A033571(n)+A001105(n)` -/
def P12732459320644842964.Spec : Prop :=
  ∀ n, P12732459320644842964.a n = A033577 n

end A033577

/-! ## A033577.P12905818368290444260

`A033578(n)+A008596(n)`
-/

namespace A033577.P12905818368290444260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n + A008596 n

end

end A033577.P12905818368290444260

namespace A033577

/-- `A033578(n)+A008596(n)` -/
def P12905818368290444260.Spec : Prop :=
  ∀ n, P12905818368290444260.a n = A033577 n

end A033577

/-! ## A033577.P1321919086200626383

`A049451(n)+A016778(n)`
-/

namespace A033577.P1321919086200626383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A016778 n

end

end A033577.P1321919086200626383

namespace A033577

/-- `A049451(n)+A016778(n)` -/
def P1321919086200626383.Spec : Prop :=
  ∀ n, P1321919086200626383.a n = A033577 n

end A033577

/-!
# A033578: a(n) = (3*n - 1)*(4*n - 1).

The programs for A033578, the canonical program `A033578.P7557653025791932754` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033578 has offset 0).

The definition of A033578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n-1)*(4*n-1)` (program `A033578.P7557653025791932754`, by `A033578.P7557653025791932754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033578.P7557653025791932754

`(3*n-1)*(4*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033578

/-- `(3*n-1)*(4*n-1)` -/
def P7557653025791932754.Spec : Prop :=
  ∀ n, P7557653025791932754.a n = A033578 n

theorem P7557653025791932754.correct : P7557653025791932754.Spec := by
  intro n
  simp only [A033578]

end A033578

/-! ## A033578.P5512602111308663070

`∑[a(n-1)+24]` with `a(0)=1, a(1)=5`
-/

namespace A033578.P5512602111308663070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033578.P5512602111308663070

namespace A033578

/-- `∑[a(n-1)+24]` -/
def P5512602111308663070.Spec : Prop :=
  ∀ n, (P5512602111308663070.a n : ℤ) = A033578 n

end A033578

/-! ## A033578.P115593100966605940

`A185212(n)+n`
-/

namespace A033578.P115593100966605940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 n + (n : ℤ)

end

end A033578.P115593100966605940

namespace A033578

/-- `A185212(n)+n` -/
def P115593100966605940.Spec : Prop :=
  ∀ n, P115593100966605940.a n = A033578 n

end A033578

/-! ## A033578.P15524571150635345652

`A153794(n)+1+n`
-/

namespace A033578.P15524571150635345652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + 1 + (n : ℤ)

end

end A033578.P15524571150635345652

namespace A033578

/-- `A153794(n)+1+n` -/
def P15524571150635345652.Spec : Prop :=
  ∀ n, P15524571150635345652.a n = A033578 n

end A033578

/-! ## A033578.P14113043296316894518

`A152746(n)+1-n`
-/

namespace A033578.P14113043296316894518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + (1 - (n : ℤ))

end

end A033578.P14113043296316894518

namespace A033578

/-- `A152746(n)+1-n` -/
def P14113043296316894518.Spec : Prop :=
  ∀ n, P14113043296316894518.a n = A033578 n

end A033578

/-! ## A033578.P11608583074434357387

`A152767(n)+Δ[n²]`
-/

namespace A033578.P11608583074434357387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033578.P11608583074434357387

namespace A033578

/-- `A152767(n)+Δ[n²]` -/
def P11608583074434357387.Spec : Prop :=
  ∀ n, P11608583074434357387.a n = A033578 n

end A033578

/-! ## A033578.P4746903764994010374

`A152997(n)+(n+1)²`
-/

namespace A033578.P4746903764994010374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n + ((n + 1) ^ 2 : ℤ)

end

end A033578.P4746903764994010374

namespace A033578

/-- `A152997(n)+(n+1)²` -/
def P4746903764994010374.Spec : Prop :=
  ∀ n, P4746903764994010374.a n = A033578 n

end A033578

/-! ## A033578.P16635423602142642491

`(A154357(n)-n²)/2`
-/

namespace A033578.P16635423602142642491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154357 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A033578.P16635423602142642491

namespace A033578

/-- `(A154357(n)-n²)/2` -/
def P16635423602142642491.Spec : Prop :=
  ∀ n, P16635423602142642491.a n = (A033578 n : ℚ)

end A033578

/-! ## A033578.P14583666764259323046

`2*A139267(n)+n+1`
-/

namespace A033578.P14583666764259323046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139267 n + (n + 1 : ℤ)

end

end A033578.P14583666764259323046

namespace A033578

/-- `2*A139267(n)+n+1` -/
def P14583666764259323046.Spec : Prop :=
  ∀ n, P14583666764259323046.a n = A033578 n

end A033578

/-! ## A033578.P6430275853472187368

`A153808(n)/2+n+1`
-/

namespace A033578.P6430275853472187368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A033578.P6430275853472187368

namespace A033578

/-- `A153808(n)/2+n+1` -/
def P6430275853472187368.Spec : Prop :=
  ∀ n, P6430275853472187368.a n = (A033578 n : ℚ)

end A033578

/-! ## A033578.P9139008289761063990

`A244802(n+1)-4*n`
-/

namespace A033578.P9139008289761063990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) - (4 * n : ℤ)

end

end A033578.P9139008289761063990

namespace A033578

/-- `A244802(n+1)-4*n` -/
def P9139008289761063990.Spec : Prop :=
  ∀ n, P9139008289761063990.a n = A033578 n

end A033578

/-! ## A033578.P15957859580376333883

`A033589(n)/(2*n-1)`
-/

namespace A033578.P15957859580376333883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033589 n : ℚ) / ((2 * n : ℤ) - 1 : ℚ)

end

end A033578.P15957859580376333883

namespace A033578

/-- `A033589(n)/(2*n-1)` -/
def P15957859580376333883.Spec : Prop :=
  ∀ n, P15957859580376333883.a n = (A033578 n : ℚ)

end A033578

/-! ## A033578.P8218837079620921975

`A051874(n)+A001844(n)`
-/

namespace A033578.P8218837079620921975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + A001844 n

end

end A033578.P8218837079620921975

namespace A033578

/-- `A051874(n)+A001844(n)` -/
def P8218837079620921975.Spec : Prop :=
  ∀ n, P8218837079620921975.a n = A033578 n

end A033578

/-! ## A033578.P3620106528597780742

`A033579(n)+A033568(n)`
-/

namespace A033578.P3620106528597780742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + A033568 n

end

end A033578.P3620106528597780742

namespace A033578

/-- `A033579(n)+A033568(n)` -/
def P3620106528597780742.Spec : Prop :=
  ∀ n, P3620106528597780742.a n = A033578 n

end A033578

/-! ## A033578.P6596689624093369416

`A033991(n)+A033567(n)`
-/

namespace A033578.P6596689624093369416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + A033567 n

end

end A033578.P6596689624093369416

namespace A033578

/-- `A033991(n)+A033567(n)` -/
def P6596689624093369416.Spec : Prop :=
  ∀ n, P6596689624093369416.a n = A033578 n

end A033578

/-! ## A033578.P4677869421171650944

`A051876(n)+A028387(n)`
-/

namespace A033578.P4677869421171650944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + A028387 n

end

end A033578.P4677869421171650944

namespace A033578

/-- `A051876(n)+A028387(n)` -/
def P4677869421171650944.Spec : Prop :=
  ∀ n, P4677869421171650944.a n = A033578 n

end A033578

/-! ## A033578.P7744814293792153981

`A064200(n)+A016861(n)`
-/

namespace A033578.P7744814293792153981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A016861 n

end

end A033578.P7744814293792153981

namespace A033578

/-- `A064200(n)+A016861(n)` -/
def P7744814293792153981.Spec : Prop :=
  ∀ n, P7744814293792153981.a n = A033578 n

end A033578

/-! ## A033578.P2629650449183481396

`A080856(n)+A001107(n)`
-/

namespace A033578.P2629650449183481396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n + A001107 n

end

end A033578.P2629650449183481396

namespace A033578

/-- `A080856(n)+A001107(n)` -/
def P2629650449183481396.Spec : Prop :=
  ∀ n, P2629650449183481396.a n = A033578 n

end A033578

/-! ## A033578.P14265443339158391920

`A053755(n)+A051870(n)`
-/

namespace A033578.P14265443339158391920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n + A051870 n

end

end A033578.P14265443339158391920

namespace A033578

/-- `A053755(n)+A051870(n)` -/
def P14265443339158391920.Spec : Prop :=
  ∀ n, P14265443339158391920.a n = A033578 n

end A033578

/-! ## A033578.P8188034855538769194

`A056108(n)+A051872(n)`
-/

namespace A033578.P8188034855538769194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n + A051872 n

end

end A033578.P8188034855538769194

namespace A033578

/-- `A056108(n)+A051872(n)` -/
def P8188034855538769194.Spec : Prop :=
  ∀ n, P8188034855538769194.a n = A033578 n

end A033578

/-!
# A033579: Four times pentagonal numbers: a(n) = 2*n*(3*n-1).

The programs for A033579, the canonical program `A033579.P8592719016639374159` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033579 has offset 0).

The definition of A033579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(3*n-1)` (program `A033579.P8592719016639374159`, by `A033579.P8592719016639374159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033579.P8019627315445305091

`6*n²-2*n`
-/

namespace A033579.P8019627315445305091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (2 * n : ℤ)

end

end A033579.P8019627315445305091

namespace A033579

/-- `6*n²-2*n` -/
def P8019627315445305091.Spec : Prop :=
  ∀ n, P8019627315445305091.a n = A033579 n

theorem P8019627315445305091.correct : P8019627315445305091.Spec := by
  intro n
  simp only [A033579, Nat.add_sub_cancel, A033579.P8019627315445305091.a, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033579

/-! ## A033579.P3386093369561956810

`4*C(3*n, 2)/3`
-/

namespace A033579.P3386093369561956810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (3 * n) 2 : ℚ) / 3

end

end A033579.P3386093369561956810

namespace A033579

/-- `4*C(3*n, 2)/3` -/
def P3386093369561956810.Spec : Prop :=
  ∀ n, P3386093369561956810.a n = (A033579 n : ℚ)

end A033579

/-! ## A033579.P8592719016639374159

`2*n*(3*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033579

/-- `2*n*(3*n-1)` -/
def P8592719016639374159.Spec : Prop :=
  ∀ n, P8592719016639374159.a n = A033579 n

theorem P8592719016639374159.correct : P8592719016639374159.Spec := by
  intro n
  simp only [A033579]

end A033579

/-! ## A033579.P908175372276452326

`A014642(n)/2`
-/

namespace A033579.P908175372276452326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014642 n : ℚ) / 2

end

end A033579.P908175372276452326

namespace A033579

/-- `A014642(n)/2` -/
def P908175372276452326.Spec : Prop :=
  ∀ n, P908175372276452326.a n = (A033579 n : ℚ)

end A033579

/-! ## A033579.P16238513561911519435

`(A174371(n)-1)/6`
-/

namespace A033579.P16238513561911519435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174371 n - 1 : ℚ) / 6

end

end A033579.P16238513561911519435

namespace A033579

/-- `(A174371(n)-1)/6` -/
def P16238513561911519435.Spec : Prop :=
  ∀ n, P16238513561911519435.a n = (A033579 n : ℚ)

end A033579

/-! ## A033579.P17354848353676937210

`A191967(2*n)`
-/

namespace A033579.P17354848353676937210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 (2 * n)

end

end A033579.P17354848353676937210

namespace A033579

/-- `A191967(2*n)` -/
def P17354848353676937210.Spec : Prop :=
  ∀ n, P17354848353676937210.a n = A033579 n

end A033579

/-! ## A033579.P17619560060030728794

`∑[a(n-1)+12]` with `a(0)=0, a(1)=4`
-/

namespace A033579.P17619560060030728794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033579.P17619560060030728794

namespace A033579

/-- `∑[a(n-1)+12]` -/
def P17619560060030728794.Spec : Prop :=
  ∀ n, (P17619560060030728794.a n : ℤ) = A033579 n

end A033579

/-! ## A033579.P6613761792576311368

`∑[ogf((4x+8x^2)/(1-2x+x^2))]`
-/

namespace A033579.P6613761792576311368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033579.P6613761792576311368

namespace A033579

/-- `∑[ogf((4x+8x^2)/(1-2x+x^2))]` -/
def P6613761792576311368.Spec : Prop :=
  ∀ n, P6613761792576311368.a n = A033579 n

end A033579

/-! ## A033579.P1569549076820195357

`ogf((4x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033579.P1569549076820195357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 8] [1, -3, 3, -1] n

end

end A033579.P1569549076820195357

namespace A033579

/-- `ogf((4x+8x^2)/(1-3x+3x^2-x^3))` -/
def P1569549076820195357.Spec : Prop :=
  ∀ n, P1569549076820195357.a n = A033579 n

end A033579

/-! ## A033579.P18111595678408783535

`∑[record[n*((n+1)%3)²]]`
-/

namespace A033579.P18111595678408783535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033579.P18111595678408783535

namespace A033579

/-- `∑[record[n*((n+1)%3)²]]` -/
def P18111595678408783535.Spec : Prop :=
  ∀ n, (P18111595678408783535.a n : ℤ) = A033579 n

end A033579

/-! ## A033579.P8799970359214886027

`Δ[lcm(2, lcm(n, (1-n)²)+1)]`
-/

namespace A033579.P8799970359214886027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033579.P8799970359214886027

namespace A033579

/-- `Δ[lcm(2, lcm(n, (1-n)²)+1)]` -/
def P8799970359214886027.Spec : Prop :=
  ∀ n, P8799970359214886027.a n = A033579 n

end A033579

/-! ## A033579.P15464386833698131446

`Δ[2*n*((2*n)%(n+1))²]`
-/

namespace A033579.P15464386833698131446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (2 * n % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033579.P15464386833698131446

namespace A033579

/-- `Δ[2*n*((2*n)%(n+1))²]` -/
def P15464386833698131446.Spec : Prop :=
  ∀ n, P15464386833698131446.a n = A033579 n

end A033579

/-! ## A033579.P9974348988173940751

`A153792(n)/3`
-/

namespace A033579.P9974348988173940751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153792 n : ℚ) / 3

end

end A033579.P9974348988173940751

namespace A033579

/-- `A153792(n)/3` -/
def P9974348988173940751.Spec : Prop :=
  ∀ n, P9974348988173940751.a n = (A033579 n : ℚ)

end A033579

/-! ## A033579.P10108106512839780062

`sqrt(A014794(n))/2`
-/

namespace A033579.P10108106512839780062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ) / 2

end

end A033579.P10108106512839780062

namespace A033579

/-- `sqrt(A014794(n))/2` -/
def P10108106512839780062.Spec : Prop :=
  ∀ n, P10108106512839780062.a n = (A033579 n : ℝ)

end A033579

/-! ## A033579.P2244724293412523326

`floor(A081589(n)/3)`
-/

namespace A033579.P2244724293412523326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081589 n : ℚ) / 3⌋

end

end A033579.P2244724293412523326

namespace A033579

/-- `floor(A081589(n)/3)` -/
def P2244724293412523326.Spec : Prop :=
  ∀ n, P2244724293412523326.a n = A033579 n

end A033579

/-! ## A033579.P8970038019955537720

`A081272(n)%A014641(n)`
-/

namespace A033579.P8970038019955537720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081272 n) (A014641 n)

end

end A033579.P8970038019955537720

namespace A033579

/-- `A081272(n)%A014641(n)` -/
def P8970038019955537720.Spec : Prop :=
  ∀ n, P8970038019955537720.a n = A033579 n

end A033579

/-! ## A033579.P13386559224783711053

`A087887(n)%A010008(n)`
-/

namespace A033579.P13386559224783711053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087887 n) (A010008 n)

end

end A033579.P13386559224783711053

namespace A033579

/-- `A087887(n)%A010008(n)` -/
def P13386559224783711053.Spec : Prop :=
  ∀ n, P13386559224783711053.a n = A033579 n

end A033579

/-! ## A033579.P8683274878997640041

`A190705(n)%A005914(n)`
-/

namespace A033579.P8683274878997640041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190705 n) (A005914 n)

end

end A033579.P8683274878997640041

namespace A033579

/-- `A190705(n)%A005914(n)` -/
def P8683274878997640041.Spec : Prop :=
  ∀ n, P8683274878997640041.a n = A033579 n

end A033579

/-! ## A033579.P10404258750144421165

`A194454(n)%A080859(n)`
-/

namespace A033579.P10404258750144421165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194454 n) (A080859 n)

end

end A033579.P10404258750144421165

namespace A033579

/-- `A194454(n)%A080859(n)` -/
def P10404258750144421165.Spec : Prop :=
  ∀ n, P10404258750144421165.a n = A033579 n

end A033579

/-! ## A033579.P4435123595400564341

`A274973(n)%A005898(n)`
-/

namespace A033579.P4435123595400564341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274973 n) (A005898 n)

end

end A033579.P4435123595400564341

namespace A033579

/-- `A274973(n)%A005898(n)` -/
def P4435123595400564341.Spec : Prop :=
  ∀ n, P4435123595400564341.a n = A033579 n

end A033579

/-!
# A033580: Four times second pentagonal numbers: a(n) = 2*n*(3*n+1).

The programs for A033580, the canonical program `A033580.P10508890947649140634` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033580 has offset 0).

The definition of A033580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(3*n+1)` (program `A033580.P10508890947649140634`, by `A033580.P10508890947649140634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033580.P10508890947649140634

`2*n*(3*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033580

/-- `2*n*(3*n+1)` -/
def P10508890947649140634.Spec : Prop :=
  ∀ n, (P10508890947649140634.a n : ℤ) = A033580 n

theorem P10508890947649140634.correct : P10508890947649140634.Spec := by
  intro n
  simp only [A033580]

end A033580

/-! ## A033580.P3759266678019946667

`A016742(n)+A046092(n)`
-/

namespace A033580.P3759266678019946667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A046092 n

end

end A033580.P3759266678019946667

namespace A033580

/-- `A016742(n)+A046092(n)` -/
def P3759266678019946667.Spec : Prop :=
  ∀ n, P3759266678019946667.a n = A033580 n

end A033580

/-! ## A033580.P13653555739259456932

`A003154(n+1)-A016813(n)`
-/

namespace A033580.P13653555739259456932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A016813 n

end

end A033580.P13653555739259456932

namespace A033580

/-- `A003154(n+1)-A016813(n)` -/
def P13653555739259456932.Spec : Prop :=
  ∀ n, P13653555739259456932.a n = A033580 n

end A033580

/-! ## A033580.P15058981074920303845

`Δ[4*n*C(n, 2)]`
-/

namespace A033580.P15058981074920303845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033580.P15058981074920303845

namespace A033580

/-- `Δ[4*n*C(n, 2)]` -/
def P15058981074920303845.Spec : Prop :=
  ∀ n, P15058981074920303845.a n = A033580 n

end A033580

/-! ## A033580.P8747013919517560352

`∑[a(n-1)+12]` with `a(0)=0, a(1)=8`
-/

namespace A033580.P8747013919517560352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033580.P8747013919517560352

namespace A033580

/-- `∑[a(n-1)+12]` -/
def P8747013919517560352.Spec : Prop :=
  ∀ n, (P8747013919517560352.a n : ℤ) = A033580 n

end A033580

/-! ## A033580.P12894587540704953681

`Δ[2*lcm(1-n, n²)]`
-/

namespace A033580.P12894587540704953681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (1 - (n : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033580.P12894587540704953681

namespace A033580

/-- `Δ[2*lcm(1-n, n²)]` -/
def P12894587540704953681.Spec : Prop :=
  ∀ n, P12894587540704953681.a n = A033580 n

end A033580

/-! ## A033580.P609701996167110628

`∑[ogf((8x+4x^2)/(1-2x+x^2))]`
-/

namespace A033580.P609701996167110628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033580.P609701996167110628

namespace A033580

/-- `∑[ogf((8x+4x^2)/(1-2x+x^2))]` -/
def P609701996167110628.Spec : Prop :=
  ∀ n, P609701996167110628.a n = A033580 n

end A033580

/-! ## A033580.P8278493861093807867

`ogf((8x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033580.P8278493861093807867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 4] [1, -3, 3, -1] n

end

end A033580.P8278493861093807867

namespace A033580

/-- `ogf((8x+4x^2)/(1-3x+3x^2-x^3))` -/
def P8278493861093807867.Spec : Prop :=
  ∀ n, P8278493861093807867.a n = A033580 n

end A033580

/-! ## A033580.P7069557662233727086

`4-∑[a(n-1)-12]` with `a(0)=4`
-/

namespace A033580.P7069557662233727086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033580.P7069557662233727086

namespace A033580

/-- `4-∑[a(n-1)-12]` -/
def P7069557662233727086.Spec : Prop :=
  ∀ n, P7069557662233727086.a n = A033580 n

end A033580

/-! ## A033580.P7139922420851405783

`Δ[2*n*lcm(n, n-1)]`
-/

namespace A033580.P7139922420851405783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Int.lcm (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033580.P7139922420851405783

namespace A033580

/-- `Δ[2*n*lcm(n, n-1)]` -/
def P7139922420851405783.Spec : Prop :=
  ∀ n, P7139922420851405783.a n = A033580 n

end A033580

/-! ## A033580.P15239026386757142463

`12*n-(4-a(n-1))` with `a(0)=0`
-/

namespace A033580.P15239026386757142463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * n : ℤ) - (4 - a (n - 1))

end

end A033580.P15239026386757142463

namespace A033580

/-- `12*n-(4-a(n-1))` -/
def P15239026386757142463.Spec : Prop :=
  ∀ n, P15239026386757142463.a n = A033580 n

theorem P15239026386757142463.correct : P15239026386757142463.Spec := by
  intro n
  induction n with
  | zero => simp [A033580, A033580.P15239026386757142463.a, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033580, Nat.add_sub_cancel, A033580.P15239026386757142463.a, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033580

/-! ## A033580.P10841458375882894505

`lcm(7*n-(n-2), 2*n)`
-/

namespace A033580.P10841458375882894505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((7 * n : ℤ) - ((n : ℤ) - 2)) (2 * n : ℤ)

end

end A033580.P10841458375882894505

namespace A033580

/-- `lcm(7*n-(n-2), 2*n)` -/
def P10841458375882894505.Spec : Prop :=
  ∀ n, (P10841458375882894505.a n : ℤ) = A033580 n

end A033580

/-! ## A033580.P11735241259226116018

`Δ[or(1, 2*n*(n²-n))]`
-/

namespace A033580.P11735241259226116018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033580.P11735241259226116018

namespace A033580

/-- `Δ[or(1, 2*n*(n²-n))]` -/
def P11735241259226116018.Spec : Prop :=
  ∀ n, P11735241259226116018.a n = A033580 n

end A033580

/-! ## A033580.P10828185785797132738

`Δ[xor(1, 2*n*(n²-n))]`
-/

namespace A033580.P10828185785797132738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033580.P10828185785797132738

namespace A033580

/-- `Δ[xor(1, 2*n*(n²-n))]` -/
def P10828185785797132738.Spec : Prop :=
  ∀ n, P10828185785797132738.a n = A033580 n

end A033580

/-! ## A033580.P768992245730670146

`Δ[2*(n-1)*gcd(n, 2*n)²]`
-/

namespace A033580.P768992245730670146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 1) * (Nat.gcd n (2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033580.P768992245730670146

namespace A033580

/-- `Δ[2*(n-1)*gcd(n, 2*n)²]` -/
def P768992245730670146.Spec : Prop :=
  ∀ n, P768992245730670146.a n = A033580 n

theorem P768992245730670146.correct : P768992245730670146.Spec := by
  intro n
  simp only [A033580, Nat.add_sub_cancel, A033580.P768992245730670146.f1, A033580.P768992245730670146.a, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033580

/-! ## A033580.P11004574773869192639

`A045946(n)/3`
-/

namespace A033580.P11004574773869192639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 n : ℚ) / 3

end

end A033580.P11004574773869192639

namespace A033580

/-- `A045946(n)/3` -/
def P11004574773869192639.Spec : Prop :=
  ∀ n, P11004574773869192639.a n = (A033580 n : ℚ)

end A033580

/-! ## A033580.P4792586884907671153

`A049453(n)+n`
-/

namespace A033580.P4792586884907671153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n + (n : ℤ)

end

end A033580.P4792586884907671153

namespace A033580

/-- `A049453(n)+n` -/
def P4792586884907671153.Spec : Prop :=
  ∀ n, P4792586884907671153.a n = A033580 n

end A033580

/-! ## A033580.P18159766090269295783

`A195319(n)-n`
-/

namespace A033580.P18159766090269295783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n - (n : ℤ)

end

end A033580.P18159766090269295783

namespace A033580

/-- `A195319(n)-n` -/
def P18159766090269295783.Spec : Prop :=
  ∀ n, P18159766090269295783.a n = A033580 n

end A033580

/-! ## A033580.P17649873466428474261

`A168668(n)+n²`
-/

namespace A033580.P17649873466428474261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + (n ^ 2 : ℤ)

end

end A033580.P17649873466428474261

namespace A033580

/-- `A168668(n)+n²` -/
def P17649873466428474261.Spec : Prop :=
  ∀ n, P17649873466428474261.a n = A033580 n

end A033580

/-! ## A033580.P15582336990411970497

`A254963(n)+∑[n]`
-/

namespace A033580.P15582336990411970497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033580.P15582336990411970497

namespace A033580

/-- `A254963(n)+∑[n]` -/
def P15582336990411970497.Spec : Prop :=
  ∀ n, P15582336990411970497.a n = A033580 n

end A033580

/-!
# A033581: a(n) = 6*n^2.

The programs for A033581, the canonical program `A033581.P13583599227635646969` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033581 has offset 0).

The definition of A033581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²` (program `A033581.P13583599227635646969`, by `A033581.P13583599227635646969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033581.P13583599227635646969

`6*n²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033581

/-- `6*n²` -/
def P13583599227635646969.Spec : Prop :=
  ∀ n, (P13583599227635646969.a n : ℤ) = A033581 n

theorem P13583599227635646969.correct : P13583599227635646969.Spec := by
  intro n
  simp only [A033581]

end A033581

/-!
# A033582: a(n) = 7*n^2.

The programs for A033582, the canonical program `A033582.P4303886374806047270` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033582 has offset 0).

The definition of A033582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²` (program `A033582.P4303886374806047270`, by `A033582.P4303886374806047270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033582.P4303886374806047270

`7*n²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033582

/-- `7*n²` -/
def P4303886374806047270.Spec : Prop :=
  ∀ n, (P4303886374806047270.a n : ℤ) = A033582 n

theorem P4303886374806047270.correct : P4303886374806047270.Spec := by
  intro n
  simp only [A033582]

end A033582

/-!
# A033583: a(n) = 10*n^2.

The programs for A033583, the canonical program `A033583.P12285480609414282410` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033583 has offset 0).

The definition of A033583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²` (program `A033583.P12285480609414282410`, by `A033583.P12285480609414282410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033583.P12285480609414282410

`10*n²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033583

/-- `10*n²` -/
def P12285480609414282410.Spec : Prop :=
  ∀ n, (P12285480609414282410.a n : ℤ) = A033583 n

theorem P12285480609414282410.correct : P12285480609414282410.Spec := by
  intro n
  simp only [A033583]

end A033583

/-!
# A033584: a(n) = 11*n^2.

The programs for A033584, the canonical program `A033584.P5749212620470657919` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033584 has offset 0).

The definition of A033584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n²` (program `A033584.P5749212620470657919`, by `A033584.P5749212620470657919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033584.P5749212620470657919

`11*n²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033584

/-- `11*n²` -/
def P5749212620470657919.Spec : Prop :=
  ∀ n, (P5749212620470657919.a n : ℤ) = A033584 n

theorem P5749212620470657919.correct : P5749212620470657919.Spec := by
  intro n
  simp only [A033584]

end A033584

/-!
# A033585: a(n) = 2*n*(4*n + 1).

The programs for A033585, the canonical program `A033585.P9867637388797284521` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033585 has offset 0).

The definition of A033585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+1)` (program `A033585.P9867637388797284521`, by `A033585.P9867637388797284521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033585.P471031007939467256

`C(4*n+1, 2)`
-/

namespace A033585.P471031007939467256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 1) 2

end

end A033585.P471031007939467256

namespace A033585

/-- `C(4*n+1, 2)` -/
def P471031007939467256.Spec : Prop :=
  ∀ n, (P471031007939467256.a n : ℤ) = A033585 n

end A033585

/-! ## A033585.P9867637388797284521

`2*n*(4*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033585

/-- `2*n*(4*n+1)` -/
def P9867637388797284521.Spec : Prop :=
  ∀ n, (P9867637388797284521.a n : ℤ) = A033585 n

theorem P9867637388797284521.correct : P9867637388797284521.Spec := by
  intro n
  simp only [A033585]

end A033585

/-! ## A033585.P8296043926513619455

`A000217(4*n)`
-/

namespace A033585.P8296043926513619455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 * n)

end

end A033585.P8296043926513619455

namespace A033585

/-- `A000217(4*n)` -/
def P8296043926513619455.Spec : Prop :=
  ∀ n, P8296043926513619455.a n = A033585 n

end A033585

/-! ## A033585.P8493069681224292417

`A014105(2*n)`
-/

namespace A033585.P8493069681224292417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (2 * n)

end

end A033585.P8493069681224292417

namespace A033585

/-- `A014105(2*n)` -/
def P8493069681224292417.Spec : Prop :=
  ∀ n, P8493069681224292417.a n = A033585 n

end A033585

/-! ## A033585.P14663254622186765740

`lcm(2, C(xor(1, 4*n), 2))`
-/

namespace A033585.P14663254622186765740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (Nat.xor 1 (4 * n)) 2)

end

end A033585.P14663254622186765740

namespace A033585

/-- `lcm(2, C(xor(1, 4*n), 2))` -/
def P14663254622186765740.Spec : Prop :=
  ∀ n, (P14663254622186765740.a n : ℤ) = A033585 n

end A033585

/-! ## A033585.P1894852728161617135

`∑[a(n-1)+16]` with `a(0)=0, a(1)=10`
-/

namespace A033585.P1894852728161617135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033585.P1894852728161617135

namespace A033585

/-- `∑[a(n-1)+16]` -/
def P1894852728161617135.Spec : Prop :=
  ∀ n, (P1894852728161617135.a n : ℤ) = A033585 n

end A033585

/-! ## A033585.P15087982440572566860

`lcm(2*n, or(1, 4*n))`
-/

namespace A033585.P15087982440572566860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) (Nat.lor 1 (4 * n))

end

end A033585.P15087982440572566860

namespace A033585

/-- `lcm(2*n, or(1, 4*n))` -/
def P15087982440572566860.Spec : Prop :=
  ∀ n, (P15087982440572566860.a n : ℤ) = A033585 n

end A033585

/-! ## A033585.P3475916922485547283

`∑[ogf((10x+6x^2)/(1-2x+x^2))]`
-/

namespace A033585.P3475916922485547283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033585.P3475916922485547283

namespace A033585

/-- `∑[ogf((10x+6x^2)/(1-2x+x^2))]` -/
def P3475916922485547283.Spec : Prop :=
  ∀ n, P3475916922485547283.a n = A033585 n

end A033585

/-! ## A033585.P15381527858323168143

`ogf((10x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033585.P15381527858323168143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 6] [1, -3, 3, -1] n

end

end A033585.P15381527858323168143

namespace A033585

/-- `ogf((10x+6x^2)/(1-3x+3x^2-x^3))` -/
def P15381527858323168143.Spec : Prop :=
  ∀ n, P15381527858323168143.a n = A033585 n

end A033585

/-! ## A033585.P17974717521086619877

`6-∑[a(n-1)-16]` with `a(0)=6`
-/

namespace A033585.P17974717521086619877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033585.P17974717521086619877

namespace A033585

/-- `6-∑[a(n-1)-16]` -/
def P17974717521086619877.Spec : Prop :=
  ∀ n, P17974717521086619877.a n = A033585 n

end A033585

/-! ## A033585.P1229599619840849304

`record[n*(2*xor(1, n)-1)]`
-/

namespace A033585.P1229599619840849304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * Nat.xor 1 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033585.P1229599619840849304

namespace A033585

/-- `record[n*(2*xor(1, n)-1)]` -/
def P1229599619840849304.Spec : Prop :=
  ∀ n, P1229599619840849304.a n = A033585 n

end A033585

/-! ## A033585.P2291616242354434487

`n*record[lcm(4, 1-n)]-2*n`
-/

namespace A033585.P2291616242354434487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n : ℤ)

end

end A033585.P2291616242354434487

namespace A033585

/-- `n*record[lcm(4, 1-n)]-2*n` -/
def P2291616242354434487.Spec : Prop :=
  ∀ n, P2291616242354434487.a n = A033585 n

end A033585

/-! ## A033585.P6374772147288023472

`-(2*n*Δ[-C(2*n, 2)])`
-/

namespace A033585.P6374772147288023472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (f1 (n + 1) - f1 n))

end

end A033585.P6374772147288023472

namespace A033585

/-- `-(2*n*Δ[-C(2*n, 2)])` -/
def P6374772147288023472.Spec : Prop :=
  ∀ n, P6374772147288023472.a n = A033585 n

end A033585

/-! ## A033585.P14274961963734770823

`gcd(n, 2*n)*Δ[(2*n)²]-2*n`
-/

namespace A033585.P14274961963734770823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (2 * n : ℤ)

end

end A033585.P14274961963734770823

namespace A033585

/-- `gcd(n, 2*n)*Δ[(2*n)²]-2*n` -/
def P14274961963734770823.Spec : Prop :=
  ∀ n, P14274961963734770823.a n = A033585 n

theorem P14274961963734770823.correct : P14274961963734770823.Spec := by
  intro n
  simp only [A033585, Nat.add_sub_cancel, A033585.P14274961963734770823.f1, A033585.P14274961963734770823.a, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033585

/-! ## A033585.P12939641186326768435

`A033566(n)+1`
-/

namespace A033585.P12939641186326768435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 n + 1

end

end A033585.P12939641186326768435

namespace A033585

/-- `A033566(n)+1` -/
def P12939641186326768435.Spec : Prop :=
  ∀ n, P12939641186326768435.a n = A033585 n

end A033585

/-! ## A033585.P706749529598819266

`A188135(n)-1`
-/

namespace A033585.P706749529598819266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n - 1

end

end A033585.P706749529598819266

namespace A033585

/-- `A188135(n)-1` -/
def P706749529598819266.Spec : Prop :=
  ∀ n, P706749529598819266.a n = A033585 n

end A033585

/-! ## A033585.P5014260990196163901

`A139275(n)+n`
-/

namespace A033585.P5014260990196163901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n + (n : ℤ)

end

end A033585.P5014260990196163901

namespace A033585

/-- `A139275(n)+n` -/
def P5014260990196163901.Spec : Prop :=
  ∀ n, P5014260990196163901.a n = A033585 n

end A033585

/-! ## A033585.P1620819975156429049

`A139276(n)-n`
-/

namespace A033585.P1620819975156429049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n - (n : ℤ)

end

end A033585.P1620819975156429049

namespace A033585

/-- `A139276(n)-n` -/
def P1620819975156429049.Spec : Prop :=
  ∀ n, P1620819975156429049.a n = A033585 n

end A033585

/-! ## A033585.P8403894095588954804

`∑[A113770(n)]-1`
-/

namespace A033585.P8403894095588954804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A033585.P8403894095588954804

namespace A033585

/-- `∑[A113770(n)]-1` -/
def P8403894095588954804.Spec : Prop :=
  ∀ n, P8403894095588954804.a n = A033585 n

end A033585

/-! ## A033585.P781637524579372535

`(A082041(n)-1)/2`
-/

namespace A033585.P781637524579372535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082041 n - 1 : ℚ) / 2

end

end A033585.P781637524579372535

namespace A033585

/-- `(A082041(n)-1)/2` -/
def P781637524579372535.Spec : Prop :=
  ∀ n, P781637524579372535.a n = (A033585 n : ℚ)

end A033585

/-!
# A033586: a(n) = 4*n*(2*n + 1).

The programs for A033586, the canonical program `A033586.P18185911393067431697` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033586 has offset 0).

The definition of A033586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(2*n+1)` (program `A033586.P18185911393067431697`, by `A033586.P18185911393067431697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033586.P18185911393067431697

`4*n*(2*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033586

/-- `4*n*(2*n+1)` -/
def P18185911393067431697.Spec : Prop :=
  ∀ n, (P18185911393067431697.a n : ℤ) = A033586 n

theorem P18185911393067431697.correct : P18185911393067431697.Spec := by
  intro n
  simp only [A033586]

end A033586

/-! ## A033586.P8574701014280256547

`lcm(4*n, Δ[n²])`
-/

namespace A033586.P8574701014280256547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033586.P8574701014280256547

namespace A033586

/-- `lcm(4*n, Δ[n²])` -/
def P8574701014280256547.Spec : Prop :=
  ∀ n, (P8574701014280256547.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P1595377844712484902

`record[n*(lcm(2, n)-2)]`
-/

namespace A033586.P1595377844712484902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm 2 n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P1595377844712484902

namespace A033586

/-- `record[n*(lcm(2, n)-2)]` -/
def P1595377844712484902.Spec : Prop :=
  ∀ n, P1595377844712484902.a n = A033586 n

end A033586

/-! ## A033586.P11724996879437483671

`record[lcm(2*n, xor(1, n))]`
-/

namespace A033586.P11724996879437483671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P11724996879437483671

namespace A033586

/-- `record[lcm(2*n, xor(1, n))]` -/
def P11724996879437483671.Spec : Prop :=
  ∀ n, (P11724996879437483671.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P8812615326948869405

`∑[a(n-1)+16]` with `a(0)=0, a(1)=12`
-/

namespace A033586.P8812615326948869405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033586.P8812615326948869405

namespace A033586

/-- `∑[a(n-1)+16]` -/
def P8812615326948869405.Spec : Prop :=
  ∀ n, (P8812615326948869405.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P8331414082076327999

`∑[ogf((12x+4x^2)/(1-2x+x^2))]`
-/

namespace A033586.P8331414082076327999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033586.P8331414082076327999

namespace A033586

/-- `∑[ogf((12x+4x^2)/(1-2x+x^2))]` -/
def P8331414082076327999.Spec : Prop :=
  ∀ n, P8331414082076327999.a n = A033586 n

end A033586

/-! ## A033586.P7450638941576122651

`Δ[C(4*n, 3)/4]-1`
-/

namespace A033586.P7450638941576122651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A033586.P7450638941576122651

namespace A033586

/-- `Δ[C(4*n, 3)/4]-1` -/
def P7450638941576122651.Spec : Prop :=
  ∀ n, P7450638941576122651.a n = (A033586 n : ℚ)

end A033586

/-! ## A033586.P399812572240418821

`4-∑[a(n-1)-16]` with `a(0)=4`
-/

namespace A033586.P399812572240418821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033586.P399812572240418821

namespace A033586

/-- `4-∑[a(n-1)-16]` -/
def P399812572240418821.Spec : Prop :=
  ∀ n, P399812572240418821.a n = A033586 n

end A033586

/-! ## A033586.P4732776483099907268

`record[4*C(n*n%2, 2)]`
-/

namespace A033586.P4732776483099907268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n * (n % 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P4732776483099907268

namespace A033586

/-- `record[4*C(n*n%2, 2)]` -/
def P4732776483099907268.Spec : Prop :=
  ∀ n, (P4732776483099907268.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P13546807823069065116

`floor(Δ[C(2*n, 2)]²/2)`
-/

namespace A033586.P13546807823069065116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A033586.P13546807823069065116

namespace A033586

/-- `floor(Δ[C(2*n, 2)]²/2)` -/
def P13546807823069065116.Spec : Prop :=
  ∀ n, P13546807823069065116.a n = A033586 n

end A033586

/-! ## A033586.P1289450825751896812

`floor((record[xor(3, n)]-2)²/2)`
-/

namespace A033586.P1289450825751896812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2) ^ 2 : ℚ) / 2⌋

end

end A033586.P1289450825751896812

namespace A033586

/-- `floor((record[xor(3, n)]-2)²/2)` -/
def P1289450825751896812.Spec : Prop :=
  ∀ n, P1289450825751896812.a n = A033586 n

end A033586

/-! ## A033586.P1144830301222685909

`and(n*Δ[(2*n)²], -2)`
-/

namespace A033586.P1144830301222685909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (-2)

end

end A033586.P1144830301222685909

namespace A033586

/-- `and(n*Δ[(2*n)²], -2)` -/
def P1144830301222685909.Spec : Prop :=
  ∀ n, P1144830301222685909.a n = A033586 n

end A033586

/-! ## A033586.P10231607496466437024

`record[n*gcd(2, n)*xor(1, n)]`
-/

namespace A033586.P10231607496466437024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P10231607496466437024

namespace A033586

/-- `record[n*gcd(2, n)*xor(1, n)]` -/
def P10231607496466437024.Spec : Prop :=
  ∀ n, (P10231607496466437024.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P15976524497987054287

`12*n*or(1, 2*n)/3`
-/

namespace A033586.P15976524497987054287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * (n * Nat.lor 1 (2 * n)) : ℚ) / 3

end

end A033586.P15976524497987054287

namespace A033586

/-- `12*n*or(1, 2*n)/3` -/
def P15976524497987054287.Spec : Prop :=
  ∀ n, P15976524497987054287.a n = (A033586 n : ℚ)

end A033586

/-! ## A033586.P12617439902448719910

`16*n-(4-a(n-1))` with `a(0)=0`
-/

namespace A033586.P12617439902448719910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (16 * n : ℤ) - (4 - a (n - 1))

end

end A033586.P12617439902448719910

namespace A033586

/-- `16*n-(4-a(n-1))` -/
def P12617439902448719910.Spec : Prop :=
  ∀ n, P12617439902448719910.a n = A033586 n

theorem P12617439902448719910.correct : P12617439902448719910.Spec := by
  intro n
  induction n with
  | zero => simp [A033586, A033586.P12617439902448719910.a, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033586, Nat.add_sub_cancel, A033586.P12617439902448719910.a, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033586

/-! ## A033586.P16169841328537541367

`record[(xor(1, n-1)-1)*2*n]`
-/

namespace A033586.P16169841328537541367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((n : ℤ) - 1) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P16169841328537541367

namespace A033586

/-- `record[(xor(1, n-1)-1)*2*n]` -/
def P16169841328537541367.Spec : Prop :=
  ∀ n, P16169841328537541367.a n = A033586 n

end A033586

/-! ## A033586.P1103246045146820324

`record[2*n*(n-1)*and(1, n)]`
-/

namespace A033586.P1103246045146820324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033586.P1103246045146820324

namespace A033586

/-- `record[2*n*(n-1)*and(1, n)]` -/
def P1103246045146820324.Spec : Prop :=
  ∀ n, P1103246045146820324.a n = A033586 n

end A033586

/-! ## A033586.P4572546129655261993

`n*Δ[(2*n)²]-and(1, 2*n)`
-/

namespace A033586.P4572546129655261993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (Nat.land 1 (2 * n) : ℤ)

end

end A033586.P4572546129655261993

namespace A033586

/-- `n*Δ[(2*n)²]-and(1, 2*n)` -/
def P4572546129655261993.Spec : Prop :=
  ∀ n, P4572546129655261993.a n = A033586 n

theorem P4572546129655261993.correct : P4572546129655261993.Spec := by
  intro n
  simp only [A033586, Nat.add_sub_cancel, A033586.P4572546129655261993.f1, A033586.P4572546129655261993.a, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033586

/-! ## A033586.P10845754382240379875

`gcd(n*Δ[(2*n)²], and(1, 2*n))`
-/

namespace A033586.P10845754382240379875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (Nat.land 1 (2 * n) : ℤ)

end

end A033586.P10845754382240379875

namespace A033586

/-- `gcd(n*Δ[(2*n)²], and(1, 2*n))` -/
def P10845754382240379875.Spec : Prop :=
  ∀ n, (P10845754382240379875.a n : ℤ) = A033586 n

end A033586

/-! ## A033586.P8864777357475190530

`floor(eq[n-1, and(n, n+1)]²/2)`
-/

namespace A033586.P8864777357475190530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n ^ 2 : ℚ) / 2⌋

end

end A033586.P8864777357475190530

namespace A033586

/-- `floor(eq[n-1, and(n, n+1)]²/2)` -/
def P8864777357475190530.Spec : Prop :=
  ∀ n, P8864777357475190530.a n = A033586 n

end A033586

/-!
# A033587: a(n) = 2*n*(4*n + 3).

The programs for A033587, the canonical program `A033587.P16272004082571904291` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033587 has offset 0).

The definition of A033587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n+3)` (program `A033587.P16272004082571904291`, by `A033587.P16272004082571904291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033587.P16272004082571904291

`2*n*(4*n+3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033587

/-- `2*n*(4*n+3)` -/
def P16272004082571904291.Spec : Prop :=
  ∀ n, (P16272004082571904291.a n : ℤ) = A033587 n

theorem P16272004082571904291.correct : P16272004082571904291.Spec := by
  intro n
  simp only [A033587]

end A033587

/-! ## A033587.P5458964568366993311

`n*record[xor(7, n)]-n`
-/

namespace A033587.P5458964568366993311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A033587.P5458964568366993311

namespace A033587

/-- `n*record[xor(7, n)]-n` -/
def P5458964568366993311.Spec : Prop :=
  ∀ n, P5458964568366993311.a n = A033587 n

end A033587

/-! ## A033587.P9830683312352074154

`∑[a(n-1)+16]` with `a(0)=0, a(1)=14`
-/

namespace A033587.P9830683312352074154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033587.P9830683312352074154

namespace A033587

/-- `∑[a(n-1)+16]` -/
def P9830683312352074154.Spec : Prop :=
  ∀ n, (P9830683312352074154.a n : ℤ) = A033587 n

end A033587

/-! ## A033587.P8322297495579511777

`C(Δ[2*n²], 2)-1`
-/

namespace A033587.P8322297495579511777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) - 1

end

end A033587.P8322297495579511777

namespace A033587

/-- `C(Δ[2*n²], 2)-1` -/
def P8322297495579511777.Spec : Prop :=
  ∀ n, P8322297495579511777.a n = A033587 n

end A033587

/-! ## A033587.P7604041345256821033

`∑[ogf((14x+2x^2)/(1-2x+x^2))]`
-/

namespace A033587.P7604041345256821033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033587.P7604041345256821033

namespace A033587

/-- `∑[ogf((14x+2x^2)/(1-2x+x^2))]` -/
def P7604041345256821033.Spec : Prop :=
  ∀ n, P7604041345256821033.a n = A033587 n

end A033587

/-! ## A033587.P18172336386806186899

`2-∑[a(n-1)-16]` with `a(0)=2`
-/

namespace A033587.P18172336386806186899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033587.P18172336386806186899

namespace A033587

/-- `2-∑[a(n-1)-16]` -/
def P18172336386806186899.Spec : Prop :=
  ∀ n, P18172336386806186899.a n = A033587 n

end A033587

/-! ## A033587.P9942025696282861109

`lcm(∑[8*n]-n, 2*n)`
-/

namespace A033587.P9942025696282861109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (2 * n : ℤ)

end

end A033587.P9942025696282861109

namespace A033587

/-- `lcm(∑[8*n]-n, 2*n)` -/
def P9942025696282861109.Spec : Prop :=
  ∀ n, (P9942025696282861109.a n : ℤ) = A033587 n

end A033587

/-! ## A033587.P5946860055929391637

`16*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A033587.P5946860055929391637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (16 * n : ℤ) - (2 - a (n - 1))

end

end A033587.P5946860055929391637

namespace A033587

/-- `16*n-(2-a(n-1))` -/
def P5946860055929391637.Spec : Prop :=
  ∀ n, P5946860055929391637.a n = A033587 n

theorem P5946860055929391637.correct : P5946860055929391637.Spec := by
  intro n
  induction n with
  | zero => simp [A033587, A033587.P5946860055929391637.a, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033587, Nat.add_sub_cancel, A033587.P5946860055929391637.a, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033587

/-! ## A033587.P769995939598383105

`A014634(n)-1`
-/

namespace A033587.P769995939598383105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n - 1

end

end A033587.P769995939598383105

namespace A033587

/-- `A014634(n)-1` -/
def P769995939598383105.Spec : Prop :=
  ∀ n, P769995939598383105.a n = A033587 n

end A033587

/-! ## A033587.P17954275239508428462

`A139277(n)+n`
-/

namespace A033587.P17954275239508428462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n + (n : ℤ)

end

end A033587.P17954275239508428462

namespace A033587

/-- `A139277(n)+n` -/
def P17954275239508428462.Spec : Prop :=
  ∀ n, P17954275239508428462.a n = A033587 n

end A033587

/-! ## A033587.P5700652462660212621

`A139278(n)-n`
-/

namespace A033587.P5700652462660212621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n - (n : ℤ)

end

end A033587.P5700652462660212621

namespace A033587

/-- `A139278(n)-n` -/
def P5700652462660212621.Spec : Prop :=
  ∀ n, P5700652462660212621.a n = A033587 n

end A033587

/-! ## A033587.P327230087185037639

`A157870(n)/2-1`
-/

namespace A033587.P327230087185037639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157870 n : ℚ) / 2 - 1

end

end A033587.P327230087185037639

namespace A033587

/-- `A157870(n)/2-1` -/
def P327230087185037639.Spec : Prop :=
  ∀ n, P327230087185037639.a n = (A033587 n : ℚ)

end A033587

/-! ## A033587.P7996070419053237035

`A194268(n)-(n+1)`
-/

namespace A033587.P7996070419053237035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 n - (n + 1 : ℤ)

end

end A033587.P7996070419053237035

namespace A033587

/-- `A194268(n)-(n+1)` -/
def P7996070419053237035.Spec : Prop :=
  ∀ n, P7996070419053237035.a n = A033587 n

end A033587

/-! ## A033587.P17548333768553380161

`A033586(n)+2*n`
-/

namespace A033587.P17548333768553380161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + (2 * n : ℤ)

end

end A033587.P17548333768553380161

namespace A033587

/-- `A033586(n)+2*n` -/
def P17548333768553380161.Spec : Prop :=
  ∀ n, P17548333768553380161.a n = A033587 n

end A033587

/-! ## A033587.P3316510198397411864

`A035008(n)-2*n`
-/

namespace A033587.P3316510198397411864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n - (2 * n : ℤ)

end

end A033587.P3316510198397411864

namespace A033587

/-- `A035008(n)-2*n` -/
def P3316510198397411864.Spec : Prop :=
  ∀ n, P3316510198397411864.a n = A033587 n

end A033587

/-! ## A033587.P11776597283178729456

`A139274(n)+7*n`
-/

namespace A033587.P11776597283178729456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n + (7 * n : ℤ)

end

end A033587.P11776597283178729456

namespace A033587

/-- `A139274(n)+7*n` -/
def P11776597283178729456.Spec : Prop :=
  ∀ n, P11776597283178729456.a n = A033587 n

end A033587

/-! ## A033587.P8469510243250511137

`sqrt(A014771(n+1))-1`
-/

namespace A033587.P8469510243250511137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014771 (n + 1) : ℝ) - 1

end

end A033587.P8469510243250511137

namespace A033587

/-- `sqrt(A014771(n+1))-1` -/
def P8469510243250511137.Spec : Prop :=
  ∀ n, P8469510243250511137.a n = (A033587 n : ℝ)

end A033587

/-! ## A033587.P3755822270591837202

`A016777(n)²-(n²+1)`
-/

namespace A033587.P3755822270591837202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ 2 - (n ^ 2 + 1 : ℤ)

end

end A033587.P3755822270591837202

namespace A033587

/-- `A016777(n)²-(n²+1)` -/
def P3755822270591837202.Spec : Prop :=
  ∀ n, P3755822270591837202.a n = A033587 n

end A033587

/-! ## A033587.P12780762289016510663

`A014635(n)+A008590(n)`
-/

namespace A033587.P12780762289016510663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + A008590 n

end

end A033587.P12780762289016510663

namespace A033587

/-- `A014635(n)+A008590(n)` -/
def P12780762289016510663.Spec : Prop :=
  ∀ n, P12780762289016510663.a n = A033587 n

end A033587

/-! ## A033587.P8962186155509118125

`A033996(n)+A002943(n)`
-/

namespace A033587.P8962186155509118125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + A002943 n

end

end A033587.P8962186155509118125

namespace A033587

/-- `A033996(n)+A002943(n)` -/
def P8962186155509118125.Spec : Prop :=
  ∀ n, P8962186155509118125.a n = A033587 n

end A033587

/-!
# A033589: a(n) = (2*n-1)*(3*n-1)*(4*n-1).

The programs for A033589, the canonical program `A033589.P17072020731311031547` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033589 has offset 0).

The definition of A033589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)` (program `A033589.P17072020731311031547`, by `A033589.P17072020731311031547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033589.P17072020731311031547

`(2*n-1)*(3*n-1)*(4*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033589

/-- `(2*n-1)*(3*n-1)*(4*n-1)` -/
def P17072020731311031547.Spec : Prop :=
  ∀ n, P17072020731311031547.a n = A033589 n

theorem P17072020731311031547.correct : P17072020731311031547.Spec := by
  intro n
  simp only [A033589]

end A033589

/-! ## A033589.P5023515891946590412

`3*n*A033567(n)-A033567(n)`
-/

namespace A033589.P5023515891946590412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A033567 n) - A033567 n

end

end A033589.P5023515891946590412

namespace A033589

/-- `3*n*A033567(n)-A033567(n)` -/
def P5023515891946590412.Spec : Prop :=
  ∀ n, P5023515891946590412.a n = A033589 n

end A033589

/-! ## A033589.P6598541273854752346

`A005843(n)*A033578(n)-A033578(n)`
-/

namespace A033589.P6598541273854752346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A033578 n - A033578 n

end

end A033589.P6598541273854752346

namespace A033589

/-- `A005843(n)*A033578(n)-A033578(n)` -/
def P6598541273854752346.Spec : Prop :=
  ∀ n, P6598541273854752346.a n = A033589 n

end A033589

/-! ## A033589.P8999104534576247662

`A008586(n)*A033568(n)-A033568(n)`
-/

namespace A033589.P8999104534576247662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n * A033568 n - A033568 n

end

end A033589.P8999104534576247662

namespace A033589

/-- `A008586(n)*A033568(n)-A033568(n)` -/
def P8999104534576247662.Spec : Prop :=
  ∀ n, P8999104534576247662.a n = A033589 n

end A033589

/-! ## A033589.P9703528156052869210

`A033568(n)*A049452(n)-A033568(n)²`
-/

namespace A033589.P9703528156052869210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n * A049452 n - A033568 n ^ 2

end

end A033589.P9703528156052869210

namespace A033589

/-- `A033568(n)*A049452(n)-A033568(n)²` -/
def P9703528156052869210.Spec : Prop :=
  ∀ n, P9703528156052869210.a n = A033589 n

end A033589

/-! ## A033589.P160231815359378520

`n*A033569(2*n)-A033568(2*n)`
-/

namespace A033589.P160231815359378520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033569 (2 * n) - A033568 (2 * n)

end

end A033589.P160231815359378520

namespace A033589

/-- `n*A033569(2*n)-A033568(2*n)` -/
def P160231815359378520.Spec : Prop :=
  ∀ n, P160231815359378520.a n = A033589 n

end A033589

/-!
# A033590: a(n) = (2*n-1)*(3*n-1)*(4*n-1)*(5*n-1).

The programs for A033590, the canonical program `A033590.P16557099421232767516` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033590 has offset 0).

The definition of A033590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)` (program `A033590.P16557099421232767516`, by `A033590.P16557099421232767516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033590.P16557099421232767516

`(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033590

/-- `(2*n-1)*(3*n-1)*(4*n-1)*(5*n-1)` -/
def P16557099421232767516.Spec : Prop :=
  ∀ n, P16557099421232767516.a n = A033590 n

theorem P16557099421232767516.correct : P16557099421232767516.Spec := by
  intro n
  simp only [A033590]

end A033590

/-! ## A033590.P14816955260982257070

`abs((n*(10*n-7)+1)*A033578(n))`
-/

namespace A033590.P14816955260982257070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * ((10 * n : ℤ) - 7) + 1) * A033578 n|

end

end A033590.P14816955260982257070

namespace A033590

/-- `abs((n*(10*n-7)+1)*A033578(n))` -/
def P14816955260982257070.Spec : Prop :=
  ∀ n, P14816955260982257070.a n = A033590 n

end A033590

/-! ## A033590.P12006874856259154118

`abs((A152746(n)+1-n)*A158186(n))`
-/

namespace A033590.P12006874856259154118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A152746 n + (1 - (n : ℤ))) * A158186 n|

end

end A033590.P12006874856259154118

namespace A033590

/-- `abs((A152746(n)+1-n)*A158186(n))` -/
def P12006874856259154118.Spec : Prop :=
  ∀ n, P12006874856259154118.a n = A033590 n

end A033590

/-! ## A033590.P1037618519240929632

`abs((A152767(n)+Δ[n²])*A158186(n))`
-/

namespace A033590.P1037618519240929632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A152767 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A158186 n|

end

end A033590.P1037618519240929632

namespace A033590

/-- `abs((A152767(n)+Δ[n²])*A158186(n))` -/
def P1037618519240929632.Spec : Prop :=
  ∀ n, P1037618519240929632.a n = A033590 n

end A033590

/-! ## A033590.P3307065632260505022

`floor((A154357(n)-n²)/2*A158186(n))`
-/

namespace A033590.P3307065632260505022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154357 n - (n ^ 2 : ℤ) : ℚ) / 2 * (A158186 n : ℚ)⌋

end

end A033590.P3307065632260505022

namespace A033590

/-- `floor((A154357(n)-n²)/2*A158186(n))` -/
def P3307065632260505022.Spec : Prop :=
  ∀ n, P3307065632260505022.a n = A033590 n

end A033590

/-! ## A033590.P7142561269207290476

`floor((A153808(n)/2+n+1)*A158186(n))`
-/

namespace A033590.P7142561269207290476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A153808 n : ℚ) / 2 + (n + 1 : ℚ)) * (A158186 n : ℚ)⌋

end

end A033590.P7142561269207290476

namespace A033590

/-- `floor((A153808(n)/2+n+1)*A158186(n))` -/
def P7142561269207290476.Spec : Prop :=
  ∀ n, P7142561269207290476.a n = A033590 n

end A033590

/-! ## A033590.P17035203720257550067

`abs((A143855(n+1)-(2*n)²)*A158186(n))`
-/

namespace A033590.P17035203720257550067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A143855 (n + 1) - ((2 * n) ^ 2 : ℤ)) * A158186 n|

end

end A033590.P17035203720257550067

namespace A033590

/-- `abs((A143855(n+1)-(2*n)²)*A158186(n))` -/
def P17035203720257550067.Spec : Prop :=
  ∀ n, P17035203720257550067.a n = A033590 n

end A033590

/-!
# A033591: a(n) = (2*n+1)*(3*n+1)*(4*n+1).

The programs for A033591, the canonical program `A033591.P12810568784023190580` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033591 has offset 0).

The definition of A033591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)` (program `A033591.P12810568784023190580`, by `A033591.P12810568784023190580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033591.P12810568784023190580

`(2*n+1)*(3*n+1)*(4*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033591

/-- `(2*n+1)*(3*n+1)*(4*n+1)` -/
def P12810568784023190580.Spec : Prop :=
  ∀ n, (P12810568784023190580.a n : ℤ) = A033591 n

theorem P12810568784023190580.correct : P12810568784023190580.Spec := by
  intro n
  simp only [A033591]

end A033591

/-! ## A033591.P4290133371355394524

`lcm(∑[12*n-1]+2, 4*n+1)`
-/

namespace A033591.P4290133371355394524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 2) (4 * n + 1 : ℤ)

end

end A033591.P4290133371355394524

namespace A033591

/-- `lcm(∑[12*n-1]+2, 4*n+1)` -/
def P4290133371355394524.Spec : Prop :=
  ∀ n, (P4290133371355394524.a n : ℤ) = A033591 n

end A033591

/-! ## A033591.P2379498545527946368

`A011245(n)/(n+1)`
-/

namespace A033591.P2379498545527946368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011245 n : ℚ) / (n + 1 : ℚ)

end

end A033591.P2379498545527946368

namespace A033591

/-- `A011245(n)/(n+1)` -/
def P2379498545527946368.Spec : Prop :=
  ∀ n, P2379498545527946368.a n = (A033591 n : ℚ)

end A033591

/-! ## A033591.P14826253957155698289

`(3*n+1)^3-A294315(n)`
-/

namespace A033591.P14826253957155698289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) ^ 3 : ℤ) - A294315 n

end

end A033591.P14826253957155698289

namespace A033591

/-- `(3*n+1)^3-A294315(n)` -/
def P14826253957155698289.Spec : Prop :=
  ∀ n, P14826253957155698289.a n = A033591 n

end A033591

/-! ## A033591.P14905761917831874632

`A316224(n)+A280059(n)`
-/

namespace A033591.P14905761917831874632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A280059 n

end

end A033591.P14905761917831874632

namespace A033591

/-- `A316224(n)+A280059(n)` -/
def P14905761917831874632.Spec : Prop :=
  ∀ n, P14905761917831874632.a n = A033591 n

end A033591

/-! ## A033591.P1236713379984195527

`A015223(n)-A316224(n)`
-/

namespace A033591.P1236713379984195527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015223 n - A316224 n

end

end A033591.P1236713379984195527

namespace A033591

/-- `A015223(n)-A316224(n)` -/
def P1236713379984195527.Spec : Prop :=
  ∀ n, P1236713379984195527.a n = A033591 n

end A033591

/-! ## A033591.P16451234497358940347

`A033592(n)/A016861(n)`
-/

namespace A033591.P16451234497358940347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033592 n : ℚ) / (A016861 n : ℚ)

end

end A033591.P16451234497358940347

namespace A033591

/-- `A033592(n)/A016861(n)` -/
def P16451234497358940347.Spec : Prop :=
  ∀ n, P16451234497358940347.a n = (A033591 n : ℚ)

end A033591

/-! ## A033591.P15877680067995009650

`A079588(n)+2*A316224(n)`
-/

namespace A033591.P15877680067995009650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + 2 * A316224 n

end

end A033591.P15877680067995009650

namespace A033591

/-- `A079588(n)+2*A316224(n)` -/
def P15877680067995009650.Spec : Prop :=
  ∀ n, P15877680067995009650.a n = A033591 n

end A033591

/-! ## A033591.P16024228347486887950

`2*A280059(n)-A079588(n)`
-/

namespace A033591.P16024228347486887950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280059 n - A079588 n

end

end A033591.P16024228347486887950

namespace A033591

/-- `2*A280059(n)-A079588(n)` -/
def P16024228347486887950.Spec : Prop :=
  ∀ n, P16024228347486887950.a n = A033591 n

end A033591

/-! ## A033591.P13571376845566832239

`A016779(n)-n²*A016777(n)`
-/

namespace A033591.P13571376845566832239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n - (n ^ 2 : ℤ) * A016777 n

end

end A033591.P13571376845566832239

namespace A033591

/-- `A016779(n)-n²*A016777(n)` -/
def P13571376845566832239.Spec : Prop :=
  ∀ n, P13571376845566832239.a n = A033591 n

end A033591

/-! ## A033591.P11635786239810370942

`A193228(n+1)+n*A014641(n)`
-/

namespace A033591.P11635786239810370942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) + (n : ℤ) * A014641 n

end

end A033591.P11635786239810370942

namespace A033591

/-- `A193228(n+1)+n*A014641(n)` -/
def P11635786239810370942.Spec : Prop :=
  ∀ n, P11635786239810370942.a n = A033591 n

end A033591

/-! ## A033591.P10355769502273983989

`2*A005920(2*n)-A000217(2*n+1)`
-/

namespace A033591.P10355769502273983989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005920 (2 * n) - A000217 (2 * n + 1)

end

end A033591.P10355769502273983989

namespace A033591

/-- `2*A005920(2*n)-A000217(2*n+1)` -/
def P10355769502273983989.Spec : Prop :=
  ∀ n, P10355769502273983989.a n = A033591 n

end A033591

/-! ## A033591.P3632959255390325946

`A005945(Δ[n²])`
-/

namespace A033591.P3632959255390325946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033591.P3632959255390325946

namespace A033591

/-- `A005945(Δ[n²])` -/
def P3632959255390325946.Spec : Prop :=
  ∀ n, P3632959255390325946.a n = A033591 n

end A033591

/-! ## A033591.P17009198580393255850

`or(char[2], A005945(2*n+1))`
-/

namespace A033591.P17009198580393255850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005945 (2 * n + 1))

end

end A033591.P17009198580393255850

namespace A033591

/-- `or(char[2], A005945(2*n+1))` -/
def P17009198580393255850.Spec : Prop :=
  ∀ n, P17009198580393255850.a n = A033591 n

end A033591

/-! ## A033591.P14053001240190558286

`A005915(2*n)+2*n²+n`
-/

namespace A033591.P14053001240190558286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 (2 * n) + (2 * n ^ 2 + n : ℤ)

end

end A033591.P14053001240190558286

namespace A033591

/-- `A005915(2*n)+2*n²+n` -/
def P14053001240190558286.Spec : Prop :=
  ∀ n, P14053001240190558286.a n = A033591 n

end A033591

/-! ## A033591.P11928176940954259202

`(3*n+1)*A002939(2*n+1)/2`
-/

namespace A033591.P11928176940954259202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1 : ℤ) * A002939 (2 * n + 1) : ℚ) / 2

end

end A033591.P11928176940954259202

namespace A033591

/-- `(3*n+1)*A002939(2*n+1)/2` -/
def P11928176940954259202.Spec : Prop :=
  ∀ n, P11928176940954259202.a n = (A033591 n : ℚ)

end A033591

/-! ## A033591.P15374748952371013553

`(2*n+1)²+n*A014632(2*n+1)`
-/

namespace A033591.P15374748952371013553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + (n : ℤ) * A014632 (2 * n + 1)

end

end A033591.P15374748952371013553

namespace A033591

/-- `(2*n+1)²+n*A014632(2*n+1)` -/
def P15374748952371013553.Spec : Prop :=
  ∀ n, P15374748952371013553.a n = A033591 n

end A033591

/-! ## A033591.P15526782115914232913

`A079588(n)+A055112(2*n)`
-/

namespace A033591.P15526782115914232913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n + A055112 (2 * n)

end

end A033591.P15526782115914232913

namespace A033591

/-- `A079588(n)+A055112(2*n)` -/
def P15526782115914232913.Spec : Prop :=
  ∀ n, P15526782115914232913.a n = A033591 n

end A033591

/-! ## A033591.P10099171221141699872

`A280059(n)+A059270(2*n)`
-/

namespace A033591.P10099171221141699872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n + A059270 (2 * n)

end

end A033591.P10099171221141699872

namespace A033591

/-- `A280059(n)+A059270(2*n)` -/
def P10099171221141699872.Spec : Prop :=
  ∀ n, P10099171221141699872.a n = A033591 n

end A033591

/-! ## A033591.P17116644808089469734

`A059986(2*n)+A000384(n+1)`
-/

namespace A033591.P17116644808089469734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 (2 * n) + A000384 (n + 1)

end

end A033591.P17116644808089469734

namespace A033591

/-- `A059986(2*n)+A000384(n+1)` -/
def P17116644808089469734.Spec : Prop :=
  ∀ n, P17116644808089469734.a n = A033591 n

end A033591

/-!
# A033592: a(n) = (2*n+1)*(3*n+1)*(4*n+1)*(5*n+1).

The programs for A033592, the canonical program `A033592.P7780161274916950804` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033592 has offset 0).

The definition of A033592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)` (program `A033592.P7780161274916950804`, by `A033592.P7780161274916950804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033592.P7780161274916950804

`(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033592

/-- `(2*n+1)*(3*n+1)*(4*n+1)*(5*n+1)` -/
def P7780161274916950804.Spec : Prop :=
  ∀ n, (P7780161274916950804.a n : ℤ) = A033592 n

theorem P7780161274916950804.correct : P7780161274916950804.Spec := by
  intro n
  simp only [A033592]

end A033592

/-! ## A033592.P1654326480881745170

`A011245(n)*A017293(n)/(2*(n+1))`
-/

namespace A033592.P1654326480881745170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011245 n * A017293 n : ℚ) / (2 * (n + 1) : ℚ)

end

end A033592.P1654326480881745170

namespace A033592

/-- `A011245(n)*A017293(n)/(2*(n+1))` -/
def P1654326480881745170.Spec : Prop :=
  ∀ n, P1654326480881745170.a n = (A033592 n : ℚ)

end A033592

/-! ## A033592.P14281516495695407154

`lcm(2*n+1, A016861(n)*A033591(n))`
-/

namespace A033592.P14281516495695407154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A016861 n * A033591 n)

end

end A033592.P14281516495695407154

namespace A033592

/-- `lcm(2*n+1, A016861(n)*A033591(n))` -/
def P14281516495695407154.Spec : Prop :=
  ∀ n, (P14281516495695407154.a n : ℤ) = A033592 n

end A033592

/-! ## A033592.P11954790313106768617

`lcm(A016861(n)*A033591(n), A016861(n))`
-/

namespace A033592.P11954790313106768617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016861 n * A033591 n) (A016861 n)

end

end A033592.P11954790313106768617

namespace A033592

/-- `lcm(A016861(n)*A033591(n), A016861(n))` -/
def P11954790313106768617.Spec : Prop :=
  ∀ n, (P11954790313106768617.a n : ℤ) = A033592 n

end A033592

/-! ## A033592.P4014481359739509085

`A016861(n)*A033591(n)/A068057(A110560(n))`
-/

namespace A033592.P4014481359739509085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n * A033591 n : ℚ) / (A068057 (A110560 n).toNat : ℚ)

end

end A033592.P4014481359739509085

namespace A033592

/-- `A016861(n)*A033591(n)/A068057(A110560(n))` -/
def P4014481359739509085.Spec : Prop :=
  ∀ n, P4014481359739509085.a n = (A033592 n : ℚ)

end A033592

/-! ## A033592.P12445784658100109233

`A005946(2*n+1)+∑[2*n²]`
-/

namespace A033592.P12445784658100109233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005946 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033592.P12445784658100109233

namespace A033592

/-- `A005946(2*n+1)+∑[2*n²]` -/
def P12445784658100109233.Spec : Prop :=
  ∀ n, P12445784658100109233.a n = A033592 n

end A033592

/-! ## A033592.P3812126528339377683

`A006331(n)+A005946(Δ[n²])`
-/

namespace A033592.P3812126528339377683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A005946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033592.P3812126528339377683

namespace A033592

/-- `A006331(n)+A005946(Δ[n²])` -/
def P3812126528339377683.Spec : Prop :=
  ∀ n, P3812126528339377683.a n = A033592 n

end A033592

/-!
# A033593: a(n) = (n-1)*(2*n-1)*(3*n-1)*(4*n-1).

The programs for A033593, the canonical program `A033593.P7892313463121597616` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033593 has offset 0).

The definition of A033593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)*(4*n-1)` (program `A033593.P7892313463121597616`, by `A033593.P7892313463121597616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033593.P7892313463121597616

`(n-1)*(2*n-1)*(3*n-1)*(4*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033593

/-- `(n-1)*(2*n-1)*(3*n-1)*(4*n-1)` -/
def P7892313463121597616.Spec : Prop :=
  ∀ n, P7892313463121597616.a n = A033593 n

theorem P7892313463121597616.correct : P7892313463121597616.Spec := by
  intro n
  simp only [A033593]

end A033593

/-! ## A033593.P1657523817621524172

`abs((n-1)*A033589(n))`
-/

namespace A033593.P1657523817621524172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A033589 n|

end

end A033593.P1657523817621524172

namespace A033593

/-- `abs((n-1)*A033589(n))` -/
def P1657523817621524172.Spec : Prop :=
  ∀ n, P1657523817621524172.a n = A033593 n

end A033593

/-! ## A033593.P16312688014531134755

`-(A024000(n)*A033589(n))`
-/

namespace A033593.P16312688014531134755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024000 n * A033589 n)

end

end A033593.P16312688014531134755

namespace A033593

/-- `-(A024000(n)*A033589(n))` -/
def P16312688014531134755.Spec : Prop :=
  ∀ n, P16312688014531134755.a n = A033593 n

end A033593

/-! ## A033593.P3287133730711279582

`or((n-1)*A033589(n), char[A002939(n)])`
-/

namespace A033593.P3287133730711279582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n : ℤ) - 1) * A033589 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033593.P3287133730711279582

namespace A033593

/-- `or((n-1)*A033589(n), char[A002939(n)])` -/
def P3287133730711279582.Spec : Prop :=
  ∀ n, P3287133730711279582.a n = A033593 n

end A033593

/-! ## A033593.P15406494852178858319

`A017282(A161680(n))-n²²`
-/

namespace A033593.P15406494852178858319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 (A161680 n).toNat - ((n ^ 2) ^ 2 : ℤ)

end

end A033593.P15406494852178858319

namespace A033593

/-- `A017282(A161680(n))-n²²` -/
def P15406494852178858319.Spec : Prop :=
  ∀ n, P15406494852178858319.a n = A033593 n

end A033593

/-! ## A033593.P14309071446439872709

`(n-1)*A033589(n)/A014963(∑[n+1])`
-/

namespace A033593.P14309071446439872709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A033589 n : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A033593.P14309071446439872709

namespace A033593

/-- `(n-1)*A033589(n)/A014963(∑[n+1])` -/
def P14309071446439872709.Spec : Prop :=
  ∀ n, P14309071446439872709.a n = (A033593 n : ℚ)

end A033593

/-! ## A033593.P1311815413770505382

`A187715(A002061(n))²-n²²`
-/

namespace A033593.P1311815413770505382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (A002061 n).toNat ^ 2 - ((n ^ 2) ^ 2 : ℤ)

end

end A033593.P1311815413770505382

namespace A033593

/-- `A187715(A002061(n))²-n²²` -/
def P1311815413770505382.Spec : Prop :=
  ∀ n, P1311815413770505382.a n = A033593 n

end A033593

/-! ## A033593.P6223647766079836910

`A000217(A033567(n))-A002378(n)*A033567(n)`
-/

namespace A033593.P6223647766079836910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033567 n).toNat - A002378 n * A033567 n

end

end A033593.P6223647766079836910

namespace A033593

/-- `A000217(A033567(n))-A002378(n)*A033567(n)` -/
def P6223647766079836910.Spec : Prop :=
  ∀ n, P6223647766079836910.a n = A033593 n

end A033593

/-!
# A033594: a(n) = (n-1)*(2*n-1)*(3*n-1).

The programs for A033594, the canonical program `A033594.P11868201467419113890` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033594 has offset 0).

The definition of A033594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*n-1)*(3*n-1)` (program `A033594.P11868201467419113890`, by `A033594.P11868201467419113890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033594.P11868201467419113890

`(n-1)*(2*n-1)*(3*n-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033594

/-- `(n-1)*(2*n-1)*(3*n-1)` -/
def P11868201467419113890.Spec : Prop :=
  ∀ n, P11868201467419113890.a n = A033594 n

theorem P11868201467419113890.correct : P11868201467419113890.Spec := by
  intro n
  simp only [A033594]

end A033594

/-! ## A033594.P12011343240152761013

`A054603(n)-A027382(n)`
-/

namespace A033594.P12011343240152761013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054603 n - A027382 n

end

end A033594.P12011343240152761013

namespace A033594

/-- `A054603(n)-A027382(n)` -/
def P12011343240152761013.Spec : Prop :=
  ∀ n, P12011343240152761013.a n = A033594 n

end A033594

/-! ## A033594.P8390639571089172462

`A185065(n)-A137864(n+1)`
-/

namespace A033594.P8390639571089172462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185065 n - A137864 (n + 1)

end

end A033594.P8390639571089172462

namespace A033594

/-- `A185065(n)-A137864(n+1)` -/
def P8390639571089172462.Spec : Prop :=
  ∀ n, P8390639571089172462.a n = A033594 n

end A033594

/-!
# A033595: a(n) = (n^2-1)*(2*n^2-1).

The programs for A033595, the canonical program `A033595.P9823408466719881306` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033595 has offset 0).

The definition of A033595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(2*n²-1)` (program `A033595.P9823408466719881306`, by `A033595.P9823408466719881306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033595.P9823408466719881306

`(n²-1)*(2*n²-1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033595

/-- `(n²-1)*(2*n²-1)` -/
def P9823408466719881306.Spec : Prop :=
  ∀ n, P9823408466719881306.a n = A033595 n

theorem P9823408466719881306.correct : P9823408466719881306.Spec := by
  intro n
  simp only [A033595]

end A033595

/-! ## A033595.P15646136748460515422

`A057722(n)+n²²`
-/

namespace A033595.P15646136748460515422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 n + ((n ^ 2) ^ 2 : ℤ)

end

end A033595.P15646136748460515422

namespace A033595

/-- `A057722(n)+n²²` -/
def P15646136748460515422.Spec : Prop :=
  ∀ n, P15646136748460515422.a n = A033595 n

end A033595

/-! ## A033595.P5527779305677261688

`(n*2*n-3)*A000290(n)+1`
-/

namespace A033595.P5527779305677261688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (2 * n) : ℤ) - 3) * A000290 n + 1

end

end A033595.P5527779305677261688

namespace A033595

/-- `(n*2*n-3)*A000290(n)+1` -/
def P5527779305677261688.Spec : Prop :=
  ∀ n, P5527779305677261688.a n = A033595 n

end A033595

/-! ## A033595.P4021758368425922828

`C(A000217(abs(1-n)+n+1)-(n+1), 2)`
-/

namespace A033595.P4021758368425922828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)).toNat 2

end

end A033595.P4021758368425922828

namespace A033595

/-- `C(A000217(abs(1-n)+n+1)-(n+1), 2)` -/
def P4021758368425922828.Spec : Prop :=
  ∀ n, (P4021758368425922828.a n : ℤ) = A033595 n

end A033595

/-! ## A033595.P16880519048267738335

`A178392(n)+A060886(n)`
-/

namespace A033595.P16880519048267738335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178392 n + A060886 n

end

end A033595.P16880519048267738335

namespace A033595

/-- `A178392(n)+A060886(n)` -/
def P16880519048267738335.Spec : Prop :=
  ∀ n, P16880519048267738335.a n = A033595 n

end A033595

/-! ## A033595.P957895291007833456

`A002593(n)-A056220(n)`
-/

namespace A033595.P957895291007833456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n - A056220 n

end

end A033595.P957895291007833456

namespace A033595

/-- `A002593(n)-A056220(n)` -/
def P957895291007833456.Spec : Prop :=
  ∀ n, P957895291007833456.a n = A033595 n

end A033595

/-! ## A033595.P7269444772647793689

`A239607(n)-A002593(n)`
-/

namespace A033595.P7269444772647793689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n - A002593 n

end

end A033595.P7269444772647793689

namespace A033595

/-- `A239607(n)-A002593(n)` -/
def P7269444772647793689.Spec : Prop :=
  ∀ n, P7269444772647793689.a n = A033595 n

end A033595

/-! ## A033595.P1559632959289566385

`lcm(A056220(n), A258837(n))`
-/

namespace A033595.P1559632959289566385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056220 n) (A258837 n)

end

end A033595.P1559632959289566385

namespace A033595

/-- `lcm(A056220(n), A258837(n))` -/
def P1559632959289566385.Spec : Prop :=
  ∀ n, (P1559632959289566385.a n : ℤ) = A033595 n

end A033595

/-! ## A033595.P11552786253483262366

`A002593(n)+1-A001105(n)`
-/

namespace A033595.P11552786253483262366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n + (1 - A001105 n)

end

end A033595.P11552786253483262366

namespace A033595

/-- `A002593(n)+1-A001105(n)` -/
def P11552786253483262366.Spec : Prop :=
  ∀ n, P11552786253483262366.a n = A033595 n

end A033595

/-! ## A033595.P4344617508809258804

`A002593(n)+2-A058331(n)`
-/

namespace A033595.P4344617508809258804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n + (2 - A058331 n)

end

end A033595.P4344617508809258804

namespace A033595

/-- `A002593(n)+2-A058331(n)` -/
def P4344617508809258804.Spec : Prop :=
  ∀ n, P4344617508809258804.a n = A033595 n

end A033595

/-! ## A033595.P2461981581470276144

`A002522(n)+2*A178392(n)`
-/

namespace A033595.P2461981581470276144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + 2 * A178392 n

end

end A033595.P2461981581470276144

namespace A033595

/-- `A002522(n)+2*A178392(n)` -/
def P2461981581470276144.Spec : Prop :=
  ∀ n, P2461981581470276144.a n = A033595 n

end A033595

/-! ## A033595.P10078467654186425659

`2*A002523(n)-A056107(n)`
-/

namespace A033595.P10078467654186425659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002523 n - A056107 n

end

end A033595.P10078467654186425659

namespace A033595

/-- `2*A002523(n)-A056107(n)` -/
def P10078467654186425659.Spec : Prop :=
  ∀ n, P10078467654186425659.a n = A033595 n

end A033595

/-! ## A033595.P224221148283244947

`2*A060886(n)-A002522(n)`
-/

namespace A033595.P224221148283244947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060886 n - A002522 n

end

end A033595.P224221148283244947

namespace A033595

/-- `2*A060886(n)-A002522(n)` -/
def P224221148283244947.Spec : Prop :=
  ∀ n, P224221148283244947.a n = A033595 n

end A033595

/-! ## A033595.P7632255375312951580

`(A239607(n)-A056220(n))/2`
-/

namespace A033595.P7632255375312951580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239607 n - A056220 n : ℚ) / 2

end

end A033595.P7632255375312951580

namespace A033595

/-- `(A239607(n)-A056220(n))/2` -/
def P7632255375312951580.Spec : Prop :=
  ∀ n, P7632255375312951580.a n = (A033595 n : ℚ)

end A033595

/-! ## A033595.P1539922630693705499

`n²*A339048(n)-A158463(n)`
-/

namespace A033595.P1539922630693705499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A339048 n - A158463 n

end

end A033595.P1539922630693705499

namespace A033595

/-- `n²*A339048(n)-A158463(n)` -/
def P1539922630693705499.Spec : Prop :=
  ∀ n, P1539922630693705499.a n = A033595 n

end A033595

/-! ## A033595.P6499935970136249343

`C(abs(A004277(n)+1-A046092(n)), 2)`
-/

namespace A033595.P6499935970136249343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A004277 n + 1 - A046092 n|.toNat 2

end

end A033595.P6499935970136249343

namespace A033595

/-- `C(abs(A004277(n)+1-A046092(n)), 2)` -/
def P6499935970136249343.Spec : Prop :=
  ∀ n, (P6499935970136249343.a n : ℤ) = A033595 n

end A033595

/-! ## A033595.P450133911915277525

`A001844(n)+A002593(n)-A002943(n)`
-/

namespace A033595.P450133911915277525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (A002593 n - A002943 n)

end

end A033595.P450133911915277525

namespace A033595

/-- `A001844(n)+A002593(n)-A002943(n)` -/
def P450133911915277525.Spec : Prop :=
  ∀ n, P450133911915277525.a n = A033595 n

end A033595

/-! ## A033595.P13329138239534374717

`A000290(n)*A056220(n)-A056220(n)`
-/

namespace A033595.P13329138239534374717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A056220 n - A056220 n

end

end A033595.P13329138239534374717

namespace A033595

/-- `A000290(n)*A056220(n)-A056220(n)` -/
def P13329138239534374717.Spec : Prop :=
  ∀ n, P13329138239534374717.a n = A033595 n

end A033595

/-! ## A033595.P1376752003307923172

`A277792(n)/A056220(n)-A056220(n)`
-/

namespace A033595.P1376752003307923172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277792 n : ℚ) / (A056220 n : ℚ) - (A056220 n : ℚ)

end

end A033595.P1376752003307923172

namespace A033595

/-- `A277792(n)/A056220(n)-A056220(n)` -/
def P1376752003307923172.Spec : Prop :=
  ∀ n, P1376752003307923172.a n = (A033595 n : ℚ)

end A033595

/-! ## A033595.P2755202123916961084

`A001105(n)*A067998(n+1)-A067998(n+1)`
-/

namespace A033595.P2755202123916961084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A067998 (n + 1) - A067998 (n + 1)

end

end A033595.P2755202123916961084

namespace A033595

/-- `A001105(n)*A067998(n+1)-A067998(n+1)` -/
def P2755202123916961084.Spec : Prop :=
  ∀ n, P2755202123916961084.a n = A033595 n

end A033595

/-!
# A033596: a(n) = (n^2 - 1)*(n^2 - 3).

The programs for A033596, the canonical program `A033596.P15895326898760574531` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033596 has offset 0).

The definition of A033596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-1)*(n²-3)` (program `A033596.P15895326898760574531`, by `A033596.P15895326898760574531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033596.P15895326898760574531

`(n²-1)*(n²-3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033596

/-- `(n²-1)*(n²-3)` -/
def P15895326898760574531.Spec : Prop :=
  ∀ n, P15895326898760574531.a n = A033596 n

theorem P15895326898760574531.correct : P15895326898760574531.Spec := by
  intro n
  simp only [A033596]

end A033596

/-! ## A033596.P484588371486288836

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=0, a(2)=3, a(3)=48, a(4)=195`
-/

namespace A033596.P484588371486288836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3, 48, 195] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A033596.P484588371486288836

namespace A033596

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P484588371486288836.Spec : Prop :=
  ∀ n, P484588371486288836.a n = A033596 n

theorem P484588371486288836.correct : P484588371486288836.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A033596, Nat.add_sub_cancel, A033596.P484588371486288836.a, A033596.P15895326898760574531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A033596, Nat.add_sub_cancel, A033596.P484588371486288836.a, A033596.P15895326898760574531.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A033596

/-! ## A033596.P9613137175976817414

`A339488(n)/3+3`
-/

namespace A033596.P9613137175976817414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339488 n : ℚ) / 3 + 3

end

end A033596.P9613137175976817414

namespace A033596

/-- `A339488(n)/3+3` -/
def P9613137175976817414.Spec : Prop :=
  ∀ n, P9613137175976817414.a n = (A033596 n : ℚ)

end A033596

/-! ## A033596.P8519587938725869220

`A177058(n)+A132998(n)`
-/

namespace A033596.P8519587938725869220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177058 n + A132998 n

end

end A033596.P8519587938725869220

namespace A033596

/-- `A177058(n)+A132998(n)` -/
def P8519587938725869220.Spec : Prop :=
  ∀ n, P8519587938725869220.a n = A033596 n

end A033596

/-! ## A033596.P842581884145664128

`A057781(n)-A053755(n)`
-/

namespace A033596.P842581884145664128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057781 n - A053755 n

end

end A033596.P842581884145664128

namespace A033596

/-- `A057781(n)-A053755(n)` -/
def P842581884145664128.Spec : Prop :=
  ∀ n, P842581884145664128.a n = A033596 n

end A033596

/-! ## A033596.P15154927223028699572

`A178390(n)-A140811(n)`
-/

namespace A033596.P15154927223028699572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178390 n - A140811 n

end

end A033596.P15154927223028699572

namespace A033596

/-- `A178390(n)-A140811(n)` -/
def P15154927223028699572.Spec : Prop :=
  ∀ n, P15154927223028699572.a n = A033596 n

end A033596

/-! ## A033596.P275360605396326555

`A156798(n)-A247792(n)`
-/

namespace A033596.P275360605396326555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156798 n - A247792 n

end

end A033596.P275360605396326555

namespace A033596

/-- `A156798(n)-A247792(n)` -/
def P275360605396326555.Spec : Prop :=
  ∀ n, P275360605396326555.a n = A033596 n

end A033596

/-! ## A033596.P1270264031441859730

`A304726(n)-A139098(n)`
-/

namespace A033596.P1270264031441859730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 n - A139098 n

end

end A033596.P1270264031441859730

namespace A033596

/-- `A304726(n)-A139098(n)` -/
def P1270264031441859730.Spec : Prop :=
  ∀ n, P1270264031441859730.a n = A033596 n

end A033596

/-! ## A033596.P16938889939489755680

`A272870(n)+A271624(n+1)`
-/

namespace A033596.P16938889939489755680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272870 n + A271624 (n + 1)

end

end A033596.P16938889939489755680

namespace A033596

/-- `A272870(n)+A271624(n+1)` -/
def P16938889939489755680.Spec : Prop :=
  ∀ n, P16938889939489755680.a n = A033596 n

end A033596

/-! ## A033596.P10827732874944530520

`A005492(n+4)-A272039(n)`
-/

namespace A033596.P10827732874944530520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005492 (n + 4) - A272039 n

end

end A033596.P10827732874944530520

namespace A033596

/-- `A005492(n+4)-A272039(n)` -/
def P10827732874944530520.Spec : Prop :=
  ∀ n, P10827732874944530520.a n = A033596 n

end A033596

/-! ## A033596.P18328889463472709910

`Δ[A179297(n+1)]²-1`
-/

namespace A033596.P18328889463472709910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A033596.P18328889463472709910

namespace A033596

/-- `Δ[A179297(n+1)]²-1` -/
def P18328889463472709910.Spec : Prop :=
  ∀ n, P18328889463472709910.a n = A033596 n

end A033596

/-! ## A033596.P1617673884530366159

`A057781(n)-A002522(2*n)`
-/

namespace A033596.P1617673884530366159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057781 n - A002522 (2 * n)

end

end A033596.P1617673884530366159

namespace A033596

/-- `A057781(n)-A002522(2*n)` -/
def P1617673884530366159.Spec : Prop :=
  ∀ n, P1617673884530366159.a n = A033596 n

end A033596

/-! ## A033596.P14928630137677688977

`abs(A258837(abs(2-n²)))`
-/

namespace A033596.P14928630137677688977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A258837 |2 - (n ^ 2 : ℤ)|.toNat)|

end

end A033596.P14928630137677688977

namespace A033596

/-- `abs(A258837(abs(2-n²)))` -/
def P14928630137677688977.Spec : Prop :=
  ∀ n, P14928630137677688977.a n = A033596 n

end A033596

/-! ## A033596.P10509341304212081329

`A022958(n²)²-1`
-/

namespace A033596.P10509341304212081329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n ^ 2) ^ 2 - 1

end

end A033596.P10509341304212081329

namespace A033596

/-- `A022958(n²)²-1` -/
def P10509341304212081329.Spec : Prop :=
  ∀ n, P10509341304212081329.a n = A033596 n

end A033596

/-! ## A033596.P11520699789986629769

`A023444(n²)²-1`
-/

namespace A033596.P11520699789986629769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (n ^ 2) ^ 2 - 1

end

end A033596.P11520699789986629769

namespace A033596

/-- `A023444(n²)²-1` -/
def P11520699789986629769.Spec : Prop :=
  ∀ n, P11520699789986629769.a n = A033596 n

end A033596

/-!
# A033597: (nextprime(n)+prevprime(n))/2.

The programs for A033597, the canonical program `A033597.P3717635916819908974` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033597 has offset 4).

The definition of A033597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033597.P3717635916819908974

`ceil(sqrt(A013638(n+4)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033597

/-- `ceil(sqrt(A013638(n+4)))` -/
def P3717635916819908974.Spec : Prop :=
  ∀ n, P3717635916819908974.a n = A033597 (n + 4)

theorem P3717635916819908974.correct : P3717635916819908974.Spec := by
  intro n
  simp only [A033597, Nat.add_sub_cancel]

end A033597

/-! ## A033597.P16943349663290450353

`A008619(A151800(n+4)+A070320(n+3))`
-/

namespace A033597.P16943349663290450353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A151800 (n + 4) + A070320 (n + 3)).toNat

end

end A033597.P16943349663290450353

namespace A033597

/-- `A008619(A151800(n+4)+A070320(n+3))` -/
def P16943349663290450353.Spec : Prop :=
  ∀ n, P16943349663290450353.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P11082255314824587221

`A004525(A151800(n+4)+A136548(n+4))`
-/

namespace A033597.P11082255314824587221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151800 (n + 4) + A136548 (n + 4)).toNat

end

end A033597.P11082255314824587221

namespace A033597

/-- `A004525(A151800(n+4)+A136548(n+4))` -/
def P11082255314824587221.Spec : Prop :=
  ∀ n, P11082255314824587221.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P15344311132102599679

`A252463(A252463(A151800(n+3))+A151800(n+4))`
-/

namespace A033597.P15344311132102599679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (A151800 (n + 3)).toNat + A151800 (n + 4)).toNat

end

end A033597.P15344311132102599679

namespace A033597

/-- `A252463(A252463(A151800(n+3))+A151800(n+4))` -/
def P15344311132102599679.Spec : Prop :=
  ∀ n, P15344311132102599679.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P18173343460853417791

`A078705(A013638(n+4))`
-/

namespace A033597.P18173343460853417791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A013638 (n + 4)).toNat

end

end A033597.P18173343460853417791

namespace A033597

/-- `A078705(A013638(n+4))` -/
def P18173343460853417791.Spec : Prop :=
  ∀ n, P18173343460853417791.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P1416130818421926180

`A003059(A013638(n+4)+1)`
-/

namespace A033597.P1416130818421926180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A013638 (n + 4) + 1).toNat

end

end A033597.P1416130818421926180

namespace A033597

/-- `A003059(A013638(n+4)+1)` -/
def P1416130818421926180.Spec : Prop :=
  ∀ n, P1416130818421926180.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P13090153001205758900

`A079643(A013638(n+4)+1)`
-/

namespace A033597.P13090153001205758900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A013638 (n + 4) + 1).toNat

end

end A033597.P13090153001205758900

namespace A033597

/-- `A079643(A013638(n+4)+1)` -/
def P13090153001205758900.Spec : Prop :=
  ∀ n, P13090153001205758900.a n = A033597 (n + 4)

end A033597

/-! ## A033597.P10934462525416911161

`A137734(A013638(n+4)+3)`
-/

namespace A033597.P10934462525416911161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A013638 (n + 4) + 3).toNat

end

end A033597.P10934462525416911161

namespace A033597

/-- `A137734(A013638(n+4)+3)` -/
def P10934462525416911161.Spec : Prop :=
  ∀ n, P10934462525416911161.a n = A033597 (n + 4)

end A033597

/-!
# A033599: Coordination sequence T1 for Zeolite Code CFI.

The programs for A033599, there is no canonical definition to state claims against.
-/

/-! ## A033599.P15550939128077303505

`∑[A184161(A003173(n+1))]`
-/

namespace A033599.P15550939128077303505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (A003173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033599.P15550939128077303505

/-! ## A033599.P10200657288408556882

`A008015(n)-A124763(A008028(n))`
-/

namespace A033599.P10200657288408556882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A124763 (A008028 n).toNat

end

end A033599.P10200657288408556882

/-! ## A033599.P18032286347538797520

`A362872(A174286(n+1))+A008000(n)`
-/

namespace A033599.P18032286347538797520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362872 (A174286 (n + 1)).toNat + A008000 n

end

end A033599.P18032286347538797520

