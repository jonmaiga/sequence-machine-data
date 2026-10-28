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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067800: Nonprime numbers k such that phi(k) > k/2.

The programs for A067800, the canonical program `A067800.P328424139569097014` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067800 has offset 1).

The definition of A067800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067800.P328424139569097014

`filter[A014076(n+1), A374134(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067800

/-- `filter[A014076(n+1), A374134(#)]` -/
def P328424139569097014.Spec : Prop :=
  ∀ n, P328424139569097014.a n = A067800 (n + 1)

theorem P328424139569097014.correct : P328424139569097014.Spec := by
  intro n
  simp only [A067800, Nat.add_sub_cancel]

end A067800

/-! ## A067800.P9366046129420982377

`filter[A264828(n+1), A374134(#)]`
-/

namespace A067800.P9366046129420982377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P9366046129420982377

namespace A067800

/-- `filter[A264828(n+1), A374134(#)]` -/
def P9366046129420982377.Spec : Prop :=
  ∀ n, P9366046129420982377.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P16645482776711292558

`filter[A089684(n+1), A005171(#)]`
-/

namespace A067800.P16645482776711292558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067800.P16645482776711292558

namespace A067800

/-- `filter[A089684(n+1), A005171(#)]` -/
def P16645482776711292558.Spec : Prop :=
  ∀ n, P16645482776711292558.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P9551211944783091887

`filter[A089684(n+1), A292438(#)]`
-/

namespace A067800.P9551211944783091887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A067800.P9551211944783091887

namespace A067800

/-- `filter[A089684(n+1), A292438(#)]` -/
def P9551211944783091887.Spec : Prop :=
  ∀ n, P9551211944783091887.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P7794948333819167208

`∩[A014076(n+1), A089684(n+1)]`
-/

namespace A067800.P7794948333819167208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067800.P7794948333819167208

namespace A067800

/-- `∩[A014076(n+1), A089684(n+1)]` -/
def P7794948333819167208.Spec : Prop :=
  ∀ n, (P7794948333819167208.a n : ℤ) = A067800 (n + 1)

end A067800

/-! ## A067800.P15508951453808881455

`filter[A018252(n+1), A374134(#)]`
-/

namespace A067800.P15508951453808881455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P15508951453808881455

namespace A067800

/-- `filter[A018252(n+1), A374134(#)]` -/
def P15508951453808881455.Spec : Prop :=
  ∀ n, P15508951453808881455.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P15024628159038358842

`filter[A141468(n+2), A374134(#)]`
-/

namespace A067800.P15024628159038358842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P15024628159038358842

namespace A067800

/-- `filter[A141468(n+2), A374134(#)]` -/
def P15024628159038358842.Spec : Prop :=
  ∀ n, P15024628159038358842.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P17422565593298526558

`∩[A018252(n+1), A089684(n+1)]`
-/

namespace A067800.P17422565593298526558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067800.P17422565593298526558

namespace A067800

/-- `∩[A018252(n+1), A089684(n+1)]` -/
def P17422565593298526558.Spec : Prop :=
  ∀ n, (P17422565593298526558.a n : ℤ) = A067800 (n + 1)

end A067800

/-! ## A067800.P12996181551902427207

`∩[A089684(n+1), A347202(n+1)]`
-/

namespace A067800.P12996181551902427207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067800.P12996181551902427207

namespace A067800

/-- `∩[A089684(n+1), A347202(n+1)]` -/
def P12996181551902427207.Spec : Prop :=
  ∀ n, (P12996181551902427207.a n : ℤ) = A067800 (n + 1)

end A067800

/-! ## A067800.P18109342815557979581

`filter[A075065(n+1), A374134(#)]`
-/

namespace A067800.P18109342815557979581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P18109342815557979581

namespace A067800

/-- `filter[A075065(n+1), A374134(#)]` -/
def P18109342815557979581.Spec : Prop :=
  ∀ n, P18109342815557979581.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P12570319002341709320

`filter[A056653(n+1), A374134(#)]`
-/

namespace A067800.P12570319002341709320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P12570319002341709320

namespace A067800

/-- `filter[A056653(n+1), A374134(#)]` -/
def P12570319002341709320.Spec : Prop :=
  ∀ n, P12570319002341709320.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P15185444760981326110

`filter[A065090(n+1), A374134(#)]`
-/

namespace A067800.P15185444760981326110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P15185444760981326110

namespace A067800

/-- `filter[A065090(n+1), A374134(#)]` -/
def P15185444760981326110.Spec : Prop :=
  ∀ n, P15185444760981326110.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P3084146706365576672

`filter[A143545(n+1), A374134(#)]`
-/

namespace A067800.P3084146706365576672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P3084146706365576672

namespace A067800

/-- `filter[A143545(n+1), A374134(#)]` -/
def P3084146706365576672.Spec : Prop :=
  ∀ n, P3084146706365576672.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P12254641169036216294

`filter[A014684(n+2), A374134(#)]`
-/

namespace A067800.P12254641169036216294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P12254641169036216294

namespace A067800

/-- `filter[A014684(n+2), A374134(#)]` -/
def P12254641169036216294.Spec : Prop :=
  ∀ n, P12254641169036216294.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P16089266214342294218

`filter[A113638(n+2), A374134(#)]`
-/

namespace A067800.P16089266214342294218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P16089266214342294218

namespace A067800

/-- `filter[A113638(n+2), A374134(#)]` -/
def P16089266214342294218.Spec : Prop :=
  ∀ n, P16089266214342294218.a n = A067800 (n + 1)

end A067800

/-! ## A067800.P14212770261135341090

`filter[A179278(n+3), A374134(#)]`
-/

namespace A067800.P14212770261135341090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179278 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P14212770261135341090

namespace A067800

/-- `filter[A179278(n+3), A374134(#)]` -/
def P14212770261135341090.Spec : Prop :=
  ∀ n, P14212770261135341090.a n = A067800 (n + 1)

end A067800

/-!
# A067801: Numbers m such that bigomega(m)=2*omega(m).

The programs for A067801, there is no canonical definition to state claims against.
-/

/-! ## A067801.P11911779302177719990

`∪[A062503(n+1), A065127(n+1)]`
-/

namespace A067801.P11911779302177719990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067801.P11911779302177719990

/-! ## A067801.P13605411100795143967

`eq[2*A001221(n+1), A001222(n+1)]+1`
-/

namespace A067801.P13605411100795143967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067801.P13605411100795143967

/-! ## A067801.P2148421470170336082

`∩[A320912(n+1), A382208(n+1)]`
-/

namespace A067801.P2148421470170336082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067801.P2148421470170336082

/-! ## A067801.P6542887956577240479

`∩[A361204(n+1), A361395(n+1)]`
-/

namespace A067801.P6542887956577240479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067801.P6542887956577240479

/-! ## A067801.P15552464043652743229

`eq[A001221(n+1), A046660(n+1)]+1`
-/

namespace A067801.P15552464043652743229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067801.P15552464043652743229

/-! ## A067801.P7717469100240700413

`eq[A034444(n+1), A162510(n+1)]+1`
-/

namespace A067801.P7717469100240700413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067801.P7717469100240700413

/-! ## A067801.P384367511192423102

`eq[A001222(n+1), A001414(A034444(n+1))]+1`
-/

namespace A067801.P384367511192423102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A034444 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067801.P384367511192423102

/-! ## A067801.P3513847597790539713

`eq[A001221(n+1), A056239(A000688(n+1))]+1`
-/

namespace A067801.P3513847597790539713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067801.P3513847597790539713

/-!
# A067802: Triangle read by rows: T(n, k) = binomial(2*n+1, n-k)^2*(2*k+1)/(2*n+1).

The programs for A067802, the canonical program `A067802.P11357889855324053706` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067802 has offset 0).

The definition of A067802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067802.P11357889855324053706

`C(2*row(n)+1, row(n)-col(n))²*(2*col(n)+1)/(2*row(n)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067802

/-- `C(2*row(n)+1, row(n)-col(n))²*(2*col(n)+1)/(2*row(n)+1)` -/
def P11357889855324053706.Spec : Prop :=
  ∀ n, P11357889855324053706.a n = (A067802 n : ℚ)

end A067802

/-! ## A067802.P10306462335375102656

`C(∑[2*char[∑[n]]]-1, C(comp[∑[n]]-n, 2)-(n+1))*A039599(n)`
-/

namespace A067802.P10306462335375102656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A039599 n

end

end A067802.P10306462335375102656

namespace A067802

/-- `C(∑[2*char[∑[n]]]-1, C(comp[∑[n]]-n, 2)-(n+1))*A039599(n)` -/
def P10306462335375102656.Spec : Prop :=
  ∀ n, P10306462335375102656.a n = A067802 n

end A067802

/-! ## A067802.P12760098356646505179

`A039599(n)*A111418(n)`
-/

namespace A067802.P12760098356646505179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A111418 n

end

end A067802.P12760098356646505179

namespace A067802

/-- `A039599(n)*A111418(n)` -/
def P12760098356646505179.Spec : Prop :=
  ∀ n, P12760098356646505179.a n = A067802 n

end A067802

/-! ## A067802.P4163488067824328430

`abs(A039599(n)*A113187(n))`
-/

namespace A067802.P4163488067824328430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039599 n * A113187 n|

end

end A067802.P4163488067824328430

namespace A067802

/-- `abs(A039599(n)*A113187(n))` -/
def P4163488067824328430.Spec : Prop :=
  ∀ n, P4163488067824328430.a n = A067802 n

end A067802

/-! ## A067802.P10170839558810140183

`A008313(A061885(n))*A111418(n)`
-/

namespace A067802.P10170839558810140183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A061885 n).toNat * A111418 n

end

end A067802.P10170839558810140183

namespace A067802

/-- `A008313(A061885(n))*A111418(n)` -/
def P10170839558810140183.Spec : Prop :=
  ∀ n, P10170839558810140183.a n = A067802 n

end A067802

/-! ## A067802.P6366025484269052550

`A111418(n)*A113313(A292565(n+1))`
-/

namespace A067802.P6366025484269052550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n * A113313 (A292565 (n + 1)).toNat

end

end A067802.P6366025484269052550

namespace A067802

/-- `A111418(n)*A113313(A292565(n+1))` -/
def P6366025484269052550.Spec : Prop :=
  ∀ n, P6366025484269052550.a n = A067802 n

end A067802

/-!
# A067804: Triangle read by rows: T(n,k) is the number of walks (each step +-1) of length 2n which have a cumulative value of 0 last at step 2k.

The programs for A067804, the canonical program `A067804.P9775960520327915575` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067804 has offset 0).

The definition of A067804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067804.P9775960520327915575

`A000984(col(n))*A000984(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067804

/-- `A000984(col(n))*A000984(row(n)-col(n))` -/
def P9775960520327915575.Spec : Prop :=
  ∀ n, P9775960520327915575.a n = A067804 n

theorem P9775960520327915575.correct : P9775960520327915575.Spec := by
  intro n
  simp only [A067804]

end A067804

/-! ## A067804.P289809699324897539

`C(2*col(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))`
-/

namespace A067804.P289809699324897539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n) * Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A067804.P289809699324897539

namespace A067804

/-- `C(2*col(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))` -/
def P289809699324897539.Spec : Prop :=
  ∀ n, (P289809699324897539.a n : ℤ) = A067804 n

end A067804

/-! ## A067804.P14630388091244804190

`C(2*row(n), row(n))*C(row(n), col(n))²/C(2*row(n), 2*col(n))`
-/

namespace A067804.P14630388091244804190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triRow n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℚ) / (Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n) : ℚ)

end

end A067804.P14630388091244804190

namespace A067804

/-- `C(2*row(n), row(n))*C(row(n), col(n))²/C(2*row(n), 2*col(n))` -/
def P14630388091244804190.Spec : Prop :=
  ∀ n, P14630388091244804190.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P6544721684727156824

`A007318(n)*A068555(n)`
-/

namespace A067804.P6544721684727156824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A068555 n

end

end A067804.P6544721684727156824

namespace A067804

/-- `A007318(n)*A068555(n)` -/
def P6544721684727156824.Spec : Prop :=
  ∀ n, P6544721684727156824.a n = A067804 n

end A067804

/-! ## A067804.P4854618870478068497

`A003991(n+1)*A078391(n)`
-/

namespace A067804.P4854618870478068497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A078391 n

end

end A067804.P4854618870478068497

namespace A067804

/-- `A003991(n+1)*A078391(n)` -/
def P4854618870478068497.Spec : Prop :=
  ∀ n, P4854618870478068497.a n = A067804 n

end A067804

/-! ## A067804.P9332130105348951185

`A028326(n)/2*A068555(n)`
-/

namespace A067804.P9332130105348951185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A068555 n : ℚ)

end

end A067804.P9332130105348951185

namespace A067804

/-- `A028326(n)/2*A068555(n)` -/
def P9332130105348951185.Spec : Prop :=
  ∀ n, P9332130105348951185.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P11380869395473390942

`(A078817(A061579(n))+A078817(n))/2`
-/

namespace A067804.P11380869395473390942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078817 (A061579 n).toNat + A078817 n : ℚ) / 2

end

end A067804.P11380869395473390942

namespace A067804

/-- `(A078817(A061579(n))+A078817(n))/2` -/
def P11380869395473390942.Spec : Prop :=
  ∀ n, P11380869395473390942.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P9760772521500680135

`A000984(A002262(n))*A000984(A025581(n))`
-/

namespace A067804.P9760772521500680135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002262 n).toNat * A000984 (A025581 n).toNat

end

end A067804.P9760772521500680135

namespace A067804

/-- `A000984(A002262(n))*A000984(A025581(n))` -/
def P9760772521500680135.Spec : Prop :=
  ∀ n, P9760772521500680135.a n = A067804 n

end A067804

/-! ## A067804.P2293259967648869839

`A106187(A061579(n))*A106187(n)`
-/

namespace A067804.P2293259967648869839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106187 (A061579 n).toNat * A106187 n

end

end A067804.P2293259967648869839

namespace A067804

/-- `A106187(A061579(n))*A106187(n)` -/
def P2293259967648869839.Spec : Prop :=
  ∀ n, P2293259967648869839.a n = A067804 n

end A067804

/-! ## A067804.P11700434177848922739

`(A033820(n)+A033820(A061579(n)))/2`
-/

namespace A067804.P11700434177848922739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033820 n + A033820 (A061579 n).toNat : ℚ) / 2

end

end A067804.P11700434177848922739

namespace A067804

/-- `(A033820(n)+A033820(A061579(n)))/2` -/
def P11700434177848922739.Spec : Prop :=
  ∀ n, P11700434177848922739.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P17825422843693076203

`C(2*col(n), col(n))*C(2*(row(n)-col(n)), row(n)-col(n))`
-/

namespace A067804.P17825422843693076203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n) * Nat.choose (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A067804.P17825422843693076203

namespace A067804

/-- `C(2*col(n), col(n))*C(2*(row(n)-col(n)), row(n)-col(n))` -/
def P17825422843693076203.Spec : Prop :=
  ∀ n, (P17825422843693076203.a n : ℤ) = A067804 n

end A067804

/-! ## A067804.P9329985987413266710

`A237520(A061885(n))`
-/

namespace A067804.P9329985987413266710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A061885 n).toNat

end

end A067804.P9329985987413266710

namespace A067804

/-- `A237520(A061885(n))` -/
def P9329985987413266710.Spec : Prop :=
  ∀ n, P9329985987413266710.a n = A067804 n

end A067804

/-! ## A067804.P16566260167176572381

`A237520(2*n-A002262(n))`
-/

namespace A067804.P16566260167176572381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 ((2 * n : ℤ) - A002262 n).toNat

end

end A067804.P16566260167176572381

namespace A067804

/-- `A237520(2*n-A002262(n))` -/
def P16566260167176572381.Spec : Prop :=
  ∀ n, P16566260167176572381.a n = A067804 n

end A067804

/-! ## A067804.P13240155930470428014

`A237520(n-A002262(n)+n)`
-/

namespace A067804.P13240155930470428014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A067804.P13240155930470428014

namespace A067804

/-- `A237520(n-A002262(n)+n)` -/
def P13240155930470428014.Spec : Prop :=
  ∀ n, P13240155930470428014.a n = A067804 n

end A067804

/-! ## A067804.P11327639726979186107

`A237520(n-(A002262(n)-n))`
-/

namespace A067804.P11327639726979186107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A067804.P11327639726979186107

namespace A067804

/-- `A237520(n-(A002262(n)-n))` -/
def P11327639726979186107.Spec : Prop :=
  ∀ n, P11327639726979186107.a n = A067804 n

end A067804

/-! ## A067804.P12070051745516426996

`A237520(A005408(n)-A002260(n+1))`
-/

namespace A067804.P12070051745516426996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A005408 n - A002260 (n + 1)).toNat

end

end A067804.P12070051745516426996

namespace A067804

/-- `A237520(A005408(n)-A002260(n+1))` -/
def P12070051745516426996.Spec : Prop :=
  ∀ n, P12070051745516426996.a n = A067804 n

end A067804

/-! ## A067804.P2355496789238528615

`A069466(n)/A086645(n)`
-/

namespace A067804.P2355496789238528615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A086645 n : ℚ)

end

end A067804.P2355496789238528615

namespace A067804

/-- `A069466(n)/A086645(n)` -/
def P2355496789238528615.Spec : Prop :=
  ∀ n, P2355496789238528615.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P8734064396129769188

`(2*col(n))!*(2*(row(n)-col(n)))!/(col(n)!*(row(n)-col(n))!)²`
-/

namespace A067804.P8734064396129769188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triCol n) * Nat.factorial (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℚ) / ((Nat.factorial (SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat) ^ 2 : ℚ)

end

end A067804.P8734064396129769188

namespace A067804

/-- `(2*col(n))!*(2*(row(n)-col(n)))!/(col(n)!*(row(n)-col(n))!)²` -/
def P8734064396129769188.Spec : Prop :=
  ∀ n, P8734064396129769188.a n = (A067804 n : ℚ)

end A067804

/-! ## A067804.P9174087266421357782

`∏{e}[A036561(n), A000984(#)]`
-/

namespace A067804.P9174087266421357782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000984 (Nat.factorization (f1 n).natAbs p)

end

end A067804.P9174087266421357782

namespace A067804

/-- `∏{e}[A036561(n), A000984(#)]` -/
def P9174087266421357782.Spec : Prop :=
  ∀ n, P9174087266421357782.a n = A067804 n

end A067804

/-! ## A067804.P2827159796971806551

`∏{e}[A036561(n), A056040(2*#)]`
-/

namespace A067804.P2827159796971806551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (2 * Nat.factorization (f1 n).natAbs p)

end

end A067804.P2827159796971806551

namespace A067804

/-- `∏{e}[A036561(n), A056040(2*#)]` -/
def P2827159796971806551.Spec : Prop :=
  ∀ n, P2827159796971806551.a n = A067804 n

end A067804

/-!
# A067806: Numbers n such that sigma(n+1)+sigma(n)=3n.

The programs for A067806, there is no canonical definition to state claims against.
-/

/-! ## A067806.P15563980360442181305

`filter[A068078(n+2), A014578(#)]`
-/

namespace A067806.P15563980360442181305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A067806.P15563980360442181305

/-! ## A067806.P9474008571357509171

`filter[A068078(n+2), A168185(#)]`
-/

namespace A067806.P9474008571357509171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A067806.P9474008571357509171

/-! ## A067806.P2586176837970867822

`filter[A068078(n+2), A294934(#)]`
-/

namespace A067806.P2586176837970867822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A067806.P2586176837970867822

/-! ## A067806.P6376606055402872988

`filter[A068078(n+2), A294935(#)]`
-/

namespace A067806.P6376606055402872988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A067806.P6376606055402872988

/-! ## A067806.P5722083684265514314

`filter[A068078(n+2), A356173(#)]`
-/

namespace A067806.P5722083684265514314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A067806.P5722083684265514314

/-!
# A067807: Numbers k such that sigma(k)^2 > 2*sigma(k^2).

The programs for A067807, the canonical program `A067807.P1106689296877050053` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067807 has offset 1).

The definition of A067807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067807.P1106689296877050053

`lt[A195735(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067807

/-- `lt[A195735(n+1), 0]+1` -/
def P1106689296877050053.Spec : Prop :=
  ∀ n, (P1106689296877050053.a n : ℤ) = A067807 (n + 1)

theorem P1106689296877050053.correct : P1106689296877050053.Spec := by
  intro n
  simp only [A067807, Nat.add_sub_cancel]

end A067807

/-! ## A067807.P18287351533791247524

`lt[A195735(A028310(n)), 0]`
-/

namespace A067807.P18287351533791247524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067807.P18287351533791247524

namespace A067807

/-- `lt[A195735(A028310(n)), 0]` -/
def P18287351533791247524.Spec : Prop :=
  ∀ n, (P18287351533791247524.a n : ℤ) = A067807 (n + 1)

end A067807

/-! ## A067807.P16104727776119837893

`A020725(lt[A195735(n+1), 0])`
-/

namespace A067807.P16104727776119837893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067807.P16104727776119837893

namespace A067807

/-- `A020725(lt[A195735(n+1), 0])` -/
def P16104727776119837893.Spec : Prop :=
  ∀ n, P16104727776119837893.a n = A067807 (n + 1)

end A067807

/-! ## A067807.P15270835923405614904

`lt[A195735(A000007(n)+n), 0]`
-/

namespace A067807.P15270835923405614904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067807.P15270835923405614904

namespace A067807

/-- `lt[A195735(A000007(n)+n), 0]` -/
def P15270835923405614904.Spec : Prop :=
  ∀ n, (P15270835923405614904.a n : ℤ) = A067807 (n + 1)

end A067807

/-! ## A067807.P10134226079339538149

`lt[A195735(A233583(n+1)), 1]`
-/

namespace A067807.P10134226079339538149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067807.P10134226079339538149

namespace A067807

/-- `lt[A195735(A233583(n+1)), 1]` -/
def P10134226079339538149.Spec : Prop :=
  ∀ n, (P10134226079339538149.a n : ℤ) = A067807 (n + 1)

end A067807

/-!
# A067808: Numbers k such that sigma(k)^2 > 3*sigma(k^2).

The programs for A067808, there is no canonical definition to state claims against.
-/

/-! ## A067808.P4222760044332704753

`A340580(A362319(n))*A344805(n+1)`
-/

namespace A067808.P4222760044332704753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340580 (A362319 n).toNat * A344805 (n + 1)

end

end A067808.P4222760044332704753

/-!
# A067809: Composite n such that sigma(3*n) < prime(n).

The programs for A067809, there is no canonical definition to state claims against.
-/

/-! ## A067809.P6209101016123298131

`record[A046337(Δ[A190951(3*(n+1))])]`
-/

namespace A067809.P6209101016123298131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190951 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067809.P6209101016123298131

/-!
# A067810: Composite n such that sigma(2*n) < prime(n).

The programs for A067810, there is no canonical definition to state claims against.
-/

/-! ## A067810.P3548818186338541450

`A179614(A077727(n+1)+5)`
-/

namespace A067810.P3548818186338541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179614 (A077727 (n + 1) + 5).toNat

end

end A067810.P3548818186338541450

/-! ## A067810.P8664290663538137191

`A179614(A004903(n+1)+6)`
-/

namespace A067810.P8664290663538137191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179614 (A004903 (n + 1) + 6).toNat

end

end A067810.P8664290663538137191

/-! ## A067810.P10541268570829479869

`∩[A140646(n+1), A179614(n+1)]`
-/

namespace A067810.P10541268570829479869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067810.P10541268570829479869

/-!
# A067812: Nonprime n such that 2n+1 is prime.

The programs for A067812, the canonical program `A067812.P12747793671398424527` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067812 has offset 1).

The definition of A067812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067812.P12747793671398424527

`A176888(n+2)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067812

/-- `A176888(n+2)/2` -/
def P12747793671398424527.Spec : Prop :=
  ∀ n, P12747793671398424527.a n = (A067812 (n + 1) : ℚ)

end A067812

/-! ## A067812.P4558519413843493023

`filter[A005097(n+1), A005171(#)]`
-/

namespace A067812.P4558519413843493023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067812.P4558519413843493023

namespace A067812

/-- `filter[A005097(n+1), A005171(#)]` -/
def P4558519413843493023.Spec : Prop :=
  ∀ n, P4558519413843493023.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P9046773315509944759

`filter[A102781(n+2), A005171(#)]`
-/

namespace A067812.P9046773315509944759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067812.P9046773315509944759

namespace A067812

/-- `filter[A102781(n+2), A005171(#)]` -/
def P9046773315509944759.Spec : Prop :=
  ∀ n, P9046773315509944759.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P7385435404474372675

`filter[A130290(n+2), A005171(#)]`
-/

namespace A067812.P7385435404474372675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067812.P7385435404474372675

namespace A067812

/-- `filter[A130290(n+2), A005171(#)]` -/
def P7385435404474372675.Spec : Prop :=
  ∀ n, P7385435404474372675.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P13415653508373770119

`eq[1, A237053(n)]`
-/

namespace A067812.P13415653508373770119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067812.P13415653508373770119

namespace A067812

/-- `eq[1, A237053(n)]` -/
def P13415653508373770119.Spec : Prop :=
  ∀ n, (P13415653508373770119.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P16808844993573243575

`A000010(A059456(n+2))/2`
-/

namespace A067812.P16808844993573243575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A059456 (n + 2)).toNat : ℚ) / 2

end

end A067812.P16808844993573243575

namespace A067812

/-- `A000010(A059456(n+2))/2` -/
def P16808844993573243575.Spec : Prop :=
  ∀ n, P16808844993573243575.a n = (A067812 (n + 1) : ℚ)

end A067812

/-! ## A067812.P10482548170064008059

`filter[A079111(n+1), A005171(#)]`
-/

namespace A067812.P10482548170064008059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067812.P10482548170064008059

namespace A067812

/-- `filter[A079111(n+1), A005171(#)]` -/
def P10482548170064008059.Spec : Prop :=
  ∀ n, P10482548170064008059.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P15656840632224064342

`eq[1, A292936(2*n+1)]`
-/

namespace A067812.P15656840632224064342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067812.P15656840632224064342

namespace A067812

/-- `eq[1, A292936(2*n+1)]` -/
def P15656840632224064342.Spec : Prop :=
  ∀ n, (P15656840632224064342.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P4522914931120575167

`eq[2*n+1, A038700(n+1)]`
-/

namespace A067812.P4522914931120575167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067812.P4522914931120575167

namespace A067812

/-- `eq[2*n+1, A038700(n+1)]` -/
def P4522914931120575167.Spec : Prop :=
  ∀ n, (P4522914931120575167.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P15964730664951962449

`filter[A018252(n+1), A101264(#)]`
-/

namespace A067812.P15964730664951962449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A067812.P15964730664951962449

namespace A067812

/-- `filter[A018252(n+1), A101264(#)]` -/
def P15964730664951962449.Spec : Prop :=
  ∀ n, P15964730664951962449.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P982777058356749554

`filter[A141468(n+1), A101264(#)]`
-/

namespace A067812.P982777058356749554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A067812.P982777058356749554

namespace A067812

/-- `filter[A141468(n+1), A101264(#)]` -/
def P982777058356749554.Spec : Prop :=
  ∀ n, P982777058356749554.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P2848761802168982861

`∩[A005097(n+1), A018252(n+1)]`
-/

namespace A067812.P2848761802168982861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P2848761802168982861

namespace A067812

/-- `∩[A005097(n+1), A018252(n+1)]` -/
def P2848761802168982861.Spec : Prop :=
  ∀ n, (P2848761802168982861.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P14291178001162169196

`∩[A018252(n+1), A079111(n+1)]`
-/

namespace A067812.P14291178001162169196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P14291178001162169196

namespace A067812

/-- `∩[A018252(n+1), A079111(n+1)]` -/
def P14291178001162169196.Spec : Prop :=
  ∀ n, (P14291178001162169196.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P7642850867960069555

`∩[A018252(n+1), A102781(n+1)]`
-/

namespace A067812.P7642850867960069555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P7642850867960069555

namespace A067812

/-- `∩[A018252(n+1), A102781(n+1)]` -/
def P7642850867960069555.Spec : Prop :=
  ∀ n, (P7642850867960069555.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P4765703082092542367

`∩[A005097(n+1), A141468(n+1)]`
-/

namespace A067812.P4765703082092542367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P4765703082092542367

namespace A067812

/-- `∩[A005097(n+1), A141468(n+1)]` -/
def P4765703082092542367.Spec : Prop :=
  ∀ n, (P4765703082092542367.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P16831893479453971403

`∩[A079111(n+1), A141468(n+1)]`
-/

namespace A067812.P16831893479453971403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P16831893479453971403

namespace A067812

/-- `∩[A079111(n+1), A141468(n+1)]` -/
def P16831893479453971403.Spec : Prop :=
  ∀ n, (P16831893479453971403.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P5027272900799267618

`filter[A222307(2*n+1), A101264(#)]`
-/

namespace A067812.P5027272900799267618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A067812.P5027272900799267618

namespace A067812

/-- `filter[A222307(2*n+1), A101264(#)]` -/
def P5027272900799267618.Spec : Prop :=
  ∀ n, P5027272900799267618.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P13989800301062608850

`filter[A117096(n+1), A101264(#)]`
-/

namespace A067812.P13989800301062608850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A067812.P13989800301062608850

namespace A067812

/-- `filter[A117096(n+1), A101264(#)]` -/
def P13989800301062608850.Spec : Prop :=
  ∀ n, P13989800301062608850.a n = A067812 (n + 1)

end A067812

/-! ## A067812.P18281564658526509826

`∩[A005097(n+1), A117096(n+1)]`
-/

namespace A067812.P18281564658526509826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P18281564658526509826

namespace A067812

/-- `∩[A005097(n+1), A117096(n+1)]` -/
def P18281564658526509826.Spec : Prop :=
  ∀ n, (P18281564658526509826.a n : ℤ) = A067812 (n + 1)

end A067812

/-! ## A067812.P2364523807858702988

`∩[A079111(n+1), A117096(n+1)]`
-/

namespace A067812.P2364523807858702988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067812.P2364523807858702988

namespace A067812

/-- `∩[A079111(n+1), A117096(n+1)]` -/
def P2364523807858702988.Spec : Prop :=
  ∀ n, (P2364523807858702988.a n : ℤ) = A067812 (n + 1)

end A067812

/-!
# A067813: Start of a record-breaking run of consecutive integers with a number of prime factors (counted with multiplicity) equal to 3.

The programs for A067813, there is no canonical definition to state claims against.
-/

/-! ## A067813.P11898350594915292171

`A374449(A191879(n+1))`
-/

namespace A067813.P11898350594915292171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374449 (A191879 (n + 1)).toNat

end

end A067813.P11898350594915292171

/-!
# A067814: The start of a record-breaking run of consecutive integers with a number of prime factors (counted with multiplicity) equal to 4.

The programs for A067814, there is no canonical definition to state claims against.
-/

/-! ## A067814.P1422756871732576675

`A374449(A070837(n+2))`
-/

namespace A067814.P1422756871732576675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374449 (A070837 (n + 2)).toNat

end

end A067814.P1422756871732576675

/-! ## A067814.P17048751399928770175

`A374449(A083826(n+2))`
-/

namespace A067814.P17048751399928770175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374449 (A083826 (n + 2)).toNat

end

end A067814.P17048751399928770175

/-! ## A067814.P15562447451030568368

`A374449(A327270(n+2))`
-/

namespace A067814.P15562447451030568368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374449 (A327270 (n + 2)).toNat

end

end A067814.P15562447451030568368

/-!
# A067815: a(n) = gcd(n, floor(sqrt(n))).

The programs for A067815, the canonical program `A067815.P4190552477698997636` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067815 has offset 1).

The definition of A067815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, floor(sqrt(n+1)))` (program `A067815.P4190552477698997636`, by `A067815.P4190552477698997636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067815.P4190552477698997636

`gcd(n+1, floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067815

/-- `gcd(n+1, floor(sqrt(n+1)))` -/
def P4190552477698997636.Spec : Prop :=
  ∀ n, (P4190552477698997636.a n : ℤ) = A067815 (n + 1)

theorem P4190552477698997636.correct : P4190552477698997636.Spec := by
  intro n
  simp only [A067815, Nat.add_sub_cancel]

end A067815

/-! ## A067815.P17153095506683981902

`(n+1)/A073890(n+1)`
-/

namespace A067815.P17153095506683981902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A073890 (n + 1) : ℚ)

end

end A067815.P17153095506683981902

namespace A067815

/-- `(n+1)/A073890(n+1)` -/
def P17153095506683981902.Spec : Prop :=
  ∀ n, P17153095506683981902.a n = (A067815 (n + 1) : ℚ)

end A067815

/-! ## A067815.P11513890073687780853

`A000196(n+1)/A075119(n+1)`
-/

namespace A067815.P11513890073687780853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 (n + 1) : ℚ) / (A075119 (n + 1) : ℚ)

end

end A067815.P11513890073687780853

namespace A067815

/-- `A000196(n+1)/A075119(n+1)` -/
def P11513890073687780853.Spec : Prop :=
  ∀ n, P11513890073687780853.a n = (A067815 (n + 1) : ℚ)

end A067815

/-! ## A067815.P514385041108063670

`A000196(gcd((n+1)², A000196(n+1)²))`
-/

namespace A067815.P514385041108063670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.gcd ((n + 1) ^ 2 : ℤ) (A000196 (n + 1) ^ 2))

end

end A067815.P514385041108063670

namespace A067815

/-- `A000196(gcd((n+1)², A000196(n+1)²))` -/
def P514385041108063670.Spec : Prop :=
  ∀ n, P514385041108063670.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P12706747722096290251

`A004526(gcd(2*(n+1), 2*A028392(n+1)))`
-/

namespace A067815.P12706747722096290251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (2 * (n + 1) : ℤ) (2 * A028392 (n + 1)))

end

end A067815.P12706747722096290251

namespace A067815

/-- `A004526(gcd(2*(n+1), 2*A028392(n+1)))` -/
def P12706747722096290251.Spec : Prop :=
  ∀ n, P12706747722096290251.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P10626659397026660709

`A050873(A000217(n)+A000196(n+1))`
-/

namespace A067815.P10626659397026660709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A000217 n + A000196 (n + 1)).toNat

end

end A067815.P10626659397026660709

namespace A067815

/-- `A050873(A000217(n)+A000196(n+1))` -/
def P10626659397026660709.Spec : Prop :=
  ∀ n, P10626659397026660709.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P9264113262149471684

`A109004(A000196(n+1)+∑[n+1])`
-/

namespace A067815.P9264113262149471684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A000196 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A067815.P9264113262149471684

namespace A067815

/-- `A109004(A000196(n+1)+∑[n+1])` -/
def P9264113262149471684.Spec : Prop :=
  ∀ n, P9264113262149471684.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P11027345032120813399

`A075119(A073890(n+1)+(n+1)²)`
-/

namespace A067815.P11027345032120813399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A073890 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A067815.P11027345032120813399

namespace A067815

/-- `A075119(A073890(n+1)+(n+1)²)` -/
def P11027345032120813399.Spec : Prop :=
  ∀ n, P11027345032120813399.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P17204089167025239990

`A052409(A319513(n+1))`
-/

namespace A067815.P17204089167025239990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A319513 (n + 1)).toNat

end

end A067815.P17204089167025239990

namespace A067815

/-- `A052409(A319513(n+1))` -/
def P17204089167025239990.Spec : Prop :=
  ∀ n, P17204089167025239990.a n = A067815 (n + 1)

end A067815

/-! ## A067815.P4486858208609503302

`(n+1)/A326699(A319423(n+1))`
-/

namespace A067815.P4486858208609503302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326699 (A319423 (n + 1)).toNat : ℚ)

end

end A067815.P4486858208609503302

namespace A067815

/-- `(n+1)/A326699(A319423(n+1))` -/
def P4486858208609503302.Spec : Prop :=
  ∀ n, P4486858208609503302.a n = (A067815 (n + 1) : ℚ)

end A067815

/-!
# A067816: Numbers k such that sigma(k+1) - sigma(k) = k + 1.

The programs for A067816, there is no canonical definition to state claims against.
-/

/-! ## A067816.P7008858103220371880

`A231364(Δ[n²])`
-/

namespace A067816.P7008858103220371880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A067816.P7008858103220371880

/-!
# A067817: a(n) = Sum_{r|n, s|n, t|n, r<s<t} r*s*t.

The programs for A067817, there is no canonical definition to state claims against.
-/

/-! ## A067817.P12807103799230767135

`A068020(n+1)-∑{d}[n+1, #²]*∑{d}[n+1, #]`
-/

namespace A067817.P12807103799230767135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - (((∑ d ∈ Nat.divisors (f1 n), d ^ 2) * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ)

end

end A067817.P12807103799230767135

/-! ## A067817.P9774988323753478044

`A068020(n+1)-A379812(n+1)`
-/

namespace A067817.P9774988323753478044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - A379812 (n + 1)

end

end A067817.P9774988323753478044

/-! ## A067817.P9915310444795622694

`A068020(n+1)-A000203(n+1)*A001157(n+1)`
-/

namespace A067817.P9915310444795622694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - A000203 (n + 1) * A001157 (n + 1)

end

end A067817.P9915310444795622694

/-! ## A067817.P7683828672164631938

`A068020(n+1)-(A007437(n+1)²-A069153(n+1)²)`
-/

namespace A067817.P7683828672164631938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - (A007437 (n + 1) ^ 2 - A069153 (n + 1) ^ 2)

end

end A067817.P7683828672164631938

/-! ## A067817.P1193184811908737860

`A068020(n+1)-(A072861(n+1)-A066293(n+1))*A000203(n+1)`
-/

namespace A067817.P1193184811908737860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - (A072861 (n + 1) - A066293 (n + 1)) * A000203 (n + 1)

end

end A067817.P1193184811908737860

/-!
# A067819: Sum of the divisors of binomial(2n,n).

The programs for A067819, the canonical program `A067819.P15035980335268541507` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067819 has offset 1).

The definition of A067819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067819.P15428646818673137320

`A000203(C(2*(n+1), n+1))`
-/

namespace A067819.P15428646818673137320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (2 * (n + 1)) (n + 1))

end

end A067819.P15428646818673137320

namespace A067819

/-- `A000203(C(2*(n+1), n+1))` -/
def P15428646818673137320.Spec : Prop :=
  ∀ n, P15428646818673137320.a n = A067819 (n + 1)

end A067819

/-! ## A067819.P15035980335268541507

`A000203(A000984(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067819

/-- `A000203(A000984(n+1))` -/
def P15035980335268541507.Spec : Prop :=
  ∀ n, P15035980335268541507.a n = A067819 (n + 1)

theorem P15035980335268541507.correct : P15035980335268541507.Spec := by
  intro n
  simp only [A067819, Nat.add_sub_cancel]

end A067819

/-! ## A067819.P16581143300636429522

`A064139(2*(n+1))`
-/

namespace A067819.P16581143300636429522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064139 (2 * (n + 1))

end

end A067819.P16581143300636429522

namespace A067819

/-- `A064139(2*(n+1))` -/
def P16581143300636429522.Spec : Prop :=
  ∀ n, P16581143300636429522.a n = A067819 (n + 1)

end A067819

/-! ## A067819.P16180894975507478848

`A064141(2*(n+1))+A064140(2*(n+1))`
-/

namespace A067819.P16180894975507478848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064141 (2 * (n + 1)) + A064140 (2 * (n + 1))

end

end A067819.P16180894975507478848

namespace A067819

/-- `A064141(2*(n+1))+A064140(2*(n+1))` -/
def P16180894975507478848.Spec : Prop :=
  ∀ n, P16180894975507478848.a n = A067819 (n + 1)

end A067819

/-!
# A067820: The start of a record-breaking run of consecutive integers with a number of prime factors (counted with multiplicity) equal to 5.

The programs for A067820, there is no canonical definition to state claims against.
-/

/-! ## A067820.P17913796173251742292

`A375160(lt[A375160(n+3), 0])`
-/

namespace A067820.P17913796173251742292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375160 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375160 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067820.P17913796173251742292

/-!
# A067824: a(1) = 1; for n > 1, a(n) = 1 + Sum_{0 < d < n, d|n} a(d).

The programs for A067824, there is no canonical definition to state claims against.
-/

/-! ## A067824.P10393616276246353635

`∑{d}[n+1, A074206(#)]`
-/

namespace A067824.P10393616276246353635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d

end

end A067824.P10393616276246353635

/-! ## A067824.P2868962277169849537

`∑{d}[n+1, A002033(#-1)]`
-/

namespace A067824.P2868962277169849537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1)

end

end A067824.P2868962277169849537

/-! ## A067824.P16738205531991640047

`A337256(n+1)/2`
-/

namespace A067824.P16738205531991640047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337256 (n + 1) : ℚ) / 2

end

end A067824.P16738205531991640047

/-! ## A067824.P7300765413729325288

`ceil(A253249(n+1)/2)`
-/

namespace A067824.P7300765413729325288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253249 (n + 1) : ℚ) / 2⌉

end

end A067824.P7300765413729325288

/-! ## A067824.P13058490751205304539

`∑{d}[n+1, #*A323912((n+1)/#)]`
-/

namespace A067824.P13058490751205304539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P13058490751205304539

/-! ## A067824.P261251005075920587

`(A057427(n)+1)*A002033(n)`
-/

namespace A067824.P261251005075920587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A002033 n

end

end A067824.P261251005075920587

/-! ## A067824.P16768613698778130438

`(1-A057428(n))*A002033(n)`
-/

namespace A067824.P16768613698778130438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A002033 n

end

end A067824.P16768613698778130438

/-! ## A067824.P6047886697363230163

`(2-A000007(n))*A002033(n)`
-/

namespace A067824.P6047886697363230163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A002033 n

end

end A067824.P6047886697363230163

/-! ## A067824.P12472890816267462252

`A002033(n)*A040001(2*n)`
-/

namespace A067824.P12472890816267462252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A040001 (2 * n)

end

end A067824.P12472890816267462252

/-! ## A067824.P7078268891719652312

`A002033(n)/2*A040002(n)`
-/

namespace A067824.P7078268891719652312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 n : ℚ) / 2 * (A040002 n : ℚ)

end

end A067824.P7078268891719652312

/-! ## A067824.P1829795688505776056

`A040002(n)/2*A074206(n+1)`
-/

namespace A067824.P1829795688505776056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040002 n : ℚ) / 2 * (A074206 (n + 1) : ℚ)

end

end A067824.P1829795688505776056

/-! ## A067824.P2621272928459690448

`(A065475(n+1)-n)*A002033(n)`
-/

namespace A067824.P2621272928459690448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - (n : ℤ)) * A002033 n

end

end A067824.P2621272928459690448

/-! ## A067824.P8165412648389160623

`∑{d}[n+1, A000005(#)*A174725((n+1)/#)]`
-/

namespace A067824.P8165412648389160623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P8165412648389160623

/-! ## A067824.P10896457820105421934

`∑{d}[n+1, A055615(#)*A191161((n+1)/#)]`
-/

namespace A067824.P10896457820105421934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P10896457820105421934

/-! ## A067824.P1406845892625237849

`∑{d}[n+1, A008683(#)*A253249((n+1)/#)]`
-/

namespace A067824.P1406845892625237849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P1406845892625237849

/-! ## A067824.P6632562447032491421

`∑{d}[n+1, A000203(#)*A323910((n+1)/#)]`
-/

namespace A067824.P6632562447032491421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P6632562447032491421

/-! ## A067824.P6879544248994798037

`∑{d}[n+1, A001511(#)*A345182((n+1)/#)]`
-/

namespace A067824.P6879544248994798037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P6879544248994798037

/-! ## A067824.P705952671643866737

`∑{d}[n+1, A003973(#)*A346246((n+1)/#)]`
-/

namespace A067824.P705952671643866737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A346246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P705952671643866737

/-! ## A067824.P9332427447280322892

`∑{d}[n+1, A023900(#)*A330575((n+1)/#)]`
-/

namespace A067824.P9332427447280322892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067824.P9332427447280322892

/-!
# A067825: Even values of k such that sigma(k + 1) > sigma(k).

The programs for A067825, there is no canonical definition to state claims against.
-/

/-! ## A067825.P11966585654196119662

`A333041(n+1)-1`
-/

namespace A067825.P11966585654196119662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333041 (n + 1) - 1

end

end A067825.P11966585654196119662

/-! ## A067825.P11566598552119124577

`2*A082957(n+1)`
-/

namespace A067825.P11566598552119124577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082957 (n + 1)

end

end A067825.P11566598552119124577

/-! ## A067825.P7246884371446684738

`∪[A323380(n+1), A323726(n+1)]-1`
-/

namespace A067825.P7246884371446684738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323726 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067825.P7246884371446684738

/-! ## A067825.P4439464396318589191

`A082957(n+1)+A082957(n%(n+1)+1)`
-/

namespace A067825.P4439464396318589191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1) + A082957 (n % (n + 1) + 1)

end

end A067825.P4439464396318589191

/-! ## A067825.P11358735468986697105

`A082957(n+1)+A082957(n+1)%A016791(n)`
-/

namespace A067825.P11358735468986697105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1) + Int.tmod (A082957 (n + 1)) (A016791 n)

end

end A067825.P11358735468986697105

/-! ## A067825.P3970056564297029553

`A082957(n+1)+or(A000007(n), A082957(n+1))`
-/

namespace A067825.P3970056564297029553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1) + Int.lor (A000007 n) (A082957 (n + 1))

end

end A067825.P3970056564297029553

/-! ## A067825.P78698870743110408

`record[2*A082957(A262519(n))]`
-/

namespace A067825.P78698870743110408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082957 (A262519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067825.P78698870743110408

/-! ## A067825.P15657228537427798567

`A082957(n+1)+record[A082957(A262519(n))]`
-/

namespace A067825.P15657228537427798567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (A262519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067825.P15657228537427798567

/-! ## A067825.P17515098382374785066

`∩[2*n, A053224(n+1)]`
-/

namespace A067825.P17515098382374785066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067825.P17515098382374785066

/-! ## A067825.P12817895739390428997

`A004277(A082957(n+1))`
-/

namespace A067825.P12817895739390428997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A082957 (n + 1)).toNat

end

end A067825.P12817895739390428997

/-! ## A067825.P2854840650954697569

`A004275(A082957(n+1)+1)`
-/

namespace A067825.P2854840650954697569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A082957 (n + 1) + 1).toNat

end

end A067825.P2854840650954697569

/-! ## A067825.P17901813085750330257

`filter[A053224(n+1), A120325(#)]`
-/

namespace A067825.P17901813085750330257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A067825.P17901813085750330257

/-! ## A067825.P264348298198382048

`filter[A053224(n+1), A353525(#)]`
-/

namespace A067825.P264348298198382048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A067825.P264348298198382048

/-! ## A067825.P18043191416049932511

`∩[A053224(n+1), A005843(n)]`
-/

namespace A067825.P18043191416049932511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067825.P18043191416049932511

/-! ## A067825.P10928606685535672717

`A004273(A082957(n+1)+1)-1`
-/

namespace A067825.P10928606685535672717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082957 (n + 1) + 1).toNat - 1

end

end A067825.P10928606685535672717

/-! ## A067825.P14358606496367536108

`A005408(A082957(n+1)-1)+1`
-/

namespace A067825.P14358606496367536108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A082957 (n + 1) - 1).toNat + 1

end

end A067825.P14358606496367536108

/-! ## A067825.P1107693289875071579

`∩[A053224(n+1), A064409(n+1)]`
-/

namespace A067825.P1107693289875071579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067825.P1107693289875071579

/-! ## A067825.P17087254334930251378

`∩[A053224(n+1), A125499(n+1)]`
-/

namespace A067825.P17087254334930251378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067825.P17087254334930251378

/-! ## A067825.P18388707695286046399

`∩[A053224(n+1), A132895(n+1)]`
-/

namespace A067825.P18388707695286046399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067825.P18388707695286046399

/-!
# A067826: Primes p such that sigma(2*p+1) > 3*(p+1).

The programs for A067826, there is no canonical definition to state claims against.
-/

/-! ## A067826.P8974765856791705248

`p?[A082957(n+1)]`
-/

namespace A067826.P8974765856791705248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067826.P8974765856791705248

/-! ## A067826.P13528652894317808547

`∩[A053176(n+1), A082957(n+1)]`
-/

namespace A067826.P13528652894317808547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P13528652894317808547

/-! ## A067826.P15742789795567859758

`∩[A065396(n+1), A082957(n+1)]`
-/

namespace A067826.P15742789795567859758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P15742789795567859758

/-! ## A067826.P6859103786280364810

`∩[A000040(n+1), A082957(n+1)]`
-/

namespace A067826.P6859103786280364810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P6859103786280364810

/-! ## A067826.P1092890054553610849

`∩[A004139(n+1), A082957(n+1)]`
-/

namespace A067826.P1092890054553610849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P1092890054553610849

/-! ## A067826.P18369327933692013914

`∩[A045319(n+1), A082957(n+1)]`
-/

namespace A067826.P18369327933692013914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P18369327933692013914

/-! ## A067826.P15183678626554612722

`∩[A045344(n+1), A082957(n+1)]`
-/

namespace A067826.P15183678626554612722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P15183678626554612722

/-! ## A067826.P1121126260031706875

`∩[A051948(n+1), A082957(n+1)]`
-/

namespace A067826.P1121126260031706875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P1121126260031706875

/-! ## A067826.P18049611215558135229

`∩[A053813(n+1), A082957(n+1)]`
-/

namespace A067826.P18049611215558135229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P18049611215558135229

/-! ## A067826.P6427600209342767701

`∩[A065091(n+1), A082957(n+1)]`
-/

namespace A067826.P6427600209342767701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P6427600209342767701

/-! ## A067826.P8769248983525030398

`∩[A082957(n+1), A093515(n+1)]`
-/

namespace A067826.P8769248983525030398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P8769248983525030398

/-! ## A067826.P3741960895535639963

`∩[A075763(n+1), A082957(n+1)]`
-/

namespace A067826.P3741960895535639963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P3741960895535639963

/-! ## A067826.P12389033458608021850

`∩[A053577(n+1), A082957(n+1)]`
-/

namespace A067826.P12389033458608021850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P12389033458608021850

/-! ## A067826.P4447599158984477902

`∩[A066191(n+1), A082957(n+1)]`
-/

namespace A067826.P4447599158984477902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P4447599158984477902

/-! ## A067826.P6849738551006572214

`record[A006530(A082957(n+2))]`
-/

namespace A067826.P6849738551006572214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082957 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067826.P6849738551006572214

/-! ## A067826.P17109820712237623196

`filter[A082957(n+1), A010051(#)]`
-/

namespace A067826.P17109820712237623196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067826.P17109820712237623196

/-! ## A067826.P12690546601477647233

`filter[A082957(n+2), A380467(#)]`
-/

namespace A067826.P12690546601477647233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A067826.P12690546601477647233

/-! ## A067826.P18143844863603229348

`∩[A082957(n+1), A231878(n+1)]`
-/

namespace A067826.P18143844863603229348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P18143844863603229348

/-! ## A067826.P1531046774395213211

`∩[A082957(n+1), A174219(n+1)]`
-/

namespace A067826.P1531046774395213211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067826.P1531046774395213211

/-!
# A067827: Even numbers k such that k/2 is nonprime and sigma(k+1) > sigma(k).

The programs for A067827, there is no canonical definition to state claims against.
-/

/-! ## A067827.P4248421110858153724

`record[2*A191558(A082957(n+1))]`
-/

namespace A067827.P4248421110858153724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191558 (A082957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067827.P4248421110858153724

/-! ## A067827.P6160230581577918682

`A005843(record[A191558(A082957(n+1))])`
-/

namespace A067827.P6160230581577918682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A082957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067827.P6160230581577918682

/-!
# A067828: Odd numbers k such that sigma(k+1) < sigma(k).

The programs for A067828, there is no canonical definition to state claims against.
-/

/-! ## A067828.P2126357484162262283

`A333040(n+1)-1`
-/

namespace A067828.P2126357484162262283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333040 (n + 1) - 1

end

end A067828.P2126357484162262283

/-! ## A067828.P16150453765477577139

`lt[A000203(n+1), A000203(or(1, n))]`
-/

namespace A067828.P16150453765477577139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067828.P16150453765477577139

/-! ## A067828.P18186882045964042151

`∩[A005004(n+1), A333039(n+1)]-1`
-/

namespace A067828.P18186882045964042151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P18186882045964042151

/-! ## A067828.P6146808153389139018

`∩[A047235(n+1), A333039(n+1)]-1`
-/

namespace A067828.P6146808153389139018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P6146808153389139018

/-! ## A067828.P18198451565050106296

`∩[A225241(n+1), A333039(n+1)]-1`
-/

namespace A067828.P18198451565050106296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P18198451565050106296

/-! ## A067828.P2352316359436727143

`∩[A232745(n+1), A333039(n+1)]-1`
-/

namespace A067828.P2352316359436727143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P2352316359436727143

/-! ## A067828.P3157863302645457090

`∩[A245024(n+1), A333039(n+1)]-1`
-/

namespace A067828.P3157863302645457090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P3157863302645457090

/-! ## A067828.P6906199729513490238

`∩[A276706(n+1), A333039(n+1)]-1`
-/

namespace A067828.P6906199729513490238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P6906199729513490238

/-! ## A067828.P15501764992105063719

`∩[A328588(n+1), A333039(n+1)]-1`
-/

namespace A067828.P15501764992105063719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P15501764992105063719

/-! ## A067828.P4883781534770589546

`∩[A333039(n+1), A342050(n+1)]-1`
-/

namespace A067828.P4883781534770589546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P4883781534770589546

/-! ## A067828.P17940797667321623143

`∩[A260391(n+1), A333039(n+1)]-1`
-/

namespace A067828.P17940797667321623143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P17940797667321623143

/-! ## A067828.P11852909574151458227

`∩[A333039(n+1), A348005(n+1)]-1`
-/

namespace A067828.P11852909574151458227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067828.P11852909574151458227

/-! ## A067828.P6342659143679794311

`∩[2*n+1, A053226(n+1)]`
-/

namespace A067828.P6342659143679794311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P6342659143679794311

/-! ## A067828.P10594456762352867141

`∩[A053226(n+1), A004273(n)]`
-/

namespace A067828.P10594456762352867141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P10594456762352867141

/-! ## A067828.P14152847585162428478

`∩[A053226(n+1), A004274(n)]`
-/

namespace A067828.P14152847585162428478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P14152847585162428478

/-! ## A067828.P11362062549497499587

`∩[A053226(n+1), A020742(n)]`
-/

namespace A067828.P11362062549497499587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P11362062549497499587

/-! ## A067828.P11389806790667044193

`∩[A053226(n+1), A060747(n)]`
-/

namespace A067828.P11389806790667044193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P11389806790667044193

/-! ## A067828.P15847681974752647673

`∩[A053226(n+1), A062545(n)]`
-/

namespace A067828.P15847681974752647673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P15847681974752647673

/-! ## A067828.P881931389139044856

`∩[A053226(n+1), A130773(n)]`
-/

namespace A067828.P881931389139044856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P881931389139044856

/-! ## A067828.P16535112146776329737

`∩[A053226(n+1), A163985(n)]`
-/

namespace A067828.P16535112146776329737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067828.P16535112146776329737

/-!
# A067829: Primes p such that sigma(p-2) < p.

The programs for A067829, the canonical program `A067829.P11035517801110487741` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067829 has offset 1).

The definition of A067829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067829.P10479005079286618289

`A181747(n+1)+2`
-/

namespace A067829.P10479005079286618289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1) + 2

end

end A067829.P10479005079286618289

namespace A067829

/-- `A181747(n+1)+2` -/
def P10479005079286618289.Spec : Prop :=
  ∀ n, P10479005079286618289.a n = A067829 (n + 1)

theorem P10479005079286618289.correct : P10479005079286618289.Spec := by
  intro n
  simp only [A067829, Nat.add_sub_cancel, A067829.P10479005079286618289.a, A067829.P11035517801110487741.a, A014574, A014574.P4587706211531852143.a, A028310, A028310.P18130301328277559831.a, A153881, A153881.P15530675202416649288.a, A181747, A181747.P3900784765527712522.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067829

/-! ## A067829.P16368786587713482384

`2*A168497(n+1)+1`
-/

namespace A067829.P16368786587713482384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168497 (n + 1) + 1

end

end A067829.P16368786587713482384

namespace A067829

/-- `2*A168497(n+1)+1` -/
def P16368786587713482384.Spec : Prop :=
  ∀ n, P16368786587713482384.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P17244709443216799972

`or(1, A124588(n+1)+1)`
-/

namespace A067829.P17244709443216799972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124588 (n + 1) + 1)

end

end A067829.P17244709443216799972

namespace A067829

/-- `or(1, A124588(n+1)+1)` -/
def P17244709443216799972.Spec : Prop :=
  ∀ n, P17244709443216799972.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P8695549799159196765

`A006512(n%a(n-1))` with `a(0)=3`
-/

namespace A067829.P8695549799159196765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006512 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A067829.P8695549799159196765

namespace A067829

/-- `A006512(n%a(n-1))` -/
def P8695549799159196765.Spec : Prop :=
  ∀ n, P8695549799159196765.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P11035517801110487741

`A014574(A028310(n))-A153881(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A067829

/-- `A014574(A028310(n))-A153881(n+1)` -/
def P11035517801110487741.Spec : Prop :=
  ∀ n, P11035517801110487741.a n = A067829 (n + 1)

theorem P11035517801110487741.correct : P11035517801110487741.Spec := by
  intro n
  simp only [A067829, Nat.add_sub_cancel]

end A067829

/-! ## A067829.P4817008236811752782

`p?[A073534(n+1)+2]`
-/

namespace A067829.P4817008236811752782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P4817008236811752782

namespace A067829

/-- `p?[A073534(n+1)+2]` -/
def P4817008236811752782.Spec : Prop :=
  ∀ n, P4817008236811752782.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P12214119651781553519

`A001097(record[abs(xor(1, n-2))])`
-/

namespace A067829.P12214119651781553519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067829.P12214119651781553519

namespace A067829

/-- `A001097(record[abs(xor(1, n-2))])` -/
def P12214119651781553519.Spec : Prop :=
  ∀ n, P12214119651781553519.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P8802614566521979093

`A077800(ceil(abs(γ-n))+n)`
-/

namespace A067829.P8802614566521979093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ + (n : ℤ)).toNat

end

end A067829.P8802614566521979093

namespace A067829

/-- `A077800(ceil(abs(γ-n))+n)` -/
def P8802614566521979093.Spec : Prop :=
  ∀ n, P8802614566521979093.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P4446990587180187187

`A001097(comp[2*n+3]+1)`
-/

namespace A067829.P4446990587180187187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A067829.P4446990587180187187

namespace A067829

/-- `A001097(comp[2*n+3]+1)` -/
def P4446990587180187187.Spec : Prop :=
  ∀ n, P4446990587180187187.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P8793106041074931447

`A171821(A004278(n+2))`
-/

namespace A067829.P8793106041074931447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A004278 (n + 2)).toNat

end

end A067829.P8793106041074931447

namespace A067829

/-- `A171821(A004278(n+2))` -/
def P8793106041074931447.Spec : Prop :=
  ∀ n, P8793106041074931447.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P9839839323142183831

`A099609(2*(n+1))`
-/

namespace A067829.P9839839323142183831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (2 * (n + 1))

end

end A067829.P9839839323142183831

namespace A067829

/-- `A099609(2*(n+1))` -/
def P9839839323142183831.Spec : Prop :=
  ∀ n, P9839839323142183831.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P5424192516366863679

`∩[A274212(n+1), A380468(n+1)]+2`
-/

namespace A067829.P5424192516366863679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A067829.P5424192516366863679

namespace A067829

/-- `∩[A274212(n+1), A380468(n+1)]+2` -/
def P5424192516366863679.Spec : Prop :=
  ∀ n, (P5424192516366863679.a n : ℤ) = A067829 (n + 1)

end A067829

/-! ## A067829.P176712423764672777

`record[p?[A259153(n+1)+2]]`
-/

namespace A067829.P176712423764672777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067829.P176712423764672777

namespace A067829

/-- `record[p?[A259153(n+1)+2]]` -/
def P176712423764672777.Spec : Prop :=
  ∀ n, P176712423764672777.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P10702706289099514405

`p?[A167706(n+1)+1]`
-/

namespace A067829.P10702706289099514405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P10702706289099514405

namespace A067829

/-- `p?[A167706(n+1)+1]` -/
def P10702706289099514405.Spec : Prop :=
  ∀ n, P10702706289099514405.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P818252247264410128

`p?[A028815(n)+1]`
-/

namespace A067829.P818252247264410128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P818252247264410128

namespace A067829

/-- `p?[A028815(n)+1]` -/
def P818252247264410128.Spec : Prop :=
  ∀ n, P818252247264410128.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P13299669785067480386

`p?[A157048(n+1)]`
-/

namespace A067829.P13299669785067480386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P13299669785067480386

namespace A067829

/-- `p?[A157048(n+1)]` -/
def P13299669785067480386.Spec : Prop :=
  ∀ n, P13299669785067480386.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P6991723955860062879

`p?[A162800(n)+1]`
-/

namespace A067829.P6991723955860062879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P6991723955860062879

namespace A067829

/-- `p?[A162800(n)+1]` -/
def P6991723955860062879.Spec : Prop :=
  ∀ n, P6991723955860062879.a n = A067829 (n + 1)

end A067829

/-! ## A067829.P1679836677986071353

`p?[∑[A115061(n+1)]]`
-/

namespace A067829.P1679836677986071353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067829.P1679836677986071353

namespace A067829

/-- `p?[∑[A115061(n+1)]]` -/
def P1679836677986071353.Spec : Prop :=
  ∀ n, P1679836677986071353.a n = A067829 (n + 1)

end A067829

/-!
# A067830: Primes p such that sigma(p-4) < p.

The programs for A067830, there is no canonical definition to state claims against.
-/

/-! ## A067830.P8639738853893601068

`A255176(n)+A172238(n+1)`
-/

namespace A067830.P8639738853893601068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + A172238 (n + 1)

end

end A067830.P8639738853893601068

/-! ## A067830.P15267505165282632780

`∪[A046132(n+1), A182345(n+1)]`
-/

namespace A067830.P15267505165282632780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067830.P15267505165282632780

/-! ## A067830.P3600987561181279152

`p?[A028815(n)+3]`
-/

namespace A067830.P3600987561181279152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P3600987561181279152

/-! ## A067830.P12237899218284021452

`p?[A093515(n+1)+3]`
-/

namespace A067830.P12237899218284021452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P12237899218284021452

/-! ## A067830.P14315334080208983428

`p?[A006005(n+1)+4]`
-/

namespace A067830.P14315334080208983428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P14315334080208983428

/-! ## A067830.P3536148985094410839

`p?[A008578(n+1)+4]`
-/

namespace A067830.P3536148985094410839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P3536148985094410839

/-! ## A067830.P17565768788265910391

`p?[A046022(n+1)+4]`
-/

namespace A067830.P17565768788265910391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P17565768788265910391

/-! ## A067830.P8624199761554294928

`p?[A158611(n+1)+4]`
-/

namespace A067830.P8624199761554294928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P8624199761554294928

/-! ## A067830.P6943713408650084315

`p?[A326715(n+1)+4]`
-/

namespace A067830.P6943713408650084315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P6943713408650084315

/-! ## A067830.P12646027165792550092

`p?[A175221(n+1)-A005171(A175221(n+1))]`
-/

namespace A067830.P12646027165792550092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) - A005171 (A175221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P12646027165792550092

/-! ## A067830.P11498894423898113749

`p?[A168063(n+2)+2]`
-/

namespace A067830.P11498894423898113749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168063 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P11498894423898113749

/-! ## A067830.P6221223496765832638

`p?[A144396(n+2)*A340371(2*n+1)]`
-/

namespace A067830.P6221223496765832638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2) * A340371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P6221223496765832638

/-! ## A067830.P3687603908952325786

`p?[A005408(n+1)*A175078(2*n+1)]`
-/

namespace A067830.P3687603908952325786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) * A175078 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P3687603908952325786

/-! ## A067830.P15945579482898471140

`p?[A062545(n+1)*A107286(2*n+1)]`
-/

namespace A067830.P15945579482898471140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n + 1) * A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P15945579482898471140

/-! ## A067830.P5429350793883815984

`A066168(A172238(n+1))`
-/

namespace A067830.P5429350793883815984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066168 (A172238 (n + 1)).toNat

end

end A067830.P5429350793883815984

/-! ## A067830.P7625253864689286706

`record[A110560(A051698(n)+2)]`
-/

namespace A067830.P7625253864689286706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A051698 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067830.P7625253864689286706

/-! ## A067830.P17877250830376068013

`record[A110560(A110560(n)+2)]`
-/

namespace A067830.P17877250830376068013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A110560 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067830.P17877250830376068013

/-! ## A067830.P906807047303036859

`record[A006530(A227215(n+1)+2)]`
-/

namespace A067830.P906807047303036859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A227215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067830.P906807047303036859

/-! ## A067830.P10157182337980310507

`p?[A005180(n+1)+4]`
-/

namespace A067830.P10157182337980310507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067830.P10157182337980310507

/-!
# A067831: Primes p such that sigma(p-6) < p.

The programs for A067831, the canonical program `A067831.P7446926115698763501` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067831 has offset 1).

The definition of A067831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067831.P7446926115698763501

`A172988(n+1)+A000038(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067831

/-- `A172988(n+1)+A000038(n)` -/
def P7446926115698763501.Spec : Prop :=
  ∀ n, P7446926115698763501.a n = A067831 (n + 1)

theorem P7446926115698763501.correct : P7446926115698763501.Spec := by
  intro n
  simp only [A067831, Nat.add_sub_cancel]

end A067831

/-! ## A067831.P2779280250069456833

`p?[A028815(n)+5]`
-/

namespace A067831.P2779280250069456833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P2779280250069456833

namespace A067831

/-- `p?[A028815(n)+5]` -/
def P2779280250069456833.Spec : Prop :=
  ∀ n, P2779280250069456833.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P4028373408619346971

`p?[A093515(n+1)+5]`
-/

namespace A067831.P4028373408619346971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P4028373408619346971

namespace A067831

/-- `p?[A093515(n+1)+5]` -/
def P4028373408619346971.Spec : Prop :=
  ∀ n, P4028373408619346971.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P1353469307631869497

`p?[A006005(n+1)+6]`
-/

namespace A067831.P1353469307631869497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P1353469307631869497

namespace A067831

/-- `p?[A006005(n+1)+6]` -/
def P1353469307631869497.Spec : Prop :=
  ∀ n, P1353469307631869497.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P16106764038387749355

`p?[A008578(n+1)+6]`
-/

namespace A067831.P16106764038387749355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P16106764038387749355

namespace A067831

/-- `p?[A008578(n+1)+6]` -/
def P16106764038387749355.Spec : Prop :=
  ∀ n, P16106764038387749355.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P15484649072920326314

`p?[2*A124678(n+1)+1]`
-/

namespace A067831.P15484649072920326314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124678 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P15484649072920326314

namespace A067831

/-- `p?[2*A124678(n+1)+1]` -/
def P15484649072920326314.Spec : Prop :=
  ∀ n, P15484649072920326314.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P15907273105206013070

`p?[or(1, A000040(n+1)+5)]`
-/

namespace A067831.P15907273105206013070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (n + 1) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P15907273105206013070

namespace A067831

/-- `p?[or(1, A000040(n+1)+5)]` -/
def P15907273105206013070.Spec : Prop :=
  ∀ n, P15907273105206013070.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P17262326109341720698

`p?[A093641(n+1)+6]`
-/

namespace A067831.P17262326109341720698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P17262326109341720698

namespace A067831

/-- `p?[A093641(n+1)+6]` -/
def P17262326109341720698.Spec : Prop :=
  ∀ n, P17262326109341720698.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P11118884405905055917

`A195159(A172071(n+1))`
-/

namespace A067831.P11118884405905055917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A172071 (n + 1)).toNat

end

end A067831.P11118884405905055917

namespace A067831

/-- `A195159(A172071(n+1))` -/
def P11118884405905055917.Spec : Prop :=
  ∀ n, P11118884405905055917.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P3492278850530724958

`p?[A146308(A008578(n+1))]`
-/

namespace A067831.P3492278850530724958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P3492278850530724958

namespace A067831

/-- `p?[A146308(A008578(n+1))]` -/
def P3492278850530724958.Spec : Prop :=
  ∀ n, P3492278850530724958.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P17868901656080149596

`p?[A005180(n+1)+6]`
-/

namespace A067831.P17868901656080149596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067831.P17868901656080149596

namespace A067831

/-- `p?[A005180(n+1)+6]` -/
def P17868901656080149596.Spec : Prop :=
  ∀ n, P17868901656080149596.a n = A067831 (n + 1)

end A067831

/-! ## A067831.P17657957564378461174

`record[p?[A159076(n+3)]]`
-/

namespace A067831.P17657957564378461174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067831.P17657957564378461174

namespace A067831

/-- `record[p?[A159076(n+3)]]` -/
def P17657957564378461174.Spec : Prop :=
  ∀ n, P17657957564378461174.a n = A067831 (n + 1)

end A067831

/-!
# A067832: Primes p such that sigma(p-6) > p.

The programs for A067832, the canonical program `A067832.P6338250715673220495` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067832 has offset 1).

The definition of A067832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067832.P6338250715673220495

`p?[A038509(n+2)+6]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067832

/-- `p?[A038509(n+2)+6]` -/
def P6338250715673220495.Spec : Prop :=
  ∀ n, P6338250715673220495.a n = A067832 (n + 1)

theorem P6338250715673220495.correct : P6338250715673220495.Spec := by
  intro n
  simp only [A067832, Nat.add_sub_cancel]

end A067832

/-! ## A067832.P6037955187350153374

`p?[A007921(n+7)+8]`
-/

namespace A067832.P6037955187350153374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 7) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P6037955187350153374

namespace A067832

/-- `p?[A007921(n+7)+8]` -/
def P6037955187350153374.Spec : Prop :=
  ∀ n, P6037955187350153374.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P16061890626343205445

`p?[A018252(n+17)+6]`
-/

namespace A067832.P16061890626343205445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 17) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P16061890626343205445

namespace A067832

/-- `p?[A018252(n+17)+6]` -/
def P16061890626343205445.Spec : Prop :=
  ∀ n, P16061890626343205445.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P12534429779618008364

`p?[A325037(n+5)+6]`
-/

namespace A067832.P12534429779618008364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 5) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P12534429779618008364

namespace A067832

/-- `p?[A325037(n+5)+6]` -/
def P12534429779618008364.Spec : Prop :=
  ∀ n, P12534429779618008364.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P2588284424649636149

`p?[A061751(n+1)+7]`
-/

namespace A067832.P2588284424649636149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061751 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P2588284424649636149

namespace A067832

/-- `p?[A061751(n+1)+7]` -/
def P2588284424649636149.Spec : Prop :=
  ∀ n, P2588284424649636149.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P567348094659485288

`p?[A061838(n+1)+9]`
-/

namespace A067832.P567348094659485288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061838 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P567348094659485288

namespace A067832

/-- `p?[A061838(n+1)+9]` -/
def P567348094659485288.Spec : Prop :=
  ∀ n, P567348094659485288.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P14546502806338272030

`p?[A138594(n+1)+6]`
-/

namespace A067832.P14546502806338272030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138594 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P14546502806338272030

namespace A067832

/-- `p?[A138594(n+1)+6]` -/
def P14546502806338272030.Spec : Prop :=
  ∀ n, P14546502806338272030.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P941407122522698813

`p?[A343311(n+1)+6]`
-/

namespace A067832.P941407122522698813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067832.P941407122522698813

namespace A067832

/-- `p?[A343311(n+1)+6]` -/
def P941407122522698813.Spec : Prop :=
  ∀ n, P941407122522698813.a n = A067832 (n + 1)

end A067832

/-! ## A067832.P11081790944757398538

`A173251(n+3)+6`
-/

namespace A067832.P11081790944757398538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173251 (n + 3) + 6

end

end A067832.P11081790944757398538

namespace A067832

/-- `A173251(n+3)+6` -/
def P11081790944757398538.Spec : Prop :=
  ∀ n, P11081790944757398538.a n = A067832 (n + 1)

end A067832

/-!
# A067833: Primes p such that sigma(p-4) > p.

The programs for A067833, the canonical program `A067833.P2986960847933786226` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067833 has offset 1).

The definition of A067833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067833.P16754400685740221491

`p?[A080713(n+9)]`
-/

namespace A067833.P16754400685740221491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P16754400685740221491

namespace A067833

/-- `p?[A080713(n+9)]` -/
def P16754400685740221491.Spec : Prop :=
  ∀ n, P16754400685740221491.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P4707113715481740395

`∩[A080713(n+1), A157996(n+1)]`
-/

namespace A067833.P4707113715481740395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067833.P4707113715481740395

namespace A067833

/-- `∩[A080713(n+1), A157996(n+1)]` -/
def P4707113715481740395.Spec : Prop :=
  ∀ n, (P4707113715481740395.a n : ℤ) = A067833 (n + 1)

end A067833

/-! ## A067833.P2986960847933786226

`p?[A018252(n+6)+4]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067833

/-- `p?[A018252(n+6)+4]` -/
def P2986960847933786226.Spec : Prop :=
  ∀ n, P2986960847933786226.a n = A067833 (n + 1)

theorem P2986960847933786226.correct : P2986960847933786226.Spec := by
  intro n
  simp only [A067833, Nat.add_sub_cancel]

end A067833

/-! ## A067833.P13273119433531642506

`record[A006530(A018252(n+9)+4)]`
-/

namespace A067833.P13273119433531642506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A018252 (n + 9) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067833.P13273119433531642506

namespace A067833

/-- `record[A006530(A018252(n+9)+4)]` -/
def P13273119433531642506.Spec : Prop :=
  ∀ n, P13273119433531642506.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P16349577130768273078

`record[A020639(A018252(n+9)+4)]`
-/

namespace A067833.P16349577130768273078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 9) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067833.P16349577130768273078

namespace A067833

/-- `record[A020639(A018252(n+9)+4)]` -/
def P16349577130768273078.Spec : Prop :=
  ∀ n, P16349577130768273078.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P18223851866187443578

`p?[A005381(n+2)+4]`
-/

namespace A067833.P18223851866187443578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P18223851866187443578

namespace A067833

/-- `p?[A005381(n+2)+4]` -/
def P18223851866187443578.Spec : Prop :=
  ∀ n, P18223851866187443578.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P17654165383945700698

`p?[A138593(n+1)+4]`
-/

namespace A067833.P17654165383945700698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P17654165383945700698

namespace A067833

/-- `p?[A138593(n+1)+4]` -/
def P17654165383945700698.Spec : Prop :=
  ∀ n, P17654165383945700698.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P4958867497804366817

`p?[A138592(n+1)+4]`
-/

namespace A067833.P4958867497804366817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P4958867497804366817

namespace A067833

/-- `p?[A138592(n+1)+4]` -/
def P4958867497804366817.Spec : Prop :=
  ∀ n, P4958867497804366817.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P11772550557216218132

`record[A014963(A018252(n+9)+4)]`
-/

namespace A067833.P11772550557216218132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A018252 (n + 9) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067833.P11772550557216218132

namespace A067833

/-- `record[A014963(A018252(n+9)+4)]` -/
def P11772550557216218132.Spec : Prop :=
  ∀ n, P11772550557216218132.a n = A067833 (n + 1)

end A067833

/-! ## A067833.P6817787934248615389

`p?[A130333(n)+5]`
-/

namespace A067833.P6817787934248615389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130333 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P6817787934248615389

namespace A067833

/-- `p?[A130333(n)+5]` -/
def P6817787934248615389.Spec : Prop :=
  ∀ n, P6817787934248615389.a n = A067833 (n + 1)

end A067833

/-!
# A067834: Numbers k such that in the ring Z[sqrt(3)] the norm of (-1+sqrt(3))^k-1 is prime.

The programs for A067834, there is no canonical definition to state claims against.
-/

/-! ## A067834.P5922818589185179440

`∩[A051484(n+1), A069680(n+1)]`
-/

namespace A067834.P5922818589185179440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067834.P5922818589185179440

/-! ## A067834.P5893498661864905054

`∩[A051484(n+1), A196230(n+1)]`
-/

namespace A067834.P5893498661864905054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067834.P5893498661864905054

/-! ## A067834.P2156441149388506326

`∩[A051484(n+1), A224517(n+1)]`
-/

namespace A067834.P2156441149388506326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067834.P2156441149388506326

/-!
# A067835: Average order of an element in the symmetric group S_n rounded down.

The programs for A067835, there is no canonical definition to state claims against.
-/

/-! ## A067835.P2743120900116569581

`floor(A060014(n)/n!)`
-/

namespace A067835.P2743120900116569581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060014 n : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A067835.P2743120900116569581

/-! ## A067835.P10575442583844313307

`floor(A060014(n)/A000142(n))`
-/

namespace A067835.P10575442583844313307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060014 n : ℚ) / (A000142 n : ℚ)⌋

end

end A067835.P10575442583844313307

/-! ## A067835.P677581288709290451

`floor(A060014(n)/A230232(n))`
-/

namespace A067835.P677581288709290451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060014 n : ℚ) / (A230232 n : ℚ)⌋

end

end A067835.P677581288709290451

/-! ## A067835.P12009437382407278765

`floor(A060014(n)/A230233(n))`
-/

namespace A067835.P12009437382407278765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060014 n : ℚ) / (A230233 n : ℚ)⌋

end

end A067835.P12009437382407278765

/-! ## A067835.P2669580449204824359

`floor(A060014(n)/A104150(n+1))`
-/

namespace A067835.P2669580449204824359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060014 n : ℚ) / (A104150 (n + 1) : ℚ)⌋

end

end A067835.P2669580449204824359

/-!
# A067836: Let a(1)=2, f(n)=a(1)*a(2)*...*a(n-1) for n>=1 and a(n)=nextprime(f(n)+1)-f(n) for n>=2, where nextprime(x) is the smallest prime > x.

The programs for A067836, there is no canonical definition to state claims against.
-/

/-! ## A067836.P4992345148428937762

`A000040(A062894(n+1))`
-/

namespace A067836.P4992345148428937762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062894 (n + 1)).toNat

end

end A067836.P4992345148428937762

/-! ## A067836.P989553154873400126

`A008578(A062894(n+1)+1)`
-/

namespace A067836.P989553154873400126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A062894 (n + 1) + 1).toNat

end

end A067836.P989553154873400126

/-! ## A067836.P18286814458961575735

`A040976(A062894(n+1))+A020639(2*(n+1))`
-/

namespace A067836.P18286814458961575735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A062894 (n + 1)).toNat + A020639 (2 * (n + 1))

end

end A067836.P18286814458961575735

/-! ## A067836.P12143965570555719408

`A040976(A062894(n+1))+A000034(A005408(n))`
-/

namespace A067836.P12143965570555719408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A062894 (n + 1)).toNat + A000034 (A005408 n).toNat

end

end A067836.P12143965570555719408

/-! ## A067836.P14581670980896066889

`A040976(A062894(n+1))+A040001(A016825(n))`
-/

namespace A067836.P14581670980896066889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A062894 (n + 1)).toNat + A040001 (A016825 n).toNat

end

end A067836.P14581670980896066889

/-! ## A067836.P2050985266365884047

`A008864(A062894(n+1))-A000035(A109613(n))`
-/

namespace A067836.P2050985266365884047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A062894 (n + 1)).toNat - A000035 (A109613 n).toNat

end

end A067836.P2050985266365884047

/-! ## A067836.P7304268472628103654

`ratio[A071290(n+1)]`
-/

namespace A067836.P7304268472628103654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071290 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A067836.P7304268472628103654

/-! ## A067836.P17908215693796689361

`A071290(n+2)/A071290(n+1)`
-/

namespace A067836.P17908215693796689361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071290 (n + 2) : ℚ) / (A071290 (n + 1) : ℚ)

end

end A067836.P17908215693796689361

/-!
# A067838: Numbers n such that n and prime(n) end with the same two digits.

The programs for A067838, there is no canonical definition to state claims against.
-/

/-! ## A067838.P16715449289295915779

`A000720(A232102(n+1))`
-/

namespace A067838.P16715449289295915779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A232102 (n + 1)).toNat

end

end A067838.P16715449289295915779

/-! ## A067838.P12946352366379866349

`A061395(or(1, A232102(n+1)))`
-/

namespace A067838.P12946352366379866349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A232102 (n + 1))).toNat

end

end A067838.P12946352366379866349

/-! ## A067838.P8064054148186348573

`∑{d}[A232102(n+1), A061395(#)]`
-/

namespace A067838.P8064054148186348573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067838.P8064054148186348573

/-! ## A067838.P9988691233698960794

`A066328(or(1, A232102(n+1)))`
-/

namespace A067838.P9988691233698960794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A232102 (n + 1))).toNat

end

end A067838.P9988691233698960794

/-! ## A067838.P17859987556218070594

`A061395(2*A232102(n+1))`
-/

namespace A067838.P17859987556218070594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A232102 (n + 1)).toNat

end

end A067838.P17859987556218070594

/-!
# A067841: Numbers n such that n and prime(n) end with the same three digits.

The programs for A067841, there is no canonical definition to state claims against.
-/

/-! ## A067841.P2963486577090838835

`A000720(A232104(n+1))`
-/

namespace A067841.P2963486577090838835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A232104 (n + 1)).toNat

end

end A067841.P2963486577090838835

/-! ## A067841.P7554893337478603449

`A061395(or(1, A232104(n+1)))`
-/

namespace A067841.P7554893337478603449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A232104 (n + 1))).toNat

end

end A067841.P7554893337478603449

/-! ## A067841.P17531046810440520936

`∑{d}[A232104(n+1), A061395(#)]`
-/

namespace A067841.P17531046810440520936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067841.P17531046810440520936

/-!
# A067844: Numbers k such that k and 2^k end with the same digit.

The programs for A067844, the canonical program `A067844.P15021944009808777686` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067844 has offset 1).

The definition of A067844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067844.P10544814990735186519

`ogf((14+2x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A067844.P10544814990735186519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, 2, 4] [1, -1, -1, 1] n

end

end A067844.P10544814990735186519

namespace A067844

/-- `ogf((14+2x+4x^2)/(1-x-x^2+x^3))` -/
def P10544814990735186519.Spec : Prop :=
  ∀ n, P10544814990735186519.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P15021944009808777686

`10*(n+1)-4*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067844

/-- `10*(n+1)-4*(-1)^(n+1)` -/
def P15021944009808777686.Spec : Prop :=
  ∀ n, P15021944009808777686.a n = A067844 (n + 1)

theorem P15021944009808777686.correct : P15021944009808777686.Spec := by
  intro n
  simp only [A067844, Nat.add_sub_cancel]

end A067844

/-! ## A067844.P17672285474867614374

`a(n-2)+20` with `a(0)=14, a(1)=16`
-/

namespace A067844.P17672285474867614374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 16] fun n a =>
  a (n - 2) + 20

end

end A067844.P17672285474867614374

namespace A067844

/-- `a(n-2)+20` -/
def P17672285474867614374.Spec : Prop :=
  ∀ n, (P17672285474867614374.a n : ℤ) = A067844 (n + 1)

theorem P17672285474867614374.correct : P17672285474867614374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A067844, Nat.add_sub_cancel, A067844.P17672285474867614374.a, A067844.P15021944009808777686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A067844, Nat.add_sub_cancel, A067844.P17672285474867614374.a, A067844.P15021944009808777686.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A067844

/-! ## A067844.P13197684777133374763

`xor(2, xor(2, 10*n)+10)`
-/

namespace A067844.P13197684777133374763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor 2 (10 * n) + 10)

end

end A067844.P13197684777133374763

namespace A067844

/-- `xor(2, xor(2, 10*n)+10)` -/
def P13197684777133374763.Spec : Prop :=
  ∀ n, (P13197684777133374763.a n : ℤ) = A067844 (n + 1)

end A067844

/-! ## A067844.P7740628857786230152

`∑[20-a(n-1)]` with `a(0)=14, a(1)=2`
-/

namespace A067844.P7740628857786230152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [14, 2] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067844.P7740628857786230152

namespace A067844

/-- `∑[20-a(n-1)]` -/
def P7740628857786230152.Spec : Prop :=
  ∀ n, P7740628857786230152.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P14553010331025399192

`2*(or(7, 4*n)+n)`
-/

namespace A067844.P14553010331025399192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor 7 (4 * n) + n)

end

end A067844.P14553010331025399192

namespace A067844

/-- `2*(or(7, 4*n)+n)` -/
def P14553010331025399192.Spec : Prop :=
  ∀ n, (P14553010331025399192.a n : ℤ) = A067844 (n + 1)

end A067844

/-! ## A067844.P7862281944710806200

`2*(A168379(n+1)+n)`
-/

namespace A067844.P7862281944710806200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168379 (n + 1) + (n : ℤ))

end

end A067844.P7862281944710806200

namespace A067844

/-- `2*(A168379(n+1)+n)` -/
def P7862281944710806200.Spec : Prop :=
  ∀ n, P7862281944710806200.a n = A067844 (n + 1)

theorem P7862281944710806200.correct : P7862281944710806200.Spec := by
  intro n
  simp only [A067844, Nat.add_sub_cancel, A067844.P7862281944710806200.a, A067844.P15021944009808777686.a, A168379, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067844

/-! ## A067844.P1826809258757234004

`2*(xor(2, A016969(n))-n)`
-/

namespace A067844.P1826809258757234004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.xor 2 (A016969 n) - (n : ℤ))

end

end A067844.P1826809258757234004

namespace A067844

/-- `2*(xor(2, A016969(n))-n)` -/
def P1826809258757234004.Spec : Prop :=
  ∀ n, P1826809258757234004.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P2586780231676506685

`2*(A168384(n+1)+n+1)`
-/

namespace A067844.P2586780231676506685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168384 (n + 1) + (n + 1 : ℤ))

end

end A067844.P2586780231676506685

namespace A067844

/-- `2*(A168384(n+1)+n+1)` -/
def P2586780231676506685.Spec : Prop :=
  ∀ n, P2586780231676506685.a n = A067844 (n + 1)

theorem P2586780231676506685.correct : P2586780231676506685.Spec := by
  intro n
  simp only [A067844, Nat.add_sub_cancel, A067844.P2586780231676506685.a, A067844.P15021944009808777686.a, A168384, A168384.P15740479734118621784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067844

/-! ## A067844.P686080464408635762

`2*(A168392(n+1)+n+2)`
-/

namespace A067844.P686080464408635762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168392 (n + 1) + (n + 2 : ℤ))

end

end A067844.P686080464408635762

namespace A067844

/-- `2*(A168392(n+1)+n+2)` -/
def P686080464408635762.Spec : Prop :=
  ∀ n, P686080464408635762.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P6004602941457529007

`2*(A168398(n+1)+n+3)`
-/

namespace A067844.P6004602941457529007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168398 (n + 1) + (n + 3 : ℤ))

end

end A067844.P6004602941457529007

namespace A067844

/-- `2*(A168398(n+1)+n+3)` -/
def P6004602941457529007.Spec : Prop :=
  ∀ n, P6004602941457529007.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P6401303687989966799

`2*(A092242(n+1)-(n-2))`
-/

namespace A067844.P6401303687989966799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092242 (n + 1) - ((n : ℤ) - 2))

end

end A067844.P6401303687989966799

namespace A067844

/-- `2*(A092242(n+1)-(n-2))` -/
def P6401303687989966799.Spec : Prop :=
  ∀ n, P6401303687989966799.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P10273197240144669586

`2*(A004771(A004526(n))+n)`
-/

namespace A067844.P10273197240144669586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004771 (A004526 n).toNat + (n : ℤ))

end

end A067844.P10273197240144669586

namespace A067844

/-- `2*(A004771(A004526(n))+n)` -/
def P10273197240144669586.Spec : Prop :=
  ∀ n, P10273197240144669586.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P3967093497357752180

`2*(A004767(A109613(n))+n)`
-/

namespace A067844.P3967093497357752180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004767 (A109613 n).toNat + (n : ℤ))

end

end A067844.P3967093497357752180

namespace A067844

/-- `2*(A004767(A109613(n))+n)` -/
def P3967093497357752180.Spec : Prop :=
  ∀ n, P3967093497357752180.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P4294494089258358651

`2*(A133655(A008619(n))+n)`
-/

namespace A067844.P4294494089258358651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133655 (A008619 n).toNat + (n : ℤ))

end

end A067844.P4294494089258358651

namespace A067844

/-- `2*(A133655(A008619(n))+n)` -/
def P4294494089258358651.Spec : Prop :=
  ∀ n, P4294494089258358651.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P3577132707322617035

`2*(A176260(n)+A016885(n)-1)`
-/

namespace A067844.P3577132707322617035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A176260 n + A016885 n - 1)

end

end A067844.P3577132707322617035

namespace A067844

/-- `2*(A176260(n)+A016885(n)-1)` -/
def P3577132707322617035.Spec : Prop :=
  ∀ n, P3577132707322617035.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P3955960228900738640

`2*(A016789(n+1)+A004443(2*n))`
-/

namespace A067844.P3955960228900738640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016789 (n + 1) + A004443 (2 * n))

end

end A067844.P3955960228900738640

namespace A067844

/-- `2*(A016789(n+1)+A004443(2*n))` -/
def P3955960228900738640.Spec : Prop :=
  ∀ n, P3955960228900738640.a n = A067844 (n + 1)

end A067844

/-! ## A067844.P10919958883056709558

`∪[A017317(2*n+1), A017317(2*n+1)+2]`
-/

namespace A067844.P10919958883056709558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 (2 * n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067844.P10919958883056709558

namespace A067844

/-- `∪[A017317(2*n+1), A017317(2*n+1)+2]` -/
def P10919958883056709558.Spec : Prop :=
  ∀ n, (P10919958883056709558.a n : ℤ) = A067844 (n + 1)

end A067844

/-! ## A067844.P3830187000416396502

`∩[2*n, A349767(n+1)]`
-/

namespace A067844.P3830187000416396502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067844.P3830187000416396502

namespace A067844

/-- `∩[2*n, A349767(n+1)]` -/
def P3830187000416396502.Spec : Prop :=
  ∀ n, (P3830187000416396502.a n : ℤ) = A067844 (n + 1)

end A067844

/-! ## A067844.P15441818821190549423

`A090773(A014601(n+1))`
-/

namespace A067844.P15441818821190549423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (A014601 (n + 1)).toNat

end

end A067844.P15441818821190549423

namespace A067844

/-- `A090773(A014601(n+1))` -/
def P15441818821190549423.Spec : Prop :=
  ∀ n, P15441818821190549423.a n = A067844 (n + 1)

end A067844

/-!
# A067845: Largest n-digit pseudoprime (to base 2).

The programs for A067845, there is no canonical definition to state claims against.
-/

/-! ## A067845.P16849866814218453881

`A001567(A055550(n+3))`
-/

namespace A067845.P16849866814218453881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A055550 (n + 3)).toNat

end

end A067845.P16849866814218453881

/-!
# A067847: Number of divisors d of n! such that d+1 is prime.

The programs for A067847, there is no canonical definition to state claims against.
-/

/-! ## A067847.P18296962893152707547

`A003056(A018321(n+1)*A131708(n+1))`
-/

namespace A067847.P18296962893152707547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A018321 (n + 1) * A131708 (n + 1)).toNat

end

end A067847.P18296962893152707547

/-! ## A067847.P12365552009079334758

`A238886(A008740(n)+A000041(n))`
-/

namespace A067847.P12365552009079334758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A008740 n + A000041 n).toNat

end

end A067847.P12365552009079334758

/-! ## A067847.P10828137258981659048

`A188510(A121988(n))+A008337(n)`
-/

namespace A067847.P10828137258981659048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A121988 n).toNat + A008337 n

end

end A067847.P10828137258981659048

/-! ## A067847.P17525790989709161396

`A000070(n)-A001222(A177480(n))`
-/

namespace A067847.P17525790989709161396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A001222 (A177480 n).toNat

end

end A067847.P17525790989709161396

/-!
# A067848: prime(n)+1 divides prime(n^2)+1.

The programs for A067848, there is no canonical definition to state claims against.
-/

/-! ## A067848.P5533909208610701369

`A072451(A001147(n))+A004396(n)`
-/

namespace A067848.P5533909208610701369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A001147 n).toNat + A004396 n

end

end A067848.P5533909208610701369

/-! ## A067848.P5850118215773029088

`A072451(A001147(n))+A005206(n)`
-/

namespace A067848.P5850118215773029088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A001147 n).toNat + A005206 n

end

end A067848.P5850118215773029088

/-!
# A067849: a(n) = max{k: f(n),...,f^k(n) are prime}, where f(m) = 2m+1 and f^k denotes composition of f with itself k times.

The programs for A067849, there is no canonical definition to state claims against.
-/

/-! ## A067849.P194006290115330717

`A339579(2*(n+2))`
-/

namespace A067849.P194006290115330717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 2))

end

end A067849.P194006290115330717

/-! ## A067849.P10549769246258359073

`A339579(Δ[(n+1)²]+1)%83`
-/

namespace A067849.P10549769246258359073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339579 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) 83

end

end A067849.P10549769246258359073

/-! ## A067849.P8349939748113236801

`A063377(2*n+3)`
-/

namespace A067849.P8349939748113236801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (2 * n + 3)

end

end A067849.P8349939748113236801

/-! ## A067849.P1311044163031602047

`dr(A063377(Δ[(n+1)²]))`
-/

namespace A067849.P1311044163031602047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A063377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A067849.P1311044163031602047

/-! ## A067849.P8166612538141544445

`A063377(Δ[n²]+2)/gcd(n, n+1)`
-/

namespace A067849.P8166612538141544445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A067849.P8166612538141544445

/-! ## A067849.P17835296526541768205

`dr(A339579(Δ[A028387(n)]))`
-/

namespace A067849.P17835296526541768205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A339579 (f1 (n + 1) - f1 n).toNat)

end

end A067849.P17835296526541768205

/-! ## A067849.P10680813508372447622

`lcm(A033999(n), A063377(Δ[(n+1)²]))`
-/

namespace A067849.P10680813508372447622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A063377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A067849.P10680813508372447622

/-! ## A067849.P1887120319382567490

`A063377(Δ[(n+1)²])/A000010(C(2, n)!)`
-/

namespace A067849.P1887120319382567490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A067849.P1887120319382567490

/-! ## A067849.P15144124112151740763

`A063377(Δ[(n+1)²])/A008683(A005117(n+1))²`
-/

namespace A067849.P15144124112151740763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A067849.P15144124112151740763

/-!
# A067850: Highest power of 2 not exceeding n!.

The programs for A067850, the canonical program `A067850.P433127479858209906` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067850 has offset 0).

The definition of A067850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067850.P13324428315541757863

`floor(∑[log2(n+1)]-log2(n+1))`
-/

namespace A067850.P13324428315541757863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - Real.logb 2 (n + 1 : ℝ)⌋

end

end A067850.P13324428315541757863

namespace A067850

/-- `floor(∑[log2(n+1)]-log2(n+1))` -/
def P13324428315541757863.Spec : Prop :=
  ∀ n, P13324428315541757863.a n = A067850 n

end A067850

/-! ## A067850.P433127479858209906

`A072831(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067850

/-- `A072831(n)-1` -/
def P433127479858209906.Spec : Prop :=
  ∀ n, P433127479858209906.a n = A067850 n

theorem P433127479858209906.correct : P433127479858209906.Spec := by
  intro n
  simp only [A067850]

end A067850

/-! ## A067850.P9369165806688807161

`A011371(n)+A055529(n)-1`
-/

namespace A067850.P9369165806688807161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A055529 n - 1)

end

end A067850.P9369165806688807161

namespace A067850

/-- `A011371(n)+A055529(n)-1` -/
def P9369165806688807161.Spec : Prop :=
  ∀ n, P9369165806688807161.a n = A067850 n

theorem P9369165806688807161.correct : P9369165806688807161.Spec := by
  intro n
  simp only [A067850, Nat.add_sub_cancel, A067850.P9369165806688807161.a, A067850.P433127479858209906.a, A011371, A011371.P12398255777927387864.a, A055529, A055529.P12508370460568413740.a, A072831, A072831.P2075451572801131696.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067850

/-! ## A067850.P12740298012484061618

`A003070(n)+A130716(n)-1`
-/

namespace A067850.P12740298012484061618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n + (A130716 n - 1)

end

end A067850.P12740298012484061618

namespace A067850

/-- `A003070(n)+A130716(n)-1` -/
def P12740298012484061618.Spec : Prop :=
  ∀ n, P12740298012484061618.a n = A067850 n

end A067850

/-! ## A067850.P5145105632962121286

`A215415(ceil(1/(n+1)))+A072831(n)`
-/

namespace A067850.P5145105632962121286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215415 ⌈1 / (n + 1 : ℚ)⌉.toNat + A072831 n

end

end A067850.P5145105632962121286

namespace A067850

/-- `A215415(ceil(1/(n+1)))+A072831(n)` -/
def P5145105632962121286.Spec : Prop :=
  ∀ n, P5145105632962121286.a n = A067850 n

end A067850

/-! ## A067850.P14180069871085408189

`A078565(n)+A079584(n)-1`
-/

namespace A067850.P14180069871085408189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078565 n + (A079584 n - 1)

end

end A067850.P14180069871085408189

namespace A067850

/-- `A078565(n)+A079584(n)-1` -/
def P14180069871085408189.Spec : Prop :=
  ∀ n, P14180069871085408189.a n = A067850 n

end A067850

/-! ## A067850.P139272825411719513

`A023443(A072831(n))`
-/

namespace A067850.P139272825411719513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072831 n).toNat

end

end A067850.P139272825411719513

namespace A067850

/-- `A023443(A072831(n))` -/
def P139272825411719513.Spec : Prop :=
  ∀ n, P139272825411719513.a n = A067850 n

end A067850

/-! ## A067850.P7480077848022986582

`floor(log2(n!))`
-/

namespace A067850.P7480077848022986582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.factorial n)

end

end A067850.P7480077848022986582

namespace A067850

/-- `floor(log2(n!))` -/
def P7480077848022986582.Spec : Prop :=
  ∀ n, (P7480077848022986582.a n : ℤ) = A067850 n

end A067850

/-! ## A067850.P8418997249903525406

`floor(log(n!)/log(2))`
-/

namespace A067850.P8418997249903525406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Nat.factorial n : ℝ) / Real.log (2 : ℝ)⌋

end

end A067850.P8418997249903525406

namespace A067850

/-- `floor(log(n!)/log(2))` -/
def P8418997249903525406.Spec : Prop :=
  ∀ n, P8418997249903525406.a n = A067850 n

theorem P8418997249903525406.correct : P8418997249903525406.Spec := by
  intro n
  simp only [A067850, Nat.add_sub_cancel, A067850.P8418997249903525406.a, A067850.P433127479858209906.a, A072831, A072831.P2075451572801131696.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067850

/-! ## A067850.P5440278198115461841

`ceil(log2((n!+1)/2))`
-/

namespace A067850.P5440278198115461841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((Nat.factorial n + 1 : ℚ) / 2 : ℝ)⌉

end

end A067850.P5440278198115461841

namespace A067850

/-- `ceil(log2((n!+1)/2))` -/
def P5440278198115461841.Spec : Prop :=
  ∀ n, P5440278198115461841.a n = A067850 n

end A067850

/-!
# A067852: Numbers k that divide prime(k^2) - 1.

The programs for A067852, there is no canonical definition to state claims against.
-/

/-! ## A067852.P6594411013886324613

`record[gcd(n+1, A006093((n+1)²))]`
-/

namespace A067852.P6594411013886324613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006093 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067852.P6594411013886324613

/-! ## A067852.P14739529278560098432

`lt[A006005((n+1)²)%(n+1), 2]+1`
-/

namespace A067852.P14739529278560098432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 ((n + 1) ^ 2)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067852.P14739529278560098432

/-! ## A067852.P12467712361694473404

`eq[A000040((n+1)²)%(n+1), A057427(n)]+1`
-/

namespace A067852.P12467712361694473404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((n + 1) ^ 2)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067852.P12467712361694473404

/-! ## A067852.P18313011083647971546

`A161511(A349186(n+1))`
-/

namespace A067852.P18313011083647971546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A349186 (n + 1)).toNat

end

end A067852.P18313011083647971546

/-! ## A067852.P11285028508479462925

`A321211(A296517(n+3))-1`
-/

namespace A067852.P11285028508479462925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A296517 (n + 3)).toNat - 1

end

end A067852.P11285028508479462925

/-!
# A067853: Numbers k such that k divides prime(k^2)+1.

The programs for A067853, there is no canonical definition to state claims against.
-/

/-! ## A067853.P16641112152403669362

`record[gcd(n+1, A008864((n+1)²))]`
-/

namespace A067853.P16641112152403669362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008864 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067853.P16641112152403669362

/-! ## A067853.P3274493244762340131

`record[gcd(A028310(n), A028815(n²))]`
-/

namespace A067853.P3274493244762340131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A028815 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067853.P3274493244762340131

/-! ## A067853.P9509526588353282362

`record[gcd(A055670((n+1)²), A199343(n))]`
-/

namespace A067853.P9509526588353282362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 ((n + 1) ^ 2)) (A199343 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067853.P9509526588353282362

/-!
# A067854: a(n) = cardinality of the (ordered) list L_n defined inductively by: L_1 = {2}; if, reading from left to right, there is a member p of L_n such that prime(n+1) can be appended to the beginning or end of p so that their neighboring digits are equal, then append prime(n+1) to the beginning or end of p to obtain L_(n+1); otherwise, add prime(n+1) to the end of the list L_n to obtain L_(n+1).

The programs for A067854, there is no canonical definition to state claims against.
-/

/-! ## A067854.P1802348239818742711

`∑[A080339(A347664(∑{d}[n+1, #]))]`
-/

namespace A067854.P1802348239818742711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A347664 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067854.P1802348239818742711

/-! ## A067854.P8965878412539257218

`∑[A266300(A006950(A057163(n)))]`
-/

namespace A067854.P8965878412539257218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A006950 (A057163 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067854.P8965878412539257218

/-! ## A067854.P11325791771821939021

`∑[A051840(p?[A067850(n)])]`
-/

namespace A067854.P11325791771821939021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051840 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067854.P11325791771821939021

/-!
# A067855: Square of the Euclidean length of the vector of Littlewood-Richardson coefficients of Sum_{lambda |- n} s_lambda^2, where s_lambda are the symmetric Schur functions and the sum runs over all partitions lambda of n.

The programs for A067855, there is no canonical definition to state claims against.
-/

/-! ## A067855.P13436556294868851760

`A087010(A069007(n+1))`
-/

namespace A067855.P13436556294868851760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (A069007 (n + 1)).toNat

end

end A067855.P13436556294868851760

/-! ## A067855.P4812389970016594667

`A345927(n)+A345911(A007718(n))`
-/

namespace A067855.P4812389970016594667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n + A345911 (A007718 n).toNat

end

end A067855.P4812389970016594667

/-!
# A067856: Sum_{n >= 1} a(n)/n^s = 1/(Sum_{n >= 1} (-1)^(n + 1)/n^s).

The programs for A067856, the canonical program `A067856.P11218736261645060229` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067856 has offset 1).

The definition of A067856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067856.P10521679462897294187

`∑{d}[n+1, A327274(#)]`
-/

namespace A067856.P10521679462897294187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d

end

end A067856.P10521679462897294187

namespace A067856

/-- `∑{d}[n+1, A327274(#)]` -/
def P10521679462897294187.Spec : Prop :=
  ∀ n, P10521679462897294187.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P11304376546310861587

`A332793(n+1)/(n+1)`
-/

namespace A067856.P11304376546310861587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332793 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A067856.P11304376546310861587

namespace A067856

/-- `A332793(n+1)/(n+1)` -/
def P11304376546310861587.Spec : Prop :=
  ∀ n, P11304376546310861587.a n = (A067856 (n + 1) : ℚ)

end A067856

/-! ## A067856.P12821043462846908274

`A361987(n+1)%(n+2)`
-/

namespace A067856.P12821043462846908274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361987 (n + 1)) (n + 2 : ℤ)

end

end A067856.P12821043462846908274

namespace A067856

/-- `A361987(n+1)%(n+2)` -/
def P12821043462846908274.Spec : Prop :=
  ∀ n, P12821043462846908274.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P13456312155367897739

`∑{d}[n+1, A327268(#)]/(n+1)`
-/

namespace A067856.P13456312155367897739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A327268 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A067856.P13456312155367897739

namespace A067856

/-- `∑{d}[n+1, A327268(#)]/(n+1)` -/
def P13456312155367897739.Spec : Prop :=
  ∀ n, P13456312155367897739.a n = (A067856 (n + 1) : ℚ)

end A067856

/-! ## A067856.P11173110124790479174

`∑{d}[n+1, #*A327278((n+1)/#)]`
-/

namespace A067856.P11173110124790479174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P11173110124790479174

namespace A067856

/-- `∑{d}[n+1, #*A327278((n+1)/#)]` -/
def P11173110124790479174.Spec : Prop :=
  ∀ n, P11173110124790479174.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P13074638428448395707

`(n+1)/∏{p}[n+1, #]*A008683((n+1)/and(n+1, -(n+1)))`
-/

namespace A067856.P13074638428448395707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A067856.P13074638428448395707

namespace A067856

/-- `(n+1)/∏{p}[n+1, #]*A008683((n+1)/and(n+1, -(n+1)))` -/
def P13074638428448395707.Spec : Prop :=
  ∀ n, P13074638428448395707.a n = (A067856 (n + 1) : ℚ)

end A067856

/-! ## A067856.P12909378890215352878

`A003557(n+1)*A209635(n+1)`
-/

namespace A067856.P12909378890215352878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A209635 (n + 1)

end

end A067856.P12909378890215352878

namespace A067856

/-- `A003557(n+1)*A209635(n+1)` -/
def P12909378890215352878.Spec : Prop :=
  ∀ n, P12909378890215352878.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P7056021056378789337

`A160467(n+1)*A209635(n+1)`
-/

namespace A067856.P7056021056378789337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A209635 (n + 1)

end

end A067856.P7056021056378789337

namespace A067856

/-- `A160467(n+1)*A209635(n+1)` -/
def P7056021056378789337.Spec : Prop :=
  ∀ n, P7056021056378789337.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P9418129862274658212

`A162510(n+1)*A209635(n+1)`
-/

namespace A067856.P9418129862274658212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1) * A209635 (n + 1)

end

end A067856.P9418129862274658212

namespace A067856

/-- `A162510(n+1)*A209635(n+1)` -/
def P9418129862274658212.Spec : Prop :=
  ∀ n, P9418129862274658212.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P11304344675573754286

`A209635(n+1)*A292589(n+1)`
-/

namespace A067856.P11304344675573754286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A292589 (n + 1)

end

end A067856.P11304344675573754286

namespace A067856

/-- `A209635(n+1)*A292589(n+1)` -/
def P11304344675573754286.Spec : Prop :=
  ∀ n, P11304344675573754286.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P9209267118288689612

`A209635(n+1)*A348037(n+1)`
-/

namespace A067856.P9209267118288689612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A348037 (n + 1)

end

end A067856.P9209267118288689612

namespace A067856

/-- `A209635(n+1)*A348037(n+1)` -/
def P9209267118288689612.Spec : Prop :=
  ∀ n, P9209267118288689612.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P16662555660708829455

`A209635(n+1)*A380160(n+1)`
-/

namespace A067856.P16662555660708829455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A380160 (n + 1)

end

end A067856.P16662555660708829455

namespace A067856

/-- `A209635(n+1)*A380160(n+1)` -/
def P16662555660708829455.Spec : Prop :=
  ∀ n, P16662555660708829455.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P2557606787634860926

`A209635(n+1)*A396938(n+1)`
-/

namespace A067856.P2557606787634860926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A396938 (n + 1)

end

end A067856.P2557606787634860926

namespace A067856

/-- `A209635(n+1)*A396938(n+1)` -/
def P2557606787634860926.Spec : Prop :=
  ∀ n, P2557606787634860926.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P759807215240486465

`A361987(n+1)/A000290(n+1)`
-/

namespace A067856.P759807215240486465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361987 (n + 1) : ℚ) / (A000290 (n + 1) : ℚ)

end

end A067856.P759807215240486465

namespace A067856

/-- `A361987(n+1)/A000290(n+1)` -/
def P759807215240486465.Spec : Prop :=
  ∀ n, P759807215240486465.a n = (A067856 (n + 1) : ℚ)

end A067856

/-! ## A067856.P11218736261645060229

`∑{d}[n+1, A007427(#)*A038712((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067856

/-- `∑{d}[n+1, A007427(#)*A038712((n+1)/#)]` -/
def P11218736261645060229.Spec : Prop :=
  ∀ n, P11218736261645060229.a n = A067856 (n + 1)

theorem P11218736261645060229.correct : P11218736261645060229.Spec := by
  intro n
  simp only [A067856, Nat.add_sub_cancel]

end A067856

/-! ## A067856.P8360165444203092248

`∑{d}[n+1, A008683(#)*A048298((n+1)/#)]`
-/

namespace A067856.P8360165444203092248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P8360165444203092248

namespace A067856

/-- `∑{d}[n+1, A008683(#)*A048298((n+1)/#)]` -/
def P8360165444203092248.Spec : Prop :=
  ∀ n, P8360165444203092248.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P14420298380649207997

`∑{d}[n+1, A046692(#)*A091512((n+1)/#)]`
-/

namespace A067856.P14420298380649207997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P14420298380649207997

namespace A067856

/-- `∑{d}[n+1, A046692(#)*A091512((n+1)/#)]` -/
def P14420298380649207997.Spec : Prop :=
  ∀ n, P14420298380649207997.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P16906015776115158689

`∑{d}[n+1, A053822(#)*A091519((n+1)/#)]`
-/

namespace A067856.P16906015776115158689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A091519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P16906015776115158689

namespace A067856

/-- `∑{d}[n+1, A053822(#)*A091519((n+1)/#)]` -/
def P16906015776115158689.Spec : Prop :=
  ∀ n, P16906015776115158689.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P15914774765695006426

`∑{d}[n+1, A055975(#)*A120630((n+1)/#)]`
-/

namespace A067856.P15914774765695006426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P15914774765695006426

namespace A067856

/-- `∑{d}[n+1, A055975(#)*A120630((n+1)/#)]` -/
def P15914774765695006426.Spec : Prop :=
  ∀ n, P15914774765695006426.a n = A067856 (n + 1)

end A067856

/-! ## A067856.P1545938844917917275

`∑{d}[n+1, A055615(#)*A162728((n+1)/#)]`
-/

namespace A067856.P1545938844917917275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P1545938844917917275

namespace A067856

/-- `∑{d}[n+1, A055615(#)*A162728((n+1)/#)]` -/
def P1545938844917917275.Spec : Prop :=
  ∀ n, P1545938844917917275.a n = A067856 (n + 1)

end A067856

/-!
# A067857: Sum_{k|n} a(k)/k! = Sum_{j=1 to n} 1/j, sum on left is over positive divisors k of n.

The programs for A067857, there is no canonical definition to state claims against.
-/

/-! ## A067857.P12503535694787980269

`A274709(∑[or(1, n)²])`
-/

namespace A067857.P12503535694787980269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067857.P12503535694787980269

/-!
# A067858: J_n(n), where J is the Jordan function, J_n(n) = n^n product{p|n}(1 - 1/p^n), the product is over the distinct primes, p, dividing n.

The programs for A067858, there is no canonical definition to state claims against.
-/

/-! ## A067858.P4369235906789768083

`∑{d}[n+1, A008683((n+1)/#)*#^(n+1)]`
-/

namespace A067858.P4369235906789768083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ (n + 1) : ℤ)

end

end A067858.P4369235906789768083

/-! ## A067858.P16773055643523377497

`Δ[A002088(n)]*A344210(n+1)`
-/

namespace A067858.P16773055643523377497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A344210 (n + 1)

end

end A067858.P16773055643523377497

/-! ## A067858.P14210267820290465122

`Δ[A005728(n)]*A344210(n+1)`
-/

namespace A067858.P14210267820290465122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A344210 (n + 1)

end

end A067858.P14210267820290465122

/-! ## A067858.P9090507689360598416

`A000010(n+1)*A344210(n+1)`
-/

namespace A067858.P9090507689360598416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A344210 (n + 1)

end

end A067858.P9090507689360598416

/-! ## A067858.P14969526275950383539

`(A039649(n+1)-1)*A344210(n+1)`
-/

namespace A067858.P14969526275950383539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A344210 (n + 1)

end

end A067858.P14969526275950383539

/-!
# A067859: a(1) = 1; a(n+1) = floor(sqrt(Sum_{k=1..n} a(k)^2)).

The programs for A067859, the canonical program `A067859.P15803946867159928236` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067859 has offset 1).

The definition of A067859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067859.P15803946867159928236

`sqrt(A061886(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067859

/-- `sqrt(A061886(n))` -/
def P15803946867159928236.Spec : Prop :=
  ∀ n, P15803946867159928236.a n = (A067859 (n + 1) : ℝ)

end A067859

/-! ## A067859.P2879447185772885876

`root(A061886(gcd(n, 2*n)), 2)`
-/

namespace A067859.P2879447185772885876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061886 (Nat.gcd n (2 * n)) : ℝ) ^ (1 / (2 : ℝ))

end

end A067859.P2879447185772885876

namespace A067859

/-- `root(A061886(gcd(n, 2*n)), 2)` -/
def P2879447185772885876.Spec : Prop :=
  ∀ n, P2879447185772885876.a n = (A067859 (n + 1) : ℝ)

end A067859

/-! ## A067859.P8698750055767380184

`root(A061886(n), A020639(2*(n+1)))`
-/

namespace A067859.P8698750055767380184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061886 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A067859.P8698750055767380184

namespace A067859

/-- `root(A061886(n), A020639(2*(n+1)))` -/
def P8698750055767380184.Spec : Prop :=
  ∀ n, P8698750055767380184.a n = (A067859 (n + 1) : ℝ)

end A067859

/-! ## A067859.P3988054036532725010

`round(sqrt(A060984(n+1)/2))`
-/

namespace A067859.P3988054036532725010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A060984 (n + 1) : ℚ) / 2 : ℝ))

end

end A067859.P3988054036532725010

namespace A067859

/-- `round(sqrt(A060984(n+1)/2))` -/
def P3988054036532725010.Spec : Prop :=
  ∀ n, P3988054036532725010.a n = A067859 (n + 1)

end A067859

/-!
# A067860: Primes which are the concatenation of numbers n_1, n_2, n_3, in that order, with n_1 + n_2 = n_3 (leading zeros are forbidden for nonzero n_i).

The programs for A067860, there is no canonical definition to state claims against.
-/

/-! ## A067860.P12631546302148843326

`p?[A398649(n+1)]`
-/

namespace A067860.P12631546302148843326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067860.P12631546302148843326

/-! ## A067860.P3188634017381179979

`filter[A398649(n+1), A010051(#)]`
-/

namespace A067860.P3188634017381179979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067860.P3188634017381179979

/-! ## A067860.P11673569378253879227

`filter[A398649(n+1), A302777(#)]`
-/

namespace A067860.P11673569378253879227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A067860.P11673569378253879227

/-! ## A067860.P3228128580415367688

`filter[A398649(n+1), A323152(#)]`
-/

namespace A067860.P3228128580415367688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A067860.P3228128580415367688

/-! ## A067860.P299510661782022779

`filter[A398649(n+1), A323153(#)]`
-/

namespace A067860.P299510661782022779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A067860.P299510661782022779

/-! ## A067860.P13963740964800466501

`filter[A398649(n+1), A351957(#)]`
-/

namespace A067860.P13963740964800466501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A067860.P13963740964800466501

/-!
# A067861: n is prime and is the concatenation of numbers n_1, n_2, n_3, in that order, with n_1 - n_2 = n_3. (Do not allow leading zeros for nonzero n_i.)

The programs for A067861, there is no canonical definition to state claims against.
-/

/-! ## A067861.P14987908537033128749

`record[p?[A398566(n+1)]]`
-/

namespace A067861.P14987908537033128749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398566 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067861.P14987908537033128749

/-! ## A067861.P3260384789749789744

`filter[A398566(n+1), A010055(#)]`
-/

namespace A067861.P3260384789749789744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A067861.P3260384789749789744

/-! ## A067861.P9716516889651285907

`filter[A398566(n+1), A080339(#)]`
-/

namespace A067861.P9716516889651285907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A067861.P9716516889651285907

/-! ## A067861.P8150522267805665957

`filter[A398566(n+1), A080545(#)]`
-/

namespace A067861.P8150522267805665957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A067861.P8150522267805665957

/-! ## A067861.P5153517326593875954

`filter[A398566(n+1), A171387(#)]`
-/

namespace A067861.P5153517326593875954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A067861.P5153517326593875954

/-!
# A067862: Numbers k that divide the sum of digits of 3^k.

The programs for A067862, there is no canonical definition to state claims against.
-/

/-! ## A067862.P865744492979210687

`record[gcd(n, A004166(n))]`
-/

namespace A067862.P865744492979210687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067862.P865744492979210687

/-! ## A067862.P1697343291386081326

`eq[0, A175435(n+1)]+1`
-/

namespace A067862.P1697343291386081326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067862.P1697343291386081326

/-! ## A067862.P4204352314702601783

`record[gcd(A000027(n+1), A175435(n+1))]`
-/

namespace A067862.P4204352314702601783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A175435 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067862.P4204352314702601783

/-! ## A067862.P10595167652177634033

`eq[A000007(n), A175435(A028310(n))]`
-/

namespace A067862.P10595167652177634033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175435 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067862.P10595167652177634033

/-! ## A067862.P15061595826981470628

`eq[A000038(n), A175435(A028310(n))]`
-/

namespace A067862.P15061595826981470628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175435 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067862.P15061595826981470628

/-!
# A067863: Numbers k such that k divides the sum of digits of 7^k.

The programs for A067863, there is no canonical definition to state claims against.
-/

/-! ## A067863.P12342855535961361961

`eq[n, gcd(n, A066003(n))]`
-/

namespace A067863.P12342855535961361961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A066003 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067863.P12342855535961361961

/-! ## A067863.P11580683913937802615

`eq[0, A175512(n+1)]+1`
-/

namespace A067863.P11580683913937802615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067863.P11580683913937802615

/-! ## A067863.P2861948048851885894

`eq[n, A054576(A066003(n))]`
-/

namespace A067863.P2861948048851885894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067863.P2861948048851885894

/-!
# A067865: Numbers n such that n and 2^n end with the same two digits.

The programs for A067865, the canonical program `A067865.P1301235183405699491` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067865 has offset 1).

The definition of A067865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067865.P1301235183405699491

`36+100*n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067865

/-- `36+100*n` -/
def P1301235183405699491.Spec : Prop :=
  ∀ n, (P1301235183405699491.a n : ℤ) = A067865 (n + 1)

theorem P1301235183405699491.correct : P1301235183405699491.Spec := by
  intro n
  simp only [A067865, Nat.add_sub_cancel]

end A067865

/-!
# A067866: Numbers n such that n and 2^n end with the same three digits.

The programs for A067866, the canonical program `A067866.P7326673974600323700` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067866 has offset 1).

The definition of A067866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067866.P7326673974600323700

`736+1000*n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067866

/-- `736+1000*n` -/
def P7326673974600323700.Spec : Prop :=
  ∀ n, (P7326673974600323700.a n : ℤ) = A067866 (n + 1)

theorem P7326673974600323700.correct : P7326673974600323700.Spec := by
  intro n
  simp only [A067866, Nat.add_sub_cancel]

end A067866

/-!
# A067867: Numbers n such that n and 2^n end with the same 4 digits.

The programs for A067867, the canonical program `A067867.P15646068572859364086` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067867 has offset 1).

The definition of A067867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067867.P15646068572859364086

`A067866(A017377(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067867

/-- `A067866(A017377(n))` -/
def P15646068572859364086.Spec : Prop :=
  ∀ n, P15646068572859364086.a n = A067867 (n + 1)

theorem P15646068572859364086.correct : P15646068572859364086.Spec := by
  intro n
  simp only [A067867, Nat.add_sub_cancel]

end A067867

/-!
# A067868: a(n) = a(n-1) + a(floor(n/2))^2 for n > 0, a(0) = 1.

The programs for A067868, the canonical program `A067868.P2949719373633979561` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067868 has offset 0).

The definition of A067868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(n/2))²` (program `A067868.P2949719373633979561`, by `A067868.P2949719373633979561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067868.P2949719373633979561

`a(n-1)+a(floor(n/2))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067868

/-- `a(n-1)+a(floor(n/2))²` -/
def P2949719373633979561.Spec : Prop :=
  ∀ n, (P2949719373633979561.a n : ℤ) = A067868 n

theorem P2949719373633979561.correct : P2949719373633979561.Spec := by
  intro n
  simp only [A067868]

end A067868

/-! ## A067868.P8817714067333454307

`a(floor(n/2))²-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A067868.P8817714067333454307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat ^ 2 - (-a (n - 1))

end

end A067868.P8817714067333454307

namespace A067868

/-- `a(floor(n/2))²-floor(-a(n-1))` -/
def P8817714067333454307.Spec : Prop :=
  ∀ n, P8817714067333454307.a n = A067868 n

end A067868

/-! ## A067868.P14758190216539689268

`a(n-1)+a(A123108(n))^2` with `a(0)=1`
-/

namespace A067868.P14758190216539689268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A123108 n).toNat ^ 2

end

end A067868.P14758190216539689268

namespace A067868

/-- `a(n-1)+a(A123108(n))^2` -/
def P14758190216539689268.Spec : Prop :=
  ∀ n, (P14758190216539689268.a n : ℤ) = A067868 n

end A067868

/-! ## A067868.P2994215586747539953

`a(n-1)+abs(a(A004526(n)))²` with `a(0)=1`
-/

namespace A067868.P2994215586747539953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A004526 n).toNat ^ 2

end

end A067868.P2994215586747539953

namespace A067868

/-- `a(n-1)+abs(a(A004526(n)))²` -/
def P2994215586747539953.Spec : Prop :=
  ∀ n, (P2994215586747539953.a n : ℤ) = A067868 n

end A067868

/-! ## A067868.P3926311916610808817

`A000290(a(floor(n/2)))+a(n-1)` with `a(0)=1`
-/

namespace A067868.P3926311916610808817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + a (n - 1)

end

end A067868.P3926311916610808817

namespace A067868

/-- `A000290(a(floor(n/2)))+a(n-1)` -/
def P3926311916610808817.Spec : Prop :=
  ∀ n, P3926311916610808817.a n = A067868 n

end A067868

/-!
# A067869: Numbers n such that n and 2^n end with the same 5 digits.

The programs for A067869, the canonical program `A067869.P4129813629611928479` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067869 has offset 1).

The definition of A067869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067869.P4129813629611928479

`A067867(5*(2*n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067869

/-- `A067867(5*(2*n+1))` -/
def P4129813629611928479.Spec : Prop :=
  ∀ n, P4129813629611928479.a n = A067869 (n + 1)

theorem P4129813629611928479.correct : P4129813629611928479.Spec := by
  intro n
  simp only [A067869, Nat.add_sub_cancel]

end A067869

/-!
# A067870: Numbers k such that k and 3^k end with the same digit.

The programs for A067870, the canonical program `A067870.P964946976463771286` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067870 has offset 1).

The definition of A067870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067870.P964946976463771286

`20*n-a(n-1)` with `a(0)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067870

/-- `20*n-a(n-1)` -/
def P964946976463771286.Spec : Prop :=
  ∀ n, P964946976463771286.a n = A067870 (n + 1)

theorem P964946976463771286.correct : P964946976463771286.Spec := by
  intro n
  simp only [A067870, Nat.add_sub_cancel]

end A067870

/-! ## A067870.P8627732719433184664

`ogf((7+6x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A067870.P8627732719433184664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 6, 7] [1, -1, -1, 1] n

end

end A067870.P8627732719433184664

namespace A067870

/-- `ogf((7+6x+7x^2)/(1-x-x^2+x^3))` -/
def P8627732719433184664.Spec : Prop :=
  ∀ n, P8627732719433184664.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P17650244533385671552

`(5*(2*(n+1)-1)*(-1)^(n+1)-2)*(-1)^(n+1)`
-/

namespace A067870.P17650244533385671552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) - 2) * (-1) ^ (n + 1)

end

end A067870.P17650244533385671552

namespace A067870

/-- `(5*(2*(n+1)-1)*(-1)^(n+1)-2)*(-1)^(n+1)` -/
def P17650244533385671552.Spec : Prop :=
  ∀ n, P17650244533385671552.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P15499152103942908166

`xor(2, 10*n+5)`
-/

namespace A067870.P15499152103942908166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (10 * n + 5)

end

end A067870.P15499152103942908166

namespace A067870

/-- `xor(2, 10*n+5)` -/
def P15499152103942908166.Spec : Prop :=
  ∀ n, (P15499152103942908166.a n : ℤ) = A067870 (n + 1)

end A067870

/-! ## A067870.P7034100841632197603

`a(n-2)+20` with `a(0)=7, a(1)=13`
-/

namespace A067870.P7034100841632197603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 13] fun n a =>
  a (n - 2) + 20

end

end A067870.P7034100841632197603

namespace A067870

/-- `a(n-2)+20` -/
def P7034100841632197603.Spec : Prop :=
  ∀ n, (P7034100841632197603.a n : ℤ) = A067870 (n + 1)

end A067870

/-! ## A067870.P2343156767585654843

`3-xor(10*n, -4)`
-/

namespace A067870.P2343156767585654843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor (10 * n : ℤ) (-4)

end

end A067870.P2343156767585654843

namespace A067870

/-- `3-xor(10*n, -4)` -/
def P2343156767585654843.Spec : Prop :=
  ∀ n, P2343156767585654843.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P4859022898728445728

`∑[lcm(2, a(n-2))]` with `a(0)=7, a(1)=6`
-/

namespace A067870.P4859022898728445728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067870.P4859022898728445728

namespace A067870

/-- `∑[lcm(2, a(n-2))]` -/
def P4859022898728445728.Spec : Prop :=
  ∀ n, (P4859022898728445728.a n : ℤ) = A067870 (n + 1)

end A067870

/-! ## A067870.P1879424334536876647

`∑[20-a(n-1)]` with `a(0)=7, a(1)=6`
-/

namespace A067870.P1879424334536876647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067870.P1879424334536876647

namespace A067870

/-- `∑[20-a(n-1)]` -/
def P1879424334536876647.Spec : Prop :=
  ∀ n, P1879424334536876647.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P7049775993843086050

`or(7, 12*n)-2*n`
-/

namespace A067870.P7049775993843086050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 7 (12 * n) : ℤ) - (2 * n : ℤ)

end

end A067870.P7049775993843086050

namespace A067870

/-- `or(7, 12*n)-2*n` -/
def P7049775993843086050.Spec : Prop :=
  ∀ n, P7049775993843086050.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P11271930963830867568

`Δ[xor(1, 5*(n²-1))]`
-/

namespace A067870.P11271930963830867568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * ((n ^ 2 : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067870.P11271930963830867568

namespace A067870

/-- `Δ[xor(1, 5*(n²-1))]` -/
def P11271930963830867568.Spec : Prop :=
  ∀ n, P11271930963830867568.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P7167013356476752276

`∑[∑[ogf((7+6x+7x^2)/(1+x))]]`
-/

namespace A067870.P7167013356476752276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 6, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067870.P7167013356476752276

namespace A067870

/-- `∑[∑[ogf((7+6x+7x^2)/(1+x))]]` -/
def P7167013356476752276.Spec : Prop :=
  ∀ n, P7167013356476752276.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P16178008515225217759

`xor(2, -(2-n)²)+(n+3)²`
-/

namespace A067870.P16178008515225217759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (-((2 - (n : ℤ)) ^ 2)) + ((n + 3) ^ 2 : ℤ)

end

end A067870.P16178008515225217759

namespace A067870

/-- `xor(2, -(2-n)²)+(n+3)²` -/
def P16178008515225217759.Spec : Prop :=
  ∀ n, P16178008515225217759.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P1153531582428506231

`2*(3*n+2*or(1, n)+1)+1`
-/

namespace A067870.P1153531582428506231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * n + 2 * Nat.lor 1 n + 1) + 1

end

end A067870.P1153531582428506231

namespace A067870

/-- `2*(3*n+2*or(1, n)+1)+1` -/
def P1153531582428506231.Spec : Prop :=
  ∀ n, (P1153531582428506231.a n : ℤ) = A067870 (n + 1)

end A067870

/-! ## A067870.P12445052175491976937

`Δ[2*and(1, n)+(2*n)²]+2*n+1`
-/

namespace A067870.P12445052175491976937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)

end

end A067870.P12445052175491976937

namespace A067870

/-- `Δ[2*and(1, n)+(2*n)²]+2*n+1` -/
def P12445052175491976937.Spec : Prop :=
  ∀ n, P12445052175491976937.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P15506219340837871909

`2*eq[n-3, and(n+1, n-2)]+2*n+1`
-/

namespace A067870.P15506219340837871909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (2 * n + 1)

end

end A067870.P15506219340837871909

namespace A067870

/-- `2*eq[n-3, and(n+1, n-2)]+2*n+1` -/
def P15506219340837871909.Spec : Prop :=
  ∀ n, (P15506219340837871909.a n : ℤ) = A067870 (n + 1)

end A067870

/-! ## A067870.P6324555643141419763

`∑[A010146(2*n)]`
-/

namespace A067870.P6324555643141419763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067870.P6324555643141419763

namespace A067870

/-- `∑[A010146(2*n)]` -/
def P6324555643141419763.Spec : Prop :=
  ∀ n, P6324555643141419763.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P9108471856935320161

`∑[A040032(n)+2]-1`
-/

namespace A067870.P9108471856935320161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A067870.P9108471856935320161

namespace A067870

/-- `∑[A040032(n)+2]-1` -/
def P9108471856935320161.Spec : Prop :=
  ∀ n, P9108471856935320161.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P12227172543951857180

`∑[A040057(n)-2]+1`
-/

namespace A067870.P12227172543951857180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A067870.P12227172543951857180

namespace A067870

/-- `∑[A040057(n)-2]+1` -/
def P12227172543951857180.Spec : Prop :=
  ∀ n, P12227172543951857180.a n = A067870 (n + 1)

end A067870

/-! ## A067870.P11686030663263982672

`2*A271508(n+1)+5`
-/

namespace A067870.P11686030663263982672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271508 (n + 1) + 5

end

end A067870.P11686030663263982672

namespace A067870

/-- `2*A271508(n+1)+5` -/
def P11686030663263982672.Spec : Prop :=
  ∀ n, P11686030663263982672.a n = A067870 (n + 1)

theorem P11686030663263982672.correct : P11686030663263982672.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A067870, Nat.add_sub_cancel, A067870.P11686030663263982672.a, A067870.P964946976463771286.a, A271508, A271508.P4197208334142237378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A067870, Nat.add_sub_cancel, A067870.P11686030663263982672.a, A067870.P964946976463771286.a, A271508, A271508.P4197208334142237378.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A067870

/-! ## A067870.P11286577394446580507

`A165754(n)+A017209(n)`
-/

namespace A067870.P11286577394446580507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n + A017209 n

end

end A067870.P11286577394446580507

namespace A067870

/-- `A165754(n)+A017209(n)` -/
def P11286577394446580507.Spec : Prop :=
  ∀ n, P11286577394446580507.a n = A067870 (n + 1)

theorem P11286577394446580507.correct : P11286577394446580507.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A067870, Nat.add_sub_cancel, A067870.P11286577394446580507.a, A067870.P964946976463771286.a, A017209, A017209.P14094936957545695605.a, A165754, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A067870, Nat.add_sub_cancel, A067870.P11286577394446580507.a, A067870.P964946976463771286.a, A017209, A017209.P14094936957545695605.a, A165754, A165754.P17957295106225998984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A067870

/-!
# A067871: Number of primes between consecutive terms of A246547 (prime powers p^k, k >= 2).

The programs for A067871, the canonical program `A067871.P8295475733049076195` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067871 has offset 1).

The definition of A067871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2066 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067871.P7425522136109651218

`A000720(A025475(n+3))-A000720(A025475(n+2))`
-/

namespace A067871.P7425522136109651218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025475 (n + 3)).toNat - A000720 (A025475 (n + 2)).toNat

end

end A067871.P7425522136109651218

namespace A067871

/-- `A000720(A025475(n+3))-A000720(A025475(n+2))` -/
def P7425522136109651218.Spec : Prop :=
  ∀ n, P7425522136109651218.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P8295475733049076195

`Δ[A024621(n+2)]-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A067871

/-- `Δ[A024621(n+2)]-1` -/
def P8295475733049076195.Spec : Prop :=
  ∀ n, P8295475733049076195.a n = A067871 (n + 1)

theorem P8295475733049076195.correct : P8295475733049076195.Spec := by
  intro n
  simp only [A067871, Nat.add_sub_cancel]

end A067871

/-! ## A067871.P12799957761459002153

`Δ[A024621(n+2)+A024000(n)]`
-/

namespace A067871.P12799957761459002153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024621 (n + 2) + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P12799957761459002153

namespace A067871

/-- `Δ[A024621(n+2)+A024000(n)]` -/
def P12799957761459002153.Spec : Prop :=
  ∀ n, P12799957761459002153.a n = A067871 (n + 1)

theorem P12799957761459002153.correct : P12799957761459002153.Spec := by
  intro n
  simp only [A067871, Nat.add_sub_cancel, A067871.P12799957761459002153.f1, A067871.P12799957761459002153.a, A067871.P8295475733049076195.f1, A067871.P8295475733049076195.a, A024000, A024000.P8748414335487061084.a, A024621, A024621.P362642709142674252.f1, A024621.P362642709142674252.f2, A024621.P362642709142674252.a, A025473, A025473.P8571811305423406731.a, A162698, A162698.P11578367711029287286.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067871

/-! ## A067871.P12853015218980736583

`A280193(2*n+1)+Δ[A024621(n+2)]`
-/

namespace A067871.P12853015218980736583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A067871.P12853015218980736583

namespace A067871

/-- `A280193(2*n+1)+Δ[A024621(n+2)]` -/
def P12853015218980736583.Spec : Prop :=
  ∀ n, P12853015218980736583.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P12591260152573374943

`A008836(A000040(n+1))+Δ[A024621(n+2)]`
-/

namespace A067871.P12591260152573374943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000040 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A067871.P12591260152573374943

namespace A067871

/-- `A008836(A000040(n+1))+Δ[A024621(n+2)]` -/
def P12591260152573374943.Spec : Prop :=
  ∀ n, P12591260152573374943.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P7269964118136643880

`A023443(Δ[A024621(n+2)])`
-/

namespace A067871.P7269964118136643880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A067871.P7269964118136643880

namespace A067871

/-- `A023443(Δ[A024621(n+2)])` -/
def P7269964118136643880.Spec : Prop :=
  ∀ n, P7269964118136643880.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P1605591513797512332

`Δ[A000720(A060845(n+1))]`
-/

namespace A067871.P1605591513797512332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P1605591513797512332

namespace A067871

/-- `Δ[A000720(A060845(n+1))]` -/
def P1605591513797512332.Spec : Prop :=
  ∀ n, P1605591513797512332.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P13368800350468493947

`Δ[A000720(A134612(n+1))]`
-/

namespace A067871.P13368800350468493947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P13368800350468493947

namespace A067871

/-- `Δ[A000720(A134612(n+1))]` -/
def P13368800350468493947.Spec : Prop :=
  ∀ n, P13368800350468493947.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P2790673243739063627

`Δ[A000720(A025475(n+2))]`
-/

namespace A067871.P2790673243739063627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025475 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P2790673243739063627

namespace A067871

/-- `Δ[A000720(A025475(n+2))]` -/
def P2790673243739063627.Spec : Prop :=
  ∀ n, P2790673243739063627.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P11806952693097682901

`Δ[A000720(A249435(n+2))]`
-/

namespace A067871.P11806952693097682901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A249435 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P11806952693097682901

namespace A067871

/-- `Δ[A000720(A249435(n+2))]` -/
def P11806952693097682901.Spec : Prop :=
  ∀ n, P11806952693097682901.a n = A067871 (n + 1)

end A067871

/-! ## A067871.P15734560201317421360

`Δ[A000720(∑[A053707(n+1)])]`
-/

namespace A067871.P15734560201317421360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067871.P15734560201317421360

namespace A067871

/-- `Δ[A000720(∑[A053707(n+1)])]` -/
def P15734560201317421360.Spec : Prop :=
  ∀ n, P15734560201317421360.a n = A067871 (n + 1)

end A067871

/-!
# A067872: Least m > 0 for which m*n^2 + 1 is a square.

The programs for A067872, there is no canonical definition to state claims against.
-/

/-! ## A067872.P10276595922762726099

`A076942((n+1)²)`
-/

namespace A067872.P10276595922762726099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 ((n + 1) ^ 2)

end

end A067872.P10276595922762726099

/-! ## A067872.P16261985591393800127

`or(char[2], A076942((n+1)^2))`
-/

namespace A067872.P16261985591393800127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A076942 ((n + 1) ^ 2))

end

end A067872.P16261985591393800127

/-! ## A067872.P4319003109110418354

`xor(1, xor(1, A076942(record[(1-n)²])))`
-/

namespace A067872.P4319003109110418354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A076942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat))

end

end A067872.P4319003109110418354

/-! ## A067872.P11366949460769191435

`(A061369((n+1)²)-1)/(n+1)²`
-/

namespace A067872.P11366949460769191435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061369 ((n + 1) ^ 2) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A067872.P11366949460769191435

/-! ## A067872.P6230376279888660435

`A000027(A076942(xor(n, -1)²))`
-/

namespace A067872.P6230376279888660435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A076942 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A067872.P6230376279888660435

/-! ## A067872.P13199799535455786168

`A028310(A076942(record[(1-n)²]))`
-/

namespace A067872.P13199799535455786168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A076942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A067872.P13199799535455786168

/-! ## A067872.P4567959116236985098

`A000027(A076942(∑[2*n+1]))`
-/

namespace A067872.P4567959116236985098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A076942 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067872.P4567959116236985098

/-! ## A067872.P6875443507310151027

`A004443(xor(2, A076942((n+1)*(n+1))))`
-/

namespace A067872.P6875443507310151027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor 2 (A076942 ((n + 1) * (n + 1)))).toNat

end

end A067872.P6875443507310151027

/-! ## A067872.P16780343006653460712

`A076942(xor(n, -1)²)-A000035(2*n)`
-/

namespace A067872.P16780343006653460712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (Int.xor (n : ℤ) (-1) ^ 2).toNat - A000035 (2 * n)

end

end A067872.P16780343006653460712

/-! ## A067872.P16974997375634033404

`A000034(2*n)*A076942(xor(n, -1)²)`
-/

namespace A067872.P16974997375634033404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A076942 (Int.xor (n : ℤ) (-1) ^ 2).toNat

end

end A067872.P16974997375634033404

/-! ## A067872.P1357572826626127954

`A007318(C(2, n))*A076942(xor(n, -1)²)`
-/

namespace A067872.P1357572826626127954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A076942 (Int.xor (n : ℤ) (-1) ^ 2).toNat

end

end A067872.P1357572826626127954

/-! ## A067872.P17269803869030859513

`A007318(C(2, n))*A076942(record[(1-n)²])`
-/

namespace A067872.P17269803869030859513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A076942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067872.P17269803869030859513

/-! ## A067872.P16570451890501184878

`A076942((n+1)^2)%∑[A250120(n+1)]`
-/

namespace A067872.P16570451890501184878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076942 ((n + 1) ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067872.P16570451890501184878

/-! ## A067872.P11569677048600635896

`A004443(A004443(A076942((n+1)*(n+1))))`
-/

namespace A067872.P11569677048600635896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004443 (A076942 ((n + 1) * (n + 1))).toNat).toNat

end

end A067872.P11569677048600635896

/-! ## A067872.P17461963595533058805

`A076942(A000290(n+1))%A000041(n+5)`
-/

namespace A067872.P17461963595533058805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076942 (A000290 (n + 1)).toNat) (A000041 (n + 5))

end

end A067872.P17461963595533058805

/-! ## A067872.P6524425137408358082

`A076942((n+1)*(n+1))+A055671(A055671(n))`
-/

namespace A067872.P6524425137408358082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 ((n + 1) * (n + 1)) + A055671 (A055671 n).toNat

end

end A067872.P6524425137408358082

/-! ## A067872.P9670728009231661721

`A036048(A202053(n+1))*A076942((n+1)*(n+1))`
-/

namespace A067872.P9670728009231661721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036048 (A202053 (n + 1)).toNat * A076942 ((n + 1) * (n + 1))

end

end A067872.P9670728009231661721

/-!
# A067873: Numbers x satisfying x^2 - D*y^2 = 1 for more than one value of D distinct from x^2 - 1.

The programs for A067873, the canonical program `A067873.P12485415058092700063` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067873 has offset 1).

The definition of A067873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067873.P12485415058092700063

`lt[3, ∏{e}[1-n², #]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067873

/-- `lt[3, ∏{e}[1-n², #]]` -/
def P12485415058092700063.Spec : Prop :=
  ∀ n, (P12485415058092700063.a n : ℤ) = A067873 (n + 1)

theorem P12485415058092700063.correct : P12485415058092700063.Spec := by
  intro n
  simp only [A067873, Nat.add_sub_cancel]

end A067873

/-! ## A067873.P3092907287877533107

`lt[3, A005361(abs(2-n²)+1)]`
-/

namespace A067873.P3092907287877533107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (|2 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067873.P3092907287877533107

namespace A067873

/-- `lt[3, A005361(abs(2-n²)+1)]` -/
def P3092907287877533107.Spec : Prop :=
  ∀ n, (P3092907287877533107.a n : ℤ) = A067873 (n + 1)

end A067873

/-! ## A067873.P10979925301280200769

`lt[1, A005361(A082562(n))-2]`
-/

namespace A067873.P10979925301280200769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A082562 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067873.P10979925301280200769

namespace A067873

/-- `lt[1, A005361(A082562(n))-2]` -/
def P10979925301280200769.Spec : Prop :=
  ∀ n, (P10979925301280200769.a n : ℤ) = A067873 (n + 1)

end A067873

/-! ## A067873.P1260607161606192401

`lt[1, A347439(A082562(n))]`
-/

namespace A067873.P1260607161606192401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067873.P1260607161606192401

namespace A067873

/-- `lt[1, A347439(A082562(n))]` -/
def P1260607161606192401.Spec : Prop :=
  ∀ n, (P1260607161606192401.a n : ℤ) = A067873 (n + 1)

end A067873

/-! ## A067873.P9260389737599887372

`lt[2, A046660(abs(2-n²)+1)]`
-/

namespace A067873.P9260389737599887372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (|2 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067873.P9260389737599887372

namespace A067873

/-- `lt[2, A046660(abs(2-n²)+1)]` -/
def P9260389737599887372.Spec : Prop :=
  ∀ n, (P9260389737599887372.a n : ℤ) = A067873 (n + 1)

end A067873

/-!
# A067874: Positive integers x satisfying x^2 - D*y^2 = 1 for a unique integer D.

The programs for A067874, the canonical program `A067874.P9560290715763698654` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067874 has offset 1).

The definition of A067874 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067874.P9560290715763698654

`2*A272799(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067874

/-- `2*A272799(n+1)` -/
def P9560290715763698654.Spec : Prop :=
  ∀ n, P9560290715763698654.a n = A067874 (n + 1)

theorem P9560290715763698654.correct : P9560290715763698654.Spec := by
  intro n
  simp only [A067874, Nat.add_sub_cancel]

end A067874

/-! ## A067874.P15999558575189908769

`A069977(n+1)+1`
-/

namespace A067874.P15999558575189908769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) + 1

end

end A067874.P15999558575189908769

namespace A067874

/-- `A069977(n+1)+1` -/
def P15999558575189908769.Spec : Prop :=
  ∀ n, P15999558575189908769.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P2355936790417957526

`eq[1, A379971(n+1)]+1`
-/

namespace A067874.P2355936790417957526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067874.P2355936790417957526

namespace A067874

/-- `eq[1, A379971(n+1)]+1` -/
def P2355936790417957526.Spec : Prop :=
  ∀ n, (P2355936790417957526.a n : ℤ) = A067874 (n + 1)

end A067874

/-! ## A067874.P9333651232313204812

`filter[A379965(n+1), A379971(#)]`
-/

namespace A067874.P9333651232313204812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P9333651232313204812

namespace A067874

/-- `filter[A379965(n+1), A379971(#)]` -/
def P9333651232313204812.Spec : Prop :=
  ∀ n, P9333651232313204812.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P6693920680529770152

`∪[A228649(n+1), A280892(n+1)]`
-/

namespace A067874.P6693920680529770152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067874.P6693920680529770152

namespace A067874

/-- `∪[A228649(n+1), A280892(n+1)]` -/
def P6693920680529770152.Spec : Prop :=
  ∀ n, (P6693920680529770152.a n : ℤ) = A067874 (n + 1)

end A067874

/-! ## A067874.P8765558805488419377

`filter[A092486(n), A379971(#)]`
-/

namespace A067874.P8765558805488419377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P8765558805488419377

namespace A067874

/-- `filter[A092486(n), A379971(#)]` -/
def P8765558805488419377.Spec : Prop :=
  ∀ n, P8765558805488419377.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P6090396924937911719

`A004277(A272799(n+1))`
-/

namespace A067874.P6090396924937911719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A272799 (n + 1)).toNat

end

end A067874.P6090396924937911719

namespace A067874

/-- `A004277(A272799(n+1))` -/
def P6090396924937911719.Spec : Prop :=
  ∀ n, P6090396924937911719.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P2678496622612436867

`filter[A004277(n), A379971(#)]`
-/

namespace A067874.P2678496622612436867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P2678496622612436867

namespace A067874

/-- `filter[A004277(n), A379971(#)]` -/
def P2678496622612436867.Spec : Prop :=
  ∀ n, P2678496622612436867.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P421639098363091680

`filter[A005843(n+1), A379971(#)]`
-/

namespace A067874.P421639098363091680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P421639098363091680

namespace A067874

/-- `filter[A005843(n+1), A379971(#)]` -/
def P421639098363091680.Spec : Prop :=
  ∀ n, P421639098363091680.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P1419725155178296057

`filter[A004275(n+1), A379971(#)]`
-/

namespace A067874.P1419725155178296057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P1419725155178296057

namespace A067874

/-- `filter[A004275(n+1), A379971(#)]` -/
def P1419725155178296057.Spec : Prop :=
  ∀ n, P1419725155178296057.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P6455599231222732641

`A004273(A272799(n+1)+1)-1`
-/

namespace A067874.P6455599231222732641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A272799 (n + 1) + 1).toNat - 1

end

end A067874.P6455599231222732641

namespace A067874

/-- `A004273(A272799(n+1)+1)-1` -/
def P6455599231222732641.Spec : Prop :=
  ∀ n, P6455599231222732641.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P4115971808962230521

`filter[A004278(n+1), A379971(#)]`
-/

namespace A067874.P4115971808962230521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P4115971808962230521

namespace A067874

/-- `filter[A004278(n+1), A379971(#)]` -/
def P4115971808962230521.Spec : Prop :=
  ∀ n, P4115971808962230521.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P4658419973222480255

`filter[A300576(n+3), A379971(#)]`
-/

namespace A067874.P4658419973222480255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P4658419973222480255

namespace A067874

/-- `filter[A300576(n+3), A379971(#)]` -/
def P4658419973222480255.Spec : Prop :=
  ∀ n, P4658419973222480255.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P14301238459282224447

`filter[A004279(n), A379971(#)]`
-/

namespace A067874.P14301238459282224447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P14301238459282224447

namespace A067874

/-- `filter[A004279(n), A379971(#)]` -/
def P14301238459282224447.Spec : Prop :=
  ∀ n, P14301238459282224447.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P5645942461518392090

`filter[A004271(n+1), A379971(#)]`
-/

namespace A067874.P5645942461518392090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P5645942461518392090

namespace A067874

/-- `filter[A004271(n+1), A379971(#)]` -/
def P5645942461518392090.Spec : Prop :=
  ∀ n, P5645942461518392090.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P6728374592650047071

`filter[A004272(n+1), A379971(#)]`
-/

namespace A067874.P6728374592650047071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P6728374592650047071

namespace A067874

/-- `filter[A004272(n+1), A379971(#)]` -/
def P6728374592650047071.Spec : Prop :=
  ∀ n, P6728374592650047071.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P14789672930069967774

`filter[A257282(n+2), A379971(#)]`
-/

namespace A067874.P14789672930069967774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P14789672930069967774

namespace A067874

/-- `filter[A257282(n+2), A379971(#)]` -/
def P14789672930069967774.Spec : Prop :=
  ∀ n, P14789672930069967774.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P15944481708776708734

`filter[A176693(n+2), A379971(#)]`
-/

namespace A067874.P15944481708776708734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P15944481708776708734

namespace A067874

/-- `filter[A176693(n+2), A379971(#)]` -/
def P15944481708776708734.Spec : Prop :=
  ∀ n, P15944481708776708734.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P5309545990863624362

`filter[A064745(n+1), A379971(#)]`
-/

namespace A067874.P5309545990863624362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P5309545990863624362

namespace A067874

/-- `filter[A064745(n+1), A379971(#)]` -/
def P5309545990863624362.Spec : Prop :=
  ∀ n, P5309545990863624362.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P9547823771179676959

`filter[A171086(n+1), A379971(#)]`
-/

namespace A067874.P9547823771179676959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A067874.P9547823771179676959

namespace A067874

/-- `filter[A171086(n+1), A379971(#)]` -/
def P9547823771179676959.Spec : Prop :=
  ∀ n, P9547823771179676959.a n = A067874 (n + 1)

end A067874

/-! ## A067874.P13995511448644383527

`record[(n+2)/∏{e}[(n+1)*(n+3), #]]`
-/

namespace A067874.P13995511448644383527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067874.P13995511448644383527

namespace A067874

/-- `record[(n+2)/∏{e}[(n+1)*(n+3), #]]` -/
def P13995511448644383527.Spec : Prop :=
  ∀ n, P13995511448644383527.a n = (A067874 (n + 1) : ℚ)

end A067874

/-!
# A067877: Numbers n such that sigma(n)=phi(n*bigomega(n)-1).

The programs for A067877, there is no canonical definition to state claims against.
-/

/-! ## A067877.P9791675416642542949

`A067878(A004902(n+2))`
-/

namespace A067877.P9791675416642542949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067878 (A004902 (n + 2)).toNat

end

end A067877.P9791675416642542949

/-! ## A067877.P10010710094589334024

`A067878(A004913(n+2))`
-/

namespace A067877.P10010710094589334024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067878 (A004913 (n + 2)).toNat

end

end A067877.P10010710094589334024

/-! ## A067877.P9557326961951347728

`A067878(A032551(n+2))`
-/

namespace A067877.P9557326961951347728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067878 (A032551 (n + 2)).toNat

end

end A067877.P9557326961951347728

/-!
# A067878: Numbers k such that sigma(k) = phi(k*omega(k)-1).

The programs for A067878, there is no canonical definition to state claims against.
-/

/-! ## A067878.P8716275934264867976

`A067230(n+5)%A000040(A056391(2*n+3))`
-/

namespace A067878.P8716275934264867976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067230 (n + 5)) (A000040 (A056391 (2 * n + 3)).toNat)

end

end A067878.P8716275934264867976

/-!
# A067882: Factorial expansion of log(2) = Sum_{n>=1} a(n)/n!.

The programs for A067882, the canonical program `A067882.P15519907872735892579` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067882 has offset 1).

The definition of A067882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067882.P15519907872735892579

`floor((n+1)!*log(2))-(n+1)*floor(n!*log(2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067882

/-- `floor((n+1)!*log(2))-(n+1)*floor(n!*log(2))` -/
def P15519907872735892579.Spec : Prop :=
  ∀ n, P15519907872735892579.a n = A067882 (n + 1)

theorem P15519907872735892579.correct : P15519907872735892579.Spec := by
  intro n
  simp only [A067882, Nat.add_sub_cancel]

end A067882

/-! ## A067882.P3732974347731259423

`floor((n+1)!*log(2))-(n+1)*floor(log(2)*n!)`
-/

namespace A067882.P3732974347731259423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℝ) * Real.log (2 : ℝ)⌋ - (n + 1 : ℤ) * ⌊Real.log (2 : ℝ) * (Nat.factorial n : ℝ)⌋

end

end A067882.P3732974347731259423

namespace A067882

/-- `floor((n+1)!*log(2))-(n+1)*floor(log(2)*n!)` -/
def P3732974347731259423.Spec : Prop :=
  ∀ n, P3732974347731259423.a n = A067882 (n + 1)

theorem P3732974347731259423.correct : P3732974347731259423.Spec := by
  intro n
  simp only [A067882, Nat.add_sub_cancel, A067882.P3732974347731259423.a, A067882.P15519907872735892579.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067882

/-!
# A067883: Numbers k such that k = phi(sigma(phi(sigma(k)))).

The programs for A067883, there is no canonical definition to state claims against.
-/

/-! ## A067883.P11568665929948587188

`eq[n+1, A062401(A062401(n+1))]+1`
-/

namespace A067883.P11568665929948587188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A062401 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067883.P11568665929948587188

/-! ## A067883.P18164271951385448658

`eq[n+1, A163370(A000203(n+1))]+1`
-/

namespace A067883.P18164271951385448658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163370 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067883.P18164271951385448658

/-! ## A067883.P3171892779224373311

`A143178(record[A375124(2*n+3)])`
-/

namespace A067883.P3171892779224373311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375124 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067883.P3171892779224373311

/-! ## A067883.P4595317929852761797

`∩[A096850(n+1), A122138(n+1)]`
-/

namespace A067883.P4595317929852761797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067883.P4595317929852761797

/-! ## A067883.P11766802287829274893

`∩[A168267(n+1), A332110(n+1)]`
-/

namespace A067883.P11766802287829274893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067883.P11766802287829274893

/-!
# A067884: Numbers k such that k = phi(sigma(phi(sigma(phi(sigma(k)))))).

The programs for A067884, there is no canonical definition to state claims against.
-/

/-! ## A067884.P7808865186192320438

`eq[A000120(n), A352521(A273943(n))]`
-/

namespace A067884.P7808865186192320438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352521 (A273943 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067884.P7808865186192320438

/-! ## A067884.P14794185924234229781

`record[A278224(n+1)%A233360(A278224(3*n+4))]`
-/

namespace A067884.P14794185924234229781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278224 (n + 1)) (A233360 (A278224 (3 * n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067884.P14794185924234229781

/-!
# A067885: Products of exactly 6 distinct primes.

The programs for A067885, there is no canonical definition to state claims against.
-/

/-! ## A067885.P12083075534815856604

`∩[A074969(n+1), A172443(n+1)]`
-/

namespace A067885.P12083075534815856604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067885.P12083075534815856604

/-! ## A067885.P14648029630738192576

`∩[A172443(n+1), A336910(n+1)]`
-/

namespace A067885.P14648029630738192576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067885.P14648029630738192576

/-! ## A067885.P753643756002046489

`∩[A074969(n+1), A287483(n)]`
-/

namespace A067885.P753643756002046489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067885.P753643756002046489

/-! ## A067885.P17818762914377067351

`∩[A172443(n+1), A287483(n)]`
-/

namespace A067885.P17818762914377067351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067885.P17818762914377067351

/-! ## A067885.P7578702686535397770

`A046391(n+1)*A260218(2*n+1)`
-/

namespace A067885.P7578702686535397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1) * A260218 (2 * n + 1)

end

end A067885.P7578702686535397770

/-! ## A067885.P9413829164825329712

`A046391(n+1)*A141310(A027688(n))`
-/

namespace A067885.P9413829164825329712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1) * A141310 (A027688 n).toNat

end

end A067885.P9413829164825329712

/-! ## A067885.P601139202817478220

`A046391(n+1)*A141310(A027692(n))`
-/

namespace A067885.P601139202817478220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1) * A141310 (A027692 n).toNat

end

end A067885.P601139202817478220

/-! ## A067885.P11383291681484885252

`A046391(n+1)*A141310(A048058(n))`
-/

namespace A067885.P11383291681484885252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1) * A141310 (A048058 n).toNat

end

end A067885.P11383291681484885252

/-! ## A067885.P5056780713619843076

`A005681(A102376(n))*A046391(n+1)`
-/

namespace A067885.P5056780713619843076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (A102376 n).toNat * A046391 (n + 1)

end

end A067885.P5056780713619843076

/-! ## A067885.P5543418310409035533

`A000005(A260218(n+1))*A046391(n+1)`
-/

namespace A067885.P5543418310409035533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A260218 (n + 1)).toNat * A046391 (n + 1)

end

end A067885.P5543418310409035533

/-! ## A067885.P1088762536968987032

`A036453(A233265(n+1))*A046391(n+1)`
-/

namespace A067885.P1088762536968987032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A233265 (n + 1)).toNat * A046391 (n + 1)

end

end A067885.P1088762536968987032

/-! ## A067885.P14801330471255398919

`A000034(A276391(n+1))*A046391(n+1)`
-/

namespace A067885.P14801330471255398919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A276391 (n + 1)).toNat * A046391 (n + 1)

end

end A067885.P14801330471255398919

/-! ## A067885.P5725140664840212791

`A046391(n+1)*A141310(A165826(n+1))`
-/

namespace A067885.P5725140664840212791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1) * A141310 (A165826 (n + 1)).toNat

end

end A067885.P5725140664840212791

/-! ## A067885.P12770379623370412938

`A000040(A317840(A007491(n+1)))*A046391(n+1)`
-/

namespace A067885.P12770379623370412938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317840 (A007491 (n + 1)).toNat).toNat * A046391 (n + 1)

end

end A067885.P12770379623370412938

/-!
# A067886: Numbers k such that 2^k+1 and 2^k-1 have the same number of distinct prime factors.

The programs for A067886, there is no canonical definition to state claims against.
-/

/-! ## A067886.P12605762531639149894

`eq[A046799(n), A046800(n)]`
-/

namespace A067886.P12605762531639149894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P12605762531639149894

/-! ## A067886.P18414307991345504879

`eq[A046800(n), A322811(A073582(n+1))]`
-/

namespace A067886.P18414307991345504879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P18414307991345504879

/-! ## A067886.P10813845057680759313

`eq[A046800(n), A322811(A100484(n+1))]`
-/

namespace A067886.P10813845057680759313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P10813845057680759313

/-! ## A067886.P307276235039123206

`eq[A046800(n), A322811(A161344(n+2))]`
-/

namespace A067886.P307276235039123206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A161344 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P307276235039123206

/-! ## A067886.P3868010815120823738

`eq[A046800(n), A322811(2*A000040(n+1))]`
-/

namespace A067886.P3868010815120823738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P3868010815120823738

/-! ## A067886.P14357372207228438678

`eq[A046800(n), A322812(2*A000040(n+1))]`
-/

namespace A067886.P14357372207228438678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P14357372207228438678

/-! ## A067886.P10586091340266135870

`eq[A046800(n), A322811(2*A008578(n+2))]`
-/

namespace A067886.P10586091340266135870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A008578 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P10586091340266135870

/-! ## A067886.P8660650842609947951

`eq[A046800(n), A322811(2*(A006093(n+1)+1))]`
-/

namespace A067886.P8660650842609947951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * (A006093 (n + 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P8660650842609947951

/-! ## A067886.P11941446384182704744

`eq[A046800(n), A322811(2*(A156037(n+1)+1))]`
-/

namespace A067886.P11941446384182704744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * (A156037 (n + 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P11941446384182704744

/-! ## A067886.P6181248271020919302

`eq[A046800(n), A324119(A161344(n+1))]`
-/

namespace A067886.P6181248271020919302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A161344 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067886.P6181248271020919302

/-!
# A067887: Composite numbers k such that phi(k+1) < phi(k).

The programs for A067887, the canonical program `A067887.P1613746597860396887` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067887 has offset 1).

The definition of A067887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067887.P1613746597860396887

`lt[A057000(n+1), A057000(A014963(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067887

/-- `lt[A057000(n+1), A057000(A014963(n+1))]+1` -/
def P1613746597860396887.Spec : Prop :=
  ∀ n, (P1613746597860396887.a n : ℤ) = A067887 (n + 1)

theorem P1613746597860396887.correct : P1613746597860396887.Spec := by
  intro n
  simp only [A067887, Nat.add_sub_cancel]

end A067887

/-! ## A067887.P3773702974739552879

`lt[A000010(A014684(n+1)+1), A000010(n+1)]+1`
-/

namespace A067887.P3773702974739552879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014684 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067887.P3773702974739552879

namespace A067887

/-- `lt[A000010(A014684(n+1)+1), A000010(n+1)]+1` -/
def P3773702974739552879.Spec : Prop :=
  ∀ n, (P3773702974739552879.a n : ℤ) = A067887 (n + 1)

end A067887

/-! ## A067887.P3346844650501092364

`filter[A266000(n+1), A374134(#)]`
-/

namespace A067887.P3346844650501092364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067887.P3346844650501092364

namespace A067887

/-- `filter[A266000(n+1), A374134(#)]` -/
def P3346844650501092364.Spec : Prop :=
  ∀ n, P3346844650501092364.a n = A067887 (n + 1)

end A067887

/-! ## A067887.P3948167614336363489

`∩[A266000(n+1), A067800(n+1)]`
-/

namespace A067887.P3948167614336363489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067887.P3948167614336363489

namespace A067887

/-- `∩[A266000(n+1), A067800(n+1)]` -/
def P3948167614336363489.Spec : Prop :=
  ∀ n, (P3948167614336363489.a n : ℤ) = A067887 (n + 1)

end A067887

/-!
# A067888: Numbers k such that tau(k+1) = tau(k-1) where tau(k) = A000005(k).

The programs for A067888, the canonical program `A067888.P5381462083945113283` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067888 has offset 1).

The definition of A067888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067888.P5381462083945113283

`A062832(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067888

/-- `A062832(n+1)+1` -/
def P5381462083945113283.Spec : Prop :=
  ∀ n, P5381462083945113283.a n = A067888 (n + 1)

theorem P5381462083945113283.correct : P5381462083945113283.Spec := by
  intro n
  simp only [A067888, Nat.add_sub_cancel]

end A067888

/-! ## A067888.P18385230856449523144

`eq[A000005(n+1), A000005(n+3)]+2`
-/

namespace A067888.P18385230856449523144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067888.P18385230856449523144

namespace A067888

/-- `eq[A000005(n+1), A000005(n+3)]+2` -/
def P18385230856449523144.Spec : Prop :=
  ∀ n, (P18385230856449523144.a n : ℤ) = A067888 (n + 1)

theorem P18385230856449523144.correct : P18385230856449523144.Spec := by
  intro n
  simp only [A067888, Nat.add_sub_cancel, A067888.P18385230856449523144.f1, A067888.P18385230856449523144.f2, A067888.P18385230856449523144.a, A067888.P5381462083945113283.a, A000005, A000005.P16091521709108585461.a, A062832, A062832.P107409337447898240.f1, A062832.P107409337447898240.f2, A062832.P107409337447898240.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067888

/-! ## A067888.P3664557697468780818

`eq[A092405(n+2), A092405(n+1)]+2`
-/

namespace A067888.P3664557697468780818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067888.P3664557697468780818

namespace A067888

/-- `eq[A092405(n+2), A092405(n+1)]+2` -/
def P3664557697468780818.Spec : Prop :=
  ∀ n, (P3664557697468780818.a n : ℤ) = A067888 (n + 1)

end A067888

/-! ## A067888.P4892679806940148223

`A020725(A062832(n+1))`
-/

namespace A067888.P4892679806940148223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A062832 (n + 1)).toNat

end

end A067888.P4892679806940148223

namespace A067888

/-- `A020725(A062832(n+1))` -/
def P4892679806940148223.Spec : Prop :=
  ∀ n, P4892679806940148223.a n = A067888 (n + 1)

end A067888

/-! ## A067888.P4185993561213173813

`eq[A032741(n+2), A032741(n)]+1`
-/

namespace A067888.P4185993561213173813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067888.P4185993561213173813

namespace A067888

/-- `eq[A032741(n+2), A032741(n)]+1` -/
def P4185993561213173813.Spec : Prop :=
  ∀ n, (P4185993561213173813.a n : ℤ) = A067888 (n + 1)

end A067888

/-! ## A067888.P13213419725545324667

`eq[A092338(n+2), A092338(n+1)]+1`
-/

namespace A067888.P13213419725545324667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067888.P13213419725545324667

namespace A067888

/-- `eq[A092338(n+2), A092338(n+1)]+1` -/
def P13213419725545324667.Spec : Prop :=
  ∀ n, (P13213419725545324667.a n : ℤ) = A067888 (n + 1)

end A067888

/-! ## A067888.P8642159122588615443

`eq[A063123(n+2), A063123(n+1)]+2`
-/

namespace A067888.P8642159122588615443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067888.P8642159122588615443

namespace A067888

/-- `eq[A063123(n+2), A063123(n+1)]+2` -/
def P8642159122588615443.Spec : Prop :=
  ∀ n, (P8642159122588615443.a n : ℤ) = A067888 (n + 1)

end A067888

/-! ## A067888.P11524078907578601594

`eq[A092517(n+2), A092517(n+1)]+2`
-/

namespace A067888.P11524078907578601594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067888.P11524078907578601594

namespace A067888

/-- `eq[A092517(n+2), A092517(n+1)]+2` -/
def P11524078907578601594.Spec : Prop :=
  ∀ n, (P11524078907578601594.a n : ℤ) = A067888 (n + 1)

end A067888

/-! ## A067888.P265527397554020714

`A326178(eq[A032741(n+2), A032741(n)])`
-/

namespace A067888.P265527397554020714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067888.P265527397554020714

namespace A067888

/-- `A326178(eq[A032741(n+2), A032741(n)])` -/
def P265527397554020714.Spec : Prop :=
  ∀ n, P265527397554020714.a n = A067888 (n + 1)

end A067888

/-!
# A067889: Primes sandwiched between two numbers having same number of divisors.

The programs for A067889, the canonical program `A067889.P13334168951864869108` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067889 has offset 1).

The definition of A067889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067889.P6867175633443921606

`p?[A080650(n+1)]`
-/

namespace A067889.P6867175633443921606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067889.P6867175633443921606

namespace A067889

/-- `p?[A080650(n+1)]` -/
def P6867175633443921606.Spec : Prop :=
  ∀ n, P6867175633443921606.a n = A067889 (n + 1)

end A067889

/-! ## A067889.P3383223379413599854

`∩[A034849(n+1), A080650(n+1)]`
-/

namespace A067889.P3383223379413599854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P3383223379413599854

namespace A067889

/-- `∩[A034849(n+1), A080650(n+1)]` -/
def P3383223379413599854.Spec : Prop :=
  ∀ n, (P3383223379413599854.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P17206662138222653282

`∩[A080650(n+1), A176897(n+1)]`
-/

namespace A067889.P17206662138222653282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P17206662138222653282

namespace A067889

/-- `∩[A080650(n+1), A176897(n+1)]` -/
def P17206662138222653282.Spec : Prop :=
  ∀ n, (P17206662138222653282.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P13334168951864869108

`A045319(lt[A145337(n)², 1])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067889

/-- `A045319(lt[A145337(n)², 1])` -/
def P13334168951864869108.Spec : Prop :=
  ∀ n, P13334168951864869108.a n = A067889 (n + 1)

theorem P13334168951864869108.correct : P13334168951864869108.Spec := by
  intro n
  simp only [A067889, Nat.add_sub_cancel]

end A067889

/-! ## A067889.P6799083654808796155

`A045344(lt[A145337(n)², 1])`
-/

namespace A067889.P6799083654808796155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067889.P6799083654808796155

namespace A067889

/-- `A045344(lt[A145337(n)², 1])` -/
def P6799083654808796155.Spec : Prop :=
  ∀ n, P6799083654808796155.a n = A067889 (n + 1)

end A067889

/-! ## A067889.P3364888585944384420

`A065091(lt[A145337(n)², 1])`
-/

namespace A067889.P3364888585944384420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067889.P3364888585944384420

namespace A067889

/-- `A065091(lt[A145337(n)², 1])` -/
def P3364888585944384420.Spec : Prop :=
  ∀ n, P3364888585944384420.a n = A067889 (n + 1)

end A067889

/-! ## A067889.P12926021062707294479

`∩[A000040(n+1), A080650(n+1)]`
-/

namespace A067889.P12926021062707294479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P12926021062707294479

namespace A067889

/-- `∩[A000040(n+1), A080650(n+1)]` -/
def P12926021062707294479.Spec : Prop :=
  ∀ n, (P12926021062707294479.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P10177951179049049049

`∩[A004139(n+1), A080650(n+1)]`
-/

namespace A067889.P10177951179049049049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P10177951179049049049

namespace A067889

/-- `∩[A004139(n+1), A080650(n+1)]` -/
def P10177951179049049049.Spec : Prop :=
  ∀ n, (P10177951179049049049.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P3931970083756671370

`∩[A045319(n+1), A080650(n+1)]`
-/

namespace A067889.P3931970083756671370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P3931970083756671370

namespace A067889

/-- `∩[A045319(n+1), A080650(n+1)]` -/
def P3931970083756671370.Spec : Prop :=
  ∀ n, (P3931970083756671370.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P1543449950376898217

`∩[A045344(n+1), A080650(n+1)]`
-/

namespace A067889.P1543449950376898217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P1543449950376898217

namespace A067889

/-- `∩[A045344(n+1), A080650(n+1)]` -/
def P1543449950376898217.Spec : Prop :=
  ∀ n, (P1543449950376898217.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P7188906067919288063

`∩[A065091(n+1), A080650(n+1)]`
-/

namespace A067889.P7188906067919288063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P7188906067919288063

namespace A067889

/-- `∩[A065091(n+1), A080650(n+1)]` -/
def P7188906067919288063.Spec : Prop :=
  ∀ n, (P7188906067919288063.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P15711833624888523247

`∩[A070303(n+1), A080650(n+1)]`
-/

namespace A067889.P15711833624888523247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P15711833624888523247

namespace A067889

/-- `∩[A070303(n+1), A080650(n+1)]` -/
def P15711833624888523247.Spec : Prop :=
  ∀ n, (P15711833624888523247.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P16977155800881811829

`∩[A080650(n+1), A083249(n+1)]`
-/

namespace A067889.P16977155800881811829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P16977155800881811829

namespace A067889

/-- `∩[A080650(n+1), A083249(n+1)]` -/
def P16977155800881811829.Spec : Prop :=
  ∀ n, (P16977155800881811829.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P10006453794836798961

`∩[A080650(n+1), A116974(n+1)]`
-/

namespace A067889.P10006453794836798961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P10006453794836798961

namespace A067889

/-- `∩[A080650(n+1), A116974(n+1)]` -/
def P10006453794836798961.Spec : Prop :=
  ∀ n, (P10006453794836798961.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P5999661765625477390

`∩[A080650(n+1), A182986(n+1)]`
-/

namespace A067889.P5999661765625477390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P5999661765625477390

namespace A067889

/-- `∩[A080650(n+1), A182986(n+1)]` -/
def P5999661765625477390.Spec : Prop :=
  ∀ n, (P5999661765625477390.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P3572307379279317834

`∩[A080650(n+1), A216285(n+1)]`
-/

namespace A067889.P3572307379279317834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P3572307379279317834

namespace A067889

/-- `∩[A080650(n+1), A216285(n+1)]` -/
def P3572307379279317834.Spec : Prop :=
  ∀ n, (P3572307379279317834.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P14571235690530231841

`∩[A053813(n+1), A080650(n+1)]`
-/

namespace A067889.P14571235690530231841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P14571235690530231841

namespace A067889

/-- `∩[A053813(n+1), A080650(n+1)]` -/
def P14571235690530231841.Spec : Prop :=
  ∀ n, (P14571235690530231841.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P15837870287217277438

`∩[A064728(n+1), A080650(n+1)]`
-/

namespace A067889.P15837870287217277438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P15837870287217277438

namespace A067889

/-- `∩[A064728(n+1), A080650(n+1)]` -/
def P15837870287217277438.Spec : Prop :=
  ∀ n, (P15837870287217277438.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P16664610182850499093

`∩[A080650(n+1), A189710(n+1)]`
-/

namespace A067889.P16664610182850499093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P16664610182850499093

namespace A067889

/-- `∩[A080650(n+1), A189710(n+1)]` -/
def P16664610182850499093.Spec : Prop :=
  ∀ n, (P16664610182850499093.a n : ℤ) = A067889 (n + 1)

end A067889

/-! ## A067889.P9944598426205934333

`∩[A080650(n+1), A301987(n+1)]`
-/

namespace A067889.P9944598426205934333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067889.P9944598426205934333

namespace A067889

/-- `∩[A080650(n+1), A301987(n+1)]` -/
def P9944598426205934333.Spec : Prop :=
  ∀ n, (P9944598426205934333.a n : ℤ) = A067889 (n + 1)

end A067889

/-!
# A067890: Primes p such that phi(p+1) = phi(p-1).

The programs for A067890, there is no canonical definition to state claims against.
-/

/-! ## A067890.P4284725735947455058

`A000040(A066902(n+1))`
-/

namespace A067890.P4284725735947455058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066902 (n + 1)).toNat

end

end A067890.P4284725735947455058

/-! ## A067890.P10176693259355528692

`p?[A065555(n+1)]`
-/

namespace A067890.P10176693259355528692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067890.P10176693259355528692

/-! ## A067890.P1011101554820638817

`p?[A066812(n+1)]`
-/

namespace A067890.P1011101554820638817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067890.P1011101554820638817

/-! ## A067890.P16619081800165075859

`p?[A001494(n+1)+1]`
-/

namespace A067890.P16619081800165075859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001494 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067890.P16619081800165075859

/-! ## A067890.P15889551652623670178

`p?[record[A065555(A133310(n))]]`
-/

namespace A067890.P15889551652623670178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065555 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067890.P15889551652623670178

/-!
# A067891: Primes p such that sigma(p+1) = sigma(p-1).

The programs for A067891, there is no canonical definition to state claims against.
-/

/-! ## A067891.P369032290799297090

`∩[A055574(n+1), A065556(n+1)]`
-/

namespace A067891.P369032290799297090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067891.P369032290799297090

/-! ## A067891.P14963045103138160364

`∩[A065556(n+1), A067130(n+1)]`
-/

namespace A067891.P14963045103138160364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067891.P14963045103138160364

/-! ## A067891.P15762278687616918830

`∩[A065556(n+1), A223137(n+1)]`
-/

namespace A067891.P15762278687616918830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067891.P15762278687616918830

/-! ## A067891.P3758566378431957277

`∩[A065556(n+1), A227304(n+1)]`
-/

namespace A067891.P3758566378431957277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067891.P3758566378431957277

/-! ## A067891.P18268575798231475445

`∩[A065556(n+1), A055574(A020705(n))]`
-/

namespace A067891.P18268575798231475445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (A020705 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067891.P18268575798231475445

/-!
# A067894: Write 0, 1, ..., n in binary and add as if they were decimal numbers.

The programs for A067894, the canonical program `A067894.P1623004336795340653` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067894 has offset 0).

The definition of A067894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067894.P2334104445132126469

`∑[A007088(n)]`
-/

namespace A067894.P2334104445132126469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P2334104445132126469

namespace A067894

/-- `∑[A007088(n)]` -/
def P2334104445132126469.Spec : Prop :=
  ∀ n, P2334104445132126469.a n = A067894 n

end A067894

/-! ## A067894.P12055706885691383721

`∑[sqrt(A063009(n))]`
-/

namespace A067894.P12055706885691383721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P12055706885691383721

namespace A067894

/-- `∑[sqrt(A063009(n))]` -/
def P12055706885691383721.Spec : Prop :=
  ∀ n, P12055706885691383721.a n = (A067894 n : ℝ)

end A067894

/-! ## A067894.P18001798147377899591

`∑[A097256(n)/9]`
-/

namespace A067894.P18001798147377899591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P18001798147377899591

namespace A067894

/-- `∑[A097256(n)/9]` -/
def P18001798147377899591.Spec : Prop :=
  ∀ n, P18001798147377899591.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P14358887705006161369

`∑[A099820(n)/10]`
-/

namespace A067894.P14358887705006161369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P14358887705006161369

namespace A067894

/-- `∑[A099820(n)/10]` -/
def P14358887705006161369.Spec : Prop :=
  ∀ n, P14358887705006161369.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P911474777168660964

`∑[A228071(n)+n]`
-/

namespace A067894.P911474777168660964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P911474777168660964

namespace A067894

/-- `∑[A228071(n)+n]` -/
def P911474777168660964.Spec : Prop :=
  ∀ n, P911474777168660964.a n = A067894 n

end A067894

/-! ## A067894.P5276795171362536878

`∑[A269130(n)-n]`
-/

namespace A067894.P5276795171362536878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P5276795171362536878

namespace A067894

/-- `∑[A269130(n)-n]` -/
def P5276795171362536878.Spec : Prop :=
  ∀ n, P5276795171362536878.a n = A067894 n

end A067894

/-! ## A067894.P4303437548273774666

`∑[A169965(n+1)/2]`
-/

namespace A067894.P4303437548273774666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P4303437548273774666

namespace A067894

/-- `∑[A169965(n+1)/2]` -/
def P4303437548273774666.Spec : Prop :=
  ∀ n, P4303437548273774666.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P7859301739569447316

`∑[A169966(n+1)/3]`
-/

namespace A067894.P7859301739569447316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P7859301739569447316

namespace A067894

/-- `∑[A169966(n+1)/3]` -/
def P7859301739569447316.Spec : Prop :=
  ∀ n, P7859301739569447316.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P9004208756947137029

`∑[A169967(n+1)/4]`
-/

namespace A067894.P9004208756947137029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P9004208756947137029

namespace A067894

/-- `∑[A169967(n+1)/4]` -/
def P9004208756947137029.Spec : Prop :=
  ∀ n, P9004208756947137029.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P16633706149193379737

`∑[A169964(n+1)/5]`
-/

namespace A067894.P16633706149193379737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P16633706149193379737

namespace A067894

/-- `∑[A169964(n+1)/5]` -/
def P16633706149193379737.Spec : Prop :=
  ∀ n, P16633706149193379737.a n = (A067894 n : ℚ)

end A067894

/-! ## A067894.P17877310956037528201

`∑[A169964(n+1)-A169967(n+1)]`
-/

namespace A067894.P17877310956037528201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1) - A169967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P17877310956037528201

namespace A067894

/-- `∑[A169964(n+1)-A169967(n+1)]` -/
def P17877310956037528201.Spec : Prop :=
  ∀ n, P17877310956037528201.a n = A067894 n

end A067894

/-! ## A067894.P17230836086564751080

`∑[A169966(n+1)-A169965(n+1)]`
-/

namespace A067894.P17230836086564751080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1) - A169965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P17230836086564751080

namespace A067894

/-- `∑[A169966(n+1)-A169965(n+1)]` -/
def P17230836086564751080.Spec : Prop :=
  ∀ n, P17230836086564751080.a n = A067894 n

end A067894

/-! ## A067894.P11444952244853073361

`∑[A169967(n+1)-A169966(n+1)]`
-/

namespace A067894.P11444952244853073361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) - A169966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P11444952244853073361

namespace A067894

/-- `∑[A169967(n+1)-A169966(n+1)]` -/
def P11444952244853073361.Spec : Prop :=
  ∀ n, P11444952244853073361.a n = A067894 n

end A067894

/-! ## A067894.P2841458133356841040

`∑[gcd(A169964(n+1), A169965(n+1))]`
-/

namespace A067894.P2841458133356841040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169964 (n + 1)) (A169965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P2841458133356841040

namespace A067894

/-- `∑[gcd(A169964(n+1), A169965(n+1))]` -/
def P2841458133356841040.Spec : Prop :=
  ∀ n, (P2841458133356841040.a n : ℤ) = A067894 n

end A067894

/-! ## A067894.P1623004336795340653

`∑[∑[A138342(n+1)]-A138342(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067894

/-- `∑[∑[A138342(n+1)]-A138342(n+1)]` -/
def P1623004336795340653.Spec : Prop :=
  ∀ n, P1623004336795340653.a n = A067894 n

theorem P1623004336795340653.correct : P1623004336795340653.Spec := by
  intro n
  simp only [A067894]

end A067894

/-! ## A067894.P11015455552189993183

`∑[A304747(A303768(n))]`
-/

namespace A067894.P11015455552189993183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304747 (A303768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P11015455552189993183

namespace A067894

/-- `∑[A304747(A303768(n))]` -/
def P11015455552189993183.Spec : Prop :=
  ∀ n, P11015455552189993183.a n = A067894 n

end A067894

/-! ## A067894.P7858993853227003310

`∑[A265747(A197911(n))]`
-/

namespace A067894.P7858993853227003310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A197911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P7858993853227003310

namespace A067894

/-- `∑[A265747(A197911(n))]` -/
def P7858993853227003310.Spec : Prop :=
  ∀ n, P7858993853227003310.a n = A067894 n

end A067894

/-! ## A067894.P16543567596376840596

`∑[A014550(A006068(n))]`
-/

namespace A067894.P16543567596376840596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P16543567596376840596

namespace A067894

/-- `∑[A014550(A006068(n))]` -/
def P16543567596376840596.Spec : Prop :=
  ∀ n, P16543567596376840596.a n = A067894 n

end A067894

/-! ## A067894.P14408581496897139915

`∑[A014550(A292600(2*n))]`
-/

namespace A067894.P14408581496897139915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A292600 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P14408581496897139915

namespace A067894

/-- `∑[A014550(A292600(2*n))]` -/
def P14408581496897139915.Spec : Prop :=
  ∀ n, P14408581496897139915.a n = A067894 n

end A067894

/-! ## A067894.P1599310826964498266

`∑[∑[A138342(A008486(n))]-1]`
-/

namespace A067894.P1599310826964498266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067894.P1599310826964498266

namespace A067894

/-- `∑[∑[A138342(A008486(n))]-1]` -/
def P1599310826964498266.Spec : Prop :=
  ∀ n, P1599310826964498266.a n = A067894 n

end A067894

/-!
# A067895: Write 2^n, 2^n+1, 2^n+2, ..., 2^(n+1)-1 in binary and add as if they were decimal numbers.

The programs for A067895, the canonical program `A067895.P8743565247918585657` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067895 has offset 0).

The definition of A067895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067895.P9610061546334264970

`ogf((1-x)/(1-22x+40x^2))`
-/

namespace A067895.P9610061546334264970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -22, 40] n

end

end A067895.P9610061546334264970

namespace A067895

/-- `ogf((1-x)/(1-22x+40x^2))` -/
def P9610061546334264970.Spec : Prop :=
  ∀ n, P9610061546334264970.a n = A067895 n

end A067895

/-! ## A067895.P14825489611603369936

`2^(n-1)*(19*10^n-1)/9`
-/

namespace A067895.P14825489611603369936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((19 * 10 ^ n : ℤ) - 1 : ℚ) / 9

end

end A067895.P14825489611603369936

namespace A067895

/-- `2^(n-1)*(19*10^n-1)/9` -/
def P14825489611603369936.Spec : Prop :=
  ∀ n, P14825489611603369936.a n = (A067895 n : ℚ)

theorem P14825489611603369936.correct : P14825489611603369936.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A067895, Nat.add_sub_cancel, A067895.P14825489611603369936.a, A067895.P8743565247918585657.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A067895, Nat.add_sub_cancel, A067895.P14825489611603369936.a, A067895.P8743565247918585657.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A067895

/-! ## A067895.P8743565247918585657

`22*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A067895

/-- `22*a(n-1)-40*a(n-2)` -/
def P8743565247918585657.Spec : Prop :=
  ∀ n, P8743565247918585657.a n = A067895 n

theorem P8743565247918585657.correct : P8743565247918585657.Spec := by
  intro n
  simp only [A067895]

end A067895

/-! ## A067895.P7176321816361339622

`2^(n-1)+20*a(n-1)` with `a(0)=1`
-/

namespace A067895.P7176321816361339622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 20 * a (n - 1)

end

end A067895.P7176321816361339622

namespace A067895

/-- `2^(n-1)+20*a(n-1)` -/
def P7176321816361339622.Spec : Prop :=
  ∀ n, P7176321816361339622.a n = (A067895 n : ℚ)

end A067895

/-! ## A067895.P1497748370478345295

`or(20*a(n-1), 2^(n-1))` with `a(0)=1`
-/

namespace A067895.P1497748370478345295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (20 * a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A067895.P1497748370478345295

namespace A067895

/-- `or(20*a(n-1), 2^(n-1))` -/
def P1497748370478345295.Spec : Prop :=
  ∀ n, P1497748370478345295.a n = A067895 n

end A067895

/-! ## A067895.P9377865538597888797

`Δ[2^(n-1)*A002275(n)]`
-/

namespace A067895.P9377865538597888797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002275 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067895.P9377865538597888797

namespace A067895

/-- `Δ[2^(n-1)*A002275(n)]` -/
def P9377865538597888797.Spec : Prop :=
  ∀ n, P9377865538597888797.a n = (A067895 n : ℚ)

end A067895

/-! ## A067895.P12031037688326248249

`xor(20*a(n-1), A011782(n))` with `a(0)=1`
-/

namespace A067895.P12031037688326248249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (20 * a (n - 1)) (A011782 n)

end

end A067895.P12031037688326248249

namespace A067895

/-- `xor(20*a(n-1), A011782(n))` -/
def P12031037688326248249.Spec : Prop :=
  ∀ n, P12031037688326248249.a n = A067895 n

end A067895

/-!
# A067897: a(n) = A000085(n) - (1 + Sum_{j=1..n-1} A000085(j)).

The programs for A067897, the canonical program `A067897.P16427953332415347424` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067897 has offset 0).

The definition of A067897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067897.P16427953332415347424

`∏[(n-1)/a(n-1)+1]%A245176(n)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067897

/-- `∏[(n-1)/a(n-1)+1]%A245176(n)` -/
def P16427953332415347424.Spec : Prop :=
  ∀ n, P16427953332415347424.a n = A067897 n

theorem P16427953332415347424.correct : P16427953332415347424.Spec := by
  intro n
  simp only [A067897]

end A067897

/-! ## A067897.P9683781063601699570

`(2*A000085(n))%A245176(n)`
-/

namespace A067897.P9683781063601699570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000085 n) (A245176 n)

end

end A067897.P9683781063601699570

namespace A067897

/-- `(2*A000085(n))%A245176(n)` -/
def P9683781063601699570.Spec : Prop :=
  ∀ n, P9683781063601699570.a n = A067897 n

end A067897

/-! ## A067897.P17873058355291581972

`(2*A099020(∑[n]))%∑[A000085(n)]`
-/

namespace A067897.P17873058355291581972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099020 (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A067897.P17873058355291581972

namespace A067897

/-- `(2*A099020(∑[n]))%∑[A000085(n)]` -/
def P17873058355291581972.Spec : Prop :=
  ∀ n, P17873058355291581972.a n = A067897 n

end A067897

/-! ## A067897.P3410682517711538439

`A000085(n)-A245176(A289207(n+1))`
-/

namespace A067897.P3410682517711538439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A245176 (A289207 (n + 1)).toNat

end

end A067897.P3410682517711538439

namespace A067897

/-- `A000085(n)-A245176(A289207(n+1))` -/
def P3410682517711538439.Spec : Prop :=
  ∀ n, P3410682517711538439.a n = A067897 n

end A067897

/-! ## A067897.P17504738868615744020

`(A297708(n)+A135401(n))%A245176(n)`
-/

namespace A067897.P17504738868615744020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297708 n + A135401 n) (A245176 n)

end

end A067897.P17504738868615744020

namespace A067897

/-- `(A297708(n)+A135401(n))%A245176(n)` -/
def P17504738868615744020.Spec : Prop :=
  ∀ n, P17504738868615744020.a n = A067897 n

end A067897

/-!
# A067898: Least digit not used in n (or 10 if n is pandigital).

The programs for A067898, there is no canonical definition to state claims against.
-/

/-! ## A067898.P8401907961559818005

`A230959(n)%5`
-/

namespace A067898.P8401907961559818005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230959 n) 5

end

end A067898.P8401907961559818005

/-! ## A067898.P15324998813755171633

`val(A086066(n)+1, 2)`
-/

namespace A067898.P15324998813755171633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n + 1).toNat 2

end

end A067898.P15324998813755171633

/-! ## A067898.P4460173876655219478

`A007814(A086066(n)+1)`
-/

namespace A067898.P4460173876655219478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n + 1).toNat

end

end A067898.P4460173876655219478

/-! ## A067898.P4553764811144353982

`A001511(A086066(n)+1)-1`
-/

namespace A067898.P4553764811144353982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A086066 n + 1).toNat - 1

end

end A067898.P4553764811144353982

/-! ## A067898.P16436751965151699971

`A050603(2*A086066(n))-1`
-/

namespace A067898.P16436751965151699971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (2 * A086066 n).toNat - 1

end

end A067898.P16436751965151699971

/-! ## A067898.P17850432783689492455

`A094267(2*A086066(n))-1`
-/

namespace A067898.P17850432783689492455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (2 * A086066 n).toNat - 1

end

end A067898.P17850432783689492455

/-! ## A067898.P7645295942580888268

`(1-A168046(n))*A261794(n)`
-/

namespace A067898.P7645295942580888268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A168046 n) * A261794 n

end

end A067898.P7645295942580888268

/-! ## A067898.P15156076844496465388

`A276084(∏{digits}[n, A000040(#+1)])`
-/

namespace A067898.P15156076844496465388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000040 (x + 1)).prod.toNat

end

end A067898.P15156076844496465388

/-! ## A067898.P18179442741118675218

`(1-A257628(n²))*A055641(n)`
-/

namespace A067898.P18179442741118675218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A257628 (n ^ 2)) * A055641 n

end

end A067898.P18179442741118675218

/-! ## A067898.P13563310106958508248

`and(A319212(n+1), A380759(n+1))`
-/

namespace A067898.P13563310106958508248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319212 (n + 1)) (A380759 (n + 1))

end

end A067898.P13563310106958508248

/-! ## A067898.P3957393379654077743

`∑{digits}[n, A036987(#*A004001((n+1)²))]`
-/

namespace A067898.P3957393379654077743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036987 ((x : ℤ) * A004001 ((n + 1) ^ 2)).toNat).sum

end

end A067898.P3957393379654077743

/-! ## A067898.P6857298082494840049

`A055641(A011540(n+1)^A055641(n))`
-/

namespace A067898.P6857298082494840049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A011540 (n + 1) : ℚ) ^ (A055641 n : ℤ))).toNat

end

end A067898.P6857298082494840049

